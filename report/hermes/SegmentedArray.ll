inline.NumInlined: 913
inline.NumDeleted: 300
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01320.i.idx = phi i64 [ %.01320.i.add.7, %.lr.ph.i ], [ %.01320.i.idx.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01320.i.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  store i64 -1970324836974592, ptr %.01320.i.ptr, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 -1970324836974592, ptr %.01320.i.ptr.1, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 -1970324836974592, ptr %.01320.i.ptr.2, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 -1970324836974592, ptr %.01320.i.ptr.3, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i64 -1970324836974592, ptr %.01320.i.ptr.4, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 -1970324836974592, ptr %.01320.i.ptr.5, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 -1970324836974592, ptr %.01320.i.ptr.6, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %.01320.i.idx
  %.01320.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 -1970324836974592, ptr %.01320.i.ptr.7, align 8, !tbaa !15
  %.01320.i.add.7 = add nuw nsw i64 %.01320.i.idx, 64 ; 2 uses
  %.not.i.7 = icmp eq i64 %.01320.i.add.7, 32776
  br i1 %.not.i.7, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i, !llvm.loop !18

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g
  store atomic i32 4096, ptr %i.a release, align 4
  br label %bb.h

.critedge:                                        ; preds = %bb.f
  %i.am = add i32 %.0.i, -4097
  %i.an = lshr i32 %i.am, 10
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, %.critedge
  %i.ao = phi i32 [ %i.an, %.critedge ], [ 0, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit ] ; 5 uses
  %i.ap = add i32 %i.p, 1023
  %i.aq = add i32 %i.p, -4097
  %i.ar = lshr i32 %i.aq, 10                      ; 5 uses
  %i.as = icmp ult i32 %i.p, 4097
  %i.at = add i32 %i.p, -4096
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %i.au, 1023
  %i.aw = lshr i64 %i.av, 10
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ax, 4096
  %.0.i53 = select i1 %i.as, i32 %i.p, i32 %i.ay  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %i.bb = zext i32 %.0.i53 to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bb
  %.not1421.i54 = icmp eq i32 %i.ba, %.0.i53
  br i1 %.not1421.i54, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %bb.h
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bd
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader, %.lr.ph.i55
  %.01320.i56 = phi ptr [ %i.bf, %.lr.ph.i55 ], [ %i.be, %.lr.ph.i55.preheader ] ; 2 uses
  store i64 -1970324836974592, ptr %.01320.i56, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %.01320.i56, i64 8 ; 2 uses
  %.not.i57 = icmp eq ptr %i.bf, %i.bc
  br i1 %.not.i57, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55, !llvm.loop !18

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58: ; preds = %.lr.ph.i55, %bb.h
  store atomic i32 %.0.i53, ptr %i.a release, align 4
  %i.bg = ptrtoint ptr %1 to i64
  %i.bh = or i64 %i.bg, -281474976710656          ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !73 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !76 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !86
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !76
  store i64 %i.bh, ptr %i.bl, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.j:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58
  %i.bq = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bj, i64 %i.bh) #7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.i ], [ %i.bq, %bb.j ] ; 5 uses
  %.not49 = icmp samesign ugt i32 %i.ao, %i.ar    ; 2 uses
  br i1 %.not49, label %bb.q, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %.sroa.0.0.copyload.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.br = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32776
  %i.bu = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !43
  %.mask.i = and i64 %i.bw, -140737488355328
  %i.bx = icmp eq i64 %.mask.i, -1970324836974592
  br i1 %i.bx, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !7  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8200 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.ca, %i.cc
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ce = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cd, i32 noundef 8200) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.cf = phi ptr [ %i.ce, %bb.m ], [ %i.bz, %bb.n ] ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8200) %i.cf, i8 0, i64 8200, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i = phi i64 [ 8, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i ], [ %.add.i.i.i.i.i.i.i.i.7, %bb.o ] ; 9 uses
  %.ptr.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i.i.i.i
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i.i.i.i
  %.ptr.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i.1, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i.i.i.i
  %.ptr.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i.2, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i.i.i.i
  %.ptr.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i.3, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i.i.i.i
  %.ptr.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i.4, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i.i.i.i
  %.ptr.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i.5, align 8, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i.i.i.i
  %.ptr.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i.6, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i.i.i.i
  %.ptr.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.cm, i64 56
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i.7, align 8, !tbaa !15
  %.add.i.i.i.i.i.i.i.i.7 = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i, 64 ; 2 uses
  %i.cn = icmp eq i64 %.add.i.i.i.i.i.i.i.i.7, 8200
  br i1 %i.cn, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment6createERNS0_7RuntimeE.exit.i, label %bb.o

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment6createERNS0_7RuntimeE.exit.i: ; preds = %bb.o
  store i32 301998088, ptr %i.cf, align 4, !tbaa !17
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.co = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32776
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.bu ; 3 uses
  %i.cs = ptrtoint ptr %i.cf to i64
  %i.ct = or i64 %i.cs, -281474976710656          ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !20
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = and i64 %i.cw, 1125899902648320
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = icmp eq ptr %i.cv, %i.cy
  br i1 %i.cz, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit, label %bb.p, !prof !42

bb.p:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment6createERNS0_7RuntimeE.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.da, ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i64 %i.ct) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment6createERNS0_7RuntimeE.exit.i, %bb.p
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !43
  br label %bb.q

bb.q:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit, %bb.k, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_11HermesValueEEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %.not5082.not = icmp samesign ult i32 %i.ao, %i.ar
  br i1 %.not5082.not, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %narrow104 = add nuw nsw i32 %i.ao, 1
  %i.df = zext nneg i32 %narrow104 to i64
  %i.dg = zext nneg i32 %i.ar to i64
  br label %bb.r

.preheader:                                       ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66, %bb.q
  br i1 %.not49, label %._crit_edge, label %.lr.ph86

.lr.ph86:                                         ; preds = %.preheader
  %i.dh = and i32 %i.ap, 1023
  %i.di = add nuw nsw i32 %i.dh, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8489
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.dm = zext nneg i32 %i.ao to i64
  %i.dn = zext nneg i32 %i.ar to i64
  %i.do = add nuw nsw i32 %i.ar, 1
  %wide.trip.count = zext nneg i32 %i.do to i64
  br label %bb.w

bb.r:                                             ; preds = %.lr.ph, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66
  %indvars.iv = phi i64 [ %i.df, %.lr.ph ], [ %indvars.iv.next, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66 ] ; 3 uses
  %i.dp = load ptr, ptr %i.db, align 8, !tbaa !7  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8200 ; 2 uses
  %i.dr = load ptr, ptr %i.dc, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i.i59 = icmp ugt ptr %i.dq, %i.dr
  br i1 %.not.i.not.i.i.i.i.i.i.i59, label %bb.s, label %bb.t, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.ds = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dd, i32 noundef 8200) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60

bb.t:                                             ; preds = %bb.r
  store ptr %i.dq, ptr %i.db, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60: ; preds = %bb.t, %bb.s
  %i.dt = phi ptr [ %i.ds, %bb.s ], [ %i.dp, %bb.t ] ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8200) %i.dt, i8 0, i64 8200, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60
  %.idx.i.i.i.i.i.i.i.i61 = phi i64 [ 8, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60 ], [ %.add.i.i.i.i.i.i.i.i63.7, %bb.u ] ; 9 uses
  %.ptr.i.i.i.i.i.i.i.i62 = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx.i.i.i.i.i.i.i.i61
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i62, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx.i.i.i.i.i.i.i.i61
  %.ptr.i.i.i.i.i.i.i.i62.1 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i62.1, align 8, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx.i.i.i.i.i.i.i.i61
  %.ptr.i.i.i.i.i.i.i.i62.2 = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i62.2, align 8, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx.i.i.i.i.i.i.i.i61
  %.ptr.i.i.i.i.i.i.i.i62.3 = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i62.3, align 8, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx.i.i.i.i.i.i.i.i61
  %.ptr.i.i.i.i.i.i.i.i62.4 = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i62.4, align 8, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx.i.i.i.i.i.i.i.i61
  %.ptr.i.i.i.i.i.i.i.i62.5 = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i62.5, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx.i.i.i.i.i.i.i.i61
  %.ptr.i.i.i.i.i.i.i.i62.6 = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i62.6, align 8, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx.i.i.i.i.i.i.i.i61
  %.ptr.i.i.i.i.i.i.i.i62.7 = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store i64 -1688849860263936, ptr %.ptr.i.i.i.i.i.i.i.i62.7, align 8, !tbaa !15
  %.add.i.i.i.i.i.i.i.i63.7 = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i61, 64 ; 2 uses
  %i.eb = icmp eq i64 %.add.i.i.i.i.i.i.i.i63.7, 8200
  br i1 %i.eb, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment6createERNS0_7RuntimeE.exit.i64, label %bb.u

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment6createERNS0_7RuntimeE.exit.i64: ; preds = %bb.u
  store i32 301998088, ptr %i.dt, align 4, !tbaa !17
  %.sroa.0.0.copyload.i.i.i65 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.ec = and i64 %.sroa.0.0.copyload.i.i.i65, 281474976710655
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32776
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv ; 3 uses
  %i.eg = ptrtoint ptr %i.dt to i64
  %i.eh = or i64 %i.eg, -281474976710656          ; 2 uses
  %i.ei = load ptr, ptr %i.de, align 8, !tbaa !20
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = and i64 %i.ej, 1125899902648320
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = icmp eq ptr %i.ei, %i.el
  br i1 %i.em, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66, label %bb.v, !prof !42

bb.v:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment6createERNS0_7RuntimeE.exit.i64
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %i.ef, i64 %i.eh) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment6createERNS0_7RuntimeE.exit.i64, %bb.v
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not50.not = icmp samesign ult i64 %indvars.iv, %i.dg
  br i1 %.not50.not, label %bb.r, label %.preheader, !llvm.loop !87

._crit_edge:                                      ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit, %.preheader
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.en = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.eo = inttoptr i64 %i.en to ptr
  br label %bb.ab

bb.w:                                             ; preds = %.lr.ph86, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit
  %indvars.iv88 = phi i64 [ %i.dm, %.lr.ph86 ], [ %indvars.iv.next89, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit ] ; 3 uses
  %i.ep = icmp eq i64 %indvars.iv88, %i.dn
  %i.eq = select i1 %i.ep, i32 %i.di, i32 1024    ; 6 uses
  %.sroa.0.0.copyload.i.i67 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.er = and i64 %.sroa.0.0.copyload.i.i67, 281474976710655
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32776
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv88
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !43
  %i.ew = and i64 %i.ev, 281474976710655
  %i.ex = inttoptr i64 %i.ew to ptr               ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 2 uses
  %i.ez = load atomic i32, ptr %i.ey monotonic, align 4 ; 4 uses
  %i.fa = icmp ugt i32 %i.eq, %i.ez
  br i1 %i.fa, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.fc = zext nneg i32 %i.ez to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = zext nneg i32 %i.eq to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fe
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.x
  %.01320.i.i = phi ptr [ %i.fg, %.lr.ph.i.i ], [ %i.fd, %bb.x ] ; 2 uses
  store i64 -1970324836974592, ptr %.01320.i.i, align 8, !tbaa !15
  %i.fg = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fg, %i.ff
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !18

bb.y:                                             ; preds = %bb.w
  %i.fh = icmp ult i32 %i.eq, %i.ez
  br i1 %i.fh, label %bb.z, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.z:                                             ; preds = %bb.y
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fj = shl nuw nsw i32 %i.eq, 3
  %.idx14.i = zext nneg i32 %i.fj to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.idx14.i ; 2 uses
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = load ptr, ptr %i.dj, align 8, !tbaa !20
  %i.fn = and i64 %i.fl, 1125899902648320
  %i.fo = inttoptr i64 %i.fn to ptr
  %i.fp = icmp ne ptr %i.fm, %i.fo
  %i.fq = load i8, ptr %i.dk, align 1, !range !21
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = select i1 %i.fp, i1 %i.fr, i1 false
  br i1 %i.fs, label %bb.aa, label %.sink.split.i, !prof !14

bb.aa:                                            ; preds = %bb.z
  %i.ft = sub i32 %i.ez, %i.eq
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dl, ptr noundef nonnull %i.fk, i32 noundef %i.ft) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %bb.aa, %bb.z
  store atomic i32 %i.eq, ptr %i.ey release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit: ; preds = %bb.y, %.sink.split.i
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond.a = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond.a, label %._crit_edge, label %bb.w, !llvm.loop !88

bb.ab:                                            ; preds = %._crit_edge, %bb.e
  %.sroa.042.0 = phi ptr [ %1, %bb.e ], [ %i.eo, %._crit_edge ]
  ret ptr %.sroa.042.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32776
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !43
  %i.k = and i64 %i.j, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load atomic i32, ptr %i.m monotonic, align 4
  %i.o = add i32 %i.f, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.o, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE9segmentAtERNS0_11PointerBaseEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32776
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43
  %i.e = and i64 %i.d, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8
  %i.e = and i32 %i.d, 16777208
  %i.f = add nsw i32 %i.e, -8
  %i.g = lshr exact i32 %i.f, 3
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.g, i32 4096)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = shl i32 %i.b, 10
  %i.i = add i32 %i.h, -4190208
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %.sroa.speculated, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE20totalCapacityOfSpineEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 16777208
  %i.c = add nsw i32 %i.b, -8                     ; 3 uses
  %i.d = lshr exact i32 %i.c, 3
  %i.e = icmp ult i32 %i.c, 32776
  %i.f = shl nsw i32 %i.c, 7
  %i.g = add nsw i32 %i.f, -4190208
  %.0 = select i1 %i.e, i32 %i.d, i32 %i.g
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE19numSlotsForCapacityEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %0, 4097
  %i.b = add i32 %0, -4096
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1023
  %i.e = lshr i64 %i.d, 10
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 4096
  %.0 = select i1 %i.a, i32 %0, i32 %i.g
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 5 uses
  %4 = alloca %"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !89
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 3 uses
  %i.f = icmp ult i32 %i.e, 4097
  br i1 %i.f, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -4097                      ; 2 uses
  %i.h = shl i32 %i.g, 10
  %i.i = add i32 %i.h, 4096
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32776
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !43
  %i.n = and i64 %i.m, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.i, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

end_hunk_0
begin_hunk_1_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj:bb.a
.critedge:                                        ; preds = %bb.f
  %i.am = add i32 %.0.i, -4097
  %i.an = lshr i32 %i.am, 10
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, %.critedge
  %i.ao = phi i32 [ %i.an, %.critedge ], [ 0, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit ] ; 5 uses
  %i.ap = add i32 %i.s, 1023
  %i.aq = add i32 %i.s, -4097
  %i.ar = lshr i32 %i.aq, 10                      ; 5 uses
  %i.as = icmp ult i32 %i.s, 4097
  %i.at = add i32 %i.s, -4096
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %i.au, 1023
  %i.aw = lshr i64 %i.av, 10
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ax, 4096
  %.0.i53 = select i1 %i.as, i32 %i.s, i32 %i.ay  ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %i.bb = zext i32 %.0.i53 to i64                 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bb
  %.not1421.i54 = icmp eq i32 %i.ba, %.0.i53
  br i1 %.not1421.i54, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %bb.h
  %i.bd = zext i32 %i.ba to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bd ; 3 uses
  %i.bf = sub nsw i64 %i.bb, %i.bd
  %i.bg = add nsw i64 %i.bf, 4611686018427387903
  %i.bh = and i64 %i.bg, 4611686018427387903      ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check107 = icmp samesign ult i64 %i.bh, 7
  br i1 %min.iters.check107, label %.lr.ph.i55.preheader141, label %vector.ph108

vector.ph108:                                     ; preds = %.lr.ph.i55.preheader
  %n.vec110 = and i64 %i.bi, 9223372036854775800  ; 3 uses
  %i.bj = shl i64 %n.vec110, 2
  %i.bk = getelementptr i8, ptr %i.be, i64 %i.bj
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph108
  %index112 = phi i64 [ 0, %vector.ph108 ], [ %index.next113, %vector.body111 ] ; 2 uses
  %i.bl = shl i64 %index112, 2
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.bm, align 4, !tbaa !3
  %index.next113 = add nuw i64 %index112, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next113, %n.vec110
  br i1 %i.bn, label %middle.block114, label %vector.body111, !llvm.loop !173

middle.block114:                                  ; preds = %vector.body111
  %cmp.n115 = icmp eq i64 %i.bi, %n.vec110
  br i1 %cmp.n115, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55.preheader141

.lr.ph.i55.preheader141:                          ; preds = %.lr.ph.i55.preheader, %middle.block114
  %.01320.i56.ph = phi ptr [ %i.be, %.lr.ph.i55.preheader ], [ %i.bk, %middle.block114 ]
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader141, %.lr.ph.i55
  %.01320.i56 = phi ptr [ %i.bo, %.lr.ph.i55 ], [ %.01320.i56.ph, %.lr.ph.i55.preheader141 ] ; 2 uses
  store i32 7, ptr %.01320.i56, align 4, !tbaa !3
  %i.bo = getelementptr inbounds nuw i8, ptr %.01320.i56, i64 4 ; 2 uses
  %.not.i57 = icmp eq ptr %i.bo, %i.bc
  br i1 %.not.i57, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55, !llvm.loop !174

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58: ; preds = %.lr.ph.i55, %middle.block114, %bb.h
  store atomic i32 %.0.i53, ptr %i.a release, align 4
  %i.bp = ptrtoint ptr %1 to i64
  %i.bq = or i64 %i.bp, -281474976710656          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !73 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 192 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !76 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 200
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !86
  %i.bx = icmp ult ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !76
  store i64 %i.bq, ptr %i.bu, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.j:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58
  %i.bz = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bs, i64 %i.bq) #7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i.i = phi ptr [ %i.bu, %bb.i ], [ %i.bz, %bb.j ] ; 5 uses
  %.not49 = icmp samesign ugt i32 %i.ao, %i.ar    ; 2 uses
  br i1 %.not49, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %.sroa.0.0.copyload.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.ca = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16392
  %i.cd = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !154
  %i.cg = icmp eq i32 %i.cf, 7
  br i1 %i.cg, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !7  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4104 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.cj, %i.cl
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cn = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cm, i32 noundef 4104) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.co = phi ptr [ %i.cn, %bb.m ], [ %i.ci, %bb.n ] ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4100) %i.cp, i8 0, i64 4100, i1 false)
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i
  %index120 = phi i64 [ 0, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i ], [ %index.next121.3, %vector.body119 ] ; 5 uses
  %i.cq = shl i64 %index120, 2
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store <4 x i32> splat (i32 14), ptr %i.cs, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.ct, align 4, !tbaa !3
  %index.next121 = shl i64 %index120, 2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %index.next121 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  store <4 x i32> splat (i32 14), ptr %i.cv, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.cw, align 4, !tbaa !3
  %index.next121.1 = shl i64 %index120, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 %index.next121.1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  store <4 x i32> splat (i32 14), ptr %i.cy, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.cz, align 4, !tbaa !3
  %index.next121.2 = shl i64 %index120, 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 %index.next121.2 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 120
  store <4 x i32> splat (i32 14), ptr %i.db, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.dc, align 4, !tbaa !3
  %index.next121.3 = add nuw nsw i64 %index120, 32 ; 2 uses
  %i.dd = icmp eq i64 %index.next121.3, 1024
  br i1 %i.dd, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i, label %vector.body119, !llvm.loop !175

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i: ; preds = %vector.body119
  store i32 318771208, ptr %i.co, align 4, !tbaa !17
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.de = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16392
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.cd ; 3 uses
  %i.di = ptrtoint ptr %i.co to i64
  %i.dj = ptrtoint ptr %0 to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !20
  %i.do = ptrtoint ptr %i.dh to i64
  %i.dp = and i64 %i.do, 1125899902648320
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = icmp eq ptr %i.dn, %i.dq
  br i1 %i.dr, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit, label %bb.o, !prof !42

bb.o:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ds, ptr noundef nonnull align 4 dereferenceable(4) %i.dh, i32 %i.dl) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i, %bb.o
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !154
  br label %bb.p

bb.p:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit, %bb.k, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %.not5083.not = icmp samesign ult i32 %i.ao, %i.ar
  br i1 %.not5083.not, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.p
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.dw = ptrtoint ptr %0 to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %narrow105 = add nuw nsw i32 %i.ao, 1
  %i.dy = zext nneg i32 %narrow105 to i64
  %i.dz = zext nneg i32 %i.ar to i64
  br label %bb.q

.preheader:                                       ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66, %bb.p
  br i1 %.not49, label %._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader
  %i.ea = and i32 %i.ap, 1023
  %i.eb = add nuw nsw i32 %i.ea, 1
  %i.ec = ptrtoint ptr %0 to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8489
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.eg = zext nneg i32 %i.ao to i64
  %i.eh = zext nneg i32 %i.ar to i64
  %i.ei = add nuw nsw i32 %i.ar, 1
  %wide.trip.count = zext nneg i32 %i.ei to i64
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66
  %indvars.iv = phi i64 [ %i.dy, %.lr.ph ], [ %indvars.iv.next, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66 ] ; 3 uses
  %i.ej = load ptr, ptr %i.dt, align 8, !tbaa !7  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4104 ; 2 uses
  %i.el = load ptr, ptr %i.du, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i.i59 = icmp ugt ptr %i.ek, %i.el
  br i1 %.not.i.not.i.i.i.i.i.i.i59, label %bb.r, label %bb.s, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.em = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dv, i32 noundef 4104) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60

bb.s:                                             ; preds = %bb.q
  store ptr %i.ek, ptr %i.dt, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60: ; preds = %bb.s, %bb.r
  %i.en = phi ptr [ %i.em, %bb.r ], [ %i.ej, %bb.s ] ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4100) %i.eo, i8 0, i64 4100, i1 false)
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60
  %index126 = phi i64 [ 0, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60 ], [ %index.next127.3, %vector.body125 ] ; 5 uses
  %i.ep = shl i64 %index126, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store <4 x i32> splat (i32 14), ptr %i.er, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.es, align 4, !tbaa !3
  %index.next127 = shl i64 %index126, 2
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 %index.next127 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  store <4 x i32> splat (i32 14), ptr %i.eu, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.ev, align 4, !tbaa !3
  %index.next127.1 = shl i64 %index126, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 %index.next127.1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  store <4 x i32> splat (i32 14), ptr %i.ex, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.ey, align 4, !tbaa !3
  %index.next127.2 = shl i64 %index126, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 %index.next127.2 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 104
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 120
  store <4 x i32> splat (i32 14), ptr %i.fa, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.fb, align 4, !tbaa !3
  %index.next127.3 = add nuw nsw i64 %index126, 32 ; 2 uses
  %i.fc = icmp eq i64 %index.next127.3, 1024
  br i1 %i.fc, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64, label %vector.body125, !llvm.loop !176

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64: ; preds = %vector.body125
  store i32 318771208, ptr %i.en, align 4, !tbaa !17
  %.sroa.0.0.copyload.i.i.i65 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.fd = and i64 %.sroa.0.0.copyload.i.i.i65, 281474976710655
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16392
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv ; 3 uses
  %i.fh = ptrtoint ptr %i.en to i64
  %i.fi = sub i64 %i.fh, %i.dw
  %i.fj = trunc i64 %i.fi to i32                  ; 2 uses
  %i.fk = load ptr, ptr %i.dx, align 8, !tbaa !20
  %i.fl = ptrtoint ptr %i.fg to i64
  %i.fm = and i64 %i.fl, 1125899902648320
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = icmp eq ptr %i.fk, %i.fn
  br i1 %i.fo, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66, label %bb.t, !prof !42

bb.t:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.dv, ptr noundef nonnull align 4 dereferenceable(4) %i.fg, i32 %i.fj) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64, %bb.t
  store i32 %i.fj, ptr %i.fg, align 4, !tbaa !154
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not50.not = icmp samesign ult i64 %indvars.iv, %i.dz
  br i1 %.not50.not, label %bb.q, label %.preheader, !llvm.loop !177

._crit_edge:                                      ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit, %.preheader
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.fp = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.fq = inttoptr i64 %i.fp to ptr
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph87, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit
  %indvars.iv89 = phi i64 [ %i.eg, %.lr.ph87 ], [ %indvars.iv.next90, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit ] ; 3 uses
  %i.fr = icmp eq i64 %indvars.iv89, %i.eh
  %i.fs = select i1 %i.fr, i32 %i.eb, i32 1024    ; 6 uses
  %.sroa.0.0.copyload.i.i67 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.ft = and i64 %.sroa.0.0.copyload.i.i67, 281474976710655
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16392
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv89
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i.i68 = icmp eq i32 %i.fx, 0
  %i.fy = zext i32 %i.fx to i64
  %i.fz = add i64 %i.fy, %i.ec
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = select i1 %.not.i.i.i.i.i.i68, ptr null, ptr %i.ga ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  %i.gd = load atomic i32, ptr %i.gc monotonic, align 4 ; 4 uses
  %i.ge = icmp ugt i32 %i.fs, %i.gd
  br i1 %i.ge, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  %i.gg = zext i32 %i.gd to i64                   ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gg ; 3 uses
  %i.gi = zext nneg i32 %i.fs to i64              ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gi
  %i.gk = sub nsw i64 %i.gi, %i.gg
  %i.gl = add nsw i64 %i.gk, 4611686018427387903
  %i.gm = and i64 %i.gl, 4611686018427387903      ; 2 uses
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check130 = icmp samesign ult i64 %i.gm, 7
  br i1 %min.iters.check130, label %.lr.ph.i.i.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %bb.v
  %n.vec133 = and i64 %i.gn, 9223372036854775800  ; 3 uses
  %i.go = shl i64 %n.vec133, 2
  %i.gp = getelementptr i8, ptr %i.gh, i64 %i.go
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph131
  %index135 = phi i64 [ 0, %vector.ph131 ], [ %index.next137, %vector.body134 ] ; 2 uses
  %i.gq = shl i64 %index135, 2
  %next.gep136 = getelementptr i8, ptr %i.gh, i64 %i.gq ; 2 uses
  %i.gr = getelementptr i8, ptr %next.gep136, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep136, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.gr, align 4, !tbaa !3
  %index.next137 = add nuw i64 %index135, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next137, %n.vec133
  br i1 %i.gs, label %middle.block138, label %vector.body134, !llvm.loop !178

middle.block138:                                  ; preds = %vector.body134
  %cmp.n139 = icmp eq i64 %i.gn, %n.vec133
  br i1 %cmp.n139, label %.sink.split.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.v, %middle.block138
  %.01320.i.i.ph = phi ptr [ %i.gh, %bb.v ], [ %i.gp, %middle.block138 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.01320.i.i = phi ptr [ %i.gt, %.lr.ph.i.i ], [ %.01320.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i.i, align 4, !tbaa !3
  %i.gt = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gt, %i.gj
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !179

bb.w:                                             ; preds = %bb.u
  %i.gu = icmp ult i32 %i.fs, %i.gd
  br i1 %i.gu, label %bb.x, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.x:                                             ; preds = %bb.w
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gw = shl nuw nsw i32 %i.fs, 2
  %.idx14.i = zext nneg i32 %i.gw to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.idx14.i ; 2 uses
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = load ptr, ptr %i.ed, align 8, !tbaa !20
  %i.ha = and i64 %i.gy, -4194304
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = icmp ne ptr %i.gz, %i.hb
  %i.hd = load i8, ptr %i.ee, align 1, !range !21
  %i.he = trunc nuw i8 %i.hd to i1
  %i.hf = select i1 %i.hc, i1 %i.he, i1 false
  br i1 %i.hf, label %bb.y, label %.sink.split.i, !prof !14

bb.y:                                             ; preds = %bb.x
  %i.hg = sub i32 %i.gd, %i.fs
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ef, ptr noundef nonnull %i.gx, i32 noundef %i.hg) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %middle.block138, %bb.y, %bb.x
  store atomic i32 %i.fs, ptr %i.gc release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit: ; preds = %bb.w, %.sink.split.i
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond.a = icmp eq i64 %indvars.iv.next90, %wide.trip.count
  br i1 %exitcond.a, label %._crit_edge, label %bb.u, !llvm.loop !180

bb.z:                                             ; preds = %._crit_edge, %bb.e
  %.sroa.042.0 = phi ptr [ %1, %bb.e ], [ %i.fq, %._crit_edge ]
  ret ptr %.sroa.042.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !154  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.j, 0
  %i.k = ptrtoint ptr %1 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE9segmentAtERNS0_11PointerBaseEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !154  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  %i.e = ptrtoint ptr %1 to i64
  %i.f = zext i32 %i.d to i64
  %i.g = add i64 %i.f, %i.e
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.h
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 2 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4
  %i.e = and i32 %i.d, 16777212
  %i.f = add nsw i32 %i.e, -8
  %i.g = lshr exact i32 %i.f, 2
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.g, i32 4096)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = shl i32 %i.b, 10
  %i.i = add i32 %i.h, -4190208
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %.sroa.speculated, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE20totalCapacityOfSpineEv(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = and i32 %i.a, 16777212
  %i.c = add nsw i32 %i.b, -8                     ; 3 uses
  %i.d = lshr exact i32 %i.c, 2
  %i.e = icmp ult i32 %i.c, 16388
  %i.f = shl i32 %i.c, 8
  %i.g = add i32 %i.f, -4190208
  %.0 = select i1 %i.e, i32 %i.d, i32 %i.g
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE19numSlotsForCapacityEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
end_hunk_1

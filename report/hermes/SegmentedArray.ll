inline.NumInlined: 913
inline.NumDeleted: 300
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
begin_hunk_1_@_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE10shrinkLeftERNS0_7RuntimeEj:bb.a
  %.sroa.816.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.816.0.copyload18 = load ptr, ptr %.sroa.816.0..sroa_idx17, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 8
  %.not1.i = icmp eq i32 %.sroa.5.0.copyload, %.sroa.3.0.copyload
  br i1 %.not1.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE.exit
  %.sroa.611.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.611.0.copyload13 = load i32, ptr %.sroa.611.0..sroa_idx12, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.0.copyload10, i64 32776
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32776
  br label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %.lr.ph.i
  %i.ab = phi i32 [ %.sroa.611.0.copyload13, %.lr.ph.i ], [ %i.bj, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 5 uses
  %i.ac = phi i32 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.bh, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ] ; 5 uses
  %i.ad = icmp ult i32 %i.ab, 4096
  br i1 %i.ad, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.ae = add i32 %i.ab, -4096
  %i.af = lshr i32 %i.ae, 10
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !43, !noalias !111
  %i.aj = and i64 %i.ai, 281474976710655
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = and i32 %i.ab, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i: ; preds = %bb.d, %bb.c
  %.sink6.i.i.i = phi ptr [ %i.ak, %bb.d ], [ %.sroa.09.0.copyload10, %bb.c ]
  %.sink5.i.i.i = phi i32 [ %i.al, %bb.d ], [ %i.ab, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %i.an = zext nneg i32 %.sink5.i.i.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 3 uses
  %i.ap = icmp ult i32 %i.ac, 4096
  br i1 %i.ap, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i, label %bb.e, !prof !42

bb.e:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i
  %i.aq = add i32 %i.ac, -4096
  %i.ar = lshr i32 %i.aq, 10
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !43, !noalias !111
  %i.av = and i64 %i.au, 281474976710655
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = and i32 %i.ac, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i: ; preds = %bb.e, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i
  %.sink6.i.i = phi ptr [ %i.aw, %bb.e ], [ %.sroa.0.0.copyload, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i ]
  %.sink5.i.i = phi i32 [ %i.ax, %bb.e ], [ %i.ac, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %i.az = zext nneg i32 %.sink5.i.i to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %.sroa.0.0.copyload.i = load i64, ptr %i.ba, align 8, !tbaa !15, !noalias !111 ; 2 uses
  %i.bb = load ptr, ptr %i.w, align 8, !tbaa !20, !noalias !111
  %i.bc = ptrtoint ptr %i.ao to i64
  %i.bd = and i64 %i.bc, -4194304
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = icmp eq ptr %i.bb, %i.be
  br i1 %i.bf, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.f, !prof !42

bb.f:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 %.sroa.0.0.copyload.i) #7, !noalias !111
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.f, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i
  store i64 %.sroa.0.0.copyload.i, ptr %i.ao, align 8, !tbaa !43, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7, !noalias !111
  %i.bg = add i32 %i.ac, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %.sroa.0.0.copyload, i32 noundef %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.67.0.copyload) #7, !noalias !111
  %i.bh = load i32, ptr %i.x, align 8, !tbaa !26, !noalias !111 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7, !noalias !111
  %i.bi = add i32 %i.ab, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %.sroa.09.0.copyload10, i32 noundef %i.bi, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.816.0.copyload18) #7, !noalias !111
  %i.bj = load i32, ptr %i.y, align 8, !tbaa !26, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7, !noalias !111
  %.not.i = icmp eq i32 %i.bh, %.sroa.3.0.copyload
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %bb.c, !llvm.loop !104

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

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
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.o, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.p = icmp ugt i32 %2, %.0.i
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.q = sub nuw i32 %2, %.0.i
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE26increaseSizeWithinCapacityERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.q)
  br label %bb.f

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.r = icmp ult i32 %2, %.0.i
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = sub nuw i32 %.0.i, %2
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.s)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE26increaseSizeWithinCapacityERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

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
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.o, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.p = add i32 %.0.i, %2                        ; 5 uses
  %i.q = icmp ult i32 %i.p, 4097
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = zext nneg i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %.not1421.i = icmp eq i32 %2, 0
  br i1 %.not1421.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.u = zext i32 %.0.i to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.v, %.lr.ph.i.preheader ] ; 2 uses
  store i64 -1970324836974592, ptr %.01320.i, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %.01320.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.t
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i, !llvm.loop !18

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i, %bb.c
  store atomic i32 %i.p, ptr %i.a release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.x = add i32 %i.p, 1023
  %i.y = add i32 %i.p, -4097
  %i.z = lshr i32 %i.y, 10
  %i.aa = and i32 %i.x, 1023                      ; 2 uses
  %i.ab = add nuw nsw i32 %i.aa, 1                ; 5 uses
  %i.ac = icmp ult i32 %.0.i, 4096
  br i1 %i.ac, label %.lr.ph.i20.preheader, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23

.lr.ph.i20.preheader:                             ; preds = %bb.d
  %i.ad = shl nuw nsw i32 %.0.i, 3
  %narrow = add nuw nsw i32 %i.ad, 8
  %i.ae = zext nneg i32 %narrow to i64            ; 3 uses
  %i.af = sub nsw i64 32768, %i.ae                ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i20.prol.loopexit, label %.lr.ph.i20.prol

.lr.ph.i20.prol:                                  ; preds = %.lr.ph.i20.preheader, %.lr.ph.i20.prol
  %.01320.i21.idx.prol = phi i64 [ %.01320.i21.add.prol, %.lr.ph.i20.prol ], [ %i.ae, %.lr.ph.i20.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i20.prol ], [ 0, %.lr.ph.i20.preheader ]
  %.01320.i21.ptr.prol = getelementptr inbounds nuw i8, ptr %0, i64 %.01320.i21.idx.prol
  store i64 -1970324836974592, ptr %.01320.i21.ptr.prol, align 8, !tbaa !15
  %.01320.i21.add.prol = add nuw nsw i64 %.01320.i21.idx.prol, 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i20.prol.loopexit, label %.lr.ph.i20.prol, !llvm.loop !114

.lr.ph.i20.prol.loopexit:                         ; preds = %.lr.ph.i20.prol, %.lr.ph.i20.preheader
  %.01320.i21.idx.unr = phi i64 [ %i.ae, %.lr.ph.i20.preheader ], [ %.01320.i21.add.prol, %.lr.ph.i20.prol ]
  %i.ai = icmp ult i64 %i.af, 56
  br i1 %i.ai, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20
  %.01320.i21.idx = phi i64 [ %.01320.i21.add.7, %.lr.ph.i20 ], [ %.01320.i21.idx.unr, %.lr.ph.i20.prol.loopexit ] ; 9 uses
  %.01320.i21.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.01320.i21.idx
  store i64 -1970324836974592, ptr %.01320.i21.ptr, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.01320.i21.idx
  %.01320.i21.ptr.1 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 -1970324836974592, ptr %.01320.i21.ptr.1, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.01320.i21.idx
  %.01320.i21.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 -1970324836974592, ptr %.01320.i21.ptr.2, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.01320.i21.idx
  %.01320.i21.ptr.3 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 -1970324836974592, ptr %.01320.i21.ptr.3, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.01320.i21.idx
  %.01320.i21.ptr.4 = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 -1970324836974592, ptr %.01320.i21.ptr.4, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.01320.i21.idx
  %.01320.i21.ptr.5 = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 -1970324836974592, ptr %.01320.i21.ptr.5, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.01320.i21.idx
  %.01320.i21.ptr.6 = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store i64 -1970324836974592, ptr %.01320.i21.ptr.6, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.01320.i21.idx
  %.01320.i21.ptr.7 = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store i64 -1970324836974592, ptr %.01320.i21.ptr.7, align 8, !tbaa !15
  %.01320.i21.add.7 = add nuw nsw i64 %.01320.i21.idx, 64 ; 2 uses
  %.not.i22.7 = icmp eq i64 %.01320.i21.add.7, 32776
  br i1 %.not.i22.7, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23, label %.lr.ph.i20, !llvm.loop !18

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23: ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32776
  %i.ar = zext nneg i32 %i.z to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !43
  %i.au = and i64 %i.at, 281474976710655
  %i.av = inttoptr i64 %i.au to ptr               ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.ax = load atomic i32, ptr %i.aw monotonic, align 4 ; 4 uses
  %.not = icmp ult i32 %i.aa, %i.ax
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = zext nneg i32 %i.ab to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.e
  %.01320.i.i = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %i.ba, %bb.e ] ; 2 uses
  store i64 -1970324836974592, ptr %.01320.i.i, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !18

bb.f:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23
  %i.be = icmp ult i32 %i.ab, %i.ax
  br i1 %i.be, label %bb.g, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bg = shl nuw nsw i32 %i.ab, 3
  %.idx14.i = zext nneg i32 %i.bg to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx14.i ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.bl = and i64 %i.bi, 1125899902648320
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = icmp ne ptr %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.bp = load i8, ptr %i.bo, align 1, !range !21
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = select i1 %i.bn, i1 %i.bq, i1 false
  br i1 %i.br, label %bb.h, label %.sink.split.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.bt = sub i32 %i.ax, %i.ab
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bs, ptr noundef nonnull %i.bh, i32 noundef %i.bt) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %bb.h, %bb.g
  store atomic i32 %i.ab, ptr %i.aw release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit: ; preds = %.sink.split.i, %bb.f, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE5clearERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

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
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.o, %bb.b ], [ %i.b, %bb.a ]
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.0.i)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE11getCellKindEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 16
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 268435456
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE17_trimSizeCallbackEPKNS0_6GCCellE(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = shl i32 %i.b, 3
  %i.d = add i32 %i.c, 8
  ret i32 %i.d
}

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE5beginERNS0_11PointerBaseE(ptr dead_on_unwind noalias writable sret(%"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE(ptr dead_on_unwind noalias writable sret(%"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32776
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !43
  %i.k = and i64 %i.j, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load atomic i32, ptr %i.m monotonic, align 4
  %i.o = add i32 %i.f, %i.n
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.o, %bb.b ], [ %i.b, %bb.a ]
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef %.0.i, ptr noundef nonnull align 1 dereferenceable(1) %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE16inlineStorageEndERNS0_11PointerBaseE(ptr dead_on_unwind noalias writable sret(%"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue>::iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32776
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !43
  %i.k = and i64 %i.j, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load atomic i32, ptr %i.m monotonic, align 4
  %i.o = add i32 %i.f, %i.n
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.o, %bb.b ], [ %i.b, %bb.a ]
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 4096)
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef %.sroa.speculated, ptr noundef nonnull align 1 dereferenceable(1) %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE20calculateNewCapacityEjj(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i32 %0, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.a, i32 %1)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8200 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 8200) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE22growLeftWithinCapacityERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj:bb.a

bb.d:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %.lr.ph.i
  %i.aq = phi i32 [ %.sroa.6.0.copyload27, %.lr.ph.i ], [ %i.at, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ]
  %i.ar = phi i32 [ %.sroa.422.0.copyload, %.lr.ph.i ], [ %i.bh, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7, !noalias !124
  %i.as = add i32 %i.aq, -1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %.sroa.024.0.copyload25, i32 noundef %i.as, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.830.0.copyload32) #7, !noalias !124
  %i.at = load i32, ptr %i.al, align 8, !tbaa !26, !noalias !124 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7, !noalias !124
  %i.au = icmp ult i32 %i.at, 4096
  br i1 %i.au, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.av = add i32 %i.at, -4096
  %i.aw = lshr i32 %i.av, 10
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !43, !noalias !124
  %i.ba = and i64 %i.az, 281474976710655
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = and i32 %i.at, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i: ; preds = %bb.e, %bb.d
  %.sink6.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %.sroa.024.0.copyload25, %bb.d ]
  %.sink5.i.i.i = phi i32 [ %i.bc, %bb.e ], [ %i.at, %bb.d ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %i.be = zext nneg i32 %.sink5.i.i.i to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7, !noalias !124
  %i.bg = add i32 %i.ar, -1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %.sroa.021.0.copyload, i32 noundef %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.523.0.copyload) #7, !noalias !124
  %i.bh = load i32, ptr %i.am, align 8, !tbaa !26, !noalias !124 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7, !noalias !124
  %i.bi = icmp ult i32 %i.bh, 4096
  br i1 %i.bi, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i, label %bb.f, !prof !42

bb.f:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i
  %i.bj = add i32 %i.bh, -4096
  %i.bk = lshr i32 %i.bj, 10
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !43, !noalias !124
  %i.bo = and i64 %i.bn, 281474976710655
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = and i32 %i.bh, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i: ; preds = %bb.f, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i
  %.sink6.i.i = phi ptr [ %i.bp, %bb.f ], [ %.sroa.021.0.copyload, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i ]
  %.sink5.i.i = phi i32 [ %i.bq, %bb.f ], [ %i.bh, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %i.bs = zext nneg i32 %.sink5.i.i to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  %.sroa.0.0.copyload.i = load i64, ptr %i.bt, align 8, !tbaa !15, !noalias !124 ; 2 uses
  %i.bu = load ptr, ptr %i.an, align 8, !tbaa !20, !noalias !124
  %i.bv = ptrtoint ptr %i.bf to i64
  %i.bw = and i64 %i.bv, -4194304
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = icmp eq ptr %i.bu, %i.bx
  br i1 %i.by, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.g, !prof !42

bb.g:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i64 %.sroa.0.0.copyload.i) #7, !noalias !124
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.g, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratordeEv.exit.i
  store i64 %.sroa.0.0.copyload.i, ptr %i.bf, align 8, !tbaa !43, !noalias !124
  %.not.i = icmp eq i32 %.sroa.3.0.copyload, %i.bh
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE13copy_backwardINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %bb.d, !llvm.loop !127

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE13copy_backwardINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE3endERNS0_11PointerBaseE.exit13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  %i.bz = load ptr, ptr %12, align 8, !tbaa !22, !noalias !128
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !26, !noalias !128
  %i.cc = add i32 %i.cb, %2
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !28, !noalias !128, !nonnull !29
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %i.bz, i32 noundef %i.cc, ptr noundef nonnull align 1 dereferenceable(1) %i.ce) #7
  %.sroa.342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.342.0.copyload = load i32, ptr %.sroa.342.0..sroa_idx, align 8 ; 2 uses
  %.sroa.037.0.copyload = load ptr, ptr %10, align 8 ; 3 uses
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.438.0.copyload = load i32, ptr %.sroa.438.0..sroa_idx, align 8 ; 2 uses
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.540.0.copyload = load ptr, ptr %.sroa.540.0..sroa_idx, align 8
  %.not2125.i = icmp eq i32 %.sroa.438.0.copyload, %.sroa.342.0.copyload
  br i1 %.not2125.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4fillINS0_18SegmentedArrayBaseIS2_E8iteratorEEEvT_S8_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE13copy_backwardINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.037.0.copyload, i64 32776
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8489
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit.i, %.lr.ph.i14
  %.sroa.5.024.i = phi i32 [ %.sroa.438.0.copyload, %.lr.ph.i14 ], [ %i.de, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit.i ] ; 5 uses
  %i.cj = icmp ult i32 %.sroa.5.024.i, 4096
  br i1 %i.cj, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit5.i, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.ck = add i32 %.sroa.5.024.i, -4096
  %i.cl = lshr i32 %i.ck, 10
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !43
  %i.cp = and i64 %i.co, 281474976710655
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = and i32 %.sroa.5.024.i, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit5.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit5.i: ; preds = %bb.i, %bb.h
  %.sink6.i.i3.i = phi ptr [ %i.cq, %bb.i ], [ %.sroa.037.0.copyload, %bb.h ]
  %.sink5.i.i4.i = phi i32 [ %i.cr, %bb.i ], [ %.sroa.5.024.i, %bb.h ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.sink6.i.i3.i, i64 8
  %i.ct = zext nneg i32 %.sink5.i.i4.i to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ct ; 3 uses
  %i.cv = load ptr, ptr %i.cg, align 8, !tbaa !20
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = and i64 %i.cw, -4194304
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = icmp ne ptr %i.cv, %i.cy
  %i.da = load i8, ptr %i.ch, align 1, !range !21
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = select i1 %i.cz, i1 %i.db, i1 false
  br i1 %i.dc, label %bb.j, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit.i, !prof !14

bb.j:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit5.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cu, align 8, !tbaa !15
  call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ak, i64 %.sroa.0.0.copyload.i.i.i) #7
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit.i: ; preds = %bb.j, %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorptEv.exit5.i
  store i64 -1970324836974592, ptr %i.cu, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.dd = add i32 %.sroa.5.024.i, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %.sroa.037.0.copyload, i32 noundef %i.dd, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.540.0.copyload) #7
  %i.de = load i32, ptr %i.ci, align 8, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.not.i15 = icmp eq i32 %i.de, %.sroa.342.0.copyload
  br i1 %.not.i15, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4fillINS0_18SegmentedArrayBaseIS2_E8iteratorEEEvT_S8_S2_RNS0_7HadesGCE.exit, label %bb.h, !llvm.loop !131

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE4fillINS0_18SegmentedArrayBaseIS2_E8iteratorEEEvT_S8_S2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE13copy_backwardINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

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
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.o, %bb.b ], [ %i.b, %bb.a ]
  %i.p = load atomic i32, ptr %i.a monotonic, align 4
  %i.q = sub i32 %.0.i, %2                        ; 6 uses
  %i.r = icmp ult i32 %i.q, 4097
  %i.s = add i32 %i.q, -4096
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1023
  %i.v = lshr i64 %i.u, 10
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = add nuw nsw i32 %i.w, 4096
  %.0.i13 = select i1 %i.r, i32 %i.q, i32 %i.x    ; 3 uses
  %i.y = icmp ugt i32 %i.q, 4096
  br i1 %i.y, label %bb.c, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.z = add i32 %i.q, 1023
  %i.aa = add i32 %i.q, -4097
  %i.ab = lshr i32 %i.aa, 10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32776
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !43
  %i.ag = and i64 %i.af, 281474976710655
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %i.ai = and i32 %i.z, 1023                      ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, 1                ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.al = load atomic i32, ptr %i.ak monotonic, align 4 ; 4 uses
  %.not = icmp ult i32 %i.ai, %i.al
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ap
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.01320.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.ao, %bb.d ] ; 2 uses
  store i64 -1970324836974592, ptr %.01320.i.i, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.aq
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !18

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %i.aj, %i.al
  br i1 %i.as, label %bb.f, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.au = shl nuw nsw i32 %i.aj, 3
  %.idx14.i = zext nneg i32 %i.au to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx14.i ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = and i64 %i.aw, 1125899902648320
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = icmp ne ptr %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.bd = load i8, ptr %i.bc, align 1, !range !21
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %bb.g, label %.sink.split.i, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.bh = sub i32 %i.al, %i.aj
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bg, ptr noundef nonnull %i.av, i32 noundef %i.bh) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %bb.g, %bb.f
  store atomic i32 %i.aj, ptr %i.ak release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit: ; preds = %.sink.split.i, %bb.e, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE4sizeERNS0_11PointerBaseE.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = zext i32 %.0.i13 to i64
  %.idx14 = shl nuw nsw i64 %i.bj, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx14 ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !20
  %i.bo = and i64 %i.bl, -4194304
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = icmp ne ptr %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.bs = load i8, ptr %i.br, align 1, !range !21
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = select i1 %i.bq, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.h, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit, !prof !14

bb.h:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.bw = sub i32 %i.p, %.0.i13
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bv, ptr noundef nonnull %i.bk, i32 noundef %i.bw) #7
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment9setLengthERNS0_7RuntimeEj.exit, %bb.h
  store atomic i32 %.0.i13, ptr %i.a release, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE29maxNumSegmentsWithoutOverflowEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 4194299
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i = icmp ugt ptr %i.c, %i.e
  br i1 %.not.i.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.g = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.f, i32 noundef 4104) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.c ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4100) %i.i, i8 0, i64 4100, i1 false)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i
  %index = phi i64 [ 0, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.j = shl i64 %index, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store <4 x i32> splat (i32 14), ptr %i.l, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.m, align 4, !tbaa !3
  %index.next = shl i64 %index, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %index.next ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store <4 x i32> splat (i32 14), ptr %i.o, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.p, align 4, !tbaa !3
  %index.next.1 = shl i64 %index, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %index.next.1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store <4 x i32> splat (i32 14), ptr %i.r, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.s, align 4, !tbaa !3
  %index.next.2 = shl i64 %index, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %index.next.2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  store <4 x i32> splat (i32 14), ptr %i.u, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.v, align 4, !tbaa !3
  %index.next.3 = add nuw nsw i64 %index, 32      ; 2 uses
  %i.w = icmp eq i64 %index.next.3, 1024
  br i1 %i.w, label %_ZN6hermes2vm7Runtime10makeAFixedINS0_18SegmentedArrayBaseINS0_13HermesValue32EE7SegmentELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_DpOT2_.exit, label %vector.body, !llvm.loop !132

_ZN6hermes2vm7Runtime10makeAFixedINS0_18SegmentedArrayBaseINS0_13HermesValue32EE7SegmentELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJEEEPT_DpOT2_.exit: ; preds = %vector.body
  store i32 318771208, ptr %i.h, align 4, !tbaa !17
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment11getCellKindEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 19
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 318767104
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment2atEj(ptr noundef nonnull align 4 dereferenceable(4104) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment2atEj(ptr noundef nonnull align 4 dereferenceable(4104) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6lengthEv(ptr noundef nonnull align 4 dereferenceable(4104) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(4104) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 4 uses
  %i.c = icmp ugt i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = zext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = add nsw i64 %i.i, -4
  %i.k = shl nuw nsw i64 %i.e, 2
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12increaseSizeERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj:bb.a
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
  %i.bf = shl nuw nsw i64 %i.bb, 2
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = shl nuw nsw i64 %i.bd, 2
  %i.bi = sub nsw i64 %i.bg, %i.bh                ; 2 uses
  %i.bj = lshr exact i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check107 = icmp ult i64 %i.bi, 28
  br i1 %min.iters.check107, label %.lr.ph.i55.preheader141, label %vector.ph108

vector.ph108:                                     ; preds = %.lr.ph.i55.preheader
  %n.vec110 = and i64 %i.bk, 9223372036854775800  ; 3 uses
  %i.bl = shl i64 %n.vec110, 2
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph108
  %index112 = phi i64 [ 0, %vector.ph108 ], [ %index.next113, %vector.body111 ] ; 2 uses
  %i.bn = shl i64 %index112, 2
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.bo, align 4, !tbaa !3
  %index.next113 = add nuw i64 %index112, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next113, %n.vec110
  br i1 %i.bp, label %middle.block114, label %vector.body111, !llvm.loop !173

middle.block114:                                  ; preds = %vector.body111
  %cmp.n115 = icmp eq i64 %i.bk, %n.vec110
  br i1 %cmp.n115, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55.preheader141

.lr.ph.i55.preheader141:                          ; preds = %.lr.ph.i55.preheader, %middle.block114
  %.01320.i56.ph = phi ptr [ %i.be, %.lr.ph.i55.preheader ], [ %i.bm, %middle.block114 ]
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader141, %.lr.ph.i55
  %.01320.i56 = phi ptr [ %i.bq, %.lr.ph.i55 ], [ %.01320.i56.ph, %.lr.ph.i55.preheader141 ] ; 2 uses
  store i32 7, ptr %.01320.i56, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.01320.i56, i64 4 ; 2 uses
  %.not.i57 = icmp eq ptr %i.bq, %i.bc
  br i1 %.not.i57, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58, label %.lr.ph.i55, !llvm.loop !174

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58: ; preds = %.lr.ph.i55, %middle.block114, %bb.h
  store atomic i32 %.0.i53, ptr %i.a release, align 4
  %i.br = ptrtoint ptr %1 to i64
  %i.bs = or i64 %i.br, -281474976710656          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !73 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 192 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !76 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 200
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !86
  %i.bz = icmp ult ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.ca, ptr %i.bv, align 8, !tbaa !76
  store i64 %i.bs, ptr %i.bw, align 8, !tbaa !15
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.j:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit58
  %i.cb = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bu, i64 %i.bs) #7
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i.i = phi ptr [ %i.bw, %bb.i ], [ %i.cb, %bb.j ] ; 5 uses
  %.not49 = icmp samesign ugt i32 %i.ao, %i.ar    ; 2 uses
  br i1 %.not49, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %.sroa.0.0.copyload.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.cc = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16392
  %i.cf = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !154
  %i.ci = icmp eq i32 %i.ch, 7
  br i1 %i.ci, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !7  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4104 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.cl, %i.cn
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cp = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.co, i32 noundef 4104) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.cq = phi ptr [ %i.cp, %bb.m ], [ %i.ck, %bb.n ] ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4100) %i.cr, i8 0, i64 4100, i1 false)
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i
  %index120 = phi i64 [ 0, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i ], [ %index.next121.3, %vector.body119 ] ; 5 uses
  %i.cs = shl i64 %index120, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store <4 x i32> splat (i32 14), ptr %i.cu, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.cv, align 4, !tbaa !3
  %index.next121 = shl i64 %index120, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %index.next121 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store <4 x i32> splat (i32 14), ptr %i.cx, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.cy, align 4, !tbaa !3
  %index.next121.1 = shl i64 %index120, 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 %index.next121.1 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  store <4 x i32> splat (i32 14), ptr %i.da, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.db, align 4, !tbaa !3
  %index.next121.2 = shl i64 %index120, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 %index.next121.2 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 104
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 120
  store <4 x i32> splat (i32 14), ptr %i.dd, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.de, align 4, !tbaa !3
  %index.next121.3 = add nuw nsw i64 %index120, 32 ; 2 uses
  %i.df = icmp eq i64 %index.next121.3, 1024
  br i1 %i.df, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i, label %vector.body119, !llvm.loop !175

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i: ; preds = %vector.body119
  store i32 318771208, ptr %i.cq, align 4, !tbaa !17
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.dg = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16392
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.cf ; 3 uses
  %i.dk = ptrtoint ptr %i.cq to i64
  %i.dl = ptrtoint ptr %0 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = trunc i64 %i.dm to i32                  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !20
  %i.dq = ptrtoint ptr %i.dj to i64
  %i.dr = and i64 %i.dq, 1125899902648320
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = icmp eq ptr %i.dp, %i.ds
  br i1 %i.dt, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit, label %bb.o, !prof !42

bb.o:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.du, ptr noundef nonnull align 4 dereferenceable(4) %i.dj, i32 %i.dn) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i, %bb.o
  store i32 %i.dn, ptr %i.dj, align 4, !tbaa !154
  br label %bb.p

bb.p:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit, %bb.k, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %.not5083.not = icmp samesign ult i32 %i.ao, %i.ar
  br i1 %.not5083.not, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.dy = ptrtoint ptr %0 to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %narrow105 = add nuw nsw i32 %i.ao, 1
  %i.ea = zext nneg i32 %narrow105 to i64
  %i.eb = zext nneg i32 %i.ar to i64
  br label %bb.q

.preheader:                                       ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66, %bb.p
  br i1 %.not49, label %._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader
  %i.ec = and i32 %i.ap, 1023
  %i.ed = add nuw nsw i32 %i.ec, 1
  %i.ee = ptrtoint ptr %0 to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8489
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ei = zext nneg i32 %i.ao to i64
  %i.ej = zext nneg i32 %i.ar to i64
  %i.ek = add nuw nsw i32 %i.ar, 1
  %wide.trip.count = zext nneg i32 %i.ek to i64
  br label %bb.u

bb.q:                                             ; preds = %.lr.ph, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66
  %indvars.iv = phi i64 [ %i.ea, %.lr.ph ], [ %indvars.iv.next, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66 ] ; 3 uses
  %i.el = load ptr, ptr %i.dv, align 8, !tbaa !7  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4104 ; 2 uses
  %i.en = load ptr, ptr %i.dw, align 8, !tbaa !13
  %.not.i.not.i.i.i.i.i.i.i59 = icmp ugt ptr %i.em, %i.en
  br i1 %.not.i.not.i.i.i.i.i.i.i59, label %bb.r, label %bb.s, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.eo = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dx, i32 noundef 4104) #7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60

bb.s:                                             ; preds = %bb.q
  store ptr %i.em, ptr %i.dv, align 8, !tbaa !7
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60

_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60: ; preds = %bb.s, %bb.r
  %i.ep = phi ptr [ %i.eo, %bb.r ], [ %i.el, %bb.s ] ; 7 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4100) %i.eq, i8 0, i64 4100, i1 false)
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60
  %index126 = phi i64 [ 0, %_ZN6hermes2vm7HadesGC9allocWorkILb1ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i.i60 ], [ %index.next127.3, %vector.body125 ] ; 5 uses
  %i.er = shl i64 %index126, 2
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store <4 x i32> splat (i32 14), ptr %i.et, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.eu, align 4, !tbaa !3
  %index.next127 = shl i64 %index126, 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next127 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  store <4 x i32> splat (i32 14), ptr %i.ew, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.ex, align 4, !tbaa !3
  %index.next127.1 = shl i64 %index126, 2
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next127.1 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  store <4 x i32> splat (i32 14), ptr %i.ez, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.fa, align 4, !tbaa !3
  %index.next127.2 = shl i64 %index126, 2
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next127.2 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 104
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 120
  store <4 x i32> splat (i32 14), ptr %i.fc, align 4, !tbaa !3
  store <4 x i32> splat (i32 14), ptr %i.fd, align 4, !tbaa !3
  %index.next127.3 = add nuw nsw i64 %index126, 32 ; 2 uses
  %i.fe = icmp eq i64 %index.next127.3, 1024
  br i1 %i.fe, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64, label %vector.body125, !llvm.loop !176

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64: ; preds = %vector.body125
  store i32 318771208, ptr %i.ep, align 4, !tbaa !17
  %.sroa.0.0.copyload.i.i.i65 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.ff = and i64 %.sroa.0.0.copyload.i.i.i65, 281474976710655
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16392
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv ; 3 uses
  %i.fj = ptrtoint ptr %i.ep to i64
  %i.fk = sub i64 %i.fj, %i.dy
  %i.fl = trunc i64 %i.fk to i32                  ; 2 uses
  %i.fm = load ptr, ptr %i.dz, align 8, !tbaa !20
  %i.fn = ptrtoint ptr %i.fi to i64
  %i.fo = and i64 %i.fn, 1125899902648320
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = icmp eq ptr %i.fm, %i.fp
  br i1 %i.fq, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66, label %bb.t, !prof !42

bb.t:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.dx, ptr noundef nonnull align 4 dereferenceable(4) %i.fi, i32 %i.fl) #7
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE15allocateSegmentERNS0_7RuntimeENS0_6HandleIS3_EEj.exit66: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment6createERNS0_7RuntimeE.exit.i64, %bb.t
  store i32 %i.fl, ptr %i.fi, align 4, !tbaa !154
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not50.not = icmp samesign ult i64 %indvars.iv, %i.eb
  br i1 %.not50.not, label %bb.q, label %.preheader, !llvm.loop !177

._crit_edge:                                      ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit, %.preheader
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.fr = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.fs = inttoptr i64 %i.fr to ptr
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph87, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit
  %indvars.iv89 = phi i64 [ %i.ei, %.lr.ph87 ], [ %indvars.iv.next90, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit ] ; 3 uses
  %i.ft = icmp eq i64 %indvars.iv89, %i.ej
  %i.fu = select i1 %i.ft, i32 %i.ed, i32 1024    ; 6 uses
  %.sroa.0.0.copyload.i.i67 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !15
  %i.fv = and i64 %.sroa.0.0.copyload.i.i67, 281474976710655
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16392
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv89
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i.i68 = icmp eq i32 %i.fz, 0
  %i.ga = zext i32 %i.fz to i64
  %i.gb = add i64 %i.ga, %i.ee
  %i.gc = inttoptr i64 %i.gb to ptr
  %i.gd = select i1 %.not.i.i.i.i.i.i68, ptr null, ptr %i.gc ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4 ; 2 uses
  %i.gf = load atomic i32, ptr %i.ge monotonic, align 4 ; 4 uses
  %i.gg = icmp ugt i32 %i.fu, %i.gf
  br i1 %i.gg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gi = zext i32 %i.gf to i64                   ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gi ; 3 uses
  %i.gk = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gk
  %i.gm = shl nuw nsw i64 %i.gk, 2
  %i.gn = add nsw i64 %i.gm, -4
  %i.go = shl nuw nsw i64 %i.gi, 2
  %i.gp = sub nsw i64 %i.gn, %i.go                ; 2 uses
  %i.gq = lshr exact i64 %i.gp, 2
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %min.iters.check130 = icmp ult i64 %i.gp, 28
  br i1 %min.iters.check130, label %.lr.ph.i.i.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %bb.v
  %n.vec133 = and i64 %i.gr, 9223372036854775800  ; 3 uses
  %i.gs = shl i64 %n.vec133, 2
  %i.gt = getelementptr i8, ptr %i.gj, i64 %i.gs
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph131
  %index135 = phi i64 [ 0, %vector.ph131 ], [ %index.next137, %vector.body134 ] ; 2 uses
  %i.gu = shl i64 %index135, 2
  %next.gep136 = getelementptr i8, ptr %i.gj, i64 %i.gu ; 2 uses
  %i.gv = getelementptr i8, ptr %next.gep136, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep136, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.gv, align 4, !tbaa !3
  %index.next137 = add nuw i64 %index135, 8       ; 2 uses
  %i.gw = icmp eq i64 %index.next137, %n.vec133
  br i1 %i.gw, label %middle.block138, label %vector.body134, !llvm.loop !178

middle.block138:                                  ; preds = %vector.body134
  %cmp.n139 = icmp eq i64 %i.gr, %n.vec133
  br i1 %cmp.n139, label %.sink.split.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.v, %middle.block138
  %.01320.i.i.ph = phi ptr [ %i.gj, %bb.v ], [ %i.gt, %middle.block138 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.01320.i.i = phi ptr [ %i.gx, %.lr.ph.i.i ], [ %.01320.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i.i, align 4, !tbaa !3
  %i.gx = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gx, %i.gl
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !179

bb.w:                                             ; preds = %bb.u
  %i.gy = icmp ult i32 %i.fu, %i.gf
  br i1 %i.gy, label %bb.x, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.x:                                             ; preds = %bb.w
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.ha = shl nuw nsw i32 %i.fu, 2
  %.idx14.i = zext nneg i32 %i.ha to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.idx14.i ; 2 uses
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = load ptr, ptr %i.ef, align 8, !tbaa !20
  %i.he = and i64 %i.hc, -4194304
  %i.hf = inttoptr i64 %i.he to ptr
  %i.hg = icmp ne ptr %i.hd, %i.hf
  %i.hh = load i8, ptr %i.eg, align 1, !range !21
  %i.hi = trunc nuw i8 %i.hh to i1
  %i.hj = select i1 %i.hg, i1 %i.hi, i1 false
  br i1 %i.hj, label %bb.y, label %.sink.split.i, !prof !14

bb.y:                                             ; preds = %bb.x
  %i.hk = sub i32 %i.gf, %i.fu
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.eh, ptr noundef nonnull %i.hb, i32 noundef %i.hk) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %middle.block138, %bb.y, %bb.x
  store atomic i32 %i.fu, ptr %i.ge release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit: ; preds = %bb.w, %.sink.split.i
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond.a = icmp eq i64 %indvars.iv.next90, %wide.trip.count
  br i1 %exitcond.a, label %._crit_edge, label %bb.u, !llvm.loop !180

bb.z:                                             ; preds = %._crit_edge, %bb.e
  %.sroa.042.0 = phi ptr [ %1, %bb.e ], [ %i.fs, %._crit_edge ]
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

end_hunk_3
begin_hunk_4_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE10shrinkLeftERNS0_7RuntimeEj:bb.a
  %.sink5.i.i.i = phi i32 [ %i.ar, %bb.d ], [ %i.ag, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %i.at = zext nneg i32 %.sink5.i.i.i to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at ; 3 uses
  %i.av = icmp ult i32 %i.ah, 4096
  br i1 %i.av, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i, label %bb.e, !prof !42

bb.e:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i
  %i.aw = add i32 %i.ah, -4096
  %i.ax = lshr i32 %i.aw, 10
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !154, !noalias !204
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add i64 %i.bb, %i.aa
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = and i32 %i.ah, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i: ; preds = %bb.e, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i
  %.sink6.i.i = phi ptr [ %i.bd, %bb.e ], [ %.sroa.0.0.copyload, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i ]
  %.sink5.i.i = phi i32 [ %i.be, %bb.e ], [ %i.ah, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %i.bg = zext nneg i32 %.sink5.i.i to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  %.sroa.0.0.copyload.i = load i32, ptr %i.bh, align 4, !tbaa !3, !noalias !204 ; 2 uses
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !20, !noalias !204
  %i.bj = ptrtoint ptr %i.au to i64
  %i.bk = and i64 %i.bj, -4194304
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = icmp eq ptr %i.bi, %i.bl
  br i1 %i.bm, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.f, !prof !42

bb.f:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.au, i32 %.sroa.0.0.copyload.i) #7, !noalias !204
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.f, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i
  store i32 %.sroa.0.0.copyload.i, ptr %i.au, align 4, !tbaa !154, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7, !noalias !204
  %i.bn = add i32 %i.ah, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %.sroa.0.0.copyload, i32 noundef %i.bn, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.67.0.copyload) #7, !noalias !204
  %i.bo = load i32, ptr %i.ac, align 8, !tbaa !140, !noalias !204 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7, !noalias !204
  %i.bp = add i32 %i.ag, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %.sroa.09.0.copyload10, i32 noundef %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.816.0.copyload18) #7, !noalias !204
  %i.bq = load i32, ptr %i.ad, align 8, !tbaa !140, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7, !noalias !204
  %.not.i = icmp eq i32 %i.bo, %.sroa.3.0.copyload
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %bb.c, !llvm.loop !197

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4copyINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !154  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  %i.k = ptrtoint ptr %1 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.s = icmp ugt i32 %2, %.0.i
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.t = sub nuw i32 %2, %.0.i
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE26increaseSizeWithinCapacityERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.t)
  br label %bb.f

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.u = icmp ult i32 %2, %.0.i
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = sub nuw i32 %.0.i, %2
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.v)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE26increaseSizeWithinCapacityERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !154  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  %i.k = ptrtoint ptr %1 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.s = add i32 %.0.i, %2                        ; 5 uses
  %i.t = icmp ult i32 %i.s, 4097
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = zext nneg i32 %i.s to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v
  %.not1421.i = icmp eq i32 %2, 0
  br i1 %.not1421.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.x = zext i32 %.0.i to i64                    ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.x ; 3 uses
  %i.z = shl nuw nsw i64 %i.v, 2
  %i.aa = add nsw i64 %i.z, -4
  %i.ab = shl nuw nsw i64 %i.x, 2
  %i.ac = sub nsw i64 %i.aa, %i.ab                ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check42 = icmp ult i64 %i.ac, 28
  br i1 %min.iters.check42, label %.lr.ph.i.preheader53, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.i.preheader
  %n.vec45 = and i64 %i.ae, 9223372036854775800   ; 3 uses
  %i.af = shl i64 %n.vec45, 2
  %i.ag = getelementptr i8, ptr %i.y, i64 %i.af
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph43
  %index47 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body46 ] ; 2 uses
  %i.ah = shl i64 %index47, 2
  %next.gep48 = getelementptr i8, ptr %i.y, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep48, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep48, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.ai, align 4, !tbaa !3
  %index.next49 = add nuw i64 %index47, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next49, %n.vec45
  br i1 %i.aj, label %middle.block50, label %vector.body46, !llvm.loop !207

middle.block50:                                   ; preds = %vector.body46
  %cmp.n51 = icmp eq i64 %i.ae, %n.vec45
  br i1 %cmp.n51, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i.preheader53

.lr.ph.i.preheader53:                             ; preds = %.lr.ph.i.preheader, %middle.block50
  %.01320.i.ph = phi ptr [ %i.y, %.lr.ph.i.preheader ], [ %i.ag, %middle.block50 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader53, %.lr.ph.i
  %.01320.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.01320.i.ph, %.lr.ph.i.preheader53 ] ; 2 uses
  store i32 7, ptr %.01320.i, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.01320.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.w
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i, !llvm.loop !208

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit: ; preds = %.lr.ph.i, %middle.block50, %bb.c
  store atomic i32 %i.s, ptr %i.a release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.d:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.al = add i32 %i.s, 1023                      ; 2 uses
  %i.am = add i32 %i.s, -4097
  %i.an = lshr i32 %i.am, 10
  %i.ao = and i32 %i.al, 1023                     ; 2 uses
  %i.ap = add nuw nsw i32 %i.ao, 1                ; 5 uses
  %i.aq = icmp ult i32 %.0.i, 4096
  br i1 %i.aq, label %.lr.ph.i20.preheader, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23

.lr.ph.i20.preheader:                             ; preds = %bb.d
  %i.ar = shl nuw nsw i32 %.0.i, 2
  %narrow = add nuw nsw i32 %i.ar, 8
  %i.as = zext nneg i32 %narrow to i64            ; 4 uses
  %i.at = sub nsw i64 16388, %i.as                ; 2 uses
  %i.au = lshr exact i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 28
  br i1 %min.iters.check, label %.lr.ph.i20.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i20.preheader
  %n.vec = and i64 %i.av, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2
  %i.ax = add i64 %i.aw, %i.as
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ay ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> splat (i32 7), ptr %gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.az, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23, label %.lr.ph.i20.preheader54

.lr.ph.i20.preheader54:                           ; preds = %.lr.ph.i20.preheader, %middle.block
  %.01320.i21.idx.ph = phi i64 [ %i.as, %.lr.ph.i20.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader54, %.lr.ph.i20
  %.01320.i21.idx = phi i64 [ %.01320.i21.add, %.lr.ph.i20 ], [ %.01320.i21.idx.ph, %.lr.ph.i20.preheader54 ] ; 2 uses
  %.01320.i21.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.01320.i21.idx
  store i32 7, ptr %.01320.i21.ptr, align 4, !tbaa !3
  %.01320.i21.add = add nuw nsw i64 %.01320.i21.idx, 4 ; 2 uses
  %.not.i22 = icmp eq i64 %.01320.i21.add, 16392
  br i1 %.not.i22, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23, label %.lr.ph.i20, !llvm.loop !210

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23: ; preds = %.lr.ph.i20, %middle.block, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.bc = zext nneg i32 %i.an to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i.i24 = icmp eq i32 %i.be, 0
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = zext i32 %i.be to i64
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = select i1 %.not.i.i.i.i.i.i24, ptr null, ptr %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bl = load atomic i32, ptr %i.bk monotonic, align 4 ; 4 uses
  %.not = icmp ult i32 %i.ao, %i.bl
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn ; 3 uses
  %i.bp = zext nneg i32 %i.ap to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bp
  %i.br = shl i32 %i.al, 2
  %i.bs = and i32 %i.br, 4092
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bn, 2
  %i.bv = sub nsw i64 %i.bt, %i.bu                ; 2 uses
  %i.bw = lshr exact i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check31 = icmp ult i64 %i.bv, 28
  br i1 %min.iters.check31, label %.lr.ph.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %bb.e
  %n.vec34 = and i64 %i.bx, 9223372036854775800   ; 3 uses
  %i.by = shl i64 %n.vec34, 2
  %i.bz = getelementptr i8, ptr %i.bo, i64 %i.by
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph32
  %index36 = phi i64 [ 0, %vector.ph32 ], [ %index.next37, %vector.body35 ] ; 2 uses
  %i.ca = shl i64 %index36, 2
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.ca ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.cb, align 4, !tbaa !3
  %index.next37 = add nuw i64 %index36, 8         ; 2 uses
  %i.cc = icmp eq i64 %index.next37, %n.vec34
  br i1 %i.cc, label %middle.block38, label %vector.body35, !llvm.loop !211

middle.block38:                                   ; preds = %vector.body35
  %cmp.n39 = icmp eq i64 %i.bx, %n.vec34
  br i1 %cmp.n39, label %.sink.split.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e, %middle.block38
  %.01320.i.i.ph = phi ptr [ %i.bo, %bb.e ], [ %i.bz, %middle.block38 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.01320.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.01320.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i.i, align 4, !tbaa !3
  %i.cd = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, %i.bq
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !212

bb.f:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit23
  %i.ce = icmp ult i32 %i.ap, %i.bl
  br i1 %i.ce, label %bb.g, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.cg = shl nuw nsw i32 %i.ap, 2
  %.idx14.i = zext nneg i32 %i.cg to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx14.i ; 2 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !20
  %i.cl = and i64 %i.ci, -4194304
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = icmp ne ptr %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.cp = load i8, ptr %i.co, align 1, !range !21
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = select i1 %i.cn, i1 %i.cq, i1 false
  br i1 %i.cr, label %bb.h, label %.sink.split.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ct = sub i32 %i.bl, %i.ap
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cs, ptr noundef nonnull %i.ch, i32 noundef %i.ct) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %middle.block38, %bb.h, %bb.g
  store atomic i32 %i.ap, ptr %i.bk release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit: ; preds = %.sink.split.i, %bb.f, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE18uninitialized_fillIPS3_EEvT_S6_S2_RNS0_7HadesGCE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5clearERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !154  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  %i.k = ptrtoint ptr %1 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ]
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.0.i)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE11getCellKindEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 17
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7classofEPKNS0_6GCCellE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %.mask = and i32 %i.a, -16777216
  %i.b = icmp eq i32 %.mask, 285212672
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE17_trimSizeCallbackEPKNS0_6GCCellE(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = shl i32 %i.b, 2
  %i.d = add i32 %i.c, 8
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5beginERNS0_11PointerBaseE(ptr dead_on_unwind noalias writable sret(%"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE(ptr dead_on_unwind noalias writable sret(%"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16392
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !154  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  %i.k = ptrtoint ptr %2 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ]
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, i32 noundef %.0.i, ptr noundef nonnull align 1 dereferenceable(1) %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE16inlineStorageEndERNS0_11PointerBaseE(ptr dead_on_unwind noalias writable sret(%"struct.hermes::vm::SegmentedArrayBase<hermes::vm::HermesValue32>::iterator") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16392
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !154  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  %i.k = ptrtoint ptr %2 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.n
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE22growLeftWithinCapacityERNS0_7RuntimeENS0_12PseudoHandleIS3_EEj:bb.a
bb.e:                                             ; preds = %bb.d
  %i.bd = add i32 %i.bb, -4096
  %i.be = lshr i32 %i.bd, 10
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !154, !noalias !223
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add i64 %i.bi, %i.as
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = and i32 %i.bb, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i: ; preds = %bb.e, %bb.d
  %.sink6.i.i.i = phi ptr [ %i.bk, %bb.e ], [ %.sroa.025.0.copyload26, %bb.d ]
  %.sink5.i.i.i = phi i32 [ %i.bl, %bb.e ], [ %i.bb, %bb.d ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %i.bn = zext nneg i32 %.sink5.i.i.i to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7, !noalias !223
  %i.bp = add i32 %i.az, -1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %.sroa.022.0.copyload, i32 noundef %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.524.0.copyload) #7, !noalias !223
  %i.bq = load i32, ptr %i.at, align 8, !tbaa !140, !noalias !223 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7, !noalias !223
  %i.br = icmp ult i32 %i.bq, 4096
  br i1 %i.br, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i, label %bb.f, !prof !42

bb.f:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i
  %i.bs = add i32 %i.bq, -4096
  %i.bt = lshr i32 %i.bs, 10
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !154, !noalias !223
  %i.bx = zext i32 %i.bw to i64
  %i.by = add i64 %i.bx, %i.au
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = and i32 %i.bq, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i: ; preds = %bb.f, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i
  %.sink6.i.i = phi ptr [ %i.bz, %bb.f ], [ %.sroa.022.0.copyload, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i ]
  %.sink5.i.i = phi i32 [ %i.ca, %bb.f ], [ %i.bq, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %i.cc = zext nneg i32 %.sink5.i.i to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  %.sroa.0.0.copyload.i = load i32, ptr %i.cd, align 4, !tbaa !3, !noalias !223 ; 2 uses
  %i.ce = load ptr, ptr %i.av, align 8, !tbaa !20, !noalias !223
  %i.cf = ptrtoint ptr %i.bo to i64
  %i.cg = and i64 %i.cf, -4194304
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = icmp eq ptr %i.ce, %i.ch
  br i1 %i.ci, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.g, !prof !42

bb.g:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.bo, i32 %.sroa.0.0.copyload.i) #7, !noalias !223
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.g, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratordeEv.exit.i
  store i32 %.sroa.0.0.copyload.i, ptr %i.bo, align 4, !tbaa !154, !noalias !223
  %.not.i = icmp eq i32 %.sroa.3.0.copyload, %i.bq
  br i1 %.not.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE13copy_backwardINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit, label %bb.d, !llvm.loop !226

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE13copy_backwardINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3endERNS0_11PointerBaseE.exit14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 4 dereferenceable(8) %i.a, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  %i.cj = load ptr, ptr %12, align 8, !tbaa !137, !noalias !227
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !140, !noalias !227
  %i.cm = add i32 %i.cl, %2
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !141, !noalias !227, !nonnull !29
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %i.cj, i32 noundef %i.cm, ptr noundef nonnull align 1 dereferenceable(1) %i.co) #7
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.343.0.copyload = load i32, ptr %.sroa.343.0..sroa_idx, align 8 ; 2 uses
  %.sroa.038.0.copyload = load ptr, ptr %10, align 8 ; 3 uses
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.439.0.copyload = load i32, ptr %.sroa.439.0..sroa_idx, align 8 ; 2 uses
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.541.0.copyload = load ptr, ptr %.sroa.541.0..sroa_idx, align 8 ; 2 uses
  %.not2327.i = icmp eq i32 %.sroa.439.0.copyload, %.sroa.343.0.copyload
  br i1 %.not2327.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillINS0_18SegmentedArrayBaseIS2_E8iteratorEEEvT_S8_S2_RNS0_7HadesGCE.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE13copy_backwardINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.038.0.copyload, i64 16392
  %i.cq = ptrtoint ptr %.sroa.541.0.copyload to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8489
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i, %.lr.ph.i15
  %.sroa.5.026.i = phi i32 [ %.sroa.439.0.copyload, %.lr.ph.i15 ], [ %i.dq, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i ] ; 5 uses
  %i.cu = icmp ult i32 %.sroa.5.026.i, 4096
  br i1 %i.cu, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit5.i, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.cv = add i32 %.sroa.5.026.i, -4096
  %i.cw = lshr i32 %i.cv, 10
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !154
  %i.da = zext i32 %i.cz to i64
  %i.db = add i64 %i.da, %i.cq
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = and i32 %.sroa.5.026.i, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit5.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit5.i: ; preds = %bb.i, %bb.h
  %.sink6.i.i3.i = phi ptr [ %i.dc, %bb.i ], [ %.sroa.038.0.copyload, %bb.h ]
  %.sink5.i.i4.i = phi i32 [ %i.dd, %bb.i ], [ %.sroa.5.026.i, %bb.h ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sink6.i.i3.i, i64 8
  %i.df = zext nneg i32 %.sink5.i.i4.i to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.df ; 3 uses
  %i.dh = load ptr, ptr %i.cr, align 8, !tbaa !20
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = and i64 %i.di, -4194304
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = icmp ne ptr %i.dh, %i.dk
  %i.dm = load i8, ptr %i.cs, align 1, !range !21
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = select i1 %i.dl, i1 %i.dn, i1 false
  br i1 %i.do, label %bb.j, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i, !prof !14

bb.j:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit5.i
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.dg, align 4, !tbaa !3
  call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, i32 %.sroa.0.0.copyload.i.i.i) #7
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i: ; preds = %bb.j, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorptEv.exit5.i
  store i32 7, ptr %i.dg, align 4, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.dp = add i32 %.sroa.5.026.i, 1
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8iteratorC1EPS3_jRNS0_11PointerBaseE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %.sroa.038.0.copyload, i32 noundef %i.dp, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.541.0.copyload) #7
  %i.dq = load i32, ptr %i.ct, align 8, !tbaa !140 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.not.i16 = icmp eq i32 %i.dq, %.sroa.343.0.copyload
  br i1 %.not.i16, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillINS0_18SegmentedArrayBaseIS2_E8iteratorEEEvT_S8_S2_RNS0_7HadesGCE.exit, label %bb.h, !llvm.loop !230

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE4fillINS0_18SegmentedArrayBaseIS2_E8iteratorEEEvT_S8_S2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE9setNonPtrES2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE13copy_backwardINS0_18SegmentedArrayBaseIS2_E8iteratorES7_EET0_T_S9_S8_RNS0_7HadesGCE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE12decreaseSizeERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4 ; 3 uses
  %i.c = icmp ult i32 %i.b, 4097
  br i1 %i.c, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, -4097                      ; 2 uses
  %i.e = shl i32 %i.d, 10
  %i.f = add i32 %i.e, 4096
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !154  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  %i.k = ptrtoint ptr %1 to i64
  %i.l = zext i32 %i.j to i64
  %i.m = add i64 %i.l, %i.k
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = add i32 %i.f, %i.q
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.s = load atomic i32, ptr %i.a monotonic, align 4
  %i.t = sub i32 %.0.i, %2                        ; 6 uses
  %i.u = icmp ult i32 %i.t, 4097
  %i.v = add i32 %i.t, -4096
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1023
  %i.y = lshr i64 %i.x, 10
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = add nuw nsw i32 %i.z, 4096
  %.0.i13 = select i1 %i.u, i32 %i.t, i32 %i.aa   ; 3 uses
  %i.ab = icmp ugt i32 %i.t, 4096
  br i1 %i.ab, label %bb.c, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.c:                                             ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.ac = add i32 %i.t, 1023
  %i.ad = add i32 %i.t, -4097
  %i.ae = lshr i32 %i.ad, 10
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !154 ; 2 uses
  %.not.i.i.i.i.i.i14 = icmp eq i32 %i.ai, 0
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = zext i32 %i.ai to i64
  %i.al = add i64 %i.ak, %i.aj
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = select i1 %.not.i.i.i.i.i.i14, ptr null, ptr %i.am ; 3 uses
  %i.ao = and i32 %i.ac, 1023                     ; 2 uses
  %i.ap = add nuw nsw i32 %i.ao, 1                ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 2 uses
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 4 ; 4 uses
  %.not = icmp ult i32 %i.ao, %i.ar
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.at = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at ; 3 uses
  %i.av = zext nneg i32 %i.ap to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.av
  %i.ax = zext i32 %.0.i to i64
  %i.ay = xor i32 %2, -1
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, %i.ax
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = and i64 %i.bb, 4092
  %i.bd = shl nuw nsw i64 %i.at, 2
  %i.be = sub nsw i64 %i.bc, %i.bd                ; 2 uses
  %i.bf = lshr exact i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bh = shl i64 %n.vec, 2
  %i.bi = getelementptr i8, ptr %i.au, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 7), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 7), ptr %i.bk, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %.sink.split.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d, %middle.block
  %.01320.i.i.ph = phi ptr [ %i.au, %bb.d ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.01320.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %.01320.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 7, ptr %.01320.i.i, align 4, !tbaa !3
  %i.bm = getelementptr inbounds nuw i8, ptr %.01320.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, %i.aw
  br i1 %.not.i.i, label %.sink.split.i, label %.lr.ph.i.i, !llvm.loop !232

bb.e:                                             ; preds = %bb.c
  %i.bn = icmp ult i32 %i.ap, %i.ar
  br i1 %i.bn, label %bb.f, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bp = shl nuw nsw i32 %i.ap, 2
  %.idx14.i = zext nneg i32 %i.bp to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx14.i ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !20
  %i.bu = and i64 %i.br, -4194304
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = icmp ne ptr %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.by = load i8, ptr %i.bx, align 1, !range !21
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = select i1 %i.bw, i1 %i.bz, i1 false
  br i1 %i.ca, label %bb.g, label %.sink.split.i, !prof !14

bb.g:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.cc = sub i32 %i.ar, %i.ap
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cb, ptr noundef nonnull %i.bq, i32 noundef %i.cc) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i.i, %middle.block, %bb.g, %bb.f
  store atomic i32 %i.ap, ptr %i.aq release, align 4
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit: ; preds = %.sink.split.i, %bb.e, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = zext i32 %.0.i13 to i64
  %.idx15 = shl nuw nsw i64 %i.ce, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx15 ; 2 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20
  %i.cj = and i64 %i.cg, -4194304
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = icmp ne ptr %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8489
  %i.cn = load i8, ptr %i.cm, align 1, !range !21
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = select i1 %i.cl, i1 %i.co, i1 false
  br i1 %i.cp, label %bb.h, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit, !prof !14

bb.h:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.cr = sub i32 %i.s, %.0.i13
  tail call void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cq, ptr noundef nonnull %i.cf, i32 noundef %i.cr) #7
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE28rangeUnreachableWriteBarrierEPS3_S4_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment9setLengthERNS0_7RuntimeEj.exit, %bb.h
  store atomic i32 %.0.i13, ptr %i.a release, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE29maxNumSegmentsWithoutOverflowEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 4194299
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm16SegmentBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE7Segment2vtE, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 8) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm21SegmentSmallBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE7Segment2vtE, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 4) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm23SegmentedArrayBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2vtE, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 8) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm28SegmentedArraySmallBuildMetaEPKNS0_6GCCellERNS0_8Metadata7BuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(224) initializes((216, 224)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE2vtE, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224) %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 4) #7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm8Metadata7Builder8addArrayEPKcNS1_9ArrayData9ArrayTypeEPKvPKSt6atomicIjEm(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC14allocLongLivedEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC19pauseBackgroundTaskEv(ptr dead_on_unwind writable sret(%"class.std::lock_guard") align 8, ptr noundef nonnull align 8 dereferenceable(8112)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC32constructorWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(8112), i64) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC29snapshotWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC32constructorWriteBarrierRangeSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEEj(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112), i32) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_5

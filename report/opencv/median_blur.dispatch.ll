Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/median_blur.dispatch?download=true
inline.NumInlined: 1467
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN2cv12cpu_baseline10medianBlurERKNS_3MatERS1_i:bb.a
.noexc366.i:                                      ; preds = %bb.oi
  unreachable

_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i361.i: ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit.i
  %i.kmw = shl nuw i32 %i.kmu, 1
  %i.kmx = or disjoint i32 %i.kmw, 32
  %i.kmy = zext i32 %i.kmx to i64                 ; 4 uses
  %i.kmz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kmy) #18
          to label %bb.oj unwind label %bb.oo     ; 5 uses

bb.oj:                                            ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i361.i
  store i16 0, ptr %i.kmz, align 2, !tbaa !46
  %i.kna = getelementptr i8, ptr %i.kmz, i64 2
  %.idx.i.i.i.i.i.i.i363.i = add nsw i64 %i.kmy, -2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.kna, i8 0, i64 %.idx.i.i.i.i.i.i.i363.i, i1 false), !tbaa !46
  %i.knb = ptrtoint ptr %.sroa.0427.0.i to i64    ; 2 uses
  %i.knc = add i64 %i.knb, 15
  %i.knd = and i64 %i.knc, -16
  %i.kne = inttoptr i64 %i.knd to ptr             ; 10 uses
  %i.knf = ptrtoint ptr %i.kmz to i64
  %i.kng = add i64 %i.knf, 15
  %i.knh = and i64 %i.kng, -16
  %i.kni = inttoptr i64 %i.knh to ptr             ; 8 uses
  %i.knj = load i32, ptr %i.kme, align 4, !tbaa !113 ; 2 uses
  %i.knk = icmp sgt i32 %i.knj, 0
  br i1 %i.knk, label %.lr.ph501.i, label %_ZNSt6vectorItSaItEED2Ev.exit.i

.lr.ph501.i:                                      ; preds = %bb.oj
  %i.knl = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.knm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.knn = shl nuw nsw i32 %i.klo, 8
  %i.kno = trunc i32 %i.kls to i16
  %i.knp = add i16 %i.kno, 2                      ; 2 uses
  %i.knq = add nsw i32 %i.klq, -1                 ; 2 uses
  %i.knr = icmp sgt i32 %i.klq, 0
  %i.kns = xor i32 %i.kls, -1
  %i.knt = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.knu = trunc i32 %i.klr to i16
  %i.knv = or i16 %i.knu, 1                       ; 16 uses
  %i.knw = add nuw nsw i32 %i.kls, 1
  %i.knx = mul i32 %i.knw, %i.kmh                 ; 32 uses
  %i.kny = or i32 %i.klr, 1
  %i.knz = zext nneg i32 %i.klo to i64            ; 8 uses
  %i.koa = zext nneg i32 %i.kls to i64            ; 4 uses
  %.zext667.i = zext nneg i16 %i.kmf to i64
  %i.kob = sext i32 %i.kmg to i64
  %smin.i = call i64 @llvm.smin.i64(i64 %.zext667.i, i64 %i.kob)
  %wide.trip.count568.i = zext nneg i32 %i.klq to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 4 uses
  %.phi.trans.insert588.i = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %.phi.trans.insert590.i = getelementptr inbounds nuw i8, ptr %6, i64 6 ; 4 uses
  %.phi.trans.insert592.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %.phi.trans.insert594.i = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 4 uses
  %.phi.trans.insert596.i = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 4 uses
  %.phi.trans.insert598.i = getelementptr inbounds nuw i8, ptr %6, i64 14 ; 4 uses
  %.phi.trans.insert600.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %.phi.trans.insert602.i = getelementptr inbounds nuw i8, ptr %6, i64 18 ; 4 uses
  %.phi.trans.insert604.i = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %.phi.trans.insert606.i = getelementptr inbounds nuw i8, ptr %6, i64 22 ; 4 uses
  %.phi.trans.insert608.i = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %.phi.trans.insert610.i = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 4 uses
  %.phi.trans.insert612.i = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 4 uses
  %.phi.trans.insert614.i = getelementptr inbounds nuw i8, ptr %6, i64 30 ; 4 uses
  %i.koc = add i32 %i.kmh, -2
  %i.kod = zext i32 %i.koc to i64
  %i.koe = shl nuw nsw i64 %i.kod, 5
  %i.kof = getelementptr i8, ptr %i.kne, i64 %i.koe
  %scevgep = getelementptr i8, ptr %i.kof, i64 64
  %i.kog = shl nuw nsw i32 %i.klm, 1
  %i.koh = and i32 %i.kog, 254
  %i.koi = zext nneg i32 %i.koh to i64
  %i.koj = add i32 %i.kmh, -2                     ; 2 uses
  %i.kok = zext i32 %i.koj to i64
  %i.kol = add nuw nsw i64 %i.kok, 2              ; 2 uses
  %min.iters.check1453 = icmp ult i32 %i.koj, 6
  %bound1 = icmp ugt ptr %i.knt, %i.kne
  %n.vec1455 = and i64 %i.kol, 8589934584         ; 4 uses
  %i.kom = shl nuw nsw i64 %n.vec1455, 5
  %i.kon = trunc i64 %n.vec1455 to i32
  %cmp.n1483 = icmp eq i64 %i.kol, %n.vec1455
  br label %bb.op

_ZNSt6vectorItSaItEED2Ev.exit.i:                  ; preds = %._crit_edge498.i, %bb.oj
  call void @_ZdlPvm(ptr noundef nonnull %i.kmz, i64 noundef %i.kmy) #16
  %.not.i.i.i369.i = icmp eq ptr %.sroa.0427.0.i, null
  br i1 %.not.i.i.i369.i, label %_ZNSt6vectorItSaItEED2Ev.exit370.i, label %bb.ok

bb.ok:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.koo = sub i64 %.sroa.10.0.i, %i.knb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0427.0.i, i64 noundef %i.koo) #16
  br label %_ZNSt6vectorItSaItEED2Ev.exit370.i

_ZNSt6vectorItSaItEED2Ev.exit370.i:               ; preds = %bb.ok, %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.kop = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.koq = load i32, ptr %i.kop, align 8, !tbaa !43
  %.not.i.i555 = icmp eq i32 %i.koq, 0
  br i1 %.not.i.i555, label %_ZN2cv12cpu_baselineL16medianBlur_8u_O1ERKNS_3MatERS1_i.exit, label %bb.ol

bb.ol:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit370.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv12cpu_baselineL16medianBlur_8u_O1ERKNS_3MatERS1_i.exit unwind label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.kor = landingpad { ptr, i32 }
          catch ptr null
  %i.kos = extractvalue { ptr, i32 } %i.kor, 0
  call void @__clang_call_terminate(ptr %i.kos) #17
  unreachable

bb.on:                                            ; preds = %bb.oh, %bb.og
  %i.kot = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit390.i

bb.oo:                                            ; preds = %_ZNSt6vectorItSaItEE17_S_check_init_lenEmRKS0_.exit.i361.i, %bb.oi
  %i.kou = landingpad { ptr, i32 }
          cleanup
  br label %bb.pt

bb.op:                                            ; preds = %._crit_edge498.i, %.lr.ph501.i
  %indvars.iv570.i = phi i64 [ 0, %.lr.ph501.i ], [ %indvars.iv.next571.i, %._crit_edge498.i ] ; 4 uses
  %i.kov = phi i32 [ %i.knj, %.lr.ph501.i ], [ %i.mkb, %._crit_edge498.i ]
  %i.kow = trunc nsw i64 %indvars.iv570.i to i32
  %i.kox = sub nsw i32 %i.kov, %i.kow
  %.sroa.speculated411.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated433.i, i32 %i.kox)
  %i.koy = add nsw i32 %.sroa.speculated411.i, %i.kmh ; 13 uses
  %i.koz = load ptr, ptr %i.knl, align 8, !tbaa !17
  %i.kpa = mul nsw i64 %indvars.iv570.i, %i.knz
  %i.kpb = getelementptr inbounds i8, ptr %i.koz, i64 %i.kpa ; 3 uses
  %i.kpc = load ptr, ptr %i.knm, align 8, !tbaa !17
  %i.kpd = shl i32 %i.koy, 4                      ; 4 uses
  %i.kpe = mul nsw i32 %i.kpd, %i.klo
  %i.kpf = sext i32 %i.kpe to i64
  %i.kpg = shl nsw i64 %i.kpf, 1
  call void @llvm.memset.p0.i64(ptr align 16 %i.kne, i8 0, i64 %i.kpg, i1 false)
  %i.kph = mul i32 %i.knn, %i.koy
  %i.kpi = sext i32 %i.kph to i64
  %i.kpj = shl nsw i64 %i.kpi, 1
  call void @llvm.memset.p0.i64(ptr align 16 %i.kni, i8 0, i64 %i.kpj, i1 false)
  %i.kpk = icmp sgt i32 %i.koy, 0                 ; 2 uses
  %i.kpl = sext i32 %i.koy to i64                 ; 4 uses
  %i.kpm = zext nneg i32 %i.koy to i64
  br i1 %i.kpk, label %.preheader451.i, label %.preheader452.i.split

.preheader452.i.split:                            ; preds = %._crit_edge463.split.i.loopexit, %bb.op
  %i.kpn = sub nsw i64 %indvars.iv570.i, %i.koa
  %i.kpo = mul nsw i64 %i.kpn, %i.knz
  %i.kpp = getelementptr inbounds i8, ptr %i.kpc, i64 %i.kpo
  br i1 %i.knr, label %.lr.ph497.i, label %._crit_edge498.i

.lr.ph497.i:                                      ; preds = %.preheader452.i.split
  %i.kpq = sub nsw i32 %i.koy, %i.kls             ; 2 uses
  %i.kpr = icmp slt i32 %i.kls, %i.kpq
  %i.kps = sext i32 %i.kpd to i64                 ; 3 uses
  %i.kpt = sext i32 %i.kpq to i64
  %i.kpu = mul nsw i64 %i.koi, %i.kps
  %scevgep1451 = getelementptr i8, ptr %scevgep, i64 %i.kpu
  %bound0 = icmp ult ptr %6, %scevgep1451
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.kpd, 0
  %i.kpv = or i1 %found.conflict, %stride.check
  br label %bb.os

.preheader451.i:                                  ; preds = %bb.op, %._crit_edge463.split.i.loopexit
  %indvars.iv514.i = phi i64 [ %indvars.iv.next515.i, %._crit_edge463.split.i.loopexit ], [ 0, %bb.op ] ; 4 uses
  %i.kpw = mul nuw nsw i64 %indvars.iv514.i, %i.kpm
  %invariant.gep670.i = getelementptr inbounds nuw i8, ptr %i.kpb, i64 %indvars.iv514.i ; 2 uses
  %indvars.iv514.tr.i = trunc i64 %indvars.iv514.i to i32 ; 2 uses
  %i.kpx = shl i32 %indvars.iv514.tr.i, 4         ; 2 uses
  br label %bb.oq

.lr.ph460.preheader.i:                            ; preds = %bb.oq
  %i.kpy = mul i32 %i.koy, %indvars.iv514.tr.i
  br label %.lr.ph460.i

bb.oq:                                            ; preds = %bb.oq, %.preheader451.i
  %indvars.iv.i562 = phi i64 [ 0, %.preheader451.i ], [ %indvars.iv.next.i563, %bb.oq ] ; 4 uses
  %i.kpz = add nuw nsw i64 %indvars.iv.i562, %i.kpw
  %i.kqa = shl nuw nsw i64 %i.kpz, 4
  %i.kqb = mul nuw nsw i64 %indvars.iv.i562, %i.knz
  %gep671.i = getelementptr inbounds nuw i8, ptr %invariant.gep670.i, i64 %i.kqb ; 2 uses
  %i.kqc = load i8, ptr %gep671.i, align 1, !tbaa !28
  %i.kqd = lshr i8 %i.kqc, 4
  %i.kqe = zext nneg i8 %i.kqd to i64
  %.masked.i = and i64 %i.kqa, 4294967280
  %i.kqf = getelementptr inbounds nuw [2 x i8], ptr %i.kne, i64 %.masked.i
  %i.kqg = getelementptr inbounds nuw [2 x i8], ptr %i.kqf, i64 %i.kqe ; 2 uses
  %i.kqh = load i16, ptr %i.kqg, align 2, !tbaa !46
  %i.kqi = add i16 %i.kqh, %i.knp
  store i16 %i.kqi, ptr %i.kqg, align 2, !tbaa !46
  %i.kqj = load i8, ptr %gep671.i, align 1, !tbaa !28
  %i.kqk = zext i8 %i.kqj to i32                  ; 2 uses
  %i.kql = lshr i32 %i.kqk, 4
  %i.kqm = or disjoint i32 %i.kql, %i.kpx
  %i.kqn = mul nuw nsw i32 %i.kqm, %i.koy
  %i.kqo = trunc nuw nsw i64 %indvars.iv.i562 to i32
  %i.kqp = add nuw nsw i32 %i.kqn, %i.kqo
  %i.kqq = shl nsw i32 %i.kqp, 4
  %i.kqr = and i32 %i.kqk, 15
  %i.kqs = or disjoint i32 %i.kqq, %i.kqr
  %38 = sext i32 %i.kqs to i64
  %i.kqt = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %38 ; 2 uses
  %i.kqu = load i16, ptr %i.kqt, align 2, !tbaa !46
  %i.kqv = add i16 %i.kqu, %i.knp
  store i16 %i.kqv, ptr %i.kqt, align 2, !tbaa !46
  %indvars.iv.next.i563 = add nuw nsw i64 %indvars.iv.i562, 1 ; 2 uses
  %i.kqw = icmp slt i64 %indvars.iv.next.i563, %i.kpl
  br i1 %i.kqw, label %bb.oq, label %.lr.ph460.preheader.i, !llvm.loop !114

.lr.ph460.i:                                      ; preds = %._crit_edge.i564, %.lr.ph460.preheader.i
  %storemerge356461.i = phi i32 [ %i.kry, %._crit_edge.i564 ], [ 1, %.lr.ph460.preheader.i ] ; 2 uses
  %.sroa.speculated407.i = call i32 @llvm.smin.i32(i32 %i.knq, i32 %storemerge356461.i)
  %i.kqx = sext i32 %.sroa.speculated407.i to i64
  %i.kqy = mul i64 %i.kmb, %i.kqx
  %gep675.i = getelementptr i8, ptr %invariant.gep670.i, i64 %i.kqy
  br label %bb.or

bb.or:                                            ; preds = %bb.or, %.lr.ph460.i
  %indvars.iv511.i = phi i64 [ 0, %.lr.ph460.i ], [ %indvars.iv.next512.i, %bb.or ] ; 3 uses
  %i.kqz = trunc i64 %indvars.iv511.i to i32      ; 2 uses
  %i.kra = add i32 %i.kpy, %i.kqz
  %i.krb = shl nsw i32 %i.kra, 4
  %i.krc = mul nuw nsw i64 %indvars.iv511.i, %i.knz
  %gep673.i = getelementptr inbounds nuw i8, ptr %gep675.i, i64 %i.krc ; 2 uses
  %i.krd = load i8, ptr %gep673.i, align 1, !tbaa !28
  %i.kre = lshr i8 %i.krd, 4
  %i.krf = zext nneg i8 %i.kre to i32
  %i.krg = or disjoint i32 %i.krb, %i.krf
  %i.krh = zext nneg i32 %i.krg to i64
  %i.kri = getelementptr inbounds nuw [2 x i8], ptr %i.kne, i64 %i.krh ; 2 uses
  %i.krj = load i16, ptr %i.kri, align 2, !tbaa !46
  %i.krk = add i16 %i.krj, 1
  store i16 %i.krk, ptr %i.kri, align 2, !tbaa !46
  %i.krl = load i8, ptr %gep673.i, align 1, !tbaa !28
  %i.krm = zext i8 %i.krl to i32                  ; 2 uses
  %i.krn = lshr i32 %i.krm, 4
  %i.kro = or disjoint i32 %i.krn, %i.kpx
  %i.krp = mul nuw nsw i32 %i.kro, %i.koy
  %i.krq = add nuw nsw i32 %i.krp, %i.kqz
  %i.krr = shl nsw i32 %i.krq, 4
  %i.krs = and i32 %i.krm, 15
  %i.krt = or disjoint i32 %i.krr, %i.krs
  %39 = sext i32 %i.krt to i64
  %i.kru = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %39 ; 2 uses
  %i.krv = load i16, ptr %i.kru, align 2, !tbaa !46
  %i.krw = add i16 %i.krv, 1
  store i16 %i.krw, ptr %i.kru, align 2, !tbaa !46
  %indvars.iv.next512.i = add nuw nsw i64 %indvars.iv511.i, 1 ; 2 uses
  %i.krx = icmp slt i64 %indvars.iv.next512.i, %i.kpl
  br i1 %i.krx, label %bb.or, label %._crit_edge.i564, !llvm.loop !115

._crit_edge.i564:                                 ; preds = %bb.or
  %i.kry = add nuw nsw i32 %storemerge356461.i, 1 ; 2 uses
  %exitcond.not.i565 = icmp eq i32 %i.kry, %i.kls
  br i1 %exitcond.not.i565, label %._crit_edge463.split.i.loopexit, label %.lr.ph460.i, !llvm.loop !116

._crit_edge463.split.i.loopexit:                  ; preds = %._crit_edge.i564
  %indvars.iv.next515.i = add nuw nsw i64 %indvars.iv514.i, 1 ; 2 uses
  %exitcond517.not.i = icmp eq i64 %indvars.iv.next515.i, %i.knz
  br i1 %exitcond517.not.i, label %.preheader452.i.split, label %.preheader451.i, !llvm.loop !117

bb.os:                                            ; preds = %bb.ps, %.lr.ph497.i
  %indvars.iv565.i = phi i64 [ 0, %.lr.ph497.i ], [ %indvars.iv.next566.i, %bb.ps ] ; 3 uses
  %i.krz = trunc i64 %indvars.iv565.i to i32      ; 2 uses
  %i.ksa = add i32 %i.krz, %i.kns
  %.sroa.speculated402.i = call i32 @llvm.smax.i32(i32 %i.ksa, i32 0)
  %i.ksb = zext nneg i32 %.sroa.speculated402.i to i64
  %i.ksc = mul i64 %i.kmb, %i.ksb
  %i.ksd = getelementptr inbounds nuw i8, ptr %i.kpb, i64 %i.ksc
  %i.kse = add i32 %i.kls, %i.krz
  %.sroa.speculated397.i = call i32 @llvm.smin.i32(i32 %i.kse, i32 %i.knq)
  %i.ksf = sext i32 %.sroa.speculated397.i to i64
  %i.ksg = mul i64 %i.kmb, %i.ksf
  %i.ksh = getelementptr inbounds nuw i8, ptr %i.kpb, i64 %i.ksg
  %i.ksi = mul i64 %indvars.iv565.i, %i.kmd
  %i.ksj = getelementptr i8, ptr %i.kpp, i64 %i.ksi
  br label %bb.ot

bb.ot:                                            ; preds = %._crit_edge494.i, %bb.os
  %indvars.iv560.i = phi i64 [ 0, %bb.os ], [ %indvars.iv.next561.i, %._crit_edge494.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %6, i8 0, i64 544, i1 false)
  store i16 0, ptr %.sroa.0.i, align 16
  store i16 0, ptr %.sroa.5.i, align 2
  store i16 0, ptr %.sroa.6.i, align 4
  store i16 0, ptr %.sroa.7.i, align 2
  store i16 0, ptr %.sroa.8.i, align 8
  store i16 0, ptr %.sroa.9.i, align 2
  store i16 0, ptr %.sroa.10.i, align 4
  store i16 0, ptr %.sroa.11.i, align 2
  store i16 0, ptr %.sroa.12.i, align 16
  store i16 0, ptr %.sroa.13.i, align 2
  store i16 0, ptr %.sroa.14.i, align 4
  store i16 0, ptr %.sroa.15.i, align 2
  store i16 0, ptr %.sroa.16.i, align 8
  store i16 0, ptr %.sroa.17.i, align 2
  store i16 0, ptr %.sroa.18.i, align 4
  store i16 0, ptr %.sroa.19.i, align 2
  %i.ksk = shl nuw nsw i64 %indvars.iv560.i, 4    ; 4 uses
  br i1 %i.kpk, label %.lr.ph468.i, label %.preheader447.i.preheader

.lr.ph468.i:                                      ; preds = %bb.ot
  %i.ksl = trunc i64 %indvars.iv560.i to i32
  %i.ksm = mul i32 %i.koy, %i.ksl
  %i.ksn = trunc nuw nsw i64 %i.ksk to i32        ; 2 uses
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ou, %.lr.ph468.i
  %indvars.iv518.i = phi i64 [ 0, %.lr.ph468.i ], [ %indvars.iv.next519.i, %bb.ou ] ; 3 uses
  %i.kso = trunc i64 %indvars.iv518.i to i32      ; 3 uses
  %i.ksp = add i32 %i.ksm, %i.kso
  %i.ksq = shl nsw i32 %i.ksp, 4                  ; 2 uses
  %i.ksr = mul nuw nsw i64 %indvars.iv518.i, %i.knz
  %i.kss = add nuw nsw i64 %i.ksr, %indvars.iv560.i ; 2 uses
  %i.kst = getelementptr inbounds nuw i8, ptr %i.ksd, i64 %i.kss ; 2 uses
  %i.ksu = load i8, ptr %i.kst, align 1, !tbaa !28
  %i.ksv = lshr i8 %i.ksu, 4
  %i.ksw = zext nneg i8 %i.ksv to i32
  %i.ksx = or disjoint i32 %i.ksq, %i.ksw
  %i.ksy = zext nneg i32 %i.ksx to i64
  %i.ksz = getelementptr inbounds nuw [2 x i8], ptr %i.kne, i64 %i.ksy ; 2 uses
  %i.kta = load i16, ptr %i.ksz, align 2, !tbaa !46
  %i.ktb = add i16 %i.kta, -1
  store i16 %i.ktb, ptr %i.ksz, align 2, !tbaa !46
  %i.ktc = load i8, ptr %i.kst, align 1, !tbaa !28
  %i.ktd = zext i8 %i.ktc to i32                  ; 2 uses
  %i.kte = lshr i32 %i.ktd, 4
  %i.ktf = or disjoint i32 %i.kte, %i.ksn
  %i.ktg = mul nuw nsw i32 %i.ktf, %i.koy
  %i.kth = add nuw nsw i32 %i.ktg, %i.kso
  %i.kti = shl nsw i32 %i.kth, 4
  %i.ktj = and i32 %i.ktd, 15
  %i.ktk = or disjoint i32 %i.kti, %i.ktj
  %40 = sext i32 %i.ktk to i64
  %i.ktl = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %40 ; 2 uses
  %i.ktm = load i16, ptr %i.ktl, align 2, !tbaa !46
  %i.ktn = add i16 %i.ktm, -1
  store i16 %i.ktn, ptr %i.ktl, align 2, !tbaa !46
  %i.kto = getelementptr inbounds nuw i8, ptr %i.ksh, i64 %i.kss ; 2 uses
  %i.ktp = load i8, ptr %i.kto, align 1, !tbaa !28
  %i.ktq = lshr i8 %i.ktp, 4
  %i.ktr = zext nneg i8 %i.ktq to i32
  %i.kts = or disjoint i32 %i.ksq, %i.ktr
  %i.ktt = zext nneg i32 %i.kts to i64
  %i.ktu = getelementptr inbounds nuw [2 x i8], ptr %i.kne, i64 %i.ktt ; 2 uses
  %i.ktv = load i16, ptr %i.ktu, align 2, !tbaa !46
  %i.ktw = add i16 %i.ktv, 1
  store i16 %i.ktw, ptr %i.ktu, align 2, !tbaa !46
  %i.ktx = load i8, ptr %i.kto, align 1, !tbaa !28
  %i.kty = zext i8 %i.ktx to i32                  ; 2 uses
  %i.ktz = lshr i32 %i.kty, 4
  %i.kua = or disjoint i32 %i.ktz, %i.ksn
  %i.kub = mul nuw nsw i32 %i.kua, %i.koy
  %i.kuc = add nuw nsw i32 %i.kub, %i.kso
  %i.kud = shl nsw i32 %i.kuc, 4
  %i.kue = and i32 %i.kty, 15
  %i.kuf = or disjoint i32 %i.kud, %i.kue
  %41 = sext i32 %i.kuf to i64
  %i.kug = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %41 ; 2 uses
  %i.kuh = load i16, ptr %i.kug, align 2, !tbaa !46
  %i.kui = add i16 %i.kuh, 1
  store i16 %i.kui, ptr %i.kug, align 2, !tbaa !46
  %indvars.iv.next519.i = add nuw nsw i64 %indvars.iv518.i, 1 ; 2 uses
  %i.kuj = icmp slt i64 %indvars.iv.next519.i, %i.kpl
  br i1 %i.kuj, label %bb.ou, label %.preheader447.i.preheader, !llvm.loop !118

.preheader447.i.preheader:                        ; preds = %bb.ou, %bb.ot
  br label %.preheader447.i

.preheader447.i:                                  ; preds = %.preheader447.i.preheader, %.preheader447.i
  %indvars.iv525.i = phi i64 [ %indvars.iv.next526.i, %.preheader447.i ], [ 0, %.preheader447.i.preheader ] ; 3 uses
  %i.kuk = getelementptr inbounds nuw [32 x i8], ptr %i.knt, i64 %indvars.iv525.i ; 17 uses
  %i.kul = add nuw nsw i64 %indvars.iv525.i, %i.ksk
  %i.kum = mul nsw i64 %i.kul, %i.kps
  %i.kun = load i16, ptr %i.kuk, align 16, !tbaa !46
  %i.kuo = getelementptr inbounds [2 x i8], ptr %i.kni, i64 %i.kum ; 16 uses
  %i.kup = load i16, ptr %i.kuo, align 16, !tbaa !46
  %i.kuq = mul i16 %i.kup, %i.knv
  %i.kur = add i16 %i.kuq, %i.kun
  store i16 %i.kur, ptr %i.kuk, align 16, !tbaa !46
  %i.kus = getelementptr inbounds nuw i8, ptr %i.kuk, i64 2 ; 2 uses
  %i.kut = load i16, ptr %i.kus, align 2, !tbaa !46
  %i.kuu = getelementptr i8, ptr %i.kuo, i64 2
  %i.kuv = load i16, ptr %i.kuu, align 2, !tbaa !46
  %i.kuw = mul i16 %i.kuv, %i.knv
  %i.kux = add i16 %i.kuw, %i.kut
  store i16 %i.kux, ptr %i.kus, align 2, !tbaa !46
  %i.kuy = getelementptr inbounds nuw i8, ptr %i.kuk, i64 4 ; 2 uses
  %i.kuz = load i16, ptr %i.kuy, align 4, !tbaa !46
  %i.kva = getelementptr i8, ptr %i.kuo, i64 4
  %i.kvb = load i16, ptr %i.kva, align 4, !tbaa !46
  %i.kvc = mul i16 %i.kvb, %i.knv
  %i.kvd = add i16 %i.kvc, %i.kuz
  store i16 %i.kvd, ptr %i.kuy, align 4, !tbaa !46
  %i.kve = getelementptr inbounds nuw i8, ptr %i.kuk, i64 6 ; 2 uses
  %i.kvf = load i16, ptr %i.kve, align 2, !tbaa !46
  %i.kvg = getelementptr i8, ptr %i.kuo, i64 6
  %i.kvh = load i16, ptr %i.kvg, align 2, !tbaa !46
  %i.kvi = mul i16 %i.kvh, %i.knv
  %i.kvj = add i16 %i.kvi, %i.kvf
  store i16 %i.kvj, ptr %i.kve, align 2, !tbaa !46
  %i.kvk = getelementptr inbounds nuw i8, ptr %i.kuk, i64 8 ; 2 uses
  %i.kvl = load i16, ptr %i.kvk, align 8, !tbaa !46
  %i.kvm = getelementptr i8, ptr %i.kuo, i64 8
  %i.kvn = load i16, ptr %i.kvm, align 8, !tbaa !46
  %i.kvo = mul i16 %i.kvn, %i.knv
  %i.kvp = add i16 %i.kvo, %i.kvl
  store i16 %i.kvp, ptr %i.kvk, align 8, !tbaa !46
  %i.kvq = getelementptr inbounds nuw i8, ptr %i.kuk, i64 10 ; 2 uses
  %i.kvr = load i16, ptr %i.kvq, align 2, !tbaa !46
  %i.kvs = getelementptr i8, ptr %i.kuo, i64 10
  %i.kvt = load i16, ptr %i.kvs, align 2, !tbaa !46
  %i.kvu = mul i16 %i.kvt, %i.knv
  %i.kvv = add i16 %i.kvu, %i.kvr
  store i16 %i.kvv, ptr %i.kvq, align 2, !tbaa !46
  %i.kvw = getelementptr inbounds nuw i8, ptr %i.kuk, i64 12 ; 2 uses
  %i.kvx = load i16, ptr %i.kvw, align 4, !tbaa !46
  %i.kvy = getelementptr i8, ptr %i.kuo, i64 12
  %i.kvz = load i16, ptr %i.kvy, align 4, !tbaa !46
  %i.kwa = mul i16 %i.kvz, %i.knv
  %i.kwb = add i16 %i.kwa, %i.kvx
  store i16 %i.kwb, ptr %i.kvw, align 4, !tbaa !46
  %i.kwc = getelementptr inbounds nuw i8, ptr %i.kuk, i64 14 ; 2 uses
  %i.kwd = load i16, ptr %i.kwc, align 2, !tbaa !46
  %i.kwe = getelementptr i8, ptr %i.kuo, i64 14
  %i.kwf = load i16, ptr %i.kwe, align 2, !tbaa !46
  %i.kwg = mul i16 %i.kwf, %i.knv
  %i.kwh = add i16 %i.kwg, %i.kwd
  store i16 %i.kwh, ptr %i.kwc, align 2, !tbaa !46
  %i.kwi = getelementptr inbounds nuw i8, ptr %i.kuk, i64 16 ; 2 uses
  %i.kwj = load i16, ptr %i.kwi, align 16, !tbaa !46
  %i.kwk = getelementptr i8, ptr %i.kuo, i64 16
  %i.kwl = load i16, ptr %i.kwk, align 16, !tbaa !46
  %i.kwm = mul i16 %i.kwl, %i.knv
  %i.kwn = add i16 %i.kwm, %i.kwj
  store i16 %i.kwn, ptr %i.kwi, align 16, !tbaa !46
  %i.kwo = getelementptr inbounds nuw i8, ptr %i.kuk, i64 18 ; 2 uses
  %i.kwp = load i16, ptr %i.kwo, align 2, !tbaa !46
  %i.kwq = getelementptr i8, ptr %i.kuo, i64 18
  %i.kwr = load i16, ptr %i.kwq, align 2, !tbaa !46
  %i.kws = mul i16 %i.kwr, %i.knv
  %i.kwt = add i16 %i.kws, %i.kwp
  store i16 %i.kwt, ptr %i.kwo, align 2, !tbaa !46
  %i.kwu = getelementptr inbounds nuw i8, ptr %i.kuk, i64 20 ; 2 uses
  %i.kwv = load i16, ptr %i.kwu, align 4, !tbaa !46
  %i.kww = getelementptr i8, ptr %i.kuo, i64 20
  %i.kwx = load i16, ptr %i.kww, align 4, !tbaa !46
  %i.kwy = mul i16 %i.kwx, %i.knv
  %i.kwz = add i16 %i.kwy, %i.kwv
  store i16 %i.kwz, ptr %i.kwu, align 4, !tbaa !46
  %i.kxa = getelementptr inbounds nuw i8, ptr %i.kuk, i64 22 ; 2 uses
  %i.kxb = load i16, ptr %i.kxa, align 2, !tbaa !46
  %i.kxc = getelementptr i8, ptr %i.kuo, i64 22
  %i.kxd = load i16, ptr %i.kxc, align 2, !tbaa !46
  %i.kxe = mul i16 %i.kxd, %i.knv
  %i.kxf = add i16 %i.kxe, %i.kxb
  store i16 %i.kxf, ptr %i.kxa, align 2, !tbaa !46
  %i.kxg = getelementptr inbounds nuw i8, ptr %i.kuk, i64 24 ; 2 uses
  %i.kxh = load i16, ptr %i.kxg, align 8, !tbaa !46
  %i.kxi = getelementptr i8, ptr %i.kuo, i64 24
  %i.kxj = load i16, ptr %i.kxi, align 8, !tbaa !46
  %i.kxk = mul i16 %i.kxj, %i.knv
  %i.kxl = add i16 %i.kxk, %i.kxh
  store i16 %i.kxl, ptr %i.kxg, align 8, !tbaa !46
  %i.kxm = getelementptr inbounds nuw i8, ptr %i.kuk, i64 26 ; 2 uses
  %i.kxn = load i16, ptr %i.kxm, align 2, !tbaa !46
  %i.kxo = getelementptr i8, ptr %i.kuo, i64 26
  %i.kxp = load i16, ptr %i.kxo, align 2, !tbaa !46
  %i.kxq = mul i16 %i.kxp, %i.knv
  %i.kxr = add i16 %i.kxq, %i.kxn
  store i16 %i.kxr, ptr %i.kxm, align 2, !tbaa !46
  %i.kxs = getelementptr inbounds nuw i8, ptr %i.kuk, i64 28 ; 2 uses
  %i.kxt = load i16, ptr %i.kxs, align 4, !tbaa !46
  %i.kxu = getelementptr i8, ptr %i.kuo, i64 28
  %i.kxv = load i16, ptr %i.kxu, align 4, !tbaa !46
  %i.kxw = mul i16 %i.kxv, %i.knv
  %i.kxx = add i16 %i.kxw, %i.kxt
  store i16 %i.kxx, ptr %i.kxs, align 4, !tbaa !46
  %i.kxy = getelementptr inbounds nuw i8, ptr %i.kuk, i64 30 ; 2 uses
  %i.kxz = load i16, ptr %i.kxy, align 2, !tbaa !46
  %i.kya = getelementptr i8, ptr %i.kuo, i64 30
  %i.kyb = load i16, ptr %i.kya, align 2, !tbaa !46
  %i.kyc = mul i16 %i.kyb, %i.knv
  %i.kyd = add i16 %i.kyc, %i.kxz
  store i16 %i.kyd, ptr %i.kxy, align 2, !tbaa !46
  %indvars.iv.next526.i = add nuw nsw i64 %indvars.iv525.i, 1 ; 2 uses
  %exitcond528.not.i = icmp eq i64 %indvars.iv.next526.i, 16
  br i1 %exitcond528.not.i, label %.preheader446.preheader.i, label %.preheader447.i, !llvm.loop !119

.preheader446.preheader.i:                        ; preds = %.preheader447.i
  %i.kye = mul nsw i64 %indvars.iv560.i, %i.kps
  %i.kyf = getelementptr inbounds [2 x i8], ptr %i.kne, i64 %i.kye ; 10 uses
  %i.kyg = load <16 x i16>, ptr %6, align 16, !tbaa !46 ; 17 uses
  %brmerge1682 = select i1 %min.iters.check1453, i1 true, i1 %i.kpv
  br i1 %brmerge1682, label %.preheader446.i.preheader, label %vector.ph1454

vector.ph1454:                                    ; preds = %.preheader446.preheader.i
  %i.kyh = getelementptr i8, ptr %i.kyf, i64 %i.kom
  %i.kyi = shufflevector <16 x i16> %i.kyg, <16 x i16> poison, <8 x i32> <i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyj = shufflevector <8 x i16> %i.kyi, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyk = shufflevector <16 x i16> %i.kyg, <16 x i16> poison, <8 x i32> <i32 14, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyl = shufflevector <8 x i16> %i.kyk, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kym = shufflevector <16 x i16> %i.kyg, <16 x i16> poison, <8 x i32> <i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyn = shufflevector <8 x i16> %i.kym, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyo = shufflevector <16 x i16> %i.kyg, <16 x i16> poison, <8 x i32> <i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyp = shufflevector <8 x i16> %i.kyo, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyq = shufflevector <16 x i16> %i.kyg, <16 x i16> poison, <8 x i32> <i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyr = shufflevector <8 x i16> %i.kyq, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kys = shufflevector <16 x i16> %i.kyg, <16 x i16> poison, <8 x i32> <i32 10, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyt = shufflevector <8 x i16> %i.kys, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyu = shufflevector <16 x i16> %i.kyg, <16 x i16> poison, <8 x i32> <i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyv = shufflevector <8 x i16> %i.kyu, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyw = shufflevector <16 x i16> %i.kyg, <16 x i16> poison, <8 x i32> <i32 8, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kyx = shufflevector <8 x i16> %i.kyw, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kyy = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kyg, <8 x i32> <i32 23, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kyz = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kyg, <8 x i32> <i32 22, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kza = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kyg, <8 x i32> <i32 21, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kzb = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kyg, <8 x i32> <i32 20, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kzc = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kyg, <8 x i32> <i32 19, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kzd = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kyg, <8 x i32> <i32 18, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kze = shufflevector <16 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.kyg, <8 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.kzf = shufflevector <16 x i16> %i.kyg, <16 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kzg = shufflevector <8 x i16> %i.kzf, <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.body1456, %vector.ph1454
  %index1457 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1481, %vector.body1456 ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %i.kyj, %vector.ph1454 ], [ %i.loq, %vector.body1456 ]
  %vec.phi1458 = phi <8 x i16> [ %i.kyl, %vector.ph1454 ], [ %i.lnr, %vector.body1456 ]
  %vec.phi1459 = phi <8 x i16> [ %i.kyn, %vector.ph1454 ], [ %i.lms, %vector.body1456 ]
  %vec.phi1460 = phi <8 x i16> [ %i.kyp, %vector.ph1454 ], [ %i.llt, %vector.body1456 ]
  %vec.phi1461 = phi <8 x i16> [ %i.kyr, %vector.ph1454 ], [ %i.lku, %vector.body1456 ]
  %vec.phi1462 = phi <8 x i16> [ %i.kyt, %vector.ph1454 ], [ %i.ljv, %vector.body1456 ]
  %vec.phi1463 = phi <8 x i16> [ %i.kyv, %vector.ph1454 ], [ %i.liw, %vector.body1456 ]
  %vec.phi1464 = phi <8 x i16> [ %i.kyx, %vector.ph1454 ], [ %i.lhx, %vector.body1456 ]
  %vec.phi1465 = phi <8 x i16> [ %i.kyy, %vector.ph1454 ], [ %i.lgy, %vector.body1456 ]
  %vec.phi1466 = phi <8 x i16> [ %i.kyz, %vector.ph1454 ], [ %i.lfz, %vector.body1456 ]
  %vec.phi1467 = phi <8 x i16> [ %i.kza, %vector.ph1454 ], [ %i.lfa, %vector.body1456 ]
  %vec.phi1468 = phi <8 x i16> [ %i.kzb, %vector.ph1454 ], [ %i.leb, %vector.body1456 ]
  %vec.phi1469 = phi <8 x i16> [ %i.kzc, %vector.ph1454 ], [ %i.ldc, %vector.body1456 ]
  %vec.phi1470 = phi <8 x i16> [ %i.kzd, %vector.ph1454 ], [ %i.lcd, %vector.body1456 ]
  %vec.phi1471 = phi <8 x i16> [ %i.kze, %vector.ph1454 ], [ %i.lbe, %vector.body1456 ]
  %vec.phi1472 = phi <8 x i16> [ %i.kzg, %vector.ph1454 ], [ %i.laf, %vector.body1456 ]
  %i.kzh = shl i64 %index1457, 5                  ; 8 uses
  %next.gep1473 = getelementptr i8, ptr %i.kyf, i64 %i.kzh ; 16 uses
  %i.kzi = getelementptr i8, ptr %i.kyf, i64 %i.kzh ; 16 uses
  %next.gep1474 = getelementptr i8, ptr %i.kzi, i64 32
  %i.kzj = getelementptr i8, ptr %i.kyf, i64 %i.kzh ; 16 uses
  %next.gep1475 = getelementptr i8, ptr %i.kzj, i64 64
  %i.kzk = getelementptr i8, ptr %i.kyf, i64 %i.kzh ; 16 uses
  %next.gep1476 = getelementptr i8, ptr %i.kzk, i64 96
  %i.kzl = getelementptr i8, ptr %i.kyf, i64 %i.kzh ; 16 uses
  %next.gep1477 = getelementptr i8, ptr %i.kzl, i64 128
  %i.kzm = getelementptr i8, ptr %i.kyf, i64 %i.kzh ; 16 uses
  %next.gep1478 = getelementptr i8, ptr %i.kzm, i64 160
  %i.kzn = getelementptr i8, ptr %i.kyf, i64 %i.kzh ; 16 uses
  %next.gep1479 = getelementptr i8, ptr %i.kzn, i64 192
  %i.kzo = getelementptr i8, ptr %i.kyf, i64 %i.kzh ; 16 uses
  %next.gep1480 = getelementptr i8, ptr %i.kzo, i64 224
end_hunk_0

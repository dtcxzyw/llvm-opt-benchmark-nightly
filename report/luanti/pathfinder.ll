inline.NumInlined: 729
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN10Pathfinder19updateCostHeuristicEN4core8vector3dIsEES2_:bb.a
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 89 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !182, !range !115, !noundef !116
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %_ZNK4core8vector3dIsEeqERKS1_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.03.0.copyload = load i48, ptr %6, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i148 = trunc i48 %.sroa.03.0.copyload to i16 ; 2 uses
  %.sroa.57.0.extract.shift.i149 = lshr i48 %.sroa.03.0.copyload, 32
  %.sroa.57.0.extract.trunc.i150 = trunc nuw i48 %.sroa.57.0.extract.shift.i149 to i16 ; 2 uses
  %i.fc = load i16, ptr %i.x, align 8, !tbaa !215 ; 2 uses
  %.sroa.0.0.extract.trunc..i151 = call i16 @llvm.smin.i16(i16 %i.fc, i16 %.sroa.0.0.extract.trunc.i148)
  %i.fd = call i16 @llvm.smax.i16(i16 %i.fc, i16 %.sroa.0.0.extract.trunc.i148)
  %i.fe = load i16, ptr %i.aa, align 4, !tbaa !216 ; 2 uses
  %i.ff = call i16 @llvm.smin.i16(i16 %i.fe, i16 %.sroa.57.0.extract.trunc.i150)
  %i.fg = call i16 @llvm.smax.i16(i16 %i.fe, i16 %.sroa.57.0.extract.trunc.i150)
  %i.fh = sext i16 %i.ff to i32
  %i.fi = sext i16 %i.fd to i32
  %i.fj = sext i16 %.sroa.0.0.extract.trunc..i151 to i32
  %i.fk = sext i16 %i.fg to i32
  %.neg = mul i32 %.sroa.21.0, -65536
  %i.fl = and i48 %.sroa.025.0.copyload, -4294967296
  %.sroa.4.0.insert.shift.i = zext i32 %.neg to i48
  %.sroa.4.0.insert.insert.i = sub i48 %.sroa.4.0.insert.shift.i, %i.fl
  %i.fm = sub i48 0, %.sroa.025.0.copyload
  %.sroa.01.0.insert.ext.i = and i48 %i.fm, 65535
  %.sroa.01.0.insert.insert.i = or disjoint i48 %.sroa.4.0.insert.insert.i, %.sroa.01.0.insert.ext.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i48 %.sroa.01.0.insert.insert.i, ptr %i.fn, align 4
  %i.fo = add nsw i32 %.sroa.12160.0, %i.dg       ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !162
  %i.fq = add i32 %i.fo, %i.fi
  %i.fr = add nsw i32 %i.fj, %i.fh
  %i.fs = sub i32 %i.fq, %i.fr
  %i.ft = add i32 %i.fs, %i.fk
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !180
  store i8 1, ptr %i.ez, align 1, !tbaa !182
  invoke void @_ZNSt14priority_queueIN4core8vector3dIsEESt6vectorIS2_SaIS2_EE26PathfinderCompareHeuristicE4pushERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(6) %6)
          to label %_ZNK4core8vector3dIsEeqERKS1_.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ab

_ZNK4core8vector3dIsEeqERKS1_.exit:               ; preds = %bb.y, %bb.x, %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit147
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.085.add = add nuw nsw i64 %.085.idx224, 6     ; 2 uses
  %.not = icmp eq i64 %.085.add, 24
  br i1 %.not, label %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit, label %bb.n

_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit, %bb.g, %bb.f, %bb.e, %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit131
  %i.fw = load ptr, ptr %3, align 8, !tbaa !208   ; 3 uses
  %i.fx = load ptr, ptr %i.a, align 8, !tbaa !208 ; 2 uses
  %.not227 = icmp eq ptr %i.fw, %i.fx
  br i1 %.not227, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit, %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit.thread201
  %i.fy = phi i1 [ true, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit.thread201 ], [ false, %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit ], [ false, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit ]
  %i.fz = phi ptr [ %.pr, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit.thread201 ], [ %i.am, %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit ], [ %i.fw, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.not.i.i.i.i152 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i152, label %_ZNSt14priority_queueIN4core8vector3dIsEESt6vectorIS2_SaIS2_EE26PathfinderCompareHeuristicED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.ga = load ptr, ptr %i.b, align 8, !tbaa !168
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gd) #24
  br label %_ZNSt14priority_queueIN4core8vector3dIsEESt6vectorIS2_SaIS2_EE26PathfinderCompareHeuristicED2Ev.exit

_ZNSt14priority_queueIN4core8vector3dIsEESt6vectorIS2_SaIS2_EE26PathfinderCompareHeuristicED2Ev.exit: ; preds = %.loopexit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i1 %i.fy

bb.ab:                                            ; preds = %bb.h, %bb.v, %bb.z, %bb.j, %bb.l, %bb.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fv, %bb.z ], [ %i.bz, %bb.h ], [ %i.ca, %bb.i ], [ %i.cb, %bb.j ], [ %i.ef, %bb.v ], [ %i.ck, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ge = load ptr, ptr %3, align 8, !tbaa !167   ; 3 uses
  %.not.i.i.i.i154 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i154, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit129, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gf = load ptr, ptr %i.b, align 8, !tbaa !168
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.ge to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gi) #24
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit129

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit129: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN10Pathfinder9buildPathERSt6vectorIN4core8vector3dIsEESaIS3_EES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i48 %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i48 %2 to i16
  %.sroa.6.0.extract.shift = lshr i48 %2, 16
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i16
  %.sroa.8.0.extract.shift = lshr i48 %2, 32
  %.sroa.8.0.extract.trunc = trunc nuw i48 %.sroa.8.0.extract.shift to i16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.j

bb.b:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit21
  %.not.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i, label %_ZTW13warningstream.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.b, %bb.c
  %i.h = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117, !nonnull !116, !align !130 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !131
  %.v.i = select i1 %i.l, i64 976, i64 984
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str, ptr %i.d, align 8, !tbaa !132
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.17, ptr %i.c, align 8, !tbaa !132
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !133  ; 5 uses
  %.not.i15 = icmp eq ptr %i.p, null
  br i1 %.not.i15, label %_ZN11StreamProxylsEPFRSoS0_E.exit28, label %bb.d

bb.d:                                             ; preds = %_ZTW13warningstream.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !29
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !134
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !133 ; 2 uses
  %.pre57 = load ptr, ptr %.pre.i, align 8, !tbaa !29
  %.phi.trans.insert58 = getelementptr i8, ptr %.pre57, i64 -24
  %.pre59 = load i64, ptr %.phi.trans.insert58, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi i64 [ %.pre59, %bb.e ], [ %i.s, %bb.d ]
  %i.y = phi ptr [ %.pre.i, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !141 ; 6 uses
  %.not.i.i.i29 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i29, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !147
  %.not.i1.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 67
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !152
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ab)
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(570) %i.ab, i8 noundef signext 10), !inline_history !210
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i8 [ %i.af, %bb.h ], [ %i.aj, %bb.i ]
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i8 noundef signext %.0.i.i.i)
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit28.sink.split

bb.j:                                             ; preds = %bb.a, %_ZN11StreamProxylsEPFRSoS0_E.exit21
  %.sroa.8.05369 = phi i16 [ %.sroa.8.0.extract.trunc, %bb.a ], [ %i.db, %_ZN11StreamProxylsEPFRSoS0_E.exit21 ] ; 4 uses
  %.sroa.6.05468 = phi i16 [ %.sroa.6.0.extract.trunc, %bb.a ], [ %i.cy, %_ZN11StreamProxylsEPFRSoS0_E.exit21 ] ; 4 uses
  %.sroa.0.05567 = phi i16 [ %.sroa.0.0.extract.trunc, %bb.a ], [ %i.cv, %_ZN11StreamProxylsEPFRSoS0_E.exit21 ] ; 4 uses
  %3 = phi i32 [ 2, %bb.a ], [ %i.dc, %_ZN11StreamProxylsEPFRSoS0_E.exit21 ]
  %.sroa.8.0.insert.ext = zext i16 %.sroa.8.05369 to i48
  %.sroa.8.0.insert.shift = shl nuw i48 %.sroa.8.0.insert.ext, 32
  %.sroa.6.0.insert.ext = zext i16 %.sroa.6.05468 to i48
  %.sroa.6.0.insert.shift = shl nuw nsw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.6.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.shift, %.sroa.8.0.insert.shift
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.05567 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.insert, %.sroa.0.0.insert.ext
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !28  ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef nonnull align 4 dereferenceable(92) ptr %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i48 %.sroa.0.0.insert.insert), !inline_history !157 ; 6 uses
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !158, !range !115, !noundef !116
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i16 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i16, label %_ZTW13warningstream.exit17, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit17

_ZTW13warningstream.exit17:                       ; preds = %bb.k, %bb.l
  %i.ar = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !117, !nonnull !116, !align !130 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !29
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.as), !inline_history !131
  %.v.i18 = select i1 %i.av, i64 976, i64 984
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.v.i18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str, ptr %i.b, align 8, !tbaa !132
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.18, ptr %i.a, align 8, !tbaa !132
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !133 ; 5 uses
  %.not.i19 = icmp eq ptr %i.az, null
  br i1 %.not.i19, label %_ZN11StreamProxylsEPFRSoS0_E.exit28, label %bb.m

bb.m:                                             ; preds = %_ZTW13warningstream.exit17
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !134
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
  %.pre.i20 = load ptr, ptr %i.ay, align 8, !tbaa !133 ; 2 uses
  %.pre = load ptr, ptr %.pre.i20, align 8, !tbaa !29
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre56 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bh = phi i64 [ %.pre56, %bb.n ], [ %i.bc, %bb.m ]
  %i.bi = phi ptr [ %.pre.i20, %bb.n ], [ %i.az, %bb.m ] ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !141 ; 6 uses
  %.not.i.i.i30 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i30, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31

bb.p:                                             ; preds = %bb.o
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31: ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !147
  %.not.i1.i.i32 = icmp eq i8 %i.bn, 0
  br i1 %.not.i1.i.i32, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 67
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !152
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl)
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef signext i8 %i.bs(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 10), !inline_history !210
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34: ; preds = %bb.q, %bb.r
  %.0.i.i.i33 = phi i8 [ %i.bp, %bb.q ], [ %i.bt, %bb.r ]
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i8 noundef signext %.0.i.i.i33)
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit28.sink.split

bb.s:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ao, i64 90
  store i8 1, ptr %i.bv, align 2, !tbaa !183
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !164 ; 8 uses
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !168
  %.not.i22 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i22, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i16 %.sroa.0.05567, ptr %i.bw, align 2, !tbaa !35
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  store i16 %.sroa.6.05468, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !35
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i16 %.sroa.8.05369, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  store ptr %i.by, ptr %i.f, align 8, !tbaa !164
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

bb.u:                                             ; preds = %bb.s
  %i.bz = load ptr, ptr %1, align 8, !tbaa !167   ; 5 uses
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 4 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775806
  br i1 %i.cd, label %bb.v, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #25
  unreachable

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.ce = sdiv exact i64 %i.cc, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 1537228672809129301)
  %i.ci = select i1 %i.cg, i64 1537228672809129301, i64 %i.ch ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ci, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cj = mul nuw nsw i64 %i.ci, 6
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #23 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc ; 3 uses
  store i16 %.sroa.0.05567, ptr %i.cl, align 2, !tbaa !35
  %.sroa.6.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i16 %.sroa.6.05468, ptr %.sroa.6.0..sroa_idx42, align 2, !tbaa !35
  %.sroa.8.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i16 %.sroa.8.05369, ptr %.sroa.8.0..sroa_idx44, align 2, !tbaa !35
  %.not10.i.i.i.i.i = icmp eq ptr %i.bz, %i.bw
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i ], [ %i.ck, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i ], [ %i.bz, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !34, !alias.scope !221
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 6 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cm, %i.bw
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !173

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ck, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cn, %.lr.ph.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 6
  %.not.i23.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cc) #24
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.ck, ptr %1, align 8, !tbaa !167
  store ptr %i.co, ptr %i.f, align 8, !tbaa !164
  %i.cp = getelementptr inbounds nuw [6 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.cp, ptr %i.g, align 8, !tbaa !168
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.t, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !161, !range !115, !noundef !116
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %_ZN11StreamProxylsEPFRSoS0_E.exit28, label %_ZN11StreamProxylsEPFRSoS0_E.exit21

_ZN11StreamProxylsEPFRSoS0_E.exit21:              ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.cu = load i16, ptr %i.ct, align 4, !tbaa !154
  %i.cv = add i16 %i.cu, %.sroa.0.05567
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ao, i64 14
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !155
  %i.cy = add i16 %i.cx, %.sroa.6.05468
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !156
  %i.db = add i16 %i.da, %.sroa.8.05369
  %i.dc = add nuw nsw i32 %3, 1                   ; 2 uses
  %exitcond = icmp eq i32 %i.dc, 701
  br i1 %exitcond, label %bb.b, label %bb.j

_ZN11StreamProxylsEPFRSoS0_E.exit28.sink.split:   ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34
  %.sink = phi ptr [ %i.bu, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit34 ], [ %i.ak, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit28

_ZN11StreamProxylsEPFRSoS0_E.exit28:              ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit, %_ZN11StreamProxylsEPFRSoS0_E.exit28.sink.split, %_ZTW13warningstream.exit17, %_ZTW13warningstream.exit
  %.3 = phi i1 [ false, %_ZTW13warningstream.exit17 ], [ false, %_ZTW13warningstream.exit ], [ false, %_ZN11StreamProxylsEPFRSoS0_E.exit28.sink.split ], [ true, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.b, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !34
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store ptr %i.f, ptr %i.a, align 8, !tbaa !164
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !167    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775806
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #25
  unreachable

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 6                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1537228672809129301)
  %i.p = select i1 %i.n, i64 1537228672809129301, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = mul nuw nsw i64 %i.p, 6
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #23 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.s, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !34
  %.not10.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i, i64 6, i1 false), !tbaa.struct !34, !alias.scope !225
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 6 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !173

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.u, %.lr.ph.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 6
  %.not.i23.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #24
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !167
  store ptr %i.v, ptr %i.a, align 8, !tbaa !164
  %i.w = getelementptr inbounds nuw [6 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !168
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i48 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i48 %1 to i16
  %i.a = sext i16 %.sroa.0.0.extract.trunc to i32
  %i.b = load i32, ptr %0, align 8, !tbaa !43
  %i.c = icmp sgt i32 %i.b, %i.a
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0.extract.shift = lshr i48 %1, 16      ; 2 uses
  %.sroa.3.0.extract.trunc = trunc i48 %.sroa.3.0.extract.shift to i16
  %i.d = sext i16 %.sroa.3.0.extract.trunc to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  %i.g = icmp sgt i32 %i.f, %i.d
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = ashr i48 %1, 32
  %i.i = trunc nsw i48 %i.h to i32                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !45
  %i.l = icmp sgt i32 %i.k, %i.i
  %i.m = or i48 %.sroa.3.0.extract.shift, %1
  %i.n = and i48 %i.m, 32768
  %i.o = icmp eq i48 %i.n, 0
  %or.cond7 = and i1 %i.o, %i.l
  %i.p = icmp sgt i32 %i.i, -1
  %or.cond11 = and i1 %i.p, %or.cond7
  br i1 %or.cond11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i48 @_ZN10Pathfinder6invertEN4core8vector3dIsEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, i48 %1) local_unnamed_addr #8 align 2 {
bb.a:
  %.sroa.4.0.extract.shift = and i48 %1, 4294901760
  %i.a = and i48 %1, -4294967296
  %.sroa.4.0.insert.ext = sub nsw i48 0, %.sroa.4.0.extract.shift
  %.sroa.4.0.insert.shift = and i48 %.sroa.4.0.insert.ext, 4294901760
  %.sroa.4.0.insert.insert = sub i48 %.sroa.4.0.insert.shift, %i.a
  %i.b = sub i48 0, %1
  %.sroa.01.0.insert.ext = and i48 %i.b, 65535
  %.sroa.01.0.insert.insert = or disjoint i48 %.sroa.4.0.insert.insert, %.sroa.01.0.insert.ext
  ret i48 %.sroa.01.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -131070, 131071) i32 @_ZN10Pathfinder18getXZManhattanDistEN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i48 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i48 %1 to i16  ; 2 uses
  %.sroa.57.0.extract.shift = lshr i48 %1, 32
  %.sroa.57.0.extract.trunc = trunc nuw i48 %.sroa.57.0.extract.shift to i16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i16, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  %.sroa.0.0.extract.trunc. = tail call i16 @llvm.smin.i16(i16 %i.b, i16 %.sroa.0.0.extract.trunc)
  %i.c = tail call i16 @llvm.smax.i16(i16 %i.b, i16 %.sroa.0.0.extract.trunc)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i16, ptr %i.d, align 4, !tbaa !216  ; 2 uses
  %i.f = tail call i16 @llvm.smin.i16(i16 %i.e, i16 %.sroa.57.0.extract.trunc)
  %i.g = tail call i16 @llvm.smax.i16(i16 %i.e, i16 %.sroa.57.0.extract.trunc)
  %i.h = sext i16 %i.f to i32
  %i.i = sext i16 %i.c to i32
  %i.j = sext i16 %.sroa.0.0.extract.trunc. to i32
  %i.k = sext i16 %i.g to i32
  %i.l = add nsw i32 %i.j, %i.h
  %i.m = sub nsw i32 %i.i, %i.l
  %i.n = add nsw i32 %i.m, %i.k
  ret i32 %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt14priority_queueIN4core8vector3dIsEESt6vectorIS2_SaIS2_EE26PathfinderCompareHeuristicE4pushERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.b, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !34
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !164
  %.pre = load ptr, ptr %0, align 8, !tbaa !208
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !167    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775806
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #25
  unreachable

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 6                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1537228672809129301)
  %i.p = select i1 %i.n, i64 1537228672809129301, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = mul nuw nsw i64 %i.p, 6
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #23 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.s, ptr noundef nonnull align 2 dereferenceable(6) %1, i64 6, i1 false), !tbaa.struct !34
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !34, !alias.scope !229
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !173

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #24
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !167
  store ptr %i.v, ptr %i.a, align 8, !tbaa !164
  %i.w = getelementptr inbounds nuw [6 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !168
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.x = phi ptr [ %i.f, %bb.b ], [ %i.v, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.r, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -6
  %.sroa.02.0.copyload.i = load i48, ptr %i.z, align 2 ; 4 uses
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = sdiv exact i64 %i.ac, 6
  %i.ae = add nsw i64 %i.ad, -1                   ; 2 uses
  %i.af = icmp sgt i64 %i.ac, 6
  br i1 %i.af, label %.lr.ph.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEE26PathfinderCompareHeuristicEvT_SB_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.ag, align 8, !tbaa !214 ; 4 uses
  %.sroa.0.0.extract.trunc.i17.i.i.i.i = trunc i48 %.sroa.02.0.copyload.i to i16
  %.sroa.2.0.extract.shift.i18.i.i.i.i = lshr i48 %.sroa.02.0.copyload.i, 16
  %.sroa.2.0.extract.trunc.i19.i.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i18.i.i.i.i to i16
  %.sroa.3.0.extract.shift.i20.i.i.i.i = lshr i48 %.sroa.02.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i21.i.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i20.i.i.i.i to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 38
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 42
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 56 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.ae, %.lr.ph.i.i ], [ %.0921.i1011.i, %bb.g ] ; 4 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i1011.i = lshr i64 %.0921.in.i.i, 1      ; 3 uses
  %i.al = getelementptr inbounds nuw [6 x i8], ptr %i.y, i64 %.0921.i1011.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load i48, ptr %i.al, align 2 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i48 %.sroa.03.0.copyload.i.i.i to i16
  %.sroa.2.0.extract.shift.i.i.i.i.i = lshr i48 %.sroa.03.0.copyload.i.i.i, 16
  %.sroa.2.0.extract.trunc.i.i.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i.i.i.i to i16
  %.sroa.3.0.extract.shift.i.i.i.i.i = lshr i48 %.sroa.03.0.copyload.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i.i.i.i to i16
  %i.am = load i16, ptr %i.ah, align 2, !tbaa !154 ; 2 uses
  %i.an = sub i16 %.sroa.0.0.extract.trunc.i.i.i.i.i, %i.am
  %i.ao = load i16, ptr %i.ai, align 2, !tbaa !155 ; 2 uses
  %i.ap = sub i16 %.sroa.2.0.extract.trunc.i.i.i.i.i, %i.ao
  %i.aq = load i16, ptr %i.aj, align 2, !tbaa !156 ; 2 uses
  %i.ar = sub i16 %.sroa.3.0.extract.trunc.i.i.i.i.i, %i.aq
  %.sroa.3.0.insert.ext.i.i.i.i.i.i = zext i16 %i.ar to i48
  %.sroa.3.0.insert.shift.i.i.i.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i.i.i.i.i, 32
  %.sroa.2.0.insert.ext.i.i.i.i.i.i = zext i16 %i.ap to i48
  %.sroa.2.0.insert.shift.i.i.i.i.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i.i.i.i.i, 16
  %.sroa.2.0.insert.insert.i.i.i.i.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i.i.i.i.i, %.sroa.2.0.insert.shift.i.i.i.i.i.i
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = zext i16 %i.an to i48
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i.i
  %i.as = sub i16 %.sroa.0.0.extract.trunc.i17.i.i.i.i, %i.am
  %i.at = sub i16 %.sroa.2.0.extract.trunc.i19.i.i.i.i, %i.ao
  %i.au = sub i16 %.sroa.3.0.extract.trunc.i21.i.i.i.i, %i.aq
  %.sroa.3.0.insert.ext.i.i22.i.i.i.i = zext i16 %i.au to i48
  %.sroa.3.0.insert.shift.i.i23.i.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i22.i.i.i.i, 32
  %.sroa.2.0.insert.ext.i.i24.i.i.i.i = zext i16 %i.at to i48
  %.sroa.2.0.insert.shift.i.i25.i.i.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i24.i.i.i.i, 16
  %.sroa.2.0.insert.insert.i.i26.i.i.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i23.i.i.i.i, %.sroa.2.0.insert.shift.i.i25.i.i.i.i
  %.sroa.0.0.insert.ext.i.i27.i.i.i.i = zext i16 %i.as to i48
  %.sroa.0.0.insert.insert.i.i28.i.i.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i26.i.i.i.i, %.sroa.0.0.insert.ext.i.i27.i.i.i.i
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !28 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef nonnull align 4 dereferenceable(92) ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i48 %.sroa.0.0.insert.insert.i.i.i.i.i.i), !inline_history !233 ; 2 uses
  %i.az = load ptr, ptr %i.ak, align 8, !tbaa !28 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call noundef nonnull align 4 dereferenceable(92) ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i48 %.sroa.0.0.insert.insert.i.i28.i.i.i.i), !inline_history !233 ; 2 uses
  %i.bd = load i8, ptr %i.ay, align 4, !tbaa !158, !range !115, !noundef !116
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = load i8, ptr %i.bc, align 4, !range !115
  %i.bg = trunc nuw i8 %i.bf to i1
  %or.cond.i.i.i.i = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i.i, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEE26PathfinderCompareHeuristicEvT_SB_T0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i.i: ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !180
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !180
  %i.bl = icmp sgt i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.g, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEE26PathfinderCompareHeuristicEvT_SB_T0_.exit

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i.i
  %i.bm = getelementptr inbounds [6 x i8], ptr %i.y, i64 %.020.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.bm, ptr noundef nonnull align 2 dereferenceable(6) %i.al, i64 6, i1 false), !tbaa.struct !34
  %.not.i4 = icmp eq i64 %.0921.i1011.i, 0
  br i1 %.not.i4, label %_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEE26PathfinderCompareHeuristicEvT_SB_T0_.exit, label %bb.f, !llvm.loop !234

_ZSt9push_heapIN9__gnu_cxx17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEE26PathfinderCompareHeuristicEvT_SB_T0_.exit: ; preds = %bb.f, %_ZN9__gnu_cxx5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i.i, %bb.g, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit
  %.0.lcssa.i.i = phi i64 [ %i.ae, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ], [ %.020.i.i, %bb.f ], [ 0, %bb.g ], [ %.020.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i.i ]
  %i.bn = getelementptr inbounds [6 x i8], ptr %i.y, i64 %.0.lcssa.i.i
  store i48 %.sroa.02.0.copyload.i, ptr %i.bn, align 2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22ArrayGridNodeContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV22ArrayGridNodeContainer, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI12PathGridnodeSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !205
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorI12PathGridnodeSaIS0_EED2Ev.exit

_ZNSt6vectorI12PathGridnodeSaIS0_EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22ArrayGridNodeContainerD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV22ArrayGridNodeContainer, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN22ArrayGridNodeContainerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !205
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24, !inline_history !235
  br label %_ZN22ArrayGridNodeContainerD2Ev.exit

_ZN22ArrayGridNodeContainerD2Ev.exit:             ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20MapGridNodeContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MapGridNodeContainer, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_12PathGridnodeESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapIN4core8vector3dIsEE12PathGridnodeSt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZNSt3mapIN4core8vector3dIsEE12PathGridnodeSt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20MapGridNodeContainerD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MapGridNodeContainer, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_12PathGridnodeESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN20MapGridNodeContainerD2Ev.exit unwind label %bb.b, !inline_history !236

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26, !inline_history !236
  unreachable

_ZN20MapGridNodeContainerD2Ev.exit:               ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !132    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !133    ; 9 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !134
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !133
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.21, i64 noundef 6) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !134
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !133 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !132   ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i.i6, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pre.i5, align 8, !tbaa !29
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.pre.i5, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !134
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.pre.i5, %bb.h ], [ %i.c, %bb.g ]
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #22
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

_ZN11StreamProxylsIPKcEERS_OT_.exit:              ; preds = %.thread, %bb.i, %bb.f, %bb.e, %bb.b
  ret ptr %0
}

declare void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_12PathGridnodeESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237
  tail call void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_12PathGridnodeESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 136) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !239

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI12PathGridnodeSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 13 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !204    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 92                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !205
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 92                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 100254043878856259
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 100254043878856258, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  store i32 -1, ptr %i.p, align 4, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 -1, ptr %i.q, align 4, !tbaa !180
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.s, i8 0, i64 9, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.t, i8 0, i64 9, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.u, i8 0, i64 9, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.v, i8 0, i64 9, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.r, i8 0, i64 13, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 0, i8 117>, ptr %i.w, align 4, !tbaa !152
  %i.x = add nsw i64 %1, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.y, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.y, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.prol ]
  %i.z = icmp eq i64 %1, 1
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIP12PathGridnodemS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 19 uses
  %.01012.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %.013.i.i.i, i8 0, i64 88, i1 false)
  store i32 -1, ptr %i.aa, align 4, !tbaa !162
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  store i32 -1, ptr %i.ab, align 4, !tbaa !180
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ad, i8 0, i64 9, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ae, i8 0, i64 9, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.af, i8 0, i64 9, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ag, i8 0, i64 9, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.ac, i8 0, i64 13, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 0, i8 117>, ptr %i.ah, align 4, !tbaa !152
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 92
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.ai, i8 0, i64 88, i1 false)
  store i32 -1, ptr %i.aj, align 4, !tbaa !162
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 100
  store i32 -1, ptr %i.ak, align 4, !tbaa !180
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.am, i8 0, i64 9, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.an, i8 0, i64 9, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ao, i8 0, i64 9, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ap, i8 0, i64 9, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.al, i8 0, i64 13, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 0, i8 117>, ptr %i.aq, align 4, !tbaa !152
  %i.ar = add i64 %.01012.i.i.i, -2               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.1, label %_ZSt27__uninitialized_default_n_aIP12PathGridnodemS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !241

_ZSt27__uninitialized_default_n_aIP12PathGridnodemS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.as, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !240
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.at = icmp ult i64 %i.n, %1
  br i1 %i.at, label %bb.d, label %_ZNKSt6vectorI12PathGridnodeSaIS0_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #25
  unreachable

_ZNKSt6vectorI12PathGridnodeSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.au = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.au, i64 100254043878856258) ; 2 uses
  %i.aw = mul nuw nsw i64 %i.av, 92               ; 2 uses
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #23 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.f ; 12 uses
  %xtraiter50 = and i64 %1, 1
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %.lr.ph.i.i.i40.prol.loopexit, label %.lr.ph.i.i.i40.prol

.lr.ph.i.i.i40.prol:                              ; preds = %_ZNKSt6vectorI12PathGridnodeSaIS0_EE12_M_check_lenEmPKc.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.ay, i8 0, i64 88, i1 false)
  store i32 -1, ptr %i.az, align 4, !tbaa !162
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 -1, ptr %i.ba, align 4, !tbaa !180
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bc, i8 0, i64 9, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bd, i8 0, i64 9, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.be, i8 0, i64 9, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bf, i8 0, i64 9, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.bb, i8 0, i64 13, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 0, i8 117>, ptr %i.bg, align 4, !tbaa !152
  %i.bh = add nsw i64 %1, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 92
  br label %.lr.ph.i.i.i40.prol.loopexit

.lr.ph.i.i.i40.prol.loopexit:                     ; preds = %.lr.ph.i.i.i40.prol, %_ZNKSt6vectorI12PathGridnodeSaIS0_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i41.unr = phi ptr [ %i.ay, %_ZNKSt6vectorI12PathGridnodeSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.bi, %.lr.ph.i.i.i40.prol ]
  %.01012.i.i.i42.unr = phi i64 [ %1, %_ZNKSt6vectorI12PathGridnodeSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.bh, %.lr.ph.i.i.i40.prol ]
  %i.bj = icmp eq i64 %1, 1
  br i1 %i.bj, label %_ZSt27__uninitialized_default_n_aIP12PathGridnodemS0_ET_S2_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.prol.loopexit, %.lr.ph.i.i.i40
  %.013.i.i.i41 = phi ptr [ %i.cc, %.lr.ph.i.i.i40 ], [ %.013.i.i.i41.unr, %.lr.ph.i.i.i40.prol.loopexit ] ; 19 uses
  %.01012.i.i.i42 = phi i64 [ %i.cb, %.lr.ph.i.i.i40 ], [ %.01012.i.i.i42.unr, %.lr.ph.i.i.i40.prol.loopexit ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %.013.i.i.i41, i8 0, i64 88, i1 false)
  store i32 -1, ptr %i.bk, align 4, !tbaa !162
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 8
  store i32 -1, ptr %i.bl, align 4, !tbaa !180
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bn, i8 0, i64 9, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bo, i8 0, i64 9, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bp, i8 0, i64 9, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bq, i8 0, i64 9, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.bm, i8 0, i64 13, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 0, i8 117>, ptr %i.br, align 4, !tbaa !152
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 92
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.bs, i8 0, i64 88, i1 false)
  store i32 -1, ptr %i.bt, align 4, !tbaa !162
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 100
  store i32 -1, ptr %i.bu, align 4, !tbaa !180
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 104
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bw, i8 0, i64 9, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bx, i8 0, i64 9, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.by, i8 0, i64 9, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.bz, i8 0, i64 9, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.bv, i8 0, i64 13, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 0, i8 117>, ptr %i.ca, align 4, !tbaa !152
  %i.cb = add i64 %.01012.i.i.i42, -2             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 184
  %.not.i.i.i43.1 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i43.1, label %_ZSt27__uninitialized_default_n_aIP12PathGridnodemS0_ET_S2_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40, !llvm.loop !241

_ZSt27__uninitialized_default_n_aIP12PathGridnodemS0_ET_S2_T0_RSaIT1_E.exit45: ; preds = %.lr.ph.i.i.i40, %.lr.ph.i.i.i40.prol.loopexit
  %i.cd = invoke noundef ptr @_ZSt16__do_uninit_copyIPK12PathGridnodePS0_ET0_T_S5_S4_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef nonnull %i.ax)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIP12PathGridnodeS1_SaIS0_EET0_T_S4_S3_RT1_.exit unwind label %_ZSt8_DestroyIP12PathGridnodeS0_EvT_S2_RSaIT0_E.exit ; 0 uses

_ZSt8_DestroyIP12PathGridnodeS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt27__uninitialized_default_n_aIP12PathGridnodemS0_ET_S2_T0_RSaIT1_E.exit45
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  %i.cg = tail call ptr @__cxa_begin_catch(ptr %i.cf) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.aw) #24
  invoke void @__cxa_rethrow() #25
          to label %bb.j unwind label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIP12PathGridnodeS0_EvT_S2_RSaIT0_E.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ch

_ZSt34__uninitialized_move_if_noexcept_aIP12PathGridnodeS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIP12PathGridnodemS0_ET_S2_T0_RSaIT1_E.exit45
  %.not.i47 = icmp eq ptr %i.c, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseI12PathGridnodeSaIS0_EE13_M_deallocateEPS0_m.exit48, label %bb.g

bb.g:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP12PathGridnodeS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !205
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ck) #24
  br label %_ZNSt12_Vector_baseI12PathGridnodeSaIS0_EE13_M_deallocateEPS0_m.exit48

_ZNSt12_Vector_baseI12PathGridnodeSaIS0_EE13_M_deallocateEPS0_m.exit48: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP12PathGridnodeS1_SaIS0_EET0_T_S4_S3_RT1_.exit, %bb.g
  store ptr %i.ax, ptr %0, align 8, !tbaa !204
  %i.cl = getelementptr inbounds nuw [92 x i8], ptr %i.ay, i64 %1
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !240
  %i.cm = getelementptr inbounds nuw [92 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.cm, ptr %i.h, align 8, !tbaa !205
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP12PathGridnodemS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI12PathGridnodeSaIS0_EE13_M_deallocateEPS0_m.exit48, %bb.a
  ret void

bb.i:                                             ; preds = %bb.e
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  tail call void @__clang_call_terminate(ptr %i.co) #26
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIP12PathGridnodeS0_EvT_S2_RSaIT0_E.exit
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPK12PathGridnodePS0_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not13 = icmp eq ptr %0, %1
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi ptr [ %i.be, %.lr.ph ], [ %2, %bb.a ] ; 24 uses
  %.01214 = phi ptr [ %i.bd, %.lr.ph ], [ %0, %bb.a ] ; 21 uses
  %i.a = load i8, ptr %.01214, align 4, !tbaa !158, !range !115, !noundef !116
  store i8 %i.a, ptr %.015, align 4, !tbaa !158
  %i.b = getelementptr inbounds nuw i8, ptr %.015, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %.01214, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !160, !range !115, !noundef !116
  store i8 %i.d, ptr %i.b, align 1, !tbaa !160
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %.01214, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !161, !range !115, !noundef !116
  store i8 %i.g, ptr %i.e, align 2, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %.015, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %.01214, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !162
  store i32 %i.j, ptr %i.h, align 4, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %.015, i64 8
  store i32 -1, ptr %i.k, align 4, !tbaa !180
  %i.l = getelementptr inbounds nuw i8, ptr %.015, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %.01214, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.l, ptr noundef nonnull readonly align 4 dereferenceable(6) %i.m, i64 6, i1 false), !tbaa.struct !34
  %i.n = getelementptr inbounds nuw i8, ptr %.015, i64 18
  %i.o = getelementptr inbounds nuw i8, ptr %.01214, i64 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.n, ptr noundef nonnull readonly align 2 dereferenceable(6) %i.o, i64 6, i1 false), !tbaa.struct !34
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %.015, i64 24 ; 2 uses
  store i8 0, ptr %.ptr.i.i, align 4, !tbaa !176
  %i.p = getelementptr inbounds nuw i8, ptr %.015, i64 28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.p, i8 0, i64 9, i1 false)
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %.015, i64 40 ; 2 uses
  store i8 0, ptr %.ptr.1.i.i, align 4, !tbaa !176
  %i.q = getelementptr inbounds nuw i8, ptr %.015, i64 44 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.q, i8 0, i64 9, i1 false)
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %.015, i64 56 ; 2 uses
  store i8 0, ptr %.ptr.2.i.i, align 4, !tbaa !176
  %i.r = getelementptr inbounds nuw i8, ptr %.015, i64 60 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.r, i8 0, i64 9, i1 false)
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %.015, i64 72 ; 2 uses
  store i8 0, ptr %.ptr.3.i.i, align 4, !tbaa !176
  %i.s = getelementptr inbounds nuw i8, ptr %.015, i64 76 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.s, i8 0, i64 9, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.015, i64 88
  store i8 0, ptr %i.t, align 4, !tbaa !181
  %i.u = getelementptr inbounds nuw i8, ptr %.015, i64 89
  store i8 0, ptr %i.u, align 1, !tbaa !182
  %i.v = getelementptr inbounds nuw i8, ptr %.015, i64 90
  %i.w = getelementptr inbounds nuw i8, ptr %.01214, i64 90
  %i.x = load i8, ptr %i.w, align 2, !tbaa !183, !range !115, !noundef !116
  store i8 %i.x, ptr %i.v, align 2, !tbaa !183
  %i.y = getelementptr inbounds nuw i8, ptr %.015, i64 91
  %i.z = getelementptr inbounds nuw i8, ptr %.01214, i64 91
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !184
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !184
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214, i64 24
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !176, !range !115, !noundef !116
  store i8 %i.ac, ptr %.ptr.i.i, align 4, !tbaa !176
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214, i64 28
  %i.ae = load <2 x i32>, ptr %i.ad, align 4, !tbaa !178
  store <2 x i32> %i.ae, ptr %i.p, align 4, !tbaa !178
  %i.af = getelementptr inbounds nuw i8, ptr %.01214, i64 36
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !179, !range !115, !noundef !116
  %i.ah = getelementptr inbounds nuw i8, ptr %.015, i64 36
  store i8 %i.ag, ptr %i.ah, align 4, !tbaa !179
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214, i64 40
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !176, !range !115, !noundef !116
  store i8 %i.aj, ptr %.ptr.1.i.i, align 4, !tbaa !176
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214, i64 44
  %i.al = load <2 x i32>, ptr %i.ak, align 4, !tbaa !178
  store <2 x i32> %i.al, ptr %i.q, align 4, !tbaa !178
  %i.am = getelementptr inbounds nuw i8, ptr %.01214, i64 52
  %i.an = load i8, ptr %i.am, align 4, !tbaa !179, !range !115, !noundef !116
  %i.ao = getelementptr inbounds nuw i8, ptr %.015, i64 52
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !179
  %i.ap = getelementptr inbounds nuw i8, ptr %.01214, i64 56
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !176, !range !115, !noundef !116
  store i8 %i.aq, ptr %.ptr.2.i.i, align 4, !tbaa !176
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214, i64 60
  %i.as = load <2 x i32>, ptr %i.ar, align 4, !tbaa !178
  store <2 x i32> %i.as, ptr %i.r, align 4, !tbaa !178
  %i.at = getelementptr inbounds nuw i8, ptr %.01214, i64 68
  %i.au = load i8, ptr %i.at, align 4, !tbaa !179, !range !115, !noundef !116
  %i.av = getelementptr inbounds nuw i8, ptr %.015, i64 68
  store i8 %i.au, ptr %i.av, align 4, !tbaa !179
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214, i64 72
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !176, !range !115, !noundef !116
  store i8 %i.ax, ptr %.ptr.3.i.i, align 4, !tbaa !176
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214, i64 76
  %i.az = load <2 x i32>, ptr %i.ay, align 4, !tbaa !178
  store <2 x i32> %i.az, ptr %i.s, align 4, !tbaa !178
  %i.ba = getelementptr inbounds nuw i8, ptr %.01214, i64 84
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !179, !range !115, !noundef !116
  %i.bc = getelementptr inbounds nuw i8, ptr %.015, i64 84
  store i8 %i.bb, ptr %i.bc, align 4, !tbaa !179
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214, i64 92 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.015, i64 92 ; 2 uses
  %.not = icmp eq ptr %i.bd, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !242

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.be, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_12PathGridnodeESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #23 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !208
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %i.b, ptr noundef nonnull align 2 dereferenceable(6) %i.d, i64 6, i1 false), !tbaa.struct !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.e, i8 0, i64 88, i1 false)
  store i32 -1, ptr %i.f, align 4, !tbaa !162
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 -1, ptr %i.g, align 4, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.i, i8 0, i64 9, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.j, i8 0, i64 9, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.k, i8 0, i64 9, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.l, i8 0, i64 9, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.h, i8 0, i64 13, i1 false)
  store <4 x i8> <i8 0, i8 0, i8 0, i8 117>, ptr %i.m, align 4, !tbaa !152
  %i.n = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_12PathGridnodeESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(6) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_12PathGridnodeESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 6 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.r
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load i16, ptr %i.b, align 4, !tbaa !154  ; 2 uses
  %i.u = load i16, ptr %i.s, align 2, !tbaa !154  ; 2 uses
  %i.v = icmp slt i16 %i.t, %i.u
  br i1 %i.v, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq i16 %i.t, %i.u
  br i1 %i.w, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.y = load i16, ptr %i.x, align 2, !tbaa !155  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 34
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !155 ; 2 uses
  %i.ab = icmp slt i16 %i.y, %i.aa
  br i1 %i.ab, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp eq i16 %i.y, %i.aa
  br i1 %i.ac, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !156
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !156
  %i.ah = icmp slt i16 %i.ae, %i.ag
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.ai = phi i1 [ false, %bb.e ], [ true, %bb.c ], [ true, %bb.f ], [ true, %bb.d ], [ false, %bb.g ], [ %i.ah, %bb.h ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ai, ptr noundef nonnull %i.a, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.q) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !58
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !58
  br label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_12PathGridnodeESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_12PathGridnodeESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #24
  resume { ptr, i32 } %i.am

bb.i:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 136) #24
  br label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_12PathGridnodeESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_12PathGridnodeESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE10_Auto_nodeD2Ev.exit9: ; preds = %.thread, %bb.i
  %.sroa.013.017 = phi ptr [ %i.a, %.thread ], [ %i.o, %bb.i ]
  ret ptr %.sroa.013.017
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_12PathGridnodeESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(6) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !206  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i16, ptr %i.g, align 2, !tbaa !154  ; 2 uses
  %i.i = load i16, ptr %2, align 2, !tbaa !154    ; 2 uses
  %i.j = icmp slt i16 %i.h, %i.i
  br i1 %i.j, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i16 %i.h, %i.i
  br i1 %i.k, label %bb.e, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 34
  %i.m = load i16, ptr %i.l, align 2, !tbaa !155  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !155  ; 2 uses
  %i.p = icmp slt i16 %i.m, %i.o
  br i1 %i.p, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i16 %i.m, %i.o
  br i1 %i.q, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.s = load i16, ptr %i.r, align 2, !tbaa !156
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !156
  %i.v = icmp slt i16 %i.s, %i.u
  br i1 %i.v, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80: ; preds = %bb.f, %bb.d, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02126.i = load ptr, ptr %i.w, align 8, !tbaa !206 ; 2 uses
  %.not27.i = icmp eq ptr %.02126.i, null
  br i1 %.not27.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80
  %i.x = load i16, ptr %2, align 2, !tbaa !154    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.z = load i16, ptr %i.y, align 2              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i16, ptr %i.aa, align 2
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02128.i = phi ptr [ %.02126.i, %.lr.ph.i ], [ %.02128.i.be, %.backedge.backedge ] ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02128.i, i64 32
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !154 ; 3 uses
  %i.ae = icmp slt i16 %i.x, %i.ad
  br i1 %i.ae, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %.backedge
  %i.af = icmp eq i16 %i.x, %i.ad
  br i1 %i.af, label %bb.h, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.02128.i, i64 34
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !155 ; 2 uses
  %i.ai = icmp slt i16 %i.z, %i.ah
  br i1 %i.ai, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp eq i16 %i.z, %i.ah
  br i1 %i.aj, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i: ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.02128.i, i64 36
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !156
  %i.am = icmp slt i16 %i.ab, %i.al
  br i1 %i.am, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.h, %.backedge
  %i.an = getelementptr inbounds nuw i8, ptr %.02128.i, i64 16
  %.021.i = load ptr, ptr %i.an, align 8, !tbaa !206 ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread
  %.02128.i.be = phi ptr [ %.021.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i ], [ %.021.i82, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread ]
  br label %.backedge, !llvm.loop !243

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread: ; preds = %bb.g, %bb.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.02128.i, i64 24
  %.021.i82 = load ptr, ptr %i.ao, align 8, !tbaa !206 ; 2 uses
  %.not.i83 = icmp eq ptr %.021.i82, null
  br i1 %.not.i83, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80
  %.020.lcssa40.i = phi ptr [ %i.a, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread80 ], [ %.02128.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.ar = icmp eq ptr %.020.lcssa40.i, %i.aq
  br i1 %i.ar, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i
  %i.as = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa40.i) #27 ; 2 uses
  %.phi.trans.insert111 = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %.pre112 = load i16, ptr %.phi.trans.insert111, align 2, !tbaa !154
  %.pre113 = load i16, ptr %2, align 2, !tbaa !154
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread, %bb.j
  %i.at = phi i16 [ %.pre113, %bb.j ], [ %i.x, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread ] ; 2 uses
  %i.au = phi i16 [ %.pre112, %bb.j ], [ %i.ad, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread ] ; 2 uses
  %.020.lcssa39.i = phi ptr [ %.020.lcssa40.i, %bb.j ], [ %.02128.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread ] ; 3 uses
  %.sroa.06.0.i = phi ptr [ %i.as, %bb.j ], [ %.02128.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.thread ] ; 3 uses
  %i.av = icmp slt i16 %i.au, %i.at
  br i1 %i.av, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.thread
  %i.aw = icmp eq i16 %i.au, %i.at
  br i1 %i.aw, label %bb.l, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 34
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !155 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !155 ; 2 uses
  %i.bb = icmp slt i16 %i.ay, %i.ba
  br i1 %i.bb, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = icmp eq i16 %i.ay, %i.ba
  br i1 %i.bc, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i: ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 36
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !156
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !156
  %i.bh = icmp slt i16 %i.be, %i.bg
  br i1 %i.bh, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i, %bb.m, %bb.k
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread

bb.n:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load i16, ptr %2, align 2, !tbaa !154   ; 15 uses
  %i.bk = load i16, ptr %i.bi, align 2, !tbaa !154 ; 3 uses
  %i.bl = icmp slt i16 %i.bj, %i.bk
  br i1 %i.bl, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = icmp eq i16 %i.bj, %i.bk
  br i1 %i.bm, label %bb.p, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread85

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !155 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !155 ; 2 uses
  %i.br = icmp slt i16 %i.bo, %i.bq
  br i1 %i.br, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = icmp eq i16 %i.bo, %i.bq
  br i1 %i.bs, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread85

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10: ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !156
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !156
  %i.bx = icmp slt i16 %i.bu, %i.bw
  br i1 %i.bx, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread85

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread: ; preds = %bb.n, %bb.p, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !206 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, %1
  br i1 %i.ca, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread
  %i.cb = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #27 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !154 ; 2 uses
  %i.ce = icmp slt i16 %i.cd, %i.bj
  br i1 %i.ce, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = icmp eq i16 %i.cd, %i.bj
  br i1 %i.cf, label %bb.t, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread87

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 34
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !155 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !155 ; 2 uses
  %i.ck = icmp slt i16 %i.ch, %i.cj
  br i1 %i.ck, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = icmp eq i16 %i.ch, %i.cj
  br i1 %i.cl, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread87

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11: ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !156
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !156
  %i.cq = icmp slt i16 %i.cn, %i.cp
  br i1 %i.cq, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread87

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread: ; preds = %bb.r, %bb.t, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !237
  %i.ct = icmp eq ptr %i.cs, null                 ; 2 uses
  %spec.select = select i1 %i.ct, ptr null, ptr %1
  %spec.select98 = select i1 %i.ct, ptr %i.cb, ptr %1
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread87: ; preds = %bb.u, %bb.s, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02126.i12 = load ptr, ptr %i.cu, align 8, !tbaa !206 ; 2 uses
  %.not27.i13 = icmp eq ptr %.02126.i12, null
  br i1 %.not27.i13, label %._crit_edge.thread.i30, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread87
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cw = load i16, ptr %i.cv, align 2            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cy = load i16, ptr %i.cx, align 2
  br label %.backedge101

.backedge101:                                     ; preds = %.backedge101.backedge, %.lr.ph.i14
  %.02128.i15 = phi ptr [ %.02126.i12, %.lr.ph.i14 ], [ %.02128.i15.be, %.backedge101.backedge ] ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.02128.i15, i64 32
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !154 ; 3 uses
  %i.db = icmp slt i16 %i.bj, %i.da
  br i1 %i.db, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17, label %bb.v

bb.v:                                             ; preds = %.backedge101
  %i.dc = icmp eq i16 %i.bj, %i.da
  br i1 %i.dc, label %bb.w, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17.thread

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %.02128.i15, i64 34
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !155 ; 2 uses
  %i.df = icmp slt i16 %i.cw, %i.de
  br i1 %i.df, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = icmp eq i16 %i.cw, %i.de
  br i1 %i.dg, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i32, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i32: ; preds = %bb.x
  %i.dh = getelementptr inbounds nuw i8, ptr %.02128.i15, i64 36
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !156
  %i.dj = icmp slt i16 %i.cy, %i.di
  br i1 %i.dj, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i32, %bb.w, %.backedge101
  %i.dk = getelementptr inbounds nuw i8, ptr %.02128.i15, i64 16
  %.021.i19 = load ptr, ptr %i.dk, align 8, !tbaa !206 ; 2 uses
  %.not.i20 = icmp eq ptr %.021.i19, null
  br i1 %.not.i20, label %._crit_edge.thread.i30, label %.backedge101.backedge

.backedge101.backedge:                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17.thread
  %.02128.i15.be = phi ptr [ %.021.i19, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17 ], [ %.021.i1989, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17.thread ]
  br label %.backedge101, !llvm.loop !243

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17.thread: ; preds = %bb.v, %bb.x, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i32
  %i.dl = getelementptr inbounds nuw i8, ptr %.02128.i15, i64 24
  %.021.i1989 = load ptr, ptr %i.dl, align 8, !tbaa !206 ; 2 uses
  %.not.i2090 = icmp eq ptr %.021.i1989, null
  br i1 %.not.i2090, label %._crit_edge.i21.thread, label %.backedge101.backedge

._crit_edge.thread.i30:                           ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread87
  %.020.lcssa40.i31 = phi ptr [ %i.a, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread87 ], [ %.02128.i15, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17 ] ; 4 uses
  %i.dm = icmp eq ptr %.020.lcssa40.i31, %i.bz
  br i1 %i.dm, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.y

bb.y:                                             ; preds = %._crit_edge.thread.i30
  %i.dn = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa40.i31) #27 ; 2 uses
  %.phi.trans.insert109 = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %.pre110 = load i16, ptr %.phi.trans.insert109, align 2, !tbaa !154
  br label %._crit_edge.i21.thread

._crit_edge.i21.thread:                           ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17.thread, %bb.y
  %i.do = phi i16 [ %.pre110, %bb.y ], [ %i.da, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17.thread ] ; 2 uses
  %.020.lcssa39.i22 = phi ptr [ %.020.lcssa40.i31, %bb.y ], [ %.02128.i15, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17.thread ] ; 3 uses
  %.sroa.06.0.i23 = phi ptr [ %i.dn, %bb.y ], [ %.02128.i15, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i17.thread ] ; 3 uses
  %i.dp = icmp slt i16 %i.do, %i.bj
  br i1 %i.dp, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i21.thread
  %i.dq = icmp eq i16 %i.do, %i.bj
  br i1 %i.dq, label %bb.aa, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24

bb.aa:                                            ; preds = %bb.z
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i23, i64 34
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !155 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !155 ; 2 uses
  %i.dv = icmp slt i16 %i.ds, %i.du
  br i1 %i.dv, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = icmp eq i16 %i.ds, %i.du
  br i1 %i.dw, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i29, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i29: ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i23, i64 36
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !156
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !156
  %i.eb = icmp slt i16 %i.dy, %i.ea
  br i1 %i.eb, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i29, %bb.ab, %bb.z
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread85: ; preds = %bb.q, %bb.o, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10
  %i.ec = icmp slt i16 %i.bk, %i.bj
  br i1 %i.ec, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread85
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !155 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !155 ; 2 uses
  %i.eh = icmp slt i16 %i.ee, %i.eg
  br i1 %i.eh, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ei = icmp eq i16 %i.ee, %i.eg
  br i1 %i.ei, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34: ; preds = %bb.ad
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !156
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.em = load i16, ptr %i.el, align 2, !tbaa !156
  %i.en = icmp slt i16 %i.ek, %i.em
  br i1 %i.en, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread85, %bb.ac, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !206 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %1
  br i1 %i.eq, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread
  %i.er = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #27 ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load i16, ptr %i.es, align 2, !tbaa !154 ; 2 uses
  %i.eu = icmp slt i16 %i.bj, %i.et
  br i1 %i.eu, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = icmp eq i16 %i.bj, %i.et
  br i1 %i.ev, label %bb.ag, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94

bb.ag:                                            ; preds = %bb.af
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !155 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 34
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !155 ; 2 uses
  %i.fa = icmp slt i16 %i.ex, %i.ez
  br i1 %i.fa, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fb = icmp eq i16 %i.ex, %i.ez
  br i1 %i.fb, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35: ; preds = %bb.ah
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !156
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 36
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !156
  %i.fg = icmp slt i16 %i.fd, %i.ff
  br i1 %i.fg, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread: ; preds = %bb.ae, %bb.ag, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !237
  %i.fj = icmp eq ptr %i.fi, null                 ; 2 uses
  %spec.select99 = select i1 %i.fj, ptr null, ptr %i.er
  %spec.select100 = select i1 %i.fj, ptr %1, ptr %i.er
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94: ; preds = %bb.ah, %bb.af, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02126.i36 = load ptr, ptr %i.fk, align 8, !tbaa !206 ; 2 uses
  %.not27.i37 = icmp eq ptr %.02126.i36, null
  br i1 %.not27.i37, label %._crit_edge.thread.i54, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.fm = load i16, ptr %i.fl, align 2            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fo = load i16, ptr %i.fn, align 2
  br label %.backedge102

.backedge102:                                     ; preds = %.backedge102.backedge, %.lr.ph.i38
  %.02128.i39 = phi ptr [ %.02126.i36, %.lr.ph.i38 ], [ %.02128.i39.be, %.backedge102.backedge ] ; 8 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 32
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !154 ; 3 uses
  %i.fr = icmp slt i16 %i.bj, %i.fq
  br i1 %i.fr, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, label %bb.ai

bb.ai:                                            ; preds = %.backedge102
  %i.fs = icmp eq i16 %i.bj, %i.fq
  br i1 %i.fs, label %bb.aj, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread

bb.aj:                                            ; preds = %bb.ai
  %i.ft = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 34
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !155 ; 2 uses
  %i.fv = icmp slt i16 %i.fm, %i.fu
  br i1 %i.fv, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fw = icmp eq i16 %i.fm, %i.fu
  br i1 %i.fw, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i56, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i56: ; preds = %bb.ak
  %i.fx = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 36
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !156
  %i.fz = icmp slt i16 %i.fo, %i.fy
  br i1 %i.fz, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i56, %bb.aj, %.backedge102
  %i.ga = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 16
  %.021.i43 = load ptr, ptr %i.ga, align 8, !tbaa !206 ; 2 uses
  %.not.i44 = icmp eq ptr %.021.i43, null
  br i1 %.not.i44, label %._crit_edge.thread.i54, label %.backedge102.backedge

.backedge102.backedge:                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread
  %.02128.i39.be = phi ptr [ %.021.i43, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41 ], [ %.021.i4396, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread ]
  br label %.backedge102, !llvm.loop !243

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread: ; preds = %bb.ai, %bb.ak, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i56
  %i.gb = getelementptr inbounds nuw i8, ptr %.02128.i39, i64 24
  %.021.i4396 = load ptr, ptr %i.gb, align 8, !tbaa !206 ; 2 uses
  %.not.i4497 = icmp eq ptr %.021.i4396, null
  br i1 %.not.i4497, label %._crit_edge.i45.thread, label %.backedge102.backedge

._crit_edge.thread.i54:                           ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94
  %.020.lcssa40.i55 = phi ptr [ %i.a, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread94 ], [ %.02128.i39, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41 ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !56
  %i.ge = icmp eq ptr %.020.lcssa40.i55, %i.gd
  br i1 %i.ge, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.al

bb.al:                                            ; preds = %._crit_edge.thread.i54
  %i.gf = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa40.i55) #27 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !154
  br label %._crit_edge.i45.thread

._crit_edge.i45.thread:                           ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread, %bb.al
  %i.gg = phi i16 [ %.pre, %bb.al ], [ %i.fq, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread ] ; 2 uses
  %.020.lcssa39.i46 = phi ptr [ %.020.lcssa40.i55, %bb.al ], [ %.02128.i39, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread ] ; 3 uses
  %.sroa.06.0.i47 = phi ptr [ %i.gf, %bb.al ], [ %.02128.i39, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i41.thread ] ; 3 uses
  %i.gh = icmp slt i16 %i.gg, %i.bj
  br i1 %i.gh, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i45.thread
  %i.gi = icmp eq i16 %i.gg, %i.bj
  br i1 %i.gi, label %bb.an, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48

bb.an:                                            ; preds = %bb.am
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i47, i64 34
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !155 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !155 ; 2 uses
  %i.gn = icmp slt i16 %i.gk, %i.gm
  br i1 %i.gn, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.go = icmp eq i16 %i.gk, %i.gm
  br i1 %i.go, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53: ; preds = %bb.ao
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i47, i64 36
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !156
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !156
  %i.gt = icmp slt i16 %i.gq, %i.gs
  br i1 %i.gt, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53, %bb.ao, %bb.am
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53, %bb.an, %._crit_edge.i45.thread, %._crit_edge.thread.i54, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i29, %bb.aa, %._crit_edge.i21.thread, %._crit_edge.thread.i30, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i, %bb.l, %._crit_edge.i.thread, %._crit_edge.thread.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread, %bb.ad, %bb.c, %bb.e, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit
  %.sroa.078.2 = phi ptr [ null, %bb.e ], [ null, %._crit_edge.i45.thread ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit ], [ %spec.select99, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread ], [ %1, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34 ], [ null, %._crit_edge.i.thread ], [ %i.bz, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread ], [ %1, %bb.ad ], [ null, %._crit_edge.i21.thread ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread ], [ %spec.select, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread ], [ null, %bb.c ], [ %.sroa.06.0.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i ], [ null, %._crit_edge.thread.i ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i ], [ null, %bb.l ], [ %.sroa.06.0.i23, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24 ], [ null, %._crit_edge.thread.i30 ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i29 ], [ null, %bb.aa ], [ %.sroa.06.0.i47, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48 ], [ null, %._crit_edge.thread.i54 ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53 ], [ null, %bb.an ]
  %.sroa.12.2 = phi ptr [ %i.f, %bb.e ], [ %.020.lcssa39.i46, %._crit_edge.i45.thread ], [ %i.f, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit ], [ %spec.select100, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit35.thread ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34 ], [ %.020.lcssa39.i, %._crit_edge.i.thread ], [ %i.bz, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit10.thread ], [ null, %bb.ad ], [ %.020.lcssa39.i22, %._crit_edge.i21.thread ], [ %i.ep, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit34.thread ], [ %spec.select98, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit11.thread ], [ %i.f, %bb.c ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i ], [ %.020.lcssa40.i, %._crit_edge.thread.i ], [ %.020.lcssa39.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i ], [ %.020.lcssa39.i, %bb.l ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i24 ], [ %.020.lcssa40.i31, %._crit_edge.thread.i30 ], [ %.020.lcssa39.i22, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i29 ], [ %.020.lcssa39.i22, %bb.aa ], [ null, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.thread25.i48 ], [ %.020.lcssa40.i55, %._crit_edge.thread.i54 ], [ %.020.lcssa39.i46, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit5.i53 ], [ %.020.lcssa39.i46, %bb.an ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.078.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEEEvT_T0_SF_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, i48 %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 38
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 42
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread
  %.042 = phi i64 [ %1, %.lr.ph ], [ %i.am, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread ] ; 2 uses
  %i.h = shl i64 %.042, 1                         ; 2 uses
  %i.i = add i64 %i.h, 2                          ; 3 uses
  %i.j = getelementptr inbounds [6 x i8], ptr %0, i64 %i.i
  %i.k = or disjoint i64 %i.h, 1                  ; 2 uses
  %i.l = getelementptr inbounds [6 x i8], ptr %0, i64 %i.k
  %.sroa.03.0.copyload.i = load i48, ptr %i.j, align 2 ; 3 uses
  %.sroa.0.0.copyload.i = load i48, ptr %i.l, align 2 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i48 %.sroa.03.0.copyload.i to i16
  %.sroa.2.0.extract.shift.i.i.i = lshr i48 %.sroa.03.0.copyload.i, 16
  %.sroa.2.0.extract.trunc.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i.i to i16
  %.sroa.3.0.extract.shift.i.i.i = lshr i48 %.sroa.03.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i.i to i16
  %i.m = load i16, ptr %i.d, align 2, !tbaa !154  ; 2 uses
  %i.n = sub i16 %.sroa.0.0.extract.trunc.i.i.i, %i.m
  %i.o = load i16, ptr %i.e, align 2, !tbaa !155  ; 2 uses
  %i.p = sub i16 %.sroa.2.0.extract.trunc.i.i.i, %i.o
  %i.q = load i16, ptr %i.f, align 2, !tbaa !156  ; 2 uses
  %i.r = sub i16 %.sroa.3.0.extract.trunc.i.i.i, %i.q
  %.sroa.3.0.insert.ext.i.i.i.i = zext i16 %i.r to i48
  %.sroa.3.0.insert.shift.i.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i.i.i, 32
  %.sroa.2.0.insert.ext.i.i.i.i = zext i16 %i.p to i48
  %.sroa.2.0.insert.shift.i.i.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i.i.i, 16
  %.sroa.2.0.insert.insert.i.i.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i.i.i, %.sroa.2.0.insert.shift.i.i.i.i
  %.sroa.0.0.insert.ext.i.i.i.i = zext i16 %i.n to i48
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.0.0.extract.trunc.i17.i.i = trunc i48 %.sroa.0.0.copyload.i to i16
  %.sroa.2.0.extract.shift.i18.i.i = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.2.0.extract.trunc.i19.i.i = trunc i48 %.sroa.2.0.extract.shift.i18.i.i to i16
  %.sroa.3.0.extract.shift.i20.i.i = lshr i48 %.sroa.0.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i21.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i20.i.i to i16
  %i.s = sub i16 %.sroa.0.0.extract.trunc.i17.i.i, %i.m
  %i.t = sub i16 %.sroa.2.0.extract.trunc.i19.i.i, %i.o
  %i.u = sub i16 %.sroa.3.0.extract.trunc.i21.i.i, %i.q
  %.sroa.3.0.insert.ext.i.i22.i.i = zext i16 %i.u to i48
  %.sroa.3.0.insert.shift.i.i23.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i22.i.i, 32
  %.sroa.2.0.insert.ext.i.i24.i.i = zext i16 %i.t to i48
  %.sroa.2.0.insert.shift.i.i25.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i24.i.i, 16
  %.sroa.2.0.insert.insert.i.i26.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i23.i.i, %.sroa.2.0.insert.shift.i.i25.i.i
  %.sroa.0.0.insert.ext.i.i27.i.i = zext i16 %i.s to i48
  %.sroa.0.0.insert.insert.i.i28.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i26.i.i, %.sroa.0.0.insert.ext.i.i27.i.i
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef nonnull align 4 dereferenceable(92) ptr %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i48 %.sroa.0.0.insert.insert.i.i.i.i), !inline_history !244 ; 2 uses
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef nonnull align 4 dereferenceable(92) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i48 %.sroa.0.0.insert.insert.i.i28.i.i), !inline_history !244 ; 2 uses
  %i.ad = load i8, ptr %i.y, align 4, !tbaa !158, !range !115, !noundef !116
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = load i8, ptr %i.ac, align 4, !range !115
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond.i.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit: ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !180
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !180
  %i.al = icmp sgt i32 %i.ai, %i.ak
  %cond.fr = freeze i1 %i.al
  %spec.select = select i1 %cond.fr, i64 %i.k, i64 %i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit, %bb.b
  %i.am = phi i64 [ %i.i, %bb.b ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit ] ; 4 uses
  %i.an = getelementptr inbounds [6 x i8], ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds [6 x i8], ptr %0, i64 %.042
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ao, ptr noundef nonnull align 2 dereferenceable(6) %i.an, i64 6, i1 false), !tbaa.struct !34
  %i.ap = icmp slt i64 %i.am, %i.b
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !245

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.am, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread ] ; 5 uses
  %i.aq = and i64 %2, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.as = add nsw i64 %2, -2
  %i.at = ashr exact i64 %i.as, 1
  %i.au = icmp eq i64 %.0.lcssa, %i.at
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = shl nsw i64 %.0.lcssa, 1
  %i.aw = or disjoint i64 %i.av, 1                ; 2 uses
  %i.ax = getelementptr inbounds [6 x i8], ptr %0, i64 %i.aw
  %i.ay = getelementptr inbounds [6 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.ay, ptr noundef nonnull align 2 dereferenceable(6) %i.ax, i64 6, i1 false), !tbaa.struct !34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.aw, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.az = icmp sgt i64 %.1, %1
  br i1 %i.az, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEEEvT_T0_SF_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.0.0.extract.trunc.i17.i.i.i = trunc i48 %3 to i16
  %.sroa.2.0.extract.shift.i18.i.i.i = lshr i48 %3, 16
  %.sroa.2.0.extract.trunc.i19.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i18.i.i.i to i16
  %.sroa.3.0.extract.shift.i20.i.i.i = lshr i48 %3, 32
  %.sroa.3.0.extract.trunc.i21.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i20.i.i.i to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 38
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 42
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.020.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0921.i, %bb.g ] ; 4 uses
  %.0921.in.i = add nsw i64 %.020.i, -1
  %.0921.i = sdiv i64 %.0921.in.i, 2              ; 4 uses
  %i.be = getelementptr inbounds [6 x i8], ptr %0, i64 %.0921.i ; 2 uses
  %.sroa.03.0.copyload.i.i = load i48, ptr %i.be, align 2 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i48 %.sroa.03.0.copyload.i.i to i16
  %.sroa.2.0.extract.shift.i.i.i.i = lshr i48 %.sroa.03.0.copyload.i.i, 16
  %.sroa.2.0.extract.trunc.i.i.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i.i.i to i16
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i48 %.sroa.03.0.copyload.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc nuw i48 %.sroa.3.0.extract.shift.i.i.i.i to i16
  %i.bf = load i16, ptr %i.ba, align 2, !tbaa !154 ; 2 uses
  %i.bg = sub i16 %.sroa.0.0.extract.trunc.i.i.i.i, %i.bf
  %i.bh = load i16, ptr %i.bb, align 2, !tbaa !155 ; 2 uses
  %i.bi = sub i16 %.sroa.2.0.extract.trunc.i.i.i.i, %i.bh
  %i.bj = load i16, ptr %i.bc, align 2, !tbaa !156 ; 2 uses
  %i.bk = sub i16 %.sroa.3.0.extract.trunc.i.i.i.i, %i.bj
  %.sroa.3.0.insert.ext.i.i.i.i.i = zext i16 %i.bk to i48
  %.sroa.3.0.insert.shift.i.i.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i.i.i.i, 32
  %.sroa.2.0.insert.ext.i.i.i.i.i = zext i16 %i.bi to i48
  %.sroa.2.0.insert.shift.i.i.i.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i.i.i.i, 16
  %.sroa.2.0.insert.insert.i.i.i.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i.i.i.i, %.sroa.2.0.insert.shift.i.i.i.i.i
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext i16 %i.bg to i48
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i
  %i.bl = sub i16 %.sroa.0.0.extract.trunc.i17.i.i.i, %i.bf
  %i.bm = sub i16 %.sroa.2.0.extract.trunc.i19.i.i.i, %i.bh
  %i.bn = sub i16 %.sroa.3.0.extract.trunc.i21.i.i.i, %i.bj
  %.sroa.3.0.insert.ext.i.i22.i.i.i = zext i16 %i.bn to i48
  %.sroa.3.0.insert.shift.i.i23.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i22.i.i.i, 32
  %.sroa.2.0.insert.ext.i.i24.i.i.i = zext i16 %i.bm to i48
  %.sroa.2.0.insert.shift.i.i25.i.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i24.i.i.i, 16
  %.sroa.2.0.insert.insert.i.i26.i.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i23.i.i.i, %.sroa.2.0.insert.shift.i.i25.i.i.i
  %.sroa.0.0.insert.ext.i.i27.i.i.i = zext i16 %i.bl to i48
  %.sroa.0.0.insert.insert.i.i28.i.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i26.i.i.i, %.sroa.0.0.insert.ext.i.i27.i.i.i
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !29
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef nonnull align 4 dereferenceable(92) ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i48 %.sroa.0.0.insert.insert.i.i.i.i.i), !inline_history !246 ; 2 uses
  %i.bs = load ptr, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !29
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef nonnull align 4 dereferenceable(92) ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i48 %.sroa.0.0.insert.insert.i.i28.i.i.i), !inline_history !246 ; 2 uses
  %i.bw = load i8, ptr %i.br, align 4, !tbaa !158, !range !115, !noundef !116
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = load i8, ptr %i.bv, align 4, !range !115
  %i.bz = trunc nuw i8 %i.by to i1
  %or.cond.i.i.i = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %or.cond.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEEEvT_T0_SF_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i: ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !180
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !180
  %i.ce = icmp sgt i32 %i.cb, %i.cd
  br i1 %i.ce, label %bb.g, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEEEvT_T0_SF_T1_RT2_.exit

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i
  %i.cf = getelementptr inbounds [6 x i8], ptr %0, i64 %.020.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.cf, ptr noundef nonnull align 2 dereferenceable(6) %i.be, i64 6, i1 false), !tbaa.struct !34
  %i.cg = icmp sgt i64 %.0921.i, %1
  br i1 %i.cg, label %bb.f, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEEEvT_T0_SF_T1_RT2_.exit, !llvm.loop !234

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEEEvT_T0_SF_T1_RT2_.exit: ; preds = %bb.f, %_ZN9__gnu_cxx5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i, %bb.g, %bb.e
  %.0.lcssa.i = phi i64 [ %.1, %bb.e ], [ %.020.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valI26PathfinderCompareHeuristicEclINS_17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i ], [ %.0921.i, %bb.g ], [ %.020.i, %bb.f ]
  %i.ch = getelementptr inbounds [6 x i8], ptr %0, i64 %.0.lcssa.i
  store i48 %3, ptr %i.ch, align 2
  ret void
}

declare extern_weak void @_ZTH10infostream() #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

declare extern_weak void @_ZTH13verbosestream() #5

declare extern_weak void @_ZTH13warningstream() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 24}
!10 = !{!"_ZTS10Pathfinder", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !11, i64 24, !12, i64 26, !12, i64 32, !14, i64 38, !15, i64 56, !23, i64 64, !24, i64 72}
!11 = !{!"bool", !7, i64 0}
!12 = !{!"_ZTSN4core8vector3dIsEE", !13, i64 0, !13, i64 2, !13, i64 4}
!13 = !{!"short", !7, i64 0}
!14 = !{!"_ZTSN4core8aabbox3dIsEE", !12, i64 0, !12, i64 6}
!15 = !{!"_ZTSSt10unique_ptrI17GridNodeContainerSt14default_deleteIS0_EE", !16, i64 0}
!16 = !{!"_ZTSSt15__uniq_ptr_dataI17GridNodeContainerSt14default_deleteIS0_ELb1ELb1EE", !17, i64 0}
!17 = !{!"_ZTSSt15__uniq_ptr_implI17GridNodeContainerSt14default_deleteIS0_EE", !18, i64 0}
!18 = !{!"_ZTSSt5tupleIJP17GridNodeContainerSt14default_deleteIS0_EEE", !19, i64 0}
!19 = !{!"_ZTSSt11_Tuple_implILm0EJP17GridNodeContainerSt14default_deleteIS0_EEE", !20, i64 0}
!20 = !{!"_ZTSSt10_Head_baseILm0EP17GridNodeContainerLb0EE", !21, i64 0}
!21 = !{!"p1 _ZTS17GridNodeContainer", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"p1 _ZTS3Map", !22, i64 0}
!24 = !{!"p1 _ZTS14NodeDefManager", !22, i64 0}
!25 = !{!20, !21, i64 0}
!26 = !{!10, !23, i64 64}
!27 = !{!10, !24, i64 72}
!28 = !{!21, !21, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !8, i64 0}
!31 = distinct !{null, null, null}
!32 = !{!10, !6, i64 16}
!33 = !{!10, !6, i64 12}
!34 = !{i64 0, i64 2, !35, i64 2, i64 2, !35, i64 4, i64 2, !35}
!35 = !{!13, !13, i64 0}
!36 = !{!10, !6, i64 20}
!37 = !{!10, !13, i64 38}
!38 = !{!10, !13, i64 40}
!39 = !{!10, !13, i64 42}
!40 = !{!10, !13, i64 44}
!41 = !{!10, !13, i64 46}
!42 = !{!10, !13, i64 48}
!43 = !{!10, !6, i64 0}
!44 = !{!10, !6, i64 4}
!45 = !{!10, !6, i64 8}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZSt11make_uniqueI20MapGridNodeContainerJP10PathfinderEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!48 = distinct !{!48, !"_ZSt11make_uniqueI20MapGridNodeContainerJP10PathfinderEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!49 = !{!50, !52, i64 0}
!50 = !{!"_ZTSSt15_Rb_tree_header", !51, i64 0, !54, i64 32}
!51 = !{!"_ZTSSt18_Rb_tree_node_base", !52, i64 0, !53, i64 8, !53, i64 16, !53, i64 24}
!52 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!53 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!54 = !{!"long", !7, i64 0}
!55 = !{!50, !53, i64 8}
!56 = !{!50, !53, i64 16}
!57 = !{!50, !53, i64 24}
!58 = !{!50, !54, i64 32}
!59 = !{!60, !61, i64 8}
!60 = !{!"_ZTS17GridNodeContainer", !61, i64 8}
!61 = !{!"p1 _ZTS10Pathfinder", !22, i64 0}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZSt11make_uniqueI22ArrayGridNodeContainerJP10PathfinderRN4core8vector3dIsEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!64 = distinct !{!64, !"_ZSt11make_uniqueI22ArrayGridNodeContainerJP10PathfinderRN4core8vector3dIsEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!65 = !{!66, !67, i64 8}
!66 = !{!"_ZTSNSt12_Vector_baseI15ContentFeaturesSaIS0_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!67 = !{!"p1 _ZTS15ContentFeatures", !22, i64 0}
!68 = !{!66, !67, i64 0}
!69 = !{!70, !54, i64 8}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !71, i64 0, !54, i64 8, !7, i64 16}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !72, i64 0}
!72 = !{!"p1 omnipotent char", !22, i64 0}
!73 = !{!74, !11, i64 1403}
!74 = !{!"_ZTS15ContentFeatures", !11, i64 0, !11, i64 1, !11, i64 2, !11, i64 3, !70, i64 8, !75, i64 40, !83, i64 96, !84, i64 97, !85, i64 98, !70, i64 104, !82, i64 136, !7, i64 144, !7, i64 528, !7, i64 912, !86, i64 1296, !87, i64 1300, !70, i64 1304, !7, i64 1336, !7, i64 1337, !88, i64 1344, !93, i64 1368, !87, i64 1392, !11, i64 1396, !7, i64 1397, !7, i64 1398, !11, i64 1399, !11, i64 1400, !7, i64 1401, !11, i64 1402, !11, i64 1403, !98, i64 1404, !11, i64 1405, !11, i64 1406, !11, i64 1407, !11, i64 1408, !6, i64 1412, !70, i64 1416, !7, i64 1448, !99, i64 1449, !11, i64 1450, !70, i64 1456, !13, i64 1488, !70, i64 1496, !13, i64 1528, !7, i64 1530, !11, i64 1531, !7, i64 1532, !7, i64 1533, !11, i64 1534, !100, i64 1536, !100, i64 1656, !100, i64 1776, !114, i64 1896, !114, i64 1952, !114, i64 2008, !11, i64 2064, !11, i64 2065}
!75 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !76, i64 0}
!76 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !77, i64 0, !54, i64 8, !79, i64 16, !54, i64 24, !81, i64 32, !80, i64 48}
!77 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !78, i64 0}
!78 = !{!"any p2 pointer", !22, i64 0}
!79 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !80, i64 0}
!80 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !22, i64 0}
!81 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !82, i64 0, !54, i64 8}
!82 = !{!"float", !7, i64 0}
!83 = !{!"_ZTS16ContentParamType", !7, i64 0}
!84 = !{!"_ZTS17ContentParamType2", !7, i64 0}
!85 = !{!"_ZTS12NodeDrawType", !7, i64 0}
!86 = !{!"_ZTS9AlphaMode", !7, i64 0}
!87 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!88 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !89, i64 0}
!89 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !90, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !91, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!92 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!93 = !{!"_ZTSSt6vectorItSaItEE", !94, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseItSaItEE", !95, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !96, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!97 = !{!"p1 short", !22, i64 0}
!98 = !{!"_ZTS16PointabilityType", !7, i64 0}
!99 = !{!"_ZTS10LiquidType", !7, i64 0}
!100 = !{!"_ZTS7NodeBox", !101, i64 0, !102, i64 8, !107, i64 32, !107, i64 56, !107, i64 80, !109, i64 104}
!101 = !{!"_ZTS11NodeBoxType", !7, i64 0}
!102 = !{!"_ZTSSt6vectorIN4core8aabbox3dIfEESaIS2_EE", !103, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE", !104, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE12_Vector_implE", !105, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!106 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !22, i64 0}
!107 = !{!"_ZTSN4core8aabbox3dIfEE", !108, i64 0, !108, i64 12}
!108 = !{!"_ZTSN4core8vector3dIfEE", !82, i64 0, !82, i64 4, !82, i64 8}
!109 = !{!"_ZTSSt10shared_ptrI16NodeBoxConnectedE", !110, i64 0}
!110 = !{!"_ZTSSt12__shared_ptrI16NodeBoxConnectedLN9__gnu_cxx12_Lock_policyE2EE", !111, i64 0, !112, i64 8}
!111 = !{!"p1 _ZTS16NodeBoxConnected", !22, i64 0}
!112 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !113, i64 0}
!113 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!114 = !{!"_ZTS9SoundSpec", !70, i64 0, !82, i64 32, !82, i64 36, !82, i64 40, !82, i64 44, !11, i64 48, !11, i64 49}
!115 = !{i8 0, i8 2}
!116 = !{}
!117 = !{!118, !119, i64 0}
!118 = !{!"_ZTS9LogStream", !119, i64 0, !120, i64 8, !126, i64 368, !127, i64 432, !127, i64 704, !128, i64 976, !128, i64 984}
!119 = !{!"p1 _ZTS9LogTarget", !22, i64 0}
!120 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !121, i64 0, !124, i64 64, !6, i64 96, !7, i64 100}
!121 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !122, i64 56}
!122 = !{!"_ZTSSt6locale", !123, i64 0}
!123 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!124 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !125, i64 0, !22, i64 24}
!125 = !{!"_ZTSSt14_Function_base", !7, i64 0, !22, i64 16}
!126 = !{!"_ZTS17DummyStreamBuffer", !121, i64 0}
!127 = !{!"_ZTSSo"}
!128 = !{!"_ZTS11StreamProxy", !129, i64 0}
!129 = !{!"p1 _ZTSSo", !22, i64 0}
!130 = !{i64 8}
!131 = distinct !{null}
!132 = !{!72, !72, i64 0}
!133 = !{!128, !129, i64 0}
!134 = !{!135, !137, i64 32}
!135 = !{!"_ZTSSt8ios_base", !54, i64 8, !54, i64 16, !136, i64 24, !137, i64 28, !137, i64 32, !138, i64 40, !139, i64 48, !7, i64 64, !6, i64 192, !140, i64 200, !122, i64 208}
!136 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!137 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!138 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!139 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !54, i64 8}
!140 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!141 = !{!142, !144, i64 240}
!142 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !135, i64 0, !129, i64 216, !7, i64 224, !11, i64 225, !143, i64 232, !144, i64 240, !145, i64 248, !146, i64 256}
!143 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!144 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!145 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!146 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!147 = !{!148, !7, i64 56}
!148 = !{!"_ZTSSt5ctypeIcE", !149, i64 0, !150, i64 16, !11, i64 24, !151, i64 32, !151, i64 40, !97, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!149 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!150 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!151 = !{!"p1 int", !22, i64 0}
!152 = !{!7, !7, i64 0}
!153 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!154 = !{!12, !13, i64 0}
!155 = !{!12, !13, i64 2}
!156 = !{!12, !13, i64 4}
!157 = !{ptr @_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE}
!158 = !{!159, !11, i64 0}
!159 = !{!"_ZTS12PathGridnode", !11, i64 0, !11, i64 1, !11, i64 2, !6, i64 4, !6, i64 8, !12, i64 12, !12, i64 18, !7, i64 24, !11, i64 88, !11, i64 89, !11, i64 90, !7, i64 91}
!160 = !{!159, !11, i64 1}
!161 = !{!159, !11, i64 2}
!162 = !{!159, !6, i64 4}
!163 = distinct !{null}
!164 = !{!165, !166, i64 8}
!165 = !{!"_ZTSNSt12_Vector_baseIN4core8vector3dIsEESaIS2_EE17_Vector_impl_dataE", !166, i64 0, !166, i64 8, !166, i64 16}
!166 = !{!"p1 _ZTSN4core8vector3dIsEE", !22, i64 0}
!167 = !{!165, !166, i64 0}
!168 = !{!165, !166, i64 16}
!169 = !{!170, !172}
!170 = distinct !{!170, !171, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!171 = distinct !{!171, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_"}
!172 = distinct !{!172, !171, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!173 = distinct !{!173, !174}
!174 = !{!"llvm.loop.mustprogress"}
!175 = distinct !{!175, !174}
!176 = !{!177, !11, i64 0}
!177 = !{!"_ZTS8PathCost", !11, i64 0, !6, i64 4, !6, i64 8, !11, i64 12}
!178 = !{!6, !6, i64 0}
!179 = !{!177, !11, i64 12}
!180 = !{!159, !6, i64 8}
!181 = !{!159, !11, i64 88}
!182 = !{!159, !11, i64 89}
!183 = !{!159, !11, i64 90}
!184 = !{!159, !7, i64 91}
!185 = !{!177, !6, i64 8}
!186 = !{!177, !6, i64 4}
!187 = !{!14, !13, i64 0}
!188 = !{!14, !13, i64 2}
!189 = !{!14, !13, i64 4}
!190 = !{!14, !13, i64 10}
!191 = distinct !{!191, !174}
!192 = distinct !{!192, !174}
!193 = !{!194, !6, i64 16}
!194 = !{!"_ZTS22ArrayGridNodeContainer", !60, i64 0, !6, i64 16, !6, i64 20, !195, i64 24}
!195 = !{!"_ZTSSt6vectorI12PathGridnodeSaIS0_EE", !196, i64 0}
!196 = !{!"_ZTSSt12_Vector_baseI12PathGridnodeSaIS0_EE", !197, i64 0}
!197 = !{!"_ZTSNSt12_Vector_baseI12PathGridnodeSaIS0_EE12_Vector_implE", !198, i64 0}
!198 = !{!"_ZTSNSt12_Vector_baseI12PathGridnodeSaIS0_EE17_Vector_impl_dataE", !199, i64 0, !199, i64 8, !199, i64 16}
!199 = !{!"p1 _ZTS12PathGridnode", !22, i64 0}
!200 = !{!194, !6, i64 20}
!201 = distinct !{!201, !174}
!202 = distinct !{!202, !174}
!203 = distinct !{!203, !174}
!204 = !{!198, !199, i64 0}
!205 = !{!198, !199, i64 16}
!206 = !{!53, !53, i64 0}
!207 = distinct !{!207, !174}
!208 = !{!166, !166, i64 0}
!209 = distinct !{!209, !174}
!210 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null, null}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN12PathGridnode7getCostEN4core8vector3dIsEE: argument 0"}
!213 = distinct !{!213, !"_ZN12PathGridnode7getCostEN4core8vector3dIsEE"}
!214 = !{!61, !61, i64 0}
!215 = !{!10, !13, i64 32}
!216 = !{!10, !13, i64 36}
!217 = distinct !{!217, !174}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZN12PathGridnode7getCostEN4core8vector3dIsEE: argument 0"}
!220 = distinct !{!220, !"_ZN12PathGridnode7getCostEN4core8vector3dIsEE"}
!221 = !{!222, !224}
!222 = distinct !{!222, !223, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!223 = distinct !{!223, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_"}
!224 = distinct !{!224, !223, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!225 = !{!226, !228}
!226 = distinct !{!226, !227, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!227 = distinct !{!227, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_"}
!228 = distinct !{!228, !227, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!229 = !{!230, !232}
!230 = distinct !{!230, !231, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!231 = distinct !{!231, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_"}
!232 = distinct !{!232, !231, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!233 = distinct !{null, null, null, null, ptr @_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE}
!234 = distinct !{!234, !174}
!235 = !{ptr @_ZN22ArrayGridNodeContainerD2Ev}
!236 = !{ptr @_ZN20MapGridNodeContainerD2Ev}
!237 = !{!51, !53, i64 24}
!238 = !{!51, !53, i64 16}
!239 = distinct !{!239, !174}
!240 = !{!198, !199, i64 8}
!241 = distinct !{!241, !174}
!242 = distinct !{!242, !174}
!243 = distinct !{!243, !174}
!244 = distinct !{null, null, ptr @_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE}
!245 = distinct !{!245, !174}
!246 = distinct !{null, null, null, ptr @_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE}
end_hunk_0

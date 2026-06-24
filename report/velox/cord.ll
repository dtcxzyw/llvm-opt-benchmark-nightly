inline.NumInlined: 1712
inline.NumDeleted: 498
begin_hunk_0_@_ZNK4absl12lts_202401164Cord4FindERKS1_:bb.a
bb.d:                                             ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit16
  %i.w = load i128, ptr %1, align 8
  %i.x = load i128, ptr %2, align 8
  %i.y = icmp ne i128 %i.w, %i.x
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN4absl12lts_20240116eqERKNS0_4CordES3_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.b, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !22
  br label %_ZNK4absl12lts_202401164Cord4sizeEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ae = sext i8 %i.a to i64
  %i.af = lshr exact i64 %i.ae, 1
  br label %_ZNK4absl12lts_202401164Cord4sizeEv.exit.i

_ZNK4absl12lts_202401164Cord4sizeEv.exit.i:       ; preds = %bb.g, %bb.f
  %i.ag = phi i64 [ %i.ad, %bb.f ], [ %i.af, %bb.g ] ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !22
  br label %_ZNK4absl12lts_202401164Cord4sizeEv.exit9.i

bb.i:                                             ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit.i
  %i.ak = sext i8 %i.k to i64
  %i.al = lshr exact i64 %i.ak, 1
  br label %_ZNK4absl12lts_202401164Cord4sizeEv.exit9.i

_ZNK4absl12lts_202401164Cord4sizeEv.exit9.i:      ; preds = %bb.i, %bb.h
  %i.am = phi i64 [ %i.aj, %bb.h ], [ %i.al, %bb.i ]
  %.not.i = icmp eq i64 %i.am, %i.ag
  br i1 %.not.i, label %_ZN4absl12lts_20240116eqERKNS0_4CordES3_.exit, label %_ZN4absl12lts_20240116eqERKNS0_4CordES3_.exit.thread42

_ZN4absl12lts_20240116eqERKNS0_4CordES3_.exit:    ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit9.i
  %i.an = tail call noundef zeroext i1 @_ZN4absl12lts_2024011614GenericCompareIbNS0_4CordEEET_RKS2_RKT0_m(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.ag)
  br i1 %i.an, label %_ZN4absl12lts_20240116eqERKNS0_4CordES3_.exit.thread, label %_ZN4absl12lts_20240116eqERKNS0_4CordES3_.exit.thread42

_ZN4absl12lts_20240116eqERKNS0_4CordES3_.exit.thread: ; preds = %bb.d, %_ZN4absl12lts_20240116eqERKNS0_4CordES3_.exit
  tail call void @_ZN4absl12lts_202401164Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.aq

_ZN4absl12lts_20240116eqERKNS0_4CordES3_.exit.thread42: ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit9.i, %_ZN4absl12lts_20240116eqERKNS0_4CordES3_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false), !alias.scope !180
  store i32 -1, ptr %i.ao, align 8, !tbaa !99, !alias.scope !180
  br label %bb.aq

bb.j:                                             ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN4absl12lts_202401164Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %8, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %.sroa.0.0.copyload.i.i = load i64, ptr %8, align 8, !tbaa !25 ; 13 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !128 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZN4absl12lts_202401164Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %9, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i9.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZNK4absl12lts_202401164Cord8FindImplENS1_12CharIteratorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20240116::Cord::CharIterator") align 8 %10, ptr nonnull align 8 poison, ptr noundef nonnull byval(%"class.absl::lts_20240116::Cord::CharIterator") align 8 %9, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %9, ptr noundef nonnull align 8 dereferenceable(152) %10, i64 152, i1 false), !tbaa.struct !165
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.bh = load i64, ptr %i.ap, align 8, !tbaa !101 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = icmp ult i64 %i.bh, %i.j
  %i.bk = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %i.bk, label %.loopexit56, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %11, ptr noundef nonnull align 8 dereferenceable(152) %9, i64 152, i1 false), !tbaa.struct !165
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @_ZN4absl12lts_202401164Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %12, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.bl = load i64, ptr %11, align 8, !tbaa !120  ; 2 uses
  %i.bm = icmp ult i64 %.sroa.0.0.copyload.i.i, %i.bl
  br i1 %i.bm, label %bb.k, label %bb.l, !prof !26

bb.k:                                             ; preds = %.lr.ph
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !121
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.0.0.copyload.i.i
  store ptr %i.bo, ptr %i.at, align 8, !tbaa !121
  %i.bp = sub nuw i64 %i.bl, %.sroa.0.0.copyload.i.i
  store i64 %i.bp, ptr %11, align 8, !tbaa !120
  %i.bq = load i64, ptr %i.as, align 8, !tbaa !101
  %i.br = sub i64 %i.bq, %.sroa.0.0.copyload.i.i
  store i64 %i.br, ptr %i.as, align 8, !tbaa !101
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit

bb.l:                                             ; preds = %.lr.ph
  br i1 %.not.i.i, label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = load i32, ptr %i.aq, align 8, !tbaa !99 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  br i1 %i.bt, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.m
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !105
  %.not4.i.i = icmp eq ptr %i.bw, null
  br i1 %.not4.i.i, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  call void @_ZN4absl12lts_202401164Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %11, i64 noundef %.sroa.0.0.copyload.i.i)
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i: ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i, %bb.m
  store i64 0, ptr %i.as, align 8, !tbaa !101
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit

_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit: ; preds = %bb.k, %bb.n, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i
  %i.bx = load i64, ptr %12, align 8, !tbaa !120  ; 2 uses
  %i.by = icmp ult i64 %.sroa.0.0.copyload.i.i, %i.bx
  br i1 %i.by, label %bb.o, label %bb.p, !prof !26

_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread: ; preds = %bb.l
  %i.bz = load i64, ptr %12, align 8, !tbaa !120  ; 2 uses
  %.not = icmp eq i64 %i.bz, 0
  br i1 %.not, label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit21, label %bb.o, !prof !58

bb.o:                                             ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit
  %i.ca = phi i64 [ %i.bz, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread ], [ %i.bx, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit ]
  %i.cb = load ptr, ptr %i.ax, align 8, !tbaa !121
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sroa.0.0.copyload.i.i
  store ptr %i.cc, ptr %i.ax, align 8, !tbaa !121
  %i.cd = sub nuw i64 %i.ca, %.sroa.0.0.copyload.i.i
  store i64 %i.cd, ptr %12, align 8, !tbaa !120
  %i.ce = load i64, ptr %i.aw, align 8, !tbaa !101
  %i.cf = sub i64 %i.ce, %.sroa.0.0.copyload.i.i
  store i64 %i.cf, ptr %i.aw, align 8, !tbaa !101
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit21

bb.p:                                             ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit
  br i1 %.not.i.i, label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit21, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = load i32, ptr %i.au, align 8, !tbaa !99 ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, -1
  br i1 %i.ch, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i19, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i18

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i19: ; preds = %bb.q
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !105
  %.not4.i.i20 = icmp eq ptr %i.ck, null
  br i1 %.not4.i.i20, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i18, label %bb.r

bb.r:                                             ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i19
  call void @_ZN4absl12lts_202401164Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %12, i64 noundef %.sroa.0.0.copyload.i.i)
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit21

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i18: ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i19, %bb.q
  store i64 0, ptr %i.aw, align 8, !tbaa !101
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit21

_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit21: ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread, %bb.o, %bb.p, %bb.r, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i18
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %7, ptr noundef nonnull align 8 dereferenceable(152) %11, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef nonnull align 8 dereferenceable(152) %12, i64 152, i1 false)
  %i.cl = load i64, ptr %i.ay, align 8, !tbaa !101 ; 2 uses
  %.not14.i = icmp eq i64 %i.cl, 0
  br i1 %.not14.i, label %.loopexit55, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit21
  %.sroa.0.0.copyload.i.i8.pre17.i = load i64, ptr %6, align 8, !tbaa !25 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, %.lr.ph.i
  %i.cm = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.do, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i ]
  %i.cn = phi i64 [ %.sroa.0.0.copyload.i.i8.pre17.i, %.lr.ph.i ], [ %i.dp, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i ] ; 3 uses
  %i.co = phi i64 [ %.sroa.0.0.copyload.i.i8.pre17.i, %.lr.ph.i ], [ %i.dq, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i ] ; 8 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %7, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !128 ; 2 uses
  %i.cp = icmp ult i64 %i.co, %.sroa.0.0.copyload.i.i.i ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.co, i64 %.sroa.0.0.copyload.i.i.i) ; 7 uses
  %i.cq = icmp eq i64 %.sroa.speculated.i, 0      ; 2 uses
  br i1 %i.cq, label %.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.s
  %.sroa.2.0.copyload.i.i10.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i9.i, align 8, !tbaa !128
  %bcmp.i.i = call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.2.0.copyload.i.i10.i, i64 %.sroa.speculated.i)
  %i.cr = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cr, label %13, label %bb.aa

13:                                               ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  br i1 %i.cp, label %bb.t, label %bb.u, !prof !26

.thread.i:                                        ; preds = %bb.s
  br i1 %i.cp, label %bb.t, label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i, !prof !26

bb.t:                                             ; preds = %.thread.i, %13
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 %i.co
  store ptr %i.cs, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !121
  %i.ct = sub nuw i64 %.sroa.0.0.copyload.i.i.i, %i.co
  store i64 %i.ct, ptr %7, align 8, !tbaa !120
  %i.cu = load i64, ptr %i.bb, align 8, !tbaa !101
  %i.cv = sub i64 %i.cu, %i.co
  store i64 %i.cv, ptr %i.bb, align 8, !tbaa !101
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.i

bb.u:                                             ; preds = %13
  %i.cw = load i32, ptr %i.az, align 8, !tbaa !99 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, -1
  br i1 %i.cx, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i: ; preds = %bb.u
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !105
  %.not4.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not4.i.i.i, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i
  call void @_ZN4absl12lts_202401164Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %7, i64 noundef %.sroa.0.0.copyload.i.i.i)
  %.pre.i = load i64, ptr %6, align 8, !tbaa !120
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.i

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i: ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i, %bb.u
  store i64 0, ptr %i.bb, align 8, !tbaa !101
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.i

_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.i: ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i, %bb.v, %bb.t
  %i.db = phi i64 [ %i.cn, %bb.t ], [ %.pre.i, %bb.v ], [ %i.cn, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i ] ; 4 uses
  %i.dc = icmp ult i64 %.sroa.speculated.i, %i.db
  br i1 %i.dc, label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit._crit_edge.i, label %bb.x, !prof !26

_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit._crit_edge.i: ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.i
  %.pre20.i = load i64, ptr %i.ay, align 8, !tbaa !101
  br label %bb.w

_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i: ; preds = %.thread.i
  %14 = icmp ult i64 %.sroa.0.0.copyload.i.i.i, %i.co
  br i1 %14, label %bb.w, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split, !prof !26

bb.w:                                             ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit._crit_edge.i
  %i.dd = phi i64 [ %i.cm, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i ], [ %.pre20.i, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit._crit_edge.i ]
  %i.de = phi i64 [ %i.co, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i ], [ %i.db, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit._crit_edge.i ]
  %i.df = load ptr, ptr %.sroa.2.0..sroa_idx.i.i9.i, align 8, !tbaa !121
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.sroa.speculated.i
  store ptr %i.dg, ptr %.sroa.2.0..sroa_idx.i.i9.i, align 8, !tbaa !121
  %i.dh = sub nuw i64 %i.de, %.sroa.speculated.i  ; 3 uses
  store i64 %i.dh, ptr %6, align 8, !tbaa !120
  %i.di = sub i64 %i.dd, %.sroa.speculated.i      ; 2 uses
  store i64 %i.di, ptr %i.ay, align 8, !tbaa !101
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i

bb.x:                                             ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.i
  br i1 %i.cq, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = load i32, ptr %i.bc, align 8, !tbaa !99 ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, -1
  br i1 %i.dk, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i18.i, label %.loopexit55

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i18.i: ; preds = %bb.y
  %i.dl = zext nneg i32 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !105
  %.not4.i.i19.i = icmp eq ptr %i.dn, null
  br i1 %.not4.i.i19.i, label %.loopexit55, label %bb.z

bb.z:                                             ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i18.i
  call void @_ZN4absl12lts_202401164Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %6, i64 noundef %.sroa.speculated.i)
  %.sroa.0.0.copyload.i.i8.pre.i = load i64, ptr %6, align 8, !tbaa !25 ; 2 uses
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split: ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i, %bb.x, %bb.z
  %.ph = phi i64 [ %i.db, %bb.x ], [ %.sroa.0.0.copyload.i.i8.pre.i, %bb.z ], [ %i.cn, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i ]
  %.ph46 = phi i64 [ %i.db, %bb.x ], [ %.sroa.0.0.copyload.i.i8.pre.i, %bb.z ], [ %i.co, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i ]
  %.pr = load i64, ptr %i.ay, align 8, !tbaa !101
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split, %bb.w
  %i.do = phi i64 [ %.pr, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split ], [ %i.di, %bb.w ] ; 2 uses
  %i.dp = phi i64 [ %.ph, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split ], [ %i.dh, %bb.w ]
  %i.dq = phi i64 [ %.ph46, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split ], [ %i.dh, %bb.w ]
  %.not.i22 = icmp eq i64 %i.do, 0
  br i1 %.not.i22, label %.loopexit55, label %bb.s

.loopexit55:                                      ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit21, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i18.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread50

bb.aa:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.dr = load i64, ptr %9, align 8, !tbaa !120   ; 2 uses
  %i.ds = icmp ugt i64 %i.dr, 1
  br i1 %i.ds, label %bb.ab, label %bb.ac, !prof !26

bb.ab:                                            ; preds = %bb.aa
  %i.dt = load ptr, ptr %i.bg, align 8, !tbaa !121
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store ptr %i.du, ptr %i.bg, align 8, !tbaa !121
  %i.dv = add i64 %i.dr, -1
  store i64 %i.dv, ptr %9, align 8, !tbaa !120
  %i.dw = load i64, ptr %i.ap, align 8, !tbaa !101
  %i.dx = add i64 %i.dw, -1                       ; 2 uses
  store i64 %i.dx, ptr %i.ap, align 8, !tbaa !101
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit26

bb.ac:                                            ; preds = %bb.aa
  %i.dy = load i32, ptr %i.be, align 8, !tbaa !99 ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, -1
  br i1 %i.dz, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i24, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i23

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i24: ; preds = %bb.ac
  %i.ea = zext nneg i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !105
  %.not4.i.i25 = icmp eq ptr %i.ec, null
  br i1 %.not4.i.i25, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i23, label %bb.ad

bb.ad:                                            ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i24
  call void @_ZN4absl12lts_202401164Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %9, i64 noundef 1)
  %.pre = load i64, ptr %i.ap, align 8, !tbaa !161
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit26

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i23: ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i24, %bb.ac
  store i64 0, ptr %i.ap, align 8, !tbaa !101
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit26

_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit26: ; preds = %bb.ab, %bb.ad, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i23
  %i.ed = phi i64 [ %i.dx, %bb.ab ], [ %.pre, %bb.ad ], [ 0, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i23 ] ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.j
  br i1 %i.ee, label %.thread53, label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit26
  %i.ef = icmp eq i64 %i.ed, %i.j
  br i1 %i.ef, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(152) %9, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN4absl12lts_202401164Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(152) %5, i64 152, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !101 ; 2 uses
  %.not14.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not14.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.af
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i9.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.0.0.copyload.i.i8.pre17.i.i = load i64, ptr %3, align 8, !tbaa !25 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i, %.lr.ph.i.i
  %i.en = phi i64 [ %i.eh, %.lr.ph.i.i ], [ %i.fp, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i ]
  %i.eo = phi i64 [ %.sroa.0.0.copyload.i.i8.pre17.i.i, %.lr.ph.i.i ], [ %i.fq, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i ] ; 3 uses
  %i.ep = phi i64 [ %.sroa.0.0.copyload.i.i8.pre17.i.i, %.lr.ph.i.i ], [ %i.fr, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i ] ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %4, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !128 ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %.sroa.0.0.copyload.i.i.i.i ; 2 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.ep, i64 %.sroa.0.0.copyload.i.i.i.i) ; 7 uses
  %i.er = icmp eq i64 %.sroa.speculated.i.i, 0    ; 2 uses
  br i1 %i.er, label %.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.ag
  %.sroa.2.0.copyload.i.i10.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i9.i.i, align 8, !tbaa !128
  %bcmp.i.i.i27 = call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i10.i.i, i64 %.sroa.speculated.i.i)
  %i.es = icmp eq i32 %bcmp.i.i.i27, 0
  br i1 %i.es, label %15, label %_ZN4absl12lts_2024011612_GLOBAL__N_117IsSubcordInCordAtENS0_4Cord12CharIteratorERKS2_.exit

15:                                               ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  br i1 %i.eq, label %bb.ah, label %bb.ai, !prof !26

.thread.i.i:                                      ; preds = %bb.ag
  br i1 %i.eq, label %bb.ah, label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i.i, !prof !26

bb.ah:                                            ; preds = %.thread.i.i, %15
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %i.ep
  store ptr %i.et, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !121
  %i.eu = sub nuw i64 %.sroa.0.0.copyload.i.i.i.i, %i.ep
  store i64 %i.eu, ptr %4, align 8, !tbaa !120
  %i.ev = load i64, ptr %i.ek, align 8, !tbaa !101
  %i.ew = sub i64 %i.ev, %i.ep
  store i64 %i.ew, ptr %i.ek, align 8, !tbaa !101
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.i.i

bb.ai:                                            ; preds = %15
  %i.ex = load i32, ptr %i.ei, align 8, !tbaa !99 ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, -1
  br i1 %i.ey, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i.i, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i.i: ; preds = %bb.ai
  %i.ez = zext nneg i32 %i.ex to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !105
  %.not4.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not4.i.i.i.i, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i.i
  call void @_ZN4absl12lts_202401164Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %4, i64 noundef %.sroa.0.0.copyload.i.i.i.i)
  %.pre.i.i = load i64, ptr %3, align 8, !tbaa !120
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.i.i

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i: ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i.i, %bb.ai
  store i64 0, ptr %i.ek, align 8, !tbaa !101
  br label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.i.i

_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.i.i: ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i, %bb.aj, %bb.ah
  %i.fc = phi i64 [ %i.eo, %bb.ah ], [ %.pre.i.i, %bb.aj ], [ %i.eo, %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.fd = icmp ult i64 %.sroa.speculated.i.i, %i.fc
  br i1 %i.fd, label %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit._crit_edge.i.i, label %bb.al, !prof !26

_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit._crit_edge.i.i: ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.i.i
  %.pre20.i.i = load i64, ptr %i.eg, align 8, !tbaa !101
  br label %bb.ak

_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i.i: ; preds = %.thread.i.i
  %16 = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i, %i.ep
  br i1 %16, label %bb.ak, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split.i, !prof !26

bb.ak:                                            ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i.i, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit._crit_edge.i.i
  %i.fe = phi i64 [ %i.en, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i.i ], [ %.pre20.i.i, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit._crit_edge.i.i ]
  %i.ff = phi i64 [ %i.ep, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i.i ], [ %i.fc, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit._crit_edge.i.i ]
  %i.fg = load ptr, ptr %.sroa.2.0..sroa_idx.i.i9.i.i, align 8, !tbaa !121
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.sroa.speculated.i.i
  store ptr %i.fh, ptr %.sroa.2.0..sroa_idx.i.i9.i.i, align 8, !tbaa !121
  %i.fi = sub nuw i64 %i.ff, %.sroa.speculated.i.i ; 3 uses
  store i64 %i.fi, ptr %3, align 8, !tbaa !120
  %i.fj = sub i64 %i.fe, %.sroa.speculated.i.i    ; 2 uses
  store i64 %i.fj, ptr %i.eg, align 8, !tbaa !101
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i

bb.al:                                            ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.i.i
  br i1 %i.er, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fk = load i32, ptr %i.el, align 8, !tbaa !99 ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, -1
  br i1 %i.fl, label %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i18.i.i, label %.loopexit

_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i18.i.i: ; preds = %bb.am
  %i.fm = zext nneg i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !105
  %.not4.i.i19.i.i = icmp eq ptr %i.fo, null
  br i1 %.not4.i.i19.i.i, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i18.i.i
  call void @_ZN4absl12lts_202401164Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %3, i64 noundef %.sroa.speculated.i.i)
  %.sroa.0.0.copyload.i.i8.pre.i.i = load i64, ptr %3, align 8, !tbaa !25 ; 2 uses
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split.i: ; preds = %bb.an, %bb.al, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i.i
  %.ph.i = phi i64 [ %i.fc, %bb.al ], [ %.sroa.0.0.copyload.i.i8.pre.i.i, %bb.an ], [ %i.eo, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i.i ]
  %.ph4.i = phi i64 [ %i.fc, %bb.al ], [ %.sroa.0.0.copyload.i.i8.pre.i.i, %bb.an ], [ %i.ep, %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread.i.i ]
  %.pr.i = load i64, ptr %i.eg, align 8, !tbaa !101
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split.i, %bb.ak
  %i.fp = phi i64 [ %.pr.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split.i ], [ %i.fj, %bb.ak ] ; 2 uses
  %i.fq = phi i64 [ %.ph.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split.i ], [ %i.fi, %bb.ak ]
  %i.fr = phi i64 [ %.ph4.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.ithread-pre-split.i ], [ %i.fi, %bb.ak ]
  %.not.i.i28 = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i28, label %.loopexit, label %bb.ag

_ZN4absl12lts_2024011612_GLOBAL__N_117IsSubcordInCordAtENS0_4Cord12CharIteratorERKS2_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.thread53

.loopexit:                                        ; preds = %_ZNK4absl12lts_2024011613cord_internal18CordRepBtreeReadercvbEv.exit.i.i18.i.i, %bb.am, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.thread50

.thread50:                                        ; preds = %.loopexit55, %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %9, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.ap

.thread53:                                        ; preds = %_ZN4absl12lts_202401164Cord7AdvanceEPNS1_12CharIteratorEm.exit26, %_ZN4absl12lts_2024011612_GLOBAL__N_117IsSubcordInCordAtENS0_4Cord12CharIteratorERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.loopexit56

bb.ao:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZNK4absl12lts_202401164Cord8FindImplENS1_12CharIteratorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20240116::Cord::CharIterator") align 8 %10, ptr nonnull align 8 poison, ptr noundef nonnull byval(%"class.absl::lts_20240116::Cord::CharIterator") align 8 %9, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %9, ptr noundef nonnull align 8 dereferenceable(152) %10, i64 152, i1 false), !tbaa.struct !165
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.fs = load i64, ptr %i.ap, align 8, !tbaa !101 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 0
  %i.fu = icmp ult i64 %i.fs, %i.j
  %i.fv = select i1 %i.ft, i1 true, i1 %i.fu
  br i1 %i.fv, label %.loopexit56, label %.lr.ph

.loopexit56:                                      ; preds = %bb.ao, %bb.j, %.thread53
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false), !alias.scope !183
  store i32 -1, ptr %i.fw, align 8, !tbaa !99, !alias.scope !183
  br label %bb.ap

bb.ap:                                            ; preds = %.thread50, %.loopexit56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.c, %bb.ap, %_ZN4absl12lts_20240116eqERKNS0_4CordES3_.exit.thread42, %_ZN4absl12lts_20240116eqERKNS0_4CordES3_.exit.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_202401164Cord8ContainsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.absl::lts_20240116::Cord::CharIterator", align 8 ; 4 uses
  %i.a = icmp eq i64 %1, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK4absl12lts_202401164Cord4FindESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20240116::Cord::CharIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !101
  %i.d = icmp ne i64 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ true, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_202401164Cord8ContainsERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::Cord::CharIterator", align 8 ; 4 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !14      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  br label %_ZNK4absl12lts_202401164Cord5emptyEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl12lts_202401164Cord5emptyEv.exit

_ZNK4absl12lts_202401164Cord5emptyEv.exit:        ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.i = icmp eq i64 %i.h, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_202401164Cord5emptyEv.exit
  call void @_ZNK4absl12lts_202401164Cord4FindERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20240116::Cord::CharIterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !101
  %i.l = icmp ne i64 %i.k, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4absl12lts_202401164Cord5emptyEv.exit
  %i.m = phi i1 [ true, %_ZNK4absl12lts_202401164Cord5emptyEv.exit ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN4absl12lts_202401164Cord15FlattenSlowPathEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20240116::cord_internal::CordzUpdateScope", align 8 ; 6 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !14      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  br label %_ZNK4absl12lts_202401164Cord4sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl12lts_202401164Cord4sizeEv.exit

_ZNK4absl12lts_202401164Cord4sizeEv.exit:         ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 8 uses
  %i.i = icmp ult i64 %i.h, 4084
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.h, i64 19)
  %i.k = icmp samesign ult i64 %i.h, 500          ; 2 uses
  %.neg.i.i = select i1 %i.k, i64 -8, i64 -64
  %i.l = select i1 %i.k, i64 8, i64 64
  %i.m = add nuw nsw i64 %i.j, 12
  %i.n = add nuw nsw i64 %i.m, %i.l
  %i.o = and i64 %i.n, %.neg.i.i                  ; 3 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 2, ptr %i.r, align 8, !tbaa !15
  %i.s = icmp samesign ult i64 %i.o, 513          ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.s, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.s, i64 2, i64 58
  %i.t = lshr i64 %i.o, %.sink6.i.i.i.i
  %i.u = add nuw nsw i64 %i.t, %.sink5.i.i.i.i
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i8 %i.v, ptr %i.w, align 4, !tbaa !23
  store i64 %i.h, ptr %i.p, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 13 ; 2 uses
  tail call void @_ZNK4absl12lts_202401164Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x)
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4absl12lts_202401164Cord4sizeEv.exit
  %i.y = icmp slt i64 %i.h, 0
  br i1 %i.y, label %.noexc, label %_ZNSaIcE8allocateEm.exit, !prof !58

.noexc:                                           ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSaIcE8allocateEm.exit:                         ; preds = %bb.e
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 3 uses
  tail call void @_ZNK4absl12lts_202401164Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.z)
  %i.aa = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 2, ptr %i.ab, align 4, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @"_ZN4absl12lts_2024011613cord_internal19CordRepExternalImplIZNS0_4Cord15FlattenSlowPathEvE3$_0E7ReleaseEPNS1_15CordRepExternalE", ptr %i.ac, align 8, !tbaa !17
  store i64 %i.h, ptr %i.aa, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i8 5, ptr %i.ad, align 4, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.z, ptr %i.ae, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %_ZNSaIcE8allocateEm.exit, %bb.d
  %.017 = phi ptr [ %i.p, %bb.d ], [ %i.aa, %_ZNSaIcE8allocateEm.exit ] ; 2 uses
  %.016 = phi ptr [ %i.x, %bb.d ], [ %i.z, %_ZNSaIcE8allocateEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.af = load i64, ptr %0, align 8, !tbaa !14
  %i.ag = add nsw i64 %i.af, -1                   ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  store ptr %i.ah, ptr %1, align 8, !tbaa !34
end_hunk_0

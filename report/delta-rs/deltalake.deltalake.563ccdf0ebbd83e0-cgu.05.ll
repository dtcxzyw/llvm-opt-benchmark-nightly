inline.NumInlined: 6674
inline.NumDeleted: 2611
begin_hunk_0_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs7p2uQeJxui2_9deltalake:bb.a
bb.oz:                                            ; preds = %bb.oy, %bb.ox, %bb.ff
  %i.akv = getelementptr inbounds nuw i8, ptr %1, i64 2722
  store i8 0, ptr %i.akv, align 2, !noalias !10816
  br label %bb.pc

bb.pa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext12set_variable0ECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.akw = getelementptr inbounds nuw i8, ptr %1, i64 2064 ; 2 uses
  %i.akx = load i64, ptr %i.akw, align 16, !range !4355, !noalias !10816, !noundef !4 ; 3 uses
  %i.aky = icmp ne i64 %i.akx, 31
  call void @llvm.assume(i1 %i.aky)
  %i.akz = add nsw i64 %i.akx, -11
  %i.ala = icmp samesign ugt i64 %i.akx, 10
  %i.alb = select i1 %i.ala, i64 %i.akz, i64 20
  switch i64 %i.alb, label %bb.pb [
    i64 13, label %bb.ou
    i64 20, label %bb.ou
  ]

bb.pb:                                            ; preds = %bb.pa
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(320) %i.akw) #37
          to label %bb.ou unwind label %bb.eh, !noalias !10820

.thread107.i:                                     ; preds = %bb.oo, %bb.kn, %bb.kh, %bb.ka, %bb.ju, %bb.jo, %bb.jh, %bb.ja, %bb.iu, %bb.io, %bb.ig
  %i.alc = phi ptr [ %i.aab, %bb.ig ], [ %i.aaw, %bb.io ], [ %i.abf, %bb.iu ], [ %i.abo, %bb.ja ], [ %i.aca, %bb.jh ], [ %i.acm, %bb.jo ], [ %i.acv, %bb.ju ], [ %i.ade, %bb.ka ], [ %i.adr, %bb.kh ], [ %i.aea, %bb.kn ], [ %i.ahu, %bb.oo ]
  %i.ald = phi ptr [ %i.aad, %bb.ig ], [ %i.aay, %bb.io ], [ %i.abh, %bb.iu ], [ %i.abq, %bb.ja ], [ %i.acc, %bb.jh ], [ %i.aco, %bb.jo ], [ %i.acx, %bb.ju ], [ %i.adg, %bb.ka ], [ %i.adt, %bb.kh ], [ %i.aec, %bb.kn ], [ %i.ahw, %bb.oo ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.ig ], [ 4, %bb.io ], [ 5, %bb.iu ], [ 6, %bb.ja ], [ 7, %bb.jh ], [ 8, %bb.jo ], [ 9, %bb.ju ], [ 10, %bb.ka ], [ 11, %bb.kh ], [ 12, %bb.kn ], [ 14, %bb.oo ]
  store i8 %.sink.i.ph.i, ptr %i.ald, align 16, !noalias !10816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3272.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !10697
  br label %bb.pd

bb.pc:                                            ; preds = %bb.oz, %bb.oq
  %i.ale = phi ptr [ %i.ug, %bb.oq ], [ %i.uv, %bb.oz ] ; 3 uses
  %i.alf = phi ptr [ %i.uh, %bb.oq ], [ %i.uw, %bb.oz ]
  %i.alg = phi ptr [ %i.ui, %bb.oq ], [ %i.ux, %bb.oz ]
  %i.alh = phi ptr [ %i.uj, %bb.oq ], [ %i.uy, %bb.oz ]
  %.sroa.080.0.copyload81.i = phi i64 [ %.sroa.080.0.copyload81.pre.i, %bb.oq ], [ 36, %bb.oz ] ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 2723
  store i8 0, ptr %i.ali, align 1, !noalias !10816
  %.sroa.18.0..sroa_idx82.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.18.sroa.0.0.copyload.i = load i64, ptr %.sroa.18.0..sroa_idx82.i, align 8, !noalias !11100
  %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx82.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx82.sroa_idx.i, i64 32, i1 false), !noalias !11100
  %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx82.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.18.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx82.sroa_idx.i, i64 288, i1 false), !noalias !11100
  store i8 1, ptr %i.alg, align 16, !noalias !10816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3272.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !10697
  %i.alj = icmp eq i64 %.sroa.080.0.copyload81.i, 37
  br i1 %i.alj, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc, %.thread107.i
  %i.alk = phi ptr [ %i.ale, %bb.pc ], [ %i.alc, %.thread107.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.sroa.7.i)
  br label %bb.pi

bb.pe:                                            ; preds = %bb.pc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.786.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.sroa.6.i, i64 32, i1 false), !noalias !10697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.887.i, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.18.sroa.7.i, i64 288, i1 false), !noalias !10697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.sroa.7.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext20execute_logical_plan0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 16 %i.alh)
          to label %bb.ph unwind label %bb.pf, !noalias !10701

bb.pf:                                            ; preds = %bb.pe
  %i.all = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.pg:                                            ; preds = %bb.dd
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 2800
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(320) %i.alm) #37
          to label %bb.db unwind label %bb.dg, !noalias !10701

bb.ph:                                            ; preds = %bb.da, %bb.de, %bb.pe
  %i.aln = phi ptr [ %i.qn, %bb.de ], [ %i.qn, %bb.da ], [ %i.ale, %bb.pe ]
  %.sroa.083.1.i = phi i64 [ 36, %bb.de ], [ 36, %bb.da ], [ %.sroa.080.0.copyload81.i, %bb.pe ]
  %.sroa.484.1.i = phi i64 [ %.sroa.433.i.sroa.0.0.i, %bb.de ], [ %i.qx, %bb.da ], [ %.sroa.18.sroa.0.0.copyload.i, %bb.pe ]
  %i.alo = getelementptr inbounds nuw i8, ptr %1, i64 1731
  store i8 0, ptr %i.alo, align 1, !noalias !10697
  store i64 %.sroa.083.1.i, ptr %0, align 16, !alias.scope !10701, !noalias !11108
  %.sroa.484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.484.1.i, ptr %.sroa.484.0..sroa_idx.i, align 8, !alias.scope !10701, !noalias !11108
  %.sroa.786.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.786.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.786.i, i64 32, i1 false), !noalias !11108
  %.sroa.887.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.887.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.887.i, i64 288, i1 false), !noalias !11108
  store i8 1, ptr %i.aln, align 4, !noalias !10697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.786.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.887.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663.i)
  br label %common.ret

common.ret:                                       ; preds = %bb.ph, %bb.pi
  %storemerge = phi i8 [ 3, %bb.pi ], [ 1, %bb.ph ]
  store i8 %storemerge, ptr %i.ce, align 8
  ret void

bb.pi:                                            ; preds = %bb.ct, %bb.pd
  %i.alp = phi ptr [ %i.ql, %bb.ct ], [ %i.alk, %bb.pd ]
  %.sink.i.ph = phi i8 [ 3, %bb.ct ], [ 4, %bb.pd ]
  store i8 %.sink.i.ph, ptr %i.alp, align 4, !noalias !10697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.786.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.887.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663.i)
  store i64 37, ptr %0, align 16
  br label %common.ret

bb.pj:                                            ; preds = %.body
  %i.alq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !1680, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !11109, !noundef !4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #40
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 128
  %i.j = load atomic i64, ptr %i.f seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = add i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !noundef !4
  %i.p = xor i64 %i.o, -1
  %i.q = and i64 %i.i, %i.p
  %i.r = icmp eq i64 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = cmpxchg ptr %i.s, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = load atomic i64, ptr %i.h seq_cst, align 128
  %i.v = load i64, ptr %i.n, align 16, !noundef !4
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !1680, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !range !11110, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ac, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.af, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ag = load atomic i64, ptr %i.ae acquire, align 8 ; 3 uses
  switch i64 %i.ag, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ah = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.ai = extractvalue { i64, i32 } %i.ah, 0      ; 3 uses
  %i.aj = extractvalue { i64, i32 } %i.ah, 1      ; 2 uses
  %i.ak = icmp eq i64 %i.ai, %i.aa
  %i.al = icmp slt i64 %i.ai, %i.aa
  %i.am = icmp samesign ult i32 %i.aj, %i.ac
  %spec.select.i3 = select i1 %i.ak, i1 %i.am, i1 %i.al
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = cmpxchg ptr %i.ae, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.an, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.an, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3)
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aa, i32 noundef range(i32 0, 1000000001) %i.ac, i64 noundef %i.ai, i32 noundef %i.aj) ; 2 uses
  %i.ap = extractvalue { i64, i32 } %i.ao, 0
  %i.aq = extractvalue { i64, i32 } %i.ao, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, i64 noundef %i.ap, i32 noundef %i.aq)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.af, %.split.us.i ], [ %i.af, %.split.us.i ], [ %i.ag, %.split.i ], [ %i.ag, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !11111

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #41
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #40
  %i.ar = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !1649

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11121)
  %i.as = load ptr, ptr %i.b, align 8, !alias.scope !11124, !nonnull !4, !noundef !4
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !11124
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #38
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !1680, !noundef !4
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !11109, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 2 uses
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register(ptr noundef nonnull align 8 %i.g, i64 noundef %i.d, ptr %.0.val) #40
  %i.h = load atomic i64, ptr %i.f seq_cst, align 128
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 400 ; 2 uses
  %i.l = load i64, ptr %i.k, align 16, !noundef !4
  %i.m = xor i64 %i.l, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.q = cmpxchg ptr %i.p, i64 0, i64 1 acq_rel acquire, align 8 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = load atomic i64, ptr %i.i seq_cst, align 128
  %i.s = load i64, ptr %i.k, align 16, !noundef !4
  %i.t = and i64 %i.s, %i.r
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !1680, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !11110, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d, %bb.e
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ac, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.e
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.e:                                             ; preds = %.split.us.i
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa)
  br label %.split.us.i

.split.i:                                         ; preds = %bb.d, %bb.h
  %i.ad = load atomic i64, ptr %i.ab acquire, align 8 ; 3 uses
  switch i64 %i.ad, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread [
    i64 0, label %bb.f
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ]

bb.f:                                             ; preds = %.split.i
  %i.ae = tail call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.af = extractvalue { i64, i32 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.x
  %i.ai = icmp slt i64 %i.af, %i.x
  %i.aj = icmp samesign ult i32 %i.ag, %i.z
  %spec.select.i3 = select i1 %i.ah, i1 %i.aj, i1 %i.ai
  br i1 %spec.select.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ak, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.ak, 0
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3)
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit

bb.h:                                             ; preds = %bb.f
  %i.al = tail call { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.af, i32 noundef %i.ag) ; 2 uses
  %i.am = extractvalue { i64, i32 } %i.al, 0
  %i.an = extractvalue { i64, i32 } %i.al, 1
  tail call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, i64 noundef %i.am, i32 noundef %i.an)
  br label %.split.i

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit: ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.g
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.g ], [ %i.ac, %.split.us.i ], [ %i.ac, %.split.us.i ], [ %i.ad, %.split.i ], [ %i.ad, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 2, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
    i64 3, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  ], !prof !11111

bb.i:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #41
  unreachable

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3: ; preds = %bb.g, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10unregister(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d) #40
  %i.ao = load ptr, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !1649

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  ret void

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11134)
  %i.ap = load ptr, ptr %i.b, align 8, !alias.scope !11137, !nonnull !4, !noundef !4
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !11137
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #38
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread

bb.m:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread3
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #41
  unreachable
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !11143 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !11143 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !11143 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !11143 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19
  %i.s = load i8, ptr %i.q, align 1, !noundef !4
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %.not21.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs7p2uQeJxui2_9deltalake.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.09.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.08.030.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.04.029.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.029.i, align 1, !alias.scope !11138, !noalias !11141
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.030.i, align 1, !alias.scope !11141, !noalias !11138
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.029.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.030.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !11138, !noalias !11141
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !11141, !noalias !11138
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.09, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBa_5table13TableProvider14scan_with_args0Cs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !602, !noundef !4
  switch i8 %i.d, label %default.unreachable53 [
    i8 0, label %bb.b
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.o
  ]
end_hunk_0

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
  %i.an = cmpxchg ptr %i.ae, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.an                 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %.fr, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %.fr, 0
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
  %i.ak = cmpxchg ptr %i.ab, i64 0, i64 1 acq_rel acquire, align 8
  %.fr = freeze { i64, i1 } %i.ak                 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %.fr, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %.fr, 0
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
begin_hunk_1_@_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCINvMNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_threadNtB12_13CurrentThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2E_13RawDeltaTable16cleanup_metadata0s_0E00ENtNtB7_6future6Future4pollB2E_:bb.a
bb.fn:                                            ; preds = %bb.fl
  %i.sq = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sg
  %i.sr = load i8, ptr %i.sq, align 1, !alias.scope !12457, !noalias !12460, !noundef !4
  %i.ss = icmp sgt i8 %i.sr, -65
  br i1 %i.ss, label %bb.fo, label %bb.gc

bb.fo:                                            ; preds = %bb.fn, %bb.fm, %bb.fi
  %i.st = sub i64 %i.se, %i.sb                    ; 5 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sf ; 3 uses
  switch i64 %i.st, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.fp
  ]

bb.fp:                                            ; preds = %bb.fo
  %i.sv = load i8, ptr %i.su, align 1, !alias.scope !12463, !noalias !12466, !noundef !4 ; 2 uses
  switch i8 %i.sv, label %bb.fq [
    i8 43, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
    i8 45, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fo
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.su, align 1, !alias.scope !12463, !noalias !12466
  br label %bb.fq

bb.fq:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fp
  %i.sw = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sv, %bb.fp ]
  switch i8 %i.sw, label %bb.fx [
    i8 43, label %bb.fr
    i8 45, label %bb.fs
  ]

bb.fr:                                            ; preds = %bb.fq
  %i.sx = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sb
  %i.sy = add nsw i64 %i.st, -1
  br label %bb.fx

bb.fs:                                            ; preds = %bb.fq
  %i.sz = getelementptr inbounds nuw i8, ptr %i.si, i64 %i.sb ; 2 uses
  %i.ta = add nsw i64 %i.st, -1                   ; 3 uses
  %i.tb = icmp samesign ult i64 %i.st, 17
  br i1 %i.tb, label %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fs
  %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ta, 0
  br i1 %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.fs, %bb.fv
  %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tc, %bb.fv ], [ %i.sz, %bb.fs ] ; 2 uses
  %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.td, %bb.fv ], [ %i.ta, %bb.fs ]
  %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.to, %bb.fv ], [ 0, %bb.fs ]
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.td = add nsw i64 %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.te = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.tf = extractvalue { i64, i1 } %i.te, 0
  %i.tg = extractvalue { i64, i1 } %i.te, 1
  br i1 %i.tg, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ft, !prof !1649

bb.ft:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.th = load i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !12463, !noalias !12466, !noundef !4
  %i.ti = zext i8 %i.th to i32
  %i.tj = add nsw i32 %i.ti, -48                  ; 2 uses
  %i.tk = icmp ult i32 %i.tj, 10
  br i1 %i.tk, label %bb.fu, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fu:                                            ; preds = %bb.ft
  %i.tl = zext nneg i32 %i.tj to i64
  %i.tm = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.tf, i64 %i.tl) ; 2 uses
  %i.tn = extractvalue { i64, i1 } %i.tm, 1
  br i1 %i.tn, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fv, !prof !1649

bb.fv:                                            ; preds = %bb.fu
  %i.to = extractvalue { i64, i1 } %i.tm, 0       ; 2 uses
  %.not102.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.td, 0
  br i1 %.not102.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fw
  %.sroa.0.2140.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tv, %bb.fw ], [ %i.sz, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.26.2139.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tu, %bb.fw ], [ %i.ta, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.084.2138.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tx, %bb.fw ], [ 0, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.tp = load i8, ptr %.sroa.0.2140.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !12463, !noalias !12466, !noundef !4
  %i.tq = zext i8 %i.tp to i32
  %i.tr = add nsw i32 %i.tq, -48                  ; 2 uses
  %i.ts = icmp ugt i32 %i.tr, 9
  br i1 %i.ts, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.tt = mul i64 %.sroa.084.2138.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  %i.tu = add nsw i64 %.sroa.26.2139.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.tw = zext nneg i32 %i.tr to i64
  %i.tx = sub i64 %i.tt, %i.tw                    ; 2 uses
  %.not103.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.tu, 0
  br i1 %.not103.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fx:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sy, %bb.fr ], [ %i.st, %bb.fq ] ; 4 uses
  %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.sx, %bb.fr ], [ %i.su, %bb.fq ] ; 2 uses
  %i.ty = icmp samesign ult i64 %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16
  br i1 %i.ty, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.fx
  %.not105146.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not105146.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fx, %bb.ga
  %.sroa.0.3145.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tz, %bb.ga ], [ %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fx ] ; 2 uses
  %.sroa.26.3144.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ua, %bb.ga ], [ %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fx ]
  %.sroa.084.3143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ul, %bb.ga ], [ 0, %bb.fx ]
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.ua = add nsw i64 %.sroa.26.3144.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ub = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.uc = extractvalue { i64, i1 } %i.ub, 0
  %i.ud = extractvalue { i64, i1 } %i.ub, 1
  br i1 %i.ud, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fy, !prof !1649

bb.fy:                                            ; preds = %.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ue = load i8, ptr %.sroa.0.3145.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !12463, !noalias !12466, !noundef !4
  %i.uf = zext i8 %i.ue to i32
  %i.ug = add nsw i32 %i.uf, -48                  ; 2 uses
  %i.uh = icmp ult i32 %i.ug, 10
  br i1 %i.uh, label %bb.fz, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fz:                                            ; preds = %bb.fy
  %i.ui = zext nneg i32 %i.ug to i64
  %i.uj = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.uc, i64 %i.ui) ; 2 uses
  %i.uk = extractvalue { i64, i1 } %i.uj, 1
  br i1 %i.uk, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ga, !prof !1649

bb.ga:                                            ; preds = %bb.fz
  %i.ul = extractvalue { i64, i1 } %i.uj, 0       ; 2 uses
  %.not104.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ua, 0
  br i1 %.not104.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gb
  %.sroa.0.4149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.us, %bb.gb ], [ %.sroa.0.0.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ur, %bb.gb ], [ %.sroa.26.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.084.4147.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.uu, %bb.gb ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.um = load i8, ptr %.sroa.0.4149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !12463, !noalias !12466, !noundef !4
  %i.un = zext i8 %i.um to i32
  %i.uo = add nsw i32 %i.un, -48                  ; 2 uses
  %i.up = icmp ugt i32 %i.uo, 9
  br i1 %i.up, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uq = mul i64 %.sroa.084.4147.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  %i.ur = add nsw i64 %.sroa.26.4148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.ut = zext nneg i32 %i.uo to i64
  %i.uu = add i64 %i.uq, %i.ut                    ; 2 uses
  %.not105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ur, 0
  br i1 %.not105.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gc:                                            ; preds = %bb.fn, %bb.fm, %bb.fk, %bb.fj, %.noexc227.i.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.si, i64 noundef %i.sh, i64 noundef %i.sf, i64 noundef %i.sg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #41
          to label %.noexc228.i.i.i.i unwind label %.loopexit.split-lp414.i.i.i.i, !noalias !12323

.noexc228.i.i.i.i:                                ; preds = %bb.gc
  unreachable

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.fv, %bb.fw, %bb.ga, %bb.gb, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uv = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.uu, %bb.gb ], [ %i.ul, %bb.ga ], [ %i.tx, %bb.fw ], [ 0, %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.to, %bb.fv ] ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.qr, i64 80
  %i.ux = load i32, ptr %i.uw, align 8, !range !9785, !alias.scope !12439, !noalias !12440, !noundef !4 ; 2 uses
  %i.uy = ashr i32 %i.ux, 13                      ; 3 uses
  %i.uz = add nsw i32 %i.uy, -1                   ; 2 uses
  %i.va = icmp slt i32 %i.uy, 1
  br i1 %i.va, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vb = sub nsw i32 1, %i.uy
  %i.vc = udiv i32 %i.vb, 400
  %i.vd = add nuw nsw i32 %i.vc, 1                ; 2 uses
  %i.ve = mul nuw nsw i32 %i.vd, 400
  %i.vf = add nsw i32 %i.ve, %i.uz
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i32 %i.vd, -146097
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gd ], [ 0, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.vf, %bb.gd ], [ %i.uz, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.vg = sdiv i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.vh = mul nsw i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1461
  %i.vi = ashr i32 %i.vh, 2
  %i.vj = ashr i32 %i.vg, 2
  %i.vk = lshr i32 %i.ux, 4
  %i.vl = and i32 %i.vk, 511
  %i.vm = getelementptr inbounds nuw i8, ptr %i.qr, i64 84
  %i.vn = load i32, ptr %i.vm, align 4, !alias.scope !12439, !noalias !12440, !noundef !4
  %i.vo = zext i32 %i.vn to i64
  %i.vp = add nuw nsw i32 %i.vl, -719163
  %i.vq = add nsw i32 %i.vp, %.sroa.05.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vr = sub nsw i32 %i.vq, %i.vg
  %i.vs = add nsw i32 %i.vr, %i.vi
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i32 %i.vs, %i.vj
  %i.vt = sext i32 %narrow.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.vu = mul nsw i64 %i.vt, 86400
  %i.vv = add nsw i64 %i.vu, %i.vo
  %i.vw = mul nsw i64 %i.vv, 1000
  %i.vx = getelementptr inbounds nuw i8, ptr %i.qr, i64 88
  %i.vy = load i32, ptr %i.vx, align 8, !alias.scope !12439, !noalias !12440, !noundef !4
  %i.vz = udiv i32 %i.vy, 1000000
  %i.wa = zext nneg i32 %i.vz to i64
  %i.wb = add nsw i64 %i.vw, %i.wa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12468
  store i64 %i.uv, ptr %i.i, align 8, !noalias !12469
  store i64 %i.wb, ptr %i.qq, align 8, !noalias !12469
  %i.wc = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_0INtB7_5FnMutTRTxxEEE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %.noexc229.i.i.i.i unwind label %.loopexit413.i.i.i.i, !noalias !12323

.noexc229.i.i.i.i:                                ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12468
  br i1 %i.wc, label %bb.gf, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc226.i.i.i.i, %.noexc225.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12444
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fu, %bb.ft, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fz, %bb.fy, %.preheader111.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph150.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc229.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fp, %bb.fp, %bb.fo, %bb.ev
  %i.wd = load ptr, ptr %.sroa.5329.0..sroa_idx.i.i.i.i, align 8, !alias.scope !12418, !noalias !12421, !nonnull !4, !noundef !4
  %i.we = icmp eq ptr %i.qs, %i.wd
  br i1 %i.we, label %.loopexit487.i.i.i.i, label %bb.ev

bb.gf:                                            ; preds = %.noexc229.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !12322
  %i.wf = invoke noundef i64 @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapIB1k_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2G_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3A_s_0ENCB3A_s0_0ENCB3A_s1_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNvB5x_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %i.uv)
          to label %bb.gh unwind label %.loopexit.split-lp414.i.i.i.i, !noalias !12323

.loopexit413.i.i.i.i:                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge, %bb.ff, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ex
  %lpad.loopexit415.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

.loopexit.split-lp414.i.i.i.i:                    ; preds = %bb.gf, %bb.gc
  %lpad.loopexit.split-lp416.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gg:                                            ; preds = %.loopexit.split-lp414.i.i.i.i, %.loopexit413.i.i.i.i
  %lpad.phi417.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit415.i.i.i.i, %.loopexit413.i.i.i.i ], [ %lpad.loopexit.split-lp416.i.i.i.i, %.loopexit.split-lp414.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !12322
  br label %bb.iw

.loopexit487.i.i.i.i:                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !12322
  %i.wg = getelementptr inbounds nuw i8, ptr %i.df, i64 112 ; 2 uses
  %i.wh = load i64, ptr %i.wg, align 8, !noalias !12318, !noundef !4
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !12322
  %i.wi = getelementptr inbounds nuw i8, ptr %i.df, i64 112 ; 2 uses
  %i.wj = load i64, ptr %i.wi, align 8, !noalias !12318, !noundef !4
  %i.wk = call i64 @llvm.smin.i64(i64 %i.wf, i64 %i.wj)
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %.loopexit487.i.i.i.i
  %i.wl = phi ptr [ %i.wi, %bb.gh ], [ %i.wg, %.loopexit487.i.i.i.i ] ; 4 uses
  %i.wm = phi i64 [ %i.wk, %bb.gh ], [ %i.wh, %.loopexit487.i.i.i.i ]
  store i64 %i.wm, ptr %i.wl, align 8, !noalias !12318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !12322
  %.val165.i.i.i.i = load ptr, ptr %i.qb, align 8, !noalias !12318, !nonnull !4, !noundef !4 ; 2 uses
  %.val166.i.i.i.i = load i64, ptr %i.qc, align 8, !noalias !12318, !noundef !4 ; 2 uses
  %.idx401.i.i.i.i = mul nuw nsw i64 %.val166.i.i.i.i, 96
  %i.wn = getelementptr inbounds nuw i8, ptr %.val165.i.i.i.i, i64 %.idx401.i.i.i.i ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.wn, ptr %i.wo, align 8, !alias.scope !12474, !noalias !12477
  %i.wp = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 5 uses
  store ptr %i.wl, ptr %i.wp, align 8, !alias.scope !12474, !noalias !12477
  call void @llvm.experimental.noalias.scope.decl(metadata !12479)
  call void @llvm.experimental.noalias.scope.decl(metadata !12482)
  call void @llvm.experimental.noalias.scope.decl(metadata !12485)
  call void @llvm.experimental.noalias.scope.decl(metadata !12488)
  call void @llvm.experimental.noalias.scope.decl(metadata !12491)
  call void @llvm.experimental.noalias.scope.decl(metadata !12494)
  call void @llvm.experimental.noalias.scope.decl(metadata !12497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12500
  store ptr %i.wp, ptr %i.h, align 8, !noalias !12500
  %i.wq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.wp, ptr %i.wq, align 8, !noalias !12500
  %i.wr = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.wp, ptr %i.wr, align 8, !noalias !12500
  call void @llvm.experimental.noalias.scope.decl(metadata !12505)
  %i.ws = icmp eq i64 %.val166.i.i.i.i, 0
  br i1 %i.ws, label %.loopexit406.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.gi, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wt = phi ptr [ %i.wu, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val165.i.i.i.i, %bb.gi ] ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 96 ; 3 uses
  store ptr %i.wu, ptr %i.bg, align 8, !alias.scope !12508, !noalias !12511
  call void @llvm.experimental.noalias.scope.decl(metadata !12513)
  %i.wv = load i64, ptr %i.wt, align 8, !range !2051, !alias.scope !12516, !noalias !12519, !noundef !4
  %i.ww = icmp eq i64 %i.wv, -9223372036854775808
  br i1 %i.ww, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.wx = invoke fastcc { i64, i64 } @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.wt)
          to label %.noexc234.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !12323 ; 2 uses

.noexc234.i.i.i.i:                                ; preds = %bb.gj
  %i.wy = extractvalue { i64, i64 } %i.wx, 0
  %i.wz = trunc nuw i64 %i.wy to i1
  br i1 %i.wz, label %bb.gk, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i

bb.gk:                                            ; preds = %.noexc234.i.i.i.i
  %i.xa = extractvalue { i64, i64 } %i.wx, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12521
  store i64 %i.xa, ptr %i.g, align 8, !noalias !12525
  %i.xb = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s4_0INtB7_5FnMutTRxEE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.wr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %.noexc235.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !12323

.noexc235.i.i.i.i:                                ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12521
  br i1 %i.xb, label %bb.gl, label %.backedge.i.i.i.i.i.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.noexc235.i.i.i.i, %.noexc234.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.xc = icmp eq ptr %i.wu, %i.wn
  br i1 %i.xc, label %.loopexit406.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.gl:                                            ; preds = %.noexc235.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12500
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !12528, !noalias !12322, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.wo, align 8, !alias.scope !12528, !noalias !12322, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.wp, align 8, !alias.scope !12528, !noalias !12322, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12529
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !12536
  %i.xd = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i.i.i.i.i
  br i1 %i.xd, label %.loopexit405.i.i.i.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.xe = ptrtoint ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i to i64
  %i.xf = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i to i64
  %i.xg = sub nuw i64 %i.xe, %i.xf
  %i.xh = udiv exact i64 %i.xg, 96
  %i.xi = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.gn

bb.gn:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.gm
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.gm ], [ %i.xt, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.xa, %bb.gm ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.xj = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12539)
  call void @llvm.experimental.noalias.scope.decl(metadata !12542)
  %i.xk = load i64, ptr %i.xj, align 8, !range !2051, !alias.scope !12544, !noalias !12547, !noundef !4
  %i.xl = icmp eq i64 %i.xk, -9223372036854775808
  br i1 %i.xl, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.experimental.noalias.scope.decl(metadata !12548)
  %i.xm = invoke fastcc { i64, i64 } @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.xj)
          to label %.noexc236.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !12323 ; 2 uses

.noexc236.i.i.i.i:                                ; preds = %bb.go
  %i.xn = extractvalue { i64, i64 } %i.xm, 0
  %i.xo = trunc nuw i64 %i.xn to i1
  br i1 %i.xo, label %bb.gp, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i

bb.gp:                                            ; preds = %.noexc236.i.i.i.i
  %i.xp = extractvalue { i64, i64 } %i.xm, 1      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12551)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !12554, !noalias !12555, !nonnull !4, !align !1680, !noundef !4
  %i.xq = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !12557, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.xp, %i.xq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12558
  store i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !12561
  store i64 %i.xp, ptr %i.d, align 8, !noalias !12561
  %i.xr = invoke noundef i8 @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNvYxNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRxB1p_EE9call_onceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull %i.xi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc237.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !12323

.noexc237.i.i.i.i:                                ; preds = %bb.gq
  %i.xs = icmp sgt i8 %i.xr, 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.xs, i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, i64 %i.xp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12558
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s2_0NCIB2_B2q_xxNCB2y_s3_0NCINvNtB6_6filter11filter_foldxxNCB2y_s4_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc237.i.i.i.i, %bb.gp, %.noexc236.i.i.i.i, %bb.gn
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, %bb.gn ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, %.noexc236.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc237.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i.i.i, %bb.gp ] ; 2 uses
  %i.xt = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.xu = icmp eq i64 %i.xt, %i.xh
  br i1 %i.xu, label %.loopexit405.i.i.i.i, label %bb.gn

.loopexit.i.i.i.i:                                ; preds = %bb.gq, %bb.go
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.gk, %bb.gj
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

bb.gr:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
end_hunk_1

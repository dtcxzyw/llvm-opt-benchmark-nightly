Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/test_helpers?download=true
inline.NumInlined: 1585
inline.NumDeleted: 719
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4bssl31ReadVerifyCertChainTestFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_19VerifyCertChainTestE:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit360: ; preds = %bb.dp
  %i.mg = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 1
  %i.mi = xor i32 %i.mh, 1330795603
  %i.mj = getelementptr i8, ptr %i.mg, i64 4
  %i.mk = load i16, ptr %i.mj, align 1
  %i.ml = zext i16 %i.mk to i32
  %i.mm = xor i32 %i.ml, 18254
  %i.mn = or i32 %i.mi, %i.mm
  %i.mo = icmp ne i32 %i.mn, 0
  %i.mp = zext i1 %i.mo to i32
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit360.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit362.thread553

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit360.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit360
  store i32 0, ptr %i.am, align 8, !tbaa !107
  br label %bb.gg

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit362: ; preds = %bb.dp
  %i.mr = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 1
  %i.mt = xor i64 %i.ms, 5211614022394989633
  %i.mu = getelementptr i8, ptr %i.mr, i64 3
  %i.mv = load i64, ptr %i.mu, align 1
  %i.mw = xor i64 %i.mv, 3557634009538189135
  %i.mx = or i64 %i.mt, %i.mw
  %i.my = icmp ne i64 %i.mx, 0
  %i.mz = zext i1 %i.my to i32
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit362.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit362.thread553

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit362.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit362
  store i32 1, ptr %i.am, align 8, !tbaa !107
  br label %bb.gg

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit362.thread553: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit360, %bb.dp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit362
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.dq unwind label %bb.dt

bb.dq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit362.thread553
  %i.nb = load ptr, ptr %26, align 8, !tbaa !31
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nc, ptr noundef nonnull @.str.53, i64 noundef 28)
          to label %_ZN7testing7MessagelsIA29_cEERS0_RKT_.exit364 unwind label %bb.du ; 0 uses

_ZN7testing7MessagelsIA29_cEERS0_RKT_.exit364:    ; preds = %bb.dq
  %i.ne = load ptr, ptr %26, align 8, !tbaa !31
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load ptr, ptr %14, align 8, !tbaa !21
  %i.nh = load i64, ptr %i.bc, align 8, !tbaa !19
  %i.ni = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nf, ptr noundef %i.ng, i64 noundef %i.nh)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit366 unwind label %bb.du ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit366: ; preds = %_ZN7testing7MessagelsIA29_cEERS0_RKT_.exit364
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 378, ptr noundef nonnull @.str.4)
          to label %bb.dr unwind label %bb.dv

bb.dr:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit366
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ds unwind label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  %i.nj = load ptr, ptr %26, align 8, !tbaa !31   ; 3 uses
  %.not.i.i367 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i367, label %_ZN7testing7MessageD2Ev.exit369, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368: ; preds = %bb.ds
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !33
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8
  call void %i.nm(ptr noundef nonnull align 8 dereferenceable(128) %i.nj) #20, !call_target !35, !inline_history !44
  br label %_ZN7testing7MessageD2Ev.exit369

_ZN7testing7MessageD2Ev.exit369:                  ; preds = %bb.ds, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.gf

bb.dt:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit362.thread553
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit372

bb.du:                                            ; preds = %_ZN7testing7MessagelsIA29_cEERS0_RKT_.exit364, %bb.dq
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dv:                                            ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit366
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dr
  %i.nq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #20
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.pn172 = phi { ptr, i32 } [ %i.nq, %bb.dw ], [ %i.np, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.du
  %.pn172.pn = phi { ptr, i32 } [ %.pn172, %bb.dx ], [ %i.no, %bb.du ] ; 2 uses
  %i.nr = load ptr, ptr %26, align 8, !tbaa !31   ; 3 uses
  %.not.i.i370 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i370, label %_ZN7testing7MessageD2Ev.exit372, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371: ; preds = %bb.dy
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !33
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8
  call void %i.nu(ptr noundef nonnull align 8 dereferenceable(128) %i.nr) #20, !call_target !35, !inline_history !44
  br label %_ZN7testing7MessageD2Ev.exit372

_ZN7testing7MessageD2Ev.exit372:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371, %bb.dy, %bb.dt
  %.pn172.pn.pn = phi { ptr, i32 } [ %i.nn, %bb.dt ], [ %.pn172.pn, %bb.dy ], [ %.pn172.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.gh

bb.dz:                                            ; preds = %bb.do
  %i.nv = invoke fastcc noundef zeroext i1 @_ZN4bssl12_GLOBAL__N_18GetValueESt17basic_string_viewIcSt11char_traitsIcEES4_PNSt7__cxx1112basic_stringIcS3_SaIcEEEPb(i64 38, ptr nonnull @.str.54, i64 %i.ed, ptr %i.ef, ptr noundef %14, ptr noundef %i.j)
          to label %bb.ea unwind label %bb.ae

bb.ea:                                            ; preds = %bb.dz
  br i1 %i.nv, label %bb.eb, label %bb.ev

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.nw = load ptr, ptr %14, align 8, !tbaa !21
  %i.nx = load i64, ptr %i.bc, align 8, !tbaa !19
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !192
  invoke void @_ZN4bssl11string_util11SplitStringESt17basic_string_viewIcSt11char_traitsIcEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.86") align 8 %3, i64 %i.nx, ptr %i.nw, i8 noundef signext 44)
          to label %.noexc380 unwind label %bb.eu

.noexc380:                                        ; preds = %bb.eb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false), !alias.scope !192
  %i.ny = load ptr, ptr %3, align 8, !tbaa !195, !noalias !192 ; 3 uses
  %i.nz = load ptr, ptr %i.bj, align 8, !tbaa !195, !noalias !192 ; 2 uses
  %.not24.i = icmp eq ptr %i.ny, %i.nz
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pre29.i = load ptr, ptr %3, align 8, !tbaa !197, !noalias !192
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.noexc380
  %i.oa = phi ptr [ %.pre29.i, %._crit_edge.loopexit.i ], [ %i.ny, %.noexc380 ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i.i, label %bb.ep, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.i
  %i.ob = load ptr, ptr %i.bo, align 8, !tbaa !199, !noalias !192
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = ptrtoint ptr %i.oa to i64
  %i.oe = sub i64 %i.oc, %i.od
  call void @_ZdlPvm(ptr noundef nonnull %i.oa, i64 noundef %i.oe) #23
  br label %bb.ep

.lr.ph.i:                                         ; preds = %.noexc380, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.sroa.017.025.i = phi ptr [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ny, %.noexc380 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !192
  %.sroa.0.0.copyload.i375 = load i64, ptr %.sroa.017.025.i, align 8, !tbaa !12 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !54 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %.not.i.i376 = icmp eq i64 %.sroa.0.0.copyload.i375, 0
  br i1 %.not.i.i376, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %bb.ed
  %.06.i.i.i = phi i64 [ %i.oi, %bb.ed ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 %.06.i.i.i
  %i.og = load i8, ptr %i.of, align 1, !tbaa !14, !noalias !200
  %i.oh = icmp eq i8 %i.og, 32
  br i1 %i.oh, label %bb.ed, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i.i

bb.ed:                                            ; preds = %.lr.ph.i.i.i
  %i.oi = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.oi, %.sroa.0.0.copyload.i375
  br i1 %exitcond.not.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i.i, label %.lr.ph.i.i.i, !llvm.loop !203

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 %.06.i.i.i ; 3 uses
  %i.ok = icmp eq i64 %.06.i.i.i, -1
  br i1 %i.ok, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i.i: ; preds = %bb.ed, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i.i, %.lr.ph.i
  store ptr %i.bk, ptr %4, align 8, !tbaa !15, !alias.scope !200, !noalias !192
  store i64 0, ptr %i.bl, align 8, !tbaa !19, !alias.scope !200, !noalias !192
  store i8 0, ptr %i.bk, align 8, !tbaa !14, !alias.scope !200, !noalias !192
  br label %_ZN4bssl12_GLOBAL__N_111StripStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.i.i
  %i.ol = sub nuw i64 %.sroa.0.0.copyload.i375, %.06.i.i.i ; 3 uses
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ef, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i
  %.1.i.in.i.i = phi i64 [ %.1.i.i.i, %bb.ef ], [ %i.ol, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i ] ; 2 uses
  %.1.i.i.i = add i64 %.1.i.in.i.i, -1            ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.1.i.i.i
  %i.on = load i8, ptr %i.om, align 1, !tbaa !14, !noalias !200
  %i.oo = icmp eq i8 %i.on, 32
  br i1 %i.oo, label %bb.ef, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEcm.exit.i.i

bb.ef:                                            ; preds = %bb.ee
  %.not12.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not12.i.i.i, label %.loopexit.i.i, label %bb.ee, !llvm.loop !204

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEcm.exit.i.i: ; preds = %bb.ee
  %51 = call i64 @llvm.umin.i64(i64 %i.ol, i64 %.1.i.in.i.i)
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ef, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEcm.exit.i.i
  %.sroa.speculated.i.i.i = phi i64 [ %51, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE16find_last_not_ofEcm.exit.i.i ], [ %i.ol, %bb.ef ] ; 4 uses
  store ptr %i.bk, ptr %4, align 8, !tbaa !15, !alias.scope !200, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !205
  store i64 %.sroa.speculated.i.i.i, ptr %i.a, align 8, !tbaa !12, !noalias !205
  %i.op = icmp ugt i64 %.sroa.speculated.i.i.i, 15
  br i1 %i.op, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.loopexit.i.i
  %i.oq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i379 unwind label %bb.em ; 2 uses

.noexc.i379:                                      ; preds = %.noexc.i.i.i.i.i
  store ptr %i.oq, ptr %4, align 8, !tbaa !21, !alias.scope !200, !noalias !192
  %i.or = load i64, ptr %i.a, align 8, !tbaa !12, !noalias !205
  store i64 %i.or, ptr %i.bk, align 8, !tbaa !14, !alias.scope !200, !noalias !192
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i379, %.loopexit.i.i
  %i.os = phi ptr [ %i.oq, %.noexc.i379 ], [ %i.bk, %.loopexit.i.i ] ; 2 uses
  switch i64 %.sroa.speculated.i.i.i, label %bb.eh [
    i64 1, label %bb.eg
    i64 0, label %bb.ei
  ]

bb.eg:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ot = load i8, ptr %i.oj, align 1, !tbaa !14, !noalias !200
  store i8 %i.ot, ptr %i.os, align 1, !tbaa !14
  br label %bb.ei

bb.eh:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.os, ptr nonnull readonly align 1 %i.oj, i64 %.sroa.speculated.i.i.i, i1 false)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %._crit_edge.i.i.i.i.i.i
  %i.ou = load i64, ptr %i.a, align 8, !tbaa !12, !noalias !205 ; 2 uses
  store i64 %i.ou, ptr %i.bl, align 8, !tbaa !19, !alias.scope !200, !noalias !192
  %i.ov = load ptr, ptr %4, align 8, !tbaa !21, !alias.scope !200, !noalias !192
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ou
  store i8 0, ptr %i.ow, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !205
  br label %_ZN4bssl12_GLOBAL__N_111StripStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZN4bssl12_GLOBAL__N_111StripStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.ei, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEcm.exit.thread.i.i
  %i.ox = load ptr, ptr %i.bm, align 8, !tbaa !49, !alias.scope !192 ; 7 uses
  %i.oy = load ptr, ptr %i.bn, align 8, !tbaa !51, !alias.scope !192
  %.not.i.i.i = icmp eq ptr %i.ox, %i.oy
  br i1 %.not.i.i.i, label %bb.el, label %bb.ej

bb.ej:                                            ; preds = %_ZN4bssl12_GLOBAL__N_111StripStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 16 ; 3 uses
  store ptr %i.oz, ptr %i.ox, align 8, !tbaa !15
  %i.pa = load ptr, ptr %4, align 8, !tbaa !21, !noalias !192 ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.bk
  br i1 %i.pb, label %bb.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.pc = load i64, ptr %i.bl, align 8, !tbaa !19, !noalias !192 ; 3 uses
  %i.pd = icmp ult i64 %i.pc, 16
  call void @llvm.assume(i1 %i.pd)
  %i.pe = add nuw nsw i64 %i.pc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.oz, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.pe, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ej
  store ptr %i.pa, ptr %i.ox, align 8, !tbaa !21
  %i.pf = load i64, ptr %i.bk, align 8, !tbaa !14, !noalias !192
  store i64 %i.pf, ptr %i.oz, align 8, !tbaa !14
  %.pre.i377 = load i64, ptr %i.bl, align 8, !tbaa !19, !noalias !192
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.ek
  %i.pg = phi i64 [ %.pre.i377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.pc, %bb.ek ]
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  store i64 %i.pg, ptr %i.ph, align 8, !tbaa !19
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ox, i64 32
  store ptr %i.pi, ptr %i.bm, align 8, !tbaa !49, !alias.scope !192
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.el:                                            ; preds = %_ZN4bssl12_GLOBAL__N_111StripStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr %i.ox, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i unwind label %bb.en

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.el
  %.pre28.i = load ptr, ptr %4, align 8, !tbaa !21, !noalias !192 ; 2 uses
  %i.pj = icmp eq ptr %.pre28.i, %i.bk
  br i1 %i.pj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i
  %i.pk = load i64, ptr %i.bk, align 8, !tbaa !14, !noalias !192
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %.pre28.i, i64 noundef %i.pl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !192
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 16 ; 2 uses
  %.not.i378 = icmp eq ptr %i.pm, %i.nz
  br i1 %.not.i378, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.em:                                            ; preds = %.noexc.i.i.i.i.i
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.en:                                            ; preds = %bb.el
  %i.po = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pp = load ptr, ptr %4, align 8, !tbaa !21, !noalias !192 ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.bk
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.en
  %i.pr = load i64, ptr %i.bk, align 8, !tbaa !14, !noalias !192
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.em
  %.pn.i = phi { ptr, i32 } [ %i.pn, %bb.em ], [ %i.po, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.po, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !192
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #20
  %i.pt = load ptr, ptr %3, align 8, !tbaa !197, !noalias !192 ; 3 uses
  %.not.i.i.i15.i = icmp eq ptr %i.pt, null
  br i1 %.not.i.i.i15.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit16.i, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.pu = load ptr, ptr %i.bo, align 8, !tbaa !199, !noalias !192
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = ptrtoint ptr %i.pt to i64
  %i.px = sub i64 %i.pv, %i.pw
  call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef %i.px) #23
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit16.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit16.i: ; preds = %bb.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !192
  br label %.body

bb.ep:                                            ; preds = %bb.ec, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.py = load ptr, ptr %28, align 8, !tbaa !56   ; 2 uses
  %i.pz = load ptr, ptr %i.bm, align 8, !tbaa !56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %29, i8 0, i64 24, i1 false)
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !104
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !105
  store i64 0, ptr %i.bs, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %29, ptr %2, align 8, !tbaa !206
  %.not6.i.i = icmp eq ptr %i.py, %i.pz
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ep, %.noexc.i381
  %.sroa.03.07.i.i = phi ptr [ %i.qb, %.noexc.i381 ], [ %i.py, %bb.ep ] ; 2 uses
  %i.qa = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_insert_unique_IRS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.07.i.i, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i381 unwind label %.body383 ; 0 uses

.noexc.i381:                                      ; preds = %.lr.ph.i.i
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i, i64 32 ; 2 uses
  %.not.i.i382 = icmp eq ptr %i.qb, %i.pz
  br i1 %.not.i.i382, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !208

.body383:                                         ; preds = %.lr.ph.i.i
  %i.qc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #20
  br label %.body

.loopexit:                                        ; preds = %.noexc.i381, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.qd = load ptr, ptr %i.bt, align 8, !tbaa !103
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef %i.qd)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5clearEv.exit.i.i.i unwind label %bb.eq

bb.eq:                                            ; preds = %.loopexit
  %i.qe = landingpad { ptr, i32 }
          catch ptr null
  %i.qf = extractvalue { ptr, i32 } %i.qe, 0
  call void @__clang_call_terminate(ptr %i.qf) #24
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5clearEv.exit.i.i.i: ; preds = %.loopexit
  store ptr null, ptr %i.bt, align 8, !tbaa !103
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !104
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !105
  store i64 0, ptr %i.bx, align 8, !tbaa !106
  %i.qg = load ptr, ptr %i.by, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i385 = icmp eq ptr %i.qg, null
  br i1 %.not.i.i.i385, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit, label %bb.er

bb.er:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5clearEv.exit.i.i.i
  %i.qh = load i32, ptr %i.bp, align 8, !tbaa !102
  store i32 %i.qh, ptr %i.bu, align 8, !tbaa !102
  store ptr %i.qg, ptr %i.bt, align 8, !tbaa !103
  %i.qi = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !108
  store <2 x ptr> %i.qi, ptr %i.bv, align 8, !tbaa !108
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  store ptr %i.bu, ptr %i.qj, align 8, !tbaa !209
  %i.qk = load i64, ptr %i.bs, align 8, !tbaa !106
  store i64 %i.qk, ptr %i.bx, align 8, !tbaa !106
end_hunk_0

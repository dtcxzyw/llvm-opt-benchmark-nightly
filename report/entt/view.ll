Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/view?download=true
inline.NumInlined: 14012
inline.NumDeleted: 4156
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN33ViewSingleStorage_StableType_Test8TestBodyEv:bb.a
bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit345
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i346 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i346, label %_ZNK7testing15AssertionResult15failure_messageEv.exit347, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit347

_ZNK7testing15AssertionResult15failure_messageEv.exit347: ; preds = %bb.y, %bb.x
  %i.cn = phi ptr [ %i.cm, %bb.y ], [ @.str.319, %bb.x ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 392, ptr noundef %i.cn)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit347
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.co = load ptr, ptr %8, align 8, !tbaa !79    ; 3 uses
  %.not.i.i348 = icmp eq ptr %i.co, null
  br i1 %.not.i.i348, label %_ZN7testing7MessageD2Ev.exit350, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i349

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i349: ; preds = %bb.aa
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !43
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(128) %i.co) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit350

_ZN7testing7MessageD2Ev.exit350:                  ; preds = %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i349
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !94 ; 4 uses
  %.not.i.i351 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i351, label %_ZN7testing15AssertionResultD2Ev.exit355, label %bb.ab

bb.ab:                                            ; preds = %_ZN7testing7MessageD2Ev.exit350
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !76 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i353, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i352: ; preds = %bb.ab
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !77
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i353

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i353: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i352
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit355

_ZN7testing15AssertionResultD2Ev.exit355:         ; preds = %_ZN7testing7MessageD2Ev.exit350, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.nx

bb.ac:                                            ; preds = %bb.w
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit358

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit347
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #26
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn177 = phi { ptr, i32 } [ %i.da, %bb.ae ], [ %i.cz, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.db = load ptr, ptr %8, align 8, !tbaa !79    ; 3 uses
  %.not.i.i356 = icmp eq ptr %i.db, null
  br i1 %.not.i.i356, label %_ZN7testing7MessageD2Ev.exit358, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i357

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i357: ; preds = %bb.af
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(128) %i.db) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit358

_ZN7testing7MessageD2Ev.exit358:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i357, %bb.af, %bb.ac
  %.pn177.pn = phi { ptr, i32 } [ %i.cy, %bb.ac ], [ %.pn177, %bb.af ], [ %.pn177, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i357 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  br label %bb.al

.critedge283:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt6entityES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit345
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !94 ; 4 uses
  %.not.i.i359 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i359, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.critedge283
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !76 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i360: ; preds = %bb.ag
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !77
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i361

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i361: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i360
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 32) #27
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i361, %.critedge283
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.dm = load i32, ptr %3, align 8, !tbaa !102   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.dn = load ptr, ptr %2, align 8, !tbaa !137, !noalias !616 ; 13 uses
  %.not.i364 = icmp eq ptr %i.dn, null
  br i1 %.not.i364, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.do = and i32 %i.dm, 1048575
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = lshr i64 %i.dp, 12                      ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !127, !noalias !616
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !103, !noalias !616 ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 3
  %i.dz = icmp ult i64 %i.dq, %i.dy
  br i1 %i.dz, label %bb.aj, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1198

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dq
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !99, !noalias !616 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1198, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i: ; preds = %bb.aj
  %i.ec = and i64 %i.dp, 4095
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = and i32 %i.dm, -1048576
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !102, !noalias !616 ; 2 uses
  %i.eg = xor i32 %i.ef, %i.ee
  %i.eh = icmp ult i32 %i.eg, 1048575
  br i1 %i.eh, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE4findES1_.exit.i, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1198

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1198: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i, %bb.aj, %bb.ai
  %.pn6.i9.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store ptr %.pn6.i9.i, ptr %11, align 8, !tbaa !96, !alias.scope !616
  %.sroa.2.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i10.i, align 8, !tbaa !97, !alias.scope !616
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.dn, ptr %i.ei, align 8, !tbaa !77, !alias.scope !616
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 0, ptr %i.ej, align 8, !tbaa !141, !alias.scope !616
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store ptr %i.ek, ptr %12, align 8, !tbaa !96, !alias.scope !617
  %.sroa.2.0..sroa_idx.i.i3671199 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i3671199, align 8, !tbaa !97, !alias.scope !617
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.dn, ptr %i.el, align 8, !tbaa !77, !alias.scope !617
  br label %.sink.split.a

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE4findES1_.exit.i: ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.i.i
  %i.em = and i32 %i.ef, 1048575                  ; 3 uses
  %narrow.i.i.i = add nuw nsw i32 %i.em, 1
  %i.en = zext nneg i32 %narrow.i.i.i to i64      ; 2 uses
  %.pn6.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 2 uses
  store ptr %.pn6.i.i, ptr %11, align 8, !tbaa !96, !alias.scope !616
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.dn, ptr %i.eo, align 8, !tbaa !77, !alias.scope !616
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 0, ptr %i.ep, align 8, !tbaa !141, !alias.scope !616
  %i.eq = load ptr, ptr %.pn6.i.i, align 8, !tbaa !81, !noalias !616 ; 2 uses
  %i.er = getelementptr [4 x i8], ptr %i.eq, i64 %i.en
  %i.es = getelementptr i8, ptr %i.er, i64 -4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !102, !noalias !616
  %i.eu = icmp ult i32 %i.et, -1048576
  br i1 %i.eu, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1200, label %.lr.ph.i365.preheader

.lr.ph.i365.preheader:                            ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE4findES1_.exit.i
  %94 = zext nneg i32 %i.em to i64                ; 2 uses
  %i.ev = icmp eq i32 %i.em, 0
  br i1 %i.ev, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1202, label %.lr.ph1250.a, !llvm.loop !5

.lr.ph1250.a:                                     ; preds = %.lr.ph.i365.preheader
  br label %bb.ak, !llvm.loop !5

bb.ak:                                            ; preds = %.lr.ph1250.a, %.lr.ph.i365
  %i.ew = phi i64 [ %94, %.lr.ph1250.a ], [ %i.fb, %.lr.ph.i365 ] ; 3 uses
  %i.ex = getelementptr [4 x i8], ptr %i.eq, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 -4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !102, !noalias !616
  %i.fa = icmp ult i32 %i.ez, -1048576
  br i1 %i.fa, label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1200, label %.lr.ph.i365, !llvm.loop !5

.lr.ph.i365:                                      ; preds = %bb.ak
  %i.fb = add nsw i64 %i.ew, -1                   ; 3 uses
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.i365._ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1202_crit_edge, label %bb.ak, !llvm.loop !5

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread: ; preds = %bb.ah
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 0, ptr %i.fd, align 8, !tbaa !141, !alias.scope !616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i64 24, i1 false), !alias.scope !616
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, i8 0, i64 24, i1 false), !alias.scope !617
  br label %.sink.split.a

.lr.ph.i365._ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1202_crit_edge: ; preds = %.lr.ph.i365
  br label %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1202, !llvm.loop !5

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1202: ; preds = %.lr.ph.i365._ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1202_crit_edge, %.lr.ph.i365.preheader
  %.lcssa1245 = phi i64 [ %i.fb, %.lr.ph.i365._ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1202_crit_edge ], [ %94, %.lr.ph.i365.preheader ]
  store i64 %.lcssa1245, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !616
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store ptr %i.fe, ptr %12, align 8, !tbaa !96, !alias.scope !617
  %.sroa.2.0..sroa_idx.i.i3671203 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i3671203, align 8, !tbaa !97, !alias.scope !617
  %i.ff = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.dn, ptr %i.ff, align 8, !tbaa !77, !alias.scope !617
  br label %.sink.split.a

.sink.split.a:                                    ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1202, %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1198, %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread
  %i.fg = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 0, ptr %i.fg, align 8, !tbaa !141, !alias.scope !617
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13view_iteratorINS3_16basic_sparse_setINS3_6entityESaIS7_EEELb1ELm1ELm0EEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit unwind label %bb.am

_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1200: ; preds = %bb.ak, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE4findES1_.exit.i
  %.sink1260 = phi i64 [ %i.en, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE4findES1_.exit.i ], [ %i.ew, %bb.ak ]
  store i64 %.sink1260, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !616
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store ptr %i.fh, ptr %12, align 8, !tbaa !96, !alias.scope !617
  %.sroa.2.0..sroa_idx.i.i367 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i367, align 8, !tbaa !97, !alias.scope !617
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.dn, ptr %i.fi, align 8, !tbaa !77, !alias.scope !617
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 0, ptr %i.fj, align 8, !tbaa !141, !alias.scope !617
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4entt8internal13view_iteratorINS2_16basic_sparse_setINS2_6entityESaIS6_EEELb1ELm1ELm0EEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.15, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13view_iteratorINS3_16basic_sparse_setINS3_6entityESaIS7_EEELb1ELm1ELm0EEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit unwind label %bb.am

_ZN7testing8internal8EqHelper7CompareIN4entt8internal13view_iteratorINS3_16basic_sparse_setINS3_6entityESaIS7_EEELb1ELm1ELm0EEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %.sink.split.a, %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1200
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.fk = load i8, ptr %10, align 8, !tbaa !91, !range !92, !noundef !93
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %.critedge285, label %bb.an

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit358, %bb.v
  %.pn177.pn.pn = phi { ptr, i32 } [ %.pn177.pn, %_ZN7testing7MessageD2Ev.exit358 ], [ %i.cj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.nz

bb.am:                                            ; preds = %_ZNK4entt18basic_storage_viewINS_16basic_sparse_setINS_6entityESaIS2_EEELNS_15deletion_policyE1EE3endEv.exit.thread1200, %.sink.split.a
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bd

bb.an:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13view_iteratorINS3_16basic_sparse_setINS3_6entityESaIS7_EEELb1ELm1ELm0EEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !94 ; 2 uses
  %.not.i.i.i370 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i370, label %_ZNK7testing15AssertionResult15failure_messageEv.exit371, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit371

_ZNK7testing15AssertionResult15failure_messageEv.exit371: ; preds = %bb.ap, %bb.ao
  %i.fq = phi ptr [ %i.fp, %bb.ap ], [ @.str.319, %bb.ao ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 393, ptr noundef %i.fq)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit371
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.fr = load ptr, ptr %13, align 8, !tbaa !79   ; 3 uses
  %.not.i.i372 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i372, label %_ZN7testing7MessageD2Ev.exit374, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373: ; preds = %bb.ar
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !43
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(128) %i.fr) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit374

_ZN7testing7MessageD2Ev.exit374:                  ; preds = %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i373
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.fv = load ptr, ptr %i.fn, align 8, !tbaa !94 ; 4 uses
  %.not.i.i375 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i375, label %_ZN7testing15AssertionResultD2Ev.exit379, label %bb.as

bb.as:                                            ; preds = %_ZN7testing7MessageD2Ev.exit374
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !76 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i376: ; preds = %bb.as
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !77
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i377

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i377: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i376
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit379

_ZN7testing15AssertionResultD2Ev.exit379:         ; preds = %_ZN7testing7MessageD2Ev.exit374, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i377
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.nx

bb.at:                                            ; preds = %bb.an
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit382

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit371
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.aq
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #26
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn181 = phi { ptr, i32 } [ %i.gd, %bb.av ], [ %i.gc, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ge = load ptr, ptr %13, align 8, !tbaa !79   ; 3 uses
  %.not.i.i380 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i380, label %_ZN7testing7MessageD2Ev.exit382, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i381

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i381: ; preds = %bb.aw
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !43
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(128) %i.ge) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit382

_ZN7testing7MessageD2Ev.exit382:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i381, %bb.aw, %bb.at
  %.pn181.pn = phi { ptr, i32 } [ %i.gb, %bb.at ], [ %.pn181, %bb.aw ], [ %.pn181, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i381 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  br label %bb.bd

.critedge285:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8internal13view_iteratorINS3_16basic_sparse_setINS3_6entityESaIS7_EEELb1ELm1ELm0EEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !94 ; 4 uses
  %.not.i.i383 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i383, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.critedge285
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !76 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i384: ; preds = %bb.ax
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !77
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i384
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 32) #27
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385, %.critedge285
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.gp = ptrtoint ptr %1 to i64
  store i64 %i.gp, ptr %2, align 8
  %i.gq = load i32, ptr %3, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !98
  %i.gr = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEENS_6entityESaIS6_EE15emplace_elementIJiEEEDaS7_bDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.gq, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.az unwind label %bb.be     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 11 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 1, ptr %i.d, align 4, !tbaa !98
  %i.gu = invoke { ptr, i64 } @_ZN4entt13basic_storageIN4test8internal20pointer_stable_mixinINS2_10value_typeIiEEEENS_6entityESaIS6_EE15emplace_elementIJiEEEDaS7_bDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.gt, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.ba unwind label %bb.bf     ; 0 uses

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.gv = load i32, ptr %3, align 8, !tbaa !102
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.gx = and i32 %i.gv, 1048575
  %i.gy = zext nneg i32 %i.gx to i64              ; 2 uses
  %i.gz = lshr i64 %i.gy, 12
  %i.ha = load ptr, ptr %i.ai, align 8, !tbaa !103
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gz
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !99
  %i.hd = and i64 %i.gy, 4095
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !102
  %i.hg = and i32 %i.hf, 1048575                  ; 2 uses
  %narrow.i.i = add nuw nsw i32 %i.hg, 1
  %i.hh = zext nneg i32 %narrow.i.i to i64
  %i.hi = zext nneg i32 %i.hg to i64
  %i.hj = load ptr, ptr %1, align 8, !tbaa !43
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
end_hunk_0

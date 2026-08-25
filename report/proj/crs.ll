Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/crs?download=true
inline.NumInlined: 8471
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK5osgeo4proj3crs8BoundCRS9_identifyB5cxx11ERKSt10shared_ptrINS0_2io16AuthorityFactoryEE:bb.a

.body342:                                         ; preds = %bb.hr, %bb.hc, %bb.hs
  %.pn142 = phi { ptr, i32 } [ %i.aaj, %bb.hs ], [ %i.aai, %bb.hr ], [ %i.yu, %bb.hc ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation14TransformationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %40) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #39
  br label %bb.hz

.critedge:                                        ; preds = %bb.hq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i354, %bb.hm, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs8BoundCRSEEED2Ev.exit351
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #39
  br label %.thread449

.thread449:                                       ; preds = %bb.ge, %bb.gl, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit337, %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.thread452, %.critedge, %bb.gc, %bb.gb, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation14TransformationEEED2Ev.exit
  %.368 = phi i32 [ 4, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation14TransformationEEED2Ev.exit ], [ 0, %bb.gc ], [ 0, %bb.gb ], [ 0, %bb.ge ], [ 4, %.critedge ], [ 0, %.thread452 ], [ 0, %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit337 ], [ 0, %bb.gl ]
  %.6 = phi i1 [ true, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation14TransformationEEED2Ev.exit ], [ %.063497, %bb.gc ], [ %.063497, %bb.gb ], [ %.063497, %bb.ge ], [ true, %.critedge ], [ %.063497, %.thread452 ], [ %.063497, %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.063497, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit337 ], [ %.063497, %bb.gl ]
  %i.aak = load ptr, ptr %i.gs, align 8, !tbaa !30 ; 8 uses
  %.not.i.i357 = icmp eq ptr %i.aak, null
  br i1 %.not.i.i357, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit361, label %bb.ht

bb.ht:                                            ; preds = %.thread449
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8 ; 4 uses
  %i.aam = load atomic i64, ptr %i.aal acquire, align 8 ; 2 uses
  %i.aan = icmp eq i64 %i.aam, 4294967297
  %i.aao = trunc i64 %i.aam to i32                ; 2 uses
  br i1 %i.aan, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  store i32 0, ptr %i.aal, align 8, !tbaa !39
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aak, i64 12
  store i32 0, ptr %i.aap, align 4, !tbaa !41
  %i.aaq = load ptr, ptr %i.aak, align 8, !tbaa !11
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %i.aas = load ptr, ptr %i.aar, align 8
  call void %i.aas(ptr noundef nonnull align 8 dereferenceable(16) %i.aak) #39, !inline_history !492
  %i.aat = load ptr, ptr %i.aak, align 8, !tbaa !11
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 24
  %i.aav = load ptr, ptr %i.aau, align 8
  call void %i.aav(ptr noundef nonnull align 8 dereferenceable(16) %i.aak) #39, !inline_history !492
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit361

bb.hv:                                            ; preds = %bb.ht
  %i.aaw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i358 = icmp eq i8 %i.aaw, 0
  br i1 %.not.i.i.i358, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.aax = add nsw i32 %i.aao, -1
  store i32 %i.aax, ptr %i.aal, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i359

bb.hx:                                            ; preds = %bb.hv
  %i.aay = atomicrmw volatile add ptr %i.aal, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i359

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i359: ; preds = %bb.hx, %bb.hw
  %.0.i.i.i.i360 = phi i32 [ %i.aao, %bb.hw ], [ %i.aay, %bb.hx ]
  %i.aaz = icmp eq i32 %.0.i.i.i.i360, 1
  br i1 %i.aaz, label %bb.hy, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit361, !prof !43

bb.hy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i359
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aak) #39
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit361

_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit361: ; preds = %.thread449, %bb.hu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i359, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #39
  br label %bb.ia

bb.hz:                                            ; preds = %bb.gg, %.body342, %bb.gh, %.body310
  %.pn146.pn = phi { ptr, i32 } [ %.pn146, %.body310 ], [ %i.we, %bb.gg ], [ %.pn142, %.body342 ], [ %i.wf, %bb.gh ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #39
  br label %.loopexit

bb.ia:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit361, %bb.fb, %bb.dj, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs8BoundCRSEEED2Ev.exit
  %.469 = phi i32 [ 4, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs8BoundCRSEEED2Ev.exit ], [ %.368, %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit361 ], [ 5, %bb.dj ], [ 0, %bb.fb ]
  %.8 = phi i1 [ true, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs8BoundCRSEEED2Ev.exit ], [ %.6, %_ZNSt12__shared_ptrIN5osgeo4proj9operation14TransformationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit361 ], [ %.063497, %bb.dj ], [ %.063497, %bb.fb ] ; 2 uses
  %i.aba = load ptr, ptr %28, align 8, !tbaa !61  ; 2 uses
  %i.abb = icmp eq ptr %i.aba, %i.gg
  br i1 %i.abb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362: ; preds = %bb.ia
  %i.abc = load i64, ptr %i.gg, align 8, !tbaa !31
  %i.abd = add i64 %i.abc, 1
  call void @_ZdlPvm(ptr noundef %i.aba, i64 noundef %i.abd) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364: ; preds = %bb.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #39
  %i.abe = load ptr, ptr %i.gx, align 8, !tbaa !30 ; 8 uses
  %.not.i.i.i365 = icmp eq ptr %i.abe, null
  br i1 %.not.i.i.i365, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit369, label %bb.ib

bb.ib:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 8 ; 4 uses
  %i.abg = load atomic i64, ptr %i.abf acquire, align 8 ; 2 uses
  %i.abh = icmp eq i64 %i.abg, 4294967297
  %i.abi = trunc i64 %i.abg to i32                ; 2 uses
  br i1 %i.abh, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  store i32 0, ptr %i.abf, align 8, !tbaa !39
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abe, i64 12
  store i32 0, ptr %i.abj, align 4, !tbaa !41
  %i.abk = load ptr, ptr %i.abe, align 8, !tbaa !11
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  %i.abm = load ptr, ptr %i.abl, align 8
  call void %i.abm(ptr noundef nonnull align 8 dereferenceable(16) %i.abe) #39, !inline_history !1470
  %i.abn = load ptr, ptr %i.abe, align 8, !tbaa !11
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 24
  %i.abp = load ptr, ptr %i.abo, align 8
  call void %i.abp(ptr noundef nonnull align 8 dereferenceable(16) %i.abe) #39, !inline_history !1470
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit369

bb.id:                                            ; preds = %bb.ib
  %i.abq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i366 = icmp eq i8 %i.abq, 0
  br i1 %.not.i.i.i.i366, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.abr = add nsw i32 %i.abi, -1
  store i32 %i.abr, ptr %i.abf, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i367

bb.if:                                            ; preds = %bb.id
  %i.abs = atomicrmw volatile add ptr %i.abf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i367

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i367: ; preds = %bb.if, %bb.ie
  %.0.i.i.i.i.i368 = phi i32 [ %i.abi, %bb.ie ], [ %i.abs, %bb.if ]
  %i.abt = icmp eq i32 %.0.i.i.i.i.i368, 1
  br i1 %i.abt, label %bb.ig, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit369, !prof !43

bb.ig:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i367
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abe) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit369

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, %bb.ic, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i367, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #39
  switch i32 %.469, label %._crit_edge [
    i32 0, label %bb.ih
    i32 5, label %bb.ih
  ]

bb.ih:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit369, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit369
  %i.abu = getelementptr inbounds nuw i8, ptr %.sroa.0427.0496, i64 16 ; 2 uses
  %.not463 = icmp eq ptr %i.abu, %i.nh
  br i1 %.not463, label %._crit_edge, label %bb.dh

.loopexit:                                        ; preds = %bb.ew, %bb.hz, %bb.fy, %.body245, %bb.dv
  %.merged163 = phi { ptr, i32 } [ %.pn150, %.body245 ], [ %.pn146.pn, %bb.hz ], [ %i.pi, %bb.dv ], [ %i.vn, %bb.fy ], [ %.pn136.pn.pn, %bb.ew ]
  %i.abv = load ptr, ptr %28, align 8, !tbaa !61  ; 2 uses
  %i.abw = icmp eq ptr %i.abv, %i.gg
  br i1 %i.abw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %.loopexit
  %i.abx = load i64, ptr %i.gg, align 8, !tbaa !31
  %i.aby = add i64 %i.abx, 1
  call void @_ZdlPvm(ptr noundef %i.abv, i64 noundef %i.aby) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #39
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #39
  br label %bb.ii

bb.ii:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %bb.du
  %.merged162 = phi { ptr, i32 } [ %.merged163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ], [ %i.ph, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #39
  br label %bb.jc

._crit_edge:                                      ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEED2Ev.exit369, %bb.ih
  br i1 %.8, label %bb.iu, label %.critedge504

.critedge504:                                     ; preds = %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj9operation26CoordinateOperationFactoryESt14default_deleteIS6_EEED2Ev.exit, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #39
  %i.abz = load ptr, ptr %i.k, align 8, !tbaa !346 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !1489
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc373 unwind label %bb.is, !inline_history !565

.noexc373:                                        ; preds = %.critedge504
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 32
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abz, i64 16
  invoke void @_ZN5osgeo4proj3crs8BoundCRS6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS1_3CRSEEEESF_RKNS9_ISA_INS0_9operation14TransformationEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.328") align 8 %41, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(16) %i.acb, ptr noundef nonnull align 8 dereferenceable(16) %i.aca)
          to label %bb.ik unwind label %bb.ij, !inline_history !565

bb.ij:                                            ; preds = %.noexc373
  %i.acc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #39, !inline_history !565
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !1489
  br label %.body374

bb.ik:                                            ; preds = %.noexc373
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #39, !inline_history !565
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !1489
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.0431.0501, i64 32 ; 2 uses
  %i.ace = load i32, ptr %i.acd, align 8, !tbaa !32
  %i.acf = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #40
          to label %bb.il unwind label %bb.it     ; 3 uses

bb.il:                                            ; preds = %bb.ik
  %42 = icmp slt i32 %i.ace, 70
  %43 = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %44 = load <2 x ptr>, ptr %41, align 16, !tbaa !87
  store ptr null, ptr %i.gy, align 8, !tbaa !30
  store <2 x ptr> %44, ptr %43, align 8, !tbaa !87
  store ptr null, ptr %41, align 16, !tbaa !468
  %45 = getelementptr inbounds nuw i8, ptr %i.acf, i64 32
  %.sroa.speculate.load.true = load i32, ptr %i.acd, align 8, !tbaa !32
  %.sroa.speculated = select i1 %42, i32 %.sroa.speculate.load.true, i32 70
  store i32 %.sroa.speculated, ptr %45, align 8, !tbaa !893
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.acf, ptr noundef nonnull align 8 dereferenceable(24) %7) #39
  %i.acg = load i64, ptr %i.d, align 8, !tbaa !890
  %i.ach = add i64 %i.acg, 1
  store i64 %i.ach, ptr %i.d, align 8, !tbaa !890
  %i.aci = load ptr, ptr %i.gy, align 8, !tbaa !30 ; 8 uses
  %.not.i.i.i379 = icmp eq ptr %i.aci, null
  br i1 %.not.i.i.i379, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs8BoundCRSEEED2Ev.exit383, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 8 ; 4 uses
  %i.ack = load atomic i64, ptr %i.acj acquire, align 8 ; 2 uses
  %i.acl = icmp eq i64 %i.ack, 4294967297
  %i.acm = trunc i64 %i.ack to i32                ; 2 uses
  br i1 %i.acl, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  store i32 0, ptr %i.acj, align 8, !tbaa !39
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aci, i64 12
  store i32 0, ptr %i.acn, align 4, !tbaa !41
  %i.aco = load ptr, ptr %i.aci, align 8, !tbaa !11
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  %i.acq = load ptr, ptr %i.acp, align 8
  call void %i.acq(ptr noundef nonnull align 8 dereferenceable(16) %i.aci) #39, !inline_history !567
  %i.acr = load ptr, ptr %i.aci, align 8, !tbaa !11
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 24
  %i.act = load ptr, ptr %i.acs, align 8
  call void %i.act(ptr noundef nonnull align 8 dereferenceable(16) %i.aci) #39, !inline_history !567
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs8BoundCRSEEED2Ev.exit383

bb.io:                                            ; preds = %bb.im
  %i.acu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i380 = icmp eq i8 %i.acu, 0
  br i1 %.not.i.i.i.i380, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.acv = add nsw i32 %i.acm, -1
  store i32 %i.acv, ptr %i.acj, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i381

bb.iq:                                            ; preds = %bb.io
  %i.acw = atomicrmw volatile add ptr %i.acj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i381

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i381: ; preds = %bb.iq, %bb.ip
  %.0.i.i.i.i.i382 = phi i32 [ %i.acm, %bb.ip ], [ %i.acw, %bb.iq ]
  %i.acx = icmp eq i32 %.0.i.i.i.i.i382, 1
  br i1 %i.acx, label %bb.ir, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs8BoundCRSEEED2Ev.exit383, !prof !43

bb.ir:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i381
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aci) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs8BoundCRSEEED2Ev.exit383

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs8BoundCRSEEED2Ev.exit383: ; preds = %bb.il, %bb.in, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i381, %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #39
  br label %bb.iu

bb.is:                                            ; preds = %.critedge504
  %i.acy = landingpad { ptr, i32 }
          cleanup
  br label %.body374

bb.it:                                            ; preds = %bb.ik
  %i.acz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs8BoundCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #39
  br label %.body374

.body374:                                         ; preds = %bb.is, %bb.ij, %bb.it
  %.pn152 = phi { ptr, i32 } [ %i.acz, %bb.it ], [ %i.acy, %bb.is ], [ %i.acc, %bb.ij ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #39
  br label %bb.jc

bb.iu:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs8BoundCRSEEED2Ev.exit383, %._crit_edge
  %i.ada = load ptr, ptr %22, align 8, !tbaa !569 ; 3 uses
  %i.adb = load ptr, ptr %i.gf, align 8, !tbaa !571 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ada, %i.adb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.iu, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.adt, %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i ], [ %i.ada, %bb.iu ] ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !30 ; 8 uses
  %.not.i.i.i.i.i.i.i384 = icmp eq ptr %i.add, null
  br i1 %.not.i.i.i.i.i.i.i384, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i, label %bb.iv

bb.iv:                                            ; preds = %.lr.ph.i.i.i
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 8 ; 4 uses
  %i.adf = load atomic i64, ptr %i.ade acquire, align 8 ; 2 uses
  %i.adg = icmp eq i64 %i.adf, 4294967297
  %i.adh = trunc i64 %i.adf to i32                ; 2 uses
  br i1 %i.adg, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  store i32 0, ptr %i.ade, align 8, !tbaa !39
  %i.adi = getelementptr inbounds nuw i8, ptr %i.add, i64 12
  store i32 0, ptr %i.adi, align 4, !tbaa !41
  %i.adj = load ptr, ptr %i.add, align 8, !tbaa !11
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 16
  %i.adl = load ptr, ptr %i.adk, align 8
  call void %i.adl(ptr noundef nonnull align 8 dereferenceable(16) %i.add) #39, !inline_history !572
  %i.adm = load ptr, ptr %i.add, align 8, !tbaa !11
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 24
  %i.ado = load ptr, ptr %i.adn, align 8
  call void %i.ado(ptr noundef nonnull align 8 dereferenceable(16) %i.add) #39, !inline_history !572
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i

bb.ix:                                            ; preds = %bb.iv
  %i.adp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.adp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.adq = add nsw i32 %i.adh, -1
  store i32 %i.adq, ptr %i.ade, align 8, !tbaa !32
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.iz:                                            ; preds = %bb.ix
  %i.adr = atomicrmw volatile add ptr %i.ade, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.iz, %bb.iy
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.adh, %bb.iy ], [ %i.adr, %bb.iz ]
  %i.ads = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ads, label %bb.ja, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i, !prof !43

bb.ja:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.add) #39
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i: ; preds = %bb.ja, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.iw, %.lr.ph.i.i.i
  %i.adt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i385 = icmp eq ptr %i.adt, %i.adb
  br i1 %.not.i.i.i385, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !573

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %22, align 8, !tbaa !569
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %bb.iu
  %i.adu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.ada, %bb.iu ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.adu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit, label %bb.jb

bb.jb:                                            ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.adv = load ptr, ptr %i.gz, align 8, !tbaa !574
  %i.adw = ptrtoint ptr %i.adv to i64
  %i.adx = ptrtoint ptr %i.adu to i64
  %i.ady = sub i64 %i.adw, %i.adx
  call void @_ZdlPvm(ptr noundef nonnull %i.adu, i64 noundef %i.ady) #38
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #39
  %i.adz = load ptr, ptr %20, align 8, !tbaa !538 ; 3 uses
  %.not.i.i386 = icmp eq ptr %i.adz, null
  br i1 %.not.i.i386, label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj9operation26CoordinateOperationContextESt14default_deleteIS6_EEED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj9operation26CoordinateOperationContextEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5osgeo4proj9operation26CoordinateOperationContextEEclEPS3_.exit.i.i: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !11
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  %i.aec = load ptr, ptr %i.aeb, align 8
  call void %i.aec(ptr noundef nonnull align 8 dereferenceable(16) %i.adz) #39, !inline_history !575
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj9operation26CoordinateOperationContextESt14default_deleteIS6_EEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj9operation26CoordinateOperationContextESt14default_deleteIS6_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev.exit, %_ZNKSt14default_deleteIN5osgeo4proj9operation26CoordinateOperationContextEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  br label %thread-pre-split

bb.jc:                                            ; preds = %.body374, %bb.ii
  %.merged161 = phi { ptr, i32 } [ %.pn152, %.body374 ], [ %.merged162, %bb.ii ]
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation19CoordinateOperationEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #39
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj9operation26CoordinateOperationFactoryESt14default_deleteIS6_EEED2Ev.exit240
  %.merged160 = phi { ptr, i32 } [ %.merged161, %bb.jc ], [ %.pn131.pn, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj9operation26CoordinateOperationFactoryESt14default_deleteIS6_EEED2Ev.exit240 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #39
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.de
  %.merged159 = phi { ptr, i32 } [ %.merged160, %bb.jd ], [ %i.nk, %bb.de ] ; 2 uses
  %i.aed = load ptr, ptr %20, align 8, !tbaa !538 ; 3 uses
  %.not.i.i387 = icmp eq ptr %i.aed, null
  br i1 %.not.i.i387, label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj9operation26CoordinateOperationContextESt14default_deleteIS6_EEED2Ev.exit389, label %_ZNKSt14default_deleteIN5osgeo4proj9operation26CoordinateOperationContextEEclEPS3_.exit.i.i388

_ZNKSt14default_deleteIN5osgeo4proj9operation26CoordinateOperationContextEEclEPS3_.exit.i.i388: ; preds = %bb.je
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !11
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aeg = load ptr, ptr %i.aef, align 8
  call void %i.aeg(ptr noundef nonnull align 8 dereferenceable(16) %i.aed) #39, !inline_history !575
  br label %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj9operation26CoordinateOperationContextESt14default_deleteIS6_EEED2Ev.exit389

_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj9operation26CoordinateOperationContextESt14default_deleteIS6_EEED2Ev.exit389: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj9operation26CoordinateOperationContextEEclEPS3_.exit.i.i388, %bb.je, %bb.dd
  %.merged158 = phi { ptr, i32 } [ %i.nj, %bb.dd ], [ %.merged159, %bb.je ], [ %.merged159, %_ZNKSt14default_deleteIN5osgeo4proj9operation26CoordinateOperationContextEEclEPS3_.exit.i.i388 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs11GeodeticCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %bb.jm

thread-pre-split:                                 ; preds = %_ZNSt10shared_ptrIN5osgeo4proj3crs11GeodeticCRSEEC2ERKS4_.exitthread-pre-split, %_ZN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj9operation26CoordinateOperationContextESt14default_deleteIS6_EEED2Ev.exit
  %.pr655 = load ptr, ptr %i.ga, align 8, !tbaa !30
end_hunk_0

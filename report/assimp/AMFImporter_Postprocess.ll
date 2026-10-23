Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/AMFImporter_Postprocess?download=true
inline.NumInlined: 1393
inline.NumDeleted: 732
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6Assimp11AMFImporter30Postprocess_BuildConstellationER16AMFConstellationRSt6vectorIP6aiNodeSaIS5_EE:bb.a
  %i.oj = load ptr, ptr %i.oh, align 8
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 1096
  store ptr %i.y, ptr %i.ol, align 8
  %i.om = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.q
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  store ptr %i.y, ptr %i.on, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.om, ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  %i.oo = load i64, ptr %i.c, align 8
  %i.op = add i64 %i.oo, 1
  store i64 %i.op, ptr %i.c, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.sroa.0124.0 = load ptr, ptr %.sroa.0124.0139, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0124.0, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.s:                                             ; preds = %bb.n
  %i.oq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 1144) #23
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.h
  %.pn29 = phi { ptr, i32 } [ %i.oq, %bb.s ], [ %i.v, %bb.h ], [ %lpad.loopexit.split-lp164, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ae

bb.t:                                             ; preds = %._crit_edge
  %i.or = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.or, ptr noundef nonnull @.str.8)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_throw(ptr nonnull %i.or, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.af unwind label %bb.ad

bb.v:                                             ; preds = %bb.t
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.or) #21
  br label %bb.ae

bb.w:                                             ; preds = %._crit_edge
  %i.ot = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ou = trunc i64 %i.ot to i32
  %i.ov = getelementptr inbounds nuw i8, ptr %i.d, i64 1104
  store i32 %i.ou, ptr %i.ov, align 8
  %i.ow = shl i64 %i.ot, 3
  %i.ox = and i64 %i.ow, 34359738360
  %i.oy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ox) #24
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.oz = getelementptr inbounds nuw i8, ptr %i.d, i64 1112 ; 2 uses
  store ptr %i.oy, ptr %i.oz, align 8
  %.sroa.056.0140 = load ptr, ptr %3, align 8     ; 2 uses
  %.not133141 = icmp eq ptr %.sroa.056.0140, %3
  br i1 %.not133141, label %._crit_edge146, label %.lr.ph145

._crit_edge146:                                   ; preds = %.lr.ph145, %bb.x
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.pb = load ptr, ptr %i.pa, align 8            ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.pd = load ptr, ptr %i.pc, align 8
  %.not.i = icmp eq ptr %i.pb, %i.pd
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge146
  store ptr %i.d, ptr %i.pb, align 8
  %i.pe = load ptr, ptr %i.pa, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store ptr %i.pf, ptr %i.pa, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.z:                                             ; preds = %._crit_edge146
  %i.pg = load ptr, ptr %2, align 8               ; 4 uses
  %i.ph = ptrtoint ptr %i.pb to i64
  %i.pi = ptrtoint ptr %i.pg to i64               ; 2 uses
  %i.pj = sub i64 %i.ph, %i.pi                    ; 5 uses
  %i.pk = icmp eq i64 %i.pj, 9223372036854775800
  br i1 %i.pk, label %bb.aa, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.pl = ashr exact i64 %i.pj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.pl, i64 1)
  %i.pm = add nsw i64 %.sroa.speculated.i.i.i, %i.pl ; 2 uses
  %i.pn = icmp ult i64 %i.pm, %i.pl
  %i.po = call i64 @llvm.umin.i64(i64 %i.pm, i64 1152921504606846975)
  %i.pp = select i1 %i.pn, i64 1152921504606846975, i64 %i.po ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.pp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.pq = shl nuw nsw i64 %i.pp, 3
  %i.pr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pq) #24
          to label %.noexc50 unwind label %bb.ad  ; 4 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ps = getelementptr inbounds i8, ptr %i.pr, i64 %i.pj ; 2 uses
  store ptr %i.d, ptr %i.ps, align 8
  %i.pt = icmp sgt i64 %i.pj, 0
  br i1 %i.pt, label %bb.ab, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ab:                                            ; preds = %.noexc50
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pr, ptr align 8 %i.pg, i64 %i.pj, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ab, %.noexc50
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %.not.i17.i.i = icmp eq ptr %i.pg, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.pv = load ptr, ptr %i.pc, align 8
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = sub i64 %i.pw, %i.pi
  call void @_ZdlPvm(ptr noundef nonnull %i.pg, i64 noundef %i.px) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.pr, ptr %2, align 8
  store ptr %i.pu, ptr %i.pa, align 8
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.pr, i64 %i.pp
  store ptr %i.py, ptr %i.pc, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.ad:                                            ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.aa, %bb.a, %bb.u, %bb.w
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.lr.ph145:                                        ; preds = %bb.x, %.lr.ph145
  %.sroa.056.0143 = phi ptr [ %.sroa.056.0, %.lr.ph145 ], [ %.sroa.056.0140, %bb.x ] ; 2 uses
  %.022142 = phi i64 [ %i.qd, %.lr.ph145 ], [ 0, %bb.x ] ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.056.0143, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8
  %i.qc = load ptr, ptr %i.oz, align 8
  %i.qd = add i64 %.022142, 1
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %.022142
  store ptr %i.qb, ptr %i.qe, align 8
  %.sroa.056.0 = load ptr, ptr %.sroa.056.0143, align 8 ; 2 uses
  %.not133 = icmp eq ptr %.sroa.056.0, %3
  br i1 %.not133, label %._crit_edge146, label %.lr.ph145

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.y
  %i.qf = load ptr, ptr %3, align 8               ; 2 uses
  %.not8.i.i = icmp eq ptr %i.qf, %3
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.qg, %.lr.ph.i.i ], [ %i.qf, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.qg = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #23
  %.not.i.i = icmp eq ptr %i.qg, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !88

_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.ae:                                            ; preds = %bb.ad, %bb.v, %.loopexit.split-lp, %bb.e
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %.loopexit.split-lp ], [ %i.p, %bb.e ], [ %i.os, %bb.v ], [ %i.pz, %bb.ad ]
  %i.qh = load ptr, ptr %3, align 8               ; 2 uses
  %.not8.i.i51 = icmp eq ptr %i.qh, %3
  br i1 %.not8.i.i51, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit55, label %.lr.ph.i.i52

.lr.ph.i.i52:                                     ; preds = %bb.ae, %.lr.ph.i.i52
  %.09.i.i53 = phi ptr [ %i.qi, %.lr.ph.i.i52 ], [ %i.qh, %bb.ae ] ; 2 uses
  %i.qi = load ptr, ptr %.09.i.i53, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i53, i64 noundef 24) #23
  %.not.i.i54 = icmp eq ptr %i.qi, %3
  br i1 %.not.i.i54, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit55, label %.lr.ph.i.i52, !llvm.loop !88

_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit55: ; preds = %.lr.ph.i.i52, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn29.pn

bb.af:                                            ; preds = %bb.u, %bb.g
  unreachable
}

declare noundef zeroext i1 @_ZNK6Assimp11AMFImporter18Find_ConvertedNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIP6aiNodeSaISB_EEPSB_(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

declare void @_ZN6Assimp13SceneCombiner4CopyEPP6aiNodePKS1_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11AMFImporter22Postprocess_BuildSceneEP7aiScene(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.89", align 8    ; 18 uses
  %3 = alloca %"class.std::vector.61", align 8    ; 10 uses
  %4 = alloca %"class.std::vector.56", align 8    ; 12 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %struct.aiString, align 4           ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.d = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1096
  store ptr null, ptr %i.f, align 8
  %i.g = load i32, ptr %1, align 8
  %i.h = or i32 %i.g, 32
  store i32 %i.h, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.0187.0.in = phi ptr [ %i.i, %bb.c ], [ %.sroa.0187.0, %bb.f ]
  %.sroa.0187.0 = load ptr, ptr %.sroa.0187.0.in, align 8 ; 3 uses
  %.not195 = icmp eq ptr %.sroa.0187.0, %i.i
  br i1 %.not195, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1144) #23
  br label %_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit142

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0187.0, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %.not.not = icmp eq i32 %i.n, 9
  br i1 %.not.not, label %bb.j, label %bb.d

bb.g:                                             ; preds = %bb.d
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.9)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #21
  br label %_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit142

bb.j:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 9 uses
  %.sroa.0183.0229 = load ptr, ptr %i.q, align 8  ; 3 uses
  %.not196230 = icmp eq ptr %.sroa.0183.0229, %i.q
  br i1 %.not196230, label %.preheader215, label %.lr.ph

.preheader215.loopexit:                           ; preds = %bb.l
  %.sroa.0179.0232.pre = load ptr, ptr %i.q, align 8
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.loopexit, %bb.j
  %.sroa.0179.0232 = phi ptr [ %.sroa.0179.0232.pre, %.preheader215.loopexit ], [ %.sroa.0183.0229, %bb.j ] ; 3 uses
  %.not197233 = icmp eq ptr %.sroa.0179.0232, %i.q
  br i1 %.not197233, label %.preheader212.a, label %.lr.ph235

.lr.ph235:                                        ; preds = %.preheader215
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.m

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %.sroa.0183.0231 = phi ptr [ %.sroa.0183.0, %bb.l ], [ %.sroa.0183.0229, %bb.j ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0183.0231, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.w, 5
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  invoke void @_ZN6Assimp11AMFImporter25Postprocess_BuildMaterialERK11AMFMaterial(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.u)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %.sroa.0183.0 = load ptr, ptr %.sroa.0183.0231, align 8 ; 2 uses
  %.not196 = icmp eq ptr %.sroa.0183.0, %i.q
  br i1 %.not196, label %.preheader215.loopexit, label %.lr.ph

.preheader212.loopexit:                           ; preds = %bb.v
  %.sroa.0175.0239.pre = load ptr, ptr %i.q, align 8
  br label %.preheader212.a

.preheader212.a:                                  ; preds = %.preheader212.loopexit, %.preheader215
  %.sroa.0175.0239 = phi ptr [ %.sroa.0175.0239.pre, %.preheader212.loopexit ], [ %.sroa.0179.0232, %.preheader215 ] ; 2 uses
  %.not198240 = icmp eq ptr %.sroa.0175.0239, %i.q
  br i1 %.not198240, label %._crit_edge, label %.lr.ph242

.lr.ph242:                                        ; preds = %.preheader212.a
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.w

bb.m:                                             ; preds = %.lr.ph235, %bb.v
  %.sroa.0179.0234 = phi ptr [ %.sroa.0179.0232, %.lr.ph235 ], [ %.sroa.0179.0, %bb.v ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0179.0234, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp eq i32 %i.ad, 8
  br i1 %i.ae, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8
  invoke void @_ZN6Assimp11AMFImporter30Postprocess_BuildNodeAndObjectERK9AMFObjectRSt6vectorIP6aiMeshSaIS6_EEPP6aiNode(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.a)
          to label %bb.o unwind label %.loopexit.split-lp217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not115 = icmp eq ptr %i.af, null
  br i1 %.not115, label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.ah = load ptr, ptr %i.s, align 8
  %.not.i = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.af, ptr %i.ag, align 8
  %i.ai = load ptr, ptr %i.r, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.r, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.r:                                             ; preds = %bb.p
  %i.ak = load ptr, ptr %2, align 8               ; 4 uses
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 5 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.s, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc unwind label %.loopexit.split-lp217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #24
          to label %.noexc119 unwind label %.loopexit.split-lp217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc119:                                        ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  store ptr %i.af, ptr %i.aw, align 8
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %bb.t, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.t:                                             ; preds = %.noexc119
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.t, %.noexc119
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.az = load ptr, ptr %i.s, align 8
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bb) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.av, ptr %2, align 8
  store ptr %i.ay, ptr %i.r, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bc, ptr %i.s, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

.loopexit.split-lp217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.n, %bb.s
  %lpad.loopexit.split-lp394 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit142

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %bb.m
  %.sroa.0179.0 = load ptr, ptr %.sroa.0179.0234, align 8 ; 2 uses
  %.not197 = icmp eq ptr %.sroa.0179.0, %i.q
  br i1 %.not197, label %.preheader212.loopexit, label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorIP11AMFMetadataSaIS1_EE9push_backEOS1_.exit, %.preheader212.a
  %i.bd = phi ptr [ null, %.preheader212.a ], [ %i.cm, %_ZNSt6vectorIP11AMFMetadataSaIS1_EE9push_backEOS1_.exit ] ; 11 uses
  store ptr %i.bd, ptr %4, align 8
  %i.be = load ptr, ptr %i.e, align 8
  invoke void @_ZNK6Assimp11AMFImporter23Postprocess_AddMetadataERKSt6vectorIP11AMFMetadataSaIS3_EER6aiNode(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(1144) %i.be)
          to label %.preheader210 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader210:                                    ; preds = %._crit_edge
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.bh = load ptr, ptr %2, align 8               ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp ugt i64 %i.bk, 8
  br i1 %i.bl, label %.preheader, label %.thread191

bb.w:                                             ; preds = %.lr.ph242, %_ZNSt6vectorIP11AMFMetadataSaIS1_EE9push_backEOS1_.exit
  %i.bm = phi ptr [ null, %.lr.ph242 ], [ %i.cl, %_ZNSt6vectorIP11AMFMetadataSaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %.sroa.0175.0241 = phi ptr [ %.sroa.0175.0239, %.lr.ph242 ], [ %.sroa.0175.0, %_ZNSt6vectorIP11AMFMetadataSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.bn = phi ptr [ null, %.lr.ph242 ], [ %i.cm, %_ZNSt6vectorIP11AMFMetadataSaIS1_EE9push_backEOS1_.exit ] ; 10 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0175.0241, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8            ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNK6Assimp11AMFImporter30Postprocess_BuildConstellationER16AMFConstellationRSt6vectorIP6aiNodeSaIS5_EE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

thread-pre-split:                                 ; preds = %bb.x
  %.pr = load i32, ptr %i.bq, align 8
  br label %bb.y

bb.y:                                             ; preds = %thread-pre-split, %bb.w
  %i.bt = phi i32 [ %.pr, %thread-pre-split ], [ %i.br, %bb.w ]
  %i.bu = icmp eq i32 %i.bt, 6
  br i1 %i.bu, label %bb.z, label %_ZNSt6vectorIP11AMFMetadataSaIS1_EE9push_backEOS1_.exit

bb.z:                                             ; preds = %bb.y
  %8 = load ptr, ptr %i.z, align 8
  %.not.i.i = icmp eq ptr %i.bm, %8
  br i1 %.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.bp, ptr %i.bm, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  store ptr %i.bv, ptr %i.y, align 8
  br label %_ZNSt6vectorIP11AMFMetadataSaIS1_EE9push_backEOS1_.exit

bb.ab:                                            ; preds = %bb.z
  %i.bw = ptrtoint ptr %i.bm to i64
  %i.bx = ptrtoint ptr %i.bn to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 6 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.ac, label %_ZNKSt6vectorIP11AMFMetadataSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.bn, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc120:                                        ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIP11AMFMetadataSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ab
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %i.ce = select i1 %i.cc, i64 1152921504606846975, i64 %i.cd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #24
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc121:                                        ; preds = %_ZNKSt6vectorIP11AMFMetadataSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.by ; 2 uses
  store ptr %i.bp, ptr %i.ch, align 8
  %i.ci = icmp sgt i64 %i.by, 0
  br i1 %i.ci, label %bb.ad, label %_ZNSt6vectorIP11AMFMetadataSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.ad:                                            ; preds = %.noexc121
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr align 8 %i.bn, i64 %i.by, i1 false)
  br label %_ZNSt6vectorIP11AMFMetadataSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP11AMFMetadataSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.ad, %.noexc121
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP11AMFMetadataSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIP11AMFMetadataSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.by) #23
  br label %_ZNSt6vectorIP11AMFMetadataSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP11AMFMetadataSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ae, %_ZNSt6vectorIP11AMFMetadataSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.cj, ptr %i.y, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.ck, ptr %i.z, align 8
  br label %_ZNSt6vectorIP11AMFMetadataSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP11AMFMetadataSaIS1_EE9push_backEOS1_.exit: ; preds = %bb.aa, %_ZNSt6vectorIP11AMFMetadataSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.y
  %i.cl = phi ptr [ %i.bv, %bb.aa ], [ %i.cj, %_ZNSt6vectorIP11AMFMetadataSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.bm, %bb.y ]
  %i.cm = phi ptr [ %i.bn, %bb.aa ], [ %i.cg, %_ZNSt6vectorIP11AMFMetadataSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.bn, %bb.y ] ; 2 uses
  %.sroa.0175.0 = load ptr, ptr %.sroa.0175.0241, align 8 ; 2 uses
  %.not198 = icmp eq ptr %.sroa.0175.0, %i.q
  br i1 %.not198, label %._crit_edge, label %bb.w

.preheader:                                       ; preds = %.preheader210, %bb.al
  %i.cn = phi ptr [ %i.dm, %bb.al ], [ %i.bg, %.preheader210 ] ; 3 uses
  %i.co = phi ptr [ %i.dn, %bb.al ], [ %i.bh, %.preheader210 ] ; 3 uses
  %.not199247 = icmp eq ptr %i.co, %i.cn
  br i1 %.not199247, label %.thread191, label %.lr.ph249.a

.loopexit206.a:                                   ; preds = %bb.af, %.lr.ph249.a
  %i.cp = phi ptr [ %i.cq, %.lr.ph249.a ], [ %i.cs, %bb.af ] ; 2 uses
  %.not199 = icmp eq ptr %i.cr, %i.cp
  br i1 %.not199, label %.thread191.loopexit, label %.lr.ph249.a, !llvm.loop !89

.lr.ph249.a:                                      ; preds = %.preheader, %.loopexit206.a
  %i.cq = phi ptr [ %i.cp, %.loopexit206.a ], [ %i.cn, %.preheader ] ; 2 uses
  %.sroa.0168.0248 = phi ptr [ %i.cr, %.loopexit206.a ], [ %i.co, %.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0168.0248, i64 8 ; 5 uses
  %.not202243 = icmp eq ptr %i.cr, %i.cq
  br i1 %.not202243, label %.loopexit206.a, label %.lr.ph246

bb.af:                                            ; preds = %_ZN6aiNode8FindNodeERK8aiString.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0163.0244, i64 8 ; 3 uses
  %i.ct = load ptr, ptr %i.bf, align 8
  %.not202.a = icmp eq ptr %i.cs, %i.ct
  br i1 %.not202.a, label %.loopexit206.a, label %.lr.ph246, !llvm.loop !90

.lr.ph246:                                        ; preds = %.lr.ph249.a, %bb.af
  %.sroa.0163.0244 = phi ptr [ %i.cs, %bb.af ], [ %i.cr, %.lr.ph249.a ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.0163.0244, align 8
  %i.cv = load ptr, ptr %.sroa.0168.0248, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = invoke noundef ptr @_ZN6aiNode8FindNodeEPKc(ptr noundef nonnull align 8 dereferenceable(1144) %i.cu, ptr noundef nonnull %i.cw)
          to label %_ZN6aiNode8FindNodeERK8aiString.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

_ZN6aiNode8FindNodeERK8aiString.exit:             ; preds = %.lr.ph246
  %.not = icmp eq ptr %i.cx, null
  br i1 %.not, label %bb.af, label %bb.ag

bb.ag:                                            ; preds = %_ZN6aiNode8FindNodeERK8aiString.exit
  %i.cy = load ptr, ptr %2, align 8               ; 2 uses
  %i.cz = ptrtoint ptr %.sroa.0168.0248 to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i.i123 = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i.i123, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  %i.di = icmp sgt i64 %i.dh, 8
  br i1 %i.di, label %bb.ai, label %bb.aj, !prof !95

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dc, ptr nonnull align 8 %i.dd, i64 %i.dh, i1 false)
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.dj = icmp eq i64 %i.dh, 8
  br i1 %i.dj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load ptr, ptr %i.dd, align 8
  store ptr %i.dk, ptr %i.dc, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag
  %i.dl = load ptr, ptr %i.bf, align 8
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 4 uses
  store ptr %i.dm, ptr %i.bf, align 8
  %i.dn = load ptr, ptr %2, align 8               ; 3 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = icmp ugt i64 %i.dq, 8
  br i1 %i.dr, label %.preheader, label %.thread191

.thread191.loopexit:                              ; preds = %.loopexit206.a
  %.pre = load ptr, ptr %2, align 8
  br label %.thread191

.thread191:                                       ; preds = %bb.al, %.preheader, %.thread191.loopexit, %.preheader210
  %i.ds = phi ptr [ %i.bg, %.preheader210 ], [ %i.cr, %.thread191.loopexit ], [ %i.dm, %bb.al ], [ %i.cn, %.preheader ] ; 2 uses
  %i.dt = phi ptr [ %i.bh, %.preheader210 ], [ %.pre, %.thread191.loopexit ], [ %i.dn, %bb.al ], [ %i.co, %.preheader ] ; 3 uses
  %i.du = icmp eq ptr %i.dt, %i.ds
  br i1 %i.du, label %.loopexit205, label %bb.am

bb.am:                                            ; preds = %.thread191
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = lshr exact i64 %i.dx, 3
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = load ptr, ptr %i.e, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1104
  store i32 %i.dz, ptr %i.eb, align 8
  %i.ec = load ptr, ptr %i.e, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1104
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = zext i32 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 3
  %i.eh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eg) #24
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am
  %i.ei = load ptr, ptr %i.e, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1112
  store ptr %i.eh, ptr %i.ej, align 8
  %i.ek = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1104
  %i.em = load i32, ptr %i.el, align 8
  %.not274 = icmp eq i32 %i.em, 0
  br i1 %.not274, label %.loopexit205, label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.an, %.lr.ph256
  %i.en = phi ptr [ %i.ex, %.lr.ph256 ], [ %i.ek, %bb.an ]
  %.089254 = phi i64 [ %i.ew, %.lr.ph256 ], [ 0, %bb.an ] ; 2 uses
  %.sroa.0159.0253 = phi ptr [ %i.eq, %.lr.ph256 ], [ %i.dt, %bb.an ] ; 3 uses
  %i.eo = load ptr, ptr %.sroa.0159.0253, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1096
  store ptr %i.en, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0159.0253, i64 8
  %i.er = load ptr, ptr %.sroa.0159.0253, align 8
  %i.es = load ptr, ptr %i.e, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1112
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.089254
  store ptr %i.er, ptr %i.ev, align 8
  %i.ew = add nuw nsw i64 %.089254, 1             ; 2 uses
  %i.ex = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1104
  %i.ez = load i32, ptr %i.ey, align 8
  %i.fa = zext i32 %i.ez to i64
  %i.fb = icmp samesign ult i64 %i.ew, %i.fa
  br i1 %i.fb, label %.lr.ph256, label %.loopexit205, !llvm.loop !91

.loopexit205:                                     ; preds = %.lr.ph256, %bb.an, %.thread191
  %i.fc = load ptr, ptr %3, align 8               ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = icmp eq ptr %i.fc, %i.fe
  br i1 %i.ff, label %.loopexit204, label %bb.ao

bb.ao:                                            ; preds = %.loopexit205
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.fc to i64
  %i.fi = sub i64 %i.fg, %i.fh                    ; 2 uses
  %i.fj = lshr exact i64 %i.fi, 3
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i32 %i.fk, ptr %i.fl, align 8
  %i.fm = and i64 %i.fi, 34359738360
  %i.fn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fm) #24
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.fn, ptr %i.fo, align 8
  %i.fp = load i32, ptr %i.fl, align 8
  %.not275 = icmp eq i32 %i.fp, 0
  br i1 %.not275, label %.loopexit204, label %.lr.ph260

.lr.ph260:                                        ; preds = %bb.ap, %.lr.ph260
  %.088258 = phi i64 [ %i.fu, %.lr.ph260 ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.0156.0257 = phi ptr [ %i.fq, %.lr.ph260 ], [ %i.fc, %bb.ap ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0156.0257, i64 8
  %i.fr = load ptr, ptr %.sroa.0156.0257, align 8
  %i.fs = load ptr, ptr %i.fo, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.088258
  store ptr %i.fr, ptr %i.ft, align 8
  %i.fu = add nuw nsw i64 %.088258, 1             ; 2 uses
  %i.fv = load i32, ptr %i.fl, align 8
  %i.fw = zext i32 %i.fv to i64
  %i.fx = icmp samesign ult i64 %i.fu, %i.fw
  br i1 %i.fx, label %.lr.ph260, label %.loopexit204, !llvm.loop !92

.loopexit204:                                     ; preds = %.lr.ph260, %bb.ap, %.loopexit205
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8            ; 2 uses
  %i.gb = trunc i64 %i.ga to i32                  ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.gb, ptr %i.gc, align 8
  %.not106 = icmp eq i32 %i.gb, 0
  br i1 %.not106, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %.loopexit204
  %i.gd = shl i64 %i.ga, 3
  %i.ge = and i64 %i.gd, 34359738360
  %i.gf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ge) #24
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  store ptr %i.gf, ptr %i.gg, align 8
  %.sroa.0151.0261 = load ptr, ptr %i.fy, align 8 ; 2 uses
  %.not200262 = icmp eq ptr %.sroa.0151.0261, %i.fy
  br i1 %.not200262, label %._crit_edge267, label %.lr.ph266

._crit_edge267:                                   ; preds = %bb.as, %bb.ar
  %i.gh = load i64, ptr %i.fz, align 8            ; 2 uses
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.gi, ptr %i.gj, align 8
  %i.gk = shl i64 %i.gh, 3
  %i.gl = and i64 %i.gk, 34359738360
  %i.gm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gl) #24
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph266:                                        ; preds = %bb.ar, %bb.as
  %.sroa.0151.0264 = phi ptr [ %.sroa.0151.0, %bb.as ], [ %.sroa.0151.0261, %bb.ar ] ; 5 uses
  %.0263 = phi i64 [ %i.hq, %bb.as ], [ 0, %bb.ar ] ; 6 uses
  %i.gn = invoke noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #24
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.as:                                            ; preds = %.lr.ph266
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1060) %i.gn, i8 0, i64 17, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.go, i8 0, i64 1036, i1 false)
  %i.gp = load ptr, ptr %i.gg, align 8
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.0263
  store ptr %i.gn, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0151.0264, i64 48
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = load ptr, ptr %i.gg, align 8
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.0263
  %i.gw = load ptr, ptr %i.gv, align 8
  store i32 %i.gt, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0151.0264, i64 56
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = load ptr, ptr %i.gg, align 8
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.0263
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store i32 %i.gz, ptr %i.hd, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0151.0264, i64 88
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = load ptr, ptr %i.gg, align 8
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %.0263
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  store ptr %i.hf, ptr %i.hj, align 8
  %i.hk = load ptr, ptr %i.gg, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.0263
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0151.0264, i64 73
  %i.hp = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.hn, ptr noundef nonnull dereferenceable(1) %i.ho, i64 noundef 9) #21 ; 0 uses
  %i.hq = add i64 %.0263, 1
  %.sroa.0151.0 = load ptr, ptr %.sroa.0151.0264, align 8 ; 2 uses
  %.not200 = icmp eq ptr %.sroa.0151.0, %i.fy
  br i1 %.not200, label %._crit_edge267, label %.lr.ph266

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNKSt6vectorIP11AMFMetadataSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.x
  %lpad.loopexit213 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bn, ptr %4, align 8
  br label %thread-pre-split193

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph266, %.lr.ph246
  %lpad.loopexit.split-lp.a = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split193

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.k
  %lpad.loopexit282 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit142

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ao, %bb.am, %bb.ac, %bb.h, %._crit_edge, %bb.a, %._crit_edge267, %bb.aq
  %.pr194298 = phi ptr [ %i.bd, %bb.ao ], [ %i.bd, %bb.am ], [ %i.bn, %bb.ac ], [ null, %bb.h ], [ %i.bd, %._crit_edge ], [ null, %bb.a ], [ %i.bd, %._crit_edge267 ], [ %i.bd, %bb.aq ]
  %lpad.loopexit.split-lp283 = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split193

bb.at:                                            ; preds = %._crit_edge267
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  store ptr %i.gm, ptr %i.hr, align 8
  %.sroa.0147.0268 = load ptr, ptr %i.fy, align 8 ; 2 uses
  %.not201269 = icmp eq ptr %.sroa.0147.0268, %i.fy
  br i1 %.not201269, label %.loopexit, label %.lr.ph273

.lr.ph273:                                        ; preds = %bb.at
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph273, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit134
  %.sroa.0147.0271 = phi ptr [ %.sroa.0147.0268, %.lr.ph273 ], [ %.sroa.0147.0, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit134 ] ; 2 uses
  %.1270 = phi i64 [ 0, %.lr.ph273 ], [ %i.jr, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit134 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i64 noundef %.1270)
          to label %bb.av unwind label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.hw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %.noexc124 unwind label %bb.bc ; 6 uses

.noexc124:                                        ; preds = %bb.av
  store ptr %i.hs, ptr %6, align 8, !alias.scope !96
  %i.hx = load ptr, ptr %i.hw, align 8            ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 5 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.aw:                                            ; preds = %.noexc124
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ib = load i64, ptr %i.ia, align 8            ; 3 uses
  %i.ic = icmp ult i64 %i.ib, 16
  call void @llvm.assume(i1 %i.ic)
  %i.id = add nuw nsw i64 %i.ib, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hs, ptr noundef nonnull align 8 dereferenceable(1) %i.hy, i64 %i.id, i1 false)
  br label %bb.ax

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc124
  store ptr %i.hx, ptr %6, align 8, !alias.scope !96
  %i.ie = load i64, ptr %i.hy, align 8
  store i64 %i.ie, ptr %i.hs, align 8, !alias.scope !96
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aw
  %i.if = phi i64 [ %i.ib, %bb.aw ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i64 %i.if, ptr %i.ht, align 8, !alias.scope !96
  store ptr %i.hy, ptr %i.hw, align 8
  store i64 0, ptr %i.ig, align 8
  store i8 0, ptr %i.hy, align 8
  %i.ih = load i64, ptr %i.ht, align 8            ; 3 uses
  %i.ii = trunc i64 %i.ih to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.hu, i8 0, i64 1024, i1 false)
  %i.ij = and i64 %i.ih, 4294966272
  %.not.i125 = icmp eq i64 %i.ij, 0
  %spec.select.i = select i1 %.not.i125, i32 %i.ii, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %5, align 4
  %i.ik = load ptr, ptr %6, align 8               ; 3 uses
  %i.il = zext i32 %spec.select.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hu, ptr align 1 %i.ik, i64 %i.il, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.il
  store i8 0, ptr %i.im, align 1
  %i.in = icmp eq ptr %i.ik, %i.hs
  br i1 %i.in, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.ax
  %i.io = icmp ult i64 %i.ih, 16
  call void @llvm.assume(i1 %i.io)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.ax
  %i.ip = load i64, ptr %i.hs, align 8
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.iq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  %i.ir = load ptr, ptr %7, align 8               ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.hv
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.it = load i64, ptr %i.hv, align 8
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0147.0271, i64 72
  %i.iw = load i8, ptr %i.iv, align 8, !range !8, !noundef !9
  %i.ix = zext nneg i8 %i.iw to i32
  store i32 %i.ix, ptr %i.c, align 4
  %i.iy = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24
          to label %bb.ay unwind label %bb.bd     ; 3 uses

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.iy)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.iz = load ptr, ptr %i.hr, align 8
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.1270
  store ptr %i.iy, ptr %i.ja, align 8
  %i.jb = load ptr, ptr %i.hr, align 8
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.1270
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.jd, ptr noundef nonnull %5, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 0)
          to label %bb.ba unwind label %bb.bd     ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.jf = load ptr, ptr %i.hr, align 8
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.1270
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.bd ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %bb.ba
  %i.jj = load ptr, ptr %i.hr, align 8
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %.1270
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit132 unwind label %bb.bd ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit132:   ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.jn = load ptr, ptr %i.hr, align 8
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.1270
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit134 unwind label %bb.bd ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit134:   ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit132
  %i.jr = add i64 %.1270, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.sroa.0147.0 = load ptr, ptr %.sroa.0147.0271, align 8 ; 2 uses
  %.not201 = icmp eq ptr %.sroa.0147.0, %i.fy
  br i1 %.not201, label %.loopexit, label %bb.au

bb.bb:                                            ; preds = %bb.au
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.bc:                                            ; preds = %bb.av
  %i.jt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ju = load ptr, ptr %7, align 8               ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.hv
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.bc
  %i.jw = load i64, ptr %i.hv, align 8
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.js, %bb.bb ], [ %i.jt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %i.jt, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.bg

bb.bd:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit132, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit, %bb.ba, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.ay
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef 16) #23
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn108 = phi { ptr, i32 } [ %i.jy, %bb.bd ], [ %i.jz, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %.pn108.pn = phi { ptr, i32 } [ %.pn108, %bb.bf ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %thread-pre-split193

.loopexit:                                        ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit134, %bb.at, %.loopexit204
  %.not.i.i.i138 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %10 = load ptr, ptr %9, align 8
  %i.ka = ptrtoint ptr %10 to i64
  %i.kb = ptrtoint ptr %i.bd to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.kc) #23
  br label %_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit

_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit:     ; preds = %.loopexit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i.i.i139 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = ptrtoint ptr %i.fc to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.kh) #23
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ki = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i140 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = ptrtoint ptr %i.kk to i64
  %i.km = ptrtoint ptr %i.ki to i64
  %i.kn = sub i64 %i.kl, %i.km
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.kn) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

thread-pre-split193:                              ; preds = %bb.bg, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %11 = phi ptr [ %i.bn, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.bd, %bb.bg ], [ %i.bd, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ], [ %.pr194298, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn116.pn = phi { ptr, i32 } [ %lpad.loopexit213, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.pn108.pn, %bb.bg ], [ %lpad.loopexit.split-lp.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp283, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %11, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit142, label %bb.bk

bb.bk:                                            ; preds = %thread-pre-split193
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %13 = load ptr, ptr %12, align 8
  %i.ko = ptrtoint ptr %13 to i64
  %i.kp = ptrtoint ptr %11 to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %i.kq) #23
  br label %_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit142

_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit142:  ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i, %bb.e, %thread-pre-split193, %bb.bk
  %.pn116.pn347 = phi { ptr, i32 } [ %.pn116.pn, %bb.bk ], [ %.pn116.pn, %thread-pre-split193 ], [ %lpad.loopexit282, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp394, %.loopexit.split-lp217.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.p, %bb.i ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.kr = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i143 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit144, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit142
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = ptrtoint ptr %i.kr to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef %i.kw) #23
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit144

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit144:        ; preds = %_ZNSt6vectorIP11AMFMetadataSaIS1_EED2Ev.exit142, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.kx = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i145 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i145, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit146, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit144
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.kx to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lc) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit146

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit146:        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit144, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn116.pn347

bb.bn:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !alias.scope !103
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !alias.scope !103
  store i8 0, ptr %i.b, align 8, !alias.scope !103
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !noalias !103 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !103 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !noalias !103 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !alias.scope !103 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !alias.scope !103
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #23
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ah) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %eh.lpad-body
}

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #21
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #21
  ret void
end_hunk_0

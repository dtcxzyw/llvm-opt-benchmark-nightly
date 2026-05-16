inline.NumInlined: 2245
inline.NumDeleted: 1028
begin_hunk_0_@_ZN6google8protobuf8compiler4java27MessageBuilderLiteGenerator8GenerateEPNS0_2io7PrinterE:bb.a
  %i.ji = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.jh, ptr noundef nonnull %i.fj)
          to label %bb.ab unwind label %bb.av

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit122
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = sub i64 %i.jj, %i.fk                    ; 5 uses
  store i64 %i.jk, ptr %20, align 8, !tbaa !121
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !123
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  store ptr %i.fm, ptr %19, align 8, !tbaa !124, !alias.scope !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !196
  store i64 %i.jk, ptr %i.a, align 8, !tbaa !199, !noalias !196
  %i.jl = icmp ugt i64 %i.jk, 15
  br i1 %i.jl, label %.noexc.i.i125, label %._crit_edge.i.i.i124

.noexc.i.i125:                                    ; preds = %bb.ab
  %i.jm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc128 unwind label %bb.av ; 2 uses

.noexc128:                                        ; preds = %.noexc.i.i125
  store ptr %i.jm, ptr %19, align 8, !tbaa !120, !alias.scope !196
  %i.jn = load i64, ptr %i.a, align 8, !tbaa !199, !noalias !196
  store i64 %i.jn, ptr %i.fm, align 8, !tbaa !107, !alias.scope !196
  br label %._crit_edge.i.i.i124

._crit_edge.i.i.i124:                             ; preds = %.noexc128, %bb.ab
  %i.jo = phi ptr [ %i.jm, %.noexc128 ], [ %i.fm, %bb.ab ] ; 2 uses
  switch i64 %i.jk, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i124
  %i.jp = load i8, ptr %i.fj, align 8, !tbaa !107
  store i8 %i.jp, ptr %i.jo, align 1, !tbaa !107
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i124
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jo, ptr nonnull align 8 %i.fj, i64 %i.jk, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i124
  %i.jq = load i64, ptr %i.a, align 8, !tbaa !199, !noalias !196 ; 2 uses
  store i64 %i.jq, ptr %i.fn, align 8, !tbaa !125, !alias.scope !196
  %i.jr = load ptr, ptr %19, align 8, !tbaa !120, !alias.scope !196
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jq
  store i8 0, ptr %i.js, align 1, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA12_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.101") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 1 dereferenceable(12) @.str.14)
          to label %.noexc133 unwind label %bb.aw

.noexc133:                                        ; preds = %bb.ae
  %i.jt = load i8, ptr %i.fo, align 8, !tbaa !183, !range !63, !alias.scope !200, !noundef !64
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.noexc133
  %.sroa.2.0.copyload.i.i.i132 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i131, align 8, !alias.scope !200 ; 5 uses
  store i64 11, ptr %.sroa.2.0.copyload.i.i.i132, align 8, !tbaa !121
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i132, i64 8
  store ptr @.str.14, ptr %i.jv, align 8, !tbaa !123
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i132, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i132, i64 32 ; 2 uses
  store ptr %i.jx, ptr %i.jw, align 8, !tbaa !124
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i132, i64 24
  store i64 0, ptr %i.jy, align 8, !tbaa !125
  store i8 0, ptr %i.jx, align 8, !tbaa !107
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.noexc133
  %.sroa.2.0.copyload.i130 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i131, align 8 ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i130, i64 16 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !120 ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i130, i64 32 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  %i.kd = load ptr, ptr %19, align 8, !tbaa !120  ; 6 uses
  %i.ke = icmp eq ptr %i.kd, %i.fm                ; 2 uses
  br i1 %i.kc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ag
  br i1 %i.ke, label %bb.ah, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ag
  br i1 %i.ke, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.kf = load i64, ptr %i.fn, align 8, !tbaa !125 ; 3 uses
  %i.kg = icmp ult i64 %i.kf, 16
  call void @llvm.assume(i1 %i.kg)
  %.not21.i = icmp eq ptr %19, %i.jz
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ai, !prof !205

bb.ai:                                            ; preds = %bb.ah
  switch i64 %i.kf, label %bb.ak [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.kh = load i8, ptr %i.kd, align 1, !tbaa !107
  store i8 %i.kh, ptr %i.ka, align 1, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr align 1 %i.kd, i64 %i.kf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.ki = load i64, ptr %i.fn, align 8, !tbaa !125 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i130, i64 24
  store i64 %i.ki, ptr %i.kj, align 8, !tbaa !125
  %i.kk = load ptr, ptr %i.jz, align 8, !tbaa !120
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.ki
  store i8 0, ptr %i.kl, align 1, !tbaa !107
  %.pre.i = load ptr, ptr %19, align 8, !tbaa !120
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i130, i64 24
  store ptr %i.kd, ptr %i.jz, align 8, !tbaa !120
  %i.kn = load <2 x i64>, ptr %i.fn, align 8, !tbaa !107
  store <2 x i64> %i.kn, ptr %i.km, align 8, !tbaa !107
  br label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ko = load i64, ptr %i.kb, align 8, !tbaa !107
  store ptr %i.kd, ptr %i.jz, align 8, !tbaa !120
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i130, i64 24
  %i.kq = load <2 x i64>, ptr %i.fn, align 8, !tbaa !107
  store <2 x i64> %i.kq, ptr %i.kp, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.ka, null
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ka, ptr %19, align 8, !tbaa !120
  store i64 %i.ko, ptr %i.fm, align 8, !tbaa !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.fm, ptr %19, align 8, !tbaa !120
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.al, %bb.am
  %i.kr = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ka, %bb.al ], [ %i.fm, %bb.am ], [ %i.kd, %bb.ah ]
  store i64 0, ptr %i.fn, align 8, !tbaa !125
  store i8 0, ptr %i.kr, align 1, !tbaa !107
  %i.ks = load ptr, ptr %19, align 8, !tbaa !120  ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.fm
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ku = load i64, ptr %i.fm, align 8, !tbaa !107
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 157, ptr nonnull @.str.15)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  invoke void @_ZN6google8protobuf2io7Printer8AnnotateINS0_15OneofDescriptorEEEvSt17basic_string_viewIcSt11char_traitsIcEES8_PKT_St8optionalINS1_19AnnotationCollector8SemanticEE(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 1, ptr nonnull @.str.4, i64 1, ptr nonnull @.str.6, ptr noundef nonnull %i.if, i64 0)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 135, ptr nonnull @.str.16)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN6google8protobuf2io7Printer8AnnotateINS0_15OneofDescriptorEEEvSt17basic_string_viewIcSt11char_traitsIcEES8_PKT_St8optionalINS1_19AnnotationCollector8SemanticEE(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 1, ptr nonnull @.str.4, i64 1, ptr nonnull @.str.6, ptr noundef nonnull %i.if, i64 4294967297)
          to label %bb.aq unwind label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0169.0197, i64 11
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !107
  %.not.i.i = icmp eq i8 %i.kx, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ky = add nsw i32 %.sroa.8.0198, 1            ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0169.0197, i64 10
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !107
  %i.lb = zext i8 %i.la to i32
  %i.lc = icmp eq i32 %i.ky, %i.lb
  br i1 %i.lc, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %bb.as
  %.01521.i.i.i = phi ptr [ %i.ld, %bb.as ], [ %.sroa.0169.0197, %bb.ar ] ; 2 uses
  %i.ld = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !106 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 11
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !107
  %.not17.i.i.i = icmp eq i8 %i.lf, 0
  br i1 %.not17.i.i.i, label %bb.as, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.lh = load i8, ptr %i.lg, align 8, !tbaa !107 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 10
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !107
  %i.lk = icmp eq i8 %i.lh, %i.lj
  br i1 %i.lk, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !206

.thread.i.i:                                      ; preds = %bb.aq
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0169.0197, i64 256
  %i.lm = add i32 %.sroa.8.0198, 1
  %i.ln = and i32 %i.lm, 255
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.lo
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.lp, %.thread.i.i ], [ %i.ls, %bb.at ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !106 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !107
  %.not.i.i.i.i137 = icmp eq i8 %i.lr, 0
  %i.ls = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i137, label %bb.at, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !207

.critedge.loopexit23.i.i.i:                       ; preds = %bb.as
  %i.lt = zext i8 %i.lh to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.at, %.critedge.loopexit23.i.i.i, %bb.ar
  %.sroa.0169.1 = phi ptr [ %.116.i.i.i, %bb.at ], [ %.sroa.0169.0197, %bb.ar ], [ %i.ld, %.critedge.loopexit23.i.i.i ], [ %.sroa.0169.0197, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.8.1 = phi i32 [ 0, %bb.at ], [ %i.ky, %bb.ar ], [ %i.lt, %.critedge.loopexit23.i.i.i ], [ %i.ky, %.lr.ph.i.i.i ] ; 2 uses
  %i.lu = icmp ne ptr %.sroa.0169.1, %i.fb
  %i.lv = icmp ne i32 %.sroa.8.1, %i.fe
  %.not3.i = select i1 %i.lu, i1 true, i1 %i.lv
  br i1 %.not3.i, label %bb.u, label %.preheader

bb.au:                                            ; preds = %bb.aa, %bb.y, %bb.x, %bb.v, %bb.ao, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.u
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %.noexc.i.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit122
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.aw:                                            ; preds = %bb.ae
  %i.ly = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lz = load ptr, ptr %19, align 8, !tbaa !120  ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.fm
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.aw
  %i.mb = load i64, ptr %i.fm, align 8, !tbaa !107
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.av
  %.pn61 = phi { ptr, i32 } [ %i.lx, %bb.av ], [ %i.ly, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %i.ly, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %.body

bb.ax:                                            ; preds = %bb.ap
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %bb.bf, %bb.be
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %.lr.ph200, %bb.bg
  %indvars.iv = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 1, ptr nonnull @.str.17)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

bb.bb:                                            ; preds = %bb.az
  %i.mg = load i64, ptr %4, align 8, !tbaa !208   ; 2 uses
  %i.mh = icmp eq i64 %i.mg, 0
  br i1 %i.mh, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mi = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !107
  %i.mj = load i64, ptr %i.ft, align 8, !tbaa !209
  %i.mk = and i64 %i.mj, 65536
  %i.ml = icmp ne i64 %i.mk, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.mg, ptr noundef %i.mi, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ml)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mm = landingpad { ptr, i32 }
          catch ptr null
  %i.mn = extractvalue { ptr, i32 } %i.mm, 0
  call void @__clang_call_terminate(ptr %i.mn) #26
  unreachable

bb.be:                                            ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.mo = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 64
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !80
  %i.mr = getelementptr inbounds nuw [88 x i8], ptr %i.mq, i64 %indvars.iv
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6google8protobuf8compiler4java17FieldGeneratorMapINS2_27ImmutableFieldLiteGeneratorEE3getEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef %i.mr)
          to label %bb.bf unwind label %bb.ay     ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !7
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  %i.mv = load ptr, ptr %i.mu, align 8
  invoke void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef nonnull %1)
          to label %bb.bg unwind label %bb.ay

bb.bg:                                            ; preds = %bb.bf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mw = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !66
  %i.mz = sext i32 %i.my to i64
  %i.na = icmp slt i64 %indvars.iv.next, %i.mz
  br i1 %i.na, label %bb.az, label %._crit_edge, !llvm.loop !210

._crit_edge:                                      ; preds = %bb.bg, %.preheader
  %.lcssa = phi ptr [ %i.fp, %.preheader ], [ %i.mw, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.nb = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !211 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.nd, align 1
  %i.ne = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.nf = xor i64 %i.ne, -1
  %i.ng = getelementptr inbounds i8, ptr %i.nc, i64 %i.nf
  store i64 %i.ne, ptr %21, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.ng, ptr %i.nh, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA10_cSt17basic_string_viewIcSt11char_traitsIcEEEEEvS8_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 56, ptr nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(10) @.str.19, ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %bb.bh unwind label %bb.bq

bb.bh:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  invoke void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %1)
          to label %bb.bi unwind label %bb.t

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i143 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i143, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 2, ptr nonnull @.str.20)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

bb.bk:                                            ; preds = %bb.bi
  %i.nj = load i64, ptr %3, align 8, !tbaa !208   ; 2 uses
  %i.nk = icmp eq i64 %i.nj, 0
  br i1 %i.nk, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nl = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i143, align 8, !tbaa !107
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !209
  %i.no = and i64 %i.nn, 65536
  %i.np = icmp ne i64 %i.no, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.nj, ptr noundef %i.nl, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.np)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nq = landingpad { ptr, i32 }
          catch ptr null
  %i.nr = extractvalue { ptr, i32 } %i.nq, 0
  call void @__clang_call_terminate(ptr %i.nr) #26
  unreachable

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ns = load i64, ptr %12, align 8, !tbaa !208
  %i.nt = icmp eq i64 %i.ns, 0
  br i1 %i.nt, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %12, ptr %2, align 8, !tbaa !212
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 48, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS8_SaIcEEEEENS3_10StringHashENS3_8StringEqESaISt4pairIKS9_SD_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSO_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIS7_EESF_INSJ_8iteratorEbERKT_:bb.a
.thread:                                          ; preds = %.critedge18
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !107
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.am
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.aq = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ap, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.at, align 8, !tbaa !183
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #20

declare void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS8_SaIcEEEEENS3_10StringHashENS3_8StringEqESaISt4pairIKS9_SD_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSO_SP_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS7_SaIcEEEEENS2_10StringHashENS2_8StringEqESaISt4pairIKS8_SC_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSN_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !107
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS7_SaIcEEEEENS2_10StringHashENS2_8StringEqESaISt4pairIKS8_SC_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSN_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS7_SaIcEEEEENS2_10StringHashENS2_8StringEqESaISt4pairIKS8_SC_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSN_SO_EENSt13invoke_resultIT_JDpT0_EE4typeEOST_DpOSU_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJRPNS1_13map_slot_typeIiS8_EEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESR_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !107   ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre12 = load i8, ptr %.phi.trans.insert11, align 1, !tbaa !107
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !106 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !107   ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !106 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !107   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit, !llvm.loop !305

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !107   ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !88
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit ], [ %.pre12, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EmmEv.exit ], [ %1, %._crit_edge ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.y = icmp eq i8 %i.t, %i.u
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult i8 %i.t, 15
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = shl nuw nsw i8 %i.t, 1
  %i.ab = tail call i8 @llvm.umin.i8(i8 %i.aa, i8 15) ; 2 uses
  %i.ac = shl nuw i8 %i.ab, 4
  %i.ad = zext i8 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 16
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #27 ; 12 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !106
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 0, ptr %i.ag, align 8, !tbaa !107
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 0, ptr %i.ah, align 1, !tbaa !107
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %i.ab, ptr %i.ai, align 1, !tbaa !107
  store ptr %i.af, ptr %4, align 8, !tbaa !86
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !107  ; 3 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 4          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJRPNS1_13map_slot_typeIiS8_EEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESR_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4.preheader

.lr.ph.i.i.i4.preheader:                          ; preds = %bb.d
  %i.an = add nsw i64 %.idx.i.i.i, -16            ; 2 uses
  %i.ao = lshr exact i64 %i.an, 4
  %i.ap = add nuw nsw i64 %i.ao, 1
  %xtraiter = and i64 %i.ap, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i4.prol

.lr.ph.i.i.i4.prol:                               ; preds = %.lr.ph.i.i.i4.preheader, %.lr.ph.i.i.i4.prol
  %.015.i.pn.i.i.prol = phi ptr [ %.015.i.i.i.prol, %.lr.ph.i.i.i4.prol ], [ %i.af, %.lr.ph.i.i.i4.preheader ]
  %.01214.i.i.i.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i4.prol ], [ %i.al, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i4.prol ], [ 0, %.lr.ph.i.i.i4.preheader ]
  %.015.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.pn.i.i.prol, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.i.i.prol, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i.i.i.prol, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i4.prol.loopexit, label %.lr.ph.i.i.i4.prol, !llvm.loop !306

.lr.ph.i.i.i4.prol.loopexit:                      ; preds = %.lr.ph.i.i.i4.prol, %.lr.ph.i.i.i4.preheader
  %.015.i.pn.i.i.unr = phi ptr [ %i.af, %.lr.ph.i.i.i4.preheader ], [ %.015.i.i.i.prol, %.lr.ph.i.i.i4.prol ]
  %.01214.i.i.i.unr = phi ptr [ %i.al, %.lr.ph.i.i.i4.preheader ], [ %i.aq, %.lr.ph.i.i.i4.prol ]
  %i.ar = icmp ult i64 %i.an, 48
  br i1 %i.ar, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJRPNS1_13map_slot_typeIiS8_EEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESR_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.prol.loopexit, %.lr.ph.i.i.i4
  %.015.i.pn.i.i = phi ptr [ %.015.i.i.i.3, %.lr.ph.i.i.i4 ], [ %.015.i.pn.i.i.unr, %.lr.ph.i.i.i4.prol.loopexit ] ; 4 uses
  %.01214.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i4 ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i4.prol.loopexit ] ; 5 uses
  %.015.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.pn.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i.i.i, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 16
  %.015.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.i.i.1, ptr noundef nonnull align 1 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 32
  %.015.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.pn.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.i.i.2, ptr noundef nonnull align 1 dereferenceable(16) %i.at, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 48
  %.015.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.pn.i.i, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.i.i.3, ptr noundef nonnull align 1 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i5.3 = icmp eq ptr %i.av, %i.am
  br i1 %.not.i.i.i5.3, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJRPNS1_13map_slot_typeIiS8_EEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESR_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4, !llvm.loop !308

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJRPNS1_13map_slot_typeIiS8_EEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESR_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i4.prol.loopexit, %.lr.ph.i.i.i4, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  store i8 %i.aj, ptr %i.aw, align 2, !tbaa !107
  store i8 0, ptr %i.x, align 1, !tbaa !107
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16clear_and_deleteEPSG_PSE_(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w)
  store ptr %i.af, ptr %i.w, align 8, !tbaa !106
  store ptr %i.af, ptr %0, align 8, !tbaa !106
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre13 = load ptr, ptr %4, align 8, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJRPNS1_13map_slot_typeIiS8_EEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESR_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.ax = phi ptr [ %i.af, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE16internal_emplaceIJRPNS1_13map_slot_typeIiS8_EEEEENS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EESR_DpOT_ENKUlhE_clEh.exit ], [ %.pre13, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %i.ba = and i32 %i.ay, 255                      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 10 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !107 ; 3 uses
  %i.bd = icmp ugt i8 %i.bc, %i.az
  %i.be = zext nneg i32 %i.ba to i64              ; 2 uses
  br i1 %i.bd, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bg = getelementptr [16 x i8], ptr %i.bf, i64 %i.be ; 2 uses
  %narrow.i = sub nuw i8 %i.bc, %i.az
  %i.bh = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bh, 4
  %i.bi = getelementptr i8, ptr %i.bg, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bg, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.bb, align 1, !tbaa !107
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.bj = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bc, %bb.f ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.be
  %i.bm = load ptr, ptr %3, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  %i.bn = add i8 %i.bj, 1                         ; 3 uses
  store i8 %i.bn, ptr %i.bb, align 1, !tbaa !107
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 11
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !107
  %.not.i18.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i18.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJRPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i
  %i.bq = zext i8 %i.bn to i32
  %i.br = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bs = icmp samesign ult i32 %i.br, %i.bq
  br i1 %i.bs, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJRPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 256 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.019.i = phi i8 [ %i.bn, %.lr.ph.i ], [ %i.bu, %bb.h ] ; 3 uses
  %i.bu = add i8 %.019.i, -1                      ; 3 uses
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !106 ; 2 uses
  %i.by = zext i8 %.019.i to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.by
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !106
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i8 %.019.i, ptr %i.ca, align 1, !tbaa !107
  %i.cb = zext i8 %i.bu to i32
  %i.cc = icmp samesign ult i32 %i.br, %i.cb
  br i1 %i.cc, label %bb.h, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJRPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit, !llvm.loop !309

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJRPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit: ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i, %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !36
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !36
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !106    ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106  ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !34
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !107   ; 5 uses
  %.not112 = icmp eq i8 %i.f, 0
  br i1 %.not112, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !106  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !107   ; 3 uses
  %i.n = icmp ult i8 %i.m, 15
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 15, %i.m
  %i.o = load i32, ptr %i.a, align 8, !tbaa !3
  %i.p = and i32 %i.o, 255                        ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 15
  %i.r = zext i1 %i.q to i8
  %i.s = lshr i8 %narrow, %i.r
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.p, %i.t
  %narrow113 = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.u = icmp samesign ult i8 %narrow113, 15
  %or.cond = select i1 %.not84, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_right_to_leftEhPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v)
  %i.w = load i32, ptr %i.a, align 8, !tbaa !3
  %i.x = and i32 %i.w, 255
  %i.y = sub nsw i32 %i.x, %i.t                   ; 3 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !3
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.l, align 1, !tbaa !107
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, 1
  %i.ad = add nsw i32 %i.ac, %i.ab
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !107 ; 2 uses
  %i.ag = icmp ult i8 %i.f, %i.af
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw i8 %i.f, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.aj = zext i8 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !106 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  %i.an = load i8, ptr %i.am, align 1, !tbaa !107 ; 3 uses
  %i.ao = icmp ult i8 %i.an, 15
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 15, %i.an
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i8
  %i.as = lshr i8 %narrow114, %i.ar
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.as, i8 1) ; 3 uses
  %i.at = and i32 %i.ap, 255
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.av = load i8, ptr %i.au, align 2, !tbaa !107
  %i.aw = zext i8 %i.av to i32
  %i.ax = zext nneg i8 %.sroa.speculated to i32
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %.not85 = icmp sle i32 %i.at, %i.ay
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.an
  %i.az = icmp samesign ult i8 %narrow115, 15
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.az
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_left_to_rightEhPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ba)
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !106
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !107
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = icmp sgt i32 %i.bb, %i.bf
  br i1 %i.bg, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bh = xor i32 %i.bf, -1
  %i.bi = add nsw i32 %i.bb, %i.bh
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = icmp eq i8 %i.af, 15
  br i1 %i.bj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bk = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !86
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !88
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bo = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #27 ; 6 uses
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !106
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 256
  store i32 0, ptr %i.bp, align 8
  store ptr %i.b, ptr %i.bq, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.br, align 8, !tbaa !107
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !106
  store ptr %i.bo, ptr %0, align 8, !tbaa !106
  %.pre = load ptr, ptr %1, align 8, !tbaa !106
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bs = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !107
  %.not116 = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !107
  %i.bx = add i8 %i.bw, 1                         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #27 ; 9 uses
  store ptr %.082, ptr %i.bz, align 8, !tbaa !106
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.ca, align 8, !tbaa !107
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  store i8 0, ptr %i.cb, align 1, !tbaa !107
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  store i8 0, ptr %i.cc, align 2, !tbaa !107
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 11
  store i8 15, ptr %i.cd, align 1, !tbaa !107
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.ce, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.by)
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !106
  %i.cg = load ptr, ptr %1, align 8, !tbaa !106
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !106
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ci = call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #27 ; 7 uses
  store ptr %.082, ptr %i.ci, align 8, !tbaa !106
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.bx, ptr %i.cj, align 8, !tbaa !107
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 9
  store i8 0, ptr %i.ck, align 1, !tbaa !107
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  store i8 0, ptr %i.cl, align 2, !tbaa !107
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  store i8 0, ptr %i.cm, align 1, !tbaa !107
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.cn, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.by)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bz, %bb.q ], [ %i.bz, %bb.p ], [ %i.ci, %bb.r ]
  %i.co = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.cp = load ptr, ptr %1, align 8, !tbaa !106
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !107
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = icmp sgt i32 %i.co, %i.cs
  br i1 %i.ct, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cu = xor i32 %i.cs, -1
  %i.cv = add nsw i32 %i.co, %i.cu
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink127 = phi i32 [ %i.bi, %bb.k ], [ %i.ad, %bb.f ], [ %i.cv, %bb.t ]
  %.sink = phi ptr [ %i.al, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink127, ptr %i.a, align 8, !tbaa !3
  store ptr %.sink, ptr %1, align 8, !tbaa !106
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_right_to_leftEhPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !107
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !107
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.c ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.l = zext i8 %1 to i32                        ; 3 uses
  %i.m = add nsw i32 %i.l, -1                     ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.n, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.m, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %i.i, %bb.a ]
  %.01214.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.o, %bb.a ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, label %.lr.ph.i, !llvm.loop !308

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !106
  %.pre60 = load i8, ptr %i.d, align 8, !tbaa !107
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit ], [ %i.f, %bb.a ]
  %i.r = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit ], [ %i.g, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %.pre-phi
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.t, ptr noundef nonnull align 1 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !107   ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = sub nsw i32 %i.x, %i.l
  %i.z = sext i32 %i.y to i64
  %i.aa = zext i8 %1 to i64                       ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.aa ; 2 uses
  %.idx.i44 = shl nuw nsw i64 %i.z, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.w, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit51, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.ae, %.lr.ph.i47 ], [ %i.o, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.ad, %.lr.ph.i47 ], [ %i.ab, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i48, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i49, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i48, i64 16
  %.not.i50 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit51, label %.lr.ph.i47, !llvm.loop !308

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit51: ; preds = %.lr.ph.i47, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !107
  %.not.i52 = icmp eq i8 %i.ag, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.aa, 1
  %i.aj = icmp eq i32 %i.m, 0
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.aa, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod62 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.ak = load i8, ptr %i.a, align 2, !tbaa !107
  %i.al = trunc i64 %indvars.iv.epil.init to i8
  %i.am = add i8 %i.al, 1
  %i.an = add i8 %i.ak, %i.am                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.epil.init
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !106 ; 3 uses
  %i.aq = zext i8 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aq
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i8 %i.an, ptr %i.as, align 1, !tbaa !107
  store ptr %0, ptr %i.ap, align 8, !tbaa !106
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.at = load i8, ptr %i.v, align 1, !tbaa !107
  %.not55 = icmp ult i8 %i.at, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.av = load i8, ptr %i.a, align 2, !tbaa !107
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aw = trunc nuw i64 %indvars.iv.next to i8
  %i.ax = add i8 %i.av, %i.aw                     ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !106 ; 3 uses
  %i.ba = zext i8 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ba
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !106
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i8 %i.ax, ptr %i.bc, align 1, !tbaa !107
  store ptr %0, ptr %i.az, align 8, !tbaa !106
  %i.bd = load i8, ptr %i.a, align 2, !tbaa !107
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.be = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.bf = add i8 %i.bd, %i.be                     ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !106 ; 3 uses
  %i.bi = zext i8 %i.bf to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bi
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i8 %i.bf, ptr %i.bk, align 1, !tbaa !107
  store ptr %0, ptr %i.bh, align 8, !tbaa !106
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !310

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.bs, %bb.c ] ; 4 uses
  %i.bl = add i8 %.056, %1
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !106 ; 3 uses
  %i.bp = zext i8 %.056 to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bp
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %.056, ptr %i.br, align 1, !tbaa !107
  store ptr %2, ptr %i.bo, align 8, !tbaa !106
  %i.bs = add i8 %.056, 1                         ; 2 uses
  %i.bt = zext i8 %i.bs to i32
  %i.bu = load i8, ptr %i.v, align 1, !tbaa !107
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bv, %i.l
  %.not = icmp slt i32 %i.bw, %i.bt
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !311

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit51
  %i.bx = load i8, ptr %i.a, align 2, !tbaa !107
  %i.by = add i8 %i.bx, %1
  store i8 %i.by, ptr %i.a, align 2, !tbaa !107
  %i.bz = load i8, ptr %i.v, align 1, !tbaa !107
  %i.ca = sub i8 %i.bz, %1
  store i8 %i.ca, ptr %i.v, align 1, !tbaa !107
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE23rebalance_left_to_rightEhPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !107   ; 2 uses
  %i.c = zext i8 %1 to i32                        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not15.i = icmp eq i8 %i.b, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.e, 4               ; 2 uses
  %i.f = zext i8 %1 to i64
  %i.g = getelementptr [16 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr [16 x i8], ptr %i.g, i64 %i.e ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i  ; 2 uses
  %i.j = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.k = lshr exact i64 %i.j, 4
  %i.l = add nuw nsw i64 %i.k, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.017.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.h, %.lr.ph.preheader.i ]
  %.01416.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %i.i, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.m = getelementptr inbounds i8, ptr %.017.i.prol, i64 -16 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.01416.i.prol, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(16) %i.n, i64 16, i1 false)
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !312

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.017.i.unr = phi ptr [ %i.h, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %.01416.i.unr = phi ptr [ %i.i, %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %i.j, 48
  br i1 %i.o, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.017.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.017.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01416.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.01416.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.017.i, i64 -16
  %i.q = getelementptr inbounds i8, ptr %.01416.i, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.017.i, i64 -32
  %i.s = getelementptr inbounds i8, ptr %.01416.i, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.r, ptr noundef nonnull align 1 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds i8, ptr %.017.i, i64 -48
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.t, ptr noundef nonnull align 1 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds i8, ptr %.017.i, i64 -64 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -64 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.v, ptr noundef nonnull align 1 dereferenceable(16) %i.w, i64 16, i1 false)
  %.not.i.3 = icmp eq ptr %i.w, %i.d
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit, label %.lr.ph.i, !llvm.loop !313

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.x = add nsw i32 %i.c, -1                     ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !107
  %i.ab = zext i8 %i.aa to i64
  %i.ac = load ptr, ptr %0, align 8, !tbaa !106
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ad, ptr noundef nonnull align 1 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !107
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = sub nsw i32 %i.ai, %i.x
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %.idx.i46 = shl nuw nsw i64 %i.y, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit, %.lr.ph.i48
  %.015.i = phi ptr [ %i.ap, %.lr.ph.i48 ], [ %i.d, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit ] ; 2 uses
  %.01214.i = phi ptr [ %i.ao, %.lr.ph.i48 ], [ %i.am, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  %.not.i49 = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !308

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit: ; preds = %.lr.ph.i48
  %.pre = load i8, ptr %i.ag, align 2, !tbaa !107
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit ], [ %i.ai, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit ]
  %i.aq = load ptr, ptr %0, align 8, !tbaa !106
  %i.ar = load i8, ptr %i.z, align 8, !tbaa !107
  %i.as = zext i8 %i.ar to i64
  %i.at = sub nsw i32 %.pre-phi, %i.c
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.as
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aw, ptr noundef nonnull align 1 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !107
  %.not.i50 = icmp eq i8 %i.az, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.ba = load i8, ptr %i.a, align 1, !tbaa !107  ; 5 uses
  %i.bb = add i8 %i.ba, 1                         ; 2 uses
  %.not5152 = icmp eq i8 %i.bb, 0
  br i1 %.not5152, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.bd = zext i8 %i.bb to i64                    ; 2 uses
  %i.be = and i8 %i.ba, 1
  %lcmp.mod66.not.not = icmp eq i8 %i.be, 0
  br i1 %lcmp.mod66.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.bf = add i8 %i.ba, %1                        ; 2 uses
  %i.bg = zext i8 %i.ba to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !106 ; 3 uses
  %i.bj = zext i8 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bj
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !106
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i8 %i.bf, ptr %i.bl, align 1, !tbaa !107
  store ptr %2, ptr %i.bi, align 8, !tbaa !106
  %indvars.iv.next.prol = add nsw i64 %i.bd, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.bm = icmp eq i8 %i.ba, 0
  br i1 %i.bm, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not54 = icmp eq i8 %1, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bp = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.bp, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.bq = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter68 = and i64 %i.bq, 1
  %i.br = icmp ult i8 %i.bp, 3
  br i1 %i.br, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.bq, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.bs = trunc nuw i64 %indvars.iv to i8
  %i.bt = add i8 %i.bs, -1                        ; 2 uses
  %i.bu = add i8 %i.bt, %1                        ; 2 uses
  %i.bv = zext i8 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !106 ; 3 uses
  %i.by = zext i8 %i.bu to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.by
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !106
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i8 %i.bu, ptr %i.ca, align 1, !tbaa !107
  store ptr %2, ptr %i.bx, align 8, !tbaa !106
  %i.cb = trunc i64 %indvars.iv to i8
  %i.cc = add i8 %i.cb, -2                        ; 2 uses
  %i.cd = add i8 %i.cc, %1                        ; 2 uses
  %i.ce = zext i8 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !106 ; 3 uses
  %i.ch = zext i8 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ch
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !106
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i8 %i.cd, ptr %i.cj, align 1, !tbaa !107
  store ptr %2, ptr %i.cg, align 8, !tbaa !106
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ck = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.ck, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !314

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.cl = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.cm = load i8, ptr %i.ag, align 2, !tbaa !107
  %i.cn = trunc nuw i64 %indvars.iv58 to i8
  %i.co = sub i8 %i.cn, %1
  %i.cp = add i8 %i.co, %i.cm
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !106 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cl
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !106
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = trunc nuw i64 %i.cl to i8
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !107
  store ptr %2, ptr %i.cs, align 8, !tbaa !106
  %i.cw = load i8, ptr %i.ag, align 2, !tbaa !107
  %i.cx = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.cx, %invariant.op
  %i.cy = add i8 %.reass, %i.cw
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !106 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv58
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !106
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !107
  store ptr %2, ptr %i.db, align 8, !tbaa !106
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !315

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod70 = trunc i64 %i.bq to i1
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.df = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.dg = load i8, ptr %i.ag, align 2, !tbaa !107
  %i.dh = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.di = sub i8 %i.dh, %1
  %i.dj = add i8 %i.di, %i.dg
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !106 ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.df
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !106
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = trunc nuw i64 %i.df to i8
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !107
  store ptr %2, ptr %i.dm, align 8, !tbaa !106
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.dq = load i8, ptr %i.ag, align 2, !tbaa !107
  %i.dr = sub i8 %i.dq, %1
  store i8 %i.dr, ptr %i.ag, align 2, !tbaa !107
  %i.ds = load i8, ptr %i.a, align 1, !tbaa !107
  %i.dt = add i8 %i.ds, %1
  store i8 %i.dt, ptr %i.a, align 1, !tbaa !107
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE5splitEiPSG_PSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 15, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 1, !tbaa !107
  %i.c = add i8 %i.b, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !107
  %i.f = lshr i8 %i.e, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !107
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.k = sub i8 %i.i, %.sink                      ; 3 uses
  store i8 %i.k, ptr %i.h, align 1, !tbaa !107
  %i.l = load i8, ptr %i.j, align 1, !tbaa !107   ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = zext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.n ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.m, 4               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.l, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.r = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.s = lshr exact i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.s, 1
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.015.i.pn.prol = phi ptr [ %.015.i.prol, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ]
  %.01214.i.prol = phi ptr [ %i.u, %.lr.ph.i.prol ], [ %i.p, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %.015.i.prol = getelementptr inbounds nuw i8, ptr %.015.i.pn.prol, i64 16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.prol, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i.prol, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !316

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.015.i.pn.unr = phi ptr [ %2, %.lr.ph.i.preheader ], [ %.015.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %i.p, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %i.v = icmp ult i64 %i.r, 48
  br i1 %i.v, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i.3, %.lr.ph.i ], [ %.015.i.pn.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01214.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i, ptr noundef nonnull align 1 dereferenceable(16) %.01214.i, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i, i64 16
  %.015.i.1 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.1, ptr noundef nonnull align 1 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 32
  %.015.i.2 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.2, ptr noundef nonnull align 1 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i, i64 48
  %.015.i.3 = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.015.i.3, ptr noundef nonnull align 1 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i, i64 64 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.z, %i.q
  br i1 %.not.i.3, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, label %.lr.ph.i, !llvm.loop !308

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load i8, ptr %i.h, align 1, !tbaa !107
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit, %bb.d
  %i.aa = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ab = add i8 %i.aa, -1                        ; 2 uses
  store i8 %i.ab, ptr %i.h, align 1, !tbaa !107
  %i.ac = load ptr, ptr %0, align 8, !tbaa !106   ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !107 ; 4 uses
  %i.af = zext i8 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.af
  %i.ah = zext i8 %i.ae to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 10 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !107 ; 3 uses
  %i.ak = icmp ult i8 %i.ae, %i.aj
  %i.al = zext i8 %i.ae to i64                    ; 2 uses
  br i1 %i.ak, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.an = getelementptr [16 x i8], ptr %i.am, i64 %i.al ; 2 uses
  %narrow.i = sub nuw i8 %i.aj, %i.ae
  %i.ao = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ao, 4
  %i.ap = getelementptr i8, ptr %i.an, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.an, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.ai, align 1, !tbaa !107
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit
  %i.aq = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.aj, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE10transfer_nEmmmPSG_PSE_.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.at = add i8 %i.aq, 1                         ; 3 uses
  store i8 %i.at, ptr %i.ai, align 1, !tbaa !107
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 11
  %i.av = load i8, ptr %i.au, align 1, !tbaa !107
  %.not.i18.i = icmp eq i8 %i.av, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i
  %i.aw = zext i8 %i.at to i32
  %i.ax = add nuw nsw i32 %i.ah, 1                ; 2 uses
  %i.ay = icmp samesign ult i32 %i.ax, %i.aw
  br i1 %i.ay, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 256 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i27
  %.019.i = phi i8 [ %i.at, %.lr.ph.i27 ], [ %i.ba, %bb.f ] ; 3 uses
  %i.ba = add i8 %.019.i, -1                      ; 3 uses
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !106 ; 2 uses
  %i.be = zext i8 %.019.i to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.be
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !106
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i8 %.019.i, ptr %i.bg, align 1, !tbaa !107
  %i.bh = zext i8 %i.ba to i32
  %i.bi = icmp samesign ult i32 %i.ax, %i.bh
  br i1 %i.bi, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit, !llvm.loop !317

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE19transfer_n_backwardEmmmPSG_PSE_.exit.i, %bb.e
  %i.bj = load ptr, ptr %0, align 8, !tbaa !106
  %i.bk = load i8, ptr %i.ad, align 8, !tbaa !107
  %i.bl = add i8 %i.bk, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 256
  %i.bn = zext i8 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn
  store ptr %2, ptr %i.bo, align 8, !tbaa !106
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !107
  %.not.i28 = icmp eq i8 %i.bq, 0
  br i1 %.not.i28, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit
  %i.br = load i8, ptr %i.h, align 2, !tbaa !107
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.0.in30 = phi i8 [ %i.br, %bb.g ], [ %.0, %bb.h ]
  %.02529 = phi i8 [ 0, %bb.g ], [ %i.ca, %bb.h ] ; 3 uses
  %.0 = add i8 %.0.in30, 1                        ; 2 uses
  %i.bu = zext i8 %.0 to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !106 ; 3 uses
  %i.bx = zext i8 %.02529 to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bx
  store ptr %i.bw, ptr %i.by, align 8, !tbaa !106
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i8 %.02529, ptr %i.bz, align 1, !tbaa !107
  store ptr %2, ptr %i.bw, align 8, !tbaa !106
  %i.ca = add i8 %.02529, 1                       ; 2 uses
  %i.cb = load i8, ptr %i.j, align 1, !tbaa !107
  %.not = icmp ugt i8 %i.ca, %i.cb
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !318

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsIiPKN6google8protobuf15OneofDescriptorESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE13emplace_valueIJPNS1_13map_slot_typeIiS8_EEEEEvhPSE_DpOT_.exit
  ret void
}

declare void @_ZN6google8protobuf8compiler4java17ClassNameResolver12GetClassNameB5cxx11EPKNS0_10DescriptorEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296), i64, ptr, ptr, i64, ptr noundef byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSC_SaIcEEENS0_18container_internal10StringHashENSI_8StringEqESaISt4pairIKSD_SH_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !233, !range !63, !noundef !64
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS0_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !319
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !221  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !221
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !227  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS0_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS0_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS0_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit: ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIN4absl12lts_2025051213flat_hash_mapISC_NSt7__cxx1112basic_stringIcSB_SaIcEEENSK_18container_internal10StringHashENSQ_8StringEqESaISt4pairIKSC_SP_EEEEEEDaPKT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !321    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #29
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = load i64, ptr %2, align 8, !tbaa !223
  store i64 %i.u, ptr %i.q, align 8, !tbaa !223
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_, ptr %i.s, align 8, !tbaa !224
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation, ptr %i.r, align 8, !tbaa !227
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !322, !noalias !325
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !224, !alias.scope !325, !noalias !322
  store ptr %i.x, ptr %i.v, align 8, !tbaa !224, !alias.scope !322, !noalias !325
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !227, !alias.scope !325, !noalias !322 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !327, !alias.scope !328
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !227, !alias.scope !322, !noalias !325
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !325, !noalias !322
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i, !llvm.loop !329

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i18 = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !330, !noalias !333
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !224, !alias.scope !333, !noalias !330
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !224, !alias.scope !330, !noalias !333
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !227, !alias.scope !333, !noalias !330 ; 2 uses
  %.not.i.i.not.i.i.i.i.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i17
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !327, !alias.scope !335
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !227, !alias.scope !330, !noalias !333
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !333, !noalias !330
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21, %.lr.ph.i.i.i17
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !329

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ], [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !222
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #28
  br label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit

_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit: ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !321
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !221
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !222
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.128") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !199, !noalias !342
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !242, !noalias !342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.a = load ptr, ptr %1, align 8, !tbaa !218, !noalias !346
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !346
end_hunk_1

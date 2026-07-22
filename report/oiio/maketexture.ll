inline.NumInlined: 6379
inline.NumDeleted: 1713
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN11OpenImageIO4v3_1L17make_texture_implENS0_12ImageBufAlgo15MakeTextureModeEPKNS0_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_RKNS0_9ImageSpecEPSo:bb.a
  store ptr @.str.109, ptr %188, align 8, !tbaa !7
  %i.byi = getelementptr inbounds nuw i8, ptr %188, i64 8
  store i64 19, ptr %i.byi, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %189, i8 0, i64 16, i1 false)
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %187, ptr noundef nonnull align 8 dereferenceable(160) %58, ptr noundef nonnull dead_on_return %188, ptr noundef nonnull dead_on_return %189)
          to label %bb.vk unwind label %bb.vr

bb.vk:                                            ; preds = %.thread2452
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.byj = load ptr, ptr %187, align 8, !tbaa !7, !noalias !217 ; 3 uses
  %.not.not.i1413 = icmp eq ptr %i.byj, null
  br i1 %.not.not.i1413, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit1418.thread, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.byk = getelementptr inbounds nuw i8, ptr %187, i64 8
  %i.byl = load i64, ptr %i.byk, align 8, !tbaa !12, !noalias !217 ; 4 uses
  %i.bym = getelementptr inbounds nuw i8, ptr %186, i64 16 ; 3 uses
  store ptr %i.bym, ptr %186, align 8, !tbaa !16, !alias.scope !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #30, !noalias !217
  store i64 %i.byl, ptr %i.q, align 8, !tbaa !18, !noalias !217
  %i.byn = icmp ugt i64 %i.byl, 15
  br i1 %i.byn, label %.noexc.i.i1415, label %._crit_edge.i.i.i1414

.noexc.i.i1415:                                   ; preds = %bb.vl
  %i.byo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %186, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc1417 unwind label %bb.vr ; 2 uses

.noexc1417:                                       ; preds = %.noexc.i.i1415
  store ptr %i.byo, ptr %186, align 8, !tbaa !19, !alias.scope !217
  %i.byp = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !217
  store i64 %i.byp, ptr %i.bym, align 8, !tbaa !21, !alias.scope !217
  br label %._crit_edge.i.i.i1414

._crit_edge.i.i.i1414:                            ; preds = %.noexc1417, %bb.vl
  %i.byq = phi ptr [ %i.byo, %.noexc1417 ], [ %i.bym, %bb.vl ] ; 2 uses
  switch i64 %i.byl, label %bb.vn [
    i64 1, label %bb.vm
    i64 0, label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit1418
  ]

bb.vm:                                            ; preds = %._crit_edge.i.i.i1414
  %i.byr = load i8, ptr %i.byj, align 1, !tbaa !21
  store i8 %i.byr, ptr %i.byq, align 1, !tbaa !21
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit1418

bb.vn:                                            ; preds = %._crit_edge.i.i.i1414
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.byq, ptr nonnull align 1 %i.byj, i64 %i.byl, i1 false)
  br label %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit1418

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit1418.thread: ; preds = %bb.vk
  %i.bys = getelementptr inbounds nuw i8, ptr %186, i64 16 ; 2 uses
  store ptr %i.bys, ptr %186, align 8, !tbaa !16, !alias.scope !217
  %i.byt = getelementptr inbounds nuw i8, ptr %186, i64 8
  store i64 0, ptr %i.byt, align 8, !tbaa !22, !alias.scope !217
  store i8 0, ptr %i.bys, align 8, !tbaa !21, !alias.scope !217
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #30
  br label %bb.ww

_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit1418: ; preds = %._crit_edge.i.i.i1414, %bb.vm, %bb.vn
  %i.byu = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !217 ; 2 uses
  %i.byv = getelementptr inbounds nuw i8, ptr %186, i64 8 ; 2 uses
  store i64 %i.byu, ptr %i.byv, align 8, !tbaa !22, !alias.scope !217
  %i.byw = load ptr, ptr %186, align 8, !tbaa !19, !alias.scope !217
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byw, i64 %i.byu
  store i8 0, ptr %i.byx, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30, !noalias !217
  %.pre2645 = load i64, ptr %i.byv, align 8, !tbaa !22
  %i.byy = icmp eq i64 %.pre2645, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #30
  br i1 %i.byy, label %bb.ww, label %bb.vo

bb.vo:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit1418
  %i.byz = getelementptr inbounds nuw i8, ptr %186, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %190) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %190, i8 0, i64 24, i1 false)
  %i.bza = load ptr, ptr %186, align 8, !tbaa !19
  store ptr %i.bza, ptr %191, align 8, !tbaa !7
  %i.bzb = getelementptr inbounds nuw i8, ptr %191, i64 8
  %i.bzc = load i64, ptr %i.byz, align 8, !tbaa !22
  store i64 %i.bzc, ptr %i.bzb, align 8, !tbaa !12
  store ptr @.str.110, ptr %192, align 8, !tbaa !7
  %i.bzd = getelementptr inbounds nuw i8, ptr %192, i64 8
  store i64 1, ptr %i.bzd, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_17Strutil5splitENS0_17basic_string_viewIcSt11char_traitsIcEEERSt6vectorINSt7__cxx1112basic_stringIcS4_SaIcEEESaISA_EES5_i(ptr noundef nonnull dead_on_return %191, ptr noundef nonnull align 8 dereferenceable(24) %190, ptr noundef nonnull dead_on_return %192, i32 noundef -1)
          to label %bb.vp unwind label %bb.vs

bb.vp:                                            ; preds = %bb.vo
  %i.bze = load ptr, ptr %64, align 16, !tbaa !80
  %i.bzf = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_18ImageBuf7specmodEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bze)
          to label %.preheader unwind label %bb.vt ; 4 uses

.preheader:                                       ; preds = %bb.vp
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bzf, i64 60 ; 2 uses
  %i.bzh = load i32, ptr %i.bzg, align 4, !tbaa !171 ; 2 uses
  %i.bzi = icmp sgt i32 %i.bzh, 0
  br i1 %i.bzi, label %.lr.ph2588, label %._crit_edge2589

.lr.ph2588:                                       ; preds = %.preheader
  %i.bzj = getelementptr inbounds nuw i8, ptr %190, i64 8
  %i.bzk = getelementptr inbounds nuw i8, ptr %193, i64 16 ; 7 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %193, i64 8 ; 9 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzf, i64 96
  %i.bzn = getelementptr inbounds nuw i8, ptr %194, i64 8
  %i.bzo = getelementptr inbounds nuw i8, ptr %195, i64 8
  %i.bzp = getelementptr inbounds nuw i8, ptr %196, i64 8
  %i.bzq = getelementptr inbounds nuw i8, ptr %197, i64 8
  %i.bzr = getelementptr inbounds nuw i8, ptr %198, i64 8
  %i.bzs = getelementptr inbounds nuw i8, ptr %199, i64 8
  %i.bzt = getelementptr inbounds nuw i8, ptr %200, i64 8
  %i.bzu = getelementptr inbounds nuw i8, ptr %201, i64 8
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.bzf, i64 120
  %i.bzw = getelementptr inbounds nuw i8, ptr %202, i64 8
  %i.bzx = getelementptr inbounds nuw i8, ptr %203, i64 8
  %i.bzy = getelementptr inbounds nuw i8, ptr %204, i64 8
  %i.bzz = getelementptr inbounds nuw i8, ptr %205, i64 8
  %i.caa = getelementptr inbounds nuw i8, ptr %206, i64 8
  %i.cab = getelementptr inbounds nuw i8, ptr %207, i64 8
  %i.cac = getelementptr inbounds nuw i8, ptr %208, i64 8
  %i.cad = getelementptr inbounds nuw i8, ptr %209, i64 8
  %i.cae = getelementptr inbounds nuw i8, ptr %i.bzf, i64 124
  br label %bb.vu

._crit_edge2589:                                  ; preds = %bb.wu, %.preheader
  %i.caf = load ptr, ptr %190, align 8, !tbaa !165 ; 3 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %190, i64 8
  %i.cah = load ptr, ptr %i.cag, align 8, !tbaa !166 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.caf, %i.cah
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge2589, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.can, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.caf, %._crit_edge2589 ] ; 3 uses
  %i.cai = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.caj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cak = icmp eq ptr %i.cai, %i.caj
  br i1 %i.cak, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cal = load i64, ptr %i.caj, align 8, !tbaa !21
  %i.cam = add i64 %i.cal, 1
  call void @_ZdlPvm(ptr noundef %i.cai, i64 noundef %i.cam) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.can = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1419 = icmp eq ptr %i.can, %i.cah
  br i1 %.not.i.i.i1419, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !167

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %190, align 8, !tbaa !165
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge2589
  %i.cao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.caf, %._crit_edge2589 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.vq

bb.vq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cap = getelementptr inbounds nuw i8, ptr %190, i64 16
  %i.caq = load ptr, ptr %i.cap, align 8, !tbaa !168
  %i.car = ptrtoint ptr %i.caq to i64
  %i.cas = ptrtoint ptr %i.cao to i64
  %i.cat = sub i64 %i.car, %i.cas
  call void @_ZdlPvm(ptr noundef nonnull %i.cao, i64 noundef %i.cat) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.vq
  call void @llvm.lifetime.end.p0(ptr nonnull %190) #30
  br label %bb.ww

bb.vr:                                            ; preds = %.noexc.i.i1415, %.thread2452
  %i.cau = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %187) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1959

bb.vs:                                            ; preds = %bb.vo
  %i.cav = landingpad { ptr, i32 }
          cleanup
  br label %bb.wv

bb.vt:                                            ; preds = %bb.vp
  %i.caw = landingpad { ptr, i32 }
          cleanup
  br label %bb.wv

bb.vu:                                            ; preds = %.lr.ph2588, %bb.wu
  %i.cax = phi i32 [ %i.bzh, %.lr.ph2588 ], [ %i.cdd, %bb.wu ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph2588 ], [ %indvars.iv.next, %bb.wu ] ; 6 uses
  %i.cay = load ptr, ptr %i.bzj, align 8, !tbaa !166
  %i.caz = load ptr, ptr %190, align 8, !tbaa !165 ; 2 uses
  %i.cba = ptrtoint ptr %i.cay to i64
  %i.cbb = ptrtoint ptr %i.caz to i64
  %i.cbc = sub i64 %i.cba, %i.cbb
  %sext = shl i64 %i.cbc, 27
  %i.cbd = ashr i64 %sext, 32
  %i.cbe = icmp slt i64 %indvars.iv, %i.cbd
  br i1 %i.cbe, label %bb.vv, label %bb.wu

bb.vv:                                            ; preds = %bb.vu
  %i.cbf = getelementptr inbounds nuw [32 x i8], ptr %i.caz, i64 %indvars.iv ; 2 uses
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbf, i64 8 ; 2 uses
  %i.cbh = load i64, ptr %i.cbg, align 8, !tbaa !22
  %.not829 = icmp eq i64 %i.cbh, 0
  br i1 %.not829, label %bb.wu, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  call void @llvm.lifetime.start.p0(ptr nonnull %193) #30
  store ptr %i.bzk, ptr %193, align 8, !tbaa !16
  %i.cbi = load ptr, ptr %i.cbf, align 8, !tbaa !19 ; 2 uses
  %408 = load i64, ptr %i.cbg, align 8, !tbaa !22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #30
  store i64 %408, ptr %i.p, align 8, !tbaa !18
  %i.cbj = icmp ugt i64 %408, 15
  br i1 %i.cbj, label %.noexc.i1421, label %._crit_edge.i.i1420

.noexc.i1421:                                     ; preds = %bb.vw
  %i.cbk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %193, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc1422 unwind label %bb.wi ; 2 uses

.noexc1422:                                       ; preds = %.noexc.i1421
  store ptr %i.cbk, ptr %193, align 8, !tbaa !19
  %i.cbl = load i64, ptr %i.p, align 8, !tbaa !18
  store i64 %i.cbl, ptr %i.bzk, align 8, !tbaa !21
  br label %._crit_edge.i.i1420

._crit_edge.i.i1420:                              ; preds = %.noexc1422, %bb.vw
  %i.cbm = phi ptr [ %i.cbk, %.noexc1422 ], [ %i.bzk, %bb.vw ] ; 2 uses
  switch i64 %408, label %bb.vy [
    i64 1, label %bb.vx
    i64 0, label %bb.vz
  ]

bb.vx:                                            ; preds = %._crit_edge.i.i1420
  %i.cbn = load i8, ptr %i.cbi, align 1, !tbaa !21
  store i8 %i.cbn, ptr %i.cbm, align 1, !tbaa !21
  br label %bb.vz

bb.vy:                                            ; preds = %._crit_edge.i.i1420
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cbm, ptr align 1 %i.cbi, i64 %408, i1 false)
  br label %bb.vz

bb.vz:                                            ; preds = %bb.vy, %bb.vx, %._crit_edge.i.i1420
  %i.cbo = load i64, ptr %i.p, align 8, !tbaa !18 ; 2 uses
  store i64 %i.cbo, ptr %i.bzl, align 8, !tbaa !22
  %i.cbp = load ptr, ptr %193, align 8, !tbaa !19
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cbp, i64 %i.cbo
  store i8 0, ptr %i.cbq, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #30
  %i.cbr = load ptr, ptr %i.bzm, align 8, !tbaa !165
  %i.cbs = getelementptr inbounds nuw [32 x i8], ptr %i.cbr, i64 %indvars.iv
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cbs, ptr noundef nonnull align 8 dereferenceable(32) %193)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.wj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.vz
  %i.cbt = load ptr, ptr %193, align 8, !tbaa !19
  store ptr %i.cbt, ptr %194, align 8, !tbaa !7
  %i.cbu = load i64, ptr %i.bzl, align 8, !tbaa !22
  store i64 %i.cbu, ptr %i.bzn, align 8, !tbaa !12
  store ptr @.str.111, ptr %195, align 8, !tbaa !7
  store i64 1, ptr %i.bzo, align 8, !tbaa !12
  %i.cbv = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %194, ptr noundef nonnull dead_on_return %195)
          to label %bb.wa unwind label %bb.wj

bb.wa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  br i1 %i.cbv, label %bb.wh, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.cbw = load ptr, ptr %193, align 8, !tbaa !19
  store ptr %i.cbw, ptr %196, align 8, !tbaa !7
  %i.cbx = load i64, ptr %i.bzl, align 8, !tbaa !22
  store i64 %i.cbx, ptr %i.bzp, align 8, !tbaa !12
  store ptr @.str.112, ptr %197, align 8, !tbaa !7
  store i64 2, ptr %i.bzq, align 8, !tbaa !12
  %i.cby = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10iends_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %196, ptr noundef nonnull dead_on_return %197)
          to label %bb.wc unwind label %bb.wj

bb.wc:                                            ; preds = %bb.wb
  br i1 %i.cby, label %bb.wh, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.cbz = load ptr, ptr %193, align 8, !tbaa !19
  store ptr %i.cbz, ptr %198, align 8, !tbaa !7
  %i.cca = load i64, ptr %i.bzl, align 8, !tbaa !22
  store i64 %i.cca, ptr %i.bzr, align 8, !tbaa !12
  store ptr @.str.113, ptr %199, align 8, !tbaa !7
  store i64 5, ptr %i.bzs, align 8, !tbaa !12
  %i.ccb = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %198, ptr noundef nonnull dead_on_return %199)
          to label %bb.we unwind label %bb.wj

bb.we:                                            ; preds = %bb.wd
  br i1 %i.ccb, label %bb.wh, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.ccc = load ptr, ptr %193, align 8, !tbaa !19
  store ptr %i.ccc, ptr %200, align 8, !tbaa !7
  %i.ccd = load i64, ptr %i.bzl, align 8, !tbaa !22
  store i64 %i.ccd, ptr %i.bzt, align 8, !tbaa !12
  store ptr @.str.114, ptr %201, align 8, !tbaa !7
  store i64 6, ptr %i.bzu, align 8, !tbaa !12
  %i.cce = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10iends_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %200, ptr noundef nonnull dead_on_return %201)
          to label %bb.wg unwind label %bb.wj

bb.wg:                                            ; preds = %bb.wf
  br i1 %i.cce, label %bb.wh, label %bb.wk

bb.wh:                                            ; preds = %bb.wg, %bb.we, %bb.wc, %bb.wa
  %i.ccf = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ccf, ptr %i.bzv, align 8, !tbaa !214
  br label %bb.wk

bb.wi:                                            ; preds = %.noexc.i1421
  %i.ccg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1426

bb.wj:                                            ; preds = %bb.vz, %bb.wq, %bb.wo, %bb.wm, %bb.wk, %bb.wf, %bb.wd, %bb.wb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.cch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cci = load ptr, ptr %193, align 8, !tbaa !19 ; 2 uses
  %i.ccj = icmp eq ptr %i.cci, %i.bzk
  br i1 %i.ccj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1426, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1424: ; preds = %bb.wj
  %i.cck = load i64, ptr %i.bzk, align 8, !tbaa !21
  %i.ccl = add i64 %i.cck, 1
  call void @_ZdlPvm(ptr noundef %i.cci, i64 noundef %i.ccl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1426

bb.wk:                                            ; preds = %bb.wh, %bb.wg
  %i.ccm = load ptr, ptr %193, align 8, !tbaa !19
  store ptr %i.ccm, ptr %202, align 8, !tbaa !7
  %i.ccn = load i64, ptr %i.bzl, align 8, !tbaa !22
  store i64 %i.ccn, ptr %i.bzw, align 8, !tbaa !12
  store ptr @.str.115, ptr %203, align 8, !tbaa !7
  store i64 1, ptr %i.bzx, align 8, !tbaa !12
  %i.cco = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %202, ptr noundef nonnull dead_on_return %203)
          to label %bb.wl unwind label %bb.wj

bb.wl:                                            ; preds = %bb.wk
  br i1 %i.cco, label %bb.ws, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.ccp = load ptr, ptr %193, align 8, !tbaa !19
  store ptr %i.ccp, ptr %204, align 8, !tbaa !7
  %i.ccq = load i64, ptr %i.bzl, align 8, !tbaa !22
  store i64 %i.ccq, ptr %i.bzy, align 8, !tbaa !12
  store ptr @.str.116, ptr %205, align 8, !tbaa !7
  store i64 2, ptr %i.bzz, align 8, !tbaa !12
  %i.ccr = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10iends_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %204, ptr noundef nonnull dead_on_return %205)
          to label %bb.wn unwind label %bb.wj

bb.wn:                                            ; preds = %bb.wm
  br i1 %i.ccr, label %bb.ws, label %bb.wo

bb.wo:                                            ; preds = %bb.wn
  %i.ccs = load ptr, ptr %193, align 8, !tbaa !19
  store ptr %i.ccs, ptr %206, align 8, !tbaa !7
  %i.cct = load i64, ptr %i.bzl, align 8, !tbaa !22
  store i64 %i.cct, ptr %i.caa, align 8, !tbaa !12
  store ptr @.str.117, ptr %207, align 8, !tbaa !7
  store i64 5, ptr %i.cab, align 8, !tbaa !12
  %i.ccu = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %206, ptr noundef nonnull dead_on_return %207)
          to label %bb.wp unwind label %bb.wj

bb.wp:                                            ; preds = %bb.wo
  br i1 %i.ccu, label %bb.ws, label %bb.wq

bb.wq:                                            ; preds = %bb.wp
  %i.ccv = load ptr, ptr %193, align 8, !tbaa !19
  store ptr %i.ccv, ptr %208, align 8, !tbaa !7
  %i.ccw = load i64, ptr %i.bzl, align 8, !tbaa !22
  store i64 %i.ccw, ptr %i.cac, align 8, !tbaa !12
  store ptr @.str.118, ptr %209, align 8, !tbaa !7
  store i64 6, ptr %i.cad, align 8, !tbaa !12
  %i.ccx = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil10iends_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %208, ptr noundef nonnull dead_on_return %209)
          to label %bb.wr unwind label %bb.wj

bb.wr:                                            ; preds = %bb.wq
  br i1 %i.ccx, label %bb.ws, label %bb.wt

bb.ws:                                            ; preds = %bb.wr, %bb.wp, %bb.wn, %bb.wl
  %i.ccy = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ccy, ptr %i.cae, align 4, !tbaa !220
  br label %bb.wt

bb.wt:                                            ; preds = %bb.ws, %bb.wr
  %i.ccz = load ptr, ptr %193, align 8, !tbaa !19 ; 2 uses
  %i.cda = icmp eq ptr %i.ccz, %i.bzk
  br i1 %i.cda, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1429, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1427

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1427: ; preds = %bb.wt
  %i.cdb = load i64, ptr %i.bzk, align 8, !tbaa !21
  %i.cdc = add i64 %i.cdb, 1
  call void @_ZdlPvm(ptr noundef %i.ccz, i64 noundef %i.cdc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1429

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1429: ; preds = %bb.wt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1427
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #30
  %.pre2646 = load i32, ptr %i.bzg, align 4, !tbaa !171
  br label %bb.wu

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1426: ; preds = %bb.wj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1424, %bb.wi
  %.pn830 = phi { ptr, i32 } [ %i.ccg, %bb.wi ], [ %i.cch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1424 ], [ %i.cch, %bb.wj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %193) #30
  br label %bb.wv

bb.wu:                                            ; preds = %bb.vu, %bb.vv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1429
  %i.cdd = phi i32 [ %i.cax, %bb.vu ], [ %i.cax, %bb.vv ], [ %.pre2646, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1429 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cde = sext i32 %i.cdd to i64
  %i.cdf = icmp slt i64 %indvars.iv.next, %i.cde
  br i1 %i.cdf, label %bb.vu, label %._crit_edge2589, !llvm.loop !221

bb.wv:                                            ; preds = %bb.vt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1426, %bb.vs
  %.pn830.pn.pn = phi { ptr, i32 } [ %i.cav, %bb.vs ], [ %.pn830, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1426 ], [ %i.caw, %bb.vt ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %190) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %190) #30
  br label %bb.atd

bb.ww:                                            ; preds = %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit1418.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNK11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEcvNSt7__cxx1112basic_stringIcS3_SaIcEEEEv.exit1418
  br i1 %i.tw, label %bb.wx, label %_ZN11OpenImageIO4v3_1neERKNS0_8TypeDescENS1_8BASETYPEE.exit1449.thread

bb.wx:                                            ; preds = %bb.ww
  %i.cdg = load ptr, ptr %64, align 16, !tbaa !80
  %i.cdh = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cdg)
          to label %bb.wy unwind label %bb.xe

bb.wy:                                            ; preds = %bb.wx
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdh, i64 60
  %i.cdj = load i32, ptr %i.cdi, align 4, !tbaa !171
  %.not684 = icmp eq i32 %i.cdj, 1
  br i1 %.not684, label %bb.xg, label %bb.wz

bb.wz:                                            ; preds = %bb.wy
  call void @llvm.lifetime.start.p0(ptr nonnull %210) #30
  %i.cdk = load ptr, ptr %64, align 16, !tbaa !80
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf4nameEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %210, ptr noundef nonnull align 8 dereferenceable(16) %i.cdk)
          to label %bb.xa unwind label %bb.xf

bb.xa:                                            ; preds = %bb.wz
  %i.cdl = load ptr, ptr %64, align 16, !tbaa !80
  %i.cdm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cdl)
end_hunk_0

inline.NumInlined: 1808
inline.NumDeleted: 750
begin_hunk_0_@_ZN6google8protobuf15FeatureResolver15CompileDefaultsEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKPKNS0_15FieldDescriptorEEENS0_7EditionESD_:bb.a
bb.bq:                                            ; preds = %_ZNK6google8protobuf7Message3NewEv.exit
  %i.fd = invoke noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef null)
          to label %_ZNK6google8protobuf7Message3NewEv.exit215 unwind label %bb.bu ; 10 uses

_ZNK6google8protobuf7Message3NewEv.exit215:       ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.fe = load i32, ptr %i.er, align 4, !tbaa !61
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_112FillDefaultsENS0_7EditionERNS0_7MessageES4_(ptr dead_on_unwind noalias writable align 8 %20, i32 noundef %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(16) %i.fd)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %_ZNK6google8protobuf7Message3NewEv.exit215
  %i.ff = load i64, ptr %20, align 8, !tbaa !7
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.by, label %bb.bs, !prof !11

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bx unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bp, %bb.bo
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit252

bb.bu:                                            ; preds = %bb.bq, %_ZNK6google8protobuf7Message3NewEv.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit249

bb.bv:                                            ; preds = %_ZNK6google8protobuf7Message3NewEv.exit215
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bs
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #22
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bs
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit240

bb.by:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br i1 %.not341, label %._crit_edge350, label %.lr.ph349

bb.bz:                                            ; preds = %bb.bw, %bb.bv
  %.pn143 = phi { ptr, i32 } [ %i.fk, %bb.bw ], [ %i.fj, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i248

.lr.ph349:                                        ; preds = %bb.by, %bb.cg
  %.0134347 = phi ptr [ %i.fw, %bb.cg ], [ %2, %bb.by ] ; 2 uses
  %i.fl = load ptr, ptr %.0134347, align 8, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.fm = load i32, ptr %i.er, align 4, !tbaa !61
  %i.fn = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex)
          to label %bb.ca unwind label %bb.dd

bb.ca:                                            ; preds = %.lr.ph349
  %i.fo = extractvalue { ptr, ptr } %i.fn, 1
  %i.fp = invoke noundef ptr @_ZNK6google8protobuf10Reflection14MutableMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.fo, ptr noundef nonnull %i.ex, ptr noundef %i.fl, ptr noundef null)
          to label %bb.cb unwind label %bb.dd

bb.cb:                                            ; preds = %bb.ca
  %i.fq = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fd)
          to label %bb.cc unwind label %.thread306

bb.cc:                                            ; preds = %bb.cb
  %i.fr = extractvalue { ptr, ptr } %i.fq, 1
  %i.fs = invoke noundef ptr @_ZNK6google8protobuf10Reflection14MutableMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.fr, ptr noundef nonnull %i.fd, ptr noundef %i.fl, ptr noundef null)
          to label %bb.cd unwind label %.thread306

bb.cd:                                            ; preds = %bb.cc
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_112FillDefaultsENS0_7EditionERNS0_7MessageES4_(ptr dead_on_unwind noalias writable align 8 %21, i32 noundef %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fs)
          to label %bb.ce unwind label %.thread306

bb.ce:                                            ; preds = %bb.cd
  %i.ft = load i64, ptr %21, align 8, !tbaa !7
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.cg, label %bb.cf, !prof !11

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.ch unwind label %.thread302

.thread302:                                       ; preds = %bb.cf
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i248

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.fw = getelementptr inbounds nuw i8, ptr %.0134347, i64 8 ; 2 uses
  %.not145 = icmp eq ptr %i.fw, %i.x
  br i1 %.not145, label %._crit_edge350, label %.lr.ph349

bb.ch:                                            ; preds = %bb.cf
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit240

._crit_edge350:                                   ; preds = %bb.cg, %bb.by
  %i.fx = load i32, ptr %i.du, align 8, !tbaa !3
  %i.fy = or i32 %i.fx, 1
  store i32 %i.fy, ptr %i.du, align 8, !tbaa !3
  %i.fz = load i32, ptr %i.eh, align 4, !tbaa !67 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %.noexc, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge350
  %i.gb = sext i32 %i.fz to i64
  %i.gc = getelementptr inbounds i8, ptr %i.eg, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !69 ; 3 uses
  %i.ge = trunc i64 %i.gd to i1
  br i1 %i.ge, label %bb.cj, label %bb.ck, !prof !10

bb.cj:                                            ; preds = %bb.ci
  %i.gf = add nsw i64 %i.gd, -1
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !71
  br label %.noexc

bb.ck:                                            ; preds = %bb.ci
  %i.gi = inttoptr i64 %i.gd to ptr
  br label %.noexc

.noexc:                                           ; preds = %bb.ck, %bb.cj, %._crit_edge350
  %.0.i.i.i.i = phi ptr [ null, %._crit_edge350 ], [ %i.gh, %bb.cj ], [ %i.gi, %bb.ck ]
  %i.gj = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_43FeatureSetDefaults_FeatureSetEditionDefaultEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef %.0.i.i.i.i)
          to label %bb.cl unwind label %bb.cy     ; 6 uses

bb.cl:                                            ; preds = %.noexc
  %i.gk = load i32, ptr %i.er, align 4, !tbaa !61
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  store i32 %i.gk, ptr %i.gl, align 8, !tbaa !39
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 4 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !3
  %i.go = or i32 %i.gn, 6
  store i32 %i.go, ptr %i.gm, align 8, !tbaa !3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 32 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !39 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.cm, label %_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefault22mutable_fixed_featuresEv.exit

bb.cm:                                            ; preds = %bb.cl
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !69 ; 3 uses
  %i.gu = trunc i64 %i.gt to i1
  br i1 %i.gu, label %bb.cn, label %bb.co, !prof !10

bb.cn:                                            ; preds = %bb.cm
  %i.gv = add nsw i64 %i.gt, -1
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.co:                                            ; preds = %bb.cm
  %i.gy = inttoptr i64 %i.gt to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i221 = phi ptr [ %i.gx, %bb.cn ], [ %i.gy, %bb.co ]
  %i.gz = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i221)
          to label %.noexc222 unwind label %bb.cy ; 2 uses

.noexc222:                                        ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  store ptr %i.gz, ptr %i.gp, align 8, !tbaa !39
  br label %_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefault22mutable_fixed_featuresEv.exit

_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefault22mutable_fixed_featuresEv.exit: ; preds = %.noexc222, %bb.cl
  %i.ha = phi ptr [ %i.gz, %.noexc222 ], [ %i.gq, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  invoke void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %i.ex)
          to label %bb.cp unwind label %bb.cz

bb.cp:                                            ; preds = %_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefault22mutable_fixed_featuresEv.exit
  %i.hb = load ptr, ptr %22, align 8, !tbaa !35
  %i.hc = load i64, ptr %i.ei, align 8, !tbaa !38
  %i.hd = invoke noundef zeroext i1 @_ZN6google8protobuf11MessageLite15MergeFromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i64 %i.hc, ptr %i.hb)
          to label %bb.cq unwind label %bb.da     ; 0 uses

bb.cq:                                            ; preds = %bb.cp
  %i.he = load ptr, ptr %22, align 8, !tbaa !35   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.ej
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cq
  %i.hg = load i64, ptr %i.ej, align 8, !tbaa !39
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.hi = load i32, ptr %i.gm, align 8, !tbaa !3
  %i.hj = or i32 %i.hi, 1
  store i32 %i.hj, ptr %i.gm, align 8, !tbaa !3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !39 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.cr, label %_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefault28mutable_overridable_featuresEv.exit

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !69 ; 3 uses
  %i.hp = trunc i64 %i.ho to i1
  br i1 %i.hp, label %bb.cs, label %bb.ct, !prof !10

bb.cs:                                            ; preds = %bb.cr
  %i.hq = add nsw i64 %i.ho, -1
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !71
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i223

bb.ct:                                            ; preds = %bb.cr
  %i.ht = inttoptr i64 %i.ho to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i223

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i223: ; preds = %bb.ct, %bb.cs
  %.0.i.i.i.i224 = phi ptr [ %i.hs, %bb.cs ], [ %i.ht, %bb.ct ]
  %i.hu = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i224)
          to label %.noexc225 unwind label %bb.cy ; 2 uses

.noexc225:                                        ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i223
  store ptr %i.hu, ptr %i.hk, align 8, !tbaa !39
  br label %_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefault28mutable_overridable_featuresEv.exit

_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefault28mutable_overridable_featuresEv.exit: ; preds = %.noexc225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hv = phi ptr [ %i.hu, %.noexc225 ], [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  invoke void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %i.fd)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefault28mutable_overridable_featuresEv.exit
  %i.hw = load ptr, ptr %23, align 8, !tbaa !35
  %i.hx = load i64, ptr %i.ek, align 8, !tbaa !38
  %i.hy = invoke noundef zeroext i1 @_ZN6google8protobuf11MessageLite15MergeFromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 %i.hx, ptr %i.hw)
          to label %.critedge183 unwind label %bb.dc ; 0 uses

.critedge183:                                     ; preds = %bb.cu
  %i.hz = load ptr, ptr %23, align 8, !tbaa !35   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.el
  br i1 %i.ia, label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %.critedge183
  %i.ib = load i64, ptr %i.el, align 8, !tbaa !39
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #24
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit234

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit234: ; preds = %.critedge183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.id = load ptr, ptr %i.fd, align 8, !tbaa !65
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #22, !inline_history !74
  %i.ig = load ptr, ptr %i.ex, align 8, !tbaa !65
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #22, !inline_history !74
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0271.0352, i64 11
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !39
  %.not.i.i = icmp eq i8 %i.ik, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit234
  %i.il = add nsw i32 %.sroa.9.0353, 1            ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0271.0352, i64 10
  %i.in = load i8, ptr %i.im, align 1, !tbaa !39
  %i.io = zext i8 %i.in to i32
  %i.ip = icmp eq i32 %i.il, %i.io
  br i1 %i.ip, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.cv, %bb.cw
  %.01521.i.i.i = phi ptr [ %i.iq, %bb.cw ], [ %.sroa.0271.0352, %bb.cv ] ; 2 uses
  %i.iq = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !60 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 11
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !39
  %.not17.i.i.i = icmp eq i8 %i.is, 0
  br i1 %.not17.i.i.i, label %bb.cw, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EppEv.exit

bb.cw:                                            ; preds = %.lr.ph.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !39  ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 10
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !39
  %i.ix = icmp eq i8 %i.iu, %i.iw
  br i1 %i.ix, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !75

.thread.i.i:                                      ; preds = %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit234
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0271.0352, i64 256
  %i.iz = add i32 %.sroa.9.0353, 1
  %i.ja = and i32 %i.iz, 255
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jb
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.jc, %.thread.i.i ], [ %i.jf, %bb.cx ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !60 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.je, 0
  %i.jf = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 256
  br i1 %.not.i.i.i.i, label %bb.cx, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EppEv.exit, !llvm.loop !77

.critedge.loopexit23.i.i.i:                       ; preds = %bb.cw
  %i.jg = zext i8 %i.iu to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.cx, %.critedge.loopexit23.i.i.i, %bb.cv
  %.sroa.0271.1 = phi ptr [ %.116.i.i.i, %bb.cx ], [ %.sroa.0271.0352, %bb.cv ], [ %i.iq, %.critedge.loopexit23.i.i.i ], [ %.sroa.0271.0352, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.9.1 = phi i32 [ 0, %bb.cx ], [ %i.il, %bb.cv ], [ %i.jg, %.critedge.loopexit23.i.i.i ], [ %i.il, %.lr.ph.i.i.i ] ; 2 uses
  %i.jh = icmp ne ptr %.sroa.0271.1, %i.ea
  %i.ji = icmp ne i32 %.sroa.9.1, %i.ed
  %.not3.i = select i1 %i.jh, i1 true, i1 %i.ji
  br i1 %.not3.i, label %bb.bo, label %.critedge185

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit240: ; preds = %bb.ch, %bb.bx
  %i.jj = load ptr, ptr %i.fd, align 8, !tbaa !65
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #22, !inline_history !74
  %i.jm = load ptr, ptr %i.ex, align 8, !tbaa !65
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #22, !inline_history !74
  br label %bb.df

bb.cy:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i223, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i, %.noexc
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i248

bb.cz:                                            ; preds = %_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefault22mutable_fixed_featuresEv.exit
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

bb.da:                                            ; preds = %bb.cp
  %i.jr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.js = load ptr, ptr %22, align 8, !tbaa !35   ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.ej
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.da
  %i.ju = load i64, ptr %i.ej, align 8, !tbaa !39
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241, %bb.cz
  %.pn148 = phi { ptr, i32 } [ %i.jq, %bb.cz ], [ %i.jr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241 ], [ %i.jr, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i248

bb.db:                                            ; preds = %_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefault28mutable_overridable_featuresEv.exit
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

bb.dc:                                            ; preds = %bb.cu
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jy = load ptr, ptr %23, align 8, !tbaa !35   ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.el
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.dc
  %i.ka = load i64, ptr %i.el, align 8, !tbaa !39
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244, %bb.db
  %.pn150 = phi { ptr, i32 } [ %i.jw, %bb.db ], [ %i.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244 ], [ %i.jx, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i248

.thread306:                                       ; preds = %bb.cc, %bb.cd, %bb.cb
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i248

bb.dd:                                            ; preds = %bb.ca, %.lr.ph349
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i248

_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i248: ; preds = %bb.dd, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %bb.cy, %.thread306, %.thread302
  %.pn150.pn.pn300 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread306 ], [ %lpad.thr_comm.split-lp, %bb.dd ], [ %i.fv, %.thread302 ], [ %.pn148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243 ], [ %i.jp, %bb.cy ], [ %.pn150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %.pn143, %bb.bz ]
  %i.kc = load ptr, ptr %i.fd, align 8, !tbaa !65
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #22, !inline_history !74
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit249

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit249: ; preds = %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i248, %bb.bu
  %.pn150.pn.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.bu ], [ %.pn150.pn.pn300, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i248 ] ; 2 uses
  %.not.i250 = icmp eq ptr %i.ex, null
  br i1 %.not.i250, label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit252, label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i251

_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i251: ; preds = %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit249
  %i.kf = load ptr, ptr %i.ex, align 8, !tbaa !65
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #22, !inline_history !74
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit252

.critedge185:                                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EppEv.exit, %bb.bl
  invoke void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IS4_TnNSt9enable_ifIXsr17internal_statusor19IsConstructionValidILb0ES4_T_Lb0EEE5valueEiE4typeELi0EEEOS8_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %18)
          to label %bb.df unwind label %bb.de

bb.de:                                            ; preds = %.critedge185
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit252

bb.df:                                            ; preds = %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit240, %.critedge185
  %i.kj = load ptr, ptr %19, align 8, !tbaa !63   ; 3 uses
  %.not.i253 = icmp eq ptr %i.kj, null
  br i1 %.not.i253, label %_ZNSt10unique_ptrIN6google8protobuf21DynamicMessageFactoryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6google8protobuf21DynamicMessageFactoryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6google8protobuf21DynamicMessageFactoryEEclEPS2_.exit.i: ; preds = %bb.df
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !65
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(64) %i.kj) #22, !inline_history !78
  br label %_ZNSt10unique_ptrIN6google8protobuf21DynamicMessageFactoryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf21DynamicMessageFactoryESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.df, %_ZNKSt14default_deleteIN6google8protobuf21DynamicMessageFactoryEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZN6google8protobuf18FeatureSetDefaultsD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.dh

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit252: ; preds = %bb.bt, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit249, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i251, %bb.de
  %.pn157.pn.pn = phi { ptr, i32 } [ %i.ki, %bb.de ], [ %.pn150.pn.pn.pn, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i251 ], [ %.pn150.pn.pn.pn, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit249 ], [ %i.fh, %bb.bt ] ; 2 uses
  %i.kn = load ptr, ptr %19, align 8, !tbaa !63   ; 3 uses
  %.not.i254 = icmp eq ptr %i.kn, null
  br i1 %.not.i254, label %_ZNSt10unique_ptrIN6google8protobuf21DynamicMessageFactoryESt14default_deleteIS2_EED2Ev.exit256, label %_ZNKSt14default_deleteIN6google8protobuf21DynamicMessageFactoryEEclEPS2_.exit.i255

_ZNKSt14default_deleteIN6google8protobuf21DynamicMessageFactoryEEclEPS2_.exit.i255: ; preds = %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit252
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !65
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(64) %i.kn) #22, !inline_history !78
  br label %_ZNSt10unique_ptrIN6google8protobuf21DynamicMessageFactoryESt14default_deleteIS2_EED2Ev.exit256

_ZNSt10unique_ptrIN6google8protobuf21DynamicMessageFactoryESt14default_deleteIS2_EED2Ev.exit256: ; preds = %_ZNKSt14default_deleteIN6google8protobuf21DynamicMessageFactoryEEclEPS2_.exit.i255, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit252, %bb.bn
  %.pn157.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.bn ], [ %.pn157.pn.pn, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit252 ], [ %.pn157.pn.pn, %_ZNKSt14default_deleteIN6google8protobuf21DynamicMessageFactoryEEclEPS2_.exit.i255 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZN6google8protobuf18FeatureSetDefaultsD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %18) #22
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt10unique_ptrIN6google8protobuf21DynamicMessageFactoryESt14default_deleteIS2_EED2Ev.exit256, %bb.bm
  %.pn157.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn.pn, %_ZNSt10unique_ptrIN6google8protobuf21DynamicMessageFactoryESt14default_deleteIS2_EED2Ev.exit256 ], [ %i.em, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.dk

bb.dh:                                            ; preds = %_ZNSt10unique_ptrIN6google8protobuf21DynamicMessageFactoryESt14default_deleteIS2_EED2Ev.exit, %bb.bf, %_ZN4absl12lts_202505126StatusD2Ev.exit203
  %i.kr = load i64, ptr %i.cu, align 8, !tbaa !59
  %i.ks = icmp eq i64 %i.kr, 0
  br i1 %i.ks, label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEEED2Ev.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kt = load ptr, ptr %14, align 8, !tbaa !52
  invoke void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16clear_and_deleteEPSB_PS9_(ptr noundef %i.kt, ptr noundef nonnull %i.ct)
          to label %_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEEED2Ev.exit unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ku = landingpad { ptr, i32 }
          catch ptr null
  %i.kv = extractvalue { ptr, i32 } %i.ku, 0
  call void @__clang_call_terminate(ptr %i.kv) #23
  unreachable

_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEEED2Ev.exit: ; preds = %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.critedge173.thread

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf12_GLOBAL__N_118ValidateDescriptorERKNS0_10DescriptorE:bb.a
.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !88
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph78, label %.critedge

.lr.ph78:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.j, align 1
  %i.k = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.l = xor i64 %i.k, -1
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.25, i64 %i.k, ptr nonnull %i.m, ptr noundef nonnull @.str.26)
  br label %.critedge.thread

bb.c:                                             ; preds = %.lr.ph78, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %indvars.iv ; 13 uses
  %i.p = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor11is_requiredEv(ptr noundef nonnull align 8 dereferenceable(88) %i.o)
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %.0.copyload.i.i.i46 = load i16, ptr %i.s, align 1
  %i.t = zext i16 %.0.copyload.i.i.i46 to i64     ; 2 uses
  %i.u = xor i64 %i.t, -1
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.t, ptr nonnull %i.v, ptr noundef nonnull @.str.28)
  br label %.critedge.thread

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 32
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %.0.copyload.i.i.i49 = load i16, ptr %i.ab, align 1
  %i.ac = zext i16 %.0.copyload.i.i.i49 to i64    ; 2 uses
  %i.ad = xor i64 %i.ac, -1
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.ac, ptr nonnull %i.ae, ptr noundef nonnull @.str.29)
  br label %.critedge.thread

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !90
  switch i8 %i.ag, label %bb.h [
    i8 14, label %bb.i
    i8 8, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %.0.copyload.i.i.i52 = load i16, ptr %i.aj, align 1
  %i.ak = zext i16 %.0.copyload.i.i.i52 to i64    ; 2 uses
  %i.al = xor i64 %i.ak, -1
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.ak, ptr nonnull %i.am, ptr noundef nonnull @.str.30)
  br label %.critedge.thread

bb.i:                                             ; preds = %bb.g, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !91 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 116
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !92
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %.0.copyload.i.i.i55 = load i16, ptr %i.au, align 1
  %i.av = zext i16 %.0.copyload.i.i.i55 to i64    ; 2 uses
  %i.aw = xor i64 %i.av, -1
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.av, ptr nonnull %i.ax, ptr noundef nonnull @.str.31)
  br label %.critedge.thread

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !95
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = add i64 %i.ba, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = select i1 %i.bc, ptr %i.ay, ptr %i.bf   ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !97 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %.idx = shl nsw i64 %i.bj, 3                    ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 %.idx ; 2 uses
  %.not6574 = icmp eq i32 %i.bi, 0
  br i1 %.not6574, label %.critedge79, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.bl = add nsw i64 %.idx, -8                   ; 2 uses
  %i.bm = lshr exact i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %xtraiter = and i64 %i.bn, 3                    ; 3 uses
  %i.bo = icmp ult i64 %i.bl, 24
  br i1 %i.bo, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bn, 4611686018427387900
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.04176.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %..041.3, %._crit_edge.unr-lcssa ]
  %.sroa.061.075.epil.init = phi ptr [ %i.bg, %.lr.ph.preheader ], [ %i.cq, %._crit_edge.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04176.epil = phi i1 [ %..041.epil, %.lr.ph.epil ], [ %.04176.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.061.075.epil = phi ptr [ %i.bt, %.lr.ph.epil ], [ %.sroa.061.075.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bp = load ptr, ptr %.sroa.061.075.epil, align 8, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !39
  %i.bs = icmp eq i32 %i.br, 900
  %..041.epil = select i1 %i.bs, i1 true, i1 %.04176.epil ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.061.075.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !99

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %..041.lcssa = phi i1 [ %..041.3, %._crit_edge.unr-lcssa ], [ %..041.epil, %.lr.ph.epil ]
  br i1 %..041.lcssa, label %bb.l, label %.critedge79

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04176 = phi i1 [ false, %.lr.ph.preheader.new ], [ %..041.3, %.lr.ph ]
  %.sroa.061.075 = phi ptr [ %i.bg, %.lr.ph.preheader.new ], [ %i.cq, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bu = load ptr, ptr %.sroa.061.075, align 8, !tbaa !98
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !39
  %i.bx = icmp eq i32 %i.bw, 900
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.061.075, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !98
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !39
  %i.cc = icmp eq i32 %i.cb, 900
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.061.075, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !98
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !39
  %i.ch = icmp eq i32 %i.cg, 900
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.061.075, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !98
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !39
  %i.cm = icmp eq i32 %i.cl, 900
  %i.cn = select i1 %i.cm, i1 true, i1 %i.ch
  %i.co = select i1 %i.cn, i1 true, i1 %i.cc
  %i.cp = select i1 %i.co, i1 true, i1 %i.bx
  %..041.3 = select i1 %i.cp, i1 true, i1 %.04176 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.061.075, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

.critedge79:                                      ; preds = %bb.k, %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !15 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %.0.copyload.i.i.i58 = load i16, ptr %i.ct, align 1
  %i.cu = zext i16 %.0.copyload.i.i.i58 to i64    ; 2 uses
  %i.cv = xor i64 %i.cu, -1
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.cu, ptr nonnull %i.cw, ptr noundef nonnull @.str.32)
  br label %.critedge.thread

bb.l:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !3, !noalias !101
  %i.cz = and i32 %i.cy, 8
  %.not.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15, !noalias !101 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.dc, align 1, !noalias !101
  %i.dd = zext i16 %.0.copyload.i.i.i.i to i64    ; 2 uses
  %i.de = xor i64 %i.dd, -1
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 %i.de
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.dd, ptr nonnull %i.df, ptr noundef nonnull @.str.33)
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !101 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dh, null
  %i.di = select i1 %.not.i.i.i, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.dh ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3, !noalias !101
  %.fr80 = freeze i32 %i.dk                       ; 2 uses
  %i.dl = and i32 %.fr80, 4
  %.not38.i = icmp eq i32 %i.dl, 0
  br i1 %.not38.i, label %bb.o, label %.lr.ph.i

bb.o:                                             ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !15, !noalias !101 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %.0.copyload.i.i.i25.i = load i16, ptr %i.do, align 1, !noalias !101
  %i.dp = zext i16 %.0.copyload.i.i.i25.i to i64  ; 2 uses
  %i.dq = xor i64 %i.dp, -1
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 %i.dq
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull @.str.27, i64 %i.dp, ptr nonnull %i.dr, ptr noundef nonnull @.str.34)
  br label %bb.v

.lr.ph.i:                                         ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 40 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.du = and i32 %.fr80, 16
  %.not40.i = icmp eq i32 %i.du, 0
  br i1 %.not40.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %bb.q
  %.sroa.034.043.i.us = phi ptr [ %i.eb, %bb.q ], [ %i.bg, %.lr.ph.i ] ; 2 uses
  %i.dv = load ptr, ptr %.sroa.034.043.i.us, align 8, !tbaa !98, !noalias !101
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !39, !noalias !101 ; 3 uses
  %i.dy = icmp slt i32 %i.dx, 1000
  br i1 %i.dy, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.split.us
  %i.dz = load i32, ptr %i.ds, align 8, !tbaa !39, !noalias !101
  %i.ea = icmp slt i32 %i.dx, %i.dz
  br i1 %i.ea, label %.split.us, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.split.us
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.034.043.i.us, i64 8 ; 2 uses
  %.not39.i.us = icmp eq ptr %i.eb, %i.bk
  br i1 %.not39.i.us, label %.thread, label %.lr.ph.i.split.us

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %bb.u
  %.sroa.034.043.i = phi ptr [ %i.ew, %bb.u ], [ %i.bg, %.lr.ph.i ] ; 2 uses
  %i.ec = load ptr, ptr %.sroa.034.043.i, align 8, !tbaa !98, !noalias !101
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !39, !noalias !101 ; 5 uses
  %i.ef = icmp slt i32 %i.ee, 1000
  br i1 %i.ef, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.split
  %i.eg = load i32, ptr %i.ds, align 8, !tbaa !39, !noalias !101
  %i.eh = icmp slt i32 %i.ee, %i.eg
  br i1 %i.eh, label %.split.us, label %bb.s

.split.us:                                        ; preds = %bb.r, %bb.p
  %.us-phi = phi i32 [ %i.dx, %bb.p ], [ %i.ee, %bb.r ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !15, !noalias !101 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %.0.copyload.i.i.i28.i = load i16, ptr %i.ek, align 1, !noalias !101
  %i.el = zext i16 %.0.copyload.i.i.i28.i to i64  ; 2 uses
  %i.em = xor i64 %i.el, -1
  %i.en = getelementptr inbounds i8, ptr %i.ej, i64 %i.em
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_NS0_7EditionES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.el, ptr nonnull %i.en, i32 noundef %.us-phi, ptr noundef nonnull @.str.36)
  br label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.eo = load i32, ptr %i.dt, align 8, !tbaa !39, !noalias !101
  %i.ep = icmp sgt i32 %i.ee, %i.eo
  br i1 %i.ep, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !15, !noalias !101 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %.0.copyload.i.i.i31.i = load i16, ptr %i.es, align 1, !noalias !101
  %i.et = zext i16 %.0.copyload.i.i.i31.i to i64  ; 2 uses
  %i.eu = xor i64 %i.et, -1
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_NS0_7EditionES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.et, ptr nonnull %i.ev, i32 noundef %i.ee, ptr noundef nonnull @.str.37)
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %.lr.ph.i.split
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.034.043.i, i64 8 ; 2 uses
  %.not39.i = icmp eq ptr %i.ew, %i.bk
  br i1 %.not39.i, label %.thread, label %.lr.ph.i.split

.thread:                                          ; preds = %bb.u, %bb.q
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !104
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.v:                                             ; preds = %bb.t, %.split.us, %bb.o, %bb.m
  %.pr = load i64, ptr %0, align 8, !tbaa !7
  %i.ex = icmp eq i64 %.pr, 1
  br i1 %i.ex, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge.thread

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.v, %.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ey = load i32, ptr %i.d, align 8, !tbaa !88
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp slt i64 %indvars.iv.next, %i.ez
  br i1 %i.fa, label %bb.c, label %.critedge, !llvm.loop !107

.critedge:                                        ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %.preheader
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !108
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.v, %bb.f, %bb.h, %bb.j, %.critedge79, %bb.d, %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505128StatusOrIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES4_T_EE5valueEiE4typeELi0EEEOSA_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !7      ; 4 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !7
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %.pr.i = load i64, ptr %0, align 8, !tbaa !7
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %i.a, %bb.a ], [ %.pr.i, %bb.b ]
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit, !prof !10

bb.c:                                             ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #22
  resume { ptr, i32 } %i.g

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN6google8protobuf18FeatureSetDefaultsEEC2IKNS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleIS8_OT_EE5valueEiE4typeELi0EEESC_.exit: ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, %bb.c
  ret void
}

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_115CollectEditionsERKNS0_10DescriptorENS0_7EditionERN4absl12lts_202505129btree_setIS5_St4lessIS5_ESaIS5_EEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !88
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.b

._crit_edge37:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph36, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.i = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !91   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %i.n = select i1 %.not.i.i, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !39
  call fastcc void @_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE(i32 noundef %i.p, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf12_GLOBAL__N_115CollectEditionsERKNS0_10DescriptorENS0_7EditionERN4absl12lts_202505129btree_setIS5_St4lessIS5_ESaIS5_EEE:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 12
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.014.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %.01013.i.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.111.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.ba = add i64 %.01013.i.i.i.i.i.i, %.014.i.i.i.i.i.i
  %i.bb = lshr i64 %i.ba, 1                       ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !61, !noalias !112
  %i.be = icmp slt i32 %i.bd, %i.ap               ; 2 uses
  %i.bf = add nuw i64 %i.bb, 1
  %.111.i.i.i.i.i.i = select i1 %i.be, i64 %.01013.i.i.i.i.i.i, i64 %i.bb ; 3 uses
  %.1.i.i.i.i.i.i = select i1 %i.be, i64 %i.bf, i64 %.014.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i.i, %.111.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i, label %bb.h, !llvm.loop !115

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.g ], [ %.111.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !39, !noalias !112
  %.not.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.bj = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  br label %bb.g

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.bn = trunc i64 %.0.lcssa.i.i.i.i.i.i to i32  ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i
  %.sroa.7.0.i.i.i = phi i32 [ %i.bn, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i ], [ %i.bu, %bb.k ] ; 2 uses
  %.sroa.0.0.i16.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i.i ], [ %i.bv, %bb.k ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 10
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39, !noalias !112
  %i.bq = zext i8 %i.bp to i32
  %i.br = icmp eq i32 %.sroa.7.0.i.i.i, %i.bq
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 8
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !39, !noalias !112
  %i.bu = zext i8 %i.bt to i32
  %i.bv = load ptr, ptr %.sroa.0.0.i16.i.i, align 8, !tbaa !60, !noalias !112 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 11
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !39, !noalias !112
  %.not.i19.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i19.i.i, label %bb.j, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i, !llvm.loop !116

bb.l:                                             ; preds = %bb.j
  %i.by = sext i32 %.sroa.7.0.i.i.i to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i.i, i64 12
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !61, !noalias !112
  %i.cc = icmp slt i32 %i.ap, %i.cb
  br i1 %i.cc, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i, label %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.sroa.0.0.i.i.i, ptr %3, align 8, !noalias !112
  store i32 %i.bn, ptr %i.g, align 8, !noalias !112
  %i.cd = load i8, ptr %i.bm, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %.not.i.i19 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i19, label %.thread.i.i.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i
  %.pre12.i = load i8, ptr %i.bl, align 1, !tbaa !39, !noalias !112
  br label %bb.m

.thread.i.i.i:                                    ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.cf = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %.11723.i.i.i.i = load ptr, ptr %i.cg, align 8, !tbaa !60, !noalias !112 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.11723.i.i.i.i, i64 11
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %.not.i24.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i24.i.i.i.i, label %.lr.ph26.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i

.lr.ph26.i.i.i.i:                                 ; preds = %.thread.i.i.i, %.lr.ph26.i.i.i.i
  %.11725.i.i.i.i = phi ptr [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ], [ %.11723.i.i.i.i, %.thread.i.i.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 10
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !39, !noalias !112
  %i.cl = getelementptr inbounds nuw i8, ptr %.11725.i.i.i.i, i64 256
  %i.cm = zext i8 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm
  %.117.i.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !60, !noalias !112 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.117.i.i.i.i, i64 11
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph26.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i, !llvm.loop !117

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i: ; preds = %.lr.ph26.i.i.i.i, %.thread.i.i.i
  %.pre.i = phi i8 [ %i.ci, %.thread.i.i.i ], [ %i.cp, %.lr.ph26.i.i.i.i ]
  %.117.lcssa.i.i.i.i = phi ptr [ %.11723.i.i.i.i, %.thread.i.i.i ], [ %.117.i.i.i.i, %.lr.ph26.i.i.i.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  store ptr %.117.lcssa.i.i.i.i, ptr %3, align 8, !noalias !112
  store i32 %i.cs, ptr %i.g, align 8, !tbaa !118, !noalias !112
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i, %._crit_edge.i
  %i.ct = phi i8 [ %i.cr, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i ], [ %.pre12.i, %._crit_edge.i ] ; 3 uses
  %i.cu = phi i8 [ %.pre.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i ], [ %i.cd, %._crit_edge.i ]
  %i.cv = phi ptr [ %.117.lcssa.i.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit.i ], [ %.sroa.0.0.i.i.i, %._crit_edge.i ] ; 6 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 10
  %i.cy = icmp eq i8 %i.ct, %i.cu
  br i1 %i.cy, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cz = icmp ult i8 %i.ct, 61
  br i1 %i.cz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.da = shl nuw nsw i8 %i.ct, 1
  %i.db = call i8 @llvm.umin.i8(i8 %i.da, i8 61)  ; 2 uses
  %i.dc = shl nuw i8 %i.db, 2
  %i.dd = zext i8 %i.dc to i64
  %i.de = add nuw nsw i64 %i.dd, 16
  %i.df = and i64 %i.de, 504
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #26, !noalias !112 ; 12 uses
  store ptr %i.dg, ptr %i.dg, align 8, !tbaa !60, !noalias !112
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i8 0, ptr %i.dh, align 8, !tbaa !39, !noalias !112
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 9
  store i8 0, ptr %i.di, align 1, !tbaa !39, !noalias !112
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 11
  store i8 %i.db, ptr %i.dj, align 1, !tbaa !39, !noalias !112
  store ptr %i.dg, ptr %3, align 8, !tbaa !120, !noalias !112
  %i.dk = load i8, ptr %i.cx, align 1, !tbaa !39, !noalias !112 ; 3 uses
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 4 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.dl, 2        ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.idx.i.i.i.i
  %.not13.i.i.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not13.i.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.o
  %i.do = ptrtoaddr ptr %i.dg to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 12 ; 3 uses
  %i.dq = add nsw i64 %.idx.i.i.i.i, -4           ; 2 uses
  %i.dr = lshr exact i64 %i.dq, 2
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dq, 28
  %i.dt = sub i64 %i.do, %i.cw
  %diff.check = icmp ult i64 %i.dt, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i4.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec = and i64 %i.ds, 9223372036854775800     ; 3 uses
  %i.du = shl i64 %n.vec, 2                       ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dp, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dm, i64 %i.du
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dx = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.dx ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.dm, i64 %i.dx ; 2 uses
  %i.dy = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep57, align 4, !noalias !112
  %wide.load58 = load <4 x i32>, ptr %i.dy, align 4, !noalias !112
  %i.dz = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1, !noalias !112
  store <4 x i32> %wide.load58, ptr %i.dz, align 1, !noalias !112
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i, label %.lr.ph.i.i.i4.i.preheader

.lr.ph.i.i.i4.i.preheader:                        ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block
  %.015.i.i.i.i.ph = phi ptr [ %i.dp, %.lr.ph.preheader.i.i.i.i ], [ %i.dv, %middle.block ]
  %.01214.i.i.i.i.ph = phi ptr [ %i.dm, %.lr.ph.preheader.i.i.i.i ], [ %i.dw, %middle.block ]
  br label %.lr.ph.i.i.i4.i

.lr.ph.i.i.i4.i:                                  ; preds = %.lr.ph.i.i.i4.i.preheader, %.lr.ph.i.i.i4.i
  %.015.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i4.i ], [ %.015.i.i.i.i.ph, %.lr.ph.i.i.i4.i.preheader ] ; 2 uses
  %.01214.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i4.i ], [ %.01214.i.i.i.i.ph, %.lr.ph.i.i.i4.i.preheader ] ; 2 uses
  %i.eb = load i32, ptr %.01214.i.i.i.i, align 4, !noalias !112
  store i32 %i.eb, ptr %.015.i.i.i.i, align 1, !noalias !112
  %i.ec = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 4
  %.not.i.i.i5.i = icmp eq ptr %i.ec, %i.dn
  br i1 %.not.i.i.i5.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i, label %.lr.ph.i.i.i4.i, !llvm.loop !124

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i: ; preds = %.lr.ph.i.i.i4.i, %middle.block, %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 10
  store i8 %i.dk, ptr %i.ee, align 2, !tbaa !39, !noalias !112
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cv, i64 11
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !39, !noalias !112 ; 2 uses
  %.not57.i = icmp eq i8 %i.eg, 0
  %i.eh = zext i8 %i.eg to i64
  %i.ei = shl nuw nsw i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, 16
  %i.ek = and i64 %i.ej, 2040
  %.sink.i = select i1 %.not57.i, i64 752, i64 %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %.sink.i) #24, !noalias !112
  store ptr %i.dg, ptr %i.f, align 8, !tbaa !60, !noalias !112
  store ptr %i.dg, ptr %2, align 8, !tbaa !60, !noalias !112
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %3), !noalias !112
  %.pre13.i = load ptr, ptr %3, align 8, !tbaa !120, !noalias !112
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i, %bb.m
  %i.el = phi ptr [ %i.dg, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit.i ], [ %.pre13.i, %bb.p ], [ %i.cv, %bb.m ] ; 5 uses
  %i.em = load i32, ptr %i.g, align 8, !tbaa !118, !noalias !112 ; 2 uses
  %i.en = trunc i32 %i.em to i8                   ; 2 uses
  %i.eo = and i32 %i.em, 255                      ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 10 ; 3 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !39, !noalias !112 ; 3 uses
  %i.er = icmp ugt i8 %i.eq, %i.en
  %i.es = zext nneg i32 %i.eo to i64              ; 2 uses
  br i1 %i.er, label %.lr.ph.preheader.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.q
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.eu = getelementptr [4 x i8], ptr %i.et, i64 %i.es ; 2 uses
  %narrow.i.i = sub nuw i8 %i.eq, %i.en
  %i.ev = zext i8 %narrow.i.i to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ev, 2
  %i.ew = getelementptr i8, ptr %i.eu, i64 4
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ew, ptr align 4 %i.eu, i64 %.idx.i.i.i, i1 false), !noalias !112
  %.pre.i.i = load i8, ptr %i.ep, align 1, !tbaa !39, !noalias !112
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.q
  %i.ex = phi i8 [ %.pre.i.i, %.lr.ph.preheader.i.i.i ], [ %i.eq, %bb.q ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.es
  store i32 %i.ap, ptr %i.ez, align 4, !tbaa !61, !noalias !112
  %i.fa = add i8 %i.ex, 1                         ; 3 uses
  store i8 %i.fa, ptr %i.ep, align 1, !tbaa !39, !noalias !112
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 11
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !39, !noalias !112
  %.not.i18.i.i = icmp eq i8 %i.fc, 0
  br i1 %.not.i18.i.i, label %bb.r, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit

bb.r:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i
  %i.fd = zext i8 %i.fa to i32
  %i.fe = add nuw nsw i32 %i.eo, 1                ; 2 uses
  %i.ff = icmp samesign ult i32 %i.fe, %i.fd
  br i1 %i.ff, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.fg = getelementptr inbounds nuw i8, ptr %i.el, i64 256 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i
  %.019.i.i = phi i8 [ %i.fa, %.lr.ph.i.i ], [ %i.fh, %bb.s ] ; 3 uses
  %i.fh = add i8 %.019.i.i, -1                    ; 3 uses
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !60, !noalias !112 ; 2 uses
  %i.fl = zext i8 %.019.i.i to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fl
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !60, !noalias !112
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i8 %.019.i.i, ptr %i.fn, align 1, !tbaa !39, !noalias !112
  %i.fo = zext i8 %i.fh to i32
  %i.fp = icmp samesign ult i32 %i.fe, %i.fo
  br i1 %i.fp, label %bb.s, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit, !llvm.loop !125

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit: ; preds = %bb.s, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i.i, %bb.r
  %i.fq = load i64, ptr %i.e, align 8, !tbaa !59, !noalias !112
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.e, align 8, !tbaa !59, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit

_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE.exit: ; preds = %.lr.ph, %bb.l, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.022.033, i64 8 ; 2 uses
  %.not25 = icmp eq ptr %i.fs, %i.aj
  br i1 %.not25, label %._crit_edge, label %.lr.ph
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcNS0_7EditionES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit:       ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.0.0.i.i, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.d, ptr %9, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.f = invoke { i64, ptr } @_ZN6google8protobuf8internal16ShortEditionNameENS0_7EditionE(i32 noundef %2)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.g = extractvalue { i64, ptr } %i.f, 0
  store i64 %i.g, ptr %5, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = extractvalue { i64, ptr } %i.f, 1
  store ptr %i.i, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %5, ptr %4, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.j, align 8, !tbaa !80
  %i.k = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %9, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.38, i64 2, ptr nonnull %4, i64 1)
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.l = load ptr, ptr %9, align 8, !tbaa !35
  %i.m = load i64, ptr %i.e, align 8, !tbaa !38
  store i64 %i.m, ptr %8, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.l, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %.not.i.i8 = icmp eq ptr %3, null
  br i1 %.not.i.i8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i9 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ]
  store i64 %.sroa.0.0.i.i9, ptr %10, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %3, ptr %i.p, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %10)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %6, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.s, ptr %i.q)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %6, align 8, !tbaa !35     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.u, align 8, !tbaa !39
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.y = load ptr, ptr %9, align 8, !tbaa !35     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !39
  %i.ab = add i64 %i.aa, 1
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf12_GLOBAL__N_15ErrorIJSt17basic_string_viewIcSt11char_traitsIcEEPKcEEEN4absl12lts_202505126StatusEDpT_:bb.a
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store i64 %1, ptr %5, align 8, !tbaa !33
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #22
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit:       ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.0.0.i.i, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.b, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.c = load ptr, ptr %4, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.e, ptr %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.f = load ptr, ptr %4, align 8, !tbaa !35     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !39
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.d:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !35     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !39
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15FeatureResolver27ValidateFieldFeatureSupportERKNS0_15FieldDescriptorE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::FieldOptions_FeatureSupport", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  %i.e = select i1 %.not.i.i, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.d ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.h, align 1
  %i.i = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.j = xor i64 %i.i, -1
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j
  tail call void @_ZN6google8protobuf15FeatureResolver22ValidateFeatureSupportERKNS0_27FieldOptions_FeatureSupportESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 %i.i, ptr nonnull %i.k)
  %i.l = load i64, ptr %0, align 8, !tbaa !7
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.critedge33, label %.preheader

.preheader:                                       ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.o = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !184
  %.not3038 = icmp sgt i32 %i.q, 0
  br i1 %.not3038, label %.lr.ph, label %.critedge33

.lr.ph:                                           ; preds = %.preheader
  %i.r = icmp eq ptr %i.e, @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  br i1 %i.r, label %.thread.us, label %.lr.ph.split

.thread.us:                                       ; preds = %.lr.ph, %.thread.us
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.thread.us ], [ 0, %.lr.ph ]
  %i.z = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1) ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !192
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %i.aa = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !184
  %i.ad = sext i32 %i.ac to i64
  %.not30.us = icmp slt i64 %indvars.iv.next43, %i.ad
  br i1 %.not30.us, label %.thread.us, label %.critedge33, !llvm.loop !195

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4absl12lts_202505126StatusD2Ev.exit37
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl12lts_202505126StatusD2Ev.exit37 ], [ 0, %.lr.ph ] ; 2 uses
  %i.ae = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !196
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %.0.copyload.i.i.i34 = load i16, ptr %i.aj, align 1
  %i.ak = zext i16 %.0.copyload.i.i.i34 to i64    ; 2 uses
  %i.al = xor i64 %i.ak, -1
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !174, !noalias !189
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3, !noalias !189
  %i.ar = and i32 %i.aq, 4
  %.not49.i = icmp eq i32 %i.ar, 0
  br i1 %.not49.i, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph.split
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !192
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit37

bb.b:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !189
  call void @_ZN6google8protobuf27FieldOptions_FeatureSupportC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(56) %i.e), !noalias !189
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !174, !noalias !189
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !39, !noalias !189 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  %i.av = select i1 %.not.i.i.i, ptr @_ZN6google8protobuf46_FieldOptions_FeatureSupport_default_instance_E, ptr %i.au
  invoke void @_ZN6google8protobuf27FieldOptions_FeatureSupport9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.av)
          to label %_ZN6google8protobuf27FieldOptions_FeatureSupport9MergeFromERKS1_.exit.i unwind label %bb.c, !noalias !189

_ZN6google8protobuf27FieldOptions_FeatureSupport9MergeFromERKS1_.exit.i: ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !168, !noalias !189 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35, !noalias !189
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !38, !noalias !189
  invoke void @_ZN6google8protobuf15FeatureResolver22ValidateFeatureSupportERKNS0_27FieldOptions_FeatureSupportESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 %i.bb, ptr %i.az)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.invoke.i, %_ZN6google8protobuf27FieldOptions_FeatureSupport9MergeFromERKS1_.exit.i, %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf27FieldOptions_FeatureSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !189
  resume { ptr, i32 } %i.bc

bb.d:                                             ; preds = %_ZN6google8protobuf27FieldOptions_FeatureSupport9MergeFromERKS1_.exit.i
  %i.bd = load i64, ptr %0, align 8, !tbaa !7, !alias.scope !189
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.bf = load i32, ptr %i.s, align 8, !tbaa !39, !noalias !189
  %i.bg = load i32, ptr %i.t, align 8, !tbaa !39, !noalias !189
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %.invoke.i, label %bb.f

.invoke.i:                                        ; preds = %bb.i, %bb.g, %bb.e
  %i.bi = phi ptr [ @.str.73, %bb.i ], [ @.str.72, %bb.g ], [ @.str.70, %bb.e ]
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !168, !noalias !189 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !38
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_S8_S4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull @.str.69, i64 %i.bn, ptr %i.bl, ptr noundef nonnull %i.bi, i64 %i.ak, ptr nonnull %i.am, ptr noundef nonnull @.str.71)
          to label %bb.j unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.bo = load i32, ptr %i.u, align 8, !tbaa !3, !noalias !189 ; 2 uses
  %i.bp = and i32 %i.bo, 16
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = load i32, ptr %i.v, align 8, !tbaa !39, !noalias !189
  %i.br = load i32, ptr %i.w, align 8, !tbaa !39, !noalias !189
  %i.bs = icmp sgt i32 %i.bq, %i.br
  br i1 %i.bs, label %.invoke.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bt = and i32 %i.bo, 8
  %.not50.i = icmp eq i32 %i.bt, 0
  br i1 %.not50.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = load i32, ptr %i.x, align 4, !tbaa !39, !noalias !189
  %i.bv = load i32, ptr %i.y, align 4, !tbaa !39, !noalias !189
  %i.bw = icmp sgt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.invoke.i, label %bb.j

bb.j:                                             ; preds = %bb.d, %.invoke.i, %bb.h, %bb.i
  call void @_ZN6google8protobuf27FieldOptions_FeatureSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !189
  %.pr = load i64, ptr %0, align 8, !tbaa !7
  %i.bx = icmp eq i64 %.pr, 1
  br i1 %i.bx, label %_ZN4absl12lts_202505126StatusD2Ev.exit37, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit37:         ; preds = %bb.j, %.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !184
  %i.cb = sext i32 %i.ca to i64
  %.not30 = icmp slt i64 %indvars.iv.next, %i.cb
  br i1 %.not30, label %.lr.ph.split, label %.critedge33, !llvm.loop !195

.critedge33:                                      ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit37, %.thread.us, %.preheader, %_ZN4absl12lts_202505126StatusD2Ev.exit
  store i64 1, ptr %0, align 8, !tbaa !7, !alias.scope !197
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.a, %.critedge33
  ret void
}

declare noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6google8protobuf43FeatureSetDefaults_FeatureSetEditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit:       ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  store i64 %.sroa.0.0.i.i, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i64 %2, ptr %7, align 8, !tbaa !33
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %.not.i.i7 = icmp eq ptr %4, null
  br i1 %.not.i.i7, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit9, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #22
  br label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit9

_ZN4absl12lts_202505128AlphaNumC2EPKc.exit9:      ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, %bb.c
  %.sroa.0.0.i.i8 = phi i64 [ %i.c, %bb.c ], [ 0, %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit ]
  store i64 %.sroa.0.0.i.i8, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %4, ptr %i.d, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
  %i.e = load ptr, ptr %5, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.g, ptr %i.e)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit9
  %i.h = load ptr, ptr %5, align 8, !tbaa !35     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !tbaa !39
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.e:                                             ; preds = %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit9
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !35     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !39
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.m
}

declare noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor11is_requiredEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051223FailedPreconditionErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #3

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf12_GLOBAL__N_15ErrorIJPKcSt17basic_string_viewIcSt11char_traitsIcEES4_NS0_7EditionES4_EEEN4absl12lts_202505126StatusEDpT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %1, ptr %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %6 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.b, ptr %9, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.d = invoke { i64, ptr } @_ZN6google8protobuf8internal16ShortEditionNameENS0_7EditionE(i32 noundef %3)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.e = extractvalue { i64, ptr } %i.d, 0
  store i64 %i.e, ptr %7, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = extractvalue { i64, ptr } %i.d, 1
  store ptr %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %7, ptr %6, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.h, align 8, !tbaa !80
  %i.i = invoke noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatUntypedENS1_17FormatRawSinkImplENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr nonnull align 8 dereferenceable(32) %9, ptr nonnull @_ZN4absl12lts_2025051219str_format_internal17FormatRawSinkImpl5FlushINS0_16strings_internal13StringifySinkEEEvPvSt17basic_string_viewIcSt11char_traitsIcEE, ptr nonnull @.str.38, i64 2, ptr nonnull %6, i64 1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.j = load ptr, ptr %9, align 8, !tbaa !35
  %i.k = load i64, ptr %i.c, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i, label %_ZN4absl12lts_202505128AlphaNumC2EPKc.exit, label %bb.c
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf12_GLOBAL__N_118MaybeInsertEditionENS0_7EditionES2_RN4absl12lts_202505129btree_setIS2_St4lessIS2_ESaIS2_EEE:bb.a
  %.1.i.i.i.i.i = select i1 %i.r, i64 %i.s, i64 %.014.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, %.111.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i, label %bb.e, !llvm.loop !115

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.111.i.i.i.i.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 11
  %i.u = load i8, ptr %i.t, align 1, !tbaa !39, !noalias !206
  %.not.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i, label %bb.f, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i

bb.f:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 256
  %i.w = and i64 %.0.lcssa.i.i.i.i.i, 255
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  br label %bb.d

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE11lower_boundIS6_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterIS8_S6_E15checked_compareE.exit.i.i
  %i.y = trunc i64 %.0.lcssa.i.i.i.i.i to i32     ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i
  %.sroa.7.0.i.i = phi i32 [ %i.y, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i ], [ %i.af, %bb.h ] ; 2 uses
  %.sroa.0.0.i16.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE15internal_locateIS6_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSH_EELb0EEERKT_.exit.i ], [ %i.ag, %bb.h ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 10
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !39, !noalias !206
  %i.ab = zext i8 %i.aa to i32
  %i.ac = icmp eq i32 %.sroa.7.0.i.i, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 8
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !39, !noalias !206
  %i.af = zext i8 %i.ae to i32
  %i.ag = load ptr, ptr %.sroa.0.0.i16.i, align 8, !tbaa !60, !noalias !206 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !39, !noalias !206
  %.not.i19.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i19.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i, !llvm.loop !116

bb.i:                                             ; preds = %bb.g
  %i.aj = sext i32 %.sroa.7.0.i.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i16.i, i64 12
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !61, !noalias !206
  %i.an = icmp slt i32 %0, %i.am
  br i1 %i.an, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13insert_uniqueIS6_JRKS6_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i: ; preds = %bb.h, %bb.i
  %i.ao = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %.sroa.0.0.i.i, i32 %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !206 ; 0 uses
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13insert_uniqueIS6_JRKS6_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EEbERKT_DpOT0_.exit

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13insert_uniqueIS6_JRKS6_EEESt4pairINS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EEbERKT_DpOT0_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSG_EEEET_SK_.exit.thread.i, %bb.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 7 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !39    ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %.thread.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.pre12 = load i8, ptr %.phi.trans.insert11, align 1, !tbaa !39
  br label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = and i32 %2, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.11723.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !60 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.11723.i.i.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !39    ; 2 uses
  %.not.i24.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i24.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit

.lr.ph26.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph26.i.i.i
  %.11725.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph26.i.i.i ], [ %.11723.i.i.i, %.thread.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %.11725.i.i.i, i64 256
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %.117.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !60 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.117.i.i.i, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !39    ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %.lr.ph26.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit, !llvm.loop !117

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit: ; preds = %.lr.ph26.i.i.i, %.thread.i.i
  %.pre = phi i8 [ %i.i, %.thread.i.i ], [ %i.p, %.lr.ph26.i.i.i ]
  %.117.lcssa.i.i.i = phi ptr [ %.11723.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph26.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i, i64 10
  %i.r = load i8, ptr %i.q, align 1, !tbaa !39    ; 2 uses
  %i.s = zext i8 %i.r to i32
  store ptr %.117.lcssa.i.i.i, ptr %4, align 8
  store i32 %i.s, ptr %i.a, align 8, !tbaa !118
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit
  %i.t = phi i8 [ %i.r, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit ], [ %.pre12, %._crit_edge ] ; 3 uses
  %i.u = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit ], [ %i.c, %._crit_edge ]
  %i.v = phi ptr [ %.117.lcssa.i.i.i, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS7_ESaIS7_ELi256ELb0EEEEERKS7_PSD_EmmEv.exit ], [ %1, %._crit_edge ] ; 5 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 10 ; 2 uses
  %i.z = icmp eq i8 %i.t, %i.u
  br i1 %i.z, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp ult i8 %i.t, 61
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = shl nuw nsw i8 %i.t, 1
  %i.ac = tail call i8 @llvm.umin.i8(i8 %i.ab, i8 61) ; 2 uses
  %i.ad = shl nuw i8 %i.ac, 2
  %i.ae = zext i8 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 16
  %i.ag = and i64 %i.af, 504
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #26 ; 12 uses
  store ptr %i.ah, ptr %i.ah, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 0, ptr %i.ai, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  store i8 0, ptr %i.aj, align 1, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 11
  store i8 %i.ac, ptr %i.ak, align 1, !tbaa !39
  store ptr %i.ah, ptr %4, align 8, !tbaa !120
  %i.al = load i8, ptr %i.y, align 1, !tbaa !39   ; 3 uses
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 4 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.am, 2          ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i.i.i
  %.not13.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not13.i.i.i, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d
  %i.ap = ptrtoaddr ptr %i.ah to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 3 uses
  %i.ar = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.as = lshr exact i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 28
  %i.au = sub i64 %i.ap, %i.w
  %diff.check = icmp ult i64 %i.au, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aq, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.an, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.ay ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.an, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep21, align 4
  %wide.load22 = load <4 x i32>, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load22, ptr %i.ba, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4.preheader

.lr.ph.i.i.i4.preheader:                          ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.015.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.preheader.i.i.i ], [ %i.aw, %middle.block ]
  %.01214.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.preheader.i.i.i ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %.lr.ph.i.i.i4.preheader, %.lr.ph.i.i.i4
  %.015.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i4 ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %.01214.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i4 ], [ %.01214.i.i.i.ph, %.lr.ph.i.i.i4.preheader ] ; 2 uses
  %i.bc = load i32, ptr %.01214.i.i.i, align 4
  store i32 %i.bc, ptr %.015.i.i.i, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  %.not.i.i.i5 = icmp eq ptr %i.bd, %i.ao
  br i1 %.not.i.i.i5, label %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i4, !llvm.loop !210

_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i4, %middle.block, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  store i8 %i.al, ptr %i.bf, align 2, !tbaa !39
  store i8 0, ptr %i.y, align 1, !tbaa !39
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16clear_and_deleteEPSB_PS9_(ptr noundef nonnull %i.v, ptr noundef nonnull %i.x)
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !60
  store ptr %i.ah, ptr %0, align 8, !tbaa !60
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4)
  %.pre13 = load ptr, ptr %4, align 8, !tbaa !120
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bg = phi ptr [ %i.ah, %_ZZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16internal_emplaceIJRKS6_EEENS1_14btree_iteratorINS1_10btree_nodeISA_EESE_PSD_EESJ_DpOT_ENKUlhE_clEh.exit ], [ %.pre13, %bb.e ], [ %i.v, %bb.b ] ; 5 uses
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.bi = trunc i32 %i.bh to i8                   ; 2 uses
  %i.bj = and i32 %i.bh, 255                      ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 10 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !39  ; 3 uses
  %i.bm = icmp ugt i8 %i.bl, %i.bi
  %i.bn = zext nneg i32 %i.bj to i64              ; 2 uses
  br i1 %i.bm, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bp = getelementptr [4 x i8], ptr %i.bo, i64 %i.bn ; 2 uses
  %narrow.i = sub nuw i8 %i.bl, %i.bi
  %i.bq = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bq, 2
  %i.br = getelementptr i8, ptr %i.bp, i64 4
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.br, ptr align 4 %i.bp, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.bk, align 1, !tbaa !39
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %i.bs = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.bl, %bb.f ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bn
  %i.bv = load i32, ptr %3, align 4, !tbaa !61
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !61
  %i.bw = add i8 %i.bs, 1                         ; 3 uses
  store i8 %i.bw, ptr %i.bk, align 1, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !39
  %.not.i18.i = icmp eq i8 %i.by, 0
  br i1 %.not.i18.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJRKS6_EEEvhPS9_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i
  %i.bz = zext i8 %i.bw to i32
  %i.ca = add nuw nsw i32 %i.bj, 1                ; 2 uses
  %i.cb = icmp samesign ult i32 %i.ca, %i.bz
  br i1 %i.cb, label %.lr.ph.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJRKS6_EEEvhPS9_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 256 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.019.i = phi i8 [ %i.bw, %.lr.ph.i ], [ %i.cd, %bb.h ] ; 3 uses
  %i.cd = add i8 %.019.i, -1                      ; 3 uses
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !60 ; 2 uses
  %i.ch = zext i8 %.019.i to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ch
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i8 %.019.i, ptr %i.cj, align 1, !tbaa !39
  %i.ck = zext i8 %i.cd to i32
  %i.cl = icmp samesign ult i32 %i.ca, %i.ck
  br i1 %i.cl, label %bb.h, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJRKS6_EEEvhPS9_DpOT_.exit, !llvm.loop !125

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJRKS6_EEEvhPS9_DpOT_.exit: ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i, %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !59
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !59
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %.sroa.2.0.copyload = load i32, ptr %i.a, align 8
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.2.0.copyload, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !60     ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !52
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !39    ; 5 uses
  %.not112 = icmp eq i8 %i.f, 0
  br i1 %.not112, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !39    ; 3 uses
  %i.n = icmp ult i8 %i.m, 61
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 61, %i.m
  %i.o = load i32, ptr %i.a, align 8, !tbaa !3
  %i.p = and i32 %i.o, 255                        ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 61
  %i.r = zext i1 %i.q to i8
  %i.s = lshr i8 %narrow, %i.r
  %.sroa.speculated99 = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1) ; 3 uses
  %i.t = zext nneg i8 %.sroa.speculated99 to i32  ; 2 uses
  %.not84 = icmp samesign uge i32 %i.p, %i.t
  %narrow113 = add nuw nsw i8 %.sroa.speculated99, %i.m
  %i.u = icmp samesign ult i8 %narrow113, 61
  %or.cond = select i1 %.not84, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_right_to_leftEhPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 noundef zeroext %.sroa.speculated99, ptr noundef nonnull %i.b, ptr noundef nonnull %i.v)
  %i.w = load i32, ptr %i.a, align 8, !tbaa !3
  %i.x = and i32 %i.w, 255
  %i.y = sub nsw i32 %i.x, %i.t                   ; 3 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !3
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.l, align 1, !tbaa !39
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.y, 1
  %i.ad = add nsw i32 %i.ac, %i.ab
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !39  ; 2 uses
  %i.ag = icmp ult i8 %i.f, %i.af
  br i1 %i.ag, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw i8 %i.f, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.aj = zext i8 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 10
  %i.an = load i8, ptr %i.am, align 1, !tbaa !39  ; 3 uses
  %i.ao = icmp ult i8 %i.an, 61
  br i1 %i.ao, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %narrow114 = sub nuw nsw i8 61, %i.an
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i8
  %i.as = lshr i8 %narrow114, %i.ar
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %i.as, i8 1) ; 3 uses
  %i.at = and i32 %i.ap, 255
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.av = load i8, ptr %i.au, align 2, !tbaa !39
  %i.aw = zext i8 %i.av to i32
  %i.ax = zext nneg i8 %.sroa.speculated to i32
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %.not85 = icmp sle i32 %i.at, %i.ay
  %narrow115 = add nuw nsw i8 %.sroa.speculated, %i.an
  %i.az = icmp samesign ult i8 %narrow115, 61
  %or.cond111 = select i1 %.not85, i1 true, i1 %i.az
  br i1 %or.cond111, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_left_to_rightEhPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i8 noundef zeroext %.sroa.speculated, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ba)
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !39
  %i.bf = zext i8 %i.be to i32                    ; 2 uses
  %i.bg = icmp sgt i32 %i.bb, %i.bf
  br i1 %i.bg, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.bh = xor i32 %i.bf, -1
  %i.bi = add nsw i32 %i.bb, %i.bh
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = icmp eq i8 %i.af, 61
  br i1 %i.bj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.bk = zext i8 %i.f to i32
  store ptr %i.c, ptr %2, align 8, !tbaa !120
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !118
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKS6_PSF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !60    ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bo = tail call noalias noundef nonnull dereferenceable(752) ptr @_Znwm(i64 noundef 752) #26 ; 6 uses
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 256
  store i32 0, ptr %i.bp, align 8
  store ptr %i.b, ptr %i.bq, align 8, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 0, ptr %i.br, align 8, !tbaa !39
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !60
  store ptr %i.bo, ptr %0, align 8, !tbaa !60
  %.pre = load ptr, ptr %1, align 8, !tbaa !60
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bs = phi ptr [ %i.bm, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 4 uses
  %.082 = phi ptr [ %i.bn, %bb.m ], [ %i.c, %bb.l ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !39
  %.not116 = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !39
  %i.bx = add i8 %i.bw, 1                         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #26 ; 9 uses
  store ptr %.082, ptr %i.bz, align 8, !tbaa !60
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.ca, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  store i8 0, ptr %i.cb, align 1, !tbaa !39
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  store i8 0, ptr %i.cc, align 2, !tbaa !39
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 11
  store i8 61, ptr %i.cd, align 1, !tbaa !39
  %i.ce = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE5splitEiPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.ce, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.by)
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !60
  %i.cg = load ptr, ptr %1, align 8, !tbaa !60
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !60
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ci = call noalias noundef nonnull dereferenceable(752) ptr @_Znwm(i64 noundef 752) #26 ; 7 uses
  store ptr %.082, ptr %i.ci, align 8, !tbaa !60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.bx, ptr %i.cj, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 9
  store i8 0, ptr %i.ck, align 1, !tbaa !39
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 10
  store i8 0, ptr %i.cl, align 2, !tbaa !39
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 11
  store i8 0, ptr %i.cm, align 1, !tbaa !39
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !3
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE5splitEiPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %i.bs, i32 noundef %i.cn, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.by)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.bz, %bb.q ], [ %i.bz, %bb.p ], [ %i.ci, %bb.r ]
  %i.co = load i32, ptr %i.a, align 8, !tbaa !3   ; 2 uses
  %i.cp = load ptr, ptr %1, align 8, !tbaa !60
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !39
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
  store ptr %.sink, ptr %1, align 8, !tbaa !60
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE16clear_and_deleteEPSB_PS9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !39    ; 2 uses
  %.not57 = icmp eq i8 %i.b, 0
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 16
  %i.f = and i64 %i.e, 2040
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i8, ptr %i.g, align 1, !tbaa !39
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !60
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04963 = phi ptr [ %i.l, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.04963, i64 256
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !39
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !211

._crit_edge:                                      ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i8, ptr %i.o, align 1, !tbaa !39
  %i.q = zext i8 %i.p to i64
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.q, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.r, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.147
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  %i.w = load i8, ptr %i.v, align 1, !tbaa !39    ; 2 uses
  %.not.i55 = icmp eq i8 %i.w, 0
  br i1 %.not.i55, label %.lr.ph66, label %bb.e

.lr.ph66:                                         ; preds = %bb.d, %.lr.ph66
  %.15065 = phi ptr [ %i.y, %.lr.ph66 ], [ %i.u, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %.15065, i64 256
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !39   ; 2 uses
  %.not.i56 = icmp eq i8 %i.aa, 0
  br i1 %.not.i56, label %.lr.ph66, label %._crit_edge67, !llvm.loop !212

._crit_edge67:                                    ; preds = %.lr.ph66
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !39
  %i.ad = zext i8 %i.ac to i64
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge67, %bb.d
  %i.af = phi i8 [ %i.aa, %._crit_edge67 ], [ %i.w, %bb.d ]
  %.251 = phi ptr [ %i.y, %._crit_edge67 ], [ %i.u, %bb.d ]
  %.248 = phi i64 [ %i.ad, %._crit_edge67 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.ae, %._crit_edge67 ], [ %.1, %bb.d ] ; 3 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 16
  %i.aj = and i64 %i.ai, 2040
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.aj) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !39
  %i.am = zext i8 %i.al to i64
  %.not.not = icmp samesign ult i64 %.248, %i.am
  br i1 %.not.not, label %.backedge, label %.preheader58

.backedge:                                        ; preds = %bb.e, %bb.g
  %.147.be.in = phi i64 [ %.248, %bb.e ], [ %i.at, %bb.g ]
  %.1.be = phi ptr [ %.2, %bb.e ], [ %i.ap, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !213

.preheader58:                                     ; preds = %bb.e, %bb.f
  %.3 = phi ptr [ %i.ap, %bb.f ], [ %.2, %bb.e ]  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39  ; 2 uses
  %i.ap = load ptr, ptr %.3, align 8, !tbaa !60   ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 752) #24
  %i.aq = icmp eq ptr %i.ap, %i.j
  br i1 %i.aq, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !39
  %.not = icmp ult i8 %i.ao, %i.as
  br i1 %.not, label %bb.g, label %.preheader58, !llvm.loop !214

bb.g:                                             ; preds = %bb.f
  %i.at = zext i8 %i.ao to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ 752, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader58, %.loopexit.sink.split
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_right_to_leftEhPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !39
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !39
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.e ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.h
  %i.n = load i32, ptr %i.m, align 4
  store i32 %i.n, ptr %i.k, align 1
  %i.o = zext i8 %1 to i32                        ; 3 uses
  %i.p = add nsw i32 %i.o, -1                     ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %.idx.i = shl nuw nsw i64 %i.q, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.t = zext i8 %1 to i64
  %i.u = add nuw nsw i64 %i.t, 4611686018427387902
  %i.v = and i64 %i.u, 4611686018427387903        ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 19
  br i1 %min.iters.check, label %.lr.ph.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.x = shl nuw nsw i64 %i.e, 2
  %i.y = add i64 %i.x, %i.b
  %i.z = add i64 %i.y, 4
  %i.aa = sub i64 %i.z, %i.a
  %diff.check = icmp ult i64 %i.aa, 32
  br i1 %diff.check, label %.lr.ph.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ae ; 2 uses
  %next.gep62 = getelementptr i8, ptr %i.r, i64 %i.ae ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ag = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep62, align 4
  %wide.load63 = load <4 x i32>, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.af, align 1
  store <4 x i32> %wide.load63, ptr %i.ah, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.015.i.pn.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.015.i.pn = phi ptr [ %.015.i, %.lr.ph.i ], [ %.015.i.pn.ph, %.lr.ph.i.preheader82 ]
  %.01214.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader82 ] ; 2 uses
  %.015.i = getelementptr inbounds nuw i8, ptr %.015.i.pn, i64 4 ; 2 uses
  %i.aj = load i32, ptr %.01214.i, align 4
  store i32 %i.aj, ptr %.015.i, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i, !llvm.loop !216

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !60
  %.pre60 = load i8, ptr %i.f, align 8, !tbaa !39
  %.pre61 = zext i8 %.pre60 to i64
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre61, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit ], [ %i.h, %bb.a ]
  %i.al = phi ptr [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit ], [ %i.i, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.pre-phi
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 %i.ap, ptr %i.an, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 5 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !39  ; 3 uses
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.as, %i.o
  %i.au = sext i32 %i.at to i64
  %i.av = zext i8 %1 to i64                       ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.av ; 4 uses
  %.idx.i44 = shl nuw nsw i64 %i.au, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i44
  %.not13.i45 = icmp eq i8 %i.ar, %1
  br i1 %.not13.i45, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.ay = zext i8 %i.ar to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = add nsw i64 %i.az, -4
  %i.bb = shl nuw nsw i64 %i.av, 2
  %i.bc = sub nsw i64 %i.ba, %i.bb                ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check66 = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check66, label %.lr.ph.i47.preheader81, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i47.preheader
  %n.vec69 = and i64 %i.be, 9223372036854775800   ; 3 uses
  %i.bf = shl i64 %n.vec69, 2                     ; 2 uses
  %i.bg = getelementptr i8, ptr %i.r, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.aw, i64 %i.bf
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.bi = shl i64 %index71, 2                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.r, i64 %i.bi ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.aw, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load74 = load <4 x i32>, ptr %next.gep73, align 4
  %wide.load75 = load <4 x i32>, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %next.gep72, i64 16
  store <4 x i32> %wide.load74, ptr %next.gep72, align 1
  store <4 x i32> %wide.load75, ptr %i.bk, align 1
  %index.next76 = add nuw i64 %index71, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.bl, label %middle.block77, label %vector.body70, !llvm.loop !217

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.be, %n.vec69
  br i1 %cmp.n78, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51, label %.lr.ph.i47.preheader81

.lr.ph.i47.preheader81:                           ; preds = %.lr.ph.i47.preheader, %middle.block77
  %.015.i48.ph = phi ptr [ %i.r, %.lr.ph.i47.preheader ], [ %i.bg, %middle.block77 ]
  %.01214.i49.ph = phi ptr [ %i.aw, %.lr.ph.i47.preheader ], [ %i.bh, %middle.block77 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader81, %.lr.ph.i47
  %.015.i48 = phi ptr [ %i.bo, %.lr.ph.i47 ], [ %.015.i48.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %.01214.i49 = phi ptr [ %i.bn, %.lr.ph.i47 ], [ %.01214.i49.ph, %.lr.ph.i47.preheader81 ] ; 2 uses
  %i.bm = load i32, ptr %.01214.i49, align 4
  store i32 %i.bm, ptr %.015.i48, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i49, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.015.i48, i64 4
  %.not.i50 = icmp eq ptr %i.bn, %i.ax
  br i1 %.not.i50, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51, label %.lr.ph.i47, !llvm.loop !218

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51: ; preds = %.lr.ph.i47, %middle.block77, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !39
  %.not.i52 = icmp eq i8 %i.bq, 0
  br i1 %.not.i52, label %.preheader53, label %.loopexit

.preheader53:                                     ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51
  %.not58 = icmp eq i8 %1, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader53
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.bt = icmp eq i32 %i.p, 0
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.av, 254
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod83 = trunc i8 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.bu = load i8, ptr %i.c, align 2, !tbaa !39
  %i.bv = trunc i64 %indvars.iv.epil.init to i8
  %i.bw = add i8 %i.bv, 1
  %i.bx = add i8 %i.bu, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !60 ; 3 uses
  %i.ca = zext i8 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ca
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !60
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 %i.bx, ptr %i.cc, align 1, !tbaa !39
  store ptr %0, ptr %i.bz, align 8, !tbaa !60
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader53
  %i.cd = load i8, ptr %i.aq, align 1, !tbaa !39
  %.not55 = icmp ult i8 %i.cd, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.cf = load i8, ptr %i.c, align 2, !tbaa !39
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i8
  %i.ch = add i8 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !60 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !60
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !39
  store ptr %0, ptr %i.cj, align 8, !tbaa !60
  %i.cn = load i8, ptr %i.c, align 2, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.co = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.cp = add i8 %i.cn, %i.co                     ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !60 ; 3 uses
  %i.cs = zext i8 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cs
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !60
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i8 %i.cp, ptr %i.cu, align 1, !tbaa !39
  store ptr %0, ptr %i.cr, align 8, !tbaa !60
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !219

bb.c:                                             ; preds = %.lr.ph57, %bb.c
  %.056 = phi i8 [ 0, %.lr.ph57 ], [ %i.dc, %bb.c ] ; 4 uses
  %i.cv = add i8 %.056, %1
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !60 ; 3 uses
  %i.cz = zext i8 %.056 to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cz
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !60
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 %.056, ptr %i.db, align 1, !tbaa !39
  store ptr %2, ptr %i.cy, align 8, !tbaa !60
  %i.dc = add i8 %.056, 1                         ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i8, ptr %i.aq, align 1, !tbaa !39
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 %i.df, %i.o
  %.not = icmp slt i32 %i.dg, %i.dd
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !220

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit51
  %i.dh = load i8, ptr %i.c, align 2, !tbaa !39
  %i.di = add i8 %i.dh, %1
  store i8 %i.di, ptr %i.c, align 2, !tbaa !39
  %i.dj = load i8, ptr %i.aq, align 1, !tbaa !39
  %i.dk = sub i8 %i.dj, %1
  store i8 %i.dk, ptr %i.aq, align 1, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE23rebalance_left_to_rightEhPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !39    ; 2 uses
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %.not15.i = icmp eq i8 %i.d, 0
  br i1 %.not15.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = zext i8 %i.d to i64                      ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 2               ; 2 uses
  %i.h = zext i8 %1 to i64
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %.idx.i  ; 3 uses
  %i.l = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.o = mul i64 %n.vec, -4                       ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o
  %i.q = getelementptr i8, ptr %i.k, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.r ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.k, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %next.gep65, i64 -16
  %i.t = getelementptr inbounds i8, ptr %next.gep65, i64 -32
  %wide.load = load <4 x i32>, ptr %i.s, align 4
  %wide.load66 = load <4 x i32>, ptr %i.t, align 4
  %i.u = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.v = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.u, align 1
  store <4 x i32> %wide.load66, ptr %i.v, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.017.i.ph = phi ptr [ %i.j, %.lr.ph.preheader.i ], [ %i.p, %middle.block ]
  %.01416.i.ph = phi ptr [ %i.k, %.lr.ph.preheader.i ], [ %i.q, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.017.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.017.i.ph, %.lr.ph.i.preheader ]
  %.01416.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.01416.i.ph, %.lr.ph.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.017.i, i64 -4 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.01416.i, i64 -4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4
  store i32 %i.z, ptr %i.x, align 1
  %.not.i = icmp eq ptr %i.y, %i.f
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit, label %.lr.ph.i, !llvm.loop !222

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %i.aa = add nsw i32 %i.e, -1                    ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !39
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.ag, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !39  ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = sub nsw i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao ; 5 uses
  %.idx.i46 = shl nuw nsw i64 %i.ab, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i46
  %.not13.i = icmp eq i32 %i.aa, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit
  %i.as = zext i8 %1 to i64
  %i.at = add nuw nsw i64 %i.as, 4611686018427387902
  %i.au = and i64 %i.at, 4611686018427387903      ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check72 = icmp samesign ult i64 %i.au, 27
  br i1 %min.iters.check72, label %.lr.ph.i48.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %i.aw = zext i8 %1 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = add i64 %i.ax, %i.b
  %i.az = add i64 %i.ay, -4
  %i.ba = zext i8 %i.al to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = add i64 %i.bb, %i.a
  %i.bd = sub i64 %i.az, %i.bc
  %diff.check = icmp ult i64 %i.bd, 32
  br i1 %diff.check, label %.lr.ph.i48.preheader87, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck
  %n.vec75 = and i64 %i.av, 9223372036854775800   ; 3 uses
  %i.be = shl i64 %n.vec75, 2                     ; 2 uses
  %i.bf = getelementptr i8, ptr %i.f, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.aq, i64 %i.be
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph73
  %index77 = phi i64 [ 0, %vector.ph73 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %i.bh = shl i64 %index77, 2                     ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.f, i64 %i.bh ; 2 uses
  %next.gep79 = getelementptr i8, ptr %i.aq, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep79, i64 16
  %wide.load80 = load <4 x i32>, ptr %next.gep79, align 4
  %wide.load81 = load <4 x i32>, ptr %i.bi, align 4
  %i.bj = getelementptr i8, ptr %next.gep78, i64 16
  store <4 x i32> %wide.load80, ptr %next.gep78, align 1
  store <4 x i32> %wide.load81, ptr %i.bj, align 1
  %index.next82 = add nuw i64 %index77, 8         ; 2 uses
  %i.bk = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.bk, label %middle.block83, label %vector.body76, !llvm.loop !223

middle.block83:                                   ; preds = %vector.body76
  %cmp.n84 = icmp eq i64 %i.av, %n.vec75
  br i1 %cmp.n84, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i48.preheader87

.lr.ph.i48.preheader87:                           ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block83
  %.015.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i48.preheader ], [ %i.bf, %middle.block83 ]
  %.01214.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i48.preheader ], [ %i.bg, %middle.block83 ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader87, %.lr.ph.i48
  %.015.i = phi ptr [ %i.bn, %.lr.ph.i48 ], [ %.015.i.ph, %.lr.ph.i48.preheader87 ] ; 2 uses
  %.01214.i = phi ptr [ %i.bm, %.lr.ph.i48 ], [ %.01214.i.ph, %.lr.ph.i48.preheader87 ] ; 2 uses
  %i.bl = load i32, ptr %.01214.i, align 4
  store i32 %i.bl, ptr %.015.i, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i49 = icmp eq ptr %i.bm, %i.ar
  br i1 %.not.i49, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i48, !llvm.loop !224

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit: ; preds = %.lr.ph.i48, %middle.block83
  %.pre = load i8, ptr %i.ak, align 2, !tbaa !39
  %.pre62 = zext i8 %.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit
  %.pre-phi = phi i32 [ %.pre62, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit ], [ %i.am, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !60
  %i.bp = load i8, ptr %i.ac, align 8, !tbaa !39
  %i.bq = zext i8 %i.bp to i64
  %i.br = sub nsw i32 %.pre-phi, %i.e
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bq
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bs
  %i.bw = load i32, ptr %i.bv, align 4
  store i32 %i.bw, ptr %i.bu, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !39
  %.not.i50 = icmp eq i8 %i.by, 0
  br i1 %.not.i50, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.bz = load i8, ptr %i.c, align 1, !tbaa !39   ; 5 uses
  %i.ca = add i8 %i.bz, 1                         ; 2 uses
  %.not5152 = icmp eq i8 %i.ca, 0
  br i1 %.not5152, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.cc = zext i8 %i.ca to i64                    ; 2 uses
  %i.cd = and i8 %i.bz, 1
  %lcmp.mod.not.not = icmp eq i8 %i.cd, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ce = add i8 %i.bz, %1                        ; 2 uses
  %i.cf = zext i8 %i.bz to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !60 ; 3 uses
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !60
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %i.ce, ptr %i.ck, align 1, !tbaa !39
  store ptr %2, ptr %i.ch, align 8, !tbaa !60
  %indvars.iv.next.prol = add nsw i64 %i.cc, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.cc, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.cl = icmp eq i8 %i.bz, 0
  br i1 %i.cl, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.b
  %.not54 = icmp eq i8 %1, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.co = add i8 %1, 1                            ; 2 uses
  %umax = tail call i8 @llvm.umax.i8(i8 %i.co, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.cp = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter88 = and i64 %i.cp, 1
  %i.cq = icmp ult i8 %i.co, 3
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.cp, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.cr = trunc nuw i64 %indvars.iv to i8
  %i.cs = add i8 %i.cr, -1                        ; 2 uses
  %i.ct = add i8 %i.cs, %1                        ; 2 uses
  %i.cu = zext i8 %i.cs to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !60 ; 3 uses
  %i.cx = zext i8 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cx
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !60
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 %i.ct, ptr %i.cz, align 1, !tbaa !39
  store ptr %2, ptr %i.cw, align 8, !tbaa !60
  %i.da = trunc i64 %indvars.iv to i8
  %i.db = add i8 %i.da, -2                        ; 2 uses
  %i.dc = add i8 %i.db, %1                        ; 2 uses
  %i.dd = zext i8 %i.db to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !60 ; 3 uses
  %i.dg = zext i8 %i.dc to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dg
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !60
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i8 %i.dc, ptr %i.di, align 1, !tbaa !39
  store ptr %2, ptr %i.df, align 8, !tbaa !60
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.dj = and i64 %indvars.iv.next.1, 255
  %.not51.1 = icmp eq i64 %i.dj, 0
  br i1 %.not51.1, label %.preheader, label %.lr.ph.new, !llvm.loop !225

bb.c:                                             ; preds = %bb.c, %.lr.ph56.new
  %indvars.iv58 = phi i64 [ 1, %.lr.ph56.new ], [ %indvars.iv.next59.1, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph56.new ], [ %niter.next.1, %bb.c ]
  %i.dk = add nsw i64 %indvars.iv58, -1           ; 2 uses
  %i.dl = load i8, ptr %i.ak, align 2, !tbaa !39
  %i.dm = trunc nuw i64 %indvars.iv58 to i8
  %i.dn = sub i8 %i.dm, %1
  %i.do = add i8 %i.dn, %i.dl
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !60 ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dk
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !60
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = trunc nuw i64 %i.dk to i8
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !39
  store ptr %2, ptr %i.dr, align 8, !tbaa !60
  %i.dv = load i8, ptr %i.ak, align 2, !tbaa !39
  %i.dw = trunc i64 %indvars.iv58 to i8
  %.reass = add i8 %i.dw, %invariant.op
  %i.dx = add i8 %.reass, %i.dv
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !60 ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv58
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !60
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = trunc nuw i64 %indvars.iv58 to i8
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !39
  store ptr %2, ptr %i.ea, align 8, !tbaa !60
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !226

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.c
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv58.epil.init = phi i64 [ 1, %.lr.ph56 ], [ %indvars.iv.next59.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod90 = trunc i64 %i.cp to i1
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.ee = add nsw i64 %indvars.iv58.epil.init, -1 ; 2 uses
  %i.ef = load i8, ptr %i.ak, align 2, !tbaa !39
  %i.eg = trunc nuw i64 %indvars.iv58.epil.init to i8
  %i.eh = sub i8 %i.eg, %1
  %i.ei = add i8 %i.eh, %i.ef
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !60 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.ee
  store ptr %i.el, ptr %i.em, align 8, !tbaa !60
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = trunc nuw i64 %i.ee to i8
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !39
  store ptr %2, ptr %i.el, align 8, !tbaa !60
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.ep = load i8, ptr %i.ak, align 2, !tbaa !39
  %i.eq = sub i8 %i.ep, %1
  store i8 %i.eq, ptr %i.ak, align 2, !tbaa !39
  %i.er = load i8, ptr %i.c, align 1, !tbaa !39
  %i.es = add i8 %i.er, %1
  store i8 %i.es, ptr %i.c, align 1, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE5splitEiPSB_PS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 61, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !39
  %i.e = add i8 %i.d, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !39
  %i.h = lshr i8 %i.g, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.i, align 1, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.m = sub i8 %i.k, %.sink                      ; 3 uses
  store i8 %i.m, ptr %i.j, align 1, !tbaa !39
  %i.n = load i8, ptr %i.l, align 1, !tbaa !39    ; 2 uses
  %i.o = zext i8 %i.n to i64
  %i.p = zext i8 %i.m to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.o, 2               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not13.i = icmp eq i8 %i.n, 0
  br i1 %.not13.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.u = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.v = lshr exact i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 60
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.x = shl nuw nsw i64 %i.p, 2
  %i.y = add i64 %i.x, %i.a
  %i.z = sub i64 %i.b, %i.y
  %diff.check = icmp ult i64 %i.z, 32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep35, align 4
  %wide.load36 = load <4 x i32>, ptr %i.ae, align 4
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1
  store <4 x i32> %wide.load36, ptr %i.af, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.015.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.preheader.i ], [ %i.ab, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.preheader.i ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.015.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01214.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ah = load i32, ptr %.01214.i, align 4
  store i32 %i.ah, ptr %.015.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.ai, %i.s
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, label %.lr.ph.i, !llvm.loop !228

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.pre = load i8, ptr %i.j, align 1, !tbaa !39
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit, %bb.d
  %i.ak = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit.loopexit ], [ %i.m, %bb.d ]
  %i.al = add i8 %i.ak, -1                        ; 2 uses
  store i8 %i.al, ptr %i.j, align 1, !tbaa !39
  %i.am = load ptr, ptr %0, align 8, !tbaa !60    ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !39  ; 4 uses
  %i.ap = zext i8 %i.al to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = zext i8 %i.ao to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 10 ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !39  ; 3 uses
  %i.au = icmp ult i8 %i.ao, %i.at
  %i.av = zext i8 %i.ao to i64                    ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %narrow.i = sub nuw i8 %i.at, %i.ao
  %i.ay = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ay, 2
  %i.az = getelementptr i8, ptr %i.ax, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %i.ax, i64 %.idx.i.i, i1 false)
  %.pre.i = load i8, ptr %i.as, align 1, !tbaa !39
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit
  %i.ba = phi i8 [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.at, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE10transfer_nEmmmPSB_PS9_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.av
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !61
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !61
  %i.be = add i8 %i.ba, 1                         ; 3 uses
  store i8 %i.be, ptr %i.as, align 1, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 11
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !39
  %.not.i18.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i18.i, label %bb.e, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i
  %i.bh = zext i8 %i.be to i32
  %i.bi = add nuw nsw i32 %i.ar, 1                ; 2 uses
  %i.bj = icmp samesign ult i32 %i.bi, %i.bh
  br i1 %i.bj, label %.lr.ph.i27, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit

.lr.ph.i27:                                       ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 256 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i27
  %.019.i = phi i8 [ %i.be, %.lr.ph.i27 ], [ %i.bl, %bb.f ] ; 3 uses
  %i.bl = add i8 %.019.i, -1                      ; 3 uses
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !60 ; 2 uses
  %i.bp = zext i8 %.019.i to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bp
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %.019.i, ptr %i.br, align 1, !tbaa !39
  %i.bs = zext i8 %i.bl to i32
  %i.bt = icmp samesign ult i32 %i.bi, %i.bs
  br i1 %i.bt, label %bb.f, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit, !llvm.loop !229

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit: ; preds = %bb.f, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE19transfer_n_backwardEmmmPSB_PS9_.exit.i, %bb.e
  %i.bu = load ptr, ptr %0, align 8, !tbaa !60
  %i.bv = load i8, ptr %i.an, align 8, !tbaa !39
  %i.bw = add i8 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 256
  %i.by = zext i8 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  store ptr %2, ptr %i.bz, align 8, !tbaa !60
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !39
  %.not.i28 = icmp eq i8 %i.cb, 0
  br i1 %.not.i28, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit
  %i.cc = load i8, ptr %i.j, align 2, !tbaa !39
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.0.in30 = phi i8 [ %i.cc, %bb.g ], [ %.0, %bb.h ]
  %.02529 = phi i8 [ 0, %bb.g ], [ %i.cl, %bb.h ] ; 3 uses
  %.0 = add i8 %.0.in30, 1                        ; 2 uses
  %i.cf = zext i8 %.0 to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !60 ; 3 uses
  %i.ci = zext i8 %.02529 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !60
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 %.02529, ptr %i.ck, align 1, !tbaa !39
  store ptr %2, ptr %i.ch, align 8, !tbaa !60
  %i.cl = add i8 %.02529, 1                       ; 2 uses
  %i.cm = load i8, ptr %i.l, align 1, !tbaa !39
  %.not = icmp ugt i8 %i.cl, %i.cm
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !230

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsIN6google8protobuf7EditionESt4lessIS6_ESaIS6_ELi256ELb0EEEE13emplace_valueIJPS6_EEEvhPS9_DpOT_.exit
  ret void
}

declare void @_ZN6google8protobuf18FeatureSetDefaultsC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare void @_ZNK6google8protobuf10Reflection10ClearFieldEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN6google8protobuf10TextFormat25ParseFieldValueFromStringESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_15FieldDescriptorEPNS0_7MessageE(i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !128    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i) #22
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !144

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !128
  br label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !131
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #24
  br label %_ZNSt12_Vector_baseIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #7

declare { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN6google8protobuf27FieldOptions_EditionDefaultC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EE19_M_range_initializeINS1_8internal19RepeatedPtrIteratorIKS2_EEEEvT_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 4 uses
  %i.e = icmp ugt i64 %i.d, 230584300921369395
  br i1 %i.e, label %bb.b, label %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EE17_S_check_init_lenEmRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #27
  unreachable

_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EE17_S_check_init_lenEmRKS3_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  store ptr null, ptr %0, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw [40 x i8], ptr null, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !131
  br label %_ZSt22__uninitialized_copy_aIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_27FieldOptions_EditionDefaultEEEPS4_S4_ET0_T_S9_S8_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.h = mul nuw nsw i64 %i.d, 40
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #26 ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !128
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !131
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN6google8protobuf27FieldOptions_EditionDefaultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.n, %_ZSt10_ConstructIN6google8protobuf27FieldOptions_EditionDefaultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.m, %_ZSt10_ConstructIN6google8protobuf27FieldOptions_EditionDefaultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.08.013.i.i.i.i, align 8, !tbaa !98
  invoke void @_ZN6google8protobuf27FieldOptions_EditionDefaultC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i.i, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %_ZSt10_ConstructIN6google8protobuf27FieldOptions_EditionDefaultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN6google8protobuf27FieldOptions_EditionDefaultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_27FieldOptions_EditionDefaultEEEPS4_S4_ET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !231

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #22 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  tail call void @_ZN6google8protobuf27FieldOptions_EditionDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i) #22
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !144

_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #27
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultEEvT_S4_.exit.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf27FieldOptions_EditionDefaultEEvT_S4_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN6google8protobuf8internal19RepeatedPtrIteratorIKNS1_27FieldOptions_EditionDefaultEEEPS4_S4_ET0_T_S9_S8_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN6google8protobuf27FieldOptions_EditionDefaultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN6google8protobuf27FieldOptions_EditionDefaultESaIS2_EE11_M_allocateEm.exit.thread ], [ %i.n, %_ZSt10_ConstructIN6google8protobuf27FieldOptions_EditionDefaultEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.v, align 8, !tbaa !143
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN6google8protobuf27FieldOptions_EditionDefaultC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::protobuf::FieldOptions_EditionDefault", align 8 ; 10 uses
  %4 = alloca %"class.google::protobuf::FieldOptions_EditionDefault", align 8 ; 8 uses
  %5 = alloca %"class.google::protobuf::FieldOptions_EditionDefault", align 8 ; 10 uses
  %6 = alloca %"class.google::protobuf::FieldOptions_EditionDefault", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf27FieldOptions_EditionDefaultESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_12_GLOBAL__N_112FillDefaultsENS3_7EditionERNS3_7MessageESF_E3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = icmp eq i64 %2, 0
end_hunk_4

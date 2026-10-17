Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/texturesource?download=true
inline.NumInlined: 2115
inline.NumDeleted: 995
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN13TextureSource10getPaletteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.im = getelementptr i8, ptr %next.gep238, i64 16
  %wide.load239 = load <4 x i32>, ptr %next.gep238, align 4, !tbaa !120, !alias.scope !343
  %wide.load240 = load <4 x i32>, ptr %i.im, align 4, !tbaa !120, !alias.scope !343
  %i.in = getelementptr i8, ptr %next.gep237, i64 16
  store <4 x i32> %wide.load239, ptr %next.gep237, align 4, !tbaa !120, !alias.scope !342
  store <4 x i32> %wide.load240, ptr %i.in, align 4, !tbaa !120, !alias.scope !342
  %index.next241 = add nuw i64 %index236, 8       ; 2 uses
  %i.io = icmp eq i64 %index.next241, %n.vec234
  br i1 %i.io, label %middle.block242, label %vector.body235, !llvm.loop !336

middle.block242:                                  ; preds = %vector.body235
  %cmp.n243 = icmp eq i64 %i.ig, %n.vec234
  br i1 %cmp.n243, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i117.preheader247

.lr.ph.i.i.i.i.i117.preheader247:                 ; preds = %.lr.ph.i.i.i.i.i117.preheader, %middle.block242
  %.012.i.i.i.i.i118.ph = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i117.preheader ], [ %i.ij, %middle.block242 ]
  %.0911.i.i.i.i.i119.ph = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i117.preheader ], [ %i.ik, %middle.block242 ]
  br label %.lr.ph.i.i.i.i.i117

.lr.ph.i.i.i.i.i117:                              ; preds = %.lr.ph.i.i.i.i.i117.preheader247, %.lr.ph.i.i.i.i.i117
  %.012.i.i.i.i.i118 = phi ptr [ %i.ir, %.lr.ph.i.i.i.i.i117 ], [ %.012.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i117.preheader247 ] ; 2 uses
  %.0911.i.i.i.i.i119 = phi ptr [ %i.iq, %.lr.ph.i.i.i.i.i117 ], [ %.0911.i.i.i.i.i119.ph, %.lr.ph.i.i.i.i.i117.preheader247 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.ip = load i32, ptr %.0911.i.i.i.i.i119, align 4, !tbaa !120, !alias.scope !343
  store i32 %i.ip, ptr %.012.i.i.i.i.i118, align 4, !tbaa !120, !alias.scope !342
  %i.iq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i119, i64 4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i118, i64 4 ; 2 uses
  %.not.i.i.i.i.i120 = icmp eq ptr %i.iq, %i.hp
  br i1 %.not.i.i.i.i.i120, label %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i117, !llvm.loop !337

_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i117, %middle.block242, %.noexc123
  %.0.lcssa.i.i.i.i.i121 = phi ptr [ %i.ia, %.noexc123 ], [ %i.ij, %middle.block242 ], [ %i.ir, %.lr.ph.i.i.i.i.i117 ]
  %i.is = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i121, i64 4 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  %i.it = ptrtoint ptr %i.hp to i64
  %i.iu = sub i64 %i.it, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.iu) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bg, %_ZNSt6vectorIN5video6SColorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  store ptr %i.ia, ptr %3, align 8, !tbaa !231
  store ptr %i.is, ptr %i.ez, align 8, !tbaa !228
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.hy ; 2 uses
  store ptr %i.iv, ptr %i.fa, align 8, !tbaa !232
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit

_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bd
  %i.iw = phi ptr [ %i.ia, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ho, %bb.bd ] ; 2 uses
  %i.ix = phi ptr [ %i.is, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.hw, %bb.bd ] ; 2 uses
  %i.iy = phi ptr [ %i.iv, %_ZNSt6vectorIN5video6SColorESaIS1_EE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.hp, %bb.bd ]
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.jb = sub i64 %i.iz, %i.ja                    ; 2 uses
  %i.jc = ashr exact i64 %i.jb, 2                 ; 2 uses
  %i.jd = icmp ult i64 %i.jc, 256
  br i1 %i.jd, label %.lr.ph, label %._crit_edge, !llvm.loop !338

bb.bh:                                            ; preds = %._crit_edge, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5video6SColorESaIS1_EE12_M_check_lenEmPKc.exit.i.i113
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp:                               ; preds = %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EE12emplace_backIJjEEERS1_DpOT_.exit, %_ZNK17IReferenceCounted4dropEv.exit
  %i.jf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN5video6SColorESaISB_EEESaISE_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit unwind label %bb.bh

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit: ; preds = %._crit_edge
  %i.jg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5video6SColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.jf, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bi unwind label %bb.bh     ; 0 uses

bb.bi:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_.exit
  %i.jh = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN5video6SColorESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit unwind label %bb.bl ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit: ; preds = %bb.bi
  %i.ji = load ptr, ptr %3, align 8, !tbaa !231   ; 3 uses
  %.not.i.i.i126 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit
  %i.jj = load ptr, ptr %i.fa, align 8, !tbaa !232
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.ji to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef %i.jm) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit:    ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5video6SColorESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.jn = load ptr, ptr %i.u, align 8, !tbaa !88
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.jn)
          to label %bb.bp unwind label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  call void @__clang_call_terminate(ptr %i.jp) #29
  unreachable

bb.bl:                                            ; preds = %bb.bi
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit163.split.us, %.loopexit.split-lp164, %.split.us, %bb.bh, %bb.bl, %bb.al
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.al ], [ %i.je, %bb.bh ], [ %lpad.loopexit.split-lp166, %.loopexit.split-lp164 ], [ %i.jq, %bb.bl ], [ %i.gy, %.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit165.us, %.loopexit163.split.us ], [ %lpad.loopexit, %.loopexit ]
  %i.jr = load ptr, ptr %3, align 8, !tbaa !231   ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !232
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = ptrtoint ptr %i.jr to i64
  %i.jw = sub i64 %i.ju, %i.jv
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.jw) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128, %bb.t
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit128 ], [ %i.bq, %bb.t ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.bp:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.not162 = icmp eq ptr %i.jh, null
  br i1 %.not162, label %bb.bs, label %.thread

.thread:                                          ; preds = %bb.d, %bb.bp
  %.sroa.0154.0158 = phi ptr [ %i.jh, %bb.bp ], [ %i.r, %bb.d ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0154.0158, i64 40
  br label %bb.bs

.critedge:                                        ; preds = %bb.m, %.noexc137
  %i.jy = load ptr, ptr %i.u, align 8, !tbaa !88
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.jy)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit129 unwind label %bb.bq

bb.bq:                                            ; preds = %.critedge
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit129: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.bs

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit131: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.kb = load ptr, ptr %i.u, align 8, !tbaa !88
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.kb)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit132 unwind label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit131
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #29
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit132: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit131
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.bs

bb.bs:                                            ; preds = %.thread, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit129, %bb.bp, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit132, %bb.c
  %.347 = phi ptr [ null, %bb.c ], [ %i.jx, %.thread ], [ null, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit129 ], [ null, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit132 ], [ null, %bb.bp ]
  ret ptr %.347
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5video6SColorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !231    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.i = load ptr, ptr %0, align 8, !tbaa !231    ; 9 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !222

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %i.o = add i64 %i.d, -4
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -4
  %i.r = add i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.r, i1 false), !tbaa !120
  %3 = load ptr, ptr %0, align 8, !tbaa !231      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #27
  br label %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !231
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !232
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !228  ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 5 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 4
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !233

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !231
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 4
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !120
  store i32 %i.ad, ptr %i.i, align 4, !tbaa !120
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.aa, 4
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !233

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.aa, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !231
  %.pre25 = load ptr, ptr %i.x, align 8, !tbaa !228 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !231 ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !228
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %i.aa, 4
  br i1 %i.af, label %bb.n, label %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !120
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !120
  br label %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit:   ; preds = %bb.l, %bb.m, %bb.n
  %.pre-phi33 = phi i64 [ %.pre32, %bb.l ], [ %i.aa, %bb.m ], [ 4, %bb.n ] ; 3 uses
  %i.ah = phi ptr [ %.pre27, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ] ; 3 uses
  %i.ai = phi ptr [ %.pre26, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ] ; 3 uses
  %i.aj = phi ptr [ %.pre25, %bb.l ], [ %i.y, %bb.m ], [ %i.y, %bb.n ] ; 5 uses
  %i.ak = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.n ] ; 2 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 2 uses
  %i.am = ptrtoaddr ptr %i.aj to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.pre-phi33 ; 5 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ah
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = add i64 %i.ao, -4
  %i.aq = add i64 %.pre-phi33, %i.al
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.au = add nuw i64 %.pre-phi33, %i.al
  %i.av = sub i64 %i.au, %i.am
  %diff.check = icmp ugt i64 %i.av, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.aw = shl i64 %n.vec, 2                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aj, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.an, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.az ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.an, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep41, align 4, !tbaa !120
  %wide.load42 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !120
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !120
  store <4 x i32> %wide.load42, ptr %i.bb, align 4, !tbaa !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !344

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader44

.lr.ph.i.i.i.i.preheader44:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader44, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %i.bd = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !120
  store i32 %i.bd, ptr %.011.i.i.i.i, align 4, !tbaa !120
  %i.be = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.ah
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !345

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bg = phi ptr [ %2, %_ZNSt12_Vector_baseIN5video6SColorESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.ai, %_ZSt4copyIPN5video6SColorES2_ET0_T_S4_S3_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %i.ai, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !228
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5video6SColorESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TextureSource12processQueueEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.GetRequest, align 8          ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 6 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13 ; 2 uses
  %.not.i.i.i.i16 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i16, label %_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit.lr.ph, label %._crit_edge

_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit.lr.ph: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit

._crit_edge:                                      ; preds = %_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit, %bb.a
  %.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.ao, %_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit ]
  call void @_ZSt20__throw_system_errori(i32 noundef %.lcssa) #30
  unreachable

_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit: ; preds = %_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit.lr.ph, %_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !201
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13 ; 0 uses
  br i1 %i.o, label %bb.j, label %bb.b

bb.b:                                             ; preds = %_ZNK12RequestQueueI14TextureRequestjNSt6thread2idEcE5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN9Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g), !noalias !353
  %i.q = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13, !noalias !353 ; 2 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i2, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_system_errori(i32 noundef %i.q) #30, !noalias !353
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i:      ; preds = %bb.b
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !201, !noalias !354
  invoke void @_ZN10GetRequestI14TextureRequestjNSt6thread2idEcEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %_ZN12RequestQueueI14TextureRequestjNSt6thread2idEcE3popEv.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ap, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13 ; 0 uses
  br label %common.resume

_ZN12RequestQueueI14TextureRequestjNSt6thread2idEcE3popEv.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  call void @_ZNSt5dequeI10GetRequestI14TextureRequestjNSt6thread2idEcESaIS4_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(152) %i.b) #13
  %i.u = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.v = invoke noundef i32 @_ZN13TextureSource14processRequestERK14TextureRequest(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
end_hunk_0

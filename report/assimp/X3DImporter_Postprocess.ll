inline.NumInlined: 858
inline.NumDeleted: 400
begin_hunk_0_@_ZNK6Assimp11X3DImporter21Postprocess_BuildMeshERK18X3DNodeElementBasePP6aiMesh:bb.a

.sink.split1220:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i504.thread
  %.pn279.pn.pn790.ph = phi { ptr, i32 } [ %i.zu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i504.thread ], [ %i.ze, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506.thread ], [ %i.zu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18
  br label %bb.gy

bb.gy:                                            ; preds = %.sink.split1220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i504, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506
  %.pn279.pn.pn790 = phi { ptr, i32 } [ %.pn279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i504 ], [ %.pn279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506 ], [ %.pn279.pn.pn790.ph, %.sink.split1220 ]
  call void @__cxa_free_exception(ptr %i.za) #18
  br label %bb.hi

bb.gz:                                            ; preds = %bb.gm, %bb.gn, %bb.gq, %bb.gp, %bb.go
  %.sroa.0516.0 = load ptr, ptr %.sroa.0516.0911, align 8 ; 2 uses
  %.not833 = icmp eq ptr %.sroa.0516.0, %i.xt
  br i1 %.not833, label %.loopexit858, label %bb.gm, !llvm.loop !61

bb.ha:                                            ; preds = %bb.i
  %i.aac = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18
  %i.aad = load i32, ptr %i.g, align 8
  invoke void @_Z12ai_to_stringI11X3DElemTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, i32 noundef %i.aad)
          to label %bb.hb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515.thread

bb.hb:                                            ; preds = %bb.ha
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.hc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512.thread

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.1)
          to label %bb.hd unwind label %bb.hf

bb.hd:                                            ; preds = %bb.hc
  invoke void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aac, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.he unwind label %bb.hg

bb.he:                                            ; preds = %bb.hd
  invoke void @__cxa_throw(ptr nonnull %i.aac, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.hj unwind label %bb.hg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515.thread: ; preds = %bb.ha
  %i.aae = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split1221

bb.hf:                                            ; preds = %bb.hc
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509

bb.hg:                                            ; preds = %bb.he, %bb.hd
  %.0 = phi i1 [ false, %bb.he ], [ true, %bb.hd ] ; 2 uses
  %i.aag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aah = load ptr, ptr %34, align 8             ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.aaj = icmp eq ptr %i.aah, %i.aai
  br i1 %i.aaj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507: ; preds = %bb.hg
  %i.aak = load i64, ptr %i.aai, align 8
  %i.aal = add i64 %i.aak, 1
  call void @_ZdlPvm(ptr noundef %i.aah, i64 noundef %i.aal) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509: ; preds = %bb.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507, %bb.hf
  %.pn = phi { ptr, i32 } [ %i.aaf, %bb.hf ], [ %i.aag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507 ], [ %i.aag, %bb.hg ] ; 4 uses
  %.1 = phi i1 [ true, %bb.hf ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507 ], [ %.0, %bb.hg ] ; 2 uses
  %i.aam = load ptr, ptr %35, align 8             ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.aao = icmp eq ptr %i.aam, %i.aan
  br i1 %i.aao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509
  %i.aap = load i64, ptr %i.aan, align 8
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aaq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit509, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i510
  %i.aar = load ptr, ptr %36, align 8             ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.aat = icmp eq ptr %i.aar, %i.aas
  br i1 %i.aat, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512.thread: ; preds = %bb.hb
  %i.aau = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aav = load ptr, ptr %36, align 8             ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.aax = icmp eq ptr %i.aav, %i.aaw
  br i1 %i.aax, label %.sink.split1221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512.thread
  %i.aay = load i64, ptr %i.aaw, align 8
  %i.aaz = add i64 %i.aay, 1
  call void @_ZdlPvm(ptr noundef %i.aav, i64 noundef %i.aaz) #20
  br label %.sink.split1221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512
  %i.aba = load i64, ptr %i.aas, align 8
  %i.abb = add i64 %i.aba, 1
  call void @_ZdlPvm(ptr noundef %i.aar, i64 noundef %i.abb) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  br i1 %.1, label %bb.hh, label %bb.hi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  br i1 %.1, label %bb.hh, label %bb.hi

.sink.split1221:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513.thread
  %.pn.pn.pn802.ph = phi { ptr, i32 } [ %i.aau, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513.thread ], [ %i.aae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515.thread ], [ %i.aau, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  br label %bb.hh

bb.hh:                                            ; preds = %.sink.split1221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515
  %.pn.pn.pn802 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515 ], [ %.pn.pn.pn802.ph, %.sink.split1221 ]
  call void @__cxa_free_exception(ptr %i.aac) #18
  br label %bb.hi

.loopexit858:                                     ; preds = %bb.gz, %bb.gh, %bb.er, %bb.ff, %bb.em, %bb.dx, %bb.cx, %bb.cf, %bb.bp, %bb.ax, %.preheader892, %.preheader880, %.preheader878, %.preheader876, %.preheader864, %.preheader862, %.preheader860, %.preheader, %bb.aj, %bb.cy, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit362, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  ret void

bb.hi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506, %bb.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i504, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497, %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438, %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379, %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370, %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit488, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit429, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515, %bb.hh, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit364, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit332, %bb.h, %bb.d
  %.pn325 = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.f, %bb.h ], [ %.pn323, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit332 ], [ %.pn321, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit364 ], [ %.pn290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454 ], [ %.pn317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368 ], [ %.pn313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i377 ], [ %.pn309, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515 ], [ %.pn298, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i436 ], [ %.pn294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445 ], [ %.pn305, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395 ], [ %.pn283, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495 ], [ %.pn.pn.pn802, %bb.hh ], [ %.pn302, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit429 ], [ %.pn287, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit488 ], [ %.pn317.pn.pn686, %bb.aw ], [ %.pn317, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit370 ], [ %.pn313.pn.pn699, %bb.bo ], [ %.pn313, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit379 ], [ %.pn309.pn.pn712, %bb.ce ], [ %.pn309, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388 ], [ %.pn305.pn.pn725, %bb.cw ], [ %.pn305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397 ], [ %.pn298.pn.pn738, %bb.dw ], [ %.pn298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438 ], [ %.pn294.pn.pn751, %bb.el ], [ %.pn294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447 ], [ %.pn290.pn.pn764, %bb.fe ], [ %.pn290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456 ], [ %.pn283.pn.pn777, %bb.gg ], [ %.pn283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit497 ], [ %.pn279.pn.pn790, %bb.gy ], [ %.pn279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit506 ], [ %.pn279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i504 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513 ]
  resume { ptr, i32 } %.pn325

bb.hj:                                            ; preds = %bb.he, %bb.gv, %bb.gd, %bb.fb, %bb.ei, %bb.dt, %bb.ct, %bb.cb, %bb.bl, %bb.at
  unreachable
}

declare noundef ptr @_ZN6Assimp14StandardShapes8MakeMeshERKSt6vectorI10aiVector3tIfESaIS3_EEj(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN6Assimp12X3DGeoHelper9make_meshERKSt6vectorIiSaIiEERKNSt7__cxx114listI10aiVector3tIfESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

declare void @_ZN6Assimp12X3DGeoHelper9add_colorER6aiMeshRKNSt7__cxx114listI9aiColor3DSaIS5_EEEb(ptr noundef nonnull align 8 dereferenceable(1320), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #8

declare void @_ZN6Assimp12X3DGeoHelper9add_colorER6aiMeshRKNSt7__cxx114listI9aiColor4tIfESaIS6_EEEb(ptr noundef nonnull align 8 dereferenceable(1320), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #8

declare void @_ZN6Assimp12X3DGeoHelper10add_normalER6aiMeshRKNSt7__cxx114listI10aiVector3tIfESaIS6_EEEb(ptr noundef nonnull align 8 dereferenceable(1320), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #8

declare void @_ZN6Assimp12X3DGeoHelper13add_tex_coordER6aiMeshRKNSt7__cxx114listI10aiVector2tIfESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(1320), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

declare void @_ZN6Assimp12X3DGeoHelper9add_colorER6aiMeshRKSt6vectorIiSaIiEES7_RKNSt7__cxx114listI9aiColor3DSaISA_EEEb(ptr noundef nonnull align 8 dereferenceable(1320), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #8

declare void @_ZN6Assimp12X3DGeoHelper9add_colorER6aiMeshRKSt6vectorIiSaIiEES7_RKNSt7__cxx114listI9aiColor4tIfESaISB_EEEb(ptr noundef nonnull align 8 dereferenceable(1320), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #8

declare void @_ZN6Assimp12X3DGeoHelper10add_normalER6aiMeshRKSt6vectorIiSaIiEES7_RKNSt7__cxx114listI10aiVector3tIfESaISB_EEEb(ptr noundef nonnull align 8 dereferenceable(1320), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #8

declare void @_ZN6Assimp12X3DGeoHelper13add_tex_coordER6aiMeshRKSt6vectorIiSaIiEES7_RKNSt7__cxx114listI10aiVector2tIfESaISB_EEE(ptr noundef nonnull align 8 dereferenceable(1320), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

declare noundef ptr @_ZN6Assimp12X3DGeoHelper14make_line_meshERKSt6vectorIiSaIiEERKNSt7__cxx114listI10aiVector3tIfESaIS9_EEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11X3DImporter21Postprocess_BuildNodeERK18X3DNodeElementBaseR6aiNodeRNSt7__cxx114listIP6aiMeshSaIS9_EEERNS7_IP10aiMaterialSaISE_EEERNS7_IP7aiLightSaISJ_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(1144) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::list.45", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::list.50", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %6, ptr %i.c, align 8
  store ptr %6, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %7, ptr %i.e, align 8
  store ptr %7, ptr %7, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 0, ptr %i.f, align 8
  invoke void @_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(1144) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.k, ptr noundef nonnull align 4 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 141
  %i.m = load i8, ptr %i.l, align 1, !range !33, !noundef !34
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %11, label %bb.f

11:                                               ; preds = %bb.c
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %13 = load i32, ptr %12, align 8                ; 4 uses
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %._crit_edge139, label %bb.d

bb.d:                                             ; preds = %11
  %i.o = zext nneg i32 %13 to i64                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load i64, ptr %i.p, align 8
  %.not = icmp ugt i64 %i.q, %i.o
  br i1 %.not, label %.preheader, label %._crit_edge139

.preheader:                                       ; preds = %bb.d
  %.not148.a = icmp eq i32 %13, 0
  br i1 %.not148.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %i.o, 7                     ; 3 uses
  %i.r = icmp ult i32 %13, 8
  br i1 %i.r, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.o, 2147483640
  br label %.lr.ph

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0109.0133.epil.init = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod201 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod201)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0109.0133.epil = phi ptr [ %i.t, %.lr.ph.epil ], [ %.sroa.0109.0133.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.t = load ptr, ptr %.sroa.0109.0133.epil, align 8 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !62

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.sroa.0109.0.lcssa = phi ptr [ %i.b, %.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ], [ %i.t, %.lr.ph.epil ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.0109.0.lcssa, align 8
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0109.0133 = phi ptr [ %i.b, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.v = load ptr, ptr %.sroa.0109.0133, align 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !64

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.sroa.0107.0 = phi ptr [ %i.a, %bb.b ], [ %i.u, %._crit_edge ], [ %i.a, %bb.c ] ; 2 uses
  %.sroa.0109.1 = phi ptr [ %i.b, %bb.b ], [ %.sroa.0109.0.lcssa, %._crit_edge ], [ %i.b, %bb.c ] ; 2 uses
  %.not127135 = icmp eq ptr %.sroa.0109.1, %.sroa.0107.0
  br i1 %.not127135, label %._crit_edge139, label %.lr.ph138

._crit_edge139:                                   ; preds = %bb.z, %11, %bb.d, %bb.f
  %i.ad = load ptr, ptr %6, align 8               ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %6
  br i1 %i.ae, label %.loopexit128, label %bb.aa

.lr.ph138:                                        ; preds = %bb.f, %bb.z
  %.sroa.094.0136 = phi ptr [ %i.cf, %bb.z ], [ %.sroa.0109.1, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.094.0136, i64 16 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  switch i32 %i.ai, label %bb.q [
    i32 0, label %bb.g
    i32 36, label %bb.n
    i32 41, label %bb.p
    i32 42, label %bb.p
    i32 43, label %bb.p
  ]

bb.g:                                             ; preds = %.lr.ph138
  %i.aj = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #19
          to label %bb.h unwind label %bb.l       ; 7 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.aj)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i64, ptr %i.al, align 8            ; 4 uses
  %i.an = icmp ugt i64 %i.am, 1023
  br i1 %i.an, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = trunc nuw nsw i64 %i.am to i32
  store i32 %i.ap, ptr %i.aj, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 1 %i.ar, i64 %i.am, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am
  store i8 0, ptr %i.as, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 1096
  store ptr %2, ptr %i.at, align 8
  %i.au = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %bb.k unwind label %bb.l       ; 2 uses

bb.k:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.aj, ptr %i.av, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  %i.aw = load i64, ptr %i.d, align 8
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.d, align 8
  %i.ay = load ptr, ptr %i.af, align 8
  invoke void @_ZNK6Assimp11X3DImporter21Postprocess_BuildNodeERK18X3DNodeElementBaseR6aiNodeRNSt7__cxx114listIP6aiMeshSaIS9_EEERNS7_IP10aiMaterialSaISE_EEERNS7_IP7aiLightSaISJ_EEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.ay, ptr noundef nonnull align 8 dereferenceable(1144) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.z unwind label %bb.l

bb.l:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.k, %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.m:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 1144) #20
  br label %bb.ag

bb.n:                                             ; preds = %.lr.ph138
  invoke void @_ZNK6Assimp11X3DImporter22Postprocess_BuildShapeERK19X3DNodeElementShapeRNSt7__cxx114listIjSaIjEEERNS5_IP6aiMeshSaISA_EEERNS5_IP10aiMaterialSaISF_EEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(76) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.z unwind label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.p:                                             ; preds = %.lr.ph138, %.lr.ph138, %.lr.ph138
  invoke void @_ZNK6Assimp11X3DImporter22Postprocess_BuildLightERK18X3DNodeElementBaseRNSt7__cxx114listIP7aiLightSaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.z unwind label %bb.o

bb.q:                                             ; preds = %.lr.ph138
  %i.bc = add i32 %i.ai, -1
  %or.cond9.i = icmp ult i32 %i.bc, 6
  br i1 %or.cond9.i, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.be = load ptr, ptr %i.af, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load i32, ptr %i.bf, align 8
  invoke void @_Z12ai_to_stringI11X3DElemTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i32 noundef %i.bg)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread

bb.s:                                             ; preds = %bb.r
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.28, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.t unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread

bb.t:                                             ; preds = %bb.s
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.ah unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread: ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.w:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %.045 = phi i1 [ false, %bb.v ], [ true, %bb.u ] ; 2 uses
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %8, align 8               ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.bn = load i64, ptr %i.bl, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.w ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bj, %bb.x ] ; 4 uses
  %.1 = phi i1 [ true, %bb.w ], [ %.045, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.045, %bb.x ] ; 2 uses
  %i.bp = load ptr, ptr %9, align 8               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = load i64, ptr %i.bq, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %i.bu = load ptr, ptr %10, align 8              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread: ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %10, align 8              ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread
  %i.cb = load i64, ptr %i.bz, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #20
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.cd = load i64, ptr %i.bv, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.ce) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %.1, label %bb.y, label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %.1, label %bb.y, label %bb.ag

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.thread
  %.pn.pn.pn113.ph = phi { ptr, i32 } [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.thread ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.pn.pn.pn113 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn.pn.pn113.ph, %.sink.split ]
end_hunk_0
begin_hunk_1_@_ZNK6Assimp11X3DImporter27Postprocess_CollectMetadataERK18X3DNodeElementBaseR6aiNode:bb.a
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = and i64 %.0113, 4294967295              ; 3 uses
  %i.cb = icmp ugt i64 %i.by, 1023
  br i1 %i.cb, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw [1028 x i8], ptr %i.cd, i64 %i.ca ; 2 uses
  %i.cf = trunc nuw nsw i64 %i.by to i32
  store i32 %i.cf, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %i.ch = load ptr, ptr %i.br, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr align 1 %i.ch, i64 %i.by, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  store i8 0, ptr %i.ci, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.o, %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.ca
  store i32 0, ptr %i.cl, align 8
  %i.cm = load ptr, ptr %i.cj, align 8
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.ca
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not24.i = icmp eq ptr %i.cp, null
  br i1 %.not24.i, label %.thread28.i, label %bb.p

bb.p:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  store i8 %i.bv, ptr %i.cp, align 1
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread28.i:                                      ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cq = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #19
          to label %.noexc50 unwind label %bb.q   ; 2 uses

.noexc50:                                         ; preds = %.thread28.i
  store i8 %i.bv, ptr %i.cq, align 1
  store ptr %i.cq, ptr %i.co, align 8
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.q:                                             ; preds = %.thread28.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.r:                                             ; preds = %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = load ptr, ptr %i.cs, align 8            ; 2 uses
  %.not39 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not39, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.cx = trunc i64 %.0113 to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.cz = load double, ptr %i.cv, align 8
  %i.da = fptrunc double %i.cz to float           ; 3 uses
  %i.db = load i32, ptr %i.cw, align 8
  %.not.i51 = icmp ugt i32 %i.db, %i.cx
  br i1 %.not.i51, label %bb.t, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.dd = load i64, ptr %i.dc, align 8            ; 5 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = and i64 %.0113, 4294967295              ; 3 uses
  %i.dg = icmp ugt i64 %i.dd, 1023
  br i1 %i.dg, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i53, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw [1028 x i8], ptr %i.di, i64 %i.df ; 2 uses
  %i.dk = trunc nuw nsw i64 %i.dd to i32
  store i32 %i.dk, ptr %i.dj, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dm = load ptr, ptr %i.cy, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr align 1 %i.dm, i64 %i.dd, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd
  store i8 0, ptr %i.dn, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i53

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i53: ; preds = %bb.v, %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.df
  store i32 3, ptr %i.dq, align 8
  %i.dr = load ptr, ptr %i.do, align 8
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.df ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not24.i54 = icmp eq ptr %i.du, null
  br i1 %.not24.i54, label %.thread28.i55, label %bb.w

bb.w:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i53
  %i.dv = load i32, ptr %i.ds, align 8
  %.not25.i = icmp eq i32 %i.dv, 7
  br i1 %.not25.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store float %i.da, ptr %i.du, align 1
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.y:                                             ; preds = %bb.w
  store float %i.da, ptr %i.du, align 4
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread28.i55:                                    ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i53
  %i.dw = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #19
          to label %.noexc57 unwind label %bb.z   ; 2 uses

.noexc57:                                         ; preds = %.thread28.i55
  store float %i.da, ptr %i.dw, align 4
  store ptr %i.dw, ptr %i.dt, align 8
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.z:                                             ; preds = %.thread28.i55
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.aa:                                            ; preds = %bb.j
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load ptr, ptr %i.dy, align 8            ; 4 uses
  %.not38 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not38, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ec = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.ed = trunc i64 %.0113 to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.ef = load i32, ptr %i.ec, align 8
  %.not.i58 = icmp ugt i32 %i.ef, %i.ed
  br i1 %.not.i58, label %bb.ac, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.eh = load i64, ptr %i.eg, align 8            ; 5 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ej = and i64 %.0113, 4294967295              ; 3 uses
  %i.ek = icmp ugt i64 %i.eh, 1023
  br i1 %i.ek, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i60, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw [1028 x i8], ptr %i.em, i64 %i.ej ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.eh to i32
  store i32 %i.eo, ptr %i.en, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.eq = load ptr, ptr %i.ee, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ep, ptr align 1 %i.eq, i64 %i.eh, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eh
  store i8 0, ptr %i.er, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i60

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i60: ; preds = %bb.ae, %bb.ad
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %i.ej
  store i32 3, ptr %i.eu, align 8
  %i.ev = load ptr, ptr %i.es, align 8
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.ej ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8            ; 3 uses
  %.not24.i61 = icmp eq ptr %i.ey, null
  br i1 %.not24.i61, label %.thread28.i63, label %bb.af

bb.af:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i60
  %i.ez = load i32, ptr %i.ew, align 8
  %.not25.i62 = icmp eq i32 %i.ez, 7
  br i1 %.not25.i62, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = load i32, ptr %i.eb, align 4
  store i32 %i.fa, ptr %i.ey, align 1
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.ah:                                            ; preds = %bb.af
  %i.fb = load float, ptr %i.eb, align 4
  store float %i.fb, ptr %i.ey, align 4
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread28.i63:                                    ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i60
  %i.fc = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #19
          to label %.noexc65 unwind label %bb.ai  ; 2 uses

.noexc65:                                         ; preds = %.thread28.i63
  %6 = load float, ptr %i.eb, align 4
  store float %6, ptr %i.fc, align 4
  store ptr %i.fc, ptr %i.ex, align 8
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.ai:                                            ; preds = %.thread28.i63
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.aj:                                            ; preds = %bb.j
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = load ptr, ptr %i.fe, align 8            ; 3 uses
  %.not37 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not37, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.fj = trunc i64 %.0113 to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.fl = load i32, ptr %i.fi, align 8
  %.not.i67 = icmp ugt i32 %i.fl, %i.fj
  br i1 %.not.i67, label %bb.al, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.al:                                            ; preds = %bb.ak
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.fn = load i64, ptr %i.fm, align 8            ; 5 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fp = and i64 %.0113, 4294967295              ; 3 uses
  %i.fq = icmp ugt i64 %i.fn, 1023
  br i1 %i.fq, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i69, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw [1028 x i8], ptr %i.fs, i64 %i.fp ; 2 uses
  %i.fu = trunc nuw nsw i64 %i.fn to i32
  store i32 %i.fu, ptr %i.ft, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  %i.fw = load ptr, ptr %i.fk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fv, ptr align 1 %i.fw, i64 %i.fn, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fn
  store i8 0, ptr %i.fx, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i69

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i69: ; preds = %bb.an, %bb.am
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.fp
  store i32 1, ptr %i.ga, align 8
  %i.gb = load ptr, ptr %i.fy, align 8
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %i.fp ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8            ; 3 uses
  %.not24.i70 = icmp eq ptr %i.ge, null
  br i1 %.not24.i70, label %.thread28.i72, label %bb.ao

bb.ao:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i69
  %i.gf = load i32, ptr %i.gc, align 8
  %.not25.i71 = icmp eq i32 %i.gf, 7
  %i.gg = load i32, ptr %i.fh, align 4            ; 2 uses
  br i1 %.not25.i71, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.gg, ptr %i.ge, align 1
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.aq:                                            ; preds = %bb.ao
  store i32 %i.gg, ptr %i.ge, align 4
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread28.i72:                                    ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i69
  %i.gh = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #19
          to label %.noexc74 unwind label %bb.ar  ; 2 uses

.noexc74:                                         ; preds = %.thread28.i72
  %7 = load i32, ptr %i.fh, align 4
  store i32 %7, ptr %i.gh, align 4
  store ptr %i.gh, ptr %i.gd, align 8
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.ar:                                            ; preds = %.thread28.i72
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.as:                                            ; preds = %bb.j
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = load ptr, ptr %i.gj, align 8            ; 2 uses
  %.not35 = icmp eq ptr %i.gl, %i.gm
  br i1 %.not35, label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.gn = load ptr, ptr %i.gm, align 8            ; 4 uses
  store ptr %i.ax, ptr %5, align 8
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.34) #21
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.gp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gn) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.gp, ptr %i.a, align 8
  %i.gq = icmp ugt i64 %i.gp, 15
  br i1 %i.gq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.av
  %i.gr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc76 unwind label %.loopexit110 ; 2 uses

.noexc76:                                         ; preds = %.noexc.i
  store ptr %i.gr, ptr %5, align 8
  %i.gs = load i64, ptr %i.a, align 8
  store i64 %i.gs, ptr %i.ax, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc76, %bb.av
  %i.gt = phi ptr [ %i.gr, %.noexc76 ], [ %i.ax, %bb.av ] ; 2 uses
  switch i64 %i.gp, label %bb.ax [
    i64 1, label %bb.aw
    i64 0, label %bb.ay
  ]

bb.aw:                                            ; preds = %._crit_edge.i.i
  %i.gu = load i8, ptr %i.gn, align 1
  store i8 %i.gu, ptr %i.gt, align 1
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr nonnull align 1 %i.gn, i64 %i.gp, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.i.i
  %i.gv = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.gv, ptr %i.ay, align 8
  %i.gw = load ptr, ptr %5, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gv
  store i8 0, ptr %i.gx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.gy = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.gz = trunc i64 %i.gy to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.az, i8 0, i64 1024, i1 false)
  %i.ha = and i64 %i.gy, 4294966272
  %.not.i77 = icmp eq i64 %i.ha, 0
  %spec.select.i = select i1 %.not.i77, i32 %i.gz, i32 1023 ; 4 uses
  store i32 %spec.select.i, ptr %4, align 4
  %i.hb = load ptr, ptr %5, align 8               ; 3 uses
  %i.hc = zext i32 %spec.select.i to i64          ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.az, ptr align 1 %i.hb, i64 %i.hc, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.hc
  store i8 0, ptr %i.hd, align 1
  %i.he = icmp eq ptr %i.hb, %i.ax
  br i1 %i.he, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.ay
  %i.hf = icmp ult i64 %i.gy, 16
  call void @llvm.assume(i1 %i.hf)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ay
  %i.hg = load i64, ptr %i.ax, align 8
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.hi = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.hj = trunc i64 %.0113 to i32
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.hl = load i32, ptr %i.hi, align 8
  %.not.i78 = icmp ugt i32 %i.hl, %i.hj
  br i1 %.not.i78, label %bb.az, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.hn = load i64, ptr %i.hm, align 8            ; 5 uses
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hp = and i64 %.0113, 4294967295              ; 3 uses
  %i.hq = icmp ugt i64 %i.hn, 1023
  br i1 %i.hq, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i80, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw [1028 x i8], ptr %i.hs, i64 %i.hp ; 2 uses
  %i.hu = trunc nuw nsw i64 %i.hn to i32
  store i32 %i.hu, ptr %i.ht, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 4 ; 2 uses
  %i.hw = load ptr, ptr %i.hk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hv, ptr align 1 %i.hw, i64 %i.hn, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hn
  store i8 0, ptr %i.hx, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i80

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i80: ; preds = %bb.bb, %bb.ba
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.hz, i64 %i.hp
  store i32 5, ptr %i.ia, align 8
  %i.ib = load ptr, ptr %i.hy, align 8
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.hp ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8            ; 4 uses
  %.not24.i81 = icmp eq ptr %i.ie, null
  br i1 %.not24.i81, label %.thread29.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i80
  %i.if = load i32, ptr %i.ic, align 8
  %.not25.i82 = icmp eq i32 %i.if, 7
  br i1 %.not25.i82, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1028) %i.ie, ptr noundef nonnull align 4 dereferenceable(1028) %4, i64 1028, i1 false)
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

bb.be:                                            ; preds = %bb.bc
  store i32 %spec.select.i, ptr %i.ie, align 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ig, ptr nonnull align 4 %i.az, i64 %i.hc, i1 false)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.hc
  store i8 0, ptr %i.ih, align 1
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.thread29.i:                                      ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i80
  %i.ii = invoke noalias noundef nonnull dereferenceable(1028) ptr @_Znwm(i64 noundef 1028) #19
          to label %.noexc84 unwind label %bb.bg  ; 3 uses

.noexc84:                                         ; preds = %.thread29.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ij, i8 0, i64 1024, i1 false)
  store i32 %spec.select.i, ptr %i.ii, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ij, ptr nonnull align 4 %i.az, i64 %i.hc, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.hc
  store i8 0, ptr %i.ik, align 1
  store ptr %i.ii, ptr %i.id, align 8
  br label %_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN10aiMetadata3SetI8aiStringEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.noexc84, %bb.be, %bb.bd, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZN10aiMetadata3SetIbEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

.loopexit110:                                     ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %bb.au
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp, %.loopexit110
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit110 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bh

bb.bg:                                            ; preds = %.thread29.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.il, %bb.bg ], [ %lpad.phi, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
end_hunk_1

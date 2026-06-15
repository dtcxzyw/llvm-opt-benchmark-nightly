inline.NumInlined: 5894
inline.NumDeleted: 2006
begin_hunk_0_@_ZN4glTF5AssetC2EPN6Assimp8IOSystemE:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  invoke void @_ZN4glTF8LazyDictINS_5SceneEEC2ERNS_5AssetEPKcS6_(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull @.str.34, ptr noundef null)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 2 uses
  invoke void @_ZN4glTF8LazyDictINS_4SkinEEC2ERNS_5AssetEPKcS6_(ptr noundef nonnull align 8 dereferenceable(120) %i.al, ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull @.str.35, ptr noundef null)
          to label %bb.m unwind label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 2 uses
  invoke void @_ZN4glTF8LazyDictINS_7TextureEEC2ERNS_5AssetEPKcS6_(ptr noundef nonnull align 8 dereferenceable(120) %i.am, ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull @.str.36, ptr noundef null)
          to label %bb.n unwind label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1896
  invoke void @_ZN4glTF8LazyDictINS_5LightEEC2ERNS_5AssetEPKcS6_(ptr noundef nonnull align 8 dereferenceable(120) %i.an, ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38)
          to label %bb.o unwind label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2016
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2024
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i16 0, ptr %i.aq, align 8
  ret void

bb.p:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.q:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.r:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.s:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.t:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.u:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.v:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.w:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.y:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.z:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.aa:                                            ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4glTF8LazyDictINS_7TextureEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.am) #28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.be, %bb.ac ], [ %i.bd, %bb.ab ]
  tail call void @_ZN4glTF8LazyDictINS_4SkinEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.al) #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ad ], [ %i.bc, %bb.aa ]
  tail call void @_ZN4glTF8LazyDictINS_5SceneEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ak) #28
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ae ], [ %i.bb, %bb.z ]
  tail call void @_ZN4glTF8LazyDictINS_7SamplerEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.aj) #28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.y
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.af ], [ %i.ba, %bb.y ]
  tail call void @_ZN4glTF8LazyDictINS_4NodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ai) #28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.x
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ag ], [ %i.az, %bb.x ]
  tail call void @_ZN4glTF8LazyDictINS_4MeshEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ah) #28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.w
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ah ], [ %i.ay, %bb.w ]
  tail call void @_ZN4glTF8LazyDictINS_8MaterialEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ag) #28
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.v
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.ai ], [ %i.ax, %bb.v ]
  tail call void @_ZN4glTF8LazyDictINS_5ImageEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.af) #28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.u
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.aj ], [ %i.aw, %bb.u ]
  tail call void @_ZN4glTF8LazyDictINS_6CameraEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ae) #28
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.t
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ak ], [ %i.av, %bb.t ]
  tail call void @_ZN4glTF8LazyDictINS_10BufferViewEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ad) #28
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.s
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.al ], [ %i.au, %bb.s ]
  tail call void @_ZN4glTF8LazyDictINS_6BufferEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ac) #28
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.r
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.am ], [ %i.at, %bb.r ]
  tail call void @_ZN4glTF8LazyDictINS_9AnimationEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.ab) #28
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.an ], [ %i.as, %bb.q ]
  tail call void @_ZN4glTF8LazyDictINS_8AccessorEED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.aa) #28
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.p
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ao ], [ %i.ar, %bb.p ]
  tail call void @_ZN4glTF13AssetMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.k) #28
  tail call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #28
  %i.bf = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4glTF12LazyDictBaseESaIS2_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #29
  br label %_ZNSt6vectorIPN4glTF12LazyDictBaseESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4glTF12LazyDictBaseESaIS2_EED2Ev.exit: ; preds = %bb.ap, %bb.aq
  %i.bl = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.b
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPN4glTF12LazyDictBaseESaIS2_EED2Ev.exit
  %i.bn = load i64, ptr %i.b, align 8
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4glTF12LazyDictBaseESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF5Asset4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"struct.rapidjson::GenericInsituStringStream", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %7 = alloca %"class.std::shared_ptr.224", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.rapidjson::GenericDocument", align 8 ; 22 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 0, ptr %i.f, align 8
  %i.g = load ptr, ptr %i.e, align 8
  store i8 0, ptr %i.g, align 1
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(18) @.str.129, i64 noundef 17) #30
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.j, ptr %8, align 8
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.k = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 47, i64 noundef -1) #28, !noalias !8
  %i.l = trunc i64 %i.k to i32
  %i.m = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 92, i64 noundef -1) #28, !noalias !8
  %i.n = trunc i64 %i.m to i32
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %i.n) ; 2 uses
  %i.o = icmp eq i32 %.sroa.speculated.i, -1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.p, ptr %6, align 8, !alias.scope !8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.q, align 8, !alias.scope !8
  store i8 0, ptr %i.p, align 8, !alias.scope !8
  br label %_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw nsw i32 %.sroa.speculated.i, 1
  %i.s = sext i32 %i.r to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !14
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.v, ptr %6, align 8, !alias.scope !14
  %i.w = load ptr, ptr %1, align 8, !noalias !14  ; 2 uses
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %i.u) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !14
  store i64 %spec.select.i.i.i.i, ptr %i.b, align 8, !noalias !14
  %i.x = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.x, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %bb.d
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %6, align 8, !alias.scope !14
  %i.z = load i64, ptr %i.b, align 8, !noalias !14
  store i64 %i.z, ptr %i.v, align 8, !alias.scope !14
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i.i.i, %bb.d
  %i.aa = phi ptr [ %i.y, %.noexc10.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %i.w, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.w, i64 %spec.select.i.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.ac = load i64, ptr %i.b, align 8, !noalias !14 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !alias.scope !14
  %i.ae = load ptr, ptr %6, align 8, !alias.scope !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !14
  br label %_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i
  %i.ag = load ptr, ptr %i.e, align 8             ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %i.aj = load ptr, ptr %6, align 8               ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.al = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.al, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br i1 %i.al, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %.not21.i = icmp eq ptr %6, %i.e
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %10, !prof !6

10:                                               ; preds = %bb.g
  switch i64 %i.an, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %10
  %i.ap = load i8, ptr %i.aj, align 1
  store i8 %i.ap, ptr %i.ag, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %10
  %i.aq = load i64, ptr %i.am, align 8            ; 2 uses
  store i64 %i.aq, ptr %i.f, align 8
  %i.ar = load ptr, ptr %i.e, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store i8 0, ptr %i.as, align 1
  %.pre.i = load ptr, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.aj, ptr %i.e, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = load <2 x i64>, ptr %i.at, align 8
  store <2 x i64> %i.au, ptr %i.f, align 8
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.av = load i64, ptr %i.ah, align 8
  store ptr %i.aj, ptr %i.e, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ax = load <2 x i64>, ptr %i.aw, align 8
  store <2 x i64> %i.ax, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ag, ptr %6, align 8
  store i64 %i.av, ptr %i.ak, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ak, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %11 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ag, %bb.j ], [ %i.ak, %bb.k ], [ %i.aj, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ay, align 8
  store i8 0, ptr %11, align 1
  %i.az = load ptr, ptr %6, align 8               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bc = load i64, ptr %i.ba, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.pr = load ptr, ptr %1, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.be, ptr %8, align 8
  %i.bf = icmp eq ptr %.pr, null
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.177) #31
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bg = phi ptr [ %i.j, %.thread ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 6 uses
  %i.bh = phi ptr [ %i.h, %.thread ], [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ] ; 3 uses
  %i.bi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.bi, ptr %i.a, align 8
  %i.bj = icmp ugt i64 %i.bi, 15
  br i1 %i.bj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.m
  %i.bk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc47 unwind label %bb.y   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i
  store ptr %i.bk, ptr %8, align 8
  %i.bl = load i64, ptr %i.a, align 8
  store i64 %i.bl, ptr %i.bg, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc47, %bb.m
  %i.bm = phi ptr [ %i.bk, %.noexc47 ], [ %i.bg, %bb.m ] ; 2 uses
  switch i64 %i.bi, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %._crit_edge.i.i.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bn = load i8, ptr %i.bh, align 1
  store i8 %i.bn, ptr %i.bm, align 1
  br label %._crit_edge.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr nonnull align 1 %i.bh, i64 %i.bi, i1 false)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  %i.bo = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bo, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %8, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bs = load ptr, ptr %0, align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.bt, ptr %5, align 8
  store i16 25202, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.bv, align 2
  %i.bw = load ptr, ptr %8, align 8
  %i.bx = load ptr, ptr %i.bs, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef %i.bw, ptr noundef nonnull %i.bt)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i unwind label %bb.p, !inline_history !15 ; 15 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i: ; preds = %._crit_edge.i.i.i
  %i.cb = load ptr, ptr %5, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bt
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i
  %i.cd = load i64, ptr %i.bt, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %5, align 8               ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bt
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %bb.p
  %i.ci = load i64, ptr %i.bt, align 8
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  store ptr %i.ca, ptr %7, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cl = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.w unwind label %bb.q       ; 5 uses

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  %i.co = call ptr @__cxa_begin_catch(ptr %i.cn) #28 ; 0 uses
  %i.cp = icmp eq ptr %i.ca, null
  br i1 %i.cp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = load ptr, ptr %i.ca, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) #28, !inline_history !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  invoke void @__cxa_rethrow() #31
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #33
  unreachable

bb.v:                                             ; preds = %bb.s
  unreachable

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 1, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 1, ptr %i.cx, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cl, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.ca, ptr %i.cy, align 8
  store ptr %i.cl, ptr %i.ck, align 8
  %i.cz = load ptr, ptr %8, align 8               ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.bg
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.w
  %i.db = load i64, ptr %i.bg, align 8
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.not91 = icmp eq ptr %i.ca, null
  br i1 %.not91, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.dd = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull @.str.131)
          to label %.invoke unwind label %bb.z

bb.y:                                             ; preds = %.noexc.i, %bb.l
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

.body:                                            ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ], [ %i.ct, %bb.t ] ; 2 uses
  %i.df = load ptr, ptr %8, align 8               ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bg
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %.body
  %i.dh = load i64, ptr %i.bg, align 8
  %i.di = add i64 %i.dh, 1
end_hunk_0
begin_hunk_1_@_ZN4glTF11AssetWriter12WriteObjectsINS_5LightEEEvRNS_8LazyDictIT_EE:bb.a
  %i.kk = load i32, ptr %.010.i.i.i.i101, align 8
  %i.kl = select i1 %.not.i.i13.i.i.i.i.i102, i32 %i.kk, i32 %i.kj
  %.not.i.i.i.i.i103 = icmp eq i32 %i.jy, %i.kl
  br i1 %.not.i.i.i.i.i103, label %bb.w, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

bb.w:                                             ; preds = %bb.v
  %i.km = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = and i64 %i.ko, 281474976710655
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = select i1 %.not.i.i13.i.i.i.i.i102, ptr %i.kq, ptr %.010.i.i.i.i101 ; 2 uses
  %i.ks = icmp eq ptr %i.kb, %i.kr
  br i1 %i.ks, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110: ; preds = %bb.w
  %bcmp.i.i.i.i.i111 = call i32 @bcmp(ptr %i.kb, ptr %i.kr, i64 %i.kc)
  %i.kt = icmp eq i32 %bcmp.i.i.i.i.i111, 0
  br i1 %i.kt, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.v
  %i.ku = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i101, i64 32 ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.ku, %i.js
  br i1 %.not.i.i.i.i105, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, label %bb.v, !llvm.loop !20

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110, %bb.w, %bb.u
  %.0.lcssa.i.i.i.i107 = phi ptr [ %i.jq, %bb.u ], [ %.010.i.i.i.i101, %bb.w ], [ %.010.i.i.i.i101, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i110 ], [ %i.js, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i104 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.kv = getelementptr inbounds nuw [32 x i8], ptr %i.jq, i64 %i.jr
  %.not.i108 = icmp eq ptr %.0.lcssa.i.i.i.i107, %i.kv
  br i1 %.not.i108, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, label %bb.x

bb.x:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 16
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i107, i64 30
  %i.ky = load i16, ptr %i.kx, align 2
  %i.kz = icmp eq i16 %i.ky, 3
  %spec.select.i109 = select i1 %i.kz, ptr %i.kw, ptr null
  br label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88

_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106, %bb.r
  %.031 = phi ptr [ %i.hr, %bb.r ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i106 ], [ %spec.select.i109, %bb.x ] ; 6 uses
  %i.la = load ptr, ptr %i.c, align 8
  %i.lb = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not154 = icmp eq ptr %i.la, %i.lb
  br i1 %.not154, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ld = or i64 ptrtoint (ptr @.str.47 to i64), 289637751035265024
  %i.le = inttoptr i64 %i.ld to ptr
  %i.lf = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.ad
  %i.lh = phi ptr [ %i.lb, %.lr.ph ], [ %i.ob, %bb.ad ]
  %.0153 = phi i64 [ 0, %.lr.ph ], [ %i.nz, %bb.ad ] ; 4 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %.0153
  %i.lj = load ptr, ptr %i.li, align 8            ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = call noundef zeroext i1 %i.ll(ptr noundef nonnull align 8 dereferenceable(72) %i.lj)
  br i1 %i.lm, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ln = load ptr, ptr %i.a, align 8
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.0153
  %i.lp = load ptr, ptr %i.lo, align 8            ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.lr = load i64, ptr %i.lq, align 8
  %i.ls = icmp eq i64 %i.lr, 0
  br i1 %i.ls, label %bb.aa, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.z
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.lu = load ptr, ptr %i.lt, align 8            ; 2 uses
  %i.lv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lu) #30, !noalias !583
  %i.lw = trunc i64 %i.lv to i32
  %i.lx = load ptr, ptr %i.lc, align 8, !nonnull !18, !align !154
  %i.ly = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, ptr noundef null, i64 noundef 0, i64 noundef 512)
  %i.lz = ptrtoint ptr %i.ly to i64               ; 2 uses
  %i.ma = or i64 %i.lz, 844424930131968
  %i.mb = inttoptr i64 %i.ma to ptr
  %i.mc = ptrtoint ptr %i.lu to i64
  %i.md = or i64 %i.mc, 289637751035265024
  %i.me = inttoptr i64 %i.md to ptr
  %i.mf = and i64 %i.lz, 281474976710655
  %i.mg = inttoptr i64 %i.mf to ptr               ; 6 uses
  store i32 4, ptr %i.mg, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store ptr %i.le, ptr %.sroa.65.0..sroa_idx.i.i, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store i32 %i.lw, ptr %i.mh, align 8
  %.sroa.6.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.mg, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx.i114, align 4
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  store ptr %i.me, ptr %.sroa.66.0..sroa_idx.i, align 8
  %.pre156 = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre156, i64 %.0153
  %.pre157 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.noexc.i.i
  %i.mi = phi ptr [ %i.lp, %bb.z ], [ %.pre157, %.noexc.i.i ] ; 2 uses
  %.sroa.12.0 = phi ptr [ inttoptr (i64 844424930131968 to ptr), %bb.z ], [ %i.mb, %.noexc.i.i ]
  %i.mj = phi <2 x i32> [ zeroinitializer, %bb.z ], [ <i32 1, i32 16>, %.noexc.i.i ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !noalias !586 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.mn = load i64, ptr %i.mm, align 8, !noalias !586
  %i.mo = trunc i64 %i.mn to i32
  %.not.i.i = icmp eq ptr %i.ml, null
  %i.mp = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.ml, !prof !6
  %i.mq = load ptr, ptr %i.lc, align 8, !nonnull !18, !align !154
  %i.mr = load i32, ptr %.031, align 8            ; 3 uses
  %i.ms = load i32, ptr %i.lf, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.mr, %i.ms
  br i1 %.not.i.i.i116, label %._crit_edge158, label %bb.ab

._crit_edge158:                                   ; preds = %bb.aa
  %.pre159 = load ptr, ptr %i.lg, align 8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.not14.i.i.i117 = icmp eq i32 %i.ms, 0
  %i.mt = add i32 %i.ms, 1
  %i.mu = lshr i32 %i.mt, 1
  %i.mv = add i32 %i.mu, %i.ms
  %i.mw = select i1 %.not14.i.i.i117, i32 16, i32 %i.mv ; 3 uses
  %i.mx = icmp ugt i32 %i.mw, %i.ms
  %.pre160 = load ptr, ptr %i.lg, align 8         ; 2 uses
  br i1 %i.mx, label %.noexc.i120, label %bb.ac

.noexc.i120:                                      ; preds = %bb.ab
  %i.my = ptrtoint ptr %.pre160 to i64
  %i.mz = and i64 %i.my, 281474976710655
  %i.na = inttoptr i64 %i.mz to ptr
  %i.nb = zext i32 %i.ms to i64
  %i.nc = zext i32 %i.mw to i64
  %i.nd = shl nuw nsw i64 %i.nb, 5
  %i.ne = shl nuw nsw i64 %i.nc, 5
  %i.nf = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.mq, ptr noundef %i.na, i64 noundef %i.nd, i64 noundef %i.ne)
  %i.ng = load ptr, ptr %i.lg, align 8
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = and i64 %i.nh, -281474976710656
  %i.nj = ptrtoint ptr %i.nf to i64
  %i.nk = or i64 %i.ni, %i.nj
  %i.nl = inttoptr i64 %i.nk to ptr               ; 2 uses
  store ptr %i.nl, ptr %i.lg, align 8
  store i32 %i.mw, ptr %i.lf, align 4
  %.pre.i.i.i121 = load i32, ptr %.031, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge158, %.noexc.i120, %bb.ab
  %i.nm = phi ptr [ %i.nl, %.noexc.i120 ], [ %.pre160, %bb.ab ], [ %.pre159, %._crit_edge158 ]
  %i.nn = phi i32 [ %.pre.i.i.i121, %.noexc.i120 ], [ %i.mr, %bb.ab ], [ %i.mr, %._crit_edge158 ]
  %i.no = ptrtoint ptr %i.mp to i64
  %i.np = or i64 %i.no, 289637751035265024
  %i.nq = inttoptr i64 %i.np to ptr
  %i.nr = ptrtoint ptr %i.nm to i64
  %i.ns = and i64 %i.nr, 281474976710655
  %i.nt = inttoptr i64 %i.ns to ptr
  %i.nu = zext i32 %i.nn to i64
  %i.nv = getelementptr inbounds nuw [32 x i8], ptr %i.nt, i64 %i.nu ; 5 uses
  store i32 %i.mo, ptr %i.nv, align 8
  %.sroa.6.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i118, align 4
  %.sroa.65.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store ptr %i.nq, ptr %.sroa.65.0..sroa_idx.i119, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store <2 x i32> %i.mj, ptr %i.nw, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  store ptr %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  %i.nx = load i32, ptr %.031, align 8
  %i.ny = add i32 %i.nx, 1
  store i32 %i.ny, ptr %.031, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.ac
  %i.nz = add nuw i64 %.0153, 1                   ; 2 uses
  %i.oa = load ptr, ptr %i.c, align 8
  %i.ob = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = sub i64 %i.oc, %i.od
  %i.of = ashr exact i64 %i.oe, 3
  %i.og = icmp ult i64 %i.nz, %i.of
  br i1 %i.og, label %bb.y, label %.loopexit, !llvm.loop !589

.loopexit:                                        ; preds = %bb.ad, %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF5Asset16ReadBinaryHeaderERN6Assimp8IOStreamE(ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.glTF::GLB_Header", align 1 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2, i64 noundef 20, i64 noundef 1)
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.145)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 1
  %i.h = icmp ne i32 %i.g, 1179937895
  %i.i = zext i1 %i.h to i32
  %.not4 = icmp eq i32 %i.i, 0
  br i1 %.not4, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.146)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 1
  call void @_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  %i.r = load ptr, ptr %3, align 8                ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s                   ; 2 uses
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.i
  br i1 %i.t, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.i
  br i1 %i.t, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %.not21.i = icmp eq ptr %3, %i.n
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %4, !prof !6

4:                                                ; preds = %bb.j
  switch i64 %i.v, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %4
  %i.x = load i8, ptr %i.r, align 1
  store i8 %i.x, ptr %i.o, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.r, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %4
  %i.y = load i64, ptr %i.u, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.n, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.r, ptr %i.n, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load <2 x i64>, ptr %i.ad, align 8
  store <2 x i64> %i.ae, ptr %i.ac, align 8
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.af = load i64, ptr %i.p, align 8
  store ptr %i.r, ptr %i.n, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ai = load <2 x i64>, ptr %i.ag, align 8
  store <2 x i64> %i.ai, ptr %i.ah, align 8
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.o, ptr %3, align 8
  store i64 %i.af, ptr %i.s, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.s, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %5 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.o, %bb.m ], [ %i.s, %bb.n ], [ %i.r, %bb.j ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %5, align 1
  %i.ak = load ptr, ptr %3, align 8               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ap = load i32, ptr %i.l, align 1
  %.not5 = icmp eq i32 %i.ap, 1
  br i1 %.not5, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull @.str.147)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i32, ptr %i.as, align 1
  %.not6 = icmp eq i32 %i.at, 0
  br i1 %.not6, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull @.str.148)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = add nuw nsw i64 %i.ay, 23
  %i.bc = and i64 %i.bb, 8589934588               ; 2 uses
  store i64 %i.bc, ptr %i.ba, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = zext i32 %i.be to i64
  %i.bg = sub nsw i64 %i.bf, %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bg, ptr %i.bh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.w:                                             ; preds = %bb.u, %bb.q, %bb.h, %bb.d
  %.sink = phi ptr [ %i.au, %bb.u ], [ %i.aq, %bb.q ], [ %i.j, %bb.h ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.av, %bb.u ], [ %i.ar, %bb.q ], [ %i.k, %bb.h ], [ %i.f, %bb.d ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN9rapidjson16GetParseError_EnENS_14ParseErrorCodeE(i32 noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ult i32 %0, 18
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN9rapidjson16GetParseError_EnENS_14ParseErrorCodeE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.168, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA32_KcRA32_cRA3_S1_PS1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA32_cRA3_KcPS3_ERA32_S3_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %5, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #28
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF13AssetMetadata4ReadERN9rapidjson15GenericDocumentINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEES6_EE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %7 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %8 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %9 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = alloca [4 x i8], align 1                 ; 5 uses
  %i.b = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.41, ptr noundef null) ; 9 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit117, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2
  %i.e = icmp eq i16 %i.d, 3
  br i1 %i.e, label %bb.c, label %_ZN10glTFCommonL15MemberOrDefaultIbEET_RN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcS1_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 14
  store i16 1029, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -281474976710656
  %i.k = or i64 %i.j, ptrtoint (ptr @.str.170 to i64) ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  store ptr %i.l, ptr %i.g, align 8
  store i32 9, ptr %9, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = and i64 %i.o, 281474976710655
  %i.q = inttoptr i64 %i.p to ptr                 ; 4 uses
  %i.r = load i32, ptr %i.b, align 8              ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.s, 5
  %i.t = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.r, 0
  %i.u = lshr i64 %i.o, 48
  %i.v = trunc nuw i64 %i.u to i16
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.w = lshr i64 ptrtoint (ptr @.str.170 to i64), 40
  %i.x = trunc i64 %i.w to i8
  %i.y = and i64 %i.k, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0       ; 2 uses
  %i.z = sext i8 %i.x to i32
  %i.aa = sub nsw i32 13, %i.z
  %i.ab = select i1 %.not.i.i.i.i.i.i.i, i32 9, i32 %i.aa ; 2 uses
  %i.ac = and i64 ptrtoint (ptr @.str.170 to i64), 281474976710655
  %i.ad = inttoptr i64 %i.ac to ptr
end_hunk_1
begin_hunk_2_@_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #28
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #28
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.y
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EE5resetIhSt14default_deleteIA_hEEENSt9enable_ifIXsr21__sp_is_constructibleIhT_EE5valueEvE4typeEPS8_T0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EEC2IhSt14default_deleteIA_hEvEEPT_T0_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #28 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %1) #29
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #33
  unreachable

bb.g:                                             ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  unreachable

_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EEC2IhSt14default_deleteIA_hEvEEPT_T0_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.j, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.k, align 8
  store ptr %1, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  store ptr %i.a, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EEC2IhSt14default_deleteIA_hEvEEPT_T0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #28, !inline_history !5
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #28, !inline_history !5
  br label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.y = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.k ], [ %i.aa, %bb.l ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.m, label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !6

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #28
  br label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EEC2IhSt14default_deleteIA_hEvEEPT_T0_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #29
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIA_hE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(24) @_ZTSSt14default_deleteIA_hE) #28
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN10glTFCommon10ReadHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4ReadERN9rapidjson12GenericValueINS8_4UTF8IcEENS8_19MemoryPoolAllocatorINS8_12CrtAllocatorEEEEERS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.c = load i16, ptr %i.b, align 2              ; 2 uses
  %i.d = and i16 %i.c, 1024
  %i.e = icmp ne i16 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %.critedge18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.f = and i16 %i.c, 4096
  %.not.i.i = icmp eq i16 %i.f, 0                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 281474976710655
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = select i1 %.not.i.i, ptr %i.k, ptr %0    ; 3 uses
  %i.m = lshr i64 %i.i, 40
  %i.n = trunc i64 %i.m to i8
  %i.o = sext i8 %i.n to i32
  %i.p = sub nsw i32 13, %i.o
  %i.q = load i32, ptr %0, align 8
  %i.r = select i1 %.not.i.i, i32 %i.q, i32 %i.p  ; 4 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.t, ptr %2, align 8
  %i.u = icmp eq ptr %i.l, null
  %i.v = icmp ne i32 %i.r, 0
  %or.cond.i = and i1 %i.u, %i.v
  br i1 %or.cond.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.177) #31
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.s, ptr %i.a, align 8
  %i.w = icmp ugt i32 %i.r, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %2, align 8
  %i.y = load i64, ptr %i.a, align 8
  store i64 %i.y, ptr %i.t, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.z = phi ptr [ %i.x, %.noexc.i ], [ %i.t, %bb.c ] ; 2 uses
  switch i32 %i.r, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.l, align 1
  store i8 %i.aa, ptr %i.z, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.l, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %2, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.af = load ptr, ptr %1, align 8               ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  %i.ai = load ptr, ptr %2, align 8               ; 6 uses
  %i.aj = icmp eq ptr %i.ai, %i.t                 ; 2 uses
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.aj, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.aj, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ak = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %.not21.i = icmp eq ptr %2, %1
  br i1 %.not21.i, label %.critedge, label %3, !prof !6

3:                                                ; preds = %bb.g
  switch i64 %i.ak, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %3
  %i.am = load i8, ptr %i.ai, align 1
  store i8 %i.am, ptr %i.af, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %3
  %i.an = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %1, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %.critedge

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ai, ptr %1, align 8
  %i.as = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.as, ptr %i.ar, align 8
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.at = load i64, ptr %i.ag, align 8
  store ptr %i.ai, ptr %1, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load <2 x i64>, ptr %i.ac, align 8
  store <2 x i64> %i.av, ptr %i.au, align 8
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.af, ptr %2, align 8
  store i64 %i.at, ptr %i.t, align 8
  br label %.critedge

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.t, ptr %2, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g
  %4 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.af, %bb.j ], [ %i.t, %bb.k ], [ %i.ai, %bb.g ]
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %4, align 1
  %i.aw = load ptr, ptr %2, align 8               ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.t
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.ay = load i64, ptr %i.t, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.critedge18

.critedge18:                                      ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %i.e
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 56) #29
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !591

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_bESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN10glTFCommon18FindArrayInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = icmp eq i16 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !638
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -281474976710656
  %i.k = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.l = or i64 %i.j, %i.k                        ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.g, align 8
  store i32 %i.e, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = load i32, ptr %0, align 8                ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.t, 5
  %i.u = getelementptr i8, ptr %i.r, i64 %.idx.i.i.i ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.v = lshr i64 %i.k, 40
  %i.w = trunc i64 %i.v to i8
  %i.x = and i64 %i.l, 1152921504606846976
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, 0         ; 2 uses
  %i.y = sext i8 %i.w to i32
  %i.z = sub nsw i32 13, %i.y
  %i.aa = select i1 %.not.i.i.i.i.i.i, i32 %i.e, i32 %i.z ; 2 uses
  %i.ab = and i64 %i.k, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = select i1 %.not.i.i.i.i.i.i, ptr %i.ac, ptr %4 ; 2 uses
  %i.ae = zext i32 %i.aa to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.aw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 14
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = and i16 %i.ag, 4096
  %.not.i.i13.i.i.i.i = icmp eq i16 %i.ah, 0      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = sext i8 %i.aj to i32
  %i.al = sub nsw i32 13, %i.ak
  %i.am = load i32, ptr %.010.i.i.i, align 8
  %i.an = select i1 %.not.i.i13.i.i.i.i, i32 %i.am, i32 %i.al
  %.not.i.i.i.i = icmp eq i32 %i.aa, %i.an
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, 281474976710655
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = select i1 %.not.i.i13.i.i.i.i, ptr %i.as, ptr %.010.i.i.i ; 2 uses
  %i.au = icmp eq ptr %i.ad, %i.at
  br i1 %i.au, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.ad, ptr %i.at, i64 %i.ae)
  %i.av = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.av, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %i.u
  br i1 %.not.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %bb.c, !llvm.loop !20

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %bb.d, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi ptr [ %i.r, %bb.b ], [ %i.u, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.010.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i ], [ %.010.i.i.i, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.t
  %i.ay = icmp eq ptr %.0.lcssa.i.i.i, %i.ax
  br i1 %i.ay, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 4
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN10glTFCommon24throwUnexpectedTypeErrorILi6EEEvRAT__KcPS1_S4_S4_(ptr noundef nonnull align 1 dereferenceable(6) @.str.179, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %bb.g

bb.g:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, %bb.f, %bb.e, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit ], [ %i.az, %bb.f ], [ %i.az, %bb.e ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN10glTFCommon24throwUnexpectedTypeErrorILi6EEEvRAT__KcPS1_S4_S4_(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.177) #31
  unreachable

end_hunk_2

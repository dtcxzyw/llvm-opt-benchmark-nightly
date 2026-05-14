inline.NumInlined: 7264
inline.NumDeleted: 2661
begin_hunk_0_@_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #32
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #31
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_Z12FindMeshNodeRN10glTFCommon3RefIN5glTF24NodeEEES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 4
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = load ptr, ptr %2, align 8
  br label %bb.b

.preheader:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not34 = icmp eq ptr %i.u, %i.v
  br i1 %.not34, label %.loopexit, label %.lr.ph31

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread
  %i.w = phi i64 [ 0, %.lr.ph ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ]
  %.01829 = phi i32 [ 0, %.lr.ph ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.q) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %bcmp = tail call i32 @bcmp(ptr %i.r, ptr %i.aj, i64 %.sroa.speculated.i)
  %.not.i = icmp eq i32 %bcmp, 0
  %i.ak = icmp eq i64 %i.q, %i.ag
  %or.cond = and i1 %i.ak, %.not.i
  br i1 %or.cond, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit: ; preds = %bb.b
  %.old = icmp eq i64 %i.q, %i.ag
  br i1 %.old, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

.thread:                                          ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %0, i64 12, i1 false)
  br label %.loopexit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit
  %i.al = add i32 %.01829, 1                      ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp ugt i64 %i.o, %i.am
  br i1 %i.an, label %bb.b, label %.preheader, !llvm.loop !160

bb.c:                                             ; preds = %.lr.ph31
  %i.ao = add i32 %.030, 1                        ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = load i32, ptr %i.b, align 8
  %i.as = zext i32 %i.ar to i64
  %i.at = load ptr, ptr %i.aq, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 264
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 272
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 4
  %i.be = icmp ugt i64 %i.bd, %i.ap
  br i1 %i.be, label %.lr.ph31, label %.loopexit, !llvm.loop !161

.lr.ph31:                                         ; preds = %.preheader, %bb.c
  %i.bf = phi ptr [ %i.az, %bb.c ], [ %i.v, %.preheader ]
  %i.bg = phi i64 [ %i.ap, %bb.c ], [ 0, %.preheader ]
  %.030 = phi i32 [ %i.ao, %bb.c ], [ 0, %.preheader ]
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = tail call noundef zeroext i1 @_Z12FindMeshNodeRN10glTFCommon3RefIN5glTF24NodeEEES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12) %i.bh, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 3 uses
  br i1 %i.bi, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %.lr.ph31, %.preheader, %.thread
  %.2 = phi i1 [ true, %.thread ], [ false, %.preheader ], [ %i.bi, %.lr.ph31 ], [ %i.bi, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i32 } @_Z21FindSkeletonRootJointRN10glTFCommon3RefIN5glTF24SkinEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.05.0.copyload = load ptr, ptr %i.i, align 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %.pre = load ptr, ptr %.sroa.05.0.copyload, align 8
  %.phi.trans.insert = zext i32 %.sroa.7.0.copyload to i64
  %.phi.trans.insert13 = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.phi.trans.insert
  %.pre14 = load ptr, ptr %.phi.trans.insert13, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.j = phi ptr [ %.pre14, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 536
  %.sroa.05.0.copyload7 = load ptr, ptr %i.k, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.j, i64 544
  %.sroa.7.0.copyload9 = load i32, ptr %.sroa.7.0..sroa_idx8, align 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.05.0.copyload7, null
  br i1 %.not.i, label %.critedge, label %_ZNK10glTFCommon3RefIN5glTF24NodeEEcvbEv.exit

_ZNK10glTFCommon3RefIN5glTF24NodeEEcvbEv.exit:    ; preds = %bb.b
  %i.l = zext i32 %.sroa.7.0.copyload9 to i64     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload7, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %.sroa.05.0.copyload7, align 8 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = icmp ugt i64 %i.s, %i.l
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK10glTFCommon3RefIN5glTF24NodeEEcvbEv.exit
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.l
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 512
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.critedge, label %bb.b, !llvm.loop !83

.critedge:                                        ; preds = %bb.b, %_ZNK10glTFCommon3RefIN5glTF24NodeEEcvbEv.exit, %bb.c
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.05.0.copyload7, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.0.copyload9, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %4, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %5, i1 noundef zeroext %6) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::vector.267", align 8   ; 15 uses
  %9 = alloca %"class.std::vector.272", align 8   ; 10 uses
  %.sroa.7278 = alloca { float, float, float, float }, align 8 ; 6 uses
  %.sroa.9286 = alloca { float, float, float, float }, align 8 ; 6 uses
  %.sroa.11 = alloca { float, float, float, float }, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.br, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 6 uses
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not404 = icmp eq i32 %i.e, 0                  ; 2 uses
  br i1 %.not404, label %.lr.ph390, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.c

.preheader330:                                    ; preds = %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit
  %.pre428 = load i32, ptr %i.a, align 8
  %i.m = icmp eq i32 %.pre428, 0
  br i1 %i.m, label %._crit_edge391, label %.lr.ph390

.lr.ph390:                                        ; preds = %bb.b, %.preheader330
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit
  %.0369 = phi i64 [ 0, %.lr.ph ], [ %i.al, %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.0369
  store i32 0, ptr %i.s, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.t = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.u = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.d, label %.noexc179

.noexc179:                                        ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %9, align 8                ; 2 uses
  %i.x = load ptr, ptr %i.k, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp slt i64 %i.aa, 9
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp ne i64 %i.aa, 8
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds i8, ptr null, i64 %i.aa
  store ptr %i.ad, ptr %i.v, align 8
  %i.ae = load ptr, ptr %i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.af, ptr %i.i, align 8
  br label %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %._ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE9push_backERKS2_.exit_crit_edge unwind label %bb.f

._ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE9push_backERKS2_.exit_crit_edge: ; preds = %bb.d
  %.pre427 = load ptr, ptr %9, align 8
  br label %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE9push_backERKS2_.exit: ; preds = %._ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE9push_backERKS2_.exit_crit_edge, %.noexc179
  %i.ag = phi ptr [ %.pre427, %._ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE9push_backERKS2_.exit_crit_edge ], [ %i.w, %.noexc179 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE9push_backERKS2_.exit
  %i.ah = load ptr, ptr %i.l, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #32
  br label %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit

_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EE9push_backERKS2_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.al = add nuw nsw i64 %.0369, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.f
  br i1 %exitcond.not, label %.preheader330, label %bb.c, !llvm.loop !162

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit343 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i181 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit182, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.l, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %.pre to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ap) #32
  br label %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit182

_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit182: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body

._crit_edge391.loopexit:                          ; preds = %._crit_edge
  %i.aq = add nsw i32 %.1.lcssa, -1
  %i.ar = sdiv i32 %i.aq, 4
  %i.as = add nuw nsw i32 %i.ar, 1
  %i.at = zext nneg i32 %i.as to i64
  br label %._crit_edge391

._crit_edge391:                                   ; preds = %._crit_edge391.loopexit, %.preheader330
  %.0314.lcssa = phi i64 [ 1, %.preheader330 ], [ %i.at, %._crit_edge391.loopexit ]
  %i.au = select i1 %6, i64 %.0314.lcssa, i64 1   ; 3 uses
  %i.av = mul nuw nsw i64 %i.au, %i.f             ; 2 uses
  %i.aw = icmp samesign ugt i64 %i.av, 1152921504606846975
  %i.ax = shl i64 %i.av, 4
  %i.ay = select i1 %i.aw, i64 -1, i64 %i.ax      ; 2 uses
  %i.az = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #33
          to label %bb.ab unwind label %bb.ac     ; 3 uses

bb.h:                                             ; preds = %.lr.ph390, %._crit_edge
  %indvars.iv420 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next421, %._crit_edge ] ; 2 uses
  %.0314388 = phi i32 [ 0, %.lr.ph390 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.ba = load ptr, ptr %i.n, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv420
  %i.bc = load ptr, ptr %i.bb, align 8            ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = invoke { ptr, i32 } @_ZN5glTF28LazyDictINS_4NodeEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(232) %i.o, ptr noundef nonnull %i.bd)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.fca.0.extract87 = extractvalue { ptr, i32 } %i.be, 0 ; 4 uses
  %.fca.1.extract88 = extractvalue { ptr, i32 } %i.be, 1 ; 3 uses
  %i.bf = zext i32 %.fca.1.extract88 to i64       ; 2 uses
  %i.bg = load ptr, ptr %.fca.0.extract87, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 504
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.preheader unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.preheader: ; preds = %bb.i
  %i.bl = load ptr, ptr %4, align 8
  %i.bm = load i32, ptr %i.p, align 8
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load ptr, ptr %i.bl, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8            ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 352 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 360 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 7 uses
  %i.bu = load ptr, ptr %i.br, align 8            ; 6 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 4 uses
  %i.by = ashr exact i64 %i.bx, 4                 ; 3 uses
  %.not406 = icmp eq ptr %i.bt, %i.bu             ; 2 uses
  br i1 %.not406, label %.thread, label %.lr.ph375

.lr.ph375:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.preheader
  %i.bz = load ptr, ptr %.fca.0.extract87, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bf
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 512
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 504
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit._crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread
  br i1 %spec.select491, label %bb.l, label %bb.u

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %.lr.ph375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread
  %i.cg = phi i64 [ 0, %.lr.ph375 ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ]
  %.0149374 = phi i32 [ 0, %.lr.ph375 ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ] ; 2 uses
  %.0152373 = phi i1 [ true, %.lr.ph375 ], [ %spec.select491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ] ; 2 uses
  %.0154372 = phi i32 [ 0, %.lr.ph375 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.cg ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = zext i32 %i.ck to i64
  %i.cm = load ptr, ptr %i.ci, align 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  %i.cq = load i64, ptr %i.cp, align 8            ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.cq) ; 2 uses
  %i.cr = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 504
  %i.ct = load ptr, ptr %i.ce, align 8
  %i.cu = load ptr, ptr %i.cs, align 8
  %bcmp = call i32 @bcmp(ptr %i.cu, ptr %i.ct, i64 %.sroa.speculated.i)
  %.not.i184 = icmp eq i32 %bcmp, 0
  br i1 %.not.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit: ; preds = %bb.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.cv = icmp eq i64 %i.cq, %i.cd
  %cond.fr = freeze i1 %i.cv                      ; 2 uses
  %not..0.i = xor i1 %cond.fr, true
  %spec.select = select i1 %not..0.i, i1 %.0152373, i1 false
  %spec.select503 = select i1 %cond.fr, i32 %.0154372, i32 %.0149374
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %spec.select491 = phi i1 [ %.0152373, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %spec.select, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit ] ; 2 uses
  %i.cw = phi i32 [ %.0149374, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %spec.select503, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit ] ; 2 uses
  %i.cx = add i32 %.0154372, 1                    ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = icmp ugt i64 %i.by, %i.cy
  br i1 %i.cz, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit._crit_edge, !llvm.loop !163

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %i.bq, i64 368 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8
  %.not.i185 = icmp eq ptr %i.bt, %i.db
  br i1 %.not.i185, label %bb.n, label %bb.m

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.preheader
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bq, i64 368 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %.not.i185492 = icmp eq ptr %i.bt, %i.dd
  br i1 %.not.i185492, label %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  store ptr %.fca.0.extract87, ptr %i.bt, align 8
  %.sroa.9303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %.fca.1.extract88, ptr %.sroa.9303.0..sroa_idx, align 8
  %i.de = load ptr, ptr %i.bs, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.df, ptr %i.bs, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE9push_backERKS4_.exit

bb.n:                                             ; preds = %bb.l
  %i.dg = icmp eq i64 %i.bx, 9223372036854775792
  br i1 %i.dg, label %bb.o, label %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
          to label %.noexc188 unwind label %.loopexit.split-lp332

.noexc188:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.thread, %bb.n
  %i.dh = phi ptr [ %i.da, %bb.n ], [ %i.dc, %.thread ]
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.di = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.by ; 2 uses
  %i.dj = shl nuw nsw i64 %i.di, 4
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #33
          to label %.noexc189 unwind label %.loopexit331 ; 5 uses

.noexc189:                                        ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.bx ; 2 uses
  store ptr %.fca.0.extract87, ptr %i.dl, align 8
  %.sroa.9303.0..sroa_idx304 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 %.fca.1.extract88, ptr %.sroa.9303.0..sroa_idx304, align 8
  br i1 %.not406, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc189, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i ], [ %i.dk, %.noexc189 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i ], [ %i.bu, %.noexc189 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !164
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i187 = icmp eq ptr %i.dm, %i.bt
  br i1 %.not.i.i.i.i.i187, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !19

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc189
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dk, %.noexc189 ], [ %i.dn, %.lr.ph.i.i.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bx) #32
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.dk, ptr %i.br, align 8
  store ptr %i.do, ptr %i.bs, align 8
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.dp, ptr %i.dh, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7278)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9286)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bc, i64 1056
  %.sroa.0275.0.copyload = load float, ptr %i.dq, align 4 ; 2 uses
  %.sroa.7278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7278, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7278.0..sroa_idx, i64 16, i1 false)
  %.sroa.8281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1076
  %.sroa.8281.0.copyload = load float, ptr %.sroa.8281.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9286, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9286.0..sroa_idx, i64 16, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1096
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.0..sroa_idx, i64 16, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1116
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4 ; 2 uses
  %i.dr = load ptr, ptr %i.q, align 8             ; 11 uses
  %i.ds = load ptr, ptr %i.r, align 8
  %.not.i190 = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i190, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE9push_backERKS4_.exit
  store float %.sroa.0275.0.copyload, ptr %i.dr, align 4
  %.sroa.7278.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7278.0..sroa_idx279, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7278, i64 16, i1 false)
  %.sroa.8281.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  store float %.sroa.8281.0.copyload, ptr %.sroa.8281.0..sroa_idx282, align 4
  %.sroa.9286.0..sroa_idx287 = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9286.0..sroa_idx287, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9286, i64 16, i1 false)
  %.sroa.10.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  store float %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx289, align 4
  %.sroa.11.0..sroa_idx293 = getelementptr inbounds nuw i8, ptr %i.dr, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.0..sroa_idx293, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %.sroa.12.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.dr, i64 60
  store float %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx295, align 4
  %i.dt = load ptr, ptr %i.q, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64 ; 2 uses
  store ptr %i.du, ptr %i.q, align 8
  %.pre429 = load ptr, ptr %5, align 8
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit

bb.r:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE9push_backERKS4_.exit
  %i.dv = load ptr, ptr %5, align 8               ; 5 uses
  %i.dw = ptrtoint ptr %i.dr to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 4 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775744
  br i1 %i.dz, label %bb.s, label %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
          to label %.noexc200 unwind label %.loopexit.split-lp337

.noexc200:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.ea = ashr exact i64 %i.dy, 6                 ; 3 uses
  %.sroa.speculated.i.i.i191 = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i191, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 144115188075855871)
  %i.ee = select i1 %i.ec, i64 144115188075855871, i64 %i.ed ; 3 uses
  %.not.i.i.i192 = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i.i192)
  %i.ef = shl nuw nsw i64 %i.ee, 6
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #33
          to label %.noexc201 unwind label %.loopexit336 ; 6 uses

.noexc201:                                        ; preds = %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dy ; 7 uses
  store float %.sroa.0275.0.copyload, ptr %i.eh, align 4
  %.sroa.7278.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7278.0..sroa_idx280, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7278, i64 16, i1 false)
  %.sroa.8281.0..sroa_idx284 = getelementptr inbounds nuw i8, ptr %i.eh, i64 20
  store float %.sroa.8281.0.copyload, ptr %.sroa.8281.0..sroa_idx284, align 4
  %.sroa.9286.0..sroa_idx288 = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9286.0..sroa_idx288, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9286, i64 16, i1 false)
  %.sroa.10.0..sroa_idx291 = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  store float %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx291, align 4
  %.sroa.11.0..sroa_idx294 = getelementptr inbounds nuw i8, ptr %i.eh, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.0..sroa_idx294, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %.sroa.12.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.eh, i64 60
  store float %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx297, align 4
  %.not10.i.i.i.i.i193 = icmp eq ptr %i.dv, %i.dr
  br i1 %.not10.i.i.i.i.i193, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i194

.lr.ph.i.i.i.i.i194:                              ; preds = %.noexc201, %.lr.ph.i.i.i.i.i194
  %.012.i.i.i.i.i195 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i194 ], [ %i.eg, %.noexc201 ] ; 2 uses
  %.0911.i.i.i.i.i196 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i194 ], [ %i.dv, %.noexc201 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i195, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i196, i64 64, i1 false), !alias.scope !168
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i196, i64 64 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i195, i64 64 ; 2 uses
  %.not.i.i.i.i.i197 = icmp eq ptr %i.ei, %i.dr
  br i1 %.not.i.i.i.i.i197, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i194, !llvm.loop !172

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i194, %.noexc201
  %.0.lcssa.i.i.i.i.i198 = phi ptr [ %i.eg, %.noexc201 ], [ %i.ej, %.lr.ph.i.i.i.i.i194 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i198, i64 64 ; 2 uses
  %.not.i23.i.i199 = icmp eq ptr %i.dv, null
  br i1 %.not.i23.i.i199, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dy) #32
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.eg, ptr %5, align 8
  store ptr %i.ek, ptr %i.q, align 8
  %i.el = getelementptr inbounds nuw [64 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.el, ptr %i.r, align 8
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.q
  %i.em = phi ptr [ %i.eg, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre429, %bb.q ]
  %i.en = phi ptr [ %i.ek, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.du, %bb.q ]
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = lshr exact i64 %i.eq, 6
  %i.es = trunc i64 %i.er to i32
  %i.et = add i32 %i.es, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7278)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9286)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.u

.loopexit331:                                     ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF24NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit333 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp332:                            ; preds = %bb.o
  %lpad.loopexit.split-lp334 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit336:                                     ; preds = %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit338 = landingpad { ptr, i32 }
          cleanup
  br label %10

.loopexit.split-lp337:                            ; preds = %bb.s
  %lpad.loopexit.split-lp339 = landingpad { ptr, i32 }
          cleanup
  br label %10

10:                                               ; preds = %.loopexit.split-lp337, %.loopexit336
  %lpad.phi340 = phi { ptr, i32 } [ %lpad.loopexit338, %.loopexit336 ], [ %lpad.loopexit.split-lp339, %.loopexit.split-lp337 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7278)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9286)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %.body

bb.u:                                             ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit._crit_edge
  %.2151 = phi i32 [ %i.et, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit._crit_edge ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bc, i64 1028 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4
  %.not407 = icmp eq i32 %i.ev, 0
  br i1 %.not407, label %._crit_edge, label %.lr.ph386

.lr.ph386:                                        ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bc, i64 1048
  br label %bb.v

._crit_edge:                                      ; preds = %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE9push_backEOS0_.exit, %bb.u
  %.1.lcssa = phi i32 [ %.0314388, %bb.u ], [ %.sroa.speculated, %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE9push_backEOS0_.exit ] ; 2 uses
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %i.ex = load i32, ptr %i.a, align 8
  %i.ey = zext i32 %i.ex to i64
  %i.ez = icmp samesign ult i64 %indvars.iv.next421, %i.ey
  br i1 %i.ez, label %bb.h, label %._crit_edge391.loopexit, !llvm.loop !173

bb.v:                                             ; preds = %.lr.ph386, %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE9push_backEOS0_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph386 ], [ %indvars.iv.next, %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE9push_backEOS0_.exit ] ; 2 uses
  %.1384 = phi i32 [ %.0314388, %.lr.ph386 ], [ %.sroa.speculated, %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE9push_backEOS0_.exit ]
  %i.fa = load ptr, ptr %i.ew, align 8
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fe = load float, ptr %i.fd, align 4          ; 2 uses
  %i.ff = zext i32 %i.fc to i64                   ; 2 uses
  %i.fg = load ptr, ptr %8, align 8
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %i.ff ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 4 uses
  %i.fj = load ptr, ptr %i.fi, align 8            ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8
  %.not.i.i = icmp eq ptr %i.fj, %i.fl
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %.2151, ptr %i.fj, align 4
  %.sroa_idx268 = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store float %i.fe, ptr %.sroa_idx268, align 4
  %i.fm = load ptr, ptr %i.fi, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fn, ptr %i.fi, align 8
  br label %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE9push_backEOS0_.exit

bb.x:                                             ; preds = %bb.v
  %i.fo = load ptr, ptr %i.fh, align 8            ; 4 uses
  %i.fp = ptrtoint ptr %i.fj to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq                    ; 6 uses
  %i.fs = icmp eq i64 %i.fr, 9223372036854775800
  br i1 %i.fs, label %bb.y, label %_ZNKSt6vectorI19boneIndexWeightPairSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
          to label %.noexc202 unwind label %.loopexit.split-lp326

.noexc202:                                        ; preds = %bb.y
  unreachable

_ZNKSt6vectorI19boneIndexWeightPairSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.x
  %i.ft = ashr exact i64 %i.fr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ft, i64 1)
  %i.fu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ft ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.ft
  %i.fw = call i64 @llvm.umin.i64(i64 %i.fu, i64 1152921504606846975)
  %i.fx = select i1 %i.fv, i64 1152921504606846975, i64 %i.fw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fy = shl nuw nsw i64 %i.fx, 3
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #33
          to label %.noexc203 unwind label %.loopexit325 ; 4 uses

.noexc203:                                        ; preds = %_ZNKSt6vectorI19boneIndexWeightPairSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 %i.fr ; 3 uses
  store i32 %.2151, ptr %i.ga, align 4
  %.sroa_idx270 = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store float %i.fe, ptr %.sroa_idx270, align 4
  %i.gb = icmp sgt i64 %i.fr, 0
  br i1 %i.gb, label %bb.z, label %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.z:                                             ; preds = %.noexc203
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fz, ptr align 4 %i.fo, i64 %i.fr, i1 false)
  br label %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.z, %.noexc203
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef %i.fr) #32
  br label %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.fz, ptr %i.fh, align 8
  store ptr %i.gc, ptr %i.fi, align 8
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fx
  store ptr %i.gd, ptr %i.fk, align 8
  br label %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.w
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ff ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = add nsw i32 %i.gf, 1                    ; 2 uses
  store i32 %i.gg, ptr %i.ge, align 4
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.1384, i32 %i.gg) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gh = load i32, ptr %i.eu, align 4
  %i.gi = zext i32 %i.gh to i64
  %i.gj = icmp samesign ult i64 %indvars.iv.next, %i.gi
  br i1 %i.gj, label %bb.v, label %._crit_edge, !llvm.loop !174

.loopexit325:                                     ; preds = %_ZNKSt6vectorI19boneIndexWeightPairSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit327 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp326:                            ; preds = %bb.y
  %lpad.loopexit.split-lp328 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %._crit_edge391
  %i.gk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #33
          to label %.preheader324 unwind label %bb.ad ; 3 uses

.preheader324:                                    ; preds = %bb.ab
  br i1 %.not404, label %.lr.ph402, label %.lr.ph396

.lr.ph402:                                        ; preds = %._crit_edge394, %.preheader324
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.as

bb.ac:                                            ; preds = %._crit_edge391
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %bb.ab
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph396:                                        ; preds = %.preheader324, %._crit_edge394
  %.0156395 = phi i64 [ %i.hp, %._crit_edge394 ], [ 0, %.preheader324 ] ; 4 uses
  %i.gp = load ptr, ptr %8, align 8
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gp, i64 %.0156395 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8            ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8            ; 4 uses
  %.not.i.i204 = icmp eq ptr %i.gr, %i.gt
  br i1 %.not.i.i204, label %.preheader323.lr.ph, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph396
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gr to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = ashr exact i64 %i.gw, 3
  %i.gy = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gx, i1 true)
  %i.gz = shl nuw nsw i64 %i.gy, 1
  %i.ha = xor i64 %i.gz, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_T0_T1_(ptr %i.gr, ptr %i.gt, i64 noundef %i.ha, i64 0)
          to label %.noexc205 unwind label %bb.af

.noexc205:                                        ; preds = %bb.ae
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP19boneIndexWeightPairSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIS2_EEEvT_SB_T0_(ptr %i.gr, ptr %i.gt, i64 0)
          to label %.preheader323.lr.ph unwind label %bb.af

.preheader323.lr.ph:                              ; preds = %.lr.ph396, %.noexc205
  %i.hb = load ptr, ptr %8, align 8
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %.0156395 ; 9 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 4 uses
  br label %.preheader323

.preheader323:                                    ; preds = %.preheader323.lr.ph, %bb.ar
  %.0157393 = phi i64 [ 0, %.preheader323.lr.ph ], [ %i.jx, %bb.ar ] ; 3 uses
  %i.he = shl i64 %.0157393, 2                    ; 6 uses
  %i.hf = mul i64 %.0157393, %i.f
  %i.hg = add i64 %i.hf, %.0156395                ; 2 uses
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.hg ; 8 uses
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.hg ; 4 uses
  %i.hj = load ptr, ptr %i.hd, align 8
  %i.hk = load ptr, ptr %i.hc, align 8            ; 2 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = ashr exact i64 %i.hn, 3
  %.not = icmp ult i64 %i.he, %i.ho
  br i1 %.not, label %bb.ah, label %bb.ag

._crit_edge394:                                   ; preds = %bb.ar
  %i.hp = add nuw nsw i64 %.0156395, 1            ; 2 uses
  %exitcond425.not = icmp eq i64 %i.hp, %i.f
  br i1 %exitcond425.not, label %.lr.ph402, label %.lr.ph396, !llvm.loop !175

end_hunk_0
begin_hunk_1_@_Z10ExportSkinRN5glTF25AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EEb:bb.a
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %i.ox, i64 %i.ov
  store ptr %i.pc, ptr %i.oi, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.bf
  call void @_ZdaPv(ptr noundef nonnull %i.mg) #32
  br label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread

.loopexit:                                        ; preds = %bb.bb, %.noexc209, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread: ; preds = %bb.at, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit
  %i.pd = load ptr, ptr %4, align 8
  %i.pe = load i32, ptr %i.gm, align 8
  %i.pf = zext i32 %i.pe to i64
  %i.pg = load ptr, ptr %i.pd, align 8
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.pf
  %i.pi = load ptr, ptr %i.ph, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pk = load i32, ptr %i.d, align 4
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.kp
  %i.pn = invoke { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.pj, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %i.pl, ptr noundef nonnull %i.pm, i32 noundef 3, i32 noundef 3, i32 noundef 5126, i32 noundef 0)
          to label %bb.bj unwind label %.loopexit318 ; 2 uses

bb.bj:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread
  %.fca.0.extract = extractvalue { ptr, i32 } %i.pn, 0 ; 5 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.pn, 1 ; 3 uses
  %.not.i223 = icmp eq ptr %.fca.0.extract, null
  br i1 %.not.i223, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit240, label %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit224

_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit224: ; preds = %bb.bj
  %i.po = zext i32 %.fca.1.extract to i64
  %i.pp = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8
  %i.pr = load ptr, ptr %.fca.0.extract, align 8
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = ashr exact i64 %i.pu, 3
  %i.pw = icmp ugt i64 %i.pv, %i.po
  br i1 %i.pw, label %bb.bk, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit240

bb.bk:                                            ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit224
  %i.px = getelementptr inbounds i8, ptr %i.kf, i64 -88 ; 2 uses
  %i.py = getelementptr inbounds i8, ptr %i.kf, i64 -80 ; 4 uses
  %i.pz = load ptr, ptr %i.py, align 8            ; 6 uses
  %i.qa = getelementptr inbounds i8, ptr %i.kf, i64 -72 ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8
  %.not.i225 = icmp eq ptr %i.pz, %i.qb
  br i1 %.not.i225, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr %.fca.0.extract, ptr %i.pz, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.7.0..sroa_idx, align 8
  %i.qc = load ptr, ptr %i.py, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  store ptr %i.qd, ptr %i.py, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit240

bb.bm:                                            ; preds = %bb.bk
  %i.qe = load ptr, ptr %i.px, align 8            ; 5 uses
  %i.qf = ptrtoint ptr %i.pz to i64
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = sub i64 %i.qf, %i.qg                    ; 4 uses
  %i.qi = icmp eq i64 %i.qh, 9223372036854775792
  br i1 %i.qi, label %bb.bn, label %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i226

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.90) #34
          to label %.noexc238 unwind label %.loopexit.split-lp319

.noexc238:                                        ; preds = %bb.bn
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i226: ; preds = %bb.bm
  %i.qj = ashr exact i64 %i.qh, 4                 ; 3 uses
  %.sroa.speculated.i.i.i227 = call i64 @llvm.umax.i64(i64 %i.qj, i64 1)
  %i.qk = add nsw i64 %.sroa.speculated.i.i.i227, %i.qj ; 2 uses
  %i.ql = icmp ult i64 %i.qk, %i.qj
  %i.qm = call i64 @llvm.umin.i64(i64 %i.qk, i64 576460752303423487)
  %i.qn = select i1 %i.ql, i64 576460752303423487, i64 %i.qm ; 3 uses
  %.not.i.i.i228 = icmp ne i64 %i.qn, 0
  call void @llvm.assume(i1 %.not.i.i.i228)
  %i.qo = shl nuw nsw i64 %i.qn, 4
  %i.qp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qo) #33
          to label %.noexc239 unwind label %.loopexit318 ; 5 uses

.noexc239:                                        ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i226
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qh ; 2 uses
  store ptr %.fca.0.extract, ptr %i.qq, align 8
  %.sroa.7.0..sroa_idx243 = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.7.0..sroa_idx243, align 8
  %.not10.i.i.i.i.i229 = icmp eq ptr %i.qe, %i.pz
  br i1 %.not10.i.i.i.i.i229, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i234, label %.lr.ph.i.i.i.i.i230

.lr.ph.i.i.i.i.i230:                              ; preds = %.noexc239, %.lr.ph.i.i.i.i.i230
  %.012.i.i.i.i.i231 = phi ptr [ %i.qs, %.lr.ph.i.i.i.i.i230 ], [ %i.qp, %.noexc239 ] ; 2 uses
  %.0911.i.i.i.i.i232 = phi ptr [ %i.qr, %.lr.ph.i.i.i.i.i230 ], [ %i.qe, %.noexc239 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i231, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i232, i64 16, i1 false), !alias.scope !182
  %i.qr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i232, i64 16 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i231, i64 16 ; 2 uses
  %.not.i.i.i.i.i233 = icmp eq ptr %i.qr, %i.pz
  br i1 %.not.i.i.i.i.i233, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i234, label %.lr.ph.i.i.i.i.i230, !llvm.loop !45

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i234: ; preds = %.lr.ph.i.i.i.i.i230, %.noexc239
  %.0.lcssa.i.i.i.i.i235 = phi ptr [ %i.qp, %.noexc239 ], [ %i.qs, %.lr.ph.i.i.i.i.i230 ]
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i235, i64 16
  %.not.i23.i.i236 = icmp eq ptr %i.qe, null
  br i1 %.not.i23.i.i236, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i237, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i234
  call void @_ZdlPvm(ptr noundef nonnull %i.qe, i64 noundef %i.qh) #32
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i237

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i237: ; preds = %bb.bo, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i234
  store ptr %i.qp, ptr %i.px, align 8
  store ptr %i.qt, ptr %i.py, align 8
  %i.qu = getelementptr inbounds nuw [16 x i8], ptr %i.qp, i64 %i.qn
  store ptr %i.qu, ptr %i.qa, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit240

.loopexit318:                                     ; preds = %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i226
  %lpad.loopexit320 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp319:                            ; preds = %bb.bn
  %lpad.loopexit.split-lp321 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit240: ; preds = %bb.bj, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i237, %bb.bl, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit224
  %i.qv = add nuw i64 %.0159401, 1                ; 2 uses
  %exitcond426.not = icmp eq i64 %i.qv, %i.au
  br i1 %exitcond426.not, label %._crit_edge403, label %bb.as, !llvm.loop !186

._crit_edge403:                                   ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE9push_backERKS4_.exit240
  call void @_ZdaPv(ptr noundef nonnull %i.h) #32
  call void @_ZdaPv(ptr noundef nonnull %i.gk) #32
  call void @_ZdaPv(ptr noundef nonnull %i.az) #32
  %i.qw = load ptr, ptr %8, align 8               ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.qw, %i.qy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorI19boneIndexWeightPairSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge403, %_ZSt8_DestroyISt6vectorI19boneIndexWeightPairSaIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.rf, %_ZSt8_DestroyISt6vectorI19boneIndexWeightPairSaIS1_EEEvPT_.exit.i.i.i ], [ %i.qw, %._crit_edge403 ] ; 3 uses
  %i.qz = load ptr, ptr %.05.i.i.i, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.qz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI19boneIndexWeightPairSaIS1_EEEvPT_.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8
  %i.rc = ptrtoint ptr %i.rb to i64
  %i.rd = ptrtoint ptr %i.qz to i64
  %i.re = sub i64 %i.rc, %i.rd
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef %i.re) #32
  br label %_ZSt8_DestroyISt6vectorI19boneIndexWeightPairSaIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorI19boneIndexWeightPairSaIS1_EEEvPT_.exit.i.i.i: ; preds = %bb.bp, %.lr.ph.i.i.i
  %i.rf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i241 = icmp eq ptr %i.rf, %i.qy
  br i1 %.not.i.i.i241, label %_ZSt8_DestroyIPSt6vectorI19boneIndexWeightPairSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !187

_ZSt8_DestroyIPSt6vectorI19boneIndexWeightPairSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorI19boneIndexWeightPairSaIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8
  br label %_ZSt8_DestroyIPSt6vectorI19boneIndexWeightPairSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorI19boneIndexWeightPairSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorI19boneIndexWeightPairSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %._crit_edge403
  %i.rg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorI19boneIndexWeightPairSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.qw, %._crit_edge403 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.rg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZSt8_DestroyIPSt6vectorI19boneIndexWeightPairSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i
  %i.rh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ri = load ptr, ptr %i.rh, align 8
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = ptrtoint ptr %i.rg to i64
  %i.rl = sub i64 %i.rj, %i.rk
  call void @_ZdlPvm(ptr noundef nonnull %i.rg, i64 noundef %i.rl) #32
  br label %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EED2Ev.exit

_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI19boneIndexWeightPairSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.br

bb.br:                                            ; preds = %bb.a, %_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EED2Ev.exit
  ret void

.body:                                            ; preds = %.loopexit318, %.loopexit.split-lp319, %.loopexit, %.loopexit.split-lp, %.loopexit325, %.loopexit.split-lp326, %.loopexit331, %.loopexit.split-lp332, %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.az, %bb.bd, %bb.j, %10, %bb.ac, %bb.af, %bb.ad, %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit182
  %.pn176 = phi { ptr, i32 } [ %lpad.loopexit343, %_ZNSt6vectorI19boneIndexWeightPairSaIS0_EED2Ev.exit182 ], [ %i.go, %bb.ad ], [ %i.gn, %bb.ac ], [ %i.hq, %bb.af ], [ %.pn12.i, %bb.az ], [ %i.cf, %bb.j ], [ %lpad.loopexit.split-lp334, %.loopexit.split-lp332 ], [ %lpad.phi340, %10 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.mw, %bb.bc ], [ %i.mx, %bb.bd ], [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %lpad.loopexit.split-lp328, %.loopexit.split-lp326 ], [ %i.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit333, %.loopexit331 ], [ %lpad.loopexit327, %.loopexit325 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit320, %.loopexit318 ], [ %lpad.loopexit.split-lp321, %.loopexit.split-lp319 ]
  call void @_ZNSt6vectorIS_I19boneIndexWeightPairSaIS0_EESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  resume { ptr, i32 } %.pn176
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN5glTF28LazyDictINS_4NodeEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.250) #34
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.e, ptr %i.a, align 8
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %2, align 8
  %i.h = load i64, ptr %i.a, align 8
  store i64 %i.h, ptr %i.c, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %1, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.o = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit unwind label %bb.g ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit: ; preds = %bb.e
  %i.p = load ptr, ptr %2, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit
  %i.r = load i64, ptr %i.c, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.v = load i32, ptr %i.u, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %2, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.g
  %i.z = load i64, ptr %i.c, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.w

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.sroa.014.0 = phi ptr [ %i.t, %bb.f ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.3.0 = phi i32 [ %i.v, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.014.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_Z10ExportDataRN5glTF25AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEmPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(3624) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = icmp ne i64 %3, 0
  %i.b = icmp ne ptr %4, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %5 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr @_ZN5glTF210AttribType4dataILi0EE5infosE, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = zext i32 %6 to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr @_ZN5glTF210AttribType4dataILi0EE5infosE, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %switch.tableidx = add i32 %7, -5120            ; 2 uses
  %i.k = icmp ult i32 %switch.tableidx, 7
  %switch.maskindex = trunc i32 %7 to i8
  %switch.shifted = lshr i8 111, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond101 = select i1 %i.k, i1 %switch.lobit, i1 false
  br i1 %or.cond101, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_Z12ai_to_stringIN5glTF213ComponentTypeEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i32 noundef %7)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN17DeadlyImportErrorC2IJRA34_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 1 dereferenceable(34) @.str.247, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.h unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.o = load ptr, ptr %9, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br i1 %.0.i, label %bb.g, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br i1 %.0.i, label %bb.g, label %common.resume

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn12.i = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.l) #31
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn12.i, %bb.g ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.e
  unreachable

switch.lookup:                                    ; preds = %bb.b
  %i.t = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN5glTF28Accessor17WriteSparseValuesEmPKvm, i64 %i.t
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.u = load ptr, ptr %2, align 8
end_hunk_1

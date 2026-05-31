inline.NumInlined: 1538
inline.NumDeleted: 693
begin_hunk_0_@_ZN6Assimp11SMDImporter18CreateOutputMeshesEv:bb.a

_ZNSt10unique_ptrIA_St6vectorISt4pairIjfESaIS2_EESt14default_deleteIS5_EED2Ev.exit230: ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit.i.i228, %bb.cc
  %.pre-phi477 = phi i64 [ 8, %bb.cc ], [ %.ptr291.add, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit.i.i228 ]
  tail call void @_ZdaPvm(ptr noundef nonnull %i.hd, i64 noundef %.pre-phi477) #30
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit323, %.loopexit.split-lp324, %.loopexit318, %.loopexit.split-lp319, %bb.h, %bb.ac, %_ZNSt10unique_ptrIA_St6vectorISt4pairIjfESaIS2_EESt14default_deleteIS5_EED2Ev.exit230, %bb.ad
  %.pn186 = phi { ptr, i32 } [ %i.cb, %bb.h ], [ %i.hq, %bb.ac ], [ %i.hr, %bb.ad ], [ %lpad.loopexit.split-lp321, %.loopexit.split-lp319 ], [ %.pn179, %_ZNSt10unique_ptrIA_St6vectorISt4pairIjfESaIS2_EESt14default_deleteIS5_EED2Ev.exit230 ], [ %lpad.loopexit320, %.loopexit318 ], [ %lpad.loopexit325, %.loopexit323 ], [ %lpad.loopexit.split-lp326, %.loopexit.split-lp324 ]
  %i.abh = load i64, ptr %i.ai, align 16          ; 2 uses
  %i.abi = icmp eq i64 %i.abh, 0
  br i1 %i.abi, label %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit238, label %.preheader.preheader.i.i233

.preheader.preheader.i.i233:                      ; preds = %bb.ce
  %.idx.i.i232 = mul i64 %i.abh, 24
  %.ptr284.add = add i64 %.idx.i.i232, 8          ; 2 uses
  br label %.preheader.i.i234

.preheader.i.i234:                                ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i236, %.preheader.preheader.i.i233
  %.idx299 = phi i64 [ %.add300, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i236 ], [ %.ptr284.add, %.preheader.preheader.i.i233 ] ; 2 uses
  %.add300 = add nsw i64 %.idx299, -24            ; 3 uses
  %.ptr302 = getelementptr inbounds i8, ptr %i.ai, i64 %.add300
  %i.abj = load ptr, ptr %.ptr302, align 8        ; 3 uses
  %.not.i.i.i.i.i235 = icmp eq ptr %i.abj, null
  br i1 %.not.i.i.i.i.i235, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i236, label %bb.cf

bb.cf:                                            ; preds = %.preheader.i.i234
  %.ptr301 = getelementptr inbounds i8, ptr %i.ai, i64 %.idx299
  %i.abk = getelementptr inbounds i8, ptr %.ptr301, i64 -8
  %i.abl = load ptr, ptr %i.abk, align 8
  %i.abm = ptrtoint ptr %i.abl to i64
  %i.abn = ptrtoint ptr %i.abj to i64
  %i.abo = sub i64 %i.abm, %i.abn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.abj, i64 noundef %i.abo) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i236

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i236:             ; preds = %bb.cf, %.preheader.i.i234
  %i.abp = icmp eq i64 %.add300, 8
  br i1 %i.abp, label %_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit238, label %.preheader.i.i234

_ZNSt10unique_ptrIA_St6vectorIjSaIjEESt14default_deleteIS3_EED2Ev.exit238: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i236, %bb.ce
  %.pre-phi479 = phi i64 [ 8, %bb.ce ], [ %.ptr284.add, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i236 ]
  tail call void @_ZdaPvm(ptr noundef nonnull %i.ai, i64 noundef %.pre-phi479) #30
  resume { ptr, i32 } %.pn186
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter21CreateOutputMaterialsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(226) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.aiString, align 4           ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.aiColor3D, align 8          ; 8 uses
  %3 = alloca %struct.aiString, align 4           ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 5
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 %i.j, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 4
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.p, i32 1)
  %i.q = zext i32 %.sroa.speculated to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #29
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.s, ptr %i.t, align 8
  %i.u = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %.not33 = icmp eq i32 %i.w, 0
  br i1 %.not33, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f
  %i.y = icmp eq i32 %i.at, 0
  br i1 %i.y, label %._crit_edge.thread, label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.z = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 5 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.k, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  store ptr %i.z, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %1, i8 0, i64 1028, i1 false)
  %i.ae = trunc nuw i64 %indvars.iv to i32
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 1024, ptr noundef nonnull @.str.18, i32 noundef %i.ae) #27
  store i32 %i.af, ptr %1, align 4
  %i.ag = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull %1, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.ah = load ptr, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.ai, align 8
  %i.am = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) %i.al, i64 noundef 1023) #27 ; 0 uses
  %i.an = load i64, ptr %i.aj, align 8
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %1, align 4
  %i.ap = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull %1, ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i32, ptr %i.as, align 8            ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !54

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.lcssa3041 = phi ptr [ %i.ar, %._crit_edge ], [ %i.u, %bb.a ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.lcssa3041, i64 32
  store i32 1, ptr %i.aw, align 8
  %i.ax = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 8 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.thread
  %i.ay = load ptr, ptr %i.k, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  store ptr %i.ax, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 2, ptr %i.a, align 4
  %i.bb = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store <2 x float> splat (float f0x3F333333), ptr %2, align 8
  store float f0x3F333333, ptr %i.bc, align 8
  %i.bd = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull %2, i32 noundef 12, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.be = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull %2, i32 noundef 12, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  store <2 x float> splat (float 5.000000e-02), ptr %2, align 8
  store float 5.000000e-02, ptr %i.bc, align 8
  %i.bf = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull %2, i32 noundef 12, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1008) %i.bg, i8 0, i64 1008, i1 false)
  store i32 15, ptr %3, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.bh, ptr noundef nonnull align 1 dereferenceable(15) @.str.25, i64 15, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.bi, align 1
  %i.bj = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull %3, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.thread
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge
  ret void

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sink = phi ptr [ %i.ax, %bb.g ], [ %i.z, %bb.e ]
  %.pn23 = phi { ptr, i32 } [ %i.bk, %bb.g ], [ %i.aq, %bb.e ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 16) #30
  resume { ptr, i32 } %.pn23
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter22CreateOutputAnimationsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.59", align 8    ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !31
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %7, label %._crit_edge27

._crit_edge27:                                    ; preds = %bb.a
  %.phi.trans.insert.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.pre28.a = load ptr, ptr %5, align 8
  %6 = getelementptr inbounds nuw i8, ptr %.pre28.a, i64 48
  store i32 1, ptr %6, align 8
  br label %14

7:                                                ; preds = %bb.a
  invoke void @_ZN6Assimp11SMDImporter20GetAnimationFileListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemERSt6vectorISt5tupleIJS6_S6_EESaISD_EE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %7
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.c:                                             ; preds = %7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.pre28 = load ptr, ptr %3, align 8
  %8 = ptrtoint ptr %.pre to i64
  %9 = ptrtoint ptr %.pre28 to i64
  %10 = sub i64 %8, %9
  %.fr = freeze i64 %10
  %11 = shl i64 %.fr, 26
  %12 = add i64 %11, 4294967296                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 1, ptr %i.h, align 8
  %13 = ashr exact i64 %12, 29                    ; 2 uses
  %.inv = icmp sgt i64 %12, -1
  %spec.select = select i1 %.inv, i64 %13, i64 -1
  br label %14

14:                                               ; preds = %bb.c, %._crit_edge27
  %15 = phi i64 [ %13, %bb.c ], [ 8, %._crit_edge27 ]
  %16 = phi ptr [ %i.f, %bb.c ], [ %5, %._crit_edge27 ] ; 3 uses
  %17 = phi ptr [ %i.e, %bb.c ], [ %.phi.trans.insert.a, %._crit_edge27 ] ; 2 uses
  %18 = phi i64 [ %spec.select, %bb.c ], [ 8, %._crit_edge27 ]
  %19 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %18) #29
          to label %._crit_edge.i.i unwind label %bb.f

._crit_edge.i.i:                                  ; preds = %14
  %i.i = load ptr, ptr %16, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %19, ptr %i.j, align 8
  %i.k = load ptr, ptr %16, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %15, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.n, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %i.n, align 8
  invoke void @_ZN6Assimp11SMDImporter21CreateOutputAnimationEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(226) %0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load ptr, ptr %4, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.n
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.n, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.t = load ptr, ptr %3, align 8                ; 3 uses
  %i.u = load ptr, ptr %17, align 8               ; 2 uses
  %.not25 = icmp eq ptr %i.t, %i.u
  br i1 %.not25, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.h

._crit_edge:                                      ; preds = %bb.k
  %.pre29 = load ptr, ptr %3, align 8             ; 3 uses
  %.pre30 = load ptr, ptr %17, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre29, %.pre30
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i ], [ %.pre29, %._crit_edge ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #30
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.af = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #30
  br label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %.pre30
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !55

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.al = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %.pre29, %._crit_edge ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #30
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.f:                                             ; preds = %14
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %4, align 8               ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.n
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.g
  %i.av = load i64, ptr %i.n, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.021.026 = phi ptr [ %i.t, %.lr.ph ], [ %i.bs, %bb.k ] ; 3 uses
  invoke void @_ZN6Assimp11SMDImporter7ReadSmdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(226) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.026, ptr noundef %2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.ay = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.k, label %.lr.ph25.i.preheader

bb.j:                                             ; preds = %.loopexit, %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.lr.ph25.i.preheader:                             ; preds = %bb.i
  %i.bb = load i32, ptr %i.x, align 8
  %i.bc = sitofp i32 %i.bb to double
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %._crit_edge.i
  %.023.i = phi double [ %.1.lcssa.i, %._crit_edge.i ], [ 0.000000e+00, %.lr.ph25.i.preheader ] ; 2 uses
  %.sroa.013.022.i = phi ptr [ %i.bh, %._crit_edge.i ], [ %i.ax, %.lr.ph25.i.preheader ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 48
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not1718.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not1718.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph25.i
  %.1.lcssa.i = phi double [ %.023.i, %.lr.ph25.i ], [ %.sroa.speculated.i, %.lr.ph.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 144 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, %i.ay
  br i1 %.not.i, label %.loopexit, label %.lr.ph25.i

.lr.ph.i:                                         ; preds = %.lr.ph25.i, %.lr.ph.i
  %.120.i = phi double [ %.sroa.speculated.i, %.lr.ph.i ], [ %.023.i, %.lr.ph25.i ] ; 2 uses
  %.sroa.09.019.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %i.be, %.lr.ph25.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.09.019.i, i64 152 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8
  %i.bk = fsub double %i.bj, %i.bc                ; 3 uses
  store double %i.bk, ptr %i.bi, align 8
  %i.bl = fcmp olt double %.120.i, %i.bk
  %.sroa.speculated.i = select i1 %i.bl, double %i.bk, double %.120.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.09.019.i, i64 160 ; 2 uses
  %.not17.i = icmp eq ptr %i.bm, %i.bg
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

.loopexit:                                        ; preds = %._crit_edge.i
  store double %.1.lcssa.i, ptr %i.y, align 8
  %i.bn = load ptr, ptr %16, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8            ; 2 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 32
  invoke void @_ZN6Assimp11SMDImporter21CreateOutputAnimationEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(226) %0, i32 noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %.loopexit, %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.021.026, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.bs, %i.u
  br i1 %.not, label %._crit_edge, label %bb.h

bb.l:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %bb.j, %bb.b
  %.pn15.pn = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.ba, %bb.j ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.ar, %bb.f ]
  call void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn15.pn
}

declare void @_ZN6Assimp19SkeletonMeshBuilderC1EP7aiSceneP6aiNodeb(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter15LogErrorNoThrowEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(226) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.c = load i32, ptr %i.b, align 4
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.c, ptr noundef %1) #27 ; 0 uses
  %i.e = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 1 dereferenceable(1024) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(1024) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(1024) %1) #27
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 1 dereferenceable(1024) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA1024_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3) #27
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA1024_cEERKT_.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8, !alias.scope !68
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8, !alias.scope !68
  store i8 0, ptr %i.d, align 8, !alias.scope !68
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !68 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !68 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i.i.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA1024_cEERKT_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !noalias !68 ; 2 uses
  %i.m = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.l, i64 noundef %i.o)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !alias.scope !68 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %.body, label %.body.sink.split

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA1024_cEERKT_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %bb.c
  %i.u = load ptr, ptr %2, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.u)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.v = load ptr, ptr %2, align 8                ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.d, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.z, ptr %3, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %3, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #27
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.am) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.g:                                             ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %2, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  br i1 %i.ap, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.r, %bb.d ], [ %i.ao, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.an, %bb.g ]
  %i.aq = load i64, ptr %i.d, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ar) #30
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.an, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp11SMDImporter10LogWarningEPKc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(226) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.c = load i32, ptr %i.b, align 4
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.8, i32 noundef %i.c, ptr noundef %1) #27 ; 0 uses
  %i.e = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull align 1 dereferenceable(1024) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(1024) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(1024) %1) #27
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 1 dereferenceable(1024) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA1024_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIjfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  %.068.i.i.i.i85.ph = phi i64 [ %2, %vector.memcheck254 ], [ %2, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE11_M_allocateEm.exit ], [ %i.ea, %middle.block271 ] ; 4 uses
  %i.ef = add i64 %.068.i.i.i.i85.ph, -1
  %xtraiter = and i64 %.068.i.i.i.i85.ph, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i83.prol.loopexit, label %.lr.ph.i.i.i.i83.prol

.lr.ph.i.i.i.i83.prol:                            ; preds = %.lr.ph.i.i.i.i83.preheader, %.lr.ph.i.i.i.i83.prol
  %.09.i.i.i.i84.prol = phi ptr [ %i.ei, %.lr.ph.i.i.i.i83.prol ], [ %.09.i.i.i.i84.ph, %.lr.ph.i.i.i.i83.preheader ] ; 2 uses
  %.068.i.i.i.i85.prol = phi i64 [ %i.eh, %.lr.ph.i.i.i.i83.prol ], [ %.068.i.i.i.i85.ph, %.lr.ph.i.i.i.i83.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i83.prol ], [ 0, %.lr.ph.i.i.i.i83.preheader ]
  %i.eg = load i64, ptr %3, align 4
  store i64 %i.eg, ptr %.09.i.i.i.i84.prol, align 4
  %i.eh = add i64 %.068.i.i.i.i85.prol, -1        ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i84.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i83.prol.loopexit, label %.lr.ph.i.i.i.i83.prol, !llvm.loop !260

.lr.ph.i.i.i.i83.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i83.prol, %.lr.ph.i.i.i.i83.preheader
  %.09.i.i.i.i84.unr = phi ptr [ %.09.i.i.i.i84.ph, %.lr.ph.i.i.i.i83.preheader ], [ %i.ei, %.lr.ph.i.i.i.i83.prol ]
  %.068.i.i.i.i85.unr = phi i64 [ %.068.i.i.i.i85.ph, %.lr.ph.i.i.i.i83.preheader ], [ %i.eh, %.lr.ph.i.i.i.i83.prol ]
  %i.ej = icmp ult i64 %i.ef, 7
  br i1 %i.ej, label %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88, label %.lr.ph.i.i.i.i83

.lr.ph.i.i.i.i83:                                 ; preds = %.lr.ph.i.i.i.i83.prol.loopexit, %.lr.ph.i.i.i.i83
  %.09.i.i.i.i84 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i83 ], [ %.09.i.i.i.i84.unr, %.lr.ph.i.i.i.i83.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i85 = phi i64 [ %i.ez, %.lr.ph.i.i.i.i83 ], [ %.068.i.i.i.i85.unr, %.lr.ph.i.i.i.i83.prol.loopexit ]
  %i.ek = load i64, ptr %3, align 4
  store i64 %i.ek, ptr %.09.i.i.i.i84, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i84, i64 8
  %i.em = load i64, ptr %3, align 4
  store i64 %i.em, ptr %i.el, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i84, i64 16
  %i.eo = load i64, ptr %3, align 4
  store i64 %i.eo, ptr %i.en, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i84, i64 24
  %i.eq = load i64, ptr %3, align 4
  store i64 %i.eq, ptr %i.ep, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i84, i64 32
  %i.es = load i64, ptr %3, align 4
  store i64 %i.es, ptr %i.er, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i84, i64 40
  %i.eu = load i64, ptr %3, align 4
  store i64 %i.eu, ptr %i.et, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i84, i64 48
  %i.ew = load i64, ptr %3, align 4
  store i64 %i.ew, ptr %i.ev, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i84, i64 56
  %i.ey = load i64, ptr %3, align 4
  store i64 %i.ey, ptr %i.ex, align 4
  %i.ez = add i64 %.068.i.i.i.i85, -8             ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i84, i64 64
  %.not.i.i.i.i86.7 = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i.i86.7, label %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88, label %.lr.ph.i.i.i.i83, !llvm.loop !261

_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88: ; preds = %.lr.ph.i.i.i.i83.prol.loopexit, %.lr.ph.i.i.i.i83, %middle.block271
  %.not11.i.i.i.i.i89 = icmp eq ptr %i.de, %1
  br i1 %.not11.i.i.i.i.i89, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i90.preheader

.lr.ph.i.i.i.i.i90.preheader:                     ; preds = %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88
  %i.fb = add i64 %i.do, -8
  %i.fc = sub i64 %i.fb, %i.df                    ; 2 uses
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check278 = icmp ult i64 %i.fc, 56
  %i.ff = sub i64 %i.dt, %i.df
  %diff.check276 = icmp ult i64 %i.ff, 32
  %or.cond313 = or i1 %min.iters.check278, %diff.check276
  br i1 %or.cond313, label %.lr.ph.i.i.i.i.i90.preheader315, label %vector.ph279

vector.ph279:                                     ; preds = %.lr.ph.i.i.i.i.i90.preheader
  %n.vec281 = and i64 %i.fe, 4611686018427387900  ; 3 uses
  %i.fg = shl i64 %n.vec281, 3                    ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ds, i64 %i.fg  ; 2 uses
  %i.fi = getelementptr i8, ptr %i.de, i64 %i.fg
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph279
  %index283 = phi i64 [ 0, %vector.ph279 ], [ %index.next288, %vector.body282 ] ; 2 uses
  %i.fj = shl i64 %index283, 3                    ; 2 uses
  %next.gep284 = getelementptr i8, ptr %i.ds, i64 %i.fj ; 2 uses
  %next.gep285 = getelementptr i8, ptr %i.de, i64 %i.fj ; 2 uses
  %i.fk = getelementptr i8, ptr %next.gep285, i64 16
  %wide.load286 = load <2 x i64>, ptr %next.gep285, align 4
  %wide.load287 = load <2 x i64>, ptr %i.fk, align 4
  %i.fl = getelementptr i8, ptr %next.gep284, i64 16
  store <2 x i64> %wide.load286, ptr %next.gep284, align 4
  store <2 x i64> %wide.load287, ptr %i.fl, align 4
  %index.next288 = add nuw i64 %index283, 4       ; 2 uses
  %i.fm = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.fm, label %middle.block289, label %vector.body282, !llvm.loop !262

middle.block289:                                  ; preds = %vector.body282
  %cmp.n290 = icmp eq i64 %i.fe, %n.vec281
  br i1 %cmp.n290, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i90.preheader315

.lr.ph.i.i.i.i.i90.preheader315:                  ; preds = %.lr.ph.i.i.i.i.i90.preheader, %middle.block289
  %.013.i.i.i.i.i91.ph = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.fh, %middle.block289 ]
  %.sroa.08.012.i.i.i.i.i92.ph = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i90.preheader ], [ %i.fi, %middle.block289 ]
  br label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %.lr.ph.i.i.i.i.i90.preheader315, %.lr.ph.i.i.i.i.i90
  %.013.i.i.i.i.i91 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i90 ], [ %.013.i.i.i.i.i91.ph, %.lr.ph.i.i.i.i.i90.preheader315 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i92 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i90 ], [ %.sroa.08.012.i.i.i.i.i92.ph, %.lr.ph.i.i.i.i.i90.preheader315 ] ; 2 uses
  %i.fn = load i64, ptr %.sroa.08.012.i.i.i.i.i92, align 4
  store i64 %i.fn, ptr %.013.i.i.i.i.i91, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i92, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i91, i64 8 ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.fo, %1
  br i1 %.not.i.i.i.i.i93, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i90, !llvm.loop !263

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i90, %middle.block289, %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88
  %.0.lcssa.i.i.i.i.i94 = phi ptr [ %i.ds, %_ZSt24__uninitialized_fill_n_aIPSt4pairIjfEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit88 ], [ %i.fh, %middle.block289 ], [ %i.fp, %.lr.ph.i.i.i.i.i90 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i94294 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i94 to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa.i.i.i.i.i94, i64 %2 ; 5 uses
  %.not11.i.i.i.i.i95 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i95, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101, label %.lr.ph.i.i.i.i.i96.preheader

.lr.ph.i.i.i.i.i96.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.fr = add i64 %i.f, -8
  %i.fs = sub i64 %i.fr, %i.do                    ; 2 uses
  %i.ft = lshr i64 %i.fs, 3
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check297 = icmp ult i64 %i.fs, 104
  br i1 %min.iters.check297, label %.lr.ph.i.i.i.i.i96.preheader314, label %vector.memcheck293

vector.memcheck293:                               ; preds = %.lr.ph.i.i.i.i.i96.preheader
  %i.fv = shl i64 %2, 3
  %i.fw = add i64 %i.fv, %.0.lcssa.i.i.i.i.i94294
  %i.fx = sub i64 %i.fw, %i.do
  %diff.check295 = icmp ult i64 %i.fx, 32
  br i1 %diff.check295, label %.lr.ph.i.i.i.i.i96.preheader314, label %vector.ph298

vector.ph298:                                     ; preds = %vector.memcheck293
  %n.vec300 = and i64 %i.fu, 4611686018427387900  ; 3 uses
  %i.fy = shl i64 %n.vec300, 3                    ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fq, i64 %i.fy  ; 2 uses
  %i.ga = getelementptr i8, ptr %1, i64 %i.fy
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph298
  %index302 = phi i64 [ 0, %vector.ph298 ], [ %index.next307, %vector.body301 ] ; 2 uses
  %i.gb = shl i64 %index302, 3                    ; 2 uses
  %next.gep303 = getelementptr i8, ptr %i.fq, i64 %i.gb ; 2 uses
  %next.gep304 = getelementptr i8, ptr %1, i64 %i.gb ; 2 uses
  %i.gc = getelementptr i8, ptr %next.gep304, i64 16
  %wide.load305 = load <2 x i64>, ptr %next.gep304, align 4
  %wide.load306 = load <2 x i64>, ptr %i.gc, align 4
  %i.gd = getelementptr i8, ptr %next.gep303, i64 16
  store <2 x i64> %wide.load305, ptr %next.gep303, align 4
  store <2 x i64> %wide.load306, ptr %i.gd, align 4
  %index.next307 = add nuw i64 %index302, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next307, %n.vec300
  br i1 %i.ge, label %middle.block308, label %vector.body301, !llvm.loop !264

middle.block308:                                  ; preds = %vector.body301
  %cmp.n309 = icmp eq i64 %i.fu, %n.vec300
  br i1 %cmp.n309, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101, label %.lr.ph.i.i.i.i.i96.preheader314

.lr.ph.i.i.i.i.i96.preheader314:                  ; preds = %vector.memcheck293, %.lr.ph.i.i.i.i.i96.preheader, %middle.block308
  %.013.i.i.i.i.i97.ph = phi ptr [ %i.fq, %vector.memcheck293 ], [ %i.fq, %.lr.ph.i.i.i.i.i96.preheader ], [ %i.fz, %middle.block308 ]
  %.sroa.08.012.i.i.i.i.i98.ph = phi ptr [ %1, %vector.memcheck293 ], [ %1, %.lr.ph.i.i.i.i.i96.preheader ], [ %i.ga, %middle.block308 ]
  br label %.lr.ph.i.i.i.i.i96

.lr.ph.i.i.i.i.i96:                               ; preds = %.lr.ph.i.i.i.i.i96.preheader314, %.lr.ph.i.i.i.i.i96
  %.013.i.i.i.i.i97 = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i96 ], [ %.013.i.i.i.i.i97.ph, %.lr.ph.i.i.i.i.i96.preheader314 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i98 = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i96 ], [ %.sroa.08.012.i.i.i.i.i98.ph, %.lr.ph.i.i.i.i.i96.preheader314 ] ; 2 uses
  %i.gf = load i64, ptr %.sroa.08.012.i.i.i.i.i98, align 4
  store i64 %i.gf, ptr %.013.i.i.i.i.i97, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i98, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i97, i64 8 ; 2 uses
  %.not.i.i.i.i.i99 = icmp eq ptr %i.gg, %i.d
  br i1 %.not.i.i.i.i.i99, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101, label %.lr.ph.i.i.i.i.i96, !llvm.loop !265

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101: ; preds = %.lr.ph.i.i.i.i.i96, %middle.block308, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i100 = phi ptr [ %i.fq, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.fz, %middle.block308 ], [ %i.gh, %.lr.ph.i.i.i.i.i96 ]
  %.not.i102 = icmp eq ptr %i.de, null
  br i1 %.not.i102, label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101
  %i.gi = load ptr, ptr %i.a, align 8
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = sub i64 %i.gj, %i.df
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.gk) #30
  br label %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit101, %bb.i
  store ptr %i.ds, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i100, ptr %i.c, align 8
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dn
  store ptr %i.gl, ptr %i.a, align 8
  br label %_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit

_ZSt4fillIPSt4pairIjfES1_EvT_S3_RKT0_.exit:       ; preds = %scalar.ph159, %.lr.ph.i.i.i, %middle.block175, %middle.block251, %_ZSt22__uninitialized_move_aIPSt4pairIjfES2_SaIS1_EET0_T_S5_S4_RT1_.exit76.thread, %_ZNSt12_Vector_baseISt4pairIjfESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i8 0, i8 2}
!6 = distinct !{null}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!9 = distinct !{!9, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!10 = !{!11}
!11 = distinct !{!11, !9, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!12 = !{!8, !11}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{null, null}
!18 = distinct !{!18, !4}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!21 = distinct !{!21, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!22 = !{!23}
!23 = distinct !{!23, !21, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!24 = distinct !{!24, !4, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !4, !25}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{}
!32 = distinct !{!32, !4, !25, !26}
!33 = distinct !{!33, !4}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!36 = distinct !{!36, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!39 = distinct !{!39, !4, !25, !26}
!40 = distinct !{!40, !4, !25}
!41 = distinct !{!41, !4}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!44 = distinct !{!44, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_"}
!45 = !{!46}
!46 = distinct !{!46, !44, !"_ZSt19__relocate_object_aISt4pairIjfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!47 = distinct !{!47, !4, !25, !26}
!48 = distinct !{!48, !4, !25}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4, !25}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4}
!54 = distinct !{!54, !4}
!55 = distinct !{!55, !4}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!58 = distinct !{!58, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!61 = distinct !{!61, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!64 = distinct !{!64, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!67 = distinct !{!67, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!68 = !{!66, !63, !60, !57}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!71 = distinct !{!71, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!74 = distinct !{!74, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!77 = distinct !{!77, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!80 = distinct !{!80, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!81 = !{!79, !76, !73, !70}
!82 = distinct !{!82, !4}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!85 = distinct !{!85, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!86 = !{!87, !84}
!87 = distinct !{!87, !88, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!88 = distinct !{!88, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!91 = distinct !{!91, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!94 = distinct !{!94, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!97 = distinct !{!97, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!98 = !{!99, !96}
!99 = distinct !{!99, !100, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!100 = distinct !{!100, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!103 = distinct !{!103, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!104 = distinct !{!104, !4}
!105 = distinct !{!105, !30}
!106 = distinct !{!106, !4}
!107 = distinct !{!107, !4}
!108 = distinct !{!108, !4}
!109 = distinct !{!109, !4}
!110 = distinct !{!110, !4}
!111 = distinct !{!111, !4}
!112 = distinct !{!112, !4}
!113 = distinct !{!113, !4}
!114 = distinct !{!114, !4}
!115 = distinct !{!115, !4}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!118 = distinct !{!118, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_"}
!119 = !{!120}
!120 = distinct !{!120, !118, !"_ZSt19__relocate_object_aIN6Assimp3SMD4FaceES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!121 = !{!117, !120}
!122 = distinct !{!122, !4}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!125 = distinct !{!125, !"_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_"}
!126 = !{!127}
!127 = distinct !{!127, !125, !"_ZSt19__relocate_object_aIN6Assimp3SMD4BoneES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!128 = !{!124, !127}
!129 = distinct !{!129, !4}
!130 = distinct !{!130, !4}
!131 = distinct !{!131, !4}
!132 = distinct !{!132, !4}
!133 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!134 = distinct !{!134, !4}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!137 = distinct !{!137, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!140 = distinct !{!140, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!141 = !{!142}
end_hunk_1

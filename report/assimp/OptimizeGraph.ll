inline.NumInlined: 624
inline.NumDeleted: 303
begin_hunk_0
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

@_ZN6Assimp20OptimizeGraphProcessC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp20OptimizeGraphProcessC2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp20OptimizeGraphProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp20OptimizeGraphProcessE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.g, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp20OptimizeGraphProcess8IsActiveEj(ptr nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = and i32 %1, 4194304
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp20OptimizeGraphProcess15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  invoke void @_ZNK6Assimp8Importer17GetPropertyStringEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.c = load ptr, ptr %3, align 8                ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZN6Assimp20ConvertListToStringsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_4listIS5_SaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZN6Assimp20OptimizeGraphProcess17AddLockedNodeListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp20OptimizeGraphProcess17AddLockedNodeListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.h = load ptr, ptr %2, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN6Assimp20OptimizeGraphProcess17AddLockedNodeListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZN6Assimp20OptimizeGraphProcess17AddLockedNodeListERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.b
  %i.p = load i64, ptr %i.a, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.c
  %i.v = load i64, ptr %i.t, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn6 = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.r, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZNK6Assimp8Importer17GetPropertyStringEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp20OptimizeGraphProcess18CollectNewChildrenEP6aiNodeRNSt7__cxx114listIS2_SaIS2_EEE(ptr noundef nonnull align 8 captures(address) dereferenceable(144) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::list.9", align 8 ; 28 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %class.aiMatrix4x4t, align 16       ; 22 uses
  %7 = alloca %"class.std::__cxx11::list.9", align 8 ; 21 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %3, ptr %i.i, align 8
  store ptr %3, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store i64 0, ptr %i.j, align 8
  %i.k = load i32, ptr %i.d, align 8
  %.not492 = icmp eq i32 %i.k, 0
  br i1 %.not492, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1112 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.n, ptr %4, align 8
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.o, ptr %i.c, align 8
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %._crit_edge
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.q, ptr %4, align 8
  %i.r = load i64, ptr %i.c, align 8
  store i64 %i.r, ptr %i.n, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %._crit_edge
  %i.s = phi ptr [ %i.q, %.noexc ], [ %i.n, %._crit_edge ] ; 2 uses
  switch i64 %i.o, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.g
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.m, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %bb.g

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.m, i64 %i.o, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.u = load ptr, ptr %i.l, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8
  invoke void @_ZN6Assimp20OptimizeGraphProcess18CollectNewChildrenEP6aiNodeRNSt7__cxx114listIS2_SaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.l, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store ptr null, ptr %i.y, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %i.d, align 8
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.d, label %._crit_edge, !llvm.loop !3

bb.f:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.g:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.ad = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = load ptr, ptr %4, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.ai, null
  %.pre = load ptr, ptr %4, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.ak = load i64, ptr %i.ae, align 8            ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.am) ; 2 uses
  %i.an = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.an, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call i32 @memcmp(ptr noundef %i.ap, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.h
  %i.ar = sub i64 %i.am, %i.ak
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ar, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.aq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.as = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.as, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.as, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, label %bb.h, !llvm.loop !5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.at = icmp eq ptr %.19.i.i.i, %i.aj
  br i1 %i.at, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.av, i64 %i.ak) ; 2 uses
  %i.aw = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ay, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.i
  %i.ba = sub i64 %i.ak, %i.av
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ba, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.az, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.bb = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i, %bb.g
  %.sroa.0.0.i.i = phi i1 [ true, %bb.g ], [ true, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i ], [ %i.bb, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ]
  %i.bc = icmp eq ptr %.pre, %i.n
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit
  %i.bd = load i64, ptr %i.n, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.be) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.sroa.0.0.i.i, label %bb.j, label %bb.z

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not433481 = icmp eq ptr %i.bf, %3
  br i1 %.not433481, label %._crit_edge485, label %.lr.ph484

.lr.ph484:                                        ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 1028
  %.sroa.7347.0..sroa_idx348 = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %.sroa.9350.0..sroa_idx351 = getelementptr inbounds nuw i8, ptr %1, i64 1036
  %.sroa.11353.0..sroa_idx354 = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %.sroa.13356.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %1, i64 1044
  %.sroa.15359.0..sroa_idx360 = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %.sroa.17362.0..sroa_idx363 = getelementptr inbounds nuw i8, ptr %1, i64 1052
  %.sroa.19365.0..sroa_idx366 = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %.sroa.21368.0..sroa_idx369 = getelementptr inbounds nuw i8, ptr %1, i64 1060
  %.sroa.23371.0..sroa_idx372 = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %.sroa.25374.0..sroa_idx375 = getelementptr inbounds nuw i8, ptr %1, i64 1068
  %.sroa.27377.0..sroa_idx378 = getelementptr inbounds nuw i8, ptr %1, i64 1072
  %.sroa.29380.0..sroa_idx381 = getelementptr inbounds nuw i8, ptr %1, i64 1076
  %.sroa.31383.0..sroa_idx384 = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %.sroa.33386.0..sroa_idx387 = getelementptr inbounds nuw i8, ptr %1, i64 1084
  %.sroa.35389.0..sroa_idx390 = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.l

._crit_edge485.loopexit:                          ; preds = %.backedge
  %.pre528 = load ptr, ptr %3, align 8
  %i.bk = icmp eq ptr %.pre528, %3
  br label %._crit_edge485

._crit_edge485:                                   ; preds = %._crit_edge485.loopexit, %bb.j
  %i.bl = phi i1 [ %i.bk, %._crit_edge485.loopexit ], [ true, %bb.j ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.bn = load i32, ptr %i.bm, align 8
  %.not122 = icmp eq i32 %i.bn, 0
  %or.cond = select i1 %.not122, i1 %i.bl, i1 false
  br i1 %or.cond, label %bb.y, label %bb.w

bb.k:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bq

bb.l:                                             ; preds = %.lr.ph484, %.backedge
  %.sroa.0396.0482 = phi ptr [ %i.bf, %.lr.ph484 ], [ %.sroa.0396.0.be, %.backedge ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0396.0482, i64 16 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 3 uses
  store ptr %i.bg, ptr %5, align 8
  %i.bs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.br) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.bs, ptr %i.b, align 8
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %.noexc.i136, label %._crit_edge.i.i135

.noexc.i136:                                      ; preds = %bb.l
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc137 unwind label %bb.t  ; 2 uses

.noexc137:                                        ; preds = %.noexc.i136
  store ptr %i.bu, ptr %5, align 8
  %i.bv = load i64, ptr %i.b, align 8
  store i64 %i.bv, ptr %i.bg, align 8
  br label %._crit_edge.i.i135

._crit_edge.i.i135:                               ; preds = %.noexc137, %bb.l
  %i.bw = phi ptr [ %i.bu, %.noexc137 ], [ %i.bg, %bb.l ] ; 2 uses
  switch i64 %i.bs, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i135
  %i.bx = load i8, ptr %i.br, align 1
  store i8 %i.bx, ptr %i.bw, align 1
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i135
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %i.br, i64 %i.bs, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i135
  %i.by = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.by, ptr %i.bh, align 8
  %i.bz = load ptr, ptr %5, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.cb = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not10.i.i.i139 = icmp eq ptr %i.cb, null
  %.pre527 = load ptr, ptr %5, align 8            ; 4 uses
  br i1 %.not10.i.i.i139, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit169, label %.lr.ph.i.i.i140

.lr.ph.i.i.i140:                                  ; preds = %bb.o
  %i.cc = load i64, ptr %i.bh, align 8            ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i146, %.lr.ph.i.i.i140
  %.012.i.i.i141 = phi ptr [ %i.cb, %.lr.ph.i.i.i140 ], [ %.1.i.i.i151, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i146 ] ; 4 uses
  %.0811.i.i.i142 = phi ptr [ %i.aj, %.lr.ph.i.i.i140 ], [ %.19.i.i.i148, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i146 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i141, i64 40
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i143 = call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.ce) ; 2 uses
  %i.cf = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i143, 0
  br i1 %i.cf, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i165, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i144

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i144: ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i141, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call i32 @memcmp(ptr noundef %i.ch, ptr noundef %.pre527, i64 noundef %.sroa.speculated.i.i.i.i.i.i143) #23 ; 2 uses
  %.not.i.i.i.i.i.i145 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i145, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i165, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i146

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i165: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i144, %bb.p
  %i.cj = sub i64 %i.ce, %i.cc
  %spec.select7.i.i.i.i.i.i.i166 = call i64 @llvm.smax.i64(i64 %i.cj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i167 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i166, i64 2147483647)
  %.0.i6.i.i.i.i.i.i168 = trunc nsw i64 %.08.i.i.i.i.i.i.i167 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i146

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i146: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i165, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i144
  %.0.i.i.i.i.i.i147 = phi i32 [ %i.ci, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i144 ], [ %.0.i6.i.i.i.i.i.i168, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i165 ]
  %i.ck = icmp slt i32 %.0.i.i.i.i.i.i147, 0      ; 2 uses
  %.19.i.i.i148 = select i1 %i.ck, ptr %.0811.i.i.i142, ptr %.012.i.i.i141 ; 4 uses
  %.1.in.v.i.i.i149 = select i1 %i.ck, i64 24, i64 16
  %.1.in.i.i.i150 = getelementptr inbounds nuw i8, ptr %.012.i.i.i141, i64 %.1.in.v.i.i.i149
  %.1.i.i.i151 = load ptr, ptr %.1.in.i.i.i150, align 8 ; 2 uses
  %.not.i.i.i152 = icmp eq ptr %.1.i.i.i151, null
  br i1 %.not.i.i.i152, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i153, label %bb.p, !llvm.loop !5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i153: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i146
  %i.cl = icmp eq ptr %.19.i.i.i148, %i.aj
  br i1 %i.cl, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit169, label %bb.q

bb.q:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i153
  %i.cm = getelementptr inbounds nuw i8, ptr %.19.i.i.i148, i64 40
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i154 = call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cc) ; 2 uses
  %i.co = icmp eq i64 %.sroa.speculated.i.i.i.i.i154, 0
  br i1 %i.co, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i161, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i155

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i155: ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i148, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call i32 @memcmp(ptr noundef %.pre527, ptr noundef %i.cq, i64 noundef %.sroa.speculated.i.i.i.i.i154) #23 ; 2 uses
  %.not.i.i.i.i.i156 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i.i.i156, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i161, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i157

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i161: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i155, %bb.q
  %i.cs = sub i64 %i.cc, %i.cn
  %spec.select7.i.i.i.i.i.i162 = call i64 @llvm.smax.i64(i64 %i.cs, i64 -2147483648)
  %.08.i.i.i.i.i.i163 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i162, i64 2147483647)
  %.0.i6.i.i.i.i.i164 = trunc nsw i64 %.08.i.i.i.i.i.i163 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i157

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i157: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i161, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i155
  %.0.i.i.i.i.i158 = phi i32 [ %i.cr, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i155 ], [ %.0.i6.i.i.i.i.i164, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i161 ]
  %i.ct = icmp slt i32 %.0.i.i.i.i.i158, 0
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit169

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit169: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i157, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i153, %bb.o
  %.sroa.0.0.i.i160 = phi i1 [ true, %bb.o ], [ true, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i153 ], [ %i.ct, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i157 ]
  %i.cu = icmp eq ptr %.pre527, %i.bg
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit169
  %i.cv = load i64, ptr %i.bg, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %.pre527, i64 noundef %i.cw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE4findERKS5_.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.sroa.0.0.i.i160, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.cx = load ptr, ptr %i.bp, align 8            ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1028 ; 2 uses
  %.sroa.0345.0.copyload346 = load float, ptr %i.bi, align 4
  %.sroa.7347.0.copyload349 = load float, ptr %.sroa.7347.0..sroa_idx348, align 4
  %.sroa.9350.0.copyload352 = load float, ptr %.sroa.9350.0..sroa_idx351, align 4
  %.sroa.11353.0.copyload355 = load float, ptr %.sroa.11353.0..sroa_idx354, align 4
  %.sroa.13356.0.copyload358 = load float, ptr %.sroa.13356.0..sroa_idx357, align 4
  %.sroa.15359.0.copyload361 = load float, ptr %.sroa.15359.0..sroa_idx360, align 4
  %.sroa.17362.0.copyload364 = load float, ptr %.sroa.17362.0..sroa_idx363, align 4
  %.sroa.19365.0.copyload367 = load float, ptr %.sroa.19365.0..sroa_idx366, align 4
  %.sroa.21368.0.copyload370 = load float, ptr %.sroa.21368.0..sroa_idx369, align 4
  %.sroa.23371.0.copyload373 = load float, ptr %.sroa.23371.0..sroa_idx372, align 4
  %.sroa.25374.0.copyload376 = load float, ptr %.sroa.25374.0..sroa_idx375, align 4
  %.sroa.27377.0.copyload379 = load float, ptr %.sroa.27377.0..sroa_idx378, align 4
  %.sroa.29380.0.copyload382 = load float, ptr %.sroa.29380.0..sroa_idx381, align 4
  %.sroa.31383.0.copyload385 = load float, ptr %.sroa.31383.0..sroa_idx384, align 4
  %.sroa.33386.0.copyload388 = load float, ptr %.sroa.33386.0..sroa_idx387, align 4
  %.sroa.35389.0.copyload391 = load float, ptr %.sroa.35389.0..sroa_idx390, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 1044 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 1060 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 1076 ; 2 uses
  %i.dc = load <4 x float>, ptr %i.cy, align 4    ; 4 uses
  %i.dd = load <4 x float>, ptr %i.cz, align 4    ; 4 uses
  %i.de = insertelement <4 x float> poison, float %.sroa.7347.0.copyload349, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = fmul <4 x float> %i.df, %i.dd
  %i.dh = insertelement <4 x float> poison, float %.sroa.0345.0.copyload346, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.di, <4 x float> %i.dg)
  %i.dk = load <4 x float>, ptr %i.da, align 4    ; 4 uses
  %i.dl = insertelement <4 x float> poison, float %.sroa.9350.0.copyload352, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.dm, <4 x float> %i.dj)
  %i.do = load <4 x float>, ptr %i.db, align 4    ; 4 uses
  %i.dp = insertelement <4 x float> poison, float %.sroa.11353.0.copyload355, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.dq, <4 x float> %i.dn)
  store <4 x float> %i.dr, ptr %i.cy, align 4
  %i.ds = insertelement <4 x float> poison, float %.sroa.15359.0.copyload361, i64 0
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> zeroinitializer
  %i.du = fmul <4 x float> %i.dt, %i.dd
  %i.dv = insertelement <4 x float> poison, float %.sroa.13356.0.copyload358, i64 0
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.dw, <4 x float> %i.du)
  %i.dy = insertelement <4 x float> poison, float %.sroa.17362.0.copyload364, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.dz, <4 x float> %i.dx)
  %i.eb = insertelement <4 x float> poison, float %.sroa.19365.0.copyload367, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.ec, <4 x float> %i.ea)
  store <4 x float> %i.ed, ptr %i.cz, align 4
  %i.ee = insertelement <4 x float> poison, float %.sroa.23371.0.copyload373, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = fmul <4 x float> %i.ef, %i.dd
  %i.eh = insertelement <4 x float> poison, float %.sroa.21368.0.copyload370, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ej = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.ei, <4 x float> %i.eg)
  %i.ek = insertelement <4 x float> poison, float %.sroa.25374.0.copyload376, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.el, <4 x float> %i.ej)
  %i.en = insertelement <4 x float> poison, float %.sroa.27377.0.copyload379, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.eo, <4 x float> %i.em)
  store <4 x float> %i.ep, ptr %i.da, align 4
  %i.eq = insertelement <4 x float> poison, float %.sroa.31383.0.copyload385, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = fmul <4 x float> %i.er, %i.dd
  %i.et = insertelement <4 x float> poison, float %.sroa.29380.0.copyload382, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dc, <4 x float> %i.eu, <4 x float> %i.es)
  %i.ew = insertelement <4 x float> poison, float %.sroa.33386.0.copyload388, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> %i.ex, <4 x float> %i.ev)
  %i.ez = insertelement <4 x float> poison, float %.sroa.35389.0.copyload391, i64 0
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.fa, <4 x float> %i.ey)
  store <4 x float> %i.fb, ptr %i.db, align 4
  %i.fc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.s unwind label %bb.u       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.bp, align 8
  store ptr %i.fe, ptr %i.fd, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  %i.ff = load i64, ptr %i.bj, align 8
  %i.fg = add i64 %i.ff, 1
  store i64 %i.fg, ptr %i.bj, align 8
  %i.fh = load ptr, ptr %.sroa.0396.0482, align 8
  %i.fi = load i64, ptr %i.j, align 8
  %i.fj = add i64 %i.fi, -1
  store i64 %i.fj, ptr %i.j, align 8
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0396.0482) #23
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0396.0482, i64 noundef 24) #24
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.v
  %.sroa.0396.0.be = phi ptr [ %i.fh, %bb.s ], [ %i.fm, %bb.v ] ; 2 uses
  %.not433 = icmp eq ptr %.sroa.0396.0.be, %3
  br i1 %.not433, label %._crit_edge485.loopexit, label %bb.l, !llvm.loop !6

bb.t:                                             ; preds = %.noexc.i136
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bq

bb.u:                                             ; preds = %bb.r
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %i.fm = load ptr, ptr %.sroa.0396.0482, align 8
  br label %.backedge

bb.w:                                             ; preds = %._crit_edge485
  %i.fn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit179 unwind label %bb.x ; 2 uses

_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit179: ; preds = %bb.w
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr %1, ptr %i.fo, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.fp, align 8
  br label %bb.bh

bb.x:                                             ; preds = %bb.z, %bb.w, %bb.bm
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.y:                                             ; preds = %._crit_edge485
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %1) #23
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 1144) #24
  br label %bb.bp

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ft = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.aa unwind label %bb.x      ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store ptr %1, ptr %i.fu, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %2) #23
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = add i64 %i.fw, 1
  store i64 %i.fx, ptr %i.fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store float 1.000000e+00, ptr %6, align 16
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fz, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.gd, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %7, ptr %i.ge, align 8
  store ptr %7, ptr %7, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i64 0, ptr %i.gf, align 8
  %i.gg = load ptr, ptr %3, align 8               ; 2 uses
  %.not429449 = icmp eq ptr %i.gg, %3
  br i1 %.not429449, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit, label %.lr.ph453

.lr.ph453:                                        ; preds = %bb.aa
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.9.0..sroa_idx294 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.11296.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.13.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.19307.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %6, i64 28
  %.sroa.21.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.23312.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %6, i64 36
  %.sroa.29.0..sroa_idx321 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.31323.0..sroa_idx324 = getelementptr inbounds nuw i8, ptr %6, i64 52
  %.sroa.33.0..sroa_idx326 = getelementptr inbounds nuw i8, ptr %6, i64 56
  br label %bb.ab

._crit_edge454:                                   ; preds = %bb.ap
  %.pre513 = load ptr, ptr %7, align 8            ; 2 uses
  %.not = icmp eq ptr %.497, null
  %i.gk = icmp eq ptr %.pre513, %7
  %or.cond428 = select i1 %.not, i1 true, i1 %i.gk
  br i1 %or.cond428, label %._crit_edge461.thread, label %bb.aq

bb.ab:                                            ; preds = %.lr.ph453, %bb.ap
  %.093451 = phi ptr [ null, %.lr.ph453 ], [ %.497, %bb.ap ] ; 5 uses
  %.sroa.0339.0450 = phi ptr [ %i.gg, %.lr.ph453 ], [ %.sroa.0339.3, %bb.ap ] ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0339.0450, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8            ; 10 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1104
  %i.go = load i32, ptr %i.gn, align 8
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.ac, label %.critedge131.thread

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 4 ; 3 uses
  store ptr %i.gh, ptr %8, align 8
  %i.gr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gq) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.gr, ptr %i.a, align 8
  %i.gs = icmp ugt i64 %i.gr, 15
  br i1 %i.gs, label %.noexc.i183, label %._crit_edge.i.i182

.noexc.i183:                                      ; preds = %bb.ac
  %i.gt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc184 unwind label %bb.aj ; 2 uses

.noexc184:                                        ; preds = %.noexc.i183
  store ptr %i.gt, ptr %8, align 8
  %i.gu = load i64, ptr %i.a, align 8
  store i64 %i.gu, ptr %i.gh, align 8
  br label %._crit_edge.i.i182

._crit_edge.i.i182:                               ; preds = %.noexc184, %bb.ac
  %i.gv = phi ptr [ %i.gt, %.noexc184 ], [ %i.gh, %bb.ac ] ; 2 uses
  switch i64 %i.gr, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i182
  %i.gw = load i8, ptr %i.gq, align 1
  store i8 %i.gw, ptr %i.gv, align 1
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr nonnull align 1 %i.gq, i64 %i.gr, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i182
  %i.gx = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.gx, ptr %i.gi, align 8
  %i.gy = load ptr, ptr %8, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gx
  store i8 0, ptr %i.gz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ha = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not10.i.i.i186 = icmp eq ptr %i.ha, null
  %.pre512 = load ptr, ptr %8, align 8            ; 4 uses
  br i1 %.not10.i.i.i186, label %.critedge, label %.lr.ph.i.i.i187

.lr.ph.i.i.i187:                                  ; preds = %bb.af
  %i.hb = load i64, ptr %i.gi, align 8            ; 4 uses
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i193, %.lr.ph.i.i.i187
  %.012.i.i.i188 = phi ptr [ %i.ha, %.lr.ph.i.i.i187 ], [ %.1.i.i.i198, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i193 ] ; 4 uses
  %.0811.i.i.i189 = phi ptr [ %i.aj, %.lr.ph.i.i.i187 ], [ %.19.i.i.i195, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i193 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i.i.i188, i64 40
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i190 = call i64 @llvm.umin.i64(i64 %i.hb, i64 %i.hd) ; 2 uses
  %i.he = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i190, 0
  br i1 %i.he, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i212, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i191

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i191: ; preds = %bb.ag
  %i.hf = getelementptr inbounds nuw i8, ptr %.012.i.i.i188, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = call i32 @memcmp(ptr noundef %i.hg, ptr noundef %.pre512, i64 noundef %.sroa.speculated.i.i.i.i.i.i190) #23 ; 2 uses
  %.not.i.i.i.i.i.i192 = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i.i.i.i.i192, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i212, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i193

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i212: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i191, %bb.ag
  %i.hi = sub i64 %i.hd, %i.hb
  %spec.select7.i.i.i.i.i.i.i213 = call i64 @llvm.smax.i64(i64 %i.hi, i64 -2147483648)
  %.08.i.i.i.i.i.i.i214 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i213, i64 2147483647)
  %.0.i6.i.i.i.i.i.i215 = trunc nsw i64 %.08.i.i.i.i.i.i.i214 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i193

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i193: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i212, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i191
  %.0.i.i.i.i.i.i194 = phi i32 [ %i.hh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i191 ], [ %.0.i6.i.i.i.i.i.i215, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i212 ]
  %i.hj = icmp slt i32 %.0.i.i.i.i.i.i194, 0      ; 2 uses
  %.19.i.i.i195 = select i1 %i.hj, ptr %.0811.i.i.i189, ptr %.012.i.i.i188 ; 4 uses
  %.1.in.v.i.i.i196 = select i1 %i.hj, i64 24, i64 16
  %.1.in.i.i.i197 = getelementptr inbounds nuw i8, ptr %.012.i.i.i188, i64 %.1.in.v.i.i.i196
  %.1.i.i.i198 = load ptr, ptr %.1.in.i.i.i197, align 8 ; 2 uses
  %.not.i.i.i199 = icmp eq ptr %.1.i.i.i198, null
  br i1 %.not.i.i.i199, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i200, label %bb.ag, !llvm.loop !5

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i200: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i193
  %i.hk = icmp eq ptr %.19.i.i.i195, %i.aj
  br i1 %i.hk, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i200
  %i.hl = getelementptr inbounds nuw i8, ptr %.19.i.i.i195, i64 40
  %i.hm = load i64, ptr %i.hl, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i201 = call i64 @llvm.umin.i64(i64 %i.hm, i64 %i.hb) ; 2 uses
  %i.hn = icmp eq i64 %.sroa.speculated.i.i.i.i.i201, 0
  br i1 %i.hn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i208, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i202

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i202: ; preds = %bb.ah
  %i.ho = getelementptr inbounds nuw i8, ptr %.19.i.i.i195, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = call i32 @memcmp(ptr noundef %.pre512, ptr noundef %i.hp, i64 noundef %.sroa.speculated.i.i.i.i.i201) #23 ; 2 uses
  %.not.i.i.i.i.i203 = icmp eq i32 %i.hq, 0
  br i1 %.not.i.i.i.i.i203, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i208, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i204

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i208: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i202, %bb.ah
  %i.hr = sub i64 %i.hb, %i.hm
  %spec.select7.i.i.i.i.i.i209 = call i64 @llvm.smax.i64(i64 %i.hr, i64 -2147483648)
  %.08.i.i.i.i.i.i210 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i209, i64 2147483647)
  %.0.i6.i.i.i.i.i211 = trunc nsw i64 %.08.i.i.i.i.i.i210 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i204

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i204: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i208, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i202
  %.0.i.i.i.i.i205 = phi i32 [ %i.hq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i202 ], [ %.0.i6.i.i.i.i.i211, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i208 ]
  %i.hs = icmp slt i32 %.0.i.i.i.i.i205, 0
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i204, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i200, %bb.af
  %i.ht = phi i1 [ true, %bb.af ], [ %i.hs, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i204 ], [ true, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRKS5_.exit.i.i200 ]
  %i.hu = icmp eq ptr %.pre512, %i.gh
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %.critedge
  %i.hv = load i64, ptr %i.gh, align 8
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %.pre512, i64 noundef %i.hw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.ht, label %.preheader437, label %.critedge131.thread

.preheader437:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gm, i64 1120
  %i.hy = load i32, ptr %i.hx, align 8            ; 3 uses
  %.not493 = icmp eq i32 %i.hy, 0
  br i1 %.not493, label %._crit_edge444.thread, label %.lr.ph443

.lr.ph443:                                        ; preds = %.preheader437
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gm, i64 1128
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = load ptr, ptr %i.gj, align 8
  %wide.trip.count = zext i32 %i.hy to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph443, %bb.ak
  %indvars.iv500 = phi i64 [ 0, %.lr.ph443 ], [ %indvars.iv.next501, %bb.ak ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv500
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = icmp ugt i32 %i.ig, 1
  br i1 %i.ih, label %._crit_edge444, label %bb.ak

bb.aj:                                            ; preds = %.noexc.i183
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bg

bb.ak:                                            ; preds = %bb.ai
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next501, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge444.thread, label %bb.ai, !llvm.loop !7

._crit_edge444:                                   ; preds = %bb.ai
  %i.ij = trunc nuw i64 %indvars.iv500 to i32
  %i.ik = icmp eq i32 %i.hy, %i.ij
  br i1 %i.ik, label %._crit_edge444.thread, label %.critedge131.thread

._crit_edge444.thread:                            ; preds = %bb.ak, %.preheader437, %._crit_edge444
  %.not117 = icmp eq ptr %.093451, null
  %i.il = getelementptr inbounds nuw i8, ptr %i.gm, i64 1028 ; 3 uses
  br i1 %.not117, label %bb.al, label %bb.an

bb.al:                                            ; preds = %._crit_edge444.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %i.il, i64 64, i1 false)
  %i.im = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %6)
          to label %.critedge131.thread unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.an, %bb.al
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.an:                                            ; preds = %._crit_edge444.thread
  %i.io = load <4 x float>, ptr %6, align 16
  %i.ip = load <4 x float>, ptr %i.fy, align 4
  %i.iq = load <4 x float>, ptr %.sroa.9.0..sroa_idx294, align 8
  %i.ir = load <4 x float>, ptr %.sroa.11296.0..sroa_idx297, align 4
  %i.is = load <4 x float>, ptr %.sroa.13.0..sroa_idx299, align 16
  %i.it = load <4 x float>, ptr %i.fz, align 4
  %i.iu = load <4 x float>, ptr %i.ga, align 8
  %i.iv = load <4 x float>, ptr %.sroa.19307.0..sroa_idx308, align 4
  %i.iw = load <4 x float>, ptr %.sroa.21.0..sroa_idx310, align 16
  %i.ix = load <4 x float>, ptr %.sroa.23312.0..sroa_idx313, align 4
  %i.iy = load <4 x float>, ptr %i.gb, align 8
  %i.iz = load <4 x float>, ptr %i.gc, align 4
  %i.ja = load <4 x float>, ptr %.sroa.29.0..sroa_idx321, align 16
  %.sroa.31323.0.copyload325 = load float, ptr %.sroa.31323.0..sroa_idx324, align 4
  %.sroa.33.0.copyload327 = load float, ptr %.sroa.33.0..sroa_idx326, align 8
  %.sroa.35328.0.copyload330 = load float, ptr %i.gd, align 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gm, i64 1044 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gm, i64 1060 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gm, i64 1076 ; 2 uses
  %i.je = load <4 x float>, ptr %i.il, align 4    ; 4 uses
  %i.jf = load <4 x float>, ptr %i.jb, align 4    ; 4 uses
  %i.jg = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jh = fmul <4 x float> %i.jg, %i.jf
  %i.ji = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %i.ji, <4 x float> %i.jh)
  %i.jk = load <4 x float>, ptr %i.jc, align 4    ; 4 uses
  %i.jl = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jk, <4 x float> %i.jl, <4 x float> %i.jj)
  %i.jn = load <4 x float>, ptr %i.jd, align 4    ; 4 uses
  %i.jo = shufflevector <4 x float> %i.ir, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.jo, <4 x float> %i.jm)
  store <4 x float> %i.jp, ptr %i.il, align 4
  %i.jq = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jr = fmul <4 x float> %i.jq, %i.jf
  %i.js = shufflevector <4 x float> %i.is, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %i.js, <4 x float> %i.jr)
  %i.ju = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jk, <4 x float> %i.ju, <4 x float> %i.jt)
  %i.jw = shufflevector <4 x float> %i.iv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.jw, <4 x float> %i.jv)
  store <4 x float> %i.jx, ptr %i.jb, align 4
  %i.jy = shufflevector <4 x float> %i.ix, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jz = fmul <4 x float> %i.jy, %i.jf
  %i.ka = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@_ZN6Assimp20OptimizeGraphProcess18CollectNewChildrenEP6aiNodeRNSt7__cxx114listIS2_SaIS2_EEE:bb.a
  %i.lk = load ptr, ptr %.sroa.0285.0457, align 8 ; 2 uses
  %.not430 = icmp eq ptr %i.lk, %7
  br i1 %.not430, label %._crit_edge461, label %.lr.ph460, !llvm.loop !8

bb.ar:                                            ; preds = %._crit_edge461
  %i.ll = getelementptr inbounds nuw i8, ptr %.497, i64 1120 ; 5 uses
  %i.lm = load i32, ptr %i.ll, align 8
  %i.ln = add i32 %i.lm, %i.lj
  %i.lo = zext i32 %i.ln to i64
  %i.lp = shl nuw nsw i64 %i.lo, 2
  %i.lq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.lp) #25
          to label %.preheader436 unwind label %bb.as ; 3 uses

.preheader436:                                    ; preds = %bb.ar
  %i.lr = load i32, ptr %i.ll, align 8
  %.not494 = icmp eq i32 %i.lr, 0
  br i1 %.not494, label %.lr.ph479, label %.lr.ph465

.lr.ph465:                                        ; preds = %.preheader436
  %i.ls = getelementptr inbounds nuw i8, ptr %.497, i64 1128
  br label %bb.at

.lr.ph479:                                        ; preds = %bb.at, %.preheader436
  %.090.lcssa = phi ptr [ %i.lq, %.preheader436 ], [ %i.ly, %bb.at ]
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.at:                                            ; preds = %.lr.ph465, %bb.at
  %indvars.iv503 = phi i64 [ 0, %.lr.ph465 ], [ %indvars.iv.next504, %bb.at ] ; 2 uses
  %.090463 = phi ptr [ %i.lq, %.lr.ph465 ], [ %i.ly, %bb.at ] ; 2 uses
  %i.lv = load ptr, ptr %i.ls, align 8
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv503
  %i.lx = load i32, ptr %i.lw, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %.090463, i64 4 ; 2 uses
  store i32 %i.lx, ptr %.090463, align 4
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %i.lz = load i32, ptr %i.ll, align 8
  %i.ma = zext i32 %i.lz to i64
  %i.mb = icmp samesign ult i64 %indvars.iv.next504, %i.ma
  br i1 %i.mb, label %bb.at, label %.lr.ph479, !llvm.loop !9

._crit_edge480:                                   ; preds = %._crit_edge474
  %i.mc = getelementptr inbounds nuw i8, ptr %.497, i64 1128 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8            ; 2 uses
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %bb.bf, label %bb.be

bb.au:                                            ; preds = %.lr.ph479, %._crit_edge474
  %.191478 = phi ptr [ %.090.lcssa, %.lr.ph479 ], [ %.292.lcssa, %._crit_edge474 ] ; 2 uses
  %.sroa.0281.0477 = phi ptr [ %i.le, %.lr.ph479 ], [ %i.xd, %._crit_edge474 ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0281.0477, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8            ; 20 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 1120 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 8
  %.not495 = icmp eq i32 %i.mi, 0
  br i1 %.not495, label %._crit_edge474, label %.lr.ph473

.lr.ph473:                                        ; preds = %bb.au
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 1128
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 1028 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 1048 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 1068 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 1088
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mg, i64 1072 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mg, i64 1084
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mg, i64 1052 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mg, i64 1080
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mg, i64 1064 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mg, i64 1056 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mg, i64 1032 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mg, i64 1076
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mg, i64 1060 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mg, i64 1044 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mg, i64 1036 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mg, i64 1040 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph473, %._crit_edge469
  %indvars.iv509 = phi i64 [ 0, %.lr.ph473 ], [ %indvars.iv.next510, %._crit_edge469 ] ; 2 uses
  %.292470 = phi ptr [ %.191478, %.lr.ph473 ], [ %i.ng, %._crit_edge469 ] ; 2 uses
  %i.na = load ptr, ptr %i.mj, align 8
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv509
  %i.nc = load i32, ptr %i.nb, align 4            ; 2 uses
  store i32 %i.nc, ptr %.292470, align 4
  %i.nd = load ptr, ptr %i.lt, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %.292470, i64 4 ; 2 uses
  %i.nh = zext i32 %i.nc to i64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %i.nh
  %i.nj = load ptr, ptr %i.ni, align 8            ; 6 uses
  %i.nk = load float, ptr %i.mn, align 8          ; 6 uses
  %i.nl = load float, ptr %i.mo, align 8          ; 5 uses
  %i.nm = load float, ptr %i.mp, align 4          ; 6 uses
  %i.nn = fneg float %i.nm
  %i.no = load float, ptr %i.mq, align 4          ; 4 uses
  %i.np = load float, ptr %i.mr, align 8          ; 6 uses
  %i.nq = load float, ptr %i.mt, align 8          ; 3 uses
  %i.nr = load float, ptr %i.mv, align 4          ; 6 uses
  %i.ns = fneg float %i.nl                        ; 2 uses
  %i.nt = load float, ptr %i.mw, align 4          ; 5 uses
  %i.nu = fneg float %i.nt                        ; 3 uses
  %i.nv = load <2 x float>, ptr %i.mk, align 4    ; 2 uses
  %i.nw = extractelement <2 x float> %i.nv, i64 0 ; 4 uses
  %i.nx = load float, ptr %i.mu, align 8          ; 5 uses
  %i.ny = load <2 x float>, ptr %i.mx, align 4    ; 2 uses
  %i.nz = extractelement <2 x float> %i.ny, i64 0 ; 4 uses
  %i.oa = load float, ptr %i.ml, align 8          ; 5 uses
  %i.ob = fmul float %i.nw, %i.oa                 ; 3 uses
  %i.oc = load <2 x float>, ptr %i.ms, align 8    ; 2 uses
  %i.od = extractelement <2 x float> %i.oc, i64 0 ; 5 uses
  %i.oe = load float, ptr %i.mm, align 4          ; 4 uses
  %i.of = fmul float %i.ob, %i.oe
  %i.og = fmul float %i.ob, %i.nl
  %i.oh = fmul float %i.og, %i.nn
  %i.oi = call float @llvm.fmuladd.f32(float %i.of, float %i.nk, float %i.oh)
  %i.oj = fmul float %i.nw, %i.no                 ; 2 uses
  %i.ok = fmul float %i.nl, %i.oj
  %i.ol = call float @llvm.fmuladd.f32(float %i.ok, float %i.np, float %i.oi)
  %i.om = fneg float %i.od                        ; 4 uses
  %i.on = fmul float %i.oj, %i.om                 ; 2 uses
  %i.oo = call float @llvm.fmuladd.f32(float %i.on, float %i.nk, float %i.ol)
  %i.op = fmul float %i.nw, %i.nq                 ; 2 uses
  %i.oq = fmul float %i.od, %i.op
  %i.or = call float @llvm.fmuladd.f32(float %i.oq, float %i.nm, float %i.oo)
  %i.os = fneg float %i.oe                        ; 3 uses
  %i.ot = fmul float %i.op, %i.os
  %i.ou = call float @llvm.fmuladd.f32(float %i.ot, float %i.np, float %i.or)
  %i.ov = fmul float %i.no, %i.nx                 ; 3 uses
  %i.ow = fmul float %i.ov, %i.ns
  %i.ox = call float @llvm.fmuladd.f32(float %i.ow, float %i.nr, float %i.ou)
  %i.oy = fmul float %i.ov, %i.nt
  %i.oz = call float @llvm.fmuladd.f32(float %i.oy, float %i.nk, float %i.ox)
  %i.pa = fmul float %i.nq, %i.nx                 ; 2 uses
  %i.pb = fmul float %i.pa, %i.nu
  %i.pc = call float @llvm.fmuladd.f32(float %i.pb, float %i.nm, float %i.oz)
  %i.pd = fmul float %i.oe, %i.pa
  %i.pe = call float @llvm.fmuladd.f32(float %i.pd, float %i.nr, float %i.pc)
  %i.pf = fmul float %i.nx, %i.nz                 ; 2 uses
  %i.pg = fmul float %i.pf, %i.os
  %i.ph = call float @llvm.fmuladd.f32(float %i.pg, float %i.nk, float %i.pe)
  %i.pi = fmul float %i.nl, %i.pf
  %i.pj = call float @llvm.fmuladd.f32(float %i.pi, float %i.nm, float %i.ph)
  %i.pk = load float, ptr %i.my, align 4          ; 5 uses
  %i.pl = fmul float %i.nq, %i.pk                 ; 2 uses
  %i.pm = fmul float %i.nt, %i.pl
  %i.pn = call float @llvm.fmuladd.f32(float %i.pm, float %i.np, float %i.pj)
  %i.po = fmul float %i.pl, %i.om
  %i.pp = call float @llvm.fmuladd.f32(float %i.po, float %i.nr, float %i.pn)
  %i.pq = fmul float %i.nz, %i.pk                 ; 3 uses
  %i.pr = fmul float %i.od, %i.pq
  %i.ps = call float @llvm.fmuladd.f32(float %i.pr, float %i.nk, float %i.pp)
  %i.pt = fmul float %i.pq, %i.ns
  %i.pu = call float @llvm.fmuladd.f32(float %i.pt, float %i.np, float %i.ps)
  %i.pv = fmul float %i.oa, %i.pk                 ; 2 uses
  %i.pw = fmul float %i.nl, %i.pv
  %i.px = call float @llvm.fmuladd.f32(float %i.pw, float %i.nr, float %i.pu)
  %i.py = fmul float %i.pv, %i.nu
  %i.pz = call float @llvm.fmuladd.f32(float %i.py, float %i.nk, float %i.px)
  %i.qa = load float, ptr %i.mz, align 8          ; 3 uses
  %i.qb = fmul float %i.nz, %i.qa                 ; 2 uses
  %i.qc = fmul float %i.qb, %i.om
  %i.qd = call float @llvm.fmuladd.f32(float %i.qc, float %i.nm, float %i.pz)
  %i.qe = fmul float %i.oe, %i.qb
  %i.qf = call float @llvm.fmuladd.f32(float %i.qe, float %i.np, float %i.qd)
  %i.qg = fmul float %i.oa, %i.qa                 ; 2 uses
  %i.qh = fmul float %i.qg, %i.os
  %i.qi = call float @llvm.fmuladd.f32(float %i.qh, float %i.nr, float %i.qf)
  %i.qj = fmul float %i.nt, %i.qg
  %i.qk = call float @llvm.fmuladd.f32(float %i.qj, float %i.nm, float %i.qi)
  %i.ql = fmul float %i.no, %i.qa                 ; 2 uses
  %i.qm = fmul float %i.ql, %i.nu
  %i.qn = call float @llvm.fmuladd.f32(float %i.qm, float %i.np, float %i.qk)
  %i.qo = fmul float %i.od, %i.ql
  %i.qp = call noundef float @llvm.fmuladd.f32(float %i.qo, float %i.nr, float %i.qn)
  %i.qq = fcmp olt float %i.qp, 0.000000e+00
  %i.qr = shufflevector <2 x float> %i.ny, <2 x float> %i.nv, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.qs = shufflevector <2 x float> %i.oc, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.qt = insertelement <3 x float> %i.qs, float %i.no, i64 1
  %i.qu = insertelement <4 x float> poison, float %i.pk, i64 0
  %i.qv = insertelement <4 x float> %i.qu, float %i.oa, i64 1
  %i.qw = insertelement <4 x float> %i.qv, float %i.nx, i64 2
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  br i1 %i.qq, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN6Assimp23FlipWindingOrderProcess11ProcessMeshEP6aiMesh(ptr noundef %i.nj)
          to label %._crit_edge514 unwind label %bb.ax

._crit_edge514:                                   ; preds = %bb.aw
  %.pre517 = load float, ptr %i.my, align 4       ; 3 uses
  %.pre520 = load float, ptr %i.mq, align 4       ; 3 uses
  %.pre521 = load float, ptr %i.mw, align 4
  %i.qy = load <2 x float>, ptr %i.mk, align 4    ; 2 uses
  %i.qz = extractelement <2 x float> %i.qy, i64 0 ; 3 uses
  %.pre516 = load float, ptr %i.mu, align 4       ; 3 uses
  %i.ra = load <2 x float>, ptr %i.mx, align 4    ; 2 uses
  %i.rb = extractelement <2 x float> %i.ra, i64 0 ; 2 uses
  %.pre519 = load float, ptr %i.ml, align 4       ; 3 uses
  %i.rc = load <2 x float>, ptr %i.ms, align 4    ; 2 uses
  %i.rd = extractelement <2 x float> %i.rc, i64 0 ; 2 uses
  %.pre537 = fmul float %i.qz, %.pre519
  %.pre539 = fmul float %i.qz, %.pre520
  %.pre541 = fneg float %i.rd                     ; 2 uses
  %.pre543 = fmul float %.pre539, %.pre541
  %.pre545 = fmul float %.pre516, %.pre520
  %.pre547 = fmul float %.pre517, %i.rb
  %i.re = shufflevector <2 x float> %i.ra, <2 x float> %i.qy, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %i.rf = shufflevector <2 x float> %i.rc, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.rg = insertelement <3 x float> %i.rf, float %.pre520, i64 1
  %i.rh = insertelement <4 x float> poison, float %.pre517, i64 0
  %i.ri = insertelement <4 x float> %i.rh, float %.pre519, i64 1
  %i.rj = insertelement <4 x float> %i.ri, float %.pre516, i64 2
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge514, %bb.av
  %.pre-phi548 = phi float [ %.pre547, %._crit_edge514 ], [ %i.pq, %bb.av ]
  %.pre-phi546 = phi float [ %.pre545, %._crit_edge514 ], [ %i.ov, %bb.av ]
  %.pre-phi544 = phi float [ %.pre543, %._crit_edge514 ], [ %i.on, %bb.av ]
  %.pre-phi542 = phi float [ %.pre541, %._crit_edge514 ], [ %i.om, %bb.av ]
  %.pre-phi538 = phi float [ %.pre537, %._crit_edge514 ], [ %i.ob, %bb.av ]
  %i.rm = phi float [ %i.rd, %._crit_edge514 ], [ %i.od, %bb.av ]
  %i.rn = phi float [ %.pre521, %._crit_edge514 ], [ %i.nt, %bb.av ] ; 3 uses
  %i.ro = phi float [ %.pre519, %._crit_edge514 ], [ %i.oa, %bb.av ] ; 2 uses
  %i.rp = phi float [ %i.rb, %._crit_edge514 ], [ %i.nz, %bb.av ]
  %i.rq = phi float [ %.pre517, %._crit_edge514 ], [ %i.pk, %bb.av ]
  %i.rr = phi float [ %.pre516, %._crit_edge514 ], [ %i.nx, %bb.av ]
  %i.rs = phi float [ %i.qz, %._crit_edge514 ], [ %i.nw, %bb.av ]
  %i.rt = phi <4 x float> [ %i.re, %._crit_edge514 ], [ %i.qr, %bb.av ]
  %i.ru = phi <3 x float> [ %i.rg, %._crit_edge514 ], [ %i.qt, %bb.av ] ; 3 uses
  %i.rv = phi <4 x float> [ %i.rk, %._crit_edge514 ], [ %i.qx, %bb.av ] ; 2 uses
  %i.rw = extractelement <3 x float> %i.ru, i64 0 ; 2 uses
  %i.rx = call float @llvm.fmuladd.f32(float %.pre-phi538, float %i.rw, float %.pre-phi544)
  %i.ry = call float @llvm.fmuladd.f32(float %.pre-phi546, float %i.rn, float %i.rx)
  %i.rz = fneg float %i.rp                        ; 2 uses
  %i.sa = fmul float %i.rr, %i.rz                 ; 2 uses
  %i.sb = call float @llvm.fmuladd.f32(float %i.sa, float %i.rw, float %i.ry)
  %i.sc = call float @llvm.fmuladd.f32(float %.pre-phi548, float %i.rm, float %i.sb)
  %i.sd = fneg float %i.ro
  %i.se = fmul float %i.rq, %i.sd                 ; 2 uses
  %i.sf = call noundef float @llvm.fmuladd.f32(float %i.se, float %i.rn, float %i.sc) ; 2 uses
  %i.sg = fcmp oeq float %i.sf, 0.000000e+00
  br i1 %i.sg, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.sh = shufflevector <3 x float> %i.ru, <3 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 2, i32 2>
  %i.si = shufflevector <4 x float> %i.rt, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 2, i32 3, i32 3, i32 2, i32 3>
  %i.sj = fdiv float 1.000000e+00, %i.sf          ; 3 uses
  %i.sk = fneg float %i.sj
  %i.sl = fneg float %i.rn
  %i.sm = shufflevector <4 x float> %i.rv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sn = shufflevector <3 x float> %i.ru, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.so = shufflevector <4 x float> %i.sn, <4 x float> %i.rv, <8 x i32> <i32 1, i32 4, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sp = insertelement <8 x float> %i.so, float %i.se, i64 2
  %i.sq = shufflevector <8 x float> %i.sp, <8 x float> %i.sm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sr = insertelement <8 x float> <float poison, float 1.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison>, float %.pre-phi542, i64 0
  %i.ss = insertelement <8 x float> %i.sr, float %i.sl, i64 2
  %i.st = insertelement <8 x float> %i.ss, float %i.rz, i64 3
  %i.su = shufflevector <8 x float> %i.st, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 2, i32 2, i32 3, i32 2, i32 2>
  %i.sv = fmul <8 x float> %i.sq, %i.su
  %i.sw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.si, <8 x float> %i.sh, <8 x float> %i.sv)
  %i.sx = insertelement <8 x float> poison, float %i.sj, i64 0
  %i.sy = insertelement <8 x float> %i.sx, float %i.sk, i64 1
  %i.sz = shufflevector <8 x float> %i.sy, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ta = fmul <8 x float> %i.sw, %i.sz
  %i.tb = call float @llvm.fmuladd.f32(float %i.rs, float %i.ro, float %i.sa)
  %i.tc = fmul float %i.tb, %i.sj
  br label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

_ZN12aiMatrix3x3tIfE7InverseEv.exit:              ; preds = %bb.az, %bb.ay
  %storemerge.i = phi float [ %i.tc, %bb.az ], [ +qnan, %bb.ay ] ; 3 uses
  %i.td = phi <8 x float> [ %i.ta, %bb.az ], [ splat (float +qnan), %bb.ay ] ; 8 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.nj, i64 4 ; 4 uses
  %i.tf = load i32, ptr %i.te, align 4
  %.not496 = icmp eq i32 %i.tf, 0
  br i1 %.not496, label %._crit_edge469, label %.lr.ph468

.lr.ph468:                                        ; preds = %_ZN12aiMatrix3x3tIfE7InverseEv.exit
  %i.tg = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.th = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.ti = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.tj = getelementptr inbounds nuw i8, ptr %i.nj, i64 40 ; 2 uses
  %i.tk = extractelement <8 x float> %i.td, i64 0 ; 3 uses
  %i.tl = extractelement <8 x float> %i.td, i64 1 ; 3 uses
  %i.tm = extractelement <8 x float> %i.td, i64 2 ; 3 uses
  %i.tn = extractelement <8 x float> %i.td, i64 3 ; 3 uses
  %i.to = extractelement <8 x float> %i.td, i64 4 ; 3 uses
  %i.tp = extractelement <8 x float> %i.td, i64 5 ; 3 uses
  %i.tq = extractelement <8 x float> %i.td, i64 6 ; 3 uses
  %i.tr = extractelement <8 x float> %i.td, i64 7 ; 3 uses
  br label %bb.ba

._crit_edge469:                                   ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, %_ZN12aiMatrix3x3tIfE7InverseEv.exit
  %indvars.iv.next510 = add nuw nsw i64 %indvars.iv509, 1 ; 2 uses
  %i.ts = load i32, ptr %i.mh, align 8
  %i.tt = zext i32 %i.ts to i64
  %i.tu = icmp samesign ult i64 %indvars.iv.next510, %i.tt
  br i1 %i.tu, label %bb.av, label %._crit_edge474, !llvm.loop !10

bb.ba:                                            ; preds = %.lr.ph468, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %indvars.iv506 = phi i64 [ 0, %.lr.ph468 ], [ %indvars.iv.next507, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ] ; 5 uses
  %i.tv = load ptr, ptr %i.tg, align 8
  %i.tw = getelementptr inbounds nuw [12 x i8], ptr %i.tv, i64 %indvars.iv506 ; 4 uses
  %i.tx = load float, ptr %i.mk, align 4
  %i.ty = load float, ptr %i.tw, align 4          ; 3 uses
  %i.tz = load float, ptr %i.mu, align 4
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  %i.ub = load float, ptr %i.ua, align 4          ; 3 uses
  %i.uc = fmul float %i.tz, %i.ub
  %i.ud = call float @llvm.fmuladd.f32(float %i.tx, float %i.ty, float %i.uc)
  %i.ue = load float, ptr %i.my, align 4
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tw, i64 8 ; 2 uses
  %i.ug = load float, ptr %i.uf, align 4          ; 3 uses
  %i.uh = call float @llvm.fmuladd.f32(float %i.ue, float %i.ug, float %i.ud)
  %i.ui = load float, ptr %i.mz, align 4
  %i.uj = fadd float %i.uh, %i.ui
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.uj, i64 0
  %i.uk = load float, ptr %i.mx, align 4
  %i.ul = load float, ptr %i.ml, align 4
  %i.um = fmul float %i.ub, %i.ul
  %i.un = call float @llvm.fmuladd.f32(float %i.uk, float %i.ty, float %i.um)
  %i.uo = load float, ptr %i.mq, align 4
  %i.up = call float @llvm.fmuladd.f32(float %i.uo, float %i.ug, float %i.un)
  %i.uq = load float, ptr %i.mt, align 4
  %i.ur = fadd float %i.uq, %i.up
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.ur, i64 1
  %i.us = load float, ptr %i.mw, align 4
  %i.ut = load float, ptr %i.ms, align 4
  %i.uu = fmul float %i.ub, %i.ut
  %i.uv = call float @llvm.fmuladd.f32(float %i.us, float %i.ty, float %i.uu)
  %i.uw = load float, ptr %i.mm, align 4
  %i.ux = call float @llvm.fmuladd.f32(float %i.uw, float %i.ug, float %i.uv)
  %i.uy = load float, ptr %i.mo, align 4
  %i.uz = fadd float %i.uy, %i.ux
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.tw, align 4
  store float %i.uz, ptr %i.uf, align 4
  %i.va = load ptr, ptr %i.th, align 8            ; 2 uses
  %.not.i = icmp ne ptr %i.va, null
  %i.vb = load i32, ptr %i.te, align 4            ; 2 uses
  %i.vc = icmp ne i32 %i.vb, 0
  %i.vd = select i1 %.not.i, i1 %i.vc, i1 false
  br i1 %i.vd, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ve = getelementptr inbounds nuw [12 x i8], ptr %i.va, i64 %indvars.iv506 ; 4 uses
  %i.vf = load float, ptr %i.ve, align 4          ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 4
  %i.vh = load float, ptr %i.vg, align 4          ; 3 uses
  %i.vi = fmul float %i.tn, %i.vh
  %i.vj = call float @llvm.fmuladd.f32(float %i.tk, float %i.vf, float %i.vi)
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ve, i64 8 ; 2 uses
  %i.vl = load float, ptr %i.vk, align 4          ; 3 uses
  %i.vm = call float @llvm.fmuladd.f32(float %i.tq, float %i.vl, float %i.vj)
  %.sroa.0.0.vec.insert.i.i227 = insertelement <2 x float> poison, float %i.vm, i64 0
  %i.vn = fmul float %i.to, %i.vh
  %i.vo = call float @llvm.fmuladd.f32(float %i.tl, float %i.vf, float %i.vn)
  %i.vp = call float @llvm.fmuladd.f32(float %i.tr, float %i.vl, float %i.vo)
  %.sroa.0.4.vec.insert.i.i228 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i227, float %i.vp, i64 1
  %i.vq = fmul float %i.tp, %i.vh
  %i.vr = call float @llvm.fmuladd.f32(float %i.tm, float %i.vf, float %i.vq)
  %i.vs = call float @llvm.fmuladd.f32(float %storemerge.i, float %i.vl, float %i.vr)
  store <2 x float> %.sroa.0.4.vec.insert.i.i228, ptr %i.ve, align 4
  store float %i.vs, ptr %i.vk, align 4
  %.pre525.pre = load i32, ptr %i.te, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pre525 = phi i32 [ %.pre525.pre, %bb.bb ], [ %i.vb, %bb.ba ] ; 2 uses
  %i.vt = load ptr, ptr %i.ti, align 8            ; 2 uses
  %.not.i229 = icmp eq ptr %i.vt, null
  %i.vu = load ptr, ptr %i.tj, align 8
  %.not1.i = icmp eq ptr %i.vu, null
  %or.cond.i = select i1 %.not.i229, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit:     ; preds = %bb.bc
  %.not432 = icmp eq i32 %.pre525, 0
  br i1 %.not432, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.vv = getelementptr inbounds nuw [12 x i8], ptr %i.vt, i64 %indvars.iv506 ; 4 uses
  %i.vw = load float, ptr %i.vv, align 4          ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.vy = load float, ptr %i.vx, align 4          ; 3 uses
  %i.vz = fmul float %i.tn, %i.vy
  %i.wa = call float @llvm.fmuladd.f32(float %i.tk, float %i.vw, float %i.vz)
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vv, i64 8 ; 2 uses
  %i.wc = load float, ptr %i.wb, align 4          ; 3 uses
  %i.wd = call float @llvm.fmuladd.f32(float %i.tq, float %i.wc, float %i.wa)
  %.sroa.0.0.vec.insert.i.i230 = insertelement <2 x float> poison, float %i.wd, i64 0
  %i.we = fmul float %i.to, %i.vy
  %i.wf = call float @llvm.fmuladd.f32(float %i.tl, float %i.vw, float %i.we)
  %i.wg = call float @llvm.fmuladd.f32(float %i.tr, float %i.wc, float %i.wf)
  %.sroa.0.4.vec.insert.i.i231 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i230, float %i.wg, i64 1
  %i.wh = fmul float %i.tp, %i.vy
  %i.wi = call float @llvm.fmuladd.f32(float %i.tm, float %i.vw, float %i.wh)
  %i.wj = call float @llvm.fmuladd.f32(float %storemerge.i, float %i.wc, float %i.wi)
  store <2 x float> %.sroa.0.4.vec.insert.i.i231, ptr %i.vv, align 4
  store float %i.wj, ptr %i.wb, align 4
  %i.wk = load ptr, ptr %i.tj, align 8
  %i.wl = getelementptr inbounds nuw [12 x i8], ptr %i.wk, i64 %indvars.iv506 ; 4 uses
  %i.wm = load float, ptr %i.wl, align 4          ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  %i.wo = load float, ptr %i.wn, align 4          ; 3 uses
  %i.wp = fmul float %i.tn, %i.wo
  %i.wq = call float @llvm.fmuladd.f32(float %i.tk, float %i.wm, float %i.wp)
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wl, i64 8 ; 2 uses
  %i.ws = load float, ptr %i.wr, align 4          ; 3 uses
  %i.wt = call float @llvm.fmuladd.f32(float %i.tq, float %i.ws, float %i.wq)
  %.sroa.0.0.vec.insert.i.i232 = insertelement <2 x float> poison, float %i.wt, i64 0
  %i.wu = fmul float %i.to, %i.wo
  %i.wv = call float @llvm.fmuladd.f32(float %i.tl, float %i.wm, float %i.wu)
  %i.ww = call float @llvm.fmuladd.f32(float %i.tr, float %i.ws, float %i.wv)
  %.sroa.0.4.vec.insert.i.i233 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i232, float %i.ww, i64 1
  %i.wx = fmul float %i.tp, %i.wo
  %i.wy = call float @llvm.fmuladd.f32(float %i.tm, float %i.wm, float %i.wx)
  %i.wz = call float @llvm.fmuladd.f32(float %storemerge.i, float %i.ws, float %i.wy)
  store <2 x float> %.sroa.0.4.vec.insert.i.i233, ptr %i.wl, align 4
  store float %i.wz, ptr %i.wr, align 4
  %.pre524 = load i32, ptr %i.te, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.bc, %bb.bd, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit
  %i.xa = phi i32 [ %.pre525, %bb.bc ], [ %.pre524, %bb.bd ], [ 0, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit ]
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1 ; 2 uses
  %i.xb = zext i32 %i.xa to i64
  %i.xc = icmp samesign ult i64 %indvars.iv.next507, %i.xb
  br i1 %i.xc, label %bb.ba, label %._crit_edge469, !llvm.loop !11

._crit_edge474:                                   ; preds = %._crit_edge469, %bb.au
  %.292.lcssa = phi ptr [ %.191478, %bb.au ], [ %i.ng, %._crit_edge469 ]
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.mg) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef 1144) #24
  %i.xd = load ptr, ptr %.sroa.0281.0477, align 8 ; 2 uses
  %.not431 = icmp eq ptr %i.xd, %7
  br i1 %.not431, label %._crit_edge480, label %bb.au

bb.be:                                            ; preds = %._crit_edge480
  call void @_ZdaPv(ptr noundef nonnull %i.md) #24
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge480
  store ptr %i.lq, ptr %i.mc, align 8
  %i.xe = load i32, ptr %i.ll, align 8
  %i.xf = add i32 %i.xe, %i.lj
  store i32 %i.xf, ptr %i.ll, align 8
  %.pre526 = load ptr, ptr %7, align 8
  br label %._crit_edge461.thread

._crit_edge461.thread:                            ; preds = %bb.aq, %._crit_edge461, %bb.bf, %._crit_edge454
  %i.xg = phi ptr [ %i.le, %._crit_edge461 ], [ %.pre526, %bb.bf ], [ %.pre513, %._crit_edge454 ], [ %i.le, %bb.aq ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.xg, %7
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge461.thread, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.xh, %.lr.ph.i.i ], [ %i.xg, %._crit_edge461.thread ] ; 2 uses
  %i.xh = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #24
  %.not.i.i = icmp eq ptr %i.xh, %7
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.aa, %._crit_edge461.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bh

bb.bg:                                            ; preds = %bb.ax, %bb.aj, %bb.am, %bb.as
  %.pn118.pn.pn = phi { ptr, i32 } [ %i.lu, %bb.as ], [ %i.rl, %bb.ax ], [ %i.ii, %bb.aj ], [ %i.in, %bb.am ]
  %i.xi = load ptr, ptr %7, align 8               ; 2 uses
  %.not8.i.i234 = icmp eq ptr %i.xi, %7
  br i1 %.not8.i.i234, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit238, label %.lr.ph.i.i235

.lr.ph.i.i235:                                    ; preds = %bb.bg, %.lr.ph.i.i235
  %.09.i.i236 = phi ptr [ %i.xj, %.lr.ph.i.i235 ], [ %i.xi, %bb.bg ] ; 2 uses
  %i.xj = load ptr, ptr %.09.i.i236, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i236, i64 noundef 24) #24
  %.not.i.i237 = icmp eq ptr %i.xj, %7
  br i1 %.not.i.i237, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit238, label %.lr.ph.i.i235, !llvm.loop !12

_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit238: ; preds = %.lr.ph.i.i235, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bq

bb.bh:                                            ; preds = %_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit179, %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit
  %i.xk = load ptr, ptr %3, align 8               ; 3 uses
  %i.xl = icmp eq ptr %i.xk, %3
  br i1 %i.xl, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.xm = load i64, ptr %i.j, align 8             ; 2 uses
  %i.xn = load i32, ptr %i.d, align 8
  %i.xo = zext i32 %i.xn to i64
  %i.xp = icmp ugt i64 %i.xm, %i.xo
  br i1 %i.xp, label %bb.bj, label %._crit_edge531

._crit_edge531:                                   ; preds = %bb.bi
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %.pre532 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.bo

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 1112 ; 3 uses
  %i.xr = load ptr, ptr %i.xq, align 8            ; 2 uses
  %i.xs = icmp eq ptr %i.xr, null
  br i1 %i.xs, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.xr) #24
  %.pre529 = load ptr, ptr %3, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.xt = phi ptr [ %.pre529, %bb.bk ], [ %i.xk, %bb.bj ] ; 2 uses
  %i.xu = icmp eq ptr %i.xt, %3
  br i1 %i.xu, label %.thread593, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.xv = load i64, ptr %i.j, align 8             ; 3 uses
  %i.xw = icmp ugt i64 %i.xv, 2305843009213693951
  %i.xx = shl i64 %i.xv, 3
  %i.xy = select i1 %i.xw, i64 -1, i64 %i.xx
  %i.xz = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xy) #25
          to label %bb.bn unwind label %bb.x      ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.xz, ptr %i.xq, align 8
  br label %bb.bo

.thread593:                                       ; preds = %bb.bl
  store ptr null, ptr %i.xq, align 8
  %.pre530 = load i64, ptr %i.j, align 8
  %i.ya = trunc i64 %.pre530 to i32               ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp20OptimizeGraphProcess7ExecuteEP7aiScene:bb.a
  store ptr null, ptr %i.ae, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 12 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.sroa.0323.0362 = load ptr, ptr %i.am, align 8 ; 2 uses
  %.not363 = icmp eq ptr %.sroa.0323.0362, %i.am
  br i1 %.not363, label %.preheader350.a, label %.lr.ph

.preheader350.a:                                  ; preds = %.lr.ph, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8            ; 2 uses
  %.not376 = icmp eq i32 %i.ao, 0
  br i1 %.not376, label %.preheader348.a, label %.preheader349.lr.ph

.preheader349.lr.ph:                              ; preds = %.preheader350.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %.pre = load ptr, ptr %i.ap, align 8
  br label %.preheader349.a

.lr.ph:                                           ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit, %.lr.ph
  %.sroa.0323.0364 = phi ptr [ %.sroa.0323.0, %.lr.ph ], [ %.sroa.0323.0362, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0323.0364, i64 16
  %i.at = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.as) ; 0 uses
  %.sroa.0323.0 = load ptr, ptr %.sroa.0323.0364, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0323.0, %i.am
  br i1 %.not, label %.preheader350.a, label %.lr.ph, !llvm.loop !14

.preheader349.a:                                  ; preds = %.preheader349.lr.ph, %._crit_edge
  %i.au = phi i32 [ %i.ao, %.preheader349.lr.ph ], [ %i.be, %._crit_edge ]
  %i.av = phi ptr [ %.pre, %.preheader349.lr.ph ], [ %i.bf, %._crit_edge ] ; 2 uses
  %indvars.iv384 = phi i64 [ 0, %.preheader349.lr.ph ], [ %indvars.iv.next385, %._crit_edge ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv384
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1048
  %i.az = load i32, ptr %i.ay, align 8
  %.not377 = icmp eq i32 %i.az, 0
  br i1 %.not377, label %._crit_edge, label %.lr.ph366

.preheader348.a:                                  ; preds = %._crit_edge, %.preheader350.a
  %i.ba = load i32, ptr %i.n, align 8             ; 2 uses
  %.not378 = icmp eq i32 %i.ba, 0
  br i1 %.not378, label %.preheader346, label %.preheader347.lr.ph

.preheader347.lr.ph:                              ; preds = %.preheader348.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %.pre402.a = load ptr, ptr %i.bb, align 8
  br label %.preheader347.a

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre401.a = load i32, ptr %i.an, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader349.a
  %i.be = phi i32 [ %.pre401.a, %._crit_edge.loopexit ], [ %i.au, %.preheader349.a ] ; 2 uses
  %i.bf = phi ptr [ %i.dw, %._crit_edge.loopexit ], [ %i.av, %.preheader349.a ]
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %i.bg = zext i32 %i.be to i64
  %i.bh = icmp samesign ult i64 %indvars.iv.next385, %i.bg
  br i1 %i.bh, label %.preheader349.a, label %.preheader348.a, !llvm.loop !15

.lr.ph366:                                        ; preds = %.preheader349.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %.preheader349.a ] ; 2 uses
  %i.bi = phi ptr [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ax, %.preheader349.a ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1056
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 3 uses
  store ptr %i.aq, ptr %2, align 8
  %i.bo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 %i.bo, ptr %i.f, align 8
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.lr.ph366
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bq, ptr %2, align 8
  %i.br = load i64, ptr %i.f, align 8
  store i64 %i.br, ptr %i.aq, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %.lr.ph366
  %i.bs = phi ptr [ %i.bq, %.noexc ], [ %i.aq, %.lr.ph366 ] ; 2 uses
  switch i64 %i.bo, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bt = load i8, ptr %i.bn, align 1
  store i8 %i.bt, ptr %i.bs, align 1
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr nonnull align 1 %i.bn, i64 %i.bo, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.bu = load i64, ptr %i.f, align 8             ; 2 uses
  store i64 %i.bu, ptr %i.ar, align 8
  %i.bv = load ptr, ptr %2, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store i8 0, ptr %i.bw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %.02931.i = load ptr, ptr %i.ae, align 8        ; 2 uses
  %.not32.i = icmp eq ptr %.02931.i, null
  br i1 %.not32.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.bx = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.by = load ptr, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i205, %.lr.ph.i
  %.02933.i = phi ptr [ %.02931.i, %.lr.ph.i ], [ %.029.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i205 ] ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.02933.i, i64 40
  %i.ca = load i64, ptr %i.bz, align 8            ; 3 uses
  %.sroa.speculated.i.i.i.i202 = call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bx) ; 3 uses
  %i.cb = icmp eq i64 %.sroa.speculated.i.i.i.i202, 0
  br i1 %i.cb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i209, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i203

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i203: ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.02933.i, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call i32 @memcmp(ptr noundef %i.by, ptr noundef %i.cd, i64 noundef %.sroa.speculated.i.i.i.i202) #23 ; 2 uses
  %.not.i.i.i.i204 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i.i204, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i209, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i205

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i209: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i203, %bb.i
  %i.cf = sub i64 %i.bx, %i.ca
  %spec.select7.i.i.i.i.i210 = call i64 @llvm.smax.i64(i64 %i.cf, i64 -2147483648)
  %.08.i.i.i.i.i211 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i210, i64 2147483647)
  %.0.i6.i.i.i.i212 = trunc nsw i64 %.08.i.i.i.i.i211 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i205

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i205: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i209, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i203
  %.0.i.i.i.i206 = phi i32 [ %i.ce, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i203 ], [ %.0.i6.i.i.i.i212, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i209 ]
  %i.cg = icmp slt i32 %.0.i.i.i.i206, 0          ; 2 uses
  %.in.v.i = select i1 %i.cg, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02933.i, i64 %.in.v.i
  %.029.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i207 = icmp eq ptr %.029.i, null
  br i1 %.not.i207, label %._crit_edge.i, label %bb.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i205
  br i1 %i.cg, label %._crit_edge.thread.i, label %bb.k

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.h
  %.028.lcssa39.i = phi ptr [ %.02933.i, %._crit_edge.i ], [ %i.ai, %bb.h ] ; 4 uses
  %i.ch = load ptr, ptr %i.aj, align 8
  %i.ci = icmp eq ptr %.028.lcssa39.i, %i.ch
  br i1 %i.ci, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i
  %i.cj = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39.i) #27 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %.pre399 = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre400 = load i64, ptr %i.ar, align 8         ; 2 uses
  %.pre409.a = call i64 @llvm.umin.i64(i64 %.pre400, i64 %.pre399)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.speculated.i.i.i5.i.pre-phi = phi i64 [ %.pre409.a, %bb.j ], [ %.sroa.speculated.i.i.i.i202, %._crit_edge.i ] ; 2 uses
  %i.ck = phi i64 [ %.pre400, %bb.j ], [ %i.bx, %._crit_edge.i ]
  %i.cl = phi i64 [ %.pre399, %bb.j ], [ %i.ca, %._crit_edge.i ]
  %.028.lcssa38.i = phi ptr [ %.028.lcssa39.i, %bb.j ], [ %.02933.i, %._crit_edge.i ]
  %.sroa.014.0.i = phi ptr [ %i.cj, %bb.j ], [ %.02933.i, %._crit_edge.i ]
  %i.cm = icmp eq i64 %.sroa.speculated.i.i.i5.i.pre-phi, 0
  br i1 %i.cm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i: ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 32
  %i.co = load ptr, ptr %2, align 8
  %i.cp = load ptr, ptr %i.cn, align 8
  %i.cq = call i32 @memcmp(ptr noundef %i.cp, ptr noundef %i.co, i64 noundef %.sroa.speculated.i.i.i5.i.pre-phi) #23 ; 2 uses
  %.not.i.i.i7.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i7.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i, %bb.k
  %i.cr = sub i64 %i.cl, %i.ck
  %spec.select7.i.i.i.i10.i = call i64 @llvm.smax.i64(i64 %i.cr, i64 -2147483648)
  %.08.i.i.i.i11.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10.i, i64 2147483647)
  %.0.i6.i.i.i12.i = trunc nsw i64 %.08.i.i.i.i11.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i
  %.0.i.i.i8.i = phi i32 [ %i.cq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i ], [ %.0.i6.i.i.i12.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i ]
  %i.cs = icmp slt i32 %.0.i.i.i8.i, 0
  br i1 %i.cs, label %select.unfold, label %.noexc104

select.unfold:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.028.lcssa39.i, %._crit_edge.thread.i ], [ %.028.lcssa38.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i ] ; 4 uses
  %i.ct = icmp eq ptr %.sroa.4.0.i.ph, %i.ai
  br i1 %i.ct, label %bb.m, label %bb.l

bb.l:                                             ; preds = %select.unfold
  %i.cu = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.cw = load i64, ptr %i.cv, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cw, i64 %i.cu) ; 2 uses
  %i.cx = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.cx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = load ptr, ptr %2, align 8
  %i.db = call i32 @memcmp(ptr noundef %i.da, ptr noundef %i.cz, i64 noundef %.sroa.speculated.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.db, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.l
  %i.dc = sub i64 %i.cu, %i.cw
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dc, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.db, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.dd = icmp slt i32 %.0.i.i.i.i, 0
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %select.unfold
  %i.de = phi i1 [ %i.dd, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ true, %select.unfold ]
  %i.df = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
          to label %.noexc201 unwind label %bb.p  ; 4 uses

.noexc201:                                        ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 48 ; 3 uses
  store ptr %i.dh, ptr %i.dg, align 8
  %i.di = load ptr, ptr %2, align 8               ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.aq
  br i1 %i.dj, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.n:                                             ; preds = %.noexc201
  %i.dk = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.dl = icmp ult i64 %i.dk, 16
  call void @llvm.assume(i1 %i.dl)
  %i.dm = add nuw nsw i64 %i.dk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dh, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.dm, i1 false)
  br label %.noexc105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.noexc201
  store ptr %i.di, ptr %i.dg, align 8
  %i.dn = load i64, ptr %i.aq, align 8
  store i64 %i.dn, ptr %i.dh, align 8
  %.pre.i.i.i = load i64, ptr %i.ar, align 8
  br label %.noexc105

.noexc105:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.n
  %i.do = phi i64 [ %i.dk, %bb.n ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  store i64 %i.do, ptr %i.dp, align 8
  store ptr %i.aq, ptr %2, align 8
  store i64 0, ptr %i.ar, align 8
  store i8 0, ptr %i.aq, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.de, ptr noundef nonnull %i.df, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #23
  %i.dq = load i64, ptr %i.al, align 8
  %i.dr = add i64 %i.dq, 1
  store i64 %i.dr, ptr %i.al, align 8
  br label %.noexc104

.noexc104:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i, %.noexc105
  %i.ds = load ptr, ptr %2, align 8               ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.aq
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc104
  %i.du = load i64, ptr %i.aq, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dw = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv384
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1048
  %i.ea = load i32, ptr %i.dz, align 8
  %i.eb = zext i32 %i.ea to i64
  %i.ec = icmp samesign ult i64 %indvars.iv.next, %i.eb
  br i1 %i.ec, label %.lr.ph366, label %._crit_edge.loopexit, !llvm.loop !17

bb.o:                                             ; preds = %.noexc.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.p:                                             ; preds = %bb.m
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %2, align 8               ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.aq
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.p
  %i.eh = load i64, ptr %i.aq, align 8
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.o
  %.pn100 = phi { ptr, i32 } [ %i.ed, %bb.o ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %i.ee, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.cb

.preheader347.a:                                  ; preds = %.preheader347.lr.ph, %._crit_edge370
  %i.ej = phi i32 [ %i.ba, %.preheader347.lr.ph ], [ %i.eu, %._crit_edge370 ]
  %i.ek = phi ptr [ %.pre402.a, %.preheader347.lr.ph ], [ %i.ev, %._crit_edge370 ] ; 2 uses
  %indvars.iv390 = phi i64 [ 0, %.preheader347.lr.ph ], [ %indvars.iv.next391, %._crit_edge370 ] ; 4 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv390
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 216
  %i.eo = load i32, ptr %i.en, align 8
  %.not379 = icmp eq i32 %i.eo, 0
  br i1 %.not379, label %._crit_edge370, label %.lr.ph369

.preheader346:                                    ; preds = %._crit_edge370, %.preheader348.a
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8
  %.not380 = icmp eq i32 %i.eq, 0
  br i1 %.not380, label %.preheader, label %.lr.ph373

.lr.ph373:                                        ; preds = %.preheader346
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %bb.ab

._crit_edge370.loopexit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %.pre406.a = load i32, ptr %i.n, align 8
  br label %._crit_edge370

._crit_edge370:                                   ; preds = %._crit_edge370.loopexit, %.preheader347.a
  %i.eu = phi i32 [ %.pre406.a, %._crit_edge370.loopexit ], [ %i.ej, %.preheader347.a ] ; 2 uses
  %i.ev = phi ptr [ %i.hq, %._crit_edge370.loopexit ], [ %i.ek, %.preheader347.a ]
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1 ; 2 uses
  %i.ew = zext i32 %i.eu to i64
  %i.ex = icmp samesign ult i64 %indvars.iv.next391, %i.ew
  br i1 %i.ex, label %.preheader347.a, label %.preheader346, !llvm.loop !18

.lr.ph369:                                        ; preds = %.preheader347.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %indvars.iv387 = phi i64 [ %indvars.iv.next388, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ 0, %.preheader347.a ] ; 2 uses
  %i.ey = phi ptr [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %i.em, %.preheader347.a ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 224
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv387
  %i.fc = load ptr, ptr %i.fb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4 ; 3 uses
  store ptr %i.bc, ptr %3, align 8
  %i.fe = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fd) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 %i.fe, ptr %i.e, align 8
  %i.ff = icmp ugt i64 %i.fe, 15
  br i1 %i.ff, label %.noexc.i110, label %._crit_edge.i.i109

.noexc.i110:                                      ; preds = %.lr.ph369
  %i.fg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc111 unwind label %bb.z  ; 2 uses

.noexc111:                                        ; preds = %.noexc.i110
  store ptr %i.fg, ptr %3, align 8
  %i.fh = load i64, ptr %i.e, align 8
  store i64 %i.fh, ptr %i.bc, align 8
  br label %._crit_edge.i.i109

._crit_edge.i.i109:                               ; preds = %.noexc111, %.lr.ph369
  %i.fi = phi ptr [ %i.fg, %.noexc111 ], [ %i.bc, %.lr.ph369 ] ; 2 uses
  switch i64 %i.fe, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i109
  %i.fj = load i8, ptr %i.fd, align 1
  store i8 %i.fj, ptr %i.fi, align 1
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i109
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fi, ptr nonnull align 1 %i.fd, i64 %i.fe, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i109
  %i.fk = load i64, ptr %i.e, align 8             ; 2 uses
  store i64 %i.fk, ptr %i.bd, align 8
  %i.fl = load ptr, ptr %3, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fk
  store i8 0, ptr %i.fm, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %.02931.i229 = load ptr, ptr %i.ae, align 8     ; 2 uses
  %.not32.i230 = icmp eq ptr %.02931.i229, null
  br i1 %.not32.i230, label %._crit_edge.thread.i260, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %bb.s
  %i.fn = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.fo = load ptr, ptr %3, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i236, %.lr.ph.i231
  %.02933.i232 = phi ptr [ %.02931.i229, %.lr.ph.i231 ], [ %.029.i240, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i236 ] ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.02933.i232, i64 40
  %i.fq = load i64, ptr %i.fp, align 8            ; 3 uses
  %.sroa.speculated.i.i.i.i233 = call i64 @llvm.umin.i64(i64 %i.fq, i64 %i.fn) ; 3 uses
  %i.fr = icmp eq i64 %.sroa.speculated.i.i.i.i233, 0
  br i1 %i.fr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i262, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i234

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i234: ; preds = %bb.t
  %i.fs = getelementptr inbounds nuw i8, ptr %.02933.i232, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = call i32 @memcmp(ptr noundef %i.fo, ptr noundef %i.ft, i64 noundef %.sroa.speculated.i.i.i.i233) #23 ; 2 uses
  %.not.i.i.i.i235 = icmp eq i32 %i.fu, 0
  br i1 %.not.i.i.i.i235, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i262, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i236

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i262: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i234, %bb.t
  %i.fv = sub i64 %i.fn, %i.fq
  %spec.select7.i.i.i.i.i263 = call i64 @llvm.smax.i64(i64 %i.fv, i64 -2147483648)
  %.08.i.i.i.i.i264 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i263, i64 2147483647)
  %.0.i6.i.i.i.i265 = trunc nsw i64 %.08.i.i.i.i.i264 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i236

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i236: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i262, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i234
  %.0.i.i.i.i237 = phi i32 [ %i.fu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i234 ], [ %.0.i6.i.i.i.i265, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i262 ]
  %i.fw = icmp slt i32 %.0.i.i.i.i237, 0          ; 2 uses
  %.in.v.i238 = select i1 %i.fw, i64 16, i64 24
  %.in.i239 = getelementptr inbounds nuw i8, ptr %.02933.i232, i64 %.in.v.i238
  %.029.i240 = load ptr, ptr %.in.i239, align 8   ; 2 uses
  %.not.i241 = icmp eq ptr %.029.i240, null
  br i1 %.not.i241, label %._crit_edge.i242, label %bb.t, !llvm.loop !16

._crit_edge.i242:                                 ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i236
  br i1 %i.fw, label %._crit_edge.thread.i260, label %bb.v

._crit_edge.thread.i260:                          ; preds = %._crit_edge.i242, %bb.s
  %.028.lcssa39.i261 = phi ptr [ %.02933.i232, %._crit_edge.i242 ], [ %i.ai, %bb.s ] ; 4 uses
  %i.fx = load ptr, ptr %i.aj, align 8
  %i.fy = icmp eq ptr %.028.lcssa39.i261, %i.fx
  br i1 %i.fy, label %select.unfold338, label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread.i260
  %i.fz = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39.i261) #27 ; 2 uses
  %.phi.trans.insert403 = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %.pre404 = load i64, ptr %.phi.trans.insert403, align 8 ; 2 uses
  %.pre405 = load i64, ptr %i.bd, align 8         ; 2 uses
  %.pre408.a = call i64 @llvm.umin.i64(i64 %.pre405, i64 %.pre404)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i242
  %.sroa.speculated.i.i.i5.i245.pre-phi = phi i64 [ %.pre408.a, %bb.u ], [ %.sroa.speculated.i.i.i.i233, %._crit_edge.i242 ] ; 2 uses
  %i.ga = phi i64 [ %.pre405, %bb.u ], [ %i.fn, %._crit_edge.i242 ]
  %i.gb = phi i64 [ %.pre404, %bb.u ], [ %i.fq, %._crit_edge.i242 ]
  %.028.lcssa38.i243 = phi ptr [ %.028.lcssa39.i261, %bb.u ], [ %.02933.i232, %._crit_edge.i242 ]
  %.sroa.014.0.i244 = phi ptr [ %i.fz, %bb.u ], [ %.02933.i232, %._crit_edge.i242 ]
  %i.gc = icmp eq i64 %.sroa.speculated.i.i.i5.i245.pre-phi, 0
  br i1 %i.gc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i256, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i246

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i246: ; preds = %bb.v
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i244, i64 32
  %i.ge = load ptr, ptr %3, align 8
  %i.gf = load ptr, ptr %i.gd, align 8
  %i.gg = call i32 @memcmp(ptr noundef %i.gf, ptr noundef %i.ge, i64 noundef %.sroa.speculated.i.i.i5.i245.pre-phi) #23 ; 2 uses
  %.not.i.i.i7.i247 = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i.i7.i247, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i256, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i248

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i256: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i246, %bb.v
  %i.gh = sub i64 %i.gb, %i.ga
  %spec.select7.i.i.i.i10.i257 = call i64 @llvm.smax.i64(i64 %i.gh, i64 -2147483648)
  %.08.i.i.i.i11.i258 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10.i257, i64 2147483647)
  %.0.i6.i.i.i12.i259 = trunc nsw i64 %.08.i.i.i.i11.i258 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i248

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i248: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i256, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i246
  %.0.i.i.i8.i249 = phi i32 [ %i.gg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6.i246 ], [ %.0.i6.i.i.i12.i259, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9.i256 ]
  %i.gi = icmp slt i32 %.0.i.i.i8.i249, 0
  br i1 %i.gi, label %select.unfold338, label %.noexc118

select.unfold338:                                 ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i248, %._crit_edge.thread.i260
  %.sroa.4.0.i253.ph = phi ptr [ %.028.lcssa39.i261, %._crit_edge.thread.i260 ], [ %.028.lcssa38.i243, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i248 ] ; 4 uses
  %i.gj = icmp eq ptr %.sroa.4.0.i253.ph, %i.ai
  br i1 %i.gj, label %bb.x, label %bb.w

bb.w:                                             ; preds = %select.unfold338
  %i.gk = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i253.ph, i64 40
  %i.gm = load i64, ptr %i.gl, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i215 = call i64 @llvm.umin.i64(i64 %i.gm, i64 %i.gk) ; 2 uses
  %i.gn = icmp eq i64 %.sroa.speculated.i.i.i.i215, 0
  br i1 %i.gn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i223, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i216

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i216: ; preds = %bb.w
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i253.ph, i64 32
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = load ptr, ptr %3, align 8
  %i.gr = call i32 @memcmp(ptr noundef %i.gq, ptr noundef %i.gp, i64 noundef %.sroa.speculated.i.i.i.i215) #23 ; 2 uses
  %.not.i.i.i.i217 = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i.i.i217, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i223, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i218

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i223: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i216, %bb.w
  %i.gs = sub i64 %i.gk, %i.gm
  %spec.select7.i.i.i.i.i224 = call i64 @llvm.smax.i64(i64 %i.gs, i64 -2147483648)
  %.08.i.i.i.i.i225 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i224, i64 2147483647)
  %.0.i6.i.i.i.i226 = trunc nsw i64 %.08.i.i.i.i.i225 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i218

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i218: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i223, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i216
  %.0.i.i.i.i219 = phi i32 [ %i.gr, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i216 ], [ %.0.i6.i.i.i.i226, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i223 ]
  %i.gt = icmp slt i32 %.0.i.i.i.i219, 0
  br label %bb.x

bb.x:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i218, %select.unfold338
  %i.gu = phi i1 [ %i.gt, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i218 ], [ true, %select.unfold338 ]
  %i.gv = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
          to label %.noexc227 unwind label %bb.aa ; 4 uses

.noexc227:                                        ; preds = %bb.x
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 48 ; 3 uses
  store ptr %i.gx, ptr %i.gw, align 8
  %i.gy = load ptr, ptr %3, align 8               ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.bc
  br i1 %i.gz, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220

bb.y:                                             ; preds = %.noexc227
  %i.ha = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.hb = icmp ult i64 %i.ha, 16
  call void @llvm.assume(i1 %i.hb)
  %i.hc = add nuw nsw i64 %i.ha, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gx, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.hc, i1 false)
  br label %.noexc119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220: ; preds = %.noexc227
  store ptr %i.gy, ptr %i.gw, align 8
  %i.hd = load i64, ptr %i.bc, align 8
  store i64 %i.hd, ptr %i.gx, align 8
  %.pre.i.i.i222 = load i64, ptr %i.bd, align 8
  br label %.noexc119

.noexc119:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220, %bb.y
  %i.he = phi i64 [ %i.ha, %bb.y ], [ %.pre.i.i.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  store i64 %i.he, ptr %i.hf, align 8
  store ptr %i.bc, ptr %3, align 8
  store i64 0, ptr %i.bd, align 8
  store i8 0, ptr %i.bc, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gu, ptr noundef nonnull %i.gv, ptr noundef nonnull %.sroa.4.0.i253.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #23
  %i.hg = load i64, ptr %i.al, align 8
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.al, align 8
  br label %.noexc118

.noexc118:                                        ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13.i248, %.noexc119
  %i.hi = load ptr, ptr %3, align 8               ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.bc
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %.noexc118
  %i.hk = load i64, ptr %i.bc, align 8
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %.noexc118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.hm = load ptr, ptr %i.m, align 8
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv390 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = add i32 %i.ho, 2
  store i32 %i.hp, ptr %i.hn, align 4
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %i.hq = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv390
  %i.hs = load ptr, ptr %i.hr, align 8            ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 216
  %i.hu = load i32, ptr %i.ht, align 8
  %i.hv = zext i32 %i.hu to i64
  %i.hw = icmp samesign ult i64 %indvars.iv.next388, %i.hv
  br i1 %i.hw, label %.lr.ph369, label %._crit_edge370.loopexit, !llvm.loop !19

bb.z:                                             ; preds = %.noexc.i110
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.aa:                                            ; preds = %bb.x
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hz = load ptr, ptr %3, align 8               ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.bc
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.aa
  %i.ib = load i64, ptr %i.bc, align 8
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.z
  %.pn98 = phi { ptr, i32 } [ %i.hx, %bb.z ], [ %i.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %i.hy, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.cb

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %.preheader346
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 8
  %.not381 = icmp eq i32 %i.ie, 0
  br i1 %.not381, label %.noexc.i146, label %.lr.ph375

.lr.ph375:                                        ; preds = %.preheader
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %bb.am

bb.ab:                                            ; preds = %.lr.ph373, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %indvars.iv393 = phi i64 [ 0, %.lr.ph373 ], [ %indvars.iv.next394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ] ; 2 uses
  %i.ii = load ptr, ptr %i.er, align 8
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv393
  %i.ik = load ptr, ptr %i.ij, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4 ; 3 uses
  store ptr %i.es, ptr %4, align 8
  %i.im = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.il) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %i.im, ptr %i.d, align 8
  %i.in = icmp ugt i64 %i.im, 15
  br i1 %i.in, label %.noexc.i128, label %._crit_edge.i.i127

.noexc.i128:                                      ; preds = %bb.ab
  %i.io = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc129 unwind label %bb.ak ; 2 uses

.noexc129:                                        ; preds = %.noexc.i128
  store ptr %i.io, ptr %4, align 8
  %i.ip = load i64, ptr %i.d, align 8
  store i64 %i.ip, ptr %i.es, align 8
  br label %._crit_edge.i.i127

._crit_edge.i.i127:                               ; preds = %.noexc129, %bb.ab
  %i.iq = phi ptr [ %i.io, %.noexc129 ], [ %i.es, %bb.ab ] ; 2 uses
  switch i64 %i.im, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i127
  %i.ir = load i8, ptr %i.il, align 1
  store i8 %i.ir, ptr %i.iq, align 1
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i127
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iq, ptr nonnull align 1 %i.il, i64 %i.im, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i127
  %i.is = load i64, ptr %i.d, align 8             ; 2 uses
  store i64 %i.is, ptr %i.et, align 8
  %i.it = load ptr, ptr %4, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.is
  store i8 0, ptr %i.iu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.iv = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc136 unwind label %bb.al ; 2 uses

.noexc136:                                        ; preds = %bb.ae
  %i.iw = extractvalue { ptr, ptr } %i.iv, 1      ; 5 uses
  %.not.i.i131 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i131, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %.noexc136
  %i.ix = extractvalue { ptr, ptr } %i.iv, 0
  %.not.i267 = icmp ne ptr %i.ix, null
  %i.iy = icmp eq ptr %i.iw, %i.ai
  %or.cond.i268 = select i1 %.not.i267, i1 true, i1 %i.iy
  br i1 %or.cond.i268, label %bb.ah, label %bb.ag
end_hunk_2
begin_hunk_3_@_ZN6Assimp20OptimizeGraphProcess7ExecuteEP7aiScene:bb.a
.noexc179:                                        ; preds = %bb.ba
  %i.nk = extractvalue { ptr, ptr } %i.nj, 1      ; 5 uses
  %.not.i.i174 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i174, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %.noexc179
  %i.nl = extractvalue { ptr, ptr } %i.nj, 0
  %.not.i299 = icmp ne ptr %i.nl, null
  %i.nm = icmp eq ptr %i.nk, %i.ai
  %or.cond.i300 = select i1 %.not.i299, i1 true, i1 %i.nm
  br i1 %or.cond.i300, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nn = load i64, ptr %i.ng, align 8            ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 40
  %i.np = load i64, ptr %i.no, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i301 = call i64 @llvm.umin.i64(i64 %i.np, i64 %i.nn) ; 2 uses
  %i.nq = icmp eq i64 %.sroa.speculated.i.i.i.i301, 0
  br i1 %i.nq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i309, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i302

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i302: ; preds = %bb.bc
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = load ptr, ptr %7, align 8
  %i.nu = call i32 @memcmp(ptr noundef %i.nt, ptr noundef %i.ns, i64 noundef %.sroa.speculated.i.i.i.i301) #23 ; 2 uses
  %.not.i.i.i.i303 = icmp eq i32 %i.nu, 0
  br i1 %.not.i.i.i.i303, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i309, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i304

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i309: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i302, %bb.bc
  %i.nv = sub i64 %i.nn, %i.np
  %spec.select7.i.i.i.i.i310 = call i64 @llvm.smax.i64(i64 %i.nv, i64 -2147483648)
  %.08.i.i.i.i.i311 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i310, i64 2147483647)
  %.0.i6.i.i.i.i312 = trunc nsw i64 %.08.i.i.i.i.i311 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i304

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i304: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i309, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i302
  %.0.i.i.i.i305 = phi i32 [ %i.nu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i302 ], [ %.0.i6.i.i.i.i312, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i309 ]
  %i.nw = icmp slt i32 %.0.i.i.i.i305, 0
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i304, %bb.bb
  %i.nx = phi i1 [ %i.nw, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i304 ], [ true, %bb.bb ]
  %i.ny = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
          to label %.noexc313 unwind label %bb.bm ; 4 uses

.noexc313:                                        ; preds = %bb.bd
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 32 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 48 ; 3 uses
  store ptr %i.oa, ptr %i.nz, align 8
  %i.ob = load ptr, ptr %7, align 8               ; 2 uses
  %i.oc = icmp eq ptr %i.ob, %i.my
  br i1 %i.oc, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i306

bb.be:                                            ; preds = %.noexc313
  %i.od = load i64, ptr %i.ng, align 8            ; 3 uses
  %i.oe = icmp ult i64 %i.od, 16
  call void @llvm.assume(i1 %i.oe)
  %i.of = add nuw nsw i64 %i.od, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.oa, ptr noundef nonnull align 8 dereferenceable(1) %i.my, i64 %i.of, i1 false)
  br label %.noexc180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i306: ; preds = %.noexc313
  store ptr %i.ob, ptr %i.nz, align 8
  %i.og = load i64, ptr %i.my, align 8
  store i64 %i.og, ptr %i.oa, align 8
  %.pre.i.i.i308 = load i64, ptr %i.ng, align 8
  br label %.noexc180

.noexc180:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i306, %bb.be
  %i.oh = phi i64 [ %i.od, %bb.be ], [ %.pre.i.i.i308, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i306 ]
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ny, i64 40
  store i64 %i.oh, ptr %i.oi, align 8
  store ptr %i.my, ptr %7, align 8
  store i64 0, ptr %i.ng, align 8
  store i8 0, ptr %i.my, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.nx, ptr noundef nonnull %i.ny, ptr noundef nonnull %i.nk, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #23
  %i.oj = load i64, ptr %i.al, align 8
  %i.ok = add i64 %i.oj, 1
  store i64 %i.ok, ptr %i.al, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc180, %.noexc179
  %i.ol = load ptr, ptr %7, align 8               ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.my
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.bf
  %i.on = load i64, ptr %i.my, align 8
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.op = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.oq = load i32, ptr %i.op, align 4
  %i.or = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.or, i8 0, i64 1024, i1 false)
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.oq, i32 1023) ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  %i.ot = zext nneg i32 %spec.select.i to i64     ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.or, ptr nonnull align 4 %i.os, i64 %i.ot, i1 false)
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 %i.ot
  store i8 0, ptr %i.ou, align 1
  %i.ov = getelementptr inbounds nuw i8, ptr %i.op, i64 1096
  store ptr %i.kk, ptr %i.ov, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.kk, i64 1104 ; 2 uses
  store i32 1, ptr %i.ow, align 8
  %i.ox = call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #25 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.kk, i64 1112 ; 2 uses
  store ptr %i.ox, ptr %i.oy, align 8
  %i.oz = load ptr, ptr %i.ab, align 8
  store ptr %i.oz, ptr %i.ox, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.pa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %9, ptr %i.pa, align 8
  store ptr %9, ptr %9, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.pb, align 8
  invoke void @_ZN6Assimp20OptimizeGraphProcess18CollectNewChildrenEP6aiNodeRNSt7__cxx114listIS2_SaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.kk, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.bg unwind label %bb.bn

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.pc = load i32, ptr %i.ow, align 8
  switch i32 %i.pc, label %bb.bp [
    i32 0, label %bb.bh
    i32 1, label %bb.bq
  ]

bb.bh:                                            ; preds = %bb.bg
  store ptr null, ptr %i.ab, align 8
  %i.pd = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pd, ptr noundef nonnull @.str.5)
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_throw(ptr nonnull %i.pd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
          to label %bb.cc unwind label %bb.bn

bb.bj:                                            ; preds = %.noexc.i146
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

bb.bk:                                            ; preds = %.noexc147
  %i.pf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pg = load ptr, ptr %6, align 8               ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.kl
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %bb.bk
  %i.pi = load i64, ptr %i.kl, align 8
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.pe, %bb.bj ], [ %i.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185 ], [ %i.pf, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef 1144) #24
  br label %bb.cb

bb.bl:                                            ; preds = %.noexc.i171
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

bb.bm:                                            ; preds = %bb.bd, %bb.ba
  %i.pl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pm = load ptr, ptr %7, align 8               ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.my
  br i1 %i.pn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.bm
  %i.po = load i64, ptr %i.my, align 8
  %i.pp = add i64 %i.po, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.bl
  %.pn88 = phi { ptr, i32 } [ %i.pk, %bb.bl ], [ %i.pl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %i.pl, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.cb

bb.bn:                                            ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.br, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bo:                                            ; preds = %bb.bh
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pd) #23
  br label %bb.ca

bb.bp:                                            ; preds = %bb.bg
  store ptr %i.kk, ptr %i.ab, align 8
  store i32 %spec.select.i, ptr %i.kk, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mx, ptr nonnull align 4 %i.or, i64 %i.ot, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.ot
  store i8 0, ptr %i.ps, align 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.bg
  %i.pt = load ptr, ptr %i.oy, align 8            ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8
  store ptr %i.pu, ptr %i.ab, align 8
  store ptr null, ptr %i.pt, align 8
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.kk) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef 1144) #24
  %.pre407 = load ptr, ptr %i.ab, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.pv = phi ptr [ %.pre407, %bb.bq ], [ %i.kk, %bb.bp ]
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 1096
  store ptr null, ptr %i.pw, align 8
  %i.px = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.bs unwind label %bb.bn

bb.bs:                                            ; preds = %bb.br
  br i1 %i.px, label %bb.by, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.py = load i32, ptr %i.k, align 8
  %i.pz = load i32, ptr %i.j, align 4
  %.not90 = icmp eq i32 %i.py, %i.pz
  br i1 %.not90, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qa = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bv unwind label %bb.bn

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN6Assimp6Logger4infoIJRA45_KcRjRA17_S2_S5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.qa, ptr noundef nonnull align 1 dereferenceable(45) @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(17) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.by unwind label %bb.bn

bb.bw:                                            ; preds = %bb.bt
  %i.qb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bx unwind label %bb.bn

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.qb, ptr noundef nonnull @.str.8)
          to label %bb.by unwind label %bb.bn

bb.by:                                            ; preds = %bb.bv, %bb.bx, %bb.bs
  %i.qc = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.qd = load ptr, ptr %i.q, align 8
  %.not.i.i192 = icmp eq ptr %i.qd, %i.qc
  br i1 %.not.i.i192, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i193

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i193:     ; preds = %bb.by
  store ptr %i.qc, ptr %i.q, align 8
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.by, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i193
  %i.qe = load ptr, ptr %i.ae, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef %i.qe)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit194 unwind label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.qf = landingpad { ptr, i32 }
          catch ptr null
  %i.qg = extractvalue { ptr, i32 } %i.qf, 0
  call void @__clang_call_terminate(ptr %i.qg) #26
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit194: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  store ptr null, ptr %i.ae, align 8
  store ptr %i.ai, ptr %i.aj, align 8
  store ptr %i.ai, ptr %i.ak, align 8
  store i64 0, ptr %i.al, align 8
  %i.qh = load ptr, ptr %9, align 8               ; 2 uses
  %.not8.i.i = icmp eq ptr %i.qh, %9
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit194, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.qi, %.lr.ph.i.i ], [ %i.qh, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit194 ] ; 2 uses
  %i.qi = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #24
  %.not.i.i195 = icmp eq ptr %i.qi, %9
  br i1 %.not.i.i195, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE5clearEv.exit194
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void

bb.ca:                                            ; preds = %bb.bo, %bb.bn
  %.pn91 = phi { ptr, i32 } [ %i.pq, %bb.bn ], [ %i.pr, %bb.bo ]
  %i.qj = load ptr, ptr %9, align 8               ; 2 uses
  %.not8.i.i196 = icmp eq ptr %i.qj, %9
  br i1 %.not8.i.i196, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit200, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %bb.ca, %.lr.ph.i.i197
  %.09.i.i198 = phi ptr [ %i.qk, %.lr.ph.i.i197 ], [ %i.qj, %bb.ca ] ; 2 uses
  %i.qk = load ptr, ptr %.09.i.i198, align 8      ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i198, i64 noundef 24) #24
  %.not.i.i199 = icmp eq ptr %i.qk, %9
  br i1 %.not.i.i199, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit200, label %.lr.ph.i.i197, !llvm.loop !12

_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit200: ; preds = %.lr.ph.i.i197, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit200, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ], [ %.pn98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.pn96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.pn94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %.pn91, %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit200 ], [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ]
  resume { ptr, i32 } %.pn100.pn

bb.cc:                                            ; preds = %bb.bi
  unreachable
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #5

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp20OptimizeGraphProcess19FindInstancedMeshesEP6aiNode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1128
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph13

.lr.ph13:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.a, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %.preheader, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void

bb.c:                                             ; preds = %.lr.ph13, %bb.c
  %indvars.iv16 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next17, %bb.c ] ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @_ZN6Assimp20OptimizeGraphProcess19FindInstancedMeshesEP6aiNode(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.u)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1 ; 2 uses
  %i.v = load i32, ptr %i.e, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next17, %i.w
  br i1 %i.x, label %bb.c, label %._crit_edge, !llvm.loop !23
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
end_hunk_3

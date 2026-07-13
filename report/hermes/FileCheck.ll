inline.NumInlined: 1998
inline.NumDeleted: 843
begin_hunk_0_@_ZNK4llvh16FileCheckPattern17PrintVariableUsesERKNS_9SourceMgrENS_9StringRefERKNS_9StringMapIS4_NS_15MallocAllocatorEEENS_7SMRangeE:bb.a
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !45
  %i.dr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream13write_escapedENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr %.sroa.02.0.copyload, i64 %.sroa.2.0.copyload, i1 noundef zeroext false) #18 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !143
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !144 ; 2 uses
  %i.dw = icmp eq ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit45
  %i.dx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.dr, ptr noundef nonnull @.str.19, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit39

bb.aa:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit45
  store i8 34, ptr %i.dv, align 1
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !144
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  store ptr %i.dz, ptr %i.du, align 8, !tbaa !144
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit39

_ZN4llvh11raw_ostreamlsEPKc.exit39:               ; preds = %bb.s, %bb.t, %bb.z, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ea = load ptr, ptr %5, align 8, !tbaa !145   ; 2 uses
  %.not71 = icmp eq ptr %i.ea, null
  br i1 %.not71, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.eb = load ptr, ptr %i.k, align 8, !tbaa !146, !nonnull !17, !align !149 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !123
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !125
  %i.ef = zext i32 %i.ee to i64
  store ptr %i.ec, ptr %10, align 8
  store i64 %i.ef, ptr %i.q, align 8
  store i8 5, ptr %i.r, align 8, !tbaa !48
  store i8 1, ptr %i.s, align 1, !tbaa !54
  store ptr %10, ptr %9, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nonnull %i.ea, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(18) %9, ptr nonnull %11, i64 1, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %12, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.eg = load ptr, ptr %i.k, align 8, !tbaa !146, !nonnull !17, !align !149 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !123
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !125
  %i.ek = zext i32 %i.ej to i64
  store ptr %i.eh, ptr %14, align 8
  store i64 %i.ek, ptr %i.t, align 8
  store i8 5, ptr %i.u, align 8, !tbaa !48
  store i8 1, ptr %i.v, align 1, !tbaa !54
  store ptr %14, ptr %13, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(18) %13, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %15, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.el = load ptr, ptr %6, align 8, !tbaa !123   ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.f
  br i1 %i.em, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.el) #18
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit:          ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.066.072, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.en, %i.d
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream13write_escapedENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(36), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh16FileCheckPattern15PrintFuzzyMatchERKNS_9SourceMgrENS_9StringRefERKNS_9StringMapIS4_NS_15MallocAllocatorEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i64 %3, ptr nofree nonnull readnone align 8 captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 4096)
  %.not58 = icmp eq i64 %3, 0
  br i1 %.not58, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.f = fcmp olt double %.231, 5.000000e+01
  %i.g = add i64 %.2, -1
  %or.cond3 = icmp ult i64 %i.g, -2
  %or.cond5 = select i1 %or.cond3, i1 %i.f, i1 false
  br i1 %or.cond5, label %bb.e, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.062 = phi i64 [ 0, %.lr.ph ], [ %spec.select, %bb.d ]
  %.02761 = phi i64 [ -1, %.lr.ph ], [ %.2, %bb.d ] ; 4 uses
  %.02960 = phi double [ 0.000000e+00, %.lr.ph ], [ %.231, %bb.d ] ; 4 uses
  %.03259 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.03259 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !44    ; 2 uses
  %i.j = icmp eq i8 %i.i, 10
  %i.k = zext i1 %i.j to i64
  %spec.select = add i64 %.062, %i.k              ; 2 uses
  switch i8 %i.i, label %bb.c [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %3, %.03259
  %.sroa.07.0.copyload.i = load ptr, ptr %i.b, align 8, !tbaa !42
  %.sroa.58.0.copyload.i = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !45 ; 2 uses
  %i.m = icmp eq i64 %.sroa.58.0.copyload.i, 0    ; 2 uses
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = load i64, ptr %i.d, align 8
  %.sroa.58.0.i = select i1 %i.m, i64 %i.o, i64 %.sroa.58.0.copyload.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %.sroa.speculated16.i = call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.58.0.i)
  store ptr %i.h, ptr %5, align 8
  store i64 %.sroa.speculated16.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !44, !noalias !151
  %i.p = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.a, i64 1, i64 noundef 0) #18, !noalias !154
  %.sroa.5.0.copyload5.i = load i64, ptr %i.e, align 8, !tbaa !45
  %i.q = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload5.i, i64 %i.p)
  %.sroa.07.0.i = select i1 %i.m, ptr %i.n, ptr %.sroa.07.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.q, ptr %i.e, align 8, !tbaa !45
  %i.r = call noundef i32 @_ZNK4llvh9StringRef13edit_distanceES0_bj(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.07.0.i, i64 %.sroa.58.0.i, i1 noundef zeroext true, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.s = uitofp i32 %i.r to double
  %i.t = uitofp i64 %spec.select to double
  %i.u = fdiv double %i.t, 1.000000e+02
  %i.v = fadd double %i.u, %i.s                   ; 2 uses
  %i.w = fcmp olt double %i.v, %.02960
  %i.x = icmp eq i64 %.02761, -1
  %or.cond = select i1 %i.w, i1 true, i1 %i.x     ; 2 uses
  %.130 = select i1 %or.cond, double %i.v, double %.02960
  %.128 = select i1 %or.cond, i64 %.03259, i64 %.02761
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.231 = phi double [ %.02960, %bb.b ], [ %.02960, %bb.b ], [ %.130, %bb.c ] ; 2 uses
  %.2 = phi i64 [ %.02761, %bb.b ], [ %.02761, %bb.b ], [ %.128, %bb.c ] ; 3 uses
  %i.y = add nuw nsw i64 %.03259, 1               ; 2 uses
  %.not = icmp eq i64 %i.y, %.sroa.speculated
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !157

bb.e:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %.2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.ab, align 1, !tbaa !54
  store ptr @.str.23, ptr %6, align 8, !tbaa !44
  store i8 3, ptr %i.aa, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.z, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(18) %6, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %7, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh9FileCheck16CanonicalizeFileERNS_12MemoryBufferERNS_15SmallVectorImplIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !160  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !126
  %i.j = zext i32 %i.i to i64
  %i.k = icmp ugt i64 %i.g, %i.j
  br i1 %i.k, label %bb.b, label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.l, i64 noundef %i.g, i64 noundef 1) #18
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !160
  %.pre51 = load ptr, ptr %i.a, align 8, !tbaa !158
  br label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

_ZN4llvh15SmallVectorImplIcE7reserveEm.exit:      ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.b, %bb.a ], [ %.pre51, %bb.b ] ; 6 uses
  %i.n = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not46 = icmp eq ptr %i.n, %i.m
  br i1 %.not46, label %._crit_edge, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  %3 = ptrtoaddr ptr %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %.critedge, %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !125  ; 2 uses
  %i.u = load i32, ptr %i.h, align 4, !tbaa !126
  %.not.i = icmp ult i32 %i.t, %i.u
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.c, !prof !161

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 1) #18
  %.pre.i = load i32, ptr %i.s, align 8, !tbaa !125
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %._crit_edge, %bb.c
  %i.w = phi i32 [ %.pre.i, %bb.c ], [ %i.t, %._crit_edge ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !123
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  store i8 0, ptr %i.z, align 1
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !125
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %i.s, align 8, !tbaa !125
  %i.ac = load ptr, ptr %2, align 8, !tbaa !123
  %i.ad = zext i32 %i.ab to i64
  %i.ae = add nsw i64 %i.ad, -1
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.ac, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.ae, 1
  ret { ptr, i64 } %.fca.1.insert

bb.d:                                             ; preds = %.lr.ph48, %.critedge
  %.047 = phi ptr [ %i.n, %.lr.ph48 ], [ %i.bk, %.critedge ] ; 12 uses
  %.04749 = ptrtoaddr ptr %.047 to i64
  %.not31 = icmp ugt ptr %.047, %i.o
  br i1 %.not31, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load i8, ptr %.047, align 1, !tbaa !44
  %i.ag = icmp eq i8 %i.af, 13
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.047, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !44
  %i.aj = icmp eq i8 %i.ai, 10
  br i1 %i.aj, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ak = load i8, ptr %i.p, align 8, !tbaa !162, !range !16, !noundef !17
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %.047, align 1, !tbaa !44
  switch i8 %i.am, label %bb.i [
    i8 32, label %bb.k
    i8 9, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = load i32, ptr %i.q, align 8, !tbaa !125 ; 2 uses
  %i.ao = load i32, ptr %i.h, align 4, !tbaa !126
  %.not.i35 = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i35, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37, label %bb.j, !prof !161

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 1) #18
  %.pre.i36 = load i32, ptr %i.q, align 8, !tbaa !125
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37: ; preds = %bb.i, %bb.j
  %i.ap = phi i32 [ %.pre.i36, %bb.j ], [ %i.an, %bb.i ]
  %i.aq = load ptr, ptr %2, align 8, !tbaa !123
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = load i8, ptr %.047, align 1
  store i8 %i.at, ptr %i.as, align 1
  %i.au = load i32, ptr %i.q, align 8, !tbaa !125
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.q, align 8, !tbaa !125
  br label %.critedge

bb.k:                                             ; preds = %bb.h, %bb.h
  %i.aw = load i32, ptr %i.q, align 8, !tbaa !125 ; 2 uses
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !126
  %.not.i38 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i38, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40, label %bb.l, !prof !161

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 1) #18
  %.pre.i39 = load i32, ptr %i.q, align 8, !tbaa !125
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40: ; preds = %bb.k, %bb.l
  %i.ay = phi i32 [ %.pre.i39, %bb.l ], [ %i.aw, %bb.k ]
  %i.az = load ptr, ptr %2, align 8, !tbaa !123
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i8 32, ptr %i.bb, align 1
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !125
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.q, align 8, !tbaa !125
  %i.be = getelementptr inbounds nuw i8, ptr %.047, i64 1 ; 2 uses
  %.not3442 = icmp eq ptr %i.be, %i.m
  br i1 %.not3442, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40
  %i.bf = getelementptr i8, ptr %.047, i64 %3
  %scevgep = getelementptr i8, ptr %i.bf, i64 -1
  %i.bg = sub i64 0, %.04749
  %scevgep50 = getelementptr i8, ptr %scevgep, i64 %i.bg
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %i.bh = phi ptr [ %i.bj, %.critedge2 ], [ %i.be, %.lr.ph.preheader ] ; 3 uses
  %.143 = phi ptr [ %i.bh, %.critedge2 ], [ %.047, %.lr.ph.preheader ]
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !44
  switch i8 %i.bi, label %.critedge [
    i8 32, label %.critedge2
    i8 9, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  %.not34 = icmp eq ptr %i.bj, %i.m
  br i1 %.not34, label %.critedge, label %.lr.ph, !llvm.loop !164

.critedge:                                        ; preds = %.critedge2, %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40, %bb.f, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37
  %.2 = phi ptr [ %.047, %bb.f ], [ %.047, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37 ], [ %.047, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40 ], [ %scevgep50, %.critedge2 ], [ %.143, %.lr.ph ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bk, %i.m
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !165
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvh::SmallVector.97", align 8 ; 15 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"struct.llvh::SourceMgr::SrcBuffer", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.llvh::StringRef", align 8   ; 18 uses
  %9 = alloca %"class.std::vector.41", align 8    ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvh::FileCheckPattern", align 8 ; 16 uses
  %17 = alloca %"class.std::vector.41", align 8   ; 19 uses
  %18 = alloca %"class.llvh::StringRef", align 8  ; 18 uses
  %19 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %22 = alloca %"class.llvh::SMLoc", align 8      ; 5 uses
  %23 = alloca %"class.llvh::FileCheckPattern", align 8 ; 21 uses
  %24 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %25 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %26 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %27 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %28 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %29 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %30 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %31 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %32 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %33 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %34 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %35 = alloca %"class.llvh::FileCheckPattern", align 8 ; 17 uses
  %36 = alloca %"class.llvh::SMLoc", align 8      ; 4 uses
  store ptr %2, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 15 uses
  store i64 %3, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !166  ; 2 uses
  %.not320 = icmp eq ptr %i.f, %i.h
  br i1 %.not320, label %._crit_edge.thread, label %._crit_edge.i.i.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread

._crit_edge.i.i.lr.ph:                            ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 17
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 17
  br label %._crit_edge.i.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !167 ; 3 uses
  %.pre349 = load ptr, ptr %9, align 8, !tbaa !170 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.an = ptrtoint ptr %.pre to i64
  %i.ao = ptrtoint ptr %.pre349 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.pre, %.pre349
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread, label %bb.b

_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread: ; preds = %._crit_edge.thread, %._crit_edge
  %i.aq = phi ptr [ %i.i, %._crit_edge.thread ], [ %i.am, %._crit_edge ]
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.as, align 8, !tbaa !171
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEC2ERKS3_.exit

bb.b:                                             ; preds = %._crit_edge
  %i.at = sdiv exact i64 %i.ap, 136
  %i.au = icmp ugt i64 %i.at, 67818912035696880
  br i1 %i.au, label %bb.c, label %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i, !prof !172

bb.c:                                             ; preds = %bb.b
  call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i: ; preds = %bb.b
  %i.av = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #23 ; 4 uses
  store ptr %i.av, ptr %17, align 8, !tbaa !170
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !167
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ap
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !171
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.av, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.pre349, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  call void @_ZN4llvh16FileCheckPatternC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.04.08.i.i.i.i.i)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 136 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %.pre
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !173

_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread
  %i.bb = phi ptr [ %i.aq, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.am, %.lr.ph.i.i.i.i.i ]
  %i.bc = phi ptr [ %i.as, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.ay, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %i.bd = phi ptr [ %i.ar, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.aw, %.lr.ph.i.i.i.i.i ] ; 10 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4llvh16FileCheckPatternESaIS1_EEC2EmRKS2_.exit.i.thread ], [ %i.ba, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !167
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.be, ptr %6, align 8, !tbaa !123
  store i32 0, ptr %i.bf, align 8, !tbaa !125
  store i32 2, ptr %i.bg, align 4, !tbaa !126
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !71  ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.thread308.sink.split, label %.lr.ph.preheader.i.lr.ph

.lr.ph.preheader.i.lr.ph:                         ; preds = %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EEC2ERKS3_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.bm = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %23, i64 56 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %23, i64 88 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %23, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %23, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %23, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %23, i64 120 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %33, i64 17
  %i.ca = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %32, i64 17
end_hunk_0

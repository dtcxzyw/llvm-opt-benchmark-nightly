inline.NumInlined: 450
inline.NumDeleted: 215
begin_hunk_0_@_ZN3p2t4EdgeC2ERNS_5PointES2_:bb.a

.sink.split:                                      ; preds = %bb.c, %bb.a
  store ptr %1, ptr %i.a, align 8
  store ptr %2, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.b, %bb.d
  %i.n = phi ptr [ %2, %bb.b ], [ %2, %bb.d ], [ %1, %.sink.split ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %0, ptr %i.q, align 8
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.p, align 8
  br label %_ZNSt6vectorIPN3p2t4EdgeESaIS2_EE9push_backEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.k, label %_ZNKSt6vectorIPN3p2t4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIPN3p2t4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #17 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store ptr %0, ptr %i.ah, align 8
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.l, label %_ZNSt6vectorIPN3p2t4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPN3p2t4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPN3p2t4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN3p2t4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPN3p2t4EdgeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN3p2t4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN3p2t4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.y) #16
  br label %_ZNSt6vectorIPN3p2t4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN3p2t4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPN3p2t4EdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ag, ptr %i.o, align 8
  store ptr %i.aj, ptr %i.p, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ak, ptr %i.r, align 8
  br label %_ZNSt6vectorIPN3p2t4EdgeESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN3p2t4EdgeESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.i, %_ZNSt6vectorIPN3p2t4EdgeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN3p2t12SweepContext8GetPointEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i64 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1
  %i.d = load ptr, ptr %i.c, align 8
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t12SweepContext8AddToMapEPNS_8TriangleE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.c, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN3p2t12SweepContext10LocateNodeERKNS_5PointE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load double, ptr %1, align 8
  %i.d = tail call noundef ptr @_ZN3p2t14AdvancingFront10LocateNodeEd(ptr noundef nonnull align 8 dereferenceable(24) %i.b, double noundef %i.c)
  ret ptr %i.d
}

declare noundef ptr @_ZN3p2t14AdvancingFront10LocateNodeEd(ptr noundef nonnull align 8 dereferenceable(24), double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t12SweepContext20CreateAdvancingFrontEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8
  invoke void @_ZN3p2t8TriangleC1ERNS_5PointES2_S2_(ptr noundef nonnull align 8 dereferenceable(57) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.a, ptr %i.k, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  store ptr %i.r, ptr %i.o, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.a, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.v = load double, ptr %i.r, align 8
  store double %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.o, ptr %i.w, align 8
  %i.x = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 5 uses
  %i.y = load ptr, ptr %i.p, align 8              ; 2 uses
  store ptr %i.y, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.a, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ac = load double, ptr %i.y, align 8
  store double %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  store ptr %i.x, ptr %i.ad, align 8
  %i.ae = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  store ptr %i.ag, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.aj = load double, ptr %i.ag, align 8
  store double %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  store ptr %i.ae, ptr %i.ak, align 8
  %i.al = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17 ; 3 uses
  invoke void @_ZN3p2t14AdvancingFrontC1ERNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.al, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ao = load ptr, ptr %i.w, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.an, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = load ptr, ptr %i.w, align 8
  %i.at = load ptr, ptr %i.ad, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.as, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.ad, align 8
  %i.aw = load ptr, ptr %i.ak, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.av, ptr %i.ax, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 24) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.az, %bb.e ], [ %i.ay, %bb.d ]
  resume { ptr, i32 } %.pn
}

declare void @_ZN3p2t8TriangleC1ERNS_5PointES2_S2_(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare void @_ZN3p2t14AdvancingFrontC1ERNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3p2t12SweepContext10RemoveNodeEPNS_4NodeE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 40) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t12SweepContext18MapTriangleToNodesERNS_8TriangleE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = tail call noundef ptr @_ZN3p2t8Triangle7PointCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.f)
  %i.h = tail call noundef ptr @_ZN3p2t14AdvancingFront11LocatePointEPKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef %i.g) ; 2 uses
  %.not11 = icmp eq ptr %i.h, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %1, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %.not.1 = icmp eq ptr %i.k, null
  br i1 %.not.1, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr @_ZN3p2t8Triangle7PointCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.n)
  %i.p = tail call noundef ptr @_ZN3p2t14AdvancingFront11LocatePointEPKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef %i.o) ; 2 uses
  %.not11.1 = icmp eq ptr %i.p, null
  br i1 %.not11.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %1, ptr %i.q, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %.not.2 = icmp eq ptr %i.s, null
  br i1 %.not.2, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr @_ZN3p2t8Triangle7PointCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.v)
  %i.x = tail call noundef ptr @_ZN3p2t14AdvancingFront11LocatePointEPKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef %i.w) ; 2 uses
  %.not11.2 = icmp eq ptr %i.x, null
  br i1 %.not11.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %1, ptr %i.y, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  ret void
}

declare noundef ptr @_ZN3p2t14AdvancingFront11LocatePointEPKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN3p2t8Triangle7PointCWERKNS_5PointE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN3p2t12SweepContext13RemoveFromMapEPNS_8TriangleE(ptr noundef nonnull align 8 captures(address) dereferenceable(200) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::list", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.b, align 8
  store ptr %2, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.c, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.d, %i.a
  br i1 %.not10.i, label %_ZNSt7__cxx114listIPN3p2t8TriangleESaIS3_EE6removeERKS3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx114listIPN3p2t8TriangleESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit.i, %.lr.ph.i
  %.sroa.06.011.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.f, %_ZNSt7__cxx114listIPN3p2t8TriangleESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit.i ] ; 4 uses
  %i.f = load ptr, ptr %.sroa.06.011.i, align 8   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, %1
  br i1 %i.i, label %bb.c, label %_ZNSt7__cxx114listIPN3p2t8TriangleESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8                ; 3 uses
  %i.k = icmp eq ptr %i.j, %.sroa.06.011.i
  %i.l = icmp eq ptr %i.j, %i.f
  %or.cond.i.i.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i.i.i, label %_ZNSt7__cxx114listIPN3p2t8TriangleESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull %.sroa.06.011.i, ptr noundef %i.f) #19
  %i.m = load i64, ptr %i.c, align 8
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.c, align 8
  %i.o = load i64, ptr %i.e, align 8
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.e, align 8
  br label %_ZNSt7__cxx114listIPN3p2t8TriangleESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit.i

_ZNSt7__cxx114listIPN3p2t8TriangleESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.not.i = icmp eq ptr %i.f, %i.a
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !10

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx114listIPN3p2t8TriangleESaIS3_EE6spliceESt20_List_const_iteratorIS3_ERS5_S7_.exit.i
  %.pre.i = load ptr, ptr %2, align 8             ; 2 uses
  %.not8.i.i.i = icmp eq ptr %.pre.i, %2
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx114listIPN3p2t8TriangleESaIS3_EE6removeERKS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %i.q = load ptr, ptr %.09.i.i.i, align 8        ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #16
  %.not.i.i.i = icmp eq ptr %i.q, %2
  br i1 %.not.i.i.i, label %_ZNSt7__cxx114listIPN3p2t8TriangleESaIS3_EE6removeERKS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZNSt7__cxx114listIPN3p2t8TriangleESaIS3_EE6removeERKS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.a, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3p2t12SweepContext9MeshCleanERNS_8TriangleE(ptr noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIPN3p2t8TriangleESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17 ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZNKSt6vectorIPN3p2t8TriangleESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.loopexit
  %.sroa.0.086 = phi ptr [ %i.a, %_ZNKSt6vectorIPN3p2t8TriangleESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.0.3, %.loopexit ] ; 11 uses
  %.sroa.11.085 = phi ptr [ %i.b, %_ZNKSt6vectorIPN3p2t8TriangleESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.11.3, %.loopexit ] ; 2 uses
  %.sroa.23.084 = phi ptr [ %i.b, %_ZNKSt6vectorIPN3p2t8TriangleESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.23.3, %.loopexit ] ; 10 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.11.085, i64 -8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 10 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !11, !noundef !12
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.h, align 8
  %i.k = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.l = load ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.d, align 8
  br label %_ZNSt6vectorIPN3p2t8TriangleESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
end_hunk_0

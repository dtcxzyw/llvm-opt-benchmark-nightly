Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/DelayedLoadMetadata?download=true
inline.NumInlined: 653
inline.NumDeleted: 333
begin_hunk_0_@_ZN7openvdb5v13_02io19DelayedLoadMetadata5clearEv:bb.a
  br label %_ZNSt6vectorIaSaIaEE5clearEv.exit

_ZNSt6vectorIaSaIaEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %.not.i.i1 = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i1, label %_ZNSt6vectorIlSaIlEE5clearEv.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIaSaIaEE5clearEv.exit
  store ptr %i.f, ptr %i.g, align 8, !tbaa !22
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit

_ZNSt6vectorIlSaIlEE5clearEv.exit:                ; preds = %_ZNSt6vectorIaSaIaEE5clearEv.exit, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata5emptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = icmp eq ptr %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io19DelayedLoadMetadata10resizeMaskEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIaSaIaEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.i)
  br label %_ZNSt6vectorIaSaIaEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIaSaIaEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.k
  br i1 %.not.i.i, label %_ZNSt6vectorIaSaIaEE6resizeEm.exit, label %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.k, ptr %i.b, align 8, !tbaa !13
  br label %_ZNSt6vectorIaSaIaEE6resizeEm.exit

_ZNSt6vectorIaSaIaEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io19DelayedLoadMetadata20resizeCompressedSizeEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 3 uses
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw i64 %1, %i.h
  tail call void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.j)
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %1, %i.h
  br i1 %i.k, label %bb.d, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.l, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext i8 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata7getMaskEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19
  ret i8 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7openvdb5v13_02io19DelayedLoadMetadata7setMaskEmRKa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %1
  store i8 %i.a, ptr %i.d, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7openvdb5v13_02io19DelayedLoadMetadata17getCompressedSizeEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %1
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7openvdb5v13_02io19DelayedLoadMetadata17setCompressedSizeEmRKl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  store i64 %i.a, ptr %i.d, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_02io19DelayedLoadMetadata9readValueERSij(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !41
  %i.d = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !41
  %i.e = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !41   ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %i.f to i64
  %i.h = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #26 ; 5 uses
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = zext i32 %i.i to i64
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.h, i64 noundef %i.j)
          to label %bb.d unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit53 ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.b, align 4, !tbaa !41
  %i.m = invoke noundef i64 @_ZN7openvdb5v13_011compression21bloscUncompressedSizeEPKc(ptr noundef nonnull %i.h)
          to label %bb.e unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit53

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %i.m, 17
  %i.o = uitofp i64 %i.n to float
  %i.p = fptoui float %i.o to i64                 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.r = icmp slt i64 %i.p, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25
          to label %.noexc unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit53

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !14   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, %i.p
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  br i1 %i.y, label %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIaSaIaEE7reserveEm.exit

_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.w
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26
          to label %.noexc49 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit53 ; 5 uses

.noexc49:                                         ; preds = %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !14  ; 4 uses
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit.i

bb.h:                                             ; preds = %.noexc49
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit.i: ; preds = %bb.h, %.noexc49
  %.not.i8.i = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit.i
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.am) #27
  br label %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i

_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i: ; preds = %bb.i, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit.i
  store ptr %i.ad, ptr %i.q, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac ; 2 uses
  store ptr %i.an, ptr %i.z, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.p ; 2 uses
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !16
  br label %_ZNSt6vectorIaSaIaEE7reserveEm.exit

_ZNSt6vectorIaSaIaEE7reserveEm.exit:              ; preds = %bb.g, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i
  %i.ap = phi ptr [ %i.ao, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i ], [ %i.t, %bb.g ] ; 3 uses
  %i.aq = phi ptr [ %i.ad, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i ], [ %i.u, %bb.g ] ; 5 uses
  %i.ar = phi ptr [ %i.an, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i ], [ %i.aa, %bb.g ] ; 2 uses
  %.pre-phi116 = ptrtoint ptr %i.aq to i64
  %i.as = load i32, ptr %i.a, align 4, !tbaa !41
  %i.at = zext i32 %i.as to i64                   ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.av, %.pre-phi116             ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %i.at
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIaSaIaEE7reserveEm.exit
  %i.ay = sub nuw nsw i64 %i.at, %i.aw
  invoke void @_ZNSt6vectorIaSaIaEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.ay)
          to label %._ZNSt6vectorIaSaIaEE6resizeEm.exit_crit_edge unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit53

._ZNSt6vectorIaSaIaEE6resizeEm.exit_crit_edge:    ; preds = %bb.j
  %.pre94 = load ptr, ptr %i.q, align 8, !tbaa !14
  %.pre95 = load i32, ptr %i.a, align 4, !tbaa !41
  %.pre96 = load ptr, ptr %i.s, align 8, !tbaa !16
  %.pre117 = zext i32 %.pre95 to i64
  br label %_ZNSt6vectorIaSaIaEE6resizeEm.exit

bb.k:                                             ; preds = %_ZNSt6vectorIaSaIaEE7reserveEm.exit
  %i.az = icmp ugt i64 %i.aw, %i.at
  br i1 %i.az, label %bb.l, label %_ZNSt6vectorIaSaIaEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.ba
  br i1 %.not.i.i, label %_ZNSt6vectorIaSaIaEE6resizeEm.exit, label %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.l
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !13
  br label %_ZNSt6vectorIaSaIaEE6resizeEm.exit

_ZNSt6vectorIaSaIaEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIaSaIaEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i, %bb.l, %bb.k
  %.pre-phi118 = phi i64 [ %.pre117, %._ZNSt6vectorIaSaIaEE6resizeEm.exit_crit_edge ], [ %i.at, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i ], [ %i.at, %bb.l ], [ %i.at, %bb.k ]
  %i.bb = phi ptr [ %.pre96, %._ZNSt6vectorIaSaIaEE6resizeEm.exit_crit_edge ], [ %i.ap, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ap, %bb.l ], [ %i.ap, %bb.k ]
  %i.bc = phi ptr [ %.pre94, %._ZNSt6vectorIaSaIaEE6resizeEm.exit_crit_edge ], [ %i.aq, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i ], [ %i.aq, %bb.l ], [ %i.aq, %bb.k ] ; 2 uses
  %.pre-phi120 = ptrtoint ptr %i.bc to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bd, %.pre-phi120
  invoke void @_ZN7openvdb5v13_011compression15bloscDecompressEPcmmPKc(ptr noundef %i.bc, i64 noundef %.pre-phi118, i64 noundef %i.be, ptr noundef nonnull %i.h)
          to label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit53

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIaSaIaEE6resizeEm.exit
  call void @_ZdaPv(ptr noundef nonnull %i.h) #27
  br label %bb.q

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit53: ; preds = %bb.j, %_ZNSt12_Vector_baseIaSaIaEE11_M_allocateEm.exit.i, %bb.f, %bb.c, %bb.d, %_ZNSt6vectorIaSaIaEE6resizeEm.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.h) #27
  br label %bb.ak

bb.m:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !41
  %i.bi = zext i32 %i.bh to i64                   ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !14 ; 5 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp ult i64 %i.bo, %i.bi
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = sub nuw nsw i64 %i.bi, %i.bo
  call void @_ZNSt6vectorIaSaIaEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %i.bq)
  %.pre97 = load ptr, ptr %i.bg, align 8, !tbaa !14
  %.pre98 = load i32, ptr %i.a, align 4, !tbaa !41
  %.pre106 = zext i32 %.pre98 to i64
  br label %_ZNSt6vectorIaSaIaEE6resizeEm.exit56

bb.o:                                             ; preds = %bb.m
  %i.br = icmp ugt i64 %i.bo, %i.bi
  br i1 %i.br, label %bb.p, label %_ZNSt6vectorIaSaIaEE6resizeEm.exit56

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.bk, %i.bs
  br i1 %.not.i.i54, label %_ZNSt6vectorIaSaIaEE6resizeEm.exit56, label %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i55

_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i55:      ; preds = %bb.p
  store ptr %i.bs, ptr %i.bj, align 8, !tbaa !13
  br label %_ZNSt6vectorIaSaIaEE6resizeEm.exit56

_ZNSt6vectorIaSaIaEE6resizeEm.exit56:             ; preds = %bb.n, %bb.o, %bb.p, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i55
  %.pre-phi = phi i64 [ %.pre106, %bb.n ], [ %i.bi, %bb.o ], [ %i.bi, %bb.p ], [ %i.bi, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i55 ]
  %i.bt = phi ptr [ %.pre97, %bb.n ], [ %i.bl, %bb.o ], [ %i.bl, %bb.p ], [ %i.bl, %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i.i55 ]
  %i.bu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.bt, i64 noundef %.pre-phi) ; 0 uses
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIaSaIaEE6resizeEm.exit56, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %.034.in.in = phi i32 [ %i.l, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.bv, %_ZNSt6vectorIaSaIaEE6resizeEm.exit56 ]
  %.034 = add i32 %.034.in.in, 12                 ; 3 uses
  %i.bw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !41  ; 2 uses
  switch i32 %i.bx, label %bb.r [
    i32 -1, label %bb.af
    i32 0, label %bb.ab
  ]

bb.r:                                             ; preds = %bb.q
  %i.by = zext i32 %i.bx to i64
  %i.bz = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #26 ; 5 uses
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !41
  %i.cb = zext i32 %i.ca to i64
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bz, i64 noundef %i.cb)
          to label %bb.s unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67 ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !41
  %i.ce = add i32 %i.cd, %.034
  %i.cf = invoke noundef i64 @_ZN7openvdb5v13_011compression21bloscUncompressedSizeEPKc(ptr noundef nonnull %i.bz)
          to label %bb.t unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67

bb.t:                                             ; preds = %bb.s
  %i.cg = add i64 %i.cf, 17
  %i.ch = uitofp i64 %i.cg to float
  %i.ci = fmul nnan float %i.ch, 1.250000e-01
  %i.cj = call noundef float @llvm.ceil.f32(float %i.ci)
  %i.ck = fptoui float %i.cj to i64               ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.cm = icmp ugt i64 %i.ck, 1152921504606846975
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #25
          to label %.noexc58 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67

.noexc58:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !24 ; 2 uses
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !23 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3
  %i.cu = icmp ult i64 %i.ct, %i.ck
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !22 ; 2 uses
  br i1 %i.cu, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIlSaIlEE7reserveEm.exit

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.v
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.cr
  %i.cz = shl nuw nsw i64 %i.ck, 3
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #26
          to label %.noexc59 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67 ; 5 uses

.noexc59:                                         ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.db = load ptr, ptr %i.cl, align 8, !tbaa !23 ; 4 uses
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !22
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %bb.w, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

bb.w:                                             ; preds = %.noexc59
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.da, ptr align 8 %i.db, i64 %i.df, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i: ; preds = %bb.w, %.noexc59
  %.not.i8.i57 = icmp eq ptr %i.db, null
  br i1 %.not.i8.i57, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  %i.dh = load ptr, ptr %i.cn, align 8, !tbaa !24
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dj) #27
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i: ; preds = %bb.x, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i
  store ptr %i.da, ptr %i.cl, align 8, !tbaa !23
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy ; 2 uses
  store ptr %i.dk, ptr %i.cv, align 8, !tbaa !22
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.ck ; 2 uses
  store ptr %i.dl, ptr %i.cn, align 8, !tbaa !24
  br label %_ZNSt6vectorIlSaIlEE7reserveEm.exit

_ZNSt6vectorIlSaIlEE7reserveEm.exit:              ; preds = %bb.v, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i
  %i.dm = phi ptr [ %i.dl, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i ], [ %i.co, %bb.v ] ; 3 uses
  %i.dn = phi ptr [ %i.da, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i ], [ %i.cp, %bb.v ] ; 5 uses
  %i.do = phi ptr [ %i.dk, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i ], [ %i.cw, %bb.v ] ; 2 uses
  %.pre-phi108 = ptrtoint ptr %i.dn to i64
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !41
  %i.dq = zext i32 %i.dp to i64                   ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.ds, %.pre-phi108
  %i.du = ashr exact i64 %i.dt, 3                 ; 3 uses
  %i.dv = icmp ult i64 %i.du, %i.dq
  br i1 %i.dv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIlSaIlEE7reserveEm.exit
  %i.dw = sub nuw nsw i64 %i.dq, %i.du
  invoke void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 noundef %i.dw)
          to label %._ZNSt6vectorIlSaIlEE6resizeEm.exit_crit_edge unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67

._ZNSt6vectorIlSaIlEE6resizeEm.exit_crit_edge:    ; preds = %bb.y
  %.pre103 = load ptr, ptr %i.cl, align 8, !tbaa !23
  %.pre104 = load i32, ptr %i.a, align 4, !tbaa !41
  %.pre105 = load ptr, ptr %i.cn, align 8, !tbaa !24
  %.pre109 = zext i32 %.pre104 to i64
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.z:                                             ; preds = %_ZNSt6vectorIlSaIlEE7reserveEm.exit
  %i.dx = icmp ugt i64 %i.du, %i.dq
  br i1 %i.dx, label %bb.aa, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dq ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.do, %i.dy
  br i1 %.not.i.i60, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.aa
  store ptr %i.dy, ptr %i.dr, align 8, !tbaa !22
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIlSaIlEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i, %bb.aa, %bb.z
  %.pre-phi110 = phi i64 [ %.pre109, %._ZNSt6vectorIlSaIlEE6resizeEm.exit_crit_edge ], [ %i.dq, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dq, %bb.aa ], [ %i.dq, %bb.z ]
  %i.dz = phi ptr [ %.pre105, %._ZNSt6vectorIlSaIlEE6resizeEm.exit_crit_edge ], [ %i.dm, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dm, %bb.aa ], [ %i.dm, %bb.z ]
  %i.ea = phi ptr [ %.pre103, %._ZNSt6vectorIlSaIlEE6resizeEm.exit_crit_edge ], [ %i.dn, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dn, %bb.aa ], [ %i.dn, %bb.z ] ; 2 uses
  %.pre-phi112 = ptrtoint ptr %i.ea to i64
  %i.eb = shl nuw nsw i64 %.pre-phi110, 3
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = sub i64 %i.ec, %.pre-phi112
  invoke void @_ZN7openvdb5v13_011compression15bloscDecompressEPcmmPKc(ptr noundef %i.ea, i64 noundef %i.eb, i64 noundef %i.ed, ptr noundef nonnull %i.bz)
          to label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit64 unwind label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit64: ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #27
  br label %bb.af

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67: ; preds = %bb.y, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, %bb.u, %bb.r, %bb.s, %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #27
  br label %bb.ak

bb.ab:                                            ; preds = %bb.q
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.eg = load i32, ptr %i.a, align 4, !tbaa !41
  %i.eh = zext i32 %i.eg to i64                   ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !22 ; 2 uses
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !23 ; 5 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 3                 ; 3 uses
  %i.ep = icmp ult i64 %i.eo, %i.eh
  br i1 %i.ep, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eq = sub nuw nsw i64 %i.eh, %i.eo
  call void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i64 noundef %i.eq)
  %.pre99 = load ptr, ptr %i.ef, align 8, !tbaa !23
  %.pre100 = load i32, ptr %i.a, align 4, !tbaa !41
  %.pre113 = zext i32 %.pre100 to i64
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit70

bb.ad:                                            ; preds = %bb.ab
  %i.er = icmp ugt i64 %i.eo, %i.eh
  br i1 %i.er, label %bb.ae, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit70

bb.ae:                                            ; preds = %bb.ad
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.eh ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.ej, %i.es
  br i1 %.not.i.i68, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit70, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i69

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i69:      ; preds = %bb.ae
  store ptr %i.es, ptr %i.ei, align 8, !tbaa !22
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit70

_ZNSt6vectorIlSaIlEE6resizeEm.exit70:             ; preds = %bb.ac, %bb.ad, %bb.ae, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i69
  %.pre-phi114 = phi i64 [ %.pre113, %bb.ac ], [ %i.eh, %bb.ad ], [ %i.eh, %bb.ae ], [ %i.eh, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i69 ]
  %i.et = phi ptr [ %.pre99, %bb.ac ], [ %i.ek, %bb.ad ], [ %i.ek, %bb.ae ], [ %i.ek, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i69 ]
  %i.eu = shl nuw nsw i64 %.pre-phi114, 3
  %i.ev = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.et, i64 noundef %i.eu) ; 0 uses
  %i.ew = load i32, ptr %i.a, align 4, !tbaa !41
  %i.ex = shl i32 %i.ew, 3
  %i.ey = add i32 %i.ex, %.034
  br label %bb.af

bb.af:                                            ; preds = %bb.q, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit64, %_ZNSt6vectorIlSaIlEE6resizeEm.exit70
  %.135 = phi i32 [ %i.ce, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit64 ], [ %i.ey, %_ZNSt6vectorIlSaIlEE6resizeEm.exit70 ], [ %.034, %bb.q ] ; 2 uses
  %i.ez = icmp ult i32 %.135, %2
  br i1 %i.ez, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.fa = call noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #26 ; 4 uses
  %i.fb = sub nuw i32 %2, %.135                   ; 2 uses
  %.not4592 = icmp eq i32 %i.fb, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.fa, i8 0, i64 1024, i1 false)
  br i1 %.not4592, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %.lr.ph

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.ah, %bb.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 1024) #27
  br label %bb.ai

.lr.ph:                                           ; preds = %bb.ag, %bb.ah
  %storemerge93 = phi i32 [ %i.fe, %bb.ah ], [ %i.fb, %bb.ag ] ; 2 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %storemerge93, i32 1024) ; 2 uses
  %i.fc = zext nneg i32 %.sroa.speculated to i64
  %i.fd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.fa, i64 noundef %i.fc)
          to label %bb.ah unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit73 ; 0 uses

bb.ah:                                            ; preds = %.lr.ph
  %i.fe = sub nuw i32 %storemerge93, %.sroa.speculated ; 2 uses
  %.not45 = icmp eq i32 %i.fe, 0
  br i1 %.not45, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %.lr.ph, !llvm.loop !52

_ZNSt6vectorIcSaIcEED2Ev.exit73:                  ; preds = %.lr.ph
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 1024) #27
  br label %bb.ak

bb.ai:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %bb.ai
  ret void

bb.ak:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit73, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit53
  %.pn46.pn = phi { ptr, i32 } [ %i.bf, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit53 ], [ %i.ee, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67 ], [ %i.ff, %_ZNSt6vectorIcSaIcEED2Ev.exit73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %.pn46.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN7openvdb5v13_011compression21bloscUncompressedSizeEPKc(ptr noundef) local_unnamed_addr #11

declare void @_ZN7openvdb5v13_011compression15bloscDecompressEPcmmPKc(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_02io19DelayedLoadMetadata10writeValueERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr %i.a, align 4, !tbaa !41
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i32 -1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 0, ptr %i.d, align 8, !tbaa !27
  %i.w = invoke noundef zeroext i1 @_ZN7openvdb5v13_011compression16bloscCanCompressEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.w, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  invoke void @_ZN7openvdb5v13_011compression13bloscCompressEPKcmRmb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef %i.x, i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EEaSEOS3_.exit unwind label %bb.g

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EEaSEOS3_.exit: ; preds = %bb.e
  %i.ac = load ptr, ptr %2, align 8, !tbaa !17    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %.thread, label %bb.h

bb.f:                                             ; preds = %bb.j, %.thread, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit24

bb.g:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit24

bb.h:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EEaSEOS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.af = load i64, ptr %i.d, align 8, !tbaa !27
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.e, align 4, !tbaa !41
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 4)
          to label %bb.i unwind label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i23 ; 0 uses
end_hunk_0

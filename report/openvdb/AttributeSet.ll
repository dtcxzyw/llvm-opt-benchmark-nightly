Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/AttributeSet?download=true
inline.NumInlined: 3012
inline.NumDeleted: 1015
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7openvdb5v13_06points12AttributeSet12readMetadataERSi:bb.a

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEESaIS5_EED2Ev.exit
  ret void

bb.i:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.cp, %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.av = load ptr, ptr %0, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !48
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.ax, i64 %.016
  call void @_ZN7openvdb5v13_06points14AttributeArray6createERKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EjjbPKNS0_8MetadataEPKNS2_18ScopedRegistryLockE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.18") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.ay, i32 noundef 1, i32 noundef 1, i1 noundef zeroext true, ptr noundef null, ptr noundef null)
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.016 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load <2 x ptr>, ptr %2, align 16, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !42 ; 8 uses
  store <2 x ptr> %i.bc, ptr %i.ba, align 8, !tbaa !72
  %.not.i.i.i.i10 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i10, label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.be, align 8, !tbaa !91
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !92
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !86
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #32, !inline_history !6
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !86
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #32, !inline_history !6
  br label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit

bb.l:                                             ; preds = %bb.j
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.bh, %bb.m ], [ %i.br, %bb.n ]
  %i.bs = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bs, label %bb.o, label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit, !prof !93

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #32
  br label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.o
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !42 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bu, align 8, !tbaa !91
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !92
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !86
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #32, !inline_history !2
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !86
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #32, !inline_history !2
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i11 = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i11, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.bx, %bb.s ], [ %i.ch, %bb.t ]
  %i.ci = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ci, label %bb.u, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !93

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #32
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEaSEOS4_.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.cj = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.016
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !76 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !86
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 200
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.cp = add nuw i64 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.at
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !228
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSet14readAttributesERSi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.m, %.lr.ph ], [ %i.d, %bb.a ]
  %.04 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.04
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.k = add nuw i64 %.04, 1                      ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !19
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet5writeERSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK7openvdb5v13_06points12AttributeSet15writeDescriptorERSob(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZNK7openvdb5v13_06points12AttributeSet13writeMetadataERSobb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = phi ptr [ %i.m, %.lr.ph.i ], [ %i.d, %bb.a ]
  %.07.i = phi i64 [ %i.k, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.07.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext false), !inline_history !229
  %i.k = add nuw i64 %.07.i, 1                    ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.lr.ph.i, label %_ZNK7openvdb5v13_06points12AttributeSet13writeMetadataERSobb.exit, !llvm.loop !20

_ZNK7openvdb5v13_06points12AttributeSet13writeMetadataERSobb.exit: ; preds = %.lr.ph.i, %bb.a
  tail call void @_ZNK7openvdb5v13_06points12AttributeSet15writeAttributesERSob(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet15writeDescriptorERSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.44", align 8    ; 8 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %2, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.g = phi ptr [ %i.d, %.lr.ph ], [ %i.af, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.ag, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %storemerge27 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 7 uses
  %5 = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 6 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.ah, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %storemerge27
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.n = load i8, ptr %i.m, align 2, !tbaa !84
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %5, %i.j
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %storemerge27, ptr %5, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.e, align 8, !tbaa !105
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %5 to i64
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #33
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #30
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i64 %storemerge27, ptr %i.ab, align 8, !tbaa !73
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.i, i64 %i.s, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.s) #31
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.aa, ptr %3, align 8, !tbaa !123
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y ; 2 uses
  store ptr %i.ae, ptr %i.f, align 8, !tbaa !106
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !52
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !51
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.af = phi ptr [ %i.g, %bb.b ], [ %i.g, %bb.d ], [ %.pre43, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ag = phi ptr [ %i.h, %bb.b ], [ %i.h, %bb.d ], [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ah = phi ptr [ %i.j, %bb.b ], [ %i.j, %bb.d ], [ %i.ae, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 4 uses
  %i.ai = phi ptr [ %5, %bb.b ], [ %i.p, %bb.d ], [ %i.ad, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.aj = phi ptr [ %i.i, %bb.b ], [ %i.i, %bb.d ], [ %i.aa, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 5 uses
  %i.ak = add nuw i64 %storemerge27, 1            ; 2 uses
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = ptrtoint ptr %i.af to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 4
  %i.ap = icmp ult i64 %i.ak, %i.ao
  br i1 %i.ap, label %bb.b, label %bb.i, !llvm.loop !230

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.aq = icmp eq ptr %i.aj, %i.ai
  br i1 %i.aq, label %.thread, label %bb.j

.thread:                                          ; preds = %.preheader, %bb.a, %bb.i
  %i.ar = phi ptr [ %i.aj, %bb.i ], [ null, %bb.a ], [ null, %.preheader ] ; 2 uses
  %i.as = phi ptr [ %i.ah, %bb.i ], [ null, %bb.a ], [ null, %.preheader ] ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor5writeERSo(ptr noundef nonnull align 8 dereferenceable(240) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.v unwind label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.au = load ptr, ptr %0, align 8, !tbaa !41
  invoke void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor13duplicateDropERKSt6vectorImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(240) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %4, align 8, !tbaa !41
  invoke void @_ZNK7openvdb5v13_06points12AttributeSet10Descriptor5writeERSo(ptr noundef nonnull align 8 dereferenceable(240) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ay, align 8, !tbaa !91
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !92
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !86
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #32, !inline_history !8
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !86
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #32, !inline_history !8
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i12 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i12, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.bb, %bb.p ], [ %i.bl, %bb.q ]
  %i.bm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bm, label %bb.r, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !93

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #32
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.v

bb.s:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.t ], [ %i.bn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.x

bb.v:                                             ; preds = %.thread, %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %6 = phi ptr [ %i.ar, %.thread ], [ %i.aj, %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.bp = phi ptr [ %i.as, %.thread ], [ %i.ah, %_ZNSt12__shared_ptrIN7openvdb5v13_06points12AttributeSet10DescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.not.i.i.i13 = icmp eq ptr %6, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %6 to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %6, i64 noundef %i.bs) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.u, %.loopexit.split-lp
  %i.bt = phi ptr [ %i.as, %.loopexit.split-lp ], [ %i.ah, %bb.u ], [ %5, %.loopexit.split-lp.loopexit.split-lp ]
  %i.bu = phi ptr [ %i.ar, %.loopexit.split-lp ], [ %i.aj, %bb.u ], [ %i.i, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn9 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn, %bb.u ], [ %lpad.loopexit.split-lp68, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i14 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorImSaImEED2Ev.exit15, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bx) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit15

_ZNSt6vectorImSaImEED2Ev.exit15:                  ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet13writeMetadataERSobb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.m, %.lr.ph ], [ %i.d, %bb.a ]
  %.07 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.07
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %i.k = add nuw i64 %.07, 1                      ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  %i.r = icmp ult i64 %i.k, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !20
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7openvdb5v13_06points12AttributeSet15writeAttributesERSob(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.18", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not10 = icmp eq ptr %i.b, %i.d
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.07.011 = phi ptr [ %i.b, %.lr.ph ], [ %i.ah, %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.f = load ptr, ptr %.sroa.07.011, align 8, !tbaa !76 ; 3 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 3 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !42
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !44
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !44
  br label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !76
  br label %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit

_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.n = phi ptr [ %i.f, %bb.b ], [ %i.f, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !42   ; 8 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.s, align 8, !tbaa !91
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !92
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #32, !inline_history !2
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !86
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #32, !inline_history !2
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i6 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.j ], [ %i.af, %bb.k ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.l, label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !93

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #32
  br label %_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN7openvdb5v13_06points14AttributeArrayEEC2ERKS4_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7openvdb5v13_06points14AttributeArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define void @_ZN7openvdb5v13_06points12AttributeSet10Descriptor4readERSi(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"struct.std::pair.82", align 8     ; 23 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i64 0, ptr %i.e, align 8, !tbaa !73
  %i.g = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 8) ; 0 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !73   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 144115188075855871
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #33
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2EmRKS8_.exit, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2EmRKS8_.exit.i

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2EmRKS8_.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i
end_hunk_0

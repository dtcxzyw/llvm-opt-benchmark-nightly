Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCGeometry?download=true
inline.NumInlined: 2077
inline.NumDeleted: 820
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_SE_RT0_:bb.a

bb.h:                                             ; preds = %bb.f
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.as, label %bb.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.at = load ptr, ptr %i.p, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.au, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4
  %i.az = load ptr, ptr %i.at, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #30, !inline_history !5
  %i.bc = load ptr, ptr %i.at, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #30, !inline_history !5
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.n:                                             ; preds = %bb.l
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i5.i = phi i32 [ %i.ax, %bb.m ], [ %i.bh, %bb.n ]
  %i.bi = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.bi, label %bb.o, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.o
  %i.bj = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i2, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3, label %bb.p

bb.p:                                             ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.bk = load ptr, ptr %i.h, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3: ; preds = %bb.p, %_ZN6Assimp3IFC11TempOpeningD2Ev.exit
  %i.bo = load ptr, ptr %i.e, align 8             ; 8 uses
  %.not.i.i.i4 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i4, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bp, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4
  %i.bu = load ptr, ptr %i.bo, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !5
  %i.bx = load ptr, ptr %i.bo, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !5
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8

bb.s:                                             ; preds = %bb.q
  %i.ca = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i5 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i1.i5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6

bb.u:                                             ; preds = %bb.s
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i7 = phi i32 [ %i.bs, %bb.t ], [ %i.cc, %bb.u ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i7, 1
  br i1 %i.cd, label %bb.v, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8, !prof !14

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i6, %bb.r, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i3
  %i.ce = load ptr, ptr %i.c, align 8             ; 8 uses
  %.not.i.i2.i9 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i2.i9, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit13, label %bb.w

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cf, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4
  %i.ck = load ptr, ptr %i.ce, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #30, !inline_history !5
  %i.cn = load ptr, ptr %i.ce, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #30, !inline_history !5
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit13

bb.y:                                             ; preds = %bb.w
  %i.cq = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i10 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i3.i10, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i11

bb.aa:                                            ; preds = %bb.y
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i11: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i5.i12 = phi i32 [ %i.ci, %bb.z ], [ %i.cs, %bb.aa ]
  %i.ct = icmp eq i32 %.0.i.i.i.i5.i12, 1
  br i1 %i.ct, label %bb.ab, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit13, !prof !14

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i11
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit13

_ZN6Assimp3IFC11TempOpeningD2Ev.exit13:           ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i8, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i11, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.ac:                                            ; preds = %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %5) #30
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.cu
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_T0_SF_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.aiVector3t, align 16         ; 5 uses
  %6 = alloca %class.aiVector3t, align 16         ; 5 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8 ; 5 uses
  %8 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 9 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %9 = load <3 x double>, ptr %4, align 8         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %10 = shufflevector <3 x double> %9, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.f = shufflevector <3 x double> %9, <3 x double> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <3 x double> %9, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.034 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.g = shl i64 %.034, 1                         ; 2 uses
  %i.h = add i64 %i.g, 2                          ; 2 uses
  %i.i = getelementptr inbounds [88 x i8], ptr %0, i64 %i.h
  %i.j = or disjoint i64 %i.g, 1                  ; 2 uses
  %i.k = getelementptr inbounds [88 x i8], ptr %0, i64 %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  %i.n = load double, ptr %i.d, align 16, !noalias !359
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load <2 x double>, ptr %5, align 16, !noalias !359 ; 2 uses
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.p)
  %i.r = load <2 x double>, ptr %6, align 16, !noalias !360 ; 2 uses
  %i.s = shufflevector <2 x double> %i.q, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.t = fsub <2 x double> %i.s, %i.f             ; 2 uses
  %i.u = shufflevector <2 x double> %i.q, <2 x double> %i.r, <2 x i32> <i32 1, i32 3>
  %i.v = fsub <2 x double> %i.u, %11              ; 2 uses
  %i.w = load double, ptr %i.e, align 16, !noalias !360
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  %i.z = fsub <2 x double> %i.y, %10              ; 2 uses
  %i.aa = fmul <2 x double> %i.v, %i.v
  %i.ab = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.t, <2 x double> %i.aa)
  %i.ac = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.z, <2 x double> %i.ab) ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = extractelement <2 x double> %i.ac, i64 1
  %i.af = fcmp olt double %i.ad, %i.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %spec.select = select i1 %i.af, i64 %i.j, i64 %i.h ; 4 uses
  %i.ag = getelementptr inbounds [88 x i8], ptr %0, i64 %spec.select
  %i.ah = getelementptr inbounds [88 x i8], ptr %0, i64 %.034
  %i.ai = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.ah, ptr noundef nonnull align 8 dereferenceable(88) %i.ag) #30 ; 0 uses
  %i.aj = icmp slt i64 %spec.select, %i.b
  br i1 %i.aj, label %bb.b, label %._crit_edge, !llvm.loop !358

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.ak = and i64 %2, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.am = add nsw i64 %2, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = shl nsw i64 %.0.lcssa, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds [88 x i8], ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds [88 x i8], ptr %0, i64 %.0.lcssa
  %i.at = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.as, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #30 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.aq, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 32, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ax = load <2 x ptr>, ptr %i.av, align 8
  store <2 x ptr> %i.ax, ptr %i.au, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bb = load <2 x ptr>, ptr %i.az, align 8
  store <2 x ptr> %i.bb, ptr %i.ay, align 8
  store <4 x ptr> splat (ptr null), ptr %i.av, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8
  store <2 x ptr> %i.be, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8
  store ptr %i.bh, ptr %i.bf, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  invoke void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valINS4_14DistanceSorterEEEEvT_T0_SF_T1_RT2_(ptr %0, i64 noundef %.1, i64 noundef %1, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %i.bc, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.bf, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.g, %bb.f
  %i.bn = load ptr, ptr %i.ba, align 8            ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bo, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4
  %i.bt = load ptr, ptr %i.bn, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #30, !inline_history !5
  %i.bw = load ptr, ptr %i.bn, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #30, !inline_history !5
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bz = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i1.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.br, %bb.k ], [ %i.cb, %bb.l ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.m, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.cd = load ptr, ptr %i.aw, align 8            ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ce, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4
  %i.cj = load ptr, ptr %i.cd, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #30, !inline_history !5
  %i.cm = load ptr, ptr %i.cd, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #30, !inline_history !5
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.cp = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i3.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.r:                                             ; preds = %bb.p
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i5.i = phi i32 [ %i.ch, %bb.q ], [ %i.cr, %bb.r ]
  %i.cs = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.cs, label %bb.s, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void

bb.t:                                             ; preds = %bb.e
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %i.ct
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load <2 x ptr>, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8              ; 8 uses
end_hunk_0
begin_hunk_1_@_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEET_SE_SE_SE_T0_:bb.a
  %i.aj = load ptr, ptr %i.d, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.aj)
  %i.ak = load double, ptr %i.f, align 16, !noalias !411
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -56
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load <2 x double>, ptr %4, align 16, !noalias !411 ; 2 uses
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.am)
  %i.ao = load <2 x double>, ptr %5, align 16, !noalias !412 ; 2 uses
  %i.ap = shufflevector <2 x double> %i.an, <2 x double> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.aq = fsub <2 x double> %i.ap, %i.m           ; 2 uses
  %i.ar = shufflevector <2 x double> %i.an, <2 x double> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.as = fsub <2 x double> %i.ar, %i.n           ; 2 uses
  %i.at = load double, ptr %i.g, align 16, !noalias !412
  %i.au = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.at, i64 1
  %i.aw = fsub <2 x double> %i.av, %i.l           ; 2 uses
  %i.ax = fmul <2 x double> %i.as, %i.as
  %i.ay = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.aq, <2 x double> %i.ax)
  %i.az = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.aw, <2 x double> %i.ay) ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  %i.bb = extractelement <2 x double> %i.az, i64 1
  %i.bc = fcmp olt double %i.ba, %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.bc, label %.preheader, label %bb.d, !llvm.loop !407

bb.d:                                             ; preds = %.preheader
  %i.bd = icmp ult ptr %.sroa.010.1, %.sroa.0.1
  br i1 %i.bd, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  ret ptr %.sroa.010.1

bb.f:                                             ; preds = %bb.d
  call void @_ZSt4swapIN6Assimp3IFC11TempOpeningEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.010.1, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.1) #30
  br label %bb.b, !llvm.loop !408
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt4swapIN6Assimp3IFC11TempOpeningEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load <2 x ptr>, ptr %i.b, align 8
  store <2 x ptr> %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load <2 x ptr>, ptr %i.f, align 8
  store <2 x ptr> %i.h, ptr %i.e, align 8
  store <4 x ptr> splat (ptr null), ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8
  store <2 x ptr> %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr %i.l, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.o = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #30 ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) #30 ; 0 uses
  %i.q = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.b, %bb.a
  %i.v = load ptr, ptr %i.g, align 8              ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #30, !inline_history !5
  %i.ae = load ptr, ptr %i.v, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #30, !inline_history !5
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.z, %bb.f ], [ %i.aj, %bb.g ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.h, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.al = load ptr, ptr %i.c, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !5
  %i.au = load ptr, ptr %i.al, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !5
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.m:                                             ; preds = %bb.k
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i5.i = phi i32 [ %i.ap, %bb.l ], [ %i.az, %bb.m ]
  %i.ba = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.ba, label %bb.n, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_T0_(ptr %0, ptr %1, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.aiVector3t, align 16         ; 5 uses
  %4 = alloca %class.aiVector3t, align 16         ; 5 uses
  %5 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit17, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.07.018 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.07.018, %1
  br i1 %.not19, label %.loopexit17, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.k = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.07.021 = phi ptr [ %.sroa.07.018, %.lr.ph ], [ %.sroa.07.0, %bb.ae ] ; 6 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.07.021, %bb.ae ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.l = getelementptr inbounds nuw i8, ptr %.pn20, i64 120 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  %i.n = load double, ptr %i.b, align 16, !noalias !420
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = load <2 x double>, ptr %3, align 16, !noalias !420 ; 2 uses
  %6 = load <3 x double>, ptr %2, align 8, !noalias !420 ; 3 uses
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.o)
  %i.q = load <2 x double>, ptr %4, align 16, !noalias !421 ; 2 uses
  %i.r = shufflevector <2 x double> %i.p, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.s = shufflevector <3 x double> %6, <3 x double> poison, <2 x i32> zeroinitializer
  %i.t = fsub <2 x double> %i.r, %i.s             ; 2 uses
  %i.u = shufflevector <2 x double> %i.p, <2 x double> %i.q, <2 x i32> <i32 1, i32 3>
  %7 = shufflevector <3 x double> %6, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fsub <2 x double> %i.u, %7               ; 2 uses
  %i.w = load double, ptr %i.d, align 16, !noalias !421
  %i.x = insertelement <2 x double> poison, double %i.n, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.w, i64 1
  %8 = shufflevector <3 x double> %6, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.z = fsub <2 x double> %i.y, %8               ; 2 uses
  %i.aa = fmul <2 x double> %i.v, %i.v
  %i.ab = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.t, <2 x double> %i.aa)
  %i.ac = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.z, <2 x double> %i.ab) ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = extractelement <2 x double> %i.ac, i64 1
  %i.af = fcmp olt double %i.ad, %i.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br i1 %i.af, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.07.021, i64 32, i1 false)
  %i.ag = load <2 x ptr>, ptr %i.l, align 8
  store <2 x ptr> %i.ag, ptr %i.e, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn20, i64 136
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8
  store <2 x ptr> %i.ai, ptr %i.g, align 8
  store <4 x ptr> splat (ptr null), ptr %i.l, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn20, i64 152 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aj, align 8
  store <2 x ptr> %i.ak, ptr %i.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.pn20, i64 168
  %i.am = load ptr, ptr %i.al, align 8
  store ptr %i.am, ptr %i.j, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.an = ptrtoint ptr %.sroa.07.021 to i64
  %i.ao = sub i64 %i.an, %i.k                     ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn20, i64 176
  %i.ar = udiv exact i64 %i.ao, 88
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.cz, %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit ], [ %i.ar, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.at, %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %.078.i.i.i.i.i = phi ptr [ %i.as, %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit ], [ %.sroa.07.021, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -88 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -88 ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8
  store ptr %i.au, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -80
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56
  %i.ay = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48
  %i.ba = load <2 x ptr>, ptr %i.ay, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  %i.bb = load ptr, ptr %i.az, align 8            ; 8 uses
  store <2 x ptr> %i.ba, ptr %i.ax, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.bc, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4
  %i.bh = load ptr, ptr %i.bb, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #30, !inline_history !417
  %i.bk = load ptr, ptr %i.bb, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #30, !inline_history !417
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bn = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bf, %bb.g ], [ %i.bp, %bb.h ]
  %i.bq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bq, label %bb.i, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i, !prof !14

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #30
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i

_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  %i.bs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  %i.bu = load <2 x ptr>, ptr %i.bs, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  %i.bv = load ptr, ptr %i.bt, align 8            ; 8 uses
  store <2 x ptr> %i.bu, ptr %i.br, align 8
  %.not.i.i.i.i6.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i6.i, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bw, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4
  %i.cb = load ptr, ptr %i.bv, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #30, !inline_history !417
  %i.ce = load ptr, ptr %i.bv, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #30, !inline_history !417
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i

bb.l:                                             ; preds = %bb.j
  %i.ch = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i7.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i7.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i

bb.n:                                             ; preds = %bb.l
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i9.i = phi i32 [ %i.bz, %bb.m ], [ %i.cj, %bb.n ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i.i9.i, 1
  br i1 %i.ck, label %bb.o, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i, !prof !14

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #30
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i

_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8.i, %bb.k, %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit.i
  %i.cl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.cn = load ptr, ptr %i.cl, align 8            ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load ptr, ptr %i.cm, align 8
  store ptr %i.cr, ptr %i.cl, align 8
  %i.cs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.ct = load ptr, ptr %i.cs, align 8
  store ptr %i.ct, ptr %i.co, align 8
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8
  store ptr %i.cv, ptr %i.cp, align 8
  %.not.i.i.i.i.i11.i = icmp eq ptr %i.cn, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i11.i, label %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i
  %i.cw = ptrtoint ptr %i.cq to i64
  %i.cx = ptrtoint ptr %i.cn to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cy) #29
  br label %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit

_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit:          ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10.i, %bb.p
  %i.cz = add nsw i64 %.010.i.i.i.i.i, -1
  %i.da = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.da, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !418

.loopexit:                                        ; preds = %_ZN6Assimp3IFC11TempOpeningaSEOS1_.exit, %bb.c
  %i.db = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %5) #30 ; 0 uses
  %i.dc = load ptr, ptr %i.i, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.dd = load ptr, ptr %i.j, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.q, %.loopexit
  %i.dh = load ptr, ptr %i.h, align 8             ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.di, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4
  %i.dn = load ptr, ptr %i.dh, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #30, !inline_history !5
  %i.dq = load ptr, ptr %i.dh, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #30, !inline_history !5
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.t:                                             ; preds = %bb.r
  %i.dt = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i1.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi i32 [ %i.dl, %bb.u ], [ %i.dv, %bb.v ]
  %i.dw = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dw, label %bb.w, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.s, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.dx = load ptr, ptr %i.f, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.dz = load atomic i64, ptr %i.dy acquire, align 8 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 4294967297
  %i.eb = trunc i64 %i.dz to i32                  ; 2 uses
  br i1 %i.ea, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.dy, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.ec, align 4
  %i.ed = load ptr, ptr %i.dx, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #30, !inline_history !5
  %i.eg = load ptr, ptr %i.dx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #30, !inline_history !5
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.ej = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i3.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ek = add nsw i32 %i.eb, -1
  store i32 %i.ek, ptr %i.dy, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.ab:                                            ; preds = %bb.z
  %i.el = atomicrmw volatile add ptr %i.dy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i5.i = phi i32 [ %i.eb, %bb.aa ], [ %i.el, %bb.ab ]
  %i.em = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.em, label %bb.ac, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS4_14DistanceSorterEEEEvT_T0_(ptr nonnull %.sroa.07.021, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Val_comp_iter") align 8 %2)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, %bb.ad
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.021, i64 88 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, %1
  br i1 %.not, label %.loopexit17, label %bb.b, !llvm.loop !419

.loopexit17:                                      ; preds = %bb.ae, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterINS4_14DistanceSorterEEEEvT_T0_(ptr %0, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Val_comp_iter") align 8 %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.aiVector3t, align 16         ; 5 uses
  %3 = alloca %class.aiVector3t, align 16         ; 5 uses
  %4 = alloca %"struct.Assimp::IFC::TempOpening", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.d = load <2 x ptr>, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  store <2 x ptr> %i.d, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load <2 x ptr>, ptr %i.g, align 8
  store <2 x ptr> %i.i, ptr %i.f, align 8
  store <4 x ptr> splat (ptr null), ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8
  store <2 x ptr> %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  store ptr %i.o, ptr %i.m, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %5 = load <3 x double>, ptr %1, align 8         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %6 = shufflevector <3 x double> %5, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.r = shufflevector <3 x double> %5, <3 x double> poison, <2 x i32> zeroinitializer
  %7 = shufflevector <3 x double> %5, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.s = phi ptr [ %i.e, %bb.a ], [ %.pre, %bb.d ]
  %.sroa.04.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0, %bb.d ] ; 4 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.04.0, i64 -88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  %i.t = load <2 x double>, ptr %2, align 16, !noalias !427 ; 2 uses
  %i.u = load double, ptr %i.p, align 16, !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.v = getelementptr inbounds i8, ptr %.sroa.04.0, i64 -56
  %i.w = load ptr, ptr %i.v, align 8
  invoke void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.w)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc
  %i.x = load double, ptr %i.q, align 16, !noalias !428
  %i.y = load <2 x double>, ptr %3, align 16, !noalias !428 ; 2 uses
  %i.z = shufflevector <2 x double> %i.t, <2 x double> %i.y, <2 x i32> <i32 0, i32 2>
  %i.aa = fsub <2 x double> %i.z, %i.r            ; 2 uses
  %i.ab = shufflevector <2 x double> %i.t, <2 x double> %i.y, <2 x i32> <i32 1, i32 3>
  %i.ac = fsub <2 x double> %i.ab, %7             ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.x, i64 1
  %i.af = fsub <2 x double> %i.ae, %6             ; 2 uses
  %i.ag = fmul <2 x double> %i.ac, %i.ac
  %i.ah = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.aa, <2 x double> %i.ag)
  %i.ai = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.af, <2 x double> %i.ah) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = extractelement <2 x double> %i.ai, i64 1
  %i.al = fcmp olt double %i.aj, %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %i.al, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.am = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.04.0, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.0) #30 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.b, !llvm.loop !426

bb.e:                                             ; preds = %.noexc, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.an

bb.f:                                             ; preds = %bb.c
  %i.ao = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.04.0, ptr noundef nonnull align 8 dereferenceable(88) %4) #30 ; 0 uses
  %i.ap = load ptr, ptr %i.j, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.m, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.g, %bb.f
  %i.au = load ptr, ptr %i.h, align 8             ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.av, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4
  %i.ba = load ptr, ptr %i.au, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #30, !inline_history !5
  %i.bd = load ptr, ptr %i.au, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #30, !inline_history !5
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bg = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i1.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.ay, %bb.k ], [ %i.bi, %bb.l ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.m, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.bk = load ptr, ptr %i.c, align 8             ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bl, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4
  %i.bq = load ptr, ptr %i.bk, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #30, !inline_history !5
  %i.bt = load ptr, ptr %i.bk, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #30, !inline_history !5
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bw = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i3.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.r:                                             ; preds = %bb.p
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i5.i = phi i32 [ %i.bo, %bb.q ], [ %i.by, %bb.r ]
  %i.bz = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.bz, label %bb.s, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJPKcS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #30
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull %i.a, i64 noundef %i.i)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit unwind label %bb.d ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #30
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_1

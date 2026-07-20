inline.NumInlined: 2079
inline.NumDeleted: 821
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS4_14DistanceSorterEEEEvT_SE_SE_RT0_:bb.a
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
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !220
  %i.bx = load ptr, ptr %i.bo, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !220
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
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #30, !inline_history !220
  %i.cn = load ptr, ptr %i.ce, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #30, !inline_history !220
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
  %i.d = load <2 x double>, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load <2 x double>, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load double, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = insertelement <2 x double> poison, double %i.i, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.034 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.o = shl i64 %.034, 1                         ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [88 x i8], ptr %0, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds [88 x i8], ptr %0, i64 %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.u)
  %i.v = load double, ptr %i.g, align 16, !noalias !356
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load <2 x double>, ptr %5, align 16, !noalias !356 ; 2 uses
  call void @_ZNK6Assimp3IFC8TempMesh6CenterEv(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.x)
  %i.z = load <2 x double>, ptr %6, align 16, !noalias !359 ; 2 uses
  %i.aa = shufflevector <2 x double> %i.y, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ab = fsub <2 x double> %i.aa, %i.m           ; 2 uses
  %i.ac = shufflevector <2 x double> %i.y, <2 x double> %i.z, <2 x i32> <i32 1, i32 3>
  %i.ad = fsub <2 x double> %i.ac, %i.n           ; 2 uses
  %i.ae = load double, ptr %i.j, align 16, !noalias !359
  %i.af = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 1
  %i.ah = fsub <2 x double> %i.ag, %i.l           ; 2 uses
  %i.ai = fmul <2 x double> %i.ad, %i.ad
  %i.aj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ab, <2 x double> %i.ai)
  %i.ak = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ah, <2 x double> %i.aj) ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = extractelement <2 x double> %i.ak, i64 1
  %i.an = fcmp olt double %i.al, %i.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %spec.select = select i1 %i.an, i64 %i.r, i64 %i.p ; 4 uses
  %i.ao = getelementptr inbounds [88 x i8], ptr %0, i64 %spec.select
  %i.ap = getelementptr inbounds [88 x i8], ptr %0, i64 %.034
  %i.aq = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, ptr noundef nonnull align 8 dereferenceable(88) %i.ao) #30 ; 0 uses
  %i.ar = icmp slt i64 %spec.select, %i.b
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !362

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %9 = trunc nuw i64 %2 to i1
  %10 = icmp ne i64 %.0.lcssa, -1
  %or.cond.not = or i1 %10, %9
  br i1 %or.cond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %11 = getelementptr inbounds i8, ptr %0, i64 -88 ; 2 uses
  %i.as = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6Assimp3IFC11TempOpeningaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %11, ptr noundef nonnull align 8 dereferenceable(88) %11) #30 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.aw = load <2 x ptr>, ptr %i.au, align 8
  store <2 x ptr> %i.aw, ptr %i.at, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ba = load <2 x ptr>, ptr %i.ay, align 8
  store <2 x ptr> %i.ba, ptr %i.ax, align 8
  store <4 x ptr> splat (ptr null), ptr %i.au, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8
  store <2 x ptr> %i.bd, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8
  store ptr %i.bg, ptr %i.be, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  invoke void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN6Assimp3IFC11TempOpeningESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_comp_valINS4_14DistanceSorterEEEEvT_T0_SF_T1_RT2_(ptr %0, i64 noundef %.0.lcssa, i64 noundef %1, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.bh = load ptr, ptr %i.bb, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %i.be, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #29
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i:  ; preds = %bb.f, %bb.e
  %i.bm = load ptr, ptr %i.az, align 8            ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.bn, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4
  %i.bs = load ptr, ptr %i.bm, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #30, !inline_history !220
  %i.bv = load ptr, ptr %i.bm, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #30, !inline_history !220
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.i:                                             ; preds = %bb.g
  %i.by = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i1.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.bq, %bb.j ], [ %i.ca, %bb.k ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.l, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !14

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #30
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit.i
  %i.cc = load ptr, ptr %i.av, align 8            ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i2.i, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.cd, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4
  %i.ci = load ptr, ptr %i.cc, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #30, !inline_history !220
  %i.cl = load ptr, ptr %i.cc, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #30, !inline_history !220
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.co = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i3.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.q:                                             ; preds = %bb.o
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i5.i = phi i32 [ %i.cg, %bb.p ], [ %i.cq, %bb.q ]
  %i.cr = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.cr, label %bb.r, label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit, !prof !14

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #30
  br label %_ZN6Assimp3IFC11TempOpeningD2Ev.exit

_ZN6Assimp3IFC11TempOpeningD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void

bb.s:                                             ; preds = %bb.d
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %i.cs
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
  store <2 x ptr> %i.g, ptr %i.d, align 8
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = load ptr, ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #30, !inline_history !13
  %i.q = load ptr, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #30, !inline_history !13
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit, !prof !14

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #30
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit

_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load <2 x ptr>, ptr %i.y, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.ab = load ptr, ptr %i.z, align 8             ; 8 uses
  store <2 x ptr> %i.aa, ptr %i.x, align 8
  %.not.i.i.i.i6 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i6, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit10, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEaSEOS3_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
end_hunk_0

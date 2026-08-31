Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/umatrix?download=true
inline.NumInlined: 433
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv4UMat3fitEiPKiiNS_14UMatUsageFlagsE:bb.a
  %i.bp = mul i64 %i.bk, %i.bo                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !116

bb.d:                                             ; preds = %._crit_edge
  %i.bq = and i32 %.pre, 16384
  %.not36 = icmp eq i32 %i.bq, 0
  %i.br = icmp ugt i64 %i.ac, %i.i
  %or.cond = select i1 %.not36, i1 true, i1 %i.br
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !67
  %.not32 = icmp eq i64 %i.bt, 0
  %.not33 = icmp eq i32 %.026, %i.d
  %or.cond35 = select i1 %.not32, i1 %.not33, i1 false
  br i1 %or.cond35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN2cv4UMat6createEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %.026)
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %._crit_edge
  %i.bu = and i32 %.pre, -4096
  %i.bv = and i32 %3, 4095
  %i.bw = or disjoint i32 %i.bu, %i.bv
  store i32 %i.bw, ptr %0, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !31
  %i.bx = select i1 %i.u, i32 %1, i32 1
  %i.by = select i1 %i.u, ptr %2, ptr %i.a
  call void @_ZN2cv7setSizeERNS_4UMatEiPKiPKmb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.bx, ptr noundef %i.by, ptr noundef null, i1 noundef zeroext true)
  %i.bz = load i32, ptr %0, align 8, !tbaa !48
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !66
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ce = call noundef i32 @_ZN2cv20updateContinuityFlagEiiPKiPKm(i32 noundef %i.bz, i32 noundef %i.cb, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd)
  store i32 %i.ce, ptr %0, align 8, !tbaa !48
  %i.cf = load i32, ptr %i.ca, align 4, !tbaa !66
  %i.cg = icmp sgt i32 %i.cf, 2
  br i1 %i.cg, label %bb.h, label %_ZN2cv11finalizeHdrERNS_4UMatE.exit

bb.h:                                             ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %i.ch, align 4, !tbaa !65
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.ci, align 8, !tbaa !64
  br label %_ZN2cv11finalizeHdrERNS_4UMatE.exit

_ZN2cv11finalizeHdrERNS_4UMatE.exit:              ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZN2cv11finalizeHdrERNS_4UMatE.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat3fitERKSt6vectorIiSaIiEEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = load ptr, ptr %1, align 8, !tbaa !113    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  tail call void @_ZN2cv4UMat3fitEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.h, ptr noundef %i.c, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat3fitERKNS_8MatShapeEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 4 dereferenceable(52) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  tail call void @_ZN2cv4UMat3fitEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.a, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef %3)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !30
  store <2 x i32> %i.e, ptr %i.d, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat3fitEiiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = and i32 %3, 4095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 %1, ptr %i.a, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.c, align 4, !tbaa !31
  call void @_ZN2cv4UMat3fitEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.b, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat3fitENS_5Size_IiEEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %2, 4095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 %.sroa.2.0.extract.trunc, ptr %i.a, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.c, align 4, !tbaa !31
  call void @_ZN2cv4UMat3fitEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %i.b, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat11fitSameSizeERKNS_11_InputArrayEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call noundef i32 @_ZNK2cv11_InputArray6sizendEPii(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i32 noundef -1)
  call void @_ZN2cv4UMat3fitEiPKiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.b, ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat8copySizeERKS0_(ptr noundef nonnull align 8 dereferenceable(184) initializes((4, 16)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %i.e, align 4, !tbaa !65
  %i.f = load <2 x i32>, ptr %i.a, align 4, !tbaa !31
  store <2 x i32> %i.f, ptr %i.b, align 4, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = tail call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.h, ptr noundef nonnull align 4 dereferenceable(52) %i.g) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !tbaa.struct !73
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv4UMatD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 8
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %.noexc

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.f)
          to label %.noexc unwind label %bb.e, !inline_history !117

.noexc:                                           ; preds = %bb.c, %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN2cv8MatShape5clearEv(ptr noundef nonnull align 4 dereferenceable(52) %i.l)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  ret void

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 28), (32, 48)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca [10 x %"class.cv::Range"], align 16 ; 12 uses
  %9 = alloca %"class.cv::UMat", align 16         ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  store i32 1124007936, ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i8 0, i64 80, i1 false), !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !66   ; 3 uses
  %i.l = add i32 %i.k, -2
  %or.cond = icmp ult i32 %i.l, 9
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv4UMatC2ERKS0_RKNS_5RangeES5_, ptr noundef nonnull @.str.1, i32 noundef 768) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !30
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.k, 2
  br i1 %.not, label %bb.l, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.t, i8 0, i64 64, i1 false), !tbaa !31
  %i.u = load i64, ptr %2, align 4
  store i64 %i.u, ptr %8, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load i64, ptr %3, align 4
  store i64 %i.w, ptr %i.v, align 8
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 2 uses
  %14 = add nsw i64 %wide.trip.count, -2          ; 3 uses
  %min.iters.check = icmp ult i64 %14, 4
  br i1 %min.iters.check, label %.lr.ph.preheader110, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %14, -4                        ; 3 uses
  %15 = or disjoint i64 %n.vec, 2
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <2 x i64> splat (i64 9223372034707292160), ptr %16, align 16
  store <2 x i64> splat (i64 9223372034707292160), ptr %17, align 16
  %18 = icmp eq i64 %n.vec, 4
  br i1 %18, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %19 = getelementptr inbounds nuw i8, ptr %8, i64 48
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 64
  store <2 x i64> splat (i64 9223372034707292160), ptr %19, align 16
  store <2 x i64> splat (i64 9223372034707292160), ptr %20, align 16
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %14, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader110

.lr.ph.preheader110:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 2, %.lr.ph.preheader ], [ %15, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN2cv4UMatC1ERKS0_PKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(184) %9, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull %8)
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZN2cv4UMat7releaseEv.exit.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = atomicrmw add ptr %i.y, i32 -1 acq_rel, align 8
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.i, label %_ZN2cv4UMat7releaseEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8  ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.ab)
          to label %_ZN2cv4UMat7releaseEv.exit.i unwind label %bb.k, !inline_history !118

_ZN2cv4UMat7releaseEv.exit.i:                     ; preds = %bb.i, %bb.h, %._crit_edge
  store ptr null, ptr %i.f, align 8, !tbaa !59
  invoke void @_ZN2cv8MatShape5clearEv(ptr noundef nonnull align 4 dereferenceable(52) %i.h)
          to label %.noexc70 unwind label %bb.k

.noexc70:                                         ; preds = %_ZN2cv4UMat7releaseEv.exit.i
  %i.ah = load <4 x i32>, ptr %9, align 16, !tbaa !31
  store <4 x i32> %i.ah, ptr %0, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !71
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !54
  store i32 %i.al, ptr %i.e, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !59
  store ptr %i.an, ptr %i.f, align 8, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !67
  store i64 %i.ap, ptr %i.g, align 8, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ar = invoke noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.h, ptr noundef nonnull align 4 dereferenceable(52) %i.aq)
          to label %bb.j unwind label %bb.k       ; 0 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader110, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader110 ] ; 2 uses
  %21 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  store i64 9223372034707292160, ptr %21, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not.a, label %._crit_edge, label %.lr.ph, !llvm.loop !119

bb.j:                                             ; preds = %.noexc70
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.at, i64 80, i1 false), !tbaa.struct !73
  store i32 1124007936, ptr %9, align 16, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ap

bb.k:                                             ; preds = %.noexc70, %_ZN2cv4UMat7releaseEv.exit.i, %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume

bb.l:                                             ; preds = %bb.g
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN2cv4UMataSERKS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !59 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i72, label %_ZN2cv4UMat6addrefEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = atomicrmw add ptr %i.ax, i32 1 acq_rel, align 8 ; 0 uses
  br label %_ZN2cv4UMat6addrefEv.exit.i

_ZN2cv4UMat6addrefEv.exit.i:                      ; preds = %bb.n, %bb.m
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  %.not.i14.i = icmp eq ptr %i.az, null
  br i1 %.not.i14.i, label %_ZN2cv4UMat7releaseEv.exit.i73, label %bb.o

bb.o:                                             ; preds = %_ZN2cv4UMat6addrefEv.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = atomicrmw add ptr %i.ba, i32 -1 acq_rel, align 8
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.p, label %_ZN2cv4UMat7releaseEv.exit.i73

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !8  ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef %i.bd), !inline_history !93
  br label %_ZN2cv4UMat7releaseEv.exit.i73

_ZN2cv4UMat7releaseEv.exit.i73:                   ; preds = %bb.p, %bb.o, %_ZN2cv4UMat6addrefEv.exit.i
  store ptr null, ptr %i.f, align 8, !tbaa !59
  tail call void @_ZN2cv8MatShape5clearEv(ptr noundef nonnull align 4 dereferenceable(52) %i.h)
  store i32 0, ptr %i.b, align 8, !tbaa !64
  store i32 0, ptr %i.c, align 4, !tbaa !65
  store i32 0, ptr %i.a, align 4, !tbaa !66
  %i.bj = load <4 x i32>, ptr %1, align 8, !tbaa !31
  store <4 x i32> %i.bj, ptr %0, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bl = tail call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.h, ptr noundef nonnull align 4 dereferenceable(52) %i.bk) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.bm, i64 80, i1 false), !tbaa.struct !73
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !71
  store ptr %i.bo, ptr %i.d, align 8, !tbaa !71
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !54
  store i32 %i.bq, ptr %i.e, align 8, !tbaa !54
  %i.br = load ptr, ptr %i.av, align 8, !tbaa !59
  store ptr %i.br, ptr %i.f, align 8, !tbaa !59
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !67
  store i64 %i.bt, ptr %i.g, align 8, !tbaa !67
  br label %_ZN2cv4UMataSERKS0_.exit

_ZN2cv4UMataSERKS0_.exit:                         ; preds = %bb.l, %_ZN2cv4UMat7releaseEv.exit.i73
  %.val66 = load i32, ptr %2, align 4, !tbaa !120 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val67 = load i32, ptr %i.bu, align 4          ; 5 uses
  %i.bv = icmp ne i32 %.val66, -2147483648
  %i.bw = icmp ne i32 %.val67, 2147483647
  %.not6.i = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %.not6.i, label %bb.q, label %.critedge

bb.q:                                             ; preds = %_ZN2cv4UMataSERKS0_.exit
  %i.bx = load i32, ptr %i.b, align 8, !tbaa !64
  %i.by = icmp ne i32 %.val66, 0
  %i.bz = icmp ne i32 %.val67, %i.bx
  %.not6.i74 = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %.not6.i74, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.ca = icmp slt i32 %.val66, 0
  %.not44 = icmp sgt i32 %.val66, %.val67
  %or.cond92 = select i1 %i.ca, i1 true, i1 %.not44
  br i1 %or.cond92, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !64
  %.not45 = icmp sgt i32 %.val67, %i.cc
  br i1 %.not45, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv4UMatC2ERKS0_RKNS_5RangeES5_, ptr noundef nonnull @.str.1, i32 noundef 785) #23
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.x:                                             ; preds = %bb.u
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.x
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !30
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.w
  %.pn46 = phi { ptr, i32 } [ %i.cd, %bb.w ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.ce, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %common.resume

bb.y:                                             ; preds = %bb.s
  %i.ck = sub nuw nsw i32 %.val67, %.val66        ; 2 uses
  store i32 %i.ck, ptr %i.b, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !31
  %i.cm = load i64, ptr %i.i, align 8, !tbaa !35
  %i.cn = load i32, ptr %2, align 4, !tbaa !120
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul i64 %i.cm, %i.co
  %i.cq = load i64, ptr %i.g, align 8, !tbaa !67
  %i.cr = add i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.g, align 8, !tbaa !67
  %i.cs = load i32, ptr %0, align 8, !tbaa !48
  %i.ct = or i32 %i.cs, 32768
  store i32 %i.ct, ptr %0, align 8, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %_ZN2cv4UMataSERKS0_.exit, %bb.y, %bb.q
  %.val58 = load i32, ptr %3, align 4, !tbaa !120 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val59 = load i32, ptr %i.cu, align 4          ; 5 uses
  %i.cv = icmp ne i32 %.val58, -2147483648
  %i.cw = icmp ne i32 %.val59, 2147483647
  %.not6.i78 = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %.not6.i78, label %bb.z, label %.critedge2

bb.z:                                             ; preds = %.critedge
  %i.cx = load i32, ptr %i.c, align 4, !tbaa !65
  %i.cy = icmp ne i32 %.val58, 0
  %i.cz = icmp ne i32 %.val59, %i.cx
  %.not6.i79 = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %.not6.i79, label %bb.aa, label %.critedge2

bb.aa:                                            ; preds = %bb.z
  %i.da = icmp slt i32 %.val58, 0
  %.not48 = icmp sgt i32 %.val58, %.val59
  %or.cond93 = select i1 %i.da, i1 true, i1 %.not48
  br i1 %or.cond93, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !65
  %.not49 = icmp sgt i32 %.val59, %i.dc
  br i1 %.not49, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv4UMatC2ERKS0_RKNS_5RangeES5_, ptr noundef nonnull @.str.1, i32 noundef 795) #23
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.ag:                                            ; preds = %bb.ad
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ag
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !30
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.af
  %.pn50 = phi { ptr, i32 } [ %i.dd, %bb.af ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %i.de, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %common.resume

bb.ah:                                            ; preds = %bb.ab
  %i.dk = sub nuw nsw i32 %.val59, %.val58        ; 2 uses
  store i32 %i.dk, ptr %i.c, align 4, !tbaa !65
  %i.dl = load i32, ptr %i.h, align 8, !tbaa !60
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %_ZN2cv8MatShapeixEm.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.44, i32 noundef 97) #23
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !30
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.au, %bb.k ], [ %.pn50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.dk, ptr %i.dt, align 8, !tbaa !31
  %i.du = load i32, ptr %3, align 4, !tbaa !120
  %i.dv = sext i32 %i.du to i64
  %i.dw = load i32, ptr %0, align 8, !tbaa !48    ; 3 uses
  %i.dx = lshr i32 %i.dw, 5
  %i.dy = and i32 %i.dx, 127
  %i.dz = add nuw nsw i32 %i.dy, 1
  %i.ea = shl i32 %i.dw, 2
  %i.eb = and i32 %i.ea, 124
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = lshr i64 1275511473185297, %i.ec
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 15
  %i.eg = mul nuw nsw i32 %i.ef, %i.dz
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = mul nsw i64 %i.eh, %i.dv
  %i.ej = load i64, ptr %i.g, align 8, !tbaa !67
  %i.ek = add i64 %i.ei, %i.ej
  store i64 %i.ek, ptr %i.g, align 8, !tbaa !67
  %i.el = or i32 %i.dw, 32768
  store i32 %i.el, ptr %0, align 8, !tbaa !48
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge, %_ZN2cv8MatShapeixEm.exit, %bb.z
  %i.em = load i32, ptr %0, align 8, !tbaa !48
  %i.en = load i32, ptr %i.a, align 4, !tbaa !66
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ep = tail call noundef i32 @_ZN2cv20updateContinuityFlagEiiPKiPKm(i32 noundef %i.em, i32 noundef %i.en, ptr noundef nonnull %i.eo, ptr noundef nonnull %i.i)
  store i32 %i.ep, ptr %0, align 8, !tbaa !48
  %i.eq = load i32, ptr %i.b, align 8, !tbaa !64
  %i.er = icmp slt i32 %i.eq, 1
  br i1 %i.er, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge2
  %i.es = load i32, ptr %i.c, align 4, !tbaa !65
  %i.et = icmp slt i32 %i.es, 1
  br i1 %i.et, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al, %.critedge2
  %i.eu = load ptr, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  %.not.i85 = icmp eq ptr %i.eu, null
  br i1 %.not.i85, label %_ZN2cv4UMat7releaseEv.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = atomicrmw add ptr %i.ev, i32 -1 acq_rel, align 8
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.ao, label %_ZN2cv4UMat7releaseEv.exit

bb.ao:                                            ; preds = %bb.an
  %i.ey = load ptr, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !59
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !8  ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !23
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8
  tail call void %i.fd(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef %i.ey), !inline_history !63
  br label %_ZN2cv4UMat7releaseEv.exit

_ZN2cv4UMat7releaseEv.exit:                       ; preds = %bb.am, %bb.an, %bb.ao
  store ptr null, ptr %i.f, align 8, !tbaa !59
  tail call void @_ZN2cv8MatShape5clearEv(ptr noundef nonnull align 4 dereferenceable(52) %i.h)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN2cv4UMat7releaseEv.exit, %bb.al, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMatC2ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 28), (32, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !48
  store i32 %i.a, ptr %0, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 2, ptr %i.b, align 4, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load <2 x i32>, ptr %i.f, align 4, !tbaa !31
  %i.h = shufflevector <2 x i32> %i.g, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.h, ptr %i.c, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  store ptr %i.k, ptr %i.i, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !54
  store i32 %i.n, ptr %i.l, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59
  store ptr %i.q, ptr %i.o, align 8, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !122
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !35
  %i.z = mul i64 %i.y, %i.w
  %i.aa = add i64 %i.z, %i.t
  store i64 %i.aa, ptr %i.r, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ab, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, i8 0, i64 80, i1 false), !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !66
  %i.af = icmp slt i32 %i.ae, 3
  br i1 %i.af, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv4UMatC2ERKS0_RKNS_5RangeES5_, ptr noundef nonnull @.str.1, i32 noundef 816) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !30
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ah, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.an = load i32, ptr %0, align 8, !tbaa !48    ; 4 uses
  %i.ao = lshr i32 %i.an, 5
  %i.ap = and i32 %i.ao, 127
  %i.aq = add nuw nsw i32 %i.ap, 1
  %i.ar = shl i32 %i.an, 2
  %i.as = and i32 %i.ar, 124
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 1275511473185297, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 15
  %i.ax = mul nuw nsw i32 %i.aw, %i.aq
  %i.ay = zext nneg i32 %i.ax to i64              ; 3 uses
  %i.az = load i32, ptr %2, align 4, !tbaa !124   ; 3 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.ay, %i.ba
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !67
  %i.bd = add i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.r, align 8, !tbaa !67
  %i.be = icmp sgt i32 %i.az, -1
  br i1 %i.be, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.f, align 4, !tbaa !125 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bh = add nuw nsw i32 %i.bf, %i.az
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !65 ; 2 uses
  %.not = icmp sgt i32 %i.bh, %i.bj
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load i32, ptr %i.u, align 4, !tbaa !122 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bm = load i32, ptr %i.d, align 4, !tbaa !126 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = add nuw nsw i32 %i.bm, %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !64 ; 2 uses
  %.not42 = icmp sgt i32 %i.bo, %i.bq
  br i1 %.not42, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv4UMatC2ERKS0_RKNS_5RangeES5_, ptr noundef nonnull @.str.1, i32 noundef 821) #23
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.q:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.q
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !30
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.p
  %.pn43 = phi { ptr, i32 } [ %i.br, %bb.p ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.bs, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

bb.r:                                             ; preds = %bb.l
  %i.by = icmp samesign ult i32 %i.bf, %i.bj
  %i.bz = icmp samesign ult i32 %i.bm, %i.bq
  %or.cond = or i1 %i.by, %i.bz
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = or i32 %i.an, 32768                     ; 2 uses
  store i32 %i.ca, ptr %0, align 8, !tbaa !48
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.cb = phi i32 [ %i.an, %bb.r ], [ %i.ca, %bb.s ]
  %i.cc = load i32, ptr %i.c, align 8, !tbaa !64
  %i.cd = load i32, ptr %i.ab, align 8, !tbaa !60
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !31
  %i.cf = load i32, ptr %i.e, align 4, !tbaa !65  ; 2 uses
  %i.cg = icmp sgt i32 %i.cd, 1
  br i1 %i.cg, label %_ZN2cv8MatShapeixEm.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.44, i32 noundef 97) #23
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !30
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.cf, ptr %i.cn, align 8, !tbaa !31
  %i.co = load i32, ptr %i.ad, align 4, !tbaa !66
  %i.cp = icmp eq i32 %i.co, 2
  br i1 %i.cp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.cq = load i64, ptr %i.x, align 8, !tbaa !35
  br label %bb.z

bb.y:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.cr = sext i32 %i.cf to i64
  %i.cs = mul nsw i64 %i.cr, %i.ay
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ct = phi i64 [ %i.cq, %bb.x ], [ %i.cs, %bb.y ]
  store i64 %i.ct, ptr %i.ac, align 8, !tbaa !35
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ay, ptr %i.cu, align 8, !tbaa !35
  %i.cv = load i32, ptr %i.b, align 4, !tbaa !66
  %i.cw = tail call noundef i32 @_ZN2cv20updateContinuityFlagEiiPKiPKm(i32 noundef %i.cb, i32 noundef %i.cv, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.ac)
  store i32 %i.cw, ptr %0, align 8, !tbaa !48
  %i.cx = load ptr, ptr %i.o, align 8, !tbaa !59  ; 2 uses
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %_ZN2cv4UMat6addrefEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = atomicrmw add ptr %i.cy, i32 1 acq_rel, align 8 ; 0 uses
  br label %_ZN2cv4UMat6addrefEv.exit

_ZN2cv4UMat6addrefEv.exit:                        ; preds = %bb.z, %bb.aa
  %i.da = load i32, ptr %i.c, align 8, !tbaa !64
  %i.db = icmp slt i32 %i.da, 1
  br i1 %i.db, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN2cv4UMat6addrefEv.exit
  %i.dc = load i32, ptr %i.e, align 4, !tbaa !65
  %i.dd = icmp slt i32 %i.dc, 1
  br i1 %i.dd, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab, %_ZN2cv4UMat6addrefEv.exit
  store i32 0, ptr %i.e, align 4, !tbaa !65
  store i32 0, ptr %i.c, align 8, !tbaa !64
  %i.de = load ptr, ptr %i.o, align 8, !tbaa !59  ; 2 uses
  %.not.i51 = icmp eq ptr %i.de, null
  br i1 %.not.i51, label %_ZN2cv4UMat7releaseEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = atomicrmw add ptr %i.df, i32 -1 acq_rel, align 8
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.ae, label %_ZN2cv4UMat7releaseEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.di = load ptr, ptr %i.o, align 8, !tbaa !59  ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !59
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !8  ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !23
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef %i.di), !inline_history !63
  br label %_ZN2cv4UMat7releaseEv.exit

_ZN2cv4UMat7releaseEv.exit:                       ; preds = %bb.ac, %bb.ad, %bb.ae
  store ptr null, ptr %i.o, align 8, !tbaa !59
  tail call void @_ZN2cv8MatShape5clearEv(ptr noundef nonnull align 4 dereferenceable(52) %i.ab)
  store i32 0, ptr %i.c, align 8, !tbaa !64
  store i32 0, ptr %i.e, align 4, !tbaa !65
  store i32 0, ptr %i.b, align 4, !tbaa !66
  br label %bb.af

bb.af:                                            ; preds = %_ZN2cv4UMat7releaseEv.exit, %bb.ab
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMatC2ERKS0_PKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 28), (32, 48)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  store i32 1124007936, ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i8 0, i64 80, i1 false), !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !66   ; 6 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = icmp sgt i32 %i.k, 0                     ; 2 uses
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv4UMatC2ERKS0_RKNS_5RangeES5_, ptr noundef nonnull @.str.1, i32 noundef 846) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %7, align 8, !tbaa !36     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.r, align 8, !tbaa !30
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

bb.g:                                             ; preds = %.lr.ph, %.critedge39
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge39 ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 4              ; 2 uses
  %.sroa.071.0.extract.trunc = trunc i64 %i.w to i32 ; 3 uses
  %.sroa.672.0.extract.shift = lshr i64 %i.w, 32  ; 2 uses
  %.sroa.672.0.extract.trunc = trunc nuw i64 %.sroa.672.0.extract.shift to i32 ; 2 uses
  %i.x = icmp eq i32 %.sroa.071.0.extract.trunc, -2147483648
  %i.y = icmp eq i64 %.sroa.672.0.extract.shift, 2147483647
  %i.z = and i1 %i.x, %i.y
  br i1 %i.z, label %.critedge39, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp sgt i32 %.sroa.071.0.extract.trunc, -1
  %i.ab = icmp slt i32 %.sroa.071.0.extract.trunc, %.sroa.672.0.extract.trunc
  %or.cond = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge41

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !60
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 1)
  %i.ad = zext nneg i32 %narrow.i to i64
  %i.ae = icmp samesign ult i64 %indvars.iv, %i.ad
  br i1 %i.ae, label %_ZNK2cv8MatShapeixEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.44, i32 noundef 103) #23
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !30
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !31
  %.not73 = icmp slt i32 %i.am, %.sroa.672.0.extract.trunc
  br i1 %.not73, label %.critedge41, label %.critedge39

.critedge41:                                      ; preds = %bb.h, %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.critedge41
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv4UMatC2ERKS0_RKNS_5RangeES5_, ptr noundef nonnull @.str.1, i32 noundef 850) #23
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %.critedge41
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.p:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.p
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !30
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.o
  %.pn35 = phi { ptr, i32 } [ %i.an, %bb.o ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.ao, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume

.critedge39:                                      ; preds = %bb.g, %_ZNK2cv8MatShapeixEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !127

._crit_edge:                                      ; preds = %.critedge39, %.preheader
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN2cv4UMataSERKS0_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !59 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZN2cv4UMat6addrefEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = atomicrmw add ptr %i.aw, i32 1 acq_rel, align 8 ; 0 uses
  br label %_ZN2cv4UMat6addrefEv.exit.i

_ZN2cv4UMat6addrefEv.exit.i:                      ; preds = %bb.r, %bb.q
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  %.not.i14.i = icmp eq ptr %i.ay, null
  br i1 %.not.i14.i, label %_ZN2cv4UMat7releaseEv.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4UMat6addrefEv.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = atomicrmw add ptr %i.az, i32 -1 acq_rel, align 8
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.t, label %_ZN2cv4UMat7releaseEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8  ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bc), !inline_history !93
  br label %_ZN2cv4UMat7releaseEv.exit.i

_ZN2cv4UMat7releaseEv.exit.i:                     ; preds = %bb.t, %bb.s, %_ZN2cv4UMat6addrefEv.exit.i
  store ptr null, ptr %i.f, align 8, !tbaa !59
  tail call void @_ZN2cv8MatShape5clearEv(ptr noundef nonnull align 4 dereferenceable(52) %i.h)
  store i32 0, ptr %i.b, align 8, !tbaa !64
  store i32 0, ptr %i.c, align 4, !tbaa !65
  store i32 0, ptr %i.a, align 4, !tbaa !66
  %i.bi = load <4 x i32>, ptr %1, align 8, !tbaa !31
  store <4 x i32> %i.bi, ptr %0, align 8, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = tail call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.h, ptr noundef nonnull align 4 dereferenceable(52) %i.bj) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.bl, i64 80, i1 false), !tbaa.struct !73
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !71
  store ptr %i.bn, ptr %i.d, align 8, !tbaa !71
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !54
  store i32 %i.bp, ptr %i.e, align 8, !tbaa !54
  %i.bq = load ptr, ptr %i.au, align 8, !tbaa !59
  store ptr %i.bq, ptr %i.f, align 8, !tbaa !59
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !67
  store i64 %i.bs, ptr %i.g, align 8, !tbaa !67
  br label %_ZN2cv4UMataSERKS0_.exit

_ZN2cv4UMataSERKS0_.exit:                         ; preds = %._crit_edge, %_ZN2cv4UMat7releaseEv.exit.i
  br i1 %i.l, label %.lr.ph76, label %.thread98

.thread98:                                        ; preds = %_ZN2cv4UMataSERKS0_.exit
  store i32 1, ptr %i.b, align 8, !tbaa !64
  %i.bt = icmp eq i32 %i.k, 0
  %i.bu = zext i1 %i.bt to i32
  br label %bb.ac

.lr.ph76:                                         ; preds = %_ZN2cv4UMataSERKS0_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %wide.trip.count82 = zext nneg i32 %i.k to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph76, %.critedge
  %indvars.iv79 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next80, %.critedge ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv79
  %i.bx = load i64, ptr %i.bw, align 4            ; 3 uses
  %.sroa.069.0.extract.trunc = trunc i64 %i.bx to i32 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.bx, 32   ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 2 uses
  %i.by = icmp ne i32 %.sroa.069.0.extract.trunc, -2147483648
  %i.bz = icmp ne i64 %.sroa.6.0.extract.shift, 2147483647
  %.not6.i = or i1 %i.by, %i.bz
  br i1 %.not6.i, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv79 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !31
  %i.cc = icmp ne i32 %.sroa.069.0.extract.trunc, 0
  %i.cd = icmp ne i32 %i.cb, %.sroa.6.0.extract.trunc
  %.not6.i56 = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %.not6.i56, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.ce = sub nsw i32 %.sroa.6.0.extract.trunc, %.sroa.069.0.extract.trunc
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !31
  %sext = shl i64 %i.bx, 32
  %i.cf = ashr exact i64 %sext, 32
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv79
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !35
  %i.ci = mul i64 %i.ch, %i.cf
  %i.cj = load i64, ptr %i.g, align 8, !tbaa !67
  %i.ck = add i64 %i.cj, %i.ci
  store i64 %i.ck, ptr %i.g, align 8, !tbaa !67
  %i.cl = load i32, ptr %0, align 8, !tbaa !48
  %i.cm = or i32 %i.cl, 32768
  store i32 %i.cm, ptr %0, align 8, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.w, %bb.v
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge77, label %bb.u, !llvm.loop !128

._crit_edge77:                                    ; preds = %.critedge
  %i.cn = icmp slt i32 %i.k, 3
  br i1 %i.cn, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %._crit_edge77
  %i.co = icmp eq i32 %i.k, 2                     ; 3 uses
  br i1 %i.co, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread
  %storemerge = phi i32 [ %i.cq, %.thread ], [ 1, %bb.x ]
  store i32 %storemerge, ptr %i.b, align 8, !tbaa !64
  %i.cr = load i32, ptr %i.h, align 8, !tbaa !60
  %narrow.i62 = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 1)
  %i.cs = zext i1 %i.co to i32
  %i.ct = icmp samesign ugt i32 %narrow.i62, %i.cs
  br i1 %i.ct, label %_ZN2cv8MatShapeixEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.44, i32 noundef 97) #23
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.ab
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !30
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.y
  %i.da = zext i1 %i.co to i64
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !31
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN2cv8MatShapeixEm.exit, %.thread98
  %i.de = phi i32 [ %i.bu, %.thread98 ], [ %i.dd, %_ZN2cv8MatShapeixEm.exit ]
  store i32 %i.de, ptr %i.c, align 4, !tbaa !65
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge77
  %i.df = load i32, ptr %0, align 8, !tbaa !48
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !66
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.di = tail call noundef i32 @_ZN2cv20updateContinuityFlagEiiPKiPKm(i32 noundef %i.df, i32 noundef %i.dg, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.i)
  store i32 %i.di, ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMatC2ERKS0_RKSt6vectorINS_5RangeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 28), (32, 48)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  store i32 1124007936, ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i8 0, i64 80, i1 false), !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !66   ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !129
  %i.n = load ptr, ptr %2, align 8, !tbaa !132    ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 3
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp eq i32 %i.k, %i.s
  br i1 %i.t, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.u = icmp sgt i32 %i.k, 0                     ; 2 uses
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 60
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv4UMatC2ERKS0_RKNS_5RangeES5_, ptr noundef nonnull @.str.1, i32 noundef 876) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %7, align 8, !tbaa !36     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !30
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

bb.g:                                             ; preds = %.lr.ph, %.critedge39
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge39 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.af = load i64, ptr %i.ae, align 4            ; 2 uses
  %.sroa.071.0.extract.trunc = trunc i64 %i.af to i32 ; 3 uses
  %.sroa.672.0.extract.shift = lshr i64 %i.af, 32 ; 2 uses
  %.sroa.672.0.extract.trunc = trunc nuw i64 %.sroa.672.0.extract.shift to i32 ; 2 uses
  %i.ag = icmp eq i32 %.sroa.071.0.extract.trunc, -2147483648
  %i.ah = icmp eq i64 %.sroa.672.0.extract.shift, 2147483647
  %i.ai = and i1 %i.ag, %i.ah
  br i1 %i.ai, label %.critedge39, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp sgt i32 %.sroa.071.0.extract.trunc, -1
  %i.ak = icmp slt i32 %.sroa.071.0.extract.trunc, %.sroa.672.0.extract.trunc
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge41

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %i.v, align 8, !tbaa !60
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 1)
  %i.am = zext nneg i32 %narrow.i to i64
  %i.an = icmp samesign ult i64 %indvars.iv, %i.am
  br i1 %i.an, label %_ZNK2cv8MatShapeixEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.44, i32 noundef 103) #23
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !30
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !31
  %.not = icmp slt i32 %i.av, %.sroa.672.0.extract.trunc
  br i1 %.not, label %.critedge41, label %.critedge39

.critedge41:                                      ; preds = %bb.h, %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.critedge41
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv4UMatC2ERKS0_RKNS_5RangeES5_, ptr noundef nonnull @.str.1, i32 noundef 880) #23
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %.critedge41
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.p:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.p
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !30
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.o
  %.pn35 = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.ax, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume

.critedge39:                                      ; preds = %bb.g, %_ZNK2cv8MatShapeixEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !133

._crit_edge:                                      ; preds = %.critedge39, %.preheader
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN2cv4UMataSERKS0_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !59 ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %_ZN2cv4UMat6addrefEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = atomicrmw add ptr %i.bf, i32 1 acq_rel, align 8 ; 0 uses
  br label %_ZN2cv4UMat6addrefEv.exit.i

_ZN2cv4UMat6addrefEv.exit.i:                      ; preds = %bb.r, %bb.q
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  %.not.i14.i = icmp eq ptr %i.bh, null
  br i1 %.not.i14.i, label %_ZN2cv4UMat7releaseEv.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN2cv4UMat6addrefEv.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = atomicrmw add ptr %i.bi, i32 -1 acq_rel, align 8
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.t, label %_ZN2cv4UMat7releaseEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !59  ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef %i.bl), !inline_history !93
  br label %_ZN2cv4UMat7releaseEv.exit.i

_ZN2cv4UMat7releaseEv.exit.i:                     ; preds = %bb.t, %bb.s, %_ZN2cv4UMat6addrefEv.exit.i
  store ptr null, ptr %i.f, align 8, !tbaa !59
  tail call void @_ZN2cv8MatShape5clearEv(ptr noundef nonnull align 4 dereferenceable(52) %i.h)
  store i32 0, ptr %i.b, align 8, !tbaa !64
  store i32 0, ptr %i.c, align 4, !tbaa !65
  store i32 0, ptr %i.a, align 4, !tbaa !66
  %i.br = load <4 x i32>, ptr %1, align 8, !tbaa !31
  store <4 x i32> %i.br, ptr %0, align 8, !tbaa !31
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bt = tail call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.h, ptr noundef nonnull align 4 dereferenceable(52) %i.bs) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.bu, i64 80, i1 false), !tbaa.struct !73
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !71
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !71
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !54
  store i32 %i.by, ptr %i.e, align 8, !tbaa !54
  %i.bz = load ptr, ptr %i.bd, align 8, !tbaa !59
  store ptr %i.bz, ptr %i.f, align 8, !tbaa !59
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !67
  store i64 %i.cb, ptr %i.g, align 8, !tbaa !67
  br label %_ZN2cv4UMataSERKS0_.exit

_ZN2cv4UMataSERKS0_.exit:                         ; preds = %._crit_edge, %_ZN2cv4UMat7releaseEv.exit.i
  br i1 %i.u, label %.lr.ph75, label %.thread96

.thread96:                                        ; preds = %_ZN2cv4UMataSERKS0_.exit
  store i32 1, ptr %i.b, align 8, !tbaa !64
  %i.cc = icmp eq i32 %i.k, 0
  %i.cd = zext i1 %i.cc to i32
  br label %bb.ac

.lr.ph75:                                         ; preds = %_ZN2cv4UMataSERKS0_.exit
  %i.ce = load ptr, ptr %2, align 8, !tbaa !132
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 60
  %wide.trip.count81 = zext nneg i32 %i.k to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph75, %.critedge
  %indvars.iv78 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next79, %.critedge ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv78
  %i.ch = load i64, ptr %i.cg, align 4            ; 3 uses
  %.sroa.069.0.extract.trunc = trunc i64 %i.ch to i32 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.ch, 32   ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 2 uses
  %i.ci = icmp ne i32 %.sroa.069.0.extract.trunc, -2147483648
  %i.cj = icmp ne i64 %.sroa.6.0.extract.shift, 2147483647
  %.not6.i = or i1 %i.ci, %i.cj
  br i1 %.not6.i, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv78 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !31
  %i.cm = icmp ne i32 %.sroa.069.0.extract.trunc, 0
  %i.cn = icmp ne i32 %i.cl, %.sroa.6.0.extract.trunc
  %.not6.i56 = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %.not6.i56, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.co = sub nsw i32 %.sroa.6.0.extract.trunc, %.sroa.069.0.extract.trunc
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !31
  %sext = shl i64 %i.ch, 32
  %i.cp = ashr exact i64 %sext, 32
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv78
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !35
  %i.cs = mul i64 %i.cr, %i.cp
  %i.ct = load i64, ptr %i.g, align 8, !tbaa !67
  %i.cu = add i64 %i.ct, %i.cs
  store i64 %i.cu, ptr %i.g, align 8, !tbaa !67
  %i.cv = load i32, ptr %0, align 8, !tbaa !48
  %i.cw = or i32 %i.cv, 32768
  store i32 %i.cw, ptr %0, align 8, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.w, %bb.v
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge76, label %bb.u, !llvm.loop !134

._crit_edge76:                                    ; preds = %.critedge
  %i.cx = icmp slt i32 %i.k, 3
  br i1 %i.cx, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %._crit_edge76
  %i.cy = icmp eq i32 %i.k, 2                     ; 3 uses
  br i1 %i.cy, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !31
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread
  %storemerge = phi i32 [ %i.da, %.thread ], [ 1, %bb.x ]
  store i32 %storemerge, ptr %i.b, align 8, !tbaa !64
  %i.db = load i32, ptr %i.h, align 8, !tbaa !60
  %narrow.i62 = tail call i32 @llvm.smax.i32(i32 %i.db, i32 1)
  %i.dc = zext i1 %i.cy to i32
  %i.dd = icmp samesign ugt i32 %narrow.i62, %i.dc
  br i1 %i.dd, label %_ZN2cv8MatShapeixEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.44, i32 noundef 97) #23
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.ab
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !30
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.y
  %i.dk = zext i1 %i.cy to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !31
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN2cv8MatShapeixEm.exit, %.thread96
  %i.do = phi i32 [ %i.cd, %.thread96 ], [ %i.dn, %_ZN2cv8MatShapeixEm.exit ]
  store i32 %i.do, ptr %i.c, align 4, !tbaa !65
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge76
  %i.dp = load i32, ptr %0, align 8, !tbaa !48
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !66
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ds = tail call noundef i32 @_ZN2cv20updateContinuityFlagEiiPKiPKm(i32 noundef %i.dp, i32 noundef %i.dq, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.i)
  store i32 %i.ds, ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv4UMat4diagEi(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !66
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv4UMat4diagEi, ptr noundef nonnull @.str.1, i32 noundef 903) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %7, align 8, !tbaa !36     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !30
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ab

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
  %i.k = load i32, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.l = lshr i32 %i.k, 5
  %i.m = and i32 %i.l, 127
  %i.n = add nuw nsw i32 %i.m, 1
  %i.o = shl i32 %i.k, 2
  %i.p = and i32 %i.o, 124
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 1275511473185297, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 15
  %i.u = mul nuw nsw i32 %i.t, %i.n
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = icmp sgt i32 %2, -1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !65
  %i.z = sub nsw i32 %i.y, %2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !31
  %.sroa.speculated40 = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.z)
  %i.ac = zext nneg i32 %2 to i64
  %i.ad = mul nuw nsw i64 %i.v, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !67
  %i.ag = add i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !67
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !64
  %i.aj = add nsw i32 %i.ai, %2
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !31
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.aj)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load i64, ptr %i.am, align 8, !tbaa !35
  %i.ao = sext i32 %2 to i64
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !67
  %i.as = sub i64 %i.ar, %i.ap
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !67
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0 = phi i32 [ %.sroa.speculated40, %bb.h ], [ %.sroa.speculated, %bb.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0, ptr %i.at, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load i32, ptr %i.au, align 8, !tbaa !60
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %.0, ptr %i.aw, align 4, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.ax, align 4, !tbaa !65
  %i.ay = icmp sgt i32 %i.av, 1
  br i1 %i.ay, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.44, i32 noundef 97) #23
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc
  unreachable

end_hunk_0
begin_hunk_1_@_ZNK2cv4UMat7reshapeEiiPKi:bb.a
  %i.r = load i64, ptr %i.p, align 8, !tbaa !30
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn66 = phi { ptr, i32 } [ %i.m, %bb.l ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

bb.n:                                             ; preds = %bb.h
  %i.t = icmp eq i32 %2, 0
  br i1 %i.t, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.u = lshr i32 %i.g, 5
  %i.v = and i32 %i.u, 127
  %i.w = add nuw nsw i32 %i.v, 1
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.x = icmp samesign ult i32 %2, 129
  br i1 %i.x, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv4UMat7reshapeEii, ptr noundef nonnull @.str.1, i32 noundef 1117) #23
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.u:                                             ; preds = %bb.r
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %9, align 8, !tbaa !36    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.u
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !30
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %bb.t
  %.pn68 = phi { ptr, i32 } [ %i.y, %bb.t ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %i.z, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume

bb.v:                                             ; preds = %bb.p, %bb.o
  %.059 = phi i32 [ %i.w, %bb.o ], [ %2, %bb.p ]  ; 2 uses
  %i.af = icmp slt i32 %i.b, 3
  br i1 %i.af, label %bb.w, label %.preheader.i

.preheader.i:                                     ; preds = %bb.v
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !60
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 9 uses
  %i.aj = zext nneg i32 %i.b to i64               ; 2 uses
  %i.ak = add nsw i32 %i.b, -1
  %.not.not.i = icmp samesign ugt i32 %narrow.i.i, %i.ak
  br i1 %.not.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.x

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.preheader.i
  %xtraiter = and i64 %i.aj, 7                    ; 3 uses
  %i.al = icmp ult i32 %i.b, 8
  br i1 %i.al, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.aj, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.w:                                             ; preds = %bb.v
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !64
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !65
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, %i.ao
  br label %_ZNK2cv4UMat5totalEv.exit

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.cf, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !31
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %.069.i, %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !31
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul i64 %i.aw, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !31
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !31
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !31
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !31
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !31
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul i64 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !31
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul i64 %i.ca, %i.ce                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !68

bb.x:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.44, i32 noundef 103) #23
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.z
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !30
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZN2cv10AutoBufferIiLm4EED2Ev.exit98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn76.pn, %_ZN2cv10AutoBufferIiLm4EED2Ev.exit98 ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa:     ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv4UMat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.cf, %_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod147 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod147)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.cp, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.epil
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !31
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul i64 %.069.i.epil, %i.co             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv4UMat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !135

_ZNK2cv4UMat5totalEv.exit:                        ; preds = %_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.w
  %.07.i = phi i64 [ %i.as, %bb.w ], [ %i.cf, %_ZNK2cv4UMat5totalEv.exit.loopexit.unr-lcssa ], [ %i.cp, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.cq = lshr i32 %i.g, 5
  %i.cr = and i32 %i.cq, 127
  %i.cs = add nuw nsw i32 %i.cr, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = mul i64 %.07.i, %i.ct                   ; 4 uses
  %i.cv = zext nneg i32 %.059 to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %i.cw = zext nneg i32 %.sroa.speculated to i64  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.cx, ptr %11, align 8, !tbaa !136
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not.i.i = icmp samesign ugt i32 %3, 4
  store i64 %i.cw, ptr %i.cy, align 8, !tbaa !138
  br i1 %.not.i.i, label %_ZN2cv10AutoBufferIiLm4EEC2Em.exit.thread, label %_ZN2cv10AutoBufferIiLm4EEC2Em.exit

_ZN2cv10AutoBufferIiLm4EEC2Em.exit.thread:        ; preds = %_ZNK2cv4UMat5totalEv.exit
  %i.cz = shl nuw nsw i64 %i.cw, 2
  %i.da = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cz) #25 ; 2 uses
  store ptr %i.da, ptr %11, align 8, !tbaa !136
  br label %.lr.ph

_ZN2cv10AutoBufferIiLm4EEC2Em.exit:               ; preds = %_ZNK2cv4UMat5totalEv.exit
  %.not145 = icmp eq i32 %3, 0
  br i1 %.not145, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIiLm4EEC2Em.exit.thread, %_ZN2cv10AutoBufferIiLm4EEC2Em.exit
  %i.db = phi ptr [ %i.da, %_ZN2cv10AutoBufferIiLm4EEC2Em.exit.thread ], [ %i.cx, %_ZN2cv10AutoBufferIiLm4EEC2Em.exit ]
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 60
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.al
  %i.dd = icmp sgt i32 %.1, -1
  br i1 %i.dd, label %bb.am, label %._crit_edge.thread

bb.aa:                                            ; preds = %.lr.ph, %bb.al
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.al ] ; 6 uses
  %.044112 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.al ] ; 2 uses
  %.045111 = phi i64 [ %i.cv, %.lr.ph ], [ %.146, %bb.al ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.df = load i32, ptr %i.de, align 4, !tbaa !31 ; 4 uses
  %i.dg = icmp sgt i32 %i.df, -1
  br i1 %i.dg, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.dh = icmp eq i32 %i.df, 0
  br i1 %i.dh, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.di = load i32, ptr %i.a, align 4, !tbaa !66
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv, %i.dj
  br i1 %i.dk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !31
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.sink = phi i32 [ %i.dm, %bb.ad ], [ %i.df, %bb.ac ], [ %i.df, %bb.ab ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv
  store i32 %.sink, ptr %i.dn, align 4, !tbaa !31
  %i.do = sext i32 %.sink to i64
  %i.dp = mul i64 %.045111, %i.do
  br label %bb.al

bb.af:                                            ; preds = %bb.aa
  %i.dq = icmp sgt i32 %.044112, -1
  %i.dr = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.dq, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -201, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZNK2cv4UMat7reshapeEii, ptr noundef nonnull @.str.1, i32 noundef 1136) #23
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.ak:                                            ; preds = %bb.ah
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.ak
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !30
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.aj
  %.pn76 = phi { ptr, i32 } [ %i.ds, %bb.aj ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.dt, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.bl

bb.al:                                            ; preds = %bb.af, %bb.ae
  %.146 = phi i64 [ %i.dp, %bb.ae ], [ %.045111, %bb.af ] ; 4 uses
  %.1 = phi i32 [ %.044112, %bb.ae ], [ %i.dr, %bb.af ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.aa, !llvm.loop !139

bb.am:                                            ; preds = %._crit_edge
  %i.dz = icmp eq i64 %.146, 0
  br i1 %i.dz, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.ea = icmp eq i64 %i.cu, 0
  br i1 %i.ea, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv4UMat7reshapeEii, ptr noundef nonnull @.str.1, i32 noundef 1143) #23
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.as:                                            ; preds = %bb.ap
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.as
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !30
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.ar
  %.pn72 = phi { ptr, i32 } [ %i.eb, %bb.ar ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.ec, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bl

bb.at:                                            ; preds = %bb.an, %bb.am
  %.2 = phi i64 [ %.146, %bb.am ], [ 1, %bb.an ]  ; 2 uses
  %i.ei = urem i64 %i.cu, %.2
  %i.ej = udiv i64 %i.cu, %.2
  %i.ek = icmp eq i64 %i.ei, 0
  br i1 %i.ek, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv4UMat7reshapeEii, ptr noundef nonnull @.str.1, i32 noundef 1146) #23
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.ay:                                            ; preds = %bb.av
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.ay
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !30
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.ax
  %.pn74 = phi { ptr, i32 } [ %i.el, %bb.ax ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.em, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.bl

bb.az:                                            ; preds = %bb.at
  %i.es = trunc i64 %i.ej to i32
  %i.et = zext nneg i32 %.1 to i64
  %i.eu = load ptr, ptr %11, align 8, !tbaa !136
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  store i32 %i.es, ptr %i.ev, align 4, !tbaa !31
  br label %bb.bg

bb.ba:                                            ; preds = %bb.bg
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

._crit_edge.thread:                               ; preds = %_ZN2cv10AutoBufferIiLm4EEC2Em.exit, %._crit_edge
  %.045.lcssa143 = phi i64 [ %.146, %._crit_edge ], [ %i.cv, %_ZN2cv10AutoBufferIiLm4EEC2Em.exit ]
  %.not = icmp eq i64 %.045.lcssa143, %i.cu
  br i1 %.not, label %bb.bg, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -209, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZNK2cv4UMat7reshapeEii, ptr noundef nonnull @.str.1, i32 noundef 1149) #23
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bb
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.bf:                                            ; preds = %bb.bc
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.bf
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !30
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.be
  %.pn70 = phi { ptr, i32 } [ %i.ex, %bb.be ], [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %i.ey, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.bl

bb.bg:                                            ; preds = %._crit_edge.thread, %bb.az
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.bh unwind label %bb.ba

bb.bh:                                            ; preds = %bb.bg
  %i.fe = load i32, ptr %0, align 8, !tbaa !48
  %i.ff = and i32 %i.fe, -4065
  %i.fg = shl nuw nsw i32 %.059, 5
  %i.fh = add nsw i32 %i.fg, -32
  %i.fi = or i32 %i.ff, %i.fh
  store i32 %i.fi, ptr %0, align 8, !tbaa !48
  %i.fj = load ptr, ptr %11, align 8, !tbaa !136
  invoke void @_ZN2cv7setSizeERNS_4UMatEiPKiPKmb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %3, ptr noundef %i.fj, ptr noundef null, i1 noundef zeroext true)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #22
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.fl = load ptr, ptr %11, align 8, !tbaa !136  ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.fl, %i.cx
  %i.fm = icmp eq ptr %i.fl, null
  %or.cond.i = or i1 %.not.i.i95, %i.fm
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm4EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.fl) #26
  br label %_ZN2cv10AutoBufferIiLm4EED2Ev.exit

_ZN2cv10AutoBufferIiLm4EED2Ev.exit:               ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bs

bb.bl:                                            ; preds = %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.fk, %bb.bi ], [ %i.ew, %bb.ba ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ]
  %i.fn = load ptr, ptr %11, align 8, !tbaa !136  ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.fn, %i.cx
  %i.fo = icmp eq ptr %i.fn, null
  %or.cond.i97 = or i1 %.not.i.i96, %i.fo
  br i1 %or.cond.i97, label %_ZN2cv10AutoBufferIiLm4EED2Ev.exit98, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZdaPv(ptr noundef nonnull %i.fn) #26
  br label %_ZN2cv10AutoBufferIiLm4EED2Ev.exit98

_ZN2cv10AutoBufferIiLm4EED2Ev.exit98:             ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %common.resume

bb.bn:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZNK2cv4UMat7reshapeEii, ptr noundef nonnull @.str.1, i32 noundef 1159) #23
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  unreachable

bb.bq:                                            ; preds = %bb.bn
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.br:                                            ; preds = %bb.bo
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %20, align 8, !tbaa !36   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.br
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !30
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.bq
  %.pn = phi { ptr, i32 } [ %i.fp, %bb.bq ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %i.fq, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %common.resume

bb.bs:                                            ; preds = %_ZN2cv10AutoBufferIiLm4EED2Ev.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv4UMat7reshapeEiRKNS_8MatShapeE(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(address_is_null) dereferenceable(52) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !60     ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4
  call void @_ZNK2cv4UMat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::UMat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %2, i32 noundef 1, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  tail call void @_ZNK2cv4UMat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::UMat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %2, i32 noundef %i.b, ptr noundef nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.cv::UMatDataAutoLock", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #22
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN2cv16UMatDataAutoLockC1EPNS_8UMatDataE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.b)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = atomicrmw add ptr %i.d, i32 1 acq_rel, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = or i32 %2, 50331648
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.h, i32 noundef %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #22 ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = atomicrmw add ptr %i.r, i32 -1 acq_rel, align 4 ; 0 uses
  invoke void @__cxa_rethrow() #23
          to label %bb.u unwind label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !140  ; 2 uses
  %.not10 = icmp eq ptr %i.v, null
  br i1 %.not10, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.z = load i32, ptr %1, align 8, !tbaa !48
  %i.aa = and i32 %i.z, 4095
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_ZN2cv3MatC1EiPKiiPvPKm(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.x, ptr noundef nonnull %i.y, i32 noundef %i.aa, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %1, align 8, !tbaa !48
  store i32 %i.af, ptr %0, align 8, !tbaa !75
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !108
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !140 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !98
  %i.al = load i64, ptr %i.ab, align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !141
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !142
  br label %bb.q

bb.i:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.t

bb.j:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4 ; 0 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !140
  %.not11 = icmp eq ptr %i.ay, null
  br i1 %.not11, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv4UMat6getMatENS_10AccessFlagE, ptr noundef nonnull @.str.1, i32 noundef 1199) #23
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !30
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.az, %bb.n ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ba, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.r

bb.p:                                             ; preds = %bb.j
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.p
  call void @_ZN2cv16UMatDataAutoLockD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.s

bb.r:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %i.at, %bb.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv16UMatDataAutoLockD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn13

bb.s:                                             ; preds = %bb.q, %bb.b
  ret void

bb.t:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #24
  unreachable

bb.u:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #9

declare void @_ZN2cv3MatC1EiPKiiPvPKm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK2cv4UMat6handleENS_10AccessFlagE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !143
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv4UMat6handleENS_10AccessFlagE, ptr noundef nonnull @.str.1, i32 noundef 1208) #23
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !30
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.t

bb.h:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.val.i = load i32, ptr %i.m, align 4, !tbaa !144 ; 2 uses
  %i.n = and i32 %.val.i, 4
  %.not20 = icmp eq i32 %i.n, 0
  br i1 %.not20, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = trunc i32 %.val.i to i1
  br i1 %i.o, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv4UMat6handleENS_10AccessFlagE, ptr noundef nonnull @.str.1, i32 noundef 1209) #23
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.n:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.n
  %i.u = load i64, ptr %i.s, align 8, !tbaa !30
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.m
  %.pn9 = phi { ptr, i32 } [ %i.p, %bb.m ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.q, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8    ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.b)
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !59
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %bb.o
  %.pre = phi ptr [ %i.b, %bb.h ], [ %.pre.pre, %bb.o ] ; 2 uses
  %i.ab = and i32 %1, 33554432
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !144
  %.sink.i = or i32 %i.ad, 2
  store i32 %.sink.i, ptr %i.ac, align 4, !tbaa !144
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !145
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  %.06 = phi ptr [ %i.af, %bb.r ], [ null, %bb.a ]
  ret ptr %.06

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZNK2cv4UMat8ndoffsetEPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !66   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !67   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %i.b, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.013.epil.init = phi i64 [ %i.e, %.lr.ph ], [ %.recomposed16, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %i.i = load i64, ptr %i.h, align 8, !tbaa !35
  %i.j = udiv i64 %.013.epil.init, %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i64 %i.j, ptr %i.k, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.013 = phi i64 [ %i.e, %.lr.ph.new ], [ %.recomposed16, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !35   ; 3 uses
  %i.n = udiv i64 %.013, %i.m                     ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.n, ptr %i.o, align 8, !tbaa !35
  %i.p = mul i64 %i.n, %i.m                       ; 0 uses
  %.recomposed = urem i64 %.013, %i.m             ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.r = load i64, ptr %i.q, align 8, !tbaa !35   ; 3 uses
  %i.s = udiv i64 %.recomposed, %i.r              ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.s, ptr %i.t, align 8, !tbaa !35
  %i.u = mul i64 %i.s, %i.r                       ; 0 uses
  %.recomposed16 = urem i64 %.recomposed, %i.r    ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !85
}

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK2cv12_OutputArray9fixedTypeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZNK2cv12_OutputArray6createEiPKiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #7

declare void @_ZNK2cv11_InputArray7getUMatEi(ptr dead_on_unwind writable sret(%"class.cv::UMat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv4UMat6copyToERKNS_12_OutputArrayERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK2cv4UMat6copyToERKNS_12_OutputArrayERKNS_11_InputArrayEE26__cv_trace_location_fn1302)
  %i.a = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK2cv4UMat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 16777216)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !90
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.k:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.h, %bb.l ], [ %i.g, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  %.pn9 = phi { ptr, i32 } [ %i.b, %bb.d ], [ %.pn, %bb.m ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn9
}

declare noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull returned align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv4UMat5setToERKNS_11_InputArrayES3_E26__cv_trace_location_fn1356)
  %i.a = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.b = select i1 %i.a, i32 33554432, i32 50331648
  invoke void @_ZNK2cv4UMat6getMatENS_10AccessFlagE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.b)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.i       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !90
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #24
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %0

bb.g:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.h, %bb.g ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv4UMat1tEv(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(184) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  tail call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !100
  store i32 17432576, ptr %2, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.e, align 8
  store i32 34209792, ptr %3, align 8, !tbaa !55
  store ptr %0, ptr %i.d, align 8, !tbaa !58
  invoke void @_ZN2cv9transposeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #22
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat5zerosEiiiNS_14UMatUsageFlagsE(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @_ZN2cv4UMatC1EiiiRKNS_7Scalar_IdEENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat5zerosENS_5Size_IiEEiNS_14UMatUsageFlagsE(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void @_ZN2cv4UMatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat5zerosEiPKiiNS_14UMatUsageFlagsE(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @_ZN2cv4UMatC1EiPKiiRKNS_7Scalar_IdEENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat5zerosERKNS_8MatShapeEiNS_14UMatUsageFlagsE(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, ptr noundef nonnull align 4 dereferenceable(52) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void @_ZN2cv4UMatC1EiPKiiRKNS_7Scalar_IdEENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.a, ptr noundef nonnull %i.b, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat4onesEiiiNS_14UMatUsageFlagsE(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store double 1.000000e+00, ptr %5, align 8, !tbaa !146
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @_ZN2cv4UMatC1EiiiRKNS_7Scalar_IdEENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat4onesENS_5Size_IiEEiNS_14UMatUsageFlagsE(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, i64 %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store double 1.000000e+00, ptr %4, align 8, !tbaa !146
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @_ZN2cv4UMatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat4onesEiPKiiNS_14UMatUsageFlagsE(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store double 1.000000e+00, ptr %5, align 8, !tbaa !146
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @_ZN2cv4UMatC1EiPKiiRKNS_7Scalar_IdEENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4UMat4onesERKNS_8MatShapeEiNS_14UMatUsageFlagsE(ptr dead_on_unwind noalias writable sret(%"class.cv::UMat") align 8 %0, ptr noundef nonnull align 4 dereferenceable(52) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store double 1.000000e+00, ptr %4, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  call void @_ZN2cv4UMatC1EiPKiiRKNS_7Scalar_IdEENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %i.a, ptr noundef nonnull %i.b, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !148
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !31   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !31
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !inline_history !148
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

declare void @_ZN2cv16TLSDataContainerC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7TLSDataINS_18UMatDataAutoLockerEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv7TLSDataINS_18UMatDataAutoLockerEEE, i64 16), ptr %0, align 8, !tbaa !23
  invoke void @_ZN2cv16TLSDataContainer7releaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv16TLSDataContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7TLSDataINS_18UMatDataAutoLockerEED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv7TLSDataINS_18UMatDataAutoLockerEEE, i64 16), ptr %0, align 8, !tbaa !23
  invoke void @_ZN2cv16TLSDataContainer7releaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %_ZN2cv7TLSDataINS_18UMatDataAutoLockerEED2Ev.exit unwind label %bb.b, !inline_history !149

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #24, !inline_history !149
  unreachable

_ZN2cv7TLSDataINS_18UMatDataAutoLockerEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN2cv16TLSDataContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #22, !inline_history !149
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv7TLSDataINS_18UMatDataAutoLockerEE18createDataInstanceEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv7TLSDataINS_18UMatDataAutoLockerEE18deleteDataInstanceEPv(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 24) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN2cv16TLSDataContainer7releaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN2cv16TLSDataContainerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12)) unnamed_addr #9

declare noundef ptr @_ZNK2cv16TLSDataContainer7getDataEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSN2cv8UMatDataE", !10, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !12, i64 24, !12, i64 32, !13, i64 40, !14, i64 48, !11, i64 56, !11, i64 64, !5, i64 72, !5, i64 76, !15, i64 80, !16, i64 88}
!10 = !{!"p1 _ZTSN2cv12MatAllocatorE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"_ZTSN2cv8UMatData10MemoryFlagE", !6, i64 0}
!15 = !{!"p1 _ZTSN2cv8UMatDataE", !11, i64 0}
!16 = !{!"_ZTSSt10shared_ptrIvE", !17, i64 0}
!17 = !{!"_ZTSSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0, !18, i64 8}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!19 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!20 = !{!9, !10, i64 0}
!21 = !{!9, !5, i64 76}
!22 = !{!9, !15, i64 80}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !7, i64 0}
!25 = !{!18, !19, i64 0}
!26 = !{!27, !5, i64 8}
!27 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!28 = !{!27, !5, i64 12}
!29 = distinct !{null, null, null}
!30 = !{!6, !6, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!34, !12, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!35 = !{!13, !13, i64 0}
!36 = !{!37, !12, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0, !13, i64 8, !6, i64 16}
!38 = !{!37, !13, i64 8}
!39 = !{!40, !15, i64 0}
!40 = !{!"_ZTSN2cv16UMatDataAutoLockE", !15, i64 0, !15, i64 8}
!41 = !{!40, !15, i64 8}
!42 = !{!"branch_weights", i32 1, i32 1048575}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTSN2cv7TLSDataINS_18UMatDataAutoLockerEEE", !11, i64 0}
!45 = !{!15, !15, i64 0}
!46 = !{!47, !5, i64 0}
!47 = !{!"_ZTSN2cv18UMatDataAutoLockerE", !5, i64 0, !6, i64 8}
!48 = !{!49, !5, i64 0}
!49 = !{!"_ZTSN2cv4UMatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !10, i64 16, !50, i64 24, !15, i64 32, !13, i64 40, !51, i64 48, !53, i64 104}
!50 = !{!"_ZTSN2cv14UMatUsageFlagsE", !6, i64 0}
!51 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !52, i64 4, !5, i64 8, !6, i64 12}
!52 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!53 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!54 = !{!49, !50, i64 24}
!55 = !{!56, !5, i64 0}
!56 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !11, i64 8, !57, i64 16}
!57 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!58 = !{!56, !11, i64 8}
!59 = !{!49, !15, i64 32}
!60 = !{!51, !5, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{ptr @_ZN2cv4UMat7releaseEv, ptr @_ZN2cv4UMat10deallocateEv}
!64 = !{!49, !5, i64 8}
!65 = !{!49, !5, i64 12}
!66 = !{!49, !5, i64 4}
!67 = !{!49, !13, i64 40}
!68 = distinct !{!68, !62}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!49, !10, i64 16}
!72 = !{!49, !5, i64 48}
!73 = !{i64 0, i64 80, !30}
!74 = !{ptr @_ZN2cv4UMat10deallocateEv}
!75 = !{!76, !5, i64 0}
!76 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !10, i64 56, !15, i64 64, !51, i64 72, !53, i64 128}
!77 = !{!78, !5, i64 0}
!78 = !{!"_ZTSN2cv4cuda6GpuMatE", !5, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !12, i64 24, !79, i64 32, !12, i64 40, !12, i64 48, !80, i64 56}
!79 = !{!"p1 int", !11, i64 0}
!80 = !{!"p1 _ZTSN2cv4cuda6GpuMat9AllocatorE", !11, i64 0}
!81 = distinct !{!81, !62, !82, !83}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = distinct !{!84, !62, !83, !82}
!85 = distinct !{!85, !62}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!88 = distinct !{!88, !"_ZNK2cv11_InputArray6getMatEi"}
!89 = !{!76, !12, i64 24}
!90 = !{!91, !5, i64 8}
!91 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !92, i64 0, !5, i64 8}
!92 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !11, i64 0}
!93 = !{ptr @_ZN2cv4UMataSERKS0_, ptr @_ZN2cv4UMat7releaseEv, ptr @_ZN2cv4UMat10deallocateEv}
!94 = distinct !{!94, !70}
!95 = distinct !{!95, !70}
!96 = !{!10, !10, i64 0}
!97 = distinct !{!97, !62}
!98 = !{!76, !12, i64 32}
!99 = !{!57, !5, i64 0}
!100 = !{!57, !5, i64 4}
!101 = !{!102, !5, i64 0}
!102 = !{!"_ZTSN2cv6Point_IiEE", !5, i64 0, !5, i64 4}
!103 = !{!102, !5, i64 4}
!104 = !{!76, !5, i64 8}
!105 = !{!76, !5, i64 12}
!106 = !{!76, !10, i64 56}
!107 = !{!76, !5, i64 4}
!108 = !{!76, !15, i64 64}
!109 = !{!110, !110, i64 0}
!110 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!111 = !{!112, !79, i64 8}
!112 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!113 = !{!112, !79, i64 0}
!114 = !{!9, !13, i64 40}
!115 = distinct !{!115, !70}
!116 = distinct !{!116, !62}
!117 = !{ptr @_ZN2cv4UMat7releaseEv}
!118 = !{ptr @_ZN2cv4UMataSEOS0_}
!119 = distinct !{!119, !62, !83, !82}
!120 = !{!121, !5, i64 0}
!121 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!122 = !{!123, !5, i64 4}
!123 = !{!"_ZTSN2cv5Rect_IiEE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!124 = !{!123, !5, i64 0}
!125 = !{!123, !5, i64 8}
!126 = !{!123, !5, i64 12}
!127 = distinct !{!127, !62}
!128 = distinct !{!128, !62}
!129 = !{!130, !131, i64 8}
!130 = !{!"_ZTSNSt12_Vector_baseIN2cv5RangeESaIS1_EE17_Vector_impl_dataE", !131, i64 0, !131, i64 8, !131, i64 16}
!131 = !{!"p1 _ZTSN2cv5RangeE", !11, i64 0}
!132 = !{!130, !131, i64 0}
!133 = distinct !{!133, !62}
!134 = distinct !{!134, !62}
!135 = distinct !{!135, !70}
!136 = !{!137, !79, i64 0}
!137 = !{!"_ZTSN2cv10AutoBufferIiLm4EEE", !79, i64 0, !13, i64 8, !6, i64 16}
!138 = !{!137, !13, i64 8}
!139 = distinct !{!139, !62}
!140 = !{!9, !12, i64 24}
!141 = !{!76, !12, i64 40}
!142 = !{!76, !12, i64 48}
!143 = !{!9, !5, i64 20}
!144 = !{!14, !14, i64 0}
!145 = !{!9, !11, i64 56}
!146 = !{!147, !147, i64 0}
!147 = !{!"double", !6, i64 0}
!148 = distinct !{null}
!149 = !{ptr @_ZN2cv7TLSDataINS_18UMatDataAutoLockerEED2Ev}
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matrix?download=true
inline.NumInlined: 721
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv3MatC2EOS0_:bb.a
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %i.l, ptr noundef nonnull align 4 dereferenceable(52) %i.m)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false), !tbaa.struct !147
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %1, align 8, !tbaa !23
  store i32 -1, ptr %i.m, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i8 0, i64 80, i1 false), !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(208) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(208) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load <4 x i32>, ptr %1, align 8, !tbaa !23
  store <4 x i32> %i.b, ptr %0, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !133
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.i = load <2 x i32>, ptr %i.f, align 8, !tbaa !16
  store <2 x i32> %i.i, ptr %i.g, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.k, ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.o = load i32, ptr %i.m, align 4, !tbaa !23
  store i32 %i.o, ptr %i.n, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.q, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.t = load i32, ptr %i.s, align 4, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.t, ptr %i.u, align 4, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.w, ptr %i.x, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.al, ptr %i.am, align 4, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i64 80, i1 false), !tbaa.struct !147
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !tbaa !111
  store <2 x ptr> %i.au, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !146
  store <2 x ptr> %i.ax, ptr %i.aw, align 8, !tbaa !146
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !132
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !132
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %1, align 8, !tbaa !23
  store i32 -1, ptr %i.f, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i8 0, i64 80, i1 false), !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit.loopexit.i
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN2cv3Mat8copySizeERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(address) dereferenceable(208) initializes((4, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(208) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %i.e, align 4, !tbaa !128
  %i.f = load <2 x i32>, ptr %i.a, align 4, !tbaa !23
  store <2 x i32> %i.f, ptr %i.b, align 4, !tbaa !23
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN2cv8MatShapeaSERKS0_.exit, label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load <2 x i32>, ptr %i.g, align 8, !tbaa !16
  store <2 x i32> %i.i, ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.k, ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.o = load i32, ptr %i.m, align 4, !tbaa !23
  store i32 %i.o, ptr %i.n, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.q, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.t = load i32, ptr %i.s, align 4, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.t, ptr %i.u, align 4, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.w, ptr %i.x, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.al, ptr %i.am, align 4, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !23
  br label %_ZN2cv8MatShapeaSERKS0_.exit

_ZN2cv8MatShapeaSERKS0_.exit:                     ; preds = %bb.a, %.loopexit.loopexit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i64 80, i1 false), !tbaa.struct !147
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca [10 x %"class.cv::Range"], align 16 ; 15 uses
  %11 = alloca %"class.cv::Mat", align 16         ; 17 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.d, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i8 0, i64 80, i1 false), !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !123  ; 11 uses
  %i.l = icmp slt i32 %i.k, 11
  br i1 %i.l, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.52, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1197) #25
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
  %i.o = load ptr, ptr %6, align 8, !tbaa !14     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !16
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.av

bb.g:                                             ; preds = %bb.a
  %i.t = icmp sgt i32 %i.k, 1
  br i1 %i.t, label %.critedge60, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %i.k, 1
  br i1 %i.u, label %bb.i, label %.critedge62

bb.i:                                             ; preds = %bb.h
  %.val66 = load i32, ptr %2, align 4, !tbaa !163 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val67 = load i32, ptr %i.v, align 4           ; 2 uses
  %i.w = icmp eq i32 %.val66, -2147483648
  %i.x = icmp eq i32 %.val67, 2147483647
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.critedge60.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !129
  %i.ab = icmp eq i32 %.val66, 0
  %i.ac = icmp eq i32 %.val67, %i.aa
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %.critedge60.thread, label %.critedge62

.critedge62:                                      ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.critedge62
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1200) #25
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %.critedge62
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.n:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.n
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.m
  %.pn48 = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.af, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.av

.critedge60:                                      ; preds = %bb.g
  %.not110 = icmp eq i32 %i.k, 2
  br i1 %.not110, label %.critedge60.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge60
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.al, i8 0, i64 64, i1 false), !tbaa !23
  %i.am = load i64, ptr %2, align 4
  store i64 %i.am, ptr %10, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = load i64, ptr %3, align 4
  store i64 %i.ao, ptr %i.an, align 8
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 9223372034707292160, ptr %16, align 16
  %exitcond.not = icmp eq i32 %i.k, 3
  br i1 %exitcond.not, label %._crit_edge, label %vector.ph

._crit_edge:                                      ; preds = %.lr.ph.7, %.lr.ph, %._crit_edge.a, %.lr.ph.preheader140, %middle.block, %vector.body.1, %vector.ph, %.lr.ph.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZN2cv3MatC1ERKS0_PKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull %10)
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.o unwind label %bb.p

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 9223372034707292160, ptr %i.ap, align 8
  %i.aq = icmp eq i32 %i.k, 4
  br i1 %i.aq, label %._crit_edge, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 9223372034707292160, ptr %i.ar, align 16
  %exitcond.not.2 = icmp eq i32 %i.k, 5
  br i1 %exitcond.not.2, label %._crit_edge, label %middle.block

middle.block:                                     ; preds = %vector.body.1
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 9223372034707292160, ptr %17, align 8
  %cmp.n = icmp eq i32 %i.k, 6
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader140

.lr.ph.preheader140:                              ; preds = %middle.block
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 9223372034707292160, ptr %18, align 16
  %exitcond.not.4 = icmp eq i32 %i.k, 7
  br i1 %exitcond.not.4, label %._crit_edge, label %._crit_edge.a

._crit_edge.a:                                    ; preds = %.lr.ph.preheader140
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i64 9223372034707292160, ptr %19, align 8
  %exitcond.not.5 = icmp eq i32 %i.k, 8
  br i1 %exitcond.not.5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.a
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i64 9223372034707292160, ptr %20, align 16
  %exitcond.not.a = icmp eq i32 %i.k, 9
  br i1 %exitcond.not.a, label %._crit_edge, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i64 9223372034707292160, ptr %21, align 8
  br label %._crit_edge

bb.o:                                             ; preds = %._crit_edge
  %i.as = load <4 x i32>, ptr %11, align 16, !tbaa !23
  store <4 x i32> %i.as, ptr %0, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 76
  %i.aw = load <4 x i32>, ptr %i.au, align 8, !tbaa !16
  store <4 x i32> %i.aw, ptr %i.h, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = load <4 x i32>, ptr %i.ax, align 8, !tbaa !23
  store <4 x i32> %i.az, ptr %i.ay, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = load <4 x i32>, ptr %i.ba, align 8, !tbaa !23
  store <4 x i32> %i.bc, ptr %i.bb, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 16 dereferenceable(80) %i.bg, i64 80, i1 false), !tbaa.struct !147
  %i.bh = load <2 x ptr>, ptr %i.at, align 8, !tbaa !111
  store <2 x ptr> %i.bh, ptr %i.e, align 8, !tbaa !111
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bj = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !111
  store <2 x ptr> %i.bj, ptr %i.f, align 8, !tbaa !111
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bl = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !146
  store <2 x ptr> %i.bl, ptr %i.g, align 8, !tbaa !146
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %11, align 16, !tbaa !23
  store i32 -1, ptr %i.au, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.av, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bg, i8 0, i64 80, i1 false), !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, i8 0, i64 48, i1 false)
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.au

bb.p:                                             ; preds = %._crit_edge
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.av

.critedge60.thread:                               ; preds = %bb.j, %bb.i, %.critedge60
  %i.bn = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  %.val82 = load i32, ptr %2, align 4, !tbaa !163 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val83 = load i32, ptr %i.bo, align 4          ; 5 uses
  %i.bp = icmp ne i32 %.val82, -2147483648
  %i.bq = icmp ne i32 %.val83, 2147483647
  %.not6.i = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %.not6.i, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.critedge60.thread
  %i.br = load i32, ptr %i.b, align 8, !tbaa !129
  %i.bs = icmp ne i32 %.val82, 0
  %i.bt = icmp ne i32 %.val83, %i.br
  %.not6.i89 = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %.not6.i89, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp slt i32 %.val82, 0
  %.not = icmp sgt i32 %.val82, %.val83
  %or.cond = select i1 %i.bu, i1 true, i1 %.not
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !129
  %.not50 = icmp sgt i32 %.val83, %i.bw
  br i1 %.not50, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.54, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1218) #25
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.x:                                             ; preds = %bb.u
  %i.by = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bz = load ptr, ptr %12, align 8, !tbaa !14   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.x
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !16
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.w
  %.pn51 = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.by, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.body

bb.y:                                             ; preds = %bb.s
  %i.ce = sub nuw nsw i32 %.val83, %.val82        ; 2 uses
  store i32 %i.ce, ptr %i.b, align 8, !tbaa !129
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !23
  %i.cg = load i64, ptr %i.i, align 8, !tbaa !12
  %i.ch = load i32, ptr %2, align 4, !tbaa !163
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul i64 %i.cg, %i.ci
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store ptr %i.cl, ptr %i.e, align 8, !tbaa !133
  %i.cm = load i32, ptr %0, align 8, !tbaa !126
  %i.cn = or i32 %i.cm, 32768
  store i32 %i.cn, ptr %0, align 8, !tbaa !126
  br label %.critedge

bb.z:                                             ; preds = %bb.ak
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.critedge:                                        ; preds = %bb.q, %bb.y, %.critedge60.thread
  %.val78 = load i32, ptr %3, align 4, !tbaa !163 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val79 = load i32, ptr %i.cp, align 4          ; 5 uses
  %i.cq = icmp ne i32 %.val78, -2147483648
  %i.cr = icmp ne i32 %.val79, 2147483647
  %.not6.i93 = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %.not6.i93, label %bb.aa, label %.critedge2

bb.aa:                                            ; preds = %.critedge
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !128
  %i.ct = icmp ne i32 %.val78, 0
  %i.cu = icmp ne i32 %.val79, %i.cs
  %.not6.i94 = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %.not6.i94, label %bb.ab, label %.critedge2

bb.ab:                                            ; preds = %bb.aa
  %i.cv = icmp slt i32 %.val78, 0
  %.not52 = icmp sgt i32 %.val78, %.val79
  %or.cond109 = select i1 %i.cv, i1 true, i1 %.not52
  br i1 %or.cond109, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !128
  %.not53 = icmp sgt i32 %.val79, %i.cx
  br i1 %.not53, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.55, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1227) #25
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.ah:                                            ; preds = %bb.ae
  %i.cz = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.da = load ptr, ptr %14, align 8, !tbaa !14   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.ah
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !16
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ag
  %.pn54 = phi { ptr, i32 } [ %i.cy, %bb.ag ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.cz, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %.body

.body:                                            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %.pn55 = phi { ptr, i32 } [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %i.co, %bb.z ], [ %.pn51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ]
  %.4 = extractvalue { ptr, i32 } %.pn55, 0
  %i.df = call ptr @__cxa_begin_catch(ptr %.4) #24 ; 0 uses
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %.body
  invoke void @__cxa_rethrow() #25
          to label %bb.ax unwind label %bb.ao

bb.aj:                                            ; preds = %bb.ac
  %i.dg = sub nuw nsw i32 %.val79, %.val78        ; 2 uses
  store i32 %i.dg, ptr %i.c, align 4, !tbaa !128
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !123
  %i.di = icmp sgt i32 %i.dh, 1                   ; 2 uses
  %i.dj = load i32, ptr %i.h, align 8, !tbaa !18
  %narrow.i98 = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 1)
  %i.dk = zext i1 %i.di to i32
  %i.dl = icmp samesign ugt i32 %narrow.i98, %i.dk
  br i1 %i.dl, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.ak
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %.noexc
  unreachable

bb.am:                                            ; preds = %.noexc
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.am
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !16
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

bb.an:                                            ; preds = %bb.aj
  %i.ds = zext i1 %i.di to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ds
  store i32 %i.dg, ptr %i.du, align 4, !tbaa !23
  %i.dv = load i32, ptr %3, align 4, !tbaa !163
  %i.dw = sext i32 %i.dv to i64
  %i.dx = load i32, ptr %0, align 8, !tbaa !126   ; 3 uses
  %i.dy = lshr i32 %i.dx, 5
  %i.dz = and i32 %i.dy, 127
  %i.ea = add nuw nsw i32 %i.dz, 1
  %i.eb = shl i32 %i.dx, 2
  %i.ec = and i32 %i.eb, 124
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = lshr i64 1275511473185297, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = and i32 %i.ef, 15
  %i.eh = mul nuw nsw i32 %i.eg, %i.ea
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = mul nsw i64 %i.ei, %i.dw
  %i.ek = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej
  store ptr %i.el, ptr %i.e, align 8, !tbaa !133
  %i.em = or i32 %i.dx, 32768
  store i32 %i.em, ptr %0, align 8, !tbaa !126
  br label %.critedge2

bb.ao:                                            ; preds = %bb.ai, %.body
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.av unwind label %bb.aw

.critedge2:                                       ; preds = %.critedge, %bb.aa, %bb.an
  %i.eo = load i32, ptr %0, align 8, !tbaa !126   ; 3 uses
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !123 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.er = icmp slt i32 %i.ep, 2
  br i1 %i.er, label %bb.ap, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.critedge2
  %wide.trip.count.i.i = zext nneg i32 %i.ep to i64
  br label %.preheader.i.i

bb.ap:                                            ; preds = %.critedge2
  %i.es = or i32 %i.eo, 16384
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

.preheader.i.i:                                   ; preds = %bb.aq, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.aq ] ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.i.i
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !23
  %i.ev = icmp sgt i32 %i.eu, 1
  br i1 %i.ev, label %.split.loop.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.split.loop.exit48.i.i, label %.preheader.i.i, !llvm.loop !130

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i
  %i.ew = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.split.loop.exit48.i.i

.split.loop.exit48.i.i:                           ; preds = %bb.aq, %.split.loop.exit.i.i
  %storemerge.lcssa.i.i = phi i32 [ %i.ew, %.split.loop.exit.i.i ], [ %i.ep, %bb.aq ] ; 4 uses
  %i.ex = add nsw i32 %i.ep, -1                   ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.ex, i32 %storemerge.lcssa.i.i)
  %i.ey = sext i32 %.sroa.speculated.i.i to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !23
  %i.fb = sext i32 %i.fa to i64
  %i.fc = lshr i32 %i.eo, 5
  %i.fd = and i32 %i.fc, 127
  %i.fe = add nuw nsw i32 %i.fd, 1
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = mul nsw i64 %i.fb, %i.ff                ; 2 uses
  %i.fh = icmp sgt i32 %i.ex, %storemerge.lcssa.i.i
  br i1 %i.fh, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.fi = zext nneg i32 %i.ex to i64
  %i.fj = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ar, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.fi, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.ar ] ; 4 uses
  %.037.i.i = phi i64 [ %i.fg, %.lr.ph.preheader.i.i ], [ %i.fn, %bb.ar ]
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %indvars.iv43.i.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !23
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = mul i64 %.037.i.i, %i.fm                ; 3 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv43.i.i ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !12
  %i.fq = mul i64 %i.fp, %i.fm
  %i.fr = getelementptr i8, ptr %i.fo, i64 -8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !12
  %i.ft = icmp ult i64 %i.fq, %i.fs
  br i1 %i.ft, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.fu = icmp sgt i64 %indvars.iv.next44.i.i, %i.fj
  br i1 %i.fu, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !131

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.fv = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.fw = icmp sge i32 %storemerge.lcssa.i.i, %i.fv
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ar, %._crit_edge.loopexit.split.loop.exit.i.i, %.split.loop.exit48.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.fw, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.ar ]
  %.1.i.i = phi i64 [ %i.fg, %.split.loop.exit48.i.i ], [ %i.fn, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.fn, %bb.ar ]
  %i.fx = add i64 %.1.i.i, 2147483648
  %i.fy = icmp ult i64 %i.fx, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.fy, i1 false
  %i.fz = and i32 %i.eo, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.fz
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

_ZN2cv3Mat20updateContinuityFlagEv.exit:          ; preds = %bb.ap, %._crit_edge.i.i
  %.126.i.i = phi i32 [ %i.es, %bb.ap ], [ %.025.i.i, %._crit_edge.i.i ]
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !126
  %i.ga = load i32, ptr %i.b, align 8, !tbaa !129
  %i.gb = icmp slt i32 %i.ga, 1
  br i1 %i.gb, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN2cv3Mat20updateContinuityFlagEv.exit
  %i.gc = load i32, ptr %i.c, align 4, !tbaa !128
  %i.gd = icmp slt i32 %i.gc, 1
  br i1 %i.gd, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %_ZN2cv3Mat20updateContinuityFlagEv.exit
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store i32 0, ptr %i.c, align 4, !tbaa !128
  store i32 0, ptr %i.b, align 8, !tbaa !129
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.o
  ret void

bb.av:                                            ; preds = %bb.ao, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn57 = phi { ptr, i32 } [ %i.bm, %bb.p ], [ %i.en, %bb.ao ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn57

bb.aw:                                            ; preds = %bb.ao
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #28
  unreachable

bb.ax:                                            ; preds = %bb.ai
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  store i32 %i.a, ptr %0, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 2, ptr %i.b, align 4, !tbaa !123
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load <2 x i32>, ptr %i.f, align 4, !tbaa !23
  %i.h = shufflevector <2 x i32> %i.g, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.h, ptr %i.c, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.i, align 8, !tbaa !139
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !165
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !12
  %i.r = mul i64 %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.r
  store ptr %i.s, ptr %i.j, align 8, !tbaa !133
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !111
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !111
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !146
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !146
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !132
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !132
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ac, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, i8 0, i64 80, i1 false), !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !123
  %i.ag = icmp slt i32 %i.af, 3
  br i1 %i.ag, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1255) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ai, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.ao = load i32, ptr %0, align 8, !tbaa !126   ; 4 uses
  %i.ap = lshr i32 %i.ao, 5
  %i.aq = and i32 %i.ap, 127
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = shl i32 %i.ao, 2
  %i.at = and i32 %i.as, 124
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 1275511473185297, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 15
  %i.ay = mul nuw nsw i32 %i.ax, %i.ar
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = load i32, ptr %2, align 4, !tbaa !167   ; 3 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.az, %i.bb
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !133
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store ptr %i.be, ptr %i.j, align 8, !tbaa !133
  %i.bf = icmp sgt i32 %i.ba, -1
  br i1 %i.bf, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bg = load i32, ptr %i.f, align 4, !tbaa !168 ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bi = add nuw nsw i32 %i.bg, %i.ba
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !128 ; 2 uses
  %.not = icmp sgt i32 %i.bi, %i.bk
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !165 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, -1
  br i1 %i.bm, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bn = load i32, ptr %i.d, align 4, !tbaa !169 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = add nuw nsw i32 %i.bn, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !129 ; 2 uses
  %.not42 = icmp sgt i32 %i.bp, %i.br
  br i1 %.not42, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1260) #25
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.q:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.q
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !16
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.p
  %.pn43 = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.bt, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.r:                                             ; preds = %bb.l
  %i.bz = icmp samesign ult i32 %i.bg, %i.bk
  %i.ca = icmp samesign ult i32 %i.bn, %i.br
  %or.cond = or i1 %i.bz, %i.ca
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = or i32 %i.ao, 32768                     ; 2 uses
  store i32 %i.cb, ptr %0, align 8, !tbaa !126
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.cc = phi i32 [ %i.ao, %bb.r ], [ %i.cb, %bb.s ] ; 3 uses
  %i.cd = load i32, ptr %i.c, align 8, !tbaa !129 ; 2 uses
  %i.ce = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !23
  %i.cg = icmp sgt i32 %i.ce, 1
  br i1 %i.cg, label %_ZN2cv8MatShapeixEm.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !16
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.t
  %i.cn = load i32, ptr %i.e, align 4, !tbaa !128
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.cn, ptr %i.co, align 8, !tbaa !23
  %i.cp = load i64, ptr %i.p, align 8, !tbaa !12
  store i64 %i.cp, ptr %i.ad, align 8, !tbaa !12
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.az, ptr %i.cq, align 8, !tbaa !12
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !123 ; 4 uses
  %i.cs = icmp slt i32 %i.cr, 2
  br i1 %i.cs, label %bb.x, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN2cv8MatShapeixEm.exit
  %wide.trip.count.i.i = zext nneg i32 %i.cr to i64
  br label %.preheader.i.i

bb.x:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.ct = or i32 %i.cc, 16384
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

.preheader.i.i:                                   ; preds = %bb.y, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.y ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !23
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %.split.loop.exit.i.i, label %bb.y

bb.y:                                             ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.split.loop.exit48.i.i, label %.preheader.i.i, !llvm.loop !130

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i
  %i.cx = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.split.loop.exit48.i.i

.split.loop.exit48.i.i:                           ; preds = %bb.y, %.split.loop.exit.i.i
  %storemerge.lcssa.i.i = phi i32 [ %i.cx, %.split.loop.exit.i.i ], [ %i.cr, %bb.y ] ; 4 uses
  %i.cy = add nsw i32 %i.cr, -1                   ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 %storemerge.lcssa.i.i)
  %i.cz = sext i32 %.sroa.speculated.i.i to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !23
  %i.dc = sext i32 %i.db to i64
  %i.dd = lshr i32 %i.cc, 5
  %i.de = and i32 %i.dd, 127
  %i.df = add nuw nsw i32 %i.de, 1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = mul nsw i64 %i.dc, %i.dg                ; 2 uses
  %i.di = icmp sgt i32 %i.cy, %storemerge.lcssa.i.i
  br i1 %i.di, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.dj = zext nneg i32 %i.cy to i64
  %i.dk = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.dj, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.z ] ; 4 uses
  %.037.i.i = phi i64 [ %i.dh, %.lr.ph.preheader.i.i ], [ %i.do, %bb.z ]
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv43.i.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !23
  %i.dn = sext i32 %i.dm to i64                   ; 2 uses
  %i.do = mul i64 %.037.i.i, %i.dn                ; 3 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv43.i.i ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !12
  %i.dr = mul i64 %i.dq, %i.dn
  %i.ds = getelementptr i8, ptr %i.dp, i64 -8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !12
  %i.du = icmp ult i64 %i.dr, %i.dt
  br i1 %i.du, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.dv = icmp sgt i64 %indvars.iv.next44.i.i, %i.dk
  br i1 %i.dv, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !131

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.dw = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.dx = icmp sge i32 %storemerge.lcssa.i.i, %i.dw
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.z, %._crit_edge.loopexit.split.loop.exit.i.i, %.split.loop.exit48.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.dx, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.z ]
  %.1.i.i = phi i64 [ %i.dh, %.split.loop.exit48.i.i ], [ %i.do, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.do, %bb.z ]
  %i.dy = add i64 %.1.i.i, 2147483648
  %i.dz = icmp ult i64 %i.dy, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.dz, i1 false
  %i.ea = and i32 %i.cc, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.ea
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

_ZN2cv3Mat20updateContinuityFlagEv.exit:          ; preds = %bb.x, %._crit_edge.i.i
  %.126.i.i = phi i32 [ %i.ct, %bb.x ], [ %.025.i.i, %._crit_edge.i.i ]
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !126
  %i.eb = load ptr, ptr %i.z, align 8, !tbaa !132 ; 2 uses
  %.not.i = icmp eq ptr %i.eb, null
  br i1 %.not.i, label %_ZN2cv3Mat6addrefEv.exit, label %bb.aa
end_hunk_0
begin_hunk_1_@_ZN2cv3MatC2ESt16initializer_listIiEiPvPKm:bb.a
bb.f:                                             ; preds = %._crit_edge, %bb.e
  call void @_ZN2cv11finalizeHdrERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2ERKS0_PKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(208) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.d, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false), !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !123  ; 6 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.k = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  store i32 1, ptr %i.b, align 8, !tbaa !129
  %i.l = icmp eq i32 %i.i, 0
  %i.m = zext i1 %i.l to i32
  br label %bb.y

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 84
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1342) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %7, align 8, !tbaa !14     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.u = load i64, ptr %i.s, align 8, !tbaa !16
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

._crit_edge:                                      ; preds = %.critedge39
  %i.w = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 84
  %wide.trip.count89 = zext nneg i32 %i.i to i64
  br label %bb.q

bb.g:                                             ; preds = %.lr.ph, %.critedge39
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge39 ] ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.z = load i64, ptr %i.y, align 4              ; 2 uses
  %.sroa.071.0.extract.trunc = trunc i64 %i.z to i32 ; 3 uses
  %.sroa.672.0.extract.shift = lshr i64 %i.z, 32  ; 2 uses
  %.sroa.672.0.extract.trunc = trunc nuw i64 %.sroa.672.0.extract.shift to i32 ; 2 uses
  %i.aa = icmp eq i32 %.sroa.071.0.extract.trunc, -2147483648
  %i.ab = icmp eq i64 %.sroa.672.0.extract.shift, 2147483647
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %.critedge39, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp sgt i32 %.sroa.071.0.extract.trunc, -1
  %i.ae = icmp slt i32 %.sroa.071.0.extract.trunc, %.sroa.672.0.extract.trunc
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge41

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.n, align 8, !tbaa !18
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.af, i32 1)
  %i.ag = zext nneg i32 %narrow.i to i64
  %i.ah = icmp samesign ult i64 %indvars.iv, %i.ag
  br i1 %i.ah, label %_ZNK2cv8MatShapeixEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !23
  %.not73 = icmp slt i32 %i.ap, %.sroa.672.0.extract.trunc
  br i1 %.not73, label %.critedge41, label %.critedge39

.critedge41:                                      ; preds = %bb.h, %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.critedge41
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1346) #25
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %.critedge41
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.p:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.p
  %i.av = load i64, ptr %i.at, align 8, !tbaa !16
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.o
  %.pn35 = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.ar, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

.critedge39:                                      ; preds = %bb.g, %_ZNK2cv8MatShapeixEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !170

._crit_edge81:                                    ; preds = %.critedge
  %i.ax = icmp slt i32 %i.i, 3
  br i1 %i.ax, label %bb.t, label %bb.z

bb.q:                                             ; preds = %._crit_edge, %.critedge
  %indvars.iv86 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next87, %.critedge ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv86
  %i.az = load i64, ptr %i.ay, align 4            ; 3 uses
  %.sroa.069.0.extract.trunc = trunc i64 %i.az to i32 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.az, 32   ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 2 uses
  %i.ba = icmp ne i32 %.sroa.069.0.extract.trunc, -2147483648
  %i.bb = icmp ne i64 %.sroa.6.0.extract.shift, 2147483647
  %.not6.i = or i1 %i.ba, %i.bb
  br i1 %.not6.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv86 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !23
  %i.be = icmp ne i32 %.sroa.069.0.extract.trunc, 0
  %i.bf = icmp ne i32 %i.bd, %.sroa.6.0.extract.trunc
  %.not6.i56 = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %.not6.i56, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.bg = sub nsw i32 %.sroa.6.0.extract.trunc, %.sroa.069.0.extract.trunc
  store i32 %i.bg, ptr %i.bc, align 4, !tbaa !23
  %sext = shl i64 %i.az, 32
  %i.bh = ashr exact i64 %sext, 32
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv86
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !12
  %i.bk = mul i64 %i.bj, %i.bh
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bm, ptr %i.e, align 8, !tbaa !133
  %i.bn = load i32, ptr %0, align 8, !tbaa !126
  %i.bo = or i32 %i.bn, 32768
  store i32 %i.bo, ptr %0, align 8, !tbaa !126
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.s, %bb.r
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge81, label %bb.q, !llvm.loop !171

bb.t:                                             ; preds = %._crit_edge81
  %i.bp = icmp eq i32 %i.i, 2                     ; 3 uses
  br i1 %i.bp, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  %storemerge = phi i32 [ %i.br, %.thread ], [ 1, %bb.t ]
  store i32 %storemerge, ptr %i.b, align 8, !tbaa !129
  %i.bs = load i32, ptr %i.f, align 8, !tbaa !18
  %narrow.i62 = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 1)
  %i.bt = zext i1 %i.bp to i32
  %i.bu = icmp samesign ugt i32 %narrow.i62, %i.bt
  br i1 %i.bu, label %_ZN2cv8MatShapeixEm.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.x
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !16
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.u
  %i.cb = zext i1 %i.bp to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !23
  br label %bb.y

bb.y:                                             ; preds = %_ZN2cv8MatShapeixEm.exit, %._crit_edge.thread
  %i.cf = phi i32 [ %i.m, %._crit_edge.thread ], [ %i.ce, %_ZN2cv8MatShapeixEm.exit ]
  store i32 %i.cf, ptr %i.c, align 4, !tbaa !128
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge81
  %i.cg = load i32, ptr %0, align 8, !tbaa !126   ; 3 uses
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !123 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.cj = icmp slt i32 %i.ch, 2
  br i1 %i.cj, label %bb.aa, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.z
  %wide.trip.count.i.i = zext nneg i32 %i.ch to i64
  br label %.preheader.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ck = or i32 %i.cg, 16384
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

.preheader.i.i:                                   ; preds = %bb.ab, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ab ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !23
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %.split.loop.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.split.loop.exit48.i.i, label %.preheader.i.i, !llvm.loop !130

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i
  %i.co = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.split.loop.exit48.i.i

.split.loop.exit48.i.i:                           ; preds = %bb.ab, %.split.loop.exit.i.i
  %storemerge.lcssa.i.i = phi i32 [ %i.co, %.split.loop.exit.i.i ], [ %i.ch, %bb.ab ] ; 4 uses
  %i.cp = add nsw i32 %i.ch, -1                   ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 %storemerge.lcssa.i.i)
  %i.cq = sext i32 %.sroa.speculated.i.i to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !23
  %i.ct = sext i32 %i.cs to i64
  %i.cu = lshr i32 %i.cg, 5
  %i.cv = and i32 %i.cu, 127
  %i.cw = add nuw nsw i32 %i.cv, 1
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = mul nsw i64 %i.ct, %i.cx                ; 2 uses
  %i.cz = icmp sgt i32 %i.cp, %storemerge.lcssa.i.i
  br i1 %i.cz, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.da = zext nneg i32 %i.cp to i64
  %i.db = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.da, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.ac ] ; 4 uses
  %.037.i.i = phi i64 [ %i.cy, %.lr.ph.preheader.i.i ], [ %i.df, %bb.ac ]
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %indvars.iv43.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !23
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = mul i64 %.037.i.i, %i.de                ; 3 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv43.i.i ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !12
  %i.di = mul i64 %i.dh, %i.de
  %i.dj = getelementptr i8, ptr %i.dg, i64 -8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !12
  %i.dl = icmp ult i64 %i.di, %i.dk
  br i1 %i.dl, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.dm = icmp sgt i64 %indvars.iv.next44.i.i, %i.db
  br i1 %i.dm, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !131

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.dn = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.do = icmp sge i32 %storemerge.lcssa.i.i, %i.dn
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ac, %._crit_edge.loopexit.split.loop.exit.i.i, %.split.loop.exit48.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.do, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.ac ]
  %.1.i.i = phi i64 [ %i.cy, %.split.loop.exit48.i.i ], [ %i.df, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.df, %bb.ac ]
  %i.dp = add i64 %.1.i.i, 2147483648
  %i.dq = icmp ult i64 %i.dp, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.dq, i1 false
  %i.dr = and i32 %i.cg, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.dr
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

_ZN2cv3Mat20updateContinuityFlagEv.exit:          ; preds = %bb.aa, %._crit_edge.i.i
  %.126.i.i = phi i32 [ %i.ck, %bb.aa ], [ %.025.i.i, %._crit_edge.i.i ]
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3MatC2ERKS0_RKSt6vectorINS_5RangeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) initializes((0, 20), (24, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 153, ptr %i.d, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  tail call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false), !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !123  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172
  %i.l = load ptr, ptr %2, align 8, !tbaa !175    ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 3
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp eq i32 %i.i, %i.q
  br i1 %i.r, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.s = icmp sgt i32 %i.i, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.t = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  store i32 1, ptr %i.b, align 8, !tbaa !129
  %i.u = icmp eq i32 %i.i, 0
  %i.v = zext i1 %i.u to i32
  br label %bb.y

.lr.ph:                                           ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 84
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.62, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1373) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

._crit_edge:                                      ; preds = %.critedge39
  %i.af = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !175
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 84
  %wide.trip.count88 = zext nneg i32 %i.i to i64
  br label %bb.q

bb.g:                                             ; preds = %.lr.ph, %.critedge39
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge39 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.aj = load i64, ptr %i.ai, align 4            ; 2 uses
  %.sroa.071.0.extract.trunc = trunc i64 %i.aj to i32 ; 3 uses
  %.sroa.672.0.extract.shift = lshr i64 %i.aj, 32 ; 2 uses
  %.sroa.672.0.extract.trunc = trunc nuw i64 %.sroa.672.0.extract.shift to i32 ; 2 uses
  %i.ak = icmp eq i32 %.sroa.071.0.extract.trunc, -2147483648
  %i.al = icmp eq i64 %.sroa.672.0.extract.shift, 2147483647
  %i.am = and i1 %i.ak, %i.al
  br i1 %i.am, label %.critedge39, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp sgt i32 %.sroa.071.0.extract.trunc, -1
  %i.ao = icmp slt i32 %.sroa.071.0.extract.trunc, %.sroa.672.0.extract.trunc
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge41

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.w, align 8, !tbaa !18
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 1)
  %i.aq = zext nneg i32 %narrow.i to i64
  %i.ar = icmp samesign ult i64 %indvars.iv, %i.aq
  br i1 %i.ar, label %_ZNK2cv8MatShapeixEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !23
  %.not = icmp slt i32 %i.az, %.sroa.672.0.extract.trunc
  br i1 %.not, label %.critedge41, label %.critedge39

.critedge41:                                      ; preds = %bb.h, %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %.critedge41
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3MatC2EiiiPvm, ptr noundef nonnull @.str.10, i32 noundef 1377) #25
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %.critedge41
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.p:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.p
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !16
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.o
  %.pn35 = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.bb, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

.critedge39:                                      ; preds = %bb.g, %_ZNK2cv8MatShapeixEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !176

._crit_edge80:                                    ; preds = %.critedge
  %i.bh = icmp slt i32 %i.i, 3
  br i1 %i.bh, label %bb.t, label %bb.z

bb.q:                                             ; preds = %._crit_edge, %.critedge
  %indvars.iv85 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next86, %.critedge ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv85
  %i.bj = load i64, ptr %i.bi, align 4            ; 3 uses
  %.sroa.069.0.extract.trunc = trunc i64 %i.bj to i32 ; 3 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.bj, 32   ; 2 uses
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 2 uses
  %i.bk = icmp ne i32 %.sroa.069.0.extract.trunc, -2147483648
  %i.bl = icmp ne i64 %.sroa.6.0.extract.shift, 2147483647
  %.not6.i = or i1 %i.bk, %i.bl
  br i1 %.not6.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv85 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !23
  %i.bo = icmp ne i32 %.sroa.069.0.extract.trunc, 0
  %i.bp = icmp ne i32 %i.bn, %.sroa.6.0.extract.trunc
  %.not6.i56 = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %.not6.i56, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.bq = sub nsw i32 %.sroa.6.0.extract.trunc, %.sroa.069.0.extract.trunc
  store i32 %i.bq, ptr %i.bm, align 4, !tbaa !23
  %sext = shl i64 %i.bj, 32
  %i.br = ashr exact i64 %sext, 32
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv85
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !12
  %i.bu = mul i64 %i.bt, %i.br
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store ptr %i.bw, ptr %i.e, align 8, !tbaa !133
  %i.bx = load i32, ptr %0, align 8, !tbaa !126
  %i.by = or i32 %i.bx, 32768
  store i32 %i.by, ptr %0, align 8, !tbaa !126
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.s, %bb.r
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %._crit_edge80, label %bb.q, !llvm.loop !177

bb.t:                                             ; preds = %._crit_edge80
  %i.bz = icmp eq i32 %i.i, 2                     ; 3 uses
  br i1 %i.bz, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  %storemerge = phi i32 [ %i.cb, %.thread ], [ 1, %bb.t ]
  store i32 %storemerge, ptr %i.b, align 8, !tbaa !129
  %i.cc = load i32, ptr %i.f, align 8, !tbaa !18
  %narrow.i62 = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1)
  %i.cd = zext i1 %i.bz to i32
  %i.ce = icmp samesign ugt i32 %narrow.i62, %i.cd
  br i1 %i.ce, label %_ZN2cv8MatShapeixEm.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.x
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i65: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.u
  %i.cl = zext i1 %i.bz to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cl
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !23
  br label %bb.y

bb.y:                                             ; preds = %_ZN2cv8MatShapeixEm.exit, %._crit_edge.thread
  %i.cp = phi i32 [ %i.v, %._crit_edge.thread ], [ %i.co, %_ZN2cv8MatShapeixEm.exit ]
  store i32 %i.cp, ptr %i.c, align 4, !tbaa !128
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge80
  %i.cq = load i32, ptr %0, align 8, !tbaa !126   ; 3 uses
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !123 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.ct = icmp slt i32 %i.cr, 2
  br i1 %i.ct, label %bb.aa, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.z
  %wide.trip.count.i.i = zext nneg i32 %i.cr to i64
  br label %.preheader.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cu = or i32 %i.cq, 16384
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

.preheader.i.i:                                   ; preds = %bb.ab, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ab ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !23
  %i.cx = icmp sgt i32 %i.cw, 1
  br i1 %i.cx, label %.split.loop.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.split.loop.exit48.i.i, label %.preheader.i.i, !llvm.loop !130

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i
  %i.cy = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.split.loop.exit48.i.i

.split.loop.exit48.i.i:                           ; preds = %bb.ab, %.split.loop.exit.i.i
  %storemerge.lcssa.i.i = phi i32 [ %i.cy, %.split.loop.exit.i.i ], [ %i.cr, %bb.ab ] ; 4 uses
  %i.cz = add nsw i32 %i.cr, -1                   ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.cz, i32 %storemerge.lcssa.i.i)
  %i.da = sext i32 %.sroa.speculated.i.i to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !23
  %i.dd = sext i32 %i.dc to i64
  %i.de = lshr i32 %i.cq, 5
  %i.df = and i32 %i.de, 127
  %i.dg = add nuw nsw i32 %i.df, 1
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = mul nsw i64 %i.dd, %i.dh                ; 2 uses
  %i.dj = icmp sgt i32 %i.cz, %storemerge.lcssa.i.i
  br i1 %i.dj, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.dk = zext nneg i32 %i.cz to i64
  %i.dl = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ac, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.dk, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.ac ] ; 4 uses
  %.037.i.i = phi i64 [ %i.di, %.lr.ph.preheader.i.i ], [ %i.dp, %bb.ac ]
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %indvars.iv43.i.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !23
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = mul i64 %.037.i.i, %i.do                ; 3 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv43.i.i ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !12
  %i.ds = mul i64 %i.dr, %i.do
  %i.dt = getelementptr i8, ptr %i.dq, i64 -8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !12
  %i.dv = icmp ult i64 %i.ds, %i.du
  br i1 %i.dv, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.dw = icmp sgt i64 %indvars.iv.next44.i.i, %i.dl
  br i1 %i.dw, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !131

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.dx = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.dy = icmp sge i32 %storemerge.lcssa.i.i, %i.dx
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ac, %._crit_edge.loopexit.split.loop.exit.i.i, %.split.loop.exit48.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.dy, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.ac ]
  %.1.i.i = phi i64 [ %i.di, %.split.loop.exit48.i.i ], [ %i.dp, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.dp, %bb.ac ]
  %i.dz = add i64 %.1.i.i, 2147483648
  %i.ea = icmp ult i64 %i.dz, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.ea, i1 false
  %i.eb = and i32 %i.cq, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.eb
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

_ZN2cv3Mat20updateContinuityFlagEv.exit:          ; preds = %bb.aa, %._crit_edge.i.i
  %.126.i.i = phi i32 [ %i.cu, %bb.aa ], [ %.025.i.i, %._crit_edge.i.i ]
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat4diagEi(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !123
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv3Mat4diagEi, ptr noundef nonnull @.str.10, i32 noundef 1401) #25
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
  %i.f = load ptr, ptr %7, align 8, !tbaa !14     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_1
begin_hunk_2_@_ZNK2cv3Mat4diagEi:bb.a
          to label %.noexc33 unwind label %bb.ac

.noexc33:                                         ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.107, i32 noundef 109) #25
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc33
  unreachable

bb.u:                                             ; preds = %.noexc33
  %i.db = landingpad { ptr, i32 }
          cleanup
  %i.dc = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %bb.u
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.dh = icmp sgt i32 %i.cz, 0
  br i1 %i.dh, label %bb.w, label %.thread.i

.thread.i:                                        ; preds = %bb.v
  %i.di = icmp eq i32 %i.cz, 0
  %i.dj = zext i1 %i.di to i32
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.dl = icmp eq i32 %i.cz, 2
  %i.dm = zext i1 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !23 ; 2 uses
  %.not.i = icmp eq i32 %i.cz, 1
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = load i32, ptr %i.dk, align 4, !tbaa !23
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %.thread.i
  %i.dq = phi i32 [ %i.dj, %.thread.i ], [ %i.do, %bb.w ]
  %i.dr = icmp sgt i32 %i.cz, -1
  %i.ds = zext i1 %i.dr to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.dt = phi i32 [ %i.do, %bb.x ], [ %i.dq, %bb.y ]
  %i.du = phi i32 [ %i.dp, %bb.x ], [ %i.ds, %bb.y ]
  %i.dv = icmp ne i32 %i.dt, 1
  %i.dw = icmp ne i32 %i.du, 1
  %.not6.i = select i1 %i.dv, i1 true, i1 %i.dw
  br i1 %.not6.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dx = or i32 %.126.i.i, 32768
  store i32 %i.dx, ptr %0, align 8, !tbaa !126
  br label %bb.ad

bb.ab:                                            ; preds = %bb.k
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.s
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, %bb.ac, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn20.pn = phi { ptr, i32 } [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dy, %bb.ab ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31 ], [ %i.dz, %bb.ac ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #24
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z, %bb.aa
  ret void

bb.ae:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn20.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat8pop_backEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 4         ; 5 uses
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.cv::Mat", align 16          ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 3 uses
  %i.c = sext i32 %i.b to i64
  %.not = icmp ugt i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.64, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv3Mat8pop_backEm, ptr noundef nonnull @.str.10, i32 noundef 1433) #25
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
  %i.f = load ptr, ptr %4, align 8, !tbaa !14     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !123  ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv3Mat8pop_backEm, ptr noundef nonnull @.str.10, i32 noundef 1434) #25
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.l:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %6, align 8, !tbaa !14     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.l
  %i.s = load i64, ptr %i.q, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.k
  %.pn12 = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.o, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.v

bb.m:                                             ; preds = %bb.g
  %i.u = load i32, ptr %0, align 8, !tbaa !126
  %i.v = and i32 %i.u, 32768
  %.not19 = icmp eq i32 %i.v, 0
  br i1 %.not19, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.w = trunc i64 %1 to i32
  %i.x = sub nsw i32 %i.b, %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !178
  store i32 0, ptr %2, align 4, !tbaa !163, !noalias !178
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !181, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !178
  store i64 9223372034707292160, ptr %3, align 8, !noalias !178
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !178
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = load <4 x i32>, ptr %8, align 16, !tbaa !23
  store <4 x i32> %i.z, ptr %0, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 76
  %i.af = load <4 x i32>, ptr %i.ac, align 8, !tbaa !16
  store <4 x i32> %i.af, ptr %i.ad, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load <4 x i32>, ptr %i.ag, align 8, !tbaa !23
  store <4 x i32> %i.ai, ptr %i.ah, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load <4 x i32>, ptr %i.aj, align 8, !tbaa !23
  store <4 x i32> %i.al, ptr %i.ak, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.an = load i32, ptr %i.am, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 16 dereferenceable(80) %i.ap, i64 80, i1 false), !tbaa.struct !147
  %i.ar = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !111
  store <2 x ptr> %i.ar, ptr %i.ab, align 8, !tbaa !111
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !tbaa !111
  store <2 x ptr> %i.au, ptr %i.at, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !146
  store <2 x ptr> %i.ax, ptr %i.aw, align 8, !tbaa !146
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %8, align 16, !tbaa !23
  store i32 -1, ptr %i.ac, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ae, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ap, i8 0, i64 80, i1 false), !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i8 0, i64 48, i1 false)
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.v

bb.q:                                             ; preds = %bb.m
  %i.az = trunc i64 %1 to i32
  %i.ba = sub nsw i32 %i.b, %i.az                 ; 3 uses
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !23
  switch i32 %i.l, label %bb.t [
    i32 2, label %bb.r
    i32 1, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !129
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !128
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !136
  %i.bh = mul i64 %1, %i.be
  %i.bi = sub i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !136
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  ret void

bb.v:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %i.ay, %bb.p ], [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat10push_back_EPKv(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 11 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !126    ; 2 uses
  %i.e = and i32 %i.d, 32768
  %.not18 = icmp eq i32 %i.e, 0
  br i1 %.not18, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135
  %i.m = icmp ugt ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = add nsw i64 %i.c, 1
  %i.o = mul nsw i64 %i.c, 3
  %i.p = add nsw i64 %i.o, 1
  %i.q = lshr i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.q)
  tail call void @_ZN2cv3Mat7reserveEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.speculated)
  %.pre = load i32, ptr %0, align 8, !tbaa !126
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre22 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i64 [ %.pre22, %bb.c ], [ %i.i, %bb.b ]
  %i.s = phi i32 [ %.pre, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.t = lshr i32 %i.s, 5
  %i.u = and i32 %i.t, 127
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = shl i32 %i.s, 2
  %i.x = and i32 %i.w, 124
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i64 1275511473185297, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 15
  %i.ac = mul nuw nsw i32 %i.ab, %i.v
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !133
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ah = mul i64 %i.r, %i.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %1, i64 %i.ad, i1 false)
  %i.aj = add i32 %i.b, 1                         ; 6 uses
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !123 ; 4 uses
  switch i32 %i.al, label %bb.e [
    i32 2, label %.thread
    i32 1, label %.thread23
  ]

.thread:                                          ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.aj, ptr %i.am, align 8, !tbaa !129
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !136
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !136
  %i.ar = sext i32 %i.aj to i64
  br label %.lr.ph.preheader

.thread23:                                        ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aj, ptr %i.as, align 4, !tbaa !128
  %i.at = load i64, ptr %i.ag, align 8, !tbaa !12 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !136
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !136
  %i.ax = sext i32 %i.aj to i64
  br label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.ay = load i64, ptr %i.ag, align 8, !tbaa !12 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !136
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !136
  %i.bc = sext i32 %i.aj to i64                   ; 2 uses
  %i.bd = icmp sgt i32 %i.al, 1
  br i1 %i.bd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.thread, %bb.e
  %i.be = phi i64 [ %i.ar, %.thread ], [ %i.bc, %bb.e ] ; 2 uses
  %i.bf = phi i64 [ %i.an, %.thread ], [ %i.ay, %bb.e ] ; 2 uses
  %wide.trip.count = zext nneg i32 %i.al to i64
  %i.bg = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.bg, 7                    ; 3 uses
  %i.bh = add i32 %i.al, -2
  %i.bi = icmp ult i32 %i.bh, 7
  br i1 %i.bi, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bg, -8
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.01319.epil.init = phi i64 [ %i.be, %.lr.ph.preheader ], [ %i.dc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.01319.epil = phi i64 [ %.01319.epil.init, %.lr.ph.epil.preheader ], [ %i.bm, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !23
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul i64 %.01319.epil, %i.bl             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !182

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.thread23, %bb.e
  %i.bn = phi i64 [ %i.ay, %bb.e ], [ %i.at, %.thread23 ], [ %i.bf, %.lr.ph.epil ], [ %i.bf, %._crit_edge.loopexit.unr-lcssa ]
  %.013.lcssa = phi i64 [ %i.bc, %bb.e ], [ %i.ax, %.thread23 ], [ %i.dc, %._crit_edge.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph.epil ]
  %i.bo = icmp ule i64 %i.bn, %i.ad
  %i.bp = add i64 %.013.lcssa, 2147483648
  %.not = icmp ult i64 %i.bp, 4294967296
  %or.cond = select i1 %i.bo, i1 %.not, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %.01319 = phi i64 [ %i.be, %.lr.ph.preheader.new ], [ %i.dc, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !23
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul i64 %.01319, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !23
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !23
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !23
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !23
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul i64 %i.ci, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !23
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul i64 %i.cn, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !23
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !23
  %i.db = sext i32 %i.da to i64
  %i.dc = mul i64 %i.cx, %i.db                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !183

bb.f:                                             ; preds = %._crit_edge
  %i.dd = load i32, ptr %0, align 8, !tbaa !126
  %i.de = and i32 %i.dd, -16385
  store i32 %i.de, ptr %0, align 8, !tbaa !126
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat7reserveEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 4         ; 5 uses
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"struct.cv::MatShape", align 4     ; 8 uses
  %7 = alloca %"class.cv::Mat", align 16          ; 19 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = trunc i64 %1 to i32                      ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv3Mat7reserveEm, ptr noundef nonnull @.str.10, i32 noundef 1476) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !14     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !16
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.aj

bb.g:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !126
  %i.k = and i32 %i.j, 32768
  %.not49 = icmp eq i32 %i.k, 0
  br i1 %.not49, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.p = mul i64 %i.m, %1
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !135
  %.not29 = icmp ugt ptr %i.q, %i.s
  br i1 %.not29, label %bb.j, label %bb.ah

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23   ; 7 uses
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %.not30 = icmp ugt i64 %1, %i.v
  br i1 %.not30, label %bb.k, label %bb.ah

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %6, ptr noundef nonnull align 4 dereferenceable(52) %i.w)
  %i.x = load i32, ptr %0, align 8, !tbaa !126    ; 3 uses
  %i.y = lshr i32 %i.x, 5
  %i.z = and i32 %i.y, 127
  %i.aa = add nuw nsw i32 %i.z, 1
  %i.ab = shl i32 %i.x, 2
  %i.ac = and i32 %i.ab, 124
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = lshr i64 1275511473185297, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 15
  %i.ah = mul nuw nsw i32 %i.ag, %i.aa            ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = load i32, ptr %6, align 4, !tbaa !23    ; 3 uses
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.aj, i32 1) ; 2 uses
  store i32 %.sroa.speculated, ptr %6, align 4, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !123 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 1
  %i.an = icmp eq i32 %i.u, 0
  %or.cond = and i1 %i.an, %i.am
  br i1 %or.cond, label %bb.l, label %.lr.ph.i

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !12
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.m, label %.lr.ph.i

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !23
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.al, 2
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ax = phi i64 [ %i.aw, %bb.n ], [ %i.ai, %bb.m ]
  %i.ay = mul i64 %i.ax, %i.at
  store i64 %i.ay, ptr %i.ao, align 8, !tbaa !12
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.l, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 21 uses
  store i32 %i.a, ptr %i.az, align 4, !tbaa !23
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.ba = icmp slt i32 %i.aj, 8
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.p ] ; 9 uses
  %.068.i = phi i64 [ 1, %.lr.ph.i.new ], [ %i.cn, %bb.p ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.p ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul i64 %.068.i, %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !23
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul i64 %i.be, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !23
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul i64 %i.bj, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !23
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul i64 %i.bo, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !23
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !23
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !23
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !23
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul i64 %i.ci, %i.cm                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa, label %bb.p, !llvm.loop !50

_ZNK2cv8MatShape5totalEv.exit.unr-lcssa:          ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8MatShape5totalEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa ]
  %.068.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %i.cn, %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod63)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.q ] ; 2 uses
  %.068.i.epil = phi i64 [ %.068.i.epil.init, %.epil.preheader ], [ %i.cr, %bb.q ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i.epil
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !23
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul i64 %.068.i.epil, %i.cq             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv8MatShape5totalEv.exit, label %bb.q, !llvm.loop !184

_ZNK2cv8MatShape5totalEv.exit:                    ; preds = %bb.q, %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa
  %.lcssa61 = phi i64 [ %i.cn, %_ZNK2cv8MatShape5totalEv.exit.unr-lcssa ], [ %i.cr, %bb.q ]
  %i.cs = mul i64 %.lcssa61, %i.ai
  %i.ct = icmp ult i64 %i.cs, 64
  br i1 %i.ct, label %.lr.ph.i39, label %bb.t

.lr.ph.i39:                                       ; preds = %_ZNK2cv8MatShape5totalEv.exit
  store i32 1, ptr %i.az, align 4, !tbaa !23
  %xtraiter65 = and i64 %wide.trip.count.i, 7     ; 3 uses
  %i.cu = icmp slt i32 %i.aj, 8
  br i1 %i.cu, label %.epil.preheader64, label %.lr.ph.i39.new

.lr.ph.i39.new:                                   ; preds = %.lr.ph.i39
  %unroll_iter70 = and i64 %wide.trip.count.i, 2147483640
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i39.new
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i39.new ], [ %indvars.iv.next.i43.7, %bb.r ] ; 9 uses
  %.068.i42 = phi i64 [ 1, %.lr.ph.i39.new ], [ %i.eh, %bb.r ]
  %niter71 = phi i64 [ 0, %.lr.ph.i39.new ], [ %niter71.next.7, %bb.r ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !23
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %.068.i42, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !23
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul i64 %i.cy, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !23
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul i64 %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !23
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul i64 %i.di, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !23
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul i64 %i.dn, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !23
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %i.ds, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !23
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul i64 %i.dx, %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 28
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !23
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul i64 %i.ec, %i.eg                    ; 3 uses
  %indvars.iv.next.i43.7 = add nuw nsw i64 %indvars.iv.i41, 8 ; 2 uses
  %niter71.next.7 = add i64 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i64 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa, label %bb.r, !llvm.loop !50

_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa:        ; preds = %bb.r
  %lcmp.mod67.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod67.not, label %_ZNK2cv8MatShape5totalEv.exit46, label %.epil.preheader64

.epil.preheader64:                                ; preds = %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa, %.lr.ph.i39
  %indvars.iv.i41.epil.init = phi i64 [ 0, %.lr.ph.i39 ], [ %indvars.iv.next.i43.7, %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa ]
  %.068.i42.epil.init = phi i64 [ 1, %.lr.ph.i39 ], [ %i.eh, %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa ]
  %lcmp.mod69 = icmp ne i64 %xtraiter65, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader64
  %indvars.iv.i41.epil = phi i64 [ %indvars.iv.i41.epil.init, %.epil.preheader64 ], [ %indvars.iv.next.i43.epil, %bb.s ] ; 2 uses
  %.068.i42.epil = phi i64 [ %.068.i42.epil.init, %.epil.preheader64 ], [ %i.el, %bb.s ]
  %epil.iter66 = phi i64 [ 0, %.epil.preheader64 ], [ %epil.iter66.next, %bb.s ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i41.epil
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !23
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul i64 %.068.i42.epil, %i.ek           ; 2 uses
  %indvars.iv.next.i43.epil = add nuw nsw i64 %indvars.iv.i41.epil, 1
  %epil.iter66.next = add i64 %epil.iter66, 1     ; 2 uses
  %epil.iter66.cmp.not = icmp eq i64 %epil.iter66.next, %xtraiter65
  br i1 %epil.iter66.cmp.not, label %_ZNK2cv8MatShape5totalEv.exit46, label %bb.s, !llvm.loop !185

_ZNK2cv8MatShape5totalEv.exit46:                  ; preds = %bb.s, %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa
  %.lcssa = phi i64 [ %i.eh, %_ZNK2cv8MatShape5totalEv.exit46.unr-lcssa ], [ %i.el, %bb.s ]
  %i.em = udiv i64 64, %.lcssa
  %.lhs.trunc = trunc nuw nsw i64 %i.em to i16
  %.rhs.trunc = trunc nuw nsw i32 %i.ah to i16
  %i.en = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.eo = zext nneg i16 %i.en to i32
  store i32 %i.eo, ptr %i.az, align 4, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %_ZNK2cv8MatShape5totalEv.exit46, %_ZNK2cv8MatShape5totalEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ep = and i32 %i.x, 4095
  call void @_ZN2cv3MatC1ERKNS_8MatShapeEi(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(52) %6, i32 noundef %i.ep)
  %i.eq = icmp sgt i32 %i.u, 0
  br i1 %i.eq, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !186
  store i32 0, ptr %2, align 4, !tbaa !163, !noalias !186
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.u, ptr %i.er, align 4, !tbaa !181, !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !186
  store i64 9223372034707292160, ptr %3, align 8, !noalias !186
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !186
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.et, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !154
  store ptr %8, ptr %i.es, align 8, !tbaa !157
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn31.pn = phi { ptr, i32 } [ %i.ev, %bb.y ], [ %i.eu, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ai

bb.aa:                                            ; preds = %bb.w, %bb.t
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 16, !tbaa !132 ; 2 uses
  %.not18.i = icmp eq ptr %i.ex, null
  br i1 %.not18.i, label %.loopexit.loopexit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.ez = atomicrmw add ptr %i.ey, i32 1 acq_rel, align 4 ; 0 uses
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ab, %bb.aa
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %.loopexit.loopexit.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.fb = load <4 x i32>, ptr %7, align 16, !tbaa !23
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !123
  store <4 x i32> %i.fb, ptr %0, align 8, !tbaa !23
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.fe = load <2 x i32>, ptr %i.fd, align 8, !tbaa !16
  store <2 x i32> %i.fe, ptr %i.w, align 8, !tbaa !16
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.fg = load i32, ptr %i.ff, align 16, !tbaa !22
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !22
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fk = load <4 x i32>, ptr %i.fi, align 8, !tbaa !23
  store <4 x i32> %i.fk, ptr %i.fj, align 8, !tbaa !23
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fn = load <4 x i32>, ptr %i.fl, align 8, !tbaa !23
  store <4 x i32> %i.fn, ptr %i.fm, align 8, !tbaa !23
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !23
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !23
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fs, ptr noundef nonnull readonly align 16 dereferenceable(80) %i.fr, i64 80, i1 false), !tbaa.struct !147
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !133 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !133
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fz = load <2 x ptr>, ptr %i.fw, align 16, !tbaa !111
  store <2 x ptr> %i.fz, ptr %i.fx, align 8, !tbaa !111
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gc = load <2 x ptr>, ptr %i.ga, align 16, !tbaa !146
  store <2 x ptr> %i.gc, ptr %i.gb, align 8, !tbaa !146
  %i.gd = load ptr, ptr %i.ew, align 16, !tbaa !132
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !132
  store i32 %i.u, ptr %i.t, align 4, !tbaa !23
  switch i32 %i.fc, label %bb.ag [
    i32 2, label %bb.ad
    i32 1, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.u, ptr %i.gf, align 8, !tbaa !129
  br label %bb.ag

bb.ae:                                            ; preds = %.loopexit.loopexit.i.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.af:                                            ; preds = %bb.ac
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.u, ptr %i.gh, align 4, !tbaa !128
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af, %bb.ad
  %i.gi = load i64, ptr %i.fs, align 8, !tbaa !12
  %i.gj = mul i64 %i.gi, %i.v
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.gj
  store ptr %i.gk, ptr %i.fy, align 8, !tbaa !136
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.j, %bb.i
  ret void

bb.ai:                                            ; preds = %bb.ae, %bb.z
  %.pn34 = phi { ptr, i32 } [ %i.gg, %bb.ae ], [ %.pn31.pn, %bb.z ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.ai ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat13reserveBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !126    ; 4 uses
  %i.d = and i32 %i.c, 32768
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !136
  %.not = icmp ugt ptr %i.g, %i.i
  br i1 %.not, label %bb.d, label %_ZN2cv3Mat6createEiii.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = lshr i32 %i.c, 5
  %i.k = and i32 %i.j, 127
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = shl i32 %i.c, 2
  %i.n = and i32 %i.m, 124
  %i.o = zext nneg i32 %i.n to i64
  %i.p = lshr i64 1275511473185297, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 15
  %i.s = mul nuw nsw i32 %i.r, %i.l
  %i.t = zext nneg i32 %i.s to i64
  %i.u = and i32 %i.c, 4095
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %i.u, %bb.d ]   ; 2 uses
  %.0 = phi i64 [ 1, %bb.a ], [ %i.t, %bb.d ]
  %i.v = add i64 %1, -1
  %i.w = udiv i64 %i.v, %.0                       ; 2 uses
  %i.x = add i64 %i.w, 1                          ; 5 uses
  %i.y = icmp ult i64 %i.x, 4611686014132420610
  br i1 %i.y, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv3Mat13reserveBufferEm, ptr noundef nonnull @.str.10, i32 noundef 1530) #25
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.z

bb.i:                                             ; preds = %bb.e
  %i.af = icmp samesign ugt i64 %i.x, 2147483647
  br i1 %i.af, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp samesign ugt i64 %i.x, 2199023254528
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp samesign ugt i64 %i.x, 2251799812636672
  %i.ai = icmp samesign ugt i64 %i.x, 2305843008139952128
  %i.aj = select i1 %i.ai, i32 2147483647, i32 1073741824
  %i.ak = select i1 %i.ah, i32 %i.aj, i32 1048576
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %i.al = phi i32 [ 1024, %bb.j ], [ %i.ak, %bb.k ], [ 1, %bb.i ] ; 3 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = udiv i64 %i.w, %i.am
  %i.ao = trunc i64 %i.an to i32
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !123
  %i.as = icmp slt i32 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i32, ptr %i.at, align 8
  %i.av = icmp eq i32 %i.au, %i.al
  %or.cond.i = select i1 %i.as, i1 %i.av, i1 false
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, %i.ap
  %or.cond11.i = select i1 %or.cond.i, i1 %i.ay, i1 false
  br i1 %or.cond11.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = load i32, ptr %0, align 8, !tbaa !126
  %i.ba = and i32 %i.az, 4095
  %i.bb = icmp ne i32 %i.ba, %.017
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %.not.i = icmp eq ptr %i.bd, null
  %or.cond13.i = select i1 %i.bb, i1 true, i1 %.not.i
  br i1 %or.cond13.i, label %bb.n, label %_ZN2cv3Mat6createEiii.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.al, ptr %i.a, align 4, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ap, ptr %i.be, align 4, !tbaa !23
  call void @_ZN2cv3Mat6createEiPKii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef %.017)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN2cv3Mat6createEiii.exit

_ZN2cv3Mat6createEiii.exit:                       ; preds = %bb.n, %bb.m, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %i.c = trunc i64 %1 to i32                      ; 6 uses
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %i.c, -1
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv8MatShape6resizeEmi, ptr noundef nonnull @.str.10, i32 noundef 1547) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.b
  %i.l = load i32, ptr %0, align 8, !tbaa !126
  %i.m = and i32 %i.l, 32768
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load i64, ptr %i.p, align 8, !tbaa !12
  %i.r = mul i64 %i.q, %1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135
  %i.v = icmp ugt ptr %i.s, %i.u
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN2cv3Mat7reserveEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 %i.c, ptr %i.a, align 4, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !123
  switch i32 %i.x, label %bb.l [
    i32 2, label %bb.j
    i32 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.y, align 8, !tbaa !129
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %i.z, align 4, !tbaa !128
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %i.aa = sub nsw i32 %i.c, %i.b
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !12
  %i.ae = mul nsw i64 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !136
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.ae
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !136
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat6resizeEmRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Range", align 4         ; 5 uses
  %4 = alloca %"class.cv::Range", align 8         ; 4 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  tail call void @_ZN2cv3Mat6resizeEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %i.d = icmp sgt i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !189
  store i32 %i.b, ptr %3, align 4, !tbaa !163, !noalias !189
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.c, ptr %i.e, align 4, !tbaa !181, !noalias !189
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !189
  store i64 9223372034707292160, ptr %4, align 8, !noalias !189
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !189
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !189
  %i.f = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 4         ; 5 uses
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::Mat", align 16          ; 19 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 7 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23   ; 7 uses
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 11 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !23   ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = icmp eq i32 %i.g, 0
  br i1 %i.i, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %0, %1
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %1)
  invoke void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bc

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !133
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !192
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.o, align 8, !noalias !192
  store i32 33619968, ptr %6, align 8, !tbaa !154, !noalias !192
  store ptr %8, ptr %i.n, align 8, !tbaa !157, !noalias !192
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNK2cv3Mat5cloneEv.exit unwind label %bb.h

common.resume:                                    ; preds = %bb.e, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.k, %bb.e ], [ %i.an, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.hl, %bb.bb ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !192
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  br label %common.resume

_ZNK2cv3Mat5cloneEv.exit:                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !192
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNK2cv3Mat5cloneEv.exit
  %i.q = load <4 x i32>, ptr %8, align 16, !tbaa !23
  store <4 x i32> %i.q, ptr %0, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 76
  %i.u = load <4 x i32>, ptr %i.s, align 8, !tbaa !16
  store <4 x i32> %i.u, ptr %i.a, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load <4 x i32>, ptr %i.v, align 8, !tbaa !23
  store <4 x i32> %i.x, ptr %i.w, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load <4 x i32>, ptr %i.y, align 8, !tbaa !23
  store <4 x i32> %i.aa, ptr %i.z, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 16 dereferenceable(80) %i.ae, i64 80, i1 false), !tbaa.struct !147
  %i.ag = load <2 x ptr>, ptr %i.r, align 8, !tbaa !111
  store <2 x ptr> %i.ag, ptr %i.l, align 8, !tbaa !111
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !111
  store <2 x ptr> %i.aj, ptr %i.ai, align 8, !tbaa !111
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !146
  store <2 x ptr> %i.am, ptr %i.al, align 8, !tbaa !146
  store <4 x i32> <i32 1124007936, i32 0, i32 0, i32 0>, ptr %8, align 16, !tbaa !23
  store i32 -1, ptr %i.s, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.t, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ae, i8 0, i64 80, i1 false), !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bc

bb.j:                                             ; preds = %_ZNK2cv3Mat5cloneEv.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

bb.k:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !123 ; 4 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShape9push_backEi, ptr noundef nonnull @.str.10, i32 noundef 1592) #25
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.as, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

bb.q:                                             ; preds = %bb.k
  store i32 %i.g, ptr %i.b, align 4, !tbaa !23
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !18  ; 3 uses
  %i.az = load i32, ptr %i.e, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.ay, %i.az
  br i1 %.not.i, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !21 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21 ; 3 uses
  %.not22.i = icmp eq i32 %i.bb, %i.bd
  %.not23.i = icmp eq i32 %i.bb, 0
  %or.cond.i = or i1 %.not23.i, %.not22.i
  %.not24.i = icmp eq i32 %i.bd, 0
  %or.cond27.i = or i1 %.not24.i, %or.cond.i
  br i1 %or.cond27.i, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.be = icmp eq i32 %i.bb, 7
  %i.bf = icmp eq i32 %i.bd, 7
  %or.cond29.i = and i1 %i.be, %i.bf
  br i1 %or.cond29.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !22
  %.not25.i = icmp eq i32 %i.bh, %i.bj
  br i1 %.not25.i, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bk = icmp slt i32 %i.ay, 1
  br i1 %i.bk, label %.loopexit79, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %wide.trip.count.i = zext nneg i32 %i.ay to i64
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit79, label %bb.w, !llvm.loop !24

bb.w:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !23
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !23
  %.not26.i = icmp eq i32 %i.bm, %i.bo
  br i1 %.not26.i, label %bb.v, label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.t, %bb.q, %bb.r
  store i32 %i.c, ptr %i.b, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %.loopexit
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -209, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShape9push_backEi, ptr noundef nonnull @.str.10, i32 noundef 1598) #25
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %.loopexit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.aa:                                            ; preds = %bb.x
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.aa
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !16
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.z
  %.pn53 = phi { ptr, i32 } [ %i.bp, %bb.z ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %i.bq, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %common.resume

.loopexit79:                                      ; preds = %bb.v, %bb.u
  store i32 %i.c, ptr %i.b, align 4, !tbaa !23
  %i.bw = load i32, ptr %0, align 8, !tbaa !126   ; 4 uses
  %i.bx = load i32, ptr %1, align 8, !tbaa !126
  %i.by = xor i32 %i.bx, %i.bw
  %i.bz = and i32 %i.by, 4095
  %.not55 = icmp eq i32 %i.bz, 0
  br i1 %.not55, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %.loopexit79
end_hunk_2
begin_hunk_3_@_ZN2cv3Mat9push_backERKS0_:bb.a
  %.0 = phi i64 [ %i.db, %bb.al ], [ %i.dd, %bb.ak ] ; 3 uses
  %i.dg = and i32 %i.bw, 32768
  %.not76 = icmp eq i32 %i.dg, 0
  br i1 %.not76, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !136
  %i.dj = mul i64 %.0, %i.h
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !135
  %i.dn = icmp ugt ptr %i.dk, %i.dm
  br i1 %i.dn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.do = add nsw i64 %i.h, %i.d
  %i.dp = mul nsw i64 %i.d, 3
  %i.dq = add nsw i64 %i.dp, 1
  %i.dr = lshr i64 %i.dq, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %i.dr)
  tail call void @_ZN2cv3Mat7reserveEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.speculated)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !23
  %.pre80 = load i32, ptr %i.ao, align 4, !tbaa !123
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ds = phi i32 [ %.pre80, %bb.ao ], [ %i.ap, %bb.an ]
  %i.dt = phi i32 [ %.pre, %bb.ao ], [ %i.c, %bb.an ]
  %i.du = add nsw i32 %i.dt, %i.g                 ; 3 uses
  store i32 %i.du, ptr %i.b, align 4, !tbaa !23
  switch i32 %i.ds, label %bb.as [
    i32 2, label %bb.aq
    i32 1, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !129
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.du, ptr %i.dw, align 4, !tbaa !128
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.ar, %bb.aq
  %i.dx = mul i64 %.0, %i.h
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !136
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dx
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !136
  %i.eb = load i32, ptr %0, align 8, !tbaa !126
  %i.ec = and i32 %i.eb, 16384
  %.not77 = icmp eq i32 %i.ec, 0
  br i1 %.not77, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ed = load i32, ptr %1, align 8, !tbaa !126   ; 3 uses
  %i.ee = and i32 %i.ed, 16384
  %.not78 = icmp eq i32 %i.ee, 0
  br i1 %.not78, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ef = load ptr, ptr %i.l, align 8, !tbaa !133
  %i.eg = mul i64 %.0, %i.d
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !133
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !123 ; 4 uses
  %i.em = icmp slt i32 %i.el, 3
  br i1 %i.em, label %bb.av, label %.preheader.i

.preheader.i:                                     ; preds = %bb.au
  %i.en = load i32, ptr %i.e, align 8, !tbaa !18
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.en, i32 1)
  %i.eo = zext nneg i32 %i.el to i64              ; 2 uses
  %i.ep = add nsw i32 %i.el, -1
  %.not.not.i = icmp samesign ugt i32 %narrow.i.i, %i.ep
  br i1 %.not.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.aw

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.preheader.i
  %xtraiter = and i64 %i.eo, 7                    ; 3 uses
  %i.eq = icmp ult i32 %i.el, 8
  br i1 %i.eq, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.eo, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.av:                                            ; preds = %bb.au
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.es = load i32, ptr %i.er, align 8, !tbaa !129
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !128
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul nsw i64 %i.ew, %i.et
  br label %_ZNK2cv3Mat5totalEv.exit

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i69 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i70.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.gk, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !23
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul i64 %.069.i, %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !23
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul i64 %i.fb, %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !23
  %i.fk = sext i32 %i.fj to i64
  %i.fl = mul i64 %i.fg, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !23
  %i.fp = sext i32 %i.fo to i64
  %i.fq = mul i64 %i.fl, %i.fp
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !23
  %i.fu = sext i32 %i.ft to i64
  %i.fv = mul i64 %i.fq, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 20
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !23
  %i.fz = sext i32 %i.fy to i64
  %i.ga = mul i64 %i.fv, %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !23
  %i.ge = sext i32 %i.gd to i64
  %i.gf = mul i64 %i.ga, %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 28
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !23
  %i.gj = sext i32 %i.gi to i64
  %i.gk = mul i64 %i.gf, %i.gj                    ; 3 uses
  %indvars.iv.next.i70.7 = add nuw nsw i64 %indvars.iv.i69, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !141

bb.aw:                                            ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ay
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !16
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa:      ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i69.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i70.7, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.gk, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i69.epil = phi i64 [ %indvars.iv.next.i70.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i69.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.gu, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i69.epil
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !23
  %i.gt = sext i32 %i.gs to i64
  %i.gu = mul i64 %.069.i.epil, %i.gt             ; 2 uses
  %indvars.iv.next.i70.epil = add nuw nsw i64 %indvars.iv.i69.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !195

_ZNK2cv3Mat5totalEv.exit:                         ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.av
  %.07.i = phi i64 [ %i.ex, %bb.av ], [ %i.gk, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ], [ %i.gu, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.gv = lshr i32 %i.ed, 5
  %i.gw = and i32 %i.gv, 127
  %i.gx = add nuw nsw i32 %i.gw, 1
  %i.gy = shl i32 %i.ed, 2
  %i.gz = and i32 %i.gy, 124
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = lshr i64 1275511473185297, %i.ha
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = and i32 %i.hc, 15
  %i.he = mul nuw nsw i32 %i.hd, %i.gx
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = mul i64 %.07.i, %i.hf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr align 1 %i.ej, i64 %i.hg, i1 false)
  br label %bb.bc

bb.az:                                            ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.hh = add i32 %i.g, %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !196
  store i32 %i.c, ptr %2, align 4, !tbaa !163, !noalias !196
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !181, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !196
  store i64 9223372034707292160, ptr %3, align 8, !noalias !196
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.hj = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.hk, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !154
  store ptr %15, ptr %i.hj, align 8, !tbaa !157
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %common.resume

bb.bc:                                            ; preds = %_ZNK2cv3Mat5totalEv.exit, %bb.ba, %bb.a, %bb.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !123
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12   ; 5 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE, ptr noundef nonnull @.str.10, i32 noundef 1633) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.b
  %i.l = load i32, ptr %0, align 8, !tbaa !126    ; 2 uses
  %i.m = lshr i32 %i.l, 5
  %i.n = and i32 %i.m, 127
  %i.o = add nuw nsw i32 %i.n, 1
  %i.p = shl i32 %i.l, 2
  %i.q = and i32 %i.p, 124
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 1275511473185297, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 15
  %i.v = mul nuw nsw i32 %i.u, %i.o
  %i.w = zext nneg i32 %i.v to i64                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !133  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !134 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !136
  %i.ae = icmp eq ptr %i.y, %i.aa
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.af, %i.ab                    ; 2 uses
  %i.ah = udiv i64 %i.ag, %i.e                    ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %sext = shl i64 %i.ah, 32
  %i.aj = ashr exact i64 %sext, 32
  %i.ak = mul i64 %i.aj, %i.e
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = udiv i64 %i.al, %i.w
  %i.an = trunc i64 %i.am to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i32 [ %i.ai, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %storemerge = phi i32 [ %i.an, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sink, ptr %i.ao, align 4, !tbaa !199
  store i32 %storemerge, ptr %2, align 4, !tbaa !201
  %i.ap = ptrtoint ptr %i.ad to i64
  %i.aq = sub i64 %i.ap, %i.ab                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !128
  %i.at = add nsw i32 %i.as, %storemerge          ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.au, %i.w
  %i.aw = sub i64 %i.aq, %i.av
  %i.ax = udiv i64 %i.aw, %i.e
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add i32 %i.ay, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !129
  %i.bd = add nsw i32 %i.bc, %.sink
  %.sroa.speculated32 = tail call i32 @llvm.smax.i32(i32 %i.az, i32 %i.bd) ; 2 uses
  store i32 %.sroa.speculated32, ptr %i.ba, align 4, !tbaa !202
  %i.be = add nsw i32 %.sroa.speculated32, -1
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.e, %i.bf
  %i.bh = sub i64 %i.aq, %i.bg
  %i.bi = udiv i64 %i.bh, %i.w
  %i.bj = trunc i64 %i.bi to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.at, i32 %i.bj)
  store i32 %.sroa.speculated, ptr %1, align 4, !tbaa !203
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat9adjustROIEiiii(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(208) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::Size_", align 4         ; 6 uses
  %8 = alloca %"class.cv::Point_", align 4        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !123
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv3Mat9adjustROIEiiii, ptr noundef nonnull @.str.10, i32 noundef 1654) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %5, align 8, !tbaa !14     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 0, ptr %7, align 4, !tbaa !203
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store i32 0, ptr %8, align 4, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store i32 0, ptr %i.m, align 4, !tbaa !199
  %i.n = load i32, ptr %0, align 8, !tbaa !126    ; 2 uses
  %i.o = lshr i32 %i.n, 5
  %i.p = and i32 %i.o, 127
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = shl i32 %i.n, 2
  %i.s = and i32 %i.r, 124
  %i.t = zext nneg i32 %i.s to i64
  %i.u = lshr i64 1275511473185297, %i.t
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 15
  %i.x = mul nuw nsw i32 %i.w, %i.q
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  call void @_ZNK2cv3Mat9locateROIERNS_5Size_IiEERNS_6Point_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8)
  %i.z = load i32, ptr %8, align 4, !tbaa !201    ; 4 uses
  %i.aa = sub nsw i32 %i.z, %3
  %i.ab = load i32, ptr %7, align 4, !tbaa !23    ; 2 uses
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.ac) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !128
  %i.ag = add i32 %i.z, %4
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.ah)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 0) ; 2 uses
  %.047 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %.sroa.speculated) ; 4 uses
  %.046 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 %.sroa.speculated) ; 2 uses
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !123 ; 5 uses
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i32 %.047, %i.z
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.am, %i.y
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !133
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.an
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !133
  %i.ar = sub nsw i32 %.046, %.047                ; 2 uses
  store i32 %i.ar, ptr %i.ae, align 4, !tbaa !128
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !23
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.at = load i32, ptr %i.l, align 4, !tbaa !23  ; 2 uses
  %i.au = load i32, ptr %i.m, align 4, !tbaa !199 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !129
  %i.ax = add i32 %i.au, %2
  %i.ay = add i32 %i.ax, %i.aw
  %i.az = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.ay)
  %.sroa.speculated34 = tail call i32 @llvm.smax.i32(i32 %i.az, i32 0) ; 2 uses
  %i.ba = sub nsw i32 %i.au, %1
  %i.bb = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 0)
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.bb) ; 2 uses
  %spec.select49 = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %.sroa.speculated34) ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 %.sroa.speculated34)
  %i.bd = sub nsw i32 %spec.select49, %i.au
  %i.be = sext i32 %i.bd to i64
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !12
  %i.bg = mul nsw i64 %i.bf, %i.be
  %i.bh = sub nsw i32 %.047, %i.z
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul nsw i64 %i.bi, %i.y
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !133
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bg
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bj
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !133
  %i.bo = sub nsw i32 %spec.select, %spec.select49 ; 2 uses
  store i32 %i.bo, ptr %i.av, align 8, !tbaa !129
  %i.bp = sub nsw i32 %.046, %.047                ; 2 uses
  store i32 %i.bp, ptr %i.ae, align 4, !tbaa !128
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.bp, ptr %i.br, align 8, !tbaa !23
  %i.bs = load i32, ptr %0, align 8, !tbaa !126   ; 3 uses
  %i.bt = icmp slt i32 %i.aj, 2
  br i1 %i.bt, label %bb.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.h
  %wide.trip.count.i.i = zext nneg i32 %i.aj to i64
  br label %.preheader.i.i

bb.i:                                             ; preds = %bb.h
  %i.bu = or i32 %i.bs, 16384
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

.preheader.i.i:                                   ; preds = %bb.j, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !23
  %i.bx = icmp sgt i32 %i.bw, 1
  br i1 %i.bx, label %.split.loop.exit.i.i, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.split.loop.exit48.i.i, label %.preheader.i.i, !llvm.loop !130

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i
  %i.by = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.split.loop.exit48.i.i

.split.loop.exit48.i.i:                           ; preds = %bb.j, %.split.loop.exit.i.i
  %storemerge.lcssa.i.i = phi i32 [ %i.by, %.split.loop.exit.i.i ], [ %i.aj, %bb.j ] ; 4 uses
  %i.bz = add nsw i32 %i.aj, -1                   ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.bz, i32 %storemerge.lcssa.i.i)
  %i.ca = sext i32 %.sroa.speculated.i.i to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !23
  %i.cd = sext i32 %i.cc to i64
  %i.ce = lshr i32 %i.bs, 5
  %i.cf = and i32 %i.ce, 127
  %i.cg = add nuw nsw i32 %i.cf, 1
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.cd, %i.ch                ; 2 uses
  %i.cj = icmp sgt i32 %i.bz, %storemerge.lcssa.i.i
  br i1 %i.cj, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.ck = zext nneg i32 %i.bz to i64
  %i.cl = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.ck, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.k ] ; 4 uses
  %.037.i.i = phi i64 [ %i.ci, %.lr.ph.preheader.i.i ], [ %i.cp, %bb.k ]
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %indvars.iv43.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !23
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = mul i64 %.037.i.i, %i.co                ; 3 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv43.i.i ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !12
  %i.cs = mul i64 %i.cr, %i.co
  %i.ct = getelementptr i8, ptr %i.cq, i64 -8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !12
  %i.cv = icmp ult i64 %i.cs, %i.cu
  br i1 %i.cv, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.cw = icmp sgt i64 %indvars.iv.next44.i.i, %i.cl
  br i1 %i.cw, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !131

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.cx = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.cy = icmp sge i32 %storemerge.lcssa.i.i, %i.cx
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.k, %._crit_edge.loopexit.split.loop.exit.i.i, %.split.loop.exit48.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.cy, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.k ]
  %.1.i.i = phi i64 [ %i.ci, %.split.loop.exit48.i.i ], [ %i.cp, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.cp, %bb.k ]
  %i.cz = add i64 %.1.i.i, 2147483648
  %i.da = icmp ult i64 %i.cz, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.da, i1 false
  %i.db = and i32 %i.bs, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.db
  br label %_ZN2cv3Mat20updateContinuityFlagEv.exit

_ZN2cv3Mat20updateContinuityFlagEv.exit:          ; preds = %bb.i, %._crit_edge.i.i
  %.126.i.i = phi i32 [ %i.bu, %bb.i ], [ %.025.i.i, %._crit_edge.i.i ]
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !126
  br label %bb.l

bb.l:                                             ; preds = %_ZN2cv3Mat20updateContinuityFlagEv.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 25 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !126
  %i.c = lshr i32 %i.b, 5
  %i.d = and i32 %i.c, 127
  %i.e = add nuw nsw i32 %i.d, 1                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.f = icmp eq i32 %2, 0
  %spec.select = select i1 %i.f, i32 %i.e, i32 %2 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !123  ; 6 uses
  %i.i = icmp sgt i32 %i.h, 2
  br i1 %i.i, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = add nsw i32 %i.h, -1                     ; 3 uses
  %i.m = load i32, ptr %i.k, align 8, !tbaa !18
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.m, i32 1)
  %i.n = icmp samesign ult i32 %i.l, %narrow.i
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  unreachable

bb.f:                                             ; preds = %.noexc
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %8, align 8, !tbaa !14     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

end_hunk_3
begin_hunk_4_@_ZNK2cv3Mat7reshapeEii:bb.a
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 97) #25
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc82
  unreachable

bb.q:                                             ; preds = %.noexc82
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79: ; preds = %bb.q
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i80: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 84
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.u ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !23
  %i.bn = mul nsw i32 %i.bm, %i.e
  %i.bo = sdiv i32 %i.bn, %spec.select
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !23
  call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %10) #24
  br label %bb.be

bb.s:                                             ; preds = %bb.b
  %i.bp = icmp sgt i32 %3, 0
  br i1 %i.bp, label %.preheader.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1698) #25
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.x:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %13, align 8, !tbaa !14   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.x
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !16
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.w
  %.pn71 = phi { ptr, i32 } [ %i.bq, %bb.w ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.br, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.body

.preheader.i:                                     ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %3, ptr %i.a, align 4, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !18
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.by, i32 1)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 9 uses
  %i.ca = zext nneg i32 %i.h to i64               ; 2 uses
  %i.cb = add nsw i32 %i.h, -1
  %.not.not.i = icmp samesign ugt i32 %narrow.i.i, %i.cb
  br i1 %.not.not.i, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %bb.y

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.preheader.i
  %xtraiter = and i64 %i.ca, 7                    ; 3 uses
  %i.cc = icmp ult i32 %i.h, 8
  br i1 %i.cc, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.preheader.new

_ZNK2cv8MatShapeixEm.exit.i.preheader.new:        ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %unroll_iter = and i64 %i.ca, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.dp, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !23
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul i64 %.069.i, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !23
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul i64 %i.cg, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !23
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul i64 %i.cl, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !23
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul i64 %i.cq, %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !23
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul i64 %i.cv, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !23
  %i.de = sext i32 %i.dd to i64
  %i.df = mul i64 %i.da, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !23
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul i64 %i.df, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !23
  %i.do = sext i32 %i.dn to i64
  %i.dp = mul i64 %i.dk, %i.do                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv3Mat5totalEv.exit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !141

bb.y:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc97 unwind label %bb.ac

.noexc97:                                         ; preds = %bb.y
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %.noexc97
  unreachable

bb.aa:                                            ; preds = %.noexc97
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aa
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !16
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body98

_ZNK2cv3Mat5totalEv.exit.unr-lcssa:               ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv3Mat5totalEv.exit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZNK2cv3Mat5totalEv.exit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.dp, %_ZNK2cv3Mat5totalEv.exit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod156)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.dz, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i.epil
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !23
  %i.dy = sext i32 %i.dx to i64
  %i.dz = mul i64 %.069.i.epil, %i.dy             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !204

_ZNK2cv3Mat5totalEv.exit:                         ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv3Mat5totalEv.exit.unr-lcssa
  %.lcssa = phi i64 [ %i.dp, %_ZNK2cv3Mat5totalEv.exit.unr-lcssa ], [ %i.dz, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.eb = zext nneg i32 %i.e to i64
  %i.ec = mul i64 %.lcssa, %i.eb
  %i.ed = zext nneg i32 %3 to i64
  %i.ee = udiv i64 %i.ec, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  store i32 %i.ef, ptr %i.ea, align 4, !tbaa !23
  invoke void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %spec.select, i32 noundef 2, ptr noundef nonnull %i.a)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZNK2cv3Mat5totalEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.be

bb.ac:                                            ; preds = %bb.y, %_ZNK2cv3Mat5totalEv.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body98

.body98:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.ac
  %eh.lpad-body99 = phi { ptr, i32 } [ %i.eg, %bb.ac ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.body

bb.ad:                                            ; preds = %bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !128 ; 2 uses
  %i.ej = mul nsw i32 %i.ei, %i.e                 ; 6 uses
  %i.ek = icmp sgt i32 %spec.select, %i.ej
  br i1 %i.ek, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = srem i32 %i.ej, %spec.select
  %i.em = icmp ne i32 %i.el, 0
  %i.en = icmp eq i32 %3, 0
  %or.cond = and i1 %i.en, %i.em
  br i1 %or.cond, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %.old1 = icmp eq i32 %3, 0
  br i1 %.old1, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !129
  %i.eq = mul nsw i32 %i.ep, %i.ej
  %i.er = sdiv i32 %i.eq, %spec.select
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %.052 = phi i32 [ %i.er, %bb.ag ], [ %3, %bb.ae ] ; 2 uses
  %.not = icmp eq i32 %.052, 0
  br i1 %.not, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.ah
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !129
  br label %bb.av

.thread:                                          ; preds = %bb.af, %bb.ah
  %.052130 = phi i32 [ %.052, %bb.ah ], [ %3, %bb.af ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !129 ; 2 uses
  %.not60 = icmp eq i32 %.052130, %i.et
  br i1 %.not60, label %bb.av, label %bb.ai

bb.ai:                                            ; preds = %.thread
  %i.eu = load i32, ptr %1, align 8, !tbaa !126   ; 2 uses
  %i.ev = and i32 %i.eu, 16384
  %.not131 = icmp eq i32 %i.ev, 0
  br i1 %.not131, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -13, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1713) #25
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.an:                                            ; preds = %bb.ak
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.an
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !16
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.am
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.am ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.ex, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.body

bb.ao:                                            ; preds = %bb.ai
  %i.fd = mul nsw i32 %i.et, %i.ej                ; 2 uses
  %i.fe = sdiv i32 %i.fd, %.052130                ; 3 uses
  %i.ff = mul nsw i32 %i.fe, %.052130
  %.not62 = icmp eq i32 %i.ff, %i.fd
  br i1 %.not62, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1719) #25
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.at:                                            ; preds = %bb.aq
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %17, align 8, !tbaa !14   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.at
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !16
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.as
  %.pn67 = phi { ptr, i32 } [ %i.fg, %bb.as ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.fh, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %.body

bb.au:                                            ; preds = %bb.ao
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.052130, ptr %i.fn, align 8, !tbaa !129
  %i.fo = getelementptr inbounds nuw i8, ptr %10, i64 84
  store i32 %.052130, ptr %i.fo, align 4, !tbaa !23
  %i.fp = sext i32 %i.fe to i64
  %i.fq = shl i32 %i.eu, 2
  %i.fr = and i32 %i.fq, 124
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = lshr i64 1275511473185297, %i.fs
  %i.fu = and i64 %i.ft, 15
  %i.fv = mul nsw i64 %i.fu, %i.fp
  br label %.sink.split

bb.av:                                            ; preds = %._crit_edge, %.thread
  %i.fw = phi i32 [ %.pre, %._crit_edge ], [ %.052130, %.thread ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.fw, ptr %i.fx, align 8, !tbaa !129
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 84
  store i32 %i.fw, ptr %i.fy, align 4, !tbaa !23
  %.not132 = icmp eq i32 %i.h, 2
  br i1 %.not132, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fz = load i32, ptr %1, align 8, !tbaa !126   ; 2 uses
  %i.ga = lshr i32 %i.fz, 5
  %i.gb = and i32 %i.ga, 127
  %i.gc = add nuw nsw i32 %i.gb, 1
  %i.gd = shl i32 %i.fz, 2
  %i.ge = and i32 %i.gd, 124
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = lshr i64 1275511473185297, %i.gf
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = and i32 %i.gh, 15
  %i.gj = mul i32 %i.gc, %i.ei
  %i.gk = mul i32 %i.gj, %i.gi
  %i.gl = sext i32 %i.gk to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.au, %bb.aw
  %.sink = phi i64 [ %i.gl, %bb.aw ], [ %i.fv, %bb.au ]
  %.0.ph = phi i32 [ %i.ej, %bb.aw ], [ %i.fe, %bb.au ]
end_hunk_4
begin_hunk_5_@_ZNK2cv3Mat7reshapeEiiPKi:bb.a
  %i.r = load i64, ptr %i.p, align 8, !tbaa !16
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn74 = phi { ptr, i32 } [ %i.m, %bb.l ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
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
  %i.x = icmp slt i32 %2, 129
  br i1 %i.x, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.77, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1759) #25
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.u:                                             ; preds = %bb.r
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.u
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.t
  %.pn76 = phi { ptr, i32 } [ %i.y, %bb.t ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.z, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

bb.v:                                             ; preds = %bb.p, %bb.o
  %.067 = phi i32 [ %i.w, %bb.o ], [ %2, %bb.p ]  ; 2 uses
  %i.af = icmp slt i32 %i.b, 3
  br i1 %i.af, label %bb.w, label %.preheader.i

.preheader.i:                                     ; preds = %bb.v
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !18
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 9 uses
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
  %i.an = load i32, ptr %i.am, align 8, !tbaa !129
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !128
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, %i.ao
  br label %_ZNK2cv3Mat5totalEv.exit

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.069.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %i.cf, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !23
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %.069.i, %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !23
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul i64 %i.aw, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !23
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !23
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !23
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !23
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.bq, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !23
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul i64 %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !23
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul i64 %i.ca, %i.ce                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !141

bb.x:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.z
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !16
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZN2cv10AutoBufferIiLm4EED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn84.pn, %_ZN2cv10AutoBufferIiLm4EED2Ev.exit106 ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.resume

_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa:      ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %indvars.iv.next.i.7, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %.069.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i.preheader ], [ %i.cf, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ] ; 2 uses
  %.069.i.epil = phi i64 [ %i.cp, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ %.069.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.epil
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !23
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul i64 %.069.i.epil, %i.co             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK2cv3Mat5totalEv.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !205

_ZNK2cv3Mat5totalEv.exit:                         ; preds = %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.w
  %.07.i = phi i64 [ %i.as, %bb.w ], [ %i.cf, %_ZNK2cv3Mat5totalEv.exit.loopexit.unr-lcssa ], [ %i.cp, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.cq = lshr i32 %i.g, 5
  %i.cr = and i32 %i.cq, 127
  %i.cs = add nuw nsw i32 %i.cr, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = mul i64 %.07.i, %i.ct                   ; 4 uses
  %i.cv = sext i32 %.067 to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.cw = zext i32 %3 to i64                      ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.cx, ptr %11, align 8, !tbaa !206
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not.i.i = icmp ugt i32 %3, 4
  store i64 %i.cw, ptr %i.cy, align 8, !tbaa !208
  br i1 %.not.i.i, label %bb.aa, label %_ZN2cv10AutoBufferIiLm4EEC2Em.exit

bb.aa:                                            ; preds = %_ZNK2cv3Mat5totalEv.exit
  %i.cz = shl nuw nsw i64 %i.cw, 2
  %i.da = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cz) #27 ; 2 uses
  store ptr %i.da, ptr %11, align 8, !tbaa !206
  br label %_ZN2cv10AutoBufferIiLm4EEC2Em.exit

_ZN2cv10AutoBufferIiLm4EEC2Em.exit:               ; preds = %_ZNK2cv3Mat5totalEv.exit, %bb.aa
  %i.db = phi ptr [ %i.cx, %_ZNK2cv3Mat5totalEv.exit ], [ %i.da, %bb.aa ]
  %i.dc = icmp sgt i32 %3, 0
  br i1 %i.dc, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferIiLm4EEC2Em.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 84
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.am
  %i.de = icmp sgt i32 %.1, -1
  br i1 %i.de, label %bb.an, label %._crit_edge.thread

bb.ab:                                            ; preds = %.lr.ph, %bb.am
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.am ] ; 6 uses
  %.052114 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.am ] ; 2 uses
  %.053113 = phi i64 [ %i.cv, %.lr.ph ], [ %.154, %bb.am ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !23 ; 4 uses
  %i.dh = icmp sgt i32 %i.dg, -1
  br i1 %i.dh, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.di = icmp eq i32 %i.dg, 0
  br i1 %i.di, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !123
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp slt i64 %indvars.iv, %i.dk
  br i1 %i.dl, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !23
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %.sink = phi i32 [ %i.dn, %bb.ae ], [ %i.dg, %bb.ad ], [ %i.dg, %bb.ac ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv
  store i32 %.sink, ptr %i.do, align 4, !tbaa !23
  %i.dp = sext i32 %.sink to i64
  %i.dq = mul i64 %.053113, %i.dp
  br label %bb.am

bb.ag:                                            ; preds = %bb.ab
  %i.dr = icmp sgt i32 %.052114, -1
  %i.ds = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.dr, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -201, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1778) #25
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

bb.al:                                            ; preds = %bb.ai
  %i.du = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dv = load ptr, ptr %12, align 8, !tbaa !14   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.al
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !16
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %bb.ak
  %.pn84 = phi { ptr, i32 } [ %i.dt, %bb.ak ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.du, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bm

bb.am:                                            ; preds = %bb.ag, %bb.af
  %.154 = phi i64 [ %i.dq, %bb.af ], [ %.053113, %bb.ag ] ; 4 uses
  %.1 = phi i32 [ %.052114, %bb.af ], [ %i.ds, %bb.ag ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cw
  br i1 %exitcond.not, label %._crit_edge, label %bb.ab, !llvm.loop !209

bb.an:                                            ; preds = %._crit_edge
  %i.ea = icmp eq i64 %.154, 0
  br i1 %i.ea, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.eb = icmp eq i64 %i.cu, 0
  br i1 %i.eb, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.79, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1785) #25
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.ap
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.at:                                            ; preds = %bb.aq
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load ptr, ptr %14, align 8, !tbaa !14   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.at
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !16
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.as
  %.pn80 = phi { ptr, i32 } [ %i.ec, %bb.as ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.ed, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.bm

bb.au:                                            ; preds = %bb.ao, %bb.an
  %.2 = phi i64 [ %.154, %bb.an ], [ 1, %bb.ao ]  ; 2 uses
  %i.ej = urem i64 %i.cu, %.2
  %i.ek = udiv i64 %i.cu, %.2
  %i.el = icmp eq i64 %i.ej, 0
  br i1 %i.el, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.80, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1788) #25
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

bb.az:                                            ; preds = %bb.aw
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %16, align 8, !tbaa !14   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.az
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !16
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.ay
  %.pn82 = phi { ptr, i32 } [ %i.em, %bb.ay ], [ %i.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %i.en, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.bm

bb.ba:                                            ; preds = %bb.au
  %i.et = trunc i64 %i.ek to i32
  %i.eu = zext nneg i32 %.1 to i64
  %i.ev = load ptr, ptr %11, align 8, !tbaa !206
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.eu
  store i32 %i.et, ptr %i.ew, align 4, !tbaa !23
  br label %bb.bh

bb.bb:                                            ; preds = %bb.bh
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

._crit_edge.thread:                               ; preds = %_ZN2cv10AutoBufferIiLm4EEC2Em.exit, %._crit_edge
  %.053.lcssa145 = phi i64 [ %.154, %._crit_edge ], [ %i.cv, %_ZN2cv10AutoBufferIiLm4EEC2Em.exit ]
  %.not = icmp eq i64 %.053.lcssa145, %i.cu
  br i1 %.not, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.81, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -209, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1791) #25
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bc
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.bg:                                            ; preds = %bb.bd
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %18, align 8, !tbaa !14   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.bg
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !16
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.bf
  %.pn78 = phi { ptr, i32 } [ %i.ey, %bb.bf ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.ez, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.bm

bb.bh:                                            ; preds = %._crit_edge.thread, %bb.ba
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.bi unwind label %bb.bb

bb.bi:                                            ; preds = %bb.bh
  %i.ff = load i32, ptr %0, align 8, !tbaa !126
  %i.fg = and i32 %i.ff, -4065
  %i.fh = shl i32 %.067, 5
  %i.fi = add i32 %i.fh, -32
  %i.fj = or i32 %i.fg, %i.fi
  store i32 %i.fj, ptr %0, align 8, !tbaa !126
  %i.fk = load ptr, ptr %11, align 8, !tbaa !206
  invoke void @_ZN2cv7setSizeERNS_3MatEiPKiPKmb(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %3, ptr noundef %i.fk, ptr noundef null, i1 noundef zeroext true)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #24
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi
  %i.fm = load ptr, ptr %11, align 8, !tbaa !206  ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.fm, %i.cx
  %i.fn = icmp eq ptr %i.fm, null
  %or.cond.i = or i1 %.not.i.i103, %i.fn
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm4EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_ZdaPv(ptr noundef nonnull %i.fm) #26
  br label %_ZN2cv10AutoBufferIiLm4EED2Ev.exit

_ZN2cv10AutoBufferIiLm4EED2Ev.exit:               ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bt

bb.bm:                                            ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.fl, %bb.bj ], [ %i.ex, %bb.bb ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ]
  %i.fo = load ptr, ptr %11, align 8, !tbaa !206  ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.fo, %i.cx
  %i.fp = icmp eq ptr %i.fo, null
  %or.cond.i105 = or i1 %.not.i.i104, %i.fp
  br i1 %or.cond.i105, label %_ZN2cv10AutoBufferIiLm4EED2Ev.exit106, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZdaPv(ptr noundef nonnull %i.fo) #26
  br label %_ZN2cv10AutoBufferIiLm4EED2Ev.exit106

_ZN2cv10AutoBufferIiLm4EED2Ev.exit106:            ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %common.resume

bb.bo:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.82, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1801) #25
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  unreachable

bb.br:                                            ; preds = %bb.bo
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.bs:                                            ; preds = %bb.bp
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %20, align 8, !tbaa !14   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.bs
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !16
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.br
  %.pn = phi { ptr, i32 } [ %i.fq, %bb.br ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.fr, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %common.resume

bb.bt:                                            ; preds = %_ZN2cv10AutoBufferIiLm4EED2Ev.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat7reshapeEiRKSt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = load ptr, ptr %3, align 8, !tbaa !52     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = icmp sgt i32 %i.h, 0
  %spec.select = select i1 %i.k, ptr %i.c, ptr null
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.b
  %i.l = phi ptr [ null, %bb.b ], [ %spec.select, %bb.d ]
  tail call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef %i.h, ptr noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat7reshapeEiRKNS_8MatShapeE(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(address_is_null) dereferenceable(52) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !18     ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef 1, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  tail call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef %i.b, ptr noundef nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat7reshapeEiSt16initializer_listIiE(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, ptr nofree readonly captures(none) %3, i64 %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = icmp ult i64 %4, 11
  br i1 %i.b, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.c = shl nuw nsw i64 %4, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 4 %3, i64 %i.c, i1 false), !tbaa !23
  br label %._crit_edge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.83, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv3Mat7reshapeEii, ptr noundef nonnull @.str.10, i32 noundef 1829) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !14     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !16
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %i.d

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %i.j = trunc nuw nsw i64 %4 to i32
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef %i.j, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv3Mat11reinterpretEi(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = and i32 %i.a, 4095                       ; 2 uses
  %i.c = lshr i32 %i.b, 5
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = shl nuw nsw i32 %i.b, 2
  %i.f = and i32 %i.e, 124
  %i.g = zext nneg i32 %i.f to i64
  %i.h = lshr i64 1275511473185297, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 15
  %i.k = mul nuw nsw i32 %i.j, %i.d
  %i.l = lshr i32 %2, 5
  %i.m = and i32 %i.l, 127
  %i.n = add nuw nsw i32 %i.m, 1                  ; 2 uses
  %i.o = shl i32 %2, 2
  %i.p = and i32 %i.o, 124
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 1275511473185297, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 15
  %i.u = mul nuw nsw i32 %i.t, %i.n
  %i.v = icmp eq i32 %i.k, %i.u
  br i1 %i.v, label %bb.e, label %bb.b

end_hunk_5
begin_hunk_6_@_ZNK2cv3Mat11reinterpretEi:bb.a
  %i.ac = and i32 %2, 4095
  tail call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.ad = load i32, ptr %0, align 8, !tbaa !126
  %i.ae = and i32 %i.ad, -4096
  %i.af = or disjoint i32 %i.ae, %i.ac            ; 3 uses
  store i32 %i.af, ptr %0, align 8, !tbaa !126
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !123 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = icmp slt i32 %i.ah, 2
  br i1 %i.ak, label %bb.f, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.e
  %wide.trip.count.i.i = zext nneg i32 %i.ah to i64
  br label %.preheader.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = or i32 %i.af, 16384
  br label %bb.i

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !23
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %.split.loop.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.split.loop.exit48.i.i, label %.preheader.i.i, !llvm.loop !130

.split.loop.exit.i.i:                             ; preds = %.preheader.i.i
  %i.ap = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.split.loop.exit48.i.i

.split.loop.exit48.i.i:                           ; preds = %bb.g, %.split.loop.exit.i.i
  %storemerge.lcssa.i.i = phi i32 [ %i.ap, %.split.loop.exit.i.i ], [ %i.ah, %bb.g ] ; 4 uses
  %i.aq = add nsw i32 %i.ah, -1                   ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %storemerge.lcssa.i.i)
  %i.ar = sext i32 %.sroa.speculated.i.i to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23
  %i.au = sext i32 %i.at to i64
  %i.av = zext nneg i32 %i.n to i64
  %i.aw = mul nsw i64 %i.au, %i.av                ; 2 uses
  %i.ax = icmp sgt i32 %i.aq, %storemerge.lcssa.i.i
  br i1 %i.ax, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.split.loop.exit48.i.i
  %i.ay = zext nneg i32 %i.aq to i64
  %i.az = sext i32 %storemerge.lcssa.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.preheader.i.i
  %indvars.iv43.i.i = phi i64 [ %i.ay, %.lr.ph.preheader.i.i ], [ %indvars.iv.next44.i.i, %bb.h ] ; 4 uses
  %.037.i.i = phi i64 [ %i.aw, %.lr.ph.preheader.i.i ], [ %i.bd, %bb.h ]
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv43.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !23
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = mul i64 %.037.i.i, %i.bc                ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv43.i.i ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !12
  %i.bg = mul i64 %i.bf, %i.bc
  %i.bh = getelementptr i8, ptr %i.be, i64 -8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !12
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %._crit_edge.loopexit.split.loop.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next44.i.i = add nsw i64 %indvars.iv43.i.i, -1 ; 2 uses
  %i.bk = icmp sgt i64 %indvars.iv.next44.i.i, %i.az
  br i1 %i.bk, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !131

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.bl = trunc nsw i64 %indvars.iv43.i.i to i32
  %i.bm = icmp sge i32 %storemerge.lcssa.i.i, %i.bl
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h, %._crit_edge.loopexit.split.loop.exit.i.i, %.split.loop.exit48.i.i
  %.024.lcssa.i.i = phi i1 [ true, %.split.loop.exit48.i.i ], [ %i.bm, %._crit_edge.loopexit.split.loop.exit.i.i ], [ true, %bb.h ]
  %.1.i.i = phi i64 [ %i.aw, %.split.loop.exit48.i.i ], [ %i.bd, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.bd, %bb.h ]
  %i.bn = add i64 %.1.i.i, 2147483648
  %i.bo = icmp ult i64 %i.bn, 4294967296
  %or.cond.i.i = select i1 %.024.lcssa.i.i, i1 %i.bo, i1 false
  %i.bp = and i32 %i.af, -16385
  %masksel.i.i = select i1 %or.cond.i.i, i32 16384, i32 0
  %.025.i.i = or disjoint i32 %masksel.i.i, %i.bp
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i, %bb.f
  %.126.i.i = phi i32 [ %i.al, %bb.f ], [ %.025.i.i, %._crit_edge.i.i ]
  store i32 %.126.i.i, ptr %0, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3Mat4diagERKS0_(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !128  ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.85, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3Mat4diagEi, ptr noundef nonnull @.str.10, i32 noundef 1848) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !16
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  %i.n = add i32 %i.b, -1
  %i.o = add i32 %i.n, %i.e                       ; 2 uses
  %i.p = load i32, ptr %1, align 8, !tbaa !126
  %i.q = and i32 %i.p, 4095
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.o, i32 noundef %i.o, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNK2cv3Mat4diagEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 0)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.a, align 4, !tbaa !128
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.u, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !154
  store ptr %5, ptr %i.t, align 8, !tbaa !157
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.p

bb.k:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !203
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !202
  store i32 16842752, ptr %7, align 8, !tbaa !154
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.z, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.ab, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !154
  store ptr %5, ptr %i.aa, align 8, !tbaa !157
  invoke void @_ZN2cv9transposeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.j
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.q:                                             ; preds = %bb.o, %bb.l
  %.pn23.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.ac, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.q ], [ %i.v, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn23.pn.pn.pn = phi { ptr, i32 } [ %.pn23.pn.pn, %bb.r ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn23.pn.pn.pn
}

declare void @_ZN2cv9transposeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !126    ; 6 uses
  %i.d = and i32 %i.c, 31
  %i.e = icmp eq i32 %i.d, %2
  %i.f = icmp slt i32 %2, 1
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.c, 16384
  %.not16 = icmp eq i32 %i.g, 0                   ; 2 uses
  %or.cond3 = and i1 %3, %.not16
  br i1 %or.cond3, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !123  ; 2 uses
  %i.j = icmp slt i32 %i.i, 3
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !129  ; 2 uses
  %i.m = icmp eq i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = icmp eq i32 %i.o, 1
  %or.cond15 = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = lshr i32 %i.c, 5
  %i.r = and i32 %i.q, 127
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.u = icmp eq i32 %i.o, %1
  %i.v = and i32 %i.c, 4064
  %i.w = icmp eq i32 %i.v, 0
  %or.cond18 = and i1 %i.w, %i.u
  br i1 %or.cond18, label %bb.l, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.x = icmp eq i32 %i.i, 3
  %i.y = and i32 %i.c, 4064
  %i.z = icmp eq i32 %i.y, 0
  %or.cond20 = and i1 %i.z, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, %1
  %or.cond29 = select i1 %or.cond20, i1 %i.ac, i1 false
  br i1 %or.cond29, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !23
  %i.af = icmp eq i32 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = icmp eq i32 %i.ah, 1
  %or.cond23 = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond23, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  br i1 %.not16, label %bb.k, label %.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = load i64, ptr %i.al, align 8, !tbaa !12
  %i.an = sext i32 %1 to i64
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = icmp eq i64 %i.ak, %i.ao
  br i1 %i.ap, label %.preheader.i, label %.thread

.preheader.i:                                     ; preds = %bb.j, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !18
  %.not.not.i.not = icmp slt i32 %i.ar, 3
  br i1 %.not.not.i.not, label %bb.m, label %_ZNK2cv8MatShapeixEm.exit.i

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.as = sext i32 %i.l to i64
  %i.at = sext i32 %i.o to i64
  %i.au = mul nsw i64 %i.at, %i.as
  br label %_ZNK2cv3Mat5totalEv.exit

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %.preheader.i
  %i.av = load i32, ptr %i.ad, align 4, !tbaa !23
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !23
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul i64 %i.ba, %i.bd
  br label %_ZNK2cv3Mat5totalEv.exit

bb.m:                                             ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.106, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.107, i32 noundef 103) #25
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !16
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.bf

_ZNK2cv3Mat5totalEv.exit:                         ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %bb.l
  %.07.i = phi i64 [ %i.au, %bb.l ], [ %i.be, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.bl = lshr i32 %i.c, 5
  %i.bm = and i32 %i.bl, 127
  %i.bn = add nuw nsw i32 %i.bm, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = mul i64 %.07.i, %i.bo
  %i.bq = sext i32 %1 to i64
  %i.br = udiv i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  br label %.thread
end_hunk_6
begin_hunk_7_@_ZN2cv19getContinuousSize2DERNS_3MatES1_S1_i:bb.a
bb.bd:                                            ; preds = %bb.bc
  %i.ht = load i32, ptr %i.cu, align 8, !tbaa !129
  %i.hu = icmp eq i32 %i.ho, %i.ht
  br i1 %i.hu, label %bb.bm, label %bb.bh

bb.be:                                            ; preds = %bb.ax
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %common.resume

bb.bf:                                            ; preds = %bb.ay
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %common.resume

bb.bg:                                            ; preds = %bb.az
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %common.resume

bb.bh:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.100, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv19getContinuousSize2DERNS_3MatES1_i, ptr noundef nonnull @.str.10, i32 noundef 1936) #25
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.bl:                                            ; preds = %bb.bi
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = load ptr, ptr %19, align 8, !tbaa !14   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.bl
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !16
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.bk
  %.pn83 = phi { ptr, i32 } [ %i.hy, %bb.bk ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %i.hz, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %common.resume

bb.bm:                                            ; preds = %bb.bd
  %i.if = mul nsw i32 %i.hl, %3
  br label %bb.bo

bb.bn:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit113
  %i.ig = load i32, ptr %0, align 8, !tbaa !126
  %i.ih = load i32, ptr %1, align 8, !tbaa !126
  %i.ii = load i32, ptr %2, align 8, !tbaa !126
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !128 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.im = load i32, ptr %i.il, align 8, !tbaa !129 ; 2 uses
  %i.in = sext i32 %i.ik to i64
  %i.io = sext i32 %i.im to i64
  %i.ip = sext i32 %3 to i64
  %i.iq = mul nsw i64 %i.in, %i.ip
  %i.ir = mul i64 %i.iq, %i.io                    ; 2 uses
  %i.is = icmp sgt i64 %i.ir, 2147483646
  %i.it = and i32 %i.ig, 16384
  %i.iu = and i32 %i.it, %i.ih
  %i.iv = and i32 %i.iu, %i.ii
  %.not12.i = icmp eq i32 %i.iv, 0
  %or.cond.i = select i1 %.not12.i, i1 true, i1 %i.is ; 2 uses
  %i.iw = mul nsw i32 %i.ik, %3
  %i.ix = trunc i64 %i.ir to i32
  %.sroa.0.0.i = select i1 %or.cond.i, i32 %i.iw, i32 %i.ix
  %.sroa.3.0.extract.trunc = select i1 %or.cond.i, i32 %i.im, i32 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sroa.3.0 = phi i32 [ %i.ho, %bb.bm ], [ %.sroa.3.0.extract.trunc, %bb.bn ]
  %.sroa.0157.0 = phi i32 [ %i.if, %bb.bm ], [ %.sroa.0.0.i, %bb.bn ]
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.0157.0.insert.ext = zext i32 %.sroa.0157.0 to i64
  %.sroa.0157.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0157.0.insert.ext
  ret i64 %.sroa.0157.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12MatAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12MatAllocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv25DummyBufferPoolController15getReservedSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv25DummyBufferPoolController18getMaxReservedSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv25DummyBufferPoolController18setMaxReservedSizeEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv25DummyBufferPoolController22freeAllReservedBuffersEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv25DummyBufferPoolControllerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15StdMatAllocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv15StdMatAllocator8allocateEiPKiiPvPmNS_10AccessFlagENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = lshr i32 %3, 5
  %i.b = and i32 %i.a, 127
  %i.c = add nuw nsw i32 %i.b, 1
  %i.d = shl i32 %3, 2
  %i.e = and i32 %i.d, 124
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 1275511473185297, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 15
  %i.j = mul nuw nsw i32 %i.i, %i.c
  %i.k = zext nneg i32 %i.j to i64                ; 6 uses
  %.03548 = add i32 %1, -1                        ; 2 uses
  %i.l = icmp sgt i32 %1, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not41 = icmp eq ptr %5, null
  br i1 %.not41, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.m = zext i32 %.03548 to i64                  ; 2 uses
  %i.n = and i32 %1, 7                            ; 2 uses
  %xtraiter89 = zext nneg i32 %i.n to i64
  %lcmp.mod90.not = icmp eq i32 %i.n, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv65.prol = phi i64 [ %indvars.iv.next66.prol, %.lr.ph.split.us.prol ], [ %i.m, %.lr.ph.split.us.preheader ] ; 2 uses
  %.03649.us.prol = phi i64 [ %i.r, %.lr.ph.split.us.prol ], [ %i.k, %.lr.ph.split.us.preheader ]
  %prol.iter91 = phi i64 [ %prol.iter91.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv65.prol
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23
  %i.q = sext i32 %i.p to i64
  %i.r = mul i64 %.03649.us.prol, %i.q            ; 3 uses
  %indvars.iv.next66.prol = add nsw i64 %indvars.iv65.prol, -1 ; 2 uses
  %prol.iter91.next = add i64 %prol.iter91, 1     ; 2 uses
  %prol.iter91.cmp.not = icmp eq i64 %prol.iter91.next, %xtraiter89
  br i1 %prol.iter91.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !210

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.split.us.preheader ], [ %i.r, %.lr.ph.split.us.prol ]
  %indvars.iv65.unr = phi i64 [ %i.m, %.lr.ph.split.us.preheader ], [ %indvars.iv.next66.prol, %.lr.ph.split.us.prol ]
  %.03649.us.unr = phi i64 [ %i.k, %.lr.ph.split.us.preheader ], [ %i.r, %.lr.ph.split.us.prol ]
  %i.s = icmp ult i32 %1, 8
  br i1 %i.s, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.7, %.lr.ph.split.us ], [ %indvars.iv65.unr, %.lr.ph.split.us.prol.loopexit ] ; 9 uses
  %.03649.us = phi i64 [ %i.be, %.lr.ph.split.us ], [ %.03649.us.unr, %.lr.ph.split.us.prol.loopexit ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv65
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23
  %i.v = sext i32 %i.u to i64
  %i.w = mul i64 %.03649.us, %i.v
  %i.x = getelementptr [4 x i8], ptr %2, i64 %indvars.iv65
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul i64 %i.w, %i.aa
  %i.ac = getelementptr [4 x i8], ptr %2, i64 %indvars.iv65
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !23
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ab, %i.af
  %i.ah = getelementptr [4 x i8], ptr %2, i64 %indvars.iv65
  %i.ai = getelementptr i8, ptr %i.ah, i64 -12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !23
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul i64 %i.ag, %i.ak
  %i.am = getelementptr [4 x i8], ptr %2, i64 %indvars.iv65
  %i.an = getelementptr i8, ptr %i.am, i64 -16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !23
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.al, %i.ap
  %i.ar = getelementptr [4 x i8], ptr %2, i64 %indvars.iv65
  %i.as = getelementptr i8, ptr %i.ar, i64 -20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !23
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.aq, %i.au
  %i.aw = getelementptr [4 x i8], ptr %2, i64 %indvars.iv65
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !23
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul i64 %i.av, %i.az
  %indvars.iv.next66.6 = add nsw i64 %indvars.iv65, -7 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next66.6
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul i64 %i.ba, %i.bd                    ; 2 uses
  %indvars.iv.next66.7 = add nsw i64 %indvars.iv65, -8
  %.not82.7 = icmp eq i64 %indvars.iv.next66.6, 0
  br i1 %.not82.7, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !211

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not42 = icmp eq ptr %4, null
  %i.bf = zext i32 %.03548 to i64                 ; 3 uses
  br i1 %.not42, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %i.bg = and i32 %1, 3                           ; 2 uses
  %xtraiter = zext nneg i32 %i.bg to i64
  %lcmp.mod.not = icmp eq i32 %i.bg, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us.prol.loopexit, label %.lr.ph.split.split.us.prol

.lr.ph.split.split.us.prol:                       ; preds = %.lr.ph.split.split.us.preheader, %.lr.ph.split.split.us.prol
  %indvars.iv62.prol = phi i64 [ %indvars.iv.next63.prol, %.lr.ph.split.split.us.prol ], [ %i.bf, %.lr.ph.split.split.us.preheader ] ; 3 uses
  %.03649.us52.prol = phi i64 [ %i.bl, %.lr.ph.split.split.us.prol ], [ %i.k, %.lr.ph.split.split.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.split.us.prol ], [ 0, %.lr.ph.split.split.us.preheader ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv62.prol
  store i64 %.03649.us52.prol, ptr %i.bh, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv62.prol
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !23
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul i64 %.03649.us52.prol, %i.bk        ; 3 uses
  %indvars.iv.next63.prol = add nsw i64 %indvars.iv62.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.us.prol.loopexit, label %.lr.ph.split.split.us.prol, !llvm.loop !212

.lr.ph.split.split.us.prol.loopexit:              ; preds = %.lr.ph.split.split.us.prol, %.lr.ph.split.split.us.preheader
  %.lcssa86.unr = phi i64 [ poison, %.lr.ph.split.split.us.preheader ], [ %i.bl, %.lr.ph.split.split.us.prol ]
  %indvars.iv62.unr = phi i64 [ %i.bf, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next63.prol, %.lr.ph.split.split.us.prol ]
  %.03649.us52.unr = phi i64 [ %i.k, %.lr.ph.split.split.us.preheader ], [ %i.bl, %.lr.ph.split.split.us.prol ]
  %i.bm = icmp ult i32 %1, 4
  br i1 %i.bm, label %._crit_edge.thread, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.3, %.lr.ph.split.split.us ], [ %indvars.iv62.unr, %.lr.ph.split.split.us.prol.loopexit ] ; 6 uses
  %.03649.us52 = phi i64 [ %i.cg, %.lr.ph.split.split.us ], [ %.03649.us52.unr, %.lr.ph.split.split.us.prol.loopexit ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv62
  store i64 %.03649.us52, ptr %i.bn, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv62
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !23
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul i64 %.03649.us52, %i.bq             ; 2 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, -1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next63
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next63
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul i64 %i.br, %i.bv                    ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next63.1
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next63.1
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !23
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul i64 %i.bw, %i.ca                    ; 2 uses
  %indvars.iv.next63.2 = add nsw i64 %indvars.iv62, -3 ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next63.2
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next63.2
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !23
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul i64 %i.cb, %i.cf                    ; 2 uses
  %indvars.iv.next63.3 = add nsw i64 %indvars.iv62, -4
  %.not81.3 = icmp eq i64 %indvars.iv.next63.2, 0
  br i1 %.not81.3, label %._crit_edge.thread, label %.lr.ph.split.split.us, !llvm.loop !211

._crit_edge:                                      ; preds = %bb.i, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %bb.a
  %.036.lcssa = phi i64 [ %i.k, %bb.a ], [ %i.be, %.lr.ph.split.us ], [ %.lcssa.unr, %.lr.ph.split.us.prol.loopexit ], [ %i.ct, %bb.i ] ; 2 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %._crit_edge.thread, label %bb.j

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.bf, %.lr.ph.split ] ; 4 uses
  %.03649 = phi i64 [ %i.ct, %bb.i ], [ %i.k, %.lr.ph.split ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !12 ; 3 uses
  %.not43 = icmp eq i64 %i.ci, 2147483647
  br i1 %.not43, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split
  %.not44 = icmp ugt i64 %.03649, %i.ci
  br i1 %.not44, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.103, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv15StdMatAllocator8allocateEiPKiiPvPmNS_10AccessFlagENS_14UMatUsageFlagsE, ptr noundef nonnull @.str.10, i32 noundef 566) #25
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %8, align 8, !tbaa !14    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !16
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.f ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ck, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.o

bb.h:                                             ; preds = %.lr.ph.split.split
  store i64 %.03649, ptr %i.ch, align 8, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.137 = phi i64 [ %i.ci, %bb.b ], [ %.03649, %bb.h ]
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !23
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %.137, %i.cs                    ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cu = icmp sgt i64 %indvars.iv, 0
  br i1 %i.cu, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !211

._crit_edge.thread:                               ; preds = %.lr.ph.split.split.us.prol.loopexit, %.lr.ph.split.split.us, %._crit_edge
  %.036.lcssa74 = phi i64 [ %.036.lcssa, %._crit_edge ], [ %.lcssa86.unr, %.lr.ph.split.split.us.prol.loopexit ], [ %i.cg, %.lr.ph.split.split.us ] ; 2 uses
  %i.cv = tail call noundef ptr @_ZN2cv10fastMallocEm(i64 noundef %.036.lcssa74)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %.not76 = phi i1 [ true, %._crit_edge.thread ], [ false, %._crit_edge ]
  %.036.lcssa75 = phi i64 [ %.036.lcssa74, %._crit_edge.thread ], [ %.036.lcssa, %._crit_edge ]
  %i.cw = phi ptr [ %i.cv, %._crit_edge.thread ], [ %4, %._crit_edge ] ; 2 uses
  %i.cx = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #27 ; 7 uses
  invoke void @_ZN2cv8UMatDataC1EPKNS_12MatAllocatorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cx, ptr noundef nonnull %0)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !213
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !101
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  store i64 %.036.lcssa75, ptr %i.da, align 8, !tbaa !158
  br i1 %.not76, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 48 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !214
  %i.dd = or i32 %i.dc, 32
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !214
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.de = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 104) #26
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  ret ptr %i.cx

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.de, %bb.m ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv15StdMatAllocator8allocateEPNS_8UMatDataENS_10AccessFlagENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 comdat align 2 {
bb.a:
  %.not = icmp ne ptr %1, null
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv15StdMatAllocator10deallocateEPNS_8UMatDataE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.104, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv15StdMatAllocator10deallocateEPNS_8UMatDataE, ptr noundef nonnull @.str.10, i32 noundef 595) #25
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !14     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.r

bb.h:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !100
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.105, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv15StdMatAllocator10deallocateEPNS_8UMatDataE, ptr noundef nonnull @.str.10, i32 noundef 596) #25
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.m:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !14     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.m
  %i.s = load i64, ptr %i.q, align 8, !tbaa !16
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.l
  %.pn13 = phi { ptr, i32 } [ %i.n, %bb.l ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.o, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.r

bb.n:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val = load i32, ptr %i.u, align 8, !tbaa !214
  %i.v = and i32 %.val, 32
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !213
  tail call void @_ZN2cv8fastFreeEPv(ptr noundef %i.x)
  store ptr null, ptr %i.w, align 8, !tbaa !213
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  tail call void @_ZN2cv8UMatDataD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %1) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 104) #26
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn13.pn
}

declare noundef ptr @_ZN2cv10fastMallocEm(i64 noundef) local_unnamed_addr #6

declare void @_ZN2cv8UMatDataC1EPKNS_12MatAllocatorE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #6

declare void @_ZN2cv8fastFreeEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv8UMatDataD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #18

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { noreturn nounwind }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!15, !10, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !13, i64 8, !6, i64 16}
!16 = !{!6, !6, i64 0}
!17 = !{!15, !13, i64 8}
!18 = !{!19, !5, i64 0}
!19 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !20, i64 4, !5, i64 8, !6, i64 12}
!20 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!21 = !{!19, !20, i64 4}
!22 = !{!19, !5, i64 8}
!23 = !{!5, !5, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !25, !28, !27}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !25}
!35 = distinct !{!35, !31}
!36 = distinct !{!36, !31}
!37 = distinct !{!37, !25, !27, !28}
!38 = distinct !{!38, !25, !27}
!39 = distinct !{!39, !25, !27, !28}
!40 = distinct !{!40, !25, !27, !28}
!41 = distinct !{!41, !25, !27}
!42 = distinct !{!42, !25, !28, !27}
!43 = distinct !{!43, !25, !27, !28}
!44 = distinct !{!44, !25, !27, !28}
!45 = distinct !{!45, !31}
!46 = distinct !{!46, !25, !27}
!47 = distinct !{!47, !25, !27}
!48 = distinct !{!48, !25, !27, !28}
!49 = distinct !{!49, !25, !28, !27}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !31}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"p1 int", !11, i64 0}
!55 = !{!53, !54, i64 16}
!56 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!57 = !{!53, !54, i64 8}
!58 = distinct !{!58, !31}
!59 = distinct !{!59, !25, !60}
!60 = !{!"llvm.loop.peeled.count", i32 1}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!63 = distinct !{!63, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!66 = distinct !{!66, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!67 = !{!65, !62}
!68 = !{!69, !10, i64 40}
!69 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !70, i64 56}
!70 = !{!"_ZTSSt6locale", !71, i64 0}
!71 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!72 = !{!69, !10, i64 32}
!73 = !{!74, !74, i64 0}
!74 = !{!"vtable pointer", !7, i64 0}
!75 = !{!76, !13, i64 8}
!76 = !{!"_ZTSSi", !13, i64 8}
!77 = distinct !{!77, !31}
!78 = distinct !{!78, !25}
!79 = distinct !{!79, !31}
!80 = distinct !{!80, !25}
!81 = distinct !{!81, !31}
!82 = distinct !{!82, !25}
!83 = distinct !{!83, !31}
!84 = distinct !{!84, !25}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !25}
!89 = distinct !{!89, !25}
!90 = distinct !{!90, !25}
!91 = !{!92, !5, i64 16}
!92 = !{!"_ZTSN2cv8UMatDataE", !93, i64 0, !93, i64 8, !5, i64 16, !5, i64 20, !10, i64 24, !10, i64 32, !13, i64 40, !94, i64 48, !11, i64 56, !11, i64 64, !5, i64 72, !5, i64 76, !95, i64 80, !96, i64 88}
!93 = !{!"p1 _ZTSN2cv12MatAllocatorE", !11, i64 0}
!94 = !{!"_ZTSN2cv8UMatData10MemoryFlagE", !6, i64 0}
!95 = !{!"p1 _ZTSN2cv8UMatDataE", !11, i64 0}
!96 = !{!"_ZTSSt10shared_ptrIvE", !97, i64 0}
!97 = !{!"_ZTSSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0, !98, i64 8}
!98 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !99, i64 0}
!99 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!100 = !{!92, !5, i64 20}
!101 = !{!92, !10, i64 24}
!102 = distinct !{!102, !25}
!103 = !{!104, !104, i64 0}
!104 = !{!"p1 _ZTSN2cv3MatE", !11, i64 0}
!105 = !{!106, !13, i64 40}
!106 = !{!"_ZTSN2cv15NAryMatIteratorE", !107, i64 0, !104, i64 8, !109, i64 16, !5, i64 24, !13, i64 32, !13, i64 40, !5, i64 48, !13, i64 56}
!107 = !{!"p2 _ZTSN2cv3MatE", !108, i64 0}
!108 = !{!"any p2 pointer", !11, i64 0}
!109 = !{!"p2 omnipotent char", !108, i64 0}
!110 = !{!106, !13, i64 32}
!111 = !{!10, !10, i64 0}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !25}
!114 = distinct !{!114, !25}
!115 = distinct !{!115, !25}
!116 = distinct !{!116, !25}
!117 = !{!118, !5, i64 8}
!118 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !119, i64 0, !5, i64 8}
!119 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !11, i64 0}
!120 = !{!"branch_weights", i32 1, i32 1048575}
!121 = distinct !{null}
!122 = !{!93, !93, i64 0}
!123 = !{!124, !5, i64 4}
!124 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !93, i64 56, !95, i64 64, !19, i64 72, !125, i64 128}
!125 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!126 = !{!124, !5, i64 0}
!127 = distinct !{!127, !25}
!128 = !{!124, !5, i64 12}
!129 = !{!124, !5, i64 8}
!130 = distinct !{!130, !25}
!131 = distinct !{!131, !25}
!132 = !{!124, !95, i64 64}
!133 = !{!124, !10, i64 24}
!134 = !{!124, !10, i64 32}
!135 = !{!124, !10, i64 48}
!136 = !{!124, !10, i64 40}
!137 = distinct !{!137, !25}
!138 = distinct !{!138, !31}
!139 = !{!124, !5, i64 16}
!140 = distinct !{!140, !25}
!141 = distinct !{!141, !25}
!142 = distinct !{!142, !31}
!143 = !{!124, !93, i64 56}
!144 = distinct !{ptr @_ZN2cv3Mat19getDefaultAllocatorEv, null}
!145 = !{!124, !5, i64 72}
!146 = !{!11, !11, i64 0}
!147 = !{i64 0, i64 80, !16}
!148 = distinct !{!148, !31}
!149 = distinct !{!149, !31}
!150 = distinct !{!150, !31}
!151 = !{!92, !93, i64 8}
!152 = distinct !{ptr @_ZN2cv3Mat10deallocateEv, ptr @_ZN2cv3Mat19getDefaultAllocatorEv, null}
!153 = !{ptr @_ZN2cv3Mat10deallocateEv}
!154 = !{!155, !5, i64 0}
!155 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !11, i64 8, !156, i64 16}
!156 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!157 = !{!155, !11, i64 8}
!158 = !{!92, !13, i64 40}
!159 = distinct !{!159, !31}
!160 = distinct !{!160, !25}
!161 = distinct !{!161, !31}
!162 = distinct !{!162, !25}
!163 = !{!164, !5, i64 0}
!164 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!165 = !{!166, !5, i64 4}
!166 = !{!"_ZTSN2cv5Rect_IiEE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!167 = !{!166, !5, i64 0}
!168 = !{!166, !5, i64 8}
!169 = !{!166, !5, i64 12}
!170 = distinct !{!170, !25}
!171 = distinct !{!171, !25}
!172 = !{!173, !174, i64 8}
!173 = !{!"_ZTSNSt12_Vector_baseIN2cv5RangeESaIS1_EE17_Vector_impl_dataE", !174, i64 0, !174, i64 8, !174, i64 16}
!174 = !{!"p1 _ZTSN2cv5RangeE", !11, i64 0}
!175 = !{!173, !174, i64 0}
!176 = distinct !{!176, !25}
!177 = distinct !{!177, !25}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!180 = distinct !{!180, !"_ZNK2cv3Mat8rowRangeEii"}
!181 = !{!164, !5, i64 4}
!182 = distinct !{!182, !31}
!183 = distinct !{!183, !25}
!184 = distinct !{!184, !31}
!185 = distinct !{!185, !31}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!188 = distinct !{!188, !"_ZNK2cv3Mat8rowRangeEii"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!191 = distinct !{!191, !"_ZNK2cv3Mat8rowRangeEii"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZNK2cv3Mat5cloneEv: argument 0"}
!194 = distinct !{!194, !"_ZNK2cv3Mat5cloneEv"}
!195 = distinct !{!195, !31}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!198 = distinct !{!198, !"_ZNK2cv3Mat8rowRangeEii"}
!199 = !{!200, !5, i64 4}
!200 = !{!"_ZTSN2cv6Point_IiEE", !5, i64 0, !5, i64 4}
!201 = !{!200, !5, i64 0}
!202 = !{!156, !5, i64 4}
!203 = !{!156, !5, i64 0}
!204 = distinct !{!204, !31}
!205 = distinct !{!205, !31}
!206 = !{!207, !54, i64 0}
!207 = !{!"_ZTSN2cv10AutoBufferIiLm4EEE", !54, i64 0, !13, i64 8, !6, i64 16}
!208 = !{!207, !13, i64 8}
!209 = distinct !{!209, !25}
!210 = distinct !{!210, !31}
!211 = distinct !{!211, !25}
!212 = distinct !{!212, !31}
!213 = !{!92, !10, i64 32}
!214 = !{!94, !94, i64 0}
end_hunk_7

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/box?download=true
inline.NumInlined: 11465
inline.NumDeleted: 5743
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK8FractionmiEi:bb.a
  %i.h = sub nsw i64 %i.b, %i.g                   ; 3 uses
  %i.i = sub nsw i64 2147483647, %i.h
  %i.j = sub nsw i64 2147483647, %i.f
  %i.k = or i64 %i.i, %i.j
  %or.cond1214.not.i = icmp ult i64 %i.k, 4294967296
  br i1 %or.cond1214.not.i, label %_ZN8FractionC2Ell.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.a, %.critedge.i
  %.016.i = phi i64 [ %i.s, %.critedge.i ], [ %i.f, %bb.a ] ; 2 uses
  %.01015.i = phi i64 [ %i.o, %.critedge.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.l = icmp sgt i64 %.01015.i, -1
  %i.m = select i1 %i.l, i64 1, i64 -1
  %i.n = add nsw i64 %i.m, %.01015.i
  %i.o = sdiv i64 %i.n, 2                         ; 3 uses
  %i.p = icmp sgt i64 %.016.i, -1
  %i.q = select i1 %i.p, i64 1, i64 -1
  %i.r = add nsw i64 %i.q, %.016.i
  %i.s = sdiv i64 %i.r, 2                         ; 2 uses
  %i.t = add nsw i64 %i.o, -2147483648
  %or.cond.i = icmp ult i64 %i.t, -4294967296
  br i1 %or.cond.i, label %.critedge.i, label %_ZN8FractionC2Ell.exit, !llvm.loop !2

_ZN8FractionC2Ell.exit:                           ; preds = %.critedge.i, %bb.a
  %.010.lcssa.i = phi i64 [ %i.h, %bb.a ], [ %i.o, %.critedge.i ]
  %.0.lcssa.i = phi i64 [ %i.f, %bb.a ], [ %i.s, %.critedge.i ]
  %.sroa.2.0.insert.ext = shl nsw i64 %.0.lcssa.i, 32
  %.sroa.0.0.insert.ext = and i64 %.010.lcssa.i, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.ext, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZNK8FractiondvEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !22
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %i.e = sext i32 %i.d to i64
  %i.f = sext i32 %1 to i64
  %i.g = mul nsw i64 %i.e, %i.f                   ; 3 uses
  %i.h = sub nsw i64 2147483647, %i.b
  %i.i = sub nsw i64 2147483647, %i.g
  %i.j = or i64 %i.i, %i.h
  %or.cond1214.not.i = icmp ult i64 %i.j, 4294967296
  br i1 %or.cond1214.not.i, label %_ZN8FractionC2Ell.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.a, %.critedge.i
  %.016.i = phi i64 [ %i.r, %.critedge.i ], [ %i.g, %bb.a ] ; 2 uses
  %.01015.i = phi i64 [ %i.n, %.critedge.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = icmp sgt i64 %.01015.i, -1
  %i.l = select i1 %i.k, i64 1, i64 -1
  %i.m = add nsw i64 %i.l, %.01015.i
  %i.n = sdiv i64 %i.m, 2                         ; 2 uses
  %i.o = icmp sgt i64 %.016.i, -1
  %i.p = select i1 %i.o, i64 1, i64 -1
  %i.q = add nsw i64 %i.p, %.016.i
  %i.r = sdiv i64 %i.q, 2                         ; 3 uses
  %i.s = add nsw i64 %i.r, -2147483648
  %i.t = icmp ult i64 %i.s, -4294967296
  br i1 %i.t, label %.critedge.i, label %_ZN8FractionC2Ell.exit, !llvm.loop !2

_ZN8FractionC2Ell.exit:                           ; preds = %.critedge.i, %bb.a
  %.010.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.n, %.critedge.i ]
  %.0.lcssa.i = phi i64 [ %i.g, %bb.a ], [ %i.r, %.critedge.i ]
  %.sroa.2.0.insert.ext = shl i64 %.0.lcssa.i, 32
  %.sroa.0.0.insert.ext = and i64 %.010.lcssa.i, 4294967295
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.ext, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK8Fraction10round_downEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !23
  %i.d = sdiv i32 %i.a, %i.c
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK8Fraction8round_upEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !22
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = add nsw i64 %i.b, -1
  %i.g = add nsw i64 %i.f, %i.e
  %i.h = sdiv i64 %i.g, %i.e
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK8Fraction5roundEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !22
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = sdiv i32 %i.d, 2
  %.sext = sext i32 %i.f to i64
  %i.g = add nsw i64 %.sext, %i.b
  %i.h = sdiv i64 %i.g, %i.e
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK8Fraction8is_validEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN9BoxHeaderC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(52) initializes((0, 20), (24, 52)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV9BoxHeader, i64 16), ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.c, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK9BoxHeader8get_typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36
  %i.c = icmp eq i32 %i.b, 1970628964
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.c, label %bb.b, label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !37   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #37
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i unwind label %bb.f ; 3 uses

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i: ; preds = %bb.e
  store ptr %i.n, ptr %0, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.g, i64 %i.l, i1 false)
  store ptr %i.o, ptr %i.f, align 8, !tbaa !38
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.q, ptr %i.f, align 8, !tbaa !38
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #39
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.p

_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit:    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.v = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #38 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %0, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store ptr %i.x, ptr %i.d, align 8, !tbaa !39
  store ptr %i.x, ptr %i.w, align 8, !tbaa !38
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 19
  %3 = load i8, ptr %2, align 1, !tbaa !36
  store i8 %3, ptr %i.v, align 1, !tbaa !40
  %i.y = load i32, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %4 = lshr i32 %i.y, 16
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !40
  %7 = lshr i32 %i.y, 8
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !40
  %10 = trunc i32 %i.y to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  store i8 %10, ptr %11, align 1, !tbaa !40
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2ERKS3_.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEEC2ERKS3_.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i, %bb.b, %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK9BoxHeader15get_type_stringEv(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(52) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 16 uses
  %2 = alloca %"class.std::__1::locale", align 8  ; 7 uses
  %3 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 78 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.d = icmp eq i32 %i.c, 1970628964
  br i1 %i.d, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !27
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !27
  %i.l = load ptr, ptr %3, align 8, !tbaa !27
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.o, ptr noundef nonnull %i.f)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  store ptr null, ptr %i.p, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  store i32 -1, ptr %i.q, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %3, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.e, align 8, !tbaa !27
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.f)
          to label %bb.g unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #40
  br label %bb.f

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.r, %bb.d ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.e) #40
  br label %common.resume

bb.g:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.f, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  store i32 16, ptr %i.u, align 8, !tbaa !57
  %i.v = load ptr, ptr %3, align 8, !tbaa !27
  %i.w = getelementptr i8, ptr %i.v, i64 -24      ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %3, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !58
  %i.ab = and i32 %i.aa, -75
  %i.ac = or disjoint i32 %i.ab, 8
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !58
  %i.ad = load i64, ptr %i.w, align 8
  %i.ae = getelementptr inbounds i8, ptr %3, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 144 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !48
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::locale") align 8 %2, ptr noundef nonnull align 8 dereferenceable(148) %i.ae)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  %i.ai = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i.i unwind label %bb.i ; 2 uses

_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i.i: ; preds = %.noexc
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef signext i8 %i.al(ptr noundef nonnull align 8 dereferenceable(25) %i.ai, i8 noundef signext 32)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i.i unwind label %bb.i, !inline_history !3 ; 0 uses

bb.i:                                             ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i.i, %.noexc
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %.body

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i.i: ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i.i
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.s

bb.j:                                             ; preds = %bb.am
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !59, !noalias !700 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60, !noalias !700 ; 3 uses
  %i.as = icmp ult ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !59, !noalias !700
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = phi ptr [ %i.ar, %bb.k ], [ %i.ap, %bb.j ]
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.m:                                             ; preds = %bb.am
  %i.av = and i32 %i.hy, 8
  %.not1.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not1.i.i.i.i, label %.thread15.i.i.i, label %bb.n

.thread15.i.i.i:                                  ; preds = %bb.m
  store i8 0, ptr %0, align 8, !alias.scope !700
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.an

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !61, !noalias !700
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i: ; preds = %bb.n, %bb.l
  %.sink22.i.i.i = phi ptr [ %i.at, %bb.l ], [ %i.az, %bb.n ]
  %.sink21.in.i.i.i = phi ptr [ %i.au, %bb.l ], [ %i.ax, %bb.n ]
  %.sink21.i.i.i = load ptr, ptr %.sink21.in.i.i.i, align 8, !tbaa !39, !noalias !700 ; 2 uses
  %i.ba = ptrtoint ptr %.sink22.i.i.i to i64
  %i.bb = ptrtoint ptr %.sink21.i.i.i to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 8 uses
  %i.bd = icmp ugt i64 %i.bc, -9
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #37
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  %i.be = icmp ult i64 %i.bc, 23
  br i1 %i.be, label %bb.q, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.p
  %i.bf = or i64 %i.bc, 7                         ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 23
  %i.bh = add nuw i64 %i.bf, 1
  %i.bi = select i1 %i.bg, i64 25, i64 %i.bh      ; 2 uses
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #38
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc20:                                         ; preds = %.thread.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !40, !alias.scope !700
  %i.bl = or i64 %i.bi, 1
  store i64 %i.bl, ptr %0, align 8, !alias.scope !700
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %i.bm, align 8, !tbaa !40, !alias.scope !700
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = trunc nuw nsw i64 %i.bc to i8
  %i.bo = shl nuw nsw i8 %i.bn, 1
  store i8 %i.bo, ptr %0, align 8, !alias.scope !700
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.an, label %bb.r

bb.r:                                             ; preds = %bb.q, %.noexc20
  %.017.i.i.i.i.i = phi ptr [ %i.bj, %.noexc20 ], [ %i.bp, %bb.q ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i.i, ptr align 1 %.sink21.i.i.i, i64 %i.bc, i1 false)
  br label %bb.an

end_hunk_0
begin_hunk_1_@"_ZNSt3__123__stable_partition_implINS_17_ClassicAlgPolicyERZN8Box_ipma15sort_propertiesERKNS_10shared_ptrI8Box_ipcoEEE3$_0NS_11__wrap_iterIPNS2_19PropertyAssociationEEElNS_4pairISC_lEEEET1_SG_SG_T0_T2_T3_NS_26bidirectional_iterator_tagE":bb.a
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next200, %vector.body192 ] ; 2 uses
  %i.gk = shl i64 %index193, 2                    ; 2 uses
  %next.gep194 = getelementptr i8, ptr %.sroa.016.0, i64 %i.gk ; 3 uses
  %next.gep195 = getelementptr i8, ptr %i.cf, i64 %i.gk ; 3 uses
  %i.gl = getelementptr i8, ptr %next.gep194, i64 16 ; 2 uses
  %wide.load196 = load <4 x i32>, ptr %next.gep194, align 2, !alias.scope !2922, !noalias !2923
  %wide.load197 = load <4 x i32>, ptr %i.gl, align 2, !alias.scope !2922, !noalias !2923
  %i.gm = getelementptr i8, ptr %next.gep195, i64 16 ; 2 uses
  %wide.load198 = load <4 x i32>, ptr %next.gep195, align 2, !alias.scope !2923
  %wide.load199 = load <4 x i32>, ptr %i.gm, align 2, !alias.scope !2923
  store <4 x i32> %wide.load198, ptr %next.gep194, align 2, !alias.scope !2922, !noalias !2923
  store <4 x i32> %wide.load199, ptr %i.gl, align 2, !alias.scope !2922, !noalias !2923
  store <4 x i32> %wide.load196, ptr %next.gep195, align 2, !alias.scope !2923
  store <4 x i32> %wide.load197, ptr %i.gm, align 2, !alias.scope !2923
  %index.next200 = add nuw i64 %index193, 8       ; 2 uses
  %i.gn = icmp eq i64 %index.next200, %n.vec191
  br i1 %i.gn, label %middle.block201, label %vector.body192, !llvm.loop !2917

middle.block201:                                  ; preds = %vector.body192
  %cmp.n202 = icmp eq i64 %i.fo, %n.vec191
  br i1 %cmp.n202, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, label %.lr.ph.i.i.i.i.preheader208

.lr.ph.i.i.i.i.preheader208:                      ; preds = %vector.memcheck189, %vector.scevcheck, %.lr.ph.i.i.i.i.preheader, %middle.block201
  %.sroa.04.09.i.i.i.i.ph = phi ptr [ %.sroa.016.0, %vector.memcheck189 ], [ %.sroa.016.0, %vector.scevcheck ], [ %.sroa.016.0, %.lr.ph.i.i.i.i.preheader ], [ %i.gi, %middle.block201 ]
  %.sroa.01.08.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck189 ], [ %i.cf, %vector.scevcheck ], [ %i.cf, %.lr.ph.i.i.i.i.preheader ], [ %i.gj, %middle.block201 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader208, %.lr.ph.i.i.i.i
  %.sroa.04.09.i.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i.i ], [ %.sroa.04.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader208 ] ; 3 uses
  %.sroa.01.08.i.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i.i ], [ %.sroa.01.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader208 ] ; 3 uses
  %i.go = load i32, ptr %.sroa.04.09.i.i.i.i, align 2
  %i.gp = load i32, ptr %.sroa.01.08.i.i.i.i, align 2
  store i32 %i.gp, ptr %.sroa.04.09.i.i.i.i, align 2
  store i32 %i.go, ptr %.sroa.01.08.i.i.i.i, align 2
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i.i.i.i, i64 4 ; 2 uses
  %i.gs = icmp ne ptr %i.gq, %i.cf
  %i.gt = icmp ne ptr %i.gr, %.sroa.0.0
  %or.cond.i.i.i.i = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit, !llvm.loop !2918

.preheader.i.i.i:                                 ; preds = %bb.w, %.preheader.i.i.i
  %.06.i.i.i.i = phi i64 [ %i.gu, %.preheader.i.i.i ], [ %i.fc, %bb.w ] ; 3 uses
  %.0.i.i.i.i = phi i64 [ %.06.i.i.i.i, %.preheader.i.i.i ], [ %i.ez, %bb.w ]
  %i.gu = srem i64 %.0.i.i.i.i, %.06.i.i.i.i      ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.preheader.i.i.i, label %.preheader.i.i.i, !llvm.loop !2919

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %.idx.i.i.i = shl i64 %.06.i.i.i.i, 2           ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %.sroa.016.0, i64 %.idx.i.i.i ; 2 uses
  %i.gw = add i64 %.idx.i.i.i, -4                 ; 2 uses
  %i.gx = and i64 %i.gw, 4
  %lcmp.mod.not.not = icmp eq i64 %i.gx, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i
  %i.gy = getelementptr inbounds i8, ptr %i.gv, i64 -4 ; 5 uses
  %i.gz = load i32, ptr %i.gy, align 2
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 %i.ey
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i.i.prol
  %.sroa.027.0.i.i.i.prol = phi ptr [ %i.gy, %.lr.ph.i.i.i.prol ], [ %.sroa.0.0.i.i.i.prol, %bb.x ]
  %.sroa.0.0.i.i.i.prol = phi ptr [ %i.ha, %.lr.ph.i.i.i.prol ], [ %.sroa.0.1.i.i.i.prol, %bb.x ] ; 5 uses
  %i.hb = load i32, ptr %.sroa.0.0.i.i.i.prol, align 2
  store i32 %i.hb, ptr %.sroa.027.0.i.i.i.prol, align 2
  %i.hc = ptrtoint ptr %.sroa.0.0.i.i.i.prol to i64
  %i.hd = sub i64 %i.fa, %i.hc
  %i.he = ashr exact i64 %i.hd, 2                 ; 2 uses
  %i.hf = icmp slt i64 %i.ez, %i.he
  %i.hg = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.prol, i64 %i.ey
  %i.hh = sub nsw i64 %i.ez, %i.he
  %i.hi = getelementptr inbounds [4 x i8], ptr %.sroa.016.0, i64 %i.hh
  %.sroa.0.1.i.i.i.prol = select i1 %i.hf, ptr %i.hg, ptr %i.hi ; 2 uses
  %.not39.i.i.i.prol = icmp eq ptr %.sroa.0.1.i.i.i.prol, %i.gy
  br i1 %.not39.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit.unr-lcssa, label %bb.x, !llvm.loop !2920

.lr.ph.i.i.i.prol.loopexit.unr-lcssa:             ; preds = %bb.x
  store i32 %i.gz, ptr %.sroa.0.0.i.i.i.prol, align 2
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.sroa.030.041.i.i.i.unr = phi ptr [ %i.gv, %.lr.ph.preheader.i.i.i ], [ %i.gy, %.lr.ph.i.i.i.prol.loopexit.unr-lcssa ]
  %i.hj = icmp eq i64 %i.gw, 0
  br i1 %i.hj, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.aa, %.lr.ph.i.i.i.prol.loopexit
  %i.hk = getelementptr inbounds i8, ptr %.sroa.016.0, i64 %i.fb
  br label %_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.aa
  %.sroa.030.041.i.i.i = phi ptr [ %i.hw, %bb.aa ], [ %.sroa.030.041.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %.sroa.030.041.i.i.i, i64 -4 ; 4 uses
  %i.hm = load i32, ptr %i.hl, align 2
  %i.hn = getelementptr inbounds i8, ptr %i.hl, i64 %i.ey
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %.sroa.027.0.i.i.i = phi ptr [ %i.hl, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.y ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.y ] ; 5 uses
  %i.ho = load i32, ptr %.sroa.0.0.i.i.i, align 2
  store i32 %i.ho, ptr %.sroa.027.0.i.i.i, align 2
  %i.hp = ptrtoint ptr %.sroa.0.0.i.i.i to i64
  %i.hq = sub i64 %i.fa, %i.hp
  %i.hr = ashr exact i64 %i.hq, 2                 ; 2 uses
  %i.hs = icmp slt i64 %i.ez, %i.hr
  %i.ht = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i, i64 %i.ey
  %i.hu = sub nsw i64 %i.ez, %i.hr
  %i.hv = getelementptr inbounds [4 x i8], ptr %.sroa.016.0, i64 %i.hu
  %.sroa.0.1.i.i.i = select i1 %i.hs, ptr %i.ht, ptr %i.hv ; 2 uses
  %.not39.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.hl
  br i1 %.not39.i.i.i, label %.lr.ph.i.i.i.1, label %bb.y, !llvm.loop !2920

.lr.ph.i.i.i.1:                                   ; preds = %bb.y
  store i32 %i.hm, ptr %.sroa.0.0.i.i.i, align 2
  %i.hw = getelementptr inbounds i8, ptr %.sroa.030.041.i.i.i, i64 -8 ; 6 uses
  %i.hx = load i32, ptr %i.hw, align 2
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 %i.ey
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i.i.1
  %.sroa.027.0.i.i.i.1 = phi ptr [ %i.hw, %.lr.ph.i.i.i.1 ], [ %.sroa.0.0.i.i.i.1, %bb.z ]
  %.sroa.0.0.i.i.i.1 = phi ptr [ %i.hy, %.lr.ph.i.i.i.1 ], [ %.sroa.0.1.i.i.i.1, %bb.z ] ; 5 uses
  %i.hz = load i32, ptr %.sroa.0.0.i.i.i.1, align 2
  store i32 %i.hz, ptr %.sroa.027.0.i.i.i.1, align 2
  %i.ia = ptrtoint ptr %.sroa.0.0.i.i.i.1 to i64
  %i.ib = sub i64 %i.fa, %i.ia
  %i.ic = ashr exact i64 %i.ib, 2                 ; 2 uses
  %i.id = icmp slt i64 %i.ez, %i.ic
  %i.ie = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.1, i64 %i.ey
  %i.if = sub nsw i64 %i.ez, %i.ic
  %i.ig = getelementptr inbounds [4 x i8], ptr %.sroa.016.0, i64 %i.if
  %.sroa.0.1.i.i.i.1 = select i1 %i.id, ptr %i.ie, ptr %i.ig ; 2 uses
  %.not39.i.i.i.1 = icmp eq ptr %.sroa.0.1.i.i.i.1, %i.hw
  br i1 %.not39.i.i.i.1, label %bb.aa, label %bb.z, !llvm.loop !2920

bb.aa:                                            ; preds = %bb.z
  store i32 %i.hx, ptr %.sroa.0.0.i.i.i.1, align 2
  %.not.i.i.i.1 = icmp eq ptr %i.hw, %.sroa.016.0
  br i1 %.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2921

_ZNSt3__18__rotateB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEES6_EENS_4pairIT0_S8_EES8_S8_T1_.exit: ; preds = %.lr.ph132, %.lr.ph.i.i.i.i, %middle.block, %middle.block201, %._crit_edge, %._crit_edge.i.i.i, %_ZNSt3__114__rotate_rightB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i, %_ZNSt3__113__rotate_leftB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i, %bb.r, %.loopexit, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit.thread", %bb.e, %bb.b
  %.sroa.042.1 = phi ptr [ %1, %bb.b ], [ %i.bi, %._crit_edge ], [ %i.e, %bb.e ], [ %1, %"_ZZN8Box_ipma15sort_propertiesERKNSt3__110shared_ptrI8Box_ipcoEEENK3$_0clERKNS_19PropertyAssociationE.exit.thread" ], [ %.sroa.016.0, %bb.r ], [ %.sroa.0.0, %.loopexit ], [ %i.em, %_ZNSt3__113__rotate_leftB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i ], [ %i.ew, %_ZNSt3__114__rotate_rightB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPN8Box_ipma19PropertyAssociationEEEEET0_S7_S7_.exit.i.i ], [ %i.hk, %._crit_edge.i.i.i ], [ %i.cf, %middle.block201 ], [ %i.bk, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i ], [ %i.bk, %.lr.ph132 ]
  ret ptr %.sroa.042.1
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #34

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16__treeIjNS_4lessIjEENS_9allocatorIjEEE7destroyEPNS_11__tree_nodeIjPvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %common.ret8, label %bb.b

common.ret8:                                      ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !583
  tail call void @_ZNSt3__16__treeIjNS_4lessIjEENS_9allocatorIjEEE7destroyEPNS_11__tree_nodeIjPvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a) #40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !585
  tail call void @_ZNSt3__16__treeIjNS_4lessIjEENS_9allocatorIjEEE7destroyEPNS_11__tree_nodeIjPvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.c) #40
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 32) #39
  br label %common.ret8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold nofree noreturn }
attributes #27 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { cold noreturn }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #37 = { noreturn }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { builtin nounwind }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { noreturn nounwind }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = distinct !{null}
!4 = distinct !{ptr @_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev, null, null}
!5 = distinct !{null, null}
!6 = distinct !{ptr @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev, null, null}
!7 = distinct !{ptr @_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev, null, null}
!8 = distinct !{null, null, null, null, null, ptr @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev, null, null}
!9 = distinct !{!9, !24}
!10 = distinct !{null, null, null, null, null, null, ptr @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev, null, null}
!11 = distinct !{!11, !24}
!12 = distinct !{!12, !24}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"_ZTS8Fraction", !18, i64 0, !18, i64 4}
!22 = !{!21, !18, i64 0}
!23 = !{!21, !18, i64 4}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!18, !18, i64 0}
!26 = !{!"vtable pointer", !16, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"long", !17, i64 0}
!29 = !{!"any pointer", !17, i64 0}
!30 = !{!"p1 omnipotent char", !29, i64 0}
!31 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !30, i64 0}
!32 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !31, i64 0}
!33 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !30, i64 0, !30, i64 8, !32, i64 16}
!34 = !{!"_ZTS9BoxHeader", !28, i64 8, !18, i64 16, !33, i64 24, !18, i64 48}
!35 = !{!34, !28, i64 8}
!36 = !{!34, !18, i64 16}
!37 = !{!33, !30, i64 0}
!38 = !{!33, !30, i64 8}
!39 = !{!30, !30, i64 0}
!40 = !{!17, !17, i64 0}
!41 = !{!"any p2 pointer", !29, i64 0}
!42 = !{!"p1 int", !29, i64 0}
!43 = !{!"p1 long", !29, i64 0}
!44 = !{!"_ZTSNSt3__18ios_baseE", !18, i64 8, !28, i64 16, !28, i64 24, !18, i64 32, !18, i64 36, !29, i64 40, !29, i64 48, !41, i64 56, !42, i64 64, !28, i64 72, !28, i64 80, !43, i64 88, !28, i64 96, !28, i64 104, !41, i64 112, !28, i64 120, !28, i64 128}
!45 = !{!"p1 _ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEEE", !29, i64 0}
!46 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !44, i64 0, !45, i64 136, !18, i64 144}
!47 = !{!46, !45, i64 136}
!48 = !{!46, !18, i64 144}
!49 = !{!"p1 _ZTSNSt3__16locale5__impE", !29, i64 0}
!50 = !{!"_ZTSNSt3__16localeE", !49, i64 0}
!51 = !{!"_ZTSNSt3__115basic_streambufIcNS_11char_traitsIcEEEE", !50, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !30, i64 56}
!52 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !17, i64 0}
!53 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !52, i64 0}
!54 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !53, i64 0}
!55 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !54, i64 0}
!56 = !{!"_ZTSNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !51, i64 0, !55, i64 64, !30, i64 88, !18, i64 96}
!57 = !{!56, !18, i64 96}
!58 = !{!44, !18, i64 8}
!59 = !{!56, !30, i64 88}
!60 = !{!51, !30, i64 48}
!61 = !{!51, !30, i64 32}
!62 = !{!44, !28, i64 24}
!63 = !{!34, !18, i64 48}
!64 = !{!"p1 _ZTS12StreamReader", !29, i64 0}
!65 = !{!"p1 _ZTSNSt3__119__shared_weak_countE", !29, i64 0}
!66 = !{!"_ZTSNSt3__110shared_ptrI12StreamReaderEE", !64, i64 0, !65, i64 8}
!67 = !{!66, !64, i64 0}
!68 = !{!66, !65, i64 8}
!69 = !{!"p1 _ZTS14BitstreamRange", !29, i64 0}
!70 = !{!"bool", !17, i64 0}
!71 = !{!"_ZTS14BitstreamRange", !66, i64 0, !69, i64 16, !18, i64 24, !28, i64 32, !70, i64 40}
!72 = !{!71, !70, i64 40}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{i64 0, i64 24, !40}
!76 = !{!"_ZTS12StreamWriter", !33, i64 0, !28, i64 24}
!77 = !{!76, !28, i64 24}
!78 = !{!"_ZTS15heif_error_code", !17, i64 0}
!79 = !{!"_ZTS18heif_suberror_code", !17, i64 0}
!80 = !{!"_ZTS5Error", !78, i64 0, !79, i64 4, !55, i64 8}
!81 = !{!80, !78, i64 0}
!82 = !{!"p1 _ZTSNSt3__110shared_ptrI3BoxEE", !29, i64 0}
!83 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_10shared_ptrI3BoxEELi0ELb0EEE", !82, i64 0}
!84 = !{!"_ZTSNSt3__117__compressed_pairIPNS_10shared_ptrI3BoxEENS_9allocatorIS3_EEEE", !83, i64 0}
!85 = !{!"_ZTSNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEEE", !82, i64 0, !82, i64 8, !84, i64 16}
!86 = !{!"_ZTS14BoxStorageMode", !17, i64 0}
!87 = !{!"_ZTS3Box", !34, i64 0, !85, i64 56, !86, i64 80, !28, i64 88, !28, i64 96, !33, i64 104, !55, i64 128, !70, i64 152}
!88 = !{!"_ZTS7FullBox", !87, i64 0, !17, i64 153, !18, i64 156}
!89 = !{!88, !17, i64 153}
!90 = !{!88, !18, i64 156}
!91 = !{!71, !28, i64 32}
!92 = !{!71, !69, i64 16}
!93 = !{!"p1 _ZTS3Box", !29, i64 0}
!94 = !{!65, !65, i64 0}
!95 = !{!"p1 _ZTS8Box_idat", !29, i64 0}
!96 = !{!"_ZTSNSt3__110shared_ptrI8Box_idatEE", !95, i64 0, !65, i64 8}
!97 = !{!96, !95, i64 0}
!98 = !{!96, !65, i64 8}
!99 = !{!"p1 _ZTS17Box_EntityToGroup", !29, i64 0}
!100 = !{!"_ZTSNSt3__110shared_ptrI17Box_EntityToGroupEE", !99, i64 0, !65, i64 8}
!101 = !{!100, !65, i64 8}
!102 = !{!"_ZTSNSt3__110shared_ptrI3BoxEE", !93, i64 0, !65, i64 8}
!103 = !{!102, !93, i64 0}
!104 = !{!102, !65, i64 8}
!105 = !{!29, !29, i64 0}
!106 = !{!"_ZTS20parse_error_fatality", !17, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{ptr @_ZN9BoxHeaderD2Ev}
!109 = !{!"_ZTSNSt3__122__compressed_pair_elemIPjLi0ELb0EEE", !42, i64 0}
!110 = !{!"_ZTSNSt3__117__compressed_pairIPjNS_9allocatorIjEEEE", !109, i64 0}
!111 = !{!"_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !42, i64 0, !42, i64 8, !110, i64 16}
!112 = !{!"_ZTS8Box_ftyp", !87, i64 0, !18, i64 156, !18, i64 160, !111, i64 168}
!113 = !{!112, !18, i64 156}
!114 = !{!112, !18, i64 160}
!115 = !{!"p1 _ZTS8Box_ftyp", !29, i64 0}
!116 = !{!"_ZTSNSt3__110shared_ptrI8Box_ftypEE", !115, i64 0, !65, i64 8}
!117 = !{!116, !65, i64 8}
!118 = !{!"p1 _ZTS8Box_free", !29, i64 0}
!119 = !{!"_ZTSNSt3__110shared_ptrI8Box_freeEE", !118, i64 0, !65, i64 8}
!120 = !{!119, !65, i64 8}
!121 = !{!"p1 _ZTS8Box_meta", !29, i64 0}
!122 = !{!"_ZTSNSt3__110shared_ptrI8Box_metaEE", !121, i64 0, !65, i64 8}
!123 = !{!122, !65, i64 8}
!124 = !{!"p1 _ZTS8Box_hdlr", !29, i64 0}
!125 = !{!"_ZTSNSt3__110shared_ptrI8Box_hdlrEE", !124, i64 0, !65, i64 8}
!126 = !{!125, !65, i64 8}
!127 = !{!"_ZTS8Box_pitm", !88, i64 0, !18, i64 160}
!128 = !{!127, !18, i64 160}
!129 = !{!"p1 _ZTS8Box_pitm", !29, i64 0}
!130 = !{!"_ZTSNSt3__110shared_ptrI8Box_pitmEE", !129, i64 0, !65, i64 8}
!131 = !{!130, !65, i64 8}
!132 = !{!"p1 _ZTSN8Box_iloc4ItemE", !29, i64 0}
!133 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN8Box_iloc4ItemELi0ELb0EEE", !132, i64 0}
!134 = !{!"_ZTSNSt3__117__compressed_pairIPN8Box_iloc4ItemENS_9allocatorIS2_EEEE", !133, i64 0}
!135 = !{!"_ZTSNSt3__16vectorIN8Box_iloc4ItemENS_9allocatorIS2_EEEE", !132, i64 0, !132, i64 8, !134, i64 16}
!136 = !{!"_ZTS8Box_iloc", !88, i64 0, !135, i64 160, !28, i64 184, !17, i64 192, !17, i64 193, !17, i64 194, !17, i64 195, !17, i64 196, !18, i64 200, !70, i64 204, !18, i64 208, !17, i64 212}
!137 = !{!136, !18, i64 200}
!138 = !{!136, !18, i64 208}
!139 = !{!136, !70, i64 204}
!140 = !{!"p1 _ZTS8Box_iloc", !29, i64 0}
!141 = !{!"_ZTSNSt3__110shared_ptrI8Box_ilocEE", !140, i64 0, !65, i64 8}
!142 = !{!141, !65, i64 8}
end_hunk_1

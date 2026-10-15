Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/main?download=true
inline.NumInlined: 13087
inline.NumDeleted: 5245
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 90
begin_hunk_0_@main:bb.a
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit27

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit27: ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit.thread, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !818

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26: ; preds = %.loopexit, %.loopexit.split-lp, %bb.s, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.s ], [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.y

bb.u:                                             ; preds = %._crit_edge
  %i.cf = load ptr, ptr %2, align 8, !tbaa !101   ; 5 uses
  %.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !102 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ch, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i ], [ %i.cg, %bb.v ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24 ; 4 uses
  %i.ci = load i8, ptr %i.ch, align 8
  %i.cj = trunc i8 %i.ci to i1
  br i1 %i.cj, label %bb.w, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ck = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !105
  %i.cm = load i64, ptr %i.ch, align 8
  %i.cn = and i64 %i.cm, -2
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cn) #43
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i: ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.cf, %i.ch
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %2, align 8, !tbaa !101
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.v
  %i.co = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.cf, %bb.v ] ; 2 uses
  store ptr %i.cf, ptr %i.m, align 8, !tbaa !102
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !107
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.ct) #43
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit: ; preds = %bb.u, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.ad

bb.x:                                             ; preds = %._crit_edge
  %i.cu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26 ], [ %i.cu, %bb.x ]
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.y ], [ %i.r, %bb.c ] ; 3 uses
  %.317 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 1
  %i.cv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #40
  %i.cw = icmp eq i32 %.317, %i.cv
  br i1 %i.cw, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 0
  %i.cx = call ptr @__cxa_begin_catch(ptr %.3) #40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !109
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call noundef ptr %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx) #40
  store ptr %i.db, ptr %i.a, align 8, !tbaa !104
  invoke void @_ZN4tlog5errorIJPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_(ptr nonnull @.str.4, i64 22, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @__cxa_end_catch()
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.af

bb.ad:                                            ; preds = %bb.ab, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit
  %.0 = phi i32 [ 1, %bb.ab ], [ %i.q, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev.exit ]
  ret i32 %.0

bb.ae:                                            ; preds = %bb.ac, %bb.z
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.z ], [ %i.dc, %bb.ac ]
  resume { ptr, i32 } %.merged

bb.af:                                            ; preds = %bb.ac
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #44
  unreachable
}

declare noundef zeroext i1 @_ZNSt3__18ios_base15sync_with_stdioEb(i1 noundef zeroext) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40 ; 8 uses
  %i.b = icmp ugt i64 %i.a, -9
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %i.a, 23
  br i1 %i.c, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.d = or i64 %i.a, 7                           ; 2 uses
  %i.e = icmp eq i64 %i.d, 23
  %i.f = add nuw i64 %i.d, 1
  %i.g = select i1 %i.e, i64 25, i64 %i.f         ; 2 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #42 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !105
  %i.j = or i64 %i.g, 1
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.k, align 8, !tbaa !105
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %i.a to i8
  %i.m = shl nuw nsw i8 %i.l, 1
  store i8 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %.017.i = phi ptr [ %i.h, %.thread.i ], [ %i.n, %bb.d ] ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm.exit: ; preds = %bb.d, %bb.e
  %.018.i = phi ptr [ %i.n, %bb.d ], [ %.017.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.a
  store i8 0, ptr %i.o, align 1, !tbaa !105
  ret void
}

declare void @_ZN3tev10ensureUtf8ENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8, ptr, i64) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #6 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc noundef range(i32 -6, 1) i32 @_ZN3tevL8mainFuncENSt3__14spanIKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEELm18446744073709551615EEE(ptr %0, i64 %1) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::chrono::duration", align 8 ; 4 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__1::unordered_set.974", align 8 ; 14 uses
  %4 = alloca %"class.std::__1::chrono::time_point", align 8 ; 6 uses
  %5 = alloca %"class.tev::ScopeGuard.1001", align 8 ; 7 uses
  %6 = alloca %"class.std::__1::vector.1004", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"class.std::__1::optional.1011", align 8 ; 12 uses
  %8 = alloca %"class.std::__1::__fs::filesystem::path", align 8 ; 17 uses
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__1::function.1119", align 16 ; 11 uses
  %11 = alloca %"class.tev::Task.1130", align 8   ; 11 uses
  %12 = alloca %class.anon.1133, align 16         ; 16 uses
  %13 = alloca %"class.std::__1::chrono::duration", align 8 ; 4 uses
  %14 = alloca %"class.std::__1::unique_ptr.652", align 8 ; 6 uses
  %15 = alloca %"class.std::__1::unique_ptr.670", align 8 ; 5 uses
  %16 = alloca %"class.std::__1::unique_ptr.652", align 8 ; 6 uses
  %17 = alloca %"class.std::__1::unique_ptr.658", align 8 ; 5 uses
  %18 = alloca %"class.std::__1::__fs::filesystem::file_status", align 8 ; 4 uses
  %19 = alloca %"struct.fmt::v12::detail::format_arg_store.561", align 16 ; 6 uses
  %20 = alloca %"struct.fmt::v12::detail::format_arg_store.561", align 16 ; 6 uses
  %21 = alloca %"struct.fmt::v12::detail::format_arg_store.557", align 16 ; 7 uses
  %22 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 4 uses
  %23 = alloca %"class.std::__1::vector.32", align 8 ; 7 uses
  %24 = alloca [6 x %"class.std::__1::basic_string"], align 8 ; 37 uses
  %25 = alloca %"class.args::ArgumentParser", align 16 ; 55 uses
  %26 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %27 = alloca %"class.args::Flag", align 8       ; 17 uses
  %28 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %29 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %30 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %31 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %32 = alloca %"class.args::ValueFlag", align 8  ; 25 uses
  %33 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %34 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %35 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %36 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 22 uses
  %37 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %38 = alloca %"class.args::Flag", align 8       ; 17 uses
  %39 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %40 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %41 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %42 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %43 = alloca %"class.args::ValueFlag", align 8  ; 21 uses
  %44 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %45 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %46 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %47 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %48 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %49 = alloca %"class.args::Flag", align 8       ; 17 uses
  %50 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %51 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %52 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %53 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %54 = alloca %"class.args::ValueFlag.179", align 8 ; 20 uses
  %55 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %56 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %57 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %58 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %59 = alloca %"class.args::ValueFlag", align 8  ; 19 uses
  %60 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %61 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %62 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %63 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %64 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %65 = alloca %"class.args::ValueFlag.179", align 8 ; 18 uses
  %66 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %67 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %68 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %69 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %70 = alloca %"class.args::ValueFlag", align 8  ; 19 uses
  %71 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %72 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %73 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %74 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %75 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %76 = alloca %"class.args::ValueFlag.179", align 8 ; 20 uses
  %77 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %78 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %79 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %80 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %81 = alloca %"class.args::HelpFlag", align 8   ; 16 uses
  %82 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %83 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %84 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %85 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %86 = alloca %"class.args::Flag", align 8       ; 17 uses
  %87 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %88 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %89 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %90 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %91 = alloca %"class.args::ValueFlag", align 8  ; 19 uses
  %92 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %93 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %94 = alloca %"class.args::Matcher", align 8    ; 7 uses
  %95 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 22 uses
  %96 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %97 = alloca %"class.args::Flag", align 8       ; 19 uses
  %98 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %99 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %100 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %101 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %102 = alloca %"class.args::ValueFlag.181", align 8 ; 18 uses
  %103 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %104 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %105 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %106 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %107 = alloca %"class.args::Flag", align 8      ; 19 uses
  %108 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %109 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %110 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %111 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 22 uses
  %112 = alloca %"class.args::Flag", align 8      ; 17 uses
  %113 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %114 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %115 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %116 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 22 uses
  %117 = alloca %"class.args::ValueFlag", align 8 ; 25 uses
  %118 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %119 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %120 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %121 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %122 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %123 = alloca %"class.args::ValueFlag", align 8 ; 19 uses
  %124 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %125 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %126 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %127 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %128 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %129 = alloca %"class.args::ValueFlag", align 8 ; 19 uses
  %130 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %131 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %132 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %133 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %134 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %135 = alloca %"class.args::Flag", align 8      ; 19 uses
  %136 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %137 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %138 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %139 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %140 = alloca %"class.args::Flag", align 8      ; 19 uses
  %141 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %142 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %143 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %144 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %145 = alloca %"class.args::ValueFlag.179", align 8 ; 20 uses
  %146 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %147 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %148 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %149 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %150 = alloca %"class.args::Flag", align 8      ; 17 uses
  %151 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %152 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %153 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %154 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %155 = alloca %"class.args::ValueFlag", align 8 ; 18 uses
  %156 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %157 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %158 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %159 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %160 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %161 = alloca %"class.args::ValueFlag", align 8 ; 25 uses
  %162 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %163 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %164 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %165 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %166 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %167 = alloca %"class.args::Flag", align 8      ; 17 uses
  %168 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %169 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %170 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %171 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %172 = alloca %"class.args::Flag", align 8      ; 21 uses
  %173 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %174 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %175 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %176 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %177 = alloca %"class.args::Flag", align 8      ; 21 uses
  %178 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %179 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %180 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %181 = alloca [1 x %"struct.args::EitherFlag"], align 8 ; 13 uses
  %182 = alloca %"class.args::Flag", align 8      ; 17 uses
  %183 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %184 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %185 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %186 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %187 = alloca %"class.args::Flag", align 8      ; 17 uses
  %188 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %189 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %190 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %191 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %192 = alloca %"class.args::Flag", align 8      ; 17 uses
  %193 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %194 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %195 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %196 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 18 uses
  %197 = alloca %"class.args::ValueFlag", align 8 ; 18 uses
  %198 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %199 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %200 = alloca %"class.args::Matcher", align 8   ; 7 uses
  %201 = alloca [2 x %"struct.args::EitherFlag"], align 8 ; 22 uses
  %202 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %203 = alloca %"class.args::PositionalList", align 8 ; 12 uses
  %204 = alloca %"class.std::__1::basic_string", align 8 ; 13 uses
  %205 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %206 = alloca %"class.std::__1::vector.32", align 8 ; 10 uses
  %207 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %208 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %209 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %210 = alloca %"class.std::__1::shared_ptr.216", align 16 ; 13 uses
  %211 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %212 = alloca %"class.std::__1::basic_string", align 8 ; 14 uses
end_hunk_0
begin_hunk_1_@_ZN3tevL8mainFuncENSt3__14spanIKNS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEELm18446744073709551615EEE:bb.a
  %i.dhs = load i8, ptr %i.dhn, align 8           ; 2 uses
  %i.dht = trunc i8 %i.dhs to i1                  ; 2 uses
  %i.dhu = load ptr, ptr %i.dho, align 8
  %i.dhv = select i1 %i.dht, ptr %i.dhu, ptr %i.dhp
  %i.dhw = load i64, ptr %i.dhq, align 8
  %i.dhx = lshr i8 %i.dhs, 1
  %i.dhy = zext nneg i8 %i.dhx to i64
  %i.dhz = select i1 %i.dht, i64 %i.dhw, i64 %i.dhy
  %i.dia = load ptr, ptr %i.dhr, align 8, !tbaa !109
  %i.dib = load ptr, ptr %i.dia, align 8
  invoke void %i.dib(ptr noundef nonnull align 8 dereferenceable(8) %i.dhr, ptr %i.dhv, i64 %i.dhz, i32 noundef 2, ptr nonnull @.str.127, i64 53)
          to label %.noexc1943 unwind label %.loopexit.split-lp2162.loopexit, !inline_history !848

.noexc1943:                                       ; preds = %bb.zp
  %i.dic = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i1940, i64 16 ; 2 uses
  %.not.i.i.i1941 = icmp eq ptr %i.dic, %i.dhm
  br i1 %.not.i.i.i1941, label %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.preheader, label %bb.zp

_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.preheader: ; preds = %.noexc1943, %.noexc1942, %bb.zo
  br label %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit: ; preds = %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.preheader, %bb.zs
  %i.did = load ptr, ptr %218, align 8, !tbaa !209
  %i.die = invoke noundef zeroext i1 @_ZNK3tev22BackgroundImagesLoader15hasPendingLoadsEv(ptr noundef nonnull align 8 dereferenceable(300) %i.did)
          to label %bb.zq unwind label %.loopexit2161

bb.zq:                                            ; preds = %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
  br i1 %i.die, label %bb.zr, label %bb.zu

bb.zr:                                            ; preds = %bb.zq
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store i64 1000000, ptr %13, align 8, !tbaa !232
  invoke void @_ZNSt3__111this_thread9sleep_forERKNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEE(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.zs unwind label %bb.zt

bb.zs:                                            ; preds = %bb.zr
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, !llvm.loop !849

.loopexit2161:                                    ; preds = %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
  %lpad.loopexit2163 = landingpad { ptr, i32 }
          cleanup
  br label %.body1957

.loopexit.split-lp2162.loopexit:                  ; preds = %bb.zp
  %lpad.loopexit2165 = landingpad { ptr, i32 }
          cleanup
  br label %.body1957

.loopexit.split-lp2162.loopexit.split-lp:         ; preds = %bb.zn, %bb.act
  %lpad.loopexit.split-lp2166 = landingpad { ptr, i32 }
          cleanup
  br label %.body1957

bb.zt:                                            ; preds = %bb.zr
  %i.dif = landingpad { ptr, i32 }
          cleanup
  br label %.body1957

bb.zu:                                            ; preds = %bb.zq
  %i.dig = load ptr, ptr %117, align 8, !tbaa !109
  %i.dih = getelementptr inbounds nuw i8, ptr %i.dig, i64 16
  %i.dii = load ptr, ptr %i.dih, align 8
  %i.dij = call noundef zeroext i1 %i.dii(ptr noundef nonnull align 8 dereferenceable(40) %117) #40, !inline_history !824
  br i1 %i.dij, label %bb.zv, label %bb.zw

bb.zv:                                            ; preds = %bb.zu
  %i.dik = getelementptr inbounds nuw i8, ptr %117, i64 216
  %i.dil = load i8, ptr %i.dik, align 8           ; 2 uses
  %i.dim = trunc i8 %i.dil to i1                  ; 2 uses
  %i.din = getelementptr inbounds nuw i8, ptr %117, i64 232
  %i.dio = load ptr, ptr %i.din, align 8
  %i.dip = getelementptr inbounds nuw i8, ptr %117, i64 217
  %i.diq = select i1 %i.dim, ptr %i.dio, ptr %i.dip
  %i.dir = getelementptr inbounds nuw i8, ptr %117, i64 224
  %i.dis = load i64, ptr %i.dir, align 8
  %i.dit = lshr i8 %i.dil, 1
  %i.diu = zext nneg i8 %i.dit to i64
  %i.div = select i1 %i.dim, i64 %i.dis, i64 %i.diu
  %i.diw = invoke noundef i32 @_ZN3tev8toMetricENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr %i.diq, i64 %i.div)
          to label %bb.zw unwind label %bb.acp

bb.zw:                                            ; preds = %bb.zu, %bb.zv
  %i.dix = phi i32 [ %i.diw, %bb.zv ], [ 0, %bb.zu ]
  %i.diy = load ptr, ptr %32, align 8, !tbaa !109
  %i.diz = getelementptr inbounds nuw i8, ptr %i.diy, i64 16
  %i.dja = load ptr, ptr %i.diz, align 8
  %i.djb = call noundef zeroext i1 %i.dja(ptr noundef nonnull align 8 dereferenceable(40) %32) #40, !inline_history !824
  br i1 %i.djb, label %bb.zx, label %bb.zz

bb.zx:                                            ; preds = %bb.zw
  %i.djc = getelementptr inbounds nuw i8, ptr %32, i64 216
  %i.djd = load i8, ptr %i.djc, align 8           ; 2 uses
  %i.dje = trunc i8 %i.djd to i1                  ; 2 uses
  %i.djf = getelementptr inbounds nuw i8, ptr %32, i64 232
  %i.djg = load ptr, ptr %i.djf, align 8
  %i.djh = getelementptr inbounds nuw i8, ptr %32, i64 217
  %i.dji = select i1 %i.dje, ptr %i.djg, ptr %i.djh
  %i.djj = getelementptr inbounds nuw i8, ptr %32, i64 224
  %i.djk = load i64, ptr %i.djj, align 8
  %i.djl = lshr i8 %i.djd, 1
  %i.djm = zext nneg i8 %i.djl to i64
  %i.djn = select i1 %i.dje, i64 %i.djk, i64 %i.djm
  %i.djo = invoke { <2 x float>, <2 x float> } @_ZN3tev10parseColorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr %i.dji, i64 %i.djn)
          to label %bb.zy unwind label %bb.acq    ; 2 uses

bb.zy:                                            ; preds = %bb.zx
  %i.djp = extractvalue { <2 x float>, <2 x float> } %i.djo, 0
  %i.djq = extractvalue { <2 x float>, <2 x float> } %i.djo, 1
  br label %bb.zz

bb.zz:                                            ; preds = %bb.zw, %bb.zy
  %.sroa.62056.0 = phi <2 x float> [ %i.djq, %bb.zy ], [ zeroinitializer, %bb.zw ]
  %.sroa.02055.0 = phi <2 x float> [ %i.djp, %bb.zy ], [ zeroinitializer, %bb.zw ]
  %i.djr = load ptr, ptr %161, align 8, !tbaa !109
  %i.djs = getelementptr inbounds nuw i8, ptr %i.djr, i64 16
  %i.djt = load ptr, ptr %i.djs, align 8
  %i.dju = call noundef zeroext i1 %i.djt(ptr noundef nonnull align 8 dereferenceable(40) %161) #40, !inline_history !824
  br i1 %i.dju, label %bb.aaa, label %bb.aab

bb.aaa:                                           ; preds = %bb.zz
  %i.djv = getelementptr inbounds nuw i8, ptr %161, i64 216
  %i.djw = load i8, ptr %i.djv, align 8           ; 2 uses
  %i.djx = trunc i8 %i.djw to i1                  ; 2 uses
  %i.djy = getelementptr inbounds nuw i8, ptr %161, i64 232
  %i.djz = load ptr, ptr %i.djy, align 8
  %i.dka = getelementptr inbounds nuw i8, ptr %161, i64 217
  %i.dkb = select i1 %i.djx, ptr %i.djz, ptr %i.dka
  %i.dkc = getelementptr inbounds nuw i8, ptr %161, i64 224
  %i.dkd = load i64, ptr %i.dkc, align 8
  %i.dke = lshr i8 %i.djw, 1
  %i.dkf = zext nneg i8 %i.dke to i64
  %i.dkg = select i1 %i.djx, i64 %i.dkd, i64 %i.dkf
  %i.dkh = invoke noundef i32 @_ZN3tev9toTonemapENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr %i.dkb, i64 %i.dkg)
          to label %bb.aab unwind label %bb.acr

bb.aab:                                           ; preds = %bb.zz, %bb.aaa
  %i.dki = phi i32 [ %i.dkh, %bb.aaa ], [ 0, %bb.zz ]
  %i.dkj = load ptr, ptr %76, align 8, !tbaa !109
  %i.dkk = getelementptr inbounds nuw i8, ptr %i.dkj, i64 16
  %i.dkl = load ptr, ptr %i.dkk, align 8
  %i.dkm = call noundef zeroext i1 %i.dkl(ptr noundef nonnull align 8 dereferenceable(40) %76) #40, !inline_history !824
  %i.dkn = load float, ptr %i.pn, align 8
  %i.dko = select i1 %i.dkm, float %i.dkn, float 2.200000e+00
  %i.dkp = load ptr, ptr %54, align 8, !tbaa !109
  %i.dkq = getelementptr inbounds nuw i8, ptr %i.dkp, i64 16
  %i.dkr = load ptr, ptr %i.dkq, align 8
  %i.dks = call noundef zeroext i1 %i.dkr(ptr noundef nonnull align 8 dereferenceable(40) %54) #40, !inline_history !824
  %i.dkt = load float, ptr %i.jx, align 8
  %i.dku = select i1 %i.dks, float %i.dkt, float 0.000000e+00
  %i.dkv = load ptr, ptr %145, align 8, !tbaa !109
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.dkv, i64 16
  %i.dkx = load ptr, ptr %i.dkw, align 8
  %i.dky = call noundef zeroext i1 %i.dkx(ptr noundef nonnull align 8 dereferenceable(40) %145) #40, !inline_history !824
  %i.dkz = load float, ptr %i.ahv, align 8
  %i.dla = select i1 %i.dky, float %i.dkz, float 0.000000e+00
  %i.dlb = getelementptr inbounds nuw i8, ptr %43, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.dlc = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %i.dlc, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.dld = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #40
  store i64 %i.dld, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr %3, ptr %5, align 8, !tbaa !882
  %.sroa.4101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %.sroa.4101.0..sroa_idx.i, align 8, !tbaa !883
  %i.dle = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.dle, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  store i64 0, ptr %i.c, align 8, !tbaa !138
  %i.dlf = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.dlg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dlh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dli = getelementptr inbounds nuw i8, ptr %43, i64 232
  %i.dlj = getelementptr inbounds nuw i8, ptr %43, i64 217
  %i.dlk = getelementptr inbounds nuw i8, ptr %43, i64 224
  %i.dll = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.dlm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dln = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.dlo = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.dlp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dlq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dlr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.dls = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.dlt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dlu = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.dlv = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.dlw = getelementptr inbounds nuw i8, ptr %12, i64 60
  %i.dlx = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.dly = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.dlz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.dma = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dmb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dmc = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dmd = getelementptr inbounds nuw i8, ptr %12, i64 32
  %.sroa.62056.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 52
  %i.dme = insertelement <2 x float> poison, float %i.dko, i64 0
  %234 = insertelement <2 x float> %i.dme, float %i.dku, i64 1
  br label %bb.aac

bb.aac:                                           ; preds = %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i, %bb.aab
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.dmf = load ptr, ptr %218, align 8, !tbaa !209
  invoke void @_ZN3tev22BackgroundImagesLoader6tryPopEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional.1011") align 8 %7, ptr noundef nonnull align 8 dereferenceable(300) %i.dmf)
          to label %bb.aad unwind label %bb.aae

bb.aad:                                           ; preds = %bb.aac
  %i.dmg = load i8, ptr %i.dlf, align 8, !tbaa !241, !range !92, !noundef !93
  %i.dmh = trunc nuw i8 %i.dmg to i1
  br i1 %i.dmh, label %bb.aaf, label %bb.ace

bb.aae:                                           ; preds = %bb.aac
  %i.dmi = landingpad { ptr, i32 }
          cleanup
  br label %bb.acd

bb.aaf:                                           ; preds = %bb.aad
  %i.dmj = load i8, ptr %i.dlg, align 8, !tbaa !246, !range !92, !noundef !93
  %i.dmk = trunc nuw i8 %i.dmj to i1
  br i1 %i.dmk, label %bb.aaj, label %bb.aag

bb.aag:                                           ; preds = %bb.aaf
  %i.dml = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.aag
  %i.dmm = load ptr, ptr %i.dml, align 8, !tbaa !122 ; 7 uses
  %i.dmn = load i32, ptr %i.dmm, align 8, !tbaa !130
  %i.dmo = and i32 %i.dmn, 16
  %.not.i.i.i1951 = icmp eq i32 %i.dmo, 0
  br i1 %.not.i.i.i1951, label %bb.aah, label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i

bb.aah:                                           ; preds = %.noexc.i
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmm, i64 8
  %i.dmq = load ptr, ptr %i.dmp, align 8, !tbaa !131 ; 2 uses
  %i.dmr = getelementptr inbounds nuw i8, ptr %i.dmm, i64 16
  %i.dms = load ptr, ptr %i.dmr, align 8, !tbaa !132 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.dmq, %i.dms
  br i1 %.not12.i.i.i.i, label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i, label %.lr.ph.i.i.i.i1952

.lr.ph.i.i.i.i1952:                               ; preds = %bb.aah
  %i.dmt = getelementptr inbounds nuw i8, ptr %i.dmm, i64 32
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.dmm, i64 48
  %i.dmv = getelementptr inbounds nuw i8, ptr %i.dmm, i64 33
  %i.dmw = getelementptr inbounds nuw i8, ptr %i.dmm, i64 40
  br label %bb.aai

bb.aai:                                           ; preds = %.noexc59.i, %.lr.ph.i.i.i.i1952
  %.sroa.09.013.i.i.i.i = phi ptr [ %i.dmq, %.lr.ph.i.i.i.i1952 ], [ %i.dni, %.noexc59.i ] ; 2 uses
  %i.dmx = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !136 ; 2 uses
  %i.dmy = load i8, ptr %i.dmt, align 8           ; 2 uses
  %i.dmz = trunc i8 %i.dmy to i1                  ; 2 uses
  %i.dna = load ptr, ptr %i.dmu, align 8
  %i.dnb = select i1 %i.dmz, ptr %i.dna, ptr %i.dmv
  %i.dnc = load i64, ptr %i.dmw, align 8
  %i.dnd = lshr i8 %i.dmy, 1
  %i.dne = zext nneg i8 %i.dnd to i64
  %i.dnf = select i1 %i.dmz, i64 %i.dnc, i64 %i.dne
  %i.dng = load ptr, ptr %i.dmx, align 8, !tbaa !109
  %i.dnh = load ptr, ptr %i.dng, align 8
  invoke void %i.dnh(ptr noundef nonnull align 8 dereferenceable(8) %i.dmx, ptr %i.dnb, i64 %i.dnf, i32 noundef 16, ptr nonnull @.str.257, i64 33)
          to label %.noexc59.i unwind label %.loopexit.split-lp.loopexit.i, !inline_history !862

.noexc59.i:                                       ; preds = %bb.aai
  %i.dni = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i1953 = icmp eq ptr %i.dni, %i.dms
  br i1 %.not.i.i.i.i1953, label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i, label %bb.aai

.loopexit.i:                                      ; preds = %bb.aam
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.aai
  %lpad.loopexit102.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.aak, %bb.aag
  %lpad.loopexit.split-lp103.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.aaj:                                           ; preds = %bb.aaf
  %i.dnj = load ptr, ptr %7, align 8, !tbaa !251  ; 8 uses
  %i.dnk = load ptr, ptr %i.dlh, align 8, !tbaa !252
  %i.dnl = icmp eq ptr %i.dnj, %i.dnk
  br i1 %i.dnl, label %bb.aak, label %bb.aan

bb.aak:                                           ; preds = %bb.aaj
  %i.dnm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc65.i:                                       ; preds = %bb.aak
  %i.dnn = load ptr, ptr %i.dnm, align 8, !tbaa !122 ; 7 uses
  %i.dno = load i32, ptr %i.dnn, align 8, !tbaa !130
  %i.dnp = and i32 %i.dno, 16
  %.not.i.i60.i = icmp eq i32 %i.dnp, 0
  br i1 %.not.i.i60.i, label %bb.aal, label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i

bb.aal:                                           ; preds = %.noexc65.i
  %i.dnq = getelementptr inbounds nuw i8, ptr %i.dnn, i64 8
  %i.dnr = load ptr, ptr %i.dnq, align 8, !tbaa !131 ; 2 uses
  %i.dns = getelementptr inbounds nuw i8, ptr %i.dnn, i64 16
  %i.dnt = load ptr, ptr %i.dns, align 8, !tbaa !132 ; 2 uses
  %.not12.i.i.i61.i = icmp eq ptr %i.dnr, %i.dnt
  br i1 %.not12.i.i.i61.i, label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i, label %.lr.ph.i.i.i62.i

.lr.ph.i.i.i62.i:                                 ; preds = %bb.aal
  %i.dnu = getelementptr inbounds nuw i8, ptr %i.dnn, i64 32
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.dnn, i64 48
  %i.dnw = getelementptr inbounds nuw i8, ptr %i.dnn, i64 33
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dnn, i64 40
  br label %bb.aam

bb.aam:                                           ; preds = %.noexc66.i, %.lr.ph.i.i.i62.i
  %.sroa.09.013.i.i.i63.i = phi ptr [ %i.dnr, %.lr.ph.i.i.i62.i ], [ %i.doj, %.noexc66.i ] ; 2 uses
  %i.dny = load ptr, ptr %.sroa.09.013.i.i.i63.i, align 8, !tbaa !136 ; 2 uses
  %i.dnz = load i8, ptr %i.dnu, align 8           ; 2 uses
  %i.doa = trunc i8 %i.dnz to i1                  ; 2 uses
  %i.dob = load ptr, ptr %i.dnv, align 8
  %i.doc = select i1 %i.doa, ptr %i.dob, ptr %i.dnw
  %i.dod = load i64, ptr %i.dnx, align 8
  %i.doe = lshr i8 %i.dnz, 1
  %i.dof = zext nneg i8 %i.doe to i64
  %i.dog = select i1 %i.doa, i64 %i.dod, i64 %i.dof
  %i.doh = load ptr, ptr %i.dny, align 8, !tbaa !109
  %i.doi = load ptr, ptr %i.doh, align 8
  invoke void %i.doi(ptr noundef nonnull align 8 dereferenceable(8) %i.dny, ptr %i.doc, i64 %i.dog, i32 noundef 16, ptr nonnull @.str.258, i64 39)
          to label %.noexc66.i unwind label %.loopexit.i, !inline_history !862

.noexc66.i:                                       ; preds = %bb.aam
  %i.doj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i63.i, i64 16 ; 2 uses
  %.not.i.i.i64.i = icmp eq ptr %i.doj, %i.dnt
  br i1 %.not.i.i.i64.i, label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i, label %bb.aam

bb.aan:                                           ; preds = %bb.aaj
  %i.dok = load ptr, ptr %i.dnj, align 8, !tbaa !253 ; 3 uses
  %i.dol = getelementptr inbounds nuw i8, ptr %i.dok, i64 416
  %i.dom = load ptr, ptr %i.dol, align 8, !tbaa !258
  %i.don = getelementptr inbounds nuw i8, ptr %i.dok, i64 424
  %i.doo = load ptr, ptr %i.don, align 8, !tbaa !884
  %i.dop = icmp eq ptr %i.doo, %i.dom
  br i1 %i.dop, label %bb.aao, label %bb.aaq

bb.aao:                                           ; preds = %bb.aan
  %i.doq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc68.i unwind label %bb.aap

.noexc68.i:                                       ; preds = %bb.aao
  %i.dor = getelementptr inbounds nuw i8, ptr %i.dok, i64 8
  %i.dos = load ptr, ptr %i.doq, align 8, !tbaa !122
  invoke void @_ZN4tlog6Logger3logIJRKNSt3__14__fs10filesystem4pathEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(56) %i.dos, i32 noundef 16, ptr nonnull @.str.259, i64 46, ptr noundef nonnull align 8 dereferenceable(24) %i.dor)
          to label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i unwind label %bb.aap

bb.aap:                                           ; preds = %.noexc68.i, %bb.aao
  %i.dot = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.aaq:                                           ; preds = %bb.aan
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.dou = load i8, ptr %i.dlb, align 8           ; 2 uses
  %i.dov = trunc i8 %i.dou to i1                  ; 2 uses
  %i.dow = load ptr, ptr %i.dli, align 8
  %i.dox = select i1 %i.dov, ptr %i.dow, ptr %i.dlj
  %i.doy = load i64, ptr %i.dlk, align 8
  %i.doz = lshr i8 %i.dou, 1
  %i.dpa = zext nneg i8 %i.doz to i64
  %i.dpb = select i1 %i.dov, i64 %i.doy, i64 %i.dpa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tevL9convertToERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS2_7EMetricERKN7nanogui5ColorENS2_8ETonemapEfffE3$_2NS6_ISM_EEFS8_NS_17basic_string_viewIcS5_EEEEE", i64 16), ptr %10, align 16, !tbaa !109
  store ptr %i.dnj, ptr %i.dlm, align 8, !tbaa !259
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx.i.i, align 16, !tbaa !261
  store ptr %10, ptr %i.dll, align 16, !tbaa !887
  invoke void @_ZN3tev15substituteCurlyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEERKNS0_8functionIFNS0_12basic_stringIcS3_NS0_9allocatorIcEEEES4_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %9, ptr %i.dox, i64 %i.dpb, ptr noundef nonnull align 16 dereferenceable(48) %10)
          to label %bb.aar unwind label %bb.aax

bb.aar:                                           ; preds = %bb.aaq
  %i.dpc = load i8, ptr %9, align 8               ; 2 uses
  %i.dpd = trunc i8 %i.dpc to i1                  ; 2 uses
  %i.dpe = load ptr, ptr %i.dln, align 8
  %i.dpf = select i1 %i.dpd, ptr %i.dpe, ptr %i.dlo
  %i.dpg = load i64, ptr %i.dlp, align 8
  %i.dph = lshr i8 %i.dpc, 1
  %i.dpi = zext nneg i8 %i.dph to i64
  %i.dpj = select i1 %i.dpd, i64 %i.dpg, i64 %i.dpi
  invoke void @_ZN3tev6toPathENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::path") align 8 %8, ptr %i.dpf, i64 %i.dpj)
          to label %bb.aas unwind label %bb.aay

bb.aas:                                           ; preds = %bb.aar
  %i.dpk = load i8, ptr %9, align 8
  %i.dpl = trunc i8 %i.dpk to i1
  br i1 %i.dpl, label %bb.aat, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

bb.aat:                                           ; preds = %bb.aas
  %i.dpm = load ptr, ptr %i.dln, align 8, !tbaa !105
  %i.dpn = load i64, ptr %9, align 8
  %i.dpo = and i64 %i.dpn, -2
  call void @_ZdlPvm(ptr noundef %i.dpm, i64 noundef %i.dpo) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i: ; preds = %bb.aat, %bb.aas
  %i.dpp = load ptr, ptr %i.dll, align 16, !tbaa !887 ; 4 uses
  %i.dpq = icmp eq ptr %i.dpp, %10
  br i1 %i.dpq, label %.sink.split.i.i.i, label %bb.aau

bb.aau:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i
  %.not.i.i74.i = icmp eq ptr %i.dpp, null
  br i1 %.not.i.i74.i, label %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.aau, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i
  %.sink2.i.i.i = phi i64 [ 32, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i ], [ 40, %bb.aau ]
  %i.dpr = load ptr, ptr %i.dpp, align 8, !tbaa !109
  %i.dps = getelementptr inbounds nuw i8, ptr %i.dpr, i64 %.sink2.i.i.i
  %i.dpt = load ptr, ptr %i.dps, align 8
  call void %i.dpt(ptr noundef nonnull align 8 dereferenceable(8) %i.dpp) #40, !inline_history !850
  br label %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit.i

_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit.i: ; preds = %.sink.split.i.i.i, %bb.aau
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  %i.dpu = invoke ptr @_ZNSt3__112__hash_tableINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE4findIS3_EENS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEERKT_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.aav unwind label %bb.abb

bb.aav:                                           ; preds = %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit.i
  %.not.i1955 = icmp eq ptr %i.dpu, null
  br i1 %.not.i1955, label %bb.abd, label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav
  %i.dpv = load ptr, ptr %i.dnj, align 8, !tbaa !253
  %i.dpw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc76.i unwind label %bb.abc

.noexc76.i:                                       ; preds = %bb.aaw
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.dpv, i64 8
  %i.dpy = load ptr, ptr %i.dpw, align 8, !tbaa !122
  invoke void @_ZN4tlog6Logger3logIJRKNSt3__14__fs10filesystem4pathES7_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(56) %i.dpy, i32 noundef 2, ptr nonnull @.str.260, i64 67, ptr noundef nonnull align 8 dereferenceable(24) %i.dpx, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZN4tlog4infoIJRKNSt3__14__fs10filesystem4pathES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit.i unwind label %bb.abc

bb.aax:                                           ; preds = %bb.aaq
  %i.dpz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i

bb.aay:                                           ; preds = %bb.aar
  %i.dqa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dqb = load i8, ptr %9, align 8
  %i.dqc = trunc i8 %i.dqb to i1
  br i1 %i.dqc, label %bb.aaz, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i

bb.aaz:                                           ; preds = %bb.aay
  %i.dqd = load ptr, ptr %i.dln, align 8, !tbaa !105
  %i.dqe = load i64, ptr %9, align 8
  %i.dqf = and i64 %i.dqe, -2
  call void @_ZdlPvm(ptr noundef %i.dqd, i64 noundef %i.dqf) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i: ; preds = %bb.aaz, %bb.aay, %bb.aax
  %.pn.i1954 = phi { ptr, i32 } [ %i.dpz, %bb.aax ], [ %i.dqa, %bb.aay ], [ %i.dqa, %bb.aaz ]
  %i.dqg = load ptr, ptr %i.dll, align 16, !tbaa !887 ; 4 uses
  %i.dqh = icmp eq ptr %i.dqg, %10
  br i1 %i.dqh, label %.sink.split.i.i80.i, label %bb.aba

bb.aba:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i
  %.not.i.i79.i = icmp eq ptr %i.dqg, null
  br i1 %.not.i.i79.i, label %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit82.i, label %.sink.split.i.i80.i

.sink.split.i.i80.i:                              ; preds = %bb.aba, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i
  %.sink2.i.i81.i = phi i64 [ 32, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i ], [ 40, %bb.aba ]
  %i.dqi = load ptr, ptr %i.dqg, align 8, !tbaa !109
  %i.dqj = getelementptr inbounds nuw i8, ptr %i.dqi, i64 %.sink2.i.i81.i
  %i.dqk = load ptr, ptr %i.dqj, align 8
  call void %i.dqk(ptr noundef nonnull align 8 dereferenceable(8) %i.dqg) #40, !inline_history !850
  br label %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit82.i

_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit82.i: ; preds = %.sink.split.i.i80.i, %bb.aba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit90.i

bb.abb:                                           ; preds = %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit.i
  %i.dql = landingpad { ptr, i32 }
          cleanup
  br label %bb.acb

bb.abc:                                           ; preds = %.noexc84.i, %bb.abf, %bb.abd, %.noexc76.i, %bb.aaw
  %i.dqm = landingpad { ptr, i32 }
          cleanup
  br label %bb.acb

bb.abd:                                           ; preds = %bb.aav
  %i.dqn = invoke { ptr, i8 } @_ZNSt3__112__hash_tableINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE25__emplace_unique_key_argsIS3_JRKS3_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZNSt3__113unordered_setINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE6insertB8ne180100ERKS3_.exit.i unwind label %bb.abc ; 0 uses

_ZNSt3__113unordered_setINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE6insertB8ne180100ERKS3_.exit.i: ; preds = %bb.abd
  %i.dqo = load ptr, ptr %i.dnj, align 8, !tbaa !253 ; 4 uses
  %i.dqp = getelementptr inbounds nuw i8, ptr %i.dqo, i64 8
  %i.dqq = load i8, ptr %i.dqp, align 8           ; 2 uses
  %i.dqr = trunc i8 %i.dqq to i1                  ; 2 uses
  %i.dqs = getelementptr inbounds nuw i8, ptr %i.dqo, i64 24
  %i.dqt = load ptr, ptr %i.dqs, align 8
  %i.dqu = getelementptr inbounds nuw i8, ptr %i.dqo, i64 9
  %i.dqv = select i1 %i.dqr, ptr %i.dqt, ptr %i.dqu
  %i.dqw = getelementptr inbounds nuw i8, ptr %i.dqo, i64 16
  %i.dqx = load i64, ptr %i.dqw, align 8
  %i.dqy = lshr i8 %i.dqq, 1
  %i.dqz = zext nneg i8 %i.dqy to i64
  %i.dra = select i1 %i.dqr, i64 %i.dqx, i64 %i.dqz
  %i.drb = invoke noundef i32 @_ZNKSt3__14__fs10filesystem4path9__compareENS_17basic_string_viewIcNS_11char_traitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.dqv, i64 %i.dra)
          to label %_ZNSt3__14__fs10filesystemeqB8ne180100ERKNS1_4pathES4_.exit.i unwind label %bb.abe

bb.abe:                                           ; preds = %_ZNSt3__113unordered_setINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE6insertB8ne180100ERKS3_.exit.i
  %i.drc = landingpad { ptr, i32 }
          catch ptr null
  %i.drd = extractvalue { ptr, i32 } %i.drc, 0
  call void @__clang_call_terminate(ptr %i.drd) #44
  unreachable

_ZNSt3__14__fs10filesystemeqB8ne180100ERKNS1_4pathES4_.exit.i: ; preds = %_ZNSt3__113unordered_setINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE6insertB8ne180100ERKS3_.exit.i
  %i.dre = icmp eq i32 %i.drb, 0
  br i1 %i.dre, label %bb.abf, label %bb.abg

bb.abf:                                           ; preds = %_ZNSt3__14__fs10filesystemeqB8ne180100ERKNS1_4pathES4_.exit.i
  %i.drf = load ptr, ptr %i.dnj, align 8, !tbaa !253
  %i.drg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc84.i unwind label %bb.abc

.noexc84.i:                                       ; preds = %bb.abf
  %i.drh = getelementptr inbounds nuw i8, ptr %i.drf, i64 8
  %i.dri = load ptr, ptr %i.drg, align 8, !tbaa !122
  invoke void @_ZN4tlog6Logger3logIJRKNSt3__14__fs10filesystem4pathEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(56) %i.dri, i32 noundef 2, ptr nonnull @.str.261, i64 35, ptr noundef nonnull align 8 dereferenceable(24) %i.drh)
          to label %_ZN4tlog4infoIJRKNSt3__14__fs10filesystem4pathES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit.i unwind label %bb.abc

bb.abg:                                           ; preds = %_ZNSt3__14__fs10filesystemeqB8ne180100ERKNS1_4pathES4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  %i.drj = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.drk = icmp eq i8 %i.drj, 0
  br i1 %i.drk, label %bb.abh, label %_ZN3tev10ThreadPool6globalEv.exit.i, !prof !110

bb.abh:                                           ; preds = %bb.abg
  %i.drl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #40
  %.not.i.i1956 = icmp eq i32 %i.drl, 0
  br i1 %.not.i.i1956, label %_ZN3tev10ThreadPool6globalEv.exit.i, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.abj unwind label %bb.abk

bb.abj:                                           ; preds = %bb.abi
  %i.drm = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #40
  br label %_ZN3tev10ThreadPool6globalEv.exit.i

bb.abk:                                           ; preds = %bb.abi
  %i.drn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #40
  br label %.body.i

_ZN3tev10ThreadPool6globalEv.exit.i:              ; preds = %bb.abj, %bb.abh, %bb.abg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  %i.dro = getelementptr inbounds nuw i8, ptr %i.dnj, i64 8
  %i.drp = load ptr, ptr %i.dro, align 8, !tbaa !231 ; 2 uses
  %i.drq = load <2 x ptr>, ptr %i.dnj, align 8, !tbaa !263
  store <2 x ptr> %i.drq, ptr %12, align 16, !tbaa !263
  %.not.i86.i = icmp eq ptr %i.drp, null
  br i1 %.not.i86.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i, label %bb.abl

bb.abl:                                           ; preds = %_ZN3tev10ThreadPool6globalEv.exit.i
  %i.drr = getelementptr inbounds nuw i8, ptr %i.drp, i64 8
  %i.drs = atomicrmw add ptr %i.drr, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i: ; preds = %bb.abl, %_ZN3tev10ThreadPool6globalEv.exit.i
  %i.drt = load i8, ptr %8, align 8
  %i.dru = trunc i8 %i.drt to i1
  br i1 %i.dru, label %bb.abn, label %bb.abm

bb.abm:                                           ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dlr, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !111
  br label %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i

bb.abn:                                           ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.drv = load ptr, ptr %i.dls, align 8, !tbaa !105
  %i.drw = load i64, ptr %i.dlt, align 8, !tbaa !105
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.dlr, ptr noundef %i.drv, i64 noundef %i.drw)
          to label %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i unwind label %bb.abw

_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i: ; preds = %bb.abn, %bb.abm
  store i32 %i.dix, ptr %i.dlu, align 8, !tbaa !269
  store <2 x float> %.sroa.02055.0, ptr %i.dlv, align 4
  store <2 x float> %.sroa.62056.0, ptr %.sroa.62056.0..sroa_idx, align 4
  store i32 %i.dki, ptr %i.dlw, align 4, !tbaa !270
  store <2 x float> %234, ptr %i.dlx, align 16, !tbaa !91
  store float %i.dla, ptr %i.dly, align 8, !tbaa !271
  invoke fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.1130") align 8 %11, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, ptr noundef nonnull align 8 dereferenceable(76) %12, i32 noundef 2147483647)
          to label %bb.abo unwind label %bb.abx

bb.abo:                                           ; preds = %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i
  %i.drx = load ptr, ptr %i.dlz, align 8, !tbaa !276 ; 6 uses
  %i.dry = load ptr, ptr %i.dma, align 8, !tbaa !277
  %i.drz = icmp ult ptr %i.drx, %i.dry
  br i1 %i.drz, label %bb.abp, label %bb.abq

bb.abp:                                           ; preds = %bb.abo
  %i.dsa = getelementptr inbounds nuw i8, ptr %i.drx, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.drx, i8 0, i64 32, i1 false)
  %i.dsb = load i64, ptr %11, align 8, !tbaa !263
  store i64 %i.dsb, ptr %i.drx, align 8, !tbaa !263
  %i.dsc = load <2 x ptr>, ptr %i.dmb, align 8, !tbaa !263
  store <2 x ptr> %i.dsc, ptr %i.dsa, align 8, !tbaa !263
  %i.dsd = getelementptr inbounds nuw i8, ptr %i.drx, i64 24
  %i.dse = load ptr, ptr %i.dmc, align 8, !tbaa !278
  store ptr %i.dse, ptr %i.dsd, align 8, !tbaa !278
  store <4 x ptr> splat (ptr null), ptr %11, align 8, !tbaa !263
  %i.dsf = getelementptr inbounds nuw i8, ptr %i.drx, i64 32
  br label %bb.abr

bb.abq:                                           ; preds = %bb.abo
  %i.dsg = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.abr unwind label %bb.aby

bb.abr:                                           ; preds = %bb.abq, %bb.abp
  %.0.i.i = phi ptr [ %i.dsf, %bb.abp ], [ %i.dsg, %bb.abq ]
  store ptr %.0.i.i, ptr %i.dlz, align 8, !tbaa !276
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #40
  %i.dsh = load i8, ptr %i.dlr, align 16
  %i.dsi = trunc i8 %i.dsh to i1
  br i1 %i.dsi, label %bb.abs, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i.i

bb.abs:                                           ; preds = %bb.abr
  %i.dsj = load ptr, ptr %i.dmd, align 16, !tbaa !105
  %i.dsk = load i64, ptr %i.dlr, align 16
  %i.dsl = and i64 %i.dsk, -2
  call void @_ZdlPvm(ptr noundef %i.dsj, i64 noundef %i.dsl) #43
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i.i

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i.i: ; preds = %bb.abs, %bb.abr
  %i.dsm = load ptr, ptr %i.dlq, align 8, !tbaa !231 ; 5 uses
  %.not.i.i89.i = icmp eq ptr %i.dsm, null
  br i1 %.not.i.i89.i, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit.i", label %bb.abt

bb.abt:                                           ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i.i
  %i.dsn = getelementptr inbounds nuw i8, ptr %i.dsm, i64 8
  %i.dso = atomicrmw add ptr %i.dsn, i64 -1 acq_rel, align 8
  %i.dsp = icmp eq i64 %i.dso, 0
  br i1 %i.dsp, label %bb.abu, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit.i"

bb.abu:                                           ; preds = %bb.abt
  %i.dsq = load ptr, ptr %i.dsm, align 8, !tbaa !109
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.dsq, i64 16
  %i.dss = load ptr, ptr %i.dsr, align 8
  call void %i.dss(ptr noundef nonnull align 8 dereferenceable(24) %i.dsm) #40, !inline_history !851
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dsm) #40
  br label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit.i"

"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit.i": ; preds = %bb.abu, %bb.abt, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %_ZN4tlog4infoIJRKNSt3__14__fs10filesystem4pathES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit.i

_ZN4tlog4infoIJRKNSt3__14__fs10filesystem4pathES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit.i: ; preds = %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit.i", %.noexc84.i, %.noexc76.i
  %i.dst = load i8, ptr %8, align 8
  %i.dsu = trunc i8 %i.dst to i1
  br i1 %i.dsu, label %bb.abv, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

bb.abv:                                           ; preds = %_ZN4tlog4infoIJRKNSt3__14__fs10filesystem4pathES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit.i
  %i.dsv = load ptr, ptr %i.dls, align 8, !tbaa !105
  %i.dsw = load i64, ptr %8, align 8
  %i.dsx = and i64 %i.dsw, -2
  call void @_ZdlPvm(ptr noundef %i.dsv, i64 noundef %i.dsx) #43
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i: ; preds = %bb.abv, %_ZN4tlog4infoIJRKNSt3__14__fs10filesystem4pathES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i

_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i: ; preds = %.noexc59.i, %.noexc66.i, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i, %.noexc68.i, %bb.aal, %.noexc65.i, %bb.aah, %.noexc.i
  %i.dsy = load i64, ptr %i.c, align 8, !tbaa !138
  %i.dsz = add i64 %i.dsy, 1
  store i64 %i.dsz, ptr %i.c, align 8, !tbaa !138
  call void @_ZNSt3__124__optional_destruct_baseIN3tev13ImageAdditionELb0EED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.aac, !llvm.loop !852

bb.abw:                                           ; preds = %bb.abn
  %i.dta = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #40
  br label %bb.aca

bb.abx:                                           ; preds = %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i
  %i.dtb = landingpad { ptr, i32 }
          cleanup
  br label %bb.abz

bb.aby:                                           ; preds = %bb.abq
  %i.dtc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #40
  br label %bb.abz

bb.abz:                                           ; preds = %bb.aby, %bb.abx
  %.pn45.i = phi { ptr, i32 } [ %i.dtc, %bb.aby ], [ %i.dtb, %bb.abx ]
  call fastcc void @"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev"(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %12) #40
  br label %bb.aca

bb.aca:                                           ; preds = %bb.abz, %bb.abw
  %.pn45.pn.i = phi { ptr, i32 } [ %.pn45.i, %bb.abz ], [ %i.dta, %bb.abw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %.body.i

.body.i:                                          ; preds = %bb.aca, %bb.abk
  %.pn45.pn.pn.i = phi { ptr, i32 } [ %.pn45.pn.i, %bb.aca ], [ %i.drn, %bb.abk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.acb

bb.acb:                                           ; preds = %.body.i, %bb.abc, %bb.abb
  %.pn49.i = phi { ptr, i32 } [ %i.dqm, %bb.abc ], [ %.pn45.pn.pn.i, %.body.i ], [ %i.dql, %bb.abb ] ; 2 uses
  %i.dtd = load i8, ptr %8, align 8
  %i.dte = trunc i8 %i.dtd to i1
  br i1 %i.dte, label %bb.acc, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit90.i

bb.acc:                                           ; preds = %bb.acb
  %i.dtf = load ptr, ptr %i.dls, align 8, !tbaa !105
  %i.dtg = load i64, ptr %8, align 8
  %i.dth = and i64 %i.dtg, -2
  call void @_ZdlPvm(ptr noundef %i.dtf, i64 noundef %i.dth) #43
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit90.i

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit90.i: ; preds = %bb.acc, %bb.acb, %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit82.i
  %.pn49.pn.i = phi { ptr, i32 } [ %.pn.i1954, %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit82.i ], [ %.pn49.i, %bb.acb ], [ %.pn49.i, %bb.acc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit90.i, %bb.aap, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn54.i = phi { ptr, i32 } [ %.pn49.pn.i, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit90.i ], [ %i.dot, %bb.aap ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit102.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp103.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZNSt3__124__optional_destruct_baseIN3tev13ImageAdditionELb0EED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %7) #40
  br label %bb.acd

bb.acd:                                           ; preds = %.loopexit.split-lp.i, %bb.aae
  %.pn54.pn.i = phi { ptr, i32 } [ %.pn54.i, %.loopexit.split-lp.i ], [ %i.dmi, %bb.aae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.acn

bb.ace:                                           ; preds = %bb.aad
  call void @_ZNSt3__124__optional_destruct_baseIN3tev13ImageAdditionELb0EED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  invoke void @_ZN3tev7waitAllITkNS_8range_ofINS_4TaskIvEEEERNSt3__16vectorIS3_NS4_9allocatorIS3_EEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.acf unwind label %bb.acm

bb.acf:                                           ; preds = %bb.ace
  %i.dti = load ptr, ptr %6, align 8, !tbaa !279  ; 5 uses
  %.not.i.i91.i = icmp eq ptr %i.dti, null
  br i1 %.not.i.i91.i, label %bb.ach, label %bb.acg

bb.acg:                                           ; preds = %bb.acf
  %i.dtj = load ptr, ptr %i.dlz, align 8, !tbaa !276 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.dti, %i.dtj
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.acg, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.dtk, %.lr.ph.i.i.i.i.i ], [ %i.dtj, %bb.acg ]
  %i.dtk = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dtk) #40
  %.not.i.i.i.i.i = icmp eq ptr %i.dti, %i.dtk
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre1.i.i.i = load ptr, ptr %6, align 8, !tbaa !279
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i, %bb.acg
  %i.dtl = phi ptr [ %.pre1.i.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.dti, %bb.acg ] ; 2 uses
  store ptr %i.dti, ptr %i.dlz, align 8, !tbaa !276
  %i.dtm = load ptr, ptr %i.dma, align 8, !tbaa !277
  %i.dtn = ptrtoint ptr %i.dtm to i64
  %i.dto = ptrtoint ptr %i.dtl to i64
  %i.dtp = sub i64 %i.dtn, %i.dto
  call void @_ZdlPvm(ptr noundef %i.dtl, i64 noundef %i.dtp) #43
  br label %bb.ach

bb.ach:                                           ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.i, %bb.acf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.dtq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dtr = load i64, ptr %i.dtq, align 8, !tbaa !138
  %i.dts = icmp eq i64 %i.dtr, 0
  br i1 %i.dts, label %"_ZN3tev10ScopeGuardIZNS_L9convertToERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_0ED2Ev.exit.i", label %bb.aci

bb.aci:                                           ; preds = %bb.ach
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.dtt = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #40
end_hunk_1

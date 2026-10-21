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

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit26: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.s ], [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit25 ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
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
  %12 = alloca %class.anon.1133, align 16         ; 15 uses
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
  br i1 %.not.i.i1937, label %bb.zf, label %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.preheader

bb.zf:                                            ; preds = %.noexc1942
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.dha, i64 8
  %i.dhe = load ptr, ptr %i.dhd, align 8, !tbaa !131 ; 2 uses
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.dha, i64 16
  %i.dhg = load ptr, ptr %i.dhf, align 8, !tbaa !132 ; 2 uses
  %.not12.i.i.i1938 = icmp eq ptr %i.dhe, %i.dhg
  br i1 %.not12.i.i.i1938, label %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.preheader, label %.lr.ph.i.i.i1939

.lr.ph.i.i.i1939:                                 ; preds = %bb.zf
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.dha, i64 32
  %i.dhi = getelementptr inbounds nuw i8, ptr %i.dha, i64 48
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.dha, i64 33
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.dha, i64 40
  br label %bb.zg

bb.zg:                                            ; preds = %.noexc1943, %.lr.ph.i.i.i1939
  %.sroa.09.013.i.i.i1940 = phi ptr [ %i.dhe, %.lr.ph.i.i.i1939 ], [ %i.dhw, %.noexc1943 ] ; 2 uses
  %i.dhl = load ptr, ptr %.sroa.09.013.i.i.i1940, align 8, !tbaa !136 ; 2 uses
  %i.dhm = load i8, ptr %i.dhh, align 8           ; 2 uses
  %i.dhn = trunc i8 %i.dhm to i1                  ; 2 uses
  %i.dho = load ptr, ptr %i.dhi, align 8
  %i.dhp = select i1 %i.dhn, ptr %i.dho, ptr %i.dhj
  %i.dhq = load i64, ptr %i.dhk, align 8
  %i.dhr = lshr i8 %i.dhm, 1
  %i.dhs = zext nneg i8 %i.dhr to i64
  %i.dht = select i1 %i.dhn, i64 %i.dhq, i64 %i.dhs
  %i.dhu = load ptr, ptr %i.dhl, align 8, !tbaa !109
  %i.dhv = load ptr, ptr %i.dhu, align 8
  invoke void %i.dhv(ptr noundef nonnull align 8 dereferenceable(8) %i.dhl, ptr %i.dhp, i64 %i.dht, i32 noundef 2, ptr nonnull @.str.127, i64 53)
          to label %.noexc1943 unwind label %.loopexit.split-lp2167.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !848

.noexc1943:                                       ; preds = %bb.zg
  %i.dhw = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i1940, i64 16 ; 2 uses
  %.not.i.i.i1941 = icmp eq ptr %i.dhw, %i.dhg
  br i1 %.not.i.i.i1941, label %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.preheader, label %bb.zg

_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.preheader: ; preds = %.noexc1943, %.noexc1942, %bb.zf
  br label %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit: ; preds = %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.preheader, %bb.zj
  %i.dhx = load ptr, ptr %218, align 8, !tbaa !209
  %i.dhy = invoke noundef zeroext i1 @_ZNK3tev22BackgroundImagesLoader15hasPendingLoadsEv(ptr noundef nonnull align 8 dereferenceable(300) %i.dhx)
          to label %bb.zh unwind label %.loopexit.split-lp2167.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.zh:                                            ; preds = %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
  br i1 %i.dhy, label %bb.zi, label %bb.zk

bb.zi:                                            ; preds = %bb.zh
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  store i64 1000000, ptr %13, align 8, !tbaa !232
  invoke void @_ZNSt3__111this_thread9sleep_forERKNS_6chrono8durationIxNS_5ratioILl1ELl1000000000EEEEE(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.zj unwind label %.loopexit.split-lp2167.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.zj:                                            ; preds = %bb.zi
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %_ZN4tlog4infoENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, !llvm.loop !849

bb.zk:                                            ; preds = %bb.zh
  %i.dhz = load ptr, ptr %117, align 8, !tbaa !109
  %i.dia = getelementptr inbounds nuw i8, ptr %i.dhz, i64 16
  %i.dib = load ptr, ptr %i.dia, align 8
  %i.dic = call noundef zeroext i1 %i.dib(ptr noundef nonnull align 8 dereferenceable(40) %117) #40, !inline_history !824
  br i1 %i.dic, label %bb.zl, label %bb.zm

bb.zl:                                            ; preds = %bb.zk
  %i.did = getelementptr inbounds nuw i8, ptr %117, i64 216
  %i.die = load i8, ptr %i.did, align 8           ; 2 uses
  %i.dif = trunc i8 %i.die to i1                  ; 2 uses
  %i.dig = getelementptr inbounds nuw i8, ptr %117, i64 232
  %i.dih = load ptr, ptr %i.dig, align 8
  %i.dii = getelementptr inbounds nuw i8, ptr %117, i64 217
  %i.dij = select i1 %i.dif, ptr %i.dih, ptr %i.dii
  %i.dik = getelementptr inbounds nuw i8, ptr %117, i64 224
  %i.dil = load i64, ptr %i.dik, align 8
  %i.dim = lshr i8 %i.die, 1
  %i.din = zext nneg i8 %i.dim to i64
  %i.dio = select i1 %i.dif, i64 %i.dil, i64 %i.din
  %i.dip = invoke noundef i32 @_ZN3tev8toMetricENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr %i.dij, i64 %i.dio)
          to label %bb.zm unwind label %.loopexit.split-lp2167.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.zm:                                            ; preds = %bb.zk, %bb.zl
  %i.diq = phi i32 [ %i.dip, %bb.zl ], [ 0, %bb.zk ]
  %i.dir = load ptr, ptr %32, align 8, !tbaa !109
  %i.dis = getelementptr inbounds nuw i8, ptr %i.dir, i64 16
  %i.dit = load ptr, ptr %i.dis, align 8
  %i.diu = call noundef zeroext i1 %i.dit(ptr noundef nonnull align 8 dereferenceable(40) %32) #40, !inline_history !824
  br i1 %i.diu, label %bb.zn, label %bb.zp

bb.zn:                                            ; preds = %bb.zm
  %i.div = getelementptr inbounds nuw i8, ptr %32, i64 216
  %i.diw = load i8, ptr %i.div, align 8           ; 2 uses
  %i.dix = trunc i8 %i.diw to i1                  ; 2 uses
  %i.diy = getelementptr inbounds nuw i8, ptr %32, i64 232
  %i.diz = load ptr, ptr %i.diy, align 8
  %i.dja = getelementptr inbounds nuw i8, ptr %32, i64 217
  %i.djb = select i1 %i.dix, ptr %i.diz, ptr %i.dja
  %i.djc = getelementptr inbounds nuw i8, ptr %32, i64 224
  %i.djd = load i64, ptr %i.djc, align 8
  %i.dje = lshr i8 %i.diw, 1
  %i.djf = zext nneg i8 %i.dje to i64
  %i.djg = select i1 %i.dix, i64 %i.djd, i64 %i.djf
  %i.djh = invoke { <2 x float>, <2 x float> } @_ZN3tev10parseColorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr %i.djb, i64 %i.djg)
          to label %bb.zo unwind label %.loopexit.split-lp2167.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.zo:                                            ; preds = %bb.zn
  %i.dji = extractvalue { <2 x float>, <2 x float> } %i.djh, 0
  %i.djj = extractvalue { <2 x float>, <2 x float> } %i.djh, 1
  br label %bb.zp

bb.zp:                                            ; preds = %bb.zm, %bb.zo
  %.sroa.62056.0 = phi <2 x float> [ %i.djj, %bb.zo ], [ zeroinitializer, %bb.zm ]
  %.sroa.02055.0 = phi <2 x float> [ %i.dji, %bb.zo ], [ zeroinitializer, %bb.zm ]
  %i.djk = load ptr, ptr %161, align 8, !tbaa !109
  %i.djl = getelementptr inbounds nuw i8, ptr %i.djk, i64 16
  %i.djm = load ptr, ptr %i.djl, align 8
  %i.djn = call noundef zeroext i1 %i.djm(ptr noundef nonnull align 8 dereferenceable(40) %161) #40, !inline_history !824
  br i1 %i.djn, label %bb.zq, label %bb.zr

bb.zq:                                            ; preds = %bb.zp
  %i.djo = getelementptr inbounds nuw i8, ptr %161, i64 216
  %i.djp = load i8, ptr %i.djo, align 8           ; 2 uses
  %i.djq = trunc i8 %i.djp to i1                  ; 2 uses
  %i.djr = getelementptr inbounds nuw i8, ptr %161, i64 232
  %i.djs = load ptr, ptr %i.djr, align 8
  %i.djt = getelementptr inbounds nuw i8, ptr %161, i64 217
  %i.dju = select i1 %i.djq, ptr %i.djs, ptr %i.djt
  %i.djv = getelementptr inbounds nuw i8, ptr %161, i64 224
  %i.djw = load i64, ptr %i.djv, align 8
  %i.djx = lshr i8 %i.djp, 1
  %i.djy = zext nneg i8 %i.djx to i64
  %i.djz = select i1 %i.djq, i64 %i.djw, i64 %i.djy
  %i.dka = invoke noundef i32 @_ZN3tev9toTonemapENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr %i.dju, i64 %i.djz)
          to label %bb.zr unwind label %.loopexit.split-lp2167.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.zr:                                            ; preds = %bb.zp, %bb.zq
  %i.dkb = phi i32 [ %i.dka, %bb.zq ], [ 0, %bb.zp ]
  %i.dkc = load ptr, ptr %76, align 8, !tbaa !109
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.dkc, i64 16
  %i.dke = load ptr, ptr %i.dkd, align 8
  %i.dkf = call noundef zeroext i1 %i.dke(ptr noundef nonnull align 8 dereferenceable(40) %76) #40, !inline_history !824
  %i.dkg = load float, ptr %i.pn, align 8
  %i.dkh = select i1 %i.dkf, float %i.dkg, float 2.200000e+00
  %i.dki = load ptr, ptr %54, align 8, !tbaa !109
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.dki, i64 16
  %i.dkk = load ptr, ptr %i.dkj, align 8
  %i.dkl = call noundef zeroext i1 %i.dkk(ptr noundef nonnull align 8 dereferenceable(40) %54) #40, !inline_history !824
  %i.dkm = load float, ptr %i.jx, align 8
  %i.dkn = select i1 %i.dkl, float %i.dkm, float 0.000000e+00
  %i.dko = load ptr, ptr %145, align 8, !tbaa !109
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.dko, i64 16
  %i.dkq = load ptr, ptr %i.dkp, align 8
  %i.dkr = call noundef zeroext i1 %i.dkq(ptr noundef nonnull align 8 dereferenceable(40) %145) #40, !inline_history !824
  %i.dks = load float, ptr %i.ahv, align 8
  %i.dkt = select i1 %i.dkr, float %i.dks, float 0.000000e+00
  %i.dku = getelementptr inbounds nuw i8, ptr %43, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.dkv = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %i.dkv, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.dkw = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #40
  store i64 %i.dkw, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  store ptr %3, ptr %5, align 8, !tbaa !882
  %.sroa.4101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %.sroa.4101.0..sroa_idx.i, align 8, !tbaa !883
  %i.dkx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.dkx, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  store i64 0, ptr %i.c, align 8, !tbaa !138
  %i.dky = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.dkz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dla = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dlb = getelementptr inbounds nuw i8, ptr %43, i64 232
  %i.dlc = getelementptr inbounds nuw i8, ptr %43, i64 217
  %i.dld = getelementptr inbounds nuw i8, ptr %43, i64 224
  %i.dle = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dlg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.dlh = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.dli = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dlj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dlk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.dll = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.dlm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dln = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.dlo = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.dlp = getelementptr inbounds nuw i8, ptr %12, i64 60
  %i.dlq = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.dlr = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.dls = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.dlt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dlu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dlv = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dlw = getelementptr inbounds nuw i8, ptr %12, i64 32
  %234 = insertelement <2 x float> poison, float %i.dkh, i64 0
  %i.dlx = insertelement <2 x float> %234, float %i.dkn, i64 1
  %235 = shufflevector <2 x float> %.sroa.02055.0, <2 x float> %.sroa.62056.0, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.zs

bb.zs:                                            ; preds = %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i, %bb.zr
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.dly = load ptr, ptr %218, align 8, !tbaa !209
  invoke void @_ZN3tev22BackgroundImagesLoader6tryPopEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional.1011") align 8 %7, ptr noundef nonnull align 8 dereferenceable(300) %i.dly)
          to label %bb.zt unwind label %bb.zu

bb.zt:                                            ; preds = %bb.zs
  %i.dlz = load i8, ptr %i.dky, align 8, !tbaa !241, !range !92, !noundef !93
  %i.dma = trunc nuw i8 %i.dlz to i1
  br i1 %i.dma, label %bb.zv, label %bb.abs

bb.zu:                                            ; preds = %bb.zs
  %i.dmb = landingpad { ptr, i32 }
          cleanup
  br label %bb.abr

bb.zv:                                            ; preds = %bb.zt
  %i.dmc = load i8, ptr %i.dkz, align 8, !tbaa !246, !range !92, !noundef !93
  %i.dmd = trunc nuw i8 %i.dmc to i1
  br i1 %i.dmd, label %bb.zz, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.dme = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.zw
  %i.dmf = load ptr, ptr %i.dme, align 8, !tbaa !122 ; 7 uses
  %i.dmg = load i32, ptr %i.dmf, align 8, !tbaa !130
  %i.dmh = and i32 %i.dmg, 16
  %.not.i.i.i1951 = icmp eq i32 %i.dmh, 0
  br i1 %.not.i.i.i1951, label %bb.zx, label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i

bb.zx:                                            ; preds = %.noexc.i
  %i.dmi = getelementptr inbounds nuw i8, ptr %i.dmf, i64 8
  %i.dmj = load ptr, ptr %i.dmi, align 8, !tbaa !131 ; 2 uses
  %i.dmk = getelementptr inbounds nuw i8, ptr %i.dmf, i64 16
  %i.dml = load ptr, ptr %i.dmk, align 8, !tbaa !132 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.dmj, %i.dml
  br i1 %.not12.i.i.i.i, label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i, label %.lr.ph.i.i.i.i1952

.lr.ph.i.i.i.i1952:                               ; preds = %bb.zx
  %i.dmm = getelementptr inbounds nuw i8, ptr %i.dmf, i64 32
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.dmf, i64 48
  %i.dmo = getelementptr inbounds nuw i8, ptr %i.dmf, i64 33
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmf, i64 40
  br label %bb.zy

bb.zy:                                            ; preds = %.noexc59.i, %.lr.ph.i.i.i.i1952
  %.sroa.09.013.i.i.i.i = phi ptr [ %i.dmj, %.lr.ph.i.i.i.i1952 ], [ %i.dnb, %.noexc59.i ] ; 2 uses
  %i.dmq = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !136 ; 2 uses
  %i.dmr = load i8, ptr %i.dmm, align 8           ; 2 uses
  %i.dms = trunc i8 %i.dmr to i1                  ; 2 uses
  %i.dmt = load ptr, ptr %i.dmn, align 8
  %i.dmu = select i1 %i.dms, ptr %i.dmt, ptr %i.dmo
  %i.dmv = load i64, ptr %i.dmp, align 8
  %i.dmw = lshr i8 %i.dmr, 1
  %i.dmx = zext nneg i8 %i.dmw to i64
  %i.dmy = select i1 %i.dms, i64 %i.dmv, i64 %i.dmx
  %i.dmz = load ptr, ptr %i.dmq, align 8, !tbaa !109
  %i.dna = load ptr, ptr %i.dmz, align 8
  invoke void %i.dna(ptr noundef nonnull align 8 dereferenceable(8) %i.dmq, ptr %i.dmu, i64 %i.dmy, i32 noundef 16, ptr nonnull @.str.257, i64 33)
          to label %.noexc59.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !862

.noexc59.i:                                       ; preds = %bb.zy
  %i.dnb = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i1953 = icmp eq ptr %i.dnb, %i.dml
  br i1 %.not.i.i.i.i1953, label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i, label %bb.zy

bb.zz:                                            ; preds = %bb.zv
  %i.dnc = load ptr, ptr %7, align 8, !tbaa !251  ; 8 uses
  %i.dnd = load ptr, ptr %i.dla, align 8, !tbaa !252
  %i.dne = icmp eq ptr %i.dnc, %i.dnd
  br i1 %i.dne, label %bb.aaa, label %bb.aad

bb.aaa:                                           ; preds = %bb.zz
  %i.dnf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc65.i:                                       ; preds = %bb.aaa
  %i.dng = load ptr, ptr %i.dnf, align 8, !tbaa !122 ; 7 uses
  %i.dnh = load i32, ptr %i.dng, align 8, !tbaa !130
  %i.dni = and i32 %i.dnh, 16
  %.not.i.i60.i = icmp eq i32 %i.dni, 0
  br i1 %.not.i.i60.i, label %bb.aab, label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i

bb.aab:                                           ; preds = %.noexc65.i
  %i.dnj = getelementptr inbounds nuw i8, ptr %i.dng, i64 8
  %i.dnk = load ptr, ptr %i.dnj, align 8, !tbaa !131 ; 2 uses
  %i.dnl = getelementptr inbounds nuw i8, ptr %i.dng, i64 16
  %i.dnm = load ptr, ptr %i.dnl, align 8, !tbaa !132 ; 2 uses
  %.not12.i.i.i61.i = icmp eq ptr %i.dnk, %i.dnm
  br i1 %.not12.i.i.i61.i, label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i, label %.lr.ph.i.i.i62.i

.lr.ph.i.i.i62.i:                                 ; preds = %bb.aab
  %i.dnn = getelementptr inbounds nuw i8, ptr %i.dng, i64 32
  %i.dno = getelementptr inbounds nuw i8, ptr %i.dng, i64 48
  %i.dnp = getelementptr inbounds nuw i8, ptr %i.dng, i64 33
  %i.dnq = getelementptr inbounds nuw i8, ptr %i.dng, i64 40
  br label %bb.aac

bb.aac:                                           ; preds = %.noexc66.i, %.lr.ph.i.i.i62.i
  %.sroa.09.013.i.i.i63.i = phi ptr [ %i.dnk, %.lr.ph.i.i.i62.i ], [ %i.doc, %.noexc66.i ] ; 2 uses
  %i.dnr = load ptr, ptr %.sroa.09.013.i.i.i63.i, align 8, !tbaa !136 ; 2 uses
  %i.dns = load i8, ptr %i.dnn, align 8           ; 2 uses
  %i.dnt = trunc i8 %i.dns to i1                  ; 2 uses
  %i.dnu = load ptr, ptr %i.dno, align 8
  %i.dnv = select i1 %i.dnt, ptr %i.dnu, ptr %i.dnp
  %i.dnw = load i64, ptr %i.dnq, align 8
  %i.dnx = lshr i8 %i.dns, 1
  %i.dny = zext nneg i8 %i.dnx to i64
  %i.dnz = select i1 %i.dnt, i64 %i.dnw, i64 %i.dny
  %i.doa = load ptr, ptr %i.dnr, align 8, !tbaa !109
  %i.dob = load ptr, ptr %i.doa, align 8
  invoke void %i.dob(ptr noundef nonnull align 8 dereferenceable(8) %i.dnr, ptr %i.dnv, i64 %i.dnz, i32 noundef 16, ptr nonnull @.str.258, i64 39)
          to label %.noexc66.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !862

.noexc66.i:                                       ; preds = %bb.aac
  %i.doc = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i63.i, i64 16 ; 2 uses
  %.not.i.i.i64.i = icmp eq ptr %i.doc, %i.dnm
  br i1 %.not.i.i.i64.i, label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i, label %bb.aac

bb.aad:                                           ; preds = %bb.zz
  %i.dod = load ptr, ptr %i.dnc, align 8, !tbaa !253 ; 3 uses
  %i.doe = getelementptr inbounds nuw i8, ptr %i.dod, i64 416
  %i.dof = load ptr, ptr %i.doe, align 8, !tbaa !258
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dod, i64 424
  %i.doh = load ptr, ptr %i.dog, align 8, !tbaa !884
  %i.doi = icmp eq ptr %i.doh, %i.dof
  br i1 %i.doi, label %bb.aae, label %bb.aaf

bb.aae:                                           ; preds = %bb.aad
  %i.doj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc68.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc68.i:                                       ; preds = %bb.aae
  %i.dok = getelementptr inbounds nuw i8, ptr %i.dod, i64 8
  %i.dol = load ptr, ptr %i.doj, align 8, !tbaa !122
  invoke void @_ZN4tlog6Logger3logIJRKNSt3__14__fs10filesystem4pathEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(56) %i.dol, i32 noundef 16, ptr nonnull @.str.259, i64 46, ptr noundef nonnull align 8 dereferenceable(24) %i.dok)
          to label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aac, %bb.zy, %.noexc68.i, %bb.aae, %bb.aaa, %bb.zw
  %lpad.loopexit.split-lp2362 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i

bb.aaf:                                           ; preds = %bb.aad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.dom = load i8, ptr %i.dku, align 8           ; 2 uses
  %i.don = trunc i8 %i.dom to i1                  ; 2 uses
  %i.doo = load ptr, ptr %i.dlb, align 8
  %i.dop = select i1 %i.don, ptr %i.doo, ptr %i.dlc
  %i.doq = load i64, ptr %i.dld, align 8
  %i.dor = lshr i8 %i.dom, 1
  %i.dos = zext nneg i8 %i.dor to i64
  %i.dot = select i1 %i.don, i64 %i.doq, i64 %i.dos
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3tevL9convertToERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERKNS_10shared_ptrINS2_22BackgroundImagesLoaderEEENS2_7EMetricERKN7nanogui5ColorENS2_8ETonemapEfffE3$_2NS6_ISM_EEFS8_NS_17basic_string_viewIcS5_EEEEE", i64 16), ptr %10, align 16, !tbaa !109
  store ptr %i.dnc, ptr %i.dlf, align 8, !tbaa !259
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx.i.i, align 16, !tbaa !261
  store ptr %10, ptr %i.dle, align 16, !tbaa !887
  invoke void @_ZN3tev15substituteCurlyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEERKNS0_8functionIFNS0_12basic_stringIcS3_NS0_9allocatorIcEEEES4_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %9, ptr %i.dop, i64 %i.dot, ptr noundef nonnull align 16 dereferenceable(48) %10)
          to label %bb.aag unwind label %bb.aam

bb.aag:                                           ; preds = %bb.aaf
  %i.dou = load i8, ptr %9, align 8               ; 2 uses
  %i.dov = trunc i8 %i.dou to i1                  ; 2 uses
  %i.dow = load ptr, ptr %i.dlg, align 8
  %i.dox = select i1 %i.dov, ptr %i.dow, ptr %i.dlh
  %i.doy = load i64, ptr %i.dli, align 8
  %i.doz = lshr i8 %i.dou, 1
  %i.dpa = zext nneg i8 %i.doz to i64
  %i.dpb = select i1 %i.dov, i64 %i.doy, i64 %i.dpa
  invoke void @_ZN3tev6toPathENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::__fs::filesystem::path") align 8 %8, ptr %i.dox, i64 %i.dpb)
          to label %bb.aah unwind label %bb.aan

bb.aah:                                           ; preds = %bb.aag
  %i.dpc = load i8, ptr %9, align 8
  %i.dpd = trunc i8 %i.dpc to i1
  br i1 %i.dpd, label %bb.aai, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

bb.aai:                                           ; preds = %bb.aah
  %i.dpe = load ptr, ptr %i.dlg, align 8, !tbaa !105
  %i.dpf = load i64, ptr %9, align 8
  %i.dpg = and i64 %i.dpf, -2
  call void @_ZdlPvm(ptr noundef %i.dpe, i64 noundef %i.dpg) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i: ; preds = %bb.aai, %bb.aah
  %i.dph = load ptr, ptr %i.dle, align 16, !tbaa !887 ; 4 uses
  %i.dpi = icmp eq ptr %i.dph, %10
  br i1 %i.dpi, label %.sink.split.i.i.i, label %bb.aaj

bb.aaj:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i
  %.not.i.i74.i = icmp eq ptr %i.dph, null
  br i1 %.not.i.i74.i, label %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.aaj, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i
  %.sink2.i.i.i = phi i64 [ 32, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.i ], [ 40, %bb.aaj ]
  %i.dpj = load ptr, ptr %i.dph, align 8, !tbaa !109
  %i.dpk = getelementptr inbounds nuw i8, ptr %i.dpj, i64 %.sink2.i.i.i
  %i.dpl = load ptr, ptr %i.dpk, align 8
  call void %i.dpl(ptr noundef nonnull align 8 dereferenceable(8) %i.dph) #40, !inline_history !850
  br label %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit.i

_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit.i: ; preds = %.sink.split.i.i.i, %bb.aaj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  %i.dpm = invoke ptr @_ZNSt3__112__hash_tableINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE4findIS3_EENS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEERKT_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.aak unwind label %bb.aaq

bb.aak:                                           ; preds = %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit.i
  %.not.i1955 = icmp eq ptr %i.dpm, null
  br i1 %.not.i1955, label %bb.aar, label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  %i.dpn = load ptr, ptr %i.dnc, align 8, !tbaa !253
  %i.dpo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc76.i unwind label %bb.aaq

.noexc76.i:                                       ; preds = %bb.aal
  %i.dpp = getelementptr inbounds nuw i8, ptr %i.dpn, i64 8
  %i.dpq = load ptr, ptr %i.dpo, align 8, !tbaa !122
  invoke void @_ZN4tlog6Logger3logIJRKNSt3__14__fs10filesystem4pathES7_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(56) %i.dpq, i32 noundef 2, ptr nonnull @.str.260, i64 67, ptr noundef nonnull align 8 dereferenceable(24) %i.dpp, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZN4tlog4infoIJRKNSt3__14__fs10filesystem4pathES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit.i unwind label %bb.aaq

bb.aam:                                           ; preds = %bb.aaf
  %i.dpr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i

bb.aan:                                           ; preds = %bb.aag
  %i.dps = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dpt = load i8, ptr %9, align 8
  %i.dpu = trunc i8 %i.dpt to i1
  br i1 %i.dpu, label %bb.aao, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i

bb.aao:                                           ; preds = %bb.aan
  %i.dpv = load ptr, ptr %i.dlg, align 8, !tbaa !105
  %i.dpw = load i64, ptr %9, align 8
  %i.dpx = and i64 %i.dpw, -2
  call void @_ZdlPvm(ptr noundef %i.dpv, i64 noundef %i.dpx) #43
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i: ; preds = %bb.aao, %bb.aan, %bb.aam
  %.pn.i1954 = phi { ptr, i32 } [ %i.dpr, %bb.aam ], [ %i.dps, %bb.aan ], [ %i.dps, %bb.aao ]
  %i.dpy = load ptr, ptr %i.dle, align 16, !tbaa !887 ; 4 uses
  %i.dpz = icmp eq ptr %i.dpy, %10
  br i1 %i.dpz, label %.sink.split.i.i80.i, label %bb.aap

bb.aap:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i
  %.not.i.i79.i = icmp eq ptr %i.dpy, null
  br i1 %.not.i.i79.i, label %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit82.i, label %.sink.split.i.i80.i

.sink.split.i.i80.i:                              ; preds = %bb.aap, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i
  %.sink2.i.i81.i = phi i64 [ 32, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit78.i ], [ 40, %bb.aap ]
  %i.dqa = load ptr, ptr %i.dpy, align 8, !tbaa !109
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dqa, i64 %.sink2.i.i81.i
  %i.dqc = load ptr, ptr %i.dqb, align 8
  call void %i.dqc(ptr noundef nonnull align 8 dereferenceable(8) %i.dpy) #40, !inline_history !850
  br label %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit82.i

_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit82.i: ; preds = %.sink.split.i.i80.i, %bb.aap
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit90.i

bb.aaq:                                           ; preds = %.noexc84.i, %bb.aat, %bb.aar, %.noexc76.i, %bb.aal, %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit.i
  %i.dqd = landingpad { ptr, i32 }
          cleanup
  br label %bb.abp

bb.aar:                                           ; preds = %bb.aak
  %i.dqe = invoke { ptr, i8 } @_ZNSt3__112__hash_tableINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE25__emplace_unique_key_argsIS3_JRKS3_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZNSt3__113unordered_setINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE6insertB8ne180100ERKS3_.exit.i unwind label %bb.aaq ; 0 uses

_ZNSt3__113unordered_setINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE6insertB8ne180100ERKS3_.exit.i: ; preds = %bb.aar
  %i.dqf = load ptr, ptr %i.dnc, align 8, !tbaa !253 ; 4 uses
  %i.dqg = getelementptr inbounds nuw i8, ptr %i.dqf, i64 8
  %i.dqh = load i8, ptr %i.dqg, align 8           ; 2 uses
  %i.dqi = trunc i8 %i.dqh to i1                  ; 2 uses
  %i.dqj = getelementptr inbounds nuw i8, ptr %i.dqf, i64 24
  %i.dqk = load ptr, ptr %i.dqj, align 8
  %i.dql = getelementptr inbounds nuw i8, ptr %i.dqf, i64 9
  %i.dqm = select i1 %i.dqi, ptr %i.dqk, ptr %i.dql
  %i.dqn = getelementptr inbounds nuw i8, ptr %i.dqf, i64 16
  %i.dqo = load i64, ptr %i.dqn, align 8
  %i.dqp = lshr i8 %i.dqh, 1
  %i.dqq = zext nneg i8 %i.dqp to i64
  %i.dqr = select i1 %i.dqi, i64 %i.dqo, i64 %i.dqq
  %i.dqs = invoke noundef i32 @_ZNKSt3__14__fs10filesystem4path9__compareENS_17basic_string_viewIcNS_11char_traitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.dqm, i64 %i.dqr)
          to label %_ZNSt3__14__fs10filesystemeqB8ne180100ERKNS1_4pathES4_.exit.i unwind label %bb.aas

bb.aas:                                           ; preds = %_ZNSt3__113unordered_setINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE6insertB8ne180100ERKS3_.exit.i
  %i.dqt = landingpad { ptr, i32 }
          catch ptr null
  %i.dqu = extractvalue { ptr, i32 } %i.dqt, 0
  call void @__clang_call_terminate(ptr %i.dqu) #44
  unreachable

_ZNSt3__14__fs10filesystemeqB8ne180100ERKNS1_4pathES4_.exit.i: ; preds = %_ZNSt3__113unordered_setINS_4__fs10filesystem4pathENS_4hashIS3_EENS_8equal_toIS3_EENS_9allocatorIS3_EEE6insertB8ne180100ERKS3_.exit.i
  %i.dqv = icmp eq i32 %i.dqs, 0
  br i1 %i.dqv, label %bb.aat, label %bb.aau

bb.aat:                                           ; preds = %_ZNSt3__14__fs10filesystemeqB8ne180100ERKNS1_4pathES4_.exit.i
  %i.dqw = load ptr, ptr %i.dnc, align 8, !tbaa !253
  %i.dqx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc84.i unwind label %bb.aaq

.noexc84.i:                                       ; preds = %bb.aat
  %i.dqy = getelementptr inbounds nuw i8, ptr %i.dqw, i64 8
  %i.dqz = load ptr, ptr %i.dqx, align 8, !tbaa !122
  invoke void @_ZN4tlog6Logger3logIJRKNSt3__14__fs10filesystem4pathEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(56) %i.dqz, i32 noundef 2, ptr nonnull @.str.261, i64 35, ptr noundef nonnull align 8 dereferenceable(24) %i.dqy)
          to label %_ZN4tlog4infoIJRKNSt3__14__fs10filesystem4pathES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit.i unwind label %bb.aaq

bb.aau:                                           ; preds = %_ZNSt3__14__fs10filesystemeqB8ne180100ERKNS1_4pathES4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  %i.dra = load atomic i8, ptr @_ZGVZN3tev10ThreadPool6globalEvE4pool acquire, align 8
  %i.drb = icmp eq i8 %i.dra, 0
  br i1 %i.drb, label %bb.aav, label %_ZN3tev10ThreadPool6globalEv.exit.i, !prof !110

bb.aav:                                           ; preds = %bb.aau
  %i.drc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #40
  %.not.i.i1956 = icmp eq i32 %i.drc, 0
  br i1 %.not.i.i1956, label %_ZN3tev10ThreadPool6globalEv.exit.i, label %bb.aaw

bb.aaw:                                           ; preds = %bb.aav
  invoke void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool)
          to label %bb.aax unwind label %bb.aay

bb.aax:                                           ; preds = %bb.aaw
  %i.drd = call i32 @__cxa_atexit(ptr nonnull @_ZN3tev10ThreadPoolD1Ev, ptr nonnull @_ZZN3tev10ThreadPool6globalEvE4pool, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #40
  br label %_ZN3tev10ThreadPool6globalEv.exit.i

bb.aay:                                           ; preds = %bb.aaw
  %i.dre = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3tev10ThreadPool6globalEvE4pool) #40
  br label %.body.i

_ZN3tev10ThreadPool6globalEv.exit.i:              ; preds = %bb.aax, %bb.aav, %bb.aau
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  %i.drf = getelementptr inbounds nuw i8, ptr %i.dnc, i64 8
  %i.drg = load ptr, ptr %i.drf, align 8, !tbaa !231 ; 2 uses
  %i.drh = load <2 x ptr>, ptr %i.dnc, align 8, !tbaa !263
  store <2 x ptr> %i.drh, ptr %12, align 16, !tbaa !263
  %.not.i86.i = icmp eq ptr %i.drg, null
  br i1 %.not.i86.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i, label %bb.aaz

bb.aaz:                                           ; preds = %_ZN3tev10ThreadPool6globalEv.exit.i
  %i.dri = getelementptr inbounds nuw i8, ptr %i.drg, i64 8
  %i.drj = atomicrmw add ptr %i.dri, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i: ; preds = %bb.aaz, %_ZN3tev10ThreadPool6globalEv.exit.i
  %i.drk = load i8, ptr %8, align 8
  %i.drl = trunc i8 %i.drk to i1
  br i1 %i.drl, label %bb.abb, label %bb.aba

bb.aba:                                           ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dlk, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !111
  br label %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i

bb.abb:                                           ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.drm = load ptr, ptr %i.dll, align 8, !tbaa !105
  %i.drn = load i64, ptr %i.dlm, align 8, !tbaa !105
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.dlk, ptr noundef %i.drm, i64 noundef %i.drn)
          to label %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i unwind label %bb.abk

_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i: ; preds = %bb.abb, %bb.aba
  store i32 %i.diq, ptr %i.dln, align 8, !tbaa !269
  store <4 x float> %235, ptr %i.dlo, align 4
  store i32 %i.dkb, ptr %i.dlp, align 4, !tbaa !270
  store <2 x float> %i.dlx, ptr %i.dlq, align 16, !tbaa !91
  store float %i.dkt, ptr %i.dlr, align 8, !tbaa !271
  invoke fastcc void @"_ZN3tev10ThreadPool16enqueueCoroutineITkNS_13TaskCoroutineEZNS_L9convertToERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEERKNS2_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_1EENS2_13invoke_resultIT_JEE4typeEOSO_i"(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.1130") align 8 %11, ptr noundef nonnull align 8 dereferenceable(216) @_ZZN3tev10ThreadPool6globalEvE4pool, ptr noundef nonnull align 8 dereferenceable(76) %12, i32 noundef 2147483647)
          to label %bb.abc unwind label %bb.abl

bb.abc:                                           ; preds = %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i
  %i.dro = load ptr, ptr %i.dls, align 8, !tbaa !276 ; 6 uses
  %i.drp = load ptr, ptr %i.dlt, align 8, !tbaa !277
  %i.drq = icmp ult ptr %i.dro, %i.drp
  br i1 %i.drq, label %bb.abd, label %bb.abe

bb.abd:                                           ; preds = %bb.abc
  %i.drr = getelementptr inbounds nuw i8, ptr %i.dro, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dro, i8 0, i64 32, i1 false)
  %i.drs = load i64, ptr %11, align 8, !tbaa !263
  store i64 %i.drs, ptr %i.dro, align 8, !tbaa !263
  %i.drt = load <2 x ptr>, ptr %i.dlu, align 8, !tbaa !263
  store <2 x ptr> %i.drt, ptr %i.drr, align 8, !tbaa !263
  %i.dru = getelementptr inbounds nuw i8, ptr %i.dro, i64 24
  %i.drv = load ptr, ptr %i.dlv, align 8, !tbaa !278
  store ptr %i.drv, ptr %i.dru, align 8, !tbaa !278
  store <4 x ptr> splat (ptr null), ptr %11, align 8, !tbaa !263
  %i.drw = getelementptr inbounds nuw i8, ptr %i.dro, i64 32
  br label %bb.abf

bb.abe:                                           ; preds = %bb.abc
  %i.drx = invoke noundef ptr @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.abf unwind label %bb.abm

bb.abf:                                           ; preds = %bb.abe, %bb.abd
  %.0.i.i = phi ptr [ %i.drw, %bb.abd ], [ %i.drx, %bb.abe ]
  store ptr %.0.i.i, ptr %i.dls, align 8, !tbaa !276
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #40
  %i.dry = load i8, ptr %i.dlk, align 16
  %i.drz = trunc i8 %i.dry to i1
  br i1 %i.drz, label %bb.abg, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i.i

bb.abg:                                           ; preds = %bb.abf
  %i.dsa = load ptr, ptr %i.dlw, align 16, !tbaa !105
  %i.dsb = load i64, ptr %i.dlk, align 16
  %i.dsc = and i64 %i.dsb, -2
  call void @_ZdlPvm(ptr noundef %i.dsa, i64 noundef %i.dsc) #43
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i.i

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i.i: ; preds = %bb.abg, %bb.abf
  %i.dsd = load ptr, ptr %i.dlj, align 8, !tbaa !231 ; 5 uses
  %.not.i.i89.i = icmp eq ptr %i.dsd, null
  br i1 %.not.i.i89.i, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit.i", label %bb.abh

bb.abh:                                           ; preds = %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i.i
  %i.dse = getelementptr inbounds nuw i8, ptr %i.dsd, i64 8
  %i.dsf = atomicrmw add ptr %i.dse, i64 -1 acq_rel, align 8
  %i.dsg = icmp eq i64 %i.dsf, 0
  br i1 %i.dsg, label %bb.abi, label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit.i"

bb.abi:                                           ; preds = %bb.abh
  %i.dsh = load ptr, ptr %i.dsd, align 8, !tbaa !109
  %i.dsi = getelementptr inbounds nuw i8, ptr %i.dsh, i64 16
  %i.dsj = load ptr, ptr %i.dsi, align 8
  call void %i.dsj(ptr noundef nonnull align 8 dereferenceable(24) %i.dsd) #40, !inline_history !851
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dsd) #40
  br label %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit.i"

"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit.i": ; preds = %bb.abi, %bb.abh, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %_ZN4tlog4infoIJRKNSt3__14__fs10filesystem4pathES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit.i

_ZN4tlog4infoIJRKNSt3__14__fs10filesystem4pathES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit.i: ; preds = %"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev.exit.i", %.noexc84.i, %.noexc76.i
  %i.dsk = load i8, ptr %8, align 8
  %i.dsl = trunc i8 %i.dsk to i1
  br i1 %i.dsl, label %bb.abj, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

bb.abj:                                           ; preds = %_ZN4tlog4infoIJRKNSt3__14__fs10filesystem4pathES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit.i
  %i.dsm = load ptr, ptr %i.dll, align 8, !tbaa !105
  %i.dsn = load i64, ptr %8, align 8
  %i.dso = and i64 %i.dsn, -2
  call void @_ZdlPvm(ptr noundef %i.dsm, i64 noundef %i.dso) #43
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i: ; preds = %bb.abj, %_ZN4tlog4infoIJRKNSt3__14__fs10filesystem4pathES6_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOSA_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i

_ZN4tlog5errorENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit.i: ; preds = %.noexc59.i, %.noexc66.i, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit.i, %.noexc68.i, %bb.aab, %.noexc65.i, %bb.zx, %.noexc.i
  %i.dsp = load i64, ptr %i.c, align 8, !tbaa !138
  %i.dsq = add i64 %i.dsp, 1
  store i64 %i.dsq, ptr %i.c, align 8, !tbaa !138
  call void @_ZNSt3__124__optional_destruct_baseIN3tev13ImageAdditionELb0EED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.zs, !llvm.loop !852

bb.abk:                                           ; preds = %bb.abb
  %i.dsr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #40
  br label %bb.abo

bb.abl:                                           ; preds = %_ZNSt3__14__fs10filesystem4pathC2B8ne180100ERKS2_.exit.i
  %i.dss = landingpad { ptr, i32 }
          cleanup
  br label %bb.abn

bb.abm:                                           ; preds = %bb.abe
  %i.dst = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #40
  br label %bb.abn

bb.abn:                                           ; preds = %bb.abm, %bb.abl
  %.pn45.i = phi { ptr, i32 } [ %i.dst, %bb.abm ], [ %i.dss, %bb.abl ]
  call fastcc void @"_ZZN3tevL9convertToERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS0_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffEN3$_1D2Ev"(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %12) #40
  br label %bb.abo

bb.abo:                                           ; preds = %bb.abn, %bb.abk
  %.pn45.pn.i = phi { ptr, i32 } [ %.pn45.i, %bb.abn ], [ %i.dsr, %bb.abk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %.body.i

.body.i:                                          ; preds = %bb.abo, %bb.aay
  %.pn45.pn.pn.i = phi { ptr, i32 } [ %.pn45.pn.i, %bb.abo ], [ %i.dre, %bb.aay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.abp

bb.abp:                                           ; preds = %.body.i, %bb.aaq
  %.pn49.i = phi { ptr, i32 } [ %i.dqd, %bb.aaq ], [ %.pn45.pn.pn.i, %.body.i ] ; 2 uses
  %i.dsu = load i8, ptr %8, align 8
  %i.dsv = trunc i8 %i.dsu to i1
  br i1 %i.dsv, label %bb.abq, label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit90.i

bb.abq:                                           ; preds = %bb.abp
  %i.dsw = load ptr, ptr %i.dll, align 8, !tbaa !105
  %i.dsx = load i64, ptr %8, align 8
  %i.dsy = and i64 %i.dsx, -2
  call void @_ZdlPvm(ptr noundef %i.dsw, i64 noundef %i.dsy) #43
  br label %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit90.i

_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit90.i: ; preds = %bb.abq, %bb.abp, %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit82.i
  %.pn49.pn.i = phi { ptr, i32 } [ %.pn.i1954, %_ZNSt3__18functionIFNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EEEED2Ev.exit82.i ], [ %.pn49.i, %bb.abp ], [ %.pn49.i, %bb.abq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %.loopexit.split-lp.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit90.i
  %.pn54.i = phi { ptr, i32 } [ %.pn49.pn.i, %_ZNSt3__14__fs10filesystem4pathD2B8ne180100Ev.exit90.i ], [ %lpad.loopexit.split-lp2362, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3__124__optional_destruct_baseIN3tev13ImageAdditionELb0EED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %7) #40
  br label %bb.abr

bb.abr:                                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %bb.zu
  %.pn54.pn.i = phi { ptr, i32 } [ %.pn54.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %i.dmb, %bb.zu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.acb

bb.abs:                                           ; preds = %bb.zt
  call void @_ZNSt3__124__optional_destruct_baseIN3tev13ImageAdditionELb0EED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  invoke void @_ZN3tev7waitAllITkNS_8range_ofINS_4TaskIvEEEERNSt3__16vectorIS3_NS4_9allocatorIS3_EEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.abt unwind label %bb.aca

bb.abt:                                           ; preds = %bb.abs
  %i.dsz = load ptr, ptr %6, align 8, !tbaa !279  ; 5 uses
  %.not.i.i91.i = icmp eq ptr %i.dsz, null
  br i1 %.not.i.i91.i, label %bb.abv, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  %i.dta = load ptr, ptr %i.dls, align 8, !tbaa !276 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.dsz, %i.dta
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.abu, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.dtb, %.lr.ph.i.i.i.i.i ], [ %i.dta, %bb.abu ]
  %i.dtb = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -32 ; 3 uses
  call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.dtb) #40
  %.not.i.i.i.i.i = icmp eq ptr %i.dsz, %i.dtb
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre1.i.i.i = load ptr, ptr %6, align 8, !tbaa !279
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i, %bb.abu
  %i.dtc = phi ptr [ %.pre1.i.i.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i.i ], [ %i.dsz, %bb.abu ] ; 2 uses
  store ptr %i.dsz, ptr %i.dls, align 8, !tbaa !276
  %i.dtd = load ptr, ptr %i.dlt, align 8, !tbaa !277
  %i.dte = ptrtoint ptr %i.dtd to i64
  %i.dtf = ptrtoint ptr %i.dtc to i64
  %i.dtg = sub i64 %i.dte, %i.dtf
  call void @_ZdlPvm(ptr noundef %i.dtc, i64 noundef %i.dtg) #43
  br label %bb.abv

bb.abv:                                           ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i.i, %bb.abt
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  %i.dth = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.dti = load i64, ptr %i.dth, align 8, !tbaa !138
  %i.dtj = icmp eq i64 %i.dti, 0
  br i1 %i.dtj, label %"_ZN3tev10ScopeGuardIZNS_L9convertToERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_10shared_ptrINS_22BackgroundImagesLoaderEEENS_7EMetricERKN7nanogui5ColorENS_8ETonemapEfffE3$_0ED2Ev.exit.i", label %bb.abw

bb.abw:                                           ; preds = %bb.abv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.dtk = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #40
end_hunk_1

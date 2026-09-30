Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/mapper?download=true
inline.NumInlined: 64
inline.NumDeleted: 37
begin_hunk_0
@.str.5 = private unnamed_addr constant [119 x i8] c"/opt-bench/work/opencc/OpenCC/deps/marisa-0.3.1/lib/marisa/grimoire/io/mapper.cc:99: std::runtime_error: size > avail_\00", align 1
@.str.6 = private unnamed_addr constant [121 x i8] c"/opt-bench/work/opencc/OpenCC/deps/marisa-0.3.1/lib/marisa/grimoire/io/mapper.cc:149: std::system_error: open: fd_ == -1\00", align 1
@_ZTISt12system_error = external constant ptr
@.str.7 = private unnamed_addr constant [135 x i8] c"/opt-bench/work/opencc/OpenCC/deps/marisa-0.3.1/lib/marisa/grimoire/io/mapper.cc:153: std::system_error: fstat: ::fstat(fd_, &st) != 0\00", align 1
@.str.9 = private unnamed_addr constant [133 x i8] c"/opt-bench/work/opencc/OpenCC/deps/marisa-0.3.1/lib/marisa/grimoire/io/mapper.cc:171: std::system_error: mmap: origin_ == MAP_FAILED\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVSt12system_error = external constant { [5 x ptr] }, align 8

@_ZN6marisa8grimoire2io6MapperC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6marisa8grimoire2io6MapperC2Ev
@_ZN6marisa8grimoire2io6MapperD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6marisa8grimoire2io6MapperD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6marisa8grimoire2io6MapperC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(36) initializes((0, 36)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 -1 to ptr), ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.c, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6marisa8grimoire2io6MapperD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(36) dereferenceable(36) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %i.e = tail call i32 @munmap(ptr noundef %i.b, i64 noundef %i.d) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %.not2 = icmp eq i32 %i.g, -1
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = invoke i32 @close(i32 noundef %i.g)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #20
  unreachable
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6marisa8grimoire2io6Mapper4openEPKci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.marisa::grimoire::io::Mapper", align 16 ; 11 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #21
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN6marisa8grimoire2io6MapperC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %3)
  invoke void @_ZN6marisa8grimoire2io6Mapper5open_EPKci(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull %1, i32 noundef %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = load <2 x ptr>, ptr %3, align 16, !tbaa !15
  %i.f = load <2 x ptr>, ptr %0, align 8, !tbaa !15
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !15
  store <2 x ptr> %i.f, ptr %3, align 16, !tbaa !15
  %i.g = load <2 x i64>, ptr %i.d, align 16, !tbaa !16
  %i.h = load <2 x i64>, ptr %i.c, align 8, !tbaa !16
  store <2 x i64> %i.g, ptr %i.c, align 8, !tbaa !16
  store <2 x i64> %i.h, ptr %i.d, align 16, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.i, align 8, !tbaa !17
  %i.l = load i32, ptr %i.j, align 16, !tbaa !17
  store i32 %i.l, ptr %i.i, align 8, !tbaa !17
  store i32 %i.k, ptr %i.j, align 16, !tbaa !17
  call void @_ZN6marisa8grimoire2io6MapperD1Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.f:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6marisa8grimoire2io6MapperD1Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.n, %bb.g ]
  resume { ptr, i32 } %.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
define void @_ZN6marisa8grimoire2io6Mapper5open_EPKci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) initializes((32, 36)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 5 uses
  %i.a = tail call i32 (ptr, i32, ...) @open(ptr noundef %1, i32 noundef 0) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %i.a, ptr %i.b, align 8, !tbaa !13
  %i.c = icmp eq i32 %i.a, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 32) #19 ; 3 uses
  %i.e = tail call ptr @__errno_location() #22
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #22
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 %i.f, ptr nonnull %i.g, ptr noundef nonnull @.str.6)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #21
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.h = call i32 @fstat(i32 noundef %i.a, ptr noundef nonnull %3) #19
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @__cxa_allocate_exception(i64 32) #19 ; 3 uses
  %i.j = tail call ptr @__errno_location() #22
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #22
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 %i.k, ptr nonnull %i.l, ptr noundef nonnull @.str.7)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #21
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !14
  %4 = and i32 %2, 1
  %.not18 = icmp eq i32 %4, 0
  %spec.select = select i1 %.not18, i32 1, i32 32769
  %i.p = load i32, ptr %i.b, align 8, !tbaa !13
  %i.q = tail call ptr @mmap(ptr noundef null, i64 noundef %i.n, i32 noundef 1, i32 noundef %spec.select, i32 noundef %i.p, i64 noundef 0) #19 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !12
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -1 to ptr)
  br i1 %i.s, label %bb.j, label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #19
  br label %bb.o

bb.i:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.v = tail call ptr @__cxa_allocate_exception(i64 32) #19 ; 3 uses
  %i.w = tail call ptr @__errno_location() #22
  %i.x = load i32, ptr %i.w, align 4, !tbaa !17
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #22
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 %i.x, ptr nonnull %i.y, ptr noundef nonnull @.str.9)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #21
  unreachable

bb.l:                                             ; preds = %bb.g
  store ptr %i.q, ptr %0, align 8, !tbaa !11
  %i.z = load i64, ptr %i.o, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.m:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m
  %.sink = phi ptr [ %i.i, %bb.i ], [ %i.v, %bb.m ]
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.ab, %bb.m ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.n
  %.pn20 = phi { ptr, i32 } [ %i.t, %bb.h ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6marisa8grimoire2io6Mapper4swapERS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  store ptr %i.b, ptr %0, align 8, !tbaa !15
  store ptr %i.a, ptr %1, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16
  store i64 %i.f, ptr %i.c, align 8, !tbaa !16
  store i64 %i.e, ptr %i.d, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !15
  store ptr %i.j, ptr %i.g, align 8, !tbaa !15
  store ptr %i.i, ptr %i.h, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !tbaa !16
  %i.n = load i64, ptr %i.l, align 8, !tbaa !16
  store i64 %i.n, ptr %i.k, align 8, !tbaa !16
  store i64 %i.m, ptr %i.l, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load i32, ptr %i.o, align 8, !tbaa !17
  %i.r = load i32, ptr %i.p, align 8, !tbaa !17
  store i32 %i.r, ptr %i.o, align 8, !tbaa !17
  store i32 %i.q, ptr %i.p, align 8, !tbaa !17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: mustprogress uwtable
define void @_ZN6marisa8grimoire2io6Mapper4openEPKvm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.marisa::grimoire::io::Mapper", align 16 ; 9 uses
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #21
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN6marisa8grimoire2io6MapperC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = load <2 x ptr>, ptr %0, align 8, !tbaa !15
  store ptr %1, ptr %0, align 8, !tbaa !15
  store ptr %i.h, ptr %i.f, align 8, !tbaa !15
  store <2 x ptr> %i.i, ptr %3, align 16, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16
  %i.m = load <2 x i64>, ptr %i.e, align 8, !tbaa !16
  store i64 %2, ptr %i.e, align 8, !tbaa !16
  store i64 %i.l, ptr %i.j, align 8, !tbaa !16
  store <2 x i64> %i.m, ptr %i.d, align 16, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.n, align 8, !tbaa !17
  %i.q = load i32, ptr %i.o, align 16, !tbaa !17
  store i32 %i.q, ptr %i.n, align 8, !tbaa !17
  store i32 %i.p, ptr %i.o, align 16, !tbaa !17
  call void @_ZN6marisa8grimoire2io6MapperD1Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.e:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #19
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6marisa8grimoire2io6Mapper5open_EPKvm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(36) initializes((0, 8), (16, 24)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %0, i64 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #21
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.3)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #21
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.g = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1) ; 0 uses
  ret void

bb.h:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

end_hunk_0

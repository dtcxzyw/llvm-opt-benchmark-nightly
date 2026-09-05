Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLibraryLoader?download=true
inline.NumInlined: 89
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5Ipopt14IpoptExceptionD2Ev:bb.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !15
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !15
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @dlerror() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt13LibraryLoader13unloadLibraryEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @dlclose(ptr noundef nonnull %i.b) #13
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 112) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.f = tail call ptr @dlerror() #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.f, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5Ipopt23DYNAMIC_LIBRARY_FAILUREC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 117)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN5Ipopt23DYNAMIC_LIBRARY_FAILUREE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #14
          to label %bb.k unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread: ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.l = load i64, ptr %i.j, align 8, !tbaa !15
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.n = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.r = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.u = load i64, ptr %i.s, align 8, !tbaa !15
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #15
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !13
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = load i64, ptr %i.o, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.aa) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br i1 %.0, label %bb.h, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br i1 %.0, label %bb.h, label %bb.j

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.thread
  %.pn.pn16.ph = phi { ptr, i32 } [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread23 ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %.pn.pn16 = phi { ptr, i32 } [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %.pn.pn16.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.e) #13
  br label %bb.j

bb.i:                                             ; preds = %bb.a, %bb.b
  ret void

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.h
  %.pn.pn15 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %.pn.pn16, %bb.h ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ]
  resume { ptr, i32 } %.pn.pn15

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5Ipopt13LibraryLoader10loadSymbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5Ipopt13LibraryLoader11loadLibraryEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %.fr94 = freeze i64 %i.e                        ; 6 uses
  %i.f = add i64 %.fr94, 2
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #16 ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.fr94 ; 9 uses
  %.not96 = icmp eq i64 %.fr94, 0
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 2 uses
  %i.j = add i64 %.fr94, 1
  %i.k = load ptr, ptr %1, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %i.k, i64 %i.j, i1 false)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.m = tail call ptr @dlsym(ptr noundef %i.l, ptr noundef nonnull %i.g) #13 ; 3 uses
  %.not = icmp eq ptr %i.m, null                  ; 2 uses
  br i1 %.not96, label %.preheader, label %..loopexit_crit_edge.us.us

..loopexit_crit_edge.us.us:                       ; preds = %bb.c
  br i1 %.not, label %..loopexit_crit_edge.us.us.1, label %.split81.us

..loopexit_crit_edge.us.us.1:                     ; preds = %..loopexit_crit_edge.us.us
  store i8 95, ptr %i.h, align 1, !tbaa !15
  store i8 0, ptr %i.i, align 1, !tbaa !15
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.o = tail call ptr @dlsym(ptr noundef %i.n, ptr noundef nonnull %i.g) #13 ; 2 uses
  %.not.us.us.1 = icmp eq ptr %i.o, null
  br i1 %.not.us.us.1, label %.preheader.us.us.2, label %.split81.us

.preheader.us.us.2:                               ; preds = %..loopexit_crit_edge.us.us.1, %.preheader.us.us.2
  %.04575.us.us.2 = phi i64 [ %i.u, %.preheader.us.us.2 ], [ 0, %..loopexit_crit_edge.us.us.1 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %.04575.us.us.2 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !15
  %i.r = sext i8 %i.q to i32
  %i.s = tail call i32 @tolower(i32 noundef %i.r) #17
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %i.p, align 1, !tbaa !15
  %i.u = add nuw i64 %.04575.us.us.2, 1           ; 2 uses
  %exitcond113.2.not = icmp eq i64 %i.u, %.fr94
  br i1 %exitcond113.2.not, label %..loopexit_crit_edge.us.us.2, label %.preheader.us.us.2, !llvm.loop !24

..loopexit_crit_edge.us.us.2:                     ; preds = %.preheader.us.us.2
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.w = tail call ptr @dlsym(ptr noundef %i.v, ptr noundef nonnull %i.g) #13 ; 2 uses
  %.not.us.us.2 = icmp eq ptr %i.w, null
  br i1 %.not.us.us.2, label %..loopexit_crit_edge.us.us.3, label %.split81.us

..loopexit_crit_edge.us.us.3:                     ; preds = %..loopexit_crit_edge.us.us.2
  store i8 0, ptr %i.h, align 1, !tbaa !15
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.y = tail call ptr @dlsym(ptr noundef %i.x, ptr noundef nonnull %i.g) #13 ; 2 uses
  %.not.us.us.3 = icmp eq ptr %i.y, null
  br i1 %.not.us.us.3, label %.preheader73.us.us.4, label %.split81.us

.preheader73.us.us.4:                             ; preds = %..loopexit_crit_edge.us.us.3, %.preheader73.us.us.4
  %.04474.us.us.4 = phi i64 [ %i.ae, %.preheader73.us.us.4 ], [ 0, %..loopexit_crit_edge.us.us.3 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %.04474.us.us.4 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15
  %i.ab = sext i8 %i.aa to i32
  %i.ac = tail call i32 @toupper(i32 noundef %i.ab) #17
  %i.ad = trunc i32 %i.ac to i8
  store i8 %i.ad, ptr %i.z, align 1, !tbaa !15
  %i.ae = add nuw i64 %.04474.us.us.4, 1          ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.ae, %.fr94
  br i1 %exitcond.4.not, label %..loopexit_crit_edge.us.us.4, label %.preheader73.us.us.4, !llvm.loop !25

..loopexit_crit_edge.us.us.4:                     ; preds = %.preheader73.us.us.4
  store i8 95, ptr %i.h, align 1, !tbaa !15
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ag = tail call ptr @dlsym(ptr noundef %i.af, ptr noundef nonnull %i.g) #13 ; 2 uses
  %.not.us.us.4 = icmp eq ptr %i.ag, null
  br i1 %.not.us.us.4, label %..loopexit_crit_edge.us.us.5, label %.split81.us

..loopexit_crit_edge.us.us.5:                     ; preds = %..loopexit_crit_edge.us.us.4
  store i8 0, ptr %i.h, align 1, !tbaa !15
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ai = tail call ptr @dlsym(ptr noundef %i.ah, ptr noundef nonnull %i.g) #13 ; 2 uses
  %.not.us.us.5 = icmp eq ptr %i.ai, null
  br i1 %.not.us.us.5, label %.split79.us, label %.split81.us

.preheader.1:                                     ; preds = %.preheader
  store i8 95, ptr %i.h, align 1, !tbaa !15
  store i8 0, ptr %i.i, align 1, !tbaa !15
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ak = tail call ptr @dlsym(ptr noundef %i.aj, ptr noundef nonnull %i.g) #13 ; 2 uses
  %.not.1 = icmp eq ptr %i.ak, null
  br i1 %.not.1, label %.preheader.2, label %.split81.us

.preheader.2:                                     ; preds = %.preheader.1
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.am = tail call ptr @dlsym(ptr noundef %i.al, ptr noundef nonnull %i.g) #13 ; 2 uses
  %.not.2 = icmp eq ptr %i.am, null
  br i1 %.not.2, label %.preheader.3, label %.split81.us

.preheader.3:                                     ; preds = %.preheader.2
  store i8 0, ptr %i.h, align 1, !tbaa !15
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ao = tail call ptr @dlsym(ptr noundef %i.an, ptr noundef nonnull %i.g) #13 ; 2 uses
  %.not.3 = icmp eq ptr %i.ao, null
  br i1 %.not.3, label %.preheader.4, label %.split81.us

.preheader.4:                                     ; preds = %.preheader.3
  store i8 95, ptr %i.h, align 1, !tbaa !15
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.aq = tail call ptr @dlsym(ptr noundef %i.ap, ptr noundef nonnull %i.g) #13 ; 2 uses
  %.not.4 = icmp eq ptr %i.aq, null
  br i1 %.not.4, label %.preheader.5, label %.split81.us

.preheader.5:                                     ; preds = %.preheader.4
  store i8 0, ptr %i.h, align 1, !tbaa !15
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.as = tail call ptr @dlsym(ptr noundef %i.ar, ptr noundef nonnull %i.g) #13 ; 2 uses
  %.not.5 = icmp eq ptr %i.as, null
  br i1 %.not.5, label %.split79.us, label %.split81.us

.preheader:                                       ; preds = %bb.c
  br i1 %.not, label %.preheader.1, label %.split81.us

.split79.us:                                      ; preds = %.preheader.5, %..loopexit_crit_edge.us.us.5
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #15
  %i.at = tail call ptr @__cxa_allocate_exception(i64 112) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.au = tail call ptr @dlerror() #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.au, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

bb.d:                                             ; preds = %.split79.us
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5Ipopt23DYNAMIC_LIBRARY_FAILUREC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 198)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTIN5Ipopt23DYNAMIC_LIBRARY_FAILUREE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #14
          to label %bb.j unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %.split79.us
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.bc = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.bg = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !15
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #15
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !13
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = load i64, ptr %i.bd, align 8, !tbaa !15
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bp) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br i1 %.0, label %bb.h, label %bb.i

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread
  %.pn.pn61.ph = phi { ptr, i32 } [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread68 ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn.pn61 = phi { ptr, i32 } [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn.pn61.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.at) #13
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn.pn60 = phi { ptr, i32 } [ %.pn.pn61, %bb.h ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  resume { ptr, i32 } %.pn.pn60

.split81.us:                                      ; preds = %..loopexit_crit_edge.us.us, %..loopexit_crit_edge.us.us.1, %..loopexit_crit_edge.us.us.2, %..loopexit_crit_edge.us.us.3, %..loopexit_crit_edge.us.us.4, %..loopexit_crit_edge.us.us.5, %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5
  %.us-phi = phi ptr [ %i.as, %.preheader.5 ], [ %i.m, %.preheader ], [ %i.ak, %.preheader.1 ], [ %i.am, %.preheader.2 ], [ %i.ao, %.preheader.3 ], [ %i.aq, %.preheader.4 ], [ %i.m, %..loopexit_crit_edge.us.us ], [ %i.o, %..loopexit_crit_edge.us.us.1 ], [ %i.w, %..loopexit_crit_edge.us.us.2 ], [ %i.y, %..loopexit_crit_edge.us.us.3 ], [ %i.ag, %..loopexit_crit_edge.us.us.4 ], [ %i.ai, %..loopexit_crit_edge.us.us.5 ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #15
  ret ptr %.us-phi

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14IpoptExceptionE, i64 16), ptr %0, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !19
  %i.f = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 %i.h, ptr %i.c, align 8, !tbaa !20
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !tbaa !14
  %i.k = load i64, ptr %i.c, align 8, !tbaa !20
  store i64 %i.k, ptr %i.e, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/string_util?download=true
inline.NumInlined: 530
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdb21AppendEscapedStringToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.p = phi i64 [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.q = icmp ugt i64 %i.k, %i.p
  br i1 %i.q, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.d
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  store i8 %i.h, ptr %i.s, align 1, !tbaa !16
  store i64 %i.k, ptr %i.d, align 8, !tbaa !13
  %i.t = load ptr, ptr %0, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.k
  store i8 0, ptr %i.u, align 1, !tbaa !16
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.v = zext i8 %i.h to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 10, ptr noundef nonnull @.str.12, i32 noundef %i.v) #27 ; 0 uses
  %i.x = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #27 ; 6 uses
  %i.y = load i64, ptr %i.d, align 8, !tbaa !13   ; 5 uses
  %i.z = sub i64 9223372036854775807, %i.y
  %i.aa = icmp ult i64 %i.z, %i.x
  br i1 %i.aa, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.e
  %i.ab = add i64 %i.y, %i.x                      ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ae = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.af = load i64, ptr %i.e, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ag = phi i64 [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.ab, %i.ag
  br i1 %.not.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.x, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y ; 2 uses
  %cond.i.i = icmp eq i64 %i.x, 1
  br i1 %cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load i8, ptr %i.a, align 1, !tbaa !16
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.a, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.y, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.x)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !13
  %i.aj = load ptr, ptr %0, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  store i8 0, ptr %i.ak, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.al = add nuw i64 %.012, 1                    ; 2 uses
  %i.am = load i64, ptr %i.b, align 8, !tbaa !39
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !42
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb19NumberToHumanStringB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = icmp slt i64 %1, 0
  %i.c = tail call i64 @llvm.ssub.sat.i64(i64 0, i64 %1)
  %.0 = select i1 %i.b, i64 %i.c, i64 %1          ; 3 uses
  %i.d = icmp slt i64 %.0, 10000
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 21, ptr noundef nonnull @.str.13, i64 noundef %1) #27 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i64 %.0, 10000000
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = sdiv i64 %1, 1000
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 21, ptr noundef nonnull @.str.14, i64 noundef %i.g) #27 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = icmp samesign ult i64 %.0, 10000000000
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = sdiv i64 %1, 1000000
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 21, ptr noundef nonnull @.str.15, i64 noundef %i.j) #27 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = sdiv i64 %1, 1000000000
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 21, ptr noundef nonnull @.str.16, i64 noundef %i.l) #27 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !9
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #27 ; 8 uses
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %bb.i, label %._crit_edge.i.i

bb.i:                                             ; preds = %bb.h
  %i.q = icmp slt i64 %i.o, 0
  br i1 %i.q, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.r = add nuw i64 %i.o, 1                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !33

.noexc11.i:                                       ; preds = %bb.j
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.j
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #29 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !32
  store i64 %i.o, ptr %i.n, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.h
  %i.u = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.n, %bb.h ] ; 3 uses
  switch i64 %i.o, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.a, align 16, !tbaa !16
  store i8 %i.v, ptr %i.u, align 1, !tbaa !16
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 16 %i.a, i64 %i.o, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.w, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o
  store i8 0, ptr %i.x, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18BytesToHumanStringB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = uitofp i64 %1 to double
  %.0 = fmul nnan double %i.b, f0x3F50000000000000 ; 3 uses
  %i.c = fcmp ult double %.0, 1.024000e+03
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.1 = fmul nnan double %.0, f0x3F50000000000000 ; 3 uses
  %i.d = fcmp ult double %.0.1, 1.024000e+03
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.2 = fmul nnan double %.0.1, f0x3F50000000000000 ; 3 uses
  %i.e = fcmp ult double %.0.2, 1.024000e+03      ; 2 uses
  %.0.3 = fmul nnan double %.0.2, f0x3F50000000000000
  %spec.select = select i1 %i.e, i64 2, i64 3
  %spec.select14 = select i1 %i.e, double %.0.2, double %.0.3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.09.lcssa = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ %spec.select, %bb.c ]
  %.0.lcssa = phi double [ %.0, %bb.a ], [ %.0.1, %bb.b ], [ %spec.select14, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN7rocksdb18BytesToHumanStringB5cxx11Em.size_name, i64 %.09.lcssa
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 20, ptr noundef nonnull @.str.21, double noundef %.0.lcssa, ptr noundef %i.g) #27 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !9
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #27 ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %.noexc.i, label %bb.f

.noexc.i:                                         ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !33

.noexc11.i:                                       ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #29 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !32
  store i64 %i.j, ptr %i.i, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.d
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.i, %bb.d ] ; 3 uses
  switch i64 %i.j, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.a, align 16, !tbaa !16
  store i8 %i.q, ptr %i.p, align 1, !tbaa !16
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 16 %i.a, i64 %i.j, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.r, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb17TimeToHumanStringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %struct.tm, align 8                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.c = sext i32 %1 to i64
  store i64 %i.c, ptr %i.b, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.d = call noundef ptr @localtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %2) #27
  %i.e = call i64 @strftime(ptr noundef nonnull %i.a, i64 noundef 80, ptr noundef nonnull @.str.22, ptr noundef %i.d) #27 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !9
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #27 ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !33

.noexc11.i:                                       ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.l = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #29 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !32
  store i64 %i.g, ptr %i.f, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.f, %bb.a ] ; 3 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.a, align 16, !tbaa !16
  store i8 %i.n, ptr %i.m, align 1, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 16 %i.a, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.o, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb12EscapeStringB5cxx11ERKNS_5SliceE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !13
  store i8 0, ptr %i.a, align 8, !tbaa !16
  invoke void @_ZN7rocksdb21AppendEscapedStringToEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.c

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7rocksdb20ConsumeDecimalNumberEPNS_5SliceEPm(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !39 ; 2 uses
  %i.b = icmp eq i64 %.promoted, 0
  br i1 %i.b, label %.thread35, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted47 = load ptr, ptr %0, align 8, !tbaa !41
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.c = phi ptr [ %.promoted47, %.lr.ph ], [ %i.n, %bb.e ] ; 2 uses
  %.02242 = phi i32 [ 0, %.lr.ph ], [ %i.g, %bb.e ] ; 2 uses
  %.02441 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.e ] ; 4 uses
  %i.d = phi i64 [ %.promoted, %.lr.ph ], [ %i.o, %bb.e ]
  %i.e = load i8, ptr %i.c, align 1, !tbaa !16
  %i.f = add i8 %i.e, -48                         ; 3 uses
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %bb.c, label %.thread35.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw nsw i32 %.02242, 1
  %i.h = icmp ugt i64 %.02441, 1844674407370955161
  br i1 %i.h, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i64 %.02441, 1844674407370955161
  %i.j = icmp samesign ugt i8 %i.f, 5
  %or.cond5 = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond5, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext nneg i8 %i.f to i64
  %i.l = mul nuw i64 %.02441, 10
end_hunk_0

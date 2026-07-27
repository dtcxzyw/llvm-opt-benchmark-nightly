inline.NumInlined: 14067
inline.NumDeleted: 5439
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN5arrow7compute15StrftimeOptionsC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !50
  %i.l = load i64, ptr %i.f, align 8, !tbaa !53
  store i64 %i.l, ptr %i.d, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !52
  store ptr %i.f, ptr %1, align 8, !tbaa !50
  store i64 0, ptr %i.m, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !47
  %i.r = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !52   ; 2 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !50
  %i.y = load i64, ptr %i.s, align 8, !tbaa !53
  store i64 %i.y, ptr %i.q, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit2: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !52
  store ptr %i.s, ptr %2, align 8, !tbaa !50
  store i64 0, ptr %i.z, align 8, !tbaa !52
  store i8 0, ptr %i.s, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute15StrftimeOptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 40)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19:
  %i.a = tail call noalias noundef nonnull dereferenceable(18) ptr @_Znwm(i64 noundef 18) #29 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.79, i64 17, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 0, ptr %i.b, align 1, !tbaa !53
  %i.c = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_120kStrftimeOptionsTypeE, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute15StrftimeOptionsE, i64 16), ptr %0, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.e, align 8, !tbaa !50
  store i64 17, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 17, ptr %i.g, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !47
  store i16 67, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 1, ptr %i.j, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZN5arrow7compute15StrptimeOptionsC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8TimeUnit4typeEb(ptr noundef nonnull align 8 dereferenceable(53) initializes((0, 16)) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_120kStrptimeOptionsTypeE, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute15StrptimeOptionsE, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !47
  %i.e = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !50
  %i.l = load i64, ptr %i.f, align 8, !tbaa !53
  store i64 %i.l, ptr %i.d, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = zext i1 %3 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !52
  store ptr %i.f, ptr %1, align 8, !tbaa !50
  store i64 0, ptr %i.n, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.q, align 8, !tbaa !173
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %i.m, ptr %i.r, align 4, !tbaa !176
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute15StrptimeOptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(53) initializes((0, 16)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_120kStrptimeOptionsTypeE, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute15StrptimeOptionsE, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !47
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.f, align 8, !tbaa !173
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.g, align 4, !tbaa !176
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute18StructFieldOptionsC2ESt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 16)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::FieldPath", align 16 ; 5 uses
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_123kStructFieldOptionsTypeE, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute18StructFieldOptionsE, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !177
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !180
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.g, align 16, !tbaa !177
  invoke void @_ZN5arrow8FieldRefC1ENS_9FieldPathE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 16, !tbaa !181   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 16, !tbaa !177
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.l) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.c, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 16, !tbaa !181   ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i2, label %_ZNSt6vectorIiSaIiEED2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.g, align 16, !tbaa !177
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.r) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit5

_ZNSt6vectorIiSaIiEED2Ev.exit5:                   ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.m
}

declare void @_ZN5arrow8FieldRefC1ENS_9FieldPathE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute18StructFieldOptionsC2ESt16initializer_listIiE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 16)) %0, ptr nofree readonly captures(none) %1, i64 %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::FieldPath", align 8  ; 10 uses
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_123kStructFieldOptionsTypeE, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute18StructFieldOptionsE, i64 16), ptr %0, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.idx.i.i = shl nuw nsw i64 %2, 2               ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i.i ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %4, ptr %5, align 8, !tbaa !177
  br label %bb.d

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i: ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i.i) #29 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !181
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !177
  %.not.i.i = icmp eq i64 %2, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !182

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.c, ptr align 4 %1, i64 %.idx.i.i, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
  %i.f = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.f, ptr %i.c, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.thread.i.i.i
  %i.g = phi ptr [ %i.d, %bb.b ], [ %4, %.thread.i.i.i ], [ %i.d, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN5arrow8FieldRefC1ENS_9FieldPathE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %3, align 8, !tbaa !181    ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i6, label %_ZN5arrow9FieldPathD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !177
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #30
  br label %_ZN5arrow9FieldPathD2Ev.exit

_ZN5arrow9FieldPathD2Ev.exit:                     ; preds = %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %3, align 8, !tbaa !181    ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i7, label %_ZN5arrow9FieldPathD2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !177
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #30
  br label %_ZN5arrow9FieldPathD2Ev.exit8

_ZN5arrow9FieldPathD2Ev.exit8:                    ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZN5arrow7compute18StructFieldOptionsC2ENS_8FieldRefE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 16), (48, 49)) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_123kStructFieldOptionsTypeE, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute18StructFieldOptionsE, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 -1, ptr %i.d, align 8, !tbaa !184
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !184   ; 2 uses
  switch i8 %i.f, label %bb.f [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.e
    i8 -1, label %_ZN5arrow8FieldRefC2EOS0_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !180
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !177
  store ptr %i.j, ptr %i.h, align 8, !tbaa !177
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 24, i1 false)
  br label %_ZN5arrow8FieldRefC2EOS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !47
  %i.l = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !52   ; 2 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.l, ptr %i.c, align 8, !tbaa !50
  %i.s = load i64, ptr %i.m, align 8, !tbaa !53
  store i64 %i.s, ptr %i.k, align 8, !tbaa !53
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %i.v, align 8, !tbaa !52
  store ptr %i.m, ptr %1, align 8, !tbaa !50
  store i64 0, ptr %i.t, align 8, !tbaa !52
  store i8 0, ptr %i.m, align 8, !tbaa !53
  %.pre.i.i.i.i.i.i = load i8, ptr %i.e, align 8, !tbaa !184
  br label %_ZN5arrow8FieldRefC2EOS0_.exit

bb.e:                                             ; preds = %bb.a
  %i.w = load <2 x ptr>, ptr %1, align 8, !tbaa !186
  store <2 x ptr> %i.w, ptr %i.c, align 8, !tbaa !186
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !188
  store ptr %i.z, ptr %i.x, align 8, !tbaa !188
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 24, i1 false)
  br label %_ZN5arrow8FieldRefC2EOS0_.exit

bb.f:                                             ; preds = %bb.a
  unreachable

_ZN5arrow8FieldRefC2EOS0_.exit:                   ; preds = %bb.a, %bb.b, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i, %bb.e
  %i.aa = phi i8 [ 2, %bb.e ], [ %.pre.i.i.i.i.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.b ], [ %i.f, %bb.a ]
  store i8 %i.aa, ptr %i.d, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute18StructFieldOptionsC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 40), (48, 49)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_123kStructFieldOptionsTypeE, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute18StructFieldOptionsE, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.d, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZN5arrow7compute11TrimOptionsC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 16)) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116kTrimOptionsTypeE, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11TrimOptionsE, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !47
  %i.e = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !50
  %i.l = load i64, ptr %i.f, align 8, !tbaa !53
  store i64 %i.l, ptr %i.d, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !52
  store ptr %i.f, ptr %1, align 8, !tbaa !50
  store i64 0, ptr %i.m, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute11TrimOptionsC2Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 16)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116kTrimOptionsTypeE, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11TrimOptionsE, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !47
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.e, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute20Utf8NormalizeOptionsC2ENS1_4FormE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 20)) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_125kUtf8NormalizeOptionsTypeE, align 8, !tbaa !38
end_hunk_0

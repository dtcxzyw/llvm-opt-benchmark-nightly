Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/cuckoo_table_builder?download=true
inline.NumInlined: 1114
inline.NumDeleted: 464
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !16
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !15
  store i64 %.0, ptr %i.h, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i8 noundef signext %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !56
  %i.b = icmp ugt i64 %1, 15
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %1, 0
  br i1 %i.c, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i64 %1, 1                        ; 2 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.noexc5, label %.thread7.i, !prof !96

.noexc5:                                          ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

.thread7.i:                                       ; preds = %bb.c
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #30 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !15
  store i64 %1, ptr %i.a, align 8, !tbaa !16
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  switch i64 %1, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  store i8 %2, ptr %i.a, align 8, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %.thread7.i
  %i.g = phi ptr [ %i.f, %.thread7.i ], [ %i.a, %bb.d ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 %2, i64 %1, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.h = phi ptr [ %i.a, %bb.d ], [ %i.g, %bb.f ], [ %i.a, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.i, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %1
  store i8 0, ptr %i.j, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !57   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #29
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !215

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  store i8 %i.v, ptr %i.t, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !16
  store i8 %i.w, ptr %i.m, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !57
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !16
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 11 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !91     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check44 = icmp ult i64 %1, 32
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %1, 28
  %n.vec = and i64 %1, -32                        ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %i.b, i64 %i.q     ; 2 uses
  %i.s = and i64 %1, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 3                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.t
  %i.u = getelementptr i8, ptr %i.b, i64 %i.t
  %next.gep45 = getelementptr i8, ptr %i.u, i64 64
  %i.v = getelementptr i8, ptr %i.b, i64 %i.t
  %next.gep46 = getelementptr i8, ptr %i.v, i64 128
  %i.w = getelementptr i8, ptr %i.b, i64 %i.t
  %next.gep47 = getelementptr i8, ptr %i.w, i64 192
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep, align 4, !tbaa !95
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep45, align 4, !tbaa !95
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep46, align 4, !tbaa !95
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep47, align 4, !tbaa !95
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !230

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %1, -4                       ; 3 uses
  %i.y = shl i64 %n.vec49, 3
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y     ; 2 uses
  %i.aa = and i64 %1, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 2 uses
  %i.ab = shl i64 %index50, 3
  %next.gep51 = getelementptr i8, ptr %i.b, i64 %i.ab
  store <8 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep51, align 4, !tbaa !95
  %index.next52 = add nuw i64 %index50, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next52, %n.vec49
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !217

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %1, %n.vec49
  br i1 %cmp.n53, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  %.01012.i.i.i.ph = phi i64 [ %1, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.013.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %.01012.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  store i32 2147483647, ptr %.013.i.i.i, align 4, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 4
  store i32 0, ptr %i.ad, align 4, !tbaa !94
  %i.ae = add i64 %.01012.i.i.i, -1               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !218

_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.z, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.af, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !90
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ag = icmp ult i64 %i.n, %1
  br i1 %i.ag, label %bb.d, label %iter.check72

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #29
  unreachable

iter.check72:                                     ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ah = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975) ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #30 ; 9 uses
  %2 = ptrtoaddr ptr %i.ak to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.f ; 9 uses
  %min.iters.check56 = icmp ult i64 %1, 4
  br i1 %min.iters.check56, label %.lr.ph.i.i.i30.preheader, label %vector.main.loop.iter.check57

vector.main.loop.iter.check57:                    ; preds = %iter.check72
  %min.iters.check58 = icmp ult i64 %1, 32
  br i1 %min.iters.check58, label %vec.epilog.ph76, label %vector.ph59

vector.ph59:                                      ; preds = %vector.main.loop.iter.check57
  %i.am = and i64 %1, 28
  %n.vec60 = and i64 %1, -32                      ; 4 uses
  %i.an = shl i64 %n.vec60, 3
  %i.ao = getelementptr i8, ptr %i.al, i64 %i.an
  %i.ap = and i64 %1, 31
  br label %vector.body61

vector.body61:                                    ; preds = %vector.ph59, %vector.body61
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body61 ] ; 2 uses
  %i.aq = shl i64 %index62, 3                     ; 4 uses
  %next.gep63 = getelementptr i8, ptr %i.al, i64 %i.aq
  %i.ar = getelementptr i8, ptr %i.al, i64 %i.aq
  %next.gep64 = getelementptr i8, ptr %i.ar, i64 64
  %i.as = getelementptr i8, ptr %i.al, i64 %i.aq
  %next.gep65 = getelementptr i8, ptr %i.as, i64 128
  %i.at = getelementptr i8, ptr %i.al, i64 %i.aq
  %next.gep66 = getelementptr i8, ptr %i.at, i64 192
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep63, align 4, !tbaa !95
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep64, align 4, !tbaa !95
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep65, align 4, !tbaa !95
  store <16 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep66, align 4, !tbaa !95
  %index.next67 = add nuw i64 %index62, 32        ; 2 uses
  %i.au = icmp eq i64 %index.next67, %n.vec60
  br i1 %i.au, label %middle.block68, label %vector.body61, !llvm.loop !219

middle.block68:                                   ; preds = %vector.body61
  %cmp.n69 = icmp eq i64 %1, %n.vec60
  br i1 %cmp.n69, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit35, label %vec.epilog.iter.check74

vec.epilog.iter.check74:                          ; preds = %middle.block68
  %min.epilog.iters.check75 = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check75, label %.lr.ph.i.i.i30.preheader, label %vec.epilog.ph76, !prof !230

vec.epilog.ph76:                                  ; preds = %vector.main.loop.iter.check57, %vec.epilog.iter.check74
  %vec.epilog.resume.val70 = phi i64 [ %n.vec60, %vec.epilog.iter.check74 ], [ 0, %vector.main.loop.iter.check57 ]
  %n.vec77 = and i64 %1, -4                       ; 3 uses
  %i.av = shl i64 %n.vec77, 3
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.av
  %i.ax = and i64 %1, 3
  br label %vec.epilog.vector.body78

vec.epilog.vector.body78:                         ; preds = %vec.epilog.vector.body78, %vec.epilog.ph76
  %index79 = phi i64 [ %vec.epilog.resume.val70, %vec.epilog.ph76 ], [ %index.next81, %vec.epilog.vector.body78 ] ; 2 uses
  %i.ay = shl i64 %index79, 3
  %next.gep80 = getelementptr i8, ptr %i.al, i64 %i.ay
  store <8 x i32> <i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 0>, ptr %next.gep80, align 4, !tbaa !95
  %index.next81 = add nuw i64 %index79, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next81, %n.vec77
  br i1 %i.az, label %vec.epilog.middle.block82, label %vec.epilog.vector.body78, !llvm.loop !220

vec.epilog.middle.block82:                        ; preds = %vec.epilog.vector.body78
  %cmp.n83 = icmp eq i64 %1, %n.vec77
  br i1 %cmp.n83, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %iter.check72, %vec.epilog.iter.check74, %vec.epilog.middle.block82
  %.013.i.i.i31.ph = phi ptr [ %i.al, %iter.check72 ], [ %i.ao, %vec.epilog.iter.check74 ], [ %i.aw, %vec.epilog.middle.block82 ]
  %.01012.i.i.i32.ph = phi i64 [ %1, %iter.check72 ], [ %i.ap, %vec.epilog.iter.check74 ], [ %i.ax, %vec.epilog.middle.block82 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bc, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.ph, %.lr.ph.i.i.i30.preheader ] ; 3 uses
  %.01012.i.i.i32 = phi i64 [ %i.bb, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.ph, %.lr.ph.i.i.i30.preheader ]
  store i32 2147483647, ptr %.013.i.i.i31, align 4, !tbaa !93
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 4
  store i32 0, ptr %i.ba, align 4, !tbaa !94
  %i.bb = add i64 %.01012.i.i.i32, -1             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 8
  %.not.i.i.i33 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !221

_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %vec.epilog.middle.block82, %middle.block68
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %iter.check103

iter.check103:                                    ; preds = %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit35
  %i.bd = add i64 %i.d, -8
  %i.be = sub i64 %i.bd, %i.e                     ; 3 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 5 uses
  %min.iters.check86 = icmp ult i64 %i.be, 24
  %3 = sub i64 %i.e, %2
  %diff.check = icmp ugt i64 %3, -128
  %or.cond = or i1 %min.iters.check86, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i37.preheader, label %vector.main.loop.iter.check87

vector.main.loop.iter.check87:                    ; preds = %iter.check103
  %min.iters.check88 = icmp ult i64 %i.be, 120
  br i1 %min.iters.check88, label %vec.epilog.ph107, label %vector.ph89

vector.ph89:                                      ; preds = %vector.main.loop.iter.check87
  %i.bh = and i64 %i.bg, 12
  %n.vec90 = and i64 %i.bg, 4611686018427387888   ; 4 uses
  %i.bi = shl i64 %n.vec90, 3                     ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ak, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.c, i64 %i.bi
  br label %vector.body91

vector.body91:                                    ; preds = %vector.ph89, %vector.body91
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next98, %vector.body91 ] ; 2 uses
  %i.bl = shl i64 %index92, 3                     ; 2 uses
  %next.gep93 = getelementptr i8, ptr %i.ak, i64 %i.bl ; 4 uses
  %next.gep94 = getelementptr i8, ptr %i.c, i64 %i.bl ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.bm = getelementptr i8, ptr %next.gep94, i64 32
  %i.bn = getelementptr i8, ptr %next.gep94, i64 64
  %i.bo = getelementptr i8, ptr %next.gep94, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep94, align 4, !tbaa !95, !alias.scope !232, !noalias !231
  %wide.load95 = load <4 x i64>, ptr %i.bm, align 4, !tbaa !95, !alias.scope !232, !noalias !231
  %wide.load96 = load <4 x i64>, ptr %i.bn, align 4, !tbaa !95, !alias.scope !232, !noalias !231
  %wide.load97 = load <4 x i64>, ptr %i.bo, align 4, !tbaa !95, !alias.scope !232, !noalias !231
  %i.bp = getelementptr i8, ptr %next.gep93, i64 32
  %i.bq = getelementptr i8, ptr %next.gep93, i64 64
  %i.br = getelementptr i8, ptr %next.gep93, i64 96
  store <4 x i64> %wide.load, ptr %next.gep93, align 4, !tbaa !95, !alias.scope !231, !noalias !232
  store <4 x i64> %wide.load95, ptr %i.bp, align 4, !tbaa !95, !alias.scope !231, !noalias !232
  store <4 x i64> %wide.load96, ptr %i.bq, align 4, !tbaa !95, !alias.scope !231, !noalias !232
  store <4 x i64> %wide.load97, ptr %i.br, align 4, !tbaa !95, !alias.scope !231, !noalias !232
  %index.next98 = add nuw i64 %index92, 16        ; 2 uses
  %i.bs = icmp eq i64 %index.next98, %n.vec90
  br i1 %i.bs, label %middle.block99, label %vector.body91, !llvm.loop !225

middle.block99:                                   ; preds = %vector.body91
  %cmp.n100 = icmp eq i64 %i.bg, %n.vec90
  br i1 %cmp.n100, label %_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %vec.epilog.iter.check105

vec.epilog.iter.check105:                         ; preds = %middle.block99
  %min.epilog.iters.check106 = icmp eq i64 %i.bh, 0
  br i1 %min.epilog.iters.check106, label %.lr.ph.i.i.i37.preheader, label %vec.epilog.ph107, !prof !233

vec.epilog.ph107:                                 ; preds = %vector.main.loop.iter.check87, %vec.epilog.iter.check105
  %vec.epilog.resume.val101 = phi i64 [ %n.vec90, %vec.epilog.iter.check105 ], [ 0, %vector.main.loop.iter.check87 ]
  %n.vec108 = and i64 %i.bg, 4611686018427387900  ; 3 uses
  %i.bt = shl i64 %n.vec108, 3                    ; 2 uses
  %i.bu = getelementptr i8, ptr %i.ak, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.c, i64 %i.bt
  br label %vec.epilog.vector.body109

vec.epilog.vector.body109:                        ; preds = %vec.epilog.vector.body109, %vec.epilog.ph107
  %index110 = phi i64 [ %vec.epilog.resume.val101, %vec.epilog.ph107 ], [ %index.next114, %vec.epilog.vector.body109 ] ; 2 uses
  %i.bw = shl i64 %index110, 3                    ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.ak, i64 %i.bw
  %next.gep112 = getelementptr i8, ptr %i.c, i64 %i.bw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %wide.load113 = load <4 x i64>, ptr %next.gep112, align 4, !tbaa !95, !alias.scope !232, !noalias !231
  store <4 x i64> %wide.load113, ptr %next.gep111, align 4, !tbaa !95, !alias.scope !231, !noalias !232
  %index.next114 = add nuw i64 %index110, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next114, %n.vec108
  br i1 %i.bx, label %vec.epilog.middle.block115, label %vec.epilog.vector.body109, !llvm.loop !226

vec.epilog.middle.block115:                       ; preds = %vec.epilog.vector.body109
  %cmp.n116 = icmp eq i64 %i.bg, %n.vec108
  br i1 %cmp.n116, label %_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %iter.check103, %vec.epilog.iter.check105, %vec.epilog.middle.block115
  %.012.i.i.i.ph = phi ptr [ %i.ak, %iter.check103 ], [ %i.bj, %vec.epilog.iter.check105 ], [ %i.bu, %vec.epilog.middle.block115 ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check103 ], [ %i.bk, %vec.epilog.iter.check105 ], [ %i.bv, %vec.epilog.middle.block115 ]
  br label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i37 ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i37 ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.by = load i64, ptr %.0911.i.i.i, align 4, !tbaa !95, !alias.scope !232, !noalias !231
  store i64 %i.by, ptr %.012.i.i.i, align 4, !tbaa !95, !alias.scope !231, !noalias !232
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i38 = icmp eq ptr %i.bz, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !227

_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %middle.block99, %vec.epilog.middle.block115, %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.cb = load ptr, ptr %i.h, align 8, !tbaa !112
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cd) #25
  br label %_ZNSt12_Vector_baseIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.ak, ptr %0, align 8, !tbaa !91
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %1
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !90
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.cf, ptr %i.h, align 8, !tbaa !112
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7rocksdb18CuckooTableBuilder12CuckooBucketEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef i64 @_Z13MurmurHash64APKvij(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !234

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_EN7rocksdb12stl_wrappers16LessOfComparatorESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN7rocksdb12BlockBuilderEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !16
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !237  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb25DataBlockHashIndexBuilderD2Ev.exit.i, label %bb.c

end_hunk_0
begin_hunk_1_@llvm.umax.i32
!27 = !{!"_ZTSSt11_Tuple_implILm0EJPKcSt14default_deleteIA_S0_EEE", !26, i64 0}
!28 = !{!"_ZTSSt5tupleIJPKcSt14default_deleteIA_S0_EEE", !27, i64 0}
!29 = !{!"_ZTSSt15__uniq_ptr_implIKcSt14default_deleteIA_S0_EE", !28, i64 0}
!30 = !{!"_ZTSSt15__uniq_ptr_dataIKcSt14default_deleteIA_S0_ELb1ELb1EE", !29, i64 0}
!31 = !{!"_ZTSSt10unique_ptrIA_KcSt14default_deleteIS1_EE", !30, i64 0}
!32 = !{!"_ZTSN7rocksdb6StatusE", !23, i64 0, !24, i64 1, !25, i64 2, !22, i64 3, !22, i64 4, !6, i64 5, !31, i64 8}
!33 = !{!"_ZTSN7rocksdb8IOStatusE", !32, i64 0}
!34 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!35 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !34, i64 0}
!36 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!37 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!38 = !{!"_ZTSSt18_Rb_tree_node_base", !36, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!39 = !{!"_ZTSSt15_Rb_tree_header", !38, i64 0, !13, i64 32}
!40 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !35, i64 0, !39, i64 8}
!41 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !40, i64 0}
!42 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE", !41, i64 0}
!43 = !{!"_ZTSN7rocksdb15TablePropertiesE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !14, i64 304, !14, i64 336, !14, i64 368, !14, i64 400, !14, i64 432, !14, i64 464, !14, i64 496, !14, i64 528, !14, i64 560, !14, i64 592, !14, i64 624, !14, i64 656, !42, i64 688, !42, i64 736}
!44 = !{!"p1 _ZTSN7rocksdb10ComparatorE", !10, i64 0}
!45 = !{!"_ZTSN7rocksdb18CuckooTableBuilderE", !19, i64 0, !7, i64 8, !20, i64 16, !21, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !13, i64 48, !22, i64 56, !22, i64 57, !22, i64 58, !13, i64 64, !13, i64 72, !14, i64 80, !14, i64 112, !13, i64 144, !13, i64 152, !32, i64 160, !33, i64 176, !43, i64 192, !44, i64 976, !22, i64 984, !22, i64 985, !10, i64 992, !14, i64 1000, !14, i64 1032, !22, i64 1064}
!46 = !{!45, !7, i64 8}
!47 = !{!45, !20, i64 16}
!48 = !{!45, !21, i64 24}
!49 = !{!45, !7, i64 32}
!50 = !{!45, !7, i64 36}
!51 = !{!45, !7, i64 40}
!52 = !{!45, !13, i64 48}
!53 = !{!45, !22, i64 56}
!54 = !{!45, !22, i64 57}
!55 = !{!45, !22, i64 58}
!56 = !{!12, !11, i64 0}
!57 = !{!14, !13, i64 8}
!58 = !{!39, !36, i64 0}
!59 = !{!39, !37, i64 8}
!60 = !{!39, !37, i64 16}
!61 = !{!39, !37, i64 24}
!62 = !{!39, !13, i64 32}
!63 = !{!45, !44, i64 976}
!64 = !{!45, !22, i64 984}
!65 = !{!45, !22, i64 985}
!66 = !{!45, !22, i64 1064}
!67 = !{!11, !11, i64 0}
!68 = !{!45, !13, i64 144}
!69 = !{!"_ZTSN7rocksdb5SliceE", !11, i64 0, !13, i64 8}
!70 = !{!69, !11, i64 0}
!71 = !{!69, !13, i64 8}
!72 = !{!22, !22, i64 0}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{!32, !22, i64 4}
!76 = !{!32, !6, i64 5}
!77 = !{!"_ZTSN7rocksdb9ValueTypeE", !6, i64 0}
!78 = !{!"_ZTSN7rocksdb17ParsedInternalKeyE", !69, i64 0, !13, i64 16, !77, i64 24}
!79 = !{!78, !13, i64 16}
!80 = !{!78, !77, i64 24}
!81 = !{!32, !23, i64 0}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!45, !13, i64 64}
!84 = !{!45, !13, i64 72}
!85 = !{!45, !13, i64 152}
!86 = !{!13, !13, i64 0}
!87 = !{!26, !11, i64 0}
!88 = !{!"p1 _ZTSN7rocksdb18CuckooTableBuilder12CuckooBucketE", !10, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb18CuckooTableBuilder12CuckooBucketESaIS2_EE17_Vector_impl_dataE", !88, i64 0, !88, i64 8, !88, i64 16}
!90 = !{!89, !88, i64 8}
!91 = !{!89, !88, i64 0}
!92 = !{!"_ZTSN7rocksdb18CuckooTableBuilder12CuckooBucketE", !7, i64 0, !7, i64 4}
!93 = !{!92, !7, i64 0}
!94 = !{!92, !7, i64 4}
!95 = !{!7, !7, i64 0}
!96 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!97 = !{!"any p2 pointer", !10, i64 0}
!98 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !97, i64 0}
!99 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!100 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !99, i64 0}
!101 = !{!"float", !6, i64 0}
!102 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !101, i64 0, !13, i64 8}
!103 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !98, i64 0, !13, i64 8, !100, i64 16, !13, i64 24, !102, i64 32, !99, i64 48}
!104 = !{!103, !98, i64 0}
!105 = !{!103, !13, i64 8}
!106 = !{!32, !24, i64 1}
!107 = !{!32, !22, i64 3}
!108 = !{!"p1 _ZTSN7rocksdb12BlockBuilderE", !10, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!103, !99, i64 16}
!111 = !{!100, !99, i64 0}
!112 = !{!89, !88, i64 16}
!113 = !{!37, !37, i64 0}
!114 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!38, !37, i64 24}
!117 = !{!38, !37, i64 16}
!118 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !10, i64 0}
!119 = !{!118, !118, i64 0}
!120 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE", !10, i64 0}
!121 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !118, i64 0, !120, i64 8}
!122 = !{!121, !120, i64 8}
!123 = !{!43, !13, i64 256}
!124 = !{!45, !10, i64 992}
!125 = !{!45, !13, i64 288}
!126 = !{!45, !13, i64 264}
!127 = !{!45, !13, i64 376}
!128 = !{!45, !13, i64 192}
!129 = distinct !{!129, i1 false, !"_ZNSt7__cxx119to_stringEi"}
!130 = distinct !{!130, !129, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!131 = distinct !{!131, !82}
!132 = distinct !{!132, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!133 = distinct !{!133, !132, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!134 = !{!130}
!135 = !{!133}
!136 = distinct !{!136, i1 false, !"_ZNSt7__cxx119to_stringEm"}
!137 = distinct !{!137, !136, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!138 = distinct !{!138, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!139 = distinct !{!139, !138, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!140 = distinct !{!140, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!141 = distinct !{!141, !140, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!142 = distinct !{!142, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!143 = distinct !{!143, !142, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!144 = !{!137}
!145 = !{!139}
!146 = !{!141}
!147 = !{!143}
!148 = distinct !{!148, !82}
!149 = distinct !{!149, !82}
!150 = distinct !{!150, !82}
!151 = distinct !{!151, !82}
!152 = distinct !{!152, !82}
!153 = distinct !{!153, i1 false, !"_ZN7rocksdb6Status2OKEv"}
!154 = distinct !{!154, !153, !"_ZN7rocksdb6Status2OKEv: argument 0"}
!155 = !{!"p1 long", !10, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !155, i64 0, !155, i64 8, !155, i64 16}
!157 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !156, i64 0}
!158 = !{!"_ZTSSt12_Vector_baseImSaImEE", !157, i64 0}
!159 = !{!"_ZTSSt6vectorImSaImEE", !158, i64 0}
!160 = !{!"_ZTSN7rocksdb10autovectorImLm8EEE", !13, i64 0, !6, i64 8, !155, i64 72, !159, i64 80}
!161 = !{!160, !13, i64 0}
!162 = !{!160, !155, i64 72}
!163 = !{!156, !155, i64 8}
!164 = !{!156, !155, i64 16}
!165 = !{!156, !155, i64 0}
!166 = !{!154}
!167 = distinct !{!167, i1 false, !"_ZSt19__relocate_object_aIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPSt6vectorINS1_12CuckooBucketESaIS7_EEPmE10CuckooNodeSC_SaISC_EEvPT_PT0_RT1_"}
!168 = distinct !{!168, !167, !"_ZSt19__relocate_object_aIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPSt6vectorINS1_12CuckooBucketESaIS7_EEPmE10CuckooNodeSC_SaISC_EEvPT_PT0_RT1_: argument 1"}
!169 = distinct !{!169, !167, !"_ZSt19__relocate_object_aIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPSt6vectorINS1_12CuckooBucketESaIS7_EEPmE10CuckooNodeSC_SaISC_EEvPT_PT0_RT1_: argument 0"}
!170 = distinct !{!170, !82}
!171 = distinct !{!171, !82}
!172 = distinct !{!172, i1 false, !"_ZSt19__relocate_object_aIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPSt6vectorINS1_12CuckooBucketESaIS7_EEPmE10CuckooNodeSC_SaISC_EEvPT_PT0_RT1_"}
!173 = distinct !{!173, !172, !"_ZSt19__relocate_object_aIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPSt6vectorINS1_12CuckooBucketESaIS7_EEPmE10CuckooNodeSC_SaISC_EEvPT_PT0_RT1_: argument 1"}
!174 = distinct !{!174, !172, !"_ZSt19__relocate_object_aIZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS0_10autovectorImLm8EEEjPSt6vectorINS1_12CuckooBucketESaIS7_EEPmE10CuckooNodeSC_SaISC_EEvPT_PT0_RT1_: argument 0"}
!175 = distinct !{!175, !82}
!176 = distinct !{!176, !82}
!177 = distinct !{!177, !82}
!178 = !{!"_ZTSZN7rocksdb18CuckooTableBuilder15MakeSpaceForKeyERKNS_10autovectorImLm8EEEjPSt6vectorINS0_12CuckooBucketESaIS6_EEPmE10CuckooNode", !13, i64 0, !7, i64 8, !7, i64 12}
!179 = !{!178, !13, i64 0}
!180 = !{!178, !7, i64 8}
!181 = !{!178, !7, i64 12}
!182 = !{i64 0, i64 8, !86, i64 8, i64 4, !95, i64 12, i64 4, !95}
!183 = !{!169, !168}
!184 = !{!174, !173}
!185 = distinct !{!185, !82}
!186 = distinct !{!186, !82}
!187 = !{!45, !13, i64 320}
!188 = !{!45, !13, i64 336}
!189 = !{!45, !13, i64 368}
!190 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !13, i64 0}
!191 = !{!"_ZTSN7rocksdb10IOPriorityE", !6, i64 0}
!192 = !{!"_ZTSN7rocksdb3Env10IOPriorityE", !6, i64 0}
!193 = !{!"_ZTSN7rocksdb6IOTypeE", !6, i64 0}
!194 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !103, i64 0}
!195 = !{!"_ZTSN7rocksdb3Env10IOActivityE", !6, i64 0}
!196 = !{!"_ZTSN7rocksdb9IOOptionsE", !190, i64 0, !191, i64 8, !192, i64 12, !193, i64 16, !194, i64 24, !22, i64 80, !22, i64 81, !22, i64 82, !195, i64 83}
!197 = !{!196, !191, i64 8}
!198 = !{!196, !192, i64 12}
!199 = !{!196, !193, i64 16}
!200 = !{!102, !101, i64 0}
!201 = !{!196, !195, i64 83}
!202 = !{!88, !88, i64 0}
!203 = !{!23, !23, i64 0}
!204 = !{!24, !24, i64 0}
!205 = !{!"branch_weights", i32 1, i32 1048575}
!206 = !{!45, !13, i64 272}
!207 = !{!45, !13, i64 280}
!208 = !{!45, !13, i64 200}
!209 = !{!"_ZTSN7rocksdb11BlockHandleE", !13, i64 0, !13, i64 8}
!210 = !{!209, !13, i64 0}
!211 = !{!209, !13, i64 8}
!212 = distinct !{!212, !82}
!213 = !{!43, !13, i64 160}
!214 = distinct !{!214, !82}
!215 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!216 = distinct !{!216, !82, !228, !229}
!217 = distinct !{!217, !82, !228, !229}
!218 = distinct !{!218, !82, !229, !228}
!219 = distinct !{!219, !82, !228, !229}
!220 = distinct !{!220, !82, !228, !229}
!221 = distinct !{!221, !82, !229, !228}
!222 = distinct !{!222, i1 false, !"_ZSt19__relocate_object_aIN7rocksdb18CuckooTableBuilder12CuckooBucketES2_SaIS2_EEvPT_PT0_RT1_"}
!223 = distinct !{!223, !222, !"_ZSt19__relocate_object_aIN7rocksdb18CuckooTableBuilder12CuckooBucketES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!224 = distinct !{!224, !222, !"_ZSt19__relocate_object_aIN7rocksdb18CuckooTableBuilder12CuckooBucketES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!225 = distinct !{!225, !82, !228, !229}
!226 = distinct !{!226, !82, !228, !229}
!227 = distinct !{!227, !82, !228}
!228 = !{!"llvm.loop.isvectorized", i32 1}
!229 = !{!"llvm.loop.unroll.runtime.disable"}
!230 = !{!"branch_weights", i32 4, i32 28}
!231 = !{!223}
!232 = !{!224}
!233 = !{!"branch_weights", i32 4, i32 12}
!234 = distinct !{!234, !82}
!235 = !{!"p1 _ZTSSt4pairIjhE", !10, i64 0}
!236 = !{!"_ZTSNSt12_Vector_baseISt4pairIjhESaIS1_EE17_Vector_impl_dataE", !235, i64 0, !235, i64 8, !235, i64 16}
!237 = !{!236, !235, i64 0}
!238 = !{!236, !235, i64 16}
!239 = !{!"p1 int", !10, i64 0}
!240 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !239, i64 0, !239, i64 8, !239, i64 16}
!241 = !{!240, !239, i64 0}
!242 = !{!240, !239, i64 16}
!243 = distinct !{!243, !82}
!244 = distinct !{!244, !82}
!245 = distinct !{!245, !82}
!246 = !{!38, !36, i64 0}
!247 = !{!38, !37, i64 8}
!248 = distinct !{!248, !82}
!249 = !{!"_ZTSN7rocksdb12ThreadStatus13OperationTypeE", !6, i64 0}
!250 = !{!"_ZTSN7rocksdb13OperationInfoE", !249, i64 0, !14, i64 8}
!251 = !{!250, !249, i64 0}
!252 = !{!"_ZTSN7rocksdb12ThreadStatus14OperationStageE", !6, i64 0}
!253 = !{!"_ZTSN7rocksdb18OperationStageInfoE", !252, i64 0, !14, i64 8}
!254 = !{!253, !252, i64 0}
!255 = !{!"_ZTSN7rocksdb17OperationPropertyE", !7, i64 0, !14, i64 8}
!256 = !{!255, !7, i64 0}
end_hunk_1

inline.NumInlined: 78
inline.NumDeleted: 44
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

@.str = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"CUDA\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"CUDA_HOST\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"OPENCL\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"VULKAN\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"METAL\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"VPI\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ROCM\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ROCM_HOST\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"EXT_DEV\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"CUDA_MANAGED\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ONEAPI\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"WEBGPU\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"HEXAGON\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"<UNKNOWN>\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@switch.table._ZNK5arrow23DeviceAllocationTypeSet8ToStringB5cxx11Ev = private unnamed_addr constant [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.14, ptr @.str.14, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN5arrow26DeviceAllocationTypeToCStrENS_20DeviceAllocationTypeE(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i8 %0, -1                ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 16
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK5arrow23DeviceAllocationTypeSet8ToStringB5cxx11Ev, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.14, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow23DeviceAllocationTypeSet8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  store i8 123, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 1, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !11
  br label %bb.f

bb.a:                                             ; preds = %bb.t
  %i.d = load i64, ptr %i.b, align 8, !tbaa !12   ; 5 uses
  %i.e = icmp eq i64 %i.d, 9223372036854775807
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #9
          to label %.noexc15 unwind label %bb.u

.noexc15:                                         ; preds = %bb.b
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.f = add nsw i64 %i.d, 1                      ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.a                   ; 2 uses
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.i = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %2 = load i64, ptr %i.a, align 8
  %3 = select i1 %i.h, i64 15, i64 %2
  %.not.i.i.i = icmp ugt i64 %i.f, %3
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  store i8 125, ptr %i.j, align 1, !tbaa !11
  br label %bb.v

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 1)
          to label %bb.v unwind label %bb.u

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.t
  %indvars.iv = phi i64 [ 1, %._crit_edge.i.i ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.k = load i64, ptr %1, align 8, !tbaa !16
  %i.l = shl nuw nsw i64 1, %indvars.iv
  %i.m = and i64 %i.k, %i.l
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.n, label %bb.h [
    i32 0, label %bb.t
    i32 5, label %bb.t
    i32 6, label %bb.t
  ]

.loopexit:                                        ; preds = %bb.l, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.o = load i64, ptr %i.b, align 8, !tbaa !12   ; 6 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.q = icmp sgt i64 %i.o, 9223372036854775805
  br i1 %i.q, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i18

.invoke:                                          ; preds = %_ZN5arrow26DeviceAllocationTypeToCStrENS_20DeviceAllocationTypeE.exit, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #9
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i18: ; preds = %bb.i
  %i.r = add i64 %i.o, 2                          ; 3 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a                   ; 2 uses
  br i1 %i.t, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i18
  %i.u = icmp ult i64 %i.o, 16
  tail call void @llvm.assume(i1 %i.u)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i18
  %4 = load i64, ptr %i.a, align 8
  %5 = select i1 %i.t, i64 15, i64 %4
  %.not.i.i.i20 = icmp ugt i64 %i.r, %5
  br i1 %.not.i.i.i20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o
  store i16 8236, ptr %i.v, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o, i64 noundef 0, ptr noundef nonnull @.str.16, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25 unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25: ; preds = %bb.l, %bb.k
  store i64 %i.r, ptr %i.b, align 8, !tbaa !12
  %i.w = load ptr, ptr %0, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r
  store i8 0, ptr %i.x, align 1, !tbaa !11
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25, %bb.h
  %i.y = trunc i64 %indvars.iv to i8
  %switch.tableidx = add i8 %i.y, -1              ; 2 uses
  %i.z = icmp ult i8 %switch.tableidx, 16
  br i1 %i.z, label %switch.lookup, label %_ZN5arrow26DeviceAllocationTypeToCStrENS_20DeviceAllocationTypeE.exit

switch.lookup:                                    ; preds = %bb.m
  %i.aa = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK5arrow23DeviceAllocationTypeSet8ToStringB5cxx11Ev, i64 %i.aa
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN5arrow26DeviceAllocationTypeToCStrENS_20DeviceAllocationTypeE.exit

_ZN5arrow26DeviceAllocationTypeToCStrENS_20DeviceAllocationTypeE.exit: ; preds = %bb.m, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.14, %bb.m ] ; 4 uses
  %i.ab = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #10 ; 6 uses
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !12  ; 5 uses
  %i.ad = sub i64 9223372036854775807, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i26: ; preds = %_ZN5arrow26DeviceAllocationTypeToCStrENS_20DeviceAllocationTypeE.exit
  %i.af = add i64 %i.ac, %i.ab                    ; 3 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a                 ; 2 uses
  br i1 %i.ah, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i27

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i26
  %i.ai = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.ai)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i27: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i26
  %6 = load i64, ptr %i.a, align 8
  %7 = select i1 %i.ah, i64 15, i64 %6
  %.not.i.i.i28 = icmp ugt i64 %i.af, %7
  br i1 %.not.i.i.i28, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i27
  %.not8.i.i.i29 = icmp eq i64 %i.ab, 0
  br i1 %.not8.i.i.i29, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac ; 2 uses
  %cond.i.i.i30 = icmp eq i64 %i.ab, 1
  br i1 %cond.i.i.i30, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = load i8, ptr %.0.i, align 1, !tbaa !11
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %.0.i, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ac, i64 noundef 0, ptr noundef nonnull %.0.i, i64 noundef %i.ab)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33 unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33: ; preds = %bb.s, %bb.o, %bb.q, %bb.r
  store i64 %i.af, ptr %i.b, align 8, !tbaa !12
  %i.al = load ptr, ptr %0, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af
  store i8 0, ptr %i.am, align 1, !tbaa !11
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33, %bb.f, %bb.g, %bb.g, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 17
  br i1 %exitcond.not, label %bb.a, label %bb.f, !llvm.loop !18

bb.u:                                             ; preds = %bb.e, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.d, %bb.e
  store i64 %i.f, ptr %i.b, align 8, !tbaa !12
  %i.ao = load ptr, ptr %0, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f
  store i8 0, ptr %i.ap, align 1, !tbaa !11
  ret void

bb.w:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.u
  %.pn = phi { ptr, i32 } [ %i.an, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aq = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.as = load i64, ptr %i.a, align 8, !tbaa !11
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !15     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %5 = load i64, ptr %i.h, align 8                ; 2 uses
  %6 = select i1 %i.i, i64 15, i64 %5             ; 2 uses
  %i.k = icmp slt i64 %i.f, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #9
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.l = icmp ugt i64 %i.f, %6
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw i64 %6, 1                        ; 2 uses
  %i.n = icmp ult i64 %i.f, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.o = add nuw i64 %.0, 1                       ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !20

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #9
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #12 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.r = load i8, ptr %i.g, align 1, !tbaa !11
  store i8 %i.r, ptr %i.q, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.s = icmp ne ptr %3, null
  %i.t = icmp ne i64 %4, 0
  %or.cond = and i1 %i.s, %i.t
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = load i8, ptr %3, align 1, !tbaa !11
  store i8 %i.v, ptr %i.u, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.z, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ab = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ab)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ac = add i64 %5, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ac) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.a
  store ptr %i.q, ptr %0, align 8, !tbaa !15
  store i64 %.0, ptr %i.h, align 8, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !14, i64 8, !5, i64 16}
!14 = !{!"long", !5, i64 0}
!15 = !{!13, !9, i64 0}
!16 = !{!17, !14, i64 0}
!17 = !{!"_ZTSSt12_Base_bitsetILm1EE", !14, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0

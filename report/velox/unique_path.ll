inline.NumInlined: 88
inline.NumDeleted: 49
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.boost::filesystem::path" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@_ZN5boost10filesystem6detail12_GLOBAL__N_111fill_randomE = internal unnamed_addr global ptr @_ZN5boost10filesystem6detail12_GLOBAL__N_122fill_random_dev_randomEPvm, align 8
@_ZN5boost10filesystem6detail12_GLOBAL__N_13hexE = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"boost::filesystem::unique_path\00", align 1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5boost10filesystem6detail21init_fill_random_implEjjj(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i32 %0, 3
  br i1 %i.a, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 3
  %i.c = icmp ugt i32 %1, 16
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.split, label %.split4

.split:                                           ; preds = %bb.a, %bb.b
  br label %.split4

.split4:                                          ; preds = %bb.b, %.split
  %_ZN5boost10filesystem6detail12_GLOBAL__N_122fill_random_dev_randomEPvm.sink = phi ptr [ @_ZN5boost10filesystem6detail12_GLOBAL__N_121fill_random_getrandomEPvm, %.split ], [ @_ZN5boost10filesystem6detail12_GLOBAL__N_122fill_random_dev_randomEPvm, %bb.b ]
  store atomic ptr %_ZN5boost10filesystem6detail12_GLOBAL__N_122fill_random_dev_randomEPvm.sink, ptr @_ZN5boost10filesystem6detail12_GLOBAL__N_111fill_randomE monotonic, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN5boost10filesystem6detail12_GLOBAL__N_122fill_random_dev_randomEPvm(ptr noundef captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull @.str.2, i32 noundef 524288) ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull @.str.3, i32 noundef 524288) ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #11
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  %.024 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %.01835 = phi ptr [ %.119, %bb.g ], [ %0, %bb.d ] ; 3 uses
  %.02034 = phi i64 [ %.121, %bb.g ], [ 0, %bb.d ] ; 3 uses
  %i.g = sub nuw i64 %1, %.02034
  %i.h = tail call i64 @read(i32 noundef %.024, ptr noundef %.01835, i64 noundef %i.g) ; 3 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %.lr.ph
  %i.j = tail call ptr @__errno_location() #11
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 2 uses
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.g, label %.thread, !llvm.loop !8

.thread:                                          ; preds = %bb.e
  %2 = tail call noundef i32 @close(i32 noundef %.024) ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.m = add i64 %i.h, %.02034
  %i.n = getelementptr inbounds i8, ptr %.01835, i64 %i.h
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.121 = phi i64 [ %i.m, %bb.f ], [ %.02034, %bb.e ] ; 2 uses
  %.119 = phi ptr [ %i.n, %bb.f ], [ %.01835, %bb.e ]
  %i.o = icmp ult i64 %.121, %1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %i.p = tail call noundef i32 @close(i32 noundef %.024) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread, %._crit_edge, %bb.c
  %.4 = phi i32 [ %i.f, %bb.c ], [ %i.k, %.thread ], [ 0, %._crit_edge ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN5boost10filesystem6detail12_GLOBAL__N_121fill_random_getrandomEPvm(ptr noundef %0, i64 noundef %1) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.02034 = phi ptr [ %.121, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %.02233 = phi i64 [ %.123, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.a = sub nuw i64 %1, %.02233
  %i.b = tail call i64 @getrandom(ptr noundef %.02034, i64 noundef %i.a, i32 noundef 0) ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call ptr @__errno_location() #11
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3    ; 3 uses
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.f, label %bb.c, !llvm.loop !10

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.e, 38
  %i.h = icmp eq i64 %.02233, 0
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  store atomic ptr @_ZN5boost10filesystem6detail12_GLOBAL__N_122fill_random_dev_randomEPvm, ptr @_ZN5boost10filesystem6detail12_GLOBAL__N_111fill_randomE monotonic, align 8
  %i.i = tail call noundef i32 @_ZN5boost10filesystem6detail12_GLOBAL__N_122fill_random_dev_randomEPvm(ptr noundef %.02034, i64 noundef %1)
  br label %.thread

bb.e:                                             ; preds = %.lr.ph
  %i.j = add i64 %i.b, %.02233
  %i.k = getelementptr inbounds nuw i8, ptr %.02034, i64 %i.b
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.123 = phi i64 [ %i.j, %bb.e ], [ %.02233, %bb.b ] ; 2 uses
  %.121 = phi ptr [ %i.k, %bb.e ], [ %.02034, %bb.b ]
  %i.l = icmp ult i64 %.123, %1
  br i1 %i.l, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.f, %bb.a, %bb.c, %bb.d
  %.3 = phi i32 [ %i.i, %bb.d ], [ %i.e, %bb.c ], [ 0, %bb.a ], [ 0, %bb.f ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost10filesystem6detail11unique_pathERKNS0_4pathEPNS_6system10error_codeE(ptr dead_on_unwind noalias writable sret(%"class.boost::filesystem::path") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = alloca [16 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !11
  %i.c = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !7

.noexc6.i:                                        ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #14 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !15
  store i64 %i.e, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !19
  store i8 %i.l, ptr %i.k, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.e, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.o = load i64, ptr %i.m, align 8, !tbaa !18   ; 3 uses
  %.not2233.not = icmp eq i64 %i.o, 0
  br i1 %.not2233.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.not = icmp eq ptr %2, null
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.i
  %.035.us = phi i32 [ %.2.us, %bb.i ], [ 32, %.lr.ph ] ; 3 uses
  %.01834.us = phi i64 [ %i.am, %bb.i ], [ 0, %.lr.ph ] ; 3 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.01834.us
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19
  %i.t = icmp eq i8 %i.s, 37
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.u = icmp eq i32 %.035.us, 32
  br i1 %i.u, label %bb.g, label %_ZNK5boost6system10error_codecvbEv.exit.thread30.us

bb.g:                                             ; preds = %bb.f
  %i.v = load atomic ptr, ptr @_ZN5boost10filesystem6detail12_GLOBAL__N_111fill_randomE monotonic, align 8
  %i.w = invoke noundef i32 %i.v(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %.noexc.us unwind label %.split.us, !inline_history !20 ; 2 uses

.noexc.us:                                        ; preds = %bb.g
  %.not.i.us = icmp eq i32 %i.w, 0
  br i1 %.not.i.us, label %_ZNK5boost6system10error_codecvbEv.exit.thread30.us, label %bb.h, !prof !21

bb.h:                                             ; preds = %.noexc.us
  invoke void @_ZN5boost10filesystem10emit_errorEiPNS_6system10error_codeEPKc(i32 noundef %i.w, ptr noundef null, ptr noundef nonnull @.str.4)
          to label %_ZNK5boost6system10error_codecvbEv.exit.thread30.us unwind label %.split.us

_ZNK5boost6system10error_codecvbEv.exit.thread30.us: ; preds = %.noexc.us, %bb.h, %bb.f
  %.1.us = phi i32 [ %.035.us, %bb.f ], [ 0, %bb.h ], [ 0, %.noexc.us ] ; 3 uses
  %i.x = lshr i32 %.1.us, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nuw nsw i32 %.1.us, 1
  %i.ad = shl nuw nsw i32 %.1.us, 2
  %i.ae = and i32 %i.ad, 4
  %i.af = lshr i32 %i.ab, %i.ae
  %i.ag = and i32 %i.af, 15
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN5boost10filesystem6detail12_GLOBAL__N_13hexE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19
  %i.ak = load ptr, ptr %3, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.01834.us
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread30.us, %.lr.ph.split.us
  %.2.us = phi i32 [ %i.ac, %_ZNK5boost6system10error_codecvbEv.exit.thread30.us ], [ %.035.us, %.lr.ph.split.us ]
  %i.am = add nuw i64 %.01834.us, 1               ; 2 uses
  %exitcond37.not = icmp eq i64 %i.am, %i.o
  br i1 %exitcond37.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !22

.split.us:                                        ; preds = %bb.h, %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.035 = phi i32 [ %.2, %bb.o ], [ 32, %.lr.ph ] ; 3 uses
  %.01834 = phi i64 [ %i.bt, %bb.o ], [ 0, %.lr.ph ] ; 3 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.01834
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !19
  %i.ar = icmp eq i8 %i.aq, 37
  br i1 %i.ar, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph.split
  %i.as = icmp eq i32 %.035, 32
  br i1 %i.as, label %bb.k, label %_ZNK5boost6system10error_codecvbEv.exit.thread30

bb.k:                                             ; preds = %bb.j
  %i.at = load atomic ptr, ptr @_ZN5boost10filesystem6detail12_GLOBAL__N_111fill_randomE monotonic, align 8
  %i.au = invoke noundef i32 %i.at(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %.noexc unwind label %.split, !inline_history !20 ; 2 uses

.noexc:                                           ; preds = %bb.k
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %_ZN5boost10filesystem6detail12_GLOBAL__N_119system_crypt_randomEPvmPNS_6system10error_codeE.exit, label %bb.l, !prof !21

bb.l:                                             ; preds = %.noexc
  invoke void @_ZN5boost10filesystem10emit_errorEiPNS_6system10error_codeEPKc(i32 noundef %i.au, ptr noundef nonnull %2, ptr noundef nonnull @.str.4)
end_hunk_0

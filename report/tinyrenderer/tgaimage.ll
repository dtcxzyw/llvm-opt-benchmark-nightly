Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/tgaimage?download=true
inline.NumInlined: 135
inline.NumDeleted: 69
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.TGAHeader = type <{ i8, i8, i8, i16, i16, i8, i16, i16, i16, i16, i8, i8 }>
%struct.TGAColor = type { [4 x i8], i8 }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }

@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"can't open file \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"an error occured while reading the header\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"bad bpp (or width/height) value\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"an error occured while reading the data\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"unknown file format \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Too many pixels read\0A\00", align 1
@__const._ZNK8TGAImage14write_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.footer = private unnamed_addr constant [18 x i8] c"TRUEVISION-XFILE.\00", align 16
@.str.10 = private unnamed_addr constant [25 x i8] c"can't dump the tga file\0A\00", align 1

@_ZN8TGAImageC1Eiii8TGAColor = dso_local unnamed_addr alias void (ptr, i32, i32, i32, i40), ptr @_ZN8TGAImageC2Eiii8TGAColor

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8TGAImageC2Eiii8TGAColor(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 9)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i40 %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.018 = alloca i40, align 8                ; 2 uses
  store i40 %4, ptr %.sroa.018, align 8
  store i32 %1, ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = trunc i32 %3 to i8
  store i8 %i.c, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = mul nsw i32 %2, %1
  %i.f = mul nsw i32 %i.e, %3                     ; 3 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.f, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc17

.noexc17:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #13 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.g, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc17
  %i.l = phi ptr [ %i.j, %.noexc17 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !22
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.preheader.lr.ph, label %._crit_edge22.split

.preheader.lr.ph:                                 ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.o = icmp slt i32 %1, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %brmerge = or i1 %i.o, %.not.i.i.i.i
  br i1 %brmerge, label %._crit_edge22.split, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.01620 = phi i32 [ %i.r, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %5 = load ptr, ptr %i.p, align 8, !tbaa !22
  %6 = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.q = icmp eq ptr %5, %6
  br i1 %i.q, label %._crit_edge, label %.lr.ph.split

._crit_edge22.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  ret void

._crit_edge:                                      ; preds = %_ZN8TGAImage3setEiiRK8TGAColor.exit, %.preheader
  %i.r = add nuw nsw i32 %.01620, 1               ; 2 uses
  %exitcond27.not = icmp eq i32 %i.r, %2
  br i1 %exitcond27.not, label %._crit_edge22.split, label %.preheader, !llvm.loop !49

.lr.ph.split:                                     ; preds = %.preheader, %_ZN8TGAImage3setEiiRK8TGAColor.exit
  %.019 = phi i32 [ %i.ad, %_ZN8TGAImage3setEiiRK8TGAColor.exit ], [ 0, %.preheader ] ; 3 uses
  %7 = load ptr, ptr %i.p, align 8, !tbaa !22
  %8 = load ptr, ptr %i.d, align 8, !tbaa !20     ; 2 uses
  %i.s = icmp eq ptr %7, %8
  br i1 %i.s, label %_ZN8TGAImage3setEiiRK8TGAColor.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.t = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not.i = icmp slt i32 %.019, %i.t
  %i.u = load i32, ptr %i.a, align 4
  %.not11.i = icmp slt i32 %.01620, %i.u
  %or.cond.i = select i1 %.not.i, i1 %.not11.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZN8TGAImage3setEiiRK8TGAColor.exit

bb.c:                                             ; preds = %bb.b
  %i.v = mul nuw nsw i32 %i.t, %.01620
  %i.w = add nsw i32 %i.v, %.019
  %i.x = load i8, ptr %i.b, align 8, !tbaa !19    ; 2 uses
  %i.y = zext i8 %i.x to i32
  %i.z = mul nsw i32 %i.w, %i.y
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %8, i64 %i.aa
  %i.ac = zext i8 %i.x to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull readonly align 8 dereferenceable(5) %.sroa.018, i64 %i.ac, i1 false)
  br label %_ZN8TGAImage3setEiiRK8TGAColor.exit

_ZN8TGAImage3setEiiRK8TGAColor.exit:              ; preds = %.lr.ph.split, %bb.b, %bb.c
  %i.ad = add nuw nsw i32 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ad, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !50
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8TGAImage3setEiiRK8TGAColor(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(5) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = or i32 %2, %1
  %i.g = icmp slt i32 %i.f, 0
  %or.cond3 = or i1 %i.g, %i.e
  br i1 %or.cond3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %0, align 8, !tbaa !17     ; 2 uses
  %.not = icmp slt i32 %1, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %.not11 = icmp slt i32 %2, %i.j
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = mul nsw i32 %i.h, %2
  %i.l = add nsw i32 %i.k, %1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !19    ; 2 uses
  %i.o = zext i8 %i.n to i32
  %i.p = mul nsw i32 %i.l, %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 %i.q
  %i.s = zext i8 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %3, i64 %i.s, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8TGAImage13read_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_ifstream", align 8 ; 17 uses
  %3 = alloca %struct.TGAHeader, align 1          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %1, align 8, !tbaa !28
  %i.c = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.a, ptr noundef %i.b, i32 noundef 12)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, null
  %i.d = load ptr, ptr %2, align 8, !tbaa !30
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
  %i.j = or i32 %i.i, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc
  %.sink.i = phi i32 [ %i.j, %bb.b ], [ 0, %.noexc ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %.sink.i)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit unwind label %bb.e

_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.l = call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.k) #15
  br i1 %i.l, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.n = load ptr, ptr %1, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !40
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.n, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.f:                                             ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %3, i8 0, i64 18, i1 false)
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %3, i64 noundef 18)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %2, align 8, !tbaa !30
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !39
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %.invoke

bb.h:                                             ; preds = %.invoke, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !51 ; 2 uses
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  store i32 %i.ae, ptr %0, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !52 ; 2 uses
  %i.ah = zext i16 %i.ag to i32                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !43
  %i.al = lshr i8 %i.ak, 3                        ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 %i.al, ptr %i.am, align 8, !tbaa !19
  %i.an = icmp eq i16 %i.ad, 0
  %i.ao = icmp eq i16 %i.ag, 0
  %or.cond56 = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond56, label %.invoke, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i8 %i.al, label %.invoke [
    i8 1, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
    i8 3, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
    i8 4, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  ]

.invoke:                                          ; preds = %bb.g, %bb.i, %bb.j
  %i.ap = phi ptr [ @.str.4, %bb.i ], [ @.str.4, %bb.j ], [ @.str.3, %bb.g ]
  %i.aq = phi i64 [ 32, %bb.i ], [ 32, %bb.j ], [ 42, %bb.g ]
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.ap, i64 noundef %i.aq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.h ; 0 uses

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.j, %bb.j, %bb.j
  %i.as = zext nneg i8 %i.al to i32
  %i.at = mul nuw i32 %i.ah, %i.ae
  %i.au = mul i32 %i.at, %i.as
  %i.av = zext nneg i32 %i.au to i64              ; 4 uses
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #13
          to label %.noexc38 unwind label %bb.n   ; 3 uses

.noexc38:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 0, i64 %i.av, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !20
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !22
  store ptr %i.ax, ptr %i.bb, align 8, !tbaa !21
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.noexc38
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.az to i64
  %i.bf = sub i64 %i.bd, %i.be
end_hunk_0

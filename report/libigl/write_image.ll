inline.NumInlined: 153
inline.NumDeleted: 87
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str.7 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl3stb11write_imageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN5Eigen6MatrixIhLin1ELin1ELi0ELin1ELin1EEESB_SB_SB_i(ptr nofree noundef readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 4 uses
  %i.f = mul nsw i64 %i.e, %i.c                   ; 3 uses
  %i.g = shl nsw i64 %i.f, 2                      ; 3 uses
  %i.h = icmp slt i64 %i.f, 0
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #7
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, label %.noexc47

.noexc47:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.g, i1 false)
  %i.k = ptrtoint ptr %i.j to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %.noexc47, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.16.0 = phi i64 [ %i.k, %.noexc47 ], [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.054.0 = phi ptr [ %i.i, %.noexc47 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %i.l = icmp sgt i64 %i.c, 0
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge64

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.m = icmp sgt i64 %i.e, 0
  %i.n = shl i64 %i.c, 2
  br i1 %i.m, label %.preheader.lr.ph.split.us, label %._crit_edge64

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %1, align 8, !tbaa !15
  %i.s = load ptr, ptr %2, align 8, !tbaa !15
  %i.t = load i64, ptr %i.q, align 8, !tbaa !9
  %i.u = load ptr, ptr %3, align 8, !tbaa !15
  %i.v = load i64, ptr %i.p, align 8, !tbaa !9
  %i.w = load ptr, ptr %4, align 8, !tbaa !15
  %i.x = load i64, ptr %i.o, align 8, !tbaa !9
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvars.iv67 = phi i64 [ 0, %.preheader.lr.ph.split.us ], [ %12, %._crit_edge.us ] ; 4 uses
  %.03963.us = phi i32 [ 0, %.preheader.lr.ph.split.us ], [ %11, %._crit_edge.us ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.r, i64 %indvars.iv67
  %7 = shl i32 %.03963.us, 2
  %8 = zext i32 %7 to i64
  %i.z = getelementptr i8, ptr %i.s, i64 %indvars.iv67
  %i.aa = getelementptr i8, ptr %i.u, i64 %indvars.iv67
  %i.ab = getelementptr i8, ptr %i.w, i64 %indvars.iv67
  %invariant.gep = getelementptr i8, ptr %.sroa.054.0, i64 %8
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %10, %bb.b ] ; 2 uses
  %.062.us = phi i32 [ 0, %.preheader.us ], [ %9, %bb.b ]
  %i.ac = xor i64 %indvars.iv, -1
  %i.ad = add nsw i64 %i.e, %i.ac                 ; 4 uses
  %i.ae = mul nsw i64 %i.ad, %i.c
  %i.af = getelementptr i8, ptr %i.y, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = mul i64 %i.n, %indvars.iv
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ah ; 4 uses
  store i8 %i.ag, ptr %gep, align 1, !tbaa !16
  %i.ai = mul nsw i64 %i.t, %i.ad
  %i.aj = getelementptr i8, ptr %i.z, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !16
  %i.am = mul nsw i64 %i.v, %i.ad
  %i.an = getelementptr i8, ptr %i.aa, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %gep, i64 2
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !16
  %i.aq = mul nsw i64 %i.x, %i.ad
  %i.ar = getelementptr i8, ptr %i.ab, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %gep, i64 3
  store i8 %i.as, ptr %i.at, align 1, !tbaa !16
  %9 = add i32 %.062.us, 1                        ; 2 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %i.au = icmp sgt i64 %i.e, %10
  br i1 %i.au, label %bb.b, label %._crit_edge.us, !llvm.loop !17

._crit_edge.us:                                   ; preds = %bb.b
  %11 = add i32 %.03963.us, 1                     ; 2 uses
  %12 = zext i32 %11 to i64                       ; 2 uses
  %i.av = icmp sgt i64 %i.c, %12
  br i1 %i.av, label %.preheader.us, label %._crit_edge64, !llvm.loop !19

._crit_edge64:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !20
  %i.ax = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %i.az, ptr %i.a, align 8, !tbaa !25
  %i.ba = icmp ugt i64 %i.az, 15
  br i1 %i.ba, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %._crit_edge64
  %i.bb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc48 unwind label %bb.h   ; 2 uses

.noexc48:                                         ; preds = %.noexc.i
  store ptr %i.bb, ptr %6, align 8, !tbaa !22
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc48, %._crit_edge64
  %i.bd = phi ptr [ %i.bb, %.noexc48 ], [ %i.aw, %._crit_edge64 ] ; 2 uses
  switch i64 %i.az, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !16
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !24
  %i.bh = load ptr, ptr %6, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !9
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !14
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = invoke noundef zeroext i1 @_ZN3igl3stb11write_imageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPKhi(ptr noundef nonnull align 8 %6, i32 noundef %i.bk, i32 noundef %i.bm, ptr noundef %.sroa.054.0, i32 noundef %5)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bo = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aw
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.bq = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.not.i.i.i = icmp eq ptr %.sroa.054.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = ptrtoint ptr %.sroa.054.0 to i64
  %i.bt = sub i64 %.sroa.16.0, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.054.0, i64 noundef %i.bt) #10
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  ret i1 %i.bn

bb.h:                                             ; preds = %.noexc.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.i:                                             ; preds = %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %6, align 8, !tbaa !22    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.aw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.i
  %i.by = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.bu, %bb.h ], [ %i.bv, %bb.i ]
  %.not.i.i.i52 = icmp eq ptr %.sroa.054.0, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIhSaIhEED2Ev.exit53, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.ca = ptrtoint ptr %.sroa.054.0 to i64
  %i.cb = sub i64 %.sroa.16.0, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.054.0, i64 noundef %i.cb) #10
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit53

_ZNSt6vectorIhSaIhEED2Ev.exit53:                  ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl3stb11write_imageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiPKhi(ptr noundef nonnull align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = shl nsw i32 %1, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !24
  store i8 0, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !24
  store i8 0, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !24
  store i8 0, ptr %i.f, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.h, ptr %8, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !24
  store i8 0, ptr %i.h, align 8, !tbaa !16
  invoke void @_ZN3igl8pathinfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_S8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !24
  %cond = icmp eq i64 %i.j, 3
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread47

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %7, align 8, !tbaa !22     ; 8 uses
  %i.l = load i16, ptr %i.k, align 1
  %i.m = xor i16 %i.l, 28272
  %i.n = getelementptr i8, ptr %i.k, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i16
  %i.q = xor i16 %i.p, 103
  %i.r = or i16 %i.m, %i.q
  %i.s = icmp ne i16 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !22
  %i.w = invoke i32 @stbi_write_png(ptr noundef %i.v, i32 noundef %1, i32 noundef %2, i32 noundef 4, ptr noundef %3, i32 noundef %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.x = icmp ne i32 %i.w, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread47

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit31.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %8, align 8, !tbaa !22     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.h
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !16
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.ad = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.f
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
end_hunk_0

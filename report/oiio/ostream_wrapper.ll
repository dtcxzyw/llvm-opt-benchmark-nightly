inline.NumInlined: 133
inline.NumDeleted: 75
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN4YAML15ostream_wrapperC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4YAML15ostream_wrapperC2Ev
@_ZN4YAML15ostream_wrapperC1ERSo = unnamed_addr alias void (ptr, ptr), ptr @_ZN4YAML15ostream_wrapperC2ERSo
@_ZN4YAML15ostream_wrapperD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4YAML15ostream_wrapperD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML15ostream_wrapperC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(57) initializes((0, 57)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #12 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 1
  store ptr %i.c, ptr %i.b, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.e, i8 0, i64 33, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML15ostream_wrapperC2ERSo(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(57) initializes((0, 57)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i8 0, i64 25, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4YAML15ostream_wrapperD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(57) dereferenceable(57) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #13
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML15ostream_wrapper5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, i64 noundef %i.e) ; 0 uses
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = load ptr, ptr %0, align 8, !tbaa !7
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24
  %i.q = add i64 %i.n, 1
  %i.r = add i64 %i.q, %i.p
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.r)
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.speculated)
  %i.s = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.t = load i64, ptr %i.o, align 8, !tbaa !24   ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !26
  %i.v = load i64, ptr %i.m, align 8, !tbaa !25
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v ; 2 uses
  %i.x = icmp sgt i64 %i.t, 1
  br i1 %i.x, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %i.t, 1
  br i1 %i.y, label %bb.f, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load i8, ptr %i.s, align 1, !tbaa !28
  store i8 %i.z, ptr %i.w, align 1, !tbaa !28
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.aa = load ptr, ptr %1, align 8, !tbaa !21    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  %.not1920 = icmp samesign eq i64 %i.ac, 0
  br i1 %.not1920, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.promoted = load i64, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  %.promoted22 = load i64, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %.promoted23 = load i64, ptr %i.ag, align 8     ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.aj = add i64 %.promoted, 1                   ; 2 uses
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !25
  %i.ak = add i64 %.promoted22, 1                 ; 2 uses
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !29
  %i.al = icmp eq i8 %i.ai, 10
  br i1 %i.al, label %bb.g, label %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol

bb.g:                                             ; preds = %.prol.preheader
  %i.am = add i64 %.promoted23, 1                 ; 2 uses
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !30
  store i64 0, ptr %i.af, align 8, !tbaa !29
  store i8 0, ptr %i.ah, align 8, !tbaa !31
  br label %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol

_ZN4YAML15ostream_wrapper10update_posEc.exit.prol: ; preds = %bb.g, %.prol.preheader
  %i.an = phi i64 [ %.promoted23, %.prol.preheader ], [ %i.am, %bb.g ]
  %i.ao = phi i64 [ %i.ak, %.prol.preheader ], [ 0, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol, %.lr.ph
  %.unr = phi i64 [ %.promoted23, %.lr.ph ], [ %i.an, %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol ]
  %.unr26 = phi i64 [ %.promoted22, %.lr.ph ], [ %i.ao, %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol ]
  %.unr27 = phi i64 [ %.promoted, %.lr.ph ], [ %i.aj, %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol ]
  %.sroa.012.021.unr = phi ptr [ %i.aa, %.lr.ph ], [ %i.ap, %_ZN4YAML15ostream_wrapper10update_posEc.exit.prol ]
  %i.aq = icmp eq i64 %i.ac, 1
  br i1 %i.aq, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_IPcSt6vectorIcS8_EEEET0_T_SG_SF_.exit
  ret void

.lr.ph.new:                                       ; preds = %.prol.loopexit, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1
  %i.ar = phi i64 [ %i.bh, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %i.as = phi i64 [ %i.bi, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.unr26, %.prol.loopexit ]
  %i.at = phi i64 [ %i.bd, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.unr27, %.prol.loopexit ] ; 2 uses
  %.sroa.012.021 = phi ptr [ %i.bj, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ], [ %.sroa.012.021.unr, %.prol.loopexit ] ; 3 uses
  %i.au = load i8, ptr %.sroa.012.021, align 1, !tbaa !28
  %i.av = add i64 %i.at, 1
  store i64 %i.av, ptr %i.ae, align 8, !tbaa !25
  %i.aw = add i64 %i.as, 1                        ; 2 uses
  store i64 %i.aw, ptr %i.af, align 8, !tbaa !29
  %i.ax = icmp eq i8 %i.au, 10
  br i1 %i.ax, label %bb.h, label %_ZN4YAML15ostream_wrapper10update_posEc.exit

bb.h:                                             ; preds = %.lr.ph.new
  %i.ay = add i64 %i.ar, 1                        ; 2 uses
  store i64 %i.ay, ptr %i.ag, align 8, !tbaa !30
  store i64 0, ptr %i.af, align 8, !tbaa !29
  store i8 0, ptr %i.ah, align 8, !tbaa !31
  br label %_ZN4YAML15ostream_wrapper10update_posEc.exit

_ZN4YAML15ostream_wrapper10update_posEc.exit:     ; preds = %.lr.ph.new, %bb.h
  %i.az = phi i64 [ %i.ar, %.lr.ph.new ], [ %i.ay, %bb.h ] ; 2 uses
  %i.ba = phi i64 [ %i.aw, %.lr.ph.new ], [ 0, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !28
  %i.bd = add i64 %i.at, 2                        ; 2 uses
  store i64 %i.bd, ptr %i.ae, align 8, !tbaa !25
  %i.be = add i64 %i.ba, 1                        ; 2 uses
  store i64 %i.be, ptr %i.af, align 8, !tbaa !29
  %i.bf = icmp eq i8 %i.bc, 10
  br i1 %i.bf, label %bb.i, label %_ZN4YAML15ostream_wrapper10update_posEc.exit.1

bb.i:                                             ; preds = %_ZN4YAML15ostream_wrapper10update_posEc.exit
  %i.bg = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.bg, ptr %i.ag, align 8, !tbaa !30
  store i64 0, ptr %i.af, align 8, !tbaa !29
  store i8 0, ptr %i.ah, align 8, !tbaa !31
  br label %_ZN4YAML15ostream_wrapper10update_posEc.exit.1

_ZN4YAML15ostream_wrapper10update_posEc.exit.1:   ; preds = %bb.i, %_ZN4YAML15ostream_wrapper10update_posEc.exit
  %i.bh = phi i64 [ %i.az, %_ZN4YAML15ostream_wrapper10update_posEc.exit ], [ %i.bg, %bb.i ]
  %i.bi = phi i64 [ %i.be, %_ZN4YAML15ostream_wrapper10update_posEc.exit ], [ 0, %bb.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 2 ; 2 uses
  %.not19.1 = icmp eq ptr %i.bj, %i.ad
  br i1 %.not19.1, label %._crit_edge, label %.lr.ph.new
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !12
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #12 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !28
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #13
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !11
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ad = icmp ult i64 %1, %i.f
  br i1 %i.ad, label %bb.k, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ae
  br i1 %.not.i4, label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !12
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit34.i, %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4YAML15ostream_wrapper10update_posEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(57) %0, i8 noundef signext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !29
  %i.g = icmp eq i8 %1, 10
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !30
  store i64 0, ptr %i.d, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.k, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, i64 noundef %2) ; 0 uses
  %.not19 = icmp eq i64 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = load ptr, ptr %0, align 8, !tbaa !7
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25
  %i.l = add i64 %2, 1
  %i.m = add i64 %i.l, %i.k
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.m)
  tail call void @_ZNSt6vectorIcSaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.speculated)
  %i.n = load ptr, ptr %0, align 8, !tbaa !26
  %i.o = load i64, ptr %i.j, align 8, !tbaa !25
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o ; 2 uses
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %1, i64 %2, i1 false)
  br label %.lr.ph

bb.d:                                             ; preds = %bb.b
  switch i64 %2, label %.lr.ph [
    i64 1, label %bb.e
    i64 0, label %._crit_edge
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.r, ptr %i.p, align 1, !tbaa !28
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.c, %bb.e, %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.promoted = load i64, ptr %i.s, align 8, !tbaa !25 ; 2 uses
  %.promoted17 = load i64, ptr %i.t, align 8, !tbaa !29 ; 2 uses
  %.promoted18 = load i64, ptr %i.u, align 8      ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.w = icmp eq i64 %2, 1
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %2, -2
  br label %bb.g

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZN4YAML15ostream_wrapper10update_posEc.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.promoted18, %.lr.ph ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init24.a = phi i64 [ %.promoted17, %.lr.ph ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init26 = phi i64 [ %.promoted, %.lr.ph ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %.016.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod27 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.016.epil.init
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28
  %i.z = add i64 %.epil.init26, 1
  store i64 %i.z, ptr %i.s, align 8, !tbaa !25
  %i.aa = add i64 %.epil.init24.a, 1
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !29
  %i.ab = icmp eq i8 %i.y, 10
  br i1 %i.ab, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.epil.preheader
  %i.ac = add i64 %.epil.init, 1
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !30
  store i64 0, ptr %i.t, align 8, !tbaa !29
  store i8 0, ptr %i.v, align 8, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %.epil.preheader, %bb.d, %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit
  ret void

bb.g:                                             ; preds = %_ZN4YAML15ostream_wrapper10update_posEc.exit.1, %.lr.ph.new
  %i.ad = phi i64 [ %.promoted18, %.lr.ph.new ], [ %i.av, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ] ; 2 uses
  %i.ae = phi i64 [ %.promoted17, %.lr.ph.new ], [ %i.aw, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ]
  %i.af = phi i64 [ %.promoted, %.lr.ph.new ], [ %i.ar, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ] ; 2 uses
  %.016 = phi i64 [ 0, %.lr.ph.new ], [ %i.ax, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN4YAML15ostream_wrapper10update_posEc.exit.1 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !28
  %i.ai = add i64 %i.af, 1
  store i64 %i.ai, ptr %i.s, align 8, !tbaa !25
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %i.t, align 8, !tbaa !29
  %i.ak = icmp eq i8 %i.ah, 10
  br i1 %i.ak, label %bb.h, label %_ZN4YAML15ostream_wrapper10update_posEc.exit

bb.h:                                             ; preds = %bb.g
  %i.al = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.al, ptr %i.u, align 8, !tbaa !30
  store i64 0, ptr %i.t, align 8, !tbaa !29
  store i8 0, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4YAML15ostream_wrapper10update_posEc.exit

_ZN4YAML15ostream_wrapper10update_posEc.exit:     ; preds = %bb.g, %bb.h
  %i.am = phi i64 [ %i.ad, %bb.g ], [ %i.al, %bb.h ] ; 2 uses
  %i.an = phi i64 [ %i.aj, %bb.g ], [ 0, %bb.h ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !28
  %i.ar = add i64 %i.af, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.s, align 8, !tbaa !25
  %i.as = add i64 %i.an, 1                        ; 2 uses
  store i64 %i.as, ptr %i.t, align 8, !tbaa !29
  %i.at = icmp eq i8 %i.aq, 10
  br i1 %i.at, label %bb.i, label %_ZN4YAML15ostream_wrapper10update_posEc.exit.1

bb.i:                                             ; preds = %_ZN4YAML15ostream_wrapper10update_posEc.exit
  %i.au = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.au, ptr %i.u, align 8, !tbaa !30
  store i64 0, ptr %i.t, align 8, !tbaa !29
  store i8 0, ptr %i.v, align 8, !tbaa !31
  br label %_ZN4YAML15ostream_wrapper10update_posEc.exit.1

_ZN4YAML15ostream_wrapper10update_posEc.exit.1:   ; preds = %bb.i, %_ZN4YAML15ostream_wrapper10update_posEc.exit
  %i.av = phi i64 [ %i.am, %_ZN4YAML15ostream_wrapper10update_posEc.exit ], [ %i.au, %bb.i ] ; 2 uses
  %i.aw = phi i64 [ %i.as, %_ZN4YAML15ostream_wrapper10update_posEc.exit ], [ 0, %bb.i ] ; 2 uses
  %i.ax = add nuw i64 %.016, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !32
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !9, i64 16}
!12 = !{!8, !9, i64 8}
!13 = !{!14, !18, i64 24}
!14 = !{!"_ZTSN4YAML15ostream_wrapperE", !15, i64 0, !18, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !20, i64 56}
!15 = !{!"_ZTSSt6vectorIcSaIcEE", !16, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !8, i64 0}
!18 = !{!"p1 _ZTSSo", !10, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"bool", !5, i64 0}
!21 = !{!22, !9, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !19, i64 8, !5, i64 16}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!24 = !{!22, !19, i64 8}
!25 = !{!14, !19, i64 32}
!26 = !{!9, !9, i64 0}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!5, !5, i64 0}
!29 = !{!14, !19, i64 48}
!30 = !{!14, !19, i64 40}
!31 = !{!14, !20, i64 56}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
end_hunk_0

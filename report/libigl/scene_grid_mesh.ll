Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_grid_mesh?download=true
inline.NumInlined: 372
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK6embree8Geometry13vlinearBoundsERKNS_6Vec3faEffRKNS_12LinearSpace3IS1_EEmRKNS_4BBoxIfEE:.noexc.i
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.c) #20
  %i.y = load ptr, ptr %8, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.y) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %8, align 8               ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread18: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.ab) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn11 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.x, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @__cxa_free_exception(ptr %i.c) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread18 ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.e:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree12rtcore_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6embree12rtcore_errorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #22, !inline_history !76
  br label %_ZN6embree12rtcore_errorD2Ev.exit

_ZN6embree12rtcore_errorD2Ev.exit:                ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #20, !inline_history !76
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK6embree12rtcore_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree4sse211GridMeshISAD0Ev(ptr noundef nonnull align 16 dereferenceable(264) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN6embree8GridMeshD2Ev(ptr noundef nonnull align 16 dead_on_return(264) dereferenceable(264) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse211GridMeshISA18createPrimRefArrayERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorIS3_Lm32EEEEERNS2_INS_16SubGridBuildDataENS4_IS8_Lm4EEEEERKNS_5rangeImEEmj(ptr dead_on_unwind noalias writable sret(%"class.embree::PrimInfoT") align 16 %0, ptr noundef nonnull align 16 dereferenceable(264) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %5, i32 noundef %6) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load i64, ptr %4, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = bitcast i32 %6 to float
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

._crit_edge197:                                   ; preds = %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, %bb.a
  %.lcssa141159.lcssa186.lcssa = phi i64 [ 0, %bb.a ], [ %.lcssa141159.lcssa185, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ]
  %.lcssa139157.lcssa183.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %.lcssa139157.lcssa182, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ]
  %.lcssa137155.lcssa180.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.lcssa137155.lcssa179, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ]
  %.lcssa135153.lcssa178.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %.lcssa135153.lcssa177, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ]
  %.lcssa152.lcssa175.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.lcssa152.lcssa174, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.lcssa152.lcssa175.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa135153.lcssa178.lcssa, ptr %i.r, align 16
  store <4 x float> %.lcssa137155.lcssa180.lcssa, ptr %i.q, align 16
  store <4 x float> %.lcssa139157.lcssa183.lcssa, ptr %i.p, align 16
  store i64 %.lcssa141159.lcssa186.lcssa, ptr %i.o, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph196, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread
  %i.s = phi i64 [ %i.d, %.lr.ph196 ], [ %i.ei, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %.029193 = phi i64 [ %i.b, %.lr.ph196 ], [ %i.ej, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 4 uses
  %.030192 = phi i64 [ %5, %.lr.ph196 ], [ %.4, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa152.lcssa175191 = phi <4 x float> [ splat (float +inf), %.lr.ph196 ], [ %.lcssa152.lcssa174, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa135153.lcssa178190 = phi <4 x float> [ splat (float -inf), %.lr.ph196 ], [ %.lcssa135153.lcssa177, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa137155.lcssa180189 = phi <4 x float> [ splat (float +inf), %.lr.ph196 ], [ %.lcssa137155.lcssa179, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa139157.lcssa183188 = phi <4 x float> [ splat (float -inf), %.lr.ph196 ], [ %.lcssa139157.lcssa182, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa141159.lcssa186187 = phi i64 [ 0, %.lr.ph196 ], [ %.lcssa141159.lcssa185, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %i.t = load i64, ptr %i.g, align 16
  %.not.i33 = icmp ult i64 %.029193, %i.t
  br i1 %.not.i33, label %bb.c, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.f, align 8
  %i.v = load i64, ptr %i.h, align 8
  %i.w = mul i64 %i.v, %.029193
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 5 uses
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = load i64, ptr %i.i, align 8             ; 2 uses
  %.not34.i = icmp ugt i64 %i.aa, %i.z
  br i1 %.not34.i, label %bb.d, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 10 ; 3 uses
  %i.ac = load i16, ptr %i.ab, align 2            ; 5 uses
  %i.ad = zext i16 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = mul i32 %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 4            ; 5 uses
  %i.ak = zext i16 %i.aj to i32
  %i.al = add i32 %i.y, -1
  %i.am = add i32 %i.al, %i.ah
  %i.an = add i32 %i.am, %i.ak
  %i.ao = zext i32 %i.an to i64
  %.not35.i = icmp ugt i64 %i.aa, %i.ao
  br i1 %.not35.i, label %.preheader95, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, !prof !15

.preheader95:                                     ; preds = %bb.d
  %i.ap = zext i16 %i.ac to i64
  %.not37.i105.not = icmp eq i16 %i.ac, 0
  br i1 %.not37.i105.not, label %.preheader92.lr.ph, label %.preheader93.lr.ph

.preheader93.lr.ph:                               ; preds = %.preheader95
  %i.aq = zext i16 %i.aj to i64
  %.not38.i102.not = icmp eq i16 %i.aj, 0
  %i.ar = zext i32 %i.ag to i64
  br i1 %.not38.i102.not, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84, label %.preheader93.preheader

.preheader93.preheader:                           ; preds = %.preheader93.lr.ph
  %.pre.pre = load ptr, ptr %i.j, align 16, !noalias !97 ; 2 uses
  %.pre216.pre = load ptr, ptr %.pre.pre, align 8, !noalias !98
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 16
  %.pre217.pre = load i64, ptr %.phi.trans.insert.phi.trans.insert, align 8, !noalias !98
  br label %.preheader93

.preheader93:                                     ; preds = %.preheader93.preheader, %..critedge40.i_crit_edge
  %.028.i106 = phi i64 [ %i.bc, %..critedge40.i_crit_edge ], [ 0, %.preheader93.preheader ] ; 2 uses
  %i.as = mul nuw nsw i64 %.028.i106, %i.ar
  %invariant.op104 = add nuw nsw i64 %i.as, %i.z
  br label %.preheader91.a

.preheader91.a:                                   ; preds = %.preheader93, %.critedge.i36
  %.027.i34103 = phi i64 [ 0, %.preheader93 ], [ %7, %.critedge.i36 ] ; 2 uses
  %.reass.reass = add nuw nsw i64 %.027.i34103, %invariant.op104
  %i.at = mul i64 %.pre217.pre, %.reass.reass
  %i.au = getelementptr inbounds nuw i8, ptr %.pre216.pre, i64 %i.at
  %i.av = load <4 x float>, ptr %i.au, align 1, !noalias !99 ; 2 uses
  %i.aw = fcmp ugt <4 x float> %i.av, splat (float -1.844000e+18)
  %i.ax = fcmp olt <4 x float> %i.av, splat (float 1.844000e+18)
  %i.ay = and <4 x i1> %i.aw, %i.ax
  %i.az = bitcast <4 x i1> %i.ay to i4
  %i.ba = and i4 %i.az, 7
  %i.bb = icmp eq i4 %i.ba, 7
  br i1 %i.bb, label %.critedge.i36, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread

.critedge.i36:                                    ; preds = %.preheader91.a
  %7 = add nuw nsw i64 %.027.i34103, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %7, %i.aq
  br i1 %exitcond.not, label %..critedge40.i_crit_edge, label %.preheader91.a, !llvm.loop !6

..critedge40.i_crit_edge:                         ; preds = %.critedge.i36
  %i.bc = add nuw nsw i64 %.028.i106, 1           ; 2 uses
  %exitcond214.not = icmp eq i64 %i.bc, %i.ap
  br i1 %exitcond214.not, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84, label %.preheader93, !llvm.loop !7

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84: ; preds = %..critedge40.i_crit_edge, %.preheader93.lr.ph
  %.not = icmp eq i16 %i.ac, 1
  br i1 %.not, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, label %.preheader92.lr.ph

.preheader92.lr.ph:                               ; preds = %.preheader95, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84
  %.sroa.5.0.insert.ext = shl i64 %.029193, 32
  br label %.preheader92

.preheader92:                                     ; preds = %.preheader92.lr.ph, %._crit_edge
  %i.bd = phi i16 [ %i.ac, %.preheader92.lr.ph ], [ %i.bk, %._crit_edge ]
  %i.be = phi i16 [ %i.aj, %.preheader92.lr.ph ], [ %i.bl, %._crit_edge ] ; 2 uses
  %i.bf = phi i16 [ %i.aj, %.preheader92.lr.ph ], [ %i.bm, %._crit_edge ] ; 3 uses
  %.028166 = phi i32 [ 0, %.preheader92.lr.ph ], [ %.pre-phi223, %._crit_edge ] ; 4 uses
  %.1165 = phi i64 [ %.030192, %.preheader92.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.lcssa152164 = phi <4 x float> [ %.lcssa152.lcssa175191, %.preheader92.lr.ph ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %.lcssa135153163 = phi <4 x float> [ %.lcssa135153.lcssa178190, %.preheader92.lr.ph ], [ %.lcssa135, %._crit_edge ] ; 2 uses
  %.lcssa137155162 = phi <4 x float> [ %.lcssa137155.lcssa180189, %.preheader92.lr.ph ], [ %.lcssa137, %._crit_edge ] ; 2 uses
  %.lcssa139157161 = phi <4 x float> [ %.lcssa139157.lcssa183188, %.preheader92.lr.ph ], [ %.lcssa139, %._crit_edge ] ; 2 uses
  %.lcssa141159160 = phi i64 [ %.lcssa141159.lcssa186187, %.preheader92.lr.ph ], [ %.lcssa141, %._crit_edge ] ; 2 uses
  %.not203 = icmp eq i16 %i.bf, 1
  br i1 %.not203, label %.preheader92.._crit_edge_crit_edge, label %.lr.ph

.preheader92.._crit_edge_crit_edge:               ; preds = %.preheader92
  %.pre222 = add i32 %.028166, 2
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader92
  %i.bg = zext i16 %i.bf to i32
  %i.bh = zext i32 %.028166 to i64                ; 3 uses
  %i.bi = add nuw nsw i64 %i.bh, 3
  %i.bj = add i32 %.028166, 2                     ; 2 uses
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit
  %.pre220 = load i16, ptr %i.ab, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader92.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi223 = phi i32 [ %.pre222, %.preheader92.._crit_edge_crit_edge ], [ %i.bj, %._crit_edge.loopexit ] ; 2 uses
  %i.bk = phi i16 [ %i.bd, %.preheader92.._crit_edge_crit_edge ], [ %.pre220, %._crit_edge.loopexit ] ; 2 uses
  %i.bl = phi i16 [ %i.be, %.preheader92.._crit_edge_crit_edge ], [ %i.dz, %._crit_edge.loopexit ]
  %i.bm = phi i16 [ 1, %.preheader92.._crit_edge_crit_edge ], [ %i.dz, %._crit_edge.loopexit ]
  %.lcssa141 = phi i64 [ %.lcssa141159160, %.preheader92.._crit_edge_crit_edge ], [ %i.ea, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa139 = phi <4 x float> [ %.lcssa139157161, %.preheader92.._crit_edge_crit_edge ], [ %i.eb, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa137 = phi <4 x float> [ %.lcssa137155162, %.preheader92.._crit_edge_crit_edge ], [ %i.ec, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa135 = phi <4 x float> [ %.lcssa135153163, %.preheader92.._crit_edge_crit_edge ], [ %i.ed, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi <4 x float> [ %.lcssa152164, %.preheader92.._crit_edge_crit_edge ], [ %i.ee, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi i64 [ %.1165, %.preheader92.._crit_edge_crit_edge ], [ %.3, %._crit_edge.loopexit ] ; 2 uses
  %i.bn = zext i16 %i.bk to i32
  %i.bo = add nsw i32 %i.bn, -1
  %i.bp = icmp ult i32 %.pre-phi223, %i.bo
  br i1 %i.bp, label %.preheader92, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit206, !llvm.loop !83

bb.e:                                             ; preds = %.lr.ph, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit
  %i.bq = phi i16 [ %i.be, %.lr.ph ], [ %i.dz, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ]
  %i.br = phi i32 [ %i.bg, %.lr.ph ], [ %i.ef, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ]
  %i.bs = phi i16 [ %i.bf, %.lr.ph ], [ %i.dz, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ]
  %.0145 = phi i32 [ 0, %.lr.ph ], [ %.pre-phi, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 4 uses
  %.2142 = phi i64 [ %.1165, %.lr.ph ], [ %.3, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 5 uses
  %i.bt = phi <4 x float> [ %.lcssa152164, %.lr.ph ], [ %i.ee, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 2 uses
  %i.bu = phi <4 x float> [ %.lcssa135153163, %.lr.ph ], [ %i.ed, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 2 uses
  %i.bv = phi <4 x float> [ %.lcssa137155162, %.lr.ph ], [ %i.ec, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 2 uses
  %i.bw = phi <4 x float> [ %.lcssa139157161, %.lr.ph ], [ %i.eb, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 2 uses
  %i.bx = phi i64 [ %.lcssa141159160, %.lr.ph ], [ %i.ea, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 2 uses
  %i.by = zext i32 %.0145 to i64                  ; 3 uses
  %i.bz = load i32, ptr %i.k, align 4             ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %.not32.i.not119.not = icmp eq i32 %i.bz, 0
  %.pre218 = load i16, ptr %i.ab, align 2         ; 2 uses
  br i1 %.not32.i.not119.not, label %.critedge39.i, label %.preheader90.lr.ph

.preheader90.lr.ph:                               ; preds = %bb.e
  %i.cb = zext i16 %.pre218 to i64                ; 2 uses
  %i.cc = tail call noundef i64 @llvm.umin.i64(i64 %i.bi, i64 %i.cb)
  %.not33.i112 = icmp samesign ugt i64 %i.cb, %i.bh
  %i.cd = add nuw nsw i64 %i.by, 3
  %i.ce = zext i16 %i.bs to i64                   ; 2 uses
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.ce)
  %.not.i107 = icmp samesign ugt i64 %i.ce, %i.by
  %or.cond = select i1 %.not33.i112, i1 %.not.i107, i1 false
  br i1 %or.cond, label %.preheader90.lr.ph.split.us.split.us, label %.critedge39.i

.preheader90.lr.ph.split.us.split.us:             ; preds = %.preheader90.lr.ph
  %i.cg = load i32, ptr %i.x, align 4, !noalias !100
  %i.ch = zext i32 %i.cg to i64
  %i.ci = load i32, ptr %i.af, align 4, !noalias !100
  %i.cj = zext i32 %i.ci to i64
  %i.ck = load ptr, ptr %i.j, align 16, !noalias !101
  br label %.preheader90.us.us

.preheader90.us.us:                               ; preds = %..critedge37.i_crit_edge.split.us.us.us, %.preheader90.lr.ph.split.us.split.us
  %.027.i122.us.us = phi i64 [ 0, %.preheader90.lr.ph.split.us.split.us ], [ %i.dd, %..critedge37.i_crit_edge.split.us.us.us ] ; 2 uses
  %.sroa.6.0121.us.us = phi <4 x float> [ splat (float -inf), %.preheader90.lr.ph.split.us.split.us ], [ %i.da, %..critedge37.i_crit_edge.split.us.us.us ]
  %.sroa.050.0120.us.us = phi <4 x float> [ splat (float +inf), %.preheader90.lr.ph.split.us.split.us ], [ %i.cz, %..critedge37.i_crit_edge.split.us.us.us ]
  %i.cl = getelementptr inbounds nuw [56 x i8], ptr %i.ck, i64 %.027.i122.us.us ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !102
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !noalias !102
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %..critedge35.i_crit_edge.us.us.us, %.preheader90.us.us
  %.025.i115.us.us.us = phi i64 [ %i.bh, %.preheader90.us.us ], [ %i.dc, %..critedge35.i_crit_edge.us.us.us ] ; 2 uses
  %.sroa.6.1114.us.us.us = phi <4 x float> [ %.sroa.6.0121.us.us, %.preheader90.us.us ], [ %i.da, %..critedge35.i_crit_edge.us.us.us ]
  %.sroa.050.1113.us.us.us = phi <4 x float> [ %.sroa.050.0120.us.us, %.preheader90.us.us ], [ %i.cz, %..critedge35.i_crit_edge.us.us.us ]
  %i.cp = mul i64 %.025.i115.us.us.us, %i.cj
  %invariant.op.us.us.us = add i64 %i.cp, %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.us.us.us
  %.0.i110.us.us.us = phi i64 [ %i.by, %.preheader.us.us.us ], [ %i.db, %bb.g ] ; 2 uses
  %.sroa.6.3109.us.us.us = phi <4 x float> [ %.sroa.6.1114.us.us.us, %.preheader.us.us.us ], [ %i.da, %bb.g ]
  %.sroa.050.3108.us.us.us = phi <4 x float> [ %.sroa.050.1113.us.us.us, %.preheader.us.us.us ], [ %i.cz, %bb.g ]
  %.reass.us.us.us = add i64 %.0.i110.us.us.us, %invariant.op.us.us.us
  %i.cq = mul i64 %.reass.us.us.us, %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cq
  %i.cs = load <4 x float>, ptr %i.cr, align 1, !noalias !103 ; 4 uses
  %i.ct = fcmp ugt <4 x float> %i.cs, splat (float -1.844000e+18)
  %i.cu = fcmp olt <4 x float> %i.cs, splat (float 1.844000e+18)
  %i.cv = and <4 x i1> %i.ct, %i.cu
  %i.cw = bitcast <4 x i1> %i.cv to i4
  %i.cx = and i4 %i.cw, 7
  %i.cy = icmp eq i4 %i.cx, 7
  br i1 %i.cy, label %bb.g, label %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.cz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.050.3108.us.us.us, <4 x float> %i.cs) ; 4 uses
  %i.da = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.3109.us.us.us, <4 x float> %i.cs) ; 4 uses
  %i.db = add nuw nsw i64 %.0.i110.us.us.us, 1    ; 2 uses
  %.not.i.us.us.us = icmp samesign ult i64 %i.db, %i.cf
  br i1 %.not.i.us.us.us, label %bb.f, label %..critedge35.i_crit_edge.us.us.us, !llvm.loop !92

..critedge35.i_crit_edge.us.us.us:                ; preds = %bb.g
  %i.dc = add nuw nsw i64 %.025.i115.us.us.us, 1  ; 2 uses
  %.not33.i.us.us.us = icmp samesign ult i64 %i.dc, %i.cc
  br i1 %.not33.i.us.us.us, label %.preheader.us.us.us, label %..critedge37.i_crit_edge.split.us.us.us, !llvm.loop !93

..critedge37.i_crit_edge.split.us.us.us:          ; preds = %..critedge35.i_crit_edge.us.us.us
  %i.dd = add nuw nsw i64 %.027.i122.us.us, 1     ; 2 uses
  %exitcond215.not = icmp eq i64 %i.dd, %i.ca
  br i1 %exitcond215.not, label %.critedge39.i, label %.preheader90.us.us, !llvm.loop !94

.critedge39.i:                                    ; preds = %..critedge37.i_crit_edge.split.us.us.us, %.preheader90.lr.ph, %bb.e
  %.sroa.050.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.e ], [ splat (float +inf), %.preheader90.lr.ph ], [ %i.cz, %..critedge37.i_crit_edge.split.us.us.us ]
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.e ], [ splat (float -inf), %.preheader90.lr.ph ], [ %i.da, %..critedge37.i_crit_edge.split.us.us.us ]
  %i.de = trunc i64 %.2142 to i32
  %.sroa.059.12.vec.insert = insertelement <4 x float> %.sroa.050.0.lcssa, float %i.l, i64 3 ; 3 uses
  %i.df = bitcast i32 %i.de to float
  %.sroa.058.12.vec.insert = insertelement <4 x float> %.sroa.6.0.lcssa, float %i.df, i64 3 ; 3 uses
  %i.dg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bt, <4 x float> %.sroa.059.12.vec.insert)
  %i.dh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bu, <4 x float> %.sroa.058.12.vec.insert)
  %i.di = fadd <4 x float> %.sroa.059.12.vec.insert, %.sroa.058.12.vec.insert ; 2 uses
  %i.dj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bv, <4 x float> %i.di)
  %i.dk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bw, <4 x float> %i.di)
  %i.dl = add i64 %i.bx, 1
  %i.dm = add i32 %.0145, 2                       ; 2 uses
  %.not.i31 = icmp ult i32 %i.dm, %i.br
  %i.dn = select i1 %.not.i31, i32 0, i32 32768
  %i.do = zext i16 %.pre218 to i32
  %.not.i32 = icmp ult i32 %i.bj, %i.do
  %i.dp = select i1 %.not.i32, i32 0, i32 32768
  %i.dq = load ptr, ptr %i.m, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.2142
  %i.ds = or i32 %i.dp, %.028166
  %i.dt = shl i32 %i.ds, 16
  %.sroa.4.0.insert.shift = zext i32 %i.dt to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, %.sroa.4.0.insert.shift
  %.0.masked = and i32 %.0145, 65534
  %i.du = or i32 %i.dn, %.0.masked
  %.sroa.0.0.insert.ext = zext nneg i32 %i.du to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.dr, align 4
  %i.dv = add i64 %.2142, 1
  %i.dw = load ptr, ptr %i.n, align 8
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %.2142 ; 2 uses
  store <4 x float> %.sroa.059.12.vec.insert, ptr %i.dx, align 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <4 x float> %.sroa.058.12.vec.insert, ptr %i.dy, align 16
  %.pre219 = load i16, ptr %i.ai, align 4
  br label %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit: ; preds = %bb.f
  %.pre = add i32 %.0145, 2
  br label %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit: ; preds = %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit, %.critedge39.i
  %.pre-phi = phi i32 [ %.pre, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dm, %.critedge39.i ] ; 2 uses
  %i.dz = phi i16 [ %i.bq, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %.pre219, %.critedge39.i ] ; 5 uses
  %i.ea = phi i64 [ %i.bx, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dl, %.critedge39.i ] ; 2 uses
  %i.eb = phi <4 x float> [ %i.bw, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dk, %.critedge39.i ] ; 2 uses
  %i.ec = phi <4 x float> [ %i.bv, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dj, %.critedge39.i ] ; 2 uses
  %i.ed = phi <4 x float> [ %i.bu, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dh, %.critedge39.i ] ; 2 uses
  %i.ee = phi <4 x float> [ %i.bt, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dg, %.critedge39.i ] ; 2 uses
  %.3 = phi i64 [ %.2142, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dv, %.critedge39.i ] ; 2 uses
  %i.ef = zext i16 %i.dz to i32                   ; 2 uses
  %i.eg = add nsw i32 %i.ef, -1
  %i.eh = icmp ult i32 %.pre-phi, %i.eg
end_hunk_0

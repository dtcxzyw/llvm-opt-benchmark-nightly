Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_grid_mesh?download=true
inline.NumInlined: 372
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6embree12rtcore_errorD0Ev:bb.a
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
  %i.s = phi i64 [ %i.d, %.lr.ph196 ], [ %i.ee, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %.029193 = phi i64 [ %i.b, %.lr.ph196 ], [ %i.ef, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 4 uses
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
  br i1 %.not37.i105.not, label %.preheader92.lr.ph, label %.preheader93.lr.ph.a

.preheader93.lr.ph.a:                             ; preds = %.preheader95
  %i.aq = zext i16 %i.aj to i64
  %.not38.i102.not = icmp eq i16 %i.aj, 0
  %i.ar = zext i32 %i.ag to i64
  br i1 %.not38.i102.not, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84, label %.preheader93.preheader

.preheader93.preheader:                           ; preds = %.preheader93.lr.ph.a
  %.pre.pre = load ptr, ptr %i.j, align 16, !noalias !97 ; 2 uses
  %.pre216.pre = load ptr, ptr %.pre.pre, align 8, !noalias !98
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 16
  %.pre217.pre = load i64, ptr %.phi.trans.insert.phi.trans.insert, align 8, !noalias !98
  br label %.preheader93.a

.preheader93.a:                                   ; preds = %.preheader93.preheader, %..critedge40.i_crit_edge
  %.028.i106 = phi i64 [ %i.bd, %..critedge40.i_crit_edge ], [ 0, %.preheader93.preheader ] ; 2 uses
  %i.as = mul nuw nsw i64 %.028.i106, %i.ar
  %invariant.op104 = add nuw nsw i64 %i.as, %i.z
  br label %.preheader91

.preheader91:                                     ; preds = %.preheader93.a, %.critedge.i36
  %.027.i34103 = phi i64 [ 0, %.preheader93.a ], [ %i.bc, %.critedge.i36 ] ; 2 uses
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

.critedge.i36:                                    ; preds = %.preheader91
  %i.bc = add nuw nsw i64 %.027.i34103, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.aq
  br i1 %exitcond.not, label %..critedge40.i_crit_edge, label %.preheader91, !llvm.loop !6

..critedge40.i_crit_edge:                         ; preds = %.critedge.i36
  %i.bd = add nuw nsw i64 %.028.i106, 1           ; 2 uses
  %exitcond214.not = icmp eq i64 %i.bd, %i.ap
  br i1 %exitcond214.not, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84, label %.preheader93.a, !llvm.loop !7

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84: ; preds = %..critedge40.i_crit_edge, %.preheader93.lr.ph.a
  %.not = icmp eq i16 %i.ac, 1
  br i1 %.not, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, label %.preheader92.lr.ph

.preheader92.lr.ph:                               ; preds = %.preheader95, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84
  %.sroa.5.0.insert.ext = shl i64 %.029193, 32
  br label %.preheader92

.preheader92:                                     ; preds = %.preheader92.lr.ph, %._crit_edge
  %i.be = phi i16 [ %i.ac, %.preheader92.lr.ph ], [ %i.bl, %._crit_edge ]
  %i.bf = phi i16 [ %i.aj, %.preheader92.lr.ph ], [ %i.bm, %._crit_edge ] ; 2 uses
  %i.bg = phi i16 [ %i.aj, %.preheader92.lr.ph ], [ %i.bn, %._crit_edge ] ; 3 uses
  %.028166 = phi i32 [ 0, %.preheader92.lr.ph ], [ %.pre-phi223, %._crit_edge ] ; 4 uses
  %.1165 = phi i64 [ %.030192, %.preheader92.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.lcssa152164 = phi <4 x float> [ %.lcssa152.lcssa175191, %.preheader92.lr.ph ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %.lcssa135153163 = phi <4 x float> [ %.lcssa135153.lcssa178190, %.preheader92.lr.ph ], [ %.lcssa135, %._crit_edge ] ; 2 uses
  %.lcssa137155162 = phi <4 x float> [ %.lcssa137155.lcssa180189, %.preheader92.lr.ph ], [ %.lcssa137, %._crit_edge ] ; 2 uses
  %.lcssa139157161 = phi <4 x float> [ %.lcssa139157.lcssa183188, %.preheader92.lr.ph ], [ %.lcssa139, %._crit_edge ] ; 2 uses
  %.lcssa141159160 = phi i64 [ %.lcssa141159.lcssa186187, %.preheader92.lr.ph ], [ %.lcssa141, %._crit_edge ] ; 2 uses
  %.not203 = icmp eq i16 %i.bg, 1
  br i1 %.not203, label %.preheader92.._crit_edge_crit_edge, label %.lr.ph

.preheader92.._crit_edge_crit_edge:               ; preds = %.preheader92
  %.pre222.a = add i32 %.028166, 2
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader92
  %i.bh = zext i16 %i.bg to i32
  %i.bi = zext i32 %.028166 to i64                ; 3 uses
  %i.bj = add nuw nsw i64 %i.bi, 3
  %i.bk = add i32 %.028166, 2                     ; 2 uses
  %7 = and i32 %.028166, 65534
  %.masked = zext nneg i32 %7 to i64
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit
  %.pre220.a = load i16, ptr %i.ab, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader92.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi223 = phi i32 [ %.pre222.a, %.preheader92.._crit_edge_crit_edge ], [ %i.bk, %._crit_edge.loopexit ] ; 2 uses
  %i.bl = phi i16 [ %i.be, %.preheader92.._crit_edge_crit_edge ], [ %.pre220.a, %._crit_edge.loopexit ] ; 2 uses
  %i.bm = phi i16 [ %i.bf, %.preheader92.._crit_edge_crit_edge ], [ %i.dv, %._crit_edge.loopexit ]
  %i.bn = phi i16 [ 1, %.preheader92.._crit_edge_crit_edge ], [ %i.dv, %._crit_edge.loopexit ]
  %.lcssa141 = phi i64 [ %.lcssa141159160, %.preheader92.._crit_edge_crit_edge ], [ %i.dw, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa139 = phi <4 x float> [ %.lcssa139157161, %.preheader92.._crit_edge_crit_edge ], [ %i.dx, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa137 = phi <4 x float> [ %.lcssa137155162, %.preheader92.._crit_edge_crit_edge ], [ %i.dy, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa135 = phi <4 x float> [ %.lcssa135153163, %.preheader92.._crit_edge_crit_edge ], [ %i.dz, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi <4 x float> [ %.lcssa152164, %.preheader92.._crit_edge_crit_edge ], [ %i.ea, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi i64 [ %.1165, %.preheader92.._crit_edge_crit_edge ], [ %.3, %._crit_edge.loopexit ] ; 2 uses
  %i.bo = zext i16 %i.bl to i32
  %i.bp = add nsw i32 %i.bo, -1
  %i.bq = icmp ult i32 %.pre-phi223, %i.bp
  br i1 %i.bq, label %.preheader92, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit206, !llvm.loop !83

bb.e:                                             ; preds = %.lr.ph, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit
  %i.br = phi i16 [ %i.bf, %.lr.ph ], [ %i.dv, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ]
  %i.bs = phi i32 [ %i.bh, %.lr.ph ], [ %i.eb, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ]
  %i.bt = phi i16 [ %i.bg, %.lr.ph ], [ %i.dv, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ]
  %.0145 = phi i32 [ 0, %.lr.ph ], [ %.pre-phi, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 4 uses
  %.2142 = phi i64 [ %.1165, %.lr.ph ], [ %.3, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 5 uses
  %i.bu = phi <4 x float> [ %.lcssa152164, %.lr.ph ], [ %i.ea, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 2 uses
  %i.bv = phi <4 x float> [ %.lcssa135153163, %.lr.ph ], [ %i.dz, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 2 uses
  %i.bw = phi <4 x float> [ %.lcssa137155162, %.lr.ph ], [ %i.dy, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 2 uses
  %i.bx = phi <4 x float> [ %.lcssa139157161, %.lr.ph ], [ %i.dx, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 2 uses
  %i.by = phi i64 [ %.lcssa141159160, %.lr.ph ], [ %i.dw, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit ] ; 2 uses
  %i.bz = zext i32 %.0145 to i64                  ; 3 uses
  %i.ca = load i32, ptr %i.k, align 4             ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %.not32.i.not119.not = icmp eq i32 %i.ca, 0
  %.pre218 = load i16, ptr %i.ab, align 2         ; 2 uses
  br i1 %.not32.i.not119.not, label %.critedge39.i, label %.preheader90.lr.ph

.preheader90.lr.ph:                               ; preds = %bb.e
  %i.cc = zext i16 %.pre218 to i64                ; 2 uses
  %i.cd = tail call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.cc)
  %.not33.i112 = icmp samesign ugt i64 %i.cc, %i.bi
  %i.ce = add nuw nsw i64 %i.bz, 3
  %i.cf = zext i16 %i.bt to i64                   ; 2 uses
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 %i.cf)
  %.not.i107 = icmp samesign ugt i64 %i.cf, %i.bz
  %or.cond = select i1 %.not33.i112, i1 %.not.i107, i1 false
  br i1 %or.cond, label %.preheader90.lr.ph.split.us.split.us, label %.critedge39.i

.preheader90.lr.ph.split.us.split.us:             ; preds = %.preheader90.lr.ph
  %i.ch = load i32, ptr %i.x, align 4, !noalias !100
  %i.ci = zext i32 %i.ch to i64
  %i.cj = load i32, ptr %i.af, align 4, !noalias !100
  %i.ck = zext i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.j, align 16, !noalias !101
  br label %.preheader90.us.us

.preheader90.us.us:                               ; preds = %..critedge37.i_crit_edge.split.us.us.us, %.preheader90.lr.ph.split.us.split.us
  %.027.i122.us.us = phi i64 [ 0, %.preheader90.lr.ph.split.us.split.us ], [ %i.de, %..critedge37.i_crit_edge.split.us.us.us ] ; 2 uses
  %.sroa.6.0121.us.us = phi <4 x float> [ splat (float -inf), %.preheader90.lr.ph.split.us.split.us ], [ %i.db, %..critedge37.i_crit_edge.split.us.us.us ]
  %.sroa.050.0120.us.us = phi <4 x float> [ splat (float +inf), %.preheader90.lr.ph.split.us.split.us ], [ %i.da, %..critedge37.i_crit_edge.split.us.us.us ]
  %i.cm = getelementptr inbounds nuw [56 x i8], ptr %i.cl, i64 %.027.i122.us.us ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !102
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noalias !102
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %..critedge35.i_crit_edge.us.us.us, %.preheader90.us.us
  %.025.i115.us.us.us = phi i64 [ %i.bi, %.preheader90.us.us ], [ %i.dd, %..critedge35.i_crit_edge.us.us.us ] ; 2 uses
  %.sroa.6.1114.us.us.us = phi <4 x float> [ %.sroa.6.0121.us.us, %.preheader90.us.us ], [ %i.db, %..critedge35.i_crit_edge.us.us.us ]
  %.sroa.050.1113.us.us.us = phi <4 x float> [ %.sroa.050.0120.us.us, %.preheader90.us.us ], [ %i.da, %..critedge35.i_crit_edge.us.us.us ]
  %i.cq = mul i64 %.025.i115.us.us.us, %i.ck
  %invariant.op.us.us.us = add i64 %i.cq, %i.ci
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.us.us.us
  %.0.i110.us.us.us = phi i64 [ %i.bz, %.preheader.us.us.us ], [ %i.dc, %bb.g ] ; 2 uses
  %.sroa.6.3109.us.us.us = phi <4 x float> [ %.sroa.6.1114.us.us.us, %.preheader.us.us.us ], [ %i.db, %bb.g ]
  %.sroa.050.3108.us.us.us = phi <4 x float> [ %.sroa.050.1113.us.us.us, %.preheader.us.us.us ], [ %i.da, %bb.g ]
  %.reass.us.us.us = add i64 %.0.i110.us.us.us, %invariant.op.us.us.us
  %i.cr = mul i64 %.reass.us.us.us, %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cr
  %i.ct = load <4 x float>, ptr %i.cs, align 1, !noalias !103 ; 4 uses
  %i.cu = fcmp ugt <4 x float> %i.ct, splat (float -1.844000e+18)
  %i.cv = fcmp olt <4 x float> %i.ct, splat (float 1.844000e+18)
  %i.cw = and <4 x i1> %i.cu, %i.cv
  %i.cx = bitcast <4 x i1> %i.cw to i4
  %i.cy = and i4 %i.cx, 7
  %i.cz = icmp eq i4 %i.cy, 7
  br i1 %i.cz, label %bb.g, label %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.da = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.050.3108.us.us.us, <4 x float> %i.ct) ; 4 uses
  %i.db = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.3109.us.us.us, <4 x float> %i.ct) ; 4 uses
  %i.dc = add nuw nsw i64 %.0.i110.us.us.us, 1    ; 2 uses
  %.not.i.us.us.us = icmp samesign ult i64 %i.dc, %i.cg
  br i1 %.not.i.us.us.us, label %bb.f, label %..critedge35.i_crit_edge.us.us.us, !llvm.loop !92

..critedge35.i_crit_edge.us.us.us:                ; preds = %bb.g
  %i.dd = add nuw nsw i64 %.025.i115.us.us.us, 1  ; 2 uses
  %.not33.i.us.us.us = icmp samesign ult i64 %i.dd, %i.cd
  br i1 %.not33.i.us.us.us, label %.preheader.us.us.us, label %..critedge37.i_crit_edge.split.us.us.us, !llvm.loop !93

..critedge37.i_crit_edge.split.us.us.us:          ; preds = %..critedge35.i_crit_edge.us.us.us
  %i.de = add nuw nsw i64 %.027.i122.us.us, 1     ; 2 uses
  %exitcond215.not = icmp eq i64 %i.de, %i.cb
  br i1 %exitcond215.not, label %.critedge39.i, label %.preheader90.us.us, !llvm.loop !94

.critedge39.i:                                    ; preds = %..critedge37.i_crit_edge.split.us.us.us, %.preheader90.lr.ph, %bb.e
  %.sroa.050.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.e ], [ splat (float +inf), %.preheader90.lr.ph ], [ %i.da, %..critedge37.i_crit_edge.split.us.us.us ]
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.e ], [ splat (float -inf), %.preheader90.lr.ph ], [ %i.db, %..critedge37.i_crit_edge.split.us.us.us ]
  %i.df = trunc i64 %.2142 to i32
  %.sroa.059.12.vec.insert = insertelement <4 x float> %.sroa.050.0.lcssa, float %i.l, i64 3 ; 3 uses
  %i.dg = bitcast i32 %i.df to float
  %.sroa.058.12.vec.insert = insertelement <4 x float> %.sroa.6.0.lcssa, float %i.dg, i64 3 ; 3 uses
  %i.dh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bu, <4 x float> %.sroa.059.12.vec.insert)
  %i.di = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bv, <4 x float> %.sroa.058.12.vec.insert)
  %i.dj = fadd <4 x float> %.sroa.059.12.vec.insert, %.sroa.058.12.vec.insert ; 2 uses
  %i.dk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bw, <4 x float> %i.dj)
  %i.dl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bx, <4 x float> %i.dj)
  %i.dm = add i64 %i.by, 1
  %i.dn = add i32 %.0145, 2                       ; 2 uses
  %.not.i31 = icmp ult i32 %i.dn, %i.bs
  %8 = select i1 %.not.i31, i64 0, i64 32768
  %i.do = zext i16 %.pre218 to i32
  %.not.i32 = icmp ult i32 %i.bk, %i.do
  %9 = select i1 %.not.i32, i64 0, i64 32768
  %i.dp = load ptr, ptr %i.m, align 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.2142
  %.sroa.4.0.insert.ext = or i64 %9, %.masked
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 16
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.5.0.insert.ext
  %.0.masked = and i32 %.0145, 65534
  %.masked90 = zext nneg i32 %.0.masked to i64
  %.sroa.0.0.insert.ext = or i64 %8, %.masked90
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.dq, align 4
  %i.dr = add i64 %.2142, 1
  %i.ds = load ptr, ptr %i.n, align 8
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.ds, i64 %.2142 ; 2 uses
  store <4 x float> %.sroa.059.12.vec.insert, ptr %i.dt, align 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <4 x float> %.sroa.058.12.vec.insert, ptr %i.du, align 16
  %.pre219 = load i16, ptr %i.ai, align 4
  br label %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit: ; preds = %bb.f
  %.pre = add i32 %.0145, 2
  br label %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit: ; preds = %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit, %.critedge39.i
  %.pre-phi = phi i32 [ %.pre, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dn, %.critedge39.i ] ; 2 uses
  %i.dv = phi i16 [ %i.br, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %.pre219, %.critedge39.i ] ; 5 uses
  %i.dw = phi i64 [ %i.by, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dm, %.critedge39.i ] ; 2 uses
  %i.dx = phi <4 x float> [ %i.bx, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dl, %.critedge39.i ] ; 2 uses
  %i.dy = phi <4 x float> [ %i.bw, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dk, %.critedge39.i ] ; 2 uses
  %i.dz = phi <4 x float> [ %i.bv, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.di, %.critedge39.i ] ; 2 uses
  %i.ea = phi <4 x float> [ %i.bu, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dh, %.critedge39.i ] ; 2 uses
  %.3 = phi i64 [ %.2142, %_ZNK6embree8GridMesh11buildBoundsERKNS0_4GridEmmRNS_4BBoxINS_6Vec3faEEE.exit.loopexit ], [ %i.dr, %.critedge39.i ] ; 2 uses
  %i.eb = zext i16 %i.dv to i32                   ; 2 uses
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = icmp ult i32 %.pre-phi, %i.ec
  br i1 %i.ed, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !95

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit206: ; preds = %._crit_edge
  %.pre221 = load i64, ptr %i.c, align 8
  br label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread: ; preds = %.preheader91, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit206, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84, %bb.d, %bb.c, %bb.b
  %i.ee = phi i64 [ %i.s, %bb.d ], [ %.pre221, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit206 ], [ %i.s, %bb.b ], [ %i.s, %bb.c ], [ %i.s, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84 ], [ %i.s, %.preheader91 ] ; 2 uses
  %.lcssa141159.lcssa185 = phi i64 [ %.lcssa141159.lcssa186187, %bb.d ], [ %.lcssa141, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit206 ], [ %.lcssa141159.lcssa186187, %bb.b ], [ %.lcssa141159.lcssa186187, %bb.c ], [ %.lcssa141159.lcssa186187, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84 ], [ %.lcssa141159.lcssa186187, %.preheader91 ] ; 2 uses
  %.lcssa139157.lcssa182 = phi <4 x float> [ %.lcssa139157.lcssa183188, %bb.d ], [ %.lcssa139, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit206 ], [ %.lcssa139157.lcssa183188, %bb.b ], [ %.lcssa139157.lcssa183188, %bb.c ], [ %.lcssa139157.lcssa183188, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84 ], [ %.lcssa139157.lcssa183188, %.preheader91 ] ; 2 uses
  %.lcssa137155.lcssa179 = phi <4 x float> [ %.lcssa137155.lcssa180189, %bb.d ], [ %.lcssa137, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit206 ], [ %.lcssa137155.lcssa180189, %bb.b ], [ %.lcssa137155.lcssa180189, %bb.c ], [ %.lcssa137155.lcssa180189, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84 ], [ %.lcssa137155.lcssa180189, %.preheader91 ] ; 2 uses
  %.lcssa135153.lcssa177 = phi <4 x float> [ %.lcssa135153.lcssa178190, %bb.d ], [ %.lcssa135, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit206 ], [ %.lcssa135153.lcssa178190, %bb.b ], [ %.lcssa135153.lcssa178190, %bb.c ], [ %.lcssa135153.lcssa178190, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84 ], [ %.lcssa135153.lcssa178190, %.preheader91 ] ; 2 uses
  %.lcssa152.lcssa174 = phi <4 x float> [ %.lcssa152.lcssa175191, %bb.d ], [ %.lcssa, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit206 ], [ %.lcssa152.lcssa175191, %bb.b ], [ %.lcssa152.lcssa175191, %bb.c ], [ %.lcssa152.lcssa175191, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84 ], [ %.lcssa152.lcssa175191, %.preheader91 ] ; 2 uses
  %.4 = phi i64 [ %.030192, %bb.d ], [ %.2.lcssa, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit206 ], [ %.030192, %bb.b ], [ %.030192, %bb.c ], [ %.030192, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread84 ], [ %.030192, %.preheader91 ]
  %i.ef = add nuw i64 %.029193, 1                 ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  br i1 %i.eg, label %bb.b, label %._crit_edge197, !llvm.loop !96
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse211GridMeshISA20createPrimRefMBArrayERNS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEERNS2_INS_16SubGridBuildDataENS4_IS8_Lm4EEEEERKNS_4BBoxIfEERKNS_5rangeImEEmj(ptr dead_on_unwind noalias writable sret(%"class.embree::PrimInfoMBT") align 16 %0, ptr noundef nonnull align 16 dereferenceable(264) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %6, i32 noundef %7) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = load i64, ptr %5, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %.lr.ph588, label %bb.b

.lr.ph588:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = bitcast i32 %7 to float
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.c

._crit_edge589:                                   ; preds = %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread
  store i64 %.lcssa483535.lcssa603, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge589, %bb.a
  %.lcssa457502.lcssa565.lcssa = phi i64 [ %.lcssa457502.lcssa564, %._crit_edge589 ], [ 0, %bb.a ]
  %.lcssa455500.lcssa562.lcssa = phi i64 [ %.lcssa455500.lcssa561, %._crit_edge589 ], [ 0, %bb.a ]
  %.lcssa453498.lcssa559.lcssa = phi float [ %.lcssa453498.lcssa558, %._crit_edge589 ], [ 0.000000e+00, %bb.a ]
  %.lcssa451496.lcssa556.lcssa = phi float [ %.lcssa451496.lcssa555, %._crit_edge589 ], [ 1.000000e+00, %bb.a ]
  %.lcssa449494.lcssa553.lcssa = phi <4 x float> [ %.lcssa449494.lcssa552, %._crit_edge589 ], [ splat (float -inf), %bb.a ]
  %.lcssa447492.lcssa550.lcssa = phi <4 x float> [ %.lcssa447492.lcssa549, %._crit_edge589 ], [ splat (float +inf), %bb.a ]
  %.lcssa445490.lcssa547.lcssa = phi <4 x float> [ %.lcssa445490.lcssa546, %._crit_edge589 ], [ splat (float -inf), %bb.a ]
  %.lcssa443488.lcssa544.lcssa = phi <4 x float> [ %.lcssa443488.lcssa543, %._crit_edge589 ], [ splat (float +inf), %bb.a ]
  %.lcssa441486.lcssa542.lcssa = phi <4 x float> [ %.lcssa441486.lcssa541, %._crit_edge589 ], [ splat (float -inf), %bb.a ]
  %.lcssa439485.lcssa539.lcssa = phi <4 x float> [ %.lcssa439485.lcssa538, %._crit_edge589 ], [ splat (float +inf), %bb.a ]
  %i.s = phi <2 x float> [ %i.to, %._crit_edge589 ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.lcssa439485.lcssa539.lcssa, ptr %0, align 16
  store <4 x float> %.lcssa441486.lcssa542.lcssa, ptr %i.ac, align 16
  store <4 x float> %.lcssa443488.lcssa544.lcssa, ptr %i.ab, align 16
  store <4 x float> %.lcssa445490.lcssa547.lcssa, ptr %i.aa, align 16
  store <4 x float> %.lcssa447492.lcssa550.lcssa, ptr %i.z, align 16
  store <4 x float> %.lcssa449494.lcssa553.lcssa, ptr %i.y, align 16
  store float %.lcssa451496.lcssa556.lcssa, ptr %i.u, align 8
  store float %.lcssa453498.lcssa559.lcssa, ptr %i.t, align 4
  store i64 %.lcssa455500.lcssa562.lcssa, ptr %i.x, align 16
  store i64 %.lcssa457502.lcssa565.lcssa, ptr %i.w, align 8
  store <2 x float> %i.s, ptr %i.v, align 16
  ret void

bb.c:                                             ; preds = %.lr.ph588, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread
  %i.ad = phi i64 [ %i.e, %.lr.ph588 ], [ %i.tn, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 5 uses
  %.lcssa483535.lcssa605 = phi i64 [ 0, %.lr.ph588 ], [ %.lcssa483535.lcssa603, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.0586 = phi i64 [ %6, %.lr.ph588 ], [ %.3, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.032584 = phi i64 [ %i.c, %.lr.ph588 ], [ %i.tp, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 4 uses
  %.lcssa439485.lcssa539583 = phi <4 x float> [ splat (float +inf), %.lr.ph588 ], [ %.lcssa439485.lcssa538, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa441486.lcssa542582 = phi <4 x float> [ splat (float -inf), %.lr.ph588 ], [ %.lcssa441486.lcssa541, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa443488.lcssa544581 = phi <4 x float> [ splat (float +inf), %.lr.ph588 ], [ %.lcssa443488.lcssa543, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa445490.lcssa547580 = phi <4 x float> [ splat (float -inf), %.lr.ph588 ], [ %.lcssa445490.lcssa546, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa447492.lcssa550579 = phi <4 x float> [ splat (float +inf), %.lr.ph588 ], [ %.lcssa447492.lcssa549, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa449494.lcssa553578 = phi <4 x float> [ splat (float -inf), %.lr.ph588 ], [ %.lcssa449494.lcssa552, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa451496.lcssa556577 = phi float [ 1.000000e+00, %.lr.ph588 ], [ %.lcssa451496.lcssa555, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa453498.lcssa559576 = phi float [ 0.000000e+00, %.lr.ph588 ], [ %.lcssa453498.lcssa558, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa455500.lcssa562575 = phi i64 [ 0, %.lr.ph588 ], [ %.lcssa455500.lcssa561, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.lcssa457502.lcssa565574 = phi i64 [ 0, %.lr.ph588 ], [ %.lcssa457502.lcssa564, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %i.ae = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph588 ], [ %i.to, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread ] ; 6 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.g, align 4, !noalias !170 ; 3 uses
  %i.af = load float, ptr %i.h, align 8, !noalias !170 ; 4 uses
  %i.ag = load <2 x float>, ptr %4, align 4, !noalias !171
  %i.ah = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %i.aj = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fsub <2 x float> %i.aj, %i.ak
  %i.am = fdiv <2 x float> %i.ai, %i.al           ; 2 uses
  %i.an = extractelement <2 x float> %i.am, i64 0
  %i.ao = fmul float %i.an, f0x3F800002
  %i.ap = fmul float %i.af, %i.ao
  %i.aq = tail call noundef float @llvm.floor.f32(float %i.ap) ; 2 uses
  %i.ar = fcmp olt float %i.aq, 0.000000e+00
  %i.as = select i1 %i.ar, float 0.000000e+00, float %i.aq
  %i.at = fptosi float %i.as to i32               ; 2 uses
  %i.au = extractelement <2 x float> %i.am, i64 1
  %i.av = fmul float %i.au, f0x3F7FFFFC
  %i.aw = fmul float %i.af, %i.av
  %i.ax = tail call noundef float @llvm.ceil.f32(float %i.aw) ; 2 uses
  %i.ay = fcmp olt float %i.ax, %i.af
  %i.az = select i1 %i.ay, float %i.ax, float %i.af
  %i.ba = fptosi float %i.az to i32               ; 2 uses
  %i.bb = sext i32 %i.at to i64
  %i.bc = sext i32 %i.ba to i64
  %i.bd = load i64, ptr %i.j, align 16
  %.not.i34 = icmp ult i64 %.032584, %i.bd
  br i1 %.not.i34, label %bb.d, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.be = load ptr, ptr %i.i, align 8
  %i.bf = load i64, ptr %i.k, align 8
  %i.bg = mul i64 %i.bf, %.032584
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg ; 9 uses
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = load i64, ptr %i.l, align 8             ; 2 uses
  %.not34.i = icmp ugt i64 %i.bk, %i.bj
  br i1 %.not34.i, label %bb.e, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 10 ; 3 uses
  %i.bm = load i16, ptr %i.bl, align 2            ; 5 uses
  %i.bn = zext i16 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 6 uses
  %i.bq = load i32, ptr %i.bp, align 4            ; 2 uses
  %i.br = mul i32 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 4            ; 4 uses
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add i32 %i.bi, -1
  %i.bw = add i32 %i.bv, %i.br
  %i.bx = add i32 %i.bw, %i.bu
  %i.by = zext i32 %i.bx to i64
  %.not35.i = icmp ugt i64 %i.bk, %i.by
  br i1 %.not35.i, label %.preheader412, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, !prof !15

.preheader412:                                    ; preds = %bb.e
  %i.bz = zext i16 %i.bm to i64
  %.not37.i427.not = icmp eq i16 %i.bm, 0
  br i1 %.not37.i427.not, label %.preheader409.lr.ph, label %.preheader410.lr.ph.a

.preheader410.lr.ph.a:                            ; preds = %.preheader412
  %i.ca = zext i16 %i.bt to i64
  %.not38.i424.not607 = icmp eq i16 %i.bt, 0
  %.not36.i422 = icmp ugt i32 %i.at, %i.ba
  %i.cb = zext i32 %i.bq to i64
  %brmerge606 = select i1 %.not38.i424.not607, i1 true, i1 %.not36.i422
  br i1 %brmerge606, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332, label %.preheader410.lr.ph.split.split

.preheader410.lr.ph.split.split:                  ; preds = %.preheader410.lr.ph.a
  %i.cc = load ptr, ptr %i.m, align 16, !noalias !172
  br label %.preheader410.a

.preheader410.a:                                  ; preds = %.preheader410.lr.ph.split.split, %..critedge40.i_crit_edge
  %.028.i428 = phi i64 [ 0, %.preheader410.lr.ph.split.split ], [ %i.ct, %..critedge40.i_crit_edge ] ; 2 uses
  %i.cd = mul nuw nsw i64 %.028.i428, %i.cb
  %invariant.op426 = add nuw nsw i64 %i.cd, %i.bj
  br label %.preheader

.preheader:                                       ; preds = %.preheader410.a, %..critedge.i_crit_edge
  %.027.i425 = phi i64 [ 0, %.preheader410.a ], [ %i.cs, %..critedge.i_crit_edge ] ; 2 uses
  %.reass.reass = add nuw nsw i64 %.027.i425, %invariant.op426
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.ce = add i64 %.0.i423, 1                     ; 2 uses
  %.not36.i = icmp ugt i64 %i.ce, %i.bc
  br i1 %.not36.i, label %..critedge.i_crit_edge, label %bb.g, !llvm.loop !110

bb.g:                                             ; preds = %.preheader, %bb.f
  %.0.i423 = phi i64 [ %i.bb, %.preheader ], [ %i.ce, %bb.f ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %i.cc, i64 %.0.i423 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !173
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !173
  %i.cj = mul i64 %i.ci, %.reass.reass
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cj
  %i.cl = load <4 x float>, ptr %i.ck, align 1, !noalias !174 ; 2 uses
  %i.cm = fcmp ugt <4 x float> %i.cl, splat (float -1.844000e+18)
  %i.cn = fcmp olt <4 x float> %i.cl, splat (float 1.844000e+18)
  %i.co = and <4 x i1> %i.cm, %i.cn
  %i.cp = bitcast <4 x i1> %i.co to i4
  %i.cq = and i4 %i.cp, 7
  %i.cr = icmp eq i4 %i.cq, 7
  br i1 %i.cr, label %bb.f, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread

..critedge.i_crit_edge:                           ; preds = %bb.f
  %i.cs = add nuw nsw i64 %.027.i425, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.ca
  br i1 %exitcond.not, label %..critedge40.i_crit_edge, label %.preheader, !llvm.loop !6

..critedge40.i_crit_edge:                         ; preds = %..critedge.i_crit_edge
  %i.ct = add nuw nsw i64 %.028.i428, 1           ; 2 uses
  %exitcond640.not = icmp eq i64 %i.ct, %i.bz
  br i1 %exitcond640.not, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332, label %.preheader410.a, !llvm.loop !7

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332: ; preds = %..critedge40.i_crit_edge, %.preheader410.lr.ph.a
  %.not = icmp eq i16 %i.bm, 1
  br i1 %.not, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread, label %.preheader409.lr.ph

.preheader409.lr.ph:                              ; preds = %.preheader412, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332
  %.sroa.5.0.insert.ext = shl i64 %.032584, 32
  br label %.preheader409

.preheader409:                                    ; preds = %.preheader409.lr.ph, %._crit_edge
  %i.cu = phi i16 [ %i.bm, %.preheader409.lr.ph ], [ %i.db, %._crit_edge ]
  %i.cv = phi i16 [ %i.bt, %.preheader409.lr.ph ], [ %i.dc, %._crit_edge ] ; 3 uses
  %.lcssa483536 = phi i64 [ %.lcssa483535.lcssa605, %.preheader409.lr.ph ], [ %.lcssa483535, %._crit_edge ] ; 2 uses
  %.1520 = phi i64 [ %.0586, %.preheader409.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.031519 = phi i32 [ 0, %.preheader409.lr.ph ], [ %.pre-phi, %._crit_edge ] ; 4 uses
  %.lcssa439485518 = phi <4 x float> [ %.lcssa439485.lcssa539583, %.preheader409.lr.ph ], [ %.lcssa439, %._crit_edge ] ; 2 uses
  %.lcssa441486517 = phi <4 x float> [ %.lcssa441486.lcssa542582, %.preheader409.lr.ph ], [ %.lcssa441, %._crit_edge ] ; 2 uses
  %.lcssa443488516 = phi <4 x float> [ %.lcssa443488.lcssa544581, %.preheader409.lr.ph ], [ %.lcssa443, %._crit_edge ] ; 2 uses
  %.lcssa445490515 = phi <4 x float> [ %.lcssa445490.lcssa547580, %.preheader409.lr.ph ], [ %.lcssa445, %._crit_edge ] ; 2 uses
  %.lcssa447492514 = phi <4 x float> [ %.lcssa447492.lcssa550579, %.preheader409.lr.ph ], [ %.lcssa447, %._crit_edge ] ; 2 uses
  %.lcssa449494513 = phi <4 x float> [ %.lcssa449494.lcssa553578, %.preheader409.lr.ph ], [ %.lcssa449, %._crit_edge ] ; 2 uses
  %.lcssa451496512 = phi float [ %.lcssa451496.lcssa556577, %.preheader409.lr.ph ], [ %.lcssa451, %._crit_edge ] ; 2 uses
  %.lcssa453498511 = phi float [ %.lcssa453498.lcssa559576, %.preheader409.lr.ph ], [ %.lcssa453, %._crit_edge ] ; 2 uses
  %.lcssa455500510 = phi i64 [ %.lcssa455500.lcssa562575, %.preheader409.lr.ph ], [ %.lcssa455, %._crit_edge ] ; 2 uses
  %.lcssa457502509 = phi i64 [ %.lcssa457502.lcssa565574, %.preheader409.lr.ph ], [ %.lcssa457, %._crit_edge ] ; 2 uses
  %i.cw = phi <2 x float> [ %i.ae, %.preheader409.lr.ph ], [ %i.dd, %._crit_edge ] ; 2 uses
  %.not608 = icmp eq i16 %i.cv, 1
  br i1 %.not608, label %.preheader409.._crit_edge_crit_edge, label %.lr.ph468

.preheader409.._crit_edge_crit_edge:              ; preds = %.preheader409
  %.pre644.a = add i32 %.031519, 2
  br label %._crit_edge

.lr.ph468:                                        ; preds = %.preheader409
  %i.cx = zext i16 %i.cv to i32
  %i.cy = zext i32 %.031519 to i64                ; 7 uses
  %i.cz = add nuw nsw i64 %i.cy, 3
  %i.da = add i32 %.031519, 2                     ; 2 uses
  %8 = and i32 %.031519, 65534
  %.masked = zext nneg i32 %8 to i64
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit
  %.pre = load i16, ptr %i.bl, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader409.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i32 [ %.pre644.a, %.preheader409.._crit_edge_crit_edge ], [ %i.da, %._crit_edge.loopexit ] ; 2 uses
  %i.db = phi i16 [ %i.cu, %.preheader409.._crit_edge_crit_edge ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.dc = phi i16 [ 1, %.preheader409.._crit_edge_crit_edge ], [ %i.tj, %._crit_edge.loopexit ]
  %.lcssa483535 = phi i64 [ %.lcssa483536, %.preheader409.._crit_edge_crit_edge ], [ %i.sq, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa457 = phi i64 [ %.lcssa457502509, %.preheader409.._crit_edge_crit_edge ], [ %i.sx, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa455 = phi i64 [ %.lcssa455500510, %.preheader409.._crit_edge_crit_edge ], [ %i.ss, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa453 = phi float [ %.lcssa453498511, %.preheader409.._crit_edge_crit_edge ], [ %i.sp, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa451 = phi float [ %.lcssa451496512, %.preheader409.._crit_edge_crit_edge ], [ %i.sn, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa449 = phi <4 x float> [ %.lcssa449494513, %.preheader409.._crit_edge_crit_edge ], [ %i.sl, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa447 = phi <4 x float> [ %.lcssa447492514, %.preheader409.._crit_edge_crit_edge ], [ %i.sk, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa445 = phi <4 x float> [ %.lcssa445490515, %.preheader409.._crit_edge_crit_edge ], [ %i.sj, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa443 = phi <4 x float> [ %.lcssa443488516, %.preheader409.._crit_edge_crit_edge ], [ %i.si, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa441 = phi <4 x float> [ %.lcssa441486517, %.preheader409.._crit_edge_crit_edge ], [ %i.sh, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa439 = phi <4 x float> [ %.lcssa439485518, %.preheader409.._crit_edge_crit_edge ], [ %i.sg, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi i64 [ %.1520, %.preheader409.._crit_edge_crit_edge ], [ %i.tc, %._crit_edge.loopexit ] ; 2 uses
  %i.dd = phi <2 x float> [ %i.cw, %.preheader409.._crit_edge_crit_edge ], [ %i.sw, %._crit_edge.loopexit ] ; 2 uses
  %i.de = zext i16 %i.db to i32
  %i.df = add nsw i32 %i.de, -1
  %i.dg = icmp ult i32 %.pre-phi, %i.df
  br i1 %i.dg, label %.preheader409, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614, !llvm.loop !115

bb.h:                                             ; preds = %.lr.ph468, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit
  %i.dh = phi i64 [ %.lcssa483536, %.lr.ph468 ], [ %i.sq, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.di = phi i32 [ %i.cx, %.lr.ph468 ], [ %i.tk, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dj = phi i16 [ %i.cv, %.lr.ph468 ], [ %i.tj, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ] ; 3 uses
  %.2467 = phi i64 [ %.1520, %.lr.ph468 ], [ %i.tc, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ] ; 4 uses
  %.030466 = phi i32 [ 0, %.lr.ph468 ], [ %i.sy, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ] ; 3 uses
  %i.dk = phi <4 x float> [ %.lcssa439485518, %.lr.ph468 ], [ %i.sg, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dl = phi <4 x float> [ %.lcssa441486517, %.lr.ph468 ], [ %i.sh, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dm = phi <4 x float> [ %.lcssa443488516, %.lr.ph468 ], [ %i.si, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dn = phi <4 x float> [ %.lcssa445490515, %.lr.ph468 ], [ %i.sj, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.do = phi <4 x float> [ %.lcssa447492514, %.lr.ph468 ], [ %i.sk, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dp = phi <4 x float> [ %.lcssa449494513, %.lr.ph468 ], [ %i.sl, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dq = phi float [ %.lcssa451496512, %.lr.ph468 ], [ %i.sn, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ] ; 2 uses
  %i.dr = phi float [ %.lcssa453498511, %.lr.ph468 ], [ %i.sp, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ] ; 2 uses
  %i.ds = phi i64 [ %.lcssa455500510, %.lr.ph468 ], [ %i.ss, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dt = phi i64 [ %.lcssa457502509, %.lr.ph468 ], [ %i.sx, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ] ; 2 uses
  %i.du = phi <2 x float> [ %i.cw, %.lr.ph468 ], [ %i.sw, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit ]
  %i.dv = zext i32 %.030466 to i64                ; 26 uses
  %i.dw = load float, ptr %i.h, align 8, !noalias !175 ; 6 uses
  %i.dx = load float, ptr %i.g, align 4           ; 2 uses
  %i.dy = load float, ptr %i.n, align 16
  %i.dz = fsub float %i.dy, %i.dx
  %i.ea = load <2 x float>, ptr %4, align 4
  %i.eb = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fsub <2 x float> %i.ea, %i.ec
  %i.ee = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fdiv <2 x float> %i.ed, %i.ef           ; 2 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 0 ; 3 uses
  %i.ei = fmul float %i.dw, %i.eh                 ; 3 uses
  %i.ej = extractelement <2 x float> %i.eg, i64 1 ; 2 uses
  %i.ek = fmul float %i.dw, %i.ej                 ; 3 uses
  %i.el = tail call noundef float @llvm.floor.f32(float %i.ei) ; 3 uses
  %i.em = tail call noundef float @llvm.ceil.f32(float %i.ek) ; 3 uses
  %i.en = fcmp ogt float %i.el, 0.000000e+00
  %i.eo = select i1 %i.en, float %i.el, float 0.000000e+00 ; 3 uses
  %i.ep = fcmp olt float %i.em, %i.dw
  %i.eq = select i1 %i.ep, float %i.em, float %i.dw ; 3 uses
  %i.er = fptosi float %i.eo to i32
  %i.es = fptosi float %i.eq to i32               ; 2 uses
  %i.et = fptosi float %i.el to i32
  %i.eu = tail call noundef i32 @llvm.smax.i32(i32 %i.et, i32 -1) ; 4 uses
  %i.ev = fptosi float %i.em to i32
  %i.ew = fptosi float %i.dw to i32
  %i.ex = add nsw i32 %i.ew, 1
  %i.ey = tail call noundef i32 @llvm.smin.i32(i32 %i.ev, i32 %i.ex) ; 5 uses
  %i.ez = sext i32 %i.er to i64                   ; 2 uses
  %i.fa = load i16, ptr %i.bl, align 2, !noalias !176 ; 2 uses
  %i.fb = zext i16 %i.fa to i64                   ; 2 uses
  %i.fc = tail call noundef i64 @llvm.umin.i64(i64 %i.cz, i64 %i.fb) ; 5 uses
  %.not26.i.not24.i = icmp samesign ule i64 %i.fb, %i.cy ; 2 uses
  br i1 %.not26.i.not24.i, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit55.thread683, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.h
  %i.fd = add nuw nsw i64 %i.dv, 3
  %i.fe = zext i16 %i.dj to i64                   ; 2 uses
  %i.ff = tail call noundef i64 @llvm.umin.i64(i64 %i.fd, i64 %i.fe) ; 6 uses
  %.not.i19.i = icmp samesign ugt i64 %i.fe, %i.dv
  br i1 %.not.i19.i, label %.preheader.lr.ph.split.us.i, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit55.thread

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.fg = load i32, ptr %i.bh, align 4, !noalias !177
  %i.fh = zext i32 %i.fg to i64
  %i.fi = load i32, ptr %i.bp, align 4, !noalias !177
  %i.fj = zext i32 %i.fi to i64
  %i.fk = load ptr, ptr %i.m, align 16, !noalias !178
  %i.fl = getelementptr inbounds nuw [56 x i8], ptr %i.fk, i64 %i.ez ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !179 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !noalias !179 ; 3 uses
  %.neg = or disjoint i64 %i.dv, 1
  %xtraiter = and i64 %i.ff, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.fp = or disjoint i64 %i.dv, 1
  %i.fq = icmp eq i64 %i.ff, %.neg
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %..critedge28.i_crit_edge.us.i, %.preheader.lr.ph.split.us.i
  %.022.i27.us.i = phi i64 [ %i.cy, %.preheader.lr.ph.split.us.i ], [ %i.ha, %..critedge28.i_crit_edge.us.i ] ; 2 uses
  %.sroa.04.026.us.i = phi <4 x float> [ splat (float +inf), %.preheader.lr.ph.split.us.i ], [ %.lcssa784, %..critedge28.i_crit_edge.us.i ] ; 2 uses
  %.sroa.6.025.us.i = phi <4 x float> [ splat (float -inf), %.preheader.lr.ph.split.us.i ], [ %.lcssa, %..critedge28.i_crit_edge.us.i ] ; 2 uses
  %i.fr = mul i64 %.022.i27.us.i, %i.fj
  %invariant.op.us.i = add i64 %i.fr, %i.fh       ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.us.i
  %.reass.us.i.prol = add i64 %invariant.op.us.i, %i.dv
  %i.fs = mul i64 %.reass.us.i.prol, %i.fo
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fs
  %i.fu = load <4 x float>, ptr %i.ft, align 1, !noalias !180 ; 4 uses
  %i.fv = fcmp ugt <4 x float> %i.fu, splat (float -1.844000e+18)
  %i.fw = fcmp olt <4 x float> %i.fu, splat (float 1.844000e+18)
  %i.fx = and <4 x i1> %i.fv, %i.fw
  %i.fy = bitcast <4 x i1> %i.fx to i4
  %i.fz = and i4 %i.fy, 7
  %i.ga = icmp eq i4 %i.fz, 7
  br i1 %i.ga, label %.prol.loopexit.unr-lcssa, label %.preheader.lr.ph.split.us.i42, !prof !15

.prol.loopexit.unr-lcssa:                         ; preds = %.prol.preheader
  %i.gb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.04.026.us.i, <4 x float> %i.fu) ; 2 uses
  %i.gc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.025.us.i, <4 x float> %i.fu) ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.us.i
  %.lcssa784.unr = phi <4 x float> [ poison, %.preheader.us.i ], [ %i.gb, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi <4 x float> [ poison, %.preheader.us.i ], [ %i.gc, %.prol.loopexit.unr-lcssa ]
  %.0.i22.us.i.unr = phi i64 [ %i.dv, %.preheader.us.i ], [ %i.fp, %.prol.loopexit.unr-lcssa ]
  %.sroa.04.121.us.i.unr = phi <4 x float> [ %.sroa.04.026.us.i, %.preheader.us.i ], [ %i.gb, %.prol.loopexit.unr-lcssa ]
  %.sroa.6.120.us.i.unr = phi <4 x float> [ %.sroa.6.025.us.i, %.preheader.us.i ], [ %i.gc, %.prol.loopexit.unr-lcssa ]
  br i1 %i.fq, label %..critedge28.i_crit_edge.us.i, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.prol.loopexit
  %invariant.op = add i64 1, %invariant.op.us.i
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.preheader.us.i.new
  %.0.i22.us.i = phi i64 [ %.0.i22.us.i.unr, %.preheader.us.i.new ], [ %i.gz, %bb.k ] ; 3 uses
  %.sroa.04.121.us.i = phi <4 x float> [ %.sroa.04.121.us.i.unr, %.preheader.us.i.new ], [ %i.gx, %bb.k ]
  %.sroa.6.120.us.i = phi <4 x float> [ %.sroa.6.120.us.i.unr, %.preheader.us.i.new ], [ %i.gy, %bb.k ]
  %.reass.us.i = add i64 %invariant.op.us.i, %.0.i22.us.i
  %i.gd = mul i64 %.reass.us.i, %i.fo
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gd
  %i.gf = load <4 x float>, ptr %i.ge, align 1, !noalias !180 ; 4 uses
  %i.gg = fcmp ugt <4 x float> %i.gf, splat (float -1.844000e+18)
  %i.gh = fcmp olt <4 x float> %i.gf, splat (float 1.844000e+18)
  %i.gi = and <4 x i1> %i.gg, %i.gh
  %i.gj = bitcast <4 x i1> %i.gi to i4
  %i.gk = and i4 %i.gj, 7
  %i.gl = icmp eq i4 %i.gk, 7
  br i1 %i.gl, label %bb.j, label %.preheader.lr.ph.split.us.i42, !prof !15

bb.j:                                             ; preds = %bb.i
  %.reass.us.i.1.reass = add i64 %.0.i22.us.i, %invariant.op
  %i.gm = mul i64 %.reass.us.i.1.reass, %i.fo
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gm
  %i.go = load <4 x float>, ptr %i.gn, align 1, !noalias !180 ; 4 uses
  %i.gp = fcmp ugt <4 x float> %i.go, splat (float -1.844000e+18)
  %i.gq = fcmp olt <4 x float> %i.go, splat (float 1.844000e+18)
  %i.gr = and <4 x i1> %i.gp, %i.gq
  %i.gs = bitcast <4 x i1> %i.gr to i4
  %i.gt = and i4 %i.gs, 7
  %i.gu = icmp eq i4 %i.gt, 7
  br i1 %i.gu, label %bb.k, label %.preheader.lr.ph.split.us.i42, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.gv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.120.us.i, <4 x float> %i.gf)
  %i.gw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.04.121.us.i, <4 x float> %i.gf)
  %i.gx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gw, <4 x float> %i.go) ; 2 uses
  %i.gy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gv, <4 x float> %i.go) ; 2 uses
  %i.gz = add i64 %.0.i22.us.i, 2                 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.gz, %i.ff
  br i1 %exitcond.not.i.1, label %..critedge28.i_crit_edge.us.i, label %bb.i, !llvm.loop !8

..critedge28.i_crit_edge.us.i:                    ; preds = %bb.k, %.prol.loopexit
  %.lcssa784 = phi <4 x float> [ %.lcssa784.unr, %.prol.loopexit ], [ %i.gx, %bb.k ] ; 2 uses
  %.lcssa = phi <4 x float> [ %.lcssa.unr, %.prol.loopexit ], [ %i.gy, %bb.k ] ; 2 uses
  %i.ha = add nuw nsw i64 %.022.i27.us.i, 1       ; 2 uses
  %exitcond33.not.i = icmp eq i64 %i.ha, %i.fc
  br i1 %exitcond33.not.i, label %.preheader.lr.ph.split.us.i42, label %.preheader.us.i, !llvm.loop !9

.preheader.lr.ph.split.us.i42:                    ; preds = %..critedge28.i_crit_edge.us.i, %bb.j, %bb.i, %.prol.preheader
  %.sroa.7229.0341 = phi <4 x float> [ splat (float -inf), %bb.j ], [ splat (float -inf), %.prol.preheader ], [ splat (float -inf), %bb.i ], [ %.lcssa, %..critedge28.i_crit_edge.us.i ] ; 6 uses
  %.sroa.0226.0338 = phi <4 x float> [ splat (float +inf), %bb.j ], [ splat (float +inf), %.prol.preheader ], [ splat (float +inf), %bb.i ], [ %.lcssa784, %..critedge28.i_crit_edge.us.i ] ; 6 uses
  %i.hb = sext i32 %i.es to i64
  %i.hc = load i32, ptr %i.bh, align 4, !noalias !181
  %i.hd = zext i32 %i.hc to i64
  %i.he = load i32, ptr %i.bp, align 4, !noalias !181
  %i.hf = zext i32 %i.he to i64
  %i.hg = load ptr, ptr %i.m, align 16, !noalias !182
  %i.hh = getelementptr inbounds nuw [56 x i8], ptr %i.hg, i64 %i.hb ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !183 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK6embree4sse211GridMeshISA20createPrimRefMBArrayERNS_8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS3_Lm16EEEEERNS2_INS_16SubGridBuildDataENS4_IS8_Lm4EEEEERKNS_4BBoxIfEERKNS_5rangeImEEmj:bb.a
  %i.os = fadd <4 x float> %i.or, %i.oq           ; 2 uses
  %.0.i35430 = add nsw i32 %i.eu, 1               ; 2 uses
  %i.ot = icmp slt i32 %.0.i35430, %i.ey
  br i1 %i.ot, label %.lr.ph, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit

.lr.ph:                                           ; preds = %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit95
  %i.ou = fsub float %i.ej, %i.eh
  %i.ov = add nuw nsw i64 %i.dv, 3
  %i.ow = zext i16 %i.dj to i64                   ; 2 uses
  %i.ox = tail call i64 @llvm.umin.i64(i64 %i.ov, i64 %i.ow) ; 2 uses
  %.not.i19.i101 = icmp samesign ule i64 %i.ow, %i.dv
  %i.oy = zext nneg i32 %.0.i35430 to i64
  %brmerge = select i1 %.not26.i.not24.i, i1 true, i1 %.not.i19.i101
  %i.oz = sub nsw i64 %i.ox, %i.dv
  %i.pa = freeze i64 %i.oz                        ; 2 uses
  %xtraiter831 = and i64 %i.pa, 1
  %lcmp.mod832.not = icmp eq i64 %xtraiter831, 0
  %i.pb = or disjoint i64 %i.dv, 1
  %i.pc = icmp eq i64 %i.pa, 1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115
  %indvars.iv = phi i64 [ %i.oy, %.lr.ph ], [ %indvars.iv.next, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115 ] ; 3 uses
  %.sroa.7209.0434 = phi <4 x float> [ %i.ok, %.lr.ph ], [ %i.rs, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115 ] ; 2 uses
  %.sroa.0206.0433 = phi <4 x float> [ %i.oh, %.lr.ph ], [ %i.rq, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115 ] ; 2 uses
  %.sroa.7203.0432 = phi <4 x float> [ %i.os, %.lr.ph ], [ %i.rt, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115 ] ; 2 uses
  %.sroa.0200.0431 = phi <4 x float> [ %i.op, %.lr.ph ], [ %i.rr, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115 ] ; 2 uses
  %i.pd = trunc nsw i64 %indvars.iv to i32
  %i.pe = sitofp i32 %i.pd to float
  %i.pf = fdiv float %i.pe, %i.dw
  %i.pg = fsub float %i.pf, %i.eh
  %i.ph = fdiv float %i.pg, %i.ou                 ; 2 uses
  %i.pi = fsub float 1.000000e+00, %i.ph
  %i.pj = insertelement <4 x float> poison, float %i.ph, i64 0
  %i.pk = shufflevector <4 x float> %i.pj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pl = fmul <4 x float> %.sroa.0200.0431, %i.pk
  %i.pm = insertelement <4 x float> poison, float %i.pi, i64 0
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.po = fmul <4 x float> %.sroa.0206.0433, %i.pn
  %i.pp = fadd <4 x float> %i.pl, %i.po
  %i.pq = fmul <4 x float> %.sroa.7203.0432, %i.pk
  %i.pr = fmul <4 x float> %.sroa.7209.0434, %i.pn
  %i.ps = fadd <4 x float> %i.pq, %i.pr
  br i1 %brmerge, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115, label %.preheader.lr.ph.split.us.i102

.preheader.lr.ph.split.us.i102:                   ; preds = %bb.v
  %i.pt = load i32, ptr %i.bh, align 4, !noalias !193
  %i.pu = zext i32 %i.pt to i64
  %i.pv = load i32, ptr %i.bp, align 4, !noalias !193
  %i.pw = zext i32 %i.pv to i64
  %i.px = load ptr, ptr %i.m, align 16, !noalias !194
  %i.py = getelementptr inbounds nuw [56 x i8], ptr %i.px, i64 %indvars.iv ; 2 uses
  %i.pz = load ptr, ptr %i.py, align 8, !noalias !195 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qb = load i64, ptr %i.qa, align 8, !noalias !195 ; 3 uses
  br label %.preheader.us.i103

.preheader.us.i103:                               ; preds = %..critedge28.i_crit_edge.us.i113, %.preheader.lr.ph.split.us.i102
  %.022.i27.us.i104 = phi i64 [ %i.cy, %.preheader.lr.ph.split.us.i102 ], [ %i.rl, %..critedge28.i_crit_edge.us.i113 ] ; 2 uses
  %.sroa.04.026.us.i105 = phi <4 x float> [ splat (float +inf), %.preheader.lr.ph.split.us.i102 ], [ %.lcssa792.a, %..critedge28.i_crit_edge.us.i113 ] ; 2 uses
  %.sroa.6.025.us.i106 = phi <4 x float> [ splat (float -inf), %.preheader.lr.ph.split.us.i102 ], [ %.lcssa791, %..critedge28.i_crit_edge.us.i113 ] ; 2 uses
  %i.qc = mul i64 %.022.i27.us.i104, %i.pw
  %invariant.op.us.i107 = add i64 %i.qc, %i.pu    ; 3 uses
  br i1 %lcmp.mod832.not, label %.prol.loopexit830, label %.prol.preheader829

.prol.preheader829:                               ; preds = %.preheader.us.i103
  %.reass.us.i111.prol = add i64 %invariant.op.us.i107, %i.dv
  %i.qd = mul i64 %.reass.us.i111.prol, %i.qb
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qd
  %i.qf = load <4 x float>, ptr %i.qe, align 1, !noalias !196 ; 4 uses
  %i.qg = fcmp ugt <4 x float> %i.qf, splat (float -1.844000e+18)
  %i.qh = fcmp olt <4 x float> %i.qf, splat (float 1.844000e+18)
  %i.qi = and <4 x i1> %i.qg, %i.qh
  %i.qj = bitcast <4 x i1> %i.qi to i4
  %i.qk = and i4 %i.qj, 7
  %i.ql = icmp eq i4 %i.qk, 7
  br i1 %i.ql, label %.prol.loopexit830.unr-lcssa, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115, !prof !15

.prol.loopexit830.unr-lcssa:                      ; preds = %.prol.preheader829
  %i.qm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.04.026.us.i105, <4 x float> %i.qf) ; 2 uses
  %i.qn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.025.us.i106, <4 x float> %i.qf) ; 2 uses
  br label %.prol.loopexit830

.prol.loopexit830:                                ; preds = %.prol.loopexit830.unr-lcssa, %.preheader.us.i103
  %.lcssa792.unr.a = phi <4 x float> [ poison, %.preheader.us.i103 ], [ %i.qm, %.prol.loopexit830.unr-lcssa ]
  %.lcssa791.unr = phi <4 x float> [ poison, %.preheader.us.i103 ], [ %i.qn, %.prol.loopexit830.unr-lcssa ]
  %.0.i22.us.i108.unr = phi i64 [ %i.dv, %.preheader.us.i103 ], [ %i.pb, %.prol.loopexit830.unr-lcssa ]
  %.sroa.04.121.us.i109.unr = phi <4 x float> [ %.sroa.04.026.us.i105, %.preheader.us.i103 ], [ %i.qm, %.prol.loopexit830.unr-lcssa ]
  %.sroa.6.120.us.i110.unr = phi <4 x float> [ %.sroa.6.025.us.i106, %.preheader.us.i103 ], [ %i.qn, %.prol.loopexit830.unr-lcssa ]
  br i1 %i.pc, label %..critedge28.i_crit_edge.us.i113, label %.preheader.us.i103.new

.preheader.us.i103.new:                           ; preds = %.prol.loopexit830
  %invariant.op870 = add i64 1, %invariant.op.us.i107
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.preheader.us.i103.new
  %.0.i22.us.i108 = phi i64 [ %.0.i22.us.i108.unr, %.preheader.us.i103.new ], [ %i.rk, %bb.y ] ; 3 uses
  %.sroa.04.121.us.i109 = phi <4 x float> [ %.sroa.04.121.us.i109.unr, %.preheader.us.i103.new ], [ %i.ri, %bb.y ]
  %.sroa.6.120.us.i110 = phi <4 x float> [ %.sroa.6.120.us.i110.unr, %.preheader.us.i103.new ], [ %i.rj, %bb.y ]
  %.reass.us.i111 = add i64 %invariant.op.us.i107, %.0.i22.us.i108
  %i.qo = mul i64 %.reass.us.i111, %i.qb
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qo
  %i.qq = load <4 x float>, ptr %i.qp, align 1, !noalias !196 ; 4 uses
  %i.qr = fcmp ugt <4 x float> %i.qq, splat (float -1.844000e+18)
  %i.qs = fcmp olt <4 x float> %i.qq, splat (float 1.844000e+18)
  %i.qt = and <4 x i1> %i.qr, %i.qs
  %i.qu = bitcast <4 x i1> %i.qt to i4
  %i.qv = and i4 %i.qu, 7
  %i.qw = icmp eq i4 %i.qv, 7
  br i1 %i.qw, label %bb.x, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115, !prof !15

bb.x:                                             ; preds = %bb.w
  %.reass.us.i111.1.reass = add i64 %.0.i22.us.i108, %invariant.op870
  %i.qx = mul i64 %.reass.us.i111.1.reass, %i.qb
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qx
  %i.qz = load <4 x float>, ptr %i.qy, align 1, !noalias !196 ; 4 uses
  %i.ra = fcmp ugt <4 x float> %i.qz, splat (float -1.844000e+18)
  %i.rb = fcmp olt <4 x float> %i.qz, splat (float 1.844000e+18)
  %i.rc = and <4 x i1> %i.ra, %i.rb
  %i.rd = bitcast <4 x i1> %i.rc to i4
  %i.re = and i4 %i.rd, 7
  %i.rf = icmp eq i4 %i.re, 7
  br i1 %i.rf, label %bb.y, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.rg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.120.us.i110, <4 x float> %i.qq)
  %i.rh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.04.121.us.i109, <4 x float> %i.qq)
  %i.ri = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.rh, <4 x float> %i.qz) ; 2 uses
  %i.rj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.rg, <4 x float> %i.qz) ; 2 uses
  %i.rk = add i64 %.0.i22.us.i108, 2              ; 2 uses
  %exitcond.not.i112.1 = icmp eq i64 %i.rk, %i.ox
  br i1 %exitcond.not.i112.1, label %..critedge28.i_crit_edge.us.i113, label %bb.w, !llvm.loop !8

..critedge28.i_crit_edge.us.i113:                 ; preds = %bb.y, %.prol.loopexit830
  %.lcssa792.a = phi <4 x float> [ %.lcssa792.unr.a, %.prol.loopexit830 ], [ %i.ri, %bb.y ] ; 2 uses
  %.lcssa791 = phi <4 x float> [ %.lcssa791.unr, %.prol.loopexit830 ], [ %i.rj, %bb.y ] ; 2 uses
  %i.rl = add nuw nsw i64 %.022.i27.us.i104, 1    ; 2 uses
  %exitcond33.not.i114 = icmp eq i64 %i.rl, %i.fc
  br i1 %exitcond33.not.i114, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115, label %.preheader.us.i103, !llvm.loop !9

_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115: ; preds = %..critedge28.i_crit_edge.us.i113, %bb.x, %bb.w, %.prol.preheader829, %bb.v
  %.sroa.0196.0 = phi <4 x float> [ splat (float +inf), %bb.x ], [ splat (float +inf), %bb.v ], [ splat (float +inf), %.prol.preheader829 ], [ splat (float +inf), %bb.w ], [ %.lcssa792.a, %..critedge28.i_crit_edge.us.i113 ]
  %.sroa.5197.0 = phi <4 x float> [ splat (float -inf), %bb.x ], [ splat (float -inf), %bb.v ], [ splat (float -inf), %.prol.preheader829 ], [ splat (float -inf), %bb.w ], [ %.lcssa791, %..critedge28.i_crit_edge.us.i113 ]
  %i.rm = fsub <4 x float> %.sroa.0196.0, %i.pp
  %i.rn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.rm, <4 x float> zeroinitializer) ; 2 uses
  %i.ro = fsub <4 x float> %.sroa.5197.0, %i.ps
  %i.rp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ro, <4 x float> zeroinitializer) ; 2 uses
  %i.rq = fadd <4 x float> %.sroa.0206.0433, %i.rn ; 2 uses
  %i.rr = fadd <4 x float> %.sroa.0200.0431, %i.rn ; 2 uses
  %i.rs = fadd <4 x float> %.sroa.7209.0434, %i.rp ; 2 uses
  %i.rt = fadd <4 x float> %.sroa.7203.0432, %i.rp ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond642.not = icmp eq i32 %i.ey, %lftr.wideiv
  br i1 %exitcond642.not, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit, label %bb.v, !llvm.loop !10

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_8GridMesh12linearBoundsERKNS4_4GridEmmRKNS_4BBoxIfEEEUlmE_EERKT_SB_SB_f.exit: ; preds = %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit95, %bb.o
  %.sroa.11.0 = phi <4 x float> [ %i.ka, %bb.o ], [ %i.os, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit95 ], [ %i.rt, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115 ]
  %.sroa.8.0 = phi <4 x float> [ %i.jx, %bb.o ], [ %i.op, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit95 ], [ %i.rr, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115 ]
  %.sroa.5117.0 = phi <4 x float> [ %i.js, %bb.o ], [ %i.ok, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit95 ], [ %i.rs, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115 ]
  %.sroa.0116.0 = phi <4 x float> [ %i.jp, %bb.o ], [ %i.oh, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit95 ], [ %i.rq, %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit115 ]
  %i.ru = load i32, ptr %i.o, align 4
  %i.rv = add i32 %i.ru, -1                       ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.g, align 4 ; 4 uses
  %i.rw = trunc i64 %.2467 to i32
  %.sroa.0118.12.vec.insert = insertelement <4 x float> %.sroa.0116.0, float %i.p, i64 3 ; 3 uses
  %i.rx = bitcast i32 %i.rw to float
  %.sroa.7.28.vec.insert = insertelement <4 x float> %.sroa.5117.0, float %i.rx, i64 3 ; 3 uses
  %i.ry = bitcast i32 %i.rv to float              ; 2 uses
  %.sroa.12.44.vec.insert = insertelement <4 x float> %.sroa.8.0, float %i.ry, i64 3 ; 3 uses
  %.sroa.18.60.vec.insert = insertelement <4 x float> %.sroa.11.0, float %i.ry, i64 3 ; 3 uses
  %i.rz = fmul <4 x float> %.sroa.12.44.vec.insert, splat (float 5.000000e-01)
  %i.sa = fmul <4 x float> %.sroa.0118.12.vec.insert, splat (float 5.000000e-01)
  %i.sb = fadd <4 x float> %i.sa, %i.rz
  %i.sc = fmul <4 x float> %.sroa.18.60.vec.insert, splat (float 5.000000e-01)
  %i.sd = fmul <4 x float> %.sroa.7.28.vec.insert, splat (float 5.000000e-01)
  %i.se = fadd <4 x float> %i.sd, %i.sc
  %i.sf = fadd <4 x float> %i.sb, %i.se           ; 2 uses
  %i.sg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dk, <4 x float> %.sroa.0118.12.vec.insert) ; 2 uses
  %i.sh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dl, <4 x float> %.sroa.7.28.vec.insert) ; 2 uses
  %i.si = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dm, <4 x float> %.sroa.12.44.vec.insert) ; 2 uses
  %i.sj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dn, <4 x float> %.sroa.18.60.vec.insert) ; 2 uses
  %i.sk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.do, <4 x float> %i.sf) ; 2 uses
  %i.sl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dp, <4 x float> %i.sf) ; 2 uses
  %.sroa.25.64.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload, i64 0 ; 2 uses
  %i.sm = fcmp olt float %i.dq, %.sroa.25.64.vec.extract
  %i.sn = select i1 %i.sm, float %i.dq, float %.sroa.25.64.vec.extract ; 2 uses
  %.sroa.25.68.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload, i64 1 ; 2 uses
  %i.so = fcmp olt float %i.dr, %.sroa.25.68.vec.extract
  %i.sp = select i1 %i.so, float %.sroa.25.68.vec.extract, float %i.dr ; 2 uses
  %i.sq = add i64 %i.dh, 1                        ; 2 uses
  %i.sr = zext i32 %i.rv to i64                   ; 3 uses
  %i.ss = add i64 %i.ds, %i.sr                    ; 2 uses
  %i.st = icmp ult i64 %i.dt, %i.sr
  %i.su = insertelement <2 x i1> poison, i1 %i.st, i64 0
  %i.sv = shufflevector <2 x i1> %i.su, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.sw = select <2 x i1> %i.sv, <2 x float> %.sroa.0.0.copyload, <2 x float> %i.du ; 2 uses
  %i.sx = tail call i64 @llvm.umax.i64(i64 %i.dt, i64 %i.sr) ; 2 uses
  %i.sy = add i32 %.030466, 2                     ; 3 uses
  %.not.i = icmp ult i32 %i.sy, %i.di
  %9 = select i1 %.not.i, i64 0, i64 32768
  %i.sz = zext i16 %i.fa to i32
  %.not.i33 = icmp ult i32 %i.da, %i.sz
  %10 = select i1 %.not.i33, i64 0, i64 32768
  %i.ta = load ptr, ptr %i.q, align 8
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.ta, i64 %.2467
  %.sroa.4.0.insert.ext = or i64 %10, %.masked
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 16
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.5.0.insert.ext
  %.030.masked = and i32 %.030466, 65534
  %.masked404 = zext nneg i32 %.030.masked to i64
  %.sroa.0.0.insert.ext = or i64 %9, %.masked404
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.tb, align 4
  %i.tc = add i64 %.2467, 1                       ; 2 uses
  %i.td = load ptr, ptr %i.r, align 8
  %i.te = getelementptr inbounds nuw [80 x i8], ptr %i.td, i64 %.2467 ; 5 uses
  store <4 x float> %.sroa.0118.12.vec.insert, ptr %i.te, align 16
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  store <4 x float> %.sroa.7.28.vec.insert, ptr %i.tf, align 16
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  store <4 x float> %.sroa.12.44.vec.insert, ptr %i.tg, align 16
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 48
  store <4 x float> %.sroa.18.60.vec.insert, ptr %i.th, align 16
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 64
  store <2 x float> %.sroa.0.0.copyload, ptr %i.ti, align 16
  %i.tj = load i16, ptr %i.bs, align 4            ; 3 uses
  %i.tk = zext i16 %i.tj to i32                   ; 2 uses
  %i.tl = add nsw i32 %i.tk, -1
  %i.tm = icmp ult i32 %i.sy, %i.tl
  br i1 %i.tm, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !168

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614: ; preds = %._crit_edge
  %.pre643 = load i64, ptr %i.d, align 8
  br label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread: ; preds = %bb.g, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332, %bb.e, %bb.d, %bb.c
  %i.tn = phi i64 [ %i.ad, %bb.e ], [ %.pre643, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %i.ad, %bb.c ], [ %i.ad, %bb.d ], [ %i.ad, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %i.ad, %bb.g ] ; 2 uses
  %.lcssa483535.lcssa603 = phi i64 [ %.lcssa483535.lcssa605, %bb.e ], [ %.lcssa483535, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %.lcssa483535.lcssa605, %bb.c ], [ %.lcssa483535.lcssa605, %bb.d ], [ %.lcssa483535.lcssa605, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %.lcssa483535.lcssa605, %bb.g ] ; 2 uses
  %.lcssa457502.lcssa564 = phi i64 [ %.lcssa457502.lcssa565574, %bb.e ], [ %.lcssa457, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %.lcssa457502.lcssa565574, %bb.c ], [ %.lcssa457502.lcssa565574, %bb.d ], [ %.lcssa457502.lcssa565574, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %.lcssa457502.lcssa565574, %bb.g ] ; 2 uses
  %.lcssa455500.lcssa561 = phi i64 [ %.lcssa455500.lcssa562575, %bb.e ], [ %.lcssa455, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %.lcssa455500.lcssa562575, %bb.c ], [ %.lcssa455500.lcssa562575, %bb.d ], [ %.lcssa455500.lcssa562575, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %.lcssa455500.lcssa562575, %bb.g ] ; 2 uses
  %.lcssa453498.lcssa558 = phi float [ %.lcssa453498.lcssa559576, %bb.e ], [ %.lcssa453, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %.lcssa453498.lcssa559576, %bb.c ], [ %.lcssa453498.lcssa559576, %bb.d ], [ %.lcssa453498.lcssa559576, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %.lcssa453498.lcssa559576, %bb.g ] ; 2 uses
  %.lcssa451496.lcssa555 = phi float [ %.lcssa451496.lcssa556577, %bb.e ], [ %.lcssa451, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %.lcssa451496.lcssa556577, %bb.c ], [ %.lcssa451496.lcssa556577, %bb.d ], [ %.lcssa451496.lcssa556577, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %.lcssa451496.lcssa556577, %bb.g ] ; 2 uses
  %.lcssa449494.lcssa552 = phi <4 x float> [ %.lcssa449494.lcssa553578, %bb.e ], [ %.lcssa449, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %.lcssa449494.lcssa553578, %bb.c ], [ %.lcssa449494.lcssa553578, %bb.d ], [ %.lcssa449494.lcssa553578, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %.lcssa449494.lcssa553578, %bb.g ] ; 2 uses
  %.lcssa447492.lcssa549 = phi <4 x float> [ %.lcssa447492.lcssa550579, %bb.e ], [ %.lcssa447, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %.lcssa447492.lcssa550579, %bb.c ], [ %.lcssa447492.lcssa550579, %bb.d ], [ %.lcssa447492.lcssa550579, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %.lcssa447492.lcssa550579, %bb.g ] ; 2 uses
  %.lcssa445490.lcssa546 = phi <4 x float> [ %.lcssa445490.lcssa547580, %bb.e ], [ %.lcssa445, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %.lcssa445490.lcssa547580, %bb.c ], [ %.lcssa445490.lcssa547580, %bb.d ], [ %.lcssa445490.lcssa547580, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %.lcssa445490.lcssa547580, %bb.g ] ; 2 uses
  %.lcssa443488.lcssa543 = phi <4 x float> [ %.lcssa443488.lcssa544581, %bb.e ], [ %.lcssa443, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %.lcssa443488.lcssa544581, %bb.c ], [ %.lcssa443488.lcssa544581, %bb.d ], [ %.lcssa443488.lcssa544581, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %.lcssa443488.lcssa544581, %bb.g ] ; 2 uses
  %.lcssa441486.lcssa541 = phi <4 x float> [ %.lcssa441486.lcssa542582, %bb.e ], [ %.lcssa441, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %.lcssa441486.lcssa542582, %bb.c ], [ %.lcssa441486.lcssa542582, %bb.d ], [ %.lcssa441486.lcssa542582, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %.lcssa441486.lcssa542582, %bb.g ] ; 2 uses
  %.lcssa439485.lcssa538 = phi <4 x float> [ %.lcssa439485.lcssa539583, %bb.e ], [ %.lcssa439, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %.lcssa439485.lcssa539583, %bb.c ], [ %.lcssa439485.lcssa539583, %bb.d ], [ %.lcssa439485.lcssa539583, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %.lcssa439485.lcssa539583, %bb.g ] ; 2 uses
  %.3 = phi i64 [ %.0586, %bb.e ], [ %.2.lcssa, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %.0586, %bb.c ], [ %.0586, %bb.d ], [ %.0586, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %.0586, %bb.g ]
  %i.to = phi <2 x float> [ %i.ae, %bb.e ], [ %i.dd, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.loopexit614 ], [ %i.ae, %bb.c ], [ %i.ae, %bb.d ], [ %i.ae, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread332 ], [ %i.ae, %bb.g ] ; 2 uses
  %i.tp = add nuw i64 %.032584, 1                 ; 2 uses
  %i.tq = icmp ult i64 %i.tp, %i.tn
  br i1 %i.tq, label %bb.c, label %._crit_edge589, !llvm.loop !169
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6embree4sse211GridMeshISA13vlinearBoundsEmRKNS_4BBoxIfEEPKNS_16SubGridBuildDataE(ptr dead_on_unwind noalias writable sret(%"struct.embree::LBBox") align 16 %0, ptr noundef nonnull align 16 dereferenceable(264) %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef %4) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %2 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = load i16, ptr %i.a, align 4
  %.fr = freeze i16 %i.d
  %i.e = and i16 %.fr, 32767                      ; 4 uses
  %i.f = zext nneg i16 %i.e to i64                ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %i.i = and i16 %i.h, 32767                      ; 2 uses
  %i.j = zext nneg i16 %i.i to i64                ; 6 uses
  %i.k = zext i32 %i.c to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load i64, ptr %i.n, align 8
  %i.p = mul i64 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 14 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load float, ptr %i.s, align 8, !noalias !249 ; 6 uses
  %i.u = load float, ptr %i.r, align 4            ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load float, ptr %i.v, align 16
  %i.x = fsub float %i.w, %i.u
  %i.y = load <2 x float>, ptr %3, align 4
  %i.z = insertelement <2 x float> poison, float %i.u, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fsub <2 x float> %i.y, %i.aa
  %i.ac = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fdiv <2 x float> %i.ab, %i.ad           ; 2 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0 ; 3 uses
  %i.ag = fmul float %i.t, %i.af                  ; 3 uses
  %i.ah = extractelement <2 x float> %i.ae, i64 1 ; 2 uses
  %i.ai = fmul float %i.t, %i.ah                  ; 3 uses
  %i.aj = tail call noundef float @llvm.floor.f32(float %i.ag) ; 3 uses
  %i.ak = tail call noundef float @llvm.ceil.f32(float %i.ai) ; 3 uses
  %i.al = fcmp ogt float %i.aj, 0.000000e+00
  %i.am = select i1 %i.al, float %i.aj, float 0.000000e+00 ; 3 uses
  %i.an = fcmp olt float %i.ak, %i.t
  %i.ao = select i1 %i.an, float %i.ak, float %i.t ; 3 uses
  %i.ap = fptosi float %i.am to i32
  %i.aq = fptosi float %i.ao to i32               ; 2 uses
  %i.ar = fptosi float %i.aj to i32
  %i.as = tail call noundef i32 @llvm.smax.i32(i32 %i.ar, i32 -1) ; 4 uses
  %i.at = fptosi float %i.ak to i32
  %i.au = fptosi float %i.t to i32
  %i.av = add nsw i32 %i.au, 1
  %i.aw = tail call noundef i32 @llvm.smin.i32(i32 %i.at, i32 %i.av) ; 5 uses
  %i.ax = sext i32 %i.ap to i64                   ; 2 uses
  %i.ay = add nuw nsw i64 %i.j, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  %i.ba = load i16, ptr %i.az, align 2, !noalias !250 ; 2 uses
  %i.bb = zext i16 %i.ba to i64
  %i.bc = tail call noundef i64 @llvm.umin.i64(i64 %i.ay, i64 %i.bb) ; 5 uses
  %.not26.i.not24.i = icmp ugt i16 %i.ba, %i.i    ; 2 uses
  br i1 %.not26.i.not24.i, label %.preheader.lr.ph.i, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit28.thread346

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.bd = add nuw nsw i64 %i.f, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bf = load i16, ptr %i.be, align 4, !noalias !250 ; 2 uses
  %i.bg = zext i16 %i.bf to i64
  %i.bh = tail call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bg) ; 4 uses
  %.not.i19.i = icmp ugt i16 %i.bf, %i.e
  br i1 %.not.i19.i, label %.preheader.lr.ph.split.us.i, label %_ZZNK6embree8GridMesh12linearBoundsERKNS0_4GridEmmRKNS_4BBoxIfEEENKUlmE_clEm.exit28.thread

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bk = load i32, ptr %i.q, align 4, !noalias !251
  %i.bl = zext i32 %i.bk to i64
  %i.bm = load i32, ptr %i.bj, align 4, !noalias !251
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load ptr, ptr %i.bi, align 16, !noalias !252
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %i.ax ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !253 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !noalias !253 ; 3 uses
  %i.bt = sub nsw i64 %i.bh, %i.f                 ; 2 uses
  %xtraiter = and i64 %i.bt, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bu = add nuw nsw i64 %i.f, 1
  %i.bv = icmp eq i64 %i.bt, 1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %..critedge28.i_crit_edge.us.i, %.preheader.lr.ph.split.us.i
  %.022.i27.us.i = phi i64 [ %i.j, %.preheader.lr.ph.split.us.i ], [ %i.df, %..critedge28.i_crit_edge.us.i ] ; 2 uses
  %.sroa.04.026.us.i = phi <4 x float> [ splat (float +inf), %.preheader.lr.ph.split.us.i ], [ %.lcssa434, %..critedge28.i_crit_edge.us.i ] ; 2 uses
  %.sroa.6.025.us.i = phi <4 x float> [ splat (float -inf), %.preheader.lr.ph.split.us.i ], [ %.lcssa433, %..critedge28.i_crit_edge.us.i ] ; 2 uses
  %i.bw = mul i64 %.022.i27.us.i, %i.bn
  %invariant.op.us.i = add i64 %i.bw, %i.bl       ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.us.i
  %.reass.us.i.prol = add i64 %invariant.op.us.i, %i.f
  %i.bx = mul i64 %.reass.us.i.prol, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bx
  %i.bz = load <4 x float>, ptr %i.by, align 1, !noalias !254 ; 4 uses
  %i.ca = fcmp ugt <4 x float> %i.bz, splat (float -1.844000e+18)
  %i.cb = fcmp olt <4 x float> %i.bz, splat (float 1.844000e+18)
  %i.cc = and <4 x i1> %i.ca, %i.cb
  %i.cd = bitcast <4 x i1> %i.cc to i4
  %i.ce = and i4 %i.cd, 7
  %i.cf = icmp eq i4 %i.ce, 7
  br i1 %i.cf, label %.prol.loopexit.unr-lcssa, label %.preheader.lr.ph.split.us.i15, !prof !15

.prol.loopexit.unr-lcssa:                         ; preds = %.prol.preheader
  %i.cg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.04.026.us.i, <4 x float> %i.bz) ; 2 uses
  %i.ch = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.025.us.i, <4 x float> %i.bz) ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.us.i
  %.lcssa434.unr = phi <4 x float> [ poison, %.preheader.us.i ], [ %i.cg, %.prol.loopexit.unr-lcssa ]
  %.lcssa433.unr = phi <4 x float> [ poison, %.preheader.us.i ], [ %i.ch, %.prol.loopexit.unr-lcssa ]
  %.0.i22.us.i.unr = phi i64 [ %i.f, %.preheader.us.i ], [ %i.bu, %.prol.loopexit.unr-lcssa ]
  %.sroa.04.121.us.i.unr = phi <4 x float> [ %.sroa.04.026.us.i, %.preheader.us.i ], [ %i.cg, %.prol.loopexit.unr-lcssa ]
  %.sroa.6.120.us.i.unr = phi <4 x float> [ %.sroa.6.025.us.i, %.preheader.us.i ], [ %i.ch, %.prol.loopexit.unr-lcssa ]
  br i1 %i.bv, label %..critedge28.i_crit_edge.us.i, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.prol.loopexit
  %invariant.op = add i64 1, %invariant.op.us.i
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.us.i.new
  %.0.i22.us.i = phi i64 [ %.0.i22.us.i.unr, %.preheader.us.i.new ], [ %i.de, %bb.d ] ; 3 uses
  %.sroa.04.121.us.i = phi <4 x float> [ %.sroa.04.121.us.i.unr, %.preheader.us.i.new ], [ %i.dc, %bb.d ]
  %.sroa.6.120.us.i = phi <4 x float> [ %.sroa.6.120.us.i.unr, %.preheader.us.i.new ], [ %i.dd, %bb.d ]
  %.reass.us.i = add i64 %invariant.op.us.i, %.0.i22.us.i
  %i.ci = mul i64 %.reass.us.i, %i.bs
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ci
  %i.ck = load <4 x float>, ptr %i.cj, align 1, !noalias !254 ; 4 uses
  %i.cl = fcmp ugt <4 x float> %i.ck, splat (float -1.844000e+18)
  %i.cm = fcmp olt <4 x float> %i.ck, splat (float 1.844000e+18)
  %i.cn = and <4 x i1> %i.cl, %i.cm
  %i.co = bitcast <4 x i1> %i.cn to i4
  %i.cp = and i4 %i.co, 7
  %i.cq = icmp eq i4 %i.cp, 7
  br i1 %i.cq, label %bb.c, label %.preheader.lr.ph.split.us.i15, !prof !15

bb.c:                                             ; preds = %bb.b
  %.reass.us.i.1.reass = add i64 %.0.i22.us.i, %invariant.op
  %i.cr = mul i64 %.reass.us.i.1.reass, %i.bs
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.cr
  %i.ct = load <4 x float>, ptr %i.cs, align 1, !noalias !254 ; 4 uses
  %i.cu = fcmp ugt <4 x float> %i.ct, splat (float -1.844000e+18)
  %i.cv = fcmp olt <4 x float> %i.ct, splat (float 1.844000e+18)
  %i.cw = and <4 x i1> %i.cu, %i.cv
  %i.cx = bitcast <4 x i1> %i.cw to i4
  %i.cy = and i4 %i.cx, 7
  %i.cz = icmp eq i4 %i.cy, 7
  br i1 %i.cz, label %bb.d, label %.preheader.lr.ph.split.us.i15, !prof !15
end_hunk_1

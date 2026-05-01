inline.NumInlined: 941
inline.NumDeleted: 358
begin_hunk_0_@_ZN6Assimp11LWOImporter14FindVCChannelsERKNS_3LWO7SurfaceERSt6vectorIjSaIjEERKNS1_5LayerEPj:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit70
end_hunk_0
begin_hunk_1_@_ZN6Assimp11LWOImporter14FindVCChannelsERKNS_3LWO7SurfaceERSt6vectorIjSaIjEERKNS1_5LayerEPj:bb.a
  %i.t = phi ptr [ %i.d, %.lr.ph108 ], [ %i.du, %.loopexit70 ]
  %i.u = phi i64 [ 0, %.lr.ph108 ], [ %i.ds, %.loopexit70 ]
  %.0106 = phi i32 [ 0, %.lr.ph108 ], [ %i.dr, %.loopexit70 ] ; 3 uses
  %.067105 = phi i32 [ 0, %.lr.ph108 ], [ %.4, %.loopexit70 ] ; 5 uses
  %i.v = getelementptr inbounds nuw [112 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.f, align 8              ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11LWOImporter14FindVCChannelsERKNS_3LWO7SurfaceERSt6vectorIjSaIjEERKNS1_5LayerEPj:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader: ; preds = %bb.d, %bb.c
  %.not112 = icmp eq i32 %.067105, 0
  br i1 %.not112, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit._crit_edge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader113

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader113: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader
  %.pre = load i32, ptr %4, align 4               ; 8 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %.067105, i32 7)
  %wide.trip.count118 = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %n.rnd.up = add nuw nsw i64 %wide.trip.count118, 3
  %n.vec = and i64 %n.rnd.up, 12
  %trip.count.minus.1 = add nsw i64 %wide.trip.count118, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %8 = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 4 uses
  %9 = extractelement <4 x i1> %8, i64 0
  br i1 %9, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader113
  store i32 %.pre, ptr %i.m, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader113
  %10 = extractelement <4 x i1> %8, i64 1
  br i1 %10, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue
  store i32 %.pre, ptr %i.n, align 4
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue
  %11 = extractelement <4 x i1> %8, i64 2
  br i1 %11, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  store i32 %.pre, ptr %i.o, align 4
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %12 = extractelement <4 x i1> %8, i64 3
  br i1 %12, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  store i32 %.pre, ptr %i.p, align 4
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.af = icmp eq i64 %n.vec, 4
  br i1 %i.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit._crit_edge, label %vector.body.1

vector.body.1:                                    ; preds = %pred.store.continue148
  %13 = icmp ugt <4 x i64> %broadcast.splat, <i64 3, i64 4, i64 5, i64 6> ; 4 uses
  %14 = extractelement <4 x i1> %13, i64 0
  br i1 %14, label %pred.store.if.1, label %pred.store.continue.1

pred.store.if.1:                                  ; preds = %vector.body.1
  store i32 %.pre, ptr %i.q, align 4
  br label %pred.store.continue.1

pred.store.continue.1:                            ; preds = %pred.store.if.1, %vector.body.1
  %15 = extractelement <4 x i1> %13, i64 1
  br i1 %15, label %pred.store.if143.1, label %pred.store.continue144.1

pred.store.if143.1:                               ; preds = %pred.store.continue.1
  store i32 %.pre, ptr %i.r, align 4
  br label %pred.store.continue144.1

pred.store.continue144.1:                         ; preds = %pred.store.if143.1, %pred.store.continue.1
  %16 = extractelement <4 x i1> %13, i64 2
  br i1 %16, label %pred.store.if145.1, label %pred.store.continue146.1

pred.store.if145.1:                               ; preds = %pred.store.continue144.1
  store i32 %.pre, ptr %i.s, align 4
  br label %pred.store.continue146.1

pred.store.continue146.1:                         ; preds = %pred.store.if145.1, %pred.store.continue144.1
  %17 = extractelement <4 x i1> %13, i64 3
  br i1 %17, label %pred.store.if147.1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit._crit_edge

pred.store.if147.1:                               ; preds = %pred.store.continue146.1
  store i32 %.pre, ptr %7, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit._crit_edge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit._crit_edge: ; preds = %pred.store.continue148, %pred.store.if147.1, %pred.store.continue146.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader
  store i32 %.0106, ptr %4, align 4
  %18 = add i32 %.067105, 1
  br label %.loopexit70

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %bb.d
  %i.ag = load ptr, ptr %2, align 8               ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp11LWOImporter14FindVCChannelsERKNS_3LWO7SurfaceERSt6vectorIjSaIjEERKNS1_5LayerEPj:bb.a
  %.not68 = icmp eq ptr %i.dq, %i.dp
  br i1 %.not68, label %.loopexit70, label %bb.e, !llvm.loop !56

.loopexit70:                                      ; preds = %.loopexit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit._crit_edge
  %.4 = phi i32 [ %18, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit._crit_edge ], [ %.067105, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %.3, %.loopexit ] ; 3 uses
  %i.dr = add i32 %.0106, 1                       ; 2 uses
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = load ptr, ptr %i.b, align 8
end_hunk_3
begin_hunk_4_@llvm.umin.i64
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_4

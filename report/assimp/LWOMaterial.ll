inline.NumInlined: 941
inline.NumDeleted: 358
begin_hunk_0_@_ZN6Assimp11LWOImporter14FindVCChannelsERKNS_3LWO7SurfaceERSt6vectorIjSaIjEERKNS1_5LayerEPj:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit70
end_hunk_0
begin_hunk_1_@_ZN6Assimp11LWOImporter14FindVCChannelsERKNS_3LWO7SurfaceERSt6vectorIjSaIjEERKNS1_5LayerEPj:bb.a
  %i.t = phi ptr [ %i.d, %.lr.ph108 ], [ %i.du, %.loopexit70 ]
  %i.u = phi i64 [ 0, %.lr.ph108 ], [ %i.ds, %.loopexit70 ]
  %.0106 = phi i32 [ 0, %.lr.ph108 ], [ %i.dr, %.loopexit70 ] ; 3 uses
  %.067105 = phi i32 [ 0, %.lr.ph108 ], [ %.4, %.loopexit70 ] ; 10 uses
  %i.v = getelementptr inbounds nuw [112 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.f, align 8              ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11LWOImporter14FindVCChannelsERKNS_3LWO7SurfaceERSt6vectorIjSaIjEERKNS1_5LayerEPj:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader: ; preds = %bb.d, %bb.c
  %.not112 = icmp eq i32 %.067105, 0
  br i1 %.not112, label %pred.store.if147, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader113

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader113: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader
  %.pre = load i32, ptr %4, align 4               ; 7 uses
  store i32 %.pre, ptr %i.m, align 4
  %exitcond119.not = icmp eq i32 %.067105, 1
  br i1 %exitcond119.not, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader113, %pred.store.continue148, %vector.body.1, %pred.store.if145.1, %pred.store.continue146.1, %pred.store.if147.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit._crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader
  store i32 %.0106, ptr %4, align 4
  %7 = add i32 %.067105, 1
  br label %.loopexit70

pred.store.continue148:                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.preheader113
  store i32 %.pre, ptr %i.n, align 4
  %i.af = icmp eq i32 %.067105, 2
  br i1 %i.af, label %pred.store.if147, label %vector.body.1

vector.body.1:                                    ; preds = %pred.store.continue148
  store i32 %.pre, ptr %i.o, align 4
  %exitcond119.not.2 = icmp eq i32 %.067105, 3
  br i1 %exitcond119.not.2, label %pred.store.if147, label %pred.store.if145.1

pred.store.if145.1:                               ; preds = %vector.body.1
  store i32 %.pre, ptr %i.p, align 4
  %exitcond119.not.3 = icmp eq i32 %.067105, 4
  br i1 %exitcond119.not.3, label %pred.store.if147, label %pred.store.continue146.1

pred.store.continue146.1:                         ; preds = %pred.store.if145.1
  store i32 %.pre, ptr %i.q, align 4
  %exitcond119.not.4 = icmp eq i32 %.067105, 5
  br i1 %exitcond119.not.4, label %pred.store.if147, label %pred.store.if147.1

pred.store.if147.1:                               ; preds = %pred.store.continue146.1
  store i32 %.pre, ptr %i.r, align 4
  %exitcond119.not.5 = icmp eq i32 %.067105, 6
  br i1 %exitcond119.not.5, label %pred.store.if147, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit._crit_edge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit._crit_edge: ; preds = %pred.store.if147.1
  store i32 %.pre, ptr %i.s, align 4
  br label %pred.store.if147

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %bb.d
  %i.ag = load ptr, ptr %2, align 8               ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp11LWOImporter14FindVCChannelsERKNS_3LWO7SurfaceERSt6vectorIjSaIjEERKNS1_5LayerEPj:bb.a
  %.not68 = icmp eq ptr %i.dq, %i.dp
  br i1 %.not68, label %.loopexit70, label %bb.e, !llvm.loop !56

.loopexit70:                                      ; preds = %.loopexit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %pred.store.if147
  %.4 = phi i32 [ %7, %pred.store.if147 ], [ %.067105, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %.3, %.loopexit ] ; 3 uses
  %i.dr = add i32 %.0106, 1                       ; 2 uses
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = load ptr, ptr %i.b, align 8
end_hunk_3
begin_hunk_4_@llvm.umin.i64
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_4

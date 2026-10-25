Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/softfloat?download=true
inline.NumInlined: 660
inline.NumDeleted: 103
begin_hunk_0_@_ZNK2cv9softfloatleERKS0_:bb.a

bb.f:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %i.a, %i.b
  br i1 %i.l, label %_ZN2cvL6f32_leENS_9softfloatES0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = icmp ult i32 %i.a, %i.b
  %i.n = icmp slt i32 %i.a, 0
  %i.o = xor i1 %i.n, %i.m
  br label %_ZN2cvL6f32_leENS_9softfloatES0_.exit

_ZN2cvL6f32_leENS_9softfloatES0_.exit:            ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i1 [ %i.o, %bb.g ], [ %.not22.i, %bb.e ], [ true, %bb.d ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv10softdoubleC2Ej(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN2cvL11ui32_to_f64Ej.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 65536                   ; 2 uses
  %i.b = shl nuw i32 %1, 16
  %spec.select.i.i = select i1 %i.a, i32 %i.b, i32 %1 ; 3 uses
  %spec.select12.i.i = select i1 %i.a, i8 16, i8 0 ; 2 uses
  %i.c = icmp ult i32 %spec.select.i.i, 16777216  ; 2 uses
  %i.d = or disjoint i8 %spec.select12.i.i, 8
  %i.e = shl nuw i32 %spec.select.i.i, 8
  %.19.i.i = select i1 %i.c, i32 %i.e, i32 %spec.select.i.i
  %.1.i.i = select i1 %i.c, i8 %i.d, i8 %spec.select12.i.i
  %i.f = lshr i32 %.19.i.i, 24
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN2cvL28softfloat_countLeadingZeros8E, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8, !noalias !63
  %i.j = add nuw nsw i8 %.1.i.i, 21
  %i.k = add i8 %i.j, %i.i
  %i.l = sext i8 %i.k to i32                      ; 2 uses
  %i.m = sub nsw i32 1074, %i.l
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 52
  %i.p = zext i32 %1 to i64
  %i.q = zext nneg i32 %i.l to i64
  %i.r = shl i64 %i.p, %i.q
  %i.s = add i64 %i.o, %i.r
  br label %_ZN2cvL11ui32_to_f64Ej.exit

_ZN2cvL11ui32_to_f64Ej.exit:                      ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.s, %bb.b ], [ 0, %bb.a ]
  store i64 %.0.i, ptr %0, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv10softdoubleC2Em(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN2cvL11ui64_to_f64Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = lshr i64 %1, 1                           ; 2 uses
  %i.c = and i64 %1, 1
  %.masked.i = and i64 %i.b, 1023
  %.038.i.i = or i64 %.masked.i, %i.c
  %i.d = add nuw i64 %i.b, 512
  %i.e = lshr i64 %i.d, 10
  %.not48.i.i = icmp eq i64 %.038.i.i, 512
  %i.f = zext i1 %.not48.i.i to i64
  %i.g = xor i64 %i.f, -1
  %i.h = and i64 %i.e, %i.g
  %i.i = add nuw nsw i64 %i.h, 4886405595696988160
  br label %_ZN2cvL11ui64_to_f64Em.exit

bb.d:                                             ; preds = %bb.b
  call fastcc void @_ZN2cvL28softfloat_normRoundPackToF64Eblm(ptr dead_on_unwind noalias nonnull writable align 8 %2, i1 noundef zeroext false, i64 noundef 1084, i64 noundef %1), !alias.scope !66
  %.pre = load i64, ptr %2, align 8, !tbaa !13
  br label %_ZN2cvL11ui64_to_f64Em.exit

_ZN2cvL11ui64_to_f64Em.exit:                      ; preds = %bb.a, %bb.c, %bb.d
  %i.j = phi i64 [ %.pre, %bb.d ], [ %i.i, %bb.c ], [ 0, %bb.a ]
  store i64 %i.j, ptr %0, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv10softdoubleC2Ei(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN2cvL10i32_to_f64Ei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 4 uses
  %i.b = zext i32 %i.a to i64
  %i.c = icmp ult i32 %i.a, 65536                 ; 2 uses
  %i.d = shl nuw i32 %i.a, 16
  %spec.select.i.i = select i1 %i.c, i32 %i.d, i32 %i.a ; 3 uses
  %spec.select12.i.i = select i1 %i.c, i8 16, i8 0 ; 2 uses
  %i.e = icmp ult i32 %spec.select.i.i, 16777216  ; 2 uses
  %i.f = or disjoint i8 %spec.select12.i.i, 8
  %i.g = shl nuw i32 %spec.select.i.i, 8
  %.19.i.i = select i1 %i.e, i32 %i.g, i32 %spec.select.i.i
  %.1.i.i = select i1 %i.e, i8 %i.f, i8 %spec.select12.i.i
  %i.h = lshr i32 %.19.i.i, 24
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN2cvL28softfloat_countLeadingZeros8E, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8, !noalias !69
  %i.l = add nuw nsw i8 %.1.i.i, 21
  %i.m = add i8 %i.l, %i.k
  %.lobit.i = lshr i32 %1, 31
  %i.n = zext nneg i32 %.lobit.i to i64
  %i.o = shl nuw i64 %i.n, 63
  %i.p = sext i8 %i.m to i32                      ; 2 uses
  %i.q = sub nsw i32 1074, %i.p
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 52
  %i.t = zext nneg i32 %i.p to i64
  %i.u = shl i64 %i.b, %i.t
  %i.v = add i64 %i.u, %i.o
  %i.w = add i64 %i.v, %i.s
  br label %_ZN2cvL10i32_to_f64Ei.exit

_ZN2cvL10i32_to_f64Ei.exit:                       ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  store i64 %.0.i, ptr %0, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv10softdoubleC2El(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.cv::softdouble", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = icmp slt i64 %1, 0                       ; 2 uses
  %i.b = and i64 %1, 9223372036854775807
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = select i1 %i.a, i64 -4332462841530417152, i64 0
  br label %_ZN2cvL10i64_to_f64El.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @llvm.abs.i64(i64 %1, i1 false)
  call fastcc void @_ZN2cvL28softfloat_normRoundPackToF64Eblm(ptr dead_on_unwind noalias nonnull writable align 8 %2, i1 noundef zeroext %i.a, i64 noundef 1084, i64 noundef %i.d), !alias.scope !72
  %.pre = load i64, ptr %2, align 8, !tbaa !13
  br label %_ZN2cvL10i64_to_f64El.exit

_ZN2cvL10i64_to_f64El.exit:                       ; preds = %bb.b, %bb.c
  %i.e = phi i64 [ %i.c, %bb.b ], [ %.pre, %bb.c ]
  store i64 %i.e, ptr %0, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z7cvTruncRKN2cv9softfloatE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 23
  %i.d = and i64 %i.c, 255                        ; 4 uses
  %i.e = and i64 %i.b, 8388607                    ; 2 uses
  %i.f = sub nuw nsw i64 158, %i.d
  %i.g = icmp samesign ult i64 %i.d, 127
  br i1 %i.g, label %_ZN2cvL19f32_to_i32_r_minMagENS_9softfloatEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp sgt i32 %i.a, -1                 ; 2 uses
  %i.h = icmp samesign ugt i64 %i.d, 157
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.a, -822083584
  br i1 %i.i, label %_ZN2cvL19f32_to_i32_r_minMagENS_9softfloatEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.d, 255
  %i.k = icmp ne i64 %i.e, 0
  %or.cond.i = and i1 %i.k, %i.j
  %i.l = or i1 %.not.i, %or.cond.i
  %i.m = select i1 %i.l, i64 2147483647, i64 -2147483648
  br label %_ZN2cvL19f32_to_i32_r_minMagENS_9softfloatEb.exit

bb.e:                                             ; preds = %bb.b
  %i.n = shl nuw nsw i64 %i.e, 8
  %i.o = or disjoint i64 %i.n, 2147483648
  %i.p = lshr i64 %i.o, %i.f                      ; 2 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = select i1 %.not.i, i64 %i.p, i64 %i.q
  br label %_ZN2cvL19f32_to_i32_r_minMagENS_9softfloatEb.exit

_ZN2cvL19f32_to_i32_r_minMagENS_9softfloatEb.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.r, %bb.e ], [ 0, %bb.a ], [ %i.m, %bb.d ], [ 2147483648, %bb.c ]
  %i.s = trunc i64 %.0.i to i32
  ret i32 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z7cvRoundRKN2cv9softfloatE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %i.a, 0
  %i.d = lshr i64 %i.b, 23                        ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 5 uses
  %i.f = and i64 %i.b, 8388607                    ; 2 uses
  %i.g = icmp ne i64 %i.e, 255
  %i.h = icmp eq i64 %i.f, 0
  %or.cond.not.i = or i1 %i.h, %i.g
  %spec.select.i = and i1 %i.c, %or.cond.not.i    ; 3 uses
  %.not.i = icmp eq i64 %i.e, 0
  %i.i = shl nuw nsw i64 %i.f, 32                 ; 2 uses
  %i.j = or disjoint i64 %i.i, 36028797018963968  ; 3 uses
  %i.k = select i1 %.not.i, i64 %i.i, i64 %i.j    ; 2 uses
  %i.l = icmp samesign ult i64 %i.e, 170
  br i1 %i.l, label %bb.b, label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.m = icmp samesign ugt i64 %i.e, 107
  br i1 %i.m, label %bb.c, label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i.thread

bb.c:                                             ; preds = %bb.b
  %.neg.i = add nuw nsw i64 %i.d, 22
  %i.n = sub nuw nsw i64 170, %i.e
  %i.o = lshr i64 %i.j, %i.n
  %i.p = and i64 %.neg.i, 63
  %i.q = shl i64 %i.j, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i64
  %i.t = or i64 %i.o, %i.s
  br label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i.thread: ; preds = %bb.b
  %i.u = icmp ne i64 %i.k, 0
  %i.v = zext i1 %i.u to i64
  br label %bb.d

_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i:     ; preds = %bb.c, %bb.a
  %.0.i = phi i64 [ %i.k, %bb.a ], [ %i.t, %bb.c ] ; 2 uses
  %.not.i.i = icmp samesign ult i64 %.0.i, 17592186042368
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i.thread, %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i
  %.0.i3 = phi i64 [ %i.v, %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i.thread ], [ %.0.i, %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i ] ; 2 uses
  %i.w = add nuw nsw i64 %.0.i3, 2048
  %i.x = and i64 %.0.i3, 4095
  %i.y = lshr i64 %i.w, 12
  %.not31.i.i = icmp eq i64 %i.x, 2048
  %i.z = zext i1 %.not31.i.i to i64
  %i.aa = xor i64 %i.z, -1
  %i.ab = and i64 %i.y, %i.aa                     ; 2 uses
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = select i1 %spec.select.i, i64 %i.ac, i64 %i.ab
  %i.ae = shl i64 %i.ad, 32                       ; 2 uses
  %i.af = ashr exact i64 %i.ae, 32                ; 2 uses
  %.not32.i.i = icmp eq i64 %i.ae, 0
  %i.ag = icmp sgt i64 %i.af, -1
  %.not3334.i.i = xor i1 %spec.select.i, %i.ag
  %or.cond.i.i = select i1 %.not32.i.i, i1 true, i1 %.not3334.i.i
  br i1 %or.cond.i.i, label %_ZN2cvL10f32_to_i32ENS_9softfloatEhb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i
  %i.ah = select i1 %spec.select.i, i64 -2147483648, i64 2147483647
  br label %_ZN2cvL10f32_to_i32ENS_9softfloatEhb.exit

_ZN2cvL10f32_to_i32ENS_9softfloatEhb.exit:        ; preds = %bb.d, %bb.e
  %.028.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.af, %bb.d ]
  %i.ai = trunc nsw i64 %.028.i.i to i32
  ret i32 %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z7cvFloorRKN2cv9softfloatE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %i.a, 0
  %i.d = lshr i64 %i.b, 23                        ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 5 uses
  %i.f = and i64 %i.b, 8388607                    ; 2 uses
  %i.g = icmp ne i64 %i.e, 255
  %i.h = icmp eq i64 %i.f, 0
  %or.cond.not.i = or i1 %i.h, %i.g
  %spec.select.i = and i1 %i.c, %or.cond.not.i    ; 4 uses
  %.not.i = icmp eq i64 %i.e, 0
  %i.i = shl nuw nsw i64 %i.f, 32                 ; 2 uses
  %i.j = or disjoint i64 %i.i, 36028797018963968  ; 3 uses
  %i.k = select i1 %.not.i, i64 %i.i, i64 %i.j    ; 2 uses
  %i.l = icmp samesign ult i64 %i.e, 170
  br i1 %i.l, label %bb.b, label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.m = icmp samesign ugt i64 %i.e, 107
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.neg.i = add nuw nsw i64 %i.d, 22
  %i.n = sub nuw nsw i64 170, %i.e
  %i.o = lshr i64 %i.j, %i.n
  %i.p = and i64 %.neg.i, 63
  %i.q = shl i64 %i.j, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i64
  %i.t = or i64 %i.o, %i.s
  br label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.u = icmp ne i64 %i.k, 0
  %i.v = zext i1 %i.u to i64
  br label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i:     ; preds = %bb.d, %bb.c, %bb.a
  %.0.i = phi i64 [ %i.k, %bb.a ], [ %i.t, %bb.c ], [ %i.v, %bb.d ]
  %i.w = select i1 %spec.select.i, i64 4095, i64 0
  %i.x = add nuw nsw i64 %.0.i, %i.w              ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.x, 17592186044416
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i
  %i.y = lshr i64 %i.x, 12                        ; 2 uses
  %i.z = sub nsw i64 0, %i.y
  %i.aa = select i1 %spec.select.i, i64 %i.z, i64 %i.y
  %i.ab = shl i64 %i.aa, 32                       ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 32                ; 2 uses
  %.not32.i.i = icmp eq i64 %i.ab, 0
  %i.ad = icmp sgt i64 %i.ac, -1
  %.not3334.i.i = xor i1 %spec.select.i, %i.ad
  %or.cond.i.i = select i1 %.not32.i.i, i1 true, i1 %.not3334.i.i
  br i1 %or.cond.i.i, label %_ZN2cvL10f32_to_i32ENS_9softfloatEhb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i
  %i.ae = select i1 %spec.select.i, i64 -2147483648, i64 2147483647
  br label %_ZN2cvL10f32_to_i32ENS_9softfloatEhb.exit

_ZN2cvL10f32_to_i32ENS_9softfloatEhb.exit:        ; preds = %bb.e, %bb.f
  %.028.i.i = phi i64 [ %i.ae, %bb.f ], [ %i.ac, %bb.e ]
  %i.af = trunc nsw i64 %.028.i.i to i32
  ret i32 %i.af
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z6cvCeilRKN2cv9softfloatE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %i.a, 0
  %i.d = lshr i64 %i.b, 23                        ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 5 uses
  %i.f = and i64 %i.b, 8388607                    ; 2 uses
  %i.g = icmp ne i64 %i.e, 255
  %i.h = icmp eq i64 %i.f, 0
  %or.cond.not.i = or i1 %i.h, %i.g
  %spec.select.i = and i1 %i.c, %or.cond.not.i    ; 4 uses
  %.not.i = icmp eq i64 %i.e, 0
  %i.i = shl nuw nsw i64 %i.f, 32                 ; 2 uses
  %i.j = or disjoint i64 %i.i, 36028797018963968  ; 3 uses
  %i.k = select i1 %.not.i, i64 %i.i, i64 %i.j    ; 2 uses
  %i.l = icmp samesign ult i64 %i.e, 170
  br i1 %i.l, label %bb.b, label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.m = icmp samesign ugt i64 %i.e, 107
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.neg.i = add nuw nsw i64 %i.d, 22
  %i.n = sub nuw nsw i64 170, %i.e
  %i.o = lshr i64 %i.j, %i.n
  %i.p = and i64 %.neg.i, 63
  %i.q = shl i64 %i.j, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i64
  %i.t = or i64 %i.o, %i.s
  br label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.u = icmp ne i64 %i.k, 0
  %i.v = zext i1 %i.u to i64
  br label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i:     ; preds = %bb.d, %bb.c, %bb.a
  %.0.i = phi i64 [ %i.k, %bb.a ], [ %i.t, %bb.c ], [ %i.v, %bb.d ]
  %i.w = select i1 %spec.select.i, i64 0, i64 4095
  %i.x = add nuw nsw i64 %.0.i, %i.w              ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.x, 17592186044416
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i
  %i.y = lshr i64 %i.x, 12                        ; 2 uses
  %i.z = sub nsw i64 0, %i.y
  %i.aa = select i1 %spec.select.i, i64 %i.z, i64 %i.y
  %i.ab = shl i64 %i.aa, 32                       ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 32                ; 2 uses
  %.not32.i.i = icmp eq i64 %i.ab, 0
  %i.ad = icmp sgt i64 %i.ac, -1
  %.not3334.i.i = xor i1 %spec.select.i, %i.ad
  %or.cond.i.i = select i1 %.not32.i.i, i1 true, i1 %.not3334.i.i
  br i1 %or.cond.i.i, label %_ZN2cvL10f32_to_i32ENS_9softfloatEhb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i
  %i.ae = select i1 %spec.select.i, i64 -2147483648, i64 2147483647
  br label %_ZN2cvL10f32_to_i32ENS_9softfloatEhb.exit

_ZN2cvL10f32_to_i32ENS_9softfloatEhb.exit:        ; preds = %bb.e, %bb.f
  %.028.i.i = phi i64 [ %i.ae, %bb.f ], [ %i.ac, %bb.e ]
  %i.af = trunc nsw i64 %.028.i.i to i32
  ret i32 %i.af
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z7cvTruncRKN2cv10softdoubleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = lshr i64 %i.a, 52
  %i.c = and i64 %i.b, 2047                       ; 5 uses
  %i.d = and i64 %i.a, 4503599627370495           ; 3 uses
  %i.e = sub nuw nsw i64 1075, %i.c
  %i.f = icmp samesign ult i64 %i.c, 1023
  br i1 %i.f, label %_ZN2cvL19f64_to_i32_r_minMagENS_10softdoubleEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.a, 0                     ; 3 uses
  %i.h = icmp samesign ugt i64 %i.c, 1053
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.c, 1054
  %or.cond.i = and i1 %i.g, %i.i
  %i.j = icmp samesign ult i64 %i.d, 2097152
  %or.cond3.i = select i1 %or.cond.i, i1 %i.j, i1 false
  br i1 %or.cond3.i, label %_ZN2cvL19f64_to_i32_r_minMagENS_10softdoubleEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ne i64 %i.c, 2047
  %i.l = icmp eq i64 %i.d, 0
  %or.cond7.not39.i = or i1 %i.l, %i.k
  %.not.i = and i1 %i.g, %or.cond7.not39.i
  %i.m = select i1 %.not.i, i64 -2147483648, i64 2147483647
  br label %_ZN2cvL19f64_to_i32_r_minMagENS_10softdoubleEb.exit

bb.e:                                             ; preds = %bb.b
  %i.n = or disjoint i64 %i.d, 4503599627370496
  %i.o = lshr i64 %i.n, %i.e                      ; 2 uses
  %i.p = sub nsw i64 0, %i.o
  %i.q = select i1 %i.g, i64 %i.p, i64 %i.o
  br label %_ZN2cvL19f64_to_i32_r_minMagENS_10softdoubleEb.exit

_ZN2cvL19f64_to_i32_r_minMagENS_10softdoubleEb.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.a ], [ %i.m, %bb.d ], [ 2147483648, %bb.c ]
  %i.r = trunc i64 %.0.i to i32
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z7cvRoundRKN2cv10softdoubleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = lshr i64 %i.a, 52                        ; 2 uses
  %i.d = and i64 %i.c, 2047                       ; 5 uses
  %i.e = and i64 %i.a, 4503599627370495           ; 3 uses
  %i.f = icmp ne i64 %i.d, 2047
  %i.g = icmp eq i64 %i.e, 0
  %or.cond.not.i = or i1 %i.g, %i.f
  %spec.select.i = and i1 %i.b, %or.cond.not.i    ; 3 uses
  %.not.i = icmp eq i64 %i.d, 0
  %i.h = or disjoint i64 %i.e, 4503599627370496   ; 3 uses
  %.0.i = select i1 %.not.i, i64 %i.e, i64 %i.h   ; 2 uses
  %i.i = icmp samesign ult i64 %i.d, 1063
  br i1 %i.i, label %bb.b, label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ugt i64 %i.d, 1000
  br i1 %i.j, label %bb.c, label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i.thread

bb.c:                                             ; preds = %bb.b
  %.neg.i = add nuw nsw i64 %i.c, 25
  %i.k = sub nuw nsw i64 1063, %i.d
  %i.l = lshr i64 %i.h, %i.k
  %i.m = and i64 %.neg.i, 63
  %i.n = shl i64 %i.h, %i.m
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i64
  %i.q = or i64 %i.l, %i.p
  br label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i.thread: ; preds = %bb.b
  %i.r = icmp ne i64 %.0.i, 0
  %i.s = zext i1 %i.r to i64
  br label %bb.d

_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i:     ; preds = %bb.c, %bb.a
  %.1.i = phi i64 [ %.0.i, %bb.a ], [ %i.q, %bb.c ] ; 2 uses
  %.not.i.i = icmp samesign ult i64 %.1.i, 17592186042368
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i.thread, %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i
  %.1.i3 = phi i64 [ %i.s, %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i.thread ], [ %.1.i, %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i ] ; 2 uses
  %i.t = add nuw nsw i64 %.1.i3, 2048
  %i.u = and i64 %.1.i3, 4095
  %i.v = lshr i64 %i.t, 12
  %.not31.i.i = icmp eq i64 %i.u, 2048
  %i.w = zext i1 %.not31.i.i to i64
  %i.x = xor i64 %i.w, -1
  %i.y = and i64 %i.v, %i.x                       ; 2 uses
  %i.z = sub nsw i64 0, %i.y
  %i.aa = select i1 %spec.select.i, i64 %i.z, i64 %i.y
  %i.ab = shl i64 %i.aa, 32                       ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 32                ; 2 uses
  %.not32.i.i = icmp eq i64 %i.ab, 0
  %i.ad = icmp sgt i64 %i.ac, -1
  %.not3334.i.i = xor i1 %spec.select.i, %i.ad
  %or.cond.i.i = select i1 %.not32.i.i, i1 true, i1 %.not3334.i.i
  br i1 %or.cond.i.i, label %_ZN2cvL10f64_to_i32ENS_10softdoubleEhb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i
  %i.ae = select i1 %spec.select.i, i64 -2147483648, i64 2147483647
  br label %_ZN2cvL10f64_to_i32ENS_10softdoubleEhb.exit

_ZN2cvL10f64_to_i32ENS_10softdoubleEhb.exit:      ; preds = %bb.d, %bb.e
  %.028.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.ac, %bb.d ]
  %i.af = trunc nsw i64 %.028.i.i to i32
  ret i32 %i.af
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z7cvFloorRKN2cv10softdoubleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = lshr i64 %i.a, 52                        ; 2 uses
  %i.d = and i64 %i.c, 2047                       ; 5 uses
  %i.e = and i64 %i.a, 4503599627370495           ; 3 uses
  %i.f = icmp ne i64 %i.d, 2047
  %i.g = icmp eq i64 %i.e, 0
  %or.cond.not.i = or i1 %i.g, %i.f
  %spec.select.i = and i1 %i.b, %or.cond.not.i    ; 4 uses
  %.not.i = icmp eq i64 %i.d, 0
  %i.h = or disjoint i64 %i.e, 4503599627370496   ; 3 uses
  %.0.i = select i1 %.not.i, i64 %i.e, i64 %i.h   ; 2 uses
  %i.i = icmp samesign ult i64 %i.d, 1063
  br i1 %i.i, label %bb.b, label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ugt i64 %i.d, 1000
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.neg.i = add nuw nsw i64 %i.c, 25
  %i.k = sub nuw nsw i64 1063, %i.d
  %i.l = lshr i64 %i.h, %i.k
  %i.m = and i64 %.neg.i, 63
  %i.n = shl i64 %i.h, %i.m
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i64
  %i.q = or i64 %i.l, %i.p
  br label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp ne i64 %.0.i, 0
  %i.s = zext i1 %i.r to i64
  br label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i:     ; preds = %bb.d, %bb.c, %bb.a
  %.1.i = phi i64 [ %.0.i, %bb.a ], [ %i.q, %bb.c ], [ %i.s, %bb.d ]
  %i.t = select i1 %spec.select.i, i64 4095, i64 0
  %i.u = add nuw nsw i64 %.1.i, %i.t              ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.u, 17592186044416
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i
  %i.v = lshr i64 %i.u, 12                        ; 2 uses
  %i.w = sub nsw i64 0, %i.v
  %i.x = select i1 %spec.select.i, i64 %i.w, i64 %i.v
  %i.y = shl i64 %i.x, 32                         ; 2 uses
  %i.z = ashr exact i64 %i.y, 32                  ; 2 uses
  %.not32.i.i = icmp eq i64 %i.y, 0
  %i.aa = icmp sgt i64 %i.z, -1
  %.not3334.i.i = xor i1 %spec.select.i, %i.aa
  %or.cond.i.i = select i1 %.not32.i.i, i1 true, i1 %.not3334.i.i
  br i1 %or.cond.i.i, label %_ZN2cvL10f64_to_i32ENS_10softdoubleEhb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i
  %i.ab = select i1 %spec.select.i, i64 -2147483648, i64 2147483647
  br label %_ZN2cvL10f64_to_i32ENS_10softdoubleEhb.exit

_ZN2cvL10f64_to_i32ENS_10softdoubleEhb.exit:      ; preds = %bb.e, %bb.f
  %.028.i.i = phi i64 [ %i.ab, %bb.f ], [ %i.z, %bb.e ]
  %i.ac = trunc nsw i64 %.028.i.i to i32
  ret i32 %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z6cvCeilRKN2cv10softdoubleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = lshr i64 %i.a, 52                        ; 2 uses
  %i.d = and i64 %i.c, 2047                       ; 5 uses
  %i.e = and i64 %i.a, 4503599627370495           ; 3 uses
  %i.f = icmp ne i64 %i.d, 2047
  %i.g = icmp eq i64 %i.e, 0
  %or.cond.not.i = or i1 %i.g, %i.f
  %spec.select.i = and i1 %i.b, %or.cond.not.i    ; 4 uses
  %.not.i = icmp eq i64 %i.d, 0
  %i.h = or disjoint i64 %i.e, 4503599627370496   ; 3 uses
  %.0.i = select i1 %.not.i, i64 %i.e, i64 %i.h   ; 2 uses
  %i.i = icmp samesign ult i64 %i.d, 1063
  br i1 %i.i, label %bb.b, label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ugt i64 %i.d, 1000
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.neg.i = add nuw nsw i64 %i.c, 25
  %i.k = sub nuw nsw i64 1063, %i.d
  %i.l = lshr i64 %i.h, %i.k
  %i.m = and i64 %.neg.i, 63
  %i.n = shl i64 %i.h, %i.m
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i64
  %i.q = or i64 %i.l, %i.p
  br label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp ne i64 %.0.i, 0
  %i.s = zext i1 %i.r to i64
  br label %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i

_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i:     ; preds = %bb.d, %bb.c, %bb.a
  %.1.i = phi i64 [ %.0.i, %bb.a ], [ %i.q, %bb.c ], [ %i.s, %bb.d ]
  %i.t = select i1 %spec.select.i, i64 0, i64 4095
  %i.u = add nuw nsw i64 %.1.i, %i.t              ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.u, 17592186044416
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i
  %i.v = lshr i64 %i.u, 12                        ; 2 uses
  %i.w = sub nsw i64 0, %i.v
  %i.x = select i1 %spec.select.i, i64 %i.w, i64 %i.v
  %i.y = shl i64 %i.x, 32                         ; 2 uses
  %i.z = ashr exact i64 %i.y, 32                  ; 2 uses
  %.not32.i.i = icmp eq i64 %i.y, 0
  %i.aa = icmp sgt i64 %i.z, -1
  %.not3334.i.i = xor i1 %spec.select.i, %i.aa
  %or.cond.i.i = select i1 %.not32.i.i, i1 true, i1 %.not3334.i.i
  br i1 %or.cond.i.i, label %_ZN2cvL10f64_to_i32ENS_10softdoubleEhb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2cvL25softfloat_shiftRightJam64Emm.exit.i
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/softfloat?download=true
inline.NumInlined: 660
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@_ZGVZN2cvL7f64_logENS_10softdoubleEE2A3 = internal global i64 0, align 8
@_ZZN2cvL7f64_logENS_10softdoubleEE2A2 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_logENS_10softdoubleEE2A2 = internal global i64 0, align 8
@_ZZN2cvL7f64_logENS_10softdoubleEE2A1 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_logENS_10softdoubleEE2A1 = internal global i64 0, align 8
@_ZZN2cvL7f64_logENS_10softdoubleEE2A0 = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_logENS_10softdoubleEE2A0 = internal global i64 0, align 8
@_ZZN2cvL7f32_powENS_9softfloatES0_E4zero = internal global %"struct.cv::softfloat" zeroinitializer, align 4
@_ZGVZN2cvL7f32_powENS_9softfloatES0_E4zero = internal global i64 0, align 8
@_ZZN2cvL7f32_powENS_9softfloatES0_E3one = internal global %"struct.cv::softfloat" zeroinitializer, align 4
@_ZGVZN2cvL7f32_powENS_9softfloatES0_E3one = internal global i64 0, align 8
@_ZZN2cvL7f32_powENS_9softfloatES0_E3inf = internal global %"struct.cv::softfloat" zeroinitializer, align 4
@_ZGVZN2cvL7f32_powENS_9softfloatES0_E3inf = internal global i64 0, align 8
@_ZZN2cvL7f32_powENS_9softfloatES0_E3nan = internal global %"struct.cv::softfloat" zeroinitializer, align 4
@_ZGVZN2cvL7f32_powENS_9softfloatES0_E3nan = internal global i64 0, align 8
@_ZZN2cvL7f64_powENS_10softdoubleES0_E4zero = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_powENS_10softdoubleES0_E4zero = internal global i64 0, align 8
@_ZZN2cvL7f64_powENS_10softdoubleES0_E3one = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_powENS_10softdoubleES0_E3one = internal global i64 0, align 8
@_ZZN2cvL7f64_powENS_10softdoubleES0_E3inf = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_powENS_10softdoubleES0_E3inf = internal global i64 0, align 8
@_ZZN2cvL7f64_powENS_10softdoubleES0_E3nan = internal global %"struct.cv::softdouble" zeroinitializer, align 8
@_ZGVZN2cvL7f64_powENS_10softdoubleES0_E3nan = internal global i64 0, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN2cv9softfloatC1Ej = unnamed_addr alias void (ptr, i32), ptr @_ZN2cv9softfloatC2Ej
@_ZN2cv9softfloatC1Em = unnamed_addr alias void (ptr, i64), ptr @_ZN2cv9softfloatC2Em
@_ZN2cv9softfloatC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN2cv9softfloatC2Ei
@_ZN2cv9softfloatC1El = unnamed_addr alias void (ptr, i64), ptr @_ZN2cv9softfloatC2El
@_ZN2cv10softdoubleC1Ej = unnamed_addr alias void (ptr, i32), ptr @_ZN2cv10softdoubleC2Ej
@_ZN2cv10softdoubleC1Em = unnamed_addr alias void (ptr, i64), ptr @_ZN2cv10softdoubleC2Em
@_ZN2cv10softdoubleC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN2cv10softdoubleC2Ei
@_ZN2cv10softdoubleC1El = unnamed_addr alias void (ptr, i64), ptr @_ZN2cv10softdoubleC2El

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv9softfloatC2Ej(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN2cvL11ui32_to_f32Ej.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = lshr i32 %1, 1                           ; 2 uses
  %i.c = and i32 %1, 1
  %narrow.i = add nuw i32 %i.b, 64
  %i.d = lshr i32 %narrow.i, 7
  %.masked.i = and i32 %i.b, 127
  %.038.i5.i = or i32 %.masked.i, %i.c
  %.not48.i.i = icmp eq i32 %.038.i5.i, 64
  %i.e = zext i1 %.not48.i.i to i32
  %i.f = xor i32 %i.e, -1
  %i.g = and i32 %i.d, %i.f
  %i.h = add nuw nsw i32 %i.g, 1317011456
  br label %_ZN2cvL11ui32_to_f32Ej.exit

bb.d:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %1 to i64                  ; 2 uses
  %i.j = icmp samesign ult i32 %1, 65536          ; 2 uses
  %i.k = shl nuw i32 %1, 16
  %spec.select.i.i = select i1 %i.j, i32 %i.k, i32 %1 ; 3 uses
  %spec.select12.i.i = select i1 %i.j, i8 16, i8 0 ; 2 uses
  %i.l = icmp ult i32 %spec.select.i.i, 16777216  ; 2 uses
  %i.m = or disjoint i8 %spec.select12.i.i, 8
  %i.n = shl nuw i32 %spec.select.i.i, 8
  %.19.i.i = select i1 %i.l, i32 %i.n, i32 %spec.select.i.i
  %.1.i.i = select i1 %i.l, i8 %i.m, i8 %spec.select12.i.i
  %i.o = lshr i32 %.19.i.i, 24
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN2cvL28softfloat_countLeadingZeros8E, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8, !alias.scope !24, !noalias !25
  %i.s = add nsw i8 %.1.i.i, -1
  %i.t = add i8 %i.s, %i.r                        ; 4 uses
  %i.u = sext i8 %i.t to i64
  %i.v = sub nsw i64 156, %i.u                    ; 4 uses
  %i.w = sext i8 %i.t to i32                      ; 2 uses
  %i.x = icmp sgt i8 %i.t, 6
  %i.y = icmp samesign ult i64 %i.v, 253
  %or.cond.i = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = shl nuw nsw i64 %i.v, 23
  %i.aa = add nsw i32 %i.w, -7
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl i64 %i.i, %i.ab
  %i.ad = add i64 %i.ac, %i.z
  br label %_ZN2cvL28softfloat_normRoundPackToF32Eblm.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = zext nneg i32 %i.w to i64
  %i.af = shl i64 %i.i, %i.ae                     ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.v, 252
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp ne i8 %i.t, -97
  %i.ai = add i64 %i.af, -2147483584
  %i.aj = icmp ult i64 %i.ai, -2147483648
  %or.cond.i.i = or i1 %i.ah, %i.aj
  br i1 %or.cond.i.i, label %_ZN2cvL28softfloat_normRoundPackToF32Eblm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = add i64 %i.af, 64
  %i.al = lshr i64 %i.ak, 7
  %.038.i.i4 = and i64 %i.af, 127
  %.not48.i.i2 = icmp eq i64 %.038.i.i4, 64
  %i.am = zext i1 %.not48.i.i2 to i64
  %i.an = xor i64 %i.am, -1
  %i.ao = and i64 %i.al, %i.an                    ; 2 uses
  %.not49.i.i = icmp eq i64 %i.ao, 0
  %i.ap = shl nuw nsw i64 %i.v, 23
  %i.aq = select i1 %.not49.i.i, i64 0, i64 %i.ap
  %i.ar = add nuw nsw i64 %i.aq, %i.ao
  br label %_ZN2cvL28softfloat_normRoundPackToF32Eblm.exit

_ZN2cvL28softfloat_normRoundPackToF32Eblm.exit:   ; preds = %bb.g, %bb.e, %bb.h
  %storemerge.in.i = phi i64 [ %i.ad, %bb.e ], [ %i.ar, %bb.h ], [ 2139095040, %bb.g ]
  %storemerge.i = trunc i64 %storemerge.in.i to i32
  br label %_ZN2cvL11ui32_to_f32Ej.exit

_ZN2cvL11ui32_to_f32Ej.exit:                      ; preds = %bb.a, %bb.c, %_ZN2cvL28softfloat_normRoundPackToF32Eblm.exit
  %.sroa.0.0 = phi i32 [ %storemerge.i, %_ZN2cvL28softfloat_normRoundPackToF32Eblm.exit ], [ %i.h, %bb.c ], [ 0, %bb.a ]
  store i32 %.sroa.0.0, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv9softfloatC2Em(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i64 %1, 32                          ; 2 uses
  %.not.i.i = icmp eq i64 %i.a, 0                 ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, i8 32, i8 0 ; 2 uses
  %spec.select16.i.i = select i1 %.not.i.i, i64 %1, i64 %i.a ; 2 uses
  %.0.i.i = trunc nuw i64 %spec.select16.i.i to i32 ; 2 uses
  %i.b = icmp samesign ult i64 %spec.select16.i.i, 65536 ; 2 uses
  %i.c = or disjoint i8 %spec.select.i.i, 16
  %i.d = shl nuw i32 %.0.i.i, 16
  %.113.i.i = select i1 %i.b, i8 %i.c, i8 %spec.select.i.i ; 2 uses
  %.1.i.i = select i1 %i.b, i32 %i.d, i32 %.0.i.i ; 3 uses
  %i.e = icmp ult i32 %.1.i.i, 16777216           ; 2 uses
  %i.f = or disjoint i8 %.113.i.i, 8
  %i.g = shl nuw i32 %.1.i.i, 8
  %.214.i.i = select i1 %i.e, i8 %i.f, i8 %.113.i.i
  %.2.i.i = select i1 %i.e, i32 %i.g, i32 %.1.i.i
  %i.h = lshr i32 %.2.i.i, 24
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN2cvL28softfloat_countLeadingZeros8E, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8, !noalias !28
  %i.l = add i8 %i.k, %.214.i.i                   ; 4 uses
  %i.m = add i8 %i.l, -40                         ; 3 uses
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = zext nneg i8 %i.m to i32
  %.not.i = icmp eq i64 %1, 0
  %i.p = zext nneg i8 %i.m to i64
  %i.q = shl i64 %1, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = shl nuw nsw i32 %i.o, 23
  %reass.sub = sub i32 %i.r, %i.s
  %i.t = add i32 %reass.sub, 1249902592
  %i.u = select i1 %.not.i, i32 0, i32 %i.t
  br label %_ZN2cvL11ui64_to_f32Em.exit

bb.c:                                             ; preds = %bb.a
  %i.v = add nsw i8 %i.l, -33                     ; 2 uses
  %i.w = sext i8 %i.v to i32                      ; 2 uses
  %i.x = icmp slt i8 %i.l, 33
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i8 33, %i.l
  %i.z = zext nneg i8 %i.y to i64                 ; 2 uses
  %i.aa = lshr i64 %1, %i.z
  %notmask.i.i = shl nsw i64 -1, %i.z
  %i.ab = xor i64 %notmask.i.i, -1
  %i.ac = and i64 %1, %i.ab
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i64
  %i.af = or i64 %i.aa, %i.ae
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ag = zext nneg i32 %i.w to i64
  %i.ah = shl i64 %1, %i.ag
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = phi i64 [ %i.af, %bb.d ], [ %i.ah, %bb.e ] ; 3 uses
  %i.aj = sub nsw i32 156, %i.w                   ; 2 uses
  %i.ak = icmp samesign ugt i32 %i.aj, 252
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = icmp ne i8 %i.v, -97
  %i.am = add i64 %i.ai, -2147483584
  %i.an = icmp ult i64 %i.am, -2147483648
  %or.cond.i.i = or i1 %i.al, %i.an
  br i1 %or.cond.i.i, label %_ZN2cvL11ui64_to_f32Em.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.041.i.i = phi i32 [ %i.aj, %bb.f ], [ 253, %bb.g ]
  %i.ao = add i64 %i.ai, 64
  %i.ap = lshr i64 %i.ao, 7
  %.038.i18.i = and i64 %i.ai, 127
  %.not48.i.i = icmp eq i64 %.038.i18.i, 64
  %i.aq = zext i1 %.not48.i.i to i64
  %i.ar = xor i64 %i.aq, -1
  %i.as = and i64 %i.ap, %i.ar                    ; 2 uses
  %.not49.i.i = icmp eq i64 %i.as, 0
  %2 = shl nuw nsw i32 %.041.i.i, 23
  %3 = select i1 %.not49.i.i, i32 0, i32 %2
  %4 = trunc i64 %i.as to i32
  %5 = add i32 %3, %4
  br label %_ZN2cvL11ui64_to_f32Em.exit

_ZN2cvL11ui64_to_f32Em.exit:                      ; preds = %bb.b, %bb.g, %bb.h
  %storemerge.i = phi i32 [ %i.u, %bb.b ], [ %5, %bb.h ], [ 2139095040, %bb.g ]
  store i32 %storemerge.i, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv9softfloatC2Ei(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.cv::softfloat", align 4    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = icmp slt i32 %1, 0                       ; 2 uses
  %i.b = and i32 %1, 2147483647
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = select i1 %i.a, i32 -822083584, i32 0
  br label %_ZN2cvL10i32_to_f32Ei.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %i.e = zext i32 %i.d to i64
  call fastcc void @_ZN2cvL28softfloat_normRoundPackToF32Eblm(ptr dead_on_unwind noalias nonnull writable align 4 %2, i1 noundef zeroext %i.a, i64 noundef 156, i64 noundef %i.e), !alias.scope !31
  %.pre = load i32, ptr %2, align 4, !tbaa !10
  br label %_ZN2cvL10i32_to_f32Ei.exit

_ZN2cvL10i32_to_f32Ei.exit:                       ; preds = %bb.b, %bb.c
  %i.f = phi i32 [ %i.c, %bb.b ], [ %.pre, %bb.c ]
  store i32 %i.f, ptr %0, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv9softfloatC2El(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i64 %1, 0                       ; 2 uses
  %i.b = tail call i64 @llvm.abs.i64(i64 %1, i1 false) ; 6 uses
  %i.c = lshr i64 %i.b, 32                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0                 ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, i8 32, i8 0 ; 2 uses
  %spec.select16.i.i = select i1 %.not.i.i, i64 %i.b, i64 %i.c ; 2 uses
  %.0.i.i = trunc nuw i64 %spec.select16.i.i to i32 ; 2 uses
  %i.d = icmp samesign ult i64 %spec.select16.i.i, 65536 ; 2 uses
  %i.e = or disjoint i8 %spec.select.i.i, 16
  %i.f = shl nuw i32 %.0.i.i, 16
  %.113.i.i = select i1 %i.d, i8 %i.e, i8 %spec.select.i.i ; 2 uses
  %.1.i.i = select i1 %i.d, i32 %i.f, i32 %.0.i.i ; 3 uses
  %i.g = icmp ult i32 %.1.i.i, 16777216           ; 2 uses
  %i.h = or disjoint i8 %.113.i.i, 8
  %i.i = shl nuw i32 %.1.i.i, 8
  %.214.i.i = select i1 %i.g, i8 %i.h, i8 %.113.i.i
  %.2.i.i = select i1 %i.g, i32 %i.i, i32 %.1.i.i
  %i.j = lshr i32 %.2.i.i, 24
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZN2cvL28softfloat_countLeadingZeros8E, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8, !noalias !34
  %i.n = add i8 %i.m, %.214.i.i                   ; 4 uses
  %i.o = add i8 %i.n, -40                         ; 2 uses
  %i.p = sext i8 %i.o to i32                      ; 2 uses
  %i.q = icmp sgt i8 %i.o, -1
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN2cvL10i64_to_f32El.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %sh.diff.i = lshr i64 %1, 32
  %tr.sh.diff.i = trunc nuw i64 %sh.diff.i to i32
  %i.r = and i32 %tr.sh.diff.i, -2147483648
  %i.s = zext nneg i32 %i.p to i64
  %i.t = shl i64 %i.b, %i.s
  %i.u = trunc i64 %i.t to i32
  %reass.sub.i = or disjoint i32 %i.r, 1249902592
  %i.v = shl nuw nsw i32 %i.p, 23
  %i.w = sub nuw nsw i32 %reass.sub.i, %i.v
  %i.x = add i32 %i.w, %i.u
  br label %_ZN2cvL10i64_to_f32El.exit

bb.d:                                             ; preds = %bb.a
  %i.y = add nsw i8 %i.n, -33                     ; 2 uses
  %i.z = sext i8 %i.y to i32                      ; 2 uses
  %i.aa = icmp slt i8 %i.n, 33
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = sub nsw i8 33, %i.n
  %i.ac = zext nneg i8 %i.ab to i64               ; 2 uses
  %i.ad = lshr i64 %i.b, %i.ac
  %notmask.i.i = shl nsw i64 -1, %i.ac
  %i.ae = xor i64 %notmask.i.i, -1
  %i.af = and i64 %i.b, %i.ae
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = zext i1 %i.ag to i64
  %i.ai = or i64 %i.ad, %i.ah
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aj = zext nneg i32 %i.z to i64
  %i.ak = shl i64 %i.b, %i.aj
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = phi i64 [ %i.ai, %bb.e ], [ %i.ak, %bb.f ] ; 3 uses
  %i.am = sub nsw i32 156, %i.z                   ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = icmp samesign ugt i32 %i.am, 252
  br i1 %i.ao, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp ne i8 %i.y, -97
  %i.aq = add i64 %i.al, -2147483584
  %i.ar = icmp ult i64 %i.aq, -2147483648
  %or.cond.i.i = or i1 %i.ap, %i.ar
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = select i1 %i.a, i64 4286578688, i64 2139095040
  br label %_ZN2cvL24softfloat_roundPackToF32Eblm.exit.i

bb.j:                                             ; preds = %bb.h, %bb.g
  %.041.i.i = phi i64 [ %i.an, %bb.g ], [ 253, %bb.h ]
  %i.at = add i64 %i.al, 64
  %i.au = lshr i64 %i.at, 7
  %.038.i23.i = and i64 %i.al, 127
  %.not48.i.i = icmp eq i64 %.038.i23.i, 64
  %i.av = zext i1 %.not48.i.i to i64
  %i.aw = xor i64 %i.av, -1
  %i.ax = and i64 %i.au, %i.aw                    ; 2 uses
  %.not49.i.i = icmp eq i64 %i.ax, 0
  %i.ay = select i1 %i.a, i64 2147483648, i64 0
  %i.az = shl nuw nsw i64 %.041.i.i, 23
  %i.ba = select i1 %.not49.i.i, i64 0, i64 %i.az
  %i.bb = add nuw nsw i64 %i.ba, %i.ay
  %i.bc = and i64 %i.bb, 4286578688
  %i.bd = add nuw nsw i64 %i.bc, %i.ax
  br label %_ZN2cvL24softfloat_roundPackToF32Eblm.exit.i

_ZN2cvL24softfloat_roundPackToF32Eblm.exit.i:     ; preds = %bb.j, %bb.i
  %.0.i22.i = phi i64 [ %i.bd, %bb.j ], [ %i.as, %bb.i ]
  %i.be = trunc i64 %.0.i22.i to i32
  br label %_ZN2cvL10i64_to_f32El.exit

_ZN2cvL10i64_to_f32El.exit:                       ; preds = %bb.b, %bb.c, %_ZN2cvL24softfloat_roundPackToF32Eblm.exit.i
  %storemerge.i = phi i32 [ %i.be, %_ZN2cvL24softfloat_roundPackToF32Eblm.exit.i ], [ %i.x, %bb.c ], [ 0, %bb.b ]
  store i32 %storemerge.i, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZNK2cv9softfloatcvNS_10softdoubleEEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cv::softdouble") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !10     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  %i.c = lshr i64 %i.b, 23                        ; 2 uses
  %i.d = and i64 %i.c, 255
  %i.e = and i64 %i.b, 8388607                    ; 6 uses
  %trunc.i = trunc i64 %i.c to i8
  switch i8 %trunc.i, label %bb.h [
    i8 -1, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not23.i = icmp eq i64 %i.e, 0
  %.lobit24.i = lshr i32 %i.a, 31
  %i.f = zext nneg i32 %.lobit24.i to i64
  %i.g = shl nuw i64 %i.f, 63                     ; 2 uses
  br i1 %.not23.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw nsw i64 %i.b, 29
  %i.i = or disjoint i64 %i.g, %i.h
  %i.j = or i64 %i.i, 9221120237041090560
  br label %_ZN2cvL10f32_to_f64ENS_9softfloatE.exit

bb.d:                                             ; preds = %bb.b
  %i.k = or disjoint i64 %i.g, 9218868437227405312
  br label %_ZN2cvL10f32_to_f64ENS_9softfloatE.exit

bb.e:                                             ; preds = %bb.a
  %.not21.i = icmp eq i64 %i.e, 0
  br i1 %.not21.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.lobit.i = lshr i32 %i.a, 31
  %i.l = zext nneg i32 %.lobit.i to i64
  %i.m = shl nuw i64 %i.l, 63
  br label %_ZN2cvL10f32_to_f64ENS_9softfloatE.exit

bb.g:                                             ; preds = %bb.e
  %i.n = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  %i.o = icmp samesign ult i64 %i.e, 65536        ; 2 uses
  %i.p = shl nuw i32 %i.n, 16
  %spec.select.i.i.i = select i1 %i.o, i32 %i.p, i32 %i.n ; 3 uses
  %spec.select12.i.i.i = select i1 %i.o, i8 16, i8 0 ; 2 uses
  %i.q = icmp ult i32 %spec.select.i.i.i, 16777216 ; 2 uses
  %i.r = or disjoint i8 %spec.select12.i.i.i, 8
  %i.s = shl nuw i32 %spec.select.i.i.i, 8
end_hunk_0

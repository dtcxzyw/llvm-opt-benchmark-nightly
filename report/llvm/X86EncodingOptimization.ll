Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86EncodingOptimization?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::MCOperand" = type { i8, %union.anon }
%union.anon = type { i64 }

$_ZN4llvm5X86II19isX86_64ExtendedRegENS_10MCRegisterE = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm3X8626optimizeInstFromVEX3ToVEX2ERNS_6MCInstERKNS_11MCInstrDescE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::MCOperand", align 8   ; 4 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !8      ; 2 uses
  switch i32 %i.a, label %bb.b [
    i32 5789, label %bb.d
    i32 5767, label %bb.d
    i32 5833, label %bb.d
    i32 5811, label %bb.d
    i32 5844, label %bb.d
    i32 5864, label %bb.d
    i32 14102, label %.critedge
    i32 13536, label %bb.e
    i32 13499, label %bb.f
    i32 13577, label %bb.g
    i32 13540, label %bb.h
    i32 13679, label %bb.i
    i32 13675, label %bb.j
    i32 13819, label %bb.k
    i32 13815, label %bb.l
    i32 14050, label %bb.m
    i32 14013, label %bb.n
    i32 14091, label %bb.o
    i32 14054, label %bb.p
    i32 13930, label %bb.q
    i32 14009, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  %i.f = and i64 %i.e, 33554432
  %i.g = icmp ne i64 %i.f, 0
  %i.h = and i64 %i.c, 551366680703
  %i.i = icmp eq i64 %i.h, 550292693033
  %or.cond43.not48 = select i1 %i.g, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %.not37 = icmp eq i32 %i.k, 3
  %or.cond = select i1 %or.cond43.not48, i1 %.not37, i1 false
  br i1 %or.cond, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  switch i32 %i.a, label %.critedge [
    i32 21972, label %bb.w
    i32 13822, label %bb.w
  ]

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  %i.p = and i64 %i.o, 7
  switch i64 %i.p, label %bb.w [
    i64 0, label %.critedge
    i64 3, label %.critedge
    i64 4, label %.critedge
    i64 7, label %.critedge
  ]

bb.e:                                             ; preds = %bb.a
  br label %.critedge

bb.f:                                             ; preds = %bb.a
  br label %.critedge

bb.g:                                             ; preds = %bb.a
  br label %.critedge

bb.h:                                             ; preds = %bb.a
  br label %.critedge

bb.i:                                             ; preds = %bb.a
  br label %.critedge

bb.j:                                             ; preds = %bb.a
  br label %.critedge

bb.k:                                             ; preds = %bb.a
  br label %.critedge

bb.l:                                             ; preds = %bb.a
  br label %.critedge

bb.m:                                             ; preds = %bb.a
  br label %.critedge

bb.n:                                             ; preds = %bb.a
  br label %.critedge

bb.o:                                             ; preds = %bb.a
  br label %.critedge

bb.p:                                             ; preds = %bb.a
  br label %.critedge

bb.q:                                             ; preds = %bb.a
  br label %.critedge

bb.r:                                             ; preds = %bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a, %bb.d, %bb.d, %bb.d, %bb.d, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.not38 = phi i1 [ false, %bb.a ], [ false, %bb.r ], [ true, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.d ], [ true, %bb.c ]
  %.032 = phi i32 [ 13872, %bb.a ], [ 14010, %bb.r ], [ 0, %bb.d ], [ 13537, %bb.e ], [ 13500, %bb.f ], [ 13578, %bb.g ], [ 13541, %bb.h ], [ 13680, %bb.i ], [ 13676, %bb.j ], [ 13820, %bb.k ], [ 13816, %bb.l ], [ 14051, %bb.m ], [ 14014, %bb.n ], [ 14092, %bb.o ], [ 14055, %bb.p ], [ 13931, %bb.q ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.131 = phi i64 [ 1, %bb.a ], [ 2, %bb.r ], [ 2, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 2, %bb.q ], [ 2, %bb.d ], [ 2, %bb.d ], [ 2, %bb.d ], [ 2, %bb.c ] ; 2 uses
  %.128 = phi i64 [ 0, %bb.a ], [ 0, %bb.r ], [ 1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 1, %bb.d ], [ 1, %bb.d ], [ 1, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.128
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !25
  %i.v = tail call noundef zeroext i1 @_ZN4llvm5X86II19isX86_64ExtendedRegENS_10MCRegisterE(i32 %i.u)
  br i1 %i.v, label %bb.w, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.131
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !25
  %i.aa = tail call noundef zeroext i1 @_ZN4llvm5X86II19isX86_64ExtendedRegENS_10MCRegisterE(i32 %i.z)
  br i1 %i.aa, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  br i1 %.not38, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %.032, ptr %0, align 8, !tbaa !8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !24  ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.128 ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !26
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %.critedge, %bb.s, %bb.d, %bb.b, %bb.c, %bb.c
  %.1 = phi i1 [ false, %bb.d ], [ false, %.critedge ], [ true, %bb.u ], [ false, %bb.c ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.s ], [ true, %bb.v ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm5X86II19isX86_64ExtendedRegENS_10MCRegisterE(i32 %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ugt i32 %0, 142
  br i1 %i.a, label %bb.b, label %.thread18

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 151
  br i1 %i.b, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i32 %0, 214
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult i32 %0, 247
  br i1 %i.d, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = add nsw i32 %0, -199
  %or.cond = icmp ult i32 %i.e, 8
  br i1 %or.cond, label %bb.i, label %.thread18

bb.f:                                             ; preds = %bb.d
  %i.f = icmp ugt i32 %0, 254
  br i1 %i.f, label %bb.g, label %.thread18

bb.g:                                             ; preds = %bb.f
  %i.g = icmp ult i32 %0, 279
  %i.h = add i32 %0, -292
  %spec.select.i = icmp ult i32 %i.h, 96
  %or.cond21 = or i1 %i.g, %spec.select.i
  br i1 %or.cond21, label %bb.i, label %.thread18

.thread18:                                        ; preds = %bb.g, %bb.e, %bb.a, %bb.f
  switch i32 %0, label %bb.h [
    i32 119, label %bb.i
    i32 120, label %bb.i
    i32 121, label %bb.i
    i32 122, label %bb.i
    i32 123, label %bb.i
    i32 124, label %bb.i
    i32 125, label %bb.i
    i32 126, label %bb.i
    i32 167, label %bb.i
    i32 168, label %bb.i
    i32 169, label %bb.i
    i32 170, label %bb.i
    i32 171, label %bb.i
    i32 172, label %bb.i
    i32 173, label %bb.i
    i32 174, label %bb.i
    i32 175, label %bb.i
    i32 176, label %bb.i
    i32 177, label %bb.i
    i32 178, label %bb.i
    i32 179, label %bb.i
    i32 180, label %bb.i
    i32 181, label %bb.i
    i32 182, label %bb.i
    i32 151, label %bb.i
    i32 152, label %bb.i
    i32 153, label %bb.i
    i32 154, label %bb.i
    i32 155, label %bb.i
    i32 156, label %bb.i
    i32 157, label %bb.i
    i32 158, label %bb.i
    i32 79, label %bb.i
    i32 80, label %bb.i
    i32 81, label %bb.i
    i32 82, label %bb.i
    i32 83, label %bb.i
    i32 84, label %bb.i
    i32 85, label %bb.i
    i32 86, label %bb.i
    i32 95, label %bb.i
    i32 96, label %bb.i
    i32 97, label %bb.i
    i32 98, label %bb.i
    i32 99, label %bb.i
    i32 100, label %bb.i
    i32 101, label %bb.i
    i32 102, label %bb.i
  ]

bb.h:                                             ; preds = %.thread18
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %.thread18, %bb.b, %bb.d, %bb.g, %bb.h
  %.0 = phi i1 [ true, %.thread18 ], [ true, %bb.b ], [ false, %bb.h ], [ true, %bb.g ], [ true, %.thread18 ], [ true, %bb.e ], [ true, %bb.d ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ], [ true, %.thread18 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm3X8635optimizeShiftRotateWithImmediateOneERNS_6MCInstE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  switch i32 %i.a, label %bb.iu [
    i32 3706, label %bb.io
    i32 3707, label %bb.b
    i32 3708, label %bb.c
    i32 3652, label %bb.d
    i32 3653, label %bb.e
    i32 3654, label %bb.f
    i32 3670, label %bb.g
    i32 3671, label %bb.h
    i32 3672, label %bb.i
    i32 3688, label %bb.j
    i32 3689, label %bb.k
    i32 3690, label %bb.l
    i32 3628, label %bb.m
    i32 3629, label %bb.n
    i32 3630, label %bb.o
    i32 3574, label %bb.p
    i32 3575, label %bb.q
    i32 3576, label %bb.r
    i32 3592, label %bb.s
    i32 3593, label %bb.t
    i32 3594, label %bb.u
    i32 3610, label %bb.v
    i32 3611, label %bb.w
    i32 3612, label %bb.x
    i32 3697, label %bb.y
    i32 3698, label %bb.z
    i32 3699, label %bb.aa
    i32 3643, label %bb.ab
    i32 3644, label %bb.ac
    i32 3645, label %bb.ad
    i32 3661, label %bb.ae
    i32 3662, label %bb.af
    i32 3663, label %bb.ag
    i32 3679, label %bb.ah
    i32 3680, label %bb.ai
    i32 3681, label %bb.aj
    i32 3619, label %bb.ak
    i32 3620, label %bb.al
    i32 3621, label %bb.am
    i32 3565, label %bb.an
    i32 3566, label %bb.ao
    i32 3567, label %bb.ap
    i32 3583, label %bb.aq
    i32 3584, label %bb.ar
    i32 3585, label %bb.as
    i32 3601, label %bb.at
    i32 3602, label %bb.au
    i32 3603, label %bb.av
    i32 3996, label %bb.aw
    i32 3997, label %bb.ax
    i32 3999, label %bb.ay
    i32 3998, label %bb.az
    i32 4000, label %bb.ba
    i32 3906, label %bb.bb
    i32 3907, label %bb.bc
    i32 3909, label %bb.bd
    i32 3908, label %bb.be
    i32 3910, label %bb.bf
    i32 3936, label %bb.bg
    i32 3937, label %bb.bh
    i32 3939, label %bb.bi
    i32 3938, label %bb.bj
    i32 3940, label %bb.bk
    i32 3966, label %bb.bl
    i32 3967, label %bb.bm
    i32 3969, label %bb.bn
    i32 3968, label %bb.bo
    i32 3970, label %bb.bp
    i32 3876, label %bb.bq
    i32 3877, label %bb.br
    i32 3879, label %bb.bs
    i32 3878, label %bb.bt
    i32 3880, label %bb.bu
    i32 3786, label %bb.bv
    i32 3787, label %bb.bw
    i32 3789, label %bb.bx
    i32 3788, label %bb.by
    i32 3790, label %bb.bz
    i32 3816, label %bb.ca
    i32 3817, label %bb.cb
    i32 3819, label %bb.cc
    i32 3818, label %bb.cd
    i32 3820, label %bb.ce
end_hunk_0
begin_hunk_1_@_ZN4llvm3X8634optimizeVPCMPWithImmediateOneOrSixERNS_6MCInstE:bb.a
    i32 15454, label %bb.ao
    i32 15455, label %bb.ap
    i32 15458, label %bb.aq
    i32 15456, label %bb.ar
    i32 15457, label %bb.as
    i32 15459, label %bb.at
    i32 15460, label %bb.au
    i32 15461, label %bb.av
    i32 15522, label %bb.aw
    i32 15523, label %bb.ax
    i32 15524, label %bb.ay
    i32 15525, label %bb.az
    i32 15526, label %bb.ba
    i32 15527, label %bb.bb
    i32 15528, label %bb.bc
    i32 15529, label %bb.bd
    i32 15530, label %bb.be
    i32 15531, label %bb.bf
    i32 15532, label %bb.bg
    i32 15533, label %bb.bh
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.bi

bb.c:                                             ; preds = %bb.a
  br label %bb.bi

bb.d:                                             ; preds = %bb.a
  br label %bb.bi

bb.e:                                             ; preds = %bb.a
  br label %bb.bi

bb.f:                                             ; preds = %bb.a
  br label %bb.bi

bb.g:                                             ; preds = %bb.a
  br label %bb.bi

bb.h:                                             ; preds = %bb.a
  br label %bb.bi

bb.i:                                             ; preds = %bb.a
  br label %bb.bi

bb.j:                                             ; preds = %bb.a
  br label %bb.bi

bb.k:                                             ; preds = %bb.a
  br label %bb.bi

bb.l:                                             ; preds = %bb.a
  br label %bb.bi

bb.m:                                             ; preds = %bb.a
  br label %bb.bi

bb.n:                                             ; preds = %bb.a
  br label %bb.bi

bb.o:                                             ; preds = %bb.a
  br label %bb.bi

bb.p:                                             ; preds = %bb.a
  br label %bb.bi

bb.q:                                             ; preds = %bb.a
  br label %bb.bi

bb.r:                                             ; preds = %bb.a
  br label %bb.bi

bb.s:                                             ; preds = %bb.a
  br label %bb.bi

bb.t:                                             ; preds = %bb.a
  br label %bb.bi

bb.u:                                             ; preds = %bb.a
  br label %bb.bi

bb.v:                                             ; preds = %bb.a
  br label %bb.bi

bb.w:                                             ; preds = %bb.a
  br label %bb.bi

bb.x:                                             ; preds = %bb.a
  br label %bb.bi

bb.y:                                             ; preds = %bb.a
  br label %bb.bi

bb.z:                                             ; preds = %bb.a
  br label %bb.bi

bb.aa:                                            ; preds = %bb.a
  br label %bb.bi

bb.ab:                                            ; preds = %bb.a
  br label %bb.bi

bb.ac:                                            ; preds = %bb.a
  br label %bb.bi

bb.ad:                                            ; preds = %bb.a
  br label %bb.bi

bb.ae:                                            ; preds = %bb.a
  br label %bb.bi

bb.af:                                            ; preds = %bb.a
  br label %bb.bi

bb.ag:                                            ; preds = %bb.a
  br label %bb.bi

bb.ah:                                            ; preds = %bb.a
  br label %bb.bi

bb.ai:                                            ; preds = %bb.a
  br label %bb.bi

bb.aj:                                            ; preds = %bb.a
  br label %bb.bi

bb.ak:                                            ; preds = %bb.a
  br label %bb.bi

bb.al:                                            ; preds = %bb.a
  br label %bb.bi

bb.am:                                            ; preds = %bb.a
  br label %bb.bi

bb.an:                                            ; preds = %bb.a
  br label %bb.bi

bb.ao:                                            ; preds = %bb.a
  br label %bb.bi

bb.ap:                                            ; preds = %bb.a
  br label %bb.bi

bb.aq:                                            ; preds = %bb.a
  br label %bb.bi

bb.ar:                                            ; preds = %bb.a
  br label %bb.bi

bb.as:                                            ; preds = %bb.a
  br label %bb.bi

bb.at:                                            ; preds = %bb.a
  br label %bb.bi

bb.au:                                            ; preds = %bb.a
  br label %bb.bi

bb.av:                                            ; preds = %bb.a
  br label %bb.bi

bb.aw:                                            ; preds = %bb.a
  br label %bb.bi

bb.ax:                                            ; preds = %bb.a
  br label %bb.bi

bb.ay:                                            ; preds = %bb.a
  br label %bb.bi

bb.az:                                            ; preds = %bb.a
  br label %bb.bi

bb.ba:                                            ; preds = %bb.a
  br label %bb.bi

bb.bb:                                            ; preds = %bb.a
  br label %bb.bi

bb.bc:                                            ; preds = %bb.a
  br label %bb.bi

bb.bd:                                            ; preds = %bb.a
  br label %bb.bi

bb.be:                                            ; preds = %bb.a
  br label %bb.bi

bb.bf:                                            ; preds = %bb.a
  br label %bb.bi

bb.bg:                                            ; preds = %bb.a
  br label %bb.bi

bb.bh:                                            ; preds = %bb.a
  br label %bb.bi

bb.bi:                                            ; preds = %bb.a, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.014 = phi i32 [ 15437, %bb.bh ], [ 15367, %bb.b ], [ 15368, %bb.c ], [ 15369, %bb.d ], [ 15370, %bb.e ], [ 15371, %bb.f ], [ 15372, %bb.g ], [ 15373, %bb.h ], [ 15374, %bb.i ], [ 15375, %bb.j ], [ 15376, %bb.k ], [ 15377, %bb.l ], [ 15382, %bb.m ], [ 15383, %bb.n ], [ 15384, %bb.o ], [ 15385, %bb.p ], [ 15386, %bb.q ], [ 15387, %bb.r ], [ 15388, %bb.s ], [ 15389, %bb.t ], [ 15390, %bb.u ], [ 15391, %bb.v ], [ 15392, %bb.w ], [ 15393, %bb.x ], [ 15394, %bb.y ], [ 15395, %bb.z ], [ 15396, %bb.aa ], [ 15397, %bb.ab ], [ 15398, %bb.ac ], [ 15399, %bb.ad ], [ 15404, %bb.ae ], [ 15405, %bb.af ], [ 15406, %bb.ag ], [ 15407, %bb.ah ], [ 15408, %bb.ai ], [ 15409, %bb.aj ], [ 15410, %bb.ak ], [ 15411, %bb.al ], [ 15412, %bb.am ], [ 15413, %bb.an ], [ 15414, %bb.ao ], [ 15415, %bb.ap ], [ 15416, %bb.aq ], [ 15417, %bb.ar ], [ 15418, %bb.as ], [ 15419, %bb.at ], [ 15420, %bb.au ], [ 15421, %bb.av ], [ 15426, %bb.aw ], [ 15427, %bb.ax ], [ 15428, %bb.ay ], [ 15429, %bb.az ], [ 15430, %bb.ba ], [ 15431, %bb.bb ], [ 15432, %bb.bc ], [ 15433, %bb.bd ], [ 15434, %bb.be ], [ 15435, %bb.bf ], [ 15436, %bb.bg ], [ 15366, %bb.a ]
  %.013 = phi i32 [ 15353, %bb.bh ], [ 15283, %bb.b ], [ 15284, %bb.c ], [ 15285, %bb.d ], [ 15286, %bb.e ], [ 15287, %bb.f ], [ 15288, %bb.g ], [ 15289, %bb.h ], [ 15290, %bb.i ], [ 15291, %bb.j ], [ 15292, %bb.k ], [ 15293, %bb.l ], [ 15298, %bb.m ], [ 15299, %bb.n ], [ 15300, %bb.o ], [ 15301, %bb.p ], [ 15302, %bb.q ], [ 15303, %bb.r ], [ 15304, %bb.s ], [ 15305, %bb.t ], [ 15306, %bb.u ], [ 15307, %bb.v ], [ 15308, %bb.w ], [ 15309, %bb.x ], [ 15310, %bb.y ], [ 15311, %bb.z ], [ 15312, %bb.aa ], [ 15313, %bb.ab ], [ 15314, %bb.ac ], [ 15315, %bb.ad ], [ 15320, %bb.ae ], [ 15321, %bb.af ], [ 15322, %bb.ag ], [ 15323, %bb.ah ], [ 15324, %bb.ai ], [ 15325, %bb.aj ], [ 15326, %bb.ak ], [ 15327, %bb.al ], [ 15328, %bb.am ], [ 15329, %bb.an ], [ 15330, %bb.ao ], [ 15331, %bb.ap ], [ 15332, %bb.aq ], [ 15333, %bb.ar ], [ 15334, %bb.as ], [ 15335, %bb.at ], [ 15336, %bb.au ], [ 15337, %bb.av ], [ 15342, %bb.aw ], [ 15343, %bb.ax ], [ 15344, %bb.ay ], [ 15345, %bb.az ], [ 15346, %bb.ba ], [ 15347, %bb.bb ], [ 15348, %bb.bc ], [ 15349, %bb.bd ], [ 15350, %bb.be ], [ 15351, %bb.bf ], [ 15352, %bb.bg ], [ 15282, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = add i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = zext i32 %i.d to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !24
  %.idx16 = shl nuw nsw i64 %i.f, 4               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25
  switch i64 %i.j, label %bb.bo [
    i64 0, label %bb.bk
    i64 6, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %.0 = phi i32 [ %.014, %bb.bj ], [ %.013, %bb.bi ]
  store i32 %.0, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.l, 4
  %.neg = add nsw i64 %.idx, -16
  %gepdiff = sub nsw i64 %.neg, %.idx16           ; 3 uses
  %i.m = icmp sgt i64 %gepdiff, 16
  br i1 %i.m, label %bb.bl, label %bb.bm, !prof !32

bb.bl:                                            ; preds = %bb.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.k, i64 %gepdiff, i1 false)
  br label %_ZN4llvm6MCInst5eraseEPNS_9MCOperandE.exit

bb.bm:                                            ; preds = %bb.bk
  %i.n = icmp eq i64 %gepdiff, 16
  br i1 %i.n, label %bb.bn, label %_ZN4llvm6MCInst5eraseEPNS_9MCOperandE.exit

bb.bn:                                            ; preds = %bb.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !26
  br label %_ZN4llvm6MCInst5eraseEPNS_9MCOperandE.exit

_ZN4llvm6MCInst5eraseEPNS_9MCOperandE.exit:       ; preds = %bb.bl, %bb.bm, %bb.bn
  %i.o = load i32, ptr %i.b, align 8, !tbaa !29
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr %i.b, align 8, !tbaa !29
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm6MCInst5eraseEPNS_9MCOperandE.exit, %bb.bi, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %_ZN4llvm6MCInst5eraseEPNS_9MCOperandE.exit ], [ false, %bb.bi ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm3X8613optimizeMOVSXERNS_6MCInstE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  switch i32 %i.a, label %.critedge [
    i32 2737, label %bb.b
    i32 2742, label %bb.d
    i32 2750, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25
  %.not23 = icmp eq i32 %i.e, 3
  br i1 %.not23, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %.not24 = icmp eq i32 %i.g, 2
  br i1 %.not24, label %bb.h, label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %.not21 = icmp eq i32 %i.k, 22
  br i1 %.not21, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25
  %.not22 = icmp eq i32 %i.m, 3
  br i1 %.not22, label %bb.h, label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !25
  %.not = icmp eq i32 %i.q, 51
  br i1 %.not, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !25
  %.not20 = icmp eq i32 %i.s, 22
  br i1 %.not20, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ 1506, %bb.e ], [ 1170, %bb.c ], [ 1202, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.t, align 8, !tbaa !29
  store i32 %.0, ptr %0, align 8, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.b, %bb.g, %bb.e, %bb.c, %bb.a, %bb.h
  %.014 = phi i1 [ false, %bb.e ], [ false, %bb.a ], [ true, %bb.h ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ]
  ret i1 %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm3X8614optimizeINCDECERNS_6MCInstEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  br i1 %1, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  switch i32 %i.a, label %bb.g [
    i32 1515, label %bb.f
    i32 1526, label %bb.c
    i32 1905, label %bb.d
    i32 1916, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ 1921, %bb.e ], [ 1531, %bb.c ], [ 1910, %bb.d ], [ 1520, %bb.b ]
  store i32 %.0, ptr %0, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.f ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm3X8611optimizeMOVERNS_6MCInstEb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  br i1 %1, label %_ZL11isARegisterN4llvm10MCRegisterE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  switch i32 %i.a, label %_ZL11isARegisterN4llvm10MCRegisterE.exit [
    i32 2617, label %bb.h
    i32 2616, label %bb.h
    i32 2624, label %bb.c
    i32 2623, label %bb.c
    i32 2560, label %bb.d
    i32 2567, label %bb.e
    i32 2579, label %bb.f
    i32 2587, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.044 = phi i32 [ 2574, %bb.g ], [ 2619, %bb.b ], [ 2613, %bb.c ], [ 2619, %bb.b ], [ 2563, %bb.d ], [ 2557, %bb.e ], [ 2581, %bb.f ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 10 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !30
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.i, label %.thread59

bb.i:                                             ; preds = %bb.h
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !30
  %.fr = freeze i8 %i.g
  %i.h = icmp eq i8 %.fr, 1
  br i1 %i.h, label %.thread59, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %.thread59

.thread59:                                        ; preds = %bb.j, %bb.i, %bb.h
  %i.i = phi i64 [ 5, %bb.h ], [ 5, %bb.j ], [ 0, %bb.i ]
  %.shrunk = phi i1 [ false, %bb.h ], [ false, %bb.j ], [ true, %bb.i ] ; 4 uses
  %i.j = phi i64 [ 3, %bb.h ], [ 3, %bb.j ], [ 4, %bb.i ]
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25
  switch i32 %i.m, label %_ZL11isARegisterN4llvm10MCRegisterE.exit [
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 22, label %bb.k
    i32 51, label %bb.k
  ]

bb.k:                                             ; preds = %.thread59, %.thread59, %.thread59, %.thread59
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.j ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !30    ; 3 uses
  %i.p = icmp eq i8 %i.o, 5
  br i1 %i.p, label %bb.l, label %.critedge52

end_hunk_1

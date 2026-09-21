Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_bitpack_binding?download=true
inline.NumInlined: 28
inline.NumDeleted: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }

@EI_bitpack_typed.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 109, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/bitpack/encode_bitpack_binding.c\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"EI_bitpack_typed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EI_bitpack_typed.__zl_static_error_info.5 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 117, [4 x i8] zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [79 x i8] c"Check `(const char*)(const void*)out == (const char*)0' failed: Allocation: %s\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (pointer) %p\0A\09rhs = (pointer) %p\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"(const char*)(const void*)out\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@__const.EI_bitpack_typed.log2EltWidth = private unnamed_addr constant [9 x i8] c"\00\00\01\00\02\00\00\00\03", align 1
@EI_bitpack_typed.__zl_static_error_info.12 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 146, [4 x i8] zeroinitializer }, align 8
@checkEtlWidth.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.13, ptr @.str.1, ptr @.str.14, i32 88, [4 x i8] zeroinitializer }, align 8
@.str.13 = private unnamed_addr constant [78 x i8] c"Unconditional failure: Generic: Bitpack expects element width of 1, 2, 4 or 8\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"checkEtlWidth\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"Unconditional failure: Bitpack expects element width of 1, 2, 4 or 8\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_bitpack_typed(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 7 uses
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @ZL_Encoder_getOperationContext(ptr noundef %0) #8
  store ptr %i.c, ptr %4, align 8, !tbaa !25
  %i.d = load ptr, ptr %1, align 8, !tbaa !27     ; 6 uses
  %i.e = tail call ptr @ZL_Data_rPtr(ptr noundef %i.d) #7
  %i.f = tail call i64 @ZL_Data_numElts(ptr noundef %i.d) #7 ; 4 uses
  %i.g = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.d) #7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #8
  store ptr %i.i, ptr %3, align 8, !tbaa !25
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.k = icmp eq i64 %i.j, 1
  %i.l = and i64 %i.g, 15
  %switch.i = icmp ne i64 %i.l, 0
  %or.cond.i = and i1 %i.k, %switch.i
  br i1 %or.cond.i, label %checkEtlWidth.exit.thread, label %checkEtlWidth.exit

checkEtlWidth.exit.thread:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.c

checkEtlWidth.exit:                               ; preds = %bb.a
  %i.m = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @checkEtlWidth.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, i32 noundef 88, i32 noundef 1, ptr noundef nonnull @.str.15) #7 ; 2 uses
  %i.n = extractvalue { i32, ptr } %i.m, 0        ; 3 uses
  %i.o = extractvalue { i32, ptr } %i.m, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.n, ptr %i.o, ptr noundef nonnull @.str.16) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %checkEtlWidth.exit
  %i.p = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.n, ptr %i.o, ptr nonnull @EI_bitpack_typed.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 109, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #7 ; 2 uses
  %i.q = extractvalue { i32, ptr } %i.p, 0
  %i.r = extractvalue { i32, ptr } %i.p, 1
  %i.s = ptrtoint ptr %i.r to i64
  br label %bb.n

bb.c:                                             ; preds = %checkEtlWidth.exit.thread, %checkEtlWidth.exit
  %i.t = call ptr @ZL_Data_rPtr(ptr noundef %i.d) #7 ; 8 uses
  %i.u = call i64 @ZL_Data_numElts(ptr noundef %i.d) #7 ; 20 uses
  %i.v = call i64 @ZL_Data_eltWidth(ptr noundef %i.d) #7 ; 2 uses
  %i.w = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.v)
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %.split.i, label %computeNbBits.exit

.split.i:                                         ; preds = %bb.c
  %i.y = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.v, i1 true)
  switch i64 %i.y, label %computeNbBits.exit [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
  ]

bb.d:                                             ; preds = %.split.i
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %computeNbBits.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %min.iters.check107 = icmp ult i64 %i.u, 8
  br i1 %min.iters.check107, label %.lr.ph.i.i.preheader122, label %vector.ph108

vector.ph108:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec109 = and i64 %i.u, -8                    ; 3 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph108
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body110 ] ; 2 uses
  %vec.phi112 = phi <4 x i32> [ zeroinitializer, %vector.ph108 ], [ %7, %vector.body110 ]
  %vec.phi113 = phi <4 x i32> [ zeroinitializer, %vector.ph108 ], [ %8, %vector.body110 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %index111 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %wide.load114 = load <4 x i8>, ptr %i.z, align 1, !tbaa !29
  %wide.load115 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !29
  %5 = zext <4 x i8> %wide.load114 to <4 x i32>
  %6 = zext <4 x i8> %wide.load115 to <4 x i32>
  %7 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi112, <4 x i32> %5) ; 2 uses
  %8 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi113, <4 x i32> %6) ; 2 uses
  %index.next116 = add nuw i64 %index111, 8       ; 2 uses
  %i.ab = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.ab, label %middle.block117, label %vector.body110, !llvm.loop !11

middle.block117:                                  ; preds = %vector.body110
  %rdx.minmax118 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %7, <4 x i32> %8)
  %9 = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax118) ; 2 uses
  %cmp.n119 = icmp eq i64 %i.u, %n.vec109
  br i1 %cmp.n119, label %computeMaxValue8.exit.loopexit.i, label %.lr.ph.i.i.preheader122

.lr.ph.i.i.preheader122:                          ; preds = %.lr.ph.i.i.preheader, %middle.block117
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec109, %middle.block117 ]
  %.0911.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %9, %middle.block117 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader122, %.lr.ph.i.i
  %.012.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader122 ] ; 2 uses
  %.0911.i.i = phi i32 [ %.09..i.i, %.lr.ph.i.i ], [ %.0911.i.i.ph, %.lr.ph.i.i.preheader122 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 %.012.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i32
  %.09..i.i = call i32 @llvm.umax.i32(i32 %.0911.i.i, i32 %i.ae) ; 2 uses
  %i.af = add nuw i64 %.012.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.u
  br i1 %exitcond.not.i.i, label %computeMaxValue8.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !12

computeMaxValue8.exit.loopexit.i:                 ; preds = %.lr.ph.i.i, %middle.block117
  %.09..i.i.lcssa = phi i32 [ %9, %middle.block117 ], [ %.09..i.i, %.lr.ph.i.i ]
  %i.ag = zext nneg i32 %.09..i.i.lcssa to i64
  br label %computeMaxValue64.exit.i

bb.e:                                             ; preds = %.split.i
  %.not.i15.i = icmp eq i64 %i.u, 0
  br i1 %.not.i15.i, label %computeNbBits.exit, label %.lr.ph.i16.i.preheader

.lr.ph.i16.i.preheader:                           ; preds = %bb.e
  %min.iters.check91 = icmp ult i64 %i.u, 8
  br i1 %min.iters.check91, label %.lr.ph.i16.i.preheader125, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph.i16.i.preheader
  %n.vec93 = and i64 %i.u, -8                     ; 3 uses
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph92
  %index95 = phi i64 [ 0, %vector.ph92 ], [ %index.next100, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <4 x i32> [ zeroinitializer, %vector.ph92 ], [ %12, %vector.body94 ]
  %vec.phi97 = phi <4 x i32> [ zeroinitializer, %vector.ph92 ], [ %13, %vector.body94 ]
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index95 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %wide.load98 = load <4 x i16>, ptr %i.ah, align 2, !tbaa !34
  %wide.load99 = load <4 x i16>, ptr %i.ai, align 2, !tbaa !34
  %10 = zext <4 x i16> %wide.load98 to <4 x i32>
  %11 = zext <4 x i16> %wide.load99 to <4 x i32>
  %12 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi96, <4 x i32> %10) ; 2 uses
  %13 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi97, <4 x i32> %11) ; 2 uses
  %index.next100 = add nuw i64 %index95, 8        ; 2 uses
  %i.aj = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.aj, label %middle.block101, label %vector.body94, !llvm.loop !13

middle.block101:                                  ; preds = %vector.body94
  %rdx.minmax102 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %12, <4 x i32> %13)
  %14 = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax102) ; 2 uses
  %cmp.n103 = icmp eq i64 %i.u, %n.vec93
  br i1 %cmp.n103, label %computeMaxValue16.exit.loopexit.i, label %.lr.ph.i16.i.preheader125

.lr.ph.i16.i.preheader125:                        ; preds = %.lr.ph.i16.i.preheader, %middle.block101
  %.012.i17.i.ph = phi i64 [ 0, %.lr.ph.i16.i.preheader ], [ %n.vec93, %middle.block101 ]
  %.0911.i18.i.ph = phi i32 [ 0, %.lr.ph.i16.i.preheader ], [ %14, %middle.block101 ]
  br label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %.lr.ph.i16.i.preheader125, %.lr.ph.i16.i
  %.012.i17.i = phi i64 [ %i.an, %.lr.ph.i16.i ], [ %.012.i17.i.ph, %.lr.ph.i16.i.preheader125 ] ; 2 uses
  %.0911.i18.i = phi i32 [ %.09..i19.i, %.lr.ph.i16.i ], [ %.0911.i18.i.ph, %.lr.ph.i16.i.preheader125 ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.012.i17.i
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !34
  %i.am = zext i16 %i.al to i32
  %.09..i19.i = call i32 @llvm.umax.i32(i32 %.0911.i18.i, i32 %i.am) ; 2 uses
  %i.an = add nuw i64 %.012.i17.i, 1              ; 2 uses
  %exitcond.not.i20.i = icmp eq i64 %i.an, %i.u
  br i1 %exitcond.not.i20.i, label %computeMaxValue16.exit.loopexit.i, label %.lr.ph.i16.i, !llvm.loop !14

computeMaxValue16.exit.loopexit.i:                ; preds = %.lr.ph.i16.i, %middle.block101
  %.09..i19.i.lcssa = phi i32 [ %14, %middle.block101 ], [ %.09..i19.i, %.lr.ph.i16.i ]
  %i.ao = zext nneg i32 %.09..i19.i.lcssa to i64
  br label %computeMaxValue64.exit.i

bb.f:                                             ; preds = %.split.i
  %.not.i22.i = icmp eq i64 %i.u, 0
  br i1 %.not.i22.i, label %computeNbBits.exit, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %bb.f
  %min.iters.check75 = icmp ult i64 %i.u, 8
  br i1 %min.iters.check75, label %.lr.ph.i23.i.preheader129, label %vector.ph76

vector.ph76:                                      ; preds = %.lr.ph.i23.i.preheader
  %n.vec77 = and i64 %i.u, -8                     ; 3 uses
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph76
  %index79 = phi i64 [ 0, %vector.ph76 ], [ %index.next84, %vector.body78 ] ; 2 uses
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph76 ], [ %i.ar, %vector.body78 ]
  %vec.phi81 = phi <4 x i32> [ zeroinitializer, %vector.ph76 ], [ %i.as, %vector.body78 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index79 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load82 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !35
  %wide.load83 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !35
  %i.ar = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi80, <4 x i32> %wide.load82) ; 2 uses
  %i.as = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi81, <4 x i32> %wide.load83) ; 2 uses
  %index.next84 = add nuw i64 %index79, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next84, %n.vec77
  br i1 %i.at, label %middle.block85, label %vector.body78, !llvm.loop !15

middle.block85:                                   ; preds = %vector.body78
  %rdx.minmax86 = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ar, <4 x i32> %i.as)
  %i.au = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.u, %n.vec77
  br i1 %cmp.n87, label %computeMaxValue32.exit.loopexit.i, label %.lr.ph.i23.i.preheader129

.lr.ph.i23.i.preheader129:                        ; preds = %.lr.ph.i23.i.preheader, %middle.block85
  %.012.i24.i.ph = phi i64 [ 0, %.lr.ph.i23.i.preheader ], [ %n.vec77, %middle.block85 ]
  %.0911.i25.i.ph = phi i32 [ 0, %.lr.ph.i23.i.preheader ], [ %i.au, %middle.block85 ]
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i.preheader129, %.lr.ph.i23.i
  %.012.i24.i = phi i64 [ %i.ax, %.lr.ph.i23.i ], [ %.012.i24.i.ph, %.lr.ph.i23.i.preheader129 ] ; 2 uses
  %.0911.i25.i = phi i32 [ %.09..i26.i, %.lr.ph.i23.i ], [ %.0911.i25.i.ph, %.lr.ph.i23.i.preheader129 ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.012.i24.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !35
  %.09..i26.i = call i32 @llvm.umax.i32(i32 %.0911.i25.i, i32 %i.aw) ; 2 uses
  %i.ax = add nuw i64 %.012.i24.i, 1              ; 2 uses
  %exitcond.not.i27.i = icmp eq i64 %i.ax, %i.u
  br i1 %exitcond.not.i27.i, label %computeMaxValue32.exit.loopexit.i, label %.lr.ph.i23.i, !llvm.loop !16

computeMaxValue32.exit.loopexit.i:                ; preds = %.lr.ph.i23.i, %middle.block85
  %.09..i26.i.lcssa = phi i32 [ %i.au, %middle.block85 ], [ %.09..i26.i, %.lr.ph.i23.i ]
  %i.ay = zext i32 %.09..i26.i.lcssa to i64
  br label %computeMaxValue64.exit.i

bb.g:                                             ; preds = %.split.i
  %.not.i29.i = icmp eq i64 %i.u, 0
  br i1 %.not.i29.i, label %computeNbBits.exit, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.u, 4
  br i1 %min.iters.check, label %.lr.ph.i30.i.preheader133, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i30.i.preheader
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi72 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <2 x i64>, ptr %i.az, align 8, !tbaa !37
  %wide.load73 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !37
  %i.bb = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi, <2 x i64> %wide.load) ; 2 uses
  %i.bc = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %vec.phi72, <2 x i64> %wide.load73) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.bb, <2 x i64> %i.bc)
  %i.be = call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %computeMaxValue64.exit.i, label %.lr.ph.i30.i.preheader133

.lr.ph.i30.i.preheader133:                        ; preds = %.lr.ph.i30.i.preheader, %middle.block
  %.012.i31.i.ph = phi i64 [ 0, %.lr.ph.i30.i.preheader ], [ %n.vec, %middle.block ]
  %.0911.i32.i.ph = phi i64 [ 0, %.lr.ph.i30.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i.preheader133, %.lr.ph.i30.i
  %.012.i31.i = phi i64 [ %i.bh, %.lr.ph.i30.i ], [ %.012.i31.i.ph, %.lr.ph.i30.i.preheader133 ] ; 2 uses
  %.0911.i32.i = phi i64 [ %.09..i33.i, %.lr.ph.i30.i ], [ %.0911.i32.i.ph, %.lr.ph.i30.i.preheader133 ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.012.i31.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !37
  %.09..i33.i = call i64 @llvm.umax.i64(i64 %.0911.i32.i, i64 %i.bg) ; 2 uses
  %i.bh = add nuw i64 %.012.i31.i, 1              ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %i.bh, %i.u
  br i1 %exitcond.not.i34.i, label %computeMaxValue64.exit.i, label %.lr.ph.i30.i, !llvm.loop !18

computeMaxValue64.exit.i:                         ; preds = %.lr.ph.i30.i, %middle.block, %computeMaxValue32.exit.loopexit.i, %computeMaxValue16.exit.loopexit.i, %computeMaxValue8.exit.loopexit.i
  %.0.i = phi i64 [ %i.ay, %computeMaxValue32.exit.loopexit.i ], [ %i.ag, %computeMaxValue8.exit.loopexit.i ], [ %i.ao, %computeMaxValue16.exit.loopexit.i ], [ %i.be, %middle.block ], [ %.09..i33.i, %.lr.ph.i30.i ] ; 2 uses
  %i.bi = icmp eq i64 %.0.i, 0
  br i1 %i.bi, label %computeNbBits.exit, label %bb.h

bb.h:                                             ; preds = %computeMaxValue64.exit.i
  %i.bj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %.0.i, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = sub nuw nsw i32 64, %i.bk
  br label %computeNbBits.exit

computeNbBits.exit:                               ; preds = %bb.c, %.split.i, %bb.d, %bb.e, %bb.f, %bb.g, %computeMaxValue64.exit.i, %bb.h
  %.014.i = phi i32 [ 0, %.split.i ], [ 0, %bb.c ], [ %i.bl, %bb.h ], [ 1, %computeMaxValue64.exit.i ], [ 1, %bb.g ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.bm = call i64 @ZS_bitpackEncodeBound(i64 noundef %i.f, i32 noundef %.014.i) #7 ; 2 uses
  %i.bn = call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 0, i64 noundef %i.bm, i64 noundef 1) #7 ; 3 uses
  %.not57 = icmp eq ptr %i.bn, null
  br i1 %.not57, label %.thread, label %bb.i, !prof !38

.thread:                                          ; preds = %computeNbBits.exit
  %i.bo = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_bitpack_typed.__zl_static_error_info.5, ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 117, i32 noundef 70, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef null) #7 ; 2 uses
  %i.bp = extractvalue { i32, ptr } %i.bo, 0      ; 2 uses
  %i.bq = extractvalue { i32, ptr } %i.bo, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bp, ptr %i.bq, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4) #7
  %i.br = ptrtoint ptr %i.bq to i64
  br label %bb.n

bb.i:                                             ; preds = %computeNbBits.exit
  %i.bs = call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.bn) #7
  %i.bt = call i64 @ZS_bitpackEncode(ptr noundef %i.bs, i64 noundef %i.bm, ptr noundef %i.e, i64 noundef %i.f, i64 noundef %i.g, i32 noundef %.014.i) #7 ; 2 uses
  %i.bu = shl i64 %i.bt, 3
  %i.bv = zext nneg i32 %.014.i to i64
  %i.bw = udiv i64 %i.bu, %i.bv                   ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.by = getelementptr inbounds nuw i8, ptr @__const.EI_bitpack_typed.log2EltWidth, i64 %i.g
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !29
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 6
  %i.cc = add nuw nsw i32 %.014.i, 255
  %i.cd = or i32 %i.cb, %i.cc
  %i.ce = trunc i32 %i.cd to i8
  store i8 %i.ce, ptr %i.a, align 1, !tbaa !29
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cf = sub nuw i64 %i.bw, %i.f
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi i64 [ 2, %bb.j ], [ 1, %bb.i ]
  call void @ZL_Encoder_sendCodecHeader(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %.sink) #7
  %i.ci = call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.bn, i64 noundef %i.bt) #7 ; 2 uses
  %i.cj = extractvalue { i32, i64 } %i.ci, 0      ; 2 uses
  %.not58 = icmp eq i32 %i.cj, 0
  br i1 %.not58, label %bb.m, label %bb.l, !prof !39

bb.l:                                             ; preds = %bb.k
  %i.ck = extractvalue { i32, i64 } %i.ci, 1
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %4, i32 %i.cj, ptr %i.cl, ptr nonnull @EI_bitpack_typed.__zl_static_error_info.12, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 146, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #7 ; 2 uses
  %i.cn = extractvalue { i32, ptr } %i.cm, 0
  %i.co = extractvalue { i32, ptr } %i.cm, 1
  %i.cp = ptrtoint ptr %i.co to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.048.1 = phi i32 [ %i.cn, %bb.l ], [ 0, %bb.k ]
  %.sroa.16.1 = phi i64 [ %i.cp, %bb.l ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m, %bb.b
  %.sroa.048.3 = phi i32 [ %i.q, %bb.b ], [ %.sroa.048.1, %bb.m ], [ %i.bp, %.thread ]
  %.sroa.16.3 = phi i64 [ %i.s, %bb.b ], [ %.sroa.16.1, %bb.m ], [ %i.br, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.048.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.16.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_Encoder_getOperationContext(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i64 @ZS_bitpackEncodeBound(i64 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @ZL_Encoder_createTypedStream(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

declare i64 @ZS_bitpackEncode(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @ZL_Encoder_sendCodecHeader(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 38, 40) i32 @SI_selector_bitpack(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ZL_Data_type(ptr noundef %1) #7
  %i.b = icmp eq i32 %i.a, 4
  %. = select i1 %i.b, i32 39, i32 38
  ret i32 %.
}

declare ptr @ZL_Data_rPtr(ptr noundef) local_unnamed_addr #4

declare i64 @ZL_Data_numElts(ptr noundef) local_unnamed_addr #4

declare i64 @ZL_Data_eltWidth(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

declare ptr @ZL_Data_wPtr(ptr noundef) local_unnamed_addr #4

declare { i32, i64 } @ZL_Data_commit(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @ZL_Data_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{!11, !30, !31, !32}
!12 = distinct !{!12, !30, !32, !31}
!13 = distinct !{!13, !30, !31, !32}
!14 = distinct !{!14, !30, !32, !31}
!15 = distinct !{!15, !30, !31, !32}
!16 = distinct !{!16, !30, !32, !31}
!17 = distinct !{!17, !30, !31, !32}
!18 = distinct !{!18, !30, !32, !31}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!"p1 _ZTS21ZL_OperationContext_s", !19, i64 0}
!21 = !{!"", !8, i64 0}
!22 = !{!"p1 omnipotent char", !19, i64 0}
!23 = !{!"", !21, i64 0, !21, i64 4, !8, i64 8, !22, i64 16}
!24 = !{!"", !20, i64 0, !23, i64 8}
!25 = !{!24, !20, i64 0}
!26 = !{!"p1 _ZTS10ZL_Input_s", !19, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!29 = !{!7, !7, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"short", !7, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!8, !8, i64 0}
!36 = !{!"long", !7, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0

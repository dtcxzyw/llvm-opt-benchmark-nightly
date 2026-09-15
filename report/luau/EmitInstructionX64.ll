Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/EmitInstructionX64?download=true
inline.NumInlined: 318
inline.NumDeleted: 17
begin_hunk_0_@_ZN4Luau7CodeGen3X6412emitInstCallERNS1_13IrRegAllocX64ERNS1_18AssemblyBuilderX64ERNS0_13ModuleHelpersEiii:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4Luau7CodeGen3X6416IrCallWrapperX64C1ERNS1_13IrRegAllocX64ERNS1_18AssemblyBuilderX64Ej(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(332), ptr noundef nonnull align 8 dereferenceable(268), i32 noundef) unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248), i8 noundef zeroext, i64, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4Luau7CodeGen3X6416IrCallWrapperX644callERKNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6414emitUpdateBaseERNS1_18AssemblyBuilderX64E(ptr noundef nonnull align 8 dereferenceable(268)) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644testENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268), i64, i64) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268), i8 noundef zeroext, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268), i64, i64) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645movzxENS1_11RegisterX64ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268), i8, i64) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643shlENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268), i64, i64) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643leaENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268), i64, i64) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268), i64, i64) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643addENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268), i64, i64) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jmpERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jmpENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268), i64) local_unnamed_addr #2

declare i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332), i8, i32 noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643subENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268), i64, i64) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268), i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6414emitInstReturnERNS1_18AssemblyBuilderX64ERNS0_13ModuleHelpersEiib(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 4 dereferenceable(56) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.Luau::CodeGen::Label", align 4 ; 6 uses
  %6 = alloca %"struct.Luau::CodeGen::Label", align 4 ; 6 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 272400384, i64 137782657025)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 272400384, i64 34699247617)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %cond = icmp eq i32 %3, 1
  br i1 %cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643leaENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 272400384, i64 -68443406335)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644xor_ENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 269189120, i64 269189120)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jmpERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.b)
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.c = icmp ne i32 %3, 1
  %or.cond = or i1 %i.c, %4
  br i1 %or.cond, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.c, %bb.g
  %i.d = shl i32 %2, 4
  %.sroa.7.0.insert.ext.i = zext i32 %i.d to i64
  %.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.7.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.shift.i, 359956481
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 268795904, i64 %.sroa.0.0.insert.insert.i)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 -68359520255, i64 268795904)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 272400384, i64 276070400)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 269189120, i64 4571824130)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jmpERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.e)
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  %or.cond3 = icmp ult i32 %3, 4
  br i1 %or.cond3, label %.lr.ph.preheader, label %bb.i

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.f = shl nuw nsw i64 %wide.trip.count, 32
  %i.g = or disjoint i64 %i.f, 276856834
  %i.h = shl nuw nsw i32 %3, 4
  %.sroa.5248.0.insert.ext = zext nneg i32 %i.h to i64
  %.sroa.5248.0.insert.shift = shl nuw nsw i64 %.sroa.5248.0.insert.ext, 32
  %.sroa.0244.0.insert.insert = or disjoint i64 %.sroa.5248.0.insert.shift, 276856834
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643addENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 272400384, i64 %.sroa.0244.0.insert.insert)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 269189120, i64 %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jmpERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.i)
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.j = trunc i64 %indvars.iv to i32
  %i.k = add i32 %2, %i.j
  %i.l = shl i32 %i.k, 4
  %.sroa.7.0.insert.ext.i134 = zext i32 %i.l to i64
  %.sroa.7.0.insert.shift.i135 = shl nuw i64 %.sroa.7.0.insert.ext.i134, 32
  %.sroa.0.0.insert.insert.i136 = or disjoint i64 %.sroa.7.0.insert.shift.i135, 359956481
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 268795904, i64 %.sroa.0.0.insert.insert.i136)
  %i.m = shl i64 %indvars.iv, 36
  %.sroa.0259.0.insert.insert = or disjoint i64 %i.m, 356286465
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 %.sroa.0259.0.insert.insert, i64 268795904)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

bb.i:                                             ; preds = %bb.h
  %i.n = shl i32 %2, 4
  %.sroa.7.0.insert.ext.i139 = zext i32 %i.n to i64
  %.sroa.7.0.insert.shift.i140 = shl nuw i64 %.sroa.7.0.insert.ext.i139, 32
  %.sroa.0.0.insert.insert.i141 = or disjoint i64 %.sroa.7.0.insert.shift.i140, 276070401
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643leaENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 268730368, i64 %.sroa.0.0.insert.insert.i141)
  %i.o = icmp eq i32 %3, -1                       ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 269778944, i64 34703441921)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.p = add nsw i32 %3, %2
  %i.q = shl i32 %i.p, 4
  %.sroa.7.0.insert.ext.i143 = zext i32 %i.q to i64
  %.sroa.7.0.insert.shift.i144 = shl nuw i64 %.sroa.7.0.insert.ext.i143, 32
  %.sroa.0.0.insert.insert.i145 = or disjoint i64 %.sroa.7.0.insert.shift.i144, 276070401
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643leaENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 269778944, i64 %.sroa.0.0.insert.insert.i145)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644xor_ENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 269189120, i64 269189120)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  store i32 0, ptr %5, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.r, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  store i32 0, ptr %6, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 -1, ptr %i.s, align 4, !tbaa !11
  br i1 %i.o, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 268730368, i64 269778944)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 noundef zeroext 13, ptr noundef nonnull align 4 dereferenceable(8) %6)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 268795904, i64 352616449)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 356286465, i64 268795904)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643addENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 268730368, i64 68996333570)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643addENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 272400384, i64 68996333570)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643incENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 269189120)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %0, i64 268730368, i64 269778944)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, i8 noundef zeroext 4, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 4 dereferenceable(8) %6)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jmpERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n, %._crit_edge, %bb.f
  ret void
}

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644xor_ENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268), i64, i64) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643incENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268), i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6415emitInstSetListERNS1_13IrRegAllocX64ERNS1_18AssemblyBuilderX64Eiiiji(ptr noundef nonnull align 8 dereferenceable(332) %0, ptr noundef nonnull align 8 dereferenceable(268) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"struct.Luau::CodeGen::Label", align 4 ; 6 uses
  %8 = alloca %"class.Luau::CodeGen::X64::IrCallWrapperX64", align 8 ; 7 uses
  %9 = alloca %"struct.Luau::CodeGen::X64::OperandX64", align 8 ; 4 uses
  %10 = alloca %"struct.Luau::CodeGen::Label", align 4 ; 6 uses
  %11 = alloca %"struct.Luau::CodeGen::Label", align 4 ; 6 uses
  %i.a = add i32 %5, -1                           ; 2 uses
  %i.b = add i32 %i.a, %4                         ; 2 uses
  %i.c = icmp eq i32 %4, -1                       ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 270303232, i64 34703441921)
  %i.d = shl i32 %3, 4
  %.sroa.7.0.insert.ext.i = zext i32 %i.d to i64
  %.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.7.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.shift.i, 276070401
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643leaENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 268730368, i64 %.sroa.0.0.insert.insert.i)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643subENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 270303232, i64 268730368)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 268730368, i64 137782657025)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 268730368, i64 69055315969)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 34703441921, i64 268730368)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 269713408, i64 270237696)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643shrENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 269713408, i64 17456726018)
  %.sroa.5317.0.insert.ext = zext i32 %i.a to i64
  %.sroa.5317.0.insert.shift = shl nuw i64 %.sroa.5317.0.insert.ext, 32
  %.sroa.0313.0.insert.insert = or disjoint i64 %.sroa.5317.0.insert.shift, 276856834
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643addENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 269713408, i64 %.sroa.0313.0.insert.insert)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0384.0 = phi i64 [ 0, %bb.b ], [ 2, %bb.a ]
  %.sroa.9.0 = phi i8 [ 19, %bb.b ], [ -128, %bb.a ] ; 2 uses
  %.sroa.12431.0 = phi i32 [ 0, %bb.b ], [ %i.b, %bb.a ]
  %i.e = tail call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %0, i8 4, i32 noundef -1) ; 2 uses
  %i.f = shl i32 %2, 4
  %.sroa.7.0.insert.ext.i163 = zext i32 %i.f to i64
  %.sroa.7.0.insert.shift.i164 = shl nuw i64 %.sroa.7.0.insert.ext.i163, 32
  %.sroa.0.0.insert.insert.i165 = or disjoint i64 %.sroa.7.0.insert.shift.i164, 343179265 ; 2 uses
  %.sroa.3310.0.insert.ext = zext i8 %i.e to i64
  %.sroa.3310.0.insert.shift = shl nuw nsw i64 %.sroa.3310.0.insert.ext, 16 ; 3 uses
  %.sroa.2309.0.insert.insert = or disjoint i64 %.sroa.3310.0.insert.shift, 268468224 ; 2 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 %.sroa.2309.0.insert.insert, i64 %.sroa.0.0.insert.insert.i165)
  %i.g = icmp slt i32 %6, 0
  %i.h = icmp slt i32 %6, %i.b
  %i.i = or i1 %i.g, %i.h
  %or.cond159 = or i1 %i.c, %i.i
  br i1 %or.cond159, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  store i32 0, ptr %7, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 -1, ptr %i.j, align 4, !tbaa !11
  %.sroa.0304.0.insert.insert = or disjoint i64 %.sroa.3310.0.insert.shift, 34678538241
  %.sroa.12431.0.insert.ext432 = zext i32 %.sroa.12431.0 to i64
  %.sroa.12431.0.insert.shift433 = shl nuw i64 %.sroa.12431.0.insert.ext432, 32
  %.sroa.9.0.insert.ext407 = zext i8 %.sroa.9.0 to i64
  %.sroa.9.0.insert.shift408 = shl nuw nsw i64 %.sroa.9.0.insert.ext407, 16
  %.sroa.11.0.insert.insert422 = or disjoint i64 %.sroa.12431.0.insert.shift433, %.sroa.9.0.insert.shift408
  %.sroa.8394.0.insert.insert398 = or disjoint i64 %.sroa.11.0.insert.insert422, %.sroa.0384.0
  %.sroa.0384.0.insert.insert387 = or disjoint i64 %.sroa.8394.0.insert.insert398, 268468224 ; 2 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 %.sroa.0304.0.insert.insert, i64 %.sroa.0384.0.insert.insert387)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, i8 noundef zeroext 13, ptr noundef nonnull align 4 dereferenceable(8) %7)
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %0, i8 %.sroa.9.0, i32 noundef -1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #3
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX64C1ERNS1_13IrRegAllocX64ERNS1_18AssemblyBuilderX64Ej(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef nonnull align 8 dereferenceable(332) %0, ptr noundef nonnull align 8 dereferenceable(268) %1, i32 noundef -1)
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %8, i8 noundef zeroext 4, i64 276594688, i32 0)
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %8, i8 noundef zeroext 4, i64 %.sroa.2309.0.insert.insert, i32 0)
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %8, i8 noundef zeroext 3, i64 %.sroa.0384.0.insert.insert387, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #3
  store i64 687537422337, ptr %9, align 8
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX644callERKNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  %i.l = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %0, i8 4, i32 noundef -1) ; 2 uses
  %.sroa.3284.0.insert.ext = zext i8 %i.l to i64
  %.sroa.3284.0.insert.shift = shl nuw nsw i64 %.sroa.3284.0.insert.ext, 16 ; 2 uses
  %.sroa.2283.0.insert.insert = or disjoint i64 %.sroa.3284.0.insert.shift, 268468224
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 %.sroa.2283.0.insert.insert, i64 %.sroa.0.0.insert.insert.i165)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.sroa.3.0.insert.shift.i173.pre-phi = phi i64 [ %.sroa.3310.0.insert.shift, %bb.c ], [ %.sroa.3284.0.insert.shift, %bb.f ]
  %.sroa.060.0 = phi i8 [ %i.e, %bb.c ], [ %i.l, %bb.f ]
  %.sroa.0273.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift.i173.pre-phi, 103414792193
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 269778944, i64 %.sroa.0273.0.insert.insert)
  %12 = icmp ne i32 %4, -1
  %i.m = icmp slt i32 %4, 5
  %or.cond3 = and i1 %12, %i.m
  br i1 %or.cond3, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.g
  %i.n = icmp sgt i32 %4, 0
  br i1 %i.n, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.o = trunc i64 %indvars.iv to i32
  %i.p = add i32 %3, %i.o
  %i.q = shl i32 %i.p, 4
  %.sroa.7.0.insert.ext.i177 = zext i32 %i.q to i64
  %.sroa.7.0.insert.shift.i178 = shl nuw i64 %.sroa.7.0.insert.ext.i177, 32
  %.sroa.0.0.insert.insert.i179 = or disjoint i64 %.sroa.7.0.insert.shift.i178, 343179265
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 268795904, i64 %.sroa.0.0.insert.insert.i179)
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = add i32 %5, %i.r
  %i.t = shl i32 %i.s, 4
  %i.u = add i32 %i.t, -16
  %.sroa.7267.0.insert.ext = zext i32 %i.u to i64
  %.sroa.7267.0.insert.shift = shl nuw i64 %.sroa.7267.0.insert.ext, 32
  %.sroa.0264.0.insert.insert = or disjoint i64 %.sroa.7267.0.insert.shift, 353665025
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 %.sroa.0264.0.insert.insert, i64 268795904)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !22

bb.h:                                             ; preds = %bb.g
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644xor_ENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 269254656, i64 269254656)
  %.not = icmp eq i32 %5, 1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = shl i32 %5, 4
  %i.w = add i32 %i.v, -16
  %.sroa.5243.0.insert.ext = zext i32 %i.w to i64
  %.sroa.5243.0.insert.shift = shl nuw i64 %.sroa.5243.0.insert.ext, 32
  %.sroa.0239.0.insert.insert = or disjoint i64 %.sroa.5243.0.insert.shift, 276856834
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643addENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 269778944, i64 %.sroa.0239.0.insert.insert)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #3
  store i32 0, ptr %10, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 -1, ptr %i.x, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #3
  store i32 0, ptr %11, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 -1, ptr %i.y, align 4, !tbaa !11
  br i1 %i.c, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = shl i32 %4, 4
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw i64 %i.aa, 32
  %i.ac = or disjoint i64 %i.ab, 276856834
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 269254656, i64 270303232)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, i8 noundef zeroext 13, ptr noundef nonnull align 4 dereferenceable(8) %11)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.12.0452 = phi i64 [ 270303232, %bb.l ], [ %i.ac, %bb.k ]
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, ptr noundef nonnull align 4 dereferenceable(8) %10)
  %i.ad = shl i32 %3, 4
  %.sroa.21.0.insert.ext.i = zext i32 %i.ad to i64
  %.sroa.21.0.insert.shift.i = shl nuw i64 %.sroa.21.0.insert.ext.i, 32
  %.sroa.0205.0.insert.insert = or disjoint i64 %.sroa.21.0.insert.shift.i, 353137665
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 268795904, i64 %.sroa.0205.0.insert.insert)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 353113089, i64 268795904)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643addENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 269254656, i64 68996333570)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 269254656, i64 %.sroa.12.0452)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, i8 noundef zeroext 4, ptr noundef nonnull align 4 dereferenceable(8) %10)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, ptr noundef nonnull align 4 dereferenceable(8) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #3
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.m
  call void @_ZN4Luau7CodeGen3X6420callBarrierTableFastERNS1_13IrRegAllocX64ERNS1_18AssemblyBuilderX64ENS1_11RegisterX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(332) %0, ptr noundef nonnull align 8 dereferenceable(268) %1, i8 %.sroa.060.0, i32 0)
  ret void
}

declare void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643shrENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268), i64, i64) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3X6420callBarrierTableFastERNS1_13IrRegAllocX64ERNS1_18AssemblyBuilderX64ENS1_11RegisterX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(332), ptr noundef nonnull align 8 dereferenceable(268), i8, i32) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3X6416emitInstForGLoopERNS1_13IrRegAllocX64ERNS1_18AssemblyBuilderX64EiiRNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(332) %0, ptr noundef nonnull align 8 dereferenceable(268) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(8) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"struct.Luau::CodeGen::Label", align 4 ; 6 uses
  %6 = alloca %"struct.Luau::CodeGen::Label", align 4 ; 6 uses
  %7 = alloca %"struct.Luau::CodeGen::Label", align 8 ; 4 uses
  %8 = alloca %"class.Luau::CodeGen::X64::IrCallWrapperX64", align 8 ; 8 uses
  %9 = alloca %"struct.Luau::CodeGen::X64::OperandX64", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4Luau7CodeGen3X6416IrCallWrapperX6423suggestArgumentRegisterILm1EEENS1_11RegisterX64ENS1_7SizeX64ERNS1_18AssemblyBuilderX64E(i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(268) %1) ; 2 uses
  %i.b = tail call i8 @_ZN4Luau7CodeGen3X6416IrCallWrapperX6423suggestArgumentRegisterILm2EEENS1_11RegisterX64ENS1_7SizeX64ERNS1_18AssemblyBuilderX64E(i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(268) %1) ; 3 uses
  %i.c = shl i32 %2, 4                            ; 5 uses
  %i.d = add i32 %i.c, 16
  %.sroa.7.0.insert.ext.i = zext i32 %i.d to i64
  %.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.7.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.shift.i, 343179265
  %.sroa.3265.0.insert.ext = zext i8 %i.a to i64
  %.sroa.3265.0.insert.shift = shl nuw nsw i64 %.sroa.3265.0.insert.ext, 16 ; 3 uses
  %.sroa.2264.0.insert.insert = or disjoint i64 %.sroa.3265.0.insert.shift, 268468224 ; 2 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 %.sroa.2264.0.insert.insert, i64 %.sroa.0.0.insert.insert.i)
  %i.e = add i32 %i.c, 32
  %.sroa.7.0.insert.ext.i106 = zext i32 %i.e to i64
  %.sroa.7.0.insert.shift.i107 = shl nuw i64 %.sroa.7.0.insert.ext.i106, 32
  %.sroa.0.0.insert.insert.i108 = or disjoint i64 %.sroa.7.0.insert.shift.i107, 343179265 ; 2 uses
  %.sroa.3260.0.insert.ext = zext i8 %i.b to i64
  %.sroa.3260.0.insert.shift = shl nuw nsw i64 %.sroa.3260.0.insert.ext, 16
  %.sroa.2259.0.insert.insert = or disjoint i64 %.sroa.3260.0.insert.shift, 268468224 ; 4 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 %.sroa.2259.0.insert.insert, i64 %.sroa.0.0.insert.insert.i108)
  %i.f = and i8 %i.b, -8
  %i.g = or disjoint i8 %i.f, 3
  %.sroa.3250.0.insert.ext = zext i8 %i.g to i64
  %.sroa.3250.0.insert.shift = shl nuw nsw i64 %.sroa.3250.0.insert.ext, 16
  %.sroa.2249.0.insert.insert = or disjoint i64 %.sroa.3250.0.insert.shift, 268468224 ; 3 uses
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 268664832, i64 %.sroa.2249.0.insert.insert)
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643shlENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 268664832, i64 17456726018)
  %.sroa.0229.0.insert.insert = or disjoint i64 %.sroa.3265.0.insert.shift, 103414792193
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643addENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 268730368, i64 %.sroa.0229.0.insert.insert)
  %i.h = icmp sgt i32 %3, 2
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = add nsw i32 %2, 3
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  store i32 0, ptr %5, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -1, ptr %i.j, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  store i32 0, ptr %6, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 -1, ptr %i.k, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.l = tail call i64 @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelEv(ptr noundef nonnull align 8 dereferenceable(268) %1)
  store i64 %i.l, ptr %7, align 8
  %.sroa.0215.0.insert.insert = or disjoint i64 %.sroa.3265.0.insert.shift, 34678538241
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 %.sroa.2249.0.insert.insert, i64 %.sroa.0215.0.insert.insert)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, i8 noundef zeroext 13, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643incENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 %.sroa.2259.0.insert.insert)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643cmpENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 51858669569, i64 276856834)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, i8 noundef zeroext 8, ptr noundef nonnull align 4 dereferenceable(8) %6)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 %.sroa.0.0.insert.insert.i108, i64 %.sroa.2259.0.insert.insert)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX649vcvtsi2sdENS1_10OperandX64ES3_S3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 268795904, i64 268795904, i64 %.sroa.2249.0.insert.insert)
  %i.m = add i32 %i.c, 48                         ; 2 uses
  %.sroa.7.0.insert.ext.i119 = zext i32 %i.m to i64
  %.sroa.7.0.insert.shift.i120 = shl nuw i64 %.sroa.7.0.insert.ext.i119, 32
  %.sroa.0.0.insert.insert.i121 = or disjoint i64 %.sroa.7.0.insert.shift.i120, 343179265
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646vmovsdENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 %.sroa.0.0.insert.insert.i121, i64 268795904)
  %i.n = or disjoint i32 %i.m, 12
  %.sroa.21.0.insert.ext.i.i = zext i32 %i.n to i64
  %.sroa.21.0.insert.shift.i.i = shl nuw i64 %.sroa.21.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.insert.i122 = or disjoint i64 %.sroa.21.0.insert.shift.i.i, 326402049
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 %.sroa.0.0.insert.insert.i122, i64 13161758722)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 269844480, i64 352616449)
  %i.o = add i32 %i.c, 64
  %.sroa.7.0.insert.ext.i.i = zext i32 %i.o to i64
  %.sroa.7.0.insert.shift.i.i = shl nuw i64 %.sroa.7.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.7.0.insert.shift.i.i, 359956481
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 %.sroa.0.0.insert.insert.i.i, i64 269844480)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jmpERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, ptr noundef nonnull align 4 dereferenceable(8) %6)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643addENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 268730368, i64 68996333570)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jmpERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.p = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %0, i8 %i.a, i32 noundef -1) ; 0 uses
  %i.q = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %0, i8 %i.b, i32 noundef -1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #3
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX64C1ERNS1_13IrRegAllocX64ERNS1_18AssemblyBuilderX64Ej(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef nonnull align 8 dereferenceable(332) %0, ptr noundef nonnull align 8 dereferenceable(268) %1, i32 noundef -1)
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %8, i8 noundef zeroext 4, i64 276594688, i32 0)
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %8, i8 noundef zeroext 4, i64 %.sroa.2264.0.insert.insert, i32 0)
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %8, i8 noundef zeroext 4, i64 %.sroa.2259.0.insert.insert, i32 0)
  %.sroa.7.0.insert.ext.i124 = zext i32 %i.c to i64
  %.sroa.7.0.insert.shift.i125 = shl nuw i64 %.sroa.7.0.insert.ext.i124, 32
  %.sroa.0.0.insert.insert.i126 = or disjoint i64 %.sroa.7.0.insert.shift.i125, 276070401
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %8, i8 noundef zeroext 4, i64 %.sroa.0.0.insert.insert.i126, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #3
  store i64 1787049050113, ptr %9, align 8
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX644callERKNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX644testENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %1, i64 268533760, i64 268533760)
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643jccENS0_12ConditionX64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(268) %1, i8 noundef zeroext 23, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #3
end_hunk_0

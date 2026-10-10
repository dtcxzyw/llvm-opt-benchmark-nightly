Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrLoweringA64?download=true
inline.NumInlined: 1877
inline.NumDeleted: 210
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau7CodeGen3A6413IrLoweringA6414finishFunctionEv:bb.a
  %.sroa.020.034 = phi ptr [ %i.ar, %.lr.ph35 ], [ %i.br, %bb.p ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.020.034, i64 8 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !264
  %i.bi = icmp eq i32 %i.bh, 268435455
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !69, !nonnull !70, !align !71
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA648setLabelERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.bj, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.020.034)
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4Luau7CodeGen3A6413IrLoweringA6426allocAndIncrementCounterAtENS0_14CodeGenCounterEj(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 noundef 3, i32 noundef -1)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !264
  tail call void @_ZN4Luau7CodeGen3A6413IrLoweringA6426allocAndIncrementCounterAtENS0_14CodeGenCounterEj(ptr noundef nonnull align 8 dereferenceable(2609) %0, i32 noundef 3, i32 noundef %i.bk)
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !69, !nonnull !70, !align !71
  %i.bm = load i32, ptr %i.bg, align 4, !tbaa !264
  %i.bn = shl i32 %i.bm, 2
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643movENS1_11RegisterA64Ei(ptr noundef nonnull align 8 dereferenceable(184) %i.bl, i8 2, i32 noundef %i.bn)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink46 = phi i64 [ 24, %bb.o ], [ 16, %bb.n ]
  %i.bo = load ptr, ptr %i.au, align 8, !tbaa !69, !nonnull !70, !align !71
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !110, !nonnull !70, !align !111
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sink46
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA641bERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184) %i.bo, ptr noundef nonnull align 4 dereferenceable(8) %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.020.034, i64 12 ; 2 uses
  %.not30 = icmp eq ptr %i.br, %i.at
  br i1 %.not30, label %._crit_edge36, label %bb.m

bb.q:                                             ; preds = %._crit_edge36
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !51, !range !104, !noundef !70
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 36 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !273
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !273
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !274, !range !104, !noundef !70
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !275
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !275
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %._crit_edge36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau7CodeGen10LogBuilder12formatAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ...) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4Luau13vformatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA649logAppendEPKcz(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643adrENS1_11RegisterA64ERNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(184), i8, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643udfEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4Luau7CodeGen3A6413IrLoweringA648hasErrorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2609) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !104, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.e = load i8, ptr %i.d, align 4, !range !104
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  ret i1 %i.g
}

declare void @_ZN4Luau7CodeGen3A6413IrRegAllocA6420recordAndFreeLastUseEjRNS0_6IrInstEj(ptr noundef nonnull align 8 dereferenceable(389), i32 noundef, ptr noundef nonnull align 8 dereferenceable(59), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen3A6413IrLoweringA6418incrementCounterAtEm(ptr noundef nonnull align 8 dereferenceable(2609) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = tail call i8 @_ZN4Luau7CodeGen3A6413IrRegAllocA649allocTempENS1_7KindA64E(ptr noundef nonnull align 8 dereferenceable(389) %i.a, i8 noundef zeroext 2) ; 10 uses
  %i.c = tail call i8 @_ZN4Luau7CodeGen3A6413IrRegAllocA649allocTempENS1_7KindA64E(ptr noundef nonnull align 8 dereferenceable(389) %i.a, i8 noundef zeroext 2) ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69, !nonnull !70, !align !71
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.e, i8 %i.b, i64 103095646721)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !69, !nonnull !70, !align !71
  %.sroa.234.0.insert.ext = zext i8 %i.b to i64
  %.sroa.234.0.insert.shift = shl nuw nsw i64 %.sroa.234.0.insert.ext, 8
  %.sroa.033.0.insert.insert = or disjoint i64 %.sroa.234.0.insert.shift, 171815075841
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.f, i8 %i.b, i64 %.sroa.033.0.insert.insert)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !69, !nonnull !70, !align !71 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72, !nonnull !70, !align !71
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 520
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !276
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !285
  %i.n = zext i32 %i.m to i64
  %i.o = add i64 %1, %i.n
  %i.p = shl i64 %i.o, 2                          ; 3 uses
  %i.q = icmp ult i64 %i.p, 4096
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i64 %i.p to i16
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643addENS1_11RegisterA64ES3_t(ptr noundef nonnull align 8 dereferenceable(184) %i.g, i8 %i.c, i8 %i.b, i16 noundef zeroext %i.r)
  br label %_ZN4Luau7CodeGen3A64L13emitAddOffsetERNS1_18AssemblyBuilderA64ENS1_11RegisterA64ES4_m.exit

bb.c:                                             ; preds = %bb.a
  %i.s = trunc i64 %i.p to i32
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643movENS1_11RegisterA64Ei(ptr noundef nonnull align 8 dereferenceable(184) %i.g, i8 %i.c, i32 noundef %i.s)
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643addENS1_11RegisterA64ES3_S3_i(ptr noundef nonnull align 8 dereferenceable(184) %i.g, i8 %i.c, i8 %i.c, i8 %i.b, i32 noundef 0)
  br label %_ZN4Luau7CodeGen3A64L13emitAddOffsetERNS1_18AssemblyBuilderA64ENS1_11RegisterA64ES4_m.exit

_ZN4Luau7CodeGen3A64L13emitAddOffsetERNS1_18AssemblyBuilderA64ENS1_11RegisterA64ES4_m.exit: ; preds = %bb.b, %bb.c
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !69, !nonnull !70, !align !71
  %.sroa.229.0.insert.ext = zext i8 %i.c to i64
  %.sroa.229.0.insert.shift = shl nuw nsw i64 %.sroa.229.0.insert.ext, 8
  %.sroa.028.0.insert.insert = or disjoint i64 %.sroa.229.0.insert.shift, 16384001 ; 2 uses
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643ldrENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.t, i8 %i.b, i64 %.sroa.028.0.insert.insert)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !69, !nonnull !70, !align !71
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643addENS1_11RegisterA64ES3_t(ptr noundef nonnull align 8 dereferenceable(184) %i.u, i8 %i.b, i8 %i.b, i16 noundef zeroext 1)
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !69, !nonnull !70, !align !71
  tail call void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643strENS1_11RegisterA64ENS1_10AddressA64E(ptr noundef nonnull align 8 dereferenceable(184) %i.v, i8 %i.b, i64 %.sroa.028.0.insert.insert)
  tail call void @_ZN4Luau7CodeGen3A6413IrRegAllocA648freeTempENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(389) %i.a, i8 %i.b)
  tail call void @_ZN4Luau7CodeGen3A6413IrRegAllocA648freeTempENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(389) %i.a, i8 %i.c)
  ret void
}

declare void @_ZN4Luau7CodeGen3A6413IrRegAllocA648freeTempENS1_11RegisterA64E(ptr noundef nonnull align 8 dereferenceable(389), i8) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4Luau7CodeGen3A6418AssemblyBuilderA6419isFmovSupportedFp64Ed(double noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644movzENS1_11RegisterA64Eti(ptr noundef nonnull align 8 dereferenceable(184), i8, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644movkENS1_11RegisterA64Eti(ptr noundef nonnull align 8 dereferenceable(184), i8, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643adrENS1_11RegisterA64Ed(ptr noundef nonnull align 8 dereferenceable(184), i8, double noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA643adrENS1_11RegisterA64Ef(ptr noundef nonnull align 8 dereferenceable(184), i8, float noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6418AssemblyBuilderA644movnENS1_11RegisterA64Eti(ptr noundef nonnull align 8 dereferenceable(184), i8, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN4Luau7CodeGen3A6413IrRegAllocA6410restoreRegERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(389), ptr noundef nonnull align 8 dereferenceable(59)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZN4Luau7CodeGen3A6413IrLoweringA64C1EPNS0_10LogBuilderERNS1_18AssemblyBuilderA64ERNS0_13ModuleHelpersERNS0_10IrFunctionEPNS0_13LoweringStatsEEN3$_08__invokeEPvRNS0_6IrInstE"(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(59) %1) #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4Luau7CodeGen3A6413IrRegAllocA6410restoreRegERNS0_6IrInstE(ptr noundef nonnull align 8 dereferenceable(389) %i.a, ptr noundef nonnull align 8 dereferenceable(59) %1)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = icmp ugt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !290  ; 3 uses
  %i.f = icmp ugt i32 %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i32 %i.e, 1
  %i.h = add i32 %i.g, %i.e                       ; 2 uses
  %i.i = icmp ugt i32 %i.h, %1
  %i.j = add i32 %1, 4
  %.09.i = select i1 %i.i, i32 %i.h, i32 %i.j     ; 2 uses
  %i.k = zext i32 %.09.i to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #19 ; 5 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !68     ; 7 uses
  %i.o = load i32, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.p = zext i32 %i.o to i64
  %.idx.i = shl nuw nsw i64 %i.p, 2               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %.not11.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %2 = ptrtoaddr ptr %i.n to i64
  %3 = ptrtoaddr ptr %i.m to i64
  %i.r = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 44
  %4 = sub i64 %2, %3
  %diff.check = icmp ugt i64 %4, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.m, i64 %i.u
  %i.w = getelementptr i8, ptr %i.n, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.x ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.n, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep20, align 4, !tbaa !48
  %wide.load21 = load <4 x i32>, ptr %i.y, align 4, !tbaa !48
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !48
  store <4 x i32> %wide.load21, ptr %i.z, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.preheader23

.lr.ph.i.i.i.i.i.preheader23:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.preheader ], [ %i.v, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader23, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader23 ] ; 2 uses
  %i.ab = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !48
  store i32 %i.ab, ptr %.013.i.i.i.i.i, align 4, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !287

_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i = icmp eq ptr %i.n, %i.ae
  br i1 %.not.i, label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i
  tail call void @_ZdlPv(ptr noundef %i.n) #15
  %.pre.pre = load i32, ptr %i.a, align 8, !tbaa !67
  br label %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit

_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit: ; preds = %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i, %bb.d
  %.pre = phi i32 [ %i.o, %_ZSt18uninitialized_moveIPN4Luau7CodeGen4IrOpES3_ET0_T_S5_S4_.exit.i ], [ %.pre.pre, %bb.d ]
  store ptr %i.m, ptr %0, align 8, !tbaa !68
  store i32 %.09.i, ptr %i.d, align 4, !tbaa !290
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit, %bb.b
  %i.af = phi i32 [ %.pre, %_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE4growEj.exit ], [ %i.b, %bb.b ] ; 2 uses
  %i.ag = icmp ult i32 %i.af, %1
  br i1 %i.ag, label %.lr.ph13.preheader, label %.loopexit

.lr.ph13.preheader:                               ; preds = %bb.e
  %i.ah = zext i32 %i.af to i64                   ; 4 uses
  %wide.trip.count = zext i32 %1 to i64           ; 3 uses
  %i.ai = sub nsw i64 %wide.trip.count, %i.ah
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph13.prol.loopexit, label %.lr.ph13.prol

.lr.ph13.prol:                                    ; preds = %.lr.ph13.preheader, %.lr.ph13.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph13.prol ], [ %i.ah, %.lr.ph13.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph13.prol ], [ 0, %.lr.ph13.preheader ]
  %i.aj = load ptr, ptr %0, align 8, !tbaa !68
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.prol
  store i32 0, ptr %i.ak, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph13.prol.loopexit, label %.lr.ph13.prol, !llvm.loop !288

.lr.ph13.prol.loopexit:                           ; preds = %.lr.ph13.prol, %.lr.ph13.preheader
  %indvars.iv.unr = phi i64 [ %i.ah, %.lr.ph13.preheader ], [ %indvars.iv.next.prol, %.lr.ph13.prol ]
  %i.al = sub nsw i64 %i.ah, %wide.trip.count
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %.loopexit, label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13.prol.loopexit, %.lr.ph13
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph13 ], [ %indvars.iv.unr, %.lr.ph13.prol.loopexit ] ; 5 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store i32 0, ptr %i.ao, align 4
  %i.ap = load ptr, ptr %0, align 8, !tbaa !68
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 0, ptr %i.ar, align 4
  %i.as = load ptr, ptr %0, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.au, align 4
  %i.av = load ptr, ptr %0, align 8, !tbaa !68
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.ax, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph13, !llvm.loop !289

.loopexit:                                        ; preds = %.lr.ph13.prol.loopexit, %.lr.ph13, %bb.a, %bb.e
  store i32 %1, ptr %i.a, align 8, !tbaa !67
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

declare void @_ZN4Luau13vformatAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(30) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !181  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !103  ; 3 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i64 %spec.select, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #19 ; 4 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !103  ; 3 uses
  %min.iters.check = icmp ult i64 %spec.select, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %spec.select, -4               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 0, i32 3> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %interleaved.vec, ptr %i.j, align 4, !tbaa !103
  store <4 x i32> %interleaved.vec, ptr %i.l, align 4, !tbaa !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b, %middle.block
  %.07.i.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  store i32 %i.i, ptr %i.n, align 4, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !103
  %i.p = add nuw i64 %.07.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.p, %spec.select
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !293

_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit: ; preds = %.lr.ph.i.i, %middle.block
  %.pre = load i64, ptr %i.a, align 8, !tbaa !181
  br label %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit

_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit, %bb.a
  %i.q = phi i32 [ %i.f, %bb.a ], [ %i.i, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit ]
  %i.r = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit.loopexit ] ; 6 uses
  %.not = icmp eq i64 %i.r, 0
  %.pre29 = load ptr, ptr %0, align 8, !tbaa !295 ; 3 uses
  br i1 %.not, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit
  %i.s = add i64 %spec.select, -1                 ; 3 uses
  br label %bb.d

._crit_edge27:                                    ; preds = %_ZN4Luau6detail14DenseHashTableIjSt4pairIjjES2_IKjjENS0_16ItemInterfaceMapIjjEESt4hashIjESt8equal_toIjEEC2ERS4_m.exit
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!87 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !86, i64 0}
!88 = !{!"_ZTSSt6vectorIjSaIjEE", !87, i64 0}
!89 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !79, i64 0}
!90 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !89, i64 0, !22, i64 8, !6, i64 16}
!91 = !{!"p1 _ZTSN4Luau7CodeGen3A6418AssemblyBuilderA645PatchE", !10, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIN4Luau7CodeGen3A6418AssemblyBuilderA645PatchESaIS4_EE", !94, i64 0}
!96 = !{!"_ZTSN4Luau7CodeGen3A6418AssemblyBuilderA64E", !83, i64 0, !88, i64 24, !90, i64 48, !28, i64 80, !7, i64 84, !11, i64 88, !7, i64 96, !95, i64 104, !88, i64 128, !28, i64 152, !28, i64 153, !22, i64 160, !84, i64 168, !84, i64 176}
!97 = !{!"p1 _ZTSN4Luau7CodeGen7IrBlockE", !10, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrBlockESaIS2_EE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!99 = !{!98, !97, i64 0}
!100 = !{!"_ZTSN4Luau7CodeGen11IrBlockKindE", !6, i64 0}
!101 = !{!"_ZTSN4Luau7CodeGen7IrBlockE", !100, i64 0, !6, i64 1, !61, i64 2, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !76, i64 28}
!102 = !{!101, !7, i64 4}
!103 = !{!7, !7, i64 0}
!104 = !{i8 0, i8 2}
!105 = !{!"p1 _ZTSN4Luau6FValueIbEE", !10, i64 0}
!106 = !{!"_ZTSN4Luau6FValueIbEE", !28, i64 0, !28, i64 1, !79, i64 8, !105, i64 16, !7, i64 24}
!107 = !{!106, !28, i64 0}
!108 = !{!"_ZTSN4Luau7CodeGen3A6413IrLoweringA6416InterruptHandlerE", !76, i64 0, !7, i64 8, !76, i64 12}
!109 = !{!108, !7, i64 8}
!110 = !{!45, !13, i64 16}
!111 = !{i64 4}
!112 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrBlockESaIS2_EE12_Vector_implE", !98, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen7IrBlockESaIS2_EE", !112, i64 0}
!114 = !{!"_ZTSSt6vectorIN4Luau7CodeGen7IrBlockESaIS2_EE", !113, i64 0}
!115 = !{!"p1 _ZTSN4Luau7CodeGen6IrInstE", !10, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE12_Vector_implE", !116, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen6IrInstESaIS2_EE", !117, i64 0}
!119 = !{!"_ZTSSt6vectorIN4Luau7CodeGen6IrInstESaIS2_EE", !118, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen7IrConstESaIS2_EE12_Vector_implE", !74, i64 0}
!121 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen7IrConstESaIS2_EE", !120, i64 0}
!122 = !{!"_ZTSSt6vectorIN4Luau7CodeGen7IrConstESaIS2_EE", !121, i64 0}
!123 = !{!"p1 _ZTSN4Luau7CodeGen13BytecodeBlockE", !10, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BytecodeBlockESaIS2_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!125 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BytecodeBlockESaIS2_EE12_Vector_implE", !124, i64 0}
!126 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13BytecodeBlockESaIS2_EE", !125, i64 0}
!127 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13BytecodeBlockESaIS2_EE", !126, i64 0}
!128 = !{!"p1 _ZTSN4Luau7CodeGen13BytecodeTypesE", !10, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BytecodeTypesESaIS2_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!130 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BytecodeTypesESaIS2_EE12_Vector_implE", !129, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13BytecodeTypesESaIS2_EE", !130, i64 0}
!132 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13BytecodeTypesESaIS2_EE", !131, i64 0}
!133 = !{!"p1 _ZTSN4Luau7CodeGen15BytecodeMappingE", !10, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen15BytecodeMappingESaIS2_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen15BytecodeMappingESaIS2_EE12_Vector_implE", !134, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen15BytecodeMappingESaIS2_EE", !135, i64 0}
!137 = !{!"_ZTSSt6vectorIN4Luau7CodeGen15BytecodeMappingESaIS2_EE", !136, i64 0}
!138 = !{!"p1 _ZTSN4Luau7CodeGen20ValueRestoreLocationE", !10, i64 0}
!139 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!140 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE12_Vector_implE", !139, i64 0}
!141 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE", !140, i64 0}
!142 = !{!"_ZTSSt6vectorIN4Luau7CodeGen20ValueRestoreLocationESaIS2_EE", !141, i64 0}
!143 = !{!"p1 _ZTSSt4pairIjN4Luau7CodeGen17StoreLocationHintEE", !10, i64 0}
!144 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen17StoreLocationHintEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEEE", !143, i64 0, !22, i64 8, !22, i64 16, !7, i64 24, !24, i64 28, !25, i64 29}
!145 = !{!"_ZTSN4Luau12DenseHashMapIjNS_7CodeGen17StoreLocationHintESt4hashIjESt8equal_toIjEEE", !144, i64 0}
!146 = !{!"p1 _ZTSSt4pairIjN4Luau7CodeGen14VmExitSyncInfoEE", !10, i64 0}
!147 = !{!"_ZTSN4Luau6detail14DenseHashTableIjSt4pairIjNS_7CodeGen14VmExitSyncInfoEES2_IKjS4_ENS0_16ItemInterfaceMapIjS4_EESt4hashIjESt8equal_toIjEEE", !146, i64 0, !22, i64 8, !22, i64 16, !7, i64 24, !24, i64 28, !25, i64 29}
!148 = !{!"_ZTSN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEEE", !147, i64 0}
!149 = !{!"p1 _ZTSN4Luau7CodeGen19BytecodeRegTypeInfoE", !10, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE17_Vector_impl_dataE", !149, i64 0, !149, i64 8, !149, i64 16}
!151 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE12_Vector_implE", !150, i64 0}
!152 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE", !151, i64 0}
!153 = !{!"_ZTSSt6vectorIN4Luau7CodeGen19BytecodeRegTypeInfoESaIS2_EE", !152, i64 0}
!154 = !{!"_ZTSN4Luau7CodeGen16BytecodeTypeInfoE", !83, i64 0, !153, i64 24, !83, i64 48, !88, i64 72}
!155 = !{!"p1 _ZTS5Proto", !10, i64 0}
!156 = !{!"p1 _ZTSN4Luau7CodeGen13BlockOrderingE", !10, i64 0}
!157 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BlockOrderingESaIS2_EE17_Vector_impl_dataE", !156, i64 0, !156, i64 8, !156, i64 16}
!158 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13BlockOrderingESaIS2_EE12_Vector_implE", !157, i64 0}
!159 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13BlockOrderingESaIS2_EE", !158, i64 0}
!160 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13BlockOrderingESaIS2_EE", !159, i64 0}
!161 = !{!"p1 _ZTSN4Luau7CodeGen11RegisterSetE", !10, i64 0}
!162 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE17_Vector_impl_dataE", !161, i64 0, !161, i64 8, !161, i64 16}
!163 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE12_Vector_implE", !162, i64 0}
!164 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen11RegisterSetESaIS2_EE", !163, i64 0}
!165 = !{!"_ZTSSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE", !164, i64 0}
!166 = !{!"_ZTSSt12_Base_bitsetILm4EE", !6, i64 0}
!167 = !{!"_ZTSSt6bitsetILm256EE", !166, i64 0}
!168 = !{!"_ZTSN4Luau7CodeGen11RegisterSetE", !167, i64 0, !28, i64 32, !6, i64 33}
!169 = !{!"_ZTSN4Luau7CodeGen7CfgInfoE", !88, i64 0, !88, i64 24, !88, i64 48, !88, i64 72, !88, i64 96, !88, i64 120, !88, i64 144, !160, i64 168, !165, i64 192, !165, i64 216, !165, i64 240, !168, i64 264, !168, i64 304}
!170 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !10, i64 0}
!171 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE17_Vector_impl_dataE", !170, i64 0, !170, i64 8, !170, i64 16}
!172 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE12_Vector_implE", !171, i64 0}
!173 = !{!"_ZTSSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE", !172, i64 0}
!174 = !{!"_ZTSSt6vectorIS_IhSaIhEESaIS1_EE", !173, i64 0}
!175 = !{!"_ZTSN4Luau7CodeGen10IrFunctionE", !114, i64 0, !119, i64 24, !122, i64 48, !127, i64 72, !132, i64 96, !137, i64 120, !7, i64 144, !7, i64 148, !7, i64 152, !88, i64 160, !142, i64 184, !88, i64 208, !145, i64 232, !148, i64 264, !44, i64 296, !154, i64 328, !154, i64 424, !155, i64 520, !28, i64 528, !169, i64 536, !15, i64 880, !28, i64 888, !22, i64 896, !174, i64 904}
!176 = !{!"_ZTSN4Luau7CodeGen11IrConstKindE", !6, i64 0}
!177 = !{!176, !176, i64 0}
!178 = !{!116, !115, i64 0}
!179 = !{!66, !28, i64 57}
!180 = !{!43, !22, i64 16}
!181 = !{!43, !22, i64 8}
!182 = !{!101, !100, i64 0}
!183 = !{!"_ZTSSt4pairIjjE", !7, i64 0, !7, i64 4}
!184 = !{!183, !7, i64 0}
!185 = !{!"p1 _ZTSN4Luau7CodeGen15AssemblyOptionsE", !10, i64 0}
!186 = !{!"_ZTSN4Luau7CodeGen10LogBuilderE", !185, i64 0, !90, i64 8}
!187 = !{!186, !185, i64 0}
!188 = !{!"_ZTSN4Luau7CodeGen15AssemblyOptions6TargetE", !6, i64 0}
!189 = !{!"_ZTSN4Luau7CodeGen11HostIrHooksE", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!190 = !{!"any p2 pointer", !10, i64 0}
!191 = !{!"p2 omnipotent char", !190, i64 0}
!192 = !{!"_ZTSN4Luau7CodeGen18CompilationOptionsE", !7, i64 0, !189, i64 8, !191, i64 88, !28, i64 96, !28, i64 97}
!193 = !{!"_ZTSN4Luau7CodeGen15IncludeIrPrefixE", !6, i64 0}
!194 = !{!"_ZTSN4Luau7CodeGen14IncludeUseInfoE", !6, i64 0}
!195 = !{!"_ZTSN4Luau7CodeGen14IncludeCfgInfoE", !6, i64 0}
!196 = !{!"_ZTSN4Luau7CodeGen18IncludeRegFlowInfoE", !6, i64 0}
!197 = !{!"_ZTSN4Luau7CodeGen15AssemblyOptionsE", !188, i64 0, !192, i64 8, !28, i64 112, !28, i64 113, !28, i64 114, !28, i64 115, !28, i64 116, !28, i64 117, !193, i64 120, !194, i64 124, !195, i64 128, !196, i64 132, !10, i64 136, !10, i64 144}
!198 = !{!197, !28, i64 113}
!199 = !{!96, !28, i64 80}
!200 = !{!"llvm.loop.isvectorized", i32 1}
!201 = !{!"llvm.loop.unroll.runtime.disable"}
!202 = !{!12, !12, i64 0}
!203 = !{!13, !13, i64 0}
!204 = !{!14, !14, i64 0}
!205 = !{!"p1 _ZTSSt4pairIN4Luau7CodeGen3A6411RegisterA64ES3_E", !10, i64 0}
!206 = !{!"_ZTSSt16initializer_listISt4pairIN4Luau7CodeGen3A6411RegisterA64ES4_EE", !205, i64 0, !22, i64 8}
!207 = !{!206, !205, i64 0}
!208 = !{!206, !22, i64 8}
!209 = !{!43, !7, i64 24}
!210 = distinct !{!210, !57}
!211 = !{!26, !23, i64 0}
!212 = !{!26, !22, i64 8}
!213 = !{!"p1 _ZTSN4Luau7CodeGen3A6414ExitSyncArgA64E", !10, i64 0}
!214 = !{!"_ZTSN4Luau11SmallVectorINS_7CodeGen3A6414ExitSyncArgA64ELj2EEE", !213, i64 0, !7, i64 8, !7, i64 12, !6, i64 16}
!215 = !{!214, !7, i64 8}
!216 = !{!214, !213, i64 0}
!217 = !{!18, !17, i64 0}
!218 = !{!18, !17, i64 16}
!219 = distinct !{!219, !57}
!220 = distinct !{!220, !57}
!221 = !{!45, !7, i64 72}
!222 = !{!66, !58, i64 0}
!223 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!224 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!225 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!226 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!227 = !{!96, !7, i64 84}
!228 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!229 = !{!"_ZTS10lua_TValue", !6, i64 0, !6, i64 8, !7, i64 12}
!230 = !{!229, !7, i64 12}
!231 = !{!29, !7, i64 384}
!232 = !{!175, !28, i64 528}
!233 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!234 = !{!"branch_weights", !"expected", i32 2146007992, i32 1475656}
!235 = distinct !{!235, i1 false, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerES4_SaIS4_EEvPT_PT0_RT1_"}
!236 = distinct !{!236, !235, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!237 = distinct !{!237, !235, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!238 = distinct !{!238, !57}
!239 = !{!147, !22, i64 8}
!240 = !{!147, !146, i64 0}
!241 = !{!"_ZTSN4Luau11SmallVectorINS_7CodeGen4IrOpELj2EEE", !59, i64 0, !7, i64 8, !7, i64 12, !6, i64 16}
!242 = !{!241, !59, i64 0}
!243 = !{!241, !7, i64 8}
!244 = !{!38, !37, i64 8}
!245 = !{i64 0, i64 4, !103, i64 4, i64 4, !103, i64 8, i64 4, !103}
!246 = !{!237, !236}
!247 = distinct !{!247, i1 false, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3A6413IrLoweringA6416InterruptHandlerES4_SaIS4_EEvPT_PT0_RT1_"}
!248 = distinct !{!248, !247, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3A6413IrLoweringA6416InterruptHandlerES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!249 = distinct !{!249, !247, !"_ZSt19__relocate_object_aIN4Luau7CodeGen3A6413IrLoweringA6416InterruptHandlerES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!250 = distinct !{!250, !57}
!251 = !{!33, !32, i64 8}
!252 = !{i64 0, i64 4, !103, i64 4, i64 4, !103, i64 8, i64 4, !103, i64 12, i64 4, !103, i64 16, i64 4, !103}
!253 = !{!249, !248}
!254 = !{!101, !7, i64 24}
!255 = !{!175, !28, i64 888}
!256 = !{!85, !84, i64 8}
!257 = !{!85, !84, i64 16}
!258 = !{!85, !84, i64 0}
!259 = !{!17, !17, i64 0}
!260 = !{!32, !32, i64 0}
!261 = !{!37, !37, i64 0}
!262 = !{!175, !7, i64 152}
!263 = !{!"_ZTSN4Luau7CodeGen3A6413IrLoweringA6411ExitHandlerE", !76, i64 0, !7, i64 8}
!264 = !{!263, !7, i64 8}
!265 = !{!"double", !6, i64 0}
!266 = !{!"_ZTSN4Luau7CodeGen23BlockLinearizationStatsE", !7, i64 0, !265, i64 8}
!267 = !{!"p1 _ZTSN4Luau7CodeGen13FunctionStatsE", !10, i64 0}
!268 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13FunctionStatsESaIS2_EE17_Vector_impl_dataE", !267, i64 0, !267, i64 8, !267, i64 16}
!269 = !{!"_ZTSNSt12_Vector_baseIN4Luau7CodeGen13FunctionStatsESaIS2_EE12_Vector_implE", !268, i64 0}
!270 = !{!"_ZTSSt12_Vector_baseIN4Luau7CodeGen13FunctionStatsESaIS2_EE", !269, i64 0}
!271 = !{!"_ZTSSt6vectorIN4Luau7CodeGen13FunctionStatsESaIS2_EE", !270, i64 0}
!272 = !{!"_ZTSN4Luau7CodeGen13LoweringStatsE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !266, i64 40, !7, i64 56, !271, i64 64}
!273 = !{!272, !7, i64 36}
!274 = !{!45, !28, i64 428}
!275 = !{!272, !7, i64 32}
!276 = !{!175, !155, i64 520}
!277 = !{!"p1 _ZTS10lua_TValue", !10, i64 0}
!278 = !{!"p2 _ZTS5Proto", !190, i64 0}
!279 = !{!"p1 _ZTS6LocVar", !10, i64 0}
!280 = !{!"p2 _ZTS7TString", !190, i64 0}
!281 = !{!"p1 _ZTS7TString", !10, i64 0}
!282 = !{!"p1 _ZTS8GCObject", !10, i64 0}
!283 = !{!"p1 _ZTS18FeedbackVectorSlot", !10, i64 0}
!284 = !{!"_ZTS5Proto", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !277, i64 8, !84, i64 16, !278, i64 24, !84, i64 32, !10, i64 40, !22, i64 48, !79, i64 56, !84, i64 64, !279, i64 72, !280, i64 80, !281, i64 88, !281, i64 96, !79, i64 104, !79, i64 112, !10, i64 120, !282, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !283, i64 176, !7, i64 184, !7, i64 188, !155, i64 192, !155, i64 200, !22, i64 208}
!285 = !{!284, !7, i64 136}
!286 = distinct !{!286, !57, !200, !201}
!287 = distinct !{!287, !57, !200}
!288 = distinct !{!288, !291}
!289 = distinct !{!289, !57}
!290 = !{!60, !7, i64 12}
!291 = !{!"llvm.loop.unroll.disable"}
!292 = distinct !{!292, !57, !200, !201}
!293 = distinct !{!293, !57, !201, !200}
!294 = distinct !{!294, !57}
!295 = !{!42, !42, i64 0}
!296 = !{!22, !22, i64 0}
!297 = !{!183, !7, i64 4}
!298 = !{!106, !28, i64 1}
!299 = !{!106, !79, i64 8}
!300 = !{!105, !105, i64 0}
!301 = !{!106, !105, i64 16}
!302 = !{!106, !7, i64 24}
end_hunk_1

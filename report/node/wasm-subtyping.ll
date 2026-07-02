inline.NumInlined: 337
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.std::array.184" = type { [30 x i8] }
%"struct.std::array.183" = type { [16 x i8] }
%"struct.std::array.185" = type { [16 x %"struct.std::array.186"] }
%"struct.std::array.186" = type { [16 x i8] }
%"struct.std::array.187" = type { [30 x i32] }

$_ZSt27__throw_bad_optional_accessv = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"value_type_impl::PayloadField::is_valid(index.index)\00", align 1
@_ZN2v88internal4wasm12_GLOBAL__N_124kCondensedIndexLookupMapE = internal unnamed_addr constant %"struct.std::array.184" { [30 x i8] c"\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@_ZN2v88internal4wasm12_GLOBAL__N_118kSubtypeLookupMap2E = internal unnamed_addr constant { <{ %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> }, %"struct.std::array.183", { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { <{ [8 x i8], [8 x i8] }> }, %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183" }> } { <{ %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> }, %"struct.std::array.183", { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { <{ [8 x i8], [8 x i8] }> }, %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183", %"struct.std::array.183" }> <{ %"struct.std::array.183" { [16 x i8] c"\01\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00" }, %"struct.std::array.183" { [16 x i8] c"\00\01\00\00\00\00\00\00\00\00\00\00\00\00\01\00" }, %"struct.std::array.183" { [16 x i8] c"\00\00\01\00\00\00\00\00\00\00\00\00\00\01\00\00" }, %"struct.std::array.183" { [16 x i8] c"\01\00\00\01\00\00\00\00\00\00\00\00\01\00\00\00" }, { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> } { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, [9 x i8] zeroinitializer }> }, %"struct.std::array.183" { [16 x i8] c"\00\00\00\00\00\01\00\01\01\01\01\01\00\00\00\01" }, { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> } { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, [9 x i8] zeroinitializer }> }, { <{ [8 x i8], [8 x i8] }> } { <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\01", [8 x i8] zeroinitializer }> }, %"struct.std::array.183" { [16 x i8] c"\00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\00" }, %"struct.std::array.183" { [16 x i8] c"\00\00\00\00\00\00\00\01\01\01\00\00\00\00\00\00" }, %"struct.std::array.183" { [16 x i8] c"\00\00\00\00\00\00\00\01\01\00\01\00\00\00\00\00" }, %"struct.std::array.183" { [16 x i8] c"\00\00\00\00\00\00\00\01\01\00\00\01\00\00\00\00" }, %"struct.std::array.183" { [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00" }, %"struct.std::array.183" { [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00" }, %"struct.std::array.183" { [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00" }, %"struct.std::array.183" { [16 x i8] c"\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01" } }> }, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"unreachable code\00", align 1
@_ZN2v88internal4wasm12_GLOBAL__N_124kCommonAncestorLookupMapE = internal unnamed_addr constant %"struct.std::array.185" { [16 x %"struct.std::array.186"] [%"struct.std::array.186" { [16 x i8] c"\03\01\01\03\01\01\01\01\01\01\01\01\0F\01\01\01" }, %"struct.std::array.186" { [16 x i8] c"\01\04\01\01\01\01\01\01\01\01\01\01\01\01\11\01" }, %"struct.std::array.186" { [16 x i8] c"\01\01\05\01\01\01\01\01\01\01\01\01\01\10\01\01" }, %"struct.std::array.186" { [16 x i8] c"\03\01\01\06\01\01\01\01\01\01\01\01\0F\01\01\01" }, %"struct.std::array.186" { [16 x i8] c"\01\01\01\01\07\01\09\01\01\01\01\01\01\01\01\01" }, %"struct.std::array.186" { [16 x i8] c"\01\01\01\01\01\08\01\0A\0B\0C\0D\0E\01\01\01\12" }, %"struct.std::array.186" { [16 x i8] c"\01\01\01\01\09\01\09\01\01\01\01\01\01\01\01\01" }, %"struct.std::array.186" { [16 x i8] c"\01\01\01\01\01\0A\01\0A\0A\0A\0A\0A\01\01\01\0A" }, %"struct.std::array.186" { [16 x i8] c"\01\01\01\01\01\0B\01\0A\0B\0B\0B\0B\01\01\01\0A" }, %"struct.std::array.186" { [16 x i8] c"\01\01\01\01\01\0C\01\0A\0B\0C\0B\0B\01\01\01\0A" }, %"struct.std::array.186" { [16 x i8] c"\01\01\01\01\01\0D\01\0A\0B\0B\0D\0B\01\01\01\0A" }, %"struct.std::array.186" { [16 x i8] c"\01\01\01\01\01\0E\01\0A\0B\0B\0B\0E\01\01\01\0A" }, %"struct.std::array.186" { [16 x i8] c"\0F\01\01\0F\01\01\01\01\01\01\01\01\0F\01\01\01" }, %"struct.std::array.186" { [16 x i8] c"\01\01\10\01\01\01\01\01\01\01\01\01\01\10\01\01" }, %"struct.std::array.186" { [16 x i8] c"\01\11\01\01\01\01\01\01\01\01\01\01\01\01\11\01" }, %"struct.std::array.186" { [16 x i8] c"\01\01\01\01\01\12\01\0A\0A\0A\0A\0A\01\01\01\12" }] }, align 1
@_ZN2v88internal4wasm12_GLOBAL__N_119kValueTypeLookupMapE = internal unnamed_addr constant %"struct.std::array.187" { [30 x i32] [i32 2, i32 258, i32 514, i32 769, i32 1153, i32 1281, i32 1537, i32 1825, i32 2049, i32 2337, i32 2561, i32 2817, i32 3073, i32 3393, i32 3681, i32 3841, i32 4097, i32 4481, i32 4609, i32 4865, i32 5121, i32 5377, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2] }, align 4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal4wasm22ValidSubtypeDefinitionENS1_15ModuleTypeIndexES2_PKNS1_10WasmModuleE(i32 %0, i32 %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24                  ; 4 uses
  %i.i = zext i32 %0 to i64                       ; 2 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.i ; 5 uses
  %i.l = zext i32 %1 to i64                       ; 2 uses
  %i.m = icmp ugt i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.l ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = load i8, ptr %i.o, align 4               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %.not = icmp ne i8 %i.p, %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 21
  %i.t = load i8, ptr %i.s, align 1, !range !5
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.u
  br i1 %or.cond, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 22
  %i.w = load i8, ptr %i.v, align 2, !range !5, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 22
  %i.y = load i8, ptr %i.x, align 2, !range !5, !noundef !6
  %.not33 = icmp eq i8 %i.w, %i.y
  br i1 %.not33, label %bb.c, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.k, align 8              ; 14 uses
  switch i8 %i.p, label %bb.z [
    i8 1, label %bb.d
    i8 2, label %bb.h
    i8 3, label %bb.q
    i8 4, label %bb.v
  ]

bb.d:                                             ; preds = %bb.c
  %3 = load ptr, ptr %i.n, align 8                ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %.not.i = icmp eq i64 %i.ab, %i.ad
  br i1 %.not.i, label %bb.e, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %i.z, align 8             ; 2 uses
  %i.af = load i64, ptr %3, align 8
  %.not37.i = icmp eq i64 %i.ae, %i.af
  br i1 %.not37.i, label %.preheader.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

.preheader.i:                                     ; preds = %bb.e
  %.not3862.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not3862.not.i, label %.critedge.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %bb.f

.critedge.preheader.loopexit.i:                   ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i
  %.pre69.i = load i64, ptr %i.z, align 8
  br label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %.critedge.preheader.loopexit.i, %.preheader.i
  %i.ai = phi i64 [ %.pre69.i, %.critedge.preheader.loopexit.i ], [ %i.ae, %.preheader.i ] ; 2 uses
  %.not3964.i = icmp eq i64 %i.ai, 0
  br i1 %.not3964.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %.critedge.preheader.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i, %.lr.ph.i
  %i.al = phi i64 [ %i.ab, %.lr.ph.i ], [ %i.ax, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i ]
  %i.am = phi i64 [ 0, %.lr.ph.i ], [ %i.az, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i ] ; 2 uses
  %.03563.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ay, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i ]
  %i.an = load ptr, ptr %i.ag, align 8
  %i.ao = load i64, ptr %3, align 8
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.am
  %.sroa.07.0.copyload.i = load i32, ptr %i.aq, align 4 ; 2 uses
  %i.ar = load ptr, ptr %i.ah, align 8
  %i.as = load i64, ptr %i.z, align 8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.am
  %.sroa.06.0.copyload.i = load i32, ptr %i.au, align 4 ; 2 uses
  %i.av = icmp eq i32 %.sroa.07.0.copyload.i, %.sroa.06.0.copyload.i
  br i1 %i.av, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.i, !prof !7

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.i: ; preds = %bb.f
  %i.aw = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.07.0.copyload.i, i32 %.sroa.06.0.copyload.i, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %2)
  br i1 %i.aw, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread_crit_edge.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread_crit_edge.i: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.i
  %.pre.i = load i64, ptr %i.aa, align 8
  br label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread_crit_edge.i, %bb.f
  %i.ax = phi i64 [ %.pre.i, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread_crit_edge.i ], [ %i.al, %bb.f ] ; 2 uses
  %i.ay = add i32 %.03563.i, 1                    ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %.not38.i = icmp ugt i64 %i.ax, %i.az
  br i1 %.not38.i, label %bb.f, label %.critedge.preheader.loopexit.i, !llvm.loop !8

bb.g:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i, %.lr.ph66.i
  %i.ba = phi i64 [ %i.ai, %.lr.ph66.i ], [ %i.bi, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i ]
  %i.bb = phi i64 [ 0, %.lr.ph66.i ], [ %i.bk, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i ] ; 2 uses
  %.03465.i = phi i32 [ 0, %.lr.ph66.i ], [ %i.bj, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i ]
  %i.bc = load ptr, ptr %i.aj, align 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bb
  %.sroa.02.0.copyload.i = load i32, ptr %i.bd, align 4 ; 2 uses
  %i.be = load ptr, ptr %i.ak, align 8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bb
  %.sroa.0.0.copyload.i = load i32, ptr %i.bf, align 4 ; 2 uses
  %i.bg = icmp eq i32 %.sroa.02.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.bg, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i, !prof !7

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i: ; preds = %bb.g
  %i.bh = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.02.0.copyload.i, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %2)
  br i1 %i.bh, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread_crit_edge.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread_crit_edge.i: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i
  %.pre70.i = load i64, ptr %i.z, align 8
  br label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread_crit_edge.i, %bb.g
  %i.bi = phi i64 [ %.pre70.i, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread_crit_edge.i ], [ %i.ba, %bb.g ] ; 2 uses
  %i.bj = add i32 %.03465.i, 1                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not39.not.i = icmp ugt i64 %i.bi, %i.bk
  br i1 %.not39.not.i, label %bb.g, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit, !llvm.loop !10

bb.h:                                             ; preds = %bb.c
  %4 = load ptr, ptr %i.n, align 8                ; 4 uses
  %i.bl = load i16, ptr %i.z, align 8
  %i.bm = load i16, ptr %4, align 8               ; 3 uses
  %i.bn = icmp ult i16 %i.bl, %i.bm
  br i1 %i.bn, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit, label %.preheader.i36

.preheader.i36:                                   ; preds = %bb.h
  %.not74.not.i = icmp eq i16 %i.bm, 0
  br i1 %.not74.not.i, label %.critedge58.i, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %.preheader.i36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.critedge56.i, %.lr.ph.i37
  %i.bs = phi i16 [ %i.bm, %.lr.ph.i37 ], [ %i.ch, %.critedge56.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i37 ], [ %indvars.iv.next.i, %.critedge56.i ] ; 5 uses
  %i.bt = load ptr, ptr %i.bo, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.i
  %i.bv = load i8, ptr %i.bu, align 1, !range !5, !noundef !6 ; 2 uses
  %i.bw = load ptr, ptr %i.bp, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv.i
  %i.by = load i8, ptr %i.bx, align 1, !range !5, !noundef !6
  %.not73.i = icmp eq i8 %i.bv, %i.by
  br i1 %.not73.i, label %bb.j, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = trunc nuw i8 %i.bv to i1
  %i.ca = load ptr, ptr %i.bq, align 8
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.cb, align 4 ; 3 uses
  %i.cc = load ptr, ptr %i.br, align 8
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i61.i = load i32, ptr %i.cd, align 4 ; 3 uses
  br i1 %i.bz, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.ce = tail call noundef zeroext i1 @_ZN2v88internal4wasm15EquivalentTypesENS1_9ValueTypeES2_PKNS1_10WasmModuleE(i32 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.0.0.copyload.i.i61.i, ptr noundef nonnull readonly %2)
  br i1 %i.ce, label %.critedge56.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

.critedge.i:                                      ; preds = %bb.j
  %i.cf = icmp eq i32 %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i61.i
  br i1 %i.cf, label %.critedge56.i, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i38, !prof !7

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i38: ; preds = %.critedge.i
  %i.cg = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.0.0.copyload.i.i61.i, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %2)
  br i1 %i.cg, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit..critedge56_crit_edge.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit..critedge56_crit_edge.i: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i38
  %.pre.i39 = load i16, ptr %4, align 8
  br label %.critedge56.i

.critedge56.i:                                    ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit..critedge56_crit_edge.i, %.critedge.i, %bb.k
  %i.ch = phi i16 [ %.pre.i39, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit..critedge56_crit_edge.i ], [ %i.bs, %.critedge.i ], [ %i.bs, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ci = zext i16 %i.ch to i64
  %.not.i40 = icmp samesign ult i64 %indvars.iv.next.i, %i.ci
  br i1 %.not.i40, label %bb.i, label %.critedge58.i, !llvm.loop !11

.critedge58.i:                                    ; preds = %.critedge56.i, %.preheader.i36
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ck = load i32, ptr %i.cj, align 4            ; 4 uses
  %.not70.i = icmp eq i32 %i.ck, -1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.cm = load i32, ptr %i.cl, align 4            ; 4 uses
  %.not71.i = icmp eq i32 %i.cm, -1               ; 2 uses
  br i1 %.not70.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.critedge58.i
  br i1 %.not71.i, label %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = load ptr, ptr %i.b, align 8
  %i.co = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 24                ; 2 uses
  %i.ct = zext i32 %i.ck to i64                   ; 2 uses
  %i.cu = icmp ugt i64 %i.cs, %i.ct
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp ult i32 %i.ck, 1048576
  br i1 %i.cv, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i: ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.ct ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 22
  %i.da = load i8, ptr %i.cz, align 2, !range !5, !noundef !6
  %i.db = shl nuw nsw i8 %i.da, 4
  %i.dc = or disjoint i8 %i.db, 7
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = zext i8 %i.cy to i32
  %i.df = shl nuw nsw i32 %i.de, 5
  %i.dg = or disjoint i32 %i.df, %i.dd
  %i.dh = shl nuw nsw i32 %i.ck, 8
  %i.di = or i32 %i.dg, %i.dh                     ; 2 uses
  %i.dj = zext i32 %i.cm to i64                   ; 2 uses
  %i.dk = icmp ugt i64 %i.cs, %i.dj
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp ult i32 %i.cm, 1048576
  br i1 %i.dl, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit64.i, label %bb.o, !prof !7

bb.o:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit64.i: ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.dj ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 20
  %i.do = load i8, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 22
  %i.dq = load i8, ptr %i.dp, align 2, !range !5, !noundef !6
  %i.dr = shl nuw nsw i8 %i.dq, 4
  %i.ds = or disjoint i8 %i.dr, 7
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = zext i8 %i.do to i32
  %i.dv = shl nuw nsw i32 %i.du, 5
  %i.dw = or disjoint i32 %i.dv, %i.dt
  %i.dx = shl nuw nsw i32 %i.cm, 8
  %i.dy = or i32 %i.dw, %i.dx                     ; 2 uses
  %i.dz = icmp eq i32 %i.di, %i.dy
  br i1 %i.dz, label %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i, label %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.i, !prof !7

_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.i: ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit64.i
  %i.ea = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_8HeapTypeES2_PKNS1_10WasmModuleES5_(i32 %i.di, i32 %i.dy, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %2)
  br i1 %i.ea, label %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.p:                                             ; preds = %.critedge58.i
  br i1 %.not71.i, label %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i: ; preds = %bb.p, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.i, %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit64.i, %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = icmp ne i32 %i.ec, -1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = icmp eq i32 %i.ef, -1
  %not..i = xor i1 %i.ed, %i.eg
  br label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.q:                                             ; preds = %bb.c
  %5 = load ptr, ptr %i.n, align 8                ; 3 uses
  %i.eh = load i8, ptr %i.z, align 1, !range !5, !noundef !6 ; 2 uses
  %i.ei = load i8, ptr %5, align 1, !range !5, !noundef !6 ; 2 uses
  %i.ej = and i8 %i.ei, %i.eh
  %or.cond.not.i = icmp eq i8 %i.ej, 0
  br i1 %or.cond.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ek, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.el, align 4
  %i.em = tail call noundef zeroext i1 @_ZN2v88internal4wasm15EquivalentTypesENS1_9ValueTypeES2_PKNS1_10WasmModuleE(i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.0.0.copyload.i23.i, ptr noundef nonnull readonly %2)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.s:                                             ; preds = %bb.q
  %i.en = or i8 %i.ei, %i.eh
  %or.cond3.not.i = icmp eq i8 %i.en, 0
  br i1 %or.cond3.not.i, label %bb.t, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.t:                                             ; preds = %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.0.0.copyload.i24.i = load i32, ptr %i.eo, align 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.0.0.copyload.i25.i = load i32, ptr %i.ep, align 4 ; 2 uses
  %i.eq = icmp eq i32 %.sroa.0.0.copyload.i24.i, %.sroa.0.0.copyload.i25.i
  br i1 %i.eq, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit, label %bb.u, !prof !7

bb.u:                                             ; preds = %bb.t
  %i.er = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.0.0.copyload.i24.i, i32 %.sroa.0.0.copyload.i25.i, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %2)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.v:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i42 = load i32, ptr %i.z, align 4 ; 3 uses
  %i.es = zext i32 %.sroa.0.0.copyload.i.i42 to i64 ; 2 uses
  %i.et = icmp ugt i64 %i.h, %i.es
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = icmp ult i32 %.sroa.0.0.copyload.i.i42, 1048576
  br i1 %i.eu, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i43, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i43: ; preds = %bb.v
  %6 = load ptr, ptr %i.n, align 8
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.es ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 20
  %i.ex = load i8, ptr %i.ew, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 22
  %i.ez = load i8, ptr %i.ey, align 2, !range !5, !noundef !6
  %i.fa = shl nuw nsw i8 %i.ez, 4
  %i.fb = or disjoint i8 %i.fa, 7
  %i.fc = zext nneg i8 %i.fb to i32
  %i.fd = zext i8 %i.ex to i32
  %i.fe = shl nuw nsw i32 %i.fd, 5
  %i.ff = or disjoint i32 %i.fe, %i.fc
  %i.fg = shl nuw nsw i32 %.sroa.0.0.copyload.i.i42, 8
  %i.fh = or i32 %i.ff, %i.fg                     ; 2 uses
  %.sroa.0.0.copyload.i14.i = load i32, ptr %6, align 4 ; 3 uses
  %i.fi = zext i32 %.sroa.0.0.copyload.i14.i to i64 ; 2 uses
  %i.fj = icmp ugt i64 %i.h, %i.fi
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp ult i32 %.sroa.0.0.copyload.i14.i, 1048576
  br i1 %i.fk, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit15.i, label %bb.x, !prof !7

bb.x:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i43
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit15.i: ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i43
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.fi ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  %i.fn = load i8, ptr %i.fm, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 22
  %i.fp = load i8, ptr %i.fo, align 2, !range !5, !noundef !6
  %i.fq = shl nuw nsw i8 %i.fp, 4
  %i.fr = or disjoint i8 %i.fq, 7
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = zext i8 %i.fn to i32
  %i.fu = shl nuw nsw i32 %i.ft, 5
  %i.fv = or disjoint i32 %i.fu, %i.fs
  %i.fw = shl nuw nsw i32 %.sroa.0.0.copyload.i14.i, 8
  %i.fx = or i32 %i.fv, %i.fw                     ; 2 uses
  %i.fy = icmp eq i32 %i.fh, %i.fx
  br i1 %i.fy, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit, label %bb.y, !prof !7

bb.y:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit15.i
  %i.fz = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_8HeapTypeES2_PKNS1_10WasmModuleES5_(i32 %i.fh, i32 %i.fx, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %2)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.z:                                             ; preds = %bb.c
  unreachable

_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i38, %bb.k, %bb.i, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.i, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i, %bb.y, %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit15.i, %bb.u, %bb.t, %bb.s, %bb.r, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i, %bb.p, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.i, %bb.h, %.critedge.preheader.i, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i1 [ %i.er, %bb.u ], [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.t ], [ false, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.i ], [ false, %bb.e ], [ false, %bb.d ], [ true, %.critedge.preheader.i ], [ %i.fz, %bb.y ], [ true, %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit15.i ], [ false, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.i ], [ %not..i, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i ], [ false, %bb.p ], [ false, %bb.h ], [ false, %bb.s ], [ true, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i ], [ %i.em, %bb.r ], [ false, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i ], [ false, %bb.i ], [ false, %bb.k ], [ false, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i38 ]
  ret i1 %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_8HeapTypeES2_PKNS1_10WasmModuleES5_(i32 %0, i32 %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i16 @_ZN2v88internal4wasm12_GLOBAL__N_122IsSubtypeOf_CommonImplENS1_13ValueTypeBaseES3_(i32 %0, i32 %1) ; 2 uses
  %.not = icmp samesign ult i16 %i.a, 256
  br i1 %.not, label %bb.b, label %_ZNRSt8optionalIbE5valueEv.exit

_ZNRSt8optionalIbE5valueEv.exit:                  ; preds = %bb.a
  %i.b = trunc i16 %i.a to i1
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %0, 8
  %i.d = and i32 %i.c, 1048575                    ; 2 uses
  %i.e = lshr i32 %1, 8
  %i.f = and i32 %i.e, 1048575
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2
  %i.o = zext nneg i32 %i.f to i64                ; 2 uses
  %i.p = icmp ugt i64 %i.n, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.o
  %.sroa.02.0.copyload.i = load i32, ptr %i.q, align 4 ; 2 uses
  %i.r = and i32 %1, 8
  %.not28 = icmp eq i32 %i.r, 0
  br i1 %.not28, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2
  %i.ak = zext nneg i32 %i.d to i64               ; 2 uses
  %i.al = icmp ugt i64 %i.aj, %i.ak
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ak
  %.sroa.02.0.copyload.i15 = load i32, ptr %i.am, align 4
  %i.an = icmp eq i32 %.sroa.02.0.copyload.i15, %.sroa.02.0.copyload.i
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.e
  %.sroa.019.0 = phi i32 [ %.sroa.02.0.copyload.i17, %bb.e ], [ %i.d, %.preheader ]
  %i.ao = zext i32 %.sroa.019.0 to i64            ; 4 uses
  %i.ap = icmp ugt i64 %i.ab, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ao
  %.sroa.02.0.copyload.i16 = load i32, ptr %i.aq, align 4
  %i.ar = icmp eq i32 %.sroa.02.0.copyload.i16, %.sroa.02.0.copyload.i ; 3 uses
  br i1 %i.ar, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %i.t, align 8
  %i.at = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24
  %i.ay = icmp ugt i64 %i.ax, %i.ao
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.ao
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.02.0.copyload.i17 = load i32, ptr %i.ba, align 8 ; 2 uses
  %.not29 = icmp eq i32 %.sroa.02.0.copyload.i17, -1
  br i1 %.not29, label %.loopexit, label %bb.d, !llvm.loop !12

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.c, %_ZNRSt8optionalIbE5valueEv.exit
  %.1 = phi i1 [ %i.b, %_ZNRSt8optionalIbE5valueEv.exit ], [ %i.an, %bb.c ], [ %i.ar, %bb.e ], [ %i.ar, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i16 0, 258) i16 @_ZN2v88internal4wasm12_GLOBAL__N_122IsSubtypeOf_CommonImplENS1_13ValueTypeBaseES3_(i32 %0, i32 %1) unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %1, %0
  %i.b = and i32 %i.a, 16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %_ZN2v88internal4wasm12_GLOBAL__N_130IsGenericSubtypeOfIndexedTypesENS1_13ValueTypeBaseE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %0, 268435427                    ; 2 uses
  %i.d = icmp eq i32 %i.c, 514
  br i1 %i.d, label %_ZN2v88internal4wasm12_GLOBAL__N_130IsGenericSubtypeOfIndexedTypesENS1_13ValueTypeBaseE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %1, 3
  %i.f = icmp eq i32 %i.e, 3
  %i.g = and i32 %0, 3
  %i.h = icmp eq i32 %i.g, 3                      ; 2 uses
  br i1 %i.f, label %bb.d, label %_ZN2v88internal4wasm12_GLOBAL__N_130IsGenericSubtypeOfIndexedTypesENS1_13ValueTypeBaseE.exit.thread

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = and i32 %1, 8
  %i.j = icmp ne i32 %i.i, 0
  %i.k = and i32 %0, 8
  %i.l = icmp eq i32 %i.k, 0
  %or.cond.not = and i1 %i.l, %i.j
  %i.m = select i1 %or.cond.not, i16 256, i16 0
  br label %_ZN2v88internal4wasm12_GLOBAL__N_130IsGenericSubtypeOfIndexedTypesENS1_13ValueTypeBaseE.exit

bb.f:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.c, -1153                  ; 2 uses
  %i.o = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 27)
  switch i32 %i.o, label %_ZN2v88internal4wasm12_GLOBAL__N_130IsGenericSubtypeOfIndexedTypesENS1_13ValueTypeBaseE.exit [
    i32 0, label %bb.m
    i32 4, label %bb.m
    i32 12, label %bb.m
    i32 21, label %bb.m
    i32 28, label %bb.m
  ]

_ZN2v88internal4wasm12_GLOBAL__N_130IsGenericSubtypeOfIndexedTypesENS1_13ValueTypeBaseE.exit.thread: ; preds = %bb.c
  br i1 %i.h, label %bb.g, label %_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit

bb.g:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_130IsGenericSubtypeOfIndexedTypesENS1_13ValueTypeBaseE.exit.thread
  %i.p = trunc i32 %0 to i8
  %i.q = lshr i8 %i.p, 5
  switch i8 %i.q, label %bb.l [
    i8 2, label %_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit.thread
    i8 3, label %bb.h
    i8 1, label %bb.i
    i8 4, label %bb.j
    i8 0, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit.thread

bb.i:                                             ; preds = %bb.g
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit.thread

bb.j:                                             ; preds = %bb.g
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit.thread

bb.k:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #10
end_hunk_0

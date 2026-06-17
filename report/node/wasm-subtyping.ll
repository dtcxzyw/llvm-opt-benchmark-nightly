inline.NumInlined: 337
inline.NumDeleted: 111
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
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.l ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = load i8, ptr %i.o, align 4               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %.not = icmp eq i8 %i.p, %i.r
  br i1 %.not, label %3, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %i.n, i64 21
  %5 = load i8, ptr %4, align 1, !range !5, !noundef !6
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit, label %bb.b

bb.b:                                             ; preds = %3
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 22
  %i.t = load i8, ptr %i.s, align 2, !range !5, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 22
  %i.v = load i8, ptr %i.u, align 2, !range !5, !noundef !6
  %.not33 = icmp eq i8 %i.t, %i.v
  br i1 %.not33, label %bb.c, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.k, align 8              ; 14 uses
  %i.x = load ptr, ptr %i.n, align 8              ; 13 uses
  switch i8 %i.p, label %bb.z [
    i8 1, label %bb.d
    i8 2, label %bb.h
    i8 3, label %bb.q
    i8 4, label %bb.v
  ]

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %.not.i = icmp eq i64 %i.z, %i.ab
  br i1 %.not.i, label %bb.e, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = load i64, ptr %i.w, align 8             ; 2 uses
  %i.ad = load i64, ptr %i.x, align 8
  %.not37.i = icmp eq i64 %i.ac, %i.ad
  br i1 %.not37.i, label %.preheader.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

.preheader.i:                                     ; preds = %bb.e
  %.not3862.not.i = icmp eq i64 %i.z, 0
  br i1 %.not3862.not.i, label %.critedge.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %bb.f

.critedge.preheader.loopexit.i:                   ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i
  %.pre69.i = load i64, ptr %i.w, align 8
  br label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %.critedge.preheader.loopexit.i, %.preheader.i
  %i.ag = phi i64 [ %.pre69.i, %.critedge.preheader.loopexit.i ], [ %i.ac, %.preheader.i ] ; 2 uses
  %.not3964.i = icmp eq i64 %i.ag, 0
  br i1 %.not3964.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %.critedge.preheader.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i, %.lr.ph.i
  %i.aj = phi i64 [ %i.z, %.lr.ph.i ], [ %i.av, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i ]
  %i.ak = phi i64 [ 0, %.lr.ph.i ], [ %i.ax, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i ] ; 2 uses
  %.03563.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aw, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i ]
  %i.al = load ptr, ptr %i.ae, align 8
  %i.am = load i64, ptr %i.x, align 8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ak
  %.sroa.07.0.copyload.i = load i32, ptr %i.ao, align 4 ; 2 uses
  %i.ap = load ptr, ptr %i.af, align 8
  %i.aq = load i64, ptr %i.w, align 8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ak
  %.sroa.06.0.copyload.i = load i32, ptr %i.as, align 4 ; 2 uses
  %i.at = icmp eq i32 %.sroa.07.0.copyload.i, %.sroa.06.0.copyload.i
  br i1 %i.at, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.i, !prof !7

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.i: ; preds = %bb.f
  %i.au = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.07.0.copyload.i, i32 %.sroa.06.0.copyload.i, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %2)
  br i1 %i.au, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread_crit_edge.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread_crit_edge.i: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.i
  %.pre.i = load i64, ptr %i.y, align 8
  br label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread.i: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread_crit_edge.i, %bb.f
  %i.av = phi i64 [ %.pre.i, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.thread_crit_edge.i ], [ %i.aj, %bb.f ] ; 2 uses
  %i.aw = add i32 %.03563.i, 1                    ; 2 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.not38.i = icmp ugt i64 %i.av, %i.ax
  br i1 %.not38.i, label %bb.f, label %.critedge.preheader.loopexit.i, !llvm.loop !8

bb.g:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i, %.lr.ph66.i
  %i.ay = phi i64 [ %i.ag, %.lr.ph66.i ], [ %i.bg, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i ]
  %i.az = phi i64 [ 0, %.lr.ph66.i ], [ %i.bi, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i ] ; 2 uses
  %.03465.i = phi i32 [ 0, %.lr.ph66.i ], [ %i.bh, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i ]
  %i.ba = load ptr, ptr %i.ah, align 8
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.az
  %.sroa.02.0.copyload.i = load i32, ptr %i.bb, align 4 ; 2 uses
  %i.bc = load ptr, ptr %i.ai, align 8
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.az
  %.sroa.0.0.copyload.i = load i32, ptr %i.bd, align 4 ; 2 uses
  %i.be = icmp eq i32 %.sroa.02.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.be, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i, !prof !7

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i: ; preds = %bb.g
  %i.bf = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.02.0.copyload.i, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %2)
  br i1 %i.bf, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread_crit_edge.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread_crit_edge.i: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i
  %.pre70.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread_crit_edge.i, %bb.g
  %i.bg = phi i64 [ %.pre70.i, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit._ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread_crit_edge.i ], [ %i.ay, %bb.g ] ; 2 uses
  %i.bh = add i32 %.03465.i, 1                    ; 2 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %.not39.not.i = icmp ugt i64 %i.bg, %i.bi
  br i1 %.not39.not.i, label %bb.g, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit, !llvm.loop !10

bb.h:                                             ; preds = %bb.c
  %i.bj = load i16, ptr %i.w, align 8
  %i.bk = load i16, ptr %i.x, align 8             ; 3 uses
  %i.bl = icmp ult i16 %i.bj, %i.bk
  br i1 %i.bl, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit, label %.preheader.i34

.preheader.i34:                                   ; preds = %bb.h
  %.not74.not.i = icmp eq i16 %i.bk, 0
  br i1 %.not74.not.i, label %.critedge58.i, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %.preheader.i34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.critedge56.i, %.lr.ph.i35
  %i.bq = phi i16 [ %i.bk, %.lr.ph.i35 ], [ %i.cf, %.critedge56.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i35 ], [ %indvars.iv.next.i, %.critedge56.i ] ; 5 uses
  %i.br = load ptr, ptr %i.bm, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv.i
  %i.bt = load i8, ptr %i.bs, align 1, !range !5, !noundef !6 ; 2 uses
  %i.bu = load ptr, ptr %i.bn, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv.i
  %i.bw = load i8, ptr %i.bv, align 1, !range !5, !noundef !6
  %.not73.i = icmp eq i8 %i.bt, %i.bw
  br i1 %.not73.i, label %bb.j, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.j:                                             ; preds = %bb.i
  %i.bx = trunc nuw i8 %i.bt to i1
  %i.by = load ptr, ptr %i.bo, align 8
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bz, align 4 ; 3 uses
  %i.ca = load ptr, ptr %i.bp, align 8
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i61.i = load i32, ptr %i.cb, align 4 ; 3 uses
  br i1 %i.bx, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.cc = tail call noundef zeroext i1 @_ZN2v88internal4wasm15EquivalentTypesENS1_9ValueTypeES2_PKNS1_10WasmModuleE(i32 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.0.0.copyload.i.i61.i, ptr noundef nonnull readonly %2)
  br i1 %i.cc, label %.critedge56.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

.critedge.i:                                      ; preds = %bb.j
  %i.cd = icmp eq i32 %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i61.i
  br i1 %i.cd, label %.critedge56.i, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i36, !prof !7

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i36: ; preds = %.critedge.i
  %i.ce = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.0.0.copyload.i.i.i, i32 %.sroa.0.0.copyload.i.i61.i, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %2)
  br i1 %i.ce, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit..critedge56_crit_edge.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit..critedge56_crit_edge.i: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i36
  %.pre.i37 = load i16, ptr %i.x, align 8
  br label %.critedge56.i

.critedge56.i:                                    ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit..critedge56_crit_edge.i, %.critedge.i, %bb.k
  %i.cf = phi i16 [ %.pre.i37, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit..critedge56_crit_edge.i ], [ %i.bq, %.critedge.i ], [ %i.bq, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cg = zext i16 %i.cf to i64
  %.not.i38 = icmp samesign ult i64 %indvars.iv.next.i, %i.cg
  br i1 %.not.i38, label %bb.i, label %.critedge58.i, !llvm.loop !11

.critedge58.i:                                    ; preds = %.critedge56.i, %.preheader.i34
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ci = load i32, ptr %i.ch, align 4            ; 4 uses
  %.not70.i = icmp eq i32 %i.ci, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.ck = load i32, ptr %i.cj, align 4            ; 4 uses
  %.not71.i = icmp eq i32 %i.ck, -1               ; 2 uses
  br i1 %.not70.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.critedge58.i
  br i1 %.not71.i, label %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %i.b, align 8
  %i.cm = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 24                ; 2 uses
  %i.cr = zext i32 %i.ci to i64                   ; 2 uses
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp ult i32 %i.ci, 1048576
  br i1 %i.ct, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i: ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cr ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 22
  %i.cy = load i8, ptr %i.cx, align 2, !range !5, !noundef !6
  %i.cz = shl nuw nsw i8 %i.cy, 4
  %i.da = or disjoint i8 %i.cz, 7
  %i.db = zext nneg i8 %i.da to i32
  %i.dc = zext i8 %i.cw to i32
  %i.dd = shl nuw nsw i32 %i.dc, 5
  %i.de = or disjoint i32 %i.dd, %i.db
  %i.df = shl nuw nsw i32 %i.ci, 8
  %i.dg = or i32 %i.de, %i.df                     ; 2 uses
  %i.dh = zext i32 %i.ck to i64                   ; 2 uses
  %i.di = icmp ugt i64 %i.cq, %i.dh
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = icmp ult i32 %i.ck, 1048576
  br i1 %i.dj, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit64.i, label %bb.o, !prof !7

bb.o:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit64.i: ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.dh ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.dm = load i8, ptr %i.dl, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 22
  %i.do = load i8, ptr %i.dn, align 2, !range !5, !noundef !6
  %i.dp = shl nuw nsw i8 %i.do, 4
  %i.dq = or disjoint i8 %i.dp, 7
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = zext i8 %i.dm to i32
  %i.dt = shl nuw nsw i32 %i.ds, 5
  %i.du = or disjoint i32 %i.dt, %i.dr
  %i.dv = shl nuw nsw i32 %i.ck, 8
  %i.dw = or i32 %i.du, %i.dv                     ; 2 uses
  %i.dx = icmp eq i32 %i.dg, %i.dw
  br i1 %i.dx, label %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i, label %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.i, !prof !7

_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.i: ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit64.i
  %i.dy = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_8HeapTypeES2_PKNS1_10WasmModuleES5_(i32 %i.dg, i32 %i.dw, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %2)
  br i1 %i.dy, label %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.p:                                             ; preds = %.critedge58.i
  br i1 %.not71.i, label %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i: ; preds = %bb.p, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.i, %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit64.i, %bb.l
  %i.dz = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ea = load i32, ptr %i.dz, align 8
  %i.eb = icmp ne i32 %i.ea, -1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = icmp eq i32 %i.ed, -1
  %not..i = xor i1 %i.eb, %i.ee
  br label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.q:                                             ; preds = %bb.c
  %i.ef = load i8, ptr %i.w, align 1, !range !5, !noundef !6 ; 2 uses
  %i.eg = load i8, ptr %i.x, align 1, !range !5, !noundef !6 ; 2 uses
  %i.eh = and i8 %i.eg, %i.ef
  %or.cond.not.i = icmp eq i8 %i.eh, 0
  br i1 %or.cond.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ei = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ei, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.0.0.copyload.i23.i = load i32, ptr %i.ej, align 4
  %i.ek = tail call noundef zeroext i1 @_ZN2v88internal4wasm15EquivalentTypesENS1_9ValueTypeES2_PKNS1_10WasmModuleE(i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.0.0.copyload.i23.i, ptr noundef nonnull readonly %2)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.s:                                             ; preds = %bb.q
  %i.el = or i8 %i.eg, %i.ef
  %or.cond3.not.i = icmp eq i8 %i.el, 0
  br i1 %or.cond3.not.i, label %bb.t, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.t:                                             ; preds = %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.0.0.copyload.i24.i = load i32, ptr %i.em, align 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.0.0.copyload.i25.i = load i32, ptr %i.en, align 4 ; 2 uses
  %i.eo = icmp eq i32 %.sroa.0.0.copyload.i24.i, %.sroa.0.0.copyload.i25.i
  br i1 %i.eo, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit, label %bb.u, !prof !7

bb.u:                                             ; preds = %bb.t
  %i.ep = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.0.0.copyload.i24.i, i32 %.sroa.0.0.copyload.i25.i, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %2)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.v:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i40 = load i32, ptr %i.w, align 4 ; 3 uses
  %i.eq = zext i32 %.sroa.0.0.copyload.i.i40 to i64 ; 2 uses
  %i.er = icmp ugt i64 %i.h, %i.eq
  tail call void @llvm.assume(i1 %i.er)
  %i.es = icmp ult i32 %.sroa.0.0.copyload.i.i40, 1048576
  br i1 %i.es, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i41, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i41: ; preds = %bb.v
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.eq ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %i.ev = load i8, ptr %i.eu, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 22
  %i.ex = load i8, ptr %i.ew, align 2, !range !5, !noundef !6
  %i.ey = shl nuw nsw i8 %i.ex, 4
  %i.ez = or disjoint i8 %i.ey, 7
  %i.fa = zext nneg i8 %i.ez to i32
  %i.fb = zext i8 %i.ev to i32
  %i.fc = shl nuw nsw i32 %i.fb, 5
  %i.fd = or disjoint i32 %i.fc, %i.fa
  %i.fe = shl nuw nsw i32 %.sroa.0.0.copyload.i.i40, 8
  %i.ff = or i32 %i.fd, %i.fe                     ; 2 uses
  %.sroa.0.0.copyload.i14.i = load i32, ptr %i.x, align 4 ; 3 uses
  %i.fg = zext i32 %.sroa.0.0.copyload.i14.i to i64 ; 2 uses
  %i.fh = icmp ugt i64 %i.h, %i.fg
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = icmp ult i32 %.sroa.0.0.copyload.i14.i, 1048576
  br i1 %i.fi, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit15.i, label %bb.x, !prof !7

bb.x:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i41
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit15.i: ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit.i41
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.fg ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  %i.fl = load i8, ptr %i.fk, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 22
  %i.fn = load i8, ptr %i.fm, align 2, !range !5, !noundef !6
  %i.fo = shl nuw nsw i8 %i.fn, 4
  %i.fp = or disjoint i8 %i.fo, 7
  %i.fq = zext nneg i8 %i.fp to i32
  %i.fr = zext i8 %i.fl to i32
  %i.fs = shl nuw nsw i32 %i.fr, 5
  %i.ft = or disjoint i32 %i.fs, %i.fq
  %i.fu = shl nuw nsw i32 %.sroa.0.0.copyload.i14.i, 8
  %i.fv = or i32 %i.ft, %i.fu                     ; 2 uses
  %i.fw = icmp eq i32 %i.ff, %i.fv
  br i1 %i.fw, label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit, label %bb.y, !prof !7

bb.y:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit15.i
  %i.fx = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_8HeapTypeES2_PKNS1_10WasmModuleES5_(i32 %i.ff, i32 %i.fv, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %2)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit

bb.z:                                             ; preds = %bb.c
  unreachable

_ZN2v88internal4wasm12_GLOBAL__N_130ValidFunctionSubtypeDefinitionENS1_15ModuleTypeIndexES3_PKNS1_10WasmModuleE.exit: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i36, %bb.k, %bb.i, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.i, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i, %bb.y, %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit15.i, %bb.u, %bb.t, %bb.s, %bb.r, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i, %bb.p, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.i, %bb.h, %.critedge.preheader.i, %bb.e, %bb.d, %bb.b, %3, %bb.a
  %.0 = phi i1 [ %i.ep, %bb.u ], [ false, %bb.a ], [ false, %3 ], [ false, %bb.b ], [ false, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit42.i ], [ true, %bb.t ], [ false, %bb.e ], [ false, %bb.d ], [ true, %.critedge.preheader.i ], [ %i.fx, %bb.y ], [ true, %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit15.i ], [ false, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.i ], [ %not..i, %_ZN2v88internal4wasm15IsHeapSubtypeOfENS1_8HeapTypeES2_PKNS1_10WasmModuleE.exit.thread.i ], [ false, %bb.p ], [ false, %bb.h ], [ false, %bb.s ], [ true, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.thread.i ], [ %i.ek, %bb.r ], [ false, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i ], [ false, %bb.i ], [ false, %bb.k ], [ false, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i36 ]
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
  unreachable

bb.l:                                             ; preds = %bb.g
  unreachable

_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_130IsGenericSubtypeOfIndexedTypesENS1_13ValueTypeBaseE.exit.thread
  %i.r = lshr i32 %0, 8
  %i.s = trunc i32 %i.r to i8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit.thread

_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit.thread: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit
  %.0.i28 = phi i8 [ %i.s, %_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit ], [ 13, %bb.g ], [ 17, %bb.j ], [ 9, %bb.i ], [ 14, %bb.h ]
  %i.t = lshr i32 %1, 8
  %i.u = trunc i32 %i.t to i8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit4

bb.m:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.v = lshr i32 %0, 8
  %i.w = trunc i32 %i.v to i8                     ; 4 uses
  %i.x = trunc i32 %1 to i8
  %i.y = lshr i8 %i.x, 5
  switch i8 %i.y, label %bb.r [
    i8 2, label %_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit4
    i8 3, label %bb.n
    i8 1, label %bb.o
    i8 4, label %bb.p
    i8 0, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit4

bb.o:                                             ; preds = %bb.m
  br label %_ZN2v88internal4wasm12_GLOBAL__N_120UpcastToStandardTypeENS1_13ValueTypeBaseE.exit4

bb.p:                                             ; preds = %bb.m
end_hunk_0

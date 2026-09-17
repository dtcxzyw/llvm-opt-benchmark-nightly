Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_tables?download=true
inline.NumInlined: 561
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImRect = type { %struct.ImVec2, %struct.ImVec2 }
%struct.ImVec2 = type { float, float }
%struct.ImGuiTableTempData = type <{ i32, float, %struct.ImVec2, %struct.ImDrawListSplitter, %struct.ImRect, %struct.ImRect, %struct.ImVec2, %struct.ImVec2, %struct.ImVec2, %struct.ImVec1, float, i32, [4 x i8] }>
%struct.ImDrawListSplitter = type { i32, i32, %struct.ImVector.15 }
%struct.ImVector.15 = type { i32, i32, ptr }
%struct.ImVec1 = type { float }
%struct.MergeGroup = type { %struct.ImRect, i32, %struct.ImBitArray }
%struct.ImBitArray = type { [5 x i32] }
%struct.ImChunkStream.23 = type { %struct.ImVector.20 }
%struct.ImVector.20 = type { i32, i32, ptr }
%struct.ImGuiOldColumns = type { i32, i32, i8, i8, i32, i32, float, float, float, float, float, float, %struct.ImRect, %struct.ImRect, %struct.ImRect, %struct.ImVector.35, %struct.ImDrawListSplitter }
%struct.ImVector.35 = type { i32, i32, ptr }

$_ZN6ImPoolI10ImGuiTableE13GetOrAddByKeyEj = comdat any

$_ZN18ImGuiTableTempDataD2Ev = comdat any

$_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev = comdat any

$_ZN15ImGuiOldColumnsD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6ImPoolI10ImGuiTableE6RemoveEji = comdat any

@GImGui = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"##ContextMenu\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Size column to fit###SizeOne\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Size all columns to fit###SizeAll\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Size all columns to default###SizeAll\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Reset order\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"<Unknown>\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Table\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Table 0x%08X (%d columns, in '%s')%s\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" *Inactive*\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Clear settings\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"OuterRect: Pos: (%.1f,%.1f) Size: (%.1f,%.1f) Sizing: '%s'\00", align 1
@.str.16 = private unnamed_addr constant [71 x i8] c"ColumnsGivenWidth: %.1f, ColumnsAutoFitWidth: %.1f, InnerWidth: %.1f%s\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" (auto)\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"CellPaddingX: %.1f, CellSpacingX: %.1f/%.1f, OuterPaddingX: %.1f\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"HoveredColumnBody: %d, HoveredColumnBorder: %d\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"ResizedColumn: %d, ReorderColumn: %d, HeldHeaderColumn: %d\00", align 1
@.str.21 = private unnamed_addr constant [375 x i8] c"Column %d order %d '%s': offset %+.2f to %+.2f%s\0AEnabled: %d, VisibleX/Y: %d/%d, RequestOutput: %d, SkipItems: %d, DrawChannels: %d,%d\0AWidthGiven: %.1f, Request/Auto: %.1f/%.1f, StretchWeight: %.3f (%.1f%%)\0AMinX: %.1f, MaxX: %.1f (%+.1f), ClipRect: %.1f to %.1f (+%.1f)\0AContentWidth: %.1f,%.1f, HeadersUsed/Ideal %.1f/%.1f\0ASort: %d%s, UserID: 0x%08X, Flags: 0x%04X: %s%s%s..\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c" (Frozen)\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c" (Asc)\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c" (Des)\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"WidthStretch \00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"WidthFixed \00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"NoResize \00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Settings 0x%08X (%d columns)\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"SaveFlags: 0x%08X\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"ColumnsCount: %d (max %d)\00", align 1
@.str.31 = private unnamed_addr constant [65 x i8] c"Column %d Order %d SortOrder %d %s Vis %d %s %7.3f UserID 0x%08X\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"Asc\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"Des\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"Width \00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"0x%08X,%d\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"RefScale=%f\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"Column %d%n\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"UserID=0x%08X%n\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"Width=%d%n\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"Weight=%f%n\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"Visible=%d%n\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"Order=%d%n\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Sort=%d%c%n\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"[%s][0x%08X,%d]\0A\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"RefScale=%g\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"Column %-2d\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c" UserID=%08X\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c" Weight=%.4f\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c" Width=%d\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c" Visible=%d\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c" Order=%d\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c" Sort=%d%c\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"FixedFit\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"FixedSame\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"StretchProp\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"StretchSame\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@switch.table._ZN5ImGui14DebugNodeTableEP10ImGuiTable = private unnamed_addr constant [4 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN5ImGui13TableFindByIDEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8256
  %i.c = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %0, i32 noundef -1) ; 2 uses
  %.not.i = icmp eq i32 %i.c, -1
  br i1 %.not.i, label %_ZN6ImPoolI10ImGuiTableE8GetByKeyEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [520 x i8], ptr %i.e, i64 %i.f
  br label %_ZN6ImPoolI10ImGuiTableE8GetByKeyEj.exit

_ZN6ImPoolI10ImGuiTableE8GetByKeyEj.exit:         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, float noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef %0)
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui12BeginTableExEPKcjiiRK6ImVec2f(ptr noundef %0, i32 noundef %i.a, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef %4)
  ret i1 %i.b
}

declare noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui12BeginTableExEPKcjiiRK6ImVec2f(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, float noundef %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.ImRect, align 8             ; 15 uses
  %7 = alloca %struct.ImGuiTableTempData, align 8 ; 11 uses
  %8 = alloca %struct.ImVec2, align 4             ; 5 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %.sroa.6 = alloca <{ float, %struct.ImRect, i32, float, float, float, float, float, float, float, i16, i8, i8, i8, i8, i8 }>, align 8 ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !15 ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105  ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i8 1, ptr %i.d, align 8, !tbaa !127
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.f = load i8, ptr %i.e, align 1, !tbaa !128, !range !129, !noundef !130
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.bq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %3, 50331648
  %.not = icmp eq i32 %i.h, 0                     ; 2 uses
  %i.i = tail call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() ; 2 uses
  %.sroa.0187.0.copyload = load <2 x float>, ptr %4, align 4 ; 2 uses
  %.sroa.0188.0.vec.extract = extractelement <2 x float> %i.i, i64 0 ; 2 uses
  %i.j = fcmp oge float %.sroa.0188.0.vec.extract, 1.000000e+00
  %i.k = select i1 %i.j, float %.sroa.0188.0.vec.extract, float 1.000000e+00 ; 2 uses
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0188.4.vec.extract = extractelement <2 x float> %i.i, i64 1 ; 2 uses
  %i.l = fcmp oge float %.sroa.0188.4.vec.extract, 1.000000e+00
  %i.m = select i1 %i.l, float %.sroa.0188.4.vec.extract, float 1.000000e+00
  %i.n = tail call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.0187.0.copyload, float noundef %i.k, float noundef %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.p = load <2 x float>, ptr %i.o, align 8, !tbaa !131 ; 2 uses
  %i.q = fadd <2 x float> %i.n, %i.p
  store <2 x float> %i.p, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %i.q, ptr %i.r, align 8
  %i.s = call noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef 0)
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN5ImGui8ItemSizeERK6ImRectf(ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef -1.000000e+00)
  br label %bb.bp

.critedge:                                        ; preds = %bb.b
  %i.t = tail call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.0187.0.copyload, float noundef %i.k, float noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.v = load <2 x float>, ptr %i.u, align 8, !tbaa !131 ; 2 uses
  %i.w = fadd <2 x float> %i.t, %i.v
  store <2 x float> %i.v, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %i.w, ptr %i.x, align 8
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8240
  %i.z = call noundef ptr @_ZN6ImPoolI10ImGuiTableE13GetOrAddByKeyEj(ptr noundef nonnull align 8 dereferenceable(40) %i.y, i32 noundef %1) ; 81 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 112 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 7056 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !388
  %.not270 = icmp eq i32 %i.ab, %i.ad
  br i1 %.not270, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !144
  %i.ag = sext i16 %i.af to i32
  %i.ah = add nsw i32 %i.ag, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ai = phi i32 [ %i.ah, %bb.f ], [ 0, %bb.e ]  ; 2 uses
  %i.aj = add i32 %i.ai, %1                       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !145 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8248
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !146
  %i.ao = ptrtoint ptr %i.z to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 520               ; 2 uses
  %i.as = trunc i64 %i.ar to i32                  ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8232 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !147 ; 3 uses
  %i.av = add nsw i32 %i.au, 1                    ; 2 uses
  store i32 %i.av, ptr %i.at, align 8, !tbaa !147
  %i.aw = add nsw i32 %i.au, 2                    ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8280 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !389 ; 2 uses
  %i.az = icmp sgt i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %7, i8 0, i64 112, i1 false)
  store float -1.000000e+00, ptr %i.ba, align 4, !tbaa !149
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8284 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !390 ; 4 uses
  %i.bd = icmp sgt i32 %i.aw, %i.bc
  br i1 %i.bd, label %bb.i, label %_ZN8ImVectorI18ImGuiTableTempDataE7reserveEi.exit.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI18ImGuiTableTempDataE14_grow_capacityEi.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = sdiv i32 %i.bc, 2
  %i.bf = add nsw i32 %i.be, %i.bc
  br label %_ZNK8ImVectorI18ImGuiTableTempDataE14_grow_capacityEi.exit.i

_ZNK8ImVectorI18ImGuiTableTempDataE14_grow_capacityEi.exit.i: ; preds = %bb.j, %bb.i
  %i.bg = phi i32 [ %i.bf, %bb.j ], [ 8, %bb.i ]
  %i.bh = call noundef i32 @llvm.smax.i32(i32 %i.bg, i32 %i.aw) ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul nsw i64 %i.bi, 112
  %i.bk = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bj)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %_ZNK8ImVectorI18ImGuiTableTempDataE14_grow_capacityEi.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8288 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !150 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bm, null
  br i1 %.not6.i.i, label %.noexc300, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.bn = load i32, ptr %i.ax, align 8, !tbaa !391
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul nsw i64 %i.bo, 112
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bk, ptr nonnull align 8 %i.bm, i64 %i.bp, i1 false)
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !150
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bq)
          to label %.noexc300 unwind label %bb.p

.noexc300:                                        ; preds = %bb.k, %.noexc
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !150
  store i32 %i.bh, ptr %i.bb, align 4, !tbaa !390
  %.pre = load i32, ptr %i.ax, align 8, !tbaa !391
  br label %_ZN8ImVectorI18ImGuiTableTempDataE7reserveEi.exit.i

_ZN8ImVectorI18ImGuiTableTempDataE7reserveEi.exit.i: ; preds = %.noexc300, %bb.h
  %i.br = phi i32 [ %.pre, %.noexc300 ], [ %i.ay, %bb.h ] ; 2 uses
  %i.bs = icmp sgt i32 %i.aw, %i.br
  br i1 %i.bs, label %.preheader.i, label %.loopexit342

.preheader.i:                                     ; preds = %_ZN8ImVectorI18ImGuiTableTempDataE7reserveEi.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8288 ; 3 uses
  %i.bu = sext i32 %i.br to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.aw to i64
  %i.bv = sext i32 %i.au to i64                   ; 2 uses
  %i.bw = sub nsw i64 %i.bv, %i.bu
  %i.bx = add nsw i64 %i.bv, 1
  %xtraiter = and i64 %i.bw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.i
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !150
  %i.bz = getelementptr inbounds [112 x i8], ptr %i.by, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bz, ptr noundef nonnull align 8 dereferenceable(112) %7, i64 112, i1 false)
  %indvars.iv.next.i.prol = add nsw i64 %i.bu, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.bu, %.preheader.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ca = icmp eq i64 %i.bx, %i.bu
  br i1 %i.ca, label %.loopexit342, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.prol.loopexit, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 3 uses
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !150
  %i.cc = getelementptr inbounds [112 x i8], ptr %i.cb, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cc, ptr noundef nonnull align 8 dereferenceable(112) %7, i64 112, i1 false)
  %i.cd = load ptr, ptr %i.bt, align 8, !tbaa !150
  %i.ce = getelementptr [112 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cf, ptr noundef nonnull align 8 dereferenceable(112) %7, i64 112, i1 false)
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit342, label %.preheader.i.new, !llvm.loop !382

.loopexit342:                                     ; preds = %.prol.loopexit, %.preheader.i.new, %_ZN8ImVectorI18ImGuiTableTempDataE7reserveEi.exit.i
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !391
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 16
  invoke void @_ZN18ImDrawListSplitter15ClearFreeMemoryEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %.loopexit342
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i, label %_ZN18ImGuiTableTempDataD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ci)
          to label %_ZN18ImGuiTableTempDataD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #21
  unreachable
end_hunk_0
begin_hunk_1_@_ZN5ImGui12BeginTableExEPKcjiiRK6ImVec2f:bb.a
  %i.ky = phi i32 [ %.pre354, %bb.as ], [ %i.kh, %bb.ao ] ; 2 uses
  %.not340 = icmp sgt i32 %i.ky, %i.as
  br i1 %.not340, label %_ZN8ImVectorIfE6resizeEiRKf.exit, label %.preheader.i311

.preheader.i311:                                  ; preds = %_ZN8ImVectorIfE7reserveEi.exit.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 8304 ; 5 uses
  %i.la = sext i32 %i.ky to i64                   ; 4 uses
  %wide.trip.count.i312 = sext i32 %i.ki to i64   ; 3 uses
  %i.lb = sub nsw i64 %wide.trip.count.i312, %i.la
  %xtraiter394 = and i64 %i.lb, 3                 ; 2 uses
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod395.not, label %.prol.loopexit393, label %.prol.preheader392

.prol.preheader392:                               ; preds = %.preheader.i311, %.prol.preheader392
  %indvars.iv.i313.prol = phi i64 [ %indvars.iv.next.i314.prol, %.prol.preheader392 ], [ %i.la, %.preheader.i311 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader392 ], [ 0, %.preheader.i311 ]
  %i.lc = load ptr, ptr %i.kz, align 8, !tbaa !194
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %indvars.iv.i313.prol
  store i32 -1082130432, ptr %i.ld, align 4
  %indvars.iv.next.i314.prol = add nsw i64 %indvars.iv.i313.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter394
  br i1 %prol.iter.cmp.not, label %.prol.loopexit393, label %.prol.preheader392, !llvm.loop !383

.prol.loopexit393:                                ; preds = %.prol.preheader392, %.preheader.i311
  %indvars.iv.i313.unr = phi i64 [ %i.la, %.preheader.i311 ], [ %indvars.iv.next.i314.prol, %.prol.preheader392 ]
  %i.le = sub nsw i64 %i.la, %wide.trip.count.i312
  %i.lf = icmp ugt i64 %i.le, -4
  br i1 %i.lf, label %_ZN8ImVectorIfE6resizeEiRKf.exit, label %.preheader.i311.new

.preheader.i311.new:                              ; preds = %.prol.loopexit393, %.preheader.i311.new
  %indvars.iv.i313 = phi i64 [ %indvars.iv.next.i314.3, %.preheader.i311.new ], [ %indvars.iv.i313.unr, %.prol.loopexit393 ] ; 5 uses
  %i.lg = load ptr, ptr %i.kz, align 8, !tbaa !194
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.lg, i64 %indvars.iv.i313
  store i32 -1082130432, ptr %i.lh, align 4
  %i.li = load ptr, ptr %i.kz, align 8, !tbaa !194
  %i.lj = getelementptr [4 x i8], ptr %i.li, i64 %indvars.iv.i313
  %i.lk = getelementptr i8, ptr %i.lj, i64 4
  store i32 -1082130432, ptr %i.lk, align 4
  %i.ll = load ptr, ptr %i.kz, align 8, !tbaa !194
  %i.lm = getelementptr [4 x i8], ptr %i.ll, i64 %indvars.iv.i313
  %i.ln = getelementptr i8, ptr %i.lm, i64 8
  store i32 -1082130432, ptr %i.ln, align 4
  %i.lo = load ptr, ptr %i.kz, align 8, !tbaa !194
  %i.lp = getelementptr [4 x i8], ptr %i.lo, i64 %indvars.iv.i313
  %i.lq = getelementptr i8, ptr %i.lp, i64 12
  store i32 -1082130432, ptr %i.lq, align 4
  %indvars.iv.next.i314.3 = add nsw i64 %indvars.iv.i313, 4 ; 2 uses
  %exitcond.not.i315.3 = icmp eq i64 %indvars.iv.next.i314.3, %wide.trip.count.i312
  br i1 %exitcond.not.i315.3, label %_ZN8ImVectorIfE6resizeEiRKf.exit, label %.preheader.i311.new, !llvm.loop !384

_ZN8ImVectorIfE6resizeEiRKf.exit:                 ; preds = %.prol.loopexit393, %.preheader.i311.new, %_ZN8ImVectorIfE7reserveEi.exit.i
  store i32 %i.ki, ptr %i.kg, align 8, !tbaa !400
  br label %bb.at

bb.at:                                            ; preds = %_ZN8ImVectorIfE6resizeEiRKf.exit, %bb.an
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 7048
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !401
  %i.lt = fptrunc double %i.ls to float           ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.a, i64 8304
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !194
  %sext = shl i64 %i.ar, 32
  %i.lw = ashr exact i64 %sext, 30
  %i.lx = getelementptr inbounds i8, ptr %i.lv, i64 %i.lw
  store float %i.lt, ptr %i.lx, align 4, !tbaa !131
  %i.ly = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store float %i.lt, ptr %i.ly, align 4, !tbaa !149
  %i.lz = getelementptr inbounds nuw i8, ptr %i.z, i64 518
  store i8 0, ptr %i.lz, align 2, !tbaa !196
  %i.ma = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !197
  %i.md = load ptr, ptr %i.ma, align 8, !tbaa !198 ; 2 uses
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = sdiv exact i64 %i.mg, 104               ; 2 uses
  %i.mi = trunc i64 %i.mh to i32                  ; 2 uses
  %.not280 = icmp eq i32 %i.mi, 0
  %.not281 = icmp eq i32 %2, %i.mi
  %or.cond288 = or i1 %.not280, %.not281
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.pre355 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !199 ; 2 uses
  br i1 %or.cond288, label %bb.au, label %.thread382

.thread382:                                       ; preds = %bb.at
  store ptr null, ptr %.phi.trans.insert, align 8, !tbaa !199
  br label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.mj = icmp eq ptr %.pre355, null
  br i1 %i.mj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread382, %bb.au
  %.0262388 = phi ptr [ %.pre355, %.thread382 ], [ null, %bb.au ]
  %.0263386 = phi ptr [ %i.md, %.thread382 ], [ null, %bb.au ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ml = sext i32 %2 to i64
  %i.mm = mul i32 %2, 104
  %i.mn = mul i32 %2, 105
  %i.mo = shl i32 %2, 3                           ; 2 uses
  %i.mp = add nsw i32 %i.mn, 3
  %i.mq = and i32 %i.mp, -4                       ; 2 uses
  %i.mr = add nsw i32 %i.mq, %i.mo
  %i.ms = sext i32 %i.mr to i64                   ; 2 uses
  %i.mt = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ms) ; 2 uses
  store ptr %i.mt, ptr %i.mk, align 8, !tbaa !199
  call void @llvm.memset.p0.i64(ptr align 1 %i.mt, i8 0, i64 %i.ms, i1 false)
  %i.mu = load ptr, ptr %i.mk, align 8, !tbaa !199 ; 3 uses
  %i.mv = sext i32 %i.mm to i64
  %i.mw = getelementptr inbounds i8, ptr %i.mu, i64 %i.mv ; 3 uses
  store ptr %i.mu, ptr %i.ma, align 8, !tbaa !198
  store ptr %i.mw, ptr %i.mb, align 8, !tbaa !197
  %i.mx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.my = getelementptr inbounds i8, ptr %i.mw, i64 %i.ml
  store ptr %i.mw, ptr %i.mx, align 8, !tbaa !200
  %i.mz = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %i.my, ptr %i.mz, align 8, !tbaa !201
  %i.na = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.nb = sext i32 %i.mq to i64
  %i.nc = getelementptr inbounds i8, ptr %i.mu, i64 %i.nb ; 2 uses
  %i.nd = sext i32 %i.mo to i64
  %i.ne = getelementptr inbounds i8, ptr %i.nc, i64 %i.nd
  store ptr %i.nc, ptr %i.na, align 8, !tbaa !202
  %i.nf = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr %i.ne, ptr %i.nf, align 8, !tbaa !203
  %i.ng = getelementptr inbounds nuw i8, ptr %i.z, i64 511
  store i8 1, ptr %i.ng, align 1, !tbaa !204
  %i.nh = getelementptr inbounds nuw i8, ptr %i.z, i64 507
  store i8 1, ptr %i.nh, align 1, !tbaa !205
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0262387 = phi ptr [ %.0262388, %bb.av ], [ null, %bb.au ] ; 2 uses
  %.0263385 = phi ptr [ %.0263386, %bb.av ], [ null, %bb.au ] ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.z, i64 514 ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 2, !tbaa !206, !range !129, !noundef !130
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %.thread389, label %bb.ax

.thread389:                                       ; preds = %bb.aw
  %i.nl = getelementptr inbounds nuw i8, ptr %i.z, i64 512
  store i8 1, ptr %i.nl, align 8, !tbaa !207
  %i.nm = getelementptr inbounds nuw i8, ptr %i.z, i64 507
  store i8 1, ptr %i.nm, align 1, !tbaa !205
  store i8 0, ptr %i.ni, align 2, !tbaa !206
  %i.nn = getelementptr inbounds nuw i8, ptr %i.z, i64 511
  store i8 0, ptr %i.nn, align 1, !tbaa !204
  %i.no = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  store i32 0, ptr %i.no, align 8, !tbaa !208
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %.phi.trans.insert357 = getelementptr inbounds nuw i8, ptr %i.z, i64 507
  %.pre358 = load i8, ptr %.phi.trans.insert357, align 1, !tbaa !205, !range !129
  %i.np = trunc nuw i8 %.pre358 to i1
  br i1 %i.np, label %bb.ay, label %.loopexit341

bb.ay:                                            ; preds = %.thread389, %bb.ax
  %i.nq = getelementptr inbounds nuw i8, ptr %i.z, i64 108
  store i32 -1, ptr %i.nq, align 4, !tbaa !209
  %i.nr = getelementptr inbounds nuw i8, ptr %i.z, i64 508
  store i8 1, ptr %i.nr, align 4, !tbaa !210
  %i.ns = getelementptr inbounds nuw i8, ptr %i.z, i64 130
  store i16 -1, ptr %i.ns, align 2, !tbaa !211
  %i.nt = getelementptr inbounds nuw i8, ptr %i.z, i64 496
  store i8 -1, ptr %i.nt, align 8, !tbaa !212
  %i.nu = getelementptr inbounds nuw i8, ptr %i.z, i64 490
  store i8 -1, ptr %i.nu, align 2, !tbaa !213
  %i.nv = getelementptr inbounds nuw i8, ptr %i.z, i64 484
  %i.nw = icmp sgt i32 %2, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.nv, i8 -1, i64 5, i1 false)
  br i1 %i.nw, label %.lr.ph, label %.loopexit341

.lr.ph:                                           ; preds = %bb.ay
  %.not283 = icmp ne ptr %.0263385, null
  %i.nx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %sext381 = shl i64 %i.mh, 32
  %i.ny = ashr exact i64 %sext381, 32
  %wide.trip.count = zext nneg i32 %2 to i64
  %.sroa.6.52..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 52
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph, %bb.bc
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bc ] ; 6 uses
  %i.nz = load ptr, ptr %i.ma, align 8, !tbaa !198
  %i.oa = getelementptr inbounds nuw [104 x i8], ptr %i.nz, i64 %indvars.iv ; 11 uses
  %i.ob = icmp slt i64 %indvars.iv, %i.ny
  %or.cond289 = and i1 %.not283, %i.ob
  br i1 %or.cond289, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.oc = getelementptr inbounds nuw [104 x i8], ptr %.0263385, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(103) %i.oa, ptr noundef nonnull align 4 dereferenceable(103) %i.oc, i64 103, i1 false), !tbaa.struct !403
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 20 ; 2 uses
  %i.oe = load float, ptr %i.od, align 4, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.6.52..sroa_idx, i8 -1, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.oa, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store float -1.000000e+00, ptr %.sroa.4.0..sroa_idx320, align 4, !tbaa !131
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oa, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(59) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(59) %.sroa.6, i64 59, i1 false), !tbaa.struct !404
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oa, i64 87
  %i.of = getelementptr inbounds nuw i8, ptr %i.oa, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.of, i8 0, i64 11, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.og = insertelement <2 x float> <float poison, float -1.000000e+00>, float %i.oe, i64 0
  store <2 x float> %i.og, ptr %i.od, align 4, !tbaa !131
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oa, i64 97
  store i8 1, ptr %i.oh, align 1, !tbaa !219
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oa, i64 92
  store i8 1, ptr %i.oi, align 4, !tbaa !220
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oa, i64 91
  store i8 1, ptr %i.oj, align 1, !tbaa !221
  store <4 x i8> <i8 -1, i8 -1, i8 -1, i8 1>, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !215
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ok = trunc i64 %indvars.iv to i8             ; 2 uses
  %i.ol = load ptr, ptr %i.nx, align 8, !tbaa !200
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 %indvars.iv
  store i8 %i.ok, ptr %i.om, align 1, !tbaa !215
  %i.on = getelementptr inbounds nuw i8, ptr %i.oa, i64 82
  store i8 %i.ok, ptr %i.on, align 2, !tbaa !222
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit341, label %bb.az, !llvm.loop !385

.loopexit341:                                     ; preds = %bb.bc, %bb.ay, %bb.ax
  %.not282 = icmp eq ptr %.0262387, null
  br i1 %.not282, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.loopexit341
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.0262387)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.loopexit341
  %i.oo = getelementptr inbounds nuw i8, ptr %i.z, i64 511
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !204, !range !129, !noundef !130
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @_ZN5ImGui17TableLoadSettingsEP10ImGuiTable(ptr noundef nonnull %i.z)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  %i.os = load float, ptr %i.or, align 8, !tbaa !223 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.z, i64 240 ; 2 uses
  %i.ou = load float, ptr %i.ot, align 8, !tbaa !224 ; 3 uses
  %i.ov = fcmp une float %i.ou, 0.000000e+00
  %i.ow = fcmp une float %i.ou, %i.os
  %or.cond290 = select i1 %i.ov, i1 %i.ow, i1 false
  br i1 %or.cond290, label %bb.bh, label %.loopexit

bb.bh:                                            ; preds = %bb.bg
  %i.ox = fdiv float %i.os, %i.ou                 ; 5 uses
  %i.oy = icmp sgt i32 %2, 0
  br i1 %i.oy, label %.lr.ph345, label %.loopexit

.lr.ph345:                                        ; preds = %bb.bh
  %i.oz = load ptr, ptr %i.ma, align 8, !tbaa !198 ; 5 uses
  %wide.trip.count350 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter396 = and i64 %wide.trip.count350, 3   ; 3 uses
  %i.pa = icmp ult i32 %2, 4
  br i1 %i.pa, label %.epil.preheader, label %.lr.ph345.new

.lr.ph345.new:                                    ; preds = %.lr.ph345
  %unroll_iter = and i64 %wide.trip.count350, 2147483644
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.lr.ph345.new
  %indvars.iv347 = phi i64 [ 0, %.lr.ph345.new ], [ %indvars.iv.next348.3, %bb.bi ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph345.new ], [ %niter.next.3, %bb.bi ]
  %i.pb = getelementptr inbounds nuw [104 x i8], ptr %i.oz, i64 %indvars.iv347
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16 ; 2 uses
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !225
  %i.pe = fmul float %i.ox, %i.pd
  store float %i.pe, ptr %i.pc, align 4, !tbaa !225
  %i.pf = getelementptr inbounds nuw [104 x i8], ptr %i.oz, i64 %indvars.iv347
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 120 ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !225
  %i.pi = fmul float %i.ox, %i.ph
  store float %i.pi, ptr %i.pg, align 4, !tbaa !225
  %i.pj = getelementptr inbounds nuw [104 x i8], ptr %i.oz, i64 %indvars.iv347
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 224 ; 2 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !225
  %i.pm = fmul float %i.ox, %i.pl
  store float %i.pm, ptr %i.pk, align 4, !tbaa !225
  %i.pn = getelementptr inbounds nuw [104 x i8], ptr %i.oz, i64 %indvars.iv347
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 328 ; 2 uses
  %i.pp = load float, ptr %i.po, align 4, !tbaa !225
  %i.pq = fmul float %i.ox, %i.pp
  store float %i.pq, ptr %i.po, align 4, !tbaa !225
  %indvars.iv.next348.3 = add nuw nsw i64 %indvars.iv347, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.bi, !llvm.loop !386

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bi
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod397.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph345
  %indvars.iv347.epil.init = phi i64 [ 0, %.lr.ph345 ], [ %indvars.iv.next348.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod398 = icmp ne i64 %xtraiter396, 0
  call void @llvm.assume(i1 %lcmp.mod398)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader
  %indvars.iv347.epil = phi i64 [ %indvars.iv347.epil.init, %.epil.preheader ], [ %indvars.iv.next348.epil, %bb.bj ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bj ]
  %i.pr = getelementptr inbounds nuw [104 x i8], ptr %i.oz, i64 %indvars.iv347.epil
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !225
  %i.pu = fmul float %i.ox, %i.pt
  store float %i.pu, ptr %i.ps, align 4, !tbaa !225
  %indvars.iv.next348.epil = add nuw nsw i64 %indvars.iv347.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter396
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.bj, !llvm.loop !387

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.bj, %bb.bh, %bb.bg
  store float %i.os, ptr %i.ot, align 8, !tbaa !224
  store i8 1, ptr %i.fs, align 1, !tbaa !128
  %i.pv = getelementptr inbounds nuw i8, ptr %i.z, i64 408 ; 3 uses
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !405
  %i.px = icmp sgt i32 %i.pw, 0
  br i1 %i.px, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %.loopexit
  %i.py = getelementptr inbounds nuw i8, ptr %i.z, i64 412 ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !226
  %i.qa = icmp slt i32 %i.pz, 0
  br i1 %i.qa, label %bb.bl, label %_ZN8ImVectorIcE6resizeEi.exit

bb.bl:                                            ; preds = %bb.bk
  %i.qb = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.z, i64 416 ; 3 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !227 ; 2 uses
  %.not6.i.i319 = icmp eq ptr %i.qd, null
  br i1 %.not6.i.i319, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qe = load i32, ptr %i.pv, align 8, !tbaa !228
  %i.qf = sext i32 %i.qe to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qb, ptr nonnull align 1 %i.qd, i64 %i.qf, i1 false)
  %i.qg = load ptr, ptr %i.qc, align 8, !tbaa !227
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.qg)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  store ptr %i.qb, ptr %i.qc, align 8, !tbaa !227
  store i32 0, ptr %i.py, align 4, !tbaa !226
  br label %_ZN8ImVectorIcE6resizeEi.exit

_ZN8ImVectorIcE6resizeEi.exit:                    ; preds = %bb.bk, %bb.bn
  store i32 0, ptr %i.pv, align 8, !tbaa !228
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN8ImVectorIcE6resizeEi.exit, %.loopexit
  call void @_ZN5ImGui23TableBeginApplyRequestsEP10ImGuiTable(ptr noundef nonnull %i.z)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.d
  %.0260 = phi i1 [ false, %bb.d ], [ true, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.bq

bb.bq:                                            ; preds = %bb.a, %bb.bp
  %.1 = phi i1 [ %.0260, %bb.bp ], [ false, %bb.a ]
  ret i1 %.1
}

declare <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() local_unnamed_addr #2

declare <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float>, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui8ItemSizeERK6ImRectf(ptr noundef nonnull align 4 dereferenceable(16), float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN6ImPoolI10ImGuiTableE13GetOrAddByKeyEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1, i32 noundef -1) ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !214  ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [520 x i8], ptr %i.e, i64 %i.f
  br label %bb.j

end_hunk_1

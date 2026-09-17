Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImVec2 = type { float, float }
%struct.ImRect = type { %struct.ImVec2, %struct.ImVec2 }
%struct.ImGuiTableTempData = type <{ i32, i32, float, float, %struct.ImVector.43, %struct.ImVector.44, ptr, %struct.ImSpan, %struct.ImVec2, %struct.ImDrawListSplitter, %struct.ImRect, %struct.ImRect, %struct.ImVec2, %struct.ImVec2, %struct.ImVec2, %struct.ImVec1, float, i32, [4 x i8] }>
%struct.ImVector.43 = type { i32, i32, ptr }
%struct.ImVector.44 = type { i32, i32, ptr }
%struct.ImSpan = type { ptr, ptr }
%struct.ImDrawListSplitter = type { i32, i32, %struct.ImVector.23 }
%struct.ImVector.23 = type { i32, i32, ptr }
%struct.ImVec1 = type { float }
%struct.MergeGroup = type { %struct.ImRect, i32, ptr }
%struct.ImGuiSettingsHandler = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ImChunkStream.35 = type { %struct.ImVector.31 }
%struct.ImVector.31 = type { i32, i32, ptr }
%struct.ImGuiOldColumns = type { i32, i32, i8, i8, i32, i32, float, float, float, float, float, float, %struct.ImRect, %struct.ImRect, %struct.ImRect, %struct.ImVector.49, %struct.ImDrawListSplitter }
%struct.ImVector.49 = type { i32, i32, ptr }

$_ZN6ImPoolI10ImGuiTableE13GetOrAddByKeyEj = comdat any

$_ZN18ImGuiTableTempDataD2Ev = comdat any

$_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev = comdat any

$_ZN15ImGuiOldColumnsD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN10ImGuiTableD2Ev = comdat any

@GImGui = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"##Instances\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"[table] Table 0x%08X column count %d -> %d, recreating storage.\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"[table] 0x%08X RefScale %.3f -> %.3f, scaling width by %.3f\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"EndTable() call should only be done while in BeginTable() scope!\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Mismatching PushID/PopID!\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Too many PopItemWidth!\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Call should only be done while in BeginTable() scope!\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"TableSetupColumn(): called too many times!\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"TableSetupColumn(): need to call before first row!\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"[table] Reconcile columns for table 0x%08X\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"[table] - old %d -> new %d \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"TableSetColumnIndex() invalid column index!\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"##AngledHeaders\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"##ContextMenu\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"<Unknown>\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Table\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Table 0x%08X (%d columns, in '%s')%s\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c" *Inactive*\00", align 1
@.str.22 = private unnamed_addr constant [76 x i8] c"** %d instances of same table! Some data below will refer to last instance.\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"**DebugBreak**\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"in BeginTable()\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Clear settings\00", align 1
@.str.26 = private unnamed_addr constant [59 x i8] c"OuterRect: Pos: (%.1f,%.1f) Size: (%.1f,%.1f) Sizing: '%s'\00", align 1
@.str.27 = private unnamed_addr constant [71 x i8] c"ColumnsGivenWidth: %.1f, ColumnsAutoFitWidth: %.1f, InnerWidth: %.1f%s\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c" (auto)\00", align 1
@.str.29 = private unnamed_addr constant [65 x i8] c"CellPaddingX: %.1f, CellSpacingX: %.1f/%.1f, OuterPaddingX: %.1f\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"HoveredColumnBody: %d, HoveredColumnBorder: %d\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"ResizedColumn: %d, HeldHeaderColumn: %d, ReorderColumn: %d\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"Instance %d: HoveredRow: %d, LastOuterHeight: %.2f\00", align 1
@.str.33 = private unnamed_addr constant [377 x i8] c"Column %d order %d '%s': offset %+.2f to %+.2f%s\0AEnabled: %d, VisibleX/Y: %d/%d, RequestOutput: %d, SkipItems: %d, DrawChannels: %d,%d\0AWidthGiven: %.1f, Request/Auto: %.1f/%.1f, StretchWeight: %.3f (%.1f%%)\0AMinX: %.1f, MaxX: %.1f (%+.1f), ClipRect: %.1f to %.1f (+%.1f)\0AContentWidth: %.1f,%.1f, HeadersUsed/Ideal %.1f/%.1f\0ASort: %d%s, UserData: 0x%08X, Flags: 0x%04X: %s%s%s..\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c" (Frozen)\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c" (Asc)\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c" (Des)\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"WidthStretch \00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"WidthFixed \00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"NoResize \00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"Settings 0x%08X (%d columns)\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"SaveFlags: 0x%08X\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"ColumnsCount: %d (max %d)\00", align 1
@.str.43 = private unnamed_addr constant [62 x i8] c"Column %d Order %d SortOrder %2d %s Vis %d %s %7.3f ID 0x%08X\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"Asc\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"Des\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"Width \00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@.str.50 = private unnamed_addr constant [112 x i8] c"TableSetupColumn(): can only specify width/weight if sizing policy is set explicitly in either Table or Column.\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"*Missing Text*\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"0x%08X,%d\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"RefScale=%f\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"LastUsed=%d\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"Column %d%n\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"UserID=0x%08X%n\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"Width=%d%n\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"Weight=%f%n\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"Visible=%d%n\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"Order=%d%n\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"Sort=%d%c%n\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"ID=0x%08X%n\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"[%s][0x%08X,%d]\0A\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"RefScale=%g\0A\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"Column %-2d\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c" Weight=%.4f\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c" Width=%d\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c" Visible=%d\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c" Order=%d\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c" Sort=%d%c\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c" ID=0x%08X\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"LastUsed=%08d\0A\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"FixedFit\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"FixedSame\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"StretchProp\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"StretchSame\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@switch.table._ZN5ImGui14DebugNodeTableEP10ImGuiTable = private unnamed_addr constant [4 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], align 8

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5ImGui13TableFindByIDEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9032
  %i.c = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %0, i32 noundef -1) ; 2 uses
  %.not.i = icmp eq i32 %i.c, -1
  br i1 %.not.i, label %_ZN6ImPoolI10ImGuiTableE8GetByKeyEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9024
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [592 x i8], ptr %i.e, i64 %i.f
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
define noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, float noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef %0)
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui12BeginTableExEPKcjiiRK6ImVec2f(ptr noundef %0, i32 noundef %i.a, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef %4)
  ret i1 %i.b
}

declare noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui12BeginTableExEPKcjiiRK6ImVec2f(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, float noundef %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImRect, align 8             ; 12 uses
  %8 = alloca %struct.ImGuiTableTempData, align 8 ; 13 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %.sroa.6 = alloca <{ float, %struct.ImRect, i32, i32, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16 }>, align 8 ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !173
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !174, !range !175, !noundef !176
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.dp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %3, 50331648
  %.not341 = icmp eq i32 %i.h, 0                  ; 3 uses
  %i.i = tail call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() ; 2 uses
  %.sroa.0241.0.copyload = load <2 x float>, ptr %4, align 4
  %.sroa.0242.0.vec.extract = extractelement <2 x float> %i.i, i64 0 ; 2 uses
  %i.j = fcmp oge float %.sroa.0242.0.vec.extract, 4.000000e+00
  %i.k = select i1 %i.j, float %.sroa.0242.0.vec.extract, float 4.000000e+00
  br i1 %.not341, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0242.4.vec.extract = extractelement <2 x float> %i.i, i64 1 ; 2 uses
  %i.l = fcmp oge float %.sroa.0242.4.vec.extract, 4.000000e+00
  %i.m = select i1 %i.l, float %.sroa.0242.4.vec.extract, float 4.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi float [ %i.m, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.o = tail call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.0241.0.copyload, float noundef %i.k, float noundef %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.q = fptosi <2 x float> %i.o to <2 x i32>
  %i.r = sitofp <2 x i32> %i.q to <2 x float>
  %i.s = load <2 x float>, ptr %i.p, align 4, !tbaa !177 ; 2 uses
  %i.t = fadd <2 x float> %i.s, %i.r
  store <2 x float> %i.s, ptr %7, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store <2 x float> %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.w = load i8, ptr %i.v, align 8, !tbaa !503
  %i.x = icmp sgt i8 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 233
  %i.z = load i8, ptr %i.y, align 1, !tbaa !504
  %i.aa = icmp sgt i8 %i.z, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi i1 [ true, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  br i1 %.not341, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = call noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 0)
  %.not = xor i1 %i.ac, true
  %or.cond = select i1 %.not, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.ad = load <2 x float>, ptr %i.u, align 8, !tbaa !177
  %i.ae = load <2 x float>, ptr %7, align 8, !tbaa !177
  %i.af = fsub <2 x float> %i.ad, %i.ae
  store <2 x float> %i.af, ptr %6, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %6, float noundef -1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  %i.ag = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %1, ptr noundef null, i32 noundef 0) ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 7928
  store i32 0, ptr %i.ah, align 8, !tbaa !505
  br label %bb.do

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8992
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !178
  %i.ak = icmp eq i32 %i.aj, %1
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.debugtrap()
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 9016
  %i.am = call noundef ptr @_ZN6ImPoolI10ImGuiTableE13GetOrAddByKeyEj(ptr noundef nonnull align 8 dereferenceable(40) %i.al, i32 noundef %1) ; 116 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 9024
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !179
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 592               ; 2 uses
  %i.at = trunc i64 %i.as to i32                  ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8996 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !180 ; 4 uses
  %i.aw = add nsw i32 %i.av, 1                    ; 5 uses
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !180
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 9000 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !506 ; 2 uses
  %.not342 = icmp slt i32 %i.av, %i.ay
  br i1 %.not342, label %bb.y, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %8, i8 0, i64 176, i1 false)
  store float -1.000000e+00, ptr %i.az, align 8, !tbaa !188
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 9004 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !507 ; 4 uses
  %.not420 = icmp slt i32 %i.av, %i.bb
  br i1 %.not420, label %_ZN8ImVectorI18ImGuiTableTempDataE7reserveEi.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI18ImGuiTableTempDataE14_grow_capacityEi.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = sdiv i32 %i.bb, 2
  %i.bd = add nsw i32 %i.bc, %i.bb
  br label %_ZNK8ImVectorI18ImGuiTableTempDataE14_grow_capacityEi.exit.i

_ZNK8ImVectorI18ImGuiTableTempDataE14_grow_capacityEi.exit.i: ; preds = %bb.n, %bb.m
  %i.be = phi i32 [ %i.bd, %bb.n ], [ 8, %bb.m ]
  %i.bf = call noundef i32 @llvm.smax.i32(i32 %i.be, i32 %i.aw) ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %i.bg, 176
  %i.bi = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bh)
          to label %.noexc unwind label %bb.x     ; 2 uses

.noexc:                                           ; preds = %_ZNK8ImVectorI18ImGuiTableTempDataE14_grow_capacityEi.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 9008 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !189 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bk, null
  br i1 %.not6.i.i, label %.noexc369, label %bb.o

bb.o:                                             ; preds = %.noexc
  %i.bl = load i32, ptr %i.ax, align 8, !tbaa !508
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %i.bm, 176
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bi, ptr nonnull align 8 %i.bk, i64 %i.bn, i1 false)
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !189
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bo)
          to label %.noexc369 unwind label %bb.x

.noexc369:                                        ; preds = %bb.o, %.noexc
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !189
  store i32 %i.bf, ptr %i.ba, align 4, !tbaa !507
  %.pre = load i32, ptr %i.ax, align 8, !tbaa !508
  br label %_ZN8ImVectorI18ImGuiTableTempDataE7reserveEi.exit.i

_ZN8ImVectorI18ImGuiTableTempDataE7reserveEi.exit.i: ; preds = %.noexc369, %bb.l
  %i.bp = phi i32 [ %.pre, %.noexc369 ], [ %i.ay, %bb.l ] ; 2 uses
  %.not421 = icmp slt i32 %i.av, %i.bp
  br i1 %.not421, label %.loopexit424, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8ImVectorI18ImGuiTableTempDataE7reserveEi.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 9008 ; 3 uses
  %i.br = sext i32 %i.bp to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.aw to i64      ; 3 uses
  %i.bs = sub nsw i64 %wide.trip.count.i, %i.br
  %xtraiter = and i64 %i.bs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.i
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !189
  %i.bu = getelementptr inbounds [176 x i8], ptr %i.bt, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.bu, ptr noundef nonnull align 8 dereferenceable(176) %8, i64 176, i1 false)
  %indvars.iv.next.i.prol = add nsw i64 %i.br, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.br, %.preheader.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.bv = add nsw i64 %wide.trip.count.i, -1
  %i.bw = icmp eq i64 %i.bv, %i.br
  br i1 %i.bw, label %.loopexit424, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.prol.loopexit, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 3 uses
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !189
  %i.by = getelementptr inbounds [176 x i8], ptr %i.bx, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.by, ptr noundef nonnull align 8 dereferenceable(176) %8, i64 176, i1 false)
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !189
  %i.ca = getelementptr [176 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.cb, ptr noundef nonnull align 8 dereferenceable(176) %8, i64 176, i1 false)
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit424, label %.preheader.i.new, !llvm.loop !499

.loopexit424:                                     ; preds = %.prol.loopexit, %.preheader.i.new, %_ZN8ImVectorI18ImGuiTableTempDataE7reserveEi.exit.i
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !508
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 80
  invoke void @_ZN18ImDrawListSplitter15ClearFreeMemoryEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %.loopexit424
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %_ZN18ImDrawListSplitterD2Ev.exit.i, label %bb.q
end_hunk_0
begin_hunk_1_@_ZN5ImGui12BeginTableExEPKcjiiRK6ImVec2f:bb.a
  %.not359 = icmp eq i32 %i.rz, 0
  br i1 %.not359, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sa = load i32, ptr %i.am, align 8, !tbaa !218
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.1, i32 noundef %i.sa, i32 noundef %i.rw, i32 noundef %2)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.sb = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !273
  %i.sd = getelementptr i8, ptr %i.cw, i64 -128
  store ptr %i.sc, ptr %i.sd, align 8, !tbaa !274
  %i.se = getelementptr i8, ptr %i.cw, i64 -120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.se, ptr noundef nonnull align 8 dereferenceable(16) %i.ro, i64 16, i1 false), !tbaa.struct !530
  %i.sf = load ptr, ptr %i.cy, align 8, !tbaa !207 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 56
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !271 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 64
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !270 ; 2 uses
  %.not360426 = icmp eq ptr %i.sh, %i.sj
  br i1 %.not360426, label %.thread492, label %.lr.ph

.thread492:                                       ; preds = %.lr.ph, %bb.cq
  store ptr null, ptr %i.sb, align 8, !tbaa !273
  br label %bb.cs

.lr.ph:                                           ; preds = %bb.cq, %.lr.ph
  %.0331427 = phi ptr [ %i.sn, %.lr.ph ], [ %i.sh, %bb.cq ] ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.0331427, i64 113 ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 1
  %i.sm = or i8 %i.sl, 8
  store i8 %i.sm, ptr %i.sk, align 1
  %i.sn = getelementptr inbounds nuw i8, ptr %.0331427, i64 120 ; 2 uses
  %.not360 = icmp eq ptr %i.sn, %i.sj
  br i1 %.not360, label %.thread492, label %.lr.ph

bb.cr:                                            ; preds = %bb.cn
  %.phi.trans.insert442 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.pre443 = load ptr, ptr %.phi.trans.insert442, align 8, !tbaa !273
  %i.so = icmp eq ptr %.pre443, null
  br i1 %i.so, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.thread492, %bb.cr
  %i.sp = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.sq = add nsw i32 %2, 31
  %i.sr = mul i32 %2, 120
  %i.ss = shl i32 %2, 1
  %i.st = mul i32 %2, 122
  %i.su = shl i32 %2, 3                           ; 2 uses
  %i.sv = add nsw i32 %i.st, 2                    ; 2 uses
  %i.sw = and i32 %i.sv, -4
  %i.sx = add nsw i32 %i.sv, %i.su                ; 2 uses
  %i.sy = ashr i32 %i.sq, 3
  %i.sz = and i32 %i.sy, -4                       ; 3 uses
  %i.ta = and i32 %i.sx, -4
  %i.tb = add nsw i32 %i.sx, %i.sz                ; 2 uses
  %i.tc = and i32 %i.tb, -4
  %i.td = add nsw i32 %i.tb, %i.sz
  %i.te = and i32 %i.td, -4                       ; 2 uses
  %i.tf = add nsw i32 %i.te, %i.sz
  %i.tg = sext i32 %i.tf to i64                   ; 2 uses
  %i.th = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.tg) ; 2 uses
  store ptr %i.th, ptr %i.sp, align 8, !tbaa !273
  call void @llvm.memset.p0.i64(ptr align 1 %i.th, i8 0, i64 %i.tg, i1 false)
  %i.ti = load ptr, ptr %i.sp, align 8, !tbaa !273 ; 6 uses
  %i.tj = sext i32 %i.sr to i64
  %i.tk = getelementptr inbounds i8, ptr %i.ti, i64 %i.tj ; 3 uses
  store ptr %i.ti, ptr %i.ro, align 8, !tbaa !271
  store ptr %i.tk, ptr %i.rp, align 8, !tbaa !270
  %i.tl = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.tm = sext i32 %i.ss to i64
  %i.tn = getelementptr inbounds i8, ptr %i.tk, i64 %i.tm
  store ptr %i.tk, ptr %i.tl, align 8, !tbaa !275
  %i.to = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr %i.tn, ptr %i.to, align 8, !tbaa !276
  %i.tp = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.tq = sext i32 %i.sw to i64
  %i.tr = getelementptr inbounds i8, ptr %i.ti, i64 %i.tq ; 2 uses
  %i.ts = sext i32 %i.su to i64
  %i.tt = getelementptr inbounds i8, ptr %i.tr, i64 %i.ts
  store ptr %i.tr, ptr %i.tp, align 8, !tbaa !277
  %i.tu = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store ptr %i.tt, ptr %i.tu, align 8, !tbaa !278
  %i.tv = sext i32 %i.ta to i64
  %i.tw = getelementptr inbounds i8, ptr %i.ti, i64 %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store ptr %i.tw, ptr %i.tx, align 8, !tbaa !279
  %i.ty = sext i32 %i.tc to i64
  %i.tz = getelementptr inbounds i8, ptr %i.ti, i64 %i.ty
  %i.ua = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store ptr %i.tz, ptr %i.ua, align 8, !tbaa !280
  %i.ub = sext i32 %i.te to i64
  %i.uc = getelementptr inbounds i8, ptr %i.ti, i64 %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store ptr %i.uc, ptr %i.ud, align 8, !tbaa !281
  %i.ue = getelementptr inbounds nuw i8, ptr %i.am, i64 571
  store i8 1, ptr %i.ue, align 1, !tbaa !282
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.uf = getelementptr inbounds nuw i8, ptr %i.am, i64 581 ; 2 uses
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !283, !range !175, !noundef !176
  %i.uh = trunc nuw i8 %i.ug to i1
  br i1 %i.uh, label %.thread493, label %bb.cu

.thread493:                                       ; preds = %bb.ct
  %i.ui = getelementptr inbounds nuw i8, ptr %i.am, i64 578
  store i8 1, ptr %i.ui, align 2, !tbaa !284
  %i.uj = getelementptr inbounds nuw i8, ptr %i.am, i64 571
  store i8 1, ptr %i.uj, align 1, !tbaa !282
  store i8 0, ptr %i.uf, align 1, !tbaa !283
  %i.uk = getelementptr inbounds nuw i8, ptr %i.am, i64 577
  store i8 0, ptr %i.uk, align 1, !tbaa !285
  %i.ul = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  store i32 0, ptr %i.ul, align 8, !tbaa !286
  br label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %.phi.trans.insert445 = getelementptr inbounds nuw i8, ptr %i.am, i64 571
  %.pre446 = load i8, ptr %.phi.trans.insert445, align 1, !tbaa !282, !range !175
  %i.um = trunc nuw i8 %.pre446 to i1
  br i1 %i.um, label %bb.cv, label %.loopexit

bb.cv:                                            ; preds = %.thread493, %bb.cu
  br i1 %i.fc, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.un = getelementptr inbounds nuw i8, ptr %i.am, i64 100
  store i32 -1, ptr %i.un, align 4, !tbaa !287
  %i.uo = getelementptr inbounds nuw i8, ptr %i.am, i64 577
  store i8 1, ptr %i.uo, align 1, !tbaa !285
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.up = getelementptr inbounds nuw i8, ptr %i.am, i64 573
  store i8 1, ptr %i.up, align 1, !tbaa !288
  %i.uq = getelementptr inbounds nuw i8, ptr %i.am, i64 578
  store i8 1, ptr %i.uq, align 2, !tbaa !284
  %i.ur = getelementptr inbounds nuw i8, ptr %i.am, i64 572
  store i8 0, ptr %i.ur, align 4, !tbaa !289
  %i.us = getelementptr inbounds nuw i8, ptr %i.am, i64 122
  store i16 -1, ptr %i.us, align 2, !tbaa !290
  %i.ut = getelementptr inbounds nuw i8, ptr %i.am, i64 550
  store i16 -1, ptr %i.ut, align 2, !tbaa !291
  %i.uu = getelementptr inbounds nuw i8, ptr %i.am, i64 532
  store i16 -1, ptr %i.uu, align 4, !tbaa !292
  %i.uv = getelementptr inbounds nuw i8, ptr %i.am, i64 530
  store i16 -1, ptr %i.uv, align 2, !tbaa !293
  %i.uw = getelementptr inbounds nuw i8, ptr %i.am, i64 540
  store i16 -1, ptr %i.uw, align 4, !tbaa !294
  %i.ux = getelementptr inbounds nuw i8, ptr %i.am, i64 538
  store i16 -1, ptr %i.ux, align 2, !tbaa !295
  %i.uy = getelementptr inbounds nuw i8, ptr %i.am, i64 528
  store i16 -1, ptr %i.uy, align 8, !tbaa !296
  %i.uz = getelementptr inbounds nuw i8, ptr %i.am, i64 524
  store i16 -1, ptr %i.uz, align 4, !tbaa !297
  %i.va = getelementptr inbounds nuw i8, ptr %i.am, i64 522
  store i16 -1, ptr %i.va, align 2, !tbaa !298
  %i.vb = icmp sgt i32 %2, 0
  br i1 %i.vb, label %.lr.ph431, label %.loopexit

.lr.ph431:                                        ; preds = %bb.cx
  %i.vc = getelementptr i8, ptr %i.cw, i64 -120
  %i.vd = getelementptr i8, ptr %i.cw, i64 -112
  %i.ve = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %wide.trip.count = zext nneg i32 %2 to i64
  %.sroa.6.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 56
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph431, %bb.dc
  %indvars.iv = phi i64 [ 0, %.lr.ph431 ], [ %indvars.iv.next, %bb.dc ] ; 6 uses
  %i.vf = load ptr, ptr %i.ro, align 8, !tbaa !271
  %i.vg = getelementptr inbounds nuw [120 x i8], ptr %i.vf, i64 %indvars.iv ; 17 uses
  %i.vh = load ptr, ptr %i.vc, align 8, !tbaa !531 ; 3 uses
  %.not361 = icmp eq ptr %i.vh, null
  br i1 %.not361, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vi = load ptr, ptr %i.vd, align 8, !tbaa !270
  %i.vj = ptrtoint ptr %i.vi to i64
  %i.vk = ptrtoint ptr %i.vh to i64
  %i.vl = sub i64 %i.vj, %i.vk
  %i.vm = sdiv exact i64 %i.vl, 120
  %sext491 = shl i64 %i.vm, 32
  %i.vn = ashr exact i64 %sext491, 32
  %i.vo = icmp slt i64 %indvars.iv, %i.vn
  br i1 %i.vo, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.vp = getelementptr inbounds nuw [120 x i8], ptr %i.vh, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(118) %i.vg, ptr noundef nonnull align 4 dereferenceable(118) %i.vp, i64 118, i1 false), !tbaa.struct !303
  %.phi.trans.insert447 = getelementptr inbounds nuw i8, ptr %i.vg, i64 90
  %.pre448 = load i16, ptr %.phi.trans.insert447, align 2, !tbaa !305
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz, %bb.cy
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vg, i64 20 ; 3 uses
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i8 0, i64 56, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.56..sroa_idx, i8 -1, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.vg, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx399 = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  store float -1.000000e+00, ptr %.sroa.4.0..sroa_idx399, align 4, !tbaa !177
  store i64 0, ptr %i.vq, align 4
  %.sroa.5400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 28
  store float -1.000000e+00, ptr %.sroa.5400.0..sroa_idx, align 4, !tbaa !177
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(68) %.sroa.6, i64 68, i1 false), !tbaa.struct !532
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 100
  store i16 255, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !300
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 102
  store i16 255, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !300
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 104
  store i16 255, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !300
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 106
  %12 = getelementptr inbounds nuw i8, ptr %i.vg, i64 108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %12, i8 0, i64 5, i1 false)
  %.sroa.10401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 113
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vg, i64 114
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store float %i.vr, ptr %i.vq, align 4, !tbaa !306
  store i8 3, ptr %.sroa.10401.0..sroa_idx, align 1
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vg, i64 108
  store i8 1, ptr %i.vs, align 4, !tbaa !307
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vg, i64 107
  store i8 1, ptr %i.vt, align 1, !tbaa !308
  store i8 1, ptr %.sroa.10.0..sroa_idx, align 2, !tbaa !309
  %i.vu = trunc i64 %indvars.iv to i16            ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vg, i64 90
  store i16 %i.vu, ptr %i.vv, align 2, !tbaa !305
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.vw = phi i16 [ %i.vu, %bb.db ], [ %.pre448, %bb.da ]
  %i.vx = load ptr, ptr %i.ve, align 8, !tbaa !275
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %i.vx, i64 %indvars.iv
  store i16 %i.vw, ptr %i.vy, align 2, !tbaa !300
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.cy, !llvm.loop !502

.loopexit:                                        ; preds = %bb.dc, %bb.cx, %bb.cu
  %i.vz = getelementptr inbounds nuw i8, ptr %i.am, i64 577 ; 2 uses
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !285, !range !175, !noundef !176
  %i.wb = trunc nuw i8 %i.wa to i1
  br i1 %i.wb, label %bb.dd, label %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit

bb.dd:                                            ; preds = %.loopexit
  %i.wc = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 4 uses
  %i.wd = load i32, ptr %i.fa, align 4, !tbaa !217
  %i.we = and i32 %i.wd, 16
  %.not.i393 = icmp eq i32 %i.we, 0
  br i1 %.not.i393, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store i8 0, ptr %i.vz, align 1, !tbaa !285
  br label %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit

bb.df:                                            ; preds = %bb.dd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.am, i64 100 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !287 ; 2 uses
  %i.wh = icmp eq i32 %i.wg, -1
  br i1 %i.wh, label %bb.dg, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.i

bb.dg:                                            ; preds = %bb.df
  %i.wi = load i32, ptr %i.am, align 8, !tbaa !218
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wc, i64 10120
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wc, i64 10128
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !310 ; 4 uses
  %.not.i.i.i395 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i395, label %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.dg
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %select.unfold.i.i, %.lr.ph.i.preheader.i
  %.0812.i.i = phi ptr [ %i.ws, %select.unfold.i.i ], [ %i.wm, %.lr.ph.i.preheader.i ] ; 6 uses
  %i.wn = load i32, ptr %.0812.i.i, align 4, !tbaa !312
  %i.wo = icmp eq i32 %i.wn, %i.wi
  br i1 %i.wo, label %_ZN5ImGui21TableSettingsFindByIDEj.exit.i, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.wp = getelementptr inbounds i8, ptr %.0812.i.i, i64 -4
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !299
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr inbounds i8, ptr %.0812.i.i, i64 %i.wr ; 2 uses
  %i.wt = load i32, ptr %i.wj, align 8, !tbaa !313
  %i.wu = sext i32 %i.wt to i64
  %i.wv = getelementptr inbounds i8, ptr %i.wl, i64 %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 4
  %i.wx = icmp eq ptr %i.ws, %i.ww
  br i1 %i.wx, label %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit, label %.lr.ph.i.i

_ZN5ImGui21TableSettingsFindByIDEj.exit.i:        ; preds = %.lr.ph.i.i
  %i.wy = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 12
  %i.wz = load i16, ptr %i.wy, align 4, !tbaa !314
  %i.xa = sext i16 %i.wz to i32
  %i.xb = load i32, ptr %i.ff, align 4, !tbaa !221
  %.not19.i396 = icmp eq i32 %i.xb, %i.xa
  br i1 %.not19.i396, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZN5ImGui21TableSettingsFindByIDEj.exit.i
  %i.xc = getelementptr inbounds nuw i8, ptr %i.am, i64 578
  store i8 1, ptr %i.xc, align 2, !tbaa !284
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %_ZN5ImGui21TableSettingsFindByIDEj.exit.i
  %i.xd = ptrtoint ptr %.0812.i.i to i64
  %i.xe = ptrtoint ptr %i.wl to i64
  %i.xf = sub i64 %i.xd, %i.xe
  %i.xg = trunc i64 %i.xf to i32
  store i32 %i.xg, ptr %i.wf, align 4, !tbaa !287
  br label %bb.dj

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.i: ; preds = %bb.df
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wc, i64 10128
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !310
  %i.xj = sext i32 %i.wg to i64
  %i.xk = getelementptr inbounds i8, ptr %i.xi, i64 %i.xj
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.i, %bb.di
  %.0.i394 = phi ptr [ %.0812.i.i, %bb.di ], [ %i.xk, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.i ] ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.0.i394, i64 4
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !315
  %i.xn = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  store i32 %i.xm, ptr %i.xn, align 8, !tbaa !286
  %i.xo = getelementptr inbounds nuw i8, ptr %.0.i394, i64 8
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !316
  %i.xq = getelementptr inbounds nuw i8, ptr %i.am, i64 228
  store float %i.xp, ptr %i.xq, align 4, !tbaa !317
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wc, i64 10064
  %i.xs = getelementptr inbounds nuw i8, ptr %.0.i394, i64 16
  %i.xt = load i16, ptr %i.xr, align 8, !tbaa !302
  store i16 %i.xt, ptr %i.xs, align 4, !tbaa !302
  br label %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit

_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit:  ; preds = %select.unfold.i.i, %bb.dj, %bb.dg, %bb.de, %.loopexit
  store i8 1, ptr %i.jq, align 1, !tbaa !174
  %i.xu = getelementptr inbounds nuw i8, ptr %i.am, i64 400 ; 3 uses
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !533
  %i.xw = icmp sgt i32 %i.xv, 0
  br i1 %i.xw, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit
  %i.xx = getelementptr inbounds nuw i8, ptr %i.am, i64 404 ; 2 uses
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !318
  %i.xz = icmp slt i32 %i.xy, 0
  br i1 %i.xz, label %bb.dl, label %_ZN8ImVectorIcE6resizeEi.exit

bb.dl:                                            ; preds = %bb.dk
  %i.ya = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.am, i64 408 ; 3 uses
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !319 ; 2 uses
  %.not6.i.i398 = icmp eq ptr %i.yc, null
  br i1 %.not6.i.i398, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.yd = load i32, ptr %i.xu, align 8, !tbaa !320
  %i.ye = sext i32 %i.yd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ya, ptr nonnull align 1 %i.yc, i64 %i.ye, i1 false)
  %i.yf = load ptr, ptr %i.yb, align 8, !tbaa !319
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.yf)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  store ptr %i.ya, ptr %i.yb, align 8, !tbaa !319
  store i32 0, ptr %i.xx, align 4, !tbaa !318
  br label %_ZN8ImVectorIcE6resizeEi.exit

_ZN8ImVectorIcE6resizeEi.exit:                    ; preds = %bb.dk, %bb.dn
  store i32 0, ptr %i.xu, align 8, !tbaa !320
  br label %bb.do

bb.do:                                            ; preds = %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit, %_ZN8ImVectorIcE6resizeEi.exit, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %_ZN8ImVectorIcE6resizeEi.exit ], [ true, %_ZN5ImGui17TableLoadSettingsEP10ImGuiTable.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  br label %bb.dp

bb.dp:                                            ; preds = %bb.a, %bb.do
  %.1 = phi i1 [ %.0, %bb.do ], [ false, %bb.a ]
  ret i1 %.1
}

declare <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() local_unnamed_addr #2

declare <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float>, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.debugtrap() #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6ImPoolI10ImGuiTableE13GetOrAddByKeyEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1, i32 noundef -1) ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !299  ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [592 x i8], ptr %i.e, i64 %i.f
  br label %bb.j

bb.c:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN5ImGui17TableSaveSettingsEP10ImGuiTable:bb.a
  br i1 %i.h, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310  ; 2 uses
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k ; 3 uses
  %.not67 = icmp eq ptr %i.j, null
  br i1 %.not67, label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !221  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.p = load i16, ptr %i.o, align 2, !tbaa !461
  %i.q = sext i16 %i.p to i32
  %i.r = icmp sgt i32 %i.n, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 4, !tbaa !312
  br label %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread

_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread: ; preds = %bb.b, %bb.d, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit
  %i.s = load i32, ptr %0, align 8, !tbaa !218
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !221
  %i.v = tail call noundef ptr @_ZN5ImGui19TableSettingsCreateEji(i32 noundef %i.s, i32 noundef %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 10128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !310
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.f, align 4, !tbaa !287
  %.pre = load i32, ptr %i.t, align 4, !tbaa !221
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread
  %i.ac = phi i32 [ %.pre, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread ], [ %i.n, %bb.c ]
  %.164 = phi ptr [ %i.v, %_ZN5ImGui21TableGetBoundSettingsEP10ImGuiTable.exit.thread ], [ %i.l, %bb.c ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ae = trunc i32 %i.ac to i16
  %i.af = getelementptr inbounds nuw i8, ptr %.164, i64 12
  store i16 %i.ae, ptr %i.af, align 4, !tbaa !314
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 10064
  %i.ah = getelementptr inbounds nuw i8, ptr %.164, i64 16
  %i.ai = load i16, ptr %i.ag, align 8, !tbaa !302
  store i16 %i.ai, ptr %i.ah, align 4, !tbaa !302
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !642
  %i.al = getelementptr inbounds nuw i8, ptr %.164, i64 4 ; 11 uses
  store i32 0, ptr %i.al, align 4, !tbaa !315
  %i.am = load i32, ptr %i.ad, align 4, !tbaa !221
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.164, i64 20
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.m
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !217
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !315
  %i.ar = and i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !315
  br i1 %.1, label %bb.n, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.079 = phi i32 [ %i.cu, %bb.m ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.06078 = phi i1 [ %.1, %bb.m ], [ false, %.lr.ph.preheader ]
  %.06177 = phi ptr [ %i.cw, %bb.m ], [ %i.ao, %.lr.ph.preheader ] ; 7 uses
  %.06276 = phi ptr [ %i.cv, %bb.m ], [ %i.ak, %.lr.ph.preheader ] ; 11 uses
  %i.as = load i32, ptr %.06276, align 4, !tbaa !328
  %i.at = and i32 %i.as, 8
  %.not68 = icmp eq i32 %i.at, 0
  %.in.v = select i1 %.not68, i64 16, i64 28
  %.in = getelementptr inbounds nuw i8, ptr %.06276, i64 %.in.v
  %i.au = load float, ptr %.in, align 4, !tbaa !177 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06276, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !347
  %i.ax = getelementptr inbounds nuw i8, ptr %.06177, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !411
  store float %i.au, ptr %.06177, align 4, !tbaa !412
  %i.ay = trunc i32 %.079 to i16
  %i.az = getelementptr inbounds nuw i8, ptr %.06177, i64 8
  store i16 %i.ay, ptr %i.az, align 4, !tbaa !462
  %i.ba = getelementptr inbounds nuw i8, ptr %.06276, i64 90 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !305
  %i.bc = getelementptr inbounds nuw i8, ptr %.06177, i64 10
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !463
  %i.bd = getelementptr inbounds nuw i8, ptr %.06276, i64 98 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !339
  %i.bf = getelementptr inbounds nuw i8, ptr %.06177, i64 12
  store i16 %i.be, ptr %i.bf, align 4, !tbaa !413
  %i.bg = getelementptr inbounds nuw i8, ptr %.06276, i64 115
  %i.bh = load i16, ptr %i.bg, align 1
  %i.bi = lshr i16 %i.bh, 8
  %i.bj = trunc nuw i16 %i.bi to i8
  %i.bk = and i8 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.06177, i64 14 ; 4 uses
  %i.bm = load i8, ptr %i.bl, align 2
  %i.bn = and i8 %i.bm, -4
  %i.bo = or disjoint i8 %i.bk, %i.bn             ; 2 uses
  store i8 %i.bo, ptr %i.bl, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %.06276, i64 107 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !308, !range !175, !noundef !176
  %i.br = shl nuw nsw i8 %i.bq, 2
  %i.bs = and i8 %i.bo, -13
  %i.bt = or disjoint i8 %i.bs, %i.br             ; 2 uses
  store i8 %i.bt, ptr %i.bl, align 2
  %i.bu = load i32, ptr %.06276, align 4, !tbaa !328
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = shl i8 %i.bv, 1
  %i.bx = and i8 %i.bw, 16
  %i.by = and i8 %i.bt, -25
  %i.bz = or disjoint i8 %i.bx, %i.by
  store i8 %i.bz, ptr %i.bl, align 2
  %i.ca = load i32, ptr %.06276, align 4, !tbaa !328 ; 2 uses
  %i.cb = and i32 %i.ca, 8
  %i.cc = icmp eq i32 %i.cb, 0
  %.1 = select i1 %i.cc, i1 true, i1 %.06078      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.06276, i64 32
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !338
  %i.cf = fcmp une float %i.au, %i.ce
  br i1 %i.cf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.cg = load i32, ptr %i.al, align 4, !tbaa !315
  %i.ch = or i32 %i.cg, 1
  store i32 %i.ch, ptr %i.al, align 4, !tbaa !315
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ci = load i16, ptr %i.ba, align 2, !tbaa !305
  %i.cj = sext i16 %i.ci to i32
  %.not70 = icmp eq i32 %.079, %i.cj
  br i1 %.not70, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = load i32, ptr %i.al, align 4, !tbaa !315
  %i.cl = or i32 %i.ck, 2
  store i32 %i.cl, ptr %i.al, align 4, !tbaa !315
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cm = load i16, ptr %i.bd, align 2, !tbaa !339
  %.not71 = icmp eq i16 %i.cm, -1
  br i1 %.not71, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = load i32, ptr %i.al, align 4, !tbaa !315
  %i.co = or i32 %i.cn, 8
  store i32 %i.co, ptr %i.al, align 4, !tbaa !315
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cp = load i8, ptr %i.bp, align 1, !tbaa !308, !range !175, !noundef !176
  %i.cq = zext nneg i8 %i.cp to i32
  %i.cr = lshr i32 %i.ca, 1
  %.lobit = and i32 %i.cr, 1
  %.not72.not = icmp eq i32 %.lobit, %i.cq
  br i1 %.not72.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cs = load i32, ptr %i.al, align 4, !tbaa !315
  %i.ct = or i32 %i.cs, 4
  store i32 %i.ct, ptr %i.al, align 4, !tbaa !315
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cu = add nuw nsw i32 %.079, 1                ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.06276, i64 120
  %i.cw = getelementptr inbounds nuw i8, ptr %.06177, i64 16
  %i.cx = load i32, ptr %i.ad, align 4, !tbaa !221
  %i.cy = icmp slt i32 %i.cu, %i.cx
  br i1 %i.cy, label %.lr.ph, label %._crit_edge, !llvm.loop !641

bb.n:                                             ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.da = load float, ptr %i.cz, align 4, !tbaa !317
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %._crit_edge, %bb.n
  %i.db = phi float [ %i.da, %bb.n ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %bb.e ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.164, i64 8
  store float %i.db, ptr %i.dc, align 4, !tbaa !316
  tail call void @_ZN5ImGui20MarkIniSettingsDirtyEv()
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.critedge
  ret void
}

declare void @_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca [40 x i8], align 4            ; 5 uses
  %.sroa.7 = alloca <{ float, %struct.ImRect, i32, i32, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16 }>, align 8 ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 14 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.6) ; 0 uses
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 518 ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !257
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !221
  %i.j = icmp sgt i32 %i.i, %i.g
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.7) ; 0 uses
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.m = load i8, ptr %i.l, align 1, !tbaa !222, !range !175, !noundef !176
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.8) ; 0 uses
  br label %bb.ac

bb.g:                                             ; preds = %bb.e
  %.not60 = icmp eq ptr %0, null
  br i1 %.not60, label %.thread72, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i8, ptr %0, align 1, !tbaa !302
  %.not61 = icmp eq i8 %i.p, 0
  br i1 %.not61, label %.thread72, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 400 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !464
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.r, i32 1)
  %i.s = trunc i32 %spec.select.i to i16          ; 2 uses
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  tail call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %0, ptr noundef nonnull %i.v)
  %.pr = load i8, ptr %0, align 1, !tbaa !302
  %.not62 = icmp eq i8 %.pr, 0
  br i1 %.not62, label %.thread72, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 0)
  br label %.thread72

.thread72:                                        ; preds = %bb.h, %bb.g, %bb.i, %bb.j
  %.071 = phi i16 [ %i.s, %bb.j ], [ %i.s, %bb.i ], [ -1, %bb.g ], [ -1, %bb.h ] ; 3 uses
  %i.x = phi i32 [ %i.w, %bb.j ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ] ; 3 uses
  %i.y = load i16, ptr %i.e, align 2, !tbaa !257  ; 4 uses
  %i.z = add i16 %i.y, 1
  store i16 %i.z, ptr %i.e, align 2, !tbaa !257
  %i.aa = sext i16 %i.y to i32                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !271
  %i.ad = sext i16 %i.y to i64                    ; 3 uses
  %i.ae = getelementptr inbounds [120 x i8], ptr %i.ac, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 572 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !289, !range !175, !noundef !176 ; 2 uses
  %i.ah = icmp ne i8 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  %i.aj = load i32, ptr %i.ai, align 4
  %.not63 = icmp eq i32 %i.aj, %i.x
  %or.cond = select i1 %i.ah, i1 true, i1 %.not63
  br i1 %or.cond, label %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit, label %bb.k

bb.k:                                             ; preds = %.thread72
  store i8 1, ptr %i.af, align 4, !tbaa !289
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !207 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i32, ptr %i.h, align 4, !tbaa !221
  %i.ao = sub nsw i32 %i.an, %i.aa                ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 36 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !209
  %.not.i = icmp sgt i32 %i.ao, %i.aq
  br i1 %.not.i, label %bb.l, label %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ar = sext i32 %i.ao to i64
  %i.as = mul nsw i64 %i.ar, 144
  %i.at = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.as) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !192 ; 2 uses
  %.not6.i = icmp eq ptr %i.av, null
  br i1 %.not6.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load i32, ptr %i.am, align 8, !tbaa !210
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %i.ax, 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.at, ptr nonnull align 4 %i.av, i64 %i.ay, i1 false)
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !192
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.az)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.at, ptr %i.au, align 8, !tbaa !192
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !209
  %.pre = load i8, ptr %i.af, align 4, !tbaa !289, !range !175
  br label %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit

_ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit: ; preds = %bb.n, %.thread72
  %i.ba = phi i8 [ %.pre, %bb.n ], [ %i.ag, %.thread72 ]
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit.thread

bb.o:                                             ; preds = %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !271
  %i.bd = getelementptr inbounds [120 x i8], ptr %i.bc, i64 %i.ad ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 585
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !213, !range !175, !noundef !176
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = and i32 %1, 24
  %i.bi = icmp eq i32 %i.bh, 0                    ; 2 uses
  %or.cond29.i = and i1 %i.bi, %i.bg
  br i1 %or.cond29.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bj = and i32 %1, 16777216
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = fcmp ole float %2, 0.000000e+00
  %or.cond3.i = or i1 %i.bk, %i.bl
  br i1 %or.cond3.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.50) ; 0 uses
  br label %_ZL21TableSetupColumnApplyP10ImGuiTableijsifj.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bn = fcmp ogt float %2, 0.000000e+00
  %or.cond.i = and i1 %i.bi, %i.bn
  br i1 %or.cond.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !217
  %i.bq = trunc i32 %i.bp to i16
  %trunc.i = and i16 %i.bq, -8192
  switch i16 %trunc.i, label %bb.u [
    i16 8192, label %bb.t
    i16 16384, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.br = or disjoint i32 %1, 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0.i = phi i32 [ %i.br, %bb.t ], [ %1, %bb.s ], [ %1, %bb.r ] ; 3 uses
  %i.bs = and i32 %.0.i, 262144
  %.not.i65 = icmp eq i32 %i.bs, 0
  br i1 %.not.i65, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = or i32 %.0.i, 4096
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 520 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 8, !tbaa !256
  %i.bw = add i16 %i.bv, 1
  store i16 %i.bw, ptr %i.bu, align 8, !tbaa !256
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.i = phi i32 [ %i.bt, %bb.v ], [ %.0.i, %bb.u ]
  tail call fastcc void @_ZL21TableSetupColumnFlagsP10ImGuiTableP16ImGuiTableColumni(ptr noundef nonnull %i.c, ptr noundef %i.bd, i32 noundef %.1.i)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 52
  store i32 %i.x, ptr %i.bx, align 4, !tbaa !347
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store i32 %3, ptr %i.by, align 4, !tbaa !346
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  store i16 %.071, ptr %i.bz, align 4, !tbaa !345
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store float %2, ptr %i.ca, align 4, !tbaa !338
  br label %_ZL21TableSetupColumnApplyP10ImGuiTableijsifj.exit

_ZL21TableSetupColumnApplyP10ImGuiTableijsifj.exit: ; preds = %bb.q, %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ae, i64 113 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = and i8 %i.cc, -25
  store i8 %i.cd, ptr %i.cb, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !207 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !270
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !271 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 120
  %i.co = trunc i64 %i.cn to i32
  %i.cp = icmp sgt i32 %i.co, %i.aa
  br i1 %i.cp, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZL21TableSetupColumnApplyP10ImGuiTableijsifj.exit
  %i.cq = getelementptr inbounds [120 x i8], ptr %i.cj, i64 %i.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 113 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = and i8 %i.cs, -9
  store i8 %i.ct, ptr %i.cr, align 1
  br label %bb.ac

_ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit.thread: ; preds = %bb.k, %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !207 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.0, i8 0, i64 24, i1 false)
  %.sroa.0.24..sroa_idx81 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.24..sroa_idx81, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, i8 0, i64 56, i1 false)
  %.sroa.7.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.7.56..sroa_idx, i8 -1, i64 12, i1 false)
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !210 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 36 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !209
  %i.da = icmp eq i32 %i.cx, %i.cz
  br i1 %i.da, label %bb.y, label %._ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit_crit_edge.i: ; preds = %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit.thread
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !192
  br label %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE9push_backERKS0_.exit

bb.y:                                             ; preds = %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit.thread
  %i.db = add nsw i32 %i.cx, 1
  %.not.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI29ImGuiTableReconcileColumnDataE14_grow_capacityEi.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = sdiv i32 %i.cx, 2
  %i.dd = add nsw i32 %i.dc, %i.cx
  br label %_ZNK8ImVectorI29ImGuiTableReconcileColumnDataE14_grow_capacityEi.exit.i

_ZNK8ImVectorI29ImGuiTableReconcileColumnDataE14_grow_capacityEi.exit.i: ; preds = %bb.z, %bb.y
  %i.de = phi i32 [ %i.dd, %bb.z ], [ 8, %bb.y ]
  %i.df = tail call noundef i32 @llvm.smax.i32(i32 %i.de, i32 %i.db) ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = mul nsw i64 %i.dg, 144
  %i.di = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.dh) ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 40 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !192 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.dk, null
  br i1 %.not6.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK8ImVectorI29ImGuiTableReconcileColumnDataE14_grow_capacityEi.exit.i
  %i.dl = load i32, ptr %i.cw, align 8, !tbaa !210
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul nsw i64 %i.dm, 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.di, ptr nonnull align 4 %i.dk, i64 %i.dn, i1 false)
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !192
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.do)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNK8ImVectorI29ImGuiTableReconcileColumnDataE14_grow_capacityEi.exit.i
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !192
  store i32 %i.df, ptr %i.cy, align 4, !tbaa !209
  %.pre3.i = load i32, ptr %i.cw, align 8, !tbaa !210
  br label %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE9push_backERKS0_.exit

_ZN8ImVectorI29ImGuiTableReconcileColumnDataE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit_crit_edge.i, %bb.ab
  %i.dp = phi i32 [ %i.cx, %._ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.ab ]
  %i.dq = phi ptr [ %.pre.i, %._ZN8ImVectorI29ImGuiTableReconcileColumnDataE7reserveEi.exit_crit_edge.i ], [ %i.di, %bb.ab ]
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr inbounds [144 x i8], ptr %i.dq, i64 %i.dr ; 11 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ds, ptr noundef nonnull align 4 dereferenceable(40) %.sroa.0, i64 40, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store float -1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 44
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 52
  store float -1.000000e+00, ptr %.sroa.666.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(68) %.sroa.7, i64 68, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 124
  store i16 255, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 126
  store i16 255, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 128
  store i16 255, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 130
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %.sroa.11.0..sroa_idx, i8 0, i64 7, i1 false)
  %.sroa.1167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 137
  store i8 2, ptr %.sroa.1167.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.12.0..sroa_idx, i8 0, i64 6, i1 false)
  %i.dt = load i32, ptr %i.cw, align 8, !tbaa !210
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.cw, align 8, !tbaa !210
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.dv = load ptr, ptr %i.cu, align 8, !tbaa !207 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !192
  %i.dz = load i32, ptr %i.dw, align 8, !tbaa !210
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr [144 x i8], ptr %i.dy, i64 %i.ea ; 7 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 -144
  store i32 %i.x, ptr %i.ec, align 4, !tbaa !403
  %i.ed = getelementptr i8, ptr %i.eb, i64 -140
  store i16 %.071, ptr %i.ed, align 4, !tbaa !406
  %i.ee = getelementptr i8, ptr %i.eb, i64 -136
  store i32 %1, ptr %i.ee, align 4, !tbaa !407
  %i.ef = getelementptr i8, ptr %i.eb, i64 -132
  store float %2, ptr %i.ef, align 4, !tbaa !408
  %i.eg = getelementptr i8, ptr %i.eb, i64 -128
  store i32 %3, ptr %i.eg, align 4, !tbaa !409
  %i.eh = getelementptr i8, ptr %i.eb, i64 -124
  store i16 %i.y, ptr %i.eh, align 4, !tbaa !404
  %i.ei = getelementptr i8, ptr %i.eb, i64 -122
  store i16 -1, ptr %i.ei, align 2, !tbaa !405
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  store i16 %.071, ptr %i.ej, align 4, !tbaa !345
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ae, i64 113 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = or i8 %i.el, 24
  store i8 %i.em, ptr %i.ek, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN8ImVectorI29ImGuiTableReconcileColumnDataE9push_backERKS0_.exit, %bb.x, %_ZL21TableSetupColumnApplyP10ImGuiTableijsifj.exit, %bb.f, %bb.d, %bb.b
  ret void
}

declare void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef i32 @_Z9ImHashStrPKcmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 569
  %i.b = load i8, ptr %i.a, align 1, !tbaa !222, !range !175, !noundef !176
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 518
  %i.e = load i16, ptr %i.d, align 2, !tbaa !257
  %i.f = sext i16 %i.e to i32
  %.not = icmp slt i32 %1, %i.f
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !271
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [120 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load i16, ptr %i.k, align 4, !tbaa !345  ; 2 uses
  %i.m = icmp eq i16 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !319
  %i.p = sext i16 %i.l to i64
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ @.str.11, %bb.b ], [ %i.q, %bb.d ], [ @.str.11, %bb.c ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui22TableSetupScrollFreezeEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 9 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.6) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !217  ; 2 uses
  %i.g = and i32 %i.f, 16777216
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.i = load i32, ptr %i.h, align 4, !tbaa !221
  %i.j = tail call noundef i32 @llvm.smin.i32(i32 %0, i32 %i.i)
  %i.k = trunc i32 %i.j to i16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi i16 [ %i.k, %bb.d ], [ 0, %bb.c ]    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 556
  store i16 %i.l, ptr %i.m, align 4, !tbaa !337
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !219  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load float, ptr %i.p, align 8, !tbaa !440
  %i.r = fcmp une float %i.q, 0.000000e+00
  %spec.select = select i1 %i.r, i16 %i.l, i16 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 558
  store i16 %spec.select, ptr %i.s, align 2, !tbaa !370
  %i.t = and i32 %i.f, 33554432
  %.not17 = icmp eq i32 %i.t, 0
  %i.u = trunc i32 %1 to i16
  %i.v = select i1 %.not17, i16 0, i16 %i.u       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 552
  store i16 %i.v, ptr %i.w, align 8, !tbaa !398
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %i.y = load float, ptr %i.x, align 4, !tbaa !643
  %i.z = fcmp une float %i.y, 0.000000e+00
  %i.aa = select i1 %i.z, i16 %i.v, i16 0         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 554
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !371
  %i.ac = icmp eq i16 %i.aa, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.ae = zext i1 %i.ac to i8
  store i8 %i.ae, ptr %i.ad, align 8, !tbaa !255
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN5ImGui19TableGetColumnCountEv() local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !221
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZN5ImGui18TableGetColumnNameEPK10ImGuiTablei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %0, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.f = load i32, ptr %i.e, align 4, !tbaa !248
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.c ], [ %0, %bb.b ]    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 569
  %i.h = load i8, ptr %i.g, align 1, !tbaa !222, !range !175, !noundef !176
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_2

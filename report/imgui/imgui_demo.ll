Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
begin_hunk_0
@.str.2323 = private unnamed_addr constant [24 x i8] c"Examples/Assets Browser\00", align 1
@_ZZL27ShowExampleAppAssetsBrowserPbE14assets_browser = internal global %struct.ExampleAssetsBrowser zeroinitializer, align 8
@_ZGVZL27ShowExampleAppAssetsBrowserPbE14assets_browser = internal global i64 0, align 8
@.str.2324 = private unnamed_addr constant [24 x i8] c"Example: Assets Browser\00", align 1
@.str.2325 = private unnamed_addr constant [6 x i8] c"99999\00", align 1
@.str.2326 = private unnamed_addr constant [16 x i8] c"Add 10000 items\00", align 1
@.str.2327 = private unnamed_addr constant [12 x i8] c"Clear items\00", align 1
@.str.2328 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.2329 = private unnamed_addr constant [4 x i8] c"Del\00", align 1
@.str.2330 = private unnamed_addr constant [18 x i8] c"Show Type Overlay\00", align 1
@.str.2331 = private unnamed_addr constant [14 x i8] c"Allow Sorting\00", align 1
@.str.2332 = private unnamed_addr constant [19 x i8] c"Selection Behavior\00", align 1
@.str.2333 = private unnamed_addr constant [20 x i8] c"Allow box-selection\00", align 1
@.str.2334 = private unnamed_addr constant [40 x i8] c"Allow box-selection from selected items\00", align 1
@.str.2335 = private unnamed_addr constant [31 x i8] c"Allow dragging unselected item\00", align 1
@.str.2336 = private unnamed_addr constant [7 x i8] c"Layout\00", align 1
@.str.2337 = private unnamed_addr constant [10 x i8] c"Icon Size\00", align 1
@.str.2338 = private unnamed_addr constant [23 x i8] c"Use Ctrl+Wheel to zoom\00", align 1
@.str.2339 = private unnamed_addr constant [13 x i8] c"Icon Spacing\00", align 1
@.str.2340 = private unnamed_addr constant [17 x i8] c"Icon Hit Spacing\00", align 1
@.str.2341 = private unnamed_addr constant [16 x i8] c"Stretch Spacing\00", align 1
@.str.2342 = private unnamed_addr constant [12 x i8] c"Use ScrollX\00", align 1
@.str.2343 = private unnamed_addr constant [20 x i8] c"for_sort_specs_only\00", align 1
@.str.2344 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.2345 = private unnamed_addr constant [7 x i8] c"Assets\00", align 1
@__const._ZN20ExampleAssetsBrowser4DrawEPKcPb.icon_type_overlay_colors = private unnamed_addr constant [3 x i32] [i32 0, i32 -12171576, i32 -12146106], align 4
@.str.2346 = private unnamed_addr constant [4 x i8] c"999\00", align 1
@.str.2347 = private unnamed_addr constant [21 x i8] c"ASSETS_BROWSER_ITEMS\00", align 1
@.str.2348 = private unnamed_addr constant [10 x i8] c"%d assets\00", align 1
@.str.2349 = private unnamed_addr constant [20 x i8] c"Selection: %d items\00", align 1
@.str.2350 = private unnamed_addr constant [22 x i8] c"Selected: %d/%d items\00", align 1
@switch.table._ZL20EditTableSizingFlagsPi = private unnamed_addr constant [5 x i8] c"\00\0F\0F\0F\0F", align 8
@switch.table._ZL20EditTableSizingFlagsPi.35 = private unnamed_addr constant [5 x ptr] [ptr @_ZZL20EditTableSizingFlagsPiE8policies, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20EditTableSizingFlagsPiE8policies, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZZL20EditTableSizingFlagsPiE8policies, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZZL20EditTableSizingFlagsPiE8policies, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZZL20EditTableSizingFlagsPiE8policies, i64 96)], align 8

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14ShowDemoWindowEPb(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ImVec4, align 16            ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec4, align 16            ; 4 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca [32 x i8], align 16               ; 44 uses
  %9 = alloca %struct.ImVec2, align 8             ; 44 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %16 = alloca %struct.ImVec2, align 8            ; 4 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %18 = alloca %struct.ImVec2, align 8            ; 20 uses
  %19 = alloca %struct.ImVec2, align 8            ; 4 uses
  %20 = alloca %struct.ImVec2, align 8            ; 4 uses
  %21 = alloca %struct.ImVec2, align 8            ; 4 uses
  %22 = alloca %struct.ImVec2, align 8            ; 4 uses
  %23 = alloca %struct.ImVec2, align 8            ; 4 uses
  %24 = alloca %struct.ImVec2, align 8            ; 20 uses
  %25 = alloca %struct.ImVec2, align 8            ; 20 uses
  %26 = alloca %struct.ImVec2, align 8            ; 4 uses
  %27 = alloca %struct.ImVec2, align 8            ; 4 uses
  %28 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %29 = alloca %struct.ImVec2, align 8            ; 4 uses
  %30 = alloca %struct.ImVec2, align 8            ; 4 uses
  %31 = alloca %struct.ImVec2, align 8            ; 4 uses
  %32 = alloca %struct.ImVec2, align 8            ; 4 uses
  %33 = alloca %struct.ImVec2, align 8            ; 4 uses
  %34 = alloca %struct.ImVec2, align 8            ; 4 uses
  %35 = alloca %struct.ImVec2, align 8            ; 4 uses
  %36 = alloca %struct.ImVec2, align 8            ; 4 uses
  %37 = alloca %struct.ImVec2, align 8            ; 4 uses
  %38 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %39 = alloca %struct.ImVec2, align 8            ; 4 uses
  %40 = alloca %struct.ImVec2, align 8            ; 4 uses
  %41 = alloca %struct.ImVec2, align 8            ; 4 uses
  %42 = alloca %struct.ImVec2, align 8            ; 4 uses
  %43 = alloca %struct.ImVec2, align 4            ; 5 uses
  %44 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 4 uses
  %45 = alloca %struct.ImVec2, align 4            ; 5 uses
  %46 = alloca %struct.ImVec2, align 8            ; 4 uses
  %47 = alloca %struct.ImVec2, align 8            ; 4 uses
  %48 = alloca %struct.ImVec2, align 8            ; 4 uses
  %49 = alloca %struct.ImVec2, align 8            ; 4 uses
  %50 = alloca %struct.ImVec2, align 8            ; 4 uses
  %51 = alloca %struct.ImVec2, align 8            ; 4 uses
  %52 = alloca %struct.ImGuiListClipper, align 8  ; 10 uses
  %53 = alloca %struct.ImVec2, align 8            ; 4 uses
  %54 = alloca %struct.ImVec2, align 8            ; 4 uses
  %55 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.e = alloca [9 x ptr], align 16               ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %56 = alloca %struct.ImVec2, align 8            ; 4 uses
  %57 = alloca %struct.ImVec2, align 8            ; 4 uses
  %58 = alloca %struct.ImVec2, align 8            ; 4 uses
  %59 = alloca %struct.ImVec2, align 8            ; 4 uses
  %60 = alloca %struct.ImVec2, align 8            ; 4 uses
  %61 = alloca %struct.ImVec2, align 8            ; 4 uses
  %62 = alloca %struct.ImVec2, align 8            ; 4 uses
  %63 = alloca %struct.ImVec2, align 8            ; 4 uses
  %64 = alloca %struct.ImVec2, align 8            ; 4 uses
  %65 = alloca %struct.ImVec2, align 8            ; 4 uses
  %66 = alloca %struct.ImVec2, align 8            ; 4 uses
  %67 = alloca %struct.ImVec2, align 8            ; 4 uses
  %68 = alloca %struct.ImVec2, align 8            ; 4 uses
  %69 = alloca %struct.ImVec2, align 8            ; 4 uses
  %70 = alloca %struct.ImVec2, align 8            ; 4 uses
  %71 = alloca %struct.ImVec2, align 8            ; 4 uses
  %72 = alloca %struct.ImVec2, align 8            ; 4 uses
  %73 = alloca %struct.ImVec2, align 8            ; 4 uses
  %74 = alloca %struct.ImVec2, align 8            ; 4 uses
  %75 = alloca %struct.ImVec2, align 8            ; 5 uses
  %76 = alloca %struct.ImVec4, align 16           ; 4 uses
  %77 = alloca %struct.ImVec2, align 8            ; 4 uses
  %78 = alloca %struct.ImVec2, align 8            ; 4 uses
  %79 = alloca %struct.ImVec2, align 8            ; 4 uses
  %80 = alloca %struct.ImVec2, align 8            ; 4 uses
  %81 = alloca %struct.ImVec2, align 8            ; 4 uses
  %82 = alloca %struct.ImVec2, align 8            ; 4 uses
  %83 = alloca %struct.ImVec2, align 8            ; 4 uses
  %84 = alloca %struct.ImVec2, align 8            ; 4 uses
  %85 = alloca %struct.ImVec2, align 8            ; 4 uses
  %86 = alloca %struct.ImVec2, align 8            ; 4 uses
  %87 = alloca %struct.ImVec2, align 8            ; 4 uses
  %88 = alloca %struct.ImVec2, align 8            ; 4 uses
  %89 = alloca %struct.ImVec2, align 8            ; 4 uses
  %90 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.h = alloca [128 x i8], align 16              ; 4 uses
  %91 = alloca %struct.ImVec2, align 8            ; 4 uses
  %92 = alloca %struct.ImVec2, align 4            ; 5 uses
  %93 = alloca %struct.ImVec2, align 8            ; 4 uses
  %94 = alloca %struct.ImVec2, align 8            ; 4 uses
  %95 = alloca %struct.ImVec2, align 8            ; 4 uses
  %96 = alloca %struct.ImVec2, align 8            ; 7 uses
  %97 = alloca %struct.ImVec2, align 8            ; 4 uses
  %98 = alloca %struct.ImVec2, align 8            ; 4 uses
  %99 = alloca %struct.ImVec2, align 8            ; 4 uses
  %100 = alloca %struct.ImVec2, align 8           ; 4 uses
  %101 = alloca %struct.ImColor, align 4          ; 4 uses
  %102 = alloca %struct.ImVec2, align 8           ; 4 uses
  %103 = alloca %struct.ImVec2, align 8           ; 4 uses
  %104 = alloca %struct.ImVec2, align 8           ; 4 uses
  %105 = alloca %struct.ImVec2, align 8           ; 4 uses
  %106 = alloca %struct.ImVec2, align 4           ; 5 uses
  %107 = alloca %struct.ImVec2, align 4           ; 5 uses
  %108 = alloca %struct.ImVec2, align 4           ; 5 uses
  %109 = alloca %struct.ImVec2, align 4           ; 5 uses
  %110 = alloca %struct.ImVec2, align 4           ; 5 uses
  %111 = alloca %struct.ImVec2, align 4           ; 5 uses
  %112 = alloca %struct.ImVec2, align 4           ; 5 uses
  %113 = alloca %struct.ImVec2, align 4           ; 5 uses
  %114 = alloca %struct.ImVec2, align 4           ; 5 uses
  %115 = alloca %struct.ImVec2, align 4           ; 5 uses
  %116 = alloca %struct.ImVec2, align 4           ; 5 uses
  %117 = alloca %struct.ImVec2, align 8           ; 4 uses
  %118 = alloca %struct.ImVec2, align 4           ; 5 uses
  %119 = alloca %struct.ImVec2, align 4           ; 5 uses
  %120 = alloca %struct.ImVec2, align 4           ; 5 uses
  %121 = alloca %struct.ImVec2, align 4           ; 5 uses
  %122 = alloca %struct.ImVec2, align 8           ; 4 uses
  %123 = alloca %struct.ImVec2, align 8           ; 4 uses
  %124 = alloca %struct.ImVec2, align 4           ; 5 uses
  %125 = alloca %struct.ImVec2, align 8           ; 4 uses
  %126 = alloca %struct.ImVec2, align 8           ; 4 uses
  %127 = alloca %struct.ImVec2, align 8           ; 4 uses
  %128 = alloca %struct.ImVec2, align 8           ; 4 uses
  %129 = alloca %struct.ImVec2, align 4           ; 5 uses
  %130 = alloca %struct.ImVec2, align 4           ; 5 uses
  %131 = alloca %struct.ImVec2, align 4           ; 5 uses
  %132 = alloca %struct.ImVec2, align 4           ; 5 uses
  %133 = alloca %struct.ImVec2, align 4           ; 5 uses
  %134 = alloca %struct.ImVec2, align 4           ; 5 uses
  %135 = alloca %struct.ImVec2, align 4           ; 5 uses
  %136 = alloca %struct.ImVec2, align 4           ; 5 uses
  %137 = alloca %struct.ImVec2, align 4           ; 5 uses
  %138 = alloca %struct.ImVec2, align 4           ; 5 uses
  %139 = alloca %struct.ImVec2, align 4           ; 5 uses
  %140 = alloca %struct.ImVec2, align 4           ; 5 uses
  %141 = alloca %struct.ImVec2, align 4           ; 5 uses
  %142 = alloca %struct.ImVec2, align 4           ; 5 uses
  %143 = alloca %struct.ImVec2, align 8           ; 4 uses
  %144 = alloca %struct.ImVec2, align 8           ; 4 uses
  %145 = alloca %struct.ImVec2, align 4           ; 5 uses
  %146 = alloca %struct.ImVec2, align 4           ; 5 uses
  %147 = alloca %struct.ImVec2, align 4           ; 5 uses
  %148 = alloca %struct.ImVec2, align 4           ; 5 uses
  %149 = alloca %struct.ImVec2, align 8           ; 4 uses
  %150 = alloca %struct.ImVec2, align 8           ; 11 uses
  %151 = alloca %struct.ImVec2, align 8           ; 8 uses
  %152 = alloca %struct.ImVec2, align 8           ; 8 uses
  %153 = alloca %struct.ImVec2, align 8           ; 4 uses
  %154 = alloca %struct.ImVec2, align 8           ; 4 uses
  %155 = alloca %struct.ImVec2, align 8           ; 5 uses
  %156 = alloca %struct.ImVec2, align 8           ; 4 uses
  %157 = alloca %struct.ImVec2, align 8           ; 4 uses
  %158 = alloca %struct.ImVec2, align 8           ; 4 uses
  %159 = alloca %struct.ImVec2, align 8           ; 4 uses
  %160 = alloca %struct.ImVec2, align 8           ; 4 uses
  %161 = alloca %struct.ImVec2, align 8           ; 4 uses
  %162 = alloca %struct.ImVec2, align 8           ; 4 uses
  %163 = alloca %struct.ImVec2, align 8           ; 4 uses
  %164 = alloca %struct.ImVec2, align 8           ; 4 uses
  %165 = alloca %struct.ImVec2, align 8           ; 4 uses
  %i.i = alloca [64 x i8], align 16               ; 4 uses
  %166 = alloca %struct.ImVec2, align 4           ; 5 uses
  %167 = alloca %struct.ImVec2, align 4           ; 7 uses
  %168 = alloca %struct.ImVec2, align 8           ; 4 uses
  %169 = alloca %struct.ImVec2, align 8           ; 4 uses
  %170 = alloca %struct.ImVec2, align 8           ; 4 uses
  %171 = alloca %struct.ImVec2, align 8           ; 4 uses
  %172 = alloca %struct.ImVec2, align 8           ; 4 uses
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui30DebugCheckVersionAndDataLayoutEPKcmmmmmm(ptr noundef nonnull @.str, i64 noundef 3048, i64 noundef 1328, i64 noundef 8, i64 noundef 16, i64 noundef 20, i64 noundef 2) ; 0 uses
  %i.k = load atomic i8, ptr @_ZGVZN5ImGui14ShowDemoWindowEPbE9demo_data acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.d, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5ImGui14ShowDemoWindowEPbE9demo_data) #30
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN19ImGuiDemoWindowDataD2Ev, ptr nonnull @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5ImGui14ShowDemoWindowEPbE9demo_data) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = load i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, align 8, !tbaa !282, !range !19, !noundef !20
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %_ZL25ShowExampleAppMainMenuBarv.exit

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef zeroext i1 @_ZN5ImGui16BeginMainMenuBarEv()
  br i1 %i.q, label %bb.f, label %_ZL25ShowExampleAppMainMenuBarv.exit

bb.f:                                             ; preds = %bb.e
  %i.r = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.1530, i1 noundef zeroext true)
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 8952, ptr noundef nonnull @.str.354)
  tail call fastcc void @_ZL19ShowExampleMenuFilev()
  tail call void @_ZN5ImGui7EndMenuEv()
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.1186, i1 noundef zeroext true)
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 8958, ptr noundef nonnull @.str.2114)
  %i.t = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2115, ptr noundef nonnull @.str.2116, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %i.u = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2117, ptr noundef nonnull @.str.2118, i1 noundef zeroext false, i1 noundef zeroext false) ; 0 uses
  tail call void @_ZN5ImGui9SeparatorEv()
  %i.v = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2119, ptr noundef nonnull @.str.2120, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %i.w = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.711, ptr noundef nonnull @.str.2121, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %i.x = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2122, ptr noundef nonnull @.str.2123, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  tail call void @_ZN5ImGui7EndMenuEv()
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN5ImGui14EndMainMenuBarEv()
  br label %_ZL25ShowExampleAppMainMenuBarv.exit

_ZL25ShowExampleAppMainMenuBarv.exit:             ; preds = %bb.j, %bb.e, %bb.d
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 4), align 4, !tbaa !283, !range !19, !noundef !20
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.k, label %_ZL23ShowExampleAppDocumentsPb.exit

bb.k:                                             ; preds = %_ZL25ShowExampleAppMainMenuBarv.exit
  %i.aa = load atomic i8, ptr @_ZGVZL23ShowExampleAppDocumentsPbE3app acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.o, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL23ShowExampleAppDocumentsPbE3app) #30
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN19ExampleAppDocumentsC2Ev(ptr noundef nonnull align 8 dereferenceable(41) @_ZZL23ShowExampleAppDocumentsPbE3app)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call i32 @__cxa_atexit(ptr nonnull @_ZN19ExampleAppDocumentsD2Ev, ptr nonnull @_ZZL23ShowExampleAppDocumentsPbE3app, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL23ShowExampleAppDocumentsPbE3app) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.k
  %i.ae = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2298, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 4), i32 noundef 1024)
  br i1 %i.ae, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN5ImGui3EndEv()
  br label %_ZL23ShowExampleAppDocumentsPb.exit

common.resume:                                    ; preds = %bb.ko, %bb.he, %bb.gc, %bb.cw, %bb.cq, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.lp, %bb.cq ], [ %i.lw, %bb.cw ], [ %i.alv, %bb.gc ], [ %i.anc, %bb.he ], [ %.pn.i, %bb.ko ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZL23ShowExampleAppDocumentsPbE3app) #30
  br label %common.resume

bb.r:                                             ; preds = %bb.o
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 10689, ptr noundef nonnull @.str.2299)
  %i.ag = tail call noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv()
  br i1 %i.ag, label %bb.s, label %bb.ah

bb.s:                                             ; preds = %bb.r
  %i.ah = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.1530, i1 noundef zeroext true)
  br i1 %i.ah, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !23 ; 2 uses
  %i.aj = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !24 ; 3 uses
  %i.ak = sext i32 %i.aj to i64
  %.idx.i = mul nsw i64 %i.ak, 56
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i
  %.not924.i = icmp eq i32 %i.aj, 0
  br i1 %.not924.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.t
  %.089.lcssa.i = phi i32 [ 0, %bb.t ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %i.am = icmp slt i32 %.089.lcssa.i, %i.aj
  %i.an = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.388, i1 noundef zeroext %i.am)
  br i1 %i.an, label %bb.u, label %bb.y

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %.0896.i = phi i32 [ %i.ar, %.lr.ph.i ], [ 0, %bb.t ]
  %.0905.i = phi ptr [ %i.as, %.lr.ph.i ], [ %i.ai, %bb.t ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0905.i, i64 36
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !28, !range !19, !noundef !20
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %.0896.i, %i.aq         ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0905.i, i64 56 ; 2 uses
  %.not92.i = icmp eq ptr %i.as, %i.al
  br i1 %.not92.i, label %._crit_edge.i, label %.lr.ph.i

bb.u:                                             ; preds = %._crit_edge.i
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !23 ; 2 uses
  %i.au = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !24 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %.idx47.i = mul nsw i64 %i.av, 56
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %.idx47.i
  %.not937.i = icmp eq i32 %i.au, 0
  br i1 %.not937.i, label %._crit_edge11.i, label %.lr.ph10.i

._crit_edge11.i:                                  ; preds = %bb.x, %bb.u
  tail call void @_ZN5ImGui7EndMenuEv()
  br label %bb.y

.lr.ph10.i:                                       ; preds = %bb.u, %bb.x
  %.0888.i = phi ptr [ %i.bb, %bb.x ], [ %i.at, %bb.u ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0888.i, i64 36 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !28, !range !19, !noundef !20
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph10.i
  %i.ba = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull %.0888.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.ba, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.ax, align 4, !tbaa !28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.lr.ph10.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0888.i, i64 56 ; 2 uses
  %.not93.i = icmp eq ptr %i.bb, %i.aw
  br i1 %.not93.i, label %._crit_edge11.i, label %.lr.ph10.i

bb.y:                                             ; preds = %._crit_edge11.i, %._crit_edge.i
  %i.bc = icmp ne i32 %.089.lcssa.i, 0
  %i.bd = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2300, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %i.bc)
  br i1 %i.bd, label %bb.z, label %.loopexit3.i

bb.z:                                             ; preds = %bb.y
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !23 ; 2 uses
  %i.bf = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !24 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %.idx48.i = mul nsw i64 %i.bg, 56
  %i.bh = getelementptr inbounds i8, ptr %i.be, i64 %.idx48.i
  %.not9412.i = icmp eq i32 %i.bf, 0
  br i1 %.not9412.i, label %.loopexit3.i, label %.lr.ph15.preheader.i

.lr.ph15.preheader.i:                             ; preds = %bb.z
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 16), align 8, !tbaa !32
  br label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i, %.lr.ph15.preheader.i
  %i.bi = phi i32 [ %i.ce, %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i ], [ %.pre.i, %.lr.ph15.preheader.i ] ; 6 uses
  %.08713.i = phi ptr [ %i.cf, %_ZN8ImVectorIP10MyDocumentE9push_backERKS1_.exit.i ], [ %i.be, %.lr.ph15.preheader.i ] ; 2 uses
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 20), align 4, !tbaa !33
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.aa, label %._ZN8ImVectorIP10MyDocumentE7reserveEi.exit_crit_edge.i.i

end_hunk_0
begin_hunk_1_@_ZN5ImGui14ShowDemoWindowEPb:bb.a

bb.fc:                                            ; preds = %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i338.i
  %i.afl = load i32, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, align 8, !tbaa !291
  %i.afm = sext i32 %i.afl to i64
  %i.afn = shl nsw i64 %i.afm, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.afj, ptr nonnull align 4 %i.afk, i64 %i.afn, i1 false)
  %i.afo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, i64 8), align 8, !tbaa !54
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.afo)
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %_ZNK8ImVectorI6ImVec2E14_grow_capacityEi.exit.i338.i
  store ptr %i.afj, ptr getelementptr inbounds nuw (i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, i64 8), align 8, !tbaa !54
  store i32 %i.afg, ptr getelementptr inbounds nuw (i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, i64 4), align 4, !tbaa !292
  br label %_ZN8ImVectorI6ImVec2E6resizeEi.exit340.i

_ZN8ImVectorI6ImVec2E6resizeEi.exit340.i:         ; preds = %bb.fd, %bb.ez
  store i32 %i.afa, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, align 8, !tbaa !291
  br label %bb.fe

bb.fe:                                            ; preds = %_ZN8ImVectorI6ImVec2E6resizeEi.exit340.i, %bb.ey
  %i.afp = phi i32 [ %i.afa, %_ZN8ImVectorI6ImVec2E6resizeEi.exit340.i ], [ %.pre45.i, %bb.ey ]
  %i.afq = icmp sgt i32 %i.afp, 0
  %i.afr = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2284, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %i.afq)
  br i1 %i.afr, label %bb.ff, label %_ZN8ImVectorI6ImVec2E5clearEv.exit.i

bb.ff:                                            ; preds = %bb.fe
  %i.afs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, i64 8), align 8, !tbaa !54 ; 2 uses
  %.not.i341.i = icmp eq ptr %i.afs, null
  br i1 %.not.i341.i, label %_ZN8ImVectorI6ImVec2E5clearEv.exit.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, i64 4), align 4, !tbaa !292
  store i32 0, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, align 8, !tbaa !291
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.afs)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, i64 8), align 8, !tbaa !54
  br label %_ZN8ImVectorI6ImVec2E5clearEv.exit.i

_ZN8ImVectorI6ImVec2E5clearEv.exit.i:             ; preds = %bb.fg, %bb.ff, %bb.fe
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.fh

bb.fh:                                            ; preds = %_ZN8ImVectorI6ImVec2E5clearEv.exit.i, %bb.er
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.abe, ptr noundef nonnull align 4 dereferenceable(8) %150, ptr noundef nonnull align 4 dereferenceable(8) %152, i1 noundef zeroext true)
  %i.aft = load i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE15opt_enable_grid, align 1, !tbaa !35, !range !19, !noundef !20
  %i.afu = trunc nuw i8 %i.aft to i1
  br i1 %i.afu, label %bb.fi, label %.loopexit.i71

bb.fi:                                            ; preds = %bb.fh
  %i.afv = load float, ptr @_ZZL29ShowExampleAppCustomRenderingPbE9scrolling.0, align 4, !tbaa !44
  %i.afw = call float @fmodf(float noundef %i.afv, float noundef 6.400000e+01) #30 ; 2 uses
  %i.afx = load float, ptr %151, align 8, !tbaa !44
  %i.afy = fcmp olt float %i.afw, %i.afx
  br i1 %i.afy, label %.lr.ph.i76, label %._crit_edge.i74

._crit_edge.i74:                                  ; preds = %.lr.ph.i76, %bb.fi
  %i.afz = load float, ptr @_ZZL29ShowExampleAppCustomRenderingPbE9scrolling.1, align 4, !tbaa !45
  %i.aga = call float @fmodf(float noundef %i.afz, float noundef 6.400000e+01) #30 ; 2 uses
  %i.agb = load float, ptr %i.aau, align 4, !tbaa !45
  %i.agc = fcmp olt float %i.aga, %i.agb
  br i1 %i.agc, label %.lr.ph37.i75, label %.loopexit.i71

.lr.ph.i76:                                       ; preds = %bb.fi, %.lr.ph.i76
  %.030434.i = phi float [ %i.agh, %.lr.ph.i76 ], [ %i.afw, %bb.fi ] ; 2 uses
  %i.agd = load float, ptr %150, align 8, !tbaa !44
  %i.age = fadd float %.030434.i, %i.agd
  %i.agf = load float, ptr %i.aax, align 4, !tbaa !45
  %i.agg = load float, ptr %i.aay, align 4, !tbaa !45
  call void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.abe, float noundef %i.age, float noundef %i.agf, float noundef %i.agg, i32 noundef 684247240, float noundef 1.000000e+00)
  %i.agh = fadd float %.030434.i, 6.400000e+01    ; 2 uses
  %i.agi = load float, ptr %151, align 8, !tbaa !44
  %i.agj = fcmp olt float %i.agh, %i.agi
  br i1 %i.agj, label %.lr.ph.i76, label %._crit_edge.i74, !llvm.loop !270

.lr.ph37.i75:                                     ; preds = %._crit_edge.i74, %.lr.ph37.i75
  %.030335.i = phi float [ %i.ago, %.lr.ph37.i75 ], [ %i.aga, %._crit_edge.i74 ] ; 2 uses
  %i.agk = load float, ptr %150, align 8, !tbaa !44
  %i.agl = load float, ptr %152, align 8, !tbaa !44
  %i.agm = load float, ptr %i.aax, align 4, !tbaa !45
  %i.agn = fadd float %.030335.i, %i.agm
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.abe, float noundef %i.agk, float noundef %i.agl, float noundef %i.agn, i32 noundef 684247240, float noundef 1.000000e+00)
  %i.ago = fadd float %.030335.i, 6.400000e+01    ; 2 uses
  %i.agp = load float, ptr %i.aau, align 4, !tbaa !45
  %i.agq = fcmp olt float %i.ago, %i.agp
  br i1 %i.agq, label %.lr.ph37.i75, label %.loopexit.i71, !llvm.loop !271

.loopexit.i71:                                    ; preds = %.lr.ph37.i75, %._crit_edge.i74, %bb.fh
  %i.agr = load i32, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, align 8, !tbaa !291
  %i.ags = icmp sgt i32 %i.agr, 0
  br i1 %i.ags, label %.lr.ph40.i, label %._crit_edge41.i

._crit_edge41.i:                                  ; preds = %.lr.ph40.i, %.loopexit.i71
  call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %i.abe)
  call void @_ZN5ImGui10EndTabItemEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #30
  br label %bb.fj

.lr.ph40.i:                                       ; preds = %.loopexit.i71, %.lr.ph40.i
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i73, %.lr.ph40.i ], [ 0, %.loopexit.i71 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %153) #30
  %i.agt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, i64 8), align 8, !tbaa !54
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %i.agt, i64 %indvars.iv.i72 ; 2 uses
  %i.agv = load <2 x float>, ptr %i.agu, align 4, !tbaa !46
  %i.agw = fadd <2 x float> %i.abn, %i.agv
  store <2 x float> %i.agw, ptr %153, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %154) #30
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  %i.agy = load <2 x float>, ptr %i.agx, align 4, !tbaa !46
  %i.agz = fadd <2 x float> %i.abn, %i.agy
  store <2 x float> %i.agz, ptr %154, align 8, !tbaa !46
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.abe, ptr noundef nonnull align 4 dereferenceable(8) %153, ptr noundef nonnull align 4 dereferenceable(8) %154, i32 noundef -16711681, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #30
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i72, 2 ; 2 uses
  %i.aha = load i32, ptr @_ZZL29ShowExampleAppCustomRenderingPbE6points, align 8, !tbaa !291
  %i.ahb = trunc nuw i64 %indvars.iv.next.i73 to i32
  %i.ahc = icmp sgt i32 %i.aha, %i.ahb
  br i1 %i.ahc, label %.lr.ph40.i, label %._crit_edge41.i, !llvm.loop !272

bb.fj:                                            ; preds = %._crit_edge41.i, %bb.dq
  %i.ahd = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull @.str.2285, ptr noundef null, i32 noundef 0)
  br i1 %i.ahd, label %bb.fk, label %bb.fr

bb.fk:                                            ; preds = %bb.fj
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 10494, ptr noundef nonnull @.str.2286)
  %i.ahe = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2287, ptr noundef nonnull @_ZZL29ShowExampleAppCustomRenderingPbE7draw_bg) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ahf = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ahf, label %bb.fl, label %_ZL10HelpMarkerPKc.exit.i

bb.fl:                                            ; preds = %bb.fk
  %i.ahg = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.ahh = fmul float %i.ahg, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.ahh)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.2288, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit.i

_ZL10HelpMarkerPKc.exit.i:                        ; preds = %bb.fl, %bb.fk
  %i.ahi = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2289, ptr noundef nonnull @_ZZL29ShowExampleAppCustomRenderingPbE7draw_fg) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.ahj = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.ahj, label %bb.fm, label %_ZL10HelpMarkerPKc.exit342.i

bb.fm:                                            ; preds = %_ZL10HelpMarkerPKc.exit.i
  %i.ahk = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.ahl = fmul float %i.ahk, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.ahl)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.2290, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit342.i

_ZL10HelpMarkerPKc.exit342.i:                     ; preds = %bb.fm, %_ZL10HelpMarkerPKc.exit.i
  %i.ahm = call <2 x float> @_ZN5ImGui12GetWindowPosEv()
  %i.ahn = call <2 x float> @_ZN5ImGui13GetWindowSizeEv() ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #30
  %.sroa.040.4.vec.extract.i = extractelement <2 x float> %i.ahn, i64 1
  %i.aho = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahn, <2 x float> splat (float 5.000000e-01), <2 x float> %i.ahm)
  store <2 x float> %i.aho, ptr %155, align 8, !tbaa !46
  %i.ahp = load i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE7draw_bg, align 1, !tbaa !35, !range !19, !noundef !20
  %i.ahq = trunc nuw i8 %i.ahp to i1
  br i1 %i.ahq, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %_ZL10HelpMarkerPKc.exit342.i
  %.sroa.040.0.vec.extract.i = extractelement <2 x float> %i.ahn, i64 0
  %i.ahr = call noundef ptr @_ZN5ImGui21GetBackgroundDrawListEv()
  %i.ahs = fmul float %.sroa.040.0.vec.extract.i, 6.000000e-01
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ahr, ptr noundef nonnull align 4 dereferenceable(8) %155, float noundef %i.ahs, i32 noundef -939523841, i32 noundef 0, float noundef 1.400000e+01)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %_ZL10HelpMarkerPKc.exit342.i
  %i.aht = load i8, ptr @_ZZL29ShowExampleAppCustomRenderingPbE7draw_fg, align 1, !tbaa !35, !range !19, !noundef !20
  %i.ahu = trunc nuw i8 %i.aht to i1
  br i1 %i.ahu, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.ahv = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv()
  %i.ahw = fmul float %.sroa.040.4.vec.extract.i, 6.000000e-01
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ahv, ptr noundef nonnull align 4 dereferenceable(8) %155, float noundef %i.ahw, i32 noundef -939458816, i32 noundef 0, float noundef 1.000000e+01)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  call void @_ZN5ImGui10EndTabItemEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #30
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fj
  %i.ahx = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull @.str.2291, ptr noundef null, i32 noundef 0)
  br i1 %i.ahx, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 10516, ptr noundef nonnull @.str.2292)
  %i.ahy = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() ; 9 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2293)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2294)
  %i.ahz = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #30
  store <2 x float> %i.ahz, ptr %156, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #30
  %i.aia = fadd <2 x float> %i.ahz, splat (float 5.000000e+01)
  store <2 x float> %i.aia, ptr %157, align 8, !tbaa !46
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ahy, ptr noundef nonnull align 4 dereferenceable(8) %156, ptr noundef nonnull align 4 dereferenceable(8) %157, i32 noundef -65536, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #30
  %i.aib = fadd <2 x float> %i.ahz, splat (float 2.500000e+01)
  store <2 x float> %i.aib, ptr %158, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #30
  %i.aic = fadd <2 x float> %i.ahz, splat (float 7.500000e+01)
  store <2 x float> %i.aic, ptr %159, align 8, !tbaa !46
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ahy, ptr noundef nonnull align 4 dereferenceable(8) %158, ptr noundef nonnull align 4 dereferenceable(8) %159, i32 noundef -16776961, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %160) #30
  store <2 x float> splat (float 7.500000e+01), ptr %160, align 8, !tbaa !46
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %160)
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #30
  call void @_ZN5ImGui9SeparatorEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2295)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2296)
  %i.aid = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() ; 4 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahy, i64 136 ; 4 uses
  call void @_ZN18ImDrawListSplitter5SplitEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.aie, ptr noundef nonnull align 8 dereferenceable(224) %i.ahy, i32 noundef 2)
  call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.aie, ptr noundef nonnull align 8 dereferenceable(224) %i.ahy, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #30
  store <2 x float> %i.aid, ptr %161, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %162) #30
  %i.aif = fadd <2 x float> %i.aid, splat (float 5.000000e+01)
  store <2 x float> %i.aif, ptr %162, align 8, !tbaa !46
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ahy, ptr noundef nonnull align 4 dereferenceable(8) %161, ptr noundef nonnull align 4 dereferenceable(8) %162, i32 noundef -65536, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #30
  call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %i.aie, ptr noundef nonnull align 8 dereferenceable(224) %i.ahy, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #30
  %i.aig = fadd <2 x float> %i.aid, splat (float 2.500000e+01)
  store <2 x float> %i.aig, ptr %163, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #30
  %i.aih = fadd <2 x float> %i.aid, splat (float 7.500000e+01)
  store <2 x float> %i.aih, ptr %164, align 8, !tbaa !46
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ahy, ptr noundef nonnull align 4 dereferenceable(8) %163, ptr noundef nonnull align 4 dereferenceable(8) %164, i32 noundef -16776961, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #30
  call void @_ZN18ImDrawListSplitter5MergeEP10ImDrawList(ptr noundef nonnull align 8 dereferenceable(24) %i.aie, ptr noundef nonnull align 8 dereferenceable(224) %i.ahy)
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #30
  store <2 x float> splat (float 7.500000e+01), ptr %165, align 8, !tbaa !46
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %165)
  call void @llvm.lifetime.end.p0(ptr nonnull %165) #30
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2297)
  call void @_ZN5ImGui10EndTabItemEv()
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  call void @_ZN5ImGui9EndTabBarEv()
  br label %_ZL29ShowExampleAppCustomRenderingPb.exit.sink.split

_ZL29ShowExampleAppCustomRenderingPb.exit.sink.split: ; preds = %bb.cz, %bb.ft, %bb.cy
  call void @_ZN5ImGui3EndEv()
  br label %_ZL29ShowExampleAppCustomRenderingPb.exit

_ZL29ShowExampleAppCustomRenderingPb.exit:        ; preds = %_ZL29ShowExampleAppCustomRenderingPb.exit.sink.split, %bb.cx
  %i.aii = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 5), align 1, !tbaa !295, !range !19, !noundef !20
  %i.aij = trunc nuw i8 %i.aii to i1
  br i1 %i.aij, label %bb.fu, label %bb.fw

bb.fu:                                            ; preds = %_ZL29ShowExampleAppCustomRenderingPb.exit
  %i.aik = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 56
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !84 ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 40
  %.sroa.011.0.copyload.i = load ptr, ptr %i.ain, align 8, !tbaa !85
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aim, i64 48
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !86
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aim, i64 56
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !100
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 36
  %i.air = load <2 x i32>, ptr %i.aiq, align 4, !tbaa !51 ; 3 uses
  %i.ais = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2155, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 5), i32 noundef 0)
  br i1 %i.ais, label %bb.fv, label %_ZL25ShowExampleAppImageViewerPb.exit

bb.fv:                                            ; preds = %bb.fu
  call fastcc void @_ZL30ExampleImageViewer_DrawOptionsP22ExampleImageViewerData(ptr noundef nonnull @_ZZL25ShowExampleAppImageViewerPbE12image_viewer)
  %i.ait = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() ; 2 uses
  %i.aiu = call noundef zeroext i1 @_ZN5ImGui17IsWindowAppearingEv()
  %i.aiv = sitofp <2 x i32> %i.air to <2 x float>
  %i.aiw = fmul nnan <2 x float> %i.aiv, <float 3.000000e+00, float 4.000000e+00>
  %i.aix = insertelement <2 x i1> poison, i1 %i.aiu, i64 0
  %i.aiy = shufflevector <2 x i1> %i.aix, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aiz = select <2 x i1> %i.aiy, <2 x float> %i.aiw, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %i.aja = fcmp oge <2 x float> %i.ait, %i.aiz
  %i.ajb = select <2 x i1> %i.aja, <2 x float> %i.ait, <2 x float> %i.aiz
  %i.ajc = extractelement <2 x i32> %i.air, i64 0
  %i.ajd = extractelement <2 x i32> %i.air, i64 1
  call fastcc void @_ZL29ExampleImageViewer_DrawCanvasP22ExampleImageViewerData6ImVec212ImTextureRefii(ptr noundef nonnull @_ZZL25ShowExampleAppImageViewerPbE12image_viewer, <2 x float> %i.ajb, ptr %.sroa.011.0.copyload.i, i64 %.sroa.4.0.copyload.i, i32 noundef %i.ajc, i32 noundef %i.ajd)
  br label %_ZL25ShowExampleAppImageViewerPb.exit

_ZL25ShowExampleAppImageViewerPb.exit:            ; preds = %bb.fu, %bb.fv
  call void @_ZN5ImGui3EndEv()
  br label %bb.fw

bb.fw:                                            ; preds = %_ZL25ShowExampleAppImageViewerPb.exit, %_ZL29ShowExampleAppCustomRenderingPb.exit
  %i.aje = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 6), align 2, !tbaa !296, !range !19, !noundef !20
  %i.ajf = trunc nuw i8 %i.aje to i1
  br i1 %i.ajf, label %bb.fx, label %bb.gd

bb.fx:                                            ; preds = %bb.fw
  %i.ajg = load atomic i8, ptr @_ZGVZL17ShowExampleAppLogPbE3log acquire, align 8
  %i.ajh = icmp eq i8 %i.ajg, 0
  br i1 %i.ajh, label %bb.fy, label %bb.gb, !prof !14

bb.fy:                                            ; preds = %bb.fx
  %i.aji = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL17ShowExampleAppLogPbE3log) #30
  %.not.i84 = icmp eq i32 %i.aji, 0
  br i1 %.not.i84, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZN13ExampleAppLogC2Ev(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log)
          to label %bb.ga unwind label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.ajj = call i32 @__cxa_atexit(ptr nonnull @_ZN13ExampleAppLogD2Ev, ptr nonnull @_ZZL17ShowExampleAppLogPbE3log, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL17ShowExampleAppLogPbE3log) #30
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fy, %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #30
  store <2 x float> <float 5.000000e+02, float 4.000000e+02>, ptr %95, align 8, !tbaa !46
  call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %95, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #30
  %i.ajk = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2156, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 6), i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9581, ptr noundef nonnull @.str.2157)
  %i.ajl = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.2158)
  br i1 %i.ajl, label %.preheader.preheader.i, label %_ZL17ShowExampleAppLogPb.exit

.preheader.preheader.i:                           ; preds = %bb.gb
  %i.ajm = load i32, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !51 ; 2 uses
  %i.ajn = srem i32 %i.ajm, 3
  %i.ajo = sext i32 %i.ajn to i64
  %i.ajp = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.categories, i64 %i.ajo
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !101
  %i.ajr = srem i32 %i.ajm, 7
  %i.ajs = sext i32 %i.ajr to i64
  %i.ajt = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.words, i64 %i.ajs
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !101
  %i.ajv = call noundef i32 @_ZN5ImGui13GetFrameCountEv()
  %i.ajw = call noundef double @_ZN5ImGui7GetTimeEv()
  call void (ptr, ptr, ...) @_ZN13ExampleAppLog6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2169, i32 noundef %i.ajv, ptr noundef %i.ajq, double noundef %i.ajw, ptr noundef %i.aju)
  %i.ajx = load i32, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !51
  %i.ajy = add nsw i32 %i.ajx, 1                  ; 3 uses
  store i32 %i.ajy, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !51
  %i.ajz = srem i32 %i.ajy, 3
  %i.aka = sext i32 %i.ajz to i64
  %i.akb = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.categories, i64 %i.aka
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !101
  %i.akd = srem i32 %i.ajy, 7
  %i.ake = sext i32 %i.akd to i64
  %i.akf = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.words, i64 %i.ake
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !101
  %i.akh = call noundef i32 @_ZN5ImGui13GetFrameCountEv()
  %i.aki = call noundef double @_ZN5ImGui7GetTimeEv()
  call void (ptr, ptr, ...) @_ZN13ExampleAppLog6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2169, i32 noundef %i.akh, ptr noundef %i.akc, double noundef %i.aki, ptr noundef %i.akg)
  %i.akj = load i32, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !51
  %i.akk = add nsw i32 %i.akj, 1                  ; 3 uses
  store i32 %i.akk, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !51
  %i.akl = srem i32 %i.akk, 3
  %i.akm = sext i32 %i.akl to i64
  %i.akn = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.categories, i64 %i.akm
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !101
  %i.akp = srem i32 %i.akk, 7
  %i.akq = sext i32 %i.akp to i64
  %i.akr = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.words, i64 %i.akq
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !101
  %i.akt = call noundef i32 @_ZN5ImGui13GetFrameCountEv()
  %i.aku = call noundef double @_ZN5ImGui7GetTimeEv()
  call void (ptr, ptr, ...) @_ZN13ExampleAppLog6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2169, i32 noundef %i.akt, ptr noundef %i.ako, double noundef %i.aku, ptr noundef %i.aks)
  %i.akv = load i32, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !51
  %i.akw = add nsw i32 %i.akv, 1                  ; 3 uses
  store i32 %i.akw, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !51
  %i.akx = srem i32 %i.akw, 3
  %i.aky = sext i32 %i.akx to i64
  %i.akz = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.categories, i64 %i.aky
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !101
  %i.alb = srem i32 %i.akw, 7
  %i.alc = sext i32 %i.alb to i64
  %i.ald = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.words, i64 %i.alc
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !101
  %i.alf = call noundef i32 @_ZN5ImGui13GetFrameCountEv()
  %i.alg = call noundef double @_ZN5ImGui7GetTimeEv()
  call void (ptr, ptr, ...) @_ZN13ExampleAppLog6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2169, i32 noundef %i.alf, ptr noundef %i.ala, double noundef %i.alg, ptr noundef %i.ale)
  %i.alh = load i32, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !51
  %i.ali = add nsw i32 %i.alh, 1                  ; 3 uses
  store i32 %i.ali, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !51
  %i.alj = srem i32 %i.ali, 3
  %i.alk = sext i32 %i.alj to i64
  %i.all = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.categories, i64 %i.alk
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !101
  %i.aln = srem i32 %i.ali, 7
  %i.alo = sext i32 %i.aln to i64
  %i.alp = getelementptr inbounds [8 x i8], ptr @__const._ZL17ShowExampleAppLogPb.words, i64 %i.alo
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !101
  %i.alr = call noundef i32 @_ZN5ImGui13GetFrameCountEv()
  %i.als = call noundef double @_ZN5ImGui7GetTimeEv()
  call void (ptr, ptr, ...) @_ZN13ExampleAppLog6AddLogEPKcz(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2169, i32 noundef %i.alr, ptr noundef %i.alm, double noundef %i.als, ptr noundef %i.alq)
  %i.alt = load i32, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !51
  %i.alu = add nsw i32 %i.alt, 1
  store i32 %i.alu, ptr @_ZZL17ShowExampleAppLogPbE7counter, align 4, !tbaa !51
  br label %_ZL17ShowExampleAppLogPb.exit

bb.gc:                                            ; preds = %bb.fz
  %i.alv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL17ShowExampleAppLogPbE3log) #30
  br label %common.resume

_ZL17ShowExampleAppLogPb.exit:                    ; preds = %bb.gb, %.preheader.preheader.i
  call void @_ZN5ImGui3EndEv()
  call void @_ZN13ExampleAppLog4DrawEPKcPb(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2156, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 6))
  br label %bb.gd

bb.gd:                                            ; preds = %_ZL17ShowExampleAppLogPb.exit, %bb.fw
  %i.alw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 7), align 1, !tbaa !297, !range !19, !noundef !20
  %i.alx = trunc nuw i8 %i.alw to i1
  br i1 %i.alx, label %bb.ge, label %bb.gw

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #30
  store <2 x float> <float 5.000000e+02, float 4.400000e+02>, ptr %89, align 8, !tbaa !46
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 134
begin_hunk_0
@_ZZL29ShowExampleAppCustomRenderingPbE2sz = internal global float 4.200000e+01, align 4
@_ZZL29ShowExampleAppCustomRenderingPbE9thickness = internal global float 3.000000e+00, align 4
@_ZZL29ShowExampleAppCustomRenderingPbE10ngon_sides = internal global i32 6, align 4
@_ZZL29ShowExampleAppCustomRenderingPbE24circle_segments_override = internal global i8 0, align 1
@_ZZL29ShowExampleAppCustomRenderingPbE26circle_segments_override_v = internal global i32 12, align 4
@_ZZL29ShowExampleAppCustomRenderingPbE23curve_segments_override = internal global i8 0, align 1
@_ZZL29ShowExampleAppCustomRenderingPbE25curve_segments_override_v = internal global i32 8, align 4
@_ZZL29ShowExampleAppCustomRenderingPbE4colf = internal global %struct.ImVec4 { float 1.000000e+00, float 1.000000e+00, float 4.000000e-01, float 1.000000e+00 }, align 4
@.str.2269 = private unnamed_addr constant [10 x i8] c"Thickness\00", align 1
@.str.2270 = private unnamed_addr constant [6 x i8] c"%.02f\00", align 1
@.str.2271 = private unnamed_addr constant [12 x i8] c"N-gon sides\00", align 1
@.str.2272 = private unnamed_addr constant [24 x i8] c"##circlesegmentoverride\00", align 1
@.str.2273 = private unnamed_addr constant [25 x i8] c"Circle segments override\00", align 1
@.str.2274 = private unnamed_addr constant [24 x i8] c"##curvessegmentoverride\00", align 1
@.str.2275 = private unnamed_addr constant [25 x i8] c"Curves segments override\00", align 1
@.str.2276 = private unnamed_addr constant [7 x i8] c"Canvas\00", align 1
@.str.2277 = private unnamed_addr constant [33 x i8] c"Examples/Custom rendering/Canvas\00", align 1
@_ZZL29ShowExampleAppCustomRenderingPbE6points = internal global %struct.ImVector.8 zeroinitializer, align 8
@_ZGVZL29ShowExampleAppCustomRenderingPbE6points = internal global i64 0, align 8
@_ZZL29ShowExampleAppCustomRenderingPbE9scrolling.0 = internal unnamed_addr global float 0.000000e+00, align 4
@_ZZL29ShowExampleAppCustomRenderingPbE9scrolling.1 = internal unnamed_addr global float 0.000000e+00, align 4
@_ZZL29ShowExampleAppCustomRenderingPbE15opt_enable_grid = internal global i8 1, align 1
@_ZZL29ShowExampleAppCustomRenderingPbE23opt_enable_context_menu = internal global i8 1, align 1
@_ZZL29ShowExampleAppCustomRenderingPbE11adding_line = internal unnamed_addr global i1 false, align 1
@.str.2278 = private unnamed_addr constant [12 x i8] c"Enable grid\00", align 1
@.str.2279 = private unnamed_addr constant [20 x i8] c"Enable context menu\00", align 1
@.str.2280 = private unnamed_addr constant [84 x i8] c"Mouse Left: drag to add lines,\0AMouse Right: drag to scroll, click for context menu.\00", align 1
@.str.2281 = private unnamed_addr constant [7 x i8] c"canvas\00", align 1
@.str.2282 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.2283 = private unnamed_addr constant [11 x i8] c"Remove one\00", align 1
@.str.2284 = private unnamed_addr constant [11 x i8] c"Remove all\00", align 1
@.str.2285 = private unnamed_addr constant [17 x i8] c"BG/FG draw lists\00", align 1
@.str.2286 = private unnamed_addr constant [45 x i8] c"Examples/Custom rendering/BG & FG draw lists\00", align 1
@_ZZL29ShowExampleAppCustomRenderingPbE7draw_bg = internal global i8 1, align 1
@_ZZL29ShowExampleAppCustomRenderingPbE7draw_fg = internal global i8 1, align 1
@.str.2287 = private unnamed_addr constant [29 x i8] c"Draw in Background draw list\00", align 1
@.str.2288 = private unnamed_addr constant [74 x i8] c"The Background draw list will be rendered below every Dear ImGui windows.\00", align 1
@.str.2289 = private unnamed_addr constant [29 x i8] c"Draw in Foreground draw list\00", align 1
@.str.2290 = private unnamed_addr constant [73 x i8] c"The Foreground draw list will be rendered over every Dear ImGui windows.\00", align 1
@.str.2291 = private unnamed_addr constant [14 x i8] c"Draw Channels\00", align 1
@.str.2292 = private unnamed_addr constant [40 x i8] c"Examples/Custom rendering/Draw Channels\00", align 1
@.str.2293 = private unnamed_addr constant [43 x i8] c"Blue shape is drawn first: appears in back\00", align 1
@.str.2294 = private unnamed_addr constant [43 x i8] c"Red shape is drawn after: appears in front\00", align 1
@.str.2295 = private unnamed_addr constant [60 x i8] c"Blue shape is drawn first, into channel 1: appears in front\00", align 1
@.str.2296 = private unnamed_addr constant [58 x i8] c"Red shape is drawn after, into channel 0: appears in back\00", align 1
@.str.2297 = private unnamed_addr constant [65 x i8] c"After reordering, contents of channel 0 appears below channel 1.\00", align 1
@constinit = private unnamed_addr constant [8 x %struct.ImVec2] [%struct.ImVec2 zeroinitializer, %struct.ImVec2 { float 3.000000e-01, float 0.000000e+00 }, %struct.ImVec2 { float 3.000000e-01, float f0x3F333333 }, %struct.ImVec2 { float f0x3F333333, float f0x3F333333 }, %struct.ImVec2 { float f0x3F333333, float 0.000000e+00 }, %struct.ImVec2 { float 1.000000e+00, float 0.000000e+00 }, %struct.ImVec2 { float 1.000000e+00, float 1.000000e+00 }, %struct.ImVec2 { float 0.000000e+00, float 1.000000e+00 }], align 16
@_ZZL23ShowExampleAppDocumentsPbE3app = internal global %struct.ExampleAppDocuments zeroinitializer, align 8
@_ZGVZL23ShowExampleAppDocumentsPbE3app = internal global i64 0, align 8
@.str.2298 = private unnamed_addr constant [19 x i8] c"Example: Documents\00", align 1
@.str.2299 = private unnamed_addr constant [19 x i8] c"Examples/Documents\00", align 1
@.str.2300 = private unnamed_addr constant [20 x i8] c"Close All Documents\00", align 1
@.str.2301 = private unnamed_addr constant [5 x i8] c"Exit\00", align 1
@.str.2302 = private unnamed_addr constant [7 x i8] c"Rename\00", align 1
@.str.2303 = private unnamed_addr constant [8 x i8] c"###Name\00", align 1
@.str.2304 = private unnamed_addr constant [6 x i8] c"Save?\00", align 1
@.str.2305 = private unnamed_addr constant [36 x i8] c"Save change to the following items?\00", align 1
@.str.2306 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.2307 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.2308 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2310 = private unnamed_addr constant [9 x i8] c"Eggplant\00", align 4
@.str.2311 = private unnamed_addr constant [7 x i8] c"Tomato\00", align 4
@.str.2312 = private unnamed_addr constant [20 x i8] c"A Rather Long Title\00", align 4
@.str.2313 = private unnamed_addr constant [14 x i8] c"Some Document\00", align 4
@.str.2314 = private unnamed_addr constant [11 x i8] c"%s###doc%d\00", align 1
@.str.2315 = private unnamed_addr constant [8 x i8] c"Save %s\00", align 1
@.str.2316 = private unnamed_addr constant [10 x i8] c"Rename...\00", align 1
@.str.2317 = private unnamed_addr constant [7 x i8] c"Ctrl+R\00", align 1
@.str.2318 = private unnamed_addr constant [14 x i8] c"Document \22%s\22\00", align 1
@.str.2319 = private unnamed_addr constant [124 x i8] c"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\00", align 1
@.str.2320 = private unnamed_addr constant [9 x i8] c"Rename..\00", align 1
@.str.2321 = private unnamed_addr constant [7 x i8] c"Modify\00", align 1
@.str.2322 = private unnamed_addr constant [6 x i8] c"color\00", align 1
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
  %84 = alloca %struct.ImVec2, align 4            ; 5 uses
  %85 = alloca %struct.ImVec2, align 4            ; 5 uses
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
  %156 = alloca %struct.ImVec2, align 4           ; 5 uses
  %157 = alloca %struct.ImVec2, align 8           ; 4 uses
  %158 = alloca %struct.ImVec2, align 8           ; 4 uses
  %159 = alloca %struct.ImVec2, align 8           ; 4 uses
  %160 = alloca %struct.ImVec2, align 8           ; 4 uses
  %161 = alloca %struct.ImVec2, align 4           ; 5 uses
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
  %i.o = load i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, align 8, !tbaa !283, !range !19, !noundef !20
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
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 4), align 4, !tbaa !284, !range !19, !noundef !20
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
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.mz, %bb.cq ], [ %i.ng, %bb.cw ], [ %i.anh, %bb.gc ], [ %i.aoo, %bb.he ], [ %.pn.i, %bb.ko ]
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
  %.not924.i = icmp eq i32 %i.aj, 0
  br i1 %.not924.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.t
end_hunk_0
begin_hunk_1_@_ZN5ImGui14ShowDemoWindowEPb:bb.a
  call void @_ZN13ExampleAppLog4DrawEPKcPb(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2156, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 6))
  br label %bb.gd

bb.gd:                                            ; preds = %_ZL17ShowExampleAppLogPb.exit, %bb.fw
  %i.ani = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 7), align 1, !tbaa !298, !range !19, !noundef !20
  %i.anj = trunc nuw i8 %i.ani to i1
  br i1 %i.anj, label %bb.ge, label %bb.gw

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #30
  store <2 x float> <float 5.000000e+02, float 4.400000e+02>, ptr %89, align 8, !tbaa !46
  call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %89, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #30
  %i.ank = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2171, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 7), i32 noundef 1024)
  br i1 %i.ank, label %bb.gf, label %_ZL20ShowExampleAppLayoutPb.exit

bb.gf:                                            ; preds = %bb.ge
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9612, ptr noundef nonnull @.str.2172)
  %i.anl = call noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv()
  br i1 %i.anl, label %bb.gg, label %bb.gl

bb.gg:                                            ; preds = %bb.gf
  %i.anm = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.1530, i1 noundef zeroext true)
  br i1 %i.anm, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %bb.gg
  %i.ann = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.907, ptr noundef nonnull @.str.2173, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.ann, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 7), align 1, !tbaa !36
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  call void @_ZN5ImGui7EndMenuEv()
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gg
  call void @_ZN5ImGui10EndMenuBarEv()
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #30
  store <2 x float> <float 1.500000e+02, float 0.000000e+00>, ptr %90, align 8, !tbaa !46
  %i.ano = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.2174, ptr noundef nonnull align 4 dereferenceable(8) %90, i32 noundef 5, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #30
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gp
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui10BeginGroupEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #30
  %i.anp = call noundef float @_ZN5ImGui25GetFrameHeightWithSpacingEv()
  %i.anq = fneg float %i.anp
  store float 0.000000e+00, ptr %92, align 4, !tbaa !44
  %i.anr = getelementptr inbounds nuw i8, ptr %92, i64 4
  store float %i.anq, ptr %i.anr, align 4, !tbaa !45
  %i.ans = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.2176, ptr noundef nonnull align 4 dereferenceable(8) %92, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #30
  %i.ant = load i32, ptr @_ZZL20ShowExampleAppLayoutPbE8selected, align 4, !tbaa !51
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2177, i32 noundef %i.ant)
  call void @_ZN5ImGui9SeparatorEv()
  %i.anu = call noundef zeroext i1 @_ZN5ImGui11BeginTabBarEPKci(ptr noundef nonnull @.str.2178, i32 noundef 0)
  br i1 %i.anu, label %bb.gq, label %bb.gv

bb.gn:                                            ; preds = %bb.gp, %bb.gl
  %.01.i = phi i32 [ 0, %bb.gl ], [ %i.anz, %bb.gp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.anv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.2175, i32 noundef %.01.i) #30 ; 0 uses
  %i.anw = load i32, ptr @_ZZL20ShowExampleAppLayoutPbE8selected, align 4, !tbaa !51
  %i.anx = icmp eq i32 %i.anw, %.01.i
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #30
  store <2 x float> zeroinitializer, ptr %91, align 8, !tbaa !46
  %i.any = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.h, i1 noundef zeroext %i.anx, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(8) %91)
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #30
  br i1 %i.any, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  store i32 %.01.i, ptr @_ZZL20ShowExampleAppLayoutPbE8selected, align 4, !tbaa !51
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.anz = add nuw nsw i32 %.01.i, 1              ; 2 uses
  %exitcond.not.i85 = icmp eq i32 %i.anz, 100
  br i1 %exitcond.not.i85, label %bb.gm, label %bb.gn, !llvm.loop !274

bb.gq:                                            ; preds = %bb.gm
  %i.aoa = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull @.str.1896, ptr noundef null, i32 noundef 0)
  br i1 %i.aoa, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  call void (ptr, ...) @_ZN5ImGui11TextWrappedEPKcz(ptr noundef nonnull @.str.2179)
  call void @_ZN5ImGui10EndTabItemEv()
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.aob = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull @.str.210, ptr noundef null, i32 noundef 0)
  br i1 %i.aob, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2180)
  call void @_ZN5ImGui10EndTabItemEv()
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  call void @_ZN5ImGui9EndTabBarEv()
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gm
  call void @_ZN5ImGui8EndChildEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #30
  store <2 x float> zeroinitializer, ptr %93, align 8, !tbaa !46
  %i.aoc = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.307, ptr noundef nonnull align 4 dereferenceable(8) %93) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #30
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #30
  store <2 x float> zeroinitializer, ptr %94, align 8, !tbaa !46
  %i.aod = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.306, ptr noundef nonnull align 4 dereferenceable(8) %94) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #30
  call void @_ZN5ImGui8EndGroupEv()
  br label %_ZL20ShowExampleAppLayoutPb.exit

_ZL20ShowExampleAppLayoutPb.exit:                 ; preds = %bb.ge, %bb.gv
  call void @_ZN5ImGui3EndEv()
  br label %bb.gw

bb.gw:                                            ; preds = %_ZL20ShowExampleAppLayoutPb.exit, %bb.gd
  %i.aoe = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 8), align 8, !tbaa !299, !range !19, !noundef !20
  %i.aof = trunc nuw i8 %i.aoe to i1
  br i1 %i.aof, label %bb.gx, label %bb.hg

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #30
  store <2 x float> <float 4.300000e+02, float 4.500000e+02>, ptr %88, align 8, !tbaa !46
  call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %88, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #30
  %i.aog = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2181, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 8), i32 noundef 0)
  br i1 %i.aog, label %bb.gy, label %_ZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowData.exit

bb.gy:                                            ; preds = %bb.gx
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9908, ptr noundef nonnull @.str.2182)
  %i.aoh = load atomic i8, ptr @_ZGVZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor acquire, align 8
  %i.aoi = icmp eq i8 %i.aoh, 0
  br i1 %i.aoi, label %bb.gz, label %bb.hc, !prof !14

bb.gz:                                            ; preds = %bb.gy
  %i.aoj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor) #30
  %.not.i86 = icmp eq i32 %i.aoj, 0
  br i1 %.not.i86, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZN15ImGuiTextFilterC1EPKc(ptr noundef nonnull align 8 dereferenceable(276) @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, ptr noundef nonnull @.str.157)
          to label %bb.hb unwind label %bb.he

bb.hb:                                            ; preds = %bb.ha
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, i64 280), align 8, !tbaa !106
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, i64 288), align 8, !tbaa !107
  %i.aok = call i32 @__cxa_atexit(ptr nonnull @_ZN24ExampleAppPropertyEditorD2Ev, ptr nonnull @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor) #30
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.gz, %bb.gy
  %i.aol = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 32), align 8, !tbaa !108 ; 2 uses
  %i.aom = icmp eq ptr %i.aol, null
  br i1 %i.aom, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %bb.hc
  %i.aon = call fastcc noundef ptr @_ZL26ExampleTree_CreateDemoTreev() ; 2 uses
  store ptr %i.aon, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 32), align 8, !tbaa !108
  br label %bb.hf

bb.he:                                            ; preds = %bb.ha
  %i.aoo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor) #30
  br label %common.resume

bb.hf:                                            ; preds = %bb.hd, %bb.hc
  %i.aop = phi ptr [ %i.aon, %bb.hd ], [ %i.aol, %bb.hc ]
  call void @_ZN24ExampleAppPropertyEditor4DrawEP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, ptr noundef %i.aop)
  br label %_ZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowData.exit

_ZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowData.exit: ; preds = %bb.gx, %bb.hf
  call void @_ZN5ImGui3EndEv()
  br label %bb.hg

bb.hg:                                            ; preds = %_ZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowData.exit, %bb.gw
  %i.aoq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 9), align 1, !tbaa !300, !range !19, !noundef !20
  %i.aor = trunc nuw i8 %i.aoq to i1
  br i1 %i.aor, label %bb.hh, label %bb.if

bb.hh:                                            ; preds = %bb.hg
  %i.aos = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.aot = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51 ; 2 uses
  %i.aou = icmp sgt i32 %i.aot, -1
  br i1 %i.aou, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.aov = call noundef ptr @_ZN5ImGui15GetMainViewportEv() ; 4 uses
  %173 = getelementptr inbounds nuw i8, ptr %i.aov, i64 32
  %.sroa.01.0.copyload.i = load float, ptr %173, align 8, !tbaa !46 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aov, i64 36
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !46 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 40
  %.sroa.0.0.copyload.i = load float, ptr %i.aow, align 8, !tbaa !46
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aov, i64 44
  %.sroa.4.0.copyload.i90 = load float, ptr %i.aox, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #30
  %174 = getelementptr inbounds nuw i8, ptr %84, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #30
  %175 = getelementptr inbounds nuw i8, ptr %85, i64 4
  %i.aoy = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51 ; 2 uses
  %176 = trunc i32 %i.aoy to i1                   ; 2 uses
  %177 = fadd float %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %178 = fadd float %177, -1.000000e+01
  %179 = fadd float %.sroa.01.0.copyload.i, 1.000000e+01
  %180 = select i1 %176, float %178, float %179
  store float %180, ptr %84, align 4, !tbaa !44
  %181 = and i32 %i.aoy, 2
  %.not.i91 = icmp eq i32 %181, 0                 ; 2 uses
  %182 = fadd float %.sroa.5.0.copyload.i, %.sroa.4.0.copyload.i90
  %183 = fadd float %182, -1.000000e+01
  %184 = fadd float %.sroa.5.0.copyload.i, 1.000000e+01
  %185 = select i1 %.not.i91, float %184, float %183
  store float %185, ptr %174, align 4, !tbaa !45
  %186 = select i1 %176, float 1.000000e+00, float 0.000000e+00
  store float %186, ptr %85, align 4, !tbaa !44
  %187 = select i1 %.not.i91, float 0.000000e+00, float 1.000000e+00
  store float %187, ptr %175, align 4, !tbaa !45
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %84, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %85)
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #30
  br label %bb.hl

bb.hj:                                            ; preds = %bb.hh
  %i.aoz = icmp eq i32 %i.aot, -2
  br i1 %i.aoz, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #30
  %i.apa = call noundef ptr @_ZN5ImGui15GetMainViewportEv() ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 8
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apa, i64 16
  %i.apd = load <2 x float>, ptr %i.apb, align 8, !tbaa !46
  %i.ape = load <2 x float>, ptr %i.apc, align 8, !tbaa !46
  %i.apf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ape, <2 x float> splat (float 5.000000e-01), <2 x float> %i.apd)
  store <2 x float> %i.apf, ptr %86, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #30
  store <2 x float> splat (float 5.000000e-01), ptr %87, align 8, !tbaa !46
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %86, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %87)
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #30
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj, %bb.hi
  %.0.i = phi i32 [ 201071, %bb.hi ], [ 201071, %bb.hk ], [ 201067, %bb.hj ]
  call void @_ZN5ImGui20SetNextWindowBgAlphaEf(float noundef 3.500000e-01)
  %i.apg = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2231, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 9), i32 noundef %.0.i)
  br i1 %i.apg, label %bb.hm, label %_ZL27ShowExampleAppSimpleOverlayPb.exit

bb.hm:                                            ; preds = %bb.hl
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 10138, ptr noundef nonnull @.str.2232)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2233)
  call void @_ZN5ImGui9SeparatorEv()
  %i.aph = call noundef zeroext i1 @_ZN5ImGui15IsMousePosValidEPK6ImVec2(ptr noundef null)
  br i1 %i.aph, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.api = getelementptr inbounds nuw i8, ptr %i.aos, i64 232
  %i.apj = load <2 x float>, ptr %i.api, align 8, !tbaa !46
  %i.apk = fpext <2 x float> %i.apj to <2 x double> ; 2 uses
  %i.apl = extractelement <2 x double> %i.apk, i64 0
  %i.apm = extractelement <2 x double> %i.apk, i64 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2234, double noundef %i.apl, double noundef %i.apm)
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2235)
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.apn = call noundef zeroext i1 @_ZN5ImGui23BeginPopupContextWindowEPKci(ptr noundef null, i32 noundef 0)
  br i1 %i.apn, label %bb.hq, label %_ZL27ShowExampleAppSimpleOverlayPb.exit

bb.hq:                                            ; preds = %bb.hp
  %i.apo = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %i.app = icmp eq i32 %i.apo, -1
  %i.apq = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1217, ptr noundef null, i1 noundef zeroext %i.app, i1 noundef zeroext true)
  br i1 %i.apq, label %bb.hr, label %._crit_edge.i87

._crit_edge.i87:                                  ; preds = %bb.hq
  %.pre.i88 = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %i.apr = icmp eq i32 %.pre.i88, -2
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  store i32 -1, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %._crit_edge.i87
  %i.aps = phi i1 [ %i.apr, %._crit_edge.i87 ], [ false, %bb.hr ]
  %i.apt = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1446, ptr noundef null, i1 noundef zeroext %i.aps, i1 noundef zeroext true)
  br i1 %i.apt, label %bb.ht, label %._crit_edge1.i

._crit_edge1.i:                                   ; preds = %bb.hs
  %.pre2.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %i.apu = icmp eq i32 %.pre2.i, 0
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store i32 -2, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %._crit_edge1.i
  %i.apv = phi i1 [ %i.apu, %._crit_edge1.i ], [ false, %bb.ht ]
  %i.apw = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2236, ptr noundef null, i1 noundef zeroext %i.apv, i1 noundef zeroext true)
  br i1 %i.apw, label %bb.hv, label %._crit_edge3.i

._crit_edge3.i:                                   ; preds = %bb.hu
  %.pre4.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %i.apx = icmp eq i32 %.pre4.i, 1
  br label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  store i32 0, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %._crit_edge3.i
  %i.apy = phi i1 [ %i.apx, %._crit_edge3.i ], [ false, %bb.hv ]
  %i.apz = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2237, ptr noundef null, i1 noundef zeroext %i.apy, i1 noundef zeroext true)
  br i1 %i.apz, label %bb.hx, label %._crit_edge5.i

._crit_edge5.i:                                   ; preds = %bb.hw
  %.pre6.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %i.aqa = icmp eq i32 %.pre6.i, 2
  br label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  store i32 1, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %._crit_edge5.i
  %i.aqb = phi i1 [ %i.aqa, %._crit_edge5.i ], [ false, %bb.hx ]
  %i.aqc = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2238, ptr noundef null, i1 noundef zeroext %i.aqb, i1 noundef zeroext true)
  br i1 %i.aqc, label %bb.hz, label %._crit_edge7.i

._crit_edge7.i:                                   ; preds = %bb.hy
  %.pre8.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %i.aqd = icmp eq i32 %.pre8.i, 3
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  store i32 2, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %._crit_edge7.i
  %i.aqe = phi i1 [ %i.aqd, %._crit_edge7.i ], [ false, %bb.hz ]
  %i.aqf = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2239, ptr noundef null, i1 noundef zeroext %i.aqe, i1 noundef zeroext true)
  br i1 %i.aqf, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  store i32 3, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.aqg = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.907, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.aqg, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 9), align 1, !tbaa !36
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  call void @_ZN5ImGui8EndPopupEv()
  br label %_ZL27ShowExampleAppSimpleOverlayPb.exit

_ZL27ShowExampleAppSimpleOverlayPb.exit:          ; preds = %bb.hl, %bb.hp, %bb.ie
  call void @_ZN5ImGui3EndEv()
  br label %bb.if

bb.if:                                            ; preds = %_ZL27ShowExampleAppSimpleOverlayPb.exit, %bb.hg
  %i.aqh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 10), align 2, !tbaa !301, !range !19, !noundef !20
  %i.aqi = trunc nuw i8 %i.aqh to i1
  br i1 %i.aqi, label %bb.ig, label %bb.ii

bb.ig:                                            ; preds = %bb.if
  %i.aqj = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2205, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 10), i32 noundef 64)
  br i1 %i.aqj, label %bb.ih, label %_ZL24ShowExampleAppAutoResizePb.exit

bb.ih:                                            ; preds = %bb.ig
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9992, ptr noundef nonnull @.str.2206)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.2207, ptr noundef null)
  %i.aqk = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.2208, ptr noundef nonnull @_ZZL24ShowExampleAppAutoResizePbE5lines, i32 noundef 1, i32 noundef 20, ptr noundef nonnull @.str.435, i32 noundef 0) ; 0 uses
  %i.aql = load i32, ptr @_ZZL24ShowExampleAppAutoResizePbE5lines, align 4, !tbaa !51
  %i.aqm = icmp sgt i32 %i.aql, 0
  br i1 %i.aqm, label %.lr.ph.i93, label %_ZL24ShowExampleAppAutoResizePb.exit

.lr.ph.i93:                                       ; preds = %bb.ih, %.lr.ph.i93
  %.01.i94 = phi i32 [ %i.aqo, %.lr.ph.i93 ], [ 0, %bb.ih ] ; 3 uses
  %i.aqn = shl nuw nsw i32 %.01.i94, 2
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2209, i32 noundef %i.aqn, ptr noundef nonnull @.str.157, i32 noundef %.01.i94)
  %i.aqo = add nuw nsw i32 %.01.i94, 1            ; 2 uses
  %i.aqp = load i32, ptr @_ZZL24ShowExampleAppAutoResizePbE5lines, align 4, !tbaa !51
  %i.aqq = icmp slt i32 %i.aqo, %i.aqp
  br i1 %i.aqq, label %.lr.ph.i93, label %_ZL24ShowExampleAppAutoResizePb.exit, !llvm.loop !275

_ZL24ShowExampleAppAutoResizePb.exit:             ; preds = %.lr.ph.i93, %bb.ig, %bb.ih
  call void @_ZN5ImGui3EndEv()
  br label %bb.ii

bb.ii:                                            ; preds = %_ZL24ShowExampleAppAutoResizePb.exit, %bb.if
  %i.aqr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 11), align 1, !tbaa !302, !range !19, !noundef !20
  %i.aqs = trunc nuw i8 %i.aqr to i1
  br i1 %i.aqs, label %bb.ij, label %bb.jp

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, ptr noundef nonnull align 16 dereferenceable(72) @__const._ZL31ShowExampleAppConstrainedResizePb.test_desc, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store float f0x3FE38E39, ptr %i.f, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store float 1.000000e+02, ptr %i.g, align 4, !tbaa !46
  %i.aqt = load i32, ptr @_ZZL31ShowExampleAppConstrainedResizePbE4type, align 4, !tbaa !51 ; 2 uses
  %i.aqu = icmp eq i32 %i.aqt, 0
  br i1 %i.aqu, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #30
  store <2 x float> splat (float 1.000000e+02), ptr %56, align 8, !tbaa !46
end_hunk_1
begin_hunk_2_@_ZN5ImGui14ShowDemoWindowEPb:bb.a
  %i.bwz = zext i1 %i.bwy to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2104, i32 noundef %i.bwz)
  %i.bxa = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 1, float noundef 2.000000e+01)
  %i.bxb = zext i1 %i.bxa to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2105, i32 noundef %i.bxb)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2102, i32 noundef 2)
  %i.bxc = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 2, float noundef -1.000000e+00)
  %i.bxd = zext i1 %i.bxc to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2103, i32 noundef %i.bxd)
  %i.bxe = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 2, float noundef 0.000000e+00)
  %i.bxf = zext i1 %i.bxe to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2104, i32 noundef %i.bxf)
  %i.bxg = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 2, float noundef 2.000000e+01)
  %i.bxh = zext i1 %i.bxg to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2105, i32 noundef %i.bxh)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  store <2 x float> zeroinitializer, ptr %16, align 8, !tbaa !46
  %i.bxi = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.2106, ptr noundef nonnull align 4 dereferenceable(8) %16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.bxj = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.bxj, label %bb.vz, label %bb.wa

bb.vz:                                            ; preds = %bb.vy
  %i.bxk = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv()
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bmi, i64 2760
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bmi, i64 232
  %i.bxn = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 22, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.bxk, ptr noundef nonnull align 4 dereferenceable(8) %i.bxl, ptr noundef nonnull align 4 dereferenceable(8) %i.bxm, i32 noundef %i.bxn, float noundef 4.000000e+00)
  br label %bb.wa

bb.wa:                                            ; preds = %bb.vz, %bb.vy
  %i.bxo = call <2 x float> @_ZN5ImGui17GetMouseDragDeltaEif(i32 noundef 0, float noundef 0.000000e+00) ; 2 uses
  %i.bxp = call <2 x float> @_ZN5ImGui17GetMouseDragDeltaEif(i32 noundef 0, float noundef -1.000000e+00) ; 2 uses
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bmi, i64 212
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %i.bxp, i64 0
  %i.bxr = fpext float %.sroa.09.0.vec.extract.i to double
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %i.bxp, i64 1
  %i.bxs = fpext float %.sroa.09.4.vec.extract.i to double
  %.sroa.010.0.vec.extract.i = extractelement <2 x float> %i.bxo, i64 0
  %i.bxt = fpext float %.sroa.010.0.vec.extract.i to double
  %.sroa.010.4.vec.extract.i = extractelement <2 x float> %i.bxo, i64 1
  %i.bxu = fpext float %.sroa.010.4.vec.extract.i to double
  %i.bxv = load <2 x float>, ptr %i.bxq, align 4, !tbaa !46
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2107)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2108, double noundef %i.bxr, double noundef %i.bxs)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2109, double noundef %i.bxt, double noundef %i.bxu)
  %i.bxw = fpext <2 x float> %i.bxv to <2 x double> ; 2 uses
  %i.bxx = extractelement <2 x double> %i.bxw, i64 0
  %i.bxy = extractelement <2 x double> %i.bxw, i64 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2110, double noundef %i.bxx, double noundef %i.bxy)
  call void @_ZN5ImGui7TreePopEv()
  br label %_ZL16DemoWindowInputsv.exit

_ZL16DemoWindowInputsv.exit:                      ; preds = %_ZL16DemoWindowPopupsv.exit, %bb.vx, %bb.wa
  call void @_ZN5ImGui12PopItemWidthEv()
  br label %bb.wb

bb.wb:                                            ; preds = %bb.ld, %_ZL16DemoWindowInputsv.exit
  call void @_ZN5ImGui3EndEv()
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui30DebugCheckVersionAndDataLayoutEPKcmmmmmm(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN19ImGuiDemoWindowDataD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_ZL23ExampleTree_DestroyNodeP15ExampleTreeNode(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

declare void @_ZN5ImGui17ShowMetricsWindowEPb(ptr noundef) local_unnamed_addr #1

declare void @_ZN5ImGui18ShowDebugLogWindowEPb(ptr noundef) local_unnamed_addr #1

declare void @_ZN5ImGui21ShowIDStackToolWindowEPb(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15ShowAboutWindowEPb(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.122, ptr noundef %0, i32 noundef 64)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui3EndEv()
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 8318, ptr noundef nonnull @.str.123)
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str, i32 noundef 19291)
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126) ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128) ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130) ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.e = tail call noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.f = tail call noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134) ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136) ; 0 uses
  tail call void @_ZN5ImGui9SeparatorEv()
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.137)
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.138)
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.139)
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.140)
  %i.h = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.141, ptr noundef nonnull @_ZZN5ImGui15ShowAboutWindowEPbE16show_config_info) ; 0 uses
  %i.i = load i8, ptr @_ZZN5ImGui15ShowAboutWindowEPbE16show_config_info, align 1, !tbaa !36, !range !19, !noundef !20
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.at

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv() ; 22 uses
  %i.l = tail call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv() ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !46
  %i.m = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.142, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.n = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.o = fmul float %i.n, 1.800000e+01
  store float 0.000000e+00, ptr %2, align 4, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.o, ptr %i.p, align 4, !tbaa !45
  %i.q = call noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef nonnull @.str.143)
  %i.r = call noundef zeroext i1 @_ZN5ImGui10BeginChildEjRK6ImVec2ii(i32 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef 128, i32 noundef 0) ; 0 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN5ImGui14LogToClipboardEi(i32 noundef -1)
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.144)
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.145)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str, i32 noundef 19291)
  call void @_ZN5ImGui9SeparatorEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.146, i32 noundef 8, i32 noundef 2, i32 noundef 20)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.147, i32 noundef 201703)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.148)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.149, i32 noundef 4)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.151)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.152)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.156)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.s = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.s, label %bb.g, label %_ZL10HelpMarkerPKc.exit

bb.g:                                             ; preds = %bb.f
  %i.t = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.u = fmul float %i.t, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.u)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.158, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit

_ZL10HelpMarkerPKc.exit:                          ; preds = %bb.f, %bb.g
  call void @_ZN5ImGui9SeparatorEv()
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !327  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  %i.x = select i1 %.not, ptr @.str.160, ptr %i.w
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.159, ptr noundef nonnull %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !328  ; 2 uses
  %.not57 = icmp eq ptr %i.z, null
  %i.aa = select i1 %.not57, ptr @.str.160, ptr %i.z
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.161, ptr noundef nonnull %i.aa)
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !121
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.162, i32 noundef %i.ab)
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !121 ; 2 uses
  %3 = trunc i32 %i.ac to i1
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZL10HelpMarkerPKc.exit
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.163)
  %.pre = load i32, ptr %i.k, align 8, !tbaa !121
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZL10HelpMarkerPKc.exit
  %i.ad = phi i32 [ %.pre, %bb.h ], [ %i.ac, %_ZL10HelpMarkerPKc.exit ] ; 2 uses
  %i.ae = and i32 %i.ad, 2
  %.not59 = icmp eq i32 %i.ae, 0
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.164)
  %.pre69 = load i32, ptr %i.k, align 8, !tbaa !121
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = phi i32 [ %.pre69, %bb.j ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ag = and i32 %i.af, 16
  %.not60 = icmp eq i32 %i.ag, 0
  br i1 %.not60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.165)
  %.pre70 = load i32, ptr %i.k, align 8, !tbaa !121
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = phi i32 [ %.pre70, %bb.l ], [ %i.af, %bb.k ] ; 2 uses
  %i.ai = and i32 %i.ah, 32
  %.not61 = icmp eq i32 %i.ai, 0
  br i1 %.not61, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.166)
  %.pre71 = load i32, ptr %i.k, align 8, !tbaa !121
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = phi i32 [ %.pre71, %bb.n ], [ %i.ah, %bb.m ]
  %i.ak = and i32 %i.aj, 64
  %.not62 = icmp eq i32 %i.ak, 0
  br i1 %.not62, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.167)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 101
  %i.am = load i8, ptr %i.al, align 1, !tbaa !329, !range !19, !noundef !20
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.37)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !330, !range !19, !noundef !20
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.67)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 74
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !331, !range !19, !noundef !20
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.41)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 75
  %i.av = load i8, ptr %i.au, align 1, !tbaa !332, !range !19, !noundef !20
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.43)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 82
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !333, !range !19, !noundef !20
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.61)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 89
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !334, !range !19, !noundef !20
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.53)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 90
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !335, !range !19, !noundef !20
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.55)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !336 ; 2 uses
  %i.bi = fcmp ult float %i.bh, 0.000000e+00
  br i1 %i.bi, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bj = fpext float %i.bh to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.168, double noundef %i.bj)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 6 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !125
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.169, i32 noundef %i.bl)
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !125 ; 2 uses
  %4 = trunc i32 %i.bm to i1
  br i1 %4, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.170)
  %.pre72 = load i32, ptr %i.bk, align 4, !tbaa !125
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bn = phi i32 [ %.pre72, %bb.ah ], [ %i.bm, %bb.ag ] ; 2 uses
  %i.bo = and i32 %i.bn, 2
  %.not64 = icmp eq i32 %i.bo, 0
  br i1 %.not64, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.171)
  %.pre73 = load i32, ptr %i.bk, align 4, !tbaa !125
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.bp = phi i32 [ %.pre73, %bb.aj ], [ %i.bn, %bb.ai ] ; 2 uses
  %i.bq = and i32 %i.bp, 4
  %.not65 = icmp eq i32 %i.bq, 0
  br i1 %.not65, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.172)
  %.pre74 = load i32, ptr %i.bk, align 4, !tbaa !125
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.br = phi i32 [ %.pre74, %bb.al ], [ %i.bp, %bb.ak ] ; 2 uses
  %i.bs = and i32 %i.br, 8
  %.not66 = icmp eq i32 %i.bs, 0
  br i1 %.not66, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.173)
  %.pre75 = load i32, ptr %i.bk, align 4, !tbaa !125
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.bt = phi i32 [ %.pre75, %bb.an ], [ %i.br, %bb.am ]
  %i.bu = and i32 %i.bt, 16
  %.not67 = icmp eq i32 %i.bu, 0
  br i1 %.not67, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.174)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @_ZN5ImGui9SeparatorEv()
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !84 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !337
  %i.bz = load i32, ptr %i.bw, align 8, !tbaa !338
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !100 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !344
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !345
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.175, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.cd, i32 noundef %i.cf)
  %i.cg = load ptr, ptr %i.bv, align 8, !tbaa !84
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !346 ; 2 uses
  %.not68 = icmp eq ptr %i.ci, null
  %spec.select = select i1 %.not68, ptr @.str.160, ptr %i.ci
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.176, ptr noundef nonnull %spec.select)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !347
  %i.cl = fpext float %i.ck to double
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !348
  %i.co = fpext float %i.cn to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.177, double noundef %i.cl, double noundef %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !349
  %i.cr = fpext float %i.cq to double
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !350
  %i.cu = fpext float %i.ct to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.178, double noundef %i.cr, double noundef %i.cu)
  call void @_ZN5ImGui9SeparatorEv()
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !351
  %i.cx = fpext float %i.cw to double
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !126
  %i.da = fpext float %i.cz to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.179, double noundef %i.cx, double noundef %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.dc = load float, ptr %i.db, align 4, !tbaa !127
  %i.dd = fpext float %i.dc to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.180, double noundef %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.df = load float, ptr %i.de, align 4, !tbaa !352
  %i.dg = fpext float %i.df to double
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.di = load float, ptr %i.dh, align 4, !tbaa !128
  %i.dj = fpext float %i.di to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.181, double noundef %i.dg, double noundef %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !129
  %i.dm = fpext float %i.dl to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.182, double noundef %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.do = load float, ptr %i.dn, align 4, !tbaa !130
  %i.dp = fpext float %i.do to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.183, double noundef %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !131
  %i.ds = fpext float %i.dr to double
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.du = load float, ptr %i.dt, align 4, !tbaa !132
  %i.dv = fpext float %i.du to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.184, double noundef %i.ds, double noundef %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %i.dx = load <2 x float>, ptr %i.dw, align 4, !tbaa !46
  %i.dy = fpext <2 x float> %i.dx to <2 x double> ; 2 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0
  %i.ea = extractelement <2 x double> %i.dy, i64 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.185, double noundef %i.dz, double noundef %i.ea)
  br i1 %i.m, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.186)
  call void @_ZN5ImGui9LogFinishEv()
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void @_ZN5ImGui8EndChildEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.c
  call void @_ZN5ImGui3EndEv()
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15ShowStyleEditorEP10ImGuiStyle(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 12 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 4             ; 5 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 4            ; 5 uses
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 8549, ptr noundef nonnull @.str.190)
  %i.e = tail call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv() ; 74 uses
  %i.f = load atomic i8, ptr @_ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style) #30
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN10ImGuiStyleC1Ev(ptr noundef nonnull align 4 dereferenceable(1328) @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.b = load i1, ptr @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE4init, align 1
  %i.i = icmp ne ptr %0, null                     ; 2 uses
  %or.cond.not = or i1 %i.i, %.b
  br i1 %or.cond.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1328) @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style, ptr noundef nonnull align 4 dereferenceable(1328) %i.e, i64 1328, i1 false), !tbaa.struct !357
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style) #30
  br label %bb.cw
end_hunk_2
begin_hunk_3_@_ZL17DemoWindowWidgetsP19ImGuiDemoWindowData:bb.a
  %14 = alloca %struct.ImVec2, align 4            ; 5 uses
  %15 = alloca %struct.ImVec4, align 16           ; 4 uses
  %16 = alloca %struct.ImVec4, align 16           ; 4 uses
  %17 = alloca %struct.ImVec2, align 4            ; 9 uses
  %18 = alloca %struct.ImVec2, align 4            ; 9 uses
  %19 = alloca %struct.ImVec2, align 8            ; 8 uses
  %20 = alloca %struct.ImVec2, align 8            ; 8 uses
  %21 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.m = alloca i8, align 1                       ; 5 uses
  %i.n = alloca [16 x i8], align 16               ; 5 uses
  %22 = alloca %struct.ImVec2, align 8            ; 4 uses
  %23 = alloca %struct.ImVec2, align 8            ; 4 uses
  %24 = alloca %struct.ImVec2, align 8            ; 4 uses
  %25 = alloca %struct.ImVec2, align 8            ; 4 uses
  %26 = alloca %struct.ImVec2, align 8            ; 4 uses
  %27 = alloca %struct.ImVec2, align 8            ; 4 uses
  %28 = alloca %struct.ImVec2, align 8            ; 4 uses
  %29 = alloca %struct.ImVec2, align 8            ; 20 uses
  %30 = alloca %struct.ImVec4, align 16           ; 20 uses
  %31 = alloca %struct.ImVec2, align 4            ; 21 uses
  %32 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.o = alloca [32 x i8], align 16               ; 40 uses
  %33 = alloca %struct.ImVec2, align 8            ; 40 uses
  %34 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.p = alloca [32 x i8], align 16               ; 40 uses
  %35 = alloca %struct.ImVec2, align 8            ; 40 uses
  %36 = alloca %struct.ImVec2, align 8            ; 4 uses
  %37 = alloca %struct.ImVec2, align 8            ; 32 uses
  %38 = alloca %struct.ImVec2, align 8            ; 36 uses
  %i.q = alloca [32 x i8], align 16               ; 36 uses
  %39 = alloca %struct.ImVec2, align 4            ; 37 uses
  %i.r = alloca [16 x ptr], align 16              ; 4 uses
  %40 = alloca %struct.ImVec2, align 8            ; 4 uses
  %41 = alloca %struct.ImVec2, align 8            ; 4 uses
  %42 = alloca %struct.ImVec2, align 8            ; 4 uses
  %43 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.s = alloca [4 x ptr], align 16               ; 4 uses
  %i.t = alloca [4 x ptr], align 16               ; 4 uses
  %i.u = alloca [1 x i8], align 1                 ; 4 uses
  %44 = alloca %struct.ImVec2, align 4            ; 5 uses
  %45 = alloca %struct.ImVec2, align 8            ; 4 uses
  %46 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.v = alloca [32 x i8], align 16               ; 4 uses
  %47 = alloca %struct.ImVec2, align 8            ; 4 uses
  %48 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.w = alloca [32 x i8], align 16               ; 4 uses
  %49 = alloca %struct.ImVec2, align 8            ; 4 uses
  %50 = alloca %struct.ImVec2, align 8            ; 4 uses
  %51 = alloca %struct.ImVec2, align 4            ; 5 uses
  %52 = alloca %struct.ImVec2, align 8            ; 56 uses
  %53 = alloca %struct.ImVec2, align 8            ; 4 uses
  %54 = alloca %struct.ImVec2, align 8            ; 4 uses
  %55 = alloca %struct.ImVec2, align 8            ; 4 uses
  %56 = alloca %struct.ImVec4, align 16           ; 4 uses
  %57 = alloca %struct.ImVec4, align 16           ; 4 uses
  %58 = alloca %struct.ImVec2, align 4            ; 29 uses
  %59 = alloca %struct.ImVec2, align 8            ; 32 uses
  %60 = alloca %struct.ImVec2, align 8            ; 32 uses
  %61 = alloca %struct.ImVec2, align 8            ; 32 uses
  %62 = alloca %struct.ImVec4, align 16           ; 32 uses
  %63 = alloca %struct.ImVec4, align 16           ; 32 uses
  %i.x = alloca i32, align 4                      ; 14 uses
  %64 = alloca %struct.ImVec2, align 8            ; 4 uses
  %65 = alloca %struct.ImVec2, align 8            ; 20 uses
  %66 = alloca %struct.ImVec2, align 8            ; 8 uses
  %67 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.y = alloca i8, align 1                       ; 4 uses
  %i.z = alloca i8, align 1                       ; 4 uses
  %i.aa = alloca i8, align 1                      ; 4 uses
  %i.ab = alloca i8, align 1                      ; 5 uses
  %i.ac = alloca i8, align 1                      ; 5 uses
  %i.ad = alloca i8, align 1                      ; 4 uses
  %i.ae = alloca i8, align 1                      ; 4 uses
  %i.af = alloca i8, align 1                      ; 4 uses
  %i.ag = alloca i8, align 1                      ; 5 uses
  %i.ah = alloca i8, align 1                      ; 5 uses
  %i.ai = alloca i16, align 2                     ; 4 uses
  %i.aj = alloca i16, align 2                     ; 4 uses
  %i.ak = alloca i16, align 2                     ; 4 uses
  %i.al = alloca i16, align 2                     ; 4 uses
  %i.am = alloca i16, align 2                     ; 4 uses
  %i.an = alloca i16, align 2                     ; 4 uses
  %i.ao = alloca i16, align 2                     ; 4 uses
  %i.ap = alloca i16, align 2                     ; 4 uses
  %i.aq = alloca i16, align 2                     ; 4 uses
  %i.ar = alloca i16, align 2                     ; 4 uses
  %i.as = alloca i32, align 4                     ; 8 uses
  %i.at = alloca i32, align 4                     ; 5 uses
  %i.au = alloca i32, align 4                     ; 8 uses
  %i.av = alloca i32, align 4                     ; 4 uses
  %i.aw = alloca i32, align 4                     ; 4 uses
  %i.ax = alloca i32, align 4                     ; 4 uses
  %i.ay = alloca i32, align 4                     ; 4 uses
  %i.az = alloca i32, align 4                     ; 6 uses
  %i.ba = alloca i32, align 4                     ; 5 uses
  %i.bb = alloca i32, align 4                     ; 6 uses
  %i.bc = alloca i32, align 4                     ; 4 uses
  %i.bd = alloca i32, align 4                     ; 4 uses
  %i.be = alloca i32, align 4                     ; 4 uses
  %i.bf = alloca i32, align 4                     ; 4 uses
  %i.bg = alloca i64, align 8                     ; 6 uses
  %i.bh = alloca i64, align 8                     ; 4 uses
  %i.bi = alloca i64, align 8                     ; 6 uses
  %i.bj = alloca i64, align 8                     ; 4 uses
  %i.bk = alloca i64, align 8                     ; 4 uses
  %i.bl = alloca i64, align 8                     ; 4 uses
  %i.bm = alloca i64, align 8                     ; 4 uses
  %i.bn = alloca i64, align 8                     ; 6 uses
  %i.bo = alloca i64, align 8                     ; 4 uses
  %i.bp = alloca i64, align 8                     ; 6 uses
  %i.bq = alloca i64, align 8                     ; 4 uses
  %i.br = alloca i64, align 8                     ; 4 uses
  %i.bs = alloca i64, align 8                     ; 4 uses
  %i.bt = alloca i64, align 8                     ; 4 uses
  %i.bu = alloca float, align 4                   ; 7 uses
  %i.bv = alloca float, align 4                   ; 8 uses
  %i.bw = alloca float, align 4                   ; 4 uses
  %i.bx = alloca float, align 4                   ; 4 uses
  %i.by = alloca double, align 8                  ; 7 uses
  %i.bz = alloca double, align 8                  ; 7 uses
  %i.ca = alloca double, align 8                  ; 4 uses
  %i.cb = alloca double, align 8                  ; 4 uses
  %68 = alloca %struct.ImVec2, align 8            ; 4 uses
  %69 = alloca %struct.ImVec2, align 8            ; 4 uses
  %70 = alloca %struct.ImVec2, align 8            ; 4 uses
  %71 = alloca %struct.ImVec2, align 8            ; 4 uses
  %72 = alloca %struct.ImVec2, align 8            ; 4 uses
  %73 = alloca %struct.ImVec2, align 8            ; 4 uses
  %74 = alloca %struct.ImVec2, align 8            ; 4 uses
  %75 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.cc = alloca [14 x ptr], align 16             ; 21 uses
  %76 = alloca %struct.ImVec2, align 8            ; 56 uses
  %77 = alloca %struct.ImVec2, align 8            ; 56 uses
  %i.cd = alloca float, align 4                   ; 8 uses
  %i.ce = alloca float, align 4                   ; 8 uses
  %i.cf = alloca float, align 4                   ; 8 uses
  %i.cg = alloca float, align 4                   ; 8 uses
  %i.ch = alloca float, align 4                   ; 8 uses
  %i.ci = alloca float, align 4                   ; 8 uses
  %i.cj = alloca float, align 4                   ; 8 uses
  %i.ck = alloca float, align 4                   ; 8 uses
  %i.cl = alloca float, align 4                   ; 8 uses
  %78 = alloca %struct.ImVec2, align 8            ; 4 uses
  %79 = alloca %struct.ImVec4, align 8            ; 9 uses
  %80 = alloca %struct.ImVec4, align 8            ; 9 uses
  %81 = alloca %struct.ImVec4, align 8            ; 9 uses
  %82 = alloca %struct.ImVec2, align 8            ; 8 uses
  %83 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.cm = alloca [11 x ptr], align 16             ; 4 uses
  %i.cn = alloca [9 x ptr], align 16              ; 4 uses
  %i.co = tail call noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKci(ptr noundef nonnull @.str.60, i32 noundef 0)
  br i1 %i.co, label %bb.b, label %bb.abu

bb.b:                                             ; preds = %bb.a
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 20), align 4, !tbaa !378, !range !19, !noundef !20
  %i.cq = trunc nuw i8 %i.cp to i1                ; 3 uses
  %i.cr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 21), align 1, !tbaa !379, !range !19, !noundef !20
  %i.cs = trunc nuw i8 %i.cr to i1                ; 2 uses
  br i1 %i.cq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.cs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 24), align 8, !tbaa !380
  %i.cu = and i32 %i.ct, 128
  %i.cv = icmp ne i32 %i.cu, 0
  tail call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 128, i1 noundef zeroext %i.cv)
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 24), align 8, !tbaa !380
  %i.cx = and i32 %i.cw, 256
  %i.cy = icmp ne i32 %i.cx, 0
  tail call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 256, i1 noundef zeroext %i.cy)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cz = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.416)
  br i1 %i.cz, label %bb.g, label %_ZL22DemoWindowWidgetsBasicv.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 929, ptr noundef nonnull @.str.417)
  tail call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.23)
  tail call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 932, ptr noundef nonnull @.str.418)
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #30
  store <2 x float> zeroinitializer, ptr %78, align 8, !tbaa !46
  %i.da = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.419, ptr noundef nonnull align 4 dereferenceable(8) %78)
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #30
  %.pre.i = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7clicked, align 4, !tbaa !51 ; 2 uses
  br i1 %i.da, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.db = add nsw i32 %.pre.i, 1                  ; 2 uses
  store i32 %i.db, ptr @_ZZL22DemoWindowWidgetsBasicvE7clicked, align 4, !tbaa !51
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dc = phi i32 [ %i.db, %bb.h ], [ %.pre.i, %bb.g ]
  %84 = trunc i32 %i.dc to i1
  br i1 %84, label %bb.j, label %.peel.next.i

bb.j:                                             ; preds = %bb.i
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.420)
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.j, %bb.i
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 942, ptr noundef nonnull @.str.421)
  %i.dd = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.422, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE5check) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 946, ptr noundef nonnull @.str.423)
  %i.de = call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef nonnull @.str.424, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE1e, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.df = call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef nonnull @.str.425, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE1e, i32 noundef 1) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.dg = call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef nonnull @.str.426, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE1e, i32 noundef 2) ; 0 uses
  call void @_ZN5ImGui23AlignTextToFramePaddingEv()
  %i.dh = call noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef nonnull @.str.427, ptr noundef nonnull @.str.428) ; 0 uses
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 956, ptr noundef nonnull @.str.429)
  %i.di = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.cj, ptr noundef nonnull align 4 dereferenceable(4) %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %i.cl)
  %i.dl = load float, ptr %i.cj, align 4, !tbaa !46
  %i.dm = load float, ptr %i.ck, align 4, !tbaa !46
  %i.dn = load float, ptr %i.cl, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i.peel.i = insertelement <2 x float> poison, float %i.dl, i64 0
  %.sroa.0.4.vec.insert.i.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel.i, float %i.dm, i64 1
  %.sroa.3.12.vec.insert.i.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dn, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj) #30
  store <2 x float> %.sroa.0.4.vec.insert.i.peel.i, ptr %79, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.peel.i, ptr %i.di, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %79)
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %i.ch, ptr noundef nonnull align 4 dereferenceable(4) %i.ci)
  %i.do = load float, ptr %i.cg, align 4, !tbaa !46
  %i.dp = load float, ptr %i.ch, align 4, !tbaa !46
  %i.dq = load float, ptr %i.ci, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i13.peel.i = insertelement <2 x float> poison, float %i.do, i64 0
  %.sroa.0.4.vec.insert.i14.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i13.peel.i, float %i.dp, i64 1
  %.sroa.3.12.vec.insert.i16.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dq, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg) #30
  store <2 x float> %.sroa.0.4.vec.insert.i14.peel.i, ptr %80, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i16.peel.i, ptr %i.dj, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %80)
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.cd, ptr noundef nonnull align 4 dereferenceable(4) %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %i.cf)
  %i.dr = load float, ptr %i.cd, align 4, !tbaa !46
  %i.ds = load float, ptr %i.ce, align 4, !tbaa !46
  %i.dt = load float, ptr %i.cf, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i24.peel.i = insertelement <2 x float> poison, float %i.dr, i64 0
  %.sroa.0.4.vec.insert.i25.peel.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i24.peel.i, float %i.ds, i64 1
  %.sroa.3.12.vec.insert.i27.peel.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dt, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd) #30
  store <2 x float> %.sroa.0.4.vec.insert.i25.peel.i, ptr %81, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i27.peel.i, ptr %i.dk, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %81)
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #30
  store <2 x float> zeroinitializer, ptr %82, align 8, !tbaa !46
  %i.du = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.430, ptr noundef nonnull align 4 dereferenceable(8) %82) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  br label %bb.k

.loopexit.i:                                      ; preds = %bb.k
  call void @_ZN5ImGui23AlignTextToFramePaddingEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.431)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 978, ptr noundef nonnull @.str.432)
  %i.dv = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 100
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !49
  call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 8, i1 noundef zeroext true)
  %i.dy = call noundef zeroext i1 @_ZN5ImGui11ArrowButtonEPKc8ImGuiDir(ptr noundef nonnull @.str.433, i32 noundef 0)
  br i1 %i.dy, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.k, %.peel.next.i
  %.046.i = phi i32 [ 1, %.peel.next.i ], [ %i.el, %bb.k ] ; 3 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEi(i32 noundef %.046.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #30
  %i.dz = uitofp nneg i32 %.046.i to float
  %i.ea = fdiv float %i.dz, 7.000000e+00          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ea, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.cj, ptr noundef nonnull align 4 dereferenceable(4) %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %i.cl)
  %i.eb = load float, ptr %i.cj, align 4, !tbaa !46
  %i.ec = load float, ptr %i.ck, align 4, !tbaa !46
  %i.ed = load float, ptr %i.cl, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.eb, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.ec, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ed, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj) #30
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %79, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.di, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %79)
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ea, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %i.ch, ptr noundef nonnull align 4 dereferenceable(4) %i.ci)
  %i.ee = load float, ptr %i.cg, align 4, !tbaa !46
  %i.ef = load float, ptr %i.ch, align 4, !tbaa !46
  %i.eg = load float, ptr %i.ci, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i13.i = insertelement <2 x float> poison, float %i.ee, i64 0
  %.sroa.0.4.vec.insert.i14.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i13.i, float %i.ef, i64 1
  %.sroa.3.12.vec.insert.i16.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.eg, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg) #30
  store <2 x float> %.sroa.0.4.vec.insert.i14.i, ptr %80, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i16.i, ptr %i.dj, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %80)
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ea, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.cd, ptr noundef nonnull align 4 dereferenceable(4) %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %i.cf)
  %i.eh = load float, ptr %i.cd, align 4, !tbaa !46
  %i.ei = load float, ptr %i.ce, align 4, !tbaa !46
  %i.ej = load float, ptr %i.cf, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i24.i = insertelement <2 x float> poison, float %i.eh, i64 0
  %.sroa.0.4.vec.insert.i25.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i24.i, float %i.ei, i64 1
  %.sroa.3.12.vec.insert.i27.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ej, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd) #30
  store <2 x float> %.sroa.0.4.vec.insert.i25.i, ptr %81, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i27.i, ptr %i.dk, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %81)
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #30
  store <2 x float> zeroinitializer, ptr %82, align 8, !tbaa !46
  %i.ek = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.430, ptr noundef nonnull align 4 dereferenceable(8) %82) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  %i.el = add nuw nsw i32 %.046.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.el, 7
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.k, !llvm.loop !369

bb.l:                                             ; preds = %.loopexit.i
  %i.em = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !51
  %i.en = add nsw i32 %i.em, -1
  store i32 %i.en, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit.i
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.dx)
  %i.eo = call noundef zeroext i1 @_ZN5ImGui11ArrowButtonEPKc8ImGuiDir(ptr noundef nonnull @.str.434, i32 noundef 1)
  br i1 %i.eo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ep = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !51
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !51
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_ZN5ImGui11PopItemFlagEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.er = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !51
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.435, i32 noundef %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #30
  store <2 x float> zeroinitializer, ptr %83, align 8, !tbaa !46
  %i.es = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.436, ptr noundef nonnull align 4 dereferenceable(8) %83) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #30
  call void (ptr, ...) @_ZN5ImGui14SetItemTooltipEPKcz(ptr noundef nonnull @.str.437)
  call void (ptr, ptr, ...) @_ZN5ImGui9LabelTextEPKcS1_z(ptr noundef nonnull @.str.438, ptr noundef nonnull @.str.405)
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.439)
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 1000, ptr noundef nonnull @.str.440)
  %i.et = call noundef zeroext i1 @_ZN5ImGui9InputTextEPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.441, ptr noundef nonnull @_ZZL22DemoWindowWidgetsBasicvE4str0, i64 noundef 128, i32 noundef 0, ptr noundef null, ptr noundef null) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.eu = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
end_hunk_3
begin_hunk_4_@_ZL16DemoWindowLayoutv:bb.a
bb.ca:                                            ; preds = %.preheader244, %bb.cd
  %.0177262 = phi i32 [ 0, %.preheader244 ], [ %i.lj, %bb.cd ] ; 4 uses
  %i.lf = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !36, !range !19, !noundef !20
  %i.lg = trunc nuw i8 %i.lf to i1
  %i.lh = load i32, ptr @_ZZL16DemoWindowLayoutvE10track_item, align 4
  %i.li = icmp eq i32 %.0177262, %i.lh
  %or.cond195 = select i1 %i.lg, i1 %i.li, i1 false
  br i1 %or.cond195, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #30
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %43, align 16, !tbaa !46
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %43, ptr noundef nonnull @.str.932, i32 noundef %.0177262)
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #30
  call void @_ZN5ImGui14SetScrollHereYEf(float noundef %i.le)
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.932, i32 noundef %.0177262)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.lj = add nuw nsw i32 %.0177262, 1            ; 2 uses
  %exitcond283.not = icmp eq i32 %i.lj, 100
  br i1 %exitcond283.not, label %.loopexit245, label %bb.ca, !llvm.loop !392

.loopexit245:                                     ; preds = %bb.cd, %bb.bz
  %i.lk = call noundef float @_ZN5ImGui10GetScrollYEv()
  %i.ll = call noundef float @_ZN5ImGui13GetScrollMaxYEv()
  call void @_ZN5ImGui8EndChildEv()
  %i.lm = fpext float %i.lk to double
  %i.ln = fpext float %i.ll to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1450, double noundef %i.lm, double noundef %i.ln)
  call void @_ZN5ImGui8EndGroupEv()
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond285.not, label %bb.bp, label %bb.br, !llvm.loop !393

bb.ce:                                            ; preds = %.loopexit
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 5155, ptr noundef nonnull @.str.1458)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.lo = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.lo, label %bb.cf, label %_ZL10HelpMarkerPKc.exit211

bb.cf:                                            ; preds = %bb.ce
  %i.lp = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.lq = fmul float %i.lp, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.lq)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1459, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit211

_ZL10HelpMarkerPKc.exit211:                       ; preds = %bb.ce, %bb.cf
  %i.lr = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.842, ptr noundef nonnull @_ZZL16DemoWindowLayoutvE5lines, i32 noundef 1, i32 noundef 15, ptr noundef nonnull @.str.435, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 12, float noundef 3.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #30
  store <2 x float> <float 2.000000e+00, float 1.000000e+00>, ptr %46, align 8, !tbaa !46
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #30
  %i.ls = call noundef float @_ZN5ImGui25GetFrameHeightWithSpacingEv()
  %i.lt = call float @llvm.fmuladd.f32(float %i.ls, float 7.000000e+00, float 3.000000e+01)
  store float 0.000000e+00, ptr %47, align 4, !tbaa !44
  %i.lu = getelementptr inbounds nuw i8, ptr %47, i64 4
  store float %i.lt, ptr %i.lu, align 4, !tbaa !45
  %i.lv = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1460, ptr noundef nonnull align 4 dereferenceable(8) %47, i32 noundef 1, i32 noundef 2048) ; 0 uses
  %i.lw = load i32, ptr @_ZZL16DemoWindowLayoutvE5lines, align 4, !tbaa !51
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %.lr.ph268, label %._crit_edge

.lr.ph268:                                        ; preds = %_ZL10HelpMarkerPKc.exit211
  %i.ly = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %51, i64 4
  br label %bb.cr

bb.cg:                                            ; preds = %_ZL10HelpMarkerPKc.exit210, %.loopexit
  %indvars.iv290 = phi i64 [ 0, %_ZL10HelpMarkerPKc.exit210 ], [ %indvars.iv.next291, %.loopexit ] ; 5 uses
  %i.mc = call noundef float @_ZN5ImGui17GetTextLineHeightEv()
  %i.md = load float, ptr %i.kj, align 4, !tbaa !399
  %i.me = fadd float %i.mc, %i.md
  %i.mf = load float, ptr %i.kk, align 4, !tbaa !126
  %i.mg = call float @llvm.fmuladd.f32(float %i.mf, float 2.000000e+00, float %i.me)
  %i.mh = load i8, ptr @_ZZL16DemoWindowLayoutvE24enable_extra_decorations, align 1, !tbaa !36, !range !19, !noundef !20
  %i.mi = zext nneg i8 %i.mh to i32
  %i.mj = shl nuw nsw i32 %i.mi, 14
  %i.mk = or disjoint i32 %i.mj, 2048
  %i.ml = inttoptr i64 %indvars.iv290 to ptr
  %i.mm = call noundef i32 @_ZN5ImGui5GetIDEPKv(ptr noundef %i.ml)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #30
  store float -1.000000e+02, ptr %44, align 4, !tbaa !44
  store float %i.mg, ptr %i.kl, align 4, !tbaa !45
  %i.mn = call noundef zeroext i1 @_ZN5ImGui10BeginChildEjRK6ImVec2ii(i32 noundef %i.mm, ptr noundef nonnull align 4 dereferenceable(8) %44, i32 noundef 1, i32 noundef %i.mk)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  br i1 %i.ju, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.mo = load float, ptr @_ZZL16DemoWindowLayoutvE16scroll_to_off_px, align 4, !tbaa !46
  call void @_ZN5ImGui10SetScrollXEf(float noundef %i.mo)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.jx, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mp = call <2 x float> @_ZN5ImGui17GetCursorStartPosEv()
  %.sroa.058.0.vec.extract = extractelement <2 x float> %i.mp, i64 0
  %i.mq = load float, ptr @_ZZL16DemoWindowLayoutvE16scroll_to_pos_px, align 4, !tbaa !46
  %i.mr = fadd float %.sroa.058.0.vec.extract, %i.mq
  %i.ms = trunc nuw nsw i64 %indvars.iv290 to i32
  %i.mt = uitofp nneg i32 %i.ms to float
  %i.mu = fmul nnan float %i.mt, 2.500000e-01
  call void @_ZN5ImGui17SetScrollFromPosXEff(float noundef %i.mr, float noundef %i.mu)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  br i1 %i.mn, label %bb.cl, label %.loopexit

bb.cl:                                            ; preds = %bb.ck
  %i.mv = trunc nuw nsw i64 %indvars.iv290 to i32
  %i.mw = uitofp nneg i32 %i.mv to float
  %i.mx = fmul nnan float %i.mw, 2.500000e-01     ; 2 uses
  %.pre310 = load i32, ptr @_ZZL16DemoWindowLayoutvE10track_item, align 4
  %.pre = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !36, !range !19
  %i.my = trunc nuw i8 %.pre to i1
  %i.mz = icmp eq i32 %.pre310, 0
  %or.cond197.peel = select i1 %i.my, i1 %i.mz, i1 false
  br i1 %or.cond197.peel, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.932, i32 noundef 0)
  br label %.peel.next288.preheader

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %45, align 16, !tbaa !46
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %45, ptr noundef nonnull @.str.932, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  call void @_ZN5ImGui14SetScrollHereXEf(float noundef %i.mx)
  br label %.peel.next288.preheader

.peel.next288.preheader:                          ; preds = %bb.cm, %bb.cn
  br label %.peel.next288

.peel.next288:                                    ; preds = %.peel.next288.preheader, %bb.cq
  %.0173264 = phi i32 [ %i.ne, %bb.cq ], [ 1, %.peel.next288.preheader ] ; 4 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.na = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !36, !range !19, !noundef !20
  %i.nb = trunc nuw i8 %i.na to i1
  %i.nc = load i32, ptr @_ZZL16DemoWindowLayoutvE10track_item, align 4
  %i.nd = icmp eq i32 %.0173264, %i.nc
  %or.cond197 = select i1 %i.nb, i1 %i.nd, i1 false
  br i1 %or.cond197, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.peel.next288
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %45, align 16, !tbaa !46
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %45, ptr noundef nonnull @.str.932, i32 noundef %.0173264)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  call void @_ZN5ImGui14SetScrollHereXEf(float noundef %i.mx)
  br label %bb.cq

bb.cp:                                            ; preds = %.peel.next288
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.932, i32 noundef %.0173264)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.ne = add nuw nsw i32 %.0173264, 1            ; 2 uses
  %exitcond286.not = icmp eq i32 %i.ne, 100
  br i1 %exitcond286.not, label %.loopexit, label %.peel.next288, !llvm.loop !394

.loopexit:                                        ; preds = %bb.cq, %bb.ck
  %i.nf = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.ng = call noundef float @_ZN5ImGui13GetScrollMaxXEv()
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL16DemoWindowLayoutv.names.1456, i64 %indvars.iv290
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !101
  %i.nj = fpext float %i.nf to double
  %i.nk = fpext float %i.ng to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1457, ptr noundef %i.ni, double noundef %i.nj, double noundef %i.nk)
  call void @_ZN5ImGui7SpacingEv()
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next291, 5
  br i1 %exitcond293.not, label %bb.ce, label %bb.cg, !llvm.loop !395

._crit_edge:                                      ; preds = %.loopexit298, %_ZL10HelpMarkerPKc.exit211
  %i.nl = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.nm = call noundef float @_ZN5ImGui13GetScrollMaxXEv()
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  %i.nn = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1072) ; 0 uses
  %i.no = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.no, label %bb.cv, label %bb.cw

bb.cr:                                            ; preds = %.lr.ph268, %.loopexit298
  %.0170267 = phi i32 [ 0, %.lr.ph268 ], [ %i.ok, %.loopexit298 ] ; 6 uses
  %72 = trunc i32 %.0170267 to i1
  %.v = select i1 %72, i32 9, i32 3
  %i.np = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.nq = fmul float %i.np, 3.000000e+00          ; 4 uses
  %i.nr = mul nuw nsw i32 %.0170267, 1000         ; 2 uses
  %i.ns = mul i32 %.v, %.0170267
  %i.nt = add i32 %i.ns, 10                       ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.nr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  %i.nu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.435, i32 noundef 0) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.nv = load float, ptr %i.g, align 4, !tbaa !46
  %i.nw = load float, ptr %i.h, align 4, !tbaa !46
  %i.nx = load float, ptr %i.i, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i.peel = insertelement <2 x float> poison, float %i.nv, i64 0
  %.sroa.0.4.vec.insert.i.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel, float %i.nw, i64 1
  %.sroa.3.12.vec.insert.i.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.nx, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  store <2 x float> %.sroa.0.4.vec.insert.i.peel, ptr %48, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.peel, ptr %i.ly, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.ny = load float, ptr %i.d, align 4, !tbaa !46
  %i.nz = load float, ptr %i.e, align 4, !tbaa !46
  %i.oa = load float, ptr %i.f, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i214.peel = insertelement <2 x float> poison, float %i.ny, i64 0
  %.sroa.0.4.vec.insert.i215.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i214.peel, float %i.nz, i64 1
  %.sroa.3.12.vec.insert.i217.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.oa, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  store <2 x float> %.sroa.0.4.vec.insert.i215.peel, ptr %49, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i217.peel, ptr %i.lz, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.ob = load float, ptr %i.a, align 4, !tbaa !46
  %i.oc = load float, ptr %i.b, align 4, !tbaa !46
  %i.od = load float, ptr %i.c, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i225.peel = insertelement <2 x float> poison, float %i.ob, i64 0
  %.sroa.0.4.vec.insert.i226.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i225.peel, float %i.oc, i64 1
  %.sroa.3.12.vec.insert.i228.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.od, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store <2 x float> %.sroa.0.4.vec.insert.i226.peel, ptr %50, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i228.peel, ptr %i.ma, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #30
  %i.oe = uitofp nneg i32 %.0170267 to float
  %i.of = call float @sinf(float noundef %i.oe) #30
  %i.og = fmul float %i.nq, %i.of
  %i.oh = call float @llvm.fmuladd.f32(float %i.og, float 5.000000e-01, float %i.nq)
  store float %i.oh, ptr %51, align 8, !tbaa !44
  store float 0.000000e+00, ptr %i.mb, align 4, !tbaa !45
  %i.oi = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1461, ptr noundef nonnull align 4 dereferenceable(8) %51) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  %exitcond294.peel.not = icmp ult i32 %i.nt, 2
  br i1 %exitcond294.peel.not, label %.loopexit298, label %.peel.next296.preheader

.peel.next296.preheader:                          ; preds = %bb.cr
  %i.oj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.nq, i64 0
  br label %.peel.next296

.loopexit298:                                     ; preds = %bb.cu, %bb.cr
  %i.ok = add nuw nsw i32 %.0170267, 1            ; 2 uses
  %i.ol = load i32, ptr @_ZZL16DemoWindowLayoutvE5lines, align 4, !tbaa !51
  %i.om = icmp slt i32 %i.ok, %i.ol
  br i1 %i.om, label %bb.cr, label %._crit_edge, !llvm.loop !396

.peel.next296:                                    ; preds = %.peel.next296.preheader, %bb.cu
  %.0169266 = phi i32 [ %i.pm, %bb.cu ], [ 1, %.peel.next296.preheader ] ; 8 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.on = add nuw nsw i32 %.0169266, %i.nr
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.on)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  %i.oo = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.435, i32 noundef %.0169266) #30 ; 0 uses
  %i.op = urem i32 %.0169266, 15
  %.not186 = icmp eq i32 %i.op, 0
  br i1 %.not186, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %.peel.next296
  %i.oq = urem i32 %.0169266, 3
  %.not187 = icmp eq i32 %i.oq, 0
  br i1 %.not187, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.or = urem i32 %.0169266, 5
  %.not188 = icmp eq i32 %i.or, 0
  %i.os = select i1 %.not188, ptr @.str.1463, ptr %i.m
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %.peel.next296
  %i.ot = phi ptr [ @.str.1461, %.peel.next296 ], [ %i.os, %bb.ct ], [ @.str.1462, %bb.cs ]
  %i.ou = uitofp nneg i32 %.0169266 to float
  %i.ov = fmul nnan float %i.ou, 5.000000e-02     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ov, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.ow = load float, ptr %i.g, align 4, !tbaa !46
  %i.ox = load float, ptr %i.h, align 4, !tbaa !46
  %i.oy = load float, ptr %i.i, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.ow, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ox, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.oy, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %48, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.ly, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ov, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.oz = load float, ptr %i.d, align 4, !tbaa !46
  %i.pa = load float, ptr %i.e, align 4, !tbaa !46
  %i.pb = load float, ptr %i.f, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i214 = insertelement <2 x float> poison, float %i.oz, i64 0
  %.sroa.0.4.vec.insert.i215 = insertelement <2 x float> %.sroa.0.0.vec.insert.i214, float %i.pa, i64 1
  %.sroa.3.12.vec.insert.i217 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pb, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  store <2 x float> %.sroa.0.4.vec.insert.i215, ptr %49, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i217, ptr %i.lz, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ov, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.pc = load float, ptr %i.a, align 4, !tbaa !46
  %i.pd = load float, ptr %i.b, align 4, !tbaa !46
  %i.pe = load float, ptr %i.c, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i225 = insertelement <2 x float> poison, float %i.pc, i64 0
  %.sroa.0.4.vec.insert.i226 = insertelement <2 x float> %.sroa.0.0.vec.insert.i225, float %i.pd, i64 1
  %.sroa.3.12.vec.insert.i228 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pe, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store <2 x float> %.sroa.0.4.vec.insert.i226, ptr %50, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i228, ptr %i.ma, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #30
  %i.pf = add nuw nsw i32 %.0169266, %.0170267
  %i.pg = uitofp nneg i32 %i.pf to float
  %i.ph = call float @sinf(float noundef %i.pg) #30
  %i.pi = fmul float %i.nq, %i.ph
  %i.pj = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.pi, i64 0
  %i.pk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pj, <2 x float> <float 5.000000e-01, float 0.000000e+00>, <2 x float> %i.oj)
  store <2 x float> %i.pk, ptr %51, align 8, !tbaa !46
  %i.pl = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef %i.ot, ptr noundef nonnull align 4 dereferenceable(8) %51) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  %i.pm = add nuw i32 %.0169266, 1                ; 2 uses
  %exitcond294.not = icmp eq i32 %i.nt, %i.pm
  br i1 %exitcond294.not, label %.loopexit298, label %.peel.next296, !llvm.loop !397

bb.cv:                                            ; preds = %._crit_edge
  %i.pn = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pp = load float, ptr %i.po, align 8, !tbaa !138
  %i.pq = fmul float %i.pp, -1.000000e+03
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge
  %.0166 = phi float [ %i.pq, %bb.cv ], [ 0.000000e+00, %._crit_edge ]
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1464)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.pr = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1069) ; 0 uses
  %i.ps = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.ps, label %bb.cx, label %bb.cy

end_hunk_4
begin_hunk_5_@_ZL29ExampleImageViewer_DrawCanvasP22ExampleImageViewerData6ImVec212ImTextureRefii:bb.a
  %.not71 = icmp eq ptr %i.bs, null
  br i1 %.not71, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN5ImGui13GetPlatformIOEv()
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !455
  call void @_ZN10ImDrawList11AddCallbackEPFvPKS_PK9ImDrawCmdEPvm(ptr noundef nonnull align 8 dereferenceable(224) %i.c, ptr noundef %i.bv, ptr noundef null, i64 noundef 0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !456, !range !19, !noundef !20
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = fcmp ogt float %i.ai, 6.000000e+00
  %or.cond = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ca = load float, ptr %7, align 8, !tbaa !44
  %i.cb = load float, ptr %9, align 8, !tbaa !44  ; 2 uses
  %i.cc = load float, ptr %8, align 8, !tbaa !44
  %i.cd = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.cc, i64 1
  %i.cf = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fsub <2 x float> %i.ce, %i.cg
  %i.ci = fdiv <2 x float> %i.ch, %i.az
  %i.cj = fptosi <2 x float> %i.ci to <2 x i32>   ; 3 uses
  %shift = shufflevector <2 x i32> %i.cj, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.ck = icmp slt <2 x i32> %shift, %i.cj
  %.not7275 = extractelement <2 x i1> %i.ck, i64 0
  br i1 %.not7275, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.cl = extractelement <2 x i32> %i.cj, i64 0
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.q

._crit_edge:                                      ; preds = %bb.q, %bb.p
  %i.cn = load float, ptr %i.av, align 4, !tbaa !45
  %i.co = load float, ptr %i.at, align 4, !tbaa !45 ; 2 uses
  %i.cp = load float, ptr %i.bn, align 4, !tbaa !45
  %i.cq = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cp, i64 1
  %i.cs = insertelement <2 x float> poison, float %i.co, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fsub <2 x float> %i.cr, %i.ct
  %i.cv = fdiv <2 x float> %i.cu, %i.az
  %i.cw = fptosi <2 x float> %i.cv to <2 x i32>   ; 3 uses
  %shift93 = shufflevector <2 x i32> %i.cw, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.cx = icmp slt <2 x i32> %shift93, %i.cw
  %.not7377 = extractelement <2 x i1> %i.cx, i64 0
  br i1 %.not7377, label %.loopexit, label %.lr.ph80

.lr.ph80:                                         ; preds = %._crit_edge
  %i.cy = extractelement <2 x i32> %i.cw, i64 0
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.da = phi float [ %i.cb, %.lr.ph ], [ %i.di, %bb.q ]
  %.06476 = phi i32 [ %i.cl, %.lr.ph ], [ %i.dg, %bb.q ] ; 3 uses
  %i.db = sitofp i32 %.06476 to float
  %i.dc = call float @llvm.fmuladd.f32(float %i.db, float %i.ai, float %i.da)
  %i.dd = load float, ptr %i.av, align 4, !tbaa !45
  %i.de = load float, ptr %i.bn, align 4, !tbaa !45
  %i.df = load i32, ptr %i.cm, align 4, !tbaa !457
  call void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.c, float noundef %i.dc, float noundef %i.dd, float noundef %i.de, i32 noundef %i.df, float noundef 1.000000e+00)
  %i.dg = add nsw i32 %.06476, 1
  %i.dh = load float, ptr %8, align 8, !tbaa !44
  %i.di = load float, ptr %9, align 8, !tbaa !44  ; 2 uses
  %i.dj = fsub float %i.dh, %i.di
  %i.dk = fdiv float %i.dj, %i.ai
  %i.dl = fptosi float %i.dk to i32
  %.not72.not = icmp slt i32 %.06476, %i.dl
  br i1 %.not72.not, label %bb.q, label %._crit_edge, !llvm.loop !449

bb.r:                                             ; preds = %.lr.ph80, %bb.r
  %i.dm = phi float [ %i.co, %.lr.ph80 ], [ %i.du, %bb.r ]
  %.078 = phi i32 [ %i.cy, %.lr.ph80 ], [ %i.ds, %bb.r ] ; 3 uses
  %i.dn = load float, ptr %7, align 8, !tbaa !44
  %i.do = load float, ptr %8, align 8, !tbaa !44
  %i.dp = sitofp i32 %.078 to float
  %i.dq = call float @llvm.fmuladd.f32(float %i.dp, float %i.ai, float %i.dm)
  %i.dr = load i32, ptr %i.cz, align 4, !tbaa !457
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.c, float noundef %i.dn, float noundef %i.do, float noundef %i.dq, i32 noundef %i.dr, float noundef 1.000000e+00)
  %i.ds = add nsw i32 %.078, 1
  %i.dt = load float, ptr %i.bn, align 4, !tbaa !45
  %i.du = load float, ptr %i.at, align 4, !tbaa !45 ; 2 uses
  %i.dv = fsub float %i.dt, %i.du
  %i.dw = fdiv float %i.dv, %i.ai
  %i.dx = fptosi float %i.dw to i32
  %.not73.not = icmp slt i32 %.078, %i.dx
  br i1 %.not73.not, label %bb.r, label %.loopexit, !llvm.loop !450

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %bb.o
  call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

declare void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui11ImageButtonEPKc12ImTextureRefRK6ImVec2S5_S5_RK6ImVec4S8_(ptr noundef, ptr, i64, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN5ImGui7NewLineEv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(120) ptr @_ZN5ImGui13GetPlatformIOEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui15InvisibleButtonEPKcRK6ImVec2i(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare <2 x float> @_ZN5ImGui14GetItemRectMinEv() local_unnamed_addr #1

declare <2 x float> @_ZN5ImGui14GetItemRectMaxEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui15SetItemKeyOwnerE8ImGuiKey(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN10ImDrawList11AddCallbackEPFvPKS_PK9ImDrawCmdEPvm(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224), ptr, i64, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224), float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224), float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui12BeginListBoxEPKcRK6ImVec2(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN5ImGui10EndListBoxEv() local_unnamed_addr #1

declare noundef i32 @_ZN5ImGui12GetItemFlagsEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui11InputFloat2EPKcPfS1_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui9InputInt2EPKcPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui10DragFloat2EPKcPffffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui8DragInt2EPKcPifiiS1_i(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui10SliderInt2EPKcPiiiS1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui9InputInt3EPKcPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui10DragFloat3EPKcPffffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui8DragInt3EPKcPifiiS1_i(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui12SliderFloat3EPKcPfffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui10SliderInt3EPKcPiiiS1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui11InputFloat4EPKcPfS1_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui9InputInt4EPKcPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui8DragInt4EPKcPifiiS1_i(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui10SliderInt4EPKcPiiiS1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_i(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_i(ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, <2 x float>, i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, <2 x float>, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal noundef float @_ZZL25DemoWindowWidgetsPlottingvEN5Funcs3SinEPvi(ptr nofree readnone captures(none) %0, i32 noundef %1) #14 align 2 {
bb.a:
  %i.a = sitofp i32 %1 to float
  %i.b = fmul nnan float %i.a, 1.000000e-01
  %i.c = tail call float @sinf(float noundef %i.b) #30
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @_ZZL25DemoWindowWidgetsPlottingvEN5Funcs3SawEPvi(ptr nofree readnone captures(none) %0, i32 noundef %1) #15 align 2 {
bb.a:
  %2 = trunc i32 %1 to i1
  %i.a = select i1 %2, float 1.000000e+00, float -1.000000e+00
  ret float %i.a
}

declare void @_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, <2 x float>) local_unnamed_addr #1

declare void @_ZN5ImGui13PlotHistogramEPKcPFfPviES2_iiS1_ff6ImVec2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, <2 x float>) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #6

declare void @_ZN5ImGui11ProgressBarEfRK6ImVec2PKc(float noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui18InputTextMultilineEPKcPcmRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef, ptr noundef, i64 noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui13IsItemFocusedEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui12IsItemEditedEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui15IsItemActivatedEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui17IsItemDeactivatedEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui26IsItemDeactivatedAfterEditEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui13IsItemVisibleEv() local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui13IsItemClickedEi(i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv() local_unnamed_addr #1

declare <2 x float> @_ZN5ImGui15GetItemRectSizeEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare noundef zeroext i1 @_ZN5ImGui15IsWindowFocusedEi(i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui15IsWindowHoveredEi(i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui21BeginPopupContextItemEPKci(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui10SelectableEPKcPbiRK6ImVec2(ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui20IsMouseDoubleClickedEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui23SetNextItemAllowOverlapEv() local_unnamed_addr #1

declare void @_ZN5ImGui12TableNextRowEif(i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN26ImGuiSelectionBasicStorageC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui28SetNextItemSelectionUserDataEx(i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN5ImGui14EndMultiSelectEv() local_unnamed_addr #1

declare void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

declare void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, float noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8ImVectorIjED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN26ImGuiSelectionBasicStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12ImGuiStorageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %_ZN12ImGuiStorageD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZN12ImGuiStorageD2Ev.exit:                       ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN26ImGuiSelectionBasicStorage15SetItemSelectedEjb(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN28ExampleSelectionWithDeletion21ApplyDeletionPostLoopIjEEvP18ImGuiMultiSelectIOR8ImVectorIT_Ei(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.ImVector.16, align 8        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.a = load i32, ptr %2, align 8, !tbaa !174    ; 2 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !166
  %i.c = sub nsw i32 %i.a, %i.b                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.not.i = icmp sgt i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN8ImVectorIjE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.f)
          to label %.noexc22 unwind label %bb.c   ; 2 uses

.noexc22:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.pre = load i32, ptr %2, align 8, !tbaa !174
  store ptr %i.g, ptr %i.h, align 8, !tbaa !176
  store i32 %i.c, ptr %i.d, align 4, !tbaa !175
  br label %_ZN8ImVectorIjE7reserveEi.exit

_ZN8ImVectorIjE7reserveEi.exit:                   ; preds = %bb.a, %.noexc22
  %.pre.i39 = phi ptr [ null, %bb.a ], [ %i.g, %.noexc22 ] ; 2 uses
  %i.i = phi i32 [ 0, %bb.a ], [ %i.c, %.noexc22 ] ; 2 uses
  %i.j = phi i32 [ %i.a, %bb.a ], [ %.pre.pre, %.noexc22 ] ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8ImVectorIjE7reserveEi.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = zext i32 %3 to i64
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre41 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !176
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN8ImVectorIjE7reserveEi.exit
  %i.o = phi ptr [ %.pre.i39, %_ZN8ImVectorIjE7reserveEi.exit ], [ %.pre41, %._crit_edge.loopexit ]
  %i.p = phi i32 [ %i.i, %_ZN8ImVectorIjE7reserveEi.exit ], [ %i.ba, %._crit_edge.loopexit ]
  %i.q = phi i32 [ 0, %_ZN8ImVectorIjE7reserveEi.exit ], [ %i.az, %._crit_edge.loopexit ]
  %.015.lcssa = phi i32 [ -1, %_ZN8ImVectorIjE7reserveEi.exit ], [ %.1, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %i.j, %_ZN8ImVectorIjE7reserveEi.exit ], [ %i.bd, %._crit_edge.loopexit ]
  store i32 %.lcssa, ptr %4, align 8, !tbaa !174
  store i32 %i.q, ptr %2, align 8, !tbaa !174
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !175
  store i32 %i.s, ptr %i.d, align 4, !tbaa !175
  store i32 %i.p, ptr %i.r, align 4, !tbaa !175
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !176  ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !176
  store ptr %i.o, ptr %i.u, align 8, !tbaa !176
  invoke void @_ZN26ImGuiSelectionBasicStorage5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.j unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %i.x = phi i32 [ 0, %.lr.ph ], [ %i.az, %bb.i ] ; 9 uses
  %i.y = phi ptr [ %.pre.i39, %.lr.ph ], [ %.pre.i37, %bb.i ] ; 5 uses
  %i.z = phi i32 [ %i.i, %.lr.ph ], [ %i.ba, %bb.i ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.01531 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.i ]
end_hunk_5

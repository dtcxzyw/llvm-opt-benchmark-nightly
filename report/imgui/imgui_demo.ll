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
  br i1 %i.l, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5ImGui14ShowDemoWindowEPbE9demo_data) #30
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN19ImGuiDemoWindowDataD2Ev, ptr nonnull @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5ImGui14ShowDemoWindowEPbE9demo_data) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = load i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, align 8, !tbaa !9, !range !14, !noundef !15
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
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 4), align 4, !tbaa !16, !range !14, !noundef !15
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.k, label %_ZL23ShowExampleAppDocumentsPb.exit

bb.k:                                             ; preds = %_ZL25ShowExampleAppMainMenuBarv.exit
  %i.aa = load atomic i8, ptr @_ZGVZL23ShowExampleAppDocumentsPbE3app acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.o, !prof !8

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
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !17 ; 2 uses
  %i.aj = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !20 ; 3 uses
  %.not924.i = icmp eq i32 %i.aj, 0
  br i1 %.not924.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.t
end_hunk_0
begin_hunk_1_@_ZN5ImGui14ShowDemoWindowEPb:bb.a
  call void @_ZN13ExampleAppLog4DrawEPKcPb(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2156, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 6))
  br label %bb.gd

bb.gd:                                            ; preds = %_ZL17ShowExampleAppLogPb.exit, %bb.fw
  %i.ani = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 7), align 1, !tbaa !122, !range !14, !noundef !15
  %i.anj = trunc nuw i8 %i.ani to i1
  br i1 %i.anj, label %bb.ge, label %bb.gw

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #30
  store <2 x float> <float 5.000000e+02, float 4.400000e+02>, ptr %89, align 8, !tbaa !56
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
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 7), align 1, !tbaa !33
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  call void @_ZN5ImGui7EndMenuEv()
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gg
  call void @_ZN5ImGui10EndMenuBarEv()
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #30
  store <2 x float> <float 1.500000e+02, float 0.000000e+00>, ptr %90, align 8, !tbaa !56
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
  store float 0.000000e+00, ptr %92, align 4, !tbaa !49
  %i.anr = getelementptr inbounds nuw i8, ptr %92, i64 4
  store float %i.anq, ptr %i.anr, align 4, !tbaa !51
  %i.ans = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.2176, ptr noundef nonnull align 4 dereferenceable(8) %92, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #30
  %i.ant = load i32, ptr @_ZZL20ShowExampleAppLayoutPbE8selected, align 4, !tbaa !61
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2177, i32 noundef %i.ant)
  call void @_ZN5ImGui9SeparatorEv()
  %i.anu = call noundef zeroext i1 @_ZN5ImGui11BeginTabBarEPKci(ptr noundef nonnull @.str.2178, i32 noundef 0)
  br i1 %i.anu, label %bb.gq, label %bb.gv

bb.gn:                                            ; preds = %bb.gp, %bb.gl
  %.01.i = phi i32 [ 0, %bb.gl ], [ %i.anz, %bb.gp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.anv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.2175, i32 noundef %.01.i) #30 ; 0 uses
  %i.anw = load i32, ptr @_ZZL20ShowExampleAppLayoutPbE8selected, align 4, !tbaa !61
  %i.anx = icmp eq i32 %i.anw, %.01.i
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #30
  store <2 x float> zeroinitializer, ptr %91, align 8, !tbaa !56
  %i.any = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.h, i1 noundef zeroext %i.anx, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(8) %91)
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #30
  br i1 %i.any, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  store i32 %.01.i, ptr @_ZZL20ShowExampleAppLayoutPbE8selected, align 4, !tbaa !61
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.anz = add nuw nsw i32 %.01.i, 1              ; 2 uses
  %exitcond.not.i85 = icmp eq i32 %i.anz, 100
  br i1 %exitcond.not.i85, label %bb.gm, label %bb.gn, !llvm.loop !123

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
  store <2 x float> zeroinitializer, ptr %93, align 8, !tbaa !56
  %i.aoc = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.307, ptr noundef nonnull align 4 dereferenceable(8) %93) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #30
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #30
  store <2 x float> zeroinitializer, ptr %94, align 8, !tbaa !56
  %i.aod = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.306, ptr noundef nonnull align 4 dereferenceable(8) %94) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #30
  call void @_ZN5ImGui8EndGroupEv()
  br label %_ZL20ShowExampleAppLayoutPb.exit

_ZL20ShowExampleAppLayoutPb.exit:                 ; preds = %bb.ge, %bb.gv
  call void @_ZN5ImGui3EndEv()
  br label %bb.gw

bb.gw:                                            ; preds = %_ZL20ShowExampleAppLayoutPb.exit, %bb.gd
  %i.aoe = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 8), align 8, !tbaa !124, !range !14, !noundef !15
  %i.aof = trunc nuw i8 %i.aoe to i1
  br i1 %i.aof, label %bb.gx, label %bb.hg

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #30
  store <2 x float> <float 4.300000e+02, float 4.500000e+02>, ptr %88, align 8, !tbaa !56
  call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %88, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #30
  %i.aog = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2181, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 8), i32 noundef 0)
  br i1 %i.aog, label %bb.gy, label %_ZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowData.exit

bb.gy:                                            ; preds = %bb.gx
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9908, ptr noundef nonnull @.str.2182)
  %i.aoh = load atomic i8, ptr @_ZGVZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor acquire, align 8
  %i.aoi = icmp eq i8 %i.aoh, 0
  br i1 %i.aoi, label %bb.gz, label %bb.hc, !prof !8

bb.gz:                                            ; preds = %bb.gy
  %i.aoj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor) #30
  %.not.i86 = icmp eq i32 %i.aoj, 0
  br i1 %.not.i86, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZN15ImGuiTextFilterC1EPKc(ptr noundef nonnull align 8 dereferenceable(276) @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, ptr noundef nonnull @.str.157)
          to label %bb.hb unwind label %bb.he

bb.hb:                                            ; preds = %bb.ha
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, i64 280), align 8, !tbaa !125
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, i64 288), align 8, !tbaa !130
  %i.aok = call i32 @__cxa_atexit(ptr nonnull @_ZN24ExampleAppPropertyEditorD2Ev, ptr nonnull @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor) #30
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.gz, %bb.gy
  %i.aol = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 32), align 8, !tbaa !131 ; 2 uses
  %i.aom = icmp eq ptr %i.aol, null
  br i1 %i.aom, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %bb.hc
  %i.aon = call fastcc noundef ptr @_ZL26ExampleTree_CreateDemoTreev() ; 2 uses
  store ptr %i.aon, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 32), align 8, !tbaa !131
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
  %i.aoq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 9), align 1, !tbaa !132, !range !14, !noundef !15
  %i.aor = trunc nuw i8 %i.aoq to i1
  br i1 %i.aor, label %bb.hh, label %bb.if

bb.hh:                                            ; preds = %bb.hg
  %i.aos = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.aot = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61 ; 2 uses
  %i.aou = icmp sgt i32 %i.aot, -1
  br i1 %i.aou, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.aov = call noundef ptr @_ZN5ImGui15GetMainViewportEv() ; 4 uses
  %173 = getelementptr inbounds nuw i8, ptr %i.aov, i64 32
  %.sroa.01.0.copyload.i = load float, ptr %173, align 8, !tbaa !56 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aov, i64 36
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !56 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 40
  %.sroa.0.0.copyload.i = load float, ptr %i.aow, align 8, !tbaa !56
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aov, i64 44
  %.sroa.4.0.copyload.i90 = load float, ptr %i.aox, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #30
  %174 = getelementptr inbounds nuw i8, ptr %84, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #30
  %175 = getelementptr inbounds nuw i8, ptr %85, i64 4
  %i.aoy = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61 ; 2 uses
  %.not.i91 = trunc i32 %i.aoy to i1              ; 2 uses
  %176 = fadd float %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %177 = fadd float %176, -1.000000e+01
  %178 = fadd float %.sroa.01.0.copyload.i, 1.000000e+01
  %179 = select i1 %.not.i91, float %177, float %178
  store float %179, ptr %84, align 4, !tbaa !49
  %180 = and i32 %i.aoy, 2
  %.not14.i = icmp eq i32 %180, 0                 ; 2 uses
  %181 = fadd float %.sroa.5.0.copyload.i, %.sroa.4.0.copyload.i90
  %182 = fadd float %181, -1.000000e+01
  %183 = fadd float %.sroa.5.0.copyload.i, 1.000000e+01
  %184 = select i1 %.not14.i, float %183, float %182
  store float %184, ptr %174, align 4, !tbaa !51
  %185 = select i1 %.not.i91, float 1.000000e+00, float 0.000000e+00
  store float %185, ptr %85, align 4, !tbaa !49
  %186 = select i1 %.not14.i, float 0.000000e+00, float 1.000000e+00
  store float %186, ptr %175, align 4, !tbaa !51
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
  %i.apd = load <2 x float>, ptr %i.apb, align 8, !tbaa !56
  %i.ape = load <2 x float>, ptr %i.apc, align 8, !tbaa !56
  %i.apf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ape, <2 x float> splat (float 5.000000e-01), <2 x float> %i.apd)
  store <2 x float> %i.apf, ptr %86, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #30
  store <2 x float> splat (float 5.000000e-01), ptr %87, align 8, !tbaa !56
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
  %i.apj = load <2 x float>, ptr %i.api, align 8, !tbaa !56
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
  %i.apo = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61
  %i.app = icmp eq i32 %i.apo, -1
  %i.apq = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1217, ptr noundef null, i1 noundef zeroext %i.app, i1 noundef zeroext true)
  br i1 %i.apq, label %bb.hr, label %._crit_edge.i87

._crit_edge.i87:                                  ; preds = %bb.hq
  %.pre.i88 = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61
  %i.apr = icmp eq i32 %.pre.i88, -2
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  store i32 -1, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %._crit_edge.i87
  %i.aps = phi i1 [ %i.apr, %._crit_edge.i87 ], [ false, %bb.hr ]
  %i.apt = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1446, ptr noundef null, i1 noundef zeroext %i.aps, i1 noundef zeroext true)
  br i1 %i.apt, label %bb.ht, label %._crit_edge1.i

._crit_edge1.i:                                   ; preds = %bb.hs
  %.pre2.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61
  %i.apu = icmp eq i32 %.pre2.i, 0
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store i32 -2, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %._crit_edge1.i
  %i.apv = phi i1 [ %i.apu, %._crit_edge1.i ], [ false, %bb.ht ]
  %i.apw = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2236, ptr noundef null, i1 noundef zeroext %i.apv, i1 noundef zeroext true)
  br i1 %i.apw, label %bb.hv, label %._crit_edge3.i

._crit_edge3.i:                                   ; preds = %bb.hu
  %.pre4.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61
  %i.apx = icmp eq i32 %.pre4.i, 1
  br label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  store i32 0, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %._crit_edge3.i
  %i.apy = phi i1 [ %i.apx, %._crit_edge3.i ], [ false, %bb.hv ]
  %i.apz = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2237, ptr noundef null, i1 noundef zeroext %i.apy, i1 noundef zeroext true)
  br i1 %i.apz, label %bb.hx, label %._crit_edge5.i

._crit_edge5.i:                                   ; preds = %bb.hw
  %.pre6.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61
  %i.aqa = icmp eq i32 %.pre6.i, 2
  br label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  store i32 1, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %._crit_edge5.i
  %i.aqb = phi i1 [ %i.aqa, %._crit_edge5.i ], [ false, %bb.hx ]
  %i.aqc = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2238, ptr noundef null, i1 noundef zeroext %i.aqb, i1 noundef zeroext true)
  br i1 %i.aqc, label %bb.hz, label %._crit_edge7.i

._crit_edge7.i:                                   ; preds = %bb.hy
  %.pre8.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61
  %i.aqd = icmp eq i32 %.pre8.i, 3
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  store i32 2, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %._crit_edge7.i
  %i.aqe = phi i1 [ %i.aqd, %._crit_edge7.i ], [ false, %bb.hz ]
  %i.aqf = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2239, ptr noundef null, i1 noundef zeroext %i.aqe, i1 noundef zeroext true)
  br i1 %i.aqf, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  store i32 3, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !61
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.aqg = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.907, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.aqg, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 9), align 1, !tbaa !33
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  call void @_ZN5ImGui8EndPopupEv()
  br label %_ZL27ShowExampleAppSimpleOverlayPb.exit

_ZL27ShowExampleAppSimpleOverlayPb.exit:          ; preds = %bb.hl, %bb.hp, %bb.ie
  call void @_ZN5ImGui3EndEv()
  br label %bb.if

bb.if:                                            ; preds = %_ZL27ShowExampleAppSimpleOverlayPb.exit, %bb.hg
  %i.aqh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 10), align 2, !tbaa !133, !range !14, !noundef !15
  %i.aqi = trunc nuw i8 %i.aqh to i1
  br i1 %i.aqi, label %bb.ig, label %bb.ii

bb.ig:                                            ; preds = %bb.if
  %i.aqj = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2205, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 10), i32 noundef 64)
  br i1 %i.aqj, label %bb.ih, label %_ZL24ShowExampleAppAutoResizePb.exit

bb.ih:                                            ; preds = %bb.ig
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9992, ptr noundef nonnull @.str.2206)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.2207, ptr noundef null)
  %i.aqk = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.2208, ptr noundef nonnull @_ZZL24ShowExampleAppAutoResizePbE5lines, i32 noundef 1, i32 noundef 20, ptr noundef nonnull @.str.435, i32 noundef 0) ; 0 uses
  %i.aql = load i32, ptr @_ZZL24ShowExampleAppAutoResizePbE5lines, align 4, !tbaa !61
  %i.aqm = icmp sgt i32 %i.aql, 0
  br i1 %i.aqm, label %.lr.ph.i93, label %_ZL24ShowExampleAppAutoResizePb.exit

.lr.ph.i93:                                       ; preds = %bb.ih, %.lr.ph.i93
  %.01.i94 = phi i32 [ %i.aqo, %.lr.ph.i93 ], [ 0, %bb.ih ] ; 3 uses
  %i.aqn = shl nuw nsw i32 %.01.i94, 2
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2209, i32 noundef %i.aqn, ptr noundef nonnull @.str.157, i32 noundef %.01.i94)
  %i.aqo = add nuw nsw i32 %.01.i94, 1            ; 2 uses
  %i.aqp = load i32, ptr @_ZZL24ShowExampleAppAutoResizePbE5lines, align 4, !tbaa !61
  %i.aqq = icmp slt i32 %i.aqo, %i.aqp
  br i1 %i.aqq, label %.lr.ph.i93, label %_ZL24ShowExampleAppAutoResizePb.exit, !llvm.loop !134

_ZL24ShowExampleAppAutoResizePb.exit:             ; preds = %.lr.ph.i93, %bb.ig, %bb.ih
  call void @_ZN5ImGui3EndEv()
  br label %bb.ii

bb.ii:                                            ; preds = %_ZL24ShowExampleAppAutoResizePb.exit, %bb.if
  %i.aqr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 11), align 1, !tbaa !135, !range !14, !noundef !15
  %i.aqs = trunc nuw i8 %i.aqr to i1
  br i1 %i.aqs, label %bb.ij, label %bb.jp

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, ptr noundef nonnull align 16 dereferenceable(72) @__const._ZL31ShowExampleAppConstrainedResizePb.test_desc, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store float f0x3FE38E39, ptr %i.f, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store float 1.000000e+02, ptr %i.g, align 4, !tbaa !56
  %i.aqt = load i32, ptr @_ZZL31ShowExampleAppConstrainedResizePbE4type, align 4, !tbaa !61 ; 2 uses
  %i.aqu = icmp eq i32 %i.aqt, 0
  br i1 %i.aqu, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #30
  store <2 x float> splat (float 1.000000e+02), ptr %56, align 8, !tbaa !56
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
  store <2 x float> zeroinitializer, ptr %16, align 8, !tbaa !56
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
  %i.bxv = load <2 x float>, ptr %i.bxq, align 4, !tbaa !56
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 2 uses
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
  %i.i = load i8, ptr @_ZZN5ImGui15ShowAboutWindowEPbE16show_config_info, align 1, !tbaa !33, !range !14, !noundef !15
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.at

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv() ; 22 uses
  %i.l = tail call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv() ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !56
  %i.m = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.142, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.n = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.o = fmul float %i.n, 1.800000e+01
  store float 0.000000e+00, ptr %2, align 4, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.o, ptr %i.p, align 4, !tbaa !51
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !183  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  %i.x = select i1 %.not, ptr @.str.160, ptr %i.w
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.159, ptr noundef nonnull %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !184  ; 2 uses
  %.not57 = icmp eq ptr %i.z, null
  %i.aa = select i1 %.not57, ptr @.str.160, ptr %i.z
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.161, ptr noundef nonnull %i.aa)
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !163
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.162, i32 noundef %i.ab)
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !163 ; 2 uses
  %.not58 = trunc i32 %i.ac to i1
  br i1 %.not58, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZL10HelpMarkerPKc.exit
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.163)
  %.pre = load i32, ptr %i.k, align 8, !tbaa !163
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZL10HelpMarkerPKc.exit
  %i.ad = phi i32 [ %.pre, %bb.h ], [ %i.ac, %_ZL10HelpMarkerPKc.exit ] ; 2 uses
  %i.ae = and i32 %i.ad, 2
  %.not59 = icmp eq i32 %i.ae, 0
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.164)
  %.pre69 = load i32, ptr %i.k, align 8, !tbaa !163
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = phi i32 [ %.pre69, %bb.j ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ag = and i32 %i.af, 16
  %.not60 = icmp eq i32 %i.ag, 0
  br i1 %.not60, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.165)
  %.pre70 = load i32, ptr %i.k, align 8, !tbaa !163
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = phi i32 [ %.pre70, %bb.l ], [ %i.af, %bb.k ] ; 2 uses
  %i.ai = and i32 %i.ah, 32
  %.not61 = icmp eq i32 %i.ai, 0
  br i1 %.not61, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.166)
  %.pre71 = load i32, ptr %i.k, align 8, !tbaa !163
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
  %i.am = load i8, ptr %i.al, align 1, !tbaa !185, !range !14, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.37)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !186, !range !14, !noundef !15
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.67)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 74
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !187, !range !14, !noundef !15
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.41)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 75
  %i.av = load i8, ptr %i.au, align 1, !tbaa !188, !range !14, !noundef !15
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.43)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 82
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !189, !range !14, !noundef !15
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.61)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 89
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !190, !range !14, !noundef !15
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.53)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 90
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !191, !range !14, !noundef !15
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.55)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !192 ; 2 uses
  %i.bi = fcmp ult float %i.bh, 0.000000e+00
  br i1 %i.bi, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bj = fpext float %i.bh to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.168, double noundef %i.bj)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 6 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !193
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.169, i32 noundef %i.bl)
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !193 ; 2 uses
  %.not63 = trunc i32 %i.bm to i1
  br i1 %.not63, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.170)
  %.pre72 = load i32, ptr %i.bk, align 4, !tbaa !193
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bn = phi i32 [ %.pre72, %bb.ah ], [ %i.bm, %bb.ag ] ; 2 uses
  %i.bo = and i32 %i.bn, 2
  %.not64 = icmp eq i32 %i.bo, 0
  br i1 %.not64, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.171)
  %.pre73 = load i32, ptr %i.bk, align 4, !tbaa !193
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.bp = phi i32 [ %.pre73, %bb.aj ], [ %i.bn, %bb.ai ] ; 2 uses
  %i.bq = and i32 %i.bp, 4
  %.not65 = icmp eq i32 %i.bq, 0
  br i1 %.not65, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.172)
  %.pre74 = load i32, ptr %i.bk, align 4, !tbaa !193
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.br = phi i32 [ %.pre74, %bb.al ], [ %i.bp, %bb.ak ] ; 2 uses
  %i.bs = and i32 %i.br, 8
  %.not66 = icmp eq i32 %i.bs, 0
  br i1 %.not66, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.173)
  %.pre75 = load i32, ptr %i.bk, align 4, !tbaa !193
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
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !103 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !194
  %i.bz = load i32, ptr %i.bw, align 8, !tbaa !195
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !106 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !196
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !202
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.175, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.cd, i32 noundef %i.cf)
  %i.cg = load ptr, ptr %i.bv, align 8, !tbaa !103
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !203 ; 2 uses
  %.not68 = icmp eq ptr %i.ci, null
  %spec.select = select i1 %.not68, ptr @.str.160, ptr %i.ci
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.176, ptr noundef nonnull %spec.select)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !204
  %i.cl = fpext float %i.ck to double
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !205
  %i.co = fpext float %i.cn to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.177, double noundef %i.cl, double noundef %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !206
  %i.cr = fpext float %i.cq to double
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !207
  %i.cu = fpext float %i.ct to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.178, double noundef %i.cr, double noundef %i.cu)
  call void @_ZN5ImGui9SeparatorEv()
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !208
  %i.cx = fpext float %i.cw to double
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !209
  %i.da = fpext float %i.cz to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.179, double noundef %i.cx, double noundef %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.dc = load float, ptr %i.db, align 4, !tbaa !210
  %i.dd = fpext float %i.dc to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.180, double noundef %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.df = load float, ptr %i.de, align 4, !tbaa !211
  %i.dg = fpext float %i.df to double
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.di = load float, ptr %i.dh, align 4, !tbaa !212
  %i.dj = fpext float %i.di to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.181, double noundef %i.dg, double noundef %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !213
  %i.dm = fpext float %i.dl to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.182, double noundef %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.do = load float, ptr %i.dn, align 4, !tbaa !214
  %i.dp = fpext float %i.do to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.183, double noundef %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !215
  %i.ds = fpext float %i.dr to double
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.du = load float, ptr %i.dt, align 4, !tbaa !216
  %i.dv = fpext float %i.du to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.184, double noundef %i.ds, double noundef %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %i.dx = load <2 x float>, ptr %i.dw, align 4, !tbaa !56
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
  br i1 %i.g, label %bb.b, label %bb.e, !prof !8

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1328) @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style, ptr noundef nonnull align 4 dereferenceable(1328) %i.e, i64 1328, i1 false), !tbaa.struct !217
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
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 20), align 4, !tbaa !234, !range !14, !noundef !15
  %i.cq = trunc nuw i8 %i.cp to i1                ; 3 uses
  %i.cr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 21), align 1, !tbaa !235, !range !14, !noundef !15
  %i.cs = trunc nuw i8 %i.cr to i1                ; 2 uses
  br i1 %i.cq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.cs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 24), align 8, !tbaa !236
  %i.cu = and i32 %i.ct, 128
  %i.cv = icmp ne i32 %i.cu, 0
  tail call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 128, i1 noundef zeroext %i.cv)
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 24), align 8, !tbaa !236
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
  store <2 x float> zeroinitializer, ptr %78, align 8, !tbaa !56
  %i.da = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.419, ptr noundef nonnull align 4 dereferenceable(8) %78)
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #30
  %.pre.i = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7clicked, align 4, !tbaa !61 ; 2 uses
  br i1 %i.da, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.db = add nsw i32 %.pre.i, 1                  ; 2 uses
  store i32 %i.db, ptr @_ZZL22DemoWindowWidgetsBasicvE7clicked, align 4, !tbaa !61
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dc = phi i32 [ %i.db, %bb.h ], [ %.pre.i, %bb.g ]
  %.not.i = trunc i32 %i.dc to i1
  br i1 %.not.i, label %bb.j, label %.peel.next.i

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
  %i.dl = load float, ptr %i.cj, align 4, !tbaa !56
  %i.dm = load float, ptr %i.ck, align 4, !tbaa !56
  %i.dn = load float, ptr %i.cl, align 4, !tbaa !56
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
  %i.do = load float, ptr %i.cg, align 4, !tbaa !56
  %i.dp = load float, ptr %i.ch, align 4, !tbaa !56
  %i.dq = load float, ptr %i.ci, align 4, !tbaa !56
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
  %i.dr = load float, ptr %i.cd, align 4, !tbaa !56
  %i.ds = load float, ptr %i.ce, align 4, !tbaa !56
  %i.dt = load float, ptr %i.cf, align 4, !tbaa !56
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
  store <2 x float> zeroinitializer, ptr %82, align 8, !tbaa !56
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
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !57
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
  %i.eb = load float, ptr %i.cj, align 4, !tbaa !56
  %i.ec = load float, ptr %i.ck, align 4, !tbaa !56
  %i.ed = load float, ptr %i.cl, align 4, !tbaa !56
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
  %i.ee = load float, ptr %i.cg, align 4, !tbaa !56
  %i.ef = load float, ptr %i.ch, align 4, !tbaa !56
  %i.eg = load float, ptr %i.ci, align 4, !tbaa !56
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
  %i.eh = load float, ptr %i.cd, align 4, !tbaa !56
  %i.ei = load float, ptr %i.ce, align 4, !tbaa !56
  %i.ej = load float, ptr %i.cf, align 4, !tbaa !56
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
  store <2 x float> zeroinitializer, ptr %82, align 8, !tbaa !56
  %i.ek = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.430, ptr noundef nonnull align 4 dereferenceable(8) %82) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  %i.el = add nuw nsw i32 %.046.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.el, 7
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.k, !llvm.loop !237

bb.l:                                             ; preds = %.loopexit.i
  %i.em = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !61
  %i.en = add nsw i32 %i.em, -1
  store i32 %i.en, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !61
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit.i
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.dx)
  %i.eo = call noundef zeroext i1 @_ZN5ImGui11ArrowButtonEPKc8ImGuiDir(ptr noundef nonnull @.str.434, i32 noundef 1)
  br i1 %i.eo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ep = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !61
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !61
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_ZN5ImGui11PopItemFlagEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.er = load i32, ptr @_ZZL22DemoWindowWidgetsBasicvE7counter, align 4, !tbaa !61
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.435, i32 noundef %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #30
  store <2 x float> zeroinitializer, ptr %83, align 8, !tbaa !56
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
  %i.lf = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !33, !range !14, !noundef !15
  %i.lg = trunc nuw i8 %i.lf to i1
  %i.lh = load i32, ptr @_ZZL16DemoWindowLayoutvE10track_item, align 4
  %i.li = icmp eq i32 %.0177262, %i.lh
  %or.cond195 = select i1 %i.lg, i1 %i.li, i1 false
  br i1 %or.cond195, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #30
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %43, align 16, !tbaa !56
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
  br i1 %exitcond283.not, label %.loopexit245, label %bb.ca, !llvm.loop !267

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
  br i1 %exitcond285.not, label %bb.bp, label %bb.br, !llvm.loop !268

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
  store <2 x float> <float 2.000000e+00, float 1.000000e+00>, ptr %46, align 8, !tbaa !56
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #30
  %i.ls = call noundef float @_ZN5ImGui25GetFrameHeightWithSpacingEv()
  %i.lt = call float @llvm.fmuladd.f32(float %i.ls, float 7.000000e+00, float 3.000000e+01)
  store float 0.000000e+00, ptr %47, align 4, !tbaa !49
  %i.lu = getelementptr inbounds nuw i8, ptr %47, i64 4
  store float %i.lt, ptr %i.lu, align 4, !tbaa !51
  %i.lv = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.1460, ptr noundef nonnull align 4 dereferenceable(8) %47, i32 noundef 1, i32 noundef 2048) ; 0 uses
  %i.lw = load i32, ptr @_ZZL16DemoWindowLayoutvE5lines, align 4, !tbaa !61
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
  %i.md = load float, ptr %i.kj, align 4, !tbaa !269
  %i.me = fadd float %i.mc, %i.md
  %i.mf = load float, ptr %i.kk, align 4, !tbaa !209
  %i.mg = call float @llvm.fmuladd.f32(float %i.mf, float 2.000000e+00, float %i.me)
  %i.mh = load i8, ptr @_ZZL16DemoWindowLayoutvE24enable_extra_decorations, align 1, !tbaa !33, !range !14, !noundef !15
  %i.mi = zext nneg i8 %i.mh to i32
  %i.mj = shl nuw nsw i32 %i.mi, 14
  %i.mk = or disjoint i32 %i.mj, 2048
  %i.ml = inttoptr i64 %indvars.iv290 to ptr
  %i.mm = call noundef i32 @_ZN5ImGui5GetIDEPKv(ptr noundef %i.ml)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #30
  store float -1.000000e+02, ptr %44, align 4, !tbaa !49
  store float %i.mg, ptr %i.kl, align 4, !tbaa !51
  %i.mn = call noundef zeroext i1 @_ZN5ImGui10BeginChildEjRK6ImVec2ii(i32 noundef %i.mm, ptr noundef nonnull align 4 dereferenceable(8) %44, i32 noundef 1, i32 noundef %i.mk)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #30
  br i1 %i.ju, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.mo = load float, ptr @_ZZL16DemoWindowLayoutvE16scroll_to_off_px, align 4, !tbaa !56
  call void @_ZN5ImGui10SetScrollXEf(float noundef %i.mo)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.jx, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mp = call <2 x float> @_ZN5ImGui17GetCursorStartPosEv()
  %.sroa.058.0.vec.extract = extractelement <2 x float> %i.mp, i64 0
  %i.mq = load float, ptr @_ZZL16DemoWindowLayoutvE16scroll_to_pos_px, align 4, !tbaa !56
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
  %.pre = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !33, !range !14
  %i.my = trunc nuw i8 %.pre to i1
  %i.mz = icmp eq i32 %.pre310, 0
  %or.cond197.peel = select i1 %i.my, i1 %i.mz, i1 false
  br i1 %or.cond197.peel, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.932, i32 noundef 0)
  br label %.peel.next288.preheader

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %45, align 16, !tbaa !56
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %45, ptr noundef nonnull @.str.932, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  call void @_ZN5ImGui14SetScrollHereXEf(float noundef %i.mx)
  br label %.peel.next288.preheader

.peel.next288.preheader:                          ; preds = %bb.cm, %bb.cn
  br label %.peel.next288

.peel.next288:                                    ; preds = %.peel.next288.preheader, %bb.cq
  %.0173264 = phi i32 [ %i.ne, %bb.cq ], [ 1, %.peel.next288.preheader ] ; 4 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.na = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !33, !range !14, !noundef !15
  %i.nb = trunc nuw i8 %i.na to i1
  %i.nc = load i32, ptr @_ZZL16DemoWindowLayoutvE10track_item, align 4
  %i.nd = icmp eq i32 %.0173264, %i.nc
  %or.cond197 = select i1 %i.nb, i1 %i.nd, i1 false
  br i1 %or.cond197, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.peel.next288
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %45, align 16, !tbaa !56
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
  br i1 %exitcond286.not, label %.loopexit, label %.peel.next288, !llvm.loop !270

.loopexit:                                        ; preds = %bb.cq, %bb.ck
  %i.nf = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.ng = call noundef float @_ZN5ImGui13GetScrollMaxXEv()
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL16DemoWindowLayoutv.names.1456, i64 %indvars.iv290
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !121
  %i.nj = fpext float %i.nf to double
  %i.nk = fpext float %i.ng to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1457, ptr noundef %i.ni, double noundef %i.nj, double noundef %i.nk)
  call void @_ZN5ImGui7SpacingEv()
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next291, 5
  br i1 %exitcond293.not, label %bb.ce, label %bb.cg, !llvm.loop !271

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
  %.not184 = trunc i32 %.0170267 to i1
  %.v = select i1 %.not184, i32 9, i32 3
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
  %i.nv = load float, ptr %i.g, align 4, !tbaa !56
  %i.nw = load float, ptr %i.h, align 4, !tbaa !56
  %i.nx = load float, ptr %i.i, align 4, !tbaa !56
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
  %i.ny = load float, ptr %i.d, align 4, !tbaa !56
  %i.nz = load float, ptr %i.e, align 4, !tbaa !56
  %i.oa = load float, ptr %i.f, align 4, !tbaa !56
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
  %i.ob = load float, ptr %i.a, align 4, !tbaa !56
  %i.oc = load float, ptr %i.b, align 4, !tbaa !56
  %i.od = load float, ptr %i.c, align 4, !tbaa !56
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
  store float %i.oh, ptr %51, align 8, !tbaa !49
  store float 0.000000e+00, ptr %i.mb, align 4, !tbaa !51
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
  %i.ol = load i32, ptr @_ZZL16DemoWindowLayoutvE5lines, align 4, !tbaa !61
  %i.om = icmp slt i32 %i.ok, %i.ol
  br i1 %i.om, label %bb.cr, label %._crit_edge, !llvm.loop !272

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
  %i.ow = load float, ptr %i.g, align 4, !tbaa !56
  %i.ox = load float, ptr %i.h, align 4, !tbaa !56
  %i.oy = load float, ptr %i.i, align 4, !tbaa !56
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
  %i.oz = load float, ptr %i.d, align 4, !tbaa !56
  %i.pa = load float, ptr %i.e, align 4, !tbaa !56
  %i.pb = load float, ptr %i.f, align 4, !tbaa !56
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
  %i.pc = load float, ptr %i.a, align 4, !tbaa !56
  %i.pd = load float, ptr %i.b, align 4, !tbaa !56
  %i.pe = load float, ptr %i.c, align 4, !tbaa !56
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
  store <2 x float> %i.pk, ptr %51, align 8, !tbaa !56
  %i.pl = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef %i.ot, ptr noundef nonnull align 4 dereferenceable(8) %51) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  %i.pm = add nuw i32 %.0169266, 1                ; 2 uses
  %exitcond294.not = icmp eq i32 %i.nt, %i.pm
  br i1 %exitcond294.not, label %.loopexit298, label %.peel.next296, !llvm.loop !273

bb.cv:                                            ; preds = %._crit_edge
  %i.pn = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pp = load float, ptr %i.po, align 8, !tbaa !250
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
begin_hunk_5_@_ZL16DemoWindowTablesv:bb.a
  %i.xr = sitofp i32 %i.xq to float
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 14, float noundef %i.xr)
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.1695)
  %i.xs = fmul float %.sroa.0418.0.vec.extract, 3.000000e+01
  call void @_ZN5ImGui13PushItemWidthEf(float noundef %i.xs)
  %i.xt = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1670, ptr noundef nonnull @_ZZL16DemoWindowTablesvE6flags2_0, i32 noundef 16777216) ; 0 uses
  %i.xu = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.1696, ptr noundef nonnull @_ZZL16DemoWindowTablesvE11inner_width, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef f0x7F7FFFFF, ptr noundef nonnull @.str.1697, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui12PopItemWidthEv()
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  %i.xv = load i32, ptr @_ZZL16DemoWindowTablesvE6flags2_0, align 4, !tbaa !61
  %i.xw = load float, ptr @_ZZL16DemoWindowTablesvE11inner_width, align 4, !tbaa !56
  %i.xx = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1590, i32 noundef 7, i32 noundef %i.xv, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.xw)
  br i1 %i.xx, label %.preheader683, label %bb.gb

bb.ga:                                            ; preds = %.preheader683
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.gb

.preheader683:                                    ; preds = %_ZL10HelpMarkerPKc.exit572, %.preheader683
  %.0479733 = phi i32 [ %i.yb, %.preheader683 ], [ 0, %_ZL10HelpMarkerPKc.exit572 ]
  %i.xy = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.xz = call noundef i32 @_ZN5ImGui19TableGetColumnIndexEv()
  %i.ya = call noundef i32 @_ZN5ImGui16TableGetRowIndexEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1692, i32 noundef %i.xz, i32 noundef %i.ya)
  %i.yb = add nuw nsw i32 %.0479733, 1            ; 2 uses
  %exitcond807.not = icmp eq i32 %i.yb, 140
  br i1 %exitcond807.not, label %bb.ga, label %.preheader683, !llvm.loop !281

bb.gb:                                            ; preds = %bb.ga, %_ZL10HelpMarkerPKc.exit572
  call void @_ZN5ImGui7TreePopEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fg
  br i1 %.not521.demorgan, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %not.649 = xor i1 %i.o, true
  call void @_ZN5ImGui15SetNextItemOpenEbi(i1 noundef zeroext %not.649, i32 noundef 0)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.yc = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1698)
  br i1 %i.yc, label %bb.gf, label %bb.gu

bb.gf:                                            ; preds = %bb.ge
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 6593, ptr noundef nonnull @.str.1699)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  store <2 x float> zeroinitializer, ptr %33, align 8, !tbaa !56
  %i.yd = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1700, i32 noundef 3, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %33, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  br i1 %i.yd, label %bb.gg, label %bb.gq

bb.gg:                                            ; preds = %bb.gf
  %i.ye = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv() ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 80
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !212
  %i.yh = fmul float %i.yg, 6.000000e-01
  %i.yi = fptosi float %i.yh to i32
  %i.yj = sitofp i32 %i.yi to float
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 11, float noundef %i.yj)
  %i.yk = getelementptr inbounds nuw i8, ptr %i.ye, i64 96
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !216
  %i.ym = fmul float %i.yl, 6.000000e-01
  %i.yn = fptosi float %i.ym to i32
  %i.yo = sitofp i32 %i.yn to float
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 14, float noundef %i.yo)
  br label %bb.gi

bb.gh:                                            ; preds = %_ZL21EditTableColumnsFlagsPi.exit
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.gq

bb.gi:                                            ; preds = %bb.gg, %_ZL21EditTableColumnsFlagsPi.exit
  %indvars.iv808 = phi i64 [ 0, %bb.gg ], [ %indvars.iv.next809, %_ZL21EditTableColumnsFlagsPi.exit ] ; 5 uses
  %i.yp = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.yq = trunc nuw nsw i64 %indvars.iv808 to i32
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.yq)
  call void @_ZN5ImGui23AlignTextToFramePaddingEv()
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL16DemoWindowTablesv.column_names, i64 %indvars.iv808
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !121
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1701, ptr noundef %i.ys)
  call void @_ZN5ImGui7SpacingEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1702)
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr @_ZZL16DemoWindowTablesvE12column_flags, i64 %indvars.iv808 ; 23 uses
  %i.yu = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1916, ptr noundef nonnull %i.yt, i32 noundef 1) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.yv = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.yv, label %bb.gj, label %_ZL10HelpMarkerPKc.exit.i

bb.gj:                                            ; preds = %bb.gi
  %i.yw = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.yx = fmul float %i.yw, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.yx)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1917, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit.i

_ZL10HelpMarkerPKc.exit.i:                        ; preds = %bb.gj, %bb.gi
  %i.yy = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1918, ptr noundef nonnull %i.yt, i32 noundef 2) ; 0 uses
  %i.yz = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1919, ptr noundef nonnull %i.yt, i32 noundef 4) ; 0 uses
  %i.za = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1920, ptr noundef nonnull %i.yt, i32 noundef 8)
  br i1 %i.za, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %_ZL10HelpMarkerPKc.exit.i
  %i.zb = load i32, ptr %i.yt, align 4, !tbaa !61
  %i.zc = and i32 %i.zb, -17
  store i32 %i.zc, ptr %i.yt, align 4, !tbaa !61
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %_ZL10HelpMarkerPKc.exit.i
  %i.zd = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1921, ptr noundef nonnull %i.yt, i32 noundef 16)
  br i1 %i.zd, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.ze = load i32, ptr %i.yt, align 4, !tbaa !61
  %i.zf = and i32 %i.ze, -9
  store i32 %i.zf, ptr %i.yt, align 4, !tbaa !61
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.zg = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1922, ptr noundef nonnull %i.yt, i32 noundef 32) ; 0 uses
  %i.zh = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1923, ptr noundef nonnull %i.yt, i32 noundef 64) ; 0 uses
  %i.zi = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1924, ptr noundef nonnull %i.yt, i32 noundef 128) ; 0 uses
  %i.zj = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1925, ptr noundef nonnull %i.yt, i32 noundef 256) ; 0 uses
  %i.zk = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1926, ptr noundef nonnull %i.yt, i32 noundef 512) ; 0 uses
  %i.zl = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1927, ptr noundef nonnull %i.yt, i32 noundef 1024) ; 0 uses
  %i.zm = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1928, ptr noundef nonnull %i.yt, i32 noundef 2048) ; 0 uses
  %i.zn = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1929, ptr noundef nonnull %i.yt, i32 noundef 4096) ; 0 uses
  %i.zo = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1930, ptr noundef nonnull %i.yt, i32 noundef 8192) ; 0 uses
  %i.zp = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1931, ptr noundef nonnull %i.yt, i32 noundef 16384) ; 0 uses
  %i.zq = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1932, ptr noundef nonnull %i.yt, i32 noundef 32768) ; 0 uses
  %i.zr = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1933, ptr noundef nonnull %i.yt, i32 noundef 65536) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.zs = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.zs, label %bb.go, label %_ZL10HelpMarkerPKc.exit21.i

bb.go:                                            ; preds = %bb.gn
  %i.zt = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.zu = fmul float %i.zt, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.zu)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1934, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit21.i

_ZL10HelpMarkerPKc.exit21.i:                      ; preds = %bb.go, %bb.gn
  %i.zv = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1935, ptr noundef nonnull %i.yt, i32 noundef 131072) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.zw = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.zw, label %bb.gp, label %_ZL21EditTableColumnsFlagsPi.exit

bb.gp:                                            ; preds = %_ZL10HelpMarkerPKc.exit21.i
  %i.zx = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.zy = fmul float %i.zx, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.zy)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1936, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL21EditTableColumnsFlagsPi.exit

_ZL21EditTableColumnsFlagsPi.exit:                ; preds = %_ZL10HelpMarkerPKc.exit21.i, %bb.gp
  %i.zz = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1937, ptr noundef nonnull %i.yt, i32 noundef 262144) ; 0 uses
  call void @_ZN5ImGui7SpacingEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1703)
  call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr @_ZZL16DemoWindowTablesvE16column_flags_out, i64 %indvars.iv808
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.aab, ptr %i.c, align 4, !tbaa !61
  %i.aac = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1938, ptr noundef nonnull %i.c, i32 noundef 16777216) ; 0 uses
  %i.aad = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1939, ptr noundef nonnull %i.c, i32 noundef 33554432) ; 0 uses
  %i.aae = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1940, ptr noundef nonnull %i.c, i32 noundef 67108864) ; 0 uses
  %i.aaf = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1941, ptr noundef nonnull %i.c, i32 noundef 134217728) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN5ImGui11EndDisabledEv()
  call void @_ZN5ImGui5PopIDEv()
  %indvars.iv.next809 = add nuw nsw i64 %indvars.iv808, 1 ; 2 uses
  %exitcond811.not = icmp eq i64 %indvars.iv.next809, 3
  br i1 %exitcond811.not, label %bb.gh, label %bb.gi, !llvm.loop !282

bb.gq:                                            ; preds = %bb.gh, %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  %i.aag = fmul float %i.m, 9.000000e+00
  store float 0.000000e+00, ptr %34, align 4, !tbaa !49
  %i.aah = getelementptr inbounds nuw i8, ptr %34, i64 4
  store float %i.aag, ptr %i.aah, align 4, !tbaa !51
  %i.aai = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1704, i32 noundef 3, i32 noundef 50341711, ptr noundef nonnull align 4 dereferenceable(8) %34, float noundef 0.000000e+00)
  br i1 %i.aai, label %.preheader682.preheader, label %bb.gt

.preheader682.preheader:                          ; preds = %bb.gq
  %i.aaj = load i32, ptr @_ZZL16DemoWindowTablesvE12column_flags, align 4, !tbaa !61 ; 2 uses
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1614, i32 noundef %i.aaj, float noundef 0.000000e+00, i32 noundef 0)
  %i.aak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL16DemoWindowTablesvE12column_flags, i64 4), align 4, !tbaa !61 ; 2 uses
  %i.aal = or i32 %i.aaj, %i.aak
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1615, i32 noundef %i.aak, float noundef 0.000000e+00, i32 noundef 0)
  %i.aam = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL16DemoWindowTablesvE12column_flags, i64 8), align 4, !tbaa !61 ; 2 uses
  %i.aan = or i32 %i.aal, %i.aam
  %i.aao = and i32 %i.aan, 262144
  %.not928 = icmp eq i32 %i.aao, 0
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1616, i32 noundef %i.aam, float noundef 0.000000e+00, i32 noundef 0)
  br i1 %.not928, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %.preheader682.preheader
  call void @_ZN5ImGui21TableAngledHeadersRowEv()
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %.preheader682.preheader
  call void @_ZN5ImGui15TableHeadersRowEv()
  %i.aap = call noundef i32 @_ZN5ImGui19TableGetColumnFlagsEi(i32 noundef 0)
  store i32 %i.aap, ptr @_ZZL16DemoWindowTablesvE16column_flags_out, align 4, !tbaa !61
  %i.aaq = call noundef i32 @_ZN5ImGui19TableGetColumnFlagsEi(i32 noundef 1)
  store i32 %i.aaq, ptr getelementptr inbounds nuw (i8, ptr @_ZZL16DemoWindowTablesvE16column_flags_out, i64 4), align 4, !tbaa !61
  %i.aar = call noundef i32 @_ZN5ImGui19TableGetColumnFlagsEi(i32 noundef 2)
  store i32 %i.aar, ptr getelementptr inbounds nuw (i8, ptr @_ZZL16DemoWindowTablesvE16column_flags_out, i64 8), align 4, !tbaa !61
  %i.aas = fptosi float %.sroa.0418.0.vec.extract to i32
  %i.aat = sdiv i32 %i.aas, 2
  %i.aau = sitofp i32 %i.aat to float             ; 9 uses
  call void @_ZN5ImGui6IndentEf(float noundef %i.aau)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.aav = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.aaw = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.aaw)
  %i.aax = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.aay = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.aay)
  %i.aaz = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.aba = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.aba)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aau)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.abb = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.abc = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.abc)
  %i.abd = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.abe = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abe)
  %i.abf = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.abg = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abg)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aau)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.abh = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.abi = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.abi)
  %i.abj = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.abk = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abk)
  %i.abl = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.abm = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abm)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aau)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.abn = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.abo = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.abo)
  %i.abp = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.abq = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abq)
  %i.abr = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.abs = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abs)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aau)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.abt = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.abu = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.abu)
  %i.abv = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.abw = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abw)
  %i.abx = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.aby = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.aby)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aau)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.abz = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.aca = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.aca)
  %i.acb = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.acc = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.acc)
  %i.acd = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.ace = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.ace)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aau)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.acf = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.acg = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.acg)
  %i.ach = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.aci = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.aci)
  %i.acj = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.ack = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.ack)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aau)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.acl = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.acm = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.acm)
  %i.acn = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.aco = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.aco)
  %i.acp = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.acq = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.acq)
  %i.acr = fmul nnan float %i.aau, 8.000000e+00
  call void @_ZN5ImGui8UnindentEf(float noundef %i.acr)
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gq
  call void @_ZN5ImGui7TreePopEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.ge
  br i1 %.not521.demorgan, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %not.650 = xor i1 %i.o, true
  call void @_ZN5ImGui15SetNextItemOpenEbi(i1 noundef zeroext %not.650, i32 noundef 0)
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.acs = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1707)
  br i1 %i.acs, label %bb.gx, label %bb.hc

bb.gx:                                            ; preds = %bb.gw
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 6668, ptr noundef nonnull @.str.1708)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.act = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.act, label %bb.gy, label %_ZL10HelpMarkerPKc.exit573

bb.gy:                                            ; preds = %bb.gx
  %i.acu = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.acv = fmul float %i.acu, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.acv)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1709, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit573

_ZL10HelpMarkerPKc.exit573:                       ; preds = %bb.gx, %bb.gy
  %i.acw = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv() ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 80
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !212
  %i.acz = fmul float %i.acy, 6.000000e-01
  %i.ada = fptosi float %i.acz to i32
  %i.adb = sitofp i32 %i.ada to float
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 11, float noundef %i.adb)
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acw, i64 96
  %i.add = load float, ptr %i.adc, align 4, !tbaa !216
  %i.ade = fmul float %i.add, 6.000000e-01
  %i.adf = fptosi float %i.ade to i32
  %i.adg = sitofp i32 %i.adf to float
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 14, float noundef %i.adg)
  %i.adh = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1620, ptr noundef nonnull @_ZZL16DemoWindowTablesvE6flags1_1, i32 noundef 1) ; 0 uses
  %i.adi = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1638, ptr noundef nonnull @_ZZL16DemoWindowTablesvE6flags1_1, i32 noundef 4096) ; 0 uses
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  %i.adj = load i32, ptr @_ZZL16DemoWindowTablesvE6flags1_1, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !56
  %i.adk = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1587, i32 noundef 3, i32 noundef %i.adj, ptr noundef nonnull align 4 dereferenceable(8) %35, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br i1 %i.adk, label %.split743.us.3, label %bb.gz

.split743.us.3:                                   ; preds = %_ZL10HelpMarkerPKc.exit573
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1710, i32 noundef 16, float noundef 1.000000e+02, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1711, i32 noundef 16, float noundef 2.000000e+02, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1712, i32 noundef 16, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui15TableHeadersRowEv()
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.adl = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.adm = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.0206.0.vec.extract.us = extractelement <2 x float> %i.adm, i64 0
  %i.adn = fpext float %.sroa.0206.0.vec.extract.us to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1713, double noundef %i.adn)
  %i.ado = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.adp = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.0206.0.vec.extract.us.1 = extractelement <2 x float> %i.adp, i64 0
  %i.adq = fpext float %.sroa.0206.0.vec.extract.us.1 to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1713, double noundef %i.adq)
  %i.adr = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.ads = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.0206.0.vec.extract.us.2 = extractelement <2 x float> %i.ads, i64 0
  %i.adt = fpext float %.sroa.0206.0.vec.extract.us.2 to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1713, double noundef %i.adt)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.adu = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1617, i32 noundef 0, i32 noundef 1)
  %i.adv = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1617, i32 noundef 1, i32 noundef 1)
  %i.adw = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1617, i32 noundef 2, i32 noundef 1)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.adx = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1617, i32 noundef 0, i32 noundef 2)
end_hunk_5
begin_hunk_6_@_ZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowData:bb.a
  %i.fh = phi i32 [ %i.ge, %_ZN8ImVectorIjE9push_backERKj.exit ], [ %.pre123, %.preheader36.preheader ] ; 6 uses
  %.017752 = phi i32 [ %i.gf, %_ZN8ImVectorIjE9push_backERKj.exit ], [ 0, %.preheader36.preheader ]
  %i.fi = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id, align 4, !tbaa !61 ; 2 uses
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id, align 4, !tbaa !61
  %i.fk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 4), align 4, !tbaa !341
  %i.fl = icmp eq i32 %i.fh, %i.fk
  br i1 %i.fl, label %bb.cd, label %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i:      ; preds = %.preheader36
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  br label %_ZN8ImVectorIjE9push_backERKj.exit

bb.cd:                                            ; preds = %.preheader36
  %i.fm = add nsw i32 %i.fh, 1
  %.not.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fn = sdiv i32 %i.fh, 2
  %i.fo = add nsw i32 %i.fn, %i.fh
  br label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i:        ; preds = %bb.ce, %bb.cd
  %i.fp = phi i32 [ %i.fo, %bb.ce ], [ 8, %bb.cd ]
  %i.fq = call noundef i32 @llvm.smax.i32(i32 %i.fp, i32 %i.fm) ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = shl nsw i64 %i.fr, 2
  %i.ft = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.fs) ; 3 uses
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.fu, null
  br i1 %.not6.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  %i.fv = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.fw = sext i32 %i.fv to i64
  %i.fx = shl nsw i64 %i.fw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ft, ptr nonnull align 4 %i.fu, i64 %i.fx, i1 false)
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.fy)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  store ptr %i.ft, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  store i32 %i.fq, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 4), align 4, !tbaa !341
  %.pre3.i = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  br label %_ZN8ImVectorIjE9push_backERKj.exit

_ZN8ImVectorIjE9push_backERKj.exit:               ; preds = %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i, %bb.cg
  %i.fz = phi i32 [ %i.fh, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.cg ]
  %i.ga = phi ptr [ %.pre.i, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i ], [ %i.ft, %bb.cg ]
  %i.gb = sext i32 %i.fz to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.gb
  store i32 %i.fi, ptr %i.gc, align 4
  %i.gd = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.ge = add nsw i32 %i.gd, 1                    ; 2 uses
  store i32 %i.ge, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.gf = add nuw nsw i32 %.017752, 1             ; 2 uses
  %exitcond88.not = icmp eq i32 %i.gf, 50
  br i1 %exitcond88.not, label %.loopexit37, label %.preheader36, !llvm.loop !343

.loopexit37:                                      ; preds = %_ZN8ImVectorIjE9push_backERKj.exit, %bb.cb
  %i.gg = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.975)
  br i1 %i.gg, label %.preheader34.preheader, label %.loopexit35

.preheader34.preheader:                           ; preds = %.loopexit37
  %.pre124 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  br label %.preheader34

.preheader34:                                     ; preds = %.preheader34.preheader, %_ZN8ImVectorIjE9push_backERKj.exit259
  %i.gh = phi i32 [ %i.he, %_ZN8ImVectorIjE9push_backERKj.exit259 ], [ %.pre124, %.preheader34.preheader ] ; 6 uses
  %.017653 = phi i32 [ %i.hf, %_ZN8ImVectorIjE9push_backERKj.exit259 ], [ 0, %.preheader34.preheader ]
  %i.gi = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id, align 4, !tbaa !61 ; 2 uses
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id, align 4, !tbaa !61
  %i.gk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 4), align 4, !tbaa !341
  %i.gl = icmp eq i32 %i.gh, %i.gk
  br i1 %i.gl, label %bb.ch, label %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253

._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253:   ; preds = %.preheader34
  %.pre.i254 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  br label %_ZN8ImVectorIjE9push_backERKj.exit259

bb.ch:                                            ; preds = %.preheader34
  %i.gm = add nsw i32 %i.gh, 1
  %.not.i.i255 = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i255, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gn = sdiv i32 %i.gh, 2
  %i.go = add nsw i32 %i.gn, %i.gh
  br label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256:     ; preds = %bb.ci, %bb.ch
  %i.gp = phi i32 [ %i.go, %bb.ci ], [ 8, %bb.ch ]
  %i.gq = call noundef i32 @llvm.smax.i32(i32 %i.gp, i32 %i.gm) ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = shl nsw i64 %i.gr, 2
  %i.gt = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.gs) ; 3 uses
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342 ; 2 uses
  %.not6.i.i257 = icmp eq ptr %i.gu, null
  br i1 %.not6.i.i257, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256
  %i.gv = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.gw = sext i32 %i.gv to i64
  %i.gx = shl nsw i64 %i.gw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gt, ptr nonnull align 4 %i.gu, i64 %i.gx, i1 false)
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.gy)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256
  store ptr %i.gt, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  store i32 %i.gq, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 4), align 4, !tbaa !341
  %.pre3.i258 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  br label %_ZN8ImVectorIjE9push_backERKj.exit259

_ZN8ImVectorIjE9push_backERKj.exit259:            ; preds = %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253, %bb.ck
  %i.gz = phi i32 [ %i.gh, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253 ], [ %.pre3.i258, %bb.ck ]
  %i.ha = phi ptr [ %.pre.i254, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253 ], [ %i.gt, %bb.ck ]
  %i.hb = sext i32 %i.gz to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hb
  store i32 %i.gi, ptr %i.hc, align 4
  %i.hd = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.he = add nsw i32 %i.hd, 1                    ; 2 uses
  store i32 %i.he, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.hf = add nuw nsw i32 %.017653, 1             ; 2 uses
  %exitcond89.not = icmp eq i32 %i.hf, 20
  br i1 %exitcond89.not, label %.loopexit35, label %.preheader34, !llvm.loop !344

.loopexit35:                                      ; preds = %_ZN8ImVectorIjE9push_backERKj.exit259, %.loopexit37
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.hg = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.976)
  br i1 %i.hg, label %bb.cl, label %.loopexit33

bb.cl:                                            ; preds = %.loopexit35
  %i.hh = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339 ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  br i1 %i.hi, label %.lr.ph55.preheader, label %.loopexit33

.lr.ph55.preheader:                               ; preds = %bb.cl
  %i.hj = call i32 @llvm.umin.i32(i32 %i.hh, i32 20)
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  %i.hk = phi i32 [ %i.hr, %.lr.ph55 ], [ %i.hh, %.lr.ph55.preheader ]
  %.017554 = phi i32 [ %i.hs, %.lr.ph55 ], [ %i.hj, %.lr.ph55.preheader ] ; 2 uses
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr [4 x i8], ptr %i.hl, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !61
  call void @_ZN26ImGuiSelectionBasicStorage15SetItemSelectedEjb(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %i.hp, i1 noundef zeroext false)
  %i.hq = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.hr = add nsw i32 %i.hq, -1                   ; 2 uses
  store i32 %i.hr, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.hs = add nsw i32 %.017554, -1
  %i.ht = icmp samesign ugt i32 %.017554, 1
  br i1 %i.ht, label %.lr.ph55, label %.loopexit33, !llvm.loop !345

.loopexit33:                                      ; preds = %.lr.ph55, %bb.cl, %.loopexit35
  %i.hu = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.hv = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.hw = sitofp i32 %i.hv to float
  %i.hx = fmul float %i.hu, %i.hw
  store float 0.000000e+00, ptr %7, align 4, !tbaa !49
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.hx, ptr %i.hy, align 4, !tbaa !51
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.hz = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.ia = fmul float %i.hz, 2.000000e+01
  store float f0x80800000, ptr %8, align 4, !tbaa !49
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.ia, ptr %i.ib, align 4, !tbaa !51
  %i.ic = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.965, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef 136, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %i.ic, label %bb.cm, label %bb.cu

bb.cm:                                            ; preds = %.loopexit33
  %i.id = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, align 8, !tbaa !325
  %i.ie = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.if = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef 576, i32 noundef %i.id, i32 noundef %i.ie) ; 4 uses
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, ptr noundef %i.if)
  %i.ig = call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 522, i32 noundef 1)
  %i.ih = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, align 8
  %i.ii = icmp sgt i32 %i.ih, 0
  %i.ij = select i1 %i.ig, i1 %i.ii, i1 false     ; 2 uses
  br i1 %i.ij, label %bb.cn, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit

bb.cn:                                            ; preds = %bb.cm
  %i.ik = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.im = load i64, ptr %i.il, align 8, !tbaa !346
  %i.in = trunc i64 %i.im to i32                  ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !347, !range !14, !noundef !15
  %29 = trunc nuw i8 %i.ip to i1
  br i1 %29, label %.preheader.i.preheader, label %bb.co

.preheader.i.preheader:                           ; preds = %bb.cn
  %.022.i199 = add nsw i32 %i.in, 1               ; 2 uses
  %.not.i200 = icmp slt i32 %.022.i199, %i.ik
  br i1 %.not.i200, label %.lr.ph202, label %.critedge.i

bb.co:                                            ; preds = %bb.cn
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 33
  store i8 1, ptr %i.iq, align 1, !tbaa !348
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit

.preheader.i:                                     ; preds = %.lr.ph202
  %.022.i = add nsw i32 %.022.i201, 1             ; 2 uses
  %.not.i = icmp slt i32 %.022.i, %i.ik
  br i1 %.not.i, label %.lr.ph202, label %.critedge.i, !llvm.loop !349

.lr.ph202:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.022.i201 = phi i32 [ %.022.i, %.preheader.i ], [ %.022.i199, %.preheader.i.preheader ] ; 3 uses
  %i.ir = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i64 16), align 8, !tbaa !338
  %i.is = call noundef i32 %i.ir(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %.022.i201), !inline_history !350
  %i.it = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %i.is)
  br i1 %i.it, label %.preheader.i, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, !llvm.loop !349

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i.preheader
  %i.iu = call i32 @llvm.smin.i32(i32 %i.ik, i32 %i.in) ; 2 uses
  %i.iv = icmp slt i32 %i.iu, 1
  br i1 %i.iv, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.lr.ph204

bb.cp:                                            ; preds = %.lr.ph204
  %i.iw = icmp slt i32 %.0.in.i203, 2
  br i1 %i.iw, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.lr.ph204, !llvm.loop !351

.lr.ph204:                                        ; preds = %.critedge.i, %bb.cp
  %.0.in.i203 = phi i32 [ %.0.i, %bb.cp ], [ %i.iu, %.critedge.i ] ; 2 uses
  %.0.i = add nsw i32 %.0.in.i203, -1             ; 3 uses
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i64 16), align 8, !tbaa !338
  %i.iy = call noundef i32 %i.ix(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %.0.i), !inline_history !350
  %i.iz = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %i.iy)
  br i1 %i.iz, label %bb.cp, label %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge205, !llvm.loop !351

._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge205: ; preds = %.lr.ph204
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, !llvm.loop !351

_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit: ; preds = %.lr.ph202, %bb.cp, %.critedge.i, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge205, %bb.co, %bb.cm
  %i.ja = phi i32 [ -1, %bb.cm ], [ -1, %bb.cp ], [ %i.in, %bb.co ], [ %.0.i, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge205 ], [ -1, %.critedge.i ], [ %.022.i201, %.lr.ph202 ] ; 2 uses
  %i.jb = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.lr.ph57, label %._crit_edge

.lr.ph57:                                         ; preds = %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit
  %i.jd = zext i32 %i.ja to i64
  br label %bb.cq

._crit_edge:                                      ; preds = %bb.cs, %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit
  %i.je = call noundef ptr @_ZN5ImGui14EndMultiSelectEv() ; 2 uses
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, ptr noundef %i.je)
  br i1 %i.ij, label %bb.ct, label %bb.cu

bb.cq:                                            ; preds = %.lr.ph57, %bb.cs
  %indvars.iv90 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next91, %bb.cs ] ; 4 uses
  %i.jf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !342
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv90
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !61 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.ji = urem i32 %i.jh, 28
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr @_ZL12ExampleNames, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !121
  %i.jm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.977, i32 noundef %i.jh, ptr noundef %i.jl) #30 ; 0 uses
  %i.jn = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %i.jh)
  call void @_ZN5ImGui28SetNextItemSelectionUserDataEx(i64 noundef %indvars.iv90)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !56
  %i.jo = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.e, i1 noundef zeroext %i.jn, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.jp = icmp eq i64 %indvars.iv90, %i.jd
  br i1 %i.jp, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN5ImGui20SetKeyboardFocusHereEi(i32 noundef -1)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.jq = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !339
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp slt i64 %indvars.iv.next91, %i.jr
  br i1 %i.js, label %bb.cq, label %._crit_edge, !llvm.loop !352

bb.ct:                                            ; preds = %._crit_edge
  call void @_ZN28ExampleSelectionWithDeletion21ApplyDeletionPostLoopIjEEvP18ImGuiMultiSelectIOR8ImVectorIT_Ei(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, ptr noundef %i.je, ptr noundef nonnull align 8 dereferenceable(16) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i32 noundef %i.ja)
  br label %bb.cu

bb.cu:                                            ; preds = %._crit_edge, %bb.ct, %.loopexit33
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.bu
  %i.jt = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.978)
  br i1 %i.jt, label %bb.cw, label %bb.dg

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 3043, ptr noundef nonnull @.str.979)
  %i.ju = load atomic i8, ptr @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb acquire, align 8
  %i.jv = icmp eq i8 %i.ju, 0
  br i1 %i.jv, label %bb.cx, label %bb.da, !prof !8

bb.cx:                                            ; preds = %bb.cw
  %i.jw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb) #30
  %.not216 = icmp eq i32 %i.jw, 0
  br i1 %.not216, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN18ExampleDualListBoxC2Ev(ptr noundef nonnull align 8 dereferenceable(129) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.jx = call i32 @__cxa_atexit(ptr nonnull @_ZN18ExampleDualListBoxD2Ev, ptr nonnull @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb) #30
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cx, %bb.cw
  %i.jy = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !339
  %i.jz = icmp eq i32 %i.jy, 0
  %i.ka = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 16), align 8
  %i.kb = icmp eq i32 %i.ka, 0
  %or.cond = select i1 %i.jz, i1 %i.kb, i1 false
  br i1 %or.cond, label %.preheader29, label %.loopexit30

bb.db:                                            ; preds = %bb.cy
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb) #30
  br label %bb.ky

.preheader29:                                     ; preds = %bb.da, %_ZN8ImVectorIjE9push_backERKj.exit266
  %i.kd = phi i32 [ %i.ky, %_ZN8ImVectorIjE9push_backERKj.exit266 ], [ 0, %bb.da ] ; 6 uses
  %.017358 = phi i32 [ %i.kz, %_ZN8ImVectorIjE9push_backERKj.exit266 ], [ 0, %bb.da ] ; 2 uses
  %i.ke = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 4), align 4, !tbaa !341
  %i.kf = icmp eq i32 %i.kd, %i.ke
  br i1 %i.kf, label %bb.dc, label %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260

._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260:   ; preds = %.preheader29
  %.pre.i261 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 8), align 8, !tbaa !342
  br label %_ZN8ImVectorIjE9push_backERKj.exit266

bb.dc:                                            ; preds = %.preheader29
  %i.kg = add nsw i32 %i.kd, 1
  %.not.i.i262 = icmp eq i32 %i.kd, 0
  br i1 %.not.i.i262, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.kh = sdiv i32 %i.kd, 2
  %i.ki = add nsw i32 %i.kh, %i.kd
  br label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263:     ; preds = %bb.dd, %bb.dc
  %i.kj = phi i32 [ %i.ki, %bb.dd ], [ 8, %bb.dc ]
  %i.kk = call noundef i32 @llvm.smax.i32(i32 %i.kj, i32 %i.kg) ; 2 uses
  %i.kl = sext i32 %i.kk to i64
  %i.km = shl nsw i64 %i.kl, 2
  %i.kn = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.km) ; 3 uses
  %i.ko = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 8), align 8, !tbaa !342 ; 2 uses
  %.not6.i.i264 = icmp eq ptr %i.ko, null
  br i1 %.not6.i.i264, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263
  %i.kp = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !339
  %i.kq = sext i32 %i.kp to i64
  %i.kr = shl nsw i64 %i.kq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kn, ptr nonnull align 4 %i.ko, i64 %i.kr, i1 false)
  %i.ks = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 8), align 8, !tbaa !342
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ks)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263
  store ptr %i.kn, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 8), align 8, !tbaa !342
  store i32 %i.kk, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 4), align 4, !tbaa !341
  %.pre3.i265 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !339
  br label %_ZN8ImVectorIjE9push_backERKj.exit266

_ZN8ImVectorIjE9push_backERKj.exit266:            ; preds = %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260, %bb.df
  %i.kt = phi i32 [ %i.kd, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260 ], [ %.pre3.i265, %bb.df ]
  %i.ku = phi ptr [ %.pre.i261, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260 ], [ %i.kn, %bb.df ]
  %i.kv = sext i32 %i.kt to i64
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.kv
  store i32 %.017358, ptr %i.kw, align 4
  %i.kx = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !339
  %i.ky = add nsw i32 %i.kx, 1                    ; 2 uses
  store i32 %i.ky, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !339
  %i.kz = add nuw nsw i32 %.017358, 1             ; 2 uses
  %exitcond93.not = icmp eq i32 %i.kz, 28
  br i1 %exitcond93.not, label %.loopexit30, label %.preheader29, !llvm.loop !353

.loopexit30:                                      ; preds = %_ZN8ImVectorIjE9push_backERKj.exit266, %bb.da
  call void @_ZN18ExampleDualListBox4ShowEv(ptr noundef nonnull align 8 dereferenceable(129) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.dg
end_hunk_6
begin_hunk_7_@_ZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowData:bb.a
bb.go:                                            ; preds = %bb.gn
  %i.tq = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.tr = fmul float %i.tq, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.tr)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1029, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit272

_ZL10HelpMarkerPKc.exit272:                       ; preds = %bb.gn, %bb.go
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.gp

bb.gp:                                            ; preds = %_ZL10HelpMarkerPKc.exit272, %bb.ft
  %i.ts = load atomic i8, ptr @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1 acquire, align 8
  %i.tt = icmp eq i8 %i.ts, 0
  br i1 %i.tt, label %bb.gq, label %bb.gs, !prof !8

bb.gq:                                            ; preds = %bb.gp
  %i.tu = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1) #30
  %.not227 = icmp eq i32 %i.tu, 0
  br i1 %.not227, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i8 0, i64 16, i1 false)
  %i.tv = call i32 @__cxa_atexit(ptr nonnull @_ZN8ImVectorIiED2Ev, ptr nonnull @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1) #30
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %bb.gp
  %i.tw = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id_0, align 4, !tbaa !61
  %i.tx = icmp eq i32 %i.tw, 0
  br i1 %i.tx, label %.preheader18.preheader, label %.loopexit19

.preheader18.preheader:                           ; preds = %bb.gs
  %.pre125 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %_ZN8ImVectorIiE9push_backERKi.exit
  %i.ty = phi i32 [ %i.uv, %_ZN8ImVectorIiE9push_backERKi.exit ], [ %.pre125, %.preheader18.preheader ] ; 6 uses
  %.016470 = phi i32 [ %i.uw, %_ZN8ImVectorIiE9push_backERKi.exit ], [ 0, %.preheader18.preheader ]
  %i.tz = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id_0, align 4, !tbaa !61 ; 2 uses
  %i.ua = add nsw i32 %i.tz, 1
  store i32 %i.ua, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id_0, align 4, !tbaa !61
  %i.ub = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 4), align 4, !tbaa !255
  %i.uc = icmp eq i32 %i.ty, %i.ub
  br i1 %i.uc, label %bb.gt, label %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i:      ; preds = %.preheader18
  %.pre.i273 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !256
  br label %_ZN8ImVectorIiE9push_backERKi.exit

bb.gt:                                            ; preds = %.preheader18
  %i.ud = add nsw i32 %i.ty, 1
  %.not.i.i274 = icmp eq i32 %i.ty, 0
  br i1 %.not.i.i274, label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ue = sdiv i32 %i.ty, 2
  %i.uf = add nsw i32 %i.ue, %i.ty
  br label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i

_ZNK8ImVectorIiE14_grow_capacityEi.exit.i:        ; preds = %bb.gu, %bb.gt
  %i.ug = phi i32 [ %i.uf, %bb.gu ], [ 8, %bb.gt ]
  %i.uh = call noundef i32 @llvm.smax.i32(i32 %i.ug, i32 %i.ud) ; 2 uses
  %i.ui = sext i32 %i.uh to i64
  %i.uj = shl nsw i64 %i.ui, 2
  %i.uk = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.uj) ; 3 uses
  %i.ul = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !256 ; 2 uses
  %.not6.i.i275 = icmp eq ptr %i.ul, null
  br i1 %.not6.i.i275, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i
  %i.um = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  %i.un = sext i32 %i.um to i64
  %i.uo = shl nsw i64 %i.un, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.uk, ptr nonnull align 4 %i.ul, i64 %i.uo, i1 false)
  %i.up = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !256
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.up)
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i
  store ptr %i.uk, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !256
  store i32 %i.uh, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 4), align 4, !tbaa !255
  %.pre3.i276 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  br label %_ZN8ImVectorIiE9push_backERKi.exit

_ZN8ImVectorIiE9push_backERKi.exit:               ; preds = %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i, %bb.gw
  %i.uq = phi i32 [ %i.ty, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i ], [ %.pre3.i276, %bb.gw ]
  %i.ur = phi ptr [ %.pre.i273, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i ], [ %i.uk, %bb.gw ]
  %i.us = sext i32 %i.uq to i64
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %i.us
  store i32 %i.tz, ptr %i.ut, align 4
  %i.uu = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  %i.uv = add nsw i32 %i.uu, 1                    ; 2 uses
  store i32 %i.uv, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  %i.uw = add nuw nsw i32 %.016470, 1             ; 2 uses
  %exitcond109.not = icmp eq i32 %i.uw, 1000
  br i1 %exitcond109.not, label %.loopexit19, label %.preheader18, !llvm.loop !362

.loopexit19:                                      ; preds = %_ZN8ImVectorIiE9push_backERKi.exit, %bb.gs
  %i.ux = load atomic i8, ptr @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5 acquire, align 8
  %i.uy = icmp eq i8 %i.ux, 0
  br i1 %i.uy, label %bb.gx, label %bb.gz, !prof !8

bb.gx:                                            ; preds = %.loopexit19
  %i.uz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #30
  %.not228 = icmp eq i32 %i.uz, 0
  br i1 %.not228, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  invoke void @_ZN26ImGuiSelectionBasicStorageC2Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5)
          to label %_ZN28ExampleSelectionWithDeletionC2Ev.exit277 unwind label %bb.hf

_ZN28ExampleSelectionWithDeletionC2Ev.exit277:    ; preds = %bb.gy
  %i.va = call i32 @__cxa_atexit(ptr nonnull @_ZN26ImGuiSelectionBasicStorageD2Ev, ptr nonnull @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #30
  br label %bb.gz

bb.gz:                                            ; preds = %_ZN28ExampleSelectionWithDeletionC2Ev.exit277, %bb.gx, %.loopexit19
  %i.vb = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8, !tbaa !325
  %i.vc = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.974, i32 noundef %i.vb, i32 noundef %i.vc)
  %.b208 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b208, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.vd = call noundef float @_ZN5ImGui17GetTextLineHeightEv()
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gz
  %i.ve = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.vf = phi float [ %i.vd, %bb.ha ], [ %i.ve, %bb.hb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.vg = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  %i.vh = sitofp i32 %i.vg to float
  %i.vi = fmul float %i.vf, %i.vh
  store float 0.000000e+00, ptr %17, align 4, !tbaa !49
  %i.vj = getelementptr inbounds nuw i8, ptr %17, i64 4
  store float %i.vi, ptr %i.vj, align 4, !tbaa !51
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.vk = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.vl = fmul float %i.vk, 2.000000e+01
  store float f0x80800000, ptr %18, align 4, !tbaa !49
  %i.vm = getelementptr inbounds nuw i8, ptr %18, i64 4
  store float %i.vl, ptr %i.vm, align 4, !tbaa !51
  %i.vn = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.965, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef 136, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br i1 %i.vn, label %bb.hd, label %bb.kv

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.vo = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.vp = call noundef float @_ZN5ImGui11GetFontSizeEv()
  store float %i.vo, ptr %19, align 4, !tbaa !49
  %i.vq = getelementptr inbounds nuw i8, ptr %19, i64 4
  store float %i.vp, ptr %i.vq, align 4, !tbaa !51
  %.b207 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b207, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 14, float noundef 0.000000e+00)
  br label %bb.hg

bb.hf:                                            ; preds = %bb.gy
  %i.vr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #30
  br label %bb.ky

bb.hg:                                            ; preds = %bb.he, %bb.hd
  %i.vs = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5flags_1, align 4, !tbaa !61
  %i.vt = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8, !tbaa !325
  %i.vu = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  %i.vv = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef %i.vs, i32 noundef %i.vt, i32 noundef %i.vu) ; 5 uses
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr noundef %i.vv)
  %i.vw = call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 522, i32 noundef 1)
  %i.vx = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8 ; 2 uses
  %i.vy = icmp sgt i32 %i.vx, 0
  %or.cond3 = select i1 %i.vw, i1 %i.vy, i1 false
  %.b211 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE26request_deletion_from_menu, align 1
  %i.vz = select i1 %or.cond3, i1 true, i1 %.b211 ; 2 uses
  br i1 %i.vz, label %bb.hh, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286

bb.hh:                                            ; preds = %bb.hg
  %i.wa = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252 ; 3 uses
  %i.wb = icmp eq i32 %i.vx, 0
  br i1 %i.wb, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !346
  %i.we = trunc i64 %i.wd to i32                  ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vv, i64 32
  %i.wg = load i8, ptr %i.wf, align 8, !tbaa !347, !range !14, !noundef !15
  %30 = trunc nuw i8 %i.wg to i1
  br i1 %30, label %.preheader.i278.preheader, label %bb.hj

.preheader.i278.preheader:                        ; preds = %bb.hi
  %.022.i280207 = add nsw i32 %i.we, 1            ; 2 uses
  %.not.i281208 = icmp slt i32 %.022.i280207, %i.wa
  br i1 %.not.i281208, label %.lr.ph210, label %.critedge.i282

bb.hj:                                            ; preds = %bb.hi
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vv, i64 33
  store i8 1, ptr %i.wh, align 1, !tbaa !348
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286

.preheader.i278:                                  ; preds = %.lr.ph210
  %.022.i280 = add nsw i32 %.022.i280209, 1       ; 2 uses
  %.not.i281 = icmp slt i32 %.022.i280, %i.wa
  br i1 %.not.i281, label %.lr.ph210, label %.critedge.i282, !llvm.loop !349

.lr.ph210:                                        ; preds = %.preheader.i278.preheader, %.preheader.i278
  %.022.i280209 = phi i32 [ %.022.i280, %.preheader.i278 ], [ %.022.i280207, %.preheader.i278.preheader ] ; 3 uses
  %i.wi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i64 16), align 8, !tbaa !338
  %i.wj = call noundef i32 %i.wi(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %.022.i280209), !inline_history !350
  %i.wk = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.wj)
  br i1 %i.wk, label %.preheader.i278, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, !llvm.loop !349

.critedge.i282:                                   ; preds = %.preheader.i278, %.preheader.i278.preheader
  %i.wl = call i32 @llvm.smin.i32(i32 %i.wa, i32 %i.we) ; 2 uses
  %i.wm = icmp slt i32 %i.wl, 1
  br i1 %i.wm, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, label %.lr.ph212

bb.hk:                                            ; preds = %.lr.ph212
  %i.wn = icmp slt i32 %.0.in.i283211, 2
  br i1 %i.wn, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, label %.lr.ph212, !llvm.loop !351

.lr.ph212:                                        ; preds = %.critedge.i282, %bb.hk
  %.0.in.i283211 = phi i32 [ %.0.i284, %bb.hk ], [ %i.wl, %.critedge.i282 ] ; 2 uses
  %.0.i284 = add nsw i32 %.0.in.i283211, -1       ; 3 uses
  %i.wo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i64 16), align 8, !tbaa !338
  %i.wp = call noundef i32 %i.wo(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %.0.i284), !inline_history !350
  %i.wq = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.wp)
  br i1 %i.wq, label %bb.hk, label %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge214, !llvm.loop !351

._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge214: ; preds = %.lr.ph212
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, !llvm.loop !351

_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286: ; preds = %.lr.ph210, %bb.hk, %.critedge.i282, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge214, %bb.hj, %bb.hh, %bb.hg
  %i.wr = phi i32 [ -1, %bb.hg ], [ -1, %bb.hh ], [ %i.we, %bb.hj ], [ -1, %bb.hk ], [ %.0.i284, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge214 ], [ -1, %.critedge.i282 ], [ %.022.i280209, %.lr.ph210 ] ; 5 uses
  store i1 false, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE26request_deletion_from_menu, align 1
  %i.ws = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !33, !range !14, !noundef !15
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %bb.hl, label %bb.ho

bb.hl:                                            ; preds = %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286
  %.b206 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b206, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  store <2 x float> zeroinitializer, ptr %20, align 8, !tbaa !56
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 17, ptr noundef nonnull align 4 dereferenceable(8) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  store <2 x float> zeroinitializer, ptr %21, align 8, !tbaa !56
  %i.wu = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1030, i32 noundef 2, i32 noundef 4194321, ptr noundef nonnull align 4 dereferenceable(8) %21, float noundef 0.000000e+00) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 8, float noundef f0x3F333333, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 8, float noundef 3.000000e-01, i32 noundef 0)
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %22)
  %i.wv = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !33, !range !14, !noundef !15
  %i.ww = trunc nuw i8 %i.wv to i1
  br i1 %i.ww, label %bb.hp, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288

bb.hp:                                            ; preds = %bb.ho
  %i.wx = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !252
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %22, i32 noundef %i.wx, float noundef -1.000000e+00)
          to label %bb.hq unwind label %.loopexit.split-lp13

bb.hq:                                            ; preds = %bb.hp
  %.not229 = icmp eq i32 %i.wr, -1
  br i1 %.not229, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.wy = add nuw nsw i32 %i.wr, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %22, i32 noundef %i.wr, i32 noundef %i.wy)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287 unwind label %.loopexit.split-lp13

.loopexit12:                                      ; preds = %.backedge
  %lpad.loopexit14 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

.loopexit.split-lp13:                             ; preds = %bb.hp, %bb.kk, %bb.km, %bb.kn, %bb.ko, %bb.kq, %bb.ks, %bb.hr, %bb.hs
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287: ; preds = %bb.hr, %bb.hq
  %i.wz = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !331 ; 2 uses
  %.not230 = icmp eq i64 %i.xa, -1
  br i1 %.not230, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288, label %bb.hs

bb.hs:                                            ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287
  %i.xb = trunc i64 %i.xa to i32                  ; 2 uses
  %i.xc = add nsw i32 %i.xb, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %22, i32 noundef %i.xb, i32 noundef %i.xc)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288 unwind label %.loopexit.split-lp13

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288: ; preds = %bb.hs, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287, %bb.ho
  %i.xd = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.xe = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.xf = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %.pre126 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !33, !range !14
  %i.xg = trunc nuw i8 %.pre126 to i1
  %sext = sext i32 %i.wr to i64
  br i1 %i.xg, label %.backedge, label %.thread174

.thread174:                                       ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288
  %i.xh = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8
  br label %.split

.backedge:                                        ; preds = %._crit_edge73.loopexit, %._crit_edge73, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288
  %i.xi = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.ht unwind label %.loopexit12

bb.ht:                                            ; preds = %.backedge
  br i1 %i.xi, label %.critedge, label %bb.kj

.critedge:                                        ; preds = %bb.ht
  %.pre127 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !33, !range !14
  %.pre127.fr = freeze i8 %.pre127
  %i.xj = trunc i8 %.pre127.fr to i1
  %i.xk = load i32, ptr %22, align 8
  %i.xl = load i32, ptr %i.xd, align 4
  br i1 %i.xj, label %.split, label %bb.hu

bb.hu:                                            ; preds = %.critedge
  %i.xm = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8
  br label %.split

.split:                                           ; preds = %bb.hu, %.critedge, %.thread174
  %i.xn = phi i32 [ 0, %.thread174 ], [ 0, %bb.hu ], [ %i.xk, %.critedge ] ; 2 uses
  %i.xo = phi i1 [ false, %.thread174 ], [ false, %bb.hu ], [ true, %.critedge ]
  %i.xp = phi i32 [ %i.xh, %.thread174 ], [ %i.xm, %bb.hu ], [ %i.xl, %.critedge ] ; 2 uses
  %i.xq = icmp slt i32 %i.xn, %i.xp
  br i1 %i.xq, label %.lr.ph72.preheader, label %._crit_edge73

.lr.ph72.preheader:                               ; preds = %.split
  %i.xr = sext i32 %i.xn to i64
  br label %.lr.ph72

._crit_edge73.loopexit:                           ; preds = %bb.kh
  %.pre128 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !33, !range !14
  %.pre132 = trunc nuw i8 %.pre128 to i1
  br i1 %.pre132, label %.backedge, label %bb.kj

._crit_edge73:                                    ; preds = %.split
  br i1 %i.xo, label %.backedge, label %bb.kj

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %bb.kh
  %indvars.iv110 = phi i64 [ %i.xr, %.lr.ph72.preheader ], [ %indvars.iv.next111, %bb.kh ] ; 5 uses
  %i.xs = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !33, !range !14, !noundef !15
  %i.xt = trunc nuw i8 %i.xs to i1
  br i1 %i.xt, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %.lr.ph72
  %i.xu = invoke noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv()
          to label %bb.hx unwind label %bb.hw     ; 0 uses

bb.hw:                                            ; preds = %bb.hv
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

bb.hx:                                            ; preds = %bb.hv, %.lr.ph72
  %i.xw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !256
  %i.xx = getelementptr inbounds [4 x i8], ptr %i.xw, i64 %indvars.iv110
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !61 ; 4 uses
  %i.xz = srem i32 %i.xy, 28
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr inbounds [8 x i8], ptr @_ZL12ExampleNames, i64 %i.ya
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !121 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.yd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.966, i32 noundef %i.xy, ptr noundef %i.yc) #30 ; 0 uses
  invoke void @_ZN5ImGui6PushIDEi(i32 noundef %i.xy)
          to label %bb.hy unwind label %bb.ib

bb.hy:                                            ; preds = %bb.hx
  %i.ye = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE17show_color_button, align 1, !tbaa !33, !range !14, !noundef !15
  %i.yf = trunc nuw i8 %i.ye to i1
  %i.yg = trunc nsw i64 %indvars.iv110 to i32     ; 2 uses
  br i1 %i.yf, label %bb.hz, label %._crit_edge133

bb.hz:                                            ; preds = %bb.hy
end_hunk_7
begin_hunk_8_@_ZL29ExampleImageViewer_DrawCanvasP22ExampleImageViewerData6ImVec212ImTextureRefii:bb.a
  %.not71 = icmp eq ptr %i.bs, null
  br i1 %.not71, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN5ImGui13GetPlatformIOEv()
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !375
  call void @_ZN10ImDrawList11AddCallbackEPFvPKS_PK9ImDrawCmdEPvm(ptr noundef nonnull align 8 dereferenceable(224) %i.c, ptr noundef %i.bv, ptr noundef null, i64 noundef 0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !376, !range !14, !noundef !15
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = fcmp ogt float %i.ai, 6.000000e+00
  %or.cond = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ca = load float, ptr %7, align 8, !tbaa !49
  %i.cb = load float, ptr %9, align 8, !tbaa !49  ; 2 uses
  %i.cc = load float, ptr %8, align 8, !tbaa !49
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
  %i.cn = load float, ptr %i.av, align 4, !tbaa !51
  %i.co = load float, ptr %i.at, align 4, !tbaa !51 ; 2 uses
  %i.cp = load float, ptr %i.bn, align 4, !tbaa !51
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
  %i.dd = load float, ptr %i.av, align 4, !tbaa !51
  %i.de = load float, ptr %i.bn, align 4, !tbaa !51
  %i.df = load i32, ptr %i.cm, align 4, !tbaa !377
  call void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.c, float noundef %i.dc, float noundef %i.dd, float noundef %i.de, i32 noundef %i.df, float noundef 1.000000e+00)
  %i.dg = add nsw i32 %.06476, 1
  %i.dh = load float, ptr %8, align 8, !tbaa !49
  %i.di = load float, ptr %9, align 8, !tbaa !49  ; 2 uses
  %i.dj = fsub float %i.dh, %i.di
  %i.dk = fdiv float %i.dj, %i.ai
  %i.dl = fptosi float %i.dk to i32
  %.not72.not = icmp slt i32 %.06476, %i.dl
  br i1 %.not72.not, label %bb.q, label %._crit_edge, !llvm.loop !378

bb.r:                                             ; preds = %.lr.ph80, %bb.r
  %i.dm = phi float [ %i.co, %.lr.ph80 ], [ %i.du, %bb.r ]
  %.078 = phi i32 [ %i.cy, %.lr.ph80 ], [ %i.ds, %bb.r ] ; 3 uses
  %i.dn = load float, ptr %7, align 8, !tbaa !49
  %i.do = load float, ptr %8, align 8, !tbaa !49
  %i.dp = sitofp i32 %.078 to float
  %i.dq = call float @llvm.fmuladd.f32(float %i.dp, float %i.ai, float %i.dm)
  %i.dr = load i32, ptr %i.cz, align 4, !tbaa !377
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.c, float noundef %i.dn, float noundef %i.do, float noundef %i.dq, i32 noundef %i.dr, float noundef 1.000000e+00)
  %i.ds = add nsw i32 %.078, 1
  %i.dt = load float, ptr %i.bn, align 4, !tbaa !51
  %i.du = load float, ptr %i.at, align 4, !tbaa !51 ; 2 uses
  %i.dv = fsub float %i.dt, %i.du
  %i.dw = fdiv float %i.dv, %i.ai
  %i.dx = fptosi float %i.dw to i32
  %.not73.not = icmp slt i32 %.078, %i.dx
  br i1 %.not73.not, label %bb.r, label %.loopexit, !llvm.loop !379

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
  %.not = trunc i32 %1 to i1
  %i.a = select i1 %.not, float 1.000000e+00, float -1.000000e+00
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342  ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380  ; 2 uses
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
  %i.a = load i32, ptr %2, align 8, !tbaa !339    ; 2 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !325
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
  %.pre.pre = load i32, ptr %2, align 8, !tbaa !339
  store ptr %i.g, ptr %i.h, align 8, !tbaa !342
  store i32 %i.c, ptr %i.d, align 4, !tbaa !341
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
  %.pre41 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !342
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN8ImVectorIjE7reserveEi.exit
  %i.o = phi ptr [ %.pre.i39, %_ZN8ImVectorIjE7reserveEi.exit ], [ %.pre41, %._crit_edge.loopexit ]
  %i.p = phi i32 [ %i.i, %_ZN8ImVectorIjE7reserveEi.exit ], [ %i.ba, %._crit_edge.loopexit ]
  %i.q = phi i32 [ 0, %_ZN8ImVectorIjE7reserveEi.exit ], [ %i.az, %._crit_edge.loopexit ]
  %.015.lcssa = phi i32 [ -1, %_ZN8ImVectorIjE7reserveEi.exit ], [ %.1, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %i.j, %_ZN8ImVectorIjE7reserveEi.exit ], [ %i.bd, %._crit_edge.loopexit ]
  store i32 %.lcssa, ptr %4, align 8, !tbaa !339
  store i32 %i.q, ptr %2, align 8, !tbaa !339
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !341
  store i32 %i.s, ptr %i.d, align 4, !tbaa !341
  store i32 %i.p, ptr %i.r, align 4, !tbaa !341
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !342  ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !342
  store ptr %i.o, ptr %i.u, align 8, !tbaa !342
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
end_hunk_8
begin_hunk_9_@_ZN24ExampleAppPropertyEditor4DrawEP15ExampleTreeNode:bb.a

bb.k:                                             ; preds = %bb.j
  %i.s = load i32, ptr %i.p, align 4, !tbaa !389
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.s)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 16, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 8, float noundef 2.000000e+00, i32 noundef 0)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.u = load i8, ptr %i.t, align 4, !tbaa !394, !range !14, !noundef !15
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.k
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.2192)
  %i.w = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @_ZN5ImGui23AlignTextToFramePaddingEv()
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.2192, ptr noundef null)
  %i.x = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.y = call noundef zeroext i1 @_ZN5ImGui9InputTextEPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.2191, ptr noundef nonnull %i.o, i64 noundef 28, i32 noundef 0, ptr noundef null, ptr noundef null) ; 0 uses
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.2193)
  %i.z = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @_ZN5ImGui23AlignTextToFramePaddingEv()
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.2193, ptr noundef null)
  %i.aa = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 61
  %i.ac = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2191, ptr noundef nonnull %i.ab) ; 0 uses
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.2194)
  %i.ad = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @_ZN5ImGui23AlignTextToFramePaddingEv()
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.2194, ptr noundef null)
  %i.ae = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 -2147483648, ptr %i.a, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 2147483647, ptr %i.b, align 4, !tbaa !61
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef f0x80800000)
  %i.ag = call noundef zeroext i1 @_ZN5ImGui11DragScalarNEPKciPvifPKvS4_S1_i(ptr noundef nonnull @.str.2191, i32 noundef 4, ptr noundef nonnull %i.af, i32 noundef 1, float noundef 1.000000e+00, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.2195)
  %i.ah = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  call void @_ZN5ImGui23AlignTextToFramePaddingEv()
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.2195, ptr noundef null)
  %i.ai = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !56
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef f0x80800000)
  %i.ak = call noundef zeroext i1 @_ZN5ImGui13SliderScalarNEPKciPviPKvS4_S1_i(ptr noundef nonnull @.str.2191, i32 noundef 8, ptr noundef nonnull %i.aj, i32 noundef 2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @_ZN5ImGui5PopIDEv()
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.k
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %.loopexit, %bb.i
  call void @_ZN5ImGui8EndGroupEv()
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN24ExampleAppPropertyEditor15DrawClippedTreeEP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.ImGuiListClipper, align 8   ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !323
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %2)
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 2147483647, float noundef -1.000000e+00)
          to label %.preheader28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader28:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  br label %.loopexit25.outer

.loopexit25.outer.backedge:                       ; preds = %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit, %.lr.ph.i
  %.0.ph.be = phi ptr [ null, %.lr.ph.i ], [ %.1.i, %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit ]
  br label %.loopexit25.outer

.loopexit25.outer:                                ; preds = %.loopexit25.outer.backedge, %.preheader28
  %.0.ph = phi ptr [ %i.c, %.preheader28 ], [ %.0.ph.be, %.loopexit25.outer.backedge ] ; 3 uses
  %i.g = icmp ne ptr %.0.ph, null
  br label %.loopexit25

.loopexit25:                                      ; preds = %.loopexit25.outer, %.preheader24
  %i.h = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.b:                                             ; preds = %.loopexit25
  br i1 %i.h, label %.preheader24, label %.preheader

.preheader24:                                     ; preds = %bb.b
  %i.i = load i32, ptr %i.d, align 8, !tbaa !474  ; 2 uses
  %i.j = load i32, ptr %i.e, align 4, !tbaa !152  ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  %i.l = select i1 %i.k, i1 %i.g, i1 false
  br i1 %i.l, label %.lr.ph, label %.loopexit25, !llvm.loop !475

.lr.ph:                                           ; preds = %.preheader24, %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit
  %i.m = phi i32 [ %i.cd, %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit ], [ %i.j, %.preheader24 ]
  %i.n = phi i32 [ %i.cc, %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit ], [ %i.i, %.preheader24 ]
  %.138 = phi ptr [ %.1.i, %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit ], [ %.0.ph, %.preheader24 ] ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.138, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !391
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !391
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.i, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i

_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.i: ; preds = %.lr.ph
  %i.s = invoke noundef zeroext i1 @_ZNK15ImGuiTextFilter10PassFilterEPKcS1_(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull %.138, ptr noundef null)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.i
  br i1 %i.s, label %.noexc._ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i_crit_edge, label %.thread35.i

.noexc._ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i_crit_edge: ; preds = %.noexc
  %.pre = load i32, ptr %i.d, align 8, !tbaa !474
  %.pre45 = load i32, ptr %i.e, align 4
  br label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i

_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i: ; preds = %.noexc._ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i_crit_edge, %.lr.ph
  %i.t = phi i32 [ %.pre45, %.noexc._ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i_crit_edge ], [ %i.m, %.lr.ph ]
  %i.u = phi i32 [ %.pre, %.noexc._ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i_crit_edge ], [ %i.n, %.lr.ph ] ; 3 uses
  %i.v = load i32, ptr %2, align 8, !tbaa !149
  %.not.i = icmp sge i32 %i.u, %i.v
  %i.w = icmp slt i32 %i.u, %i.t
  %or.cond = select i1 %.not.i, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %.138, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !392
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %.thread28.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.138, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !389
  %i.ac = invoke noundef zeroext i1 @_ZN5ImGui15TreeNodeGetOpenEj(i32 noundef %i.ab)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc7:                                          ; preds = %bb.d
  br i1 %i.ac, label %.thread31.i, label %..thread28_crit_edge.i

..thread28_crit_edge.i:                           ; preds = %.noexc7
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !474
  br label %.thread28.i

.thread31.i:                                      ; preds = %.noexc7
  invoke void @_ZN5ImGui8TreePushEPKc(ptr noundef nonnull %.138)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc8:                                          ; preds = %.thread31.i
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !474
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.d, align 8, !tbaa !474
  br label %bb.i

.thread28.i:                                      ; preds = %..thread28_crit_edge.i, %bb.c
  %i.af = phi i32 [ %.pre.i, %..thread28_crit_edge.i ], [ %i.u, %bb.c ]
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.d, align 8, !tbaa !474
  br label %.thread35.i

bb.e:                                             ; preds = %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i
  invoke void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.e
  %i.ah = invoke noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv()
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc13:                                         ; preds = %.noexc12
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !125
  %i.aj = icmp eq ptr %.138, %i.ai
  %spec.select.i = select i1 %i.aj, i32 1183937, i32 1183936 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.138, i64 40 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !392
  %i.am = icmp eq i32 %i.al, 0
  %i.an = or disjoint i32 %spec.select.i, 776
  %.1.i11 = select i1 %i.am, i32 %i.an, i32 %spec.select.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.138, i64 61 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !386, !range !14, !noundef !15
  %3 = trunc nuw i8 %i.ap to i1
  br i1 %3, label %.noexc15, label %bb.f

bb.f:                                             ; preds = %.noexc13
  %i.aq = invoke noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 340
  invoke void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.ar)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc15:                                         ; preds = %.noexc14, %.noexc13
  %i.as = getelementptr inbounds nuw i8, ptr %.138, i64 28 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !389
  invoke void @_ZN5ImGui20SetNextItemStorageIDEj(i32 noundef %i.at)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc16:                                         ; preds = %.noexc15
  %i.au = load i32, ptr %i.as, align 4, !tbaa !389
  %i.av = sext i32 %i.au to i64
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = invoke noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef %i.aw, i32 noundef %.1.i11, ptr noundef nonnull @.str.1078, ptr noundef nonnull %.138)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc17:                                         ; preds = %.noexc16
  %i.ay = load i32, ptr %i.ak, align 8, !tbaa !392
  %i.az = load i8, ptr %i.ao, align 1, !tbaa !386, !range !14, !noundef !15
  %4 = trunc nuw i8 %i.az to i1
  br i1 %4, label %.noexc18, label %bb.g

bb.g:                                             ; preds = %.noexc17
  invoke void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %bb.g, %.noexc17
  %i.ba = invoke noundef zeroext i1 @_ZN5ImGui13IsItemFocusedEv()
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc19:                                         ; preds = %.noexc18
  br i1 %i.ba, label %bb.h, label %.noexc9

bb.h:                                             ; preds = %.noexc19
  store ptr %.138, ptr %i.f, align 8, !tbaa !125
  br label %.noexc9

.noexc9:                                          ; preds = %bb.h, %.noexc19
  %i.bb = icmp ne i32 %i.ay, 0
  %narrow.i = and i1 %i.ax, %i.bb
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !474
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.d, align 8, !tbaa !474
  br i1 %narrow.i, label %bb.i, label %.thread35.i

bb.i:                                             ; preds = %.noexc9, %.noexc8
  %i.be = getelementptr inbounds nuw i8, ptr %.138, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !319
  br label %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit

.thread35.i:                                      ; preds = %.noexc9, %.thread28.i, %.noexc
  %i.bg = getelementptr inbounds nuw i8, ptr %.138, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !390
  %i.bi = add nsw i32 %i.bh, 1                    ; 2 uses
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !391 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !392
  %i.bm = icmp slt i32 %i.bi, %i.bl
  br i1 %i.bm, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc10, %.thread35.i
  %.lcssa39.i = phi i32 [ %i.bi, %.thread35.i ], [ %i.bx, %.noexc10 ]
  %.lcssa.i = phi ptr [ %i.bj, %.thread35.i ], [ %i.by, %.noexc10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !319
  %i.bp = sext i32 %.lcssa39.i to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  br label %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit

.lr.ph.i:                                         ; preds = %.thread35.i, %.noexc10
  %i.br = phi ptr [ %i.by, %.noexc10 ], [ %i.bj, %.thread35.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !391
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.loopexit25.outer.backedge, label %bb.j, !llvm.loop !475

bb.j:                                             ; preds = %.lr.ph.i
  invoke void @_ZN5ImGui7TreePopEv()
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit

.noexc10:                                         ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !390
  %i.bx = add nsw i32 %i.bw, 1                    ; 2 uses
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !391 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !392
  %i.cb = icmp slt i32 %i.bx, %i.ca
  br i1 %i.cb, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !476

_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit: ; preds = %bb.i, %._crit_edge.i
  %.1.i.in = phi ptr [ %i.bq, %._crit_edge.i ], [ %i.bf, %bb.i ]
  %.1.i = load ptr, ptr %.1.i.in, align 8, !tbaa !323 ; 3 uses
  %i.cc = load i32, ptr %i.d, align 8, !tbaa !474 ; 2 uses
  %i.cd = load i32, ptr %i.e, align 4, !tbaa !152 ; 2 uses
  %i.ce = icmp slt i32 %i.cc, %i.cd
  %i.cf = icmp ne ptr %.1.i, null
  %i.cg = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %i.cg, label %.lr.ph, label %.loopexit25.outer.backedge, !llvm.loop !475

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.j
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.i, %bb.d, %.thread31.i, %bb.e, %.noexc12, %bb.f, %.noexc14, %.noexc15, %.noexc16, %bb.g, %.noexc18
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.loopexit25
  %lpad.loopexit29 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.a
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit29, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %lpad.phi

.preheader:                                       ; preds = %bb.b, %bb.k
  %.2 = phi ptr [ %i.ch, %bb.k ], [ %.0.ph, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.2, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.ch = invoke noundef ptr @_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull %2, ptr noundef nonnull %.2)
          to label %.preheader unwind label %.loopexit, !llvm.loop !477

bb.l:                                             ; preds = %.preheader
  %i.ci = load i32, ptr %i.d, align 8, !tbaa !474
  invoke void @_ZN16ImGuiListClipper17SeekCursorForItemEi(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %i.ci)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN24ExampleAppPropertyEditor8DrawTreeEP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !319  ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !322  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.012 = phi ptr [ %i.n, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.012, align 8, !tbaa !323 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !391
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !391
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread

_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit: ; preds = %.lr.ph
  %i.l = tail call noundef zeroext i1 @_ZNK15ImGuiTextFilter10PassFilterEPKcS1_(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull %i.g, ptr noundef null)
  br i1 %i.l, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread, label %bb.c

_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread: ; preds = %.lr.ph, %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit
  %i.m = tail call noundef zeroext i1 @_ZN24ExampleAppPropertyEditor12DrawTreeNodeEP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull %i.g)
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread
  tail call void @_ZN24ExampleAppPropertyEditor8DrawTreeEP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull %i.g)
  tail call void @_ZN5ImGui7TreePopEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread, %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef zeroext i1 @_ZN5ImGui11DragScalarNEPKciPvifPKvS4_S1_i(ptr noundef, i32 noundef, ptr noundef, i32 noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui13SliderScalarNEPKciPviPKvS4_S1_i(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !391
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !391
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread

_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit: ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZNK15ImGuiTextFilter10PassFilterEPKcS1_(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull %2, ptr noundef null)
  br i1 %i.e, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread, label %.thread35

_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread: ; preds = %bb.a, %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !474  ; 3 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !149
  %.not = icmp slt i32 %i.g, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !152
  %i.k = icmp slt i32 %i.g, %i.j
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !392
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %.thread28

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !389
  %i.q = tail call noundef zeroext i1 @_ZN5ImGui15TreeNodeGetOpenEj(i32 noundef %i.p)
  br i1 %i.q, label %.thread31, label %..thread28_crit_edge

..thread28_crit_edge:                             ; preds = %bb.d
  %.pre = load i32, ptr %i.f, align 8, !tbaa !474
  br label %.thread28

.thread31:                                        ; preds = %bb.d
  tail call void @_ZN5ImGui8TreePushEPKc(ptr noundef nonnull %2)
  %i.r = load i32, ptr %i.f, align 8, !tbaa !474
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.f, align 8, !tbaa !474
  br label %bb.f

.thread28:                                        ; preds = %..thread28_crit_edge, %bb.c
  %i.t = phi i32 [ %.pre, %..thread28_crit_edge ], [ %i.g, %bb.c ]
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.f, align 8, !tbaa !474
  br label %.thread35

bb.e:                                             ; preds = %bb.b
  %i.v = tail call noundef zeroext i1 @_ZN24ExampleAppPropertyEditor12DrawTreeNodeEP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull %2)
  %i.w = load i32, ptr %i.f, align 8, !tbaa !474
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.f, align 8, !tbaa !474
  br i1 %i.v, label %bb.f, label %.thread35

bb.f:                                             ; preds = %bb.e, %.thread31
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !319
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !323
  br label %.loopexit

.thread35:                                        ; preds = %.thread28, %bb.e, %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !390
  %i.ad = add nsw i32 %i.ac, 1                    ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !391 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !392
  %i.ah = icmp slt i32 %i.ad, %i.ag
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %.thread35
  %.lcssa39 = phi i32 [ %i.ad, %.thread35 ], [ %i.at, %bb.g ]
  %.lcssa = phi ptr [ %i.ae, %.thread35 ], [ %i.au, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !319
  %i.ak = sext i32 %.lcssa39 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !323
  br label %.loopexit

.lr.ph:                                           ; preds = %.thread35, %bb.g
  %i.an = phi ptr [ %i.au, %bb.g ], [ %i.ae, %.thread35 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !391
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  tail call void @_ZN5ImGui7TreePopEv()
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !390
  %i.at = add nsw i32 %i.as, 1                    ; 2 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !391 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !392
  %i.ax = icmp slt i32 %i.at, %i.aw
  br i1 %i.ax, label %._crit_edge, label %.lr.ph, !llvm.loop !476

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %._crit_edge
  %.1 = phi ptr [ %i.am, %._crit_edge ], [ %i.aa, %bb.f ], [ null, %.lr.ph ]
  ret ptr %.1
}

declare void @_ZN16ImGuiListClipper17SeekCursorForItemEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN24ExampleAppPropertyEditor12DrawTreeNodeEP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.d = icmp eq ptr %1, %i.c
  %spec.select = select i1 %i.d, i32 1183937, i32 1183936 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !392
  %i.g = icmp eq i32 %i.f, 0
  %i.h = or disjoint i32 %spec.select, 776
  %.1 = select i1 %i.g, i32 %i.h, i32 %spec.select
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 61 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !386, !range !14, !noundef !15
  %2 = trunc nuw i8 %i.j to i1
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 340
  tail call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !389
  tail call void @_ZN5ImGui20SetNextItemStorageIDEj(i32 noundef %i.n)
  %i.o = load i32, ptr %i.m, align 4, !tbaa !389
  %i.p = sext i32 %i.o to i64
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef %i.q, i32 noundef %.1, ptr noundef nonnull @.str.1078, ptr noundef nonnull %1)
  %i.s = load i32, ptr %i.e, align 8, !tbaa !392
  %i.t = load i8, ptr %i.i, align 1, !tbaa !386, !range !14, !noundef !15
  %3 = trunc nuw i8 %i.t to i1
  br i1 %3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = tail call noundef zeroext i1 @_ZN5ImGui13IsItemFocusedEv()
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %1, ptr %i.b, align 8, !tbaa !125
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = icmp ne i32 %i.s, 0
  %narrow = and i1 %i.r, %i.v
  ret i1 %narrow
}

declare void @_ZN5ImGui8TreePushEPKc(ptr noundef) local_unnamed_addr #1

declare void @_ZN15ImGuiTextBuffer7appendfEPKcz(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints11AspectRatioEP21ImGuiSizeCallbackData(ptr nofree noundef captures(none) initializes((28, 32)) %0) #28 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !478
  %i.b = load float, ptr %i.a, align 4, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load float, ptr %i.c, align 8, !tbaa !480
  %i.e = fdiv float %i.d, %i.b
  %i.f = fptosi float %i.e to i32
  %i.g = sitofp i32 %i.f to float
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.g, ptr %i.h, align 4, !tbaa !481
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints6SquareEP21ImGuiSizeCallbackData(ptr nofree noundef captures(none) %0) #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !480 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !481 ; 2 uses
  %.inv = fcmp oge float %i.b, %i.d
  %. = select i1 %.inv, float %i.b, float %i.d    ; 2 uses
  store float %., ptr %i.c, align 4, !tbaa !481
  store float %., ptr %i.a, align 8, !tbaa !480
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints4StepEP21ImGuiSizeCallbackData(ptr nofree noundef captures(none) %0) #28 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !478
  %i.b = load float, ptr %i.a, align 4, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load <2 x float>, ptr %i.c, align 8, !tbaa !56
  %i.e = insertelement <2 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.g = fdiv <2 x float> %i.d, %i.f
  %i.h = fadd <2 x float> %i.g, splat (float 5.000000e-01)
  %i.i = fptosi <2 x float> %i.h to <2 x i32>
  %i.j = sitofp <2 x i32> %i.i to <2 x float>
  %i.k = fmul <2 x float> %i.f, %i.j
  store <2 x float> %i.k, ptr %i.c, align 8
  ret void
}

declare void @_ZN5ImGui13SetWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui20SetNextWindowBgAlphaEf(float noundef) local_unnamed_addr #1

declare noundef float @_ZN5ImGui13CalcItemWidthEv() local_unnamed_addr #1

declare noundef i32 @_ZN5ImGui11GetColorU32Ejf(i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList7AddNgonERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList10AddEllipseERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList18AddBezierQuadraticERK6ImVec2S2_S2_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList14AddBezierCubicERK6ImVec2S2_S2_S2_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList13AddNgonFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList16AddEllipseFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList26PathBezierQuadraticCurveToERK6ImVec2S2_i(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8ImVectorI6ImVec2ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
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

declare noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare <2 x float> @_ZN5ImGui12GetWindowPosEv() local_unnamed_addr #1

declare noundef ptr @_ZN5ImGui21GetBackgroundDrawListEv() local_unnamed_addr #1

declare noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList20AddConcavePolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN18ImDrawListSplitter5SplitEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN18ImDrawListSplitter5MergeEP10ImDrawList(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN19ExampleAppDocumentsC2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 11 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %0, i8 0, i64 41, i1 false)
  %i.b = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 448)
          to label %.noexc unwind label %bb.w     ; 3 uses

.noexc:                                           ; preds = %_ZNK8ImVectorI10MyDocumentE14_grow_capacityEi.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.d, null
  br i1 %.not6.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc
  %i.e = load i32, ptr %0, align 8, !tbaa !20
  %i.f = sext i32 %i.e to i64
  %i.g = mul nsw i64 %i.f, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.b, ptr nonnull align 4 %i.d, i64 %i.g, i1 false)
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !17
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.h)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %.noexc, %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !17
  store i32 8, ptr %i.a, align 4, !tbaa !482
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !20
  %i.i = sext i32 %.pre3.i to i64
  %i.j = getelementptr inbounds [56 x i8], ptr %i.b, i64 %i.i ; 6 uses
  store i64 28538328763884876, ptr %i.j, align 4
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 0, ptr %.sroa.5121.0..sroa_idx, align 4
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i8 1, ptr %.sroa.6122.0..sroa_idx, align 4
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 37
  store i8 1, ptr %.sroa.7123.0..sroa_idx, align 1
  %.sroa.8124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 38
  store i8 0, ptr %.sroa.8124.0..sroa_idx, align 2
  %.sroa.9126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store <4 x float> <float 4.000000e-01, float 8.000000e-01, float 4.000000e-01, float 1.000000e+00>, ptr %.sroa.9126.0..sroa_idx, align 4
  %i.k = load i32, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.l = add nsw i32 %i.k, 1                      ; 6 uses
  store i32 %i.l, ptr %0, align 8, !tbaa !20
  %i.m = load i32, ptr %i.a, align 4, !tbaa !482
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i5

._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i5: ; preds = %bb.b
  %.phi.trans.insert.i6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i7 = load ptr, ptr %.phi.trans.insert.i6, align 8, !tbaa !17
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %i.k, 2
  %.not.i.i8 = icmp eq i32 %i.l, 0
end_hunk_9
begin_hunk_10_@_ZN20ExampleAssetsBrowser4DrawEPKcPb:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !325
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2328, ptr noundef nonnull @.str.2329, i1 noundef zeroext false, i1 noundef zeroext %i.aa)
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 1, ptr %i.ac, align 4, !tbaa !494
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @_ZN5ImGui7EndMenuEv()
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.ad = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.400, i1 noundef zeroext true)
  br i1 %i.ad, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.ae = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.af = fmul float %i.ae, 1.000000e+01
  call void @_ZN5ImGui13PushItemWidthEf(float noundef %i.af)
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.1665)
  %i.ag = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2330, ptr noundef nonnull %0) ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ai = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2331, ptr noundef nonnull %i.ah) ; 0 uses
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.2332)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ak = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2333, ptr noundef nonnull %i.aj) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.am = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2334, ptr noundef nonnull %i.al)
  br i1 %i.am, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.an = load i8, ptr %i.al, align 1, !tbaa !499, !range !14, !noundef !15
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.ap, align 4, !tbaa !483
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ar = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2335, ptr noundef nonnull %i.aq)
  br i1 %i.ar, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.as = load i8, ptr %i.aq, align 4, !tbaa !483, !range !14, !noundef !15
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.al, align 1, !tbaa !499
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.2336)
  %i.au = call noundef zeroext i1 @_ZN5ImGui11SliderFloatEPKcPfffS1_i(ptr noundef nonnull @.str.2337, ptr noundef nonnull %i.d, float noundef 1.600000e+01, float noundef 1.280000e+02, ptr noundef nonnull @.str.198, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.av = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.av, label %bb.z, label %_ZL10HelpMarkerPKc.exit

bb.z:                                             ; preds = %bb.y
  %i.aw = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.ax = fmul float %i.aw, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.ax)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.2338, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit

_ZL10HelpMarkerPKc.exit:                          ; preds = %bb.y, %bb.z
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.az = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.2339, ptr noundef nonnull %i.ay, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @.str.435, i32 noundef 0) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.2340, ptr noundef nonnull %i.ba, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @.str.435, i32 noundef 0) ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bd = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2341, ptr noundef nonnull %i.bc) ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.bf = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2342, ptr noundef nonnull %i.be) ; 0 uses
  call void @_ZN5ImGui12PopItemWidthEv()
  call void @_ZN5ImGui7EndMenuEv()
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL10HelpMarkerPKc.exit, %bb.r
  call void @_ZN5ImGui10EndMenuBarEv()
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !500, !range !14, !noundef !15
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !56
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bj = call noundef float @_ZN5ImGui14GetFrameHeightEv()
  store float 0.000000e+00, ptr %5, align 4, !tbaa !49
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.bj, ptr %i.bk, align 4, !tbaa !51
  %i.bl = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.2343, i32 noundef 2, i32 noundef 67118984, ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.bl, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.2344, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1776, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui15TableHeadersRowEv()
  %i.bm = call noundef ptr @_ZN5ImGui17TableGetSortSpecsEv() ; 3 uses
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !301, !range !14, !noundef !15
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !495, !range !14, !noundef !15
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !501
  %i.bw = load i32, ptr %i.bt, align 8, !tbaa !502 ; 2 uses
  store ptr %i.bm, ptr @_ZN12ExampleAsset20s_current_sort_specsE, align 8, !tbaa !304
  %i.bx = icmp sgt i32 %i.bw, 1
  br i1 %i.bx, label %bb.ah, label %_ZN12ExampleAsset17SortWithSortSpecsEP19ImGuiTableSortSpecsPS_i.exit

bb.ah:                                            ; preds = %bb.ag
  %i.by = zext nneg i32 %i.bw to i64
  call void @qsort(ptr noundef %i.bv, i64 noundef %i.by, i64 noundef 8, ptr noundef nonnull @_ZN12ExampleAsset20CompareWithSortSpecsEPKvS1_)
  br label %_ZN12ExampleAsset17SortWithSortSpecsEP19ImGuiTableSortSpecsPS_i.exit

_ZN12ExampleAsset17SortWithSortSpecsEP19ImGuiTableSortSpecsPS_i.exit: ; preds = %bb.ag, %bb.ah
  store ptr null, ptr @_ZN12ExampleAsset20s_current_sort_specsE, align 8, !tbaa !304
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 0, ptr %i.bz, align 1, !tbaa !495
  store i8 0, ptr %i.bn, align 4, !tbaa !301
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %_ZN12ExampleAsset17SortWithSortSpecsEP19ImGuiTableSortSpecsPS_i.exit, %bb.ad
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ac
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ab
  %i.ca = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv() ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !503
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !504
  %i.cf = sitofp i32 %i.ce to float
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !505
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !506
  %i.cl = fadd float %i.ci, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.cf, float %i.cl, float %i.cc)
  store float 0.000000e+00, ptr %6, align 4, !tbaa !49
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.cm, ptr %i.cn, align 4, !tbaa !51
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.co = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.cp = fneg float %i.co
  store float 0.000000e+00, ptr %7, align 4, !tbaa !49
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.cp, ptr %i.cq, align 4, !tbaa !51
  %i.cr = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.2345, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef 1, i32 noundef 2052)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %i.cr, label %bb.al, label %bb.et

bb.al:                                            ; preds = %bb.ak
  %i.cs = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() ; 3 uses
  %i.ct = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.063.0.vec.extract = extractelement <2 x float> %i.ct, i64 0 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !489
  %i.cw = sitofp i32 %i.cv to float               ; 4 uses
  store float %i.cw, ptr %i.cj, align 4, !tbaa !506
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !491, !range !14, !noundef !15
  %18 = trunc nuw i8 %i.cy to i1                  ; 2 uses
  br i1 %18, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cz = fmul nnan float %i.cw, 5.000000e-01
  %i.da = call float @llvm.floor.f32(float %i.cz)
  %i.db = fadd float %.sroa.063.0.vec.extract, %i.da
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0.i = phi float [ %i.db, %bb.am ], [ %.sroa.063.0.vec.extract, %bb.al ] ; 2 uses
  %i.dc = load float, ptr %i.d, align 8, !tbaa !488
  %i.dd = call float @llvm.floor.f32(float %i.dc) ; 5 uses
  store float %i.dd, ptr %i.cg, align 4
  store float %i.dd, ptr %i.ch, align 8
  %i.de = fadd float %i.dd, %i.cw
  %i.df = fdiv float %.0.i, %i.de
  %i.dg = fptosi float %i.df to i32               ; 2 uses
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.dg, i32 1) ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  store i32 %spec.select.i, ptr %i.dh, align 8, !tbaa !507
  %i.di = icmp sgt i32 %i.dg, 1
  %or.cond.i = select i1 %18, i1 %i.di, i1 false
  br i1 %or.cond.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dj = uitofp nneg i32 %spec.select.i to float ; 2 uses
  %i.dk = fneg float %i.dd
  %i.dl = call float @llvm.fmuladd.f32(float %i.dk, float %i.dj, float %.0.i)
  %i.dm = call float @llvm.floor.f32(float %i.dl)
  %i.dn = fdiv float %i.dm, %i.dj                 ; 2 uses
  store float %i.dn, ptr %i.cj, align 4, !tbaa !506
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.do = phi float [ %i.dn, %bb.ao ], [ %i.cw, %bb.an ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !492, !range !14, !noundef !15
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.aq, label %_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ds = shl nuw nsw i32 %spec.select.i, 1       ; 2 uses
  store i32 %i.ds, ptr %i.dh, align 8, !tbaa !507
  br label %_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit

_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit: ; preds = %bb.ap, %bb.aq
  %i.dt = phi i32 [ %i.ds, %bb.aq ], [ %spec.select.i, %bb.ap ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !502
  %i.dw = add nsw i32 %i.dt, -1
  %i.dx = add i32 %i.dw, %i.dv
  %i.dy = sdiv i32 %i.dx, %i.dt
  store i32 %i.dy, ptr %i.cd, align 4, !tbaa !504
  %i.dz = fadd float %i.dd, %i.do                 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  store float %i.dz, ptr %i.ea, align 4
  %.sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store float %i.dz, ptr %.sroa_idx8.i, align 8
  %i.eb = call float @llvm.floor.f32(float %i.do)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !490
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = fsub float %i.eb, %i.ee                 ; 2 uses
  %.inv.i = fcmp oge float %i.ef, 0.000000e+00
  %i.eg = select i1 %.inv.i, float %i.ef, float 0.000000e+00
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store float %i.eg, ptr %i.eh, align 8, !tbaa !508
  %i.ei = fmul float %i.do, 5.000000e-01
  %i.ej = call float @llvm.floor.f32(float %i.ei)
  store float %i.ej, ptr %i.cb, align 4, !tbaa !503
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ek = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv()
  %i.el = load float, ptr %i.cb, align 4, !tbaa !503
  %i.em = insertelement <2 x float> poison, float %i.el, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = fadd <2 x float> %i.en, %i.ek
  store <2 x float> %i.eo, ptr %8, align 8
  call void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %8)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !509, !range !14, !noundef !15
  %i.er = trunc nuw i8 %i.eq to i1
  %spec.select = select i1 %i.er, i32 1664, i32 1536 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.et = load i8, ptr %i.es, align 4, !tbaa !483, !range !14, !noundef !15
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit
  %i.ev = or disjoint i32 %spec.select, 32768
  br label %bb.at

bb.as:                                            ; preds = %_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !499, !range !14, !noundef !15
  %i.ey = zext nneg i8 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 14
  %spec.select125 = or disjoint i32 %i.ez, %spec.select
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1100 = phi i32 [ %i.ev, %bb.ar ], [ %spec.select125, %bb.as ]
  %i.fa = or i32 %.1100, 65536
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !325
  %i.fd = load i32, ptr %i.du, align 8, !tbaa !502
  %i.fe = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef %i.fa, i32 noundef %i.fc, i32 noundef %i.fd) ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %0, ptr %i.ff, align 8, !tbaa !337
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr @_ZZN20ExampleAssetsBrowser4DrawEPKcPbENUlP26ImGuiSelectionBasicStorageiE_8__invokeES4_i, ptr %i.fg, align 8, !tbaa !338
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, ptr noundef %i.fe)
  %i.fh = call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 522, i32 noundef 1)
  br i1 %i.fh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fi = load i32, ptr %i.fb, align 8, !tbaa !325
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.thread170, label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fl = load i8, ptr %i.fk, align 4, !tbaa !494, !range !14, !noundef !15
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.aw, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit

bb.aw:                                            ; preds = %bb.av
  %.pr = load i32, ptr %i.fb, align 8, !tbaa !325
  %i.fn = icmp eq i32 %.pr, 0
  br i1 %i.fn, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.thread170

.thread170:                                       ; preds = %bb.au, %bb.aw
  %i.fo = load i32, ptr %i.du, align 8, !tbaa !502 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !346
  %i.fr = trunc i64 %i.fq to i32                  ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !347, !range !14, !noundef !15
  %19 = trunc nuw i8 %i.ft to i1
  br i1 %19, label %.preheader.i.preheader, label %bb.ax

.preheader.i.preheader:                           ; preds = %.thread170
  %.022.i251 = add nsw i32 %i.fr, 1               ; 2 uses
  %.not.i252 = icmp slt i32 %.022.i251, %i.fo
  br i1 %.not.i252, label %.lr.ph254, label %.critedge.i

bb.ax:                                            ; preds = %.thread170
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 33
  store i8 1, ptr %i.fu, align 1, !tbaa !348
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit

.preheader.i:                                     ; preds = %.lr.ph254
  %.022.i = add nsw i32 %.022.i253, 1             ; 2 uses
  %.not.i = icmp slt i32 %.022.i, %i.fo
  br i1 %.not.i, label %.lr.ph254, label %.critedge.i, !llvm.loop !349

.lr.ph254:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.022.i253 = phi i32 [ %.022.i, %.preheader.i ], [ %.022.i251, %.preheader.i.preheader ] ; 3 uses
  %i.fv = load ptr, ptr %i.fg, align 8, !tbaa !338
  %i.fw = call noundef i32 %i.fv(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i32 noundef %.022.i253), !inline_history !350
  %i.fx = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i32 noundef %i.fw)
  br i1 %i.fx, label %.preheader.i, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, !llvm.loop !349

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i.preheader
  %i.fy = call i32 @llvm.smin.i32(i32 %i.fo, i32 %i.fr) ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 1
  br i1 %i.fz, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.lr.ph256

bb.ay:                                            ; preds = %.lr.ph256
  %i.ga = icmp slt i32 %.0.in.i255, 2
  br i1 %i.ga, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.lr.ph256, !llvm.loop !351

.lr.ph256:                                        ; preds = %.critedge.i, %bb.ay
  %.0.in.i255 = phi i32 [ %.0.i127, %bb.ay ], [ %i.fy, %.critedge.i ] ; 2 uses
  %.0.i127 = add nsw i32 %.0.in.i255, -1          ; 3 uses
  %i.gb = load ptr, ptr %i.fg, align 8, !tbaa !338
  %i.gc = call noundef i32 %i.gb(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i32 noundef %.0.i127), !inline_history !350
  %i.gd = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i32 noundef %i.gc)
  br i1 %i.gd, label %bb.ay, label %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge257, !llvm.loop !351

._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge257: ; preds = %.lr.ph256
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, !llvm.loop !351

_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit: ; preds = %.lr.ph254, %bb.ay, %.critedge.i, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge257, %bb.ax, %bb.aw, %bb.av
  %i.ge = phi i1 [ false, %bb.av ], [ true, %bb.aw ], [ true, %bb.ax ], [ true, %.critedge.i ], [ true, %bb.ay ], [ true, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge257 ], [ true, %.lr.ph254 ]
  %i.gf = phi i32 [ -1, %bb.av ], [ -1, %bb.aw ], [ %i.fr, %bb.ax ], [ -1, %.critedge.i ], [ -1, %bb.ay ], [ %.0.i127, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge257 ], [ %.022.i253, %.lr.ph254 ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  store i8 0, ptr %i.gg, align 4, !tbaa !494
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.gh = load float, ptr %i.eh, align 8, !tbaa !508 ; 2 uses
  store float %i.gh, ptr %9, align 4, !tbaa !49
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.gh, ptr %i.gi, align 4, !tbaa !51
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.gj = call noundef i32 @_ZN5ImGui11GetColorU32Ejf(i32 noundef -601677021, float noundef 1.000000e+00)
  %i.gk = load float, ptr %i.cg, align 4, !tbaa !510
  %i.gl = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull @.str.2346, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.043.0.vec.extract = extractelement <2 x float> %i.gl, i64 0
  %i.gm = fcmp ult float %i.gk, %.sroa.043.0.vec.extract
  %i.gn = load i32, ptr %i.dh, align 8, !tbaa !507 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10)
  %i.go = load i32, ptr %i.cd, align 4, !tbaa !504
  %i.gp = load float, ptr %.sroa_idx8.i, align 8, !tbaa !511
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef %i.go, float noundef %i.gp)
          to label %bb.az unwind label %.loopexit.split-lp182

bb.az:                                            ; preds = %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit
  %.not108 = icmp eq i32 %i.gf, -1
  br i1 %.not108, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = sdiv i32 %i.gf, %i.gn                   ; 2 uses
  %i.gr = add nsw i32 %i.gq, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef %i.gq, i32 noundef %i.gr)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit unwind label %.loopexit.split-lp182

.loopexit181:                                     ; preds = %bb.bc
  %lpad.loopexit183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.loopexit.split-lp182:                            ; preds = %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, %bb.dd, %bb.di, %bb.dj, %bb.dl, %bb.dm, %bb.dn, %bb.dq, %bb.dr, %bb.ds, %bb.du, %bb.dv, %bb.dy, %bb.eb, %bb.ed, %bb.ba, %bb.bb
  %lpad.loopexit.split-lp184 = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit: ; preds = %bb.ba, %bb.az
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !331 ; 2 uses
  %.not109 = icmp eq i64 %i.gt, -1
  br i1 %.not109, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit128, label %bb.bb

bb.bb:                                            ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = sdiv i32 %i.gu, %i.gn                   ; 2 uses
  %i.gw = add nsw i32 %i.gv, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef %i.gv, i32 noundef %i.gw)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit128 unwind label %.loopexit.split-lp182

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit128: ; preds = %bb.bb, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gz = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %16, i64 4
  %sext = sext i32 %i.gf to i64
  br label %bb.bc

.loopexit180:                                     ; preds = %.loopexit179, %bb.be
  br label %bb.bc, !llvm.loop !512

bb.bc:                                            ; preds = %.loopexit180, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit128
  %i.he = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %bb.bd unwind label %.loopexit181

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.he, label %bb.be, label %bb.dd

bb.be:                                            ; preds = %bb.bd
  %i.hf = load i32, ptr %10, align 8, !tbaa !149  ; 3 uses
  %i.hg = load i32, ptr %i.gx, align 4, !tbaa !152 ; 2 uses
  %i.hh = icmp slt i32 %i.hf, %i.hg
  br i1 %i.hh, label %.lr.ph195.preheader, label %.loopexit180

.lr.ph195.preheader:                              ; preds = %bb.be
  %i.hi = mul i32 %i.gn, %i.hf
  br label %.lr.ph195

.loopexit179.loopexit:                            ; preds = %bb.dc
  %.pre = load i32, ptr %i.gx, align 4, !tbaa !152
  br label %.loopexit179

.loopexit179:                                     ; preds = %.loopexit179.loopexit, %.lr.ph195
  %i.hj = phi i32 [ %.pre, %.loopexit179.loopexit ], [ %i.hl, %.lr.ph195 ] ; 2 uses
  %i.hk = icmp slt i32 %i.hn, %i.hj
  %indvars.iv.next213 = add i32 %indvars.iv212, %i.gn
  br i1 %i.hk, label %.lr.ph195, label %.loopexit180, !llvm.loop !513

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %.loopexit179
  %i.hl = phi i32 [ %i.hg, %.lr.ph195.preheader ], [ %i.hj, %.loopexit179 ]
  %indvars.iv212 = phi i32 [ %i.hi, %.lr.ph195.preheader ], [ %indvars.iv.next213, %.loopexit179 ] ; 2 uses
  %.086194 = phi i32 [ %i.hf, %.lr.ph195.preheader ], [ %i.hn, %.loopexit179 ] ; 3 uses
  %i.hm = mul nsw i32 %.086194, %i.gn
  %i.hn = add nsw i32 %.086194, 1                 ; 3 uses
  %i.ho = mul nsw i32 %i.hn, %i.gn
  %i.hp = load i32, ptr %i.du, align 8, !tbaa !502
  %. = call i32 @llvm.smin.i32(i32 %i.ho, i32 %i.hp) ; 2 uses
  %i.hq = icmp slt i32 %i.hm, %.
  br i1 %i.hq, label %.lr.ph, label %.loopexit179

.lr.ph:                                           ; preds = %.lr.ph195
  %i.hr = sext i32 %indvars.iv212 to i64
  %i.hs = sitofp i32 %.086194 to float
  %i.ht = sext i32 %. to i64
  %i.hu = insertelement <2 x float> poison, float %i.hs, i64 1
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph, %bb.dc
  %indvars.iv214 = phi i64 [ %i.hr, %.lr.ph ], [ %indvars.iv.next215, %bb.dc ] ; 5 uses
  %i.hv = load ptr, ptr %i.gy, align 8, !tbaa !496
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hv, i64 %indvars.iv214 ; 5 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !514
  invoke void @_ZN5ImGui6PushIDEi(i32 noundef %i.hx)
          to label %bb.bg unwind label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.hy = trunc nsw i64 %indvars.iv214 to i32
  %i.hz = srem i32 %i.hy, %i.gn
  %i.ia = sitofp i32 %i.hz to float
  %i.ib = load <2 x float>, ptr %8, align 8, !tbaa !56
  %i.ic = load <2 x float>, ptr %i.ea, align 4, !tbaa !56
  %i.id = insertelement <2 x float> %i.hu, float %i.ia, i64 0
  %i.ie = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.ic, <2 x float> %i.ib)
  store <2 x float> %i.ie, ptr %11, align 8, !tbaa !56
  invoke void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.bh unwind label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5ImGui28SetNextItemSelectionUserDataEx(i64 noundef %indvars.iv214)
          to label %bb.bi unwind label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  %i.if = load i32, ptr %i.hw, align 4, !tbaa !514
  %i.ig = invoke noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i32 noundef %i.if)
          to label %bb.bj unwind label %bb.bp     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.ih = invoke noundef zeroext i1 @_ZN5ImGui13IsRectVisibleERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %i.cg)
          to label %bb.bk unwind label %bb.bq

bb.bk:                                            ; preds = %bb.bj
  %i.ii = invoke noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.157, i1 noundef zeroext %i.ig, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %i.cg)
          to label %bb.bl unwind label %bb.bq     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
end_hunk_10
begin_hunk_11_@_ZN20ExampleAssetsBrowser4DrawEPKcPb:bb.a

bb.ep:                                            ; preds = %bb.el
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.eq:                                            ; preds = %bb.em
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.er:                                            ; preds = %bb.em, %bb.ef, %bb.ee, %bb.ec, %bb.ea, %bb.dz
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.et

bb.es:                                            ; preds = %.loopexit181, %.loopexit.split-lp182, %bb.en, %bb.ep, %bb.eq, %bb.eo, %bb.bn, %_ZN8ImVectorIjED2Ev.exit, %bb.dh
  %.pn119.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lj, %bb.dh ], [ %i.il, %bb.bn ], [ %i.nw, %bb.ep ], [ %.pn119.pn.pn, %_ZN8ImVectorIjED2Ev.exit ], [ %i.nu, %bb.en ], [ %i.nv, %bb.eo ], [ %i.nx, %bb.eq ], [ %lpad.loopexit183, %.loopexit181 ], [ %lpad.loopexit.split-lp184, %.loopexit.split-lp182 ]
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %.pn119.pn.pn.pn.pn

bb.et:                                            ; preds = %bb.er, %bb.ak
  call void @_ZN5ImGui8EndChildEv()
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !325
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !502
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2350, i32 noundef %i.nz, i32 noundef %i.ob)
  br label %bb.eu

bb.eu:                                            ; preds = %bb.c, %bb.et
  call void @_ZN5ImGui3EndEv()
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN20ExampleAssetsBrowser8AddItemsEi(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !502  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.d, align 8, !tbaa !493
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = add nsw i32 %i.b, %1                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !497
  %.not.i = icmp sgt i32 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %i.e to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !496  ; 2 uses
  %.not6.i = icmp eq ptr %i.l, null
  br i1 %.not6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.a, align 8, !tbaa !498
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr nonnull align 4 %i.l, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !496
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.p)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.j, ptr %i.k, align 8, !tbaa !496
  store i32 %i.e, ptr %i.f, align 4, !tbaa !497
  br label %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit

_ZN8ImVectorI12ExampleAssetE7reserveEi.exit:      ; preds = %bb.c, %bb.f
  %i.q = icmp sgt i32 %1, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.pre = load i32, ptr %i.r, align 8, !tbaa !493
  %.pre6 = load i32, ptr %i.a, align 8, !tbaa !498
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 1, ptr %i.s, align 1, !tbaa !495
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit
  %i.t = phi i32 [ %.pre6, %.lr.ph ], [ %i.at, %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit ] ; 6 uses
  %i.u = phi i32 [ %.pre, %.lr.ph ], [ %i.aw, %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit ] ; 2 uses
  %.05 = phi i32 [ 0, %.lr.ph ], [ %i.au, %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit ]
  %i.v = urem i32 %i.u, 20                        ; 2 uses
  %i.w = icmp samesign ult i32 %i.v, 15
  %i.x = icmp samesign ult i32 %i.v, 18
  %i.y = select i1 %i.x, i64 4294967296, i64 8589934592
  %.sroa.4.0.insert.ext = select i1 %i.w, i64 0, i64 %i.y
  %i.z = load i32, ptr %i.f, align 4, !tbaa !497
  %i.aa = icmp eq i32 %i.t, %i.z
  br i1 %i.aa, label %bb.h, label %._ZN8ImVectorI12ExampleAssetE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI12ExampleAssetE7reserveEi.exit_crit_edge.i: ; preds = %bb.g
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !496
  br label %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.t, 1
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = sdiv i32 %i.t, 2
  %i.ad = add nsw i32 %i.ac, %i.t
  br label %_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i

_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i: ; preds = %bb.i, %bb.h
  %i.ae = phi i32 [ %i.ad, %bb.i ], [ 8, %bb.h ]
  %i.af = tail call noundef i32 @llvm.smax.i32(i32 %i.ae, i32 %i.ab) ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 3
  %i.ai = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ah) ; 3 uses
  %i.aj = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !496 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aj, null
  br i1 %.not6.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !498
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ai, ptr nonnull align 4 %i.aj, i64 %i.am, i1 false)
  %i.an = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !496
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.an)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i
  store ptr %i.ai, ptr %.phi.trans.insert.i, align 8, !tbaa !496
  store i32 %i.af, ptr %i.f, align 4, !tbaa !497
  %.pre3.i = load i32, ptr %i.a, align 8, !tbaa !498
  br label %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit

_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI12ExampleAssetE7reserveEi.exit_crit_edge.i, %bb.k
  %i.ao = phi i32 [ %i.t, %._ZN8ImVectorI12ExampleAssetE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.k ]
  %i.ap = phi ptr [ %.pre.i, %._ZN8ImVectorI12ExampleAssetE7reserveEi.exit_crit_edge.i ], [ %i.ai, %bb.k ]
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  %.sroa.0.0.insert.ext = zext i32 %i.u to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.ar, align 4
  %i.as = load i32, ptr %i.a, align 8, !tbaa !498
  %i.at = add nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 8, !tbaa !498
  %i.au = add nuw nsw i32 %.05, 1                 ; 2 uses
  %i.av = load i32, ptr %i.r, align 8, !tbaa !493
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.r, align 8, !tbaa !493
  %exitcond.not = icmp eq i32 %i.au, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !522
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8ImVectorI12ExampleAssetED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !496  ; 2 uses
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

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf(ptr noundef nonnull align 8 dereferenceable(136) %0, float noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !489
  %i.c = sitofp i32 %i.b to float                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  store float %i.c, ptr %i.d, align 4, !tbaa !506
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i8, ptr %i.e, align 4, !tbaa !491, !range !14, !noundef !15
  %2 = trunc nuw i8 %i.f to i1                    ; 2 uses
  br i1 %2, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fmul nnan float %i.c, 5.000000e-01
  %i.h = tail call float @llvm.floor.f32(float %i.g)
  %i.i = fadd float %1, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.i, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load float, ptr %i.j, align 8, !tbaa !488
  %i.l = tail call float @llvm.floor.f32(float %i.k) ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.l, ptr %i.m, align 4
  %.sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.l, ptr %.sroa_idx9, align 8
  %i.n = fadd float %i.l, %i.c
  %i.o = fdiv float %.0, %i.n
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1) ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i32 %spec.select, ptr %i.q, align 8, !tbaa !507
  %i.r = icmp sgt i32 %i.p, 1
  %or.cond = select i1 %2, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = uitofp nneg i32 %spec.select to float    ; 2 uses
  %i.t = fneg float %i.l
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.s, float %.0)
  %i.v = tail call float @llvm.floor.f32(float %i.u)
  %i.w = fdiv float %i.v, %i.s                    ; 2 uses
  store float %i.w, ptr %i.d, align 4, !tbaa !506
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi float [ %i.w, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.z = load i8, ptr %i.y, align 1, !tbaa !492, !range !14, !noundef !15
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = shl nuw nsw i32 %spec.select, 1         ; 2 uses
  store i32 %i.ab, ptr %i.q, align 8, !tbaa !507
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = phi i32 [ %i.ab, %bb.f ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !502
  %i.af = add i32 %i.ae, -1
  %i.ag = add i32 %i.af, %i.ac
  %i.ah = sdiv i32 %i.ag, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !504
  %i.aj = fadd float %i.l, %i.x                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 108
  store float %i.aj, ptr %i.ak, align 4
  %.sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %i.aj, ptr %.sroa_idx8, align 8
  %i.al = tail call float @llvm.floor.f32(float %i.x)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !490
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fsub float %i.al, %i.ao                 ; 2 uses
  %.inv = fcmp oge float %i.ap, 0.000000e+00
  %i.aq = select i1 %.inv, float %i.ap, float 0.000000e+00
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float %i.aq, ptr %i.ar, align 8, !tbaa !508
  %i.as = fmul float %i.x, 5.000000e-01
  %i.at = tail call float @llvm.floor.f32(float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %i.at, ptr %i.au, align 4, !tbaa !503
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui13IsRectVisibleERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5ImGui22IsItemToggledSelectionEv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN28ExampleSelectionWithDeletion21ApplyDeletionPostLoopI12ExampleAssetEEvP18ImGuiMultiSelectIOR8ImVectorIT_Ei(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.ImVector.30, align 8        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.a = load i32, ptr %2, align 8, !tbaa !498    ; 2 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !325
  %i.c = sub nsw i32 %i.a, %i.b                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.not.i = icmp sgt i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.f)
          to label %.noexc22 unwind label %bb.c   ; 2 uses

.noexc22:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.pre = load i32, ptr %2, align 8, !tbaa !498
  store ptr %i.g, ptr %i.h, align 8, !tbaa !496
  store i32 %i.c, ptr %i.d, align 4, !tbaa !497
  br label %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit

_ZN8ImVectorI12ExampleAssetE7reserveEi.exit:      ; preds = %bb.a, %.noexc22
  %.pre.i39 = phi ptr [ null, %bb.a ], [ %i.g, %.noexc22 ] ; 2 uses
  %i.i = phi i32 [ 0, %bb.a ], [ %i.c, %.noexc22 ] ; 2 uses
  %i.j = phi i32 [ %i.a, %bb.a ], [ %.pre.pre, %.noexc22 ] ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = zext i32 %3 to i64
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre41 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !496
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit
  %i.o = phi ptr [ %.pre.i39, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit ], [ %.pre41, %._crit_edge.loopexit ]
  %i.p = phi i32 [ %i.i, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit ], [ %i.ba, %._crit_edge.loopexit ]
  %i.q = phi i32 [ 0, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit ], [ %i.az, %._crit_edge.loopexit ]
  %.015.lcssa = phi i32 [ -1, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit ], [ %.1, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %i.j, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit ], [ %i.bd, %._crit_edge.loopexit ]
  store i32 %.lcssa, ptr %4, align 8, !tbaa !498
  store i32 %i.q, ptr %2, align 8, !tbaa !498
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !497
  store i32 %i.s, ptr %i.d, align 4, !tbaa !497
  store i32 %i.p, ptr %i.r, align 4, !tbaa !497
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !496  ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !496
  store ptr %i.o, ptr %i.u, align 8, !tbaa !496
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
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !338
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = invoke noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ab)
          to label %_ZN26ImGuiSelectionBasicStorage21GetStorageIdFromIndexEi.exit unwind label %bb.h, !inline_history !381

_ZN26ImGuiSelectionBasicStorage21GetStorageIdFromIndexEi.exit: ; preds = %bb.d
  %i.ad = invoke noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ac)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN26ImGuiSelectionBasicStorage21GetStorageIdFromIndexEi.exit
  br i1 %i.ad, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !496
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = icmp eq i32 %i.x, %i.z
  br i1 %i.ag, label %_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i, label %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit

_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i: ; preds = %bb.f
  %i.ah = add nuw nsw i32 %i.x, 1
  %.not.i.i = icmp eq i32 %i.x, 0
  %i.ai = lshr i32 %i.x, 1
  %i.aj = add nsw i32 %i.ai, %i.x
  %i.ak = select i1 %.not.i.i, i32 8, i32 %i.aj
  %i.al = tail call noundef i32 @llvm.smax.i32(i32 %i.ak, i32 %i.ah) ; 3 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.an)
          to label %.noexc24 unwind label %bb.h   ; 3 uses

.noexc24:                                         ; preds = %_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i
  %.not6.i.i = icmp eq ptr %i.y, null
  br i1 %.not6.i.i, label %.noexc25, label %bb.g

bb.g:                                             ; preds = %.noexc24
  %i.ap = zext nneg i32 %i.x to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ao, ptr nonnull align 4 %i.y, i64 %i.aq, i1 false)
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.y)
          to label %..noexc25_crit_edge unwind label %bb.h

..noexc25_crit_edge:                              ; preds = %bb.g
  %.pre3.i.pre = load i32, ptr %4, align 8, !tbaa !498
  br label %.noexc25

.noexc25:                                         ; preds = %..noexc25_crit_edge, %.noexc24
  %.pre3.i = phi i32 [ %.pre3.i.pre, %..noexc25_crit_edge ], [ %i.x, %.noexc24 ]
  store ptr %i.ao, ptr %.phi.trans.insert.i, align 8, !tbaa !496
  store i32 %i.al, ptr %i.d, align 4, !tbaa !497
  br label %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit

_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit: ; preds = %bb.f, %.noexc25
  %.pre.i38 = phi ptr [ %i.ao, %.noexc25 ], [ %i.y, %bb.f ] ; 2 uses
  %i.ar = phi i32 [ %i.al, %.noexc25 ], [ %i.z, %bb.f ]
  %i.as = phi i32 [ %.pre3.i, %.noexc25 ], [ %i.x, %bb.f ]
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %.pre.i38, i64 %i.at
  %i.av = load i64, ptr %i.af, align 4
  store i64 %i.av, ptr %i.au, align 4
  %i.aw = load i32, ptr %4, align 8, !tbaa !498
  %i.ax = add nsw i32 %i.aw, 1                    ; 2 uses
  store i32 %i.ax, ptr %4, align 8, !tbaa !498
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i, %bb.d, %_ZN26ImGuiSelectionBasicStorage21GetStorageIdFromIndexEi.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.q
end_hunk_11

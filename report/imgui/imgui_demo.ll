Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_demo?download=true
inline.NumInlined: 1182
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 133
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

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.he, %bb.gc, %bb.cw, %bb.cq, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.lp, %bb.cq ], [ %i.lw, %bb.cw ], [ %i.alv, %bb.gc ], [ %i.anc, %bb.he ], [ %lpad.loopexit.split-lp244, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
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
end_hunk_0
begin_hunk_1_@_ZN5ImGui14ShowDemoWindowEPb:bb.a
  call void @_ZN13ExampleAppLog4DrawEPKcPb(ptr noundef nonnull align 8 dereferenceable(313) @_ZZL17ShowExampleAppLogPbE3log, ptr noundef nonnull @.str.2156, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 6))
  br label %bb.gd

bb.gd:                                            ; preds = %_ZL17ShowExampleAppLogPb.exit, %bb.fw
  %i.alw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 7), align 1, !tbaa !297, !range !19, !noundef !20
  %i.alx = trunc nuw i8 %i.alw to i1
  br i1 %i.alx, label %bb.ge, label %bb.gw

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #30
  store <2 x float> <float 5.000000e+02, float 4.400000e+02>, ptr %89, align 8, !tbaa !46
  call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %89, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #30
  %i.aly = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2171, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 7), i32 noundef 1024)
  br i1 %i.aly, label %bb.gf, label %_ZL20ShowExampleAppLayoutPb.exit

bb.gf:                                            ; preds = %bb.ge
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9612, ptr noundef nonnull @.str.2172)
  %i.alz = call noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv()
  br i1 %i.alz, label %bb.gg, label %bb.gl

bb.gg:                                            ; preds = %bb.gf
  %i.ama = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.1530, i1 noundef zeroext true)
  br i1 %i.ama, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %bb.gg
  %i.amb = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.907, ptr noundef nonnull @.str.2173, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.amb, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 7), align 1, !tbaa !35
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
  %i.amc = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.2174, ptr noundef nonnull align 4 dereferenceable(8) %90, i32 noundef 5, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #30
  br label %bb.gn

bb.gm:                                            ; preds = %bb.gp
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui10BeginGroupEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #30
  %i.amd = call noundef float @_ZN5ImGui25GetFrameHeightWithSpacingEv()
  %i.ame = fneg float %i.amd
  store float 0.000000e+00, ptr %92, align 4, !tbaa !44
  %i.amf = getelementptr inbounds nuw i8, ptr %92, i64 4
  store float %i.ame, ptr %i.amf, align 4, !tbaa !45
  %i.amg = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.2176, ptr noundef nonnull align 4 dereferenceable(8) %92, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #30
  %i.amh = load i32, ptr @_ZZL20ShowExampleAppLayoutPbE8selected, align 4, !tbaa !51
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2177, i32 noundef %i.amh)
  call void @_ZN5ImGui9SeparatorEv()
  %i.ami = call noundef zeroext i1 @_ZN5ImGui11BeginTabBarEPKci(ptr noundef nonnull @.str.2178, i32 noundef 0)
  br i1 %i.ami, label %bb.gq, label %bb.gv

bb.gn:                                            ; preds = %bb.gp, %bb.gl
  %.01.i = phi i32 [ 0, %bb.gl ], [ %i.amn, %bb.gp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  %i.amj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.2175, i32 noundef %.01.i) #30 ; 0 uses
  %i.amk = load i32, ptr @_ZZL20ShowExampleAppLayoutPbE8selected, align 4, !tbaa !51
  %i.aml = icmp eq i32 %i.amk, %.01.i
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #30
  store <2 x float> zeroinitializer, ptr %91, align 8, !tbaa !46
  %i.amm = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.h, i1 noundef zeroext %i.aml, i32 noundef 64, ptr noundef nonnull align 4 dereferenceable(8) %91)
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #30
  br i1 %i.amm, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  store i32 %.01.i, ptr @_ZZL20ShowExampleAppLayoutPbE8selected, align 4, !tbaa !51
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  %i.amn = add nuw nsw i32 %.01.i, 1              ; 2 uses
  %exitcond.not.i85 = icmp eq i32 %i.amn, 100
  br i1 %exitcond.not.i85, label %bb.gm, label %bb.gn, !llvm.loop !273

bb.gq:                                            ; preds = %bb.gm
  %i.amo = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull @.str.1896, ptr noundef null, i32 noundef 0)
  br i1 %i.amo, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  call void (ptr, ...) @_ZN5ImGui11TextWrappedEPKcz(ptr noundef nonnull @.str.2179)
  call void @_ZN5ImGui10EndTabItemEv()
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.amp = call noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef nonnull @.str.210, ptr noundef null, i32 noundef 0)
  br i1 %i.amp, label %bb.gt, label %bb.gu

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
  %i.amq = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.307, ptr noundef nonnull align 4 dereferenceable(8) %93) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #30
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #30
  store <2 x float> zeroinitializer, ptr %94, align 8, !tbaa !46
  %i.amr = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.306, ptr noundef nonnull align 4 dereferenceable(8) %94) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #30
  call void @_ZN5ImGui8EndGroupEv()
  br label %_ZL20ShowExampleAppLayoutPb.exit

_ZL20ShowExampleAppLayoutPb.exit:                 ; preds = %bb.ge, %bb.gv
  call void @_ZN5ImGui3EndEv()
  br label %bb.gw

bb.gw:                                            ; preds = %_ZL20ShowExampleAppLayoutPb.exit, %bb.gd
  %i.ams = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 8), align 8, !tbaa !298, !range !19, !noundef !20
  %i.amt = trunc nuw i8 %i.ams to i1
  br i1 %i.amt, label %bb.gx, label %bb.hg

bb.gx:                                            ; preds = %bb.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #30
  store <2 x float> <float 4.300000e+02, float 4.500000e+02>, ptr %88, align 8, !tbaa !46
  call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %88, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #30
  %i.amu = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2181, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 8), i32 noundef 0)
  br i1 %i.amu, label %bb.gy, label %_ZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowData.exit

bb.gy:                                            ; preds = %bb.gx
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9908, ptr noundef nonnull @.str.2182)
  %i.amv = load atomic i8, ptr @_ZGVZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor acquire, align 8
  %i.amw = icmp eq i8 %i.amv, 0
  br i1 %i.amw, label %bb.gz, label %bb.hc, !prof !14

bb.gz:                                            ; preds = %bb.gy
  %i.amx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor) #30
  %.not.i86 = icmp eq i32 %i.amx, 0
  br i1 %.not.i86, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZN15ImGuiTextFilterC1EPKc(ptr noundef nonnull align 8 dereferenceable(276) @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, ptr noundef nonnull @.str.157)
          to label %bb.hb unwind label %bb.he

bb.hb:                                            ; preds = %bb.ha
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, i64 280), align 8, !tbaa !106
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, i64 288), align 8, !tbaa !107
  %i.amy = call i32 @__cxa_atexit(ptr nonnull @_ZN24ExampleAppPropertyEditorD2Ev, ptr nonnull @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor) #30
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.gz, %bb.gy
  %i.amz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 32), align 8, !tbaa !108 ; 2 uses
  %i.ana = icmp eq ptr %i.amz, null
  br i1 %i.ana, label %bb.hd, label %bb.hf

bb.hd:                                            ; preds = %bb.hc
  %i.anb = call fastcc noundef ptr @_ZL26ExampleTree_CreateDemoTreev() ; 2 uses
  store ptr %i.anb, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 32), align 8, !tbaa !108
  br label %bb.hf

bb.he:                                            ; preds = %bb.ha
  %i.anc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor) #30
  br label %common.resume

bb.hf:                                            ; preds = %bb.hd, %bb.hc
  %i.and = phi ptr [ %i.anb, %bb.hd ], [ %i.amz, %bb.hc ]
  call void @_ZN24ExampleAppPropertyEditor4DrawEP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) @_ZZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowDataE15property_editor, ptr noundef %i.and)
  br label %_ZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowData.exit

_ZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowData.exit: ; preds = %bb.gx, %bb.hf
  call void @_ZN5ImGui3EndEv()
  br label %bb.hg

bb.hg:                                            ; preds = %_ZL28ShowExampleAppPropertyEditorPbP19ImGuiDemoWindowData.exit, %bb.gw
  %i.ane = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 9), align 1, !tbaa !299, !range !19, !noundef !20
  %i.anf = trunc nuw i8 %i.ane to i1
  br i1 %i.anf, label %bb.hh, label %bb.if

bb.hh:                                            ; preds = %bb.hg
  %i.ang = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.anh = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51 ; 2 uses
  %i.ani = icmp sgt i32 %i.anh, -1
  br i1 %i.ani, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.anj = call noundef ptr @_ZN5ImGui15GetMainViewportEv() ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 32
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anj, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #30
  %i.anm = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %173 = load <2 x float>, ptr %i.ank, align 8, !tbaa !46 ; 2 uses
  %174 = load <2 x float>, ptr %i.anl, align 8, !tbaa !46
  %i.ann = insertelement <2 x i32> poison, i32 %i.anm, i64 0
  %i.ano = shufflevector <2 x i32> %i.ann, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.anp = and <2 x i32> %i.ano, <i32 1, i32 2>
  %i.anq = icmp eq <2 x i32> %i.anp, zeroinitializer ; 2 uses
  %175 = fadd <2 x float> %173, %174
  %176 = fadd <2 x float> %175, splat (float -1.000000e+01)
  %177 = fadd <2 x float> %173, splat (float 1.000000e+01)
  %178 = select <2 x i1> %i.anq, <2 x float> %177, <2 x float> %176
  store <2 x float> %178, ptr %84, align 8, !tbaa !46
  %i.anr = select <2 x i1> %i.anq, <2 x float> zeroinitializer, <2 x float> splat (float 1.000000e+00)
  store <2 x float> %i.anr, ptr %85, align 8, !tbaa !46
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %84, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %85)
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #30
  br label %bb.hl

bb.hj:                                            ; preds = %bb.hh
  %i.ans = icmp eq i32 %i.anh, -2
  br i1 %i.ans, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #30
  %i.ant = call noundef ptr @_ZN5ImGui15GetMainViewportEv() ; 2 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ant, i64 16
  %i.anw = load <2 x float>, ptr %i.anu, align 8, !tbaa !46
  %i.anx = load <2 x float>, ptr %i.anv, align 8, !tbaa !46
  %i.any = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.anx, <2 x float> splat (float 5.000000e-01), <2 x float> %i.anw)
  store <2 x float> %i.any, ptr %86, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #30
  store <2 x float> splat (float 5.000000e-01), ptr %87, align 8, !tbaa !46
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %86, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %87)
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #30
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj, %bb.hi
  %.0.i = phi i32 [ 201071, %bb.hi ], [ 201071, %bb.hk ], [ 201067, %bb.hj ]
  call void @_ZN5ImGui20SetNextWindowBgAlphaEf(float noundef 3.500000e-01)
  %i.anz = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2231, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 9), i32 noundef %.0.i)
  br i1 %i.anz, label %bb.hm, label %_ZL27ShowExampleAppSimpleOverlayPb.exit

bb.hm:                                            ; preds = %bb.hl
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 10138, ptr noundef nonnull @.str.2232)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2233)
  call void @_ZN5ImGui9SeparatorEv()
  %i.aoa = call noundef zeroext i1 @_ZN5ImGui15IsMousePosValidEPK6ImVec2(ptr noundef null)
  br i1 %i.aoa, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.aob = getelementptr inbounds nuw i8, ptr %i.ang, i64 232
  %i.aoc = load <2 x float>, ptr %i.aob, align 8, !tbaa !46
  %i.aod = fpext <2 x float> %i.aoc to <2 x double> ; 2 uses
  %i.aoe = extractelement <2 x double> %i.aod, i64 0
  %i.aof = extractelement <2 x double> %i.aod, i64 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2234, double noundef %i.aoe, double noundef %i.aof)
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2235)
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.aog = call noundef zeroext i1 @_ZN5ImGui23BeginPopupContextWindowEPKci(ptr noundef null, i32 noundef 0)
  br i1 %i.aog, label %bb.hq, label %_ZL27ShowExampleAppSimpleOverlayPb.exit

bb.hq:                                            ; preds = %bb.hp
  %i.aoh = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %i.aoi = icmp eq i32 %i.aoh, -1
  %i.aoj = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1217, ptr noundef null, i1 noundef zeroext %i.aoi, i1 noundef zeroext true)
  br i1 %i.aoj, label %bb.hr, label %._crit_edge.i87

._crit_edge.i87:                                  ; preds = %bb.hq
  %.pre.i88 = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %i.aok = icmp eq i32 %.pre.i88, -2
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  store i32 -1, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %._crit_edge.i87
  %i.aol = phi i1 [ %i.aok, %._crit_edge.i87 ], [ false, %bb.hr ]
  %i.aom = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1446, ptr noundef null, i1 noundef zeroext %i.aol, i1 noundef zeroext true)
  br i1 %i.aom, label %bb.ht, label %._crit_edge1.i

._crit_edge1.i:                                   ; preds = %bb.hs
  %.pre2.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %i.aon = icmp eq i32 %.pre2.i, 0
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store i32 -2, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %._crit_edge1.i
  %i.aoo = phi i1 [ %i.aon, %._crit_edge1.i ], [ false, %bb.ht ]
  %i.aop = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2236, ptr noundef null, i1 noundef zeroext %i.aoo, i1 noundef zeroext true)
  br i1 %i.aop, label %bb.hv, label %._crit_edge3.i

._crit_edge3.i:                                   ; preds = %bb.hu
  %.pre4.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %i.aoq = icmp eq i32 %.pre4.i, 1
  br label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  store i32 0, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %._crit_edge3.i
  %i.aor = phi i1 [ %i.aoq, %._crit_edge3.i ], [ false, %bb.hv ]
  %i.aos = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2237, ptr noundef null, i1 noundef zeroext %i.aor, i1 noundef zeroext true)
  br i1 %i.aos, label %bb.hx, label %._crit_edge5.i

._crit_edge5.i:                                   ; preds = %bb.hw
  %.pre6.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %i.aot = icmp eq i32 %.pre6.i, 2
  br label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  store i32 1, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %._crit_edge5.i
  %i.aou = phi i1 [ %i.aot, %._crit_edge5.i ], [ false, %bb.hx ]
  %i.aov = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2238, ptr noundef null, i1 noundef zeroext %i.aou, i1 noundef zeroext true)
  br i1 %i.aov, label %bb.hz, label %._crit_edge7.i

._crit_edge7.i:                                   ; preds = %bb.hy
  %.pre8.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  %i.aow = icmp eq i32 %.pre8.i, 3
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  store i32 2, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %._crit_edge7.i
  %i.aox = phi i1 [ %i.aow, %._crit_edge7.i ], [ false, %bb.hz ]
  %i.aoy = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2239, ptr noundef null, i1 noundef zeroext %i.aox, i1 noundef zeroext true)
  br i1 %i.aoy, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  store i32 3, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE8location, align 4, !tbaa !51
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.aoz = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.907, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.aoz, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 9), align 1, !tbaa !35
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  call void @_ZN5ImGui8EndPopupEv()
  br label %_ZL27ShowExampleAppSimpleOverlayPb.exit

_ZL27ShowExampleAppSimpleOverlayPb.exit:          ; preds = %bb.hl, %bb.hp, %bb.ie
  call void @_ZN5ImGui3EndEv()
  br label %bb.if

bb.if:                                            ; preds = %_ZL27ShowExampleAppSimpleOverlayPb.exit, %bb.hg
  %i.apa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 10), align 2, !tbaa !300, !range !19, !noundef !20
  %i.apb = trunc nuw i8 %i.apa to i1
  br i1 %i.apb, label %bb.ig, label %bb.ii

bb.ig:                                            ; preds = %bb.if
  %i.apc = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.2205, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 10), i32 noundef 64)
  br i1 %i.apc, label %bb.ih, label %_ZL24ShowExampleAppAutoResizePb.exit

bb.ih:                                            ; preds = %bb.ig
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 9992, ptr noundef nonnull @.str.2206)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.2207, ptr noundef null)
  %i.apd = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.2208, ptr noundef nonnull @_ZZL24ShowExampleAppAutoResizePbE5lines, i32 noundef 1, i32 noundef 20, ptr noundef nonnull @.str.435, i32 noundef 0) ; 0 uses
  %i.ape = load i32, ptr @_ZZL24ShowExampleAppAutoResizePbE5lines, align 4, !tbaa !51
  %i.apf = icmp sgt i32 %i.ape, 0
  br i1 %i.apf, label %.lr.ph.i93, label %_ZL24ShowExampleAppAutoResizePb.exit

.lr.ph.i93:                                       ; preds = %bb.ih, %.lr.ph.i93
  %.01.i94 = phi i32 [ %i.aph, %.lr.ph.i93 ], [ 0, %bb.ih ] ; 3 uses
  %i.apg = shl nuw nsw i32 %.01.i94, 2
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2209, i32 noundef %i.apg, ptr noundef nonnull @.str.157, i32 noundef %.01.i94)
  %i.aph = add nuw nsw i32 %.01.i94, 1            ; 2 uses
  %i.api = load i32, ptr @_ZZL24ShowExampleAppAutoResizePbE5lines, align 4, !tbaa !51
  %i.apj = icmp slt i32 %i.aph, %i.api
  br i1 %i.apj, label %.lr.ph.i93, label %_ZL24ShowExampleAppAutoResizePb.exit, !llvm.loop !274

_ZL24ShowExampleAppAutoResizePb.exit:             ; preds = %.lr.ph.i93, %bb.ig, %bb.ih
  call void @_ZN5ImGui3EndEv()
  br label %bb.ii

bb.ii:                                            ; preds = %_ZL24ShowExampleAppAutoResizePb.exit, %bb.if
  %i.apk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 11), align 1, !tbaa !301, !range !19, !noundef !20
  %i.apl = trunc nuw i8 %i.apk to i1
  br i1 %i.apl, label %bb.ij, label %bb.jp

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, ptr noundef nonnull align 16 dereferenceable(72) @__const._ZL31ShowExampleAppConstrainedResizePb.test_desc, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  store float f0x3FE38E39, ptr %i.f, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  store float 1.000000e+02, ptr %i.g, align 4, !tbaa !46
  %i.apm = load i32, ptr @_ZZL31ShowExampleAppConstrainedResizePbE4type, align 4, !tbaa !51 ; 2 uses
  %i.apn = icmp eq i32 %i.apm, 0
  br i1 %i.apn, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #30
end_hunk_1
begin_hunk_2_@_ZN5ImGui14ShowDemoWindowEPb:bb.a
  %i.bvr = zext i1 %i.bvq to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2104, i32 noundef %i.bvr)
  %i.bvs = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 1, float noundef 2.000000e+01)
  %i.bvt = zext i1 %i.bvs to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2105, i32 noundef %i.bvt)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2102, i32 noundef 2)
  %i.bvu = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 2, float noundef -1.000000e+00)
  %i.bvv = zext i1 %i.bvu to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2103, i32 noundef %i.bvv)
  %i.bvw = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 2, float noundef 0.000000e+00)
  %i.bvx = zext i1 %i.bvw to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2104, i32 noundef %i.bvx)
  %i.bvy = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 2, float noundef 2.000000e+01)
  %i.bvz = zext i1 %i.bvy to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2105, i32 noundef %i.bvz)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  store <2 x float> zeroinitializer, ptr %16, align 8, !tbaa !46
  %i.bwa = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.2106, ptr noundef nonnull align 4 dereferenceable(8) %16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.bwb = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.bwb, label %bb.vx, label %bb.vy

bb.vx:                                            ; preds = %bb.vw
  %i.bwc = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv()
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bla, i64 2760
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bla, i64 232
  %i.bwf = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 22, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.bwc, ptr noundef nonnull align 4 dereferenceable(8) %i.bwd, ptr noundef nonnull align 4 dereferenceable(8) %i.bwe, i32 noundef %i.bwf, float noundef 4.000000e+00)
  br label %bb.vy

bb.vy:                                            ; preds = %bb.vx, %bb.vw
  %i.bwg = call <2 x float> @_ZN5ImGui17GetMouseDragDeltaEif(i32 noundef 0, float noundef 0.000000e+00) ; 2 uses
  %i.bwh = call <2 x float> @_ZN5ImGui17GetMouseDragDeltaEif(i32 noundef 0, float noundef -1.000000e+00) ; 2 uses
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bla, i64 212
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %i.bwh, i64 0
  %i.bwj = fpext float %.sroa.09.0.vec.extract.i to double
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %i.bwh, i64 1
  %i.bwk = fpext float %.sroa.09.4.vec.extract.i to double
  %.sroa.010.0.vec.extract.i = extractelement <2 x float> %i.bwg, i64 0
  %i.bwl = fpext float %.sroa.010.0.vec.extract.i to double
  %.sroa.010.4.vec.extract.i = extractelement <2 x float> %i.bwg, i64 1
  %i.bwm = fpext float %.sroa.010.4.vec.extract.i to double
  %i.bwn = load <2 x float>, ptr %i.bwi, align 4, !tbaa !46
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2107)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2108, double noundef %i.bwj, double noundef %i.bwk)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2109, double noundef %i.bwl, double noundef %i.bwm)
  %i.bwo = fpext <2 x float> %i.bwn to <2 x double> ; 2 uses
  %i.bwp = extractelement <2 x double> %i.bwo, i64 0
  %i.bwq = extractelement <2 x double> %i.bwo, i64 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2110, double noundef %i.bwp, double noundef %i.bwq)
  call void @_ZN5ImGui7TreePopEv()
  br label %_ZL16DemoWindowInputsv.exit

_ZL16DemoWindowInputsv.exit:                      ; preds = %_ZL16DemoWindowPopupsv.exit, %bb.vv, %bb.vy
  call void @_ZN5ImGui12PopItemWidthEv()
  br label %bb.vz

bb.vz:                                            ; preds = %bb.lb, %_ZL16DemoWindowInputsv.exit
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
  %i.i = load i8, ptr @_ZZN5ImGui15ShowAboutWindowEPbE16show_config_info, align 1, !tbaa !35, !range !19, !noundef !20
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !326  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  %i.x = select i1 %.not, ptr @.str.160, ptr %i.w
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.159, ptr noundef nonnull %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !327  ; 2 uses
  %.not57 = icmp eq ptr %i.z, null
  %i.aa = select i1 %.not57, ptr @.str.160, ptr %i.z
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.161, ptr noundef nonnull %i.aa)
  %i.ab = load i32, ptr %i.k, align 8, !tbaa !121
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.162, i32 noundef %i.ab)
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !121 ; 2 uses
  %3 = and i32 %i.ac, 1
  %.not58 = icmp eq i32 %3, 0
  br i1 %.not58, label %bb.i, label %bb.h

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
  %i.am = load i8, ptr %i.al, align 1, !tbaa !328, !range !19, !noundef !20
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.37)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !329, !range !19, !noundef !20
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.67)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 74
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !330, !range !19, !noundef !20
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.41)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 75
  %i.av = load i8, ptr %i.au, align 1, !tbaa !331, !range !19, !noundef !20
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.43)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 82
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !332, !range !19, !noundef !20
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.61)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 89
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !333, !range !19, !noundef !20
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.53)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 90
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !334, !range !19, !noundef !20
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.55)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !335 ; 2 uses
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
  %4 = and i32 %i.bm, 1
  %.not63 = icmp eq i32 %4, 0
  br i1 %.not63, label %bb.ai, label %bb.ah

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
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !336
  %i.bz = load i32, ptr %i.bw, align 8, !tbaa !337
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !100 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !343
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !344
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.175, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.cd, i32 noundef %i.cf)
  %i.cg = load ptr, ptr %i.bv, align 8, !tbaa !84
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !345 ; 2 uses
  %.not68 = icmp eq ptr %i.ci, null
  %spec.select = select i1 %.not68, ptr @.str.160, ptr %i.ci
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.176, ptr noundef nonnull %spec.select)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !346
  %i.cl = fpext float %i.ck to double
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !347
  %i.co = fpext float %i.cn to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.177, double noundef %i.cl, double noundef %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !348
  %i.cr = fpext float %i.cq to double
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !349
  %i.cu = fpext float %i.ct to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.178, double noundef %i.cr, double noundef %i.cu)
  call void @_ZN5ImGui9SeparatorEv()
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !350
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
  %i.df = load float, ptr %i.de, align 4, !tbaa !351
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1328) @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style, ptr noundef nonnull align 4 dereferenceable(1328) %i.e, i64 1328, i1 false), !tbaa.struct !356
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
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 20), align 4, !tbaa !377, !range !19, !noundef !20
  %i.cq = trunc nuw i8 %i.cp to i1                ; 3 uses
  %i.cr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 21), align 1, !tbaa !378, !range !19, !noundef !20
  %i.cs = trunc nuw i8 %i.cr to i1                ; 2 uses
  br i1 %i.cq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.cs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 24), align 8, !tbaa !379
  %i.cu = and i32 %i.ct, 128
  %i.cv = icmp ne i32 %i.cu, 0
  tail call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 128, i1 noundef zeroext %i.cv)
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE9demo_data, i64 24), align 8, !tbaa !379
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
  %84 = and i32 %i.dc, 1
  %.not.i = icmp eq i32 %84, 0
  br i1 %.not.i, label %.peel.next.i, label %bb.j

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
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.k, !llvm.loop !368

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
  %i.lf = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !35, !range !19, !noundef !20
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
  br i1 %exitcond283.not, label %.loopexit245, label %bb.ca, !llvm.loop !391

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
  br i1 %exitcond285.not, label %bb.bp, label %bb.br, !llvm.loop !392

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
  %i.md = load float, ptr %i.kj, align 4, !tbaa !398
  %i.me = fadd float %i.mc, %i.md
  %i.mf = load float, ptr %i.kk, align 4, !tbaa !126
  %i.mg = call float @llvm.fmuladd.f32(float %i.mf, float 2.000000e+00, float %i.me)
  %i.mh = load i8, ptr @_ZZL16DemoWindowLayoutvE24enable_extra_decorations, align 1, !tbaa !35, !range !19, !noundef !20
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
  %.pre = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !35, !range !19
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
  %i.na = load i8, ptr @_ZZL16DemoWindowLayoutvE12enable_track, align 1, !tbaa !35, !range !19, !noundef !20
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
  br i1 %exitcond286.not, label %.loopexit, label %.peel.next288, !llvm.loop !393

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
  br i1 %exitcond293.not, label %bb.ce, label %bb.cg, !llvm.loop !394

._crit_edge:                                      ; preds = %.loopexit298, %_ZL10HelpMarkerPKc.exit211
  %i.nl = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.nm = call noundef float @_ZN5ImGui13GetScrollMaxXEv()
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  %i.nn = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1072) ; 0 uses
  %i.no = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.no, label %bb.cv, label %bb.cw

bb.cr:                                            ; preds = %.lr.ph268, %.loopexit298
  %.0170267 = phi i32 [ 0, %.lr.ph268 ], [ %i.oj, %.loopexit298 ] ; 6 uses
  %72 = and i32 %.0170267, 1
  %.not184 = icmp eq i32 %72, 0
  %.v = select i1 %.not184, i32 3, i32 9
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
  br i1 %exitcond294.peel.not, label %.loopexit298, label %.peel.next296

.loopexit298:                                     ; preds = %bb.cu, %bb.cr
  %i.oj = add nuw nsw i32 %.0170267, 1            ; 2 uses
  %i.ok = load i32, ptr @_ZZL16DemoWindowLayoutvE5lines, align 4, !tbaa !51
  %i.ol = icmp slt i32 %i.oj, %i.ok
  br i1 %i.ol, label %bb.cr, label %._crit_edge, !llvm.loop !395

.peel.next296:                                    ; preds = %bb.cr, %bb.cu
  %.0169266 = phi i32 [ %i.pk, %bb.cu ], [ 1, %bb.cr ] ; 8 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.om = add nuw nsw i32 %.0169266, %i.nr
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.om)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  %i.on = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.435, i32 noundef %.0169266) #30 ; 0 uses
  %i.oo = urem i32 %.0169266, 15
  %.not186 = icmp eq i32 %i.oo, 0
  br i1 %.not186, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %.peel.next296
  %i.op = urem i32 %.0169266, 3
  %.not187 = icmp eq i32 %i.op, 0
  br i1 %.not187, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.oq = urem i32 %.0169266, 5
  %.not188 = icmp eq i32 %i.oq, 0
  %i.or = select i1 %.not188, ptr @.str.1463, ptr %i.m
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %.peel.next296
  %i.os = phi ptr [ @.str.1461, %.peel.next296 ], [ %i.or, %bb.ct ], [ @.str.1462, %bb.cs ]
  %i.ot = uitofp nneg i32 %.0169266 to float
  %i.ou = fmul nnan float %i.ot, 5.000000e-02     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ou, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.ov = load float, ptr %i.g, align 4, !tbaa !46
  %i.ow = load float, ptr %i.h, align 4, !tbaa !46
  %i.ox = load float, ptr %i.i, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.ov, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ow, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ox, i64 0
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
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ou, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.oy = load float, ptr %i.d, align 4, !tbaa !46
  %i.oz = load float, ptr %i.e, align 4, !tbaa !46
  %i.pa = load float, ptr %i.f, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i214 = insertelement <2 x float> poison, float %i.oy, i64 0
  %.sroa.0.4.vec.insert.i215 = insertelement <2 x float> %.sroa.0.0.vec.insert.i214, float %i.oz, i64 1
  %.sroa.3.12.vec.insert.i217 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pa, i64 0
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
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ou, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.pb = load float, ptr %i.a, align 4, !tbaa !46
  %i.pc = load float, ptr %i.b, align 4, !tbaa !46
  %i.pd = load float, ptr %i.c, align 4, !tbaa !46
  %.sroa.0.0.vec.insert.i225 = insertelement <2 x float> poison, float %i.pb, i64 0
  %.sroa.0.4.vec.insert.i226 = insertelement <2 x float> %.sroa.0.0.vec.insert.i225, float %i.pc, i64 1
  %.sroa.3.12.vec.insert.i228 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.pd, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store <2 x float> %.sroa.0.4.vec.insert.i226, ptr %50, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i228, ptr %i.ma, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 24, ptr noundef nonnull align 4 dereferenceable(16) %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #30
  %i.pe = add nuw nsw i32 %.0169266, %.0170267
  %i.pf = uitofp nneg i32 %i.pe to float
  %i.pg = call float @sinf(float noundef %i.pf) #30
  %i.ph = fmul float %i.nq, %i.pg
  %.scalar = call float @llvm.fmuladd.f32(float %i.ph, float 5.000000e-01, float %i.nq)
  %i.pi = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  store <2 x float> %i.pi, ptr %51, align 8, !tbaa !46
  %i.pj = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef %i.os, ptr noundef nonnull align 4 dereferenceable(8) %51) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #30
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #30
  %i.pk = add nuw i32 %.0169266, 1                ; 2 uses
  %exitcond294.not = icmp eq i32 %i.nt, %i.pk
  br i1 %exitcond294.not, label %.loopexit298, label %.peel.next296, !llvm.loop !396

bb.cv:                                            ; preds = %._crit_edge
  %i.pl = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.pn = load float, ptr %i.pm, align 8, !tbaa !138
  %i.po = fmul float %i.pn, -1.000000e+03
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge
  %.0166 = phi float [ %i.po, %bb.cv ], [ 0.000000e+00, %._crit_edge ]
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1464)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.pp = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.1069) ; 0 uses
  %i.pq = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.pq, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.pr = call noundef nonnull align 8 dereferenceable(3048) ptr @_ZN5ImGui5GetIOEv()
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = load float, ptr %i.ps, align 8, !tbaa !138
end_hunk_4
begin_hunk_5_@_ZL16DemoWindowTablesv:bb.a
  %i.xp = sitofp i32 %i.xo to float
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 14, float noundef %i.xp)
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.1695)
  %i.xq = fmul float %.sroa.0418.0.vec.extract, 3.000000e+01
  call void @_ZN5ImGui13PushItemWidthEf(float noundef %i.xq)
  %i.xr = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1670, ptr noundef nonnull @_ZZL16DemoWindowTablesvE6flags2_0, i32 noundef 16777216) ; 0 uses
  %i.xs = call noundef zeroext i1 @_ZN5ImGui9DragFloatEPKcPffffS1_i(ptr noundef nonnull @.str.1696, ptr noundef nonnull @_ZZL16DemoWindowTablesvE11inner_width, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef f0x7F7FFFFF, ptr noundef nonnull @.str.1697, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui12PopItemWidthEv()
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  %i.xt = load i32, ptr @_ZZL16DemoWindowTablesvE6flags2_0, align 4, !tbaa !51
  %i.xu = load float, ptr @_ZZL16DemoWindowTablesvE11inner_width, align 4, !tbaa !46
  %i.xv = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1590, i32 noundef 7, i32 noundef %i.xt, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.xu)
  br i1 %i.xv, label %.preheader693, label %bb.fy

bb.fx:                                            ; preds = %.preheader693
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.fy

.preheader693:                                    ; preds = %_ZL10HelpMarkerPKc.exit572, %.preheader693
  %.0479747 = phi i32 [ %i.xz, %.preheader693 ], [ 0, %_ZL10HelpMarkerPKc.exit572 ]
  %i.xw = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.xx = call noundef i32 @_ZN5ImGui19TableGetColumnIndexEv()
  %i.xy = call noundef i32 @_ZN5ImGui16TableGetRowIndexEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1692, i32 noundef %i.xx, i32 noundef %i.xy)
  %i.xz = add nuw nsw i32 %.0479747, 1            ; 2 uses
  %exitcond845.not = icmp eq i32 %i.xz, 140
  br i1 %exitcond845.not, label %bb.fx, label %.preheader693, !llvm.loop !405

bb.fy:                                            ; preds = %bb.fx, %_ZL10HelpMarkerPKc.exit572
  call void @_ZN5ImGui7TreePopEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fd
  br i1 %.not521.demorgan, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %not.649 = xor i1 %i.o, true
  call void @_ZN5ImGui15SetNextItemOpenEbi(i1 noundef zeroext %not.649, i32 noundef 0)
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %i.ya = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1698)
  br i1 %i.ya, label %bb.gc, label %bb.gr

bb.gc:                                            ; preds = %bb.gb
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 6593, ptr noundef nonnull @.str.1699)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  store <2 x float> zeroinitializer, ptr %33, align 8, !tbaa !46
  %i.yb = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1700, i32 noundef 3, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %33, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  br i1 %i.yb, label %bb.gd, label %bb.gn

bb.gd:                                            ; preds = %bb.gc
  %i.yc = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv() ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 80
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !128
  %i.yf = fmul float %i.ye, 6.000000e-01
  %i.yg = fptosi float %i.yf to i32
  %i.yh = sitofp i32 %i.yg to float
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 11, float noundef %i.yh)
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yc, i64 96
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !132
  %i.yk = fmul float %i.yj, 6.000000e-01
  %i.yl = fptosi float %i.yk to i32
  %i.ym = sitofp i32 %i.yl to float
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 14, float noundef %i.ym)
  br label %bb.gf

bb.ge:                                            ; preds = %_ZL21EditTableColumnsFlagsPi.exit
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.gn

bb.gf:                                            ; preds = %bb.gd, %_ZL21EditTableColumnsFlagsPi.exit
  %indvars.iv846 = phi i64 [ 0, %bb.gd ], [ %indvars.iv.next847, %_ZL21EditTableColumnsFlagsPi.exit ] ; 5 uses
  %i.yn = call noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv() ; 0 uses
  %i.yo = trunc nuw nsw i64 %indvars.iv846 to i32
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.yo)
  call void @_ZN5ImGui23AlignTextToFramePaddingEv()
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL16DemoWindowTablesv.column_names, i64 %indvars.iv846
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !101
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1701, ptr noundef %i.yq)
  call void @_ZN5ImGui7SpacingEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1702)
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr @_ZZL16DemoWindowTablesvE12column_flags, i64 %indvars.iv846 ; 23 uses
  %i.ys = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1916, ptr noundef nonnull %i.yr, i32 noundef 1) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.yt = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.yt, label %bb.gg, label %_ZL10HelpMarkerPKc.exit.i

bb.gg:                                            ; preds = %bb.gf
  %i.yu = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.yv = fmul float %i.yu, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.yv)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1917, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit.i

_ZL10HelpMarkerPKc.exit.i:                        ; preds = %bb.gg, %bb.gf
  %i.yw = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1918, ptr noundef nonnull %i.yr, i32 noundef 2) ; 0 uses
  %i.yx = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1919, ptr noundef nonnull %i.yr, i32 noundef 4) ; 0 uses
  %i.yy = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1920, ptr noundef nonnull %i.yr, i32 noundef 8)
  br i1 %i.yy, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %_ZL10HelpMarkerPKc.exit.i
  %i.yz = load i32, ptr %i.yr, align 4, !tbaa !51
  %i.za = and i32 %i.yz, -17
  store i32 %i.za, ptr %i.yr, align 4, !tbaa !51
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %_ZL10HelpMarkerPKc.exit.i
  %i.zb = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1921, ptr noundef nonnull %i.yr, i32 noundef 16)
  br i1 %i.zb, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.zc = load i32, ptr %i.yr, align 4, !tbaa !51
  %i.zd = and i32 %i.zc, -9
  store i32 %i.zd, ptr %i.yr, align 4, !tbaa !51
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.ze = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1922, ptr noundef nonnull %i.yr, i32 noundef 32) ; 0 uses
  %i.zf = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1923, ptr noundef nonnull %i.yr, i32 noundef 64) ; 0 uses
  %i.zg = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1924, ptr noundef nonnull %i.yr, i32 noundef 128) ; 0 uses
  %i.zh = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1925, ptr noundef nonnull %i.yr, i32 noundef 256) ; 0 uses
  %i.zi = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1926, ptr noundef nonnull %i.yr, i32 noundef 512) ; 0 uses
  %i.zj = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1927, ptr noundef nonnull %i.yr, i32 noundef 1024) ; 0 uses
  %i.zk = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1928, ptr noundef nonnull %i.yr, i32 noundef 2048) ; 0 uses
  %i.zl = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1929, ptr noundef nonnull %i.yr, i32 noundef 4096) ; 0 uses
  %i.zm = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1930, ptr noundef nonnull %i.yr, i32 noundef 8192) ; 0 uses
  %i.zn = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1931, ptr noundef nonnull %i.yr, i32 noundef 16384) ; 0 uses
  %i.zo = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1932, ptr noundef nonnull %i.yr, i32 noundef 32768) ; 0 uses
  %i.zp = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1933, ptr noundef nonnull %i.yr, i32 noundef 65536) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.zq = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.zq, label %bb.gl, label %_ZL10HelpMarkerPKc.exit21.i

bb.gl:                                            ; preds = %bb.gk
  %i.zr = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.zs = fmul float %i.zr, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.zs)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1934, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit21.i

_ZL10HelpMarkerPKc.exit21.i:                      ; preds = %bb.gl, %bb.gk
  %i.zt = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1935, ptr noundef nonnull %i.yr, i32 noundef 131072) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.zu = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.zu, label %bb.gm, label %_ZL21EditTableColumnsFlagsPi.exit

bb.gm:                                            ; preds = %_ZL10HelpMarkerPKc.exit21.i
  %i.zv = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.zw = fmul float %i.zv, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.zw)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1936, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL21EditTableColumnsFlagsPi.exit

_ZL21EditTableColumnsFlagsPi.exit:                ; preds = %_ZL10HelpMarkerPKc.exit21.i, %bb.gm
  %i.zx = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1937, ptr noundef nonnull %i.yr, i32 noundef 262144) ; 0 uses
  call void @_ZN5ImGui7SpacingEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1703)
  call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr @_ZZL16DemoWindowTablesvE16column_flags_out, i64 %indvars.iv846
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.zz, ptr %i.c, align 4, !tbaa !51
  %i.aaa = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1938, ptr noundef nonnull %i.c, i32 noundef 16777216) ; 0 uses
  %i.aab = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1939, ptr noundef nonnull %i.c, i32 noundef 33554432) ; 0 uses
  %i.aac = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1940, ptr noundef nonnull %i.c, i32 noundef 67108864) ; 0 uses
  %i.aad = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1941, ptr noundef nonnull %i.c, i32 noundef 134217728) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN5ImGui11EndDisabledEv()
  call void @_ZN5ImGui5PopIDEv()
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 1 ; 2 uses
  %exitcond849.not = icmp eq i64 %indvars.iv.next847, 3
  br i1 %exitcond849.not, label %bb.ge, label %bb.gf, !llvm.loop !406

bb.gn:                                            ; preds = %bb.ge, %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30
  %i.aae = fmul float %i.m, 9.000000e+00
  store float 0.000000e+00, ptr %34, align 4, !tbaa !44
  %i.aaf = getelementptr inbounds nuw i8, ptr %34, i64 4
  store float %i.aae, ptr %i.aaf, align 4, !tbaa !45
  %i.aag = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1704, i32 noundef 3, i32 noundef 50341711, ptr noundef nonnull align 4 dereferenceable(8) %34, float noundef 0.000000e+00)
  br i1 %i.aag, label %.preheader692.preheader, label %bb.gq

.preheader692.preheader:                          ; preds = %bb.gn
  %i.aah = load i32, ptr @_ZZL16DemoWindowTablesvE12column_flags, align 4, !tbaa !51 ; 2 uses
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1614, i32 noundef %i.aah, float noundef 0.000000e+00, i32 noundef 0)
  %i.aai = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL16DemoWindowTablesvE12column_flags, i64 4), align 4, !tbaa !51 ; 2 uses
  %i.aaj = or i32 %i.aai, %i.aah
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1615, i32 noundef %i.aai, float noundef 0.000000e+00, i32 noundef 0)
  %i.aak = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL16DemoWindowTablesvE12column_flags, i64 8), align 4, !tbaa !51 ; 2 uses
  %i.aal = or i32 %i.aak, %i.aaj
  %i.aam = and i32 %i.aal, 262144
  %.not966 = icmp eq i32 %i.aam, 0
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1616, i32 noundef %i.aak, float noundef 0.000000e+00, i32 noundef 0)
  br i1 %.not966, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %.preheader692.preheader
  call void @_ZN5ImGui21TableAngledHeadersRowEv()
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %.preheader692.preheader
  call void @_ZN5ImGui15TableHeadersRowEv()
  %i.aan = call noundef i32 @_ZN5ImGui19TableGetColumnFlagsEi(i32 noundef 0)
  store i32 %i.aan, ptr @_ZZL16DemoWindowTablesvE16column_flags_out, align 4, !tbaa !51
  %i.aao = call noundef i32 @_ZN5ImGui19TableGetColumnFlagsEi(i32 noundef 1)
  store i32 %i.aao, ptr getelementptr inbounds nuw (i8, ptr @_ZZL16DemoWindowTablesvE16column_flags_out, i64 4), align 4, !tbaa !51
  %i.aap = call noundef i32 @_ZN5ImGui19TableGetColumnFlagsEi(i32 noundef 2)
  store i32 %i.aap, ptr getelementptr inbounds nuw (i8, ptr @_ZZL16DemoWindowTablesvE16column_flags_out, i64 8), align 4, !tbaa !51
  %i.aaq = fptosi float %.sroa.0418.0.vec.extract to i32
  %i.aar = sdiv i32 %i.aaq, 2
  %i.aas = sitofp i32 %i.aar to float             ; 9 uses
  call void @_ZN5ImGui6IndentEf(float noundef %i.aas)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.aat = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.aau = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.aau)
  %i.aav = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.aaw = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.aaw)
  %i.aax = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.aay = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.aay)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aas)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.aaz = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.aba = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.aba)
  %i.abb = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.abc = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abc)
  %i.abd = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.abe = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abe)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aas)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.abf = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.abg = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.abg)
  %i.abh = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.abi = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abi)
  %i.abj = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.abk = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abk)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aas)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.abl = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.abm = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.abm)
  %i.abn = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.abo = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abo)
  %i.abp = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.abq = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abq)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aas)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.abr = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.abs = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.abs)
  %i.abt = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.abu = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abu)
  %i.abv = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.abw = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.abw)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aas)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.abx = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.aby = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.aby)
  %i.abz = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.aca = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.aca)
  %i.acb = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.acc = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.acc)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aas)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.acd = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.ace = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.ace)
  %i.acf = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.acg = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.acg)
  %i.ach = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.aci = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.aci)
  call void @_ZN5ImGui6IndentEf(float noundef %i.aas)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.acj = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.ack = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 0)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.1706, ptr noundef %i.ack)
  %i.acl = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.acm = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 1)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.acm)
  %i.acn = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.aco = call noundef ptr @_ZN5ImGui18TableGetColumnNameEi(i32 noundef 2)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1705, ptr noundef nonnull @.str.395, ptr noundef %i.aco)
  %i.acp = fmul nnan float %i.aas, 8.000000e+00
  call void @_ZN5ImGui8UnindentEf(float noundef %i.acp)
  call void @_ZN5ImGui8EndTableEv()
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.gn
  call void @_ZN5ImGui7TreePopEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gb
  br i1 %.not521.demorgan, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %not.650 = xor i1 %i.o, true
  call void @_ZN5ImGui15SetNextItemOpenEbi(i1 noundef zeroext %not.650, i32 noundef 0)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.acq = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.1707)
  br i1 %i.acq, label %bb.gu, label %bb.gz

bb.gu:                                            ; preds = %bb.gt
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 6668, ptr noundef nonnull @.str.1708)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.352)
  %i.acr = call noundef zeroext i1 @_ZN5ImGui16BeginItemTooltipEv()
  br i1 %i.acr, label %bb.gv, label %_ZL10HelpMarkerPKc.exit573

bb.gv:                                            ; preds = %bb.gu
  %i.acs = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.act = fmul float %i.acs, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.act)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1709, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit573

_ZL10HelpMarkerPKc.exit573:                       ; preds = %bb.gu, %bb.gv
  %i.acu = call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv() ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 80
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !128
  %i.acx = fmul float %i.acw, 6.000000e-01
  %i.acy = fptosi float %i.acx to i32
  %i.acz = sitofp i32 %i.acy to float
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 11, float noundef %i.acz)
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acu, i64 96
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !132
  %i.adc = fmul float %i.adb, 6.000000e-01
  %i.add = fptosi float %i.adc to i32
  %i.ade = sitofp i32 %i.add to float
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 14, float noundef %i.ade)
  %i.adf = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1620, ptr noundef nonnull @_ZZL16DemoWindowTablesvE6flags1_1, i32 noundef 1) ; 0 uses
  %i.adg = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1638, ptr noundef nonnull @_ZZL16DemoWindowTablesvE6flags1_1, i32 noundef 4096) ; 0 uses
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  %i.adh = load i32, ptr @_ZZL16DemoWindowTablesvE6flags1_1, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #30
  store <2 x float> zeroinitializer, ptr %35, align 8, !tbaa !46
  %i.adi = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1587, i32 noundef 3, i32 noundef %i.adh, ptr noundef nonnull align 4 dereferenceable(8) %35, float noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #30
  br i1 %i.adi, label %.split757.us.3, label %bb.gw

.split757.us.3:                                   ; preds = %_ZL10HelpMarkerPKc.exit573
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1710, i32 noundef 16, float noundef 1.000000e+02, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1711, i32 noundef 16, float noundef 2.000000e+02, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.1712, i32 noundef 16, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui15TableHeadersRowEv()
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.adj = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  %i.adk = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.0206.0.vec.extract.us = extractelement <2 x float> %i.adk, i64 0
  %i.adl = fpext float %.sroa.0206.0.vec.extract.us to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1713, double noundef %i.adl)
  %i.adm = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  %i.adn = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.0206.0.vec.extract.us.1 = extractelement <2 x float> %i.adn, i64 0
  %i.ado = fpext float %.sroa.0206.0.vec.extract.us.1 to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1713, double noundef %i.ado)
  %i.adp = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  %i.adq = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.0206.0.vec.extract.us.2 = extractelement <2 x float> %i.adq, i64 0
  %i.adr = fpext float %.sroa.0206.0.vec.extract.us.2 to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1713, double noundef %i.adr)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.ads = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1617, i32 noundef 0, i32 noundef 1)
  %i.adt = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 1) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1617, i32 noundef 1, i32 noundef 1)
  %i.adu = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 2) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1617, i32 noundef 2, i32 noundef 1)
  call void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
  %i.adv = call noundef zeroext i1 @_ZN5ImGui19TableSetColumnIndexEi(i32 noundef 0) ; 0 uses
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1617, i32 noundef 0, i32 noundef 2)
end_hunk_5
begin_hunk_6_@_ZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowData:bb.a
  %i.fh = phi i32 [ %i.ge, %_ZN8ImVectorIjE9push_backERKj.exit ], [ %.pre142, %.preheader42.preheader ] ; 6 uses
  %.017758 = phi i32 [ %i.gf, %_ZN8ImVectorIjE9push_backERKj.exit ], [ 0, %.preheader42.preheader ]
  %i.fi = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id, align 4, !tbaa !51 ; 2 uses
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id, align 4, !tbaa !51
  %i.fk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 4), align 4, !tbaa !175
  %i.fl = icmp eq i32 %i.fh, %i.fk
  br i1 %i.fl, label %bb.cc, label %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i:      ; preds = %.preheader42
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !176
  br label %_ZN8ImVectorIjE9push_backERKj.exit

bb.cc:                                            ; preds = %.preheader42
  %i.fm = add nsw i32 %i.fh, 1
  %.not.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fn = sdiv i32 %i.fh, 2
  %i.fo = add nsw i32 %i.fn, %i.fh
  br label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i:        ; preds = %bb.cd, %bb.cc
  %i.fp = phi i32 [ %i.fo, %bb.cd ], [ 8, %bb.cc ]
  %i.fq = call noundef i32 @llvm.smax.i32(i32 %i.fp, i32 %i.fm) ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = shl nsw i64 %i.fr, 2
  %i.ft = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.fs) ; 3 uses
  %i.fu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !176 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.fu, null
  br i1 %.not6.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  %i.fv = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  %i.fw = sext i32 %i.fv to i64
  %i.fx = shl nsw i64 %i.fw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ft, ptr nonnull align 4 %i.fu, i64 %i.fx, i1 false)
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !176
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.fy)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i
  store ptr %i.ft, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !176
  store i32 %i.fq, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 4), align 4, !tbaa !175
  %.pre3.i = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  br label %_ZN8ImVectorIjE9push_backERKj.exit

_ZN8ImVectorIjE9push_backERKj.exit:               ; preds = %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i, %bb.cf
  %i.fz = phi i32 [ %i.fh, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.cf ]
  %i.ga = phi ptr [ %.pre.i, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i ], [ %i.ft, %bb.cf ]
  %i.gb = sext i32 %i.fz to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.gb
  store i32 %i.fi, ptr %i.gc, align 4
  %i.gd = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  %i.ge = add nsw i32 %i.gd, 1                    ; 2 uses
  store i32 %i.ge, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  %i.gf = add nuw nsw i32 %.017758, 1             ; 2 uses
  %exitcond107.not = icmp eq i32 %i.gf, 50
  br i1 %exitcond107.not, label %.loopexit43, label %.preheader42, !llvm.loop !434

.loopexit43:                                      ; preds = %_ZN8ImVectorIjE9push_backERKj.exit, %bb.ca
  %i.gg = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.975)
  br i1 %i.gg, label %.preheader40.preheader, label %.loopexit41

.preheader40.preheader:                           ; preds = %.loopexit43
  %.pre143 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  br label %.preheader40

.preheader40:                                     ; preds = %.preheader40.preheader, %_ZN8ImVectorIjE9push_backERKj.exit259
  %i.gh = phi i32 [ %i.he, %_ZN8ImVectorIjE9push_backERKj.exit259 ], [ %.pre143, %.preheader40.preheader ] ; 6 uses
  %.017659 = phi i32 [ %i.hf, %_ZN8ImVectorIjE9push_backERKj.exit259 ], [ 0, %.preheader40.preheader ]
  %i.gi = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id, align 4, !tbaa !51 ; 2 uses
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id, align 4, !tbaa !51
  %i.gk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 4), align 4, !tbaa !175
  %i.gl = icmp eq i32 %i.gh, %i.gk
  br i1 %i.gl, label %bb.cg, label %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253

._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253:   ; preds = %.preheader40
  %.pre.i254 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !176
  br label %_ZN8ImVectorIjE9push_backERKj.exit259

bb.cg:                                            ; preds = %.preheader40
  %i.gm = add nsw i32 %i.gh, 1
  %.not.i.i255 = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i255, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gn = sdiv i32 %i.gh, 2
  %i.go = add nsw i32 %i.gn, %i.gh
  br label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256:     ; preds = %bb.ch, %bb.cg
  %i.gp = phi i32 [ %i.go, %bb.ch ], [ 8, %bb.cg ]
  %i.gq = call noundef i32 @llvm.smax.i32(i32 %i.gp, i32 %i.gm) ; 2 uses
  %i.gr = sext i32 %i.gq to i64
  %i.gs = shl nsw i64 %i.gr, 2
  %i.gt = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.gs) ; 3 uses
  %i.gu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !176 ; 2 uses
  %.not6.i.i257 = icmp eq ptr %i.gu, null
  br i1 %.not6.i.i257, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256
  %i.gv = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  %i.gw = sext i32 %i.gv to i64
  %i.gx = shl nsw i64 %i.gw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gt, ptr nonnull align 4 %i.gu, i64 %i.gx, i1 false)
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !176
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.gy)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i256
  store ptr %i.gt, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !176
  store i32 %i.gq, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 4), align 4, !tbaa !175
  %.pre3.i258 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  br label %_ZN8ImVectorIjE9push_backERKj.exit259

_ZN8ImVectorIjE9push_backERKj.exit259:            ; preds = %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253, %bb.cj
  %i.gz = phi i32 [ %i.gh, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253 ], [ %.pre3.i258, %bb.cj ]
  %i.ha = phi ptr [ %.pre.i254, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i253 ], [ %i.gt, %bb.cj ]
  %i.hb = sext i32 %i.gz to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hb
  store i32 %i.gi, ptr %i.hc, align 4
  %i.hd = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  %i.he = add nsw i32 %i.hd, 1                    ; 2 uses
  store i32 %i.he, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  %i.hf = add nuw nsw i32 %.017659, 1             ; 2 uses
  %exitcond108.not = icmp eq i32 %i.hf, 20
  br i1 %exitcond108.not, label %.loopexit41, label %.preheader40, !llvm.loop !435

.loopexit41:                                      ; preds = %_ZN8ImVectorIjE9push_backERKj.exit259, %.loopexit43
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.hg = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.976)
  br i1 %i.hg, label %bb.ck, label %.loopexit39

bb.ck:                                            ; preds = %.loopexit41
  %i.hh = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174 ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  br i1 %i.hi, label %.lr.ph61.preheader, label %.loopexit39

.lr.ph61.preheader:                               ; preds = %bb.ck
  %i.hj = call i32 @llvm.umin.i32(i32 %i.hh, i32 20)
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.lr.ph61
  %i.hk = phi i32 [ %i.hr, %.lr.ph61 ], [ %i.hh, %.lr.ph61.preheader ]
  %.017560 = phi i32 [ %i.hs, %.lr.ph61 ], [ %i.hj, %.lr.ph61.preheader ] ; 2 uses
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !176
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr [4 x i8], ptr %i.hl, i64 %i.hm
  %i.ho = getelementptr i8, ptr %i.hn, i64 -4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !51
  call void @_ZN26ImGuiSelectionBasicStorage15SetItemSelectedEjb(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %i.hp, i1 noundef zeroext false)
  %i.hq = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  %i.hr = add nsw i32 %i.hq, -1                   ; 2 uses
  store i32 %i.hr, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  %i.hs = add nsw i32 %.017560, -1
  %i.ht = icmp samesign ugt i32 %.017560, 1
  br i1 %i.ht, label %.lr.ph61, label %.loopexit39, !llvm.loop !436

.loopexit39:                                      ; preds = %.lr.ph61, %bb.ck, %.loopexit41
  %i.hu = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.hv = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  %i.hw = sitofp i32 %i.hv to float
  %i.hx = fmul float %i.hu, %i.hw
  store float 0.000000e+00, ptr %7, align 4, !tbaa !44
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.hx, ptr %i.hy, align 4, !tbaa !45
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.hz = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.ia = fmul float %i.hz, 2.000000e+01
  store float f0x80800000, ptr %8, align 4, !tbaa !44
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.ia, ptr %i.ib, align 4, !tbaa !45
  %i.ic = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.965, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef 136, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br i1 %i.ic, label %bb.cl, label %bb.ct

bb.cl:                                            ; preds = %.loopexit39
  %i.id = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, align 8, !tbaa !166
  %i.ie = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  %i.if = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef 576, i32 noundef %i.id, i32 noundef %i.ie) ; 4 uses
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, ptr noundef %i.if)
  %i.ig = call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 522, i32 noundef 1)
  %i.ih = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, align 8
  %i.ii = icmp sgt i32 %i.ih, 0
  %i.ij = select i1 %i.ig, i1 %i.ii, i1 false     ; 2 uses
  br i1 %i.ij, label %bb.cm, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit

bb.cm:                                            ; preds = %bb.cl
  %i.ik = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.im = load i64, ptr %i.il, align 8, !tbaa !177
  %i.in = trunc i64 %i.im to i32                  ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !178, !range !19, !noundef !20
  %29 = icmp eq i8 %i.ip, 0
  br i1 %29, label %bb.cn, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.cm
  %.022.i231 = add nsw i32 %i.in, 1               ; 2 uses
  %.not.i232 = icmp slt i32 %.022.i231, %i.ik
  br i1 %.not.i232, label %.lr.ph234, label %.critedge.i

bb.cn:                                            ; preds = %bb.cm
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 33
  store i8 1, ptr %i.iq, align 1, !tbaa !179
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit

.preheader.i:                                     ; preds = %.lr.ph234
  %.022.i = add nsw i32 %.022.i233, 1             ; 2 uses
  %.not.i = icmp slt i32 %.022.i, %i.ik
  br i1 %.not.i, label %.lr.ph234, label %.critedge.i, !llvm.loop !0

.lr.ph234:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.022.i233 = phi i32 [ %.022.i, %.preheader.i ], [ %.022.i231, %.preheader.i.preheader ] ; 3 uses
  %i.ir = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i64 16), align 8, !tbaa !172
  %i.is = call noundef i32 %i.ir(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %.022.i233), !inline_history !1
  %i.it = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %i.is)
  br i1 %i.it, label %.preheader.i, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i.preheader
  %i.iu = call i32 @llvm.smin.i32(i32 %i.ik, i32 %i.in) ; 2 uses
  %i.iv = icmp slt i32 %i.iu, 1
  br i1 %i.iv, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.lr.ph236

bb.co:                                            ; preds = %.lr.ph236
  %i.iw = icmp slt i32 %.0.in.i235, 2
  br i1 %i.iw, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.lr.ph236, !llvm.loop !2

.lr.ph236:                                        ; preds = %.critedge.i, %bb.co
  %.0.in.i235 = phi i32 [ %.0.i, %bb.co ], [ %i.iu, %.critedge.i ] ; 2 uses
  %.0.i = add nsw i32 %.0.in.i235, -1             ; 3 uses
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i64 16), align 8, !tbaa !172
  %i.iy = call noundef i32 %i.ix(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %.0.i), !inline_history !1
  %i.iz = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %i.iy)
  br i1 %i.iz, label %bb.co, label %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge237, !llvm.loop !2

._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge237: ; preds = %.lr.ph236
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, !llvm.loop !2

_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit: ; preds = %.lr.ph234, %bb.co, %.critedge.i, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge237, %bb.cn, %bb.cl
  %i.ja = phi i32 [ -1, %bb.cl ], [ -1, %bb.co ], [ %i.in, %bb.cn ], [ %.0.i, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge237 ], [ -1, %.critedge.i ], [ %.022.i233, %.lr.ph234 ] ; 2 uses
  %i.jb = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  %i.jc = icmp sgt i32 %i.jb, 0
  br i1 %i.jc, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit
  %i.jd = zext i32 %i.ja to i64
  br label %bb.cp

._crit_edge:                                      ; preds = %bb.cr, %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit
  %i.je = call noundef ptr @_ZN5ImGui14EndMultiSelectEv() ; 2 uses
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, ptr noundef %i.je)
  br i1 %i.ij, label %bb.cs, label %bb.ct

bb.cp:                                            ; preds = %.lr.ph63, %bb.cr
  %indvars.iv109 = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next110, %bb.cr ] ; 4 uses
  %i.jf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i64 8), align 8, !tbaa !176
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv109
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !51 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.ji = urem i32 %i.jh, 28
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr @_ZL12ExampleNames, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !101
  %i.jm = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.977, i32 noundef %i.jh, ptr noundef %i.jl) #30 ; 0 uses
  %i.jn = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, i32 noundef %i.jh)
  call void @_ZN5ImGui28SetNextItemSelectionUserDataEx(i64 noundef %indvars.iv109)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !46
  %i.jo = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.e, i1 noundef zeroext %i.jn, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.jp = icmp eq i64 %indvars.iv109, %i.jd
  br i1 %i.jp, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN5ImGui20SetKeyboardFocusHereEi(i32 noundef -1)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.jq = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, align 8, !tbaa !174
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp slt i64 %indvars.iv.next110, %i.jr
  br i1 %i.js, label %bb.cp, label %._crit_edge, !llvm.loop !437

bb.cs:                                            ; preds = %._crit_edge
  call void @_ZN28ExampleSelectionWithDeletion21ApplyDeletionPostLoopIjEEvP18ImGuiMultiSelectIOR8ImVectorIT_Ei(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_2, ptr noundef %i.je, ptr noundef nonnull align 8 dereferenceable(16) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items, i32 noundef %i.ja)
  br label %bb.ct

bb.ct:                                            ; preds = %._crit_edge, %bb.cs, %.loopexit39
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.bt
  %i.jt = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.978)
  br i1 %i.jt, label %bb.cv, label %bb.df

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN5ImGui10DemoMarkerEPKciS1_(ptr noundef nonnull @.str.5, i32 noundef 3043, ptr noundef nonnull @.str.979)
  %i.ju = load atomic i8, ptr @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb acquire, align 8
  %i.jv = icmp eq i8 %i.ju, 0
  br i1 %i.jv, label %bb.cw, label %bb.cz, !prof !14

bb.cw:                                            ; preds = %bb.cv
  %i.jw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb) #30
  %.not216 = icmp eq i32 %i.jw, 0
  br i1 %.not216, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN18ExampleDualListBoxC2Ev(ptr noundef nonnull align 8 dereferenceable(129) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb)
          to label %bb.cy unwind label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.jx = call i32 @__cxa_atexit(ptr nonnull @_ZN18ExampleDualListBoxD2Ev, ptr nonnull @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb) #30
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cw, %bb.cv
  %i.jy = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !174
  %i.jz = icmp eq i32 %i.jy, 0
  %i.ka = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 16), align 8
  %i.kb = icmp eq i32 %i.ka, 0
  %or.cond = select i1 %i.jz, i1 %i.kb, i1 false
  br i1 %or.cond, label %.preheader35, label %.loopexit36

bb.da:                                            ; preds = %bb.cx
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb) #30
  br label %bb.kl

.preheader35:                                     ; preds = %bb.cz, %_ZN8ImVectorIjE9push_backERKj.exit266
  %i.kd = phi i32 [ %i.ky, %_ZN8ImVectorIjE9push_backERKj.exit266 ], [ 0, %bb.cz ] ; 6 uses
  %.017364 = phi i32 [ %i.kz, %_ZN8ImVectorIjE9push_backERKj.exit266 ], [ 0, %bb.cz ] ; 2 uses
  %i.ke = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 4), align 4, !tbaa !175
  %i.kf = icmp eq i32 %i.kd, %i.ke
  br i1 %i.kf, label %bb.db, label %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260

._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260:   ; preds = %.preheader35
  %.pre.i261 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 8), align 8, !tbaa !176
  br label %_ZN8ImVectorIjE9push_backERKj.exit266

bb.db:                                            ; preds = %.preheader35
  %i.kg = add nsw i32 %i.kd, 1
  %.not.i.i262 = icmp eq i32 %i.kd, 0
  br i1 %.not.i.i262, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.kh = sdiv i32 %i.kd, 2
  %i.ki = add nsw i32 %i.kh, %i.kd
  br label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263:     ; preds = %bb.dc, %bb.db
  %i.kj = phi i32 [ %i.ki, %bb.dc ], [ 8, %bb.db ]
  %i.kk = call noundef i32 @llvm.smax.i32(i32 %i.kj, i32 %i.kg) ; 2 uses
  %i.kl = sext i32 %i.kk to i64
  %i.km = shl nsw i64 %i.kl, 2
  %i.kn = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.km) ; 3 uses
  %i.ko = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 8), align 8, !tbaa !176 ; 2 uses
  %.not6.i.i264 = icmp eq ptr %i.ko, null
  br i1 %.not6.i.i264, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263
  %i.kp = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !174
  %i.kq = sext i32 %i.kp to i64
  %i.kr = shl nsw i64 %i.kq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kn, ptr nonnull align 4 %i.ko, i64 %i.kr, i1 false)
  %i.ks = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 8), align 8, !tbaa !176
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ks)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i263
  store ptr %i.kn, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 8), align 8, !tbaa !176
  store i32 %i.kk, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, i64 4), align 4, !tbaa !175
  %.pre3.i265 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !174
  br label %_ZN8ImVectorIjE9push_backERKj.exit266

_ZN8ImVectorIjE9push_backERKj.exit266:            ; preds = %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260, %bb.de
  %i.kt = phi i32 [ %i.kd, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260 ], [ %.pre3.i265, %bb.de ]
  %i.ku = phi ptr [ %.pre.i261, %._ZN8ImVectorIjE7reserveEi.exit_crit_edge.i260 ], [ %i.kn, %bb.de ]
  %i.kv = sext i32 %i.kt to i64
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.kv
  store i32 %.017364, ptr %i.kw, align 4
  %i.kx = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !174
  %i.ky = add nsw i32 %i.kx, 1                    ; 2 uses
  store i32 %i.ky, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb, align 8, !tbaa !174
  %i.kz = add nuw nsw i32 %.017364, 1             ; 2 uses
  %exitcond112.not = icmp eq i32 %i.kz, 28
  br i1 %exitcond112.not, label %.loopexit36, label %.preheader35, !llvm.loop !438

.loopexit36:                                      ; preds = %_ZN8ImVectorIjE9push_backERKj.exit266, %bb.cz
  call void @_ZN18ExampleDualListBox4ShowEv(ptr noundef nonnull align 8 dereferenceable(129) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE3dlb)
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.df
end_hunk_6
begin_hunk_7_@_ZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowData:bb.a
bb.gl:                                            ; preds = %bb.gk
  %i.tp = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.tq = fmul float %i.tp, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.tq)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1029, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit272

_ZL10HelpMarkerPKc.exit272:                       ; preds = %bb.gk, %bb.gl
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.gm

bb.gm:                                            ; preds = %_ZL10HelpMarkerPKc.exit272, %bb.fq
  %i.tr = load atomic i8, ptr @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1 acquire, align 8
  %i.ts = icmp eq i8 %i.tr, 0
  br i1 %i.ts, label %bb.gn, label %bb.gp, !prof !14

bb.gn:                                            ; preds = %bb.gm
  %i.tt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1) #30
  %.not227 = icmp eq i32 %i.tt, 0
  br i1 %.not227, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i8 0, i64 16, i1 false)
  %i.tu = call i32 @__cxa_atexit(ptr nonnull @_ZN8ImVectorIiED2Ev, ptr nonnull @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1) #30
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn, %bb.gm
  %i.tv = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id_0, align 4, !tbaa !51
  %i.tw = icmp eq i32 %i.tv, 0
  br i1 %i.tw, label %.preheader21.preheader, label %.loopexit22

.preheader21.preheader:                           ; preds = %bb.gp
  %.pre144 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.preheader, %_ZN8ImVectorIiE9push_backERKi.exit
  %i.tx = phi i32 [ %i.uu, %_ZN8ImVectorIiE9push_backERKi.exit ], [ %.pre144, %.preheader21.preheader ] ; 6 uses
  %.016476 = phi i32 [ %i.uv, %_ZN8ImVectorIiE9push_backERKi.exit ], [ 0, %.preheader21.preheader ]
  %i.ty = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id_0, align 4, !tbaa !51 ; 2 uses
  %i.tz = add nsw i32 %i.ty, 1
  store i32 %i.tz, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13items_next_id_0, align 4, !tbaa !51
  %i.ua = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 4), align 4, !tbaa !142
  %i.ub = icmp eq i32 %i.tx, %i.ua
  br i1 %i.ub, label %bb.gq, label %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i:      ; preds = %.preheader21
  %.pre.i273 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !143
  br label %_ZN8ImVectorIiE9push_backERKi.exit

bb.gq:                                            ; preds = %.preheader21
  %i.uc = add nsw i32 %i.tx, 1
  %.not.i.i274 = icmp eq i32 %i.tx, 0
  br i1 %.not.i.i274, label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ud = sdiv i32 %i.tx, 2
  %i.ue = add nsw i32 %i.ud, %i.tx
  br label %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i

_ZNK8ImVectorIiE14_grow_capacityEi.exit.i:        ; preds = %bb.gr, %bb.gq
  %i.uf = phi i32 [ %i.ue, %bb.gr ], [ 8, %bb.gq ]
  %i.ug = call noundef i32 @llvm.smax.i32(i32 %i.uf, i32 %i.uc) ; 2 uses
  %i.uh = sext i32 %i.ug to i64
  %i.ui = shl nsw i64 %i.uh, 2
  %i.uj = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ui) ; 3 uses
  %i.uk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !143 ; 2 uses
  %.not6.i.i275 = icmp eq ptr %i.uk, null
  br i1 %.not6.i.i275, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i
  %i.ul = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  %i.um = sext i32 %i.ul to i64
  %i.un = shl nsw i64 %i.um, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.uj, ptr nonnull align 4 %i.uk, i64 %i.un, i1 false)
  %i.uo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !143
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.uo)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %_ZNK8ImVectorIiE14_grow_capacityEi.exit.i
  store ptr %i.uj, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !143
  store i32 %i.ug, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 4), align 4, !tbaa !142
  %.pre3.i276 = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  br label %_ZN8ImVectorIiE9push_backERKi.exit

_ZN8ImVectorIiE9push_backERKi.exit:               ; preds = %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i, %bb.gt
  %i.up = phi i32 [ %i.tx, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i ], [ %.pre3.i276, %bb.gt ]
  %i.uq = phi ptr [ %.pre.i273, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge.i ], [ %i.uj, %bb.gt ]
  %i.ur = sext i32 %i.up to i64
  %i.us = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.ur
  store i32 %i.ty, ptr %i.us, align 4
  %i.ut = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  %i.uu = add nsw i32 %i.ut, 1                    ; 2 uses
  store i32 %i.uu, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  %i.uv = add nuw nsw i32 %.016476, 1             ; 2 uses
  %exitcond128.not = icmp eq i32 %i.uv, 1000
  br i1 %exitcond128.not, label %.loopexit22, label %.preheader21, !llvm.loop !442

.loopexit22:                                      ; preds = %_ZN8ImVectorIiE9push_backERKi.exit, %bb.gp
  %i.uw = load atomic i8, ptr @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5 acquire, align 8
  %i.ux = icmp eq i8 %i.uw, 0
  br i1 %i.ux, label %bb.gu, label %bb.gw, !prof !14

bb.gu:                                            ; preds = %.loopexit22
  %i.uy = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #30
  %.not228 = icmp eq i32 %i.uy, 0
  br i1 %.not228, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZN26ImGuiSelectionBasicStorageC2Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5)
          to label %_ZN28ExampleSelectionWithDeletionC2Ev.exit277 unwind label %bb.hc

_ZN28ExampleSelectionWithDeletionC2Ev.exit277:    ; preds = %bb.gv
  %i.uz = call i32 @__cxa_atexit(ptr nonnull @_ZN26ImGuiSelectionBasicStorageD2Ev, ptr nonnull @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #30
  br label %bb.gw

bb.gw:                                            ; preds = %_ZN28ExampleSelectionWithDeletionC2Ev.exit277, %bb.gu, %.loopexit22
  %i.va = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8, !tbaa !166
  %i.vb = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.974, i32 noundef %i.va, i32 noundef %i.vb)
  %.b208 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b208, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.vc = call noundef float @_ZN5ImGui17GetTextLineHeightEv()
  br label %bb.gz

bb.gy:                                            ; preds = %bb.gw
  %i.vd = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.ve = phi float [ %i.vc, %bb.gx ], [ %i.vd, %bb.gy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.vf = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  %i.vg = sitofp i32 %i.vf to float
  %i.vh = fmul float %i.ve, %i.vg
  store float 0.000000e+00, ptr %17, align 4, !tbaa !44
  %i.vi = getelementptr inbounds nuw i8, ptr %17, i64 4
  store float %i.vh, ptr %i.vi, align 4, !tbaa !45
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.vj = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.vk = fmul float %i.vj, 2.000000e+01
  store float f0x80800000, ptr %18, align 4, !tbaa !44
  %i.vl = getelementptr inbounds nuw i8, ptr %18, i64 4
  store float %i.vk, ptr %i.vl, align 4, !tbaa !45
  %i.vm = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.965, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef 136, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br i1 %i.vm, label %bb.ha, label %bb.ki

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.vn = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.vo = call noundef float @_ZN5ImGui11GetFontSizeEv()
  store float %i.vn, ptr %19, align 4, !tbaa !44
  %i.vp = getelementptr inbounds nuw i8, ptr %19, i64 4
  store float %i.vo, ptr %i.vp, align 4, !tbaa !45
  %.b207 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b207, label %bb.hb, label %bb.hd

bb.hb:                                            ; preds = %bb.ha
  call void @_ZN5ImGui13PushStyleVarYEif(i32 noundef 14, float noundef 0.000000e+00)
  br label %bb.hd

bb.hc:                                            ; preds = %bb.gv
  %i.vq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5) #30
  br label %bb.kl

bb.hd:                                            ; preds = %bb.hb, %bb.ha
  %i.vr = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5flags_1, align 4, !tbaa !51
  %i.vs = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8, !tbaa !166
  %i.vt = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  %i.vu = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef %i.vr, i32 noundef %i.vs, i32 noundef %i.vt) ; 5 uses
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, ptr noundef %i.vu)
  %i.vv = call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 522, i32 noundef 1)
  %i.vw = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, align 8 ; 2 uses
  %i.vx = icmp sgt i32 %i.vw, 0
  %or.cond3 = select i1 %i.vv, i1 %i.vx, i1 false
  %.b211 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE26request_deletion_from_menu, align 1
  %i.vy = select i1 %or.cond3, i1 true, i1 %.b211 ; 2 uses
  br i1 %i.vy, label %bb.he, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286

bb.he:                                            ; preds = %bb.hd
  %i.vz = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141 ; 3 uses
  %i.wa = icmp eq i32 %i.vw, 0
  br i1 %i.wa, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vu, i64 24
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !177
  %i.wd = trunc i64 %i.wc to i32                  ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.vu, i64 32
  %i.wf = load i8, ptr %i.we, align 8, !tbaa !178, !range !19, !noundef !20
  %30 = icmp eq i8 %i.wf, 0
  br i1 %30, label %bb.hg, label %.preheader.i278.preheader

.preheader.i278.preheader:                        ; preds = %bb.hf
  %.022.i280239 = add nsw i32 %i.wd, 1            ; 2 uses
  %.not.i281240 = icmp slt i32 %.022.i280239, %i.vz
  br i1 %.not.i281240, label %.lr.ph242, label %.critedge.i282

bb.hg:                                            ; preds = %bb.hf
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vu, i64 33
  store i8 1, ptr %i.wg, align 1, !tbaa !179
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286

.preheader.i278:                                  ; preds = %.lr.ph242
  %.022.i280 = add nsw i32 %.022.i280241, 1       ; 2 uses
  %.not.i281 = icmp slt i32 %.022.i280, %i.vz
  br i1 %.not.i281, label %.lr.ph242, label %.critedge.i282, !llvm.loop !0

.lr.ph242:                                        ; preds = %.preheader.i278.preheader, %.preheader.i278
  %.022.i280241 = phi i32 [ %.022.i280, %.preheader.i278 ], [ %.022.i280239, %.preheader.i278.preheader ] ; 3 uses
  %i.wh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i64 16), align 8, !tbaa !172
  %i.wi = call noundef i32 %i.wh(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %.022.i280241), !inline_history !1
  %i.wj = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.wi)
  br i1 %i.wj, label %.preheader.i278, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, !llvm.loop !0

.critedge.i282:                                   ; preds = %.preheader.i278, %.preheader.i278.preheader
  %i.wk = call i32 @llvm.smin.i32(i32 %i.vz, i32 %i.wd) ; 2 uses
  %i.wl = icmp slt i32 %i.wk, 1
  br i1 %i.wl, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, label %.lr.ph244

bb.hh:                                            ; preds = %.lr.ph244
  %i.wm = icmp slt i32 %.0.in.i283243, 2
  br i1 %i.wm, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, label %.lr.ph244, !llvm.loop !2

.lr.ph244:                                        ; preds = %.critedge.i282, %bb.hh
  %.0.in.i283243 = phi i32 [ %.0.i284, %bb.hh ], [ %i.wk, %.critedge.i282 ] ; 2 uses
  %.0.i284 = add nsw i32 %.0.in.i283243, -1       ; 3 uses
  %i.wn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i64 16), align 8, !tbaa !172
  %i.wo = call noundef i32 %i.wn(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %.0.i284), !inline_history !1
  %i.wp = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE9selection_5, i32 noundef %i.wo)
  br i1 %i.wp, label %bb.hh, label %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge246, !llvm.loop !2

._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge246: ; preds = %.lr.ph244
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286, !llvm.loop !2

_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286: ; preds = %.lr.ph242, %bb.hh, %.critedge.i282, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge246, %bb.hg, %bb.he, %bb.hd
  %i.wq = phi i32 [ -1, %bb.hd ], [ -1, %bb.he ], [ %i.wd, %bb.hg ], [ -1, %bb.hh ], [ %.0.i284, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286.loopexit_crit_edge246 ], [ -1, %.critedge.i282 ], [ %.022.i280241, %.lr.ph242 ] ; 5 uses
  store i1 false, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE26request_deletion_from_menu, align 1
  %i.wr = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !35, !range !19, !noundef !20
  %i.ws = trunc nuw i8 %i.wr to i1
  br i1 %i.ws, label %bb.hi, label %bb.hl

bb.hi:                                            ; preds = %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286
  %.b206 = load i1, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11widget_type, align 4
  br i1 %.b206, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  store <2 x float> zeroinitializer, ptr %20, align 8, !tbaa !46
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 17, ptr noundef nonnull align 4 dereferenceable(8) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  store <2 x float> zeroinitializer, ptr %21, align 8, !tbaa !46
  %i.wt = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.1030, i32 noundef 2, i32 noundef 4194321, ptr noundef nonnull align 4 dereferenceable(8) %21, float noundef 0.000000e+00) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 8, float noundef f0x3F333333, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 8, float noundef 3.000000e-01, i32 noundef 0)
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit286
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %22)
  %i.wu = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !35, !range !19, !noundef !20
  %i.wv = trunc nuw i8 %i.wu to i1
  br i1 %i.wv, label %bb.hm, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288

bb.hm:                                            ; preds = %bb.hl
  %i.ww = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8, !tbaa !141
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %22, i32 noundef %i.ww, float noundef -1.000000e+00)
          to label %bb.hn unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hn:                                            ; preds = %bb.hm
  %.not229 = icmp eq i32 %i.wq, -1
  br i1 %.not229, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.wx = add nuw nsw i32 %i.wq, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %22, i32 noundef %i.wq, i32 noundef %i.wx)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287 unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287: ; preds = %bb.ho, %bb.hn
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !170 ; 2 uses
  %.not230 = icmp eq i64 %i.wz, -1
  br i1 %.not230, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288, label %bb.hp

bb.hp:                                            ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287
  %i.xa = trunc i64 %i.wz to i32                  ; 2 uses
  %i.xb = add nsw i32 %i.xa, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %22, i32 noundef %i.xa, i32 noundef %i.xb)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288 unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288: ; preds = %bb.hp, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit287, %bb.hl
  %i.xc = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.xd = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.xe = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %.pre145 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !35, !range !19
  %i.xf = trunc nuw i8 %.pre145 to i1
  %sext = sext i32 %i.wq to i64
  br i1 %i.xf, label %.backedge, label %.thread194

.thread194:                                       ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288
  %i.xg = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8
  br label %.split

.backedge:                                        ; preds = %._crit_edge79.loopexit, %._crit_edge79, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit288
  %i.xh = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.hq unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hq:                                            ; preds = %.backedge
  br i1 %i.xh, label %.critedge, label %bb.jx

.critedge:                                        ; preds = %bb.hq
  %.pre146 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !35, !range !19
  %.pre146.fr = freeze i8 %.pre146
  %i.xi = trunc i8 %.pre146.fr to i1
  %i.xj = load i32, ptr %22, align 8
  %i.xk = load i32, ptr %i.xc, align 4
  br i1 %i.xi, label %.split, label %bb.hr

bb.hr:                                            ; preds = %.critedge
  %i.xl = load i32, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, align 8
  br label %.split

.split:                                           ; preds = %bb.hr, %.critedge, %.thread194
  %i.xm = phi i32 [ 0, %.thread194 ], [ 0, %bb.hr ], [ %i.xj, %.critedge ] ; 2 uses
  %i.xn = phi i1 [ false, %.thread194 ], [ false, %bb.hr ], [ true, %.critedge ]
  %i.xo = phi i32 [ %i.xg, %.thread194 ], [ %i.xl, %bb.hr ], [ %i.xk, %.critedge ] ; 2 uses
  %i.xp = icmp slt i32 %i.xm, %i.xo
  br i1 %i.xp, label %.lr.ph78.preheader, label %._crit_edge79

.lr.ph78.preheader:                               ; preds = %.split
  %i.xq = sext i32 %i.xm to i64
  br label %.lr.ph78

._crit_edge79.loopexit:                           ; preds = %bb.jv
  %.pre147 = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE11use_clipper, align 1, !tbaa !35, !range !19
  %.pre151 = trunc nuw i8 %.pre147 to i1
  br i1 %.pre151, label %.backedge, label %bb.jx

._crit_edge79:                                    ; preds = %.split
  br i1 %i.xn, label %.backedge, label %bb.jx

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %bb.jv
  %indvars.iv129 = phi i64 [ %i.xq, %.lr.ph78.preheader ], [ %indvars.iv.next130, %bb.jv ] ; 5 uses
  %i.xr = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE13show_in_table, align 1, !tbaa !35, !range !19, !noundef !20
  %i.xs = trunc nuw i8 %i.xr to i1
  br i1 %i.xs, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %.lr.ph78
  %i.xt = invoke noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv()
          to label %bb.ht unwind label %.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp13.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hs, %bb.kg, %bb.ke, %bb.kc, %bb.kb, %bb.ka, %bb.jy, %bb.hm, %bb.ho, %bb.hp, %.backedge
  %lpad.loopexit.split-lp251 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp13.loopexit.split-lp

bb.ht:                                            ; preds = %bb.hs, %.lr.ph78
  %i.xu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE5items_1, i64 8), align 8, !tbaa !143
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.xu, i64 %indvars.iv129
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !51 ; 4 uses
  %i.xx = srem i32 %i.xw, 28
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds [8 x i8], ptr @_ZL12ExampleNames, i64 %i.xy
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !101 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  %i.yb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.966, i32 noundef %i.xw, ptr noundef %i.ya) #30 ; 0 uses
  invoke void @_ZN5ImGui6PushIDEi(i32 noundef %i.xw)
          to label %bb.hu unwind label %bb.ix

bb.hu:                                            ; preds = %bb.ht
  %i.yc = load i8, ptr @_ZZL40DemoWindowWidgetsSelectionAndMultiSelectP19ImGuiDemoWindowDataE17show_color_button, align 1, !tbaa !35, !range !19, !noundef !20
  %i.yd = trunc nuw i8 %i.yc to i1
  %i.ye = trunc nsw i64 %indvars.iv129 to i32     ; 2 uses
  br i1 %i.yd, label %bb.hv, label %._crit_edge152

bb.hv:                                            ; preds = %bb.hu
  %i.yf = mul i32 %i.ye, 5289803                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  %i.yg = and i32 %i.yf, 255
  %i.yh = uitofp nneg i32 %i.yg to float
  %i.yi = fmul nnan float %i.yh, f0x3B808081
  %i.yj = lshr i32 %i.yf, 8
  %i.yk = and i32 %i.yj, 255
  %i.yl = uitofp nneg i32 %i.yk to float
  %i.ym = fmul nnan float %i.yl, f0x3B808081
  %i.yn = lshr i32 %i.yf, 16
end_hunk_7
begin_hunk_8_@_ZL29ExampleImageViewer_DrawCanvasP22ExampleImageViewerData6ImVec212ImTextureRefii:bb.a
  %.not71 = icmp eq ptr %i.bs, null
  br i1 %.not71, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = call noundef nonnull align 8 dereferenceable(120) ptr @_ZN5ImGui13GetPlatformIOEv()
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !454
  call void @_ZN10ImDrawList11AddCallbackEPFvPKS_PK9ImDrawCmdEPvm(ptr noundef nonnull align 8 dereferenceable(224) %i.c, ptr noundef %i.bv, ptr noundef null, i64 noundef 0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !455, !range !19, !noundef !20
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
  %i.df = load i32, ptr %i.cm, align 4, !tbaa !456
  call void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.c, float noundef %i.dc, float noundef %i.dd, float noundef %i.de, i32 noundef %i.df, float noundef 1.000000e+00)
  %i.dg = add nsw i32 %.06476, 1
  %i.dh = load float, ptr %8, align 8, !tbaa !44
  %i.di = load float, ptr %9, align 8, !tbaa !44  ; 2 uses
  %i.dj = fsub float %i.dh, %i.di
  %i.dk = fdiv float %i.dj, %i.ai
  %i.dl = fptosi float %i.dk to i32
  %.not72.not = icmp slt i32 %.06476, %i.dl
  br i1 %.not72.not, label %bb.q, label %._crit_edge, !llvm.loop !448

bb.r:                                             ; preds = %.lr.ph80, %bb.r
  %i.dm = phi float [ %i.co, %.lr.ph80 ], [ %i.du, %bb.r ]
  %.078 = phi i32 [ %i.cy, %.lr.ph80 ], [ %i.ds, %bb.r ] ; 3 uses
  %i.dn = load float, ptr %7, align 8, !tbaa !44
  %i.do = load float, ptr %8, align 8, !tbaa !44
  %i.dp = sitofp i32 %.078 to float
  %i.dq = call float @llvm.fmuladd.f32(float %i.dp, float %i.ai, float %i.dm)
  %i.dr = load i32, ptr %i.cz, align 4, !tbaa !456
  call void @_ZN10ImDrawList8AddLineHEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.c, float noundef %i.dn, float noundef %i.do, float noundef %i.dq, i32 noundef %i.dr, float noundef 1.000000e+00)
  %i.ds = add nsw i32 %.078, 1
  %i.dt = load float, ptr %i.bn, align 4, !tbaa !45
  %i.du = load float, ptr %i.at, align 4, !tbaa !45 ; 2 uses
  %i.dv = fsub float %i.dt, %i.du
  %i.dw = fdiv float %i.dv, %i.ai
  %i.dx = fptosi float %i.dw to i32
  %.not73.not = icmp slt i32 %.078, %i.dx
  br i1 %.not73.not, label %bb.r, label %.loopexit, !llvm.loop !449

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
  %2 = and i32 %1, 1
  %.not = icmp eq i32 %2, 0
  %i.a = select i1 %.not, float -1.000000e+00, float 1.000000e+00
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
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc22:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.pre = load i32, ptr %2, align 8, !tbaa !174
  store ptr %i.g, ptr %i.h, align 8, !tbaa !176
  store i32 %i.c, ptr %i.d, align 4, !tbaa !175
  br label %_ZN8ImVectorIjE7reserveEi.exit

_ZN8ImVectorIjE7reserveEi.exit:                   ; preds = %bb.a, %.noexc22
  %.pre.i40 = phi ptr [ null, %bb.a ], [ %i.g, %.noexc22 ] ; 2 uses
  %i.i = phi i32 [ 0, %bb.a ], [ %i.c, %.noexc22 ] ; 2 uses
  %i.j = phi i32 [ %i.a, %bb.a ], [ %.pre.pre, %.noexc22 ] ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8ImVectorIjE7reserveEi.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = zext i32 %3 to i64
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre42 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !176
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN8ImVectorIjE7reserveEi.exit
  %i.o = phi ptr [ %.pre.i40, %_ZN8ImVectorIjE7reserveEi.exit ], [ %.pre42, %._crit_edge.loopexit ]
  %i.p = phi i32 [ %i.i, %_ZN8ImVectorIjE7reserveEi.exit ], [ %i.ay, %._crit_edge.loopexit ]
  %i.q = phi i32 [ 0, %_ZN8ImVectorIjE7reserveEi.exit ], [ %i.ax, %._crit_edge.loopexit ]
  %.015.lcssa = phi i32 [ -1, %_ZN8ImVectorIjE7reserveEi.exit ], [ %.1, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %i.j, %_ZN8ImVectorIjE7reserveEi.exit ], [ %i.bb, %._crit_edge.loopexit ]
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
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %i.w = phi i32 [ 0, %.lr.ph ], [ %i.ax, %bb.g ] ; 9 uses
  %i.x = phi ptr [ %.pre.i40, %.lr.ph ], [ %.pre.i38, %bb.g ] ; 5 uses
  %i.y = phi i32 [ %i.i, %.lr.ph ], [ %i.ay, %bb.g ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.01531 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.g ]
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !172
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %i.ab = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.aa)
          to label %_ZN26ImGuiSelectionBasicStorage21GetStorageIdFromIndexEi.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

end_hunk_8
begin_hunk_9_@_ZN24ExampleAppPropertyEditor4DrawEP15ExampleTreeNode:bb.a

bb.k:                                             ; preds = %bb.j
  %i.s = load i32, ptr %i.p, align 4, !tbaa !194
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.s)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 16, float noundef 0.000000e+00, i32 noundef 0)
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.157, i32 noundef 8, float noundef 2.000000e+00, i32 noundef 0)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.u = load i8, ptr %i.t, align 4, !tbaa !199, !range !19, !noundef !20
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
  store i32 -2147483648, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 2147483647, ptr %i.b, align 4, !tbaa !51
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
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !46
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %2)
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 2147483647, float noundef -1.000000e+00)
          to label %.preheader28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %.loopexit25
  br i1 %i.h, label %.preheader24, label %.preheader

.preheader24:                                     ; preds = %bb.b
  %i.i = load i32, ptr %i.d, align 8, !tbaa !233  ; 2 uses
  %i.j = load i32, ptr %i.e, align 4, !tbaa !119  ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  %i.l = select i1 %i.k, i1 %i.g, i1 false
  br i1 %i.l, label %.lr.ph, label %.loopexit25, !llvm.loop !504

.lr.ph:                                           ; preds = %.preheader24, %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit
  %i.m = phi i32 [ %i.cd, %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit ], [ %i.j, %.preheader24 ]
  %i.n = phi i32 [ %i.cc, %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit ], [ %i.i, %.preheader24 ]
  %.138 = phi ptr [ %.1.i, %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit ], [ %.0.ph, %.preheader24 ] ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.138, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !196
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !196
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.i, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i

_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.i: ; preds = %.lr.ph
  %i.s = invoke noundef zeroext i1 @_ZNK15ImGuiTextFilter10PassFilterEPKcS1_(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull %.138, ptr noundef null)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.i
  br i1 %i.s, label %.noexc._ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i_crit_edge, label %.thread35.i

.noexc._ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i_crit_edge: ; preds = %.noexc
  %.pre = load i32, ptr %i.d, align 8, !tbaa !233
  %.pre53 = load i32, ptr %i.e, align 4
  br label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i

_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i: ; preds = %.noexc._ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i_crit_edge, %.lr.ph
  %i.t = phi i32 [ %.pre53, %.noexc._ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i_crit_edge ], [ %i.m, %.lr.ph ]
  %i.u = phi i32 [ %.pre, %.noexc._ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i_crit_edge ], [ %i.n, %.lr.ph ] ; 3 uses
  %i.v = load i32, ptr %2, align 8, !tbaa !118
  %.not.i = icmp sge i32 %i.u, %i.v
  %i.w = icmp slt i32 %i.u, %i.t
  %or.cond = select i1 %.not.i, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %.138, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !197
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %.thread28.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.138, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !194
  %i.ac = invoke noundef zeroext i1 @_ZN5ImGui15TreeNodeGetOpenEj(i32 noundef %i.ab)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.d
  br i1 %i.ac, label %.thread31.i, label %..thread28_crit_edge.i

..thread28_crit_edge.i:                           ; preds = %.noexc7
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !233
  br label %.thread28.i

.thread31.i:                                      ; preds = %.noexc7
  invoke void @_ZN5ImGui8TreePushEPKc(ptr noundef nonnull %.138)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %.thread31.i
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !233
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.d, align 8, !tbaa !233
  br label %bb.i

.thread28.i:                                      ; preds = %..thread28_crit_edge.i, %bb.c
  %i.af = phi i32 [ %.pre.i, %..thread28_crit_edge.i ], [ %i.u, %bb.c ]
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.d, align 8, !tbaa !233
  br label %.thread35.i

bb.e:                                             ; preds = %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread.i
  invoke void @_ZN5ImGui12TableNextRowEif(i32 noundef 0, float noundef 0.000000e+00)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %bb.e
  %i.ah = invoke noundef zeroext i1 @_ZN5ImGui15TableNextColumnEv()
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc13:                                         ; preds = %.noexc12
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.aj = icmp eq ptr %.138, %i.ai
  %spec.select.i = select i1 %i.aj, i32 1183937, i32 1183936 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.138, i64 40 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !197
  %i.am = icmp eq i32 %i.al, 0
  %i.an = or disjoint i32 %spec.select.i, 776
  %.1.i11 = select i1 %i.am, i32 %i.an, i32 %spec.select.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.138, i64 61 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !192, !range !19, !noundef !20
  %3 = icmp eq i8 %i.ap, 0
  br i1 %3, label %bb.f, label %.noexc15

bb.f:                                             ; preds = %.noexc13
  %i.aq = invoke noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 340
  invoke void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.ar)
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %.noexc14, %.noexc13
  %i.as = getelementptr inbounds nuw i8, ptr %.138, i64 28 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !194
  invoke void @_ZN5ImGui20SetNextItemStorageIDEj(i32 noundef %i.at)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %.noexc15
  %i.au = load i32, ptr %i.as, align 4, !tbaa !194
  %i.av = sext i32 %i.au to i64
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = invoke noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef %i.aw, i32 noundef %.1.i11, ptr noundef nonnull @.str.1078, ptr noundef nonnull %.138)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %.noexc16
  %i.ay = load i32, ptr %i.ak, align 8, !tbaa !197
  %i.az = load i8, ptr %i.ao, align 1, !tbaa !192, !range !19, !noundef !20
  %4 = icmp eq i8 %i.az, 0
  br i1 %4, label %bb.g, label %.noexc18

bb.g:                                             ; preds = %.noexc17
  invoke void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.g, %.noexc17
  %i.ba = invoke noundef zeroext i1 @_ZN5ImGui13IsItemFocusedEv()
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %.noexc18
  br i1 %i.ba, label %bb.h, label %.noexc9

bb.h:                                             ; preds = %.noexc19
  store ptr %.138, ptr %i.f, align 8, !tbaa !106
  br label %.noexc9

.noexc9:                                          ; preds = %bb.h, %.noexc19
  %i.bb = icmp ne i32 %i.ay, 0
  %narrow.i = and i1 %i.ax, %i.bb
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !233
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.d, align 8, !tbaa !233
  br i1 %narrow.i, label %bb.i, label %.thread35.i

bb.i:                                             ; preds = %.noexc9, %.noexc8
  %i.be = getelementptr inbounds nuw i8, ptr %.138, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !159
  br label %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit

.thread35.i:                                      ; preds = %.noexc9, %.thread28.i, %.noexc
  %i.bg = getelementptr inbounds nuw i8, ptr %.138, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !195
  %i.bi = add nsw i32 %i.bh, 1                    ; 2 uses
  %i.bj = load ptr, ptr %i.o, align 8, !tbaa !196 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !197
  %i.bm = icmp slt i32 %i.bi, %i.bl
  br i1 %i.bm, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc10, %.thread35.i
  %.lcssa39.i = phi i32 [ %i.bi, %.thread35.i ], [ %i.bx, %.noexc10 ]
  %.lcssa.i = phi ptr [ %i.bj, %.thread35.i ], [ %i.by, %.noexc10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !159
  %i.bp = sext i32 %.lcssa39.i to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  br label %_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit

.lr.ph.i:                                         ; preds = %.thread35.i, %.noexc10
  %i.br = phi ptr [ %i.by, %.noexc10 ], [ %i.bj, %.thread35.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !196
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %.loopexit25.outer.backedge, label %bb.j, !llvm.loop !504

bb.j:                                             ; preds = %.lr.ph.i
  invoke void @_ZN5ImGui7TreePopEv()
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !195
  %i.bx = add nsw i32 %i.bw, 1                    ; 2 uses
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !196 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !197
  %i.cb = icmp slt i32 %i.bx, %i.ca
  br i1 %i.cb, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5

_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode.exit: ; preds = %bb.i, %._crit_edge.i
  %.1.i.in = phi ptr [ %i.bq, %._crit_edge.i ], [ %i.bf, %bb.i ]
  %.1.i = load ptr, ptr %.1.i.in, align 8, !tbaa !161 ; 3 uses
  %i.cc = load i32, ptr %i.d, align 8, !tbaa !233 ; 2 uses
  %i.cd = load i32, ptr %i.e, align 4, !tbaa !119 ; 2 uses
  %i.ce = icmp slt i32 %i.cc, %i.cd
  %i.cf = icmp ne ptr %.1.i, null
  %i.cg = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %i.cg, label %.lr.ph, label %.loopexit25.outer.backedge, !llvm.loop !504

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.i, %bb.d, %.thread31.i, %bb.e, %.noexc12, %bb.f, %.noexc14, %.noexc15, %.noexc16, %bb.g, %.noexc18, %bb.j, %bb.k, %.loopexit25, %bb.l, %bb.a
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %lpad.loopexit.split-lp86

.preheader:                                       ; preds = %bb.b, %bb.k
  %.2 = phi ptr [ %i.ch, %bb.k ], [ %.0.ph, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.2, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.ch = invoke noundef ptr @_ZN24ExampleAppPropertyEditor35DrawClippedTreeNodeAndAdvanceToNextEP16ImGuiListClipperP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull %2, ptr noundef nonnull %.2)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !505

bb.l:                                             ; preds = %.preheader
  %i.ci = load i32, ptr %i.d, align 8, !tbaa !233
  invoke void @_ZN16ImGuiListClipper17SeekCursorForItemEi(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %i.ci)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.012 = phi ptr [ %i.n, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.012, align 8, !tbaa !161 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !196
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !196
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !196
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread

_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit: ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZNK15ImGuiTextFilter10PassFilterEPKcS1_(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull %2, ptr noundef null)
  br i1 %i.e, label %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread, label %.thread35

_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread: ; preds = %bb.a, %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !233  ; 3 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !118
  %.not = icmp slt i32 %i.g, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !119
  %i.k = icmp slt i32 %i.g, %i.j
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !197
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %.thread28

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !194
  %i.q = tail call noundef zeroext i1 @_ZN5ImGui15TreeNodeGetOpenEj(i32 noundef %i.p)
  br i1 %i.q, label %.thread31, label %..thread28_crit_edge

..thread28_crit_edge:                             ; preds = %bb.d
  %.pre = load i32, ptr %i.f, align 8, !tbaa !233
  br label %.thread28

.thread31:                                        ; preds = %bb.d
  tail call void @_ZN5ImGui8TreePushEPKc(ptr noundef nonnull %2)
  %i.r = load i32, ptr %i.f, align 8, !tbaa !233
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.f, align 8, !tbaa !233
  br label %bb.f

.thread28:                                        ; preds = %..thread28_crit_edge, %bb.c
  %i.t = phi i32 [ %.pre, %..thread28_crit_edge ], [ %i.g, %bb.c ]
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.f, align 8, !tbaa !233
  br label %.thread35

bb.e:                                             ; preds = %bb.b
  %i.v = tail call noundef zeroext i1 @_ZN24ExampleAppPropertyEditor12DrawTreeNodeEP15ExampleTreeNode(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef nonnull %2)
  %i.w = load i32, ptr %i.f, align 8, !tbaa !233
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.f, align 8, !tbaa !233
  br i1 %i.v, label %bb.f, label %.thread35

bb.f:                                             ; preds = %bb.e, %.thread31
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !159
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !161
  br label %.loopexit

.thread35:                                        ; preds = %.thread28, %bb.e, %_ZN24ExampleAppPropertyEditor19IsNodePassingFilterEP15ExampleTreeNode.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !195
  %i.ad = add nsw i32 %i.ac, 1                    ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !196 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !197
  %i.ah = icmp slt i32 %i.ad, %i.ag
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %.thread35
  %.lcssa39 = phi i32 [ %i.ad, %.thread35 ], [ %i.at, %bb.g ]
  %.lcssa = phi ptr [ %i.ae, %.thread35 ], [ %i.au, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !159
  %i.ak = sext i32 %.lcssa39 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !161
  br label %.loopexit

.lr.ph:                                           ; preds = %.thread35, %bb.g
  %i.an = phi ptr [ %i.au, %bb.g ], [ %i.ae, %.thread35 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !196
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  tail call void @_ZN5ImGui7TreePopEv()
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !195
  %i.at = add nsw i32 %i.as, 1                    ; 2 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !196 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !197
  %i.ax = icmp slt i32 %i.at, %i.aw
  br i1 %i.ax, label %._crit_edge, label %.lr.ph, !llvm.loop !5

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.d = icmp eq ptr %1, %i.c
  %spec.select = select i1 %i.d, i32 1183937, i32 1183936 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !197
  %i.g = icmp eq i32 %i.f, 0
  %i.h = or disjoint i32 %spec.select, 776
  %.1 = select i1 %i.g, i32 %i.h, i32 %spec.select
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 61 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !192, !range !19, !noundef !20
  %2 = icmp eq i8 %i.j, 0
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 4 dereferenceable(1328) ptr @_ZN5ImGui8GetStyleEv()
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 340
  tail call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !194
  tail call void @_ZN5ImGui20SetNextItemStorageIDEj(i32 noundef %i.n)
  %i.o = load i32, ptr %i.m, align 4, !tbaa !194
  %i.p = sext i32 %i.o to i64
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = tail call noundef zeroext i1 (ptr, i32, ptr, ...) @_ZN5ImGui10TreeNodeExEPKviPKcz(ptr noundef %i.q, i32 noundef %.1, ptr noundef nonnull @.str.1078, ptr noundef nonnull %1)
  %i.s = load i32, ptr %i.e, align 8, !tbaa !197
  %i.t = load i8, ptr %i.i, align 1, !tbaa !192, !range !19, !noundef !20
  %3 = icmp eq i8 %i.t, 0
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = tail call noundef zeroext i1 @_ZN5ImGui13IsItemFocusedEv()
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %1, ptr %i.b, align 8, !tbaa !106
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !235
  %i.b = load float, ptr %i.a, align 4, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load float, ptr %i.c, align 8, !tbaa !236
  %i.e = fdiv float %i.d, %i.b
  %i.f = fptosi float %i.e to i32
  %i.g = sitofp i32 %i.f to float
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.g, ptr %i.h, align 4, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints6SquareEP21ImGuiSizeCallbackData(ptr nofree noundef captures(none) %0) #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !236 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !237 ; 2 uses
  %.inv = fcmp oge float %i.b, %i.d
  %. = select i1 %.inv, float %i.b, float %i.d    ; 2 uses
  store float %., ptr %i.c, align 4, !tbaa !237
  store float %., ptr %i.a, align 8, !tbaa !236
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints4StepEP21ImGuiSizeCallbackData(ptr nofree noundef captures(none) %0) #28 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !235
  %i.b = load float, ptr %i.a, align 4, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load <2 x float>, ptr %i.c, align 8, !tbaa !46
  %i.e = insertelement <2 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.g = fdiv <2 x float> %i.d, %i.f
  %i.h = fadd <2 x float> %i.g, splat (float 5.000000e-01)
  %i.i = fptosi <2 x float> %i.h to <2 x i32>
  %i.j = sitofp <2 x i32> %i.i to <2 x float>
  %i.k = fmul <2 x float> %i.f, %i.j
  store <2 x float> %i.k, ptr %i.c, align 8, !tbaa !46
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.d, null
  br i1 %.not6.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc
  %i.e = load i32, ptr %0, align 8, !tbaa !24
  %i.f = sext i32 %i.e to i64
  %i.g = mul nsw i64 %i.f, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.b, ptr nonnull align 4 %i.d, i64 %i.g, i1 false)
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !23
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.h)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %.noexc, %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !23
  store i32 8, ptr %i.a, align 4, !tbaa !506
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !24
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
  %i.k = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.l = add nsw i32 %i.k, 1                      ; 6 uses
  store i32 %i.l, ptr %0, align 8, !tbaa !24
  %i.m = load i32, ptr %i.a, align 4, !tbaa !506
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i5

._ZN8ImVectorI10MyDocumentE7reserveEi.exit_crit_edge.i5: ; preds = %bb.b
  %.phi.trans.insert.i6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i7 = load ptr, ptr %.phi.trans.insert.i6, align 8, !tbaa !23
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %i.k, 2
  %.not.i.i8 = icmp eq i32 %i.l, 0
end_hunk_9
begin_hunk_10_@_ZN20ExampleAssetsBrowser4DrawEPKcPb:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !166
  %i.aa = icmp sgt i32 %i.z, 0
  %i.ab = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.2328, ptr noundef nonnull @.str.2329, i1 noundef zeroext false, i1 noundef zeroext %i.aa)
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 1, ptr %i.ac, align 4, !tbaa !249
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
  %i.an = load i8, ptr %i.al, align 1, !tbaa !511, !range !19, !noundef !20
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.ap, align 4, !tbaa !242
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ar = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.2335, ptr noundef nonnull %i.aq)
  br i1 %i.ar, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.as = load i8, ptr %i.aq, align 4, !tbaa !242, !range !19, !noundef !20
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.al, align 1, !tbaa !511
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
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !512, !range !19, !noundef !20
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !46
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bj = call noundef float @_ZN5ImGui14GetFrameHeightEv()
  store float 0.000000e+00, ptr %5, align 4, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.bj, ptr %i.bk, align 4, !tbaa !45
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
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !153, !range !19, !noundef !20
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !250, !range !19, !noundef !20
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !513
  %i.bw = load i32, ptr %i.bt, align 8, !tbaa !254 ; 2 uses
  store ptr %i.bm, ptr @_ZN12ExampleAsset20s_current_sort_specsE, align 8, !tbaa !155
  %i.bx = icmp sgt i32 %i.bw, 1
  br i1 %i.bx, label %bb.ah, label %_ZN12ExampleAsset17SortWithSortSpecsEP19ImGuiTableSortSpecsPS_i.exit

bb.ah:                                            ; preds = %bb.ag
  %i.by = zext nneg i32 %i.bw to i64
  call void @qsort(ptr noundef %i.bv, i64 noundef %i.by, i64 noundef 8, ptr noundef nonnull @_ZN12ExampleAsset20CompareWithSortSpecsEPKvS1_)
  br label %_ZN12ExampleAsset17SortWithSortSpecsEP19ImGuiTableSortSpecsPS_i.exit

_ZN12ExampleAsset17SortWithSortSpecsEP19ImGuiTableSortSpecsPS_i.exit: ; preds = %bb.ag, %bb.ah
  store ptr null, ptr @_ZN12ExampleAsset20s_current_sort_specsE, align 8, !tbaa !155
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 0, ptr %i.bz, align 1, !tbaa !250
  store i8 0, ptr %i.bn, align 4, !tbaa !153
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
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !255
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !256
  %i.cf = sitofp i32 %i.ce to float
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !514
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !257
  %i.cl = fadd float %i.ci, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.cf, float %i.cl, float %i.cc)
  store float 0.000000e+00, ptr %6, align 4, !tbaa !44
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.cm, ptr %i.cn, align 4, !tbaa !45
  call void @_ZN5ImGui24SetNextWindowContentSizeERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.co = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.cp = fneg float %i.co
  store float 0.000000e+00, ptr %7, align 4, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.cp, ptr %i.cq, align 4, !tbaa !45
  %i.cr = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.2345, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef 1, i32 noundef 2052)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %i.cr, label %bb.al, label %bb.ei

bb.al:                                            ; preds = %bb.ak
  %i.cs = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() ; 3 uses
  %i.ct = call <2 x float> @_ZN5ImGui21GetContentRegionAvailEv()
  %.sroa.063.0.vec.extract = extractelement <2 x float> %i.ct, i64 0 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !244
  %i.cw = sitofp i32 %i.cv to float               ; 4 uses
  store float %i.cw, ptr %i.cj, align 4, !tbaa !257
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !246, !range !19, !noundef !20 ; 2 uses
  %18 = icmp eq i8 %i.cy, 0
  br i1 %18, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cz = fmul nnan float %i.cw, 5.000000e-01
  %i.da = call float @llvm.floor.f32(float %i.cz)
  %i.db = fadd float %.sroa.063.0.vec.extract, %i.da
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0.i = phi float [ %i.db, %bb.am ], [ %.sroa.063.0.vec.extract, %bb.al ] ; 2 uses
  %i.dc = load float, ptr %i.d, align 8, !tbaa !243
  %i.dd = call float @llvm.floor.f32(float %i.dc) ; 5 uses
  store float %i.dd, ptr %i.cg, align 4, !tbaa !46
  store float %i.dd, ptr %i.ch, align 8, !tbaa !46
  %i.de = fadd float %i.dd, %i.cw
  %i.df = fdiv float %.0.i, %i.de
  %i.dg = fptosi float %i.df to i32               ; 2 uses
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.dg, i32 1) ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  store i32 %spec.select.i, ptr %i.dh, align 8, !tbaa !258
  %19 = trunc nuw i8 %i.cy to i1
  %i.di = icmp sgt i32 %i.dg, 1
  %or.cond.i = select i1 %19, i1 %i.di, i1 false
  br i1 %or.cond.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dj = uitofp nneg i32 %spec.select.i to float ; 2 uses
  %i.dk = fneg float %i.dd
  %i.dl = call float @llvm.fmuladd.f32(float %i.dk, float %i.dj, float %.0.i)
  %i.dm = call float @llvm.floor.f32(float %i.dl)
  %i.dn = fdiv float %i.dm, %i.dj                 ; 2 uses
  store float %i.dn, ptr %i.cj, align 4, !tbaa !257
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.do = phi float [ %i.dn, %bb.ao ], [ %i.cw, %bb.an ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !247, !range !19, !noundef !20
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.aq, label %_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ds = shl nuw nsw i32 %spec.select.i, 1       ; 2 uses
  store i32 %i.ds, ptr %i.dh, align 8, !tbaa !258
  br label %_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit

_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit: ; preds = %bb.ap, %bb.aq
  %i.dt = phi i32 [ %i.ds, %bb.aq ], [ %spec.select.i, %bb.ap ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !254
  %i.dw = add nsw i32 %i.dt, -1
  %i.dx = add i32 %i.dw, %i.dv
  %i.dy = sdiv i32 %i.dx, %i.dt
  store i32 %i.dy, ptr %i.cd, align 4, !tbaa !256
  %i.dz = fadd float %i.dd, %i.do                 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  store float %i.dz, ptr %i.ea, align 4, !tbaa !46
  %.sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store float %i.dz, ptr %.sroa_idx8.i, align 8, !tbaa !46
  %i.eb = call float @llvm.floor.f32(float %i.do)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !245
  %i.ee = sitofp i32 %i.ed to float
  %i.ef = fsub float %i.eb, %i.ee                 ; 2 uses
  %.inv.i = fcmp oge float %i.ef, 0.000000e+00
  %i.eg = select i1 %.inv.i, float %i.ef, float 0.000000e+00
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store float %i.eg, ptr %i.eh, align 8, !tbaa !259
  %i.ei = fmul float %i.do, 5.000000e-01
  %i.ej = call float @llvm.floor.f32(float %i.ei)
  store float %i.ej, ptr %i.cb, align 4, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ek = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv()
  %i.el = load float, ptr %i.cb, align 4, !tbaa !255
  %i.em = insertelement <2 x float> poison, float %i.el, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = fadd <2 x float> %i.en, %i.ek
  store <2 x float> %i.eo, ptr %8, align 8, !tbaa !46
  call void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %8)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !515, !range !19, !noundef !20
  %i.er = trunc nuw i8 %i.eq to i1
  %spec.select = select i1 %i.er, i32 1664, i32 1536 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.et = load i8, ptr %i.es, align 4, !tbaa !242, !range !19, !noundef !20
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit
  %i.ev = or disjoint i32 %spec.select, 32768
  br label %bb.at

bb.as:                                            ; preds = %_ZN20ExampleAssetsBrowser17UpdateLayoutSizesEf.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !511, !range !19, !noundef !20
  %i.ey = zext nneg i8 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 14
  %spec.select125 = or disjoint i32 %i.ez, %spec.select
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1100 = phi i32 [ %i.ev, %bb.ar ], [ %spec.select125, %bb.as ]
  %i.fa = or i32 %.1100, 65536
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !166
  %i.fd = load i32, ptr %i.du, align 8, !tbaa !254
  %i.fe = call noundef ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef %i.fa, i32 noundef %i.fc, i32 noundef %i.fd) ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %0, ptr %i.ff, align 8, !tbaa !171
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr @_ZZN20ExampleAssetsBrowser4DrawEPKcPbENUlP26ImGuiSelectionBasicStorageiE_8__invokeES4_i, ptr %i.fg, align 8, !tbaa !172
  call void @_ZN26ImGuiSelectionBasicStorage13ApplyRequestsEP18ImGuiMultiSelectIO(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, ptr noundef %i.fe)
  %i.fh = call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 522, i32 noundef 1)
  br i1 %i.fh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fi = load i32, ptr %i.fb, align 8, !tbaa !166
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.thread170, label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.fl = load i8, ptr %i.fk, align 4, !tbaa !249, !range !19, !noundef !20
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.aw, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit

bb.aw:                                            ; preds = %bb.av
  %.pr = load i32, ptr %i.fb, align 8, !tbaa !166
  %i.fn = icmp eq i32 %.pr, 0
  br i1 %i.fn, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.thread170

.thread170:                                       ; preds = %bb.au, %bb.aw
  %i.fo = load i32, ptr %i.du, align 8, !tbaa !254 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !177
  %i.fr = trunc i64 %i.fq to i32                  ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !178, !range !19, !noundef !20
  %20 = icmp eq i8 %i.ft, 0
  br i1 %20, label %bb.ax, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.thread170
  %.022.i266 = add nsw i32 %i.fr, 1               ; 2 uses
  %.not.i267 = icmp slt i32 %.022.i266, %i.fo
  br i1 %.not.i267, label %.lr.ph269, label %.critedge.i

bb.ax:                                            ; preds = %.thread170
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 33
  store i8 1, ptr %i.fu, align 1, !tbaa !179
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit

.preheader.i:                                     ; preds = %.lr.ph269
  %.022.i = add nsw i32 %.022.i268, 1             ; 2 uses
  %.not.i = icmp slt i32 %.022.i, %i.fo
  br i1 %.not.i, label %.lr.ph269, label %.critedge.i, !llvm.loop !0

.lr.ph269:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.022.i268 = phi i32 [ %.022.i, %.preheader.i ], [ %.022.i266, %.preheader.i.preheader ] ; 3 uses
  %i.fv = load ptr, ptr %i.fg, align 8, !tbaa !172
  %i.fw = call noundef i32 %i.fv(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i32 noundef %.022.i268), !inline_history !1
  %i.fx = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i32 noundef %i.fw)
  br i1 %i.fx, label %.preheader.i, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i.preheader
  %i.fy = call i32 @llvm.smin.i32(i32 %i.fo, i32 %i.fr) ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 1
  br i1 %i.fz, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.lr.ph271

bb.ay:                                            ; preds = %.lr.ph271
  %i.ga = icmp slt i32 %.0.in.i270, 2
  br i1 %i.ga, label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, label %.lr.ph271, !llvm.loop !2

.lr.ph271:                                        ; preds = %.critedge.i, %bb.ay
  %.0.in.i270 = phi i32 [ %.0.i127, %bb.ay ], [ %i.fy, %.critedge.i ] ; 2 uses
  %.0.i127 = add nsw i32 %.0.in.i270, -1          ; 3 uses
  %i.gb = load ptr, ptr %i.fg, align 8, !tbaa !172
  %i.gc = call noundef i32 %i.gb(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i32 noundef %.0.i127), !inline_history !1
  %i.gd = call noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i32 noundef %i.gc)
  br i1 %i.gd, label %bb.ay, label %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge272, !llvm.loop !2

._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge272: ; preds = %.lr.ph271
  br label %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, !llvm.loop !2

_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit: ; preds = %.lr.ph269, %bb.ay, %.critedge.i, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge272, %bb.ax, %bb.aw, %bb.av
  %i.ge = phi i1 [ false, %bb.av ], [ true, %bb.aw ], [ true, %bb.ax ], [ true, %.critedge.i ], [ true, %bb.ay ], [ true, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge272 ], [ true, %.lr.ph269 ]
  %i.gf = phi i32 [ -1, %bb.av ], [ -1, %bb.aw ], [ %i.fr, %bb.ax ], [ -1, %.critedge.i ], [ -1, %bb.ay ], [ %.0.i127, %._ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit.loopexit_crit_edge272 ], [ %.022.i268, %.lr.ph269 ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  store i8 0, ptr %i.gg, align 4, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.gh = load float, ptr %i.eh, align 8, !tbaa !259 ; 2 uses
  store float %i.gh, ptr %9, align 4, !tbaa !44
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.gh, ptr %i.gi, align 4, !tbaa !45
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.gj = call noundef i32 @_ZN5ImGui11GetColorU32Ejf(i32 noundef -601677021, float noundef 1.000000e+00)
  %i.gk = load float, ptr %i.cg, align 4, !tbaa !516
  %i.gl = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull @.str.2346, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.043.0.vec.extract = extractelement <2 x float> %i.gl, i64 0
  %i.gm = fcmp ult float %i.gk, %.sroa.043.0.vec.extract
  %i.gn = load i32, ptr %i.dh, align 8, !tbaa !258 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10)
  %i.go = load i32, ptr %i.cd, align 4, !tbaa !256
  %i.gp = load float, ptr %.sroa_idx8.i, align 8, !tbaa !517
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef %i.go, float noundef %i.gp)
          to label %bb.az unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit
  %.not108 = icmp eq i32 %i.gf, -1
  br i1 %.not108, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = sdiv i32 %i.gf, %i.gn                   ; 2 uses
  %i.gr = add nsw i32 %i.gq, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef %i.gq, i32 noundef %i.gr)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit: ; preds = %bb.ba, %bb.az
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !170 ; 2 uses
  %.not109 = icmp eq i64 %i.gt, -1
  br i1 %.not109, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit128, label %bb.bb

bb.bb:                                            ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = sdiv i32 %i.gu, %i.gn                   ; 2 uses
  %i.gw = add nsw i32 %i.gv, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef %i.gv, i32 noundef %i.gw)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit128 unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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

.loopexit185:                                     ; preds = %.loopexit179, %bb.be
  br label %bb.bc, !llvm.loop !507

bb.bc:                                            ; preds = %.loopexit185, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit128
  %i.he = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %bb.bd unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.he, label %bb.be, label %bb.cx

bb.be:                                            ; preds = %bb.bd
  %i.hf = load i32, ptr %10, align 8, !tbaa !118  ; 3 uses
  %i.hg = load i32, ptr %i.gx, align 4, !tbaa !119 ; 2 uses
  %i.hh = icmp slt i32 %i.hf, %i.hg
  br i1 %i.hh, label %.lr.ph198.preheader, label %.loopexit185

.lr.ph198.preheader:                              ; preds = %bb.be
  %i.hi = mul i32 %i.gn, %i.hf
  br label %.lr.ph198

.loopexit179.loopexit:                            ; preds = %bb.cw
  %.pre = load i32, ptr %i.gx, align 4, !tbaa !119
  br label %.loopexit179

.loopexit179:                                     ; preds = %.loopexit179.loopexit, %.lr.ph198
  %i.hj = phi i32 [ %.pre, %.loopexit179.loopexit ], [ %i.hl, %.lr.ph198 ] ; 2 uses
  %i.hk = icmp slt i32 %i.hn, %i.hj
  %indvars.iv.next222 = add i32 %indvars.iv221, %i.gn
  br i1 %i.hk, label %.lr.ph198, label %.loopexit185, !llvm.loop !508

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %.loopexit179
  %i.hl = phi i32 [ %i.hg, %.lr.ph198.preheader ], [ %i.hj, %.loopexit179 ]
  %indvars.iv221 = phi i32 [ %i.hi, %.lr.ph198.preheader ], [ %indvars.iv.next222, %.loopexit179 ] ; 2 uses
  %.086197 = phi i32 [ %i.hf, %.lr.ph198.preheader ], [ %i.hn, %.loopexit179 ] ; 3 uses
  %i.hm = mul nsw i32 %.086197, %i.gn
  %i.hn = add nsw i32 %.086197, 1                 ; 3 uses
  %i.ho = mul nsw i32 %i.hn, %i.gn
  %i.hp = load i32, ptr %i.du, align 8, !tbaa !254
  %. = call i32 @llvm.smin.i32(i32 %i.ho, i32 %i.hp) ; 2 uses
  %i.hq = icmp slt i32 %i.hm, %.
  br i1 %i.hq, label %.lr.ph, label %.loopexit179

.lr.ph:                                           ; preds = %.lr.ph198
  %i.hr = sext i32 %indvars.iv221 to i64
  %i.hs = sitofp i32 %.086197 to float
  %i.ht = sext i32 %. to i64
  %i.hu = insertelement <2 x float> poison, float %i.hs, i64 1
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph, %bb.cw
  %indvars.iv223 = phi i64 [ %i.hr, %.lr.ph ], [ %indvars.iv.next224, %bb.cw ] ; 5 uses
  %i.hv = load ptr, ptr %i.gy, align 8, !tbaa !251
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hv, i64 %indvars.iv223 ; 5 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !261
  invoke void @_ZN5ImGui6PushIDEi(i32 noundef %i.hx)
          to label %bb.bg unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.hy = trunc nsw i64 %indvars.iv223 to i32
  %i.hz = srem i32 %i.hy, %i.gn
  %i.ia = sitofp i32 %i.hz to float
  %i.ib = load <2 x float>, ptr %8, align 8, !tbaa !46
  %i.ic = load <2 x float>, ptr %i.ea, align 4, !tbaa !46
  %i.id = insertelement <2 x float> %i.hu, float %i.ia, i64 0
  %i.ie = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.ic, <2 x float> %i.ib)
  store <2 x float> %i.ie, ptr %11, align 8, !tbaa !46
  invoke void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %11)
          to label %bb.bh unwind label %bb.ce

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5ImGui28SetNextItemSelectionUserDataEx(i64 noundef %indvars.iv223)
          to label %bb.bi unwind label %bb.ce

bb.bi:                                            ; preds = %bb.bh
  %i.if = load i32, ptr %i.hw, align 4, !tbaa !261
  %i.ig = invoke noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i32 noundef %i.if)
          to label %bb.bj unwind label %bb.ce     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.ih = invoke noundef zeroext i1 @_ZN5ImGui13IsRectVisibleERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %i.cg)
          to label %bb.bk unwind label %bb.ce

bb.bk:                                            ; preds = %bb.bj
  %i.ii = invoke noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.157, i1 noundef zeroext %i.ig, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %i.cg)
          to label %bb.bl unwind label %bb.ce     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ij = invoke noundef zeroext i1 @_ZN5ImGui22IsItemToggledSelectionEv()
          to label %bb.bm unwind label %bb.ce

bb.bm:                                            ; preds = %bb.bl
  %spec.select126 = xor i1 %i.ig, %i.ij           ; 2 uses
  %i.ik = icmp eq i64 %indvars.iv223, %sext
  br i1 %i.ik, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN5ImGui20SetKeyboardFocusHereEi(i32 noundef -1)
end_hunk_10
begin_hunk_11_@_ZN20ExampleAssetsBrowser4DrawEPKcPb:bb.a
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.nf, i64 1
  %i.nl = fsub float %i.ne, %.sroa.0.4.vec.extract
  %i.nm = fsub float %i.nk, %i.nl
  invoke void @_ZN5ImGui10SetScrollYEf(float noundef %i.nm)
          to label %bb.eh unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %bb.bc, %bb.bb, %bb.ba, %bb.ee, %bb.ed, %bb.dx, %bb.dv, %bb.ds, %bb.dp, %bb.do, %bb.dm, %bb.dl, %bb.dk, %bb.dh, %bb.dg, %bb.df, %bb.dd, %bb.dc, %bb.cx, %_ZN28ExampleSelectionWithDeletion20ApplyDeletionPreLoopEP18ImGuiMultiSelectIOi.exit, %bb.ef, %bb.eg
  %lpad.loopexit.split-lp278 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp181.loopexit.split-lp

bb.eh:                                            ; preds = %bb.eg, %bb.dz, %bb.dy, %bb.dw, %bb.du, %bb.dt
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ei

.loopexit.split-lp181.loopexit.split-lp:          ; preds = %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN8ImVectorIjED2Ev.exit, %bb.db
  %.pn119.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ld, %bb.db ], [ %.pn119.pn.pn, %_ZN8ImVectorIjED2Ev.exit ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %.pn119.pn.pn.pn.pn

bb.ei:                                            ; preds = %bb.eh, %bb.ak
  call void @_ZN5ImGui8EndChildEv()
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !166
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !254
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.2350, i32 noundef %i.no, i32 noundef %i.nq)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.c, %bb.ei
  call void @_ZN5ImGui3EndEv()
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN20ExampleAssetsBrowser8AddItemsEi(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !254  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.d, align 8, !tbaa !248
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = add nsw i32 %i.b, %1                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !252
  %.not.i = icmp sgt i32 %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %i.e to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !251  ; 2 uses
  %.not6.i = icmp eq ptr %i.l, null
  br i1 %.not6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.a, align 8, !tbaa !253
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.j, ptr nonnull align 4 %i.l, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !251
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.p)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.j, ptr %i.k, align 8, !tbaa !251
  store i32 %i.e, ptr %i.f, align 4, !tbaa !252
  br label %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit

_ZN8ImVectorI12ExampleAssetE7reserveEi.exit:      ; preds = %bb.c, %bb.f
  %i.q = icmp sgt i32 %1, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %.pre = load i32, ptr %i.r, align 8, !tbaa !248
  %.pre6 = load i32, ptr %i.a, align 8, !tbaa !253
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 1, ptr %i.s, align 1, !tbaa !250
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
  %i.z = load i32, ptr %i.f, align 4, !tbaa !252
  %i.aa = icmp eq i32 %i.t, %i.z
  br i1 %i.aa, label %bb.h, label %._ZN8ImVectorI12ExampleAssetE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI12ExampleAssetE7reserveEi.exit_crit_edge.i: ; preds = %bb.g
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !251
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
  %i.aj = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !251 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aj, null
  br i1 %.not6.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !253
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ai, ptr nonnull align 4 %i.aj, i64 %i.am, i1 false)
  %i.an = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !251
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.an)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i
  store ptr %i.ai, ptr %.phi.trans.insert.i, align 8, !tbaa !251
  store i32 %i.af, ptr %i.f, align 4, !tbaa !252
  %.pre3.i = load i32, ptr %i.a, align 8, !tbaa !253
  br label %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit

_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI12ExampleAssetE7reserveEi.exit_crit_edge.i, %bb.k
  %i.ao = phi i32 [ %i.t, %._ZN8ImVectorI12ExampleAssetE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.k ]
  %i.ap = phi ptr [ %.pre.i, %._ZN8ImVectorI12ExampleAssetE7reserveEi.exit_crit_edge.i ], [ %i.ai, %bb.k ]
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  %.sroa.0.0.insert.ext = zext i32 %i.u to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.ar, align 4
  %i.as = load i32, ptr %i.a, align 8, !tbaa !253
  %i.at = add nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 8, !tbaa !253
  %i.au = add nuw nsw i32 %.05, 1                 ; 2 uses
  %i.av = load i32, ptr %i.r, align 8, !tbaa !248
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.r, align 8, !tbaa !248
  %exitcond.not = icmp eq i32 %i.au, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !521
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8ImVectorI12ExampleAssetED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251  ; 2 uses
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !244
  %i.c = sitofp i32 %i.b to float                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  store float %i.c, ptr %i.d, align 4, !tbaa !257
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i8, ptr %i.e, align 4, !tbaa !246, !range !19, !noundef !20 ; 2 uses
  %2 = icmp eq i8 %i.f, 0
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = fmul nnan float %i.c, 5.000000e-01
  %i.h = tail call float @llvm.floor.f32(float %i.g)
  %i.i = fadd float %1, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.i, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load float, ptr %i.j, align 8, !tbaa !243
  %i.l = tail call float @llvm.floor.f32(float %i.k) ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.l, ptr %i.m, align 4, !tbaa !46
  %.sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.l, ptr %.sroa_idx9, align 8, !tbaa !46
  %i.n = fadd float %i.l, %i.c
  %i.o = fdiv float %.0, %i.n
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1) ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i32 %spec.select, ptr %i.q, align 8, !tbaa !258
  %3 = trunc nuw i8 %i.f to i1
  %i.r = icmp sgt i32 %i.p, 1
  %or.cond = select i1 %3, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = uitofp nneg i32 %spec.select to float    ; 2 uses
  %i.t = fneg float %i.l
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.s, float %.0)
  %i.v = tail call float @llvm.floor.f32(float %i.u)
  %i.w = fdiv float %i.v, %i.s                    ; 2 uses
  store float %i.w, ptr %i.d, align 4, !tbaa !257
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi float [ %i.w, %bb.d ], [ %i.c, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.z = load i8, ptr %i.y, align 1, !tbaa !247, !range !19, !noundef !20
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = shl nuw nsw i32 %spec.select, 1         ; 2 uses
  store i32 %i.ab, ptr %i.q, align 8, !tbaa !258
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = phi i32 [ %i.ab, %bb.f ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !254
  %i.af = add i32 %i.ae, -1
  %i.ag = add i32 %i.af, %i.ac
  %i.ah = sdiv i32 %i.ag, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !256
  %i.aj = fadd float %i.l, %i.x                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 108
  store float %i.aj, ptr %i.ak, align 4, !tbaa !46
  %.sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %i.aj, ptr %.sroa_idx8, align 8, !tbaa !46
  %i.al = tail call float @llvm.floor.f32(float %i.x)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !245
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fsub float %i.al, %i.ao                 ; 2 uses
  %.inv = fcmp oge float %i.ap, 0.000000e+00
  %i.aq = select i1 %.inv, float %i.ap, float 0.000000e+00
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float %i.aq, ptr %i.ar, align 8, !tbaa !259
  %i.as = fmul float %i.x, 5.000000e-01
  %i.at = tail call float @llvm.floor.f32(float %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %i.at, ptr %i.au, align 4, !tbaa !255
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
  %i.a = load i32, ptr %2, align 8, !tbaa !253    ; 2 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !166
  %i.c = sub nsw i32 %i.a, %i.b                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.not.i = icmp sgt i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.f)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc22:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.pre = load i32, ptr %2, align 8, !tbaa !253
  store ptr %i.g, ptr %i.h, align 8, !tbaa !251
  store i32 %i.c, ptr %i.d, align 4, !tbaa !252
  br label %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit

_ZN8ImVectorI12ExampleAssetE7reserveEi.exit:      ; preds = %bb.a, %.noexc22
  %.pre.i40 = phi ptr [ null, %bb.a ], [ %i.g, %.noexc22 ] ; 2 uses
  %i.i = phi i32 [ 0, %bb.a ], [ %i.c, %.noexc22 ] ; 2 uses
  %i.j = phi i32 [ %i.a, %bb.a ], [ %.pre.pre, %.noexc22 ] ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = zext i32 %3 to i64
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre42 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !251
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit
  %i.o = phi ptr [ %.pre.i40, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit ], [ %.pre42, %._crit_edge.loopexit ]
  %i.p = phi i32 [ %i.i, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit ], [ %i.ay, %._crit_edge.loopexit ]
  %i.q = phi i32 [ 0, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit ], [ %i.ax, %._crit_edge.loopexit ]
  %.015.lcssa = phi i32 [ -1, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit ], [ %.1, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %i.j, %_ZN8ImVectorI12ExampleAssetE7reserveEi.exit ], [ %i.bb, %._crit_edge.loopexit ]
  store i32 %.lcssa, ptr %4, align 8, !tbaa !253
  store i32 %i.q, ptr %2, align 8, !tbaa !253
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !252
  store i32 %i.s, ptr %i.d, align 4, !tbaa !252
  store i32 %i.p, ptr %i.r, align 4, !tbaa !252
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !251  ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !251
  store ptr %i.o, ptr %i.u, align 8, !tbaa !251
  invoke void @_ZN26ImGuiSelectionBasicStorage5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %i.w = phi i32 [ 0, %.lr.ph ], [ %i.ax, %bb.g ] ; 9 uses
  %i.x = phi ptr [ %.pre.i40, %.lr.ph ], [ %.pre.i38, %bb.g ] ; 5 uses
  %i.y = phi i32 [ %i.i, %.lr.ph ], [ %i.ay, %bb.g ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.01531 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.g ]
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !172
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %i.ab = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.aa)
          to label %_ZN26ImGuiSelectionBasicStorage21GetStorageIdFromIndexEi.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZN26ImGuiSelectionBasicStorage21GetStorageIdFromIndexEi.exit: ; preds = %bb.c
  %i.ac = invoke noundef zeroext i1 @_ZNK26ImGuiSelectionBasicStorage8ContainsEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ab)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %_ZN26ImGuiSelectionBasicStorage21GetStorageIdFromIndexEi.exit
  br i1 %i.ac, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !251
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = icmp eq i32 %i.w, %i.y
  br i1 %i.af, label %_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i, label %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit

_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i: ; preds = %bb.e
  %i.ag = add nuw nsw i32 %i.w, 1
  %.not.i.i = icmp eq i32 %i.w, 0
  %i.ah = lshr i32 %i.w, 1
  %i.ai = add nsw i32 %i.ah, %i.w
  %i.aj = select i1 %.not.i.i, i32 8, i32 %i.ai
  %i.ak = tail call noundef i32 @llvm.smax.i32(i32 %i.aj, i32 %i.ag) ; 3 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.am)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc24:                                         ; preds = %_ZNK8ImVectorI12ExampleAssetE14_grow_capacityEi.exit.i
  %.not6.i.i = icmp eq ptr %i.x, null
  br i1 %.not6.i.i, label %.noexc25, label %bb.f

bb.f:                                             ; preds = %.noexc24
  %i.ao = zext nneg i32 %i.w to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.an, ptr nonnull align 4 %i.x, i64 %i.ap, i1 false)
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.x)
          to label %..noexc25_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..noexc25_crit_edge:                              ; preds = %bb.f
  %.pre3.i.pre = load i32, ptr %4, align 8, !tbaa !253
  br label %.noexc25

.noexc25:                                         ; preds = %..noexc25_crit_edge, %.noexc24
  %.pre3.i = phi i32 [ %.pre3.i.pre, %..noexc25_crit_edge ], [ %i.w, %.noexc24 ]
  store ptr %i.an, ptr %.phi.trans.insert.i, align 8, !tbaa !251
  store i32 %i.ak, ptr %i.d, align 4, !tbaa !252
  br label %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit

_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit: ; preds = %bb.e, %.noexc25
  %.pre.i39 = phi ptr [ %i.an, %.noexc25 ], [ %i.x, %bb.e ] ; 2 uses
  %i.aq = phi i32 [ %i.ak, %.noexc25 ], [ %i.y, %bb.e ]
  %i.ar = phi i32 [ %.pre3.i, %.noexc25 ], [ %i.w, %bb.e ]
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %.pre.i39, i64 %i.as
  %i.au = load i64, ptr %i.ae, align 4
  store i64 %i.au, ptr %i.at, align 4
  %i.av = load i32, ptr %4, align 8, !tbaa !253
  %i.aw = add nsw i32 %i.av, 1                    ; 2 uses
  store i32 %i.aw, ptr %4, align 8, !tbaa !253
  br label %bb.g

bb.g:                                             ; preds = %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit, %bb.d
  %i.ax = phi i32 [ %i.aw, %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit ], [ %i.w, %bb.d ] ; 3 uses
  %.pre.i38 = phi ptr [ %.pre.i39, %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit ], [ %i.x, %bb.d ]
  %i.ay = phi i32 [ %i.aq, %_ZN8ImVectorI12ExampleAssetE9push_backERKS0_.exit ], [ %i.y, %bb.d ] ; 2 uses
  %i.az = icmp eq i64 %indvars.iv, %i.n
  %i.ba = add nsw i32 %i.ax, -1
  %.1 = select i1 %i.az, i32 %i.ba, i32 %.01531   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = load i32, ptr %2, align 8, !tbaa !253   ; 2 uses
end_hunk_11

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_demo?download=true
inline.NumInlined: 820
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 110
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 118
begin_hunk_0
@.str.1586 = private unnamed_addr constant [24 x i8] c"##circlesegmentoverride\00", align 1
@.str.1587 = private unnamed_addr constant [25 x i8] c"Circle segments override\00", align 1
@.str.1588 = private unnamed_addr constant [24 x i8] c"##curvessegmentoverride\00", align 1
@.str.1589 = private unnamed_addr constant [25 x i8] c"Curves segments override\00", align 1
@.str.1590 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.1591 = private unnamed_addr constant [7 x i8] c"Canvas\00", align 1
@_ZZL29ShowExampleAppCustomRenderingPbE6points = internal global %struct.ImVector.10 zeroinitializer, align 8
@_ZGVZL29ShowExampleAppCustomRenderingPbE6points = internal global i64 0, align 8
@_ZZL29ShowExampleAppCustomRenderingPbE9scrolling.0 = internal unnamed_addr global float 0.000000e+00, align 4
@_ZZL29ShowExampleAppCustomRenderingPbE9scrolling.1 = internal unnamed_addr global float 0.000000e+00, align 4
@_ZGVZL29ShowExampleAppCustomRenderingPbE9scrolling = internal global i64 0, align 8
@_ZZL29ShowExampleAppCustomRenderingPbE15opt_enable_grid = internal global i8 1, align 1
@_ZZL29ShowExampleAppCustomRenderingPbE23opt_enable_context_menu = internal global i8 1, align 1
@_ZZL29ShowExampleAppCustomRenderingPbE11adding_line = internal unnamed_addr global i1 false, align 1
@.str.1592 = private unnamed_addr constant [12 x i8] c"Enable grid\00", align 1
@.str.1593 = private unnamed_addr constant [20 x i8] c"Enable context menu\00", align 1
@.str.1594 = private unnamed_addr constant [84 x i8] c"Mouse Left: drag to add lines,\0AMouse Right: drag to scroll, click for context menu.\00", align 1
@.str.1595 = private unnamed_addr constant [7 x i8] c"canvas\00", align 1
@.str.1596 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.1597 = private unnamed_addr constant [11 x i8] c"Remove one\00", align 1
@.str.1598 = private unnamed_addr constant [11 x i8] c"Remove all\00", align 1
@.str.1599 = private unnamed_addr constant [17 x i8] c"BG/FG draw lists\00", align 1
@_ZZL29ShowExampleAppCustomRenderingPbE7draw_bg = internal global i8 1, align 1
@_ZZL29ShowExampleAppCustomRenderingPbE7draw_fg = internal global i8 1, align 1
@.str.1600 = private unnamed_addr constant [29 x i8] c"Draw in Background draw list\00", align 1
@.str.1601 = private unnamed_addr constant [74 x i8] c"The Background draw list will be rendered below every Dear ImGui windows.\00", align 1
@.str.1602 = private unnamed_addr constant [29 x i8] c"Draw in Foreground draw list\00", align 1
@.str.1603 = private unnamed_addr constant [73 x i8] c"The Foreground draw list will be rendered over every Dear ImGui windows.\00", align 1
@_ZZL23ShowExampleAppDocumentsPbE3app = internal global %struct.ExampleAppDocuments zeroinitializer, align 8
@_ZGVZL23ShowExampleAppDocumentsPbE3app = internal global i64 0, align 8
@.str.1604 = private unnamed_addr constant [19 x i8] c"Example: Documents\00", align 1
@.str.1605 = private unnamed_addr constant [20 x i8] c"Close All Documents\00", align 1
@.str.1606 = private unnamed_addr constant [5 x i8] c"Exit\00", align 1
@_ZZL23ShowExampleAppDocumentsPbE11close_queue = internal global %struct.ImVector.18 zeroinitializer, align 8
@_ZGVZL23ShowExampleAppDocumentsPbE11close_queue = internal global i64 0, align 8
@.str.1607 = private unnamed_addr constant [6 x i8] c"Save?\00", align 1
@.str.1608 = private unnamed_addr constant [36 x i8] c"Save change to the following items?\00", align 1
@.str.1609 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.1610 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.1611 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.1612 = private unnamed_addr constant [8 x i8] c"Lettuce\00", align 1
@.str.1613 = private unnamed_addr constant [9 x i8] c"Eggplant\00", align 1
@.str.1614 = private unnamed_addr constant [7 x i8] c"Carrot\00", align 1
@.str.1615 = private unnamed_addr constant [7 x i8] c"Tomato\00", align 1
@.str.1616 = private unnamed_addr constant [20 x i8] c"A Rather Long Title\00", align 1
@.str.1617 = private unnamed_addr constant [14 x i8] c"Some Document\00", align 1
@.str.1618 = private unnamed_addr constant [8 x i8] c"Save %s\00", align 1
@.str.1619 = private unnamed_addr constant [7 x i8] c"CTRL+S\00", align 1
@.str.1620 = private unnamed_addr constant [7 x i8] c"CTRL+W\00", align 1
@.str.1621 = private unnamed_addr constant [14 x i8] c"Document \22%s\22\00", align 1
@.str.1622 = private unnamed_addr constant [124 x i8] c"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\00", align 1
@.str.1623 = private unnamed_addr constant [7 x i8] c"Modify\00", align 1
@switch.table._ZL20EditTableSizingFlagsPi = private unnamed_addr constant [5 x i8] c"\00\0F\0F\0F\0F", align 8
@switch.table._ZL20EditTableSizingFlagsPi.18 = private unnamed_addr constant [5 x ptr] [ptr @_ZZL20EditTableSizingFlagsPiE8policies, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20EditTableSizingFlagsPiE8policies, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZZL20EditTableSizingFlagsPiE8policies, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZZL20EditTableSizingFlagsPiE8policies, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZZL20EditTableSizingFlagsPiE8policies, i64 96)], align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui13ShowUserGuideEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.1)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.2)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.3)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.c = load i8, ptr %i.b, align 4, !tbaa !135, !range !21, !noundef !22
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.5)
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.6)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.7)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.8)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.9)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.10)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.11)
  tail call void @_ZN5ImGui8UnindentEf(float noundef 0.000000e+00)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.12)
  tail call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.13)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.14)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.15)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.16)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.17)
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.18)
  tail call void @_ZN5ImGui8UnindentEf(float noundef 0.000000e+00)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() local_unnamed_addr #2

declare void @_ZN5ImGui10BulletTextEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN5ImGui6IndentEf(float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui8UnindentEf(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui14ShowDemoWindowEPb(ptr noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 20 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 20 uses
  %8 = alloca %struct.ImVec2, align 8             ; 20 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %16 = alloca %struct.ImVec2, align 8            ; 4 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %19 = alloca %struct.ImVec2, align 8            ; 4 uses
  %20 = alloca %struct.ImVec2, align 8            ; 4 uses
  %21 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %22 = alloca %struct.ImVec2, align 8            ; 4 uses
  %23 = alloca %struct.ImVec2, align 8            ; 4 uses
  %24 = alloca %struct.ImVec2, align 8            ; 7 uses
  %25 = alloca %struct.ImVec2, align 8            ; 4 uses
  %26 = alloca %struct.ImVec2, align 8            ; 4 uses
  %27 = alloca %struct.ImVec2, align 8            ; 4 uses
  %28 = alloca %struct.ImVec2, align 8            ; 4 uses
  %29 = alloca %struct.ImColor, align 4           ; 4 uses
  %30 = alloca %struct.ImVec2, align 8            ; 4 uses
  %31 = alloca %struct.ImVec2, align 8            ; 4 uses
  %32 = alloca %struct.ImVec2, align 4            ; 5 uses
  %33 = alloca %struct.ImVec2, align 4            ; 5 uses
  %34 = alloca %struct.ImVec2, align 4            ; 5 uses
  %35 = alloca %struct.ImVec2, align 4            ; 5 uses
  %36 = alloca %struct.ImVec2, align 4            ; 5 uses
  %37 = alloca %struct.ImVec2, align 4            ; 5 uses
  %38 = alloca %struct.ImVec2, align 4            ; 5 uses
  %39 = alloca %struct.ImVec2, align 4            ; 5 uses
  %40 = alloca %struct.ImVec2, align 4            ; 5 uses
  %41 = alloca %struct.ImVec2, align 4            ; 5 uses
  %42 = alloca %struct.ImVec2, align 4            ; 5 uses
  %43 = alloca %struct.ImVec2, align 4            ; 5 uses
  %44 = alloca %struct.ImVec2, align 4            ; 5 uses
  %45 = alloca %struct.ImVec2, align 4            ; 5 uses
  %46 = alloca %struct.ImVec2, align 4            ; 5 uses
  %47 = alloca [3 x %struct.ImVec2], align 16     ; 9 uses
  %48 = alloca [4 x %struct.ImVec2], align 16     ; 9 uses
  %49 = alloca %struct.ImVec2, align 8            ; 4 uses
  %50 = alloca %struct.ImVec2, align 8            ; 4 uses
  %51 = alloca %struct.ImVec2, align 4            ; 5 uses
  %52 = alloca %struct.ImVec2, align 4            ; 5 uses
  %53 = alloca %struct.ImVec2, align 4            ; 5 uses
  %54 = alloca %struct.ImVec2, align 4            ; 5 uses
  %55 = alloca %struct.ImVec2, align 4            ; 5 uses
  %56 = alloca %struct.ImVec2, align 4            ; 5 uses
  %57 = alloca %struct.ImVec2, align 4            ; 5 uses
  %58 = alloca %struct.ImVec2, align 4            ; 5 uses
  %59 = alloca %struct.ImVec2, align 4            ; 5 uses
  %60 = alloca %struct.ImVec2, align 4            ; 5 uses
  %61 = alloca %struct.ImVec2, align 4            ; 5 uses
  %62 = alloca %struct.ImVec2, align 4            ; 5 uses
  %63 = alloca %struct.ImVec2, align 4            ; 5 uses
  %64 = alloca %struct.ImVec2, align 4            ; 5 uses
  %65 = alloca %struct.ImVec2, align 8            ; 4 uses
  %66 = alloca %struct.ImVec2, align 4            ; 5 uses
  %67 = alloca %struct.ImVec2, align 4            ; 5 uses
  %68 = alloca %struct.ImVec2, align 8            ; 4 uses
  %69 = alloca %struct.ImVec2, align 8            ; 11 uses
  %70 = alloca %struct.ImVec2, align 8            ; 8 uses
  %71 = alloca %struct.ImVec2, align 8            ; 8 uses
  %72 = alloca %struct.ImVec2, align 4            ; 5 uses
  %73 = alloca %struct.ImVec2, align 4            ; 5 uses
  %74 = alloca %struct.ImVec2, align 4            ; 5 uses
  %75 = alloca %struct.ImVec2, align 4            ; 5 uses
  %76 = alloca %struct.ImVec2, align 8            ; 4 uses
  %77 = alloca %struct.ImVec2, align 8            ; 4 uses
  %78 = alloca %struct.ImVec2, align 8            ; 5 uses
  %79 = alloca %struct.ImVec2, align 8            ; 4 uses
  %80 = alloca %struct.ImVec2, align 8            ; 4 uses
  %81 = alloca %struct.ImVec2, align 4            ; 5 uses
  %82 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = alloca [128 x i8], align 16              ; 4 uses
  %83 = alloca %struct.ImVec2, align 4            ; 5 uses
  %84 = alloca %struct.ImVec2, align 8            ; 4 uses
  %85 = alloca %struct.ImVec2, align 8            ; 4 uses
  %86 = alloca %struct.ImVec2, align 8            ; 4 uses
  %87 = alloca %struct.ImVec2, align 4            ; 5 uses
  %88 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.d = alloca [7 x ptr], align 16               ; 4 uses
  %89 = alloca %struct.ImVec2, align 8            ; 4 uses
  %90 = alloca %struct.ImVec2, align 8            ; 4 uses
  %91 = alloca %struct.ImVec2, align 8            ; 4 uses
  %92 = alloca %struct.ImVec2, align 8            ; 4 uses
  %93 = alloca %struct.ImVec2, align 8            ; 4 uses
  %94 = alloca %struct.ImVec2, align 8            ; 4 uses
  %95 = alloca %struct.ImVec2, align 8            ; 4 uses
  %96 = alloca %struct.ImVec2, align 8            ; 4 uses
  %97 = alloca %struct.ImVec2, align 8            ; 4 uses
  %98 = alloca %struct.ImVec2, align 8            ; 4 uses
  %99 = alloca %struct.ImVec2, align 8            ; 4 uses
  %100 = alloca %struct.ImVec2, align 8           ; 4 uses
  %101 = alloca %struct.ImVec2, align 8           ; 4 uses
  %102 = alloca %struct.ImVec2, align 8           ; 4 uses
  %103 = alloca %struct.ImVec2, align 8           ; 4 uses
  %104 = alloca %struct.ImVec2, align 8           ; 4 uses
  %105 = alloca %struct.ImVec2, align 8           ; 4 uses
  %106 = alloca %struct.ImVec2, align 8           ; 4 uses
  %107 = alloca %struct.ImVec2, align 8           ; 4 uses
  %108 = alloca %struct.ImVec2, align 8           ; 4 uses
  %109 = alloca %struct.ImVec2, align 8           ; 4 uses
  %110 = alloca %struct.ImVec2, align 8           ; 4 uses
  %111 = alloca %struct.ImVec2, align 8           ; 4 uses
  %112 = alloca %struct.ImVec2, align 8           ; 4 uses
  %113 = alloca %struct.ImVec2, align 8           ; 4 uses
  %114 = alloca %struct.ImGuiListClipper, align 4 ; 10 uses
  %115 = alloca %struct.ImVec2, align 8           ; 4 uses
  %116 = alloca %struct.ImVec2, align 8           ; 4 uses
  %117 = alloca %struct.ImVec2, align 8           ; 4 uses
  %118 = alloca %struct.ImVec2, align 8           ; 4 uses
  %119 = alloca %struct.ImVec2, align 8           ; 4 uses
  %120 = alloca %struct.ImVec2, align 8           ; 4 uses
  %i.e = alloca [128 x i8], align 16              ; 4 uses
  %121 = alloca %struct.ImVec2, align 8           ; 4 uses
  %122 = alloca %struct.ImVec2, align 4           ; 5 uses
  %123 = alloca %struct.ImVec2, align 8           ; 4 uses
  %124 = alloca %struct.ImVec2, align 8           ; 4 uses
  %125 = alloca %struct.ImVec2, align 8           ; 4 uses
  %i.f = alloca [256 x i8], align 16              ; 4 uses
  %126 = alloca %struct.ImVec2, align 4           ; 5 uses
  %127 = alloca %struct.ImVec2, align 4           ; 7 uses
  %128 = alloca %struct.ImVec2, align 8           ; 4 uses
  %129 = alloca %struct.ImVec2, align 8           ; 4 uses
  %130 = alloca %struct.ImVec2, align 8           ; 4 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %131 = alloca %struct.ImVec2, align 8           ; 4 uses
  %132 = alloca %struct.ImVec2, align 8           ; 4 uses
  %i.h = load i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE22show_app_main_menu_bar, align 1, !tbaa !23, !range !21, !noundef !22
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZL25ShowExampleAppMainMenuBarv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui16BeginMainMenuBarEv()
  br i1 %i.j, label %bb.c, label %_ZL25ShowExampleAppMainMenuBarv.exit

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.985, i1 noundef zeroext true)
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL19ShowExampleMenuFilev()
  tail call void @_ZN5ImGui7EndMenuEv()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.450, i1 noundef zeroext true)
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1435, ptr noundef nonnull @.str.1436, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1437, ptr noundef nonnull @.str.1438, i1 noundef zeroext false, i1 noundef zeroext false) ; 0 uses
  tail call void @_ZN5ImGui9SeparatorEv()
  %i.o = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1439, ptr noundef nonnull @.str.1440, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %i.p = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.674, ptr noundef nonnull @.str.1441, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %i.q = tail call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1442, ptr noundef nonnull @.str.1443, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  tail call void @_ZN5ImGui7EndMenuEv()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN5ImGui14EndMainMenuBarEv()
  br label %_ZL25ShowExampleAppMainMenuBarv.exit

_ZL25ShowExampleAppMainMenuBarv.exit:             ; preds = %bb.g, %bb.b, %bb.a
  %i.r = load i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE18show_app_documents, align 1, !tbaa !23, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.h, label %_ZL23ShowExampleAppDocumentsPb.exit

bb.h:                                             ; preds = %_ZL25ShowExampleAppMainMenuBarv.exit
  %i.t = load atomic i8, ptr @_ZGVZL23ShowExampleAppDocumentsPbE3app acquire, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.l, !prof !24

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL23ShowExampleAppDocumentsPbE3app) #27
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN19ExampleAppDocumentsC2Ev(ptr noundef nonnull align 8 dereferenceable(16) @_ZZL23ShowExampleAppDocumentsPbE3app)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.w = tail call i32 @__cxa_atexit(ptr nonnull @_ZN19ExampleAppDocumentsD2Ev, ptr nonnull @_ZZL23ShowExampleAppDocumentsPbE3app, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL23ShowExampleAppDocumentsPbE3app) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h
  %i.x = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.1604, ptr noundef nonnull @_ZZN5ImGui14ShowDemoWindowEPbE18show_app_documents, i32 noundef 1024)
  br i1 %i.x, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN5ImGui3EndEv()
  br label %_ZL23ShowExampleAppDocumentsPb.exit

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cm, %bb.cf, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.n ], [ %i.mj, %bb.cf ], [ %i.pb, %bb.cm ], [ %lpad.loopexit.split-lp150, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZL23ShowExampleAppDocumentsPbE3app) #27
  br label %common.resume

bb.o:                                             ; preds = %bb.l
  %i.z = tail call noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv()
  br i1 %i.z, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.aa = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.985, i1 noundef zeroext true)
  br i1 %i.aa, label %.preheader8.i, label %bb.y

.preheader8.i:                                    ; preds = %bb.p
  %i.ab = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !165 ; 4 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader8.i
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !27 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.ab to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ae = icmp ult i32 %i.ab, 4
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.r

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0789.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.bh, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.q ] ; 2 uses
  %.0789.i.epil = phi i32 [ %.0789.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.q ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i.epil
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !166, !range !21, !noundef !22
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = add nuw nsw i32 %.0789.i.epil, %i.ai    ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.q, !llvm.loop !136

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.q, %.preheader8.i
  %.078.lcssa.i = phi i32 [ 0, %.preheader8.i ], [ %i.bh, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.aj, %bb.q ] ; 2 uses
  %i.ak = icmp slt i32 %.078.lcssa.i, %i.ab
  %i.al = tail call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.1446, i1 noundef zeroext %i.ak)
  br i1 %i.al, label %.preheader7.i, label %bb.v

.preheader7.i:                                    ; preds = %._crit_edge.i
  %i.am = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, align 8, !tbaa !165
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph13.preheader.i, label %._crit_edge14.i

.lr.ph13.preheader.i:                             ; preds = %.preheader7.i
  %.pre85.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE3app, i64 8), align 8, !tbaa !27
  br label %.lr.ph13.i

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.r ] ; 5 uses
  %.0789.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.bh, %bb.r ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.r ]
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !166, !range !21, !noundef !22
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = add nuw nsw i32 %.0789.i, %i.ar
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.i
end_hunk_0
begin_hunk_1_@_ZN5ImGui14ShowDemoWindowEPb:bb.a
  %indvars.iv.next63.i.epil = add nuw nsw i64 %indvars.iv62.i.epil, 1
  %epil.iter166.next = add i64 %epil.iter166, 1   ; 2 uses
  %epil.iter166.cmp.not = icmp eq i64 %epil.iter166.next, %xtraiter165
  br i1 %epil.iter166.cmp.not, label %._crit_edge29.i, label %bb.bf, !llvm.loop !145

._crit_edge29.i:                                  ; preds = %bb.bf, %._crit_edge29.i.unr-lcssa
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.3, %._crit_edge29.i.unr-lcssa ], [ %spec.select.i.epil, %bb.bf ]
  %i.hj = icmp eq i32 %spec.select.i.lcssa, 0
  br i1 %i.hj, label %.lr.ph41.i.preheader, label %bb.bh

.lr.ph41.i.preheader:                             ; preds = %._crit_edge29.i
  %xtraiter186 = and i64 %wide.trip.count65.i, 3  ; 3 uses
  %i.hk = icmp ult i32 %i.ha, 4
  br i1 %i.hk, label %.lr.ph41.i.epil.preheader, label %.lr.ph41.i.preheader.new

.lr.ph41.i.preheader.new:                         ; preds = %.lr.ph41.i.preheader
  %unroll_iter190 = and i64 %wide.trip.count65.i, 2147483644
  br label %.lr.ph41.i

bb.bg:                                            ; preds = %bb.bg, %.lr.ph28.i.new
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph28.i.new ], [ %indvars.iv.next63.i.3, %bb.bg ] ; 5 uses
  %.07126.i = phi i32 [ 0, %.lr.ph28.i.new ], [ %spec.select.i.3, %bb.bg ]
  %niter171 = phi i64 [ 0, %.lr.ph28.i.new ], [ %niter171.next.3, %bb.bg ]
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv62.i
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !171
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 10
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !33, !range !21, !noundef !22
  %i.hp = zext nneg i8 %i.ho to i32
  %spec.select.i = add nuw nsw i32 %.07126.i, %i.hp
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv62.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !171
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 10
  %i.hu = load i8, ptr %i.ht, align 2, !tbaa !33, !range !21, !noundef !22
  %i.hv = zext nneg i8 %i.hu to i32
  %spec.select.i.1 = add nuw nsw i32 %spec.select.i, %i.hv
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv62.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !171
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 10
  %i.ia = load i8, ptr %i.hz, align 2, !tbaa !33, !range !21, !noundef !22
  %i.ib = zext nneg i8 %i.ia to i32
  %spec.select.i.2 = add nuw nsw i32 %spec.select.i.1, %i.ib
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv62.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !171
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 10
  %i.ig = load i8, ptr %i.if, align 2, !tbaa !33, !range !21, !noundef !22
  %i.ih = zext nneg i8 %i.ig to i32
  %spec.select.i.3 = add nuw nsw i32 %spec.select.i.2, %i.ih ; 3 uses
  %indvars.iv.next63.i.3 = add nuw nsw i64 %indvars.iv62.i, 4 ; 2 uses
  %niter171.next.3 = add i64 %niter171, 4         ; 2 uses
  %niter171.ncmp.3 = icmp eq i64 %niter171.next.3, %unroll_iter170
  br i1 %niter171.ncmp.3, label %._crit_edge29.i.unr-lcssa, label %bb.bg, !llvm.loop !146

._crit_edge42.i:                                  ; preds = %.preheader4.i
  %.not.i84.i = icmp eq ptr %i.hc, null
  br i1 %.not.i84.i, label %_ZN8ImVectorIP10MyDocumentE5clearEv.exit.i, label %._crit_edge42.thread.i

._crit_edge42.thread.i.loopexit.unr-lcssa:        ; preds = %.lr.ph41.i
  %lcmp.mod188.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod188.not, label %._crit_edge42.thread.i, label %.lr.ph41.i.epil.preheader

.lr.ph41.i.epil.preheader:                        ; preds = %._crit_edge42.thread.i.loopexit.unr-lcssa, %.lr.ph41.i.preheader
  %indvars.iv80.i.epil.init = phi i64 [ 0, %.lr.ph41.i.preheader ], [ %indvars.iv.next81.i.3, %._crit_edge42.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod189 = icmp ne i64 %xtraiter186, 0
  call void @llvm.assume(i1 %lcmp.mod189)
  br label %.lr.ph41.i.epil

.lr.ph41.i.epil:                                  ; preds = %.lr.ph41.i.epil, %.lr.ph41.i.epil.preheader
  %indvars.iv80.i.epil = phi i64 [ %indvars.iv.next81.i.epil, %.lr.ph41.i.epil ], [ %indvars.iv80.i.epil.init, %.lr.ph41.i.epil.preheader ] ; 2 uses
  %epil.iter187 = phi i64 [ %epil.iter187.next, %.lr.ph41.i.epil ], [ 0, %.lr.ph41.i.epil.preheader ]
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv80.i.epil
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !171 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i8 0, ptr %i.ik, align 8, !tbaa !166
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 10
  store i8 0, ptr %i.il, align 2, !tbaa !33
  %indvars.iv.next81.i.epil = add nuw nsw i64 %indvars.iv80.i.epil, 1
  %epil.iter187.next = add i64 %epil.iter187, 1   ; 2 uses
  %epil.iter187.cmp.not = icmp eq i64 %epil.iter187.next, %xtraiter186
  br i1 %epil.iter187.cmp.not, label %._crit_edge42.thread.i, label %.lr.ph41.i.epil, !llvm.loop !147

._crit_edge42.thread.i:                           ; preds = %._crit_edge42.thread.i.loopexit.unr-lcssa, %.lr.ph41.i.epil, %._crit_edge42.i
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 4), align 4, !tbaa !170
  store i32 0, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, align 8, !tbaa !169
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.hc)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 8), align 8, !tbaa !38
  br label %_ZN8ImVectorIP10MyDocumentE5clearEv.exit.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i, %.lr.ph41.i.preheader.new
  %indvars.iv80.i = phi i64 [ 0, %.lr.ph41.i.preheader.new ], [ %indvars.iv.next81.i.3, %.lr.ph41.i ] ; 5 uses
  %niter191 = phi i64 [ 0, %.lr.ph41.i.preheader.new ], [ %niter191.next.3, %.lr.ph41.i ]
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv80.i
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !171 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i8 0, ptr %i.io, align 8, !tbaa !166
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 10
  store i8 0, ptr %i.ip, align 2, !tbaa !33
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv80.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !171 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i8 0, ptr %i.it, align 8, !tbaa !166
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 10
  store i8 0, ptr %i.iu, align 2, !tbaa !33
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv80.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !171 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i8 0, ptr %i.iy, align 8, !tbaa !166
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 10
  store i8 0, ptr %i.iz, align 2, !tbaa !33
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv80.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !171 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i8 0, ptr %i.jd, align 8, !tbaa !166
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 10
  store i8 0, ptr %i.je, align 2, !tbaa !33
  %indvars.iv.next81.i.3 = add nuw nsw i64 %indvars.iv80.i, 4 ; 2 uses
  %niter191.next.3 = add i64 %niter191, 4         ; 2 uses
  %niter191.ncmp.3 = icmp eq i64 %niter191.next.3, %unroll_iter190
  br i1 %niter191.ncmp.3, label %._crit_edge42.thread.i.loopexit.unr-lcssa, label %.lr.ph41.i, !llvm.loop !148

bb.bh:                                            ; preds = %._crit_edge29.i
  %i.jf = call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEPKci(ptr noundef nonnull @.str.1607, i32 noundef 0)
  br i1 %i.jf, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.1607, i32 noundef 0)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.jg = call noundef zeroext i1 @_ZN5ImGui15BeginPopupModalEPKcPbi(ptr noundef nonnull @.str.1607, ptr noundef null, i32 noundef 64)
  br i1 %i.jg, label %bb.bk, label %_ZN8ImVectorIP10MyDocumentE5clearEv.exit.i

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1608)
  %i.jh = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.ji = call noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef nonnull @.str.1609)
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #27
  %i.jj = fmul float %i.jh, 6.250000e+00
  store float f0x80800000, ptr %126, align 4, !tbaa !39
  %i.jk = getelementptr inbounds nuw i8, ptr %126, i64 4
  store float %i.jj, ptr %i.jk, align 4, !tbaa !40
  %i.jl = call noundef zeroext i1 @_ZN5ImGui15BeginChildFrameEjRK6ImVec2i(i32 noundef %i.ji, ptr noundef nonnull align 4 dereferenceable(8) %126, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #27
  br i1 %i.jl, label %.preheader3.i, label %bb.bn

.preheader3.i:                                    ; preds = %bb.bk
  %i.jm = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, align 8, !tbaa !169 ; 2 uses
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %.lr.ph32.preheader.i, label %._crit_edge33.i

.lr.ph32.preheader.i:                             ; preds = %.preheader3.i
  %.pre91.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 8), align 8, !tbaa !38
  br label %.lr.ph32.i

._crit_edge33.i:                                  ; preds = %bb.bm, %.preheader3.i
  call void @_ZN5ImGui13EndChildFrameEv()
  br label %bb.bn

.lr.ph32.i:                                       ; preds = %bb.bm, %.lr.ph32.preheader.i
  %i.jo = phi i32 [ %i.jm, %.lr.ph32.preheader.i ], [ %i.jw, %bb.bm ]
  %i.jp = phi ptr [ %.pre91.i, %.lr.ph32.preheader.i ], [ %i.jx, %bb.bm ] ; 2 uses
  %indvars.iv67.i = phi i64 [ 0, %.lr.ph32.preheader.i ], [ %indvars.iv.next68.i, %bb.bm ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv67.i
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !171 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 10
  %i.jt = load i8, ptr %i.js, align 2, !tbaa !33, !range !21, !noundef !22
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph32.i
  %i.jv = load ptr, ptr %i.jr, align 8, !tbaa !32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1350, ptr noundef %i.jv)
  %.pre90.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 8), align 8, !tbaa !38
  %.pre92.i = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, align 8, !tbaa !169
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph32.i
  %i.jw = phi i32 [ %i.jo, %.lr.ph32.i ], [ %.pre92.i, %bb.bl ] ; 2 uses
  %i.jx = phi ptr [ %i.jp, %.lr.ph32.i ], [ %.pre90.i, %bb.bl ]
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %i.jy = sext i32 %i.jw to i64
  %i.jz = icmp slt i64 %indvars.iv.next68.i, %i.jy
  br i1 %i.jz, label %.lr.ph32.i, label %._crit_edge33.i, !llvm.loop !149

bb.bn:                                            ; preds = %._crit_edge33.i, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #27
  %i.ka = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.kb = fmul float %i.ka, 7.000000e+00
  store float %i.kb, ptr %127, align 4, !tbaa !39
  %i.kc = getelementptr inbounds nuw i8, ptr %127, i64 4
  store float 0.000000e+00, ptr %i.kc, align 4, !tbaa !40
  %i.kd = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1610, ptr noundef nonnull align 4 dereferenceable(8) %127)
  br i1 %i.kd, label %.preheader2.i, label %bb.bu

.preheader2.i:                                    ; preds = %bb.bn
  %i.ke = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, align 8, !tbaa !169 ; 5 uses
  %i.kf = icmp sgt i32 %i.ke, 0
  %.pre93.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 8), align 8, !tbaa !38 ; 5 uses
  br i1 %i.kf, label %.lr.ph35.i, label %._crit_edge36.i

.lr.ph35.i:                                       ; preds = %.preheader2.i
  %i.kg = icmp eq i32 %i.ke, 1
  br i1 %i.kg, label %.epil.preheader172, label %.lr.ph35.i.new

.lr.ph35.i.new:                                   ; preds = %.lr.ph35.i
  %133 = and i32 %i.ke, 2147483646
  %unroll_iter177 = zext nneg i32 %133 to i64
  br label %bb.bp

._crit_edge36.i:                                  ; preds = %.preheader2.i
  %.not.i85.i = icmp eq ptr %.pre93.i, null
  br i1 %.not.i85.i, label %_ZN8ImVectorIP10MyDocumentE5clearEv.exit86.i, label %._crit_edge36.thread.i

._crit_edge36.thread.i.loopexit.unr-lcssa:        ; preds = %bb.bt
  %lcmp.mod175.not = trunc i32 %i.ke to i1
  br i1 %lcmp.mod175.not, label %.epil.preheader172, label %._crit_edge36.thread.i

.epil.preheader172:                               ; preds = %._crit_edge36.thread.i.loopexit.unr-lcssa, %.lr.ph35.i
  %indvars.iv70.i.epil.init = phi i64 [ 0, %.lr.ph35.i ], [ %indvars.iv.next71.i.1, %._crit_edge36.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod176 = trunc i32 %i.ke to i1
  call void @llvm.assume(i1 %lcmp.mod176)
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.pre93.i, i64 %indvars.iv70.i.epil.init
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !171 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 10 ; 3 uses
  %i.kk = load i8, ptr %i.kj, align 2, !tbaa !33, !range !21, !noundef !22
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.bo, label %._crit_edge36.thread.i.loopexit.epilog-lcssa

bb.bo:                                            ; preds = %.epil.preheader172
  store i8 0, ptr %i.kj, align 2, !tbaa !33
  br label %._crit_edge36.thread.i.loopexit.epilog-lcssa

._crit_edge36.thread.i.loopexit.epilog-lcssa:     ; preds = %bb.bo, %.epil.preheader172
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i8 0, ptr %i.km, align 8, !tbaa !166
  store i8 0, ptr %i.kj, align 2, !tbaa !33
  br label %._crit_edge36.thread.i

._crit_edge36.thread.i:                           ; preds = %._crit_edge36.thread.i.loopexit.epilog-lcssa, %._crit_edge36.thread.i.loopexit.unr-lcssa, %._crit_edge36.i
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 4), align 4, !tbaa !170
  store i32 0, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, align 8, !tbaa !169
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.pre93.i)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 8), align 8, !tbaa !38
  br label %_ZN8ImVectorIP10MyDocumentE5clearEv.exit86.i

_ZN8ImVectorIP10MyDocumentE5clearEv.exit86.i:     ; preds = %._crit_edge36.thread.i, %._crit_edge36.i
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bt, %.lr.ph35.i.new
  %indvars.iv70.i = phi i64 [ 0, %.lr.ph35.i.new ], [ %indvars.iv.next71.i.1, %bb.bt ] ; 3 uses
  %niter178 = phi i64 [ 0, %.lr.ph35.i.new ], [ %niter178.next.1, %bb.bt ]
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.pre93.i, i64 %indvars.iv70.i
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !171 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 10 ; 3 uses
  %i.kq = load i8, ptr %i.kp, align 2, !tbaa !33, !range !21, !noundef !22
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.kp, align 2, !tbaa !33
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i8 0, ptr %i.ks, align 8, !tbaa !166
  store i8 0, ptr %i.kp, align 2, !tbaa !33
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.pre93.i, i64 %indvars.iv70.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !171 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 10 ; 3 uses
  %i.kx = load i8, ptr %i.kw, align 2, !tbaa !33, !range !21, !noundef !22
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i8 0, ptr %i.kw, align 2, !tbaa !33
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i8 0, ptr %i.kz, align 8, !tbaa !166
  store i8 0, ptr %i.kw, align 2, !tbaa !33
  %indvars.iv.next71.i.1 = add nuw nsw i64 %indvars.iv70.i, 2 ; 2 uses
  %niter178.next.1 = add i64 %niter178, 2         ; 2 uses
  %niter178.ncmp.1 = icmp eq i64 %niter178.next.1, %unroll_iter177
  br i1 %niter178.ncmp.1, label %._crit_edge36.thread.i.loopexit.unr-lcssa, label %bb.bp, !llvm.loop !150

bb.bu:                                            ; preds = %_ZN8ImVectorIP10MyDocumentE5clearEv.exit86.i, %bb.bn
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.la = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1611, ptr noundef nonnull align 4 dereferenceable(8) %127)
  br i1 %i.la, label %.preheader1.i, label %bb.bx

.preheader1.i:                                    ; preds = %bb.bu
  %i.lb = load i32, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, align 8, !tbaa !169 ; 3 uses
  %i.lc = icmp sgt i32 %i.lb, 0
  %.pre94.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 8), align 8, !tbaa !38 ; 7 uses
  br i1 %i.lc, label %.lr.ph38.i, label %._crit_edge39.i

.lr.ph38.i:                                       ; preds = %.preheader1.i
  %wide.trip.count78.i = zext nneg i32 %i.lb to i64 ; 2 uses
  %xtraiter180 = and i64 %wide.trip.count78.i, 3  ; 3 uses
  %i.ld = icmp ult i32 %i.lb, 4
  br i1 %i.ld, label %.epil.preheader179, label %.lr.ph38.i.new

.lr.ph38.i.new:                                   ; preds = %.lr.ph38.i
  %unroll_iter184 = and i64 %wide.trip.count78.i, 2147483644
  br label %bb.bw

._crit_edge39.i:                                  ; preds = %.preheader1.i
  %.not.i87.i = icmp eq ptr %.pre94.i, null
  br i1 %.not.i87.i, label %_ZN8ImVectorIP10MyDocumentE5clearEv.exit88.i, label %._crit_edge39.thread.i

._crit_edge39.thread.i.loopexit.unr-lcssa:        ; preds = %bb.bw
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %._crit_edge39.thread.i, label %.epil.preheader179

.epil.preheader179:                               ; preds = %._crit_edge39.thread.i.loopexit.unr-lcssa, %.lr.ph38.i
  %indvars.iv75.i.epil.init = phi i64 [ 0, %.lr.ph38.i ], [ %indvars.iv.next76.i.3, %._crit_edge39.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter180, 0
  call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.epil.preheader179
  %indvars.iv75.i.epil = phi i64 [ %indvars.iv75.i.epil.init, %.epil.preheader179 ], [ %indvars.iv.next76.i.epil, %bb.bv ] ; 2 uses
  %epil.iter181 = phi i64 [ 0, %.epil.preheader179 ], [ %epil.iter181.next, %bb.bv ]
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.pre94.i, i64 %indvars.iv75.i.epil
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !171 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store i8 0, ptr %i.lg, align 8, !tbaa !166
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 10
  store i8 0, ptr %i.lh, align 2, !tbaa !33
  %indvars.iv.next76.i.epil = add nuw nsw i64 %indvars.iv75.i.epil, 1
  %epil.iter181.next = add i64 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i64 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %._crit_edge39.thread.i, label %bb.bv, !llvm.loop !151

._crit_edge39.thread.i:                           ; preds = %._crit_edge39.thread.i.loopexit.unr-lcssa, %bb.bv, %._crit_edge39.i
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 4), align 4, !tbaa !170
  store i32 0, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, align 8, !tbaa !169
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.pre94.i)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 8), align 8, !tbaa !38
  br label %_ZN8ImVectorIP10MyDocumentE5clearEv.exit88.i

_ZN8ImVectorIP10MyDocumentE5clearEv.exit88.i:     ; preds = %._crit_edge39.thread.i, %._crit_edge39.i
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bw, %.lr.ph38.i.new
  %indvars.iv75.i = phi i64 [ 0, %.lr.ph38.i.new ], [ %indvars.iv.next76.i.3, %bb.bw ] ; 5 uses
  %niter185 = phi i64 [ 0, %.lr.ph38.i.new ], [ %niter185.next.3, %bb.bw ]
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.pre94.i, i64 %indvars.iv75.i
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !171 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store i8 0, ptr %i.lk, align 8, !tbaa !166
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 10
  store i8 0, ptr %i.ll, align 2, !tbaa !33
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.pre94.i, i64 %indvars.iv75.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !171 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i8 0, ptr %i.lp, align 8, !tbaa !166
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 10
  store i8 0, ptr %i.lq, align 2, !tbaa !33
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %.pre94.i, i64 %indvars.iv75.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !171 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i8 0, ptr %i.lu, align 8, !tbaa !166
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 10
  store i8 0, ptr %i.lv, align 2, !tbaa !33
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.pre94.i, i64 %indvars.iv75.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !171 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store i8 0, ptr %i.lz, align 8, !tbaa !166
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 10
  store i8 0, ptr %i.ma, align 2, !tbaa !33
  %indvars.iv.next76.i.3 = add nuw nsw i64 %indvars.iv75.i, 4 ; 2 uses
  %niter185.next.3 = add i64 %niter185, 4         ; 2 uses
  %niter185.ncmp.3 = icmp eq i64 %niter185.next.3, %unroll_iter184
  br i1 %niter185.ncmp.3, label %._crit_edge39.thread.i.loopexit.unr-lcssa, label %bb.bw, !llvm.loop !152

bb.bx:                                            ; preds = %_ZN8ImVectorIP10MyDocumentE5clearEv.exit88.i, %bb.bu
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.mb = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.982, ptr noundef nonnull align 4 dereferenceable(8) %127)
  br i1 %i.mb, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.mc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 8), align 8, !tbaa !38 ; 2 uses
  %.not.i89.i = icmp eq ptr %i.mc, null
  br i1 %.not.i89.i, label %_ZN8ImVectorIP10MyDocumentE5clearEv.exit90.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 4), align 4, !tbaa !170
  store i32 0, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, align 8, !tbaa !169
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.mc)
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZL23ShowExampleAppDocumentsPbE11close_queue, i64 8), align 8, !tbaa !38
  br label %_ZN8ImVectorIP10MyDocumentE5clearEv.exit90.i

_ZN8ImVectorIP10MyDocumentE5clearEv.exit90.i:     ; preds = %bb.bz, %bb.by
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN8ImVectorIP10MyDocumentE5clearEv.exit90.i, %bb.bx
  call void @_ZN5ImGui8EndPopupEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #27
  br label %_ZN8ImVectorIP10MyDocumentE5clearEv.exit.i

_ZN8ImVectorIP10MyDocumentE5clearEv.exit.i:       ; preds = %bb.ca, %bb.bj, %._crit_edge42.thread.i, %._crit_edge42.i, %thread-pre-split.i, %.preheader5.i
  call void @_ZN5ImGui3EndEv()
  br label %_ZL23ShowExampleAppDocumentsPb.exit

_ZL23ShowExampleAppDocumentsPb.exit:              ; preds = %_ZN8ImVectorIP10MyDocumentE5clearEv.exit.i, %bb.m, %_ZL25ShowExampleAppMainMenuBarv.exit
  %i.md = load i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE16show_app_console, align 1, !tbaa !23, !range !21, !noundef !22
  %i.me = trunc nuw i8 %i.md to i1
end_hunk_1
begin_hunk_2_@_ZN5ImGui14ShowDemoWindowEPb:bb.a
bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.d, ptr noundef nonnull align 16 dereferenceable(56) @__const._ZL31ShowExampleAppConstrainedResizePb.test_desc, i64 56, i1 false)
  %i.sf = load i32, ptr @_ZZL31ShowExampleAppConstrainedResizePbE4type, align 4, !tbaa !42 ; 2 uses
  %i.sg = icmp eq i32 %i.sf, 0
  br i1 %i.sg, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #27
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %89, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #27
  store <2 x float> <float -1.000000e+00, float f0x7F7FFFFF>, ptr %90, align 8, !tbaa !41
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %89, ptr noundef nonnull align 4 dereferenceable(8) %90, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #27
  %.pr.i = load i32, ptr @_ZZL31ShowExampleAppConstrainedResizePbE4type, align 4, !tbaa !42
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.sh = phi i32 [ %.pr.i, %bb.el ], [ %i.sf, %bb.ek ] ; 2 uses
  %i.si = icmp eq i32 %i.sh, 1
  br i1 %i.si, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #27
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %91, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #27
  store <2 x float> <float f0x7F7FFFFF, float -1.000000e+00>, ptr %92, align 8, !tbaa !41
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %91, ptr noundef nonnull align 4 dereferenceable(8) %92, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #27
  %.pre.i45 = load i32, ptr @_ZZL31ShowExampleAppConstrainedResizePbE4type, align 4, !tbaa !42
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.sj = phi i32 [ %.pre.i45, %bb.en ], [ %i.sh, %bb.em ] ; 2 uses
  %i.sk = icmp eq i32 %i.sj, 2
  br i1 %i.sk, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #27
  store <2 x float> splat (float 1.000000e+02), ptr %93, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #27
  store <2 x float> splat (float f0x7F7FFFFF), ptr %94, align 8, !tbaa !41
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %93, ptr noundef nonnull align 4 dereferenceable(8) %94, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #27
  %.pr1.i = load i32, ptr @_ZZL31ShowExampleAppConstrainedResizePbE4type, align 4, !tbaa !42
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.sl = phi i32 [ %.pr1.i, %bb.ep ], [ %i.sj, %bb.eo ] ; 2 uses
  %i.sm = icmp eq i32 %i.sl, 3
  br i1 %i.sm, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #27
  store <2 x float> <float 4.000000e+02, float -1.000000e+00>, ptr %95, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #27
  store <2 x float> <float 5.000000e+02, float -1.000000e+00>, ptr %96, align 8, !tbaa !41
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %95, ptr noundef nonnull align 4 dereferenceable(8) %96, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #27
  %.pre4.i = load i32, ptr @_ZZL31ShowExampleAppConstrainedResizePbE4type, align 4, !tbaa !42
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.sn = phi i32 [ %.pre4.i, %bb.er ], [ %i.sl, %bb.eq ] ; 2 uses
  %i.so = icmp eq i32 %i.sn, 4
  br i1 %i.so, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #27
  store <2 x float> <float -1.000000e+00, float 4.000000e+02>, ptr %97, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #27
  store <2 x float> <float -1.000000e+00, float 5.000000e+02>, ptr %98, align 8, !tbaa !41
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %97, ptr noundef nonnull align 4 dereferenceable(8) %98, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #27
  %.pr2.i = load i32, ptr @_ZZL31ShowExampleAppConstrainedResizePbE4type, align 4, !tbaa !42
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.sp = phi i32 [ %.pr2.i, %bb.et ], [ %i.sn, %bb.es ] ; 2 uses
  %i.sq = icmp eq i32 %i.sp, 5
  br i1 %i.sq, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #27
  store <2 x float> zeroinitializer, ptr %99, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #27
  store <2 x float> splat (float f0x7F7FFFFF), ptr %100, align 8, !tbaa !41
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %99, ptr noundef nonnull align 4 dereferenceable(8) %100, ptr noundef nonnull @_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints6SquareEP21ImGuiSizeCallbackData, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #27
  %.pre5.i = load i32, ptr @_ZZL31ShowExampleAppConstrainedResizePbE4type, align 4, !tbaa !42
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.sr = phi i32 [ %.pre5.i, %bb.ev ], [ %i.sp, %bb.eu ]
  %i.ss = icmp eq i32 %i.sr, 6
  br i1 %i.ss, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #27
  store <2 x float> zeroinitializer, ptr %101, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #27
  store <2 x float> splat (float f0x7F7FFFFF), ptr %102, align 8, !tbaa !41
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %101, ptr noundef nonnull align 4 dereferenceable(8) %102, ptr noundef nonnull @_ZZL31ShowExampleAppConstrainedResizePbEN17CustomConstraints4StepEP21ImGuiSizeCallbackData, ptr noundef nonnull inttoptr (i64 100 to ptr))
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #27
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.st = load i8, ptr @_ZZL31ShowExampleAppConstrainedResizePbE11auto_resize, align 1, !tbaa !23, !range !21, !noundef !22
  %i.su = shl nuw nsw i8 %i.st, 6
  %i.sv = zext nneg i8 %i.su to i32
  %i.sw = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.1544, ptr noundef nonnull @_ZZN5ImGui14ShowDemoWindowEPbE27show_app_constrained_resize, i32 noundef %i.sv)
  br i1 %i.sw, label %bb.ez, label %_ZL31ShowExampleAppConstrainedResizePb.exit

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #27
  store <2 x float> zeroinitializer, ptr %103, align 8, !tbaa !41
  %i.sx = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1545, ptr noundef nonnull align 4 dereferenceable(8) %103)
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #27
  br i1 %i.sx, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #27
  store <2 x float> splat (float 2.000000e+02), ptr %104, align 8, !tbaa !41
  call void @_ZN5ImGui13SetWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %104, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #27
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #27
  store <2 x float> zeroinitializer, ptr %105, align 8, !tbaa !41
  %i.sy = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1546, ptr noundef nonnull align 4 dereferenceable(8) %105)
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #27
  br i1 %i.sy, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #27
  store <2 x float> splat (float 5.000000e+02), ptr %106, align 8, !tbaa !41
  call void @_ZN5ImGui13SetWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %106, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #27
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #27
  store <2 x float> zeroinitializer, ptr %107, align 8, !tbaa !41
  %i.sz = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1547, ptr noundef nonnull align 4 dereferenceable(8) %107)
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #27
  br i1 %i.sz, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #27
  store <2 x float> <float 8.000000e+02, float 2.000000e+02>, ptr %108, align 8, !tbaa !41
  call void @_ZN5ImGui13SetWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %108, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #27
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef 2.000000e+02)
  %i.ta = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiPKS1_ii(ptr noundef nonnull @.str.1548, ptr noundef nonnull @_ZZL31ShowExampleAppConstrainedResizePbE4type, ptr noundef nonnull %i.d, i32 noundef 7, i32 noundef -1) ; 0 uses
  call void @_ZN5ImGui16SetNextItemWidthEf(float noundef 2.000000e+02)
  %i.tb = call noundef zeroext i1 @_ZN5ImGui7DragIntEPKcPifiiS1_i(ptr noundef nonnull @.str.490, ptr noundef nonnull @_ZZL31ShowExampleAppConstrainedResizePbE13display_lines, float noundef 2.000000e-01, i32 noundef 1, i32 noundef 100, ptr noundef nonnull @.str.249, i32 noundef 0) ; 0 uses
  %i.tc = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1549, ptr noundef nonnull @_ZZL31ShowExampleAppConstrainedResizePbE11auto_resize) ; 0 uses
  %i.td = load i32, ptr @_ZZL31ShowExampleAppConstrainedResizePbE13display_lines, align 4, !tbaa !42
  %i.te = icmp sgt i32 %i.td, 0
  br i1 %i.te, label %.lr.ph.i44, label %_ZL31ShowExampleAppConstrainedResizePb.exit

.lr.ph.i44:                                       ; preds = %bb.ff, %.lr.ph.i44
  %.03.i = phi i32 [ %i.tg, %.lr.ph.i44 ], [ 0, %bb.ff ] ; 2 uses
  %i.tf = shl nuw nsw i32 %.03.i, 2
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1550, i32 noundef %i.tf, ptr noundef nonnull @.str.203)
  %i.tg = add nuw nsw i32 %.03.i, 1               ; 2 uses
  %i.th = load i32, ptr @_ZZL31ShowExampleAppConstrainedResizePbE13display_lines, align 4, !tbaa !42
  %i.ti = icmp slt i32 %i.tg, %i.th
  br i1 %i.ti, label %.lr.ph.i44, label %_ZL31ShowExampleAppConstrainedResizePb.exit, !llvm.loop !159

_ZL31ShowExampleAppConstrainedResizePb.exit:      ; preds = %.lr.ph.i44, %bb.ey, %bb.ff
  call void @_ZN5ImGui3EndEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.fg

bb.fg:                                            ; preds = %_ZL31ShowExampleAppConstrainedResizePb.exit, %bb.ej
  %i.tj = load i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE23show_app_simple_overlay, align 1, !tbaa !23, !range !21, !noundef !22
  %i.tk = trunc nuw i8 %i.tj to i1
  br i1 %i.tk, label %bb.fh, label %bb.gb

bb.fh:                                            ; preds = %bb.fg
  %i.tl = call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  %i.tm = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE6corner, align 4, !tbaa !42
  %.not.i46 = icmp eq i32 %i.tm, -1
  br i1 %.not.i46, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.tn = call noundef ptr @_ZN5ImGui15GetMainViewportEv() ; 4 uses
  %134 = getelementptr inbounds nuw i8, ptr %i.tn, i64 20
  %.sroa.01.0.copyload.i = load float, ptr %134, align 4, !tbaa !41 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !41 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 28
  %.sroa.0.0.copyload.i = load float, ptr %i.to, align 4, !tbaa !41
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 32
  %.sroa.4.0.copyload.i = load float, ptr %i.tp, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #27
  %135 = getelementptr inbounds nuw i8, ptr %87, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #27
  %i.tq = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE6corner, align 4, !tbaa !42 ; 2 uses
  %136 = fadd float %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %137 = fadd float %136, -1.000000e+01
  %138 = fadd float %.sroa.01.0.copyload.i, 1.000000e+01
  %139 = fadd float %.sroa.5.0.copyload.i, %.sroa.4.0.copyload.i
  %140 = fadd float %139, -1.000000e+01
  %141 = fadd float %.sroa.5.0.copyload.i, 1.000000e+01
  %i.tr = insertelement <2 x i32> poison, i32 %i.tq, i64 0
  %i.ts = shufflevector <2 x i32> %i.tr, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.tt = and <2 x i32> %i.ts, <i32 1, i32 2>
  %i.tu = icmp eq <2 x i32> %i.tt, <i32 1, i32 0> ; 2 uses
  %.not12.i = trunc i32 %i.tq to i1
  %142 = select i1 %.not12.i, float %137, float %138
  store float %142, ptr %87, align 4, !tbaa !39
  %143 = extractelement <2 x i1> %i.tu, i64 1
  %144 = select i1 %143, float %141, float %140
  store float %144, ptr %135, align 4, !tbaa !40
  %i.tv = select <2 x i1> %i.tu, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> <float 0.000000e+00, float 1.000000e+00>
  store <2 x float> %i.tv, ptr %88, align 8, !tbaa !41
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %87, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %88)
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #27
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.0.i = phi i32 [ 790895, %bb.fi ], [ 790891, %bb.fh ]
  call void @_ZN5ImGui20SetNextWindowBgAlphaEf(float noundef 3.500000e-01)
  %i.tw = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.1551, ptr noundef nonnull @_ZZN5ImGui14ShowDemoWindowEPbE23show_app_simple_overlay, i32 noundef %.0.i)
  br i1 %i.tw, label %bb.fk, label %_ZL27ShowExampleAppSimpleOverlayPb.exit

bb.fk:                                            ; preds = %bb.fj
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1552)
  call void @_ZN5ImGui9SeparatorEv()
  %i.tx = call noundef zeroext i1 @_ZN5ImGui15IsMousePosValidEPK6ImVec2(ptr noundef null)
  br i1 %i.tx, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tl, i64 288
  %i.tz = load <2 x float>, ptr %i.ty, align 8, !tbaa !41
  %i.ua = fpext <2 x float> %i.tz to <2 x double> ; 2 uses
  %i.ub = extractelement <2 x double> %i.ua, i64 0
  %i.uc = extractelement <2 x double> %i.ua, i64 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1553, double noundef %i.ub, double noundef %i.uc)
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fk
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.1554)
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.ud = call noundef zeroext i1 @_ZN5ImGui23BeginPopupContextWindowEPKci(ptr noundef null, i32 noundef 1)
  br i1 %i.ud, label %bb.fo, label %_ZL27ShowExampleAppSimpleOverlayPb.exit

bb.fo:                                            ; preds = %bb.fn
  %i.ue = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE6corner, align 4, !tbaa !42
  %i.uf = icmp eq i32 %i.ue, -1
  %i.ug = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1555, ptr noundef null, i1 noundef zeroext %i.uf, i1 noundef zeroext true)
  br i1 %i.ug, label %bb.fp, label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %bb.fo
  %.pre.i48 = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE6corner, align 4, !tbaa !42
  %i.uh = icmp eq i32 %.pre.i48, 0
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  store i32 -1, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE6corner, align 4, !tbaa !42
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %._crit_edge.i47
  %i.ui = phi i1 [ %i.uh, %._crit_edge.i47 ], [ false, %bb.fp ]
  %i.uj = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1556, ptr noundef null, i1 noundef zeroext %i.ui, i1 noundef zeroext true)
  br i1 %i.uj, label %bb.fr, label %._crit_edge1.i

._crit_edge1.i:                                   ; preds = %bb.fq
  %.pre2.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE6corner, align 4, !tbaa !42
  %i.uk = icmp eq i32 %.pre2.i, 1
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  store i32 0, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE6corner, align 4, !tbaa !42
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %._crit_edge1.i
  %i.ul = phi i1 [ %i.uk, %._crit_edge1.i ], [ false, %bb.fr ]
  %i.um = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1557, ptr noundef null, i1 noundef zeroext %i.ul, i1 noundef zeroext true)
  br i1 %i.um, label %bb.ft, label %._crit_edge3.i

._crit_edge3.i:                                   ; preds = %bb.fs
  %.pre4.i49 = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE6corner, align 4, !tbaa !42
  %i.un = icmp eq i32 %.pre4.i49, 2
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  store i32 1, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE6corner, align 4, !tbaa !42
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %._crit_edge3.i
  %i.uo = phi i1 [ %i.un, %._crit_edge3.i ], [ false, %bb.ft ]
  %i.up = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1558, ptr noundef null, i1 noundef zeroext %i.uo, i1 noundef zeroext true)
  br i1 %i.up, label %bb.fv, label %._crit_edge5.i

._crit_edge5.i:                                   ; preds = %bb.fu
  %.pre6.i = load i32, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE6corner, align 4, !tbaa !42
  %i.uq = icmp eq i32 %.pre6.i, 3
  br label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 2, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE6corner, align 4, !tbaa !42
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %._crit_edge5.i
  %i.ur = phi i1 [ %i.uq, %._crit_edge5.i ], [ false, %bb.fv ]
  %i.us = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.1559, ptr noundef null, i1 noundef zeroext %i.ur, i1 noundef zeroext true)
  br i1 %i.us, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  store i32 3, ptr @_ZZL27ShowExampleAppSimpleOverlayPbE6corner, align 4, !tbaa !42
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.ut = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.741, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true)
  br i1 %i.ut, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  store i8 0, ptr @_ZZN5ImGui14ShowDemoWindowEPbE23show_app_simple_overlay, align 1, !tbaa !23
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  call void @_ZN5ImGui8EndPopupEv()
  br label %_ZL27ShowExampleAppSimpleOverlayPb.exit

_ZL27ShowExampleAppSimpleOverlayPb.exit:          ; preds = %bb.fj, %bb.fn, %bb.ga
  call void @_ZN5ImGui3EndEv()
  br label %bb.gb

bb.gb:                                            ; preds = %_ZL27ShowExampleAppSimpleOverlayPb.exit, %bb.fg
  %i.uu = load i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE19show_app_fullscreen, align 1, !tbaa !23, !range !21, !noundef !22
  %i.uv = trunc nuw i8 %i.uu to i1
  br i1 %i.uv, label %bb.gc, label %bb.gg

bb.gc:                                            ; preds = %bb.gb
  %i.uw = call noundef ptr @_ZN5ImGui15GetMainViewportEv() ; 2 uses
  %i.ux = load i8, ptr @_ZZL24ShowExampleAppFullscreenPbE13use_work_area, align 1, !tbaa !23, !range !21, !noundef !22
  %i.uy = trunc nuw i8 %i.ux to i1
  %.v.i = select i1 %i.uy, i64 20, i64 4
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 %.v.i
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #27
  store <2 x float> zeroinitializer, ptr %85, align 8, !tbaa !41
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %i.uz, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %85)
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #27
  %i.va = load i8, ptr @_ZZL24ShowExampleAppFullscreenPbE13use_work_area, align 1, !tbaa !23, !range !21, !noundef !22
  %i.vb = trunc nuw i8 %i.va to i1
  %.v7.i = select i1 %i.vb, i64 28, i64 12
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uw, i64 %.v7.i
  call void @_ZN5ImGui17SetNextWindowSizeERK6ImVec2i(ptr noundef nonnull align 4 dereferenceable(8) %i.vc, i32 noundef 0)
  %i.vd = load i32, ptr @_ZZL24ShowExampleAppFullscreenPbE5flags, align 4, !tbaa !42
  %i.ve = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.1560, ptr noundef nonnull @_ZZN5ImGui14ShowDemoWindowEPbE19show_app_fullscreen, i32 noundef %i.vd)
  br i1 %i.ve, label %bb.gd, label %_ZL24ShowExampleAppFullscreenPb.exit

bb.gd:                                            ; preds = %bb.gc
  %i.vf = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.1561, ptr noundef nonnull @_ZZL24ShowExampleAppFullscreenPbE13use_work_area) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.236)
  %i.vg = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.vg, label %bb.ge, label %_ZL10HelpMarkerPKc.exit.i50

bb.ge:                                            ; preds = %bb.gd
  call void @_ZN5ImGui12BeginTooltipEv()
  %i.vh = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.vi = fmul float %i.vh, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.vi)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.1562, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit.i50

_ZL10HelpMarkerPKc.exit.i50:                      ; preds = %bb.ge, %bb.gd
  %i.vj = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1563, ptr noundef nonnull @_ZZL24ShowExampleAppFullscreenPbE5flags, i32 noundef 128) ; 0 uses
  %i.vk = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1564, ptr noundef nonnull @_ZZL24ShowExampleAppFullscreenPbE5flags, i32 noundef 43) ; 0 uses
  call void @_ZN5ImGui6IndentEf(float noundef 0.000000e+00)
  %i.vl = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1565, ptr noundef nonnull @_ZZL24ShowExampleAppFullscreenPbE5flags, i32 noundef 1) ; 0 uses
  %i.vm = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1566, ptr noundef nonnull @_ZZL24ShowExampleAppFullscreenPbE5flags, i32 noundef 32) ; 0 uses
  %i.vn = call noundef zeroext i1 @_ZN5ImGui13CheckboxFlagsEPKcPii(ptr noundef nonnull @.str.1567, ptr noundef nonnull @_ZZL24ShowExampleAppFullscreenPbE5flags, i32 noundef 8) ; 0 uses
  call void @_ZN5ImGui8UnindentEf(float noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #27
  store <2 x float> zeroinitializer, ptr %86, align 8, !tbaa !41
  %i.vo = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.1568, ptr noundef nonnull align 4 dereferenceable(8) %86)
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #27
  br i1 %i.vo, label %bb.gf, label %_ZL24ShowExampleAppFullscreenPb.exit

bb.gf:                                            ; preds = %_ZL10HelpMarkerPKc.exit.i50
  store i8 0, ptr @_ZZN5ImGui14ShowDemoWindowEPbE19show_app_fullscreen, align 1, !tbaa !23
  br label %_ZL24ShowExampleAppFullscreenPb.exit

_ZL24ShowExampleAppFullscreenPb.exit:             ; preds = %bb.gc, %_ZL10HelpMarkerPKc.exit.i50, %bb.gf
  call void @_ZN5ImGui3EndEv()
  br label %bb.gg

bb.gg:                                            ; preds = %_ZL24ShowExampleAppFullscreenPb.exit, %bb.gb
  %i.vp = load i8, ptr @_ZZN5ImGui14ShowDemoWindowEPbE22show_app_window_titles, align 1, !tbaa !23, !range !21, !noundef !22
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.vr = call noundef ptr @_ZN5ImGui15GetMainViewportEv() ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !41 ; 2 uses
  %i.vt = load <2 x float>, ptr %i.vs, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #27
  %i.vu = fadd <2 x float> %i.vt, splat (float 1.000000e+02) ; 2 uses
  store <2 x float> %i.vu, ptr %79, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #27
  store <2 x float> zeroinitializer, ptr %80, align 8, !tbaa !41
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %79, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(8) %80)
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #27
  %i.vv = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.1569, ptr noundef null, i32 noundef 0) ; 0 uses
end_hunk_2
begin_hunk_3_@_ZN5ImGui14ShowDemoWindowEPb:bb.a

bb.on:                                            ; preds = %bb.om, %bb.ol
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.oo

bb.oo:                                            ; preds = %bb.on, %bb.oi
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  store <2 x float> zeroinitializer, ptr %20, align 8, !tbaa !41
  %i.axu = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.983, ptr noundef nonnull align 4 dereferenceable(8) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br i1 %i.axu, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  call void @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.984, i32 noundef 0)
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %i.axv = call noundef zeroext i1 @_ZN5ImGui15BeginPopupModalEPKcPbi(ptr noundef nonnull @.str.984, ptr noundef null, i32 noundef 1024)
  br i1 %i.axv, label %bb.or, label %bb.pe

bb.or:                                            ; preds = %bb.oq
  %i.axw = call noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv()
  br i1 %i.axw, label %bb.os, label %bb.ov

bb.os:                                            ; preds = %bb.or
  %i.axx = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.985, i1 noundef zeroext true)
  br i1 %i.axx, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  %i.axy = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.986, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  call void @_ZN5ImGui7EndMenuEv()
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.os
  call void @_ZN5ImGui10EndMenuBarEv()
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ou, %bb.or
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.987)
  %i.axz = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.378, ptr noundef nonnull @_ZZL20ShowDemoWindowPopupsvE4item, ptr noundef nonnull @.str.391, i32 noundef -1) ; 0 uses
  %i.aya = call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef nonnull @.str.988, ptr noundef nonnull @_ZZL20ShowDemoWindowPopupsvE5color, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  store <2 x float> zeroinitializer, ptr %21, align 8, !tbaa !41
  %i.ayb = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.989, ptr noundef nonnull align 4 dereferenceable(8) %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br i1 %i.ayb, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  call void @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.990, i32 noundef 0)
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i8 1, ptr %i.b, align 1, !tbaa !23
  %i.ayc = call noundef zeroext i1 @_ZN5ImGui15BeginPopupModalEPKcPbi(ptr noundef nonnull @.str.990, ptr noundef nonnull %i.b, i32 noundef 0)
  br i1 %i.ayc, label %bb.oy, label %bb.pb

bb.oy:                                            ; preds = %bb.ox
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.991)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  store <2 x float> zeroinitializer, ptr %22, align 8, !tbaa !41
  %i.ayd = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.741, ptr noundef nonnull align 4 dereferenceable(8) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br i1 %i.ayd, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.pb

bb.pb:                                            ; preds = %bb.pa, %bb.ox
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  store <2 x float> zeroinitializer, ptr %23, align 8, !tbaa !41
  %i.aye = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.741, ptr noundef nonnull align 4 dereferenceable(8) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br i1 %i.aye, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  call void @_ZN5ImGui8EndPopupEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.oq
  call void @_ZN5ImGui7TreePopEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.of
  %i.ayf = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.992)
  br i1 %i.ayf, label %bb.pg, label %_ZL20ShowDemoWindowPopupsv.exit

bb.pg:                                            ; preds = %bb.pf
  call void (ptr, ...) @_ZN5ImGui11TextWrappedEPKcz(ptr noundef nonnull @.str.993)
  call void @_ZN5ImGui9SeparatorEv()
  call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.994)
  %i.ayg = call noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef nonnull @.str.995, ptr noundef nonnull @.str.996, i1 noundef zeroext false, i1 noundef zeroext true) ; 0 uses
  %i.ayh = call noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef nonnull @.str.997, i1 noundef zeroext true)
  br i1 %i.ayh, label %bb.ph, label %bb.pi

bb.ph:                                            ; preds = %bb.pg
  call fastcc void @_ZL19ShowExampleMenuFilev()
  call void @_ZN5ImGui7EndMenuEv()
  br label %bb.pi

bb.pi:                                            ; preds = %bb.ph, %bb.pg
  call void @_ZN5ImGui5PopIDEv()
  call void @_ZN5ImGui9SeparatorEv()
  call void @_ZN5ImGui7TreePopEv()
  br label %_ZL20ShowDemoWindowPopupsv.exit

_ZL20ShowDemoWindowPopupsv.exit:                  ; preds = %bb.kx, %bb.pf, %bb.pi
  call fastcc void @_ZL20ShowDemoWindowTablesv()
  call fastcc void @_ZL18ShowDemoWindowMiscv()
  call void @_ZN5ImGui12PopItemWidthEv()
  br label %bb.pj

bb.pj:                                            ; preds = %bb.jh, %_ZL20ShowDemoWindowPopupsv.exit
  call void @_ZN5ImGui3EndEv()
  ret void
}

declare void @_ZN5ImGui17ShowMetricsWindowEPb(ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui19ShowStackToolWindowEPb(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui15ShowAboutWindowEPb(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.40, ptr noundef %0, i32 noundef 64)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui3EndEv()
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN5ImGui10GetVersionEv()
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.104, ptr noundef %i.b)
  tail call void @_ZN5ImGui9SeparatorEv()
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.105)
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.106)
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.107, ptr noundef nonnull @_ZZN5ImGui15ShowAboutWindowEPbE16show_config_info) ; 0 uses
  %i.d = load i8, ptr @_ZZN5ImGui15ShowAboutWindowEPbE16show_config_info, align 1, !tbaa !23, !range !21, !noundef !22
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.ao

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv() ; 21 uses
  %i.g = tail call noundef nonnull align 4 dereferenceable(1048) ptr @_ZN5ImGui8GetStyleEv() ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !41
  %i.h = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.108, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.i = call noundef float @_ZN5ImGui28GetTextLineHeightWithSpacingEv()
  %i.j = fmul float %i.i, 1.800000e+01
  store float 0.000000e+00, ptr %2, align 4, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.j, ptr %i.k, align 4, !tbaa !40
  %i.l = call noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef nonnull @.str.109)
  %i.m = call noundef zeroext i1 @_ZN5ImGui15BeginChildFrameEjRK6ImVec2i(i32 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef 4) ; 0 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN5ImGui14LogToClipboardEi(i32 noundef -1)
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.110)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.42, i32 noundef 18500)
  call void @_ZN5ImGui9SeparatorEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.112, i32 noundef 8, i32 noundef 2, i32 noundef 20)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.113, i32 noundef 201703)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.114)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.115)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.116, i32 noundef 4)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118)
  call void @_ZN5ImGui9SeparatorEv()
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !174  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  %spec.select = select i1 %.not, ptr @.str.120, ptr %i.o
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.119, ptr noundef nonnull %spec.select)
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !175  ; 2 uses
  %.not46 = icmp eq ptr %i.q, null
  %i.r = select i1 %.not46, ptr @.str.120, ptr %i.q
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.121, ptr noundef nonnull %i.r)
  %i.s = load i32, ptr %i.f, align 8, !tbaa !63
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.122, i32 noundef %i.s)
  %i.t = load i32, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %.not47 = trunc i32 %i.t to i1
  br i1 %.not47, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.123)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !63
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi i32 [ %.pre, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.v = and i32 %i.u, 2
  %.not48 = icmp eq i32 %i.v, 0
  br i1 %.not48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.124)
  %.pre57 = load i32, ptr %i.f, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = phi i32 [ %.pre57, %bb.i ], [ %i.u, %bb.h ] ; 2 uses
  %i.x = and i32 %i.w, 4
  %.not49 = icmp eq i32 %i.x, 0
  br i1 %.not49, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.125)
  %.pre58 = load i32, ptr %i.f, align 8, !tbaa !63
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = phi i32 [ %.pre58, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  %i.z = and i32 %i.y, 8
  %.not50 = icmp eq i32 %i.z, 0
  br i1 %.not50, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.126)
  %.pre59 = load i32, ptr %i.f, align 8, !tbaa !63
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aa = phi i32 [ %.pre59, %bb.m ], [ %i.y, %bb.l ] ; 2 uses
  %i.ab = and i32 %i.aa, 16
  %.not51 = icmp eq i32 %i.ab, 0
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.127)
  %.pre60 = load i32, ptr %i.f, align 8, !tbaa !63
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ac = phi i32 [ %.pre60, %bb.o ], [ %i.aa, %bb.n ]
  %i.ad = and i32 %i.ac, 32
  %.not52 = icmp eq i32 %i.ad, 0
  br i1 %.not52, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.128)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !176, !range !21, !noundef !22
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.75)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 193
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !177, !range !21, !noundef !22
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.129)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 194
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !178, !range !21, !noundef !22
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.68)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 196
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !179, !range !21, !noundef !22
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.72)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 197
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !180, !range !21, !noundef !22
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.74)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.au = load float, ptr %i.at, align 8, !tbaa !181 ; 2 uses
  %i.av = fcmp ult float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aw = fpext float %i.au to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.130, double noundef %i.aw)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 5 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !64
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.131, i32 noundef %i.ay)
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !64 ; 2 uses
  %.not53 = trunc i32 %i.az to i1
  br i1 %.not53, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.132)
  %.pre61 = load i32, ptr %i.ax, align 4, !tbaa !64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ba = phi i32 [ %.pre61, %bb.ae ], [ %i.az, %bb.ad ] ; 2 uses
  %i.bb = and i32 %i.ba, 2
  %.not54 = icmp eq i32 %i.bb, 0
  br i1 %.not54, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.133)
  %.pre62 = load i32, ptr %i.ax, align 4, !tbaa !64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bc = phi i32 [ %.pre62, %bb.ag ], [ %i.ba, %bb.af ] ; 2 uses
  %i.bd = and i32 %i.bc, 4
  %.not55 = icmp eq i32 %i.bd, 0
  br i1 %.not55, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.134)
  %.pre63 = load i32, ptr %i.ax, align 4, !tbaa !64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.be = phi i32 [ %.pre63, %bb.ai ], [ %i.bc, %bb.ah ]
  %i.bf = and i32 %i.be, 8
  %.not56 = icmp eq i32 %i.bf, 0
  br i1 %.not56, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.135)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @_ZN5ImGui9SeparatorEv()
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !75
  %i.bk = load i32, ptr %i.bh, align 8, !tbaa !182
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !183
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 52
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !184
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.136, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bm, i32 noundef %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !185
  %i.br = fpext float %i.bq to double
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !186
  %i.bu = fpext float %i.bt to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.137, double noundef %i.br, double noundef %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !187
  %i.bx = fpext float %i.bw to double
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 188
  %i.bz = load float, ptr %i.by, align 4, !tbaa !188
  %i.ca = fpext float %i.bz to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.138, double noundef %i.bx, double noundef %i.ca)
  call void @_ZN5ImGui9SeparatorEv()
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !189
  %i.cd = fpext float %i.cc to double
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !76
  %i.cg = fpext float %i.cf to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.139, double noundef %i.cd, double noundef %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !77
  %i.cj = fpext float %i.ci to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.140, double noundef %i.cj)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !78
  %i.cm = fpext float %i.cl to double
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.co = load float, ptr %i.cn, align 4, !tbaa !79
  %i.cp = fpext float %i.co to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.141, double noundef %i.cm, double noundef %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !80
  %i.cs = fpext float %i.cr to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.142, double noundef %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !81
  %i.cv = fpext float %i.cu to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.143, double noundef %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !82
  %i.cy = fpext float %i.cx to double
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.da = load float, ptr %i.cz, align 4, !tbaa !83
  %i.db = fpext float %i.da to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.144, double noundef %i.cy, double noundef %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !41
  %i.de = fpext <2 x float> %i.dd to <2 x double> ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 0
  %i.dg = extractelement <2 x double> %i.de, i64 1
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.145, double noundef %i.df, double noundef %i.dg)
  br i1 %i.h, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.146)
  call void @_ZN5ImGui9LogFinishEv()
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @_ZN5ImGui13EndChildFrameEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.c
  call void @_ZN5ImGui3EndEv()
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui15ShowStyleEditorEP10ImGuiStyle(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.e = tail call noundef nonnull align 4 dereferenceable(1048) ptr @_ZN5ImGui8GetStyleEv() ; 44 uses
  %i.f = load atomic i8, ptr @_ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style) #27
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN10ImGuiStyleC1Ev(ptr noundef nonnull align 4 dereferenceable(1048) @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.b = load i1, ptr @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE4init, align 1
  %i.i = icmp ne ptr %0, null                     ; 2 uses
  %or.cond.not = or i1 %i.i, %.b
  br i1 %or.cond.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1048) @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style, ptr noundef nonnull align 4 dereferenceable(1048) %i.e, i64 1048, i1 false), !tbaa.struct !193
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style) #27
  br label %bb.ci

bb.h:                                             ; preds = %bb.f, %bb.e
  store i1 true, ptr @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE4init, align 1
  %spec.store.select = select i1 %i.i, ptr %0, ptr @_ZZN5ImGui15ShowStyleEditorEP10ImGuiStyleE15ref_saved_style ; 4 uses
  %i.k = tail call noundef float @_ZN5ImGui14GetWindowWidthEv()
  %i.l = fmul float %i.k, 5.000000e-01
  tail call void @_ZN5ImGui13PushItemWidthEf(float noundef %i.l)
  %i.m = tail call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiS1_i(ptr noundef nonnull @.str.149, ptr noundef nonnull @_ZZN5ImGui17ShowStyleSelectorEPKcE9style_idx, ptr noundef nonnull @.str.148, i32 noundef -1)
  br i1 %i.m, label %bb.i, label %_ZN5ImGui17ShowStyleSelectorEPKc.exit

bb.i:                                             ; preds = %bb.h
  %i.n = load i32, ptr @_ZZN5ImGui17ShowStyleSelectorEPKcE9style_idx, align 4, !tbaa !42
  switch i32 %i.n, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui15StyleColorsDarkEP10ImGuiStyle(ptr noundef null)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui16StyleColorsLightEP10ImGuiStyle(ptr noundef null)
end_hunk_3
begin_hunk_4_@_ZN5ImGui8EndTableEv

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL21ShowDemoWindowWidgetsv() unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 8 uses
  %i.b = alloca float, align 4                    ; 8 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %i.d = alloca float, align 4                    ; 8 uses
  %i.e = alloca float, align 4                    ; 8 uses
  %i.f = alloca float, align 4                    ; 8 uses
  %i.g = alloca float, align 4                    ; 8 uses
  %i.h = alloca float, align 4                    ; 8 uses
  %i.i = alloca float, align 4                    ; 8 uses
  %i.j = alloca float, align 4                    ; 8 uses
  %i.k = alloca float, align 4                    ; 8 uses
  %i.l = alloca float, align 4                    ; 8 uses
  %i.m = alloca float, align 4                    ; 8 uses
  %i.n = alloca float, align 4                    ; 8 uses
  %i.o = alloca float, align 4                    ; 8 uses
  %i.p = alloca float, align 4                    ; 8 uses
  %i.q = alloca float, align 4                    ; 8 uses
  %i.r = alloca float, align 4                    ; 8 uses
  %i.s = alloca float, align 4                    ; 8 uses
  %i.t = alloca float, align 4                    ; 8 uses
  %i.u = alloca float, align 4                    ; 8 uses
  %0 = alloca %struct.ImVec2, align 8             ; 4 uses
  %1 = alloca %struct.ImVec4, align 8             ; 9 uses
  %2 = alloca %struct.ImVec4, align 8             ; 9 uses
  %3 = alloca %struct.ImVec4, align 8             ; 9 uses
  %4 = alloca %struct.ImVec2, align 8             ; 8 uses
  %i.v = alloca [11 x ptr], align 16              ; 4 uses
  %i.w = alloca [9 x ptr], align 16               ; 4 uses
  %5 = alloca %struct.ImVec4, align 16            ; 4 uses
  %6 = alloca %struct.ImVec4, align 16            ; 4 uses
  %7 = alloca %struct.ImVec2, align 4             ; 9 uses
  %8 = alloca %struct.ImVec2, align 4             ; 9 uses
  %9 = alloca %struct.ImVec2, align 8             ; 8 uses
  %10 = alloca %struct.ImVec2, align 8            ; 8 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec4, align 16           ; 5 uses
  %14 = alloca %struct.ImVec4, align 16           ; 5 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %16 = alloca %struct.ImVec2, align 8            ; 4 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %19 = alloca %struct.ImVec2, align 8            ; 32 uses
  %20 = alloca %struct.ImVec2, align 8            ; 32 uses
  %21 = alloca %struct.ImVec2, align 4            ; 33 uses
  %22 = alloca %struct.ImVec4, align 16           ; 32 uses
  %23 = alloca %struct.ImVec4, align 16           ; 32 uses
  %i.x = alloca [14 x ptr], align 16              ; 20 uses
  %24 = alloca %struct.ImVec2, align 8            ; 56 uses
  %25 = alloca %struct.ImVec2, align 8            ; 4 uses
  %26 = alloca %struct.ImVec2, align 8            ; 56 uses
  %27 = alloca %struct.ImVec2, align 4            ; 5 uses
  %28 = alloca %struct.ImVec2, align 8            ; 56 uses
  %29 = alloca %struct.ImVec2, align 8            ; 4 uses
  %30 = alloca %struct.ImVec2, align 8            ; 4 uses
  %31 = alloca %struct.ImVec2, align 8            ; 4 uses
  %32 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.y = alloca [32 x i8], align 16               ; 20 uses
  %33 = alloca %struct.ImVec2, align 8            ; 20 uses
  %i.z = alloca [32 x i8], align 16               ; 20 uses
  %34 = alloca %struct.ImVec2, align 8            ; 20 uses
  %35 = alloca %struct.ImVec2, align 8            ; 4 uses
  %36 = alloca %struct.ImVec2, align 8            ; 4 uses
  %37 = alloca %struct.ImVec2, align 8            ; 4 uses
  %38 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.aa = alloca [32 x i8], align 16              ; 40 uses
  %39 = alloca %struct.ImVec2, align 8            ; 40 uses
  %40 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.ab = alloca [32 x i8], align 16              ; 40 uses
  %41 = alloca %struct.ImVec2, align 8            ; 40 uses
  %42 = alloca %struct.ImVec2, align 8            ; 4 uses
  %43 = alloca %struct.ImVec2, align 8            ; 32 uses
  %44 = alloca %struct.ImVec2, align 8            ; 36 uses
  %i.ac = alloca [32 x i8], align 16              ; 36 uses
  %45 = alloca %struct.ImVec2, align 8            ; 36 uses
  %46 = alloca %struct.ImVec2, align 4            ; 5 uses
  %47 = alloca %struct.ImVec2, align 4            ; 5 uses
  %48 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.ad = alloca i32, align 4                     ; 4 uses
  %i.ae = alloca i8, align 1                      ; 5 uses
  %i.af = alloca [16 x i8], align 16              ; 5 uses
  %i.ag = alloca [32 x i8], align 16              ; 4 uses
  %49 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.ah = alloca [32 x i8], align 16              ; 4 uses
  %50 = alloca %struct.ImVec2, align 8            ; 4 uses
  %51 = alloca %struct.ImVec2, align 8            ; 4 uses
  %52 = alloca %struct.ImVec2, align 8            ; 4 uses
  %53 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.ai = alloca i8, align 1                      ; 4 uses
  %i.aj = alloca i8, align 1                      ; 4 uses
  %i.ak = alloca i8, align 1                      ; 4 uses
  %i.al = alloca i8, align 1                      ; 5 uses
  %i.am = alloca i8, align 1                      ; 5 uses
  %i.an = alloca i8, align 1                      ; 4 uses
  %i.ao = alloca i8, align 1                      ; 4 uses
  %i.ap = alloca i8, align 1                      ; 4 uses
  %i.aq = alloca i8, align 1                      ; 5 uses
  %i.ar = alloca i8, align 1                      ; 5 uses
  %i.as = alloca i16, align 2                     ; 4 uses
  %i.at = alloca i16, align 2                     ; 4 uses
  %i.au = alloca i16, align 2                     ; 4 uses
  %i.av = alloca i16, align 2                     ; 4 uses
  %i.aw = alloca i16, align 2                     ; 4 uses
  %i.ax = alloca i16, align 2                     ; 4 uses
  %i.ay = alloca i16, align 2                     ; 4 uses
  %i.az = alloca i16, align 2                     ; 4 uses
  %i.ba = alloca i16, align 2                     ; 4 uses
  %i.bb = alloca i16, align 2                     ; 4 uses
  %i.bc = alloca i32, align 4                     ; 6 uses
  %i.bd = alloca i32, align 4                     ; 5 uses
  %i.be = alloca i32, align 4                     ; 6 uses
  %i.bf = alloca i32, align 4                     ; 4 uses
  %i.bg = alloca i32, align 4                     ; 4 uses
  %i.bh = alloca i32, align 4                     ; 4 uses
  %i.bi = alloca i32, align 4                     ; 4 uses
  %i.bj = alloca i32, align 4                     ; 6 uses
  %i.bk = alloca i32, align 4                     ; 5 uses
  %i.bl = alloca i32, align 4                     ; 6 uses
  %i.bm = alloca i32, align 4                     ; 4 uses
  %i.bn = alloca i32, align 4                     ; 4 uses
  %i.bo = alloca i32, align 4                     ; 4 uses
  %i.bp = alloca i32, align 4                     ; 4 uses
  %i.bq = alloca i64, align 8                     ; 6 uses
  %i.br = alloca i64, align 8                     ; 4 uses
  %i.bs = alloca i64, align 8                     ; 6 uses
  %i.bt = alloca i64, align 8                     ; 4 uses
  %i.bu = alloca i64, align 8                     ; 4 uses
  %i.bv = alloca i64, align 8                     ; 4 uses
  %i.bw = alloca i64, align 8                     ; 4 uses
  %i.bx = alloca i64, align 8                     ; 6 uses
  %i.by = alloca i64, align 8                     ; 4 uses
  %i.bz = alloca i64, align 8                     ; 6 uses
  %i.ca = alloca i64, align 8                     ; 4 uses
  %i.cb = alloca i64, align 8                     ; 4 uses
  %i.cc = alloca i64, align 8                     ; 4 uses
  %i.cd = alloca i64, align 8                     ; 4 uses
  %i.ce = alloca float, align 4                   ; 7 uses
  %i.cf = alloca float, align 4                   ; 8 uses
  %i.cg = alloca float, align 4                   ; 4 uses
  %i.ch = alloca float, align 4                   ; 4 uses
  %i.ci = alloca double, align 8                  ; 7 uses
  %i.cj = alloca double, align 8                  ; 7 uses
  %i.ck = alloca double, align 8                  ; 4 uses
  %i.cl = alloca double, align 8                  ; 4 uses
  %54 = alloca %struct.ImVec2, align 8            ; 4 uses
  %55 = alloca %struct.ImVec2, align 8            ; 4 uses
  %56 = alloca %struct.ImVec4, align 8            ; 9 uses
  %57 = alloca %struct.ImVec4, align 8            ; 9 uses
  %58 = alloca %struct.ImVec4, align 8            ; 9 uses
  %59 = alloca %struct.ImVec4, align 8            ; 9 uses
  %60 = alloca %struct.ImVec2, align 8            ; 8 uses
  %61 = alloca %struct.ImVec2, align 8            ; 15 uses
  %62 = alloca %struct.ImVec2, align 8            ; 16 uses
  %i.cm = alloca i32, align 4                     ; 14 uses
  %63 = alloca %struct.ImVec2, align 8            ; 4 uses
  %64 = alloca %struct.ImVec2, align 8            ; 20 uses
  %i.cn = alloca [15 x ptr], align 16             ; 4 uses
  %65 = alloca %struct.ImVec2, align 8            ; 4 uses
  %66 = alloca %struct.ImVec2, align 8            ; 4 uses
  %67 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.co = alloca [4 x ptr], align 16              ; 4 uses
  %i.cp = alloca [4 x ptr], align 16              ; 4 uses
  %i.cq = alloca [1 x i8], align 1                ; 4 uses
  %68 = alloca %struct.ImVec2, align 4            ; 5 uses
  %69 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.cr = tail call noundef zeroext i1 @_ZN5ImGui16CollapsingHeaderEPKci(ptr noundef nonnull @.str.237, i32 noundef 0)
  br i1 %i.cr, label %bb.b, label %bb.yz

bb.b:                                             ; preds = %bb.a
  %i.cs = load i8, ptr @_ZZL21ShowDemoWindowWidgetsvE11disable_all, align 1, !tbaa !23, !range !21, !noundef !22
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cu = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.238)
  br i1 %i.cu, label %bb.e, label %bb.ac

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #27
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !41
  %i.cv = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.239, ptr noundef nonnull align 4 dereferenceable(8) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  %.pre = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE7clicked, align 4, !tbaa !42 ; 2 uses
  br i1 %i.cv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cw = add nsw i32 %.pre, 1                    ; 2 uses
  store i32 %i.cw, ptr @_ZZL21ShowDemoWindowWidgetsvE7clicked, align 4, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cx = phi i32 [ %i.cw, %bb.f ], [ %.pre, %bb.e ]
  %.not366 = trunc i32 %i.cx to i1
  br i1 %.not366, label %bb.h, label %.peel.next

bb.h:                                             ; preds = %bb.g
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.240)
  br label %.peel.next

.peel.next:                                       ; preds = %bb.h, %bb.g
  %i.cy = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.241, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE5check) ; 0 uses
  %i.cz = call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef nonnull @.str.242, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE1e, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.da = call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef nonnull @.str.243, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE1e, i32 noundef 1) ; 0 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.db = call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcPii(ptr noundef nonnull @.str.244, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE1e, i32 noundef 2) ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #27
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.u)
  %i.df = load float, ptr %i.s, align 4, !tbaa !41
  %i.dg = load float, ptr %i.t, align 4, !tbaa !41
  %i.dh = load float, ptr %i.u, align 4, !tbaa !41
  %.sroa.0.0.vec.insert.i.peel = insertelement <2 x float> poison, float %i.df, i64 0
  %.sroa.0.4.vec.insert.i.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel, float %i.dg, i64 1
  %.sroa.3.12.vec.insert.i.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dh, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #27
  store <2 x float> %.sroa.0.4.vec.insert.i.peel, ptr %1, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.peel, ptr %i.dc, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 21, ptr noundef nonnull align 4 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #27
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  %i.di = load float, ptr %i.p, align 4, !tbaa !41
  %i.dj = load float, ptr %i.q, align 4, !tbaa !41
  %i.dk = load float, ptr %i.r, align 4, !tbaa !41
  %.sroa.0.0.vec.insert.i398.peel = insertelement <2 x float> poison, float %i.di, i64 0
  %.sroa.0.4.vec.insert.i399.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i398.peel, float %i.dj, i64 1
  %.sroa.3.12.vec.insert.i401.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dk, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27
  store <2 x float> %.sroa.0.4.vec.insert.i399.peel, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i401.peel, ptr %i.dd, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #27
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  %i.dl = load float, ptr %i.m, align 4, !tbaa !41
  %i.dm = load float, ptr %i.n, align 4, !tbaa !41
  %i.dn = load float, ptr %i.o, align 4, !tbaa !41
  %.sroa.0.0.vec.insert.i409.peel = insertelement <2 x float> poison, float %i.dl, i64 0
  %.sroa.0.4.vec.insert.i410.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i409.peel, float %i.dm, i64 1
  %.sroa.3.12.vec.insert.i412.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dn, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  store <2 x float> %.sroa.0.4.vec.insert.i410.peel, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i412.peel, ptr %i.de, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !41
  %i.do = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.245, ptr noundef nonnull align 4 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  br label %bb.i

.loopexit608:                                     ; preds = %bb.i
  call void @_ZN5ImGui23AlignTextToFramePaddingEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.246)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.dp = call noundef nonnull align 4 dereferenceable(1048) ptr @_ZN5ImGui8GetStyleEv()
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 84
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !56
  call void @_ZN5ImGui16PushButtonRepeatEb(i1 noundef zeroext true)
  %i.ds = call noundef zeroext i1 @_ZN5ImGui11ArrowButtonEPKci(ptr noundef nonnull @.str.247, i32 noundef 0)
  br i1 %i.ds, label %bb.j, label %bb.k

bb.i:                                             ; preds = %.peel.next, %bb.i
  %.0570 = phi i32 [ 1, %.peel.next ], [ %i.ef, %bb.i ] ; 3 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void @_ZN5ImGui6PushIDEi(i32 noundef %.0570)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.dt = uitofp nneg i32 %.0570 to float
  %i.du = fdiv float %i.dt, 7.000000e+00          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #27
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.du, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.u)
  %i.dv = load float, ptr %i.s, align 4, !tbaa !41
  %i.dw = load float, ptr %i.t, align 4, !tbaa !41
  %i.dx = load float, ptr %i.u, align 4, !tbaa !41
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.dv, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.dw, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dx, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #27
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.dc, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 21, ptr noundef nonnull align 4 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #27
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.du, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
  %i.dy = load float, ptr %i.p, align 4, !tbaa !41
  %i.dz = load float, ptr %i.q, align 4, !tbaa !41
  %i.ea = load float, ptr %i.r, align 4, !tbaa !41
  %.sroa.0.0.vec.insert.i398 = insertelement <2 x float> poison, float %i.dy, i64 0
  %.sroa.0.4.vec.insert.i399 = insertelement <2 x float> %.sroa.0.0.vec.insert.i398, float %i.dz, i64 1
  %.sroa.3.12.vec.insert.i401 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ea, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27
  store <2 x float> %.sroa.0.4.vec.insert.i399, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i401, ptr %i.dd, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #27
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.du, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  %i.eb = load float, ptr %i.m, align 4, !tbaa !41
  %i.ec = load float, ptr %i.n, align 4, !tbaa !41
  %i.ed = load float, ptr %i.o, align 4, !tbaa !41
  %.sroa.0.0.vec.insert.i409 = insertelement <2 x float> poison, float %i.eb, i64 0
  %.sroa.0.4.vec.insert.i410 = insertelement <2 x float> %.sroa.0.0.vec.insert.i409, float %i.ec, i64 1
  %.sroa.3.12.vec.insert.i412 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ed, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  store <2 x float> %.sroa.0.4.vec.insert.i410, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i412, ptr %i.de, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !41
  %i.ee = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.245, ptr noundef nonnull align 4 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  %i.ef = add nuw nsw i32 %.0570, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ef, 7
  br i1 %exitcond.not, label %.loopexit608, label %bb.i, !llvm.loop !199

bb.j:                                             ; preds = %.loopexit608
  %i.eg = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE7counter, align 4, !tbaa !42
  %i.eh = add nsw i32 %i.eg, -1
  store i32 %i.eh, ptr @_ZZL21ShowDemoWindowWidgetsvE7counter, align 4, !tbaa !42
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit608
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef %i.dr)
  %i.ei = call noundef zeroext i1 @_ZN5ImGui11ArrowButtonEPKci(ptr noundef nonnull @.str.248, i32 noundef 1)
  br i1 %i.ei, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ej = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE7counter, align 4, !tbaa !42
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr @_ZZL21ShowDemoWindowWidgetsvE7counter, align 4, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_ZN5ImGui15PopButtonRepeatEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.el = load i32, ptr @_ZZL21ShowDemoWindowWidgetsvE7counter, align 4, !tbaa !42
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.249, i32 noundef %i.el)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.250)
  %i.em = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.em, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @_ZN5ImGui10SetTooltipEPKcz(ptr noundef nonnull @.str.251)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.252)
  %i.en = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.en, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZN5ImGui12BeginTooltipEv()
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.253)
  call void @_ZN5ImGui9PlotLinesEPKcPKfiiS1_ff6ImVec2i(ptr noundef nonnull @.str.254, ptr noundef nonnull @_ZZL21ShowDemoWindowWidgetsvE3arr, i32 noundef 7, i32 noundef 0, ptr noundef null, float noundef f0x7F7FFFFF, float noundef f0x7F7FFFFF, <2 x float> zeroinitializer, i32 noundef 4)
end_hunk_4
begin_hunk_5_@_ZL20ShowDemoWindowLayoutv:bb.a

bb.bn:                                            ; preds = %.preheader229, %bb.bq
  %.0163241 = phi i32 [ 0, %.preheader229 ], [ %i.iv, %bb.bq ] ; 4 uses
  %i.ir = load i8, ptr @_ZZL20ShowDemoWindowLayoutvE12enable_track, align 1, !tbaa !23, !range !21, !noundef !22
  %i.is = trunc nuw i8 %i.ir to i1
  %i.it = load i32, ptr @_ZZL20ShowDemoWindowLayoutvE10track_item, align 4
  %i.iu = icmp eq i32 %.0163241, %i.it
  %or.cond181 = select i1 %i.is, i1 %i.iu, i1 false
  br i1 %or.cond181, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %38, align 16, !tbaa !41
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %38, ptr noundef nonnull @.str.417, i32 noundef %.0163241)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @_ZN5ImGui14SetScrollHereYEf(float noundef %i.iq)
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.417, i32 noundef %.0163241)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %i.iv = add nuw nsw i32 %.0163241, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.iv, 100
  br i1 %exitcond258.not, label %.loopexit230, label %bb.bn, !llvm.loop !217

.loopexit230:                                     ; preds = %bb.bq, %bb.bm
  %i.iw = call noundef float @_ZN5ImGui10GetScrollYEv()
  %i.ix = call noundef float @_ZN5ImGui13GetScrollMaxYEv()
  call void @_ZN5ImGui8EndChildEv()
  %i.iy = fpext float %i.iw to double
  %i.iz = fpext float %i.ix to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.879, double noundef %i.iy, double noundef %i.iz)
  call void @_ZN5ImGui8EndGroupEv()
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond260.not, label %bb.bc, label %bb.be, !llvm.loop !218

bb.br:                                            ; preds = %.loopexit
  call void @_ZN5ImGui5PopIDEv()
  call void (ptr, ...) @_ZN5ImGui12TextDisabledEPKcz(ptr noundef nonnull @.str.236)
  %i.ja = call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.ja, label %bb.bs, label %_ZL10HelpMarkerPKc.exit195

bb.bs:                                            ; preds = %bb.br
  call void @_ZN5ImGui12BeginTooltipEv()
  %i.jb = call noundef float @_ZN5ImGui11GetFontSizeEv()
  %i.jc = fmul float %i.jb, 3.500000e+01
  call void @_ZN5ImGui15PushTextWrapPosEf(float noundef %i.jc)
  call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.886, ptr noundef null)
  call void @_ZN5ImGui14PopTextWrapPosEv()
  call void @_ZN5ImGui10EndTooltipEv()
  br label %_ZL10HelpMarkerPKc.exit195

_ZL10HelpMarkerPKc.exit195:                       ; preds = %bb.br, %bb.bs
  %i.jd = call noundef zeroext i1 @_ZN5ImGui9SliderIntEPKcPiiiS1_i(ptr noundef nonnull @.str.490, ptr noundef nonnull @_ZZL20ShowDemoWindowLayoutvE5lines, i32 noundef 1, i32 noundef 15, ptr noundef nonnull @.str.249, i32 noundef 0) ; 0 uses
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 12, float noundef 3.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  store <2 x float> <float 2.000000e+00, float 1.000000e+00>, ptr %41, align 8, !tbaa !41
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 11, ptr noundef nonnull align 4 dereferenceable(8) %41)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27
  %i.je = call noundef float @_ZN5ImGui25GetFrameHeightWithSpacingEv()
  %i.jf = call float @llvm.fmuladd.f32(float %i.je, float 7.000000e+00, float 3.000000e+01)
  store float 0.000000e+00, ptr %42, align 4, !tbaa !39
  %i.jg = getelementptr inbounds nuw i8, ptr %42, i64 4
  store float %i.jf, ptr %i.jg, align 4, !tbaa !40
  %i.jh = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2bi(ptr noundef nonnull @.str.887, ptr noundef nonnull align 4 dereferenceable(8) %42, i1 noundef zeroext true, i32 noundef 2048) ; 0 uses
  %i.ji = load i32, ptr @_ZZL20ShowDemoWindowLayoutvE5lines, align 4, !tbaa !42
  %i.jj = icmp sgt i32 %i.ji, 0
  br i1 %i.jj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL10HelpMarkerPKc.exit195
  %i.jk = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  br label %bb.ce

bb.bt:                                            ; preds = %_ZL10HelpMarkerPKc.exit194, %.loopexit
  %indvars.iv265 = phi i64 [ 0, %_ZL10HelpMarkerPKc.exit194 ], [ %indvars.iv.next266, %.loopexit ] ; 5 uses
  %i.jn = call noundef float @_ZN5ImGui17GetTextLineHeightEv()
  %i.jo = load float, ptr %i.hv, align 4, !tbaa !224
  %i.jp = fadd float %i.jn, %i.jo
  %i.jq = load float, ptr %i.hw, align 4, !tbaa !76
  %i.jr = call float @llvm.fmuladd.f32(float %i.jq, float 2.000000e+00, float %i.jp)
  %i.js = load i8, ptr @_ZZL20ShowDemoWindowLayoutvE24enable_extra_decorations, align 1, !tbaa !23, !range !21, !noundef !22
  %i.jt = zext nneg i8 %i.js to i32
  %i.ju = shl nuw nsw i32 %i.jt, 14
  %i.jv = or disjoint i32 %i.ju, 2048
  %i.jw = inttoptr i64 %indvars.iv265 to ptr
  %i.jx = call noundef i32 @_ZN5ImGui5GetIDEPKv(ptr noundef %i.jw)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  store float -1.000000e+02, ptr %39, align 4, !tbaa !39
  store float %i.jr, ptr %i.hx, align 4, !tbaa !40
  %i.jy = call noundef zeroext i1 @_ZN5ImGui10BeginChildEjRK6ImVec2bi(i32 noundef %i.jx, ptr noundef nonnull align 4 dereferenceable(8) %39, i1 noundef zeroext true, i32 noundef %i.jv)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  br i1 %i.hg, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jz = load float, ptr @_ZZL20ShowDemoWindowLayoutvE16scroll_to_off_px, align 4, !tbaa !41
  call void @_ZN5ImGui10SetScrollXEf(float noundef %i.jz)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  br i1 %i.hj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ka = call <2 x float> @_ZN5ImGui17GetCursorStartPosEv()
  %.sroa.056.0.vec.extract = extractelement <2 x float> %i.ka, i64 0
  %i.kb = load float, ptr @_ZZL20ShowDemoWindowLayoutvE16scroll_to_pos_px, align 4, !tbaa !41
  %i.kc = fadd float %.sroa.056.0.vec.extract, %i.kb
  %i.kd = trunc nuw nsw i64 %indvars.iv265 to i32
  %i.ke = uitofp nneg i32 %i.kd to float
  %i.kf = fmul nnan float %i.ke, 2.500000e-01
  call void @_ZN5ImGui17SetScrollFromPosXEff(float noundef %i.kc, float noundef %i.kf)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  br i1 %i.jy, label %bb.by, label %.loopexit

bb.by:                                            ; preds = %bb.bx
  %i.kg = trunc nuw nsw i64 %indvars.iv265 to i32
  %i.kh = uitofp nneg i32 %i.kg to float
  %i.ki = fmul nnan float %i.kh, 2.500000e-01     ; 2 uses
  %.pre281 = load i32, ptr @_ZZL20ShowDemoWindowLayoutvE10track_item, align 4
  %.pre = load i8, ptr @_ZZL20ShowDemoWindowLayoutvE12enable_track, align 1, !tbaa !23, !range !21
  %i.kj = trunc nuw i8 %.pre to i1
  %i.kk = icmp eq i32 %.pre281, 0
  %or.cond183.peel = select i1 %i.kj, i1 %i.kk, i1 false
  br i1 %or.cond183.peel, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.417, i32 noundef 0)
  br label %.peel.next263.preheader

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %40, align 16, !tbaa !41
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %40, ptr noundef nonnull @.str.417, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @_ZN5ImGui14SetScrollHereXEf(float noundef %i.ki)
  br label %.peel.next263.preheader

.peel.next263.preheader:                          ; preds = %bb.bz, %bb.ca
  br label %.peel.next263

.peel.next263:                                    ; preds = %.peel.next263.preheader, %bb.cd
  %.0161243 = phi i32 [ %i.kp, %bb.cd ], [ 1, %.peel.next263.preheader ] ; 4 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.kl = load i8, ptr @_ZZL20ShowDemoWindowLayoutvE12enable_track, align 1, !tbaa !23, !range !21, !noundef !22
  %i.km = trunc nuw i8 %i.kl to i1
  %i.kn = load i32, ptr @_ZZL20ShowDemoWindowLayoutvE10track_item, align 4
  %i.ko = icmp eq i32 %.0161243, %i.kn
  %or.cond183 = select i1 %i.km, i1 %i.ko, i1 false
  br i1 %or.cond183, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.peel.next263
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %40, align 16, !tbaa !41
  call void (ptr, ptr, ...) @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16) %40, ptr noundef nonnull @.str.417, i32 noundef %.0161243)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @_ZN5ImGui14SetScrollHereXEf(float noundef %i.ki)
  br label %bb.cd

bb.cc:                                            ; preds = %.peel.next263
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.417, i32 noundef %.0161243)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.kp = add nuw nsw i32 %.0161243, 1            ; 2 uses
  %exitcond261.not = icmp eq i32 %i.kp, 100
  br i1 %exitcond261.not, label %.loopexit, label %.peel.next263, !llvm.loop !219

.loopexit:                                        ; preds = %bb.cd, %bb.bx
  %i.kq = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.kr = call noundef float @_ZN5ImGui13GetScrollMaxXEv()
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL20ShowDemoWindowLayoutv.names.884, i64 %indvars.iv265
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !43
  %i.ku = fpext float %i.kq to double
  %i.kv = fpext float %i.kr to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.885, ptr noundef %i.kt, double noundef %i.ku, double noundef %i.kv)
  call void @_ZN5ImGui7SpacingEv()
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next266, 5
  br i1 %exitcond268.not, label %bb.br, label %bb.bt, !llvm.loop !220

._crit_edge:                                      ; preds = %.loopexit273, %_ZL10HelpMarkerPKc.exit195
  %i.kw = call noundef float @_ZN5ImGui10GetScrollXEv()
  %i.kx = call noundef float @_ZN5ImGui13GetScrollMaxXEv()
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  %i.ky = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.891) ; 0 uses
  %i.kz = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.kz, label %bb.ci, label %bb.cj

bb.ce:                                            ; preds = %.lr.ph, %.loopexit273
  %.0158246 = phi i32 [ 0, %.lr.ph ], [ %i.lr, %.loopexit273 ] ; 6 uses
  %.not170 = trunc i32 %.0158246 to i1
  %.v = select i1 %.not170, i32 9, i32 3
  %i.la = mul nuw nsw i32 %.0158246, 1000         ; 2 uses
  %i.lb = mul i32 %.v, %.0158246
  %i.lc = add i32 %i.lb, 10                       ; 2 uses
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.la)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  %i.ld = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.249, i32 noundef 0) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.le = load float, ptr %i.g, align 4, !tbaa !41
  %i.lf = load float, ptr %i.h, align 4, !tbaa !41
  %i.lg = load float, ptr %i.i, align 4, !tbaa !41
  %.sroa.0.0.vec.insert.i.peel = insertelement <2 x float> poison, float %i.le, i64 0
  %.sroa.0.4.vec.insert.i.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i.peel, float %i.lf, i64 1
  %.sroa.3.12.vec.insert.i.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.lg, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  store <2 x float> %.sroa.0.4.vec.insert.i.peel, ptr %43, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.peel, ptr %i.jk, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 21, ptr noundef nonnull align 4 dereferenceable(16) %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.lh = load float, ptr %i.d, align 4, !tbaa !41
  %i.li = load float, ptr %i.e, align 4, !tbaa !41
  %i.lj = load float, ptr %i.f, align 4, !tbaa !41
  %.sroa.0.0.vec.insert.i198.peel = insertelement <2 x float> poison, float %i.lh, i64 0
  %.sroa.0.4.vec.insert.i199.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i198.peel, float %i.li, i64 1
  %.sroa.3.12.vec.insert.i201.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.lj, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  store <2 x float> %.sroa.0.4.vec.insert.i199.peel, ptr %44, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i201.peel, ptr %i.jl, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef 0.000000e+00, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.lk = load float, ptr %i.a, align 4, !tbaa !41
  %i.ll = load float, ptr %i.b, align 4, !tbaa !41
  %i.lm = load float, ptr %i.c, align 4, !tbaa !41
  %.sroa.0.0.vec.insert.i209.peel = insertelement <2 x float> poison, float %i.lk, i64 0
  %.sroa.0.4.vec.insert.i210.peel = insertelement <2 x float> %.sroa.0.0.vec.insert.i209.peel, float %i.ll, i64 1
  %.sroa.3.12.vec.insert.i212.peel = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.lm, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store <2 x float> %.sroa.0.4.vec.insert.i210.peel, ptr %45, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i212.peel, ptr %i.jm, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  %i.ln = uitofp nneg i32 %.0158246 to float
  %i.lo = call float @sinf(float noundef %i.ln) #27
  %.scalar = call float @llvm.fmuladd.f32(float %i.lo, float 2.000000e+01, float 4.000000e+01)
  %i.lp = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  store <2 x float> %i.lp, ptr %46, align 8, !tbaa !41
  %i.lq = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.888, ptr noundef nonnull align 4 dereferenceable(8) %46) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  %exitcond269.peel.not = icmp ult i32 %i.lc, 2
  br i1 %exitcond269.peel.not, label %.loopexit273, label %.peel.next271

.loopexit273:                                     ; preds = %bb.ch, %bb.ce
  %i.lr = add nuw nsw i32 %.0158246, 1            ; 2 uses
  %i.ls = load i32, ptr @_ZZL20ShowDemoWindowLayoutvE5lines, align 4, !tbaa !42
  %i.lt = icmp slt i32 %i.lr, %i.ls
  br i1 %i.lt, label %bb.ce, label %._crit_edge, !llvm.loop !221

.peel.next271:                                    ; preds = %bb.ce, %bb.ch
  %.0157245 = phi i32 [ %i.mr, %bb.ch ], [ 1, %bb.ce ] ; 8 uses
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.lu = add nuw nsw i32 %.0157245, %i.la
  call void @_ZN5ImGui6PushIDEi(i32 noundef %i.lu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27
  %i.lv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.249, i32 noundef %.0157245) #27 ; 0 uses
  %i.lw = urem i32 %.0157245, 15
  %.not172 = icmp eq i32 %i.lw, 0
  br i1 %.not172, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %.peel.next271
  %i.lx = urem i32 %.0157245, 3
  %.not173 = icmp eq i32 %i.lx, 0
  br i1 %.not173, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ly = urem i32 %.0157245, 5
  %.not174 = icmp eq i32 %i.ly, 0
  %i.lz = select i1 %.not174, ptr @.str.890, ptr %i.m
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %.peel.next271
  %i.ma = phi ptr [ @.str.888, %.peel.next271 ], [ %i.lz, %bb.cg ], [ @.str.889, %bb.cf ]
  %i.mb = uitofp nneg i32 %.0157245 to float
  %i.mc = fmul nnan float %i.mb, 5.000000e-02     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.mc, float noundef 6.000000e-01, float noundef 6.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %i.md = load float, ptr %i.g, align 4, !tbaa !41
  %i.me = load float, ptr %i.h, align 4, !tbaa !41
  %i.mf = load float, ptr %i.i, align 4, !tbaa !41
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.md, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.me, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.mf, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %43, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.jk, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 21, ptr noundef nonnull align 4 dereferenceable(16) %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.mc, float noundef f0x3F333333, float noundef f0x3F333333, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.mg = load float, ptr %i.d, align 4, !tbaa !41
  %i.mh = load float, ptr %i.e, align 4, !tbaa !41
  %i.mi = load float, ptr %i.f, align 4, !tbaa !41
  %.sroa.0.0.vec.insert.i198 = insertelement <2 x float> poison, float %i.mg, i64 0
  %.sroa.0.4.vec.insert.i199 = insertelement <2 x float> %.sroa.0.0.vec.insert.i198, float %i.mh, i64 1
  %.sroa.3.12.vec.insert.i201 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.mi, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  store <2 x float> %.sroa.0.4.vec.insert.i199, ptr %44, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i201, ptr %i.jl, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.mc, float noundef 8.000000e-01, float noundef 8.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.mj = load float, ptr %i.a, align 4, !tbaa !41
  %i.mk = load float, ptr %i.b, align 4, !tbaa !41
  %i.ml = load float, ptr %i.c, align 4, !tbaa !41
  %.sroa.0.0.vec.insert.i209 = insertelement <2 x float> poison, float %i.mj, i64 0
  %.sroa.0.4.vec.insert.i210 = insertelement <2 x float> %.sroa.0.0.vec.insert.i209, float %i.mk, i64 1
  %.sroa.3.12.vec.insert.i212 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ml, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store <2 x float> %.sroa.0.4.vec.insert.i210, ptr %45, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i212, ptr %i.jm, align 8
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 23, ptr noundef nonnull align 4 dereferenceable(16) %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  %i.mm = add nuw nsw i32 %.0157245, %.0158246
  %i.mn = uitofp nneg i32 %i.mm to float
  %i.mo = call float @sinf(float noundef %i.mn) #27
  %.scalar292 = call float @llvm.fmuladd.f32(float %i.mo, float 2.000000e+01, float 4.000000e+01)
  %i.mp = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar292, i64 0
  store <2 x float> %i.mp, ptr %46, align 8, !tbaa !41
  %i.mq = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef %i.ma, ptr noundef nonnull align 4 dereferenceable(8) %46) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 3)
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27
  %i.mr = add nuw i32 %.0157245, 1                ; 2 uses
  %exitcond269.not = icmp eq i32 %i.lc, %i.mr
  br i1 %exitcond269.not, label %.loopexit273, label %.peel.next271, !llvm.loop !222

bb.ci:                                            ; preds = %._crit_edge
  %i.ms = call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mu = load float, ptr %i.mt, align 8, !tbaa !89
  %i.mv = fmul float %i.mu, -1.000000e+03
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge
  %.0154 = phi float [ %i.mv, %bb.ci ], [ 0.000000e+00, %._crit_edge ]
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.892)
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.mw = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.893) ; 0 uses
  %i.mx = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.mx, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.my = call noundef nonnull align 8 dereferenceable(5464) ptr @_ZN5ImGui5GetIOEv()
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.na = load float, ptr %i.mz, align 8, !tbaa !89
  %i.nb = fmul float %i.na, 1.000000e+03
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
end_hunk_5
begin_hunk_6_@_ZZL21ShowDemoWindowWidgetsvEN5Funcs10MyCallbackE_0P26ImGuiInputTextCallbackData:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !109
  tail call void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.c, ptr noundef nonnull @.str.747, ptr noundef null)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !110
  switch i32 %i.e, label %bb.i [
    i32 3, label %bb.d
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !111
  tail call void @_ZN26ImGuiInputTextCallbackData11DeleteCharsEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 0, i32 noundef %i.g)
  tail call void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 0, ptr noundef nonnull @.str.748, ptr noundef null)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.h, align 8, !tbaa !297
  %i.i = load i32, ptr %i.f, align 8, !tbaa !111
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.i, ptr %i.j, align 4, !tbaa !298
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !111
  tail call void @_ZN26ImGuiInputTextCallbackData11DeleteCharsEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 0, i32 noundef %i.l)
  tail call void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 0, ptr noundef nonnull @.str.749, ptr noundef null)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.m, align 8, !tbaa !297
  %i.n = load i32, ptr %i.k, align 8, !tbaa !111
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.n, ptr %i.o, align 4, !tbaa !298
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !54    ; 2 uses
  %i.s = and i8 %i.r, -33
  %i.t = add i8 %i.s, -65
  %or.cond30 = icmp ult i8 %i.t, 26
  br i1 %or.cond30, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = xor i8 %i.r, 32
  store i8 %i.u, ptr %i.q, align 1, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.v, align 8, !tbaa !299
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113  ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !42
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d, %bb.h, %bb.b
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8ImVectorIcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
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
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8ImVectorIiED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
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
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8ImVectorIiE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !86     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !87
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %._ZN8ImVectorIiE7reserveEi.exit_crit_edge

._ZN8ImVectorIiE7reserveEi.exit_crit_edge:        ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !88
  br label %_ZN8ImVectorIiE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.a, 1
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZNK8ImVectorIiE14_grow_capacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sdiv i32 %i.a, 2
  %i.g = add nsw i32 %i.f, %i.a
  br label %_ZNK8ImVectorIiE14_grow_capacityEi.exit

_ZNK8ImVectorIiE14_grow_capacityEi.exit:          ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ 8, %bb.b ]
  %i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.h, i32 %i.e) ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.k) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !88   ; 2 uses
  %.not6.i = icmp eq ptr %i.n, null
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorIiE14_grow_capacityEi.exit
  %i.o = load i32, ptr %0, align 8, !tbaa !86
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.l, ptr nonnull align 4 %i.n, i64 %i.q, i1 false)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !88
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorIiE14_grow_capacityEi.exit
  store ptr %i.l, ptr %i.m, align 8, !tbaa !88
  store i32 %i.i, ptr %i.b, align 4, !tbaa !87
  %.pre3 = load i32, ptr %0, align 8, !tbaa !86
  br label %_ZN8ImVectorIiE7reserveEi.exit

_ZN8ImVectorIiE7reserveEi.exit:                   ; preds = %._ZN8ImVectorIiE7reserveEi.exit_crit_edge, %bb.e
  %i.s = phi i32 [ %i.a, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge ], [ %.pre3, %bb.e ]
  %i.t = phi ptr [ %.pre, %._ZN8ImVectorIiE7reserveEi.exit_crit_edge ], [ %i.l, %bb.e ]
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %1, align 4
  store i32 %i.w, ptr %i.v, align 4
  %i.x = load i32, ptr %0, align 8, !tbaa !86
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %0, align 8, !tbaa !86
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui13TabItemButtonEPKci(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui9OpenPopupEPKci(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui8EndPopupEv() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @_ZN5ImGui13PlotHistogramEPKcPKfiiS1_ff6ImVec2i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, <2 x float>, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define internal noundef float @_ZZL21ShowDemoWindowWidgetsvEN5Funcs3SinE_2Pvi(ptr nofree readnone captures(none) %0, i32 noundef %1) #14 align 2 {
bb.a:
  %i.a = sitofp i32 %1 to float
  %i.b = fmul nnan float %i.a, 1.000000e-01
  %i.c = tail call float @sinf(float noundef %i.b) #27
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @_ZZL21ShowDemoWindowWidgetsvEN5Funcs3SawE_2Pvi(ptr nofree readnone captures(none) %0, i32 noundef %1) #15 align 2 {
bb.a:
  %.not = trunc i32 %1 to i1
  %i.a = select i1 %.not, float 1.000000e+00, float -1.000000e+00
  ret float %i.a
}

declare void @_ZN5ImGui9PlotLinesEPKcPFfPviES2_iiS1_ff6ImVec2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, <2 x float>) local_unnamed_addr #2

declare void @_ZN5ImGui13PlotHistogramEPKcPFfPviES2_iiS1_ff6ImVec2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, <2 x float>) local_unnamed_addr #2

declare void @_ZN5ImGui11ProgressBarEfRK6ImVec2PKc(float noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef, float noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4i6ImVec2(ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, <2 x float>) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui19BeginDragDropTargetEv() local_unnamed_addr #2

declare noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui17EndDragDropTargetEv() local_unnamed_addr #2

declare void @_ZN5ImGui19SetColorEditOptionsEi(i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui10DragFloat4EPKcPffffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui15DragFloatRange2EPKcPfS2_fffS1_S1_i(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui13DragIntRange2EPKcPiS2_fiiS1_S1_i(ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui10DragScalarEPKciPvfPKvS4_S1_i(ptr noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12SliderScalarEPKciPvPKvS4_S1_i(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui11InputScalarEPKciPvPKvS4_S1_i(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui11InputFloat2EPKcPfS1_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui10DragFloat2EPKcPffffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui9InputInt2EPKcPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8DragInt2EPKcPifiiS1_i(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui10SliderInt2EPKcPiiiS1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui10DragFloat3EPKcPffffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12SliderFloat3EPKcPfffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui9InputInt3EPKcPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8DragInt3EPKcPifiiS1_i(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui10SliderInt3EPKcPiiiS1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui11InputFloat4EPKcPfS1_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12SliderFloat4EPKcPfffS1_i(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui9InputInt4EPKcPii(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8DragInt4EPKcPifiiS1_i(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui10SliderInt4EPKcPiiiS1_i(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui10VSliderIntEPKcRK6ImVec2PiiiS1_i(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui6PushIDEPKc(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12VSliderFloatEPKcRK6ImVec2PfffS1_i(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui12PushStyleVarEif(i32 noundef, float noundef) local_unnamed_addr #2

declare <2 x float> @_ZN5ImGui17GetMouseDragDeltaEif(i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui19ResetMouseDragDeltaEi(i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8MenuItemEPKcS1_bb(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui10TreeNodeExEPKci(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui13IsItemFocusedEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui12IsItemEditedEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui15IsItemActivatedEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui17IsItemDeactivatedEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui26IsItemDeactivatedAfterEditEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui13IsItemVisibleEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui17IsItemToggledOpenEv() local_unnamed_addr #2

declare <2 x float> @_ZN5ImGui15GetItemRectSizeEv() local_unnamed_addr #2

declare void @_ZN5ImGui11EndDisabledEv() local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui15IsWindowFocusedEi(i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui15IsWindowHoveredEi(i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui21BeginPopupContextItemEPKci(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN26ImGuiInputTextCallbackData11InsertCharsEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN26ImGuiInputTextCallbackData11DeleteCharsEii(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN5ImGui7MemFreeEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

declare noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZZL21ShowDemoWindowWidgetsvEN5Funcs16MyResizeCallbackE_1P26ImGuiInputTextCallbackData(ptr nofree noundef captures(none) %0) #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !108
  %i.b = icmp eq i32 %i.a, 262144
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !300  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !48   ; 4 uses
  %i.i = icmp sgt i32 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %._ZN8ImVectorIcE6resizeEi.exit_crit_edge

._ZN8ImVectorIcE6resizeEi.exit_crit_edge:         ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %_ZN8ImVectorIcE6resizeEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sdiv i32 %i.h, 2
  %i.k = add nsw i32 %i.j, %i.h
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i:        ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %i.k, %bb.d ], [ 8, %bb.c ]
  %i.m = tail call noundef i32 @llvm.smax.i32(i32 %i.l, i32 %i.f) ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.n) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i
  %i.r = load i32, ptr %i.d, align 8, !tbaa !49
  %i.s = sext i32 %i.r to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.q, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.t)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i
  store ptr %i.o, ptr %i.p, align 8, !tbaa !47
  store i32 %i.m, ptr %i.g, align 4, !tbaa !48
  br label %_ZN8ImVectorIcE6resizeEi.exit

_ZN8ImVectorIcE6resizeEi.exit:                    ; preds = %._ZN8ImVectorIcE6resizeEi.exit_crit_edge, %bb.f
  %i.u = phi ptr [ %.pre, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge ], [ %i.o, %bb.f ]
  store i32 %i.f, ptr %i.d, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !112
  br label %bb.g

bb.g:                                             ; preds = %_ZN8ImVectorIcE6resizeEi.exit, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare <2 x float> @_ZN5ImGui21GetContentRegionAvailEv() local_unnamed_addr #2

declare void @_ZN5ImGui13SetCursorPosXEf(float noundef) local_unnamed_addr #2

declare noundef float @_ZN5ImGui13GetCursorPosXEv() local_unnamed_addr #2

end_hunk_6

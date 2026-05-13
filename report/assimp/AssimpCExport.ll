inline.NumInlined: 8
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Assimp::Exporter" = type { ptr }

$_ZN16aiExportDataBlobD2Ev = comdat any

@_ZTVN6Assimp16CIOSystemWrapperE = external unnamed_addr constant { [16 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define noundef i64 @aiGetExportFormatCount() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.Assimp::Exporter", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  call void @_ZN6Assimp8ExporterC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = invoke noundef i64 @_ZNK6Assimp8Exporter20GetExportFormatCountEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6Assimp8ExporterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  ret i64 %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp8ExporterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  resume { ptr, i32 } %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6Assimp8ExporterC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i64 @_ZNK6Assimp8Exporter20GetExportFormatCountEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6Assimp8ExporterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @aiGetExportFormatDescription(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Assimp::Exporter", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @_ZN6Assimp8ExporterC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = invoke noundef ptr @_ZNK6Assimp8Exporter26GetExportFormatDescriptionEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %0)
          to label %bb.b unwind label %bb.c       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #10
          to label %bb.e unwind label %bb.i       ; 4 uses

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #11
  %i.h = add i64 %i.g, 1                          ; 2 uses
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #10
          to label %bb.f unwind label %bb.i       ; 3 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.h, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %i.f, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #11
  %i.o = add i64 %i.n, 1                          ; 2 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #10
          to label %bb.g unwind label %bb.i       ; 3 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.o, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.p, ptr %i.q, align 8
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.m, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #11
  %i.u = add i64 %i.t, 1                          ; 2 uses
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #10
          to label %bb.h unwind label %bb.i       ; 3 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.v, i8 0, i64 %i.u, i1 false)
  store ptr %i.v, ptr %i.d, align 8
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.s, i64 %i.w, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.h
  %.0 = phi ptr [ %i.d, %bb.h ], [ null, %bb.b ]
  call void @_ZN6Assimp8ExporterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret ptr %.0

bb.k:                                             ; preds = %bb.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.c, %bb.c ]
  call void @_ZN6Assimp8ExporterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZNK6Assimp8Exporter26GetExportFormatDescriptionEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define void @aiReleaseExportFormatDescription(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @aiCopyScene(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %0, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %_ZN6Assimp9ScenePrivEP7aiScene.exit, label %bb.b

_ZN6Assimp9ScenePrivEP7aiScene.exit:              ; preds = %bb.a
  tail call void @_ZN6Assimp13SceneCombiner9CopySceneEPP7aiScenePKS1_b(ptr noundef nonnull %1, ptr noundef nonnull %0, i1 noundef zeroext true)
  %i.c = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1160
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i8 1, ptr %i.f, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN6Assimp9ScenePrivEP7aiScene.exit
  ret void
}

declare void @_ZN6Assimp13SceneCombiner9CopySceneEPP7aiScenePKS1_b(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @aiFreeScene(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %0) #9
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1168) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @aiExportScene(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Exporter", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @_ZN6Assimp8ExporterC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.a = invoke noundef i32 @_ZN6Assimp8Exporter6ExportEPK7aiScenePKcS5_jPKNS_16ExportPropertiesE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null)
          to label %aiExportSceneEx.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp8ExporterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %i.b

aiExportSceneEx.exit:                             ; preds = %bb.a
  call void @_ZN6Assimp8ExporterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @aiExportSceneEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Exporter", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN6Assimp8ExporterC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef ptr @_ZN6Assimp6Intern22AllocateFromAssimpHeapnwEm(i64 noundef 40)
          to label %bb.c unwind label %bb.d       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp16CIOSystemWrapperE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %3, ptr %i.c, align 8
  invoke void @_ZN6Assimp8Exporter12SetIOHandlerEPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp8ExporterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.e = invoke noundef i32 @_ZN6Assimp8Exporter6ExportEPK7aiScenePKcS5_jPKNS_16ExportPropertiesE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef null)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @_ZN6Assimp8ExporterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret i32 %i.e
}

declare void @_ZN6Assimp8Exporter12SetIOHandlerEPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6Assimp6Intern22AllocateFromAssimpHeapnwEm(i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6Assimp8Exporter6ExportEPK7aiScenePKcS5_jPKNS_16ExportPropertiesE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @aiExportSceneToBlob(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Exporter", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN6Assimp8ExporterC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
end_hunk_0

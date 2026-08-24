Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@aiReleaseImport:bb.a

bb.b:                                             ; preds = %_ZN6Assimp9ScenePrivEPK7aiScene.exit
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not10 = icmp eq ptr %i.c, null
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6Assimp9ScenePrivEPK7aiScene.exit, %bb.b
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1168) #45
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6Assimp8ImporterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 8) #45
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef ptr @aiApplyPostProcessing(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN6Assimp9ScenePrivEPK7aiScene.exit.thread, label %_ZN6Assimp9ScenePrivEPK7aiScene.exit

_ZN6Assimp9ScenePrivEPK7aiScene.exit:             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZN6Assimp9ScenePrivEPK7aiScene.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp9ScenePrivEPK7aiScene.exit
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.d, null
  br i1 %.not16, label %_ZN6Assimp9ScenePrivEPK7aiScene.exit.thread, label %bb.d

_ZN6Assimp9ScenePrivEPK7aiScene.exit.thread:      ; preds = %bb.a, %bb.b, %_ZN6Assimp9ScenePrivEPK7aiScene.exit
  %i.e = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_ZN6Assimp9ScenePrivEPK7aiScene.exit.thread
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.e, ptr noundef nonnull @.str)
          to label %_Z24ReportSceneNotFoundErrorv.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %_ZN6Assimp9ScenePrivEPK7aiScene.exit.thread, %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #47 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_Z24ReportSceneNotFoundErrorv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = invoke noundef ptr @_ZN6Assimp8Importer19ApplyPostProcessingEj(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %1)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %_ZN6Assimp9ScenePrivEPK7aiScene.exit.i, label %_Z24ReportSceneNotFoundErrorv.exit

_ZN6Assimp9ScenePrivEPK7aiScene.exit.i:           ; preds = %bb.e
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.j, null
  br i1 %.not9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp9ScenePrivEPK7aiScene.exit.i
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not10.i = icmp eq ptr %i.k, null
  br i1 %.not10.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZN6Assimp9ScenePrivEPK7aiScene.exit.i
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1168) #45
  br label %_Z24ReportSceneNotFoundErrorv.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN6Assimp8ImporterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 8) #45
  br label %_Z24ReportSceneNotFoundErrorv.exit

_Z24ReportSceneNotFoundErrorv.exit:               ; preds = %bb.h, %bb.g, %.noexc, %bb.e, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %i.i, %bb.e ], [ null, %.noexc ], [ null, %bb.g ], [ null, %bb.h ]
  ret ptr %.1
}

declare noundef ptr @_ZN6Assimp8Importer19ApplyPostProcessingEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z31aiApplyCustomizedPostProcessingPK7aiScenePN6Assimp11BaseProcessEb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN6Assimp9ScenePrivEPK7aiScene.exit.thread, label %_ZN6Assimp9ScenePrivEPK7aiScene.exit

_ZN6Assimp9ScenePrivEPK7aiScene.exit:             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN6Assimp9ScenePrivEPK7aiScene.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp9ScenePrivEPK7aiScene.exit
  %i.e = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6Assimp9ScenePrivEPK7aiScene.exit.thread, label %bb.d

_ZN6Assimp9ScenePrivEPK7aiScene.exit.thread:      ; preds = %bb.a, %bb.b, %_ZN6Assimp9ScenePrivEPK7aiScene.exit
  %i.g = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_ZN6Assimp9ScenePrivEPK7aiScene.exit.thread
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull @.str)
          to label %_Z24ReportSceneNotFoundErrorv.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %_ZN6Assimp9ScenePrivEPK7aiScene.exit.thread, %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #47 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %_Z24ReportSceneNotFoundErrorv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = invoke noundef ptr @_ZN6Assimp8Importer29ApplyCustomizedPostProcessingEPNS_11BaseProcessEb(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %1, i1 noundef zeroext %2)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZN6Assimp9ScenePrivEPK7aiScene.exit.i, label %_Z24ReportSceneNotFoundErrorv.exit

_ZN6Assimp9ScenePrivEPK7aiScene.exit.i:           ; preds = %bb.e
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp9ScenePrivEPK7aiScene.exit.i
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not10.i = icmp eq ptr %i.m, null
  br i1 %.not10.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZN6Assimp9ScenePrivEPK7aiScene.exit.i
  tail call void @_ZN7aiSceneD1Ev(ptr noundef nonnull align 8 dead_on_return(1168) dereferenceable(1168) %0) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1168) #45
  br label %_Z24ReportSceneNotFoundErrorv.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN6Assimp8ImporterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 8) #45
  br label %_Z24ReportSceneNotFoundErrorv.exit

_Z24ReportSceneNotFoundErrorv.exit:               ; preds = %bb.h, %bb.g, %.noexc, %bb.e, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %i.k, %bb.e ], [ null, %.noexc ], [ null, %bb.g ], [ null, %bb.h ]
  ret ptr %.1
}

declare noundef ptr @_ZN6Assimp8Importer29ApplyCustomizedPostProcessingEPNS_11BaseProcessEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_Z23CallbackToLogRedirectorPKcPc(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @aiGetPredefinedLogStream(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZL13DefaultStream, align 8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef ptr @_ZN6Assimp9LogStream19createDefaultStreamE18aiDefaultLogStreamPKcPNS_8IOSystemE(i32 noundef %0, ptr noundef %1, ptr noundef null)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr @_ZL13DefaultStream, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #47 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.c, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #46
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq ptr %i.g, null
  %._Z23CallbackToLogRedirectorPKcPc = select i1 %.not, ptr null, ptr @_Z23CallbackToLogRedirectorPKcPc
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %2 = load ptr, ptr @_ZL13DefaultStream, align 8
  store ptr %2, ptr %i.i, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @_ZN6AssimpL18gPredefinedStreamsB5cxx11E) #47
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  %i.l = insertvalue { ptr, ptr } poison, ptr %._Z23CallbackToLogRedirectorPKcPc, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.g, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.fca.1.insert.merged = phi { ptr, ptr } [ %i.m, %bb.f ], [ zeroinitializer, %bb.d ]
  ret { ptr, ptr } %.fca.1.insert.merged
}

declare noundef ptr @_ZN6Assimp9LogStream19createDefaultStreamE18aiDefaultLogStreamPKcPNS_8IOSystemE(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define void @aiAttachLogStream(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple", align 8        ; 4 uses
  %2 = alloca %"class.std::tuple.75", align 1     ; 3 uses
  %i.a = invoke noundef ptr @_ZN6Assimp6Intern22AllocateFromAssimpHeapnwEm(i64 noundef 16)
          to label %bb.b unwind label %bb.h       ; 4 uses

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV23LogToCallbackRedirector, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 16), align 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.c ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8), %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp ult ptr %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp ult ptr %i.k, %i.f
  %i.m = select i1 %i.i, i1 %i.l, i1 false        ; 2 uses
  %.19.i.i.i.i = select i1 %i.m, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE11lower_boundERS6_.exit.i, label %bb.c, !llvm.loop !5

_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE11lower_boundERS6_.exit.i: ; preds = %bb.c
  %i.n = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8)
  br i1 %i.n, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE11lower_boundERS6_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp ult ptr %i.d, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp ult ptr %i.f, %i.s
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %.critedge.i, label %bb.e

.critedge.i:                                      ; preds = %bb.d, %_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE11lower_boundERS6_.exit.i, %bb.b
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8), %_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE11lower_boundERS6_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8), %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store ptr %0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.v = invoke ptr @_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN6AssimpL17gActiveLogStreamsE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d
  %.sroa.06.0.i = phi ptr [ %i.v, %.noexc ], [ %.19.i.i.i.i, %bb.d ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  store ptr %i.a, ptr %i.w, align 8
  %i.x = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr @_ZN6AssimpL15gVerboseLoggingE, align 4
  %i.z = icmp eq i32 %i.y, 1
  %i.aa = select i1 %i.z, i32 2, i32 0
  %i.ab = invoke noundef ptr @_ZN6Assimp13DefaultLogger6createEPKcNS_6Logger11LogSeverityEjPNS_8IOSystemE(ptr noundef null, i32 noundef %i.aa, i32 noundef 9, ptr noundef null)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %.critedge.i, %bb.j, %bb.i, %bb.g, %bb.e, %bb.a
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = call ptr @__cxa_begin_catch(ptr %i.ad) #47 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.af = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.j unwind label %bb.h       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull %i.a, i32 noundef 15)
          to label %bb.k unwind label %bb.h       ; 0 uses

bb.k:                                             ; preds = %bb.j, %bb.h
  ret void
}

declare noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv() local_unnamed_addr #3

declare noundef ptr @_ZN6Assimp13DefaultLogger6createEPKcNS_6Logger11LogSeverityEjPNS_8IOSystemE(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @aiDetachLogStream(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ExceptionSwallower.47, align 1 ; 4 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 16), align 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8), %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp ult ptr %i.f, %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ult ptr %i.i, %i.d
  %i.k = select i1 %i.g, i1 %i.j, i1 false        ; 2 uses
  %.19.i.i.i = select i1 %i.k, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.k, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %bb.b, !llvm.loop !5

_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %bb.b
  %i.l = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8)
  br i1 %i.l, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp ult ptr %i.b, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp ult ptr %i.d, %i.q
  %i.s = select i1 %i.o, i1 %i.r, i1 false
  br i1 %i.s, label %select.unfold, label %_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE4findERS6_.exit

bb.d:                                             ; preds = %bb.l, %bb.f, %_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE4findERS6_.exit
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #47 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  %i.w = invoke noundef i32 @_ZNK18ExceptionSwallowerI8aiReturnEclEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  call void @__cxa_end_catch()
  br label %select.unfold

_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE4findERS6_.exit: ; preds = %bb.c
  %i.x = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE4findERS6_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef %i.z, i32 noundef 15)
          to label %bb.g unwind label %bb.d       ; 0 uses

end_hunk_0

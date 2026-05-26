inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@aiGetPredefinedLogStream:bb.a
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
  %i.g = phi ptr [ %i.c, %bb.c ], [ %i.a, %bb.a ] ; 3 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #46
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq ptr %i.g, null
  %._Z23CallbackToLogRedirectorPKcPc = select i1 %.not, ptr null, ptr @_Z23CallbackToLogRedirectorPKcPc
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.i, align 8
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
define noundef i32 @aiDetachLogStream(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
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

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.y, align 8             ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #47
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = load ptr, ptr %i.c, align 8
  %i.ak = load ptr, ptr @_ZL13DefaultStream, align 8
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr @_ZL13DefaultStream, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.am = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8)) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 56) #45
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 40), align 8
  %i.ao = add i64 %i.an, -1                       ; 2 uses
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 40), align 8
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %select.unfold

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6Assimp13DefaultLogger4killEv()
          to label %select.unfold unwind label %bb.d

bb.m:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

select.unfold:                                    ; preds = %bb.c, %bb.a, %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.k, %bb.l, %bb.e
  %.1 = phi i32 [ %i.w, %bb.e ], [ 0, %bb.l ], [ -1, %bb.a ], [ -1, %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ 0, %bb.k ], [ -1, %bb.c ]
  ret i32 %.1

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aq

bb.o:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #44
  unreachable
}

declare void @_ZN6Assimp13DefaultLogger4killEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK18ExceptionSwallowerI8aiReturnEclEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @__cxa_rethrow() #48
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr null                          ; 2 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  %i.c = extractvalue { ptr, i32 } %i.a, 1
  %i.d = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #47
  %i.e = icmp eq i32 %i.c, %i.d
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.b) #47 ; 0 uses
  tail call void @__cxa_end_catch()
  %. = select i1 %i.e, i32 -3, i32 -1
  ret i32 %.

bb.c:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @aiDetachAllLogStreams() local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.b unwind label %bb.c       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.k, label %bb.d

bb.c:                                             ; preds = %_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE5clearEv.exit, %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 24), align 8 ; 2 uses
  %.not10 = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8)
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 16), align 8
  invoke void @_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) @_ZN6AssimpL17gActiveLogStreamsE, ptr noundef %i.e)
          to label %_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE5clearEv.exit unwind label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #44
  unreachable

_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE5clearEv.exit: ; preds = %._crit_edge
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 16), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 24), align 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 32), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 40), align 8
  invoke void @_ZN6Assimp13DefaultLogger4killEv()
          to label %bb.k unwind label %bb.c

.lr.ph:                                           ; preds = %bb.d, %bb.h
  %.sroa.06.011 = phi ptr [ %i.s, %bb.h ], [ %i.d, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef %i.i, i32 noundef 15)
          to label %bb.f unwind label %bb.i       ; 0 uses

bb.f:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #47
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.06.011) #49 ; 2 uses
  %.not = icmp eq ptr %i.s, getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL17gActiveLogStreamsE, i64 8)
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

bb.i:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.c, %bb.c ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %.0) #47 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %_ZNSt3mapI11aiLogStreamPN6Assimp9LogStreamENS1_5mpredESaISt4pairIKS0_S3_EEE5clearEv.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @aiEnableVerboseLogging(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNK7aiScene26GetEmbeddedTextureAndIndexEPKc:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.b, 42
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 10) #47, !inline_history !79 ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = icmp sgt i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i32, ptr %i.h, align 8
  %.not24 = icmp ugt i32 %i.i, %i.f
  %or.cond = select i1 %i.g, i1 %.not24, i1 false
  br i1 %or.cond, label %bb.d, label %.critedge27

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = and i64 %i.e, 2147483647
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  br label %.critedge27

bb.e:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #49 ; 2 uses
  %i.p = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 92) #49 ; 2 uses
  %i.q = icmp ult ptr %i.o, %i.p
  %spec.select.i = select i1 %i.q, ptr %i.p, ptr %i.o ; 2 uses
  %.not.i = icmp eq ptr %spec.select.i, null
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1
  %i.s = select i1 %.not.i, ptr %1, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %.not2352.not = icmp eq i32 %i.u, 0
  br i1 %.not2352.not, label %.critedge27, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %wide.trip.count = zext i32 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 36 ; 3 uses
  %i.aa = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.z, i32 noundef 47) #49 ; 2 uses
  %i.ab = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.z, i32 noundef 92) #49 ; 2 uses
  %i.ac = icmp ult ptr %i.aa, %i.ab
  %spec.select.i28 = select i1 %i.ac, ptr %i.ab, ptr %i.aa ; 2 uses
  %.not.i29 = icmp eq ptr %spec.select.i28, null
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 1
  %i.ae = select i1 %.not.i29, ptr %i.z, ptr %i.ad
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) %i.s) #49
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.critedge27.loopexit.split.loop.exit61, label %.critedge

.critedge:                                        ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge27, label %bb.f, !llvm.loop !80

.critedge27.loopexit.split.loop.exit61:           ; preds = %bb.f
  %i.ag = trunc nuw i64 %indvars.iv to i32
  br label %.critedge27

.critedge27:                                      ; preds = %.critedge, %.critedge27.loopexit.split.loop.exit61, %bb.e, %bb.c, %bb.a, %bb.d
  %.sroa.051.1 = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.e ], [ %i.y, %.critedge27.loopexit.split.loop.exit61 ], [ null, %.critedge ]
  %.sroa.7.1 = phi i32 [ %i.f, %bb.d ], [ -1, %bb.c ], [ -1, %bb.a ], [ -1, %bb.e ], [ %i.ag, %.critedge27.loopexit.split.loop.exit61 ], [ -1, %.critedge ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.051.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #27

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i32 @_ZL16stbi__stdio_readPvPci(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2) #29 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %0)
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal void @_ZL16stbi__stdio_skipPvi(ptr noundef captures(none) %0, i32 noundef %1) #29 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.a, i32 noundef 1) ; 0 uses
  %i.c = tail call i32 @fgetc(ptr noundef %0)     ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @ungetc(i32 noundef %i.c, ptr noundef %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL15stbi__stdio_eofPv(ptr noundef captures(none) %0) #29 {
bb.a:
  %i.a = tail call i32 @feof(ptr noundef %0) #47
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ferror(ptr noundef %0) #47
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 1, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %i.e
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #32

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi(ptr noundef nonnull %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr noundef nonnull writeonly captures(none) initializes((0, 12)) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__png, align 8          ; 10 uses
  store i32 8, ptr %5, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 26 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 31 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 21 uses
  %.pre.i.i = load ptr, ptr %i.c, align 8         ; 3 uses
  %.pre7.i.i = load ptr, ptr %i.d, align 8        ; 2 uses
  %i.m = icmp ult ptr %.pre.i.i, %.pre7.i.i
  br i1 %i.m, label %bb.ap, label %bb.aq

bb.b:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.i
  %i.n = icmp ult ptr %i.fz, %i.fy
  br i1 %i.n, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.e, align 8
  %.not.i.i.1.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.1.i, label %bb.bm, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.g, align 8
  %i.r = load i32, ptr %i.i, align 4
  %i.s = tail call noundef i32 %i.p(ptr noundef %i.q, ptr noundef nonnull %i.h, i32 noundef %i.r), !inline_history !81 ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = load i32, ptr %i.k, align 8
  %i.aa = add nsw i32 %i.z, %i.y
  store i32 %i.aa, ptr %i.k, align 8
  %i.ab = icmp eq i32 %i.s, 0
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = sext i32 %i.s to i64
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 %i.ac
  %.pre.i.i.1.i = load i8, ptr %i.h, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i: ; preds = %bb.f, %bb.e
  %i.ae = phi i8 [ 0, %bb.f ], [ %.pre.i.i.1.i, %bb.e ]
  %.sink.i.i.i.1.i = phi ptr [ %i.l, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  store ptr %.sink.i.i.i.1.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.1.i

bb.g:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.fz, i64 1 ; 2 uses
  store ptr %i.af, ptr %i.c, align 8
  %i.ag = load i8, ptr %i.fz, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.1.i

_ZL10stbi__get8P13stbi__context.exit.i.1.i:       ; preds = %bb.g, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i
  %i.ah = phi ptr [ %i.fy, %bb.g ], [ %.sink.i.i.i.1.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i ] ; 2 uses
  %i.ai = phi ptr [ %i.af, %bb.g ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i ] ; 3 uses
  %.0.i.i.1.i = phi i8 [ %i.ag, %bb.g ], [ %i.ae, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i ]
  %.not.i.1.i = icmp eq i8 %.0.i.i.1.i, 80
  br i1 %.not.i.1.i, label %bb.h, label %bb.bm

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.1.i
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.e, align 8
  %.not.i.i.2.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.2.i, label %bb.bm, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = load ptr, ptr %i.g, align 8
  %i.an = load i32, ptr %i.i, align 4
  %i.ao = tail call noundef i32 %i.al(ptr noundef %i.am, ptr noundef nonnull %i.h, i32 noundef %i.an), !inline_history !81 ; 2 uses
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = load ptr, ptr %i.j, align 8
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = load i32, ptr %i.k, align 8
  %i.aw = add nsw i32 %i.av, %i.au
  store i32 %i.aw, ptr %i.k, align 8
  %i.ax = icmp eq i32 %i.ao, 0
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = sext i32 %i.ao to i64
  %i.az = getelementptr inbounds i8, ptr %i.h, i64 %i.ay
  %.pre.i.i.2.i = load i8, ptr %i.h, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i: ; preds = %bb.l, %bb.k
  %i.ba = phi i8 [ 0, %bb.l ], [ %.pre.i.i.2.i, %bb.k ]
  %.sink.i.i.i.2.i = phi ptr [ %i.l, %bb.l ], [ %i.az, %bb.k ] ; 2 uses
  store ptr %.sink.i.i.i.2.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.2.i

bb.m:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  store ptr %i.bb, ptr %i.c, align 8
  %i.bc = load i8, ptr %i.ai, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.2.i

_ZL10stbi__get8P13stbi__context.exit.i.2.i:       ; preds = %bb.m, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i
  %i.bd = phi ptr [ %i.ah, %bb.m ], [ %.sink.i.i.i.2.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i ] ; 2 uses
  %i.be = phi ptr [ %i.bb, %bb.m ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i ] ; 3 uses
  %.0.i.i.2.i = phi i8 [ %i.bc, %bb.m ], [ %i.ba, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i ]
  %.not.i.2.i = icmp eq i8 %.0.i.i.2.i, 78
  br i1 %.not.i.2.i, label %bb.n, label %bb.bm

bb.n:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.2.i
  %i.bf = icmp ult ptr %i.be, %i.bd
  br i1 %i.bf, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %i.e, align 8
  %.not.i.i.3.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.3.i, label %bb.bm, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.f, align 8
  %i.bi = load ptr, ptr %i.g, align 8
  %i.bj = load i32, ptr %i.i, align 4
  %i.bk = tail call noundef i32 %i.bh(ptr noundef %i.bi, ptr noundef nonnull %i.h, i32 noundef %i.bj), !inline_history !81 ; 2 uses
  %i.bl = load ptr, ptr %i.c, align 8
  %i.bm = load ptr, ptr %i.j, align 8
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = trunc i64 %i.bp to i32
  %i.br = load i32, ptr %i.k, align 8
  %i.bs = add nsw i32 %i.br, %i.bq
  store i32 %i.bs, ptr %i.k, align 8
  %i.bt = icmp eq i32 %i.bk, 0
  br i1 %i.bt, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = sext i32 %i.bk to i64
  %i.bv = getelementptr inbounds i8, ptr %i.h, i64 %i.bu
  %.pre.i.i.3.i = load i8, ptr %i.h, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3.i

bb.r:                                             ; preds = %bb.p
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3.i: ; preds = %bb.r, %bb.q
  %i.bw = phi i8 [ 0, %bb.r ], [ %.pre.i.i.3.i, %bb.q ]
  %.sink.i.i.i.3.i = phi ptr [ %i.l, %bb.r ], [ %i.bv, %bb.q ] ; 2 uses
  store ptr %.sink.i.i.i.3.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.3.i

bb.s:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  store ptr %i.bx, ptr %i.c, align 8
  %i.by = load i8, ptr %i.be, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.3.i

_ZL10stbi__get8P13stbi__context.exit.i.3.i:       ; preds = %bb.s, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3.i
  %i.bz = phi ptr [ %i.bd, %bb.s ], [ %.sink.i.i.i.3.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3.i ] ; 2 uses
  %i.ca = phi ptr [ %i.bx, %bb.s ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3.i ] ; 3 uses
  %.0.i.i.3.i = phi i8 [ %i.by, %bb.s ], [ %i.bw, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3.i ]
  %.not.i.3.i = icmp eq i8 %.0.i.i.3.i, 71
  br i1 %.not.i.3.i, label %bb.t, label %bb.bm

bb.t:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.3.i
  %i.cb = icmp ult ptr %i.ca, %i.bz
  br i1 %i.cb, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = load i32, ptr %i.e, align 8
  %.not.i.i.4.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.4.i, label %bb.bm, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %i.f, align 8
  %i.ce = load ptr, ptr %i.g, align 8
  %i.cf = load i32, ptr %i.i, align 4
  %i.cg = tail call noundef i32 %i.cd(ptr noundef %i.ce, ptr noundef nonnull %i.h, i32 noundef %i.cf), !inline_history !81 ; 2 uses
  %i.ch = load ptr, ptr %i.c, align 8
  %i.ci = load ptr, ptr %i.j, align 8
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = load i32, ptr %i.k, align 8
  %i.co = add nsw i32 %i.cn, %i.cm
  store i32 %i.co, ptr %i.k, align 8
  %i.cp = icmp eq i32 %i.cg, 0
  br i1 %i.cp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = sext i32 %i.cg to i64
  %i.cr = getelementptr inbounds i8, ptr %i.h, i64 %i.cq
  %.pre.i.i.4.i = load i8, ptr %i.h, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4.i

bb.x:                                             ; preds = %bb.v
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4.i: ; preds = %bb.x, %bb.w
  %i.cs = phi i8 [ 0, %bb.x ], [ %.pre.i.i.4.i, %bb.w ]
  %.sink.i.i.i.4.i = phi ptr [ %i.l, %bb.x ], [ %i.cr, %bb.w ] ; 2 uses
  store ptr %.sink.i.i.i.4.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.4.i

bb.y:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  store ptr %i.ct, ptr %i.c, align 8
  %i.cu = load i8, ptr %i.ca, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.4.i

_ZL10stbi__get8P13stbi__context.exit.i.4.i:       ; preds = %bb.y, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4.i
  %i.cv = phi ptr [ %i.bz, %bb.y ], [ %.sink.i.i.i.4.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4.i ] ; 2 uses
  %i.cw = phi ptr [ %i.ct, %bb.y ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4.i ] ; 3 uses
  %.0.i.i.4.i = phi i8 [ %i.cu, %bb.y ], [ %i.cs, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4.i ]
  %.not.i.4.i = icmp eq i8 %.0.i.i.4.i, 13
  br i1 %.not.i.4.i, label %bb.z, label %bb.bm

bb.z:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.4.i
  %i.cx = icmp ult ptr %i.cw, %i.cv
  br i1 %i.cx, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = load i32, ptr %i.e, align 8
  %.not.i.i.5.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.5.i, label %bb.bm, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = load ptr, ptr %i.f, align 8
  %i.da = load ptr, ptr %i.g, align 8
  %i.db = load i32, ptr %i.i, align 4
  %i.dc = tail call noundef i32 %i.cz(ptr noundef %i.da, ptr noundef nonnull %i.h, i32 noundef %i.db), !inline_history !81 ; 2 uses
  %i.dd = load ptr, ptr %i.c, align 8
  %i.de = load ptr, ptr %i.j, align 8
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = trunc i64 %i.dh to i32
  %i.dj = load i32, ptr %i.k, align 8
  %i.dk = add nsw i32 %i.dj, %i.di
  store i32 %i.dk, ptr %i.k, align 8
  %i.dl = icmp eq i32 %i.dc, 0
  br i1 %i.dl, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = sext i32 %i.dc to i64
  %i.dn = getelementptr inbounds i8, ptr %i.h, i64 %i.dm
  %.pre.i.i.5.i = load i8, ptr %i.h, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5.i

bb.ad:                                            ; preds = %bb.ab
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5.i: ; preds = %bb.ad, %bb.ac
  %i.do = phi i8 [ 0, %bb.ad ], [ %.pre.i.i.5.i, %bb.ac ]
  %.sink.i.i.i.5.i = phi ptr [ %i.l, %bb.ad ], [ %i.dn, %bb.ac ] ; 2 uses
  store ptr %.sink.i.i.i.5.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.5.i

bb.ae:                                            ; preds = %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 2 uses
  store ptr %i.dp, ptr %i.c, align 8
  %i.dq = load i8, ptr %i.cw, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.5.i

_ZL10stbi__get8P13stbi__context.exit.i.5.i:       ; preds = %bb.ae, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5.i
  %i.dr = phi ptr [ %i.cv, %bb.ae ], [ %.sink.i.i.i.5.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5.i ] ; 2 uses
  %i.ds = phi ptr [ %i.dp, %bb.ae ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5.i ] ; 3 uses
  %.0.i.i.5.i = phi i8 [ %i.dq, %bb.ae ], [ %i.do, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5.i ]
  %.not.i.5.i = icmp eq i8 %.0.i.i.5.i, 10
  br i1 %.not.i.5.i, label %bb.af, label %bb.bm

bb.af:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.5.i
  %i.dt = icmp ult ptr %i.ds, %i.dr
  br i1 %i.dt, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.du = load i32, ptr %i.e, align 8
  %.not.i.i.6.i = icmp eq i32 %i.du, 0
  br i1 %.not.i.i.6.i, label %bb.bm, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dv = load ptr, ptr %i.f, align 8
  %i.dw = load ptr, ptr %i.g, align 8
  %i.dx = load i32, ptr %i.i, align 4
  %i.dy = tail call noundef i32 %i.dv(ptr noundef %i.dw, ptr noundef nonnull %i.h, i32 noundef %i.dx), !inline_history !81 ; 2 uses
  %i.dz = load ptr, ptr %i.c, align 8
  %i.ea = load ptr, ptr %i.j, align 8
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = load i32, ptr %i.k, align 8
  %i.eg = add nsw i32 %i.ef, %i.ee
  store i32 %i.eg, ptr %i.k, align 8
  %i.eh = icmp eq i32 %i.dy, 0
  br i1 %i.eh, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ei = sext i32 %i.dy to i64
  %i.ej = getelementptr inbounds i8, ptr %i.h, i64 %i.ei
  %.pre.i.i.6.i = load i8, ptr %i.h, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i

bb.aj:                                            ; preds = %bb.ah
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i: ; preds = %bb.aj, %bb.ai
  %i.ek = phi i8 [ 0, %bb.aj ], [ %.pre.i.i.6.i, %bb.ai ]
  %.sink.i.i.i.6.i = phi ptr [ %i.l, %bb.aj ], [ %i.ej, %bb.ai ] ; 2 uses
  store ptr %.sink.i.i.i.6.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.6.i

bb.ak:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  store ptr %i.el, ptr %i.c, align 8
  %i.em = load i8, ptr %i.ds, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.6.i

_ZL10stbi__get8P13stbi__context.exit.i.6.i:       ; preds = %bb.ak, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i
  %i.en = phi ptr [ %i.dr, %bb.ak ], [ %.sink.i.i.i.6.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i ]
  %i.eo = phi ptr [ %i.el, %bb.ak ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i ] ; 3 uses
  %.0.i.i.6.i = phi i8 [ %i.em, %bb.ak ], [ %i.ek, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6.i ]
  %.not.i.6.i = icmp eq i8 %.0.i.i.6.i, 26
  br i1 %.not.i.6.i, label %bb.al, label %bb.bm

bb.al:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.6.i
  %i.ep = icmp ult ptr %i.eo, %i.en
  br i1 %i.ep, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = load i32, ptr %i.e, align 8
  %.not.i.i.7.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i.7.i, label %bb.bm, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.er = load ptr, ptr %i.f, align 8
  %i.es = load ptr, ptr %i.g, align 8
  %i.et = load i32, ptr %i.i, align 4
  %i.eu = tail call noundef i32 %i.er(ptr noundef %i.es, ptr noundef nonnull %i.h, i32 noundef %i.et), !inline_history !81
  %i.ev = load ptr, ptr %i.c, align 8
  %i.ew = load ptr, ptr %i.j, align 8
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = load i32, ptr %i.k, align 8
  %i.fc = add nsw i32 %i.fb, %i.fa
  store i32 %i.fc, ptr %i.k, align 8
  %i.fd = icmp eq i32 %i.eu, 0
  br i1 %i.fd, label %_ZL10stbi__get8P13stbi__context.exit.i.7.i.thread, label %_ZL10stbi__get8P13stbi__context.exit.i.7.i

_ZL10stbi__get8P13stbi__context.exit.i.7.i.thread: ; preds = %bb.an
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %bb.bm

bb.ao:                                            ; preds = %bb.al
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store ptr %i.fe, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.7.i

_ZL10stbi__get8P13stbi__context.exit.i.7.i:       ; preds = %bb.an, %bb.ao
  %.0.i.i.7.i.in = phi ptr [ %i.eo, %bb.ao ], [ %i.h, %bb.an ]
  %.0.i.i.7.i = load i8, ptr %.0.i.i.7.i.in, align 1
  %.not.i.7.i = icmp eq i8 %.0.i.i.7.i, 10
  br i1 %.not.i.7.i, label %bb.au, label %bb.bm

bb.ap:                                            ; preds = %bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 1 ; 2 uses
  store ptr %i.ff, ptr %i.c, align 8
  %i.fg = load i8, ptr %.pre.i.i, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.i

bb.aq:                                            ; preds = %bb.a
  %i.fh = load i32, ptr %i.e, align 8
  %.not.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i.i, label %bb.bm, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fi = load ptr, ptr %i.f, align 8
  %i.fj = load ptr, ptr %i.g, align 8
  %i.fk = load i32, ptr %i.i, align 4
  %i.fl = tail call noundef i32 %i.fi(ptr noundef %i.fj, ptr noundef nonnull %i.h, i32 noundef %i.fk), !inline_history !81 ; 2 uses
  %i.fm = load ptr, ptr %i.c, align 8
  %i.fn = load ptr, ptr %i.j, align 8
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = load i32, ptr %i.k, align 8
  %i.ft = add nsw i32 %i.fs, %i.fr
  store i32 %i.ft, ptr %i.k, align 8
  %i.fu = icmp eq i32 %i.fl, 0
  br i1 %i.fu, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fv = sext i32 %i.fl to i64
  %i.fw = getelementptr inbounds i8, ptr %i.h, i64 %i.fv
  %.pre.i.i.i = load i8, ptr %i.h, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i: ; preds = %bb.at, %bb.as
  %i.fx = phi i8 [ 0, %bb.as ], [ %.pre.i.i.i, %bb.at ]
  %.sink.i.i.i.i = phi ptr [ %i.l, %bb.as ], [ %i.fw, %bb.at ] ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.i

_ZL10stbi__get8P13stbi__context.exit.i.i:         ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i, %bb.ap
  %i.fy = phi ptr [ %.pre7.i.i, %bb.ap ], [ %.sink.i.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ] ; 2 uses
  %i.fz = phi ptr [ %i.ff, %bb.ap ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ] ; 3 uses
  %.0.i.i.i = phi i8 [ %i.fg, %bb.ap ], [ %i.fx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.i ]
  %.not.i.i = icmp eq i8 %.0.i.i.i, -119
  br i1 %.not.i.i, label %bb.b, label %bb.bm

bb.au:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.7.i
  %i.ga = load <2 x ptr>, ptr %i.j, align 8
  store <2 x ptr> %i.ga, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  store ptr %0, ptr %6, align 8
  %or.cond.i.i = icmp ugt i32 %4, 4
  br i1 %or.cond.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gb = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.gb, align 8
  br label %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.aw:                                            ; preds = %bb.au
  %i.gc = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %6, i32 noundef 0, i32 noundef %4)
  %.not.i.i11 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i11, label %._crit_edge.i, label %bb.ax

._crit_edge.i:                                    ; preds = %bb.aw
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.bl

bb.ax:                                            ; preds = %bb.aw
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ge = load i32, ptr %i.gd, align 8            ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 9                   ; 2 uses
  br i1 %i.gf, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gg = icmp eq i32 %i.ge, 16
  br i1 %i.gg, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.gh, align 8
  br label %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %storemerge.i.i = phi i32 [ 8, %bb.ax ], [ 16, %bb.ay ]
  store i32 %storemerge.i.i, ptr %5, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8            ; 24 uses
  store ptr null, ptr %i.gi, align 8
  %.not48.i.i = icmp eq i32 %4, 0
  %.pre118.i.i = load ptr, ptr %6, align 8        ; 6 uses
  br i1 %.not48.i.i, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gk = getelementptr inbounds nuw i8, ptr %.pre118.i.i, i64 12 ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 4            ; 11 uses
  %.not49.i.i = icmp eq i32 %4, %i.gl
  br i1 %.not49.i.i, label %bb.bj, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gm = load i32, ptr %.pre118.i.i, align 8     ; 50 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre118.i.i, i64 4
  %i.go = load i32, ptr %i.gn, align 4            ; 9 uses
  br i1 %i.gf, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %or.cond.not.i.i.i.i.i.i = icmp sgt i32 %i.gm, -1
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.be, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i

bb.be:                                            ; preds = %bb.bd
  %i.gp = icmp eq i32 %i.gm, 0                    ; 13 uses
  br i1 %i.gp, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i:      ; preds = %bb.be
  %i.gq = udiv i32 2147483647, %i.gm
  %.not23.i.i.i.i.i = icmp samesign ugt i32 %4, %i.gq
  br i1 %.not23.i.i.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i, %bb.be
  %i.gr = mul nuw nsw i32 %i.gm, %4               ; 3 uses
  %i.gs = or i32 %i.go, %i.gr
  %or.cond.not.i10.i.i.i.i.i = icmp sgt i32 %i.gs, -1
  br i1 %or.cond.not.i10.i.i.i.i.i, label %bb.bf, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i

bb.bf:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i
  %i.gt = icmp eq i32 %i.go, 0
  br i1 %i.gt, label %_ZL17stbi__malloc_mad3iiii.exit.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i:    ; preds = %bb.bf
  %i.gu = udiv i32 2147483647, %i.go
  %.not.i.i.i.i.i = icmp samesign ugt i32 %i.gr, %i.gu
  br i1 %.not.i.i.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.i.i.i

_ZL17stbi__malloc_mad3iiii.exit.i.i.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i, %bb.bf
  %i.gv = mul nsw i32 %i.gr, %i.go
  %i.gw = sext i32 %i.gv to i64
  %i.gx = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.gw) #50 ; 15 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, label %.preheader197.i.i.i

.preheader197.i.i.i:                              ; preds = %_ZL17stbi__malloc_mad3iiii.exit.i.i.i
  %i.gz = icmp sgt i32 %i.go, 0
  br i1 %i.gz, label %.lr.ph258.i.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.i.i

.lr.ph258.i.i.i:                                  ; preds = %.preheader197.i.i.i
  %i.ha = shl nsw i32 %i.gl, 3
  %i.hb = or disjoint i32 %i.ha, %4               ; 2 uses
  %.11170198.i.i.i = add nsw i32 %i.gm, -1        ; 30 uses
  switch i32 %i.hb, label %_ZL20stbi__convert_formatPhiijj.exit.thread.sink.split.i.i [
    i32 10, label %.lr.ph258.split.i.i.i
    i32 11, label %.lr.ph258.split.i.i.i
    i32 12, label %.lr.ph258.split.i.i.i
    i32 17, label %.lr.ph258.split.i.i.i
    i32 19, label %.lr.ph258.split.i.i.i
    i32 20, label %.lr.ph258.split.i.i.i
    i32 28, label %.lr.ph258.split.i.i.i
    i32 25, label %.lr.ph258.split.i.i.i
    i32 26, label %.lr.ph258.split.i.i.i
    i32 33, label %.lr.ph258.split.i.i.i
    i32 34, label %.lr.ph258.split.i.i.i
    i32 35, label %.lr.ph258.split.i.i.i
  ]

.lr.ph258.split.i.i.i:                            ; preds = %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i, %.lr.ph258.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.go to i64
  %i.hc = add nsw i32 %i.gm, -2                   ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.hc, i32 -1) ; 2 uses
  %i.hd = sub i32 %i.hc, %smin                    ; 14 uses
  %i.he = zext i32 %i.hd to i64                   ; 8 uses
  %i.hf = add nuw nsw i64 %i.he, 1                ; 25 uses
  %i.hg = mul i32 %i.gm, %4
  %scevgep87 = getelementptr i8, ptr %i.gx, i64 %i.hf
  %i.hh = mul i32 %i.gl, %i.gm
  %i.hi = shl nuw nsw i64 %i.he, 1
  %i.hj = getelementptr i8, ptr %i.gj, i64 %i.hi
  %scevgep90 = getelementptr i8, ptr %i.hj, i64 1
  %i.hk = mul i32 %i.gm, %4
  %scevgep148 = getelementptr i8, ptr %i.gx, i64 %i.hf
  %i.hl = mul i32 %i.gl, %i.gm
  %i.hm = mul nuw nsw i64 %i.he, 3
  %i.hn = getelementptr i8, ptr %i.gj, i64 %i.hm
  %scevgep151 = getelementptr i8, ptr %i.hn, i64 3
  %i.ho = mul i32 %i.gm, %4
  %i.hp = shl nuw nsw i64 %i.he, 1
  %i.hq = getelementptr i8, ptr %i.gx, i64 %i.hp
  %scevgep211 = getelementptr i8, ptr %i.hq, i64 2
  %i.hr = mul i32 %i.gl, %i.gm
  %i.hs = mul nuw nsw i64 %i.he, 3
  %i.ht = getelementptr i8, ptr %i.gj, i64 %i.hs
  %scevgep214 = getelementptr i8, ptr %i.ht, i64 3
  %i.hu = mul i32 %i.gm, %4
  %scevgep244 = getelementptr i8, ptr %i.gx, i64 %i.hf
  %i.hv = mul i32 %i.gl, %i.gm
  %i.hw = shl nuw nsw i64 %i.he, 2
  %i.hx = getelementptr i8, ptr %i.gj, i64 %i.hw
  %scevgep247 = getelementptr i8, ptr %i.hx, i64 3
  %i.hy = mul i32 %i.gm, %4
  %i.hz = shl nuw nsw i64 %i.he, 1
  %i.ia = getelementptr i8, ptr %i.gx, i64 %i.hz
  %scevgep305 = getelementptr i8, ptr %i.ia, i64 2
  %i.ib = mul i32 %i.gl, %i.gm
  %i.ic = shl nuw nsw i64 %i.he, 2
  %i.id = getelementptr i8, ptr %i.gj, i64 %i.ic
  %scevgep308 = getelementptr i8, ptr %i.id, i64 4
  %i.ie = xor i32 %smin, -1
  %i.if = add nuw i32 %i.gm, %i.ie                ; 6 uses
  %min.iters.check314 = icmp ult i32 %i.hd, 7
  %n.vec317 = and i64 %i.hf, 8589934584           ; 5 uses
  %i.ig = trunc i64 %n.vec317 to i32
  %i.ih = sub i32 %.11170198.i.i.i, %i.ig
  %i.ii = shl nuw nsw i64 %n.vec317, 1
  %i.ij = shl nuw nsw i64 %n.vec317, 2
  %cmp.n332 = icmp eq i64 %i.hf, %n.vec317
  %min.iters.check253 = icmp ult i32 %i.hd, 4
  %min.iters.check255 = icmp ult i32 %i.hd, 16
  %n.mod.vf257 = and i64 %i.hf, 15                ; 2 uses
  %i.ik = icmp eq i64 %n.mod.vf257, 0
  %i.il = select i1 %i.ik, i64 16, i64 %n.mod.vf257 ; 2 uses
  %n.vec258 = sub nsw i64 %i.hf, %i.il            ; 5 uses
  %i.im = trunc i64 %n.vec258 to i32
  %i.in = sub i32 %.11170198.i.i.i, %i.im
  %i.io = shl nsw i64 %n.vec258, 2
  %min.epilog.iters.check287 = icmp samesign ult i64 %i.il, 5
  %n.mod.vf289 = and i64 %i.hf, 3                 ; 2 uses
  %i.ip = icmp eq i64 %n.mod.vf289, 0
  %i.iq = select i1 %i.ip, i64 4, i64 %n.mod.vf289
  %n.vec290 = sub nsw i64 %i.hf, %i.iq            ; 4 uses
  %i.ir = trunc i64 %n.vec290 to i32
  %i.is = sub i32 %.11170198.i.i.i, %i.ir
end_hunk_1
begin_hunk_2_@_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi:bb.a
  %i.blq = zext i16 %i.blp to i32
  %i.blr = getelementptr inbounds nuw i8, ptr %.10152202.i.i.i, i64 4
  %i.bls = load i16, ptr %i.blr, align 2
  %i.blt = zext i16 %i.bls to i32
  %i.blu = mul nuw nsw i32 %i.bln, 77
  %i.blv = mul nuw nsw i32 %i.blq, 150
  %i.blw = add nuw nsw i32 %i.blv, %i.blu
  %i.blx = mul nuw nsw i32 %i.blt, 29
  %i.bly = add nuw nsw i32 %i.blw, %i.blx
  %i.blz = lshr i32 %i.bly, 8
  %i.bma = trunc nuw i32 %i.blz to i16
  store i16 %i.bma, ptr %.10203.i.i.i, align 2
  %i.bmb = getelementptr inbounds nuw i8, ptr %.10152202.i.i.i, i64 6
  %i.bmc = load i16, ptr %i.bmb, align 2
  %i.bmd = getelementptr inbounds nuw i8, ptr %.10203.i.i.i, i64 2
  store i16 %i.bmc, ptr %i.bmd, align 2
  %i.bme = getelementptr inbounds nuw i8, ptr %.10152202.i.i.i, i64 8
  %i.bmf = getelementptr inbounds nuw i8, ptr %.10203.i.i.i, i64 4
  %i.bmg = load i16, ptr %i.bme, align 2
  %i.bmh = zext i16 %i.bmg to i32
  %i.bmi = getelementptr inbounds nuw i8, ptr %.10152202.i.i.i, i64 10
  %i.bmj = load i16, ptr %i.bmi, align 2
  %i.bmk = zext i16 %i.bmj to i32
  %i.bml = getelementptr inbounds nuw i8, ptr %.10152202.i.i.i, i64 12
  %i.bmm = load i16, ptr %i.bml, align 2
  %i.bmn = zext i16 %i.bmm to i32
  %i.bmo = mul nuw nsw i32 %i.bmh, 77
  %i.bmp = mul nuw nsw i32 %i.bmk, 150
  %i.bmq = add nuw nsw i32 %i.bmp, %i.bmo
  %i.bmr = mul nuw nsw i32 %i.bmn, 29
  %i.bms = add nuw nsw i32 %i.bmq, %i.bmr
  %i.bmt = lshr i32 %i.bms, 8
  %i.bmu = trunc nuw i32 %i.bmt to i16
  store i16 %i.bmu, ptr %i.bmf, align 2
  %i.bmv = getelementptr inbounds nuw i8, ptr %.10152202.i.i.i, i64 14
  %i.bmw = load i16, ptr %i.bmv, align 2
  %i.bmx = getelementptr inbounds nuw i8, ptr %.10203.i.i.i, i64 6
  store i16 %i.bmw, ptr %i.bmx, align 2
  %i.bmy = getelementptr inbounds nuw i8, ptr %.10152202.i.i.i, i64 16
  %i.bmz = getelementptr inbounds nuw i8, ptr %.10203.i.i.i, i64 8
  %.10169.i58.i.i.1 = add nsw i32 %.10169204.i.i.i, -2
  %.not.i.i.i12.1 = icmp eq i32 %.10169204.i.i.i, 1
  br i1 %.not.i.i.i12.1, label %.loopexit.i55.i.i, label %.lr.ph205.i.i.i, !llvm.loop !154

.lr.ph.i70.i.i:                                   ; preds = %.lr.ph.i70.i.i.prol.loopexit, %.lr.ph.i70.i.i
  %.11170200.i.i.i = phi i32 [ %.11170.i71.i.i.1, %.lr.ph.i70.i.i ], [ %.11170200.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ] ; 2 uses
  %.11199.i.i.i = phi ptr [ %i.bnr, %.lr.ph.i70.i.i ], [ %.11199.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ] ; 7 uses
  %.11153198.i.i.i = phi ptr [ %i.bnq, %.lr.ph.i70.i.i ], [ %.11153198.i.i.i.unr, %.lr.ph.i70.i.i.prol.loopexit ] ; 7 uses
  %i.bna = load i16, ptr %.11153198.i.i.i, align 2
  store i16 %i.bna, ptr %.11199.i.i.i, align 2
  %i.bnb = getelementptr inbounds nuw i8, ptr %.11153198.i.i.i, i64 2
  %i.bnc = load i16, ptr %i.bnb, align 2
  %i.bnd = getelementptr inbounds nuw i8, ptr %.11199.i.i.i, i64 2
  store i16 %i.bnc, ptr %i.bnd, align 2
  %i.bne = getelementptr inbounds nuw i8, ptr %.11153198.i.i.i, i64 4
  %i.bnf = load i16, ptr %i.bne, align 2
  %i.bng = getelementptr inbounds nuw i8, ptr %.11199.i.i.i, i64 4
  store i16 %i.bnf, ptr %i.bng, align 2
  %i.bnh = getelementptr inbounds nuw i8, ptr %.11153198.i.i.i, i64 8
  %i.bni = getelementptr inbounds nuw i8, ptr %.11199.i.i.i, i64 6
  %i.bnj = load i16, ptr %i.bnh, align 2
  store i16 %i.bnj, ptr %i.bni, align 2
  %i.bnk = getelementptr inbounds nuw i8, ptr %.11153198.i.i.i, i64 10
  %i.bnl = load i16, ptr %i.bnk, align 2
  %i.bnm = getelementptr inbounds nuw i8, ptr %.11199.i.i.i, i64 8
  store i16 %i.bnl, ptr %i.bnm, align 2
  %i.bnn = getelementptr inbounds nuw i8, ptr %.11153198.i.i.i, i64 12
  %i.bno = load i16, ptr %i.bnn, align 2
  %i.bnp = getelementptr inbounds nuw i8, ptr %.11199.i.i.i, i64 10
  store i16 %i.bno, ptr %i.bnp, align 2
  %i.bnq = getelementptr inbounds nuw i8, ptr %.11153198.i.i.i, i64 16
  %i.bnr = getelementptr inbounds nuw i8, ptr %.11199.i.i.i, i64 12
  %.11170.i71.i.i.1 = add nsw i32 %.11170200.i.i.i, -2
  %.not294.i.i.i.1 = icmp eq i32 %.11170200.i.i.i, 1
  br i1 %.not294.i.i.i.1, label %.loopexit.i55.i.i, label %.lr.ph.i70.i.i, !llvm.loop !155

.loopexit.i55.i.i:                                ; preds = %.lr.ph205.i.i.i.prol.loopexit, %.lr.ph205.i.i.i, %.lr.ph210.i.i.i.prol.loopexit, %.lr.ph210.i.i.i, %.lr.ph215.i.i.i.prol.loopexit, %.lr.ph215.i.i.i, %.lr.ph220.i.i.i.prol.loopexit, %.lr.ph220.i.i.i, %.lr.ph225.i.i.i.prol.loopexit, %.lr.ph225.i.i.i, %.lr.ph230.i.i.i.prol.loopexit, %.lr.ph230.i.i.i, %.lr.ph235.i.i.i.prol.loopexit, %.lr.ph235.i.i.i, %.lr.ph240.i.i.i.prol.loopexit, %.lr.ph240.i.i.i, %.lr.ph245.i.i.i.prol.loopexit, %.lr.ph245.i.i.i, %.lr.ph250.i.i.i.prol.loopexit, %.lr.ph250.i.i.i, %.lr.ph255.i.i.i, %.lr.ph.i70.i.i.prol.loopexit, %.lr.ph.i70.i.i, %middle.block, %.preheader.i68.i.i, %.preheader174.i.i.i, %.preheader176.i.i.i, %.preheader178.i.i.i, %.preheader180.i.i.i, %.preheader182.i.i.i, %.preheader184.i.i.i, %.preheader186.i.i.i, %.preheader188.i.i.i, %.preheader190.i.i.i, %.preheader192.i.i.i, %.preheader194.i.i.i
  %indvars.iv.next.i56.i.i = add nuw nsw i64 %indvars.iv.i54.i.i, 1 ; 2 uses
  %exitcond.not.i57.i.i = icmp eq i64 %indvars.iv.next.i56.i.i, %wide.trip.count.i53.i.i
  br i1 %exitcond.not.i57.i.i, label %_ZL20stbi__convert_formatPhiijj.exit.i.i, label %bb.bi, !llvm.loop !156

_ZL20stbi__convert_formatPhiijj.exit.thread.sink.split.i.i: ; preds = %.lr.ph257.i.i.i, %.lr.ph258.i.i.i
  %.sink.ph.i.i = phi ptr [ %i.gx, %.lr.ph258.i.i.i ], [ %i.avq, %.lr.ph257.i.i.i ]
  tail call void @free(ptr noundef %i.gj) #47
  br label %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i

_ZL20stbi__convert_formatPhiijj.exit.thread.i.i:  ; preds = %_ZL20stbi__convert_formatPhiijj.exit.thread.sink.split.i.i, %bb.bh, %_ZL17stbi__malloc_mad3iiii.exit.i.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i, %bb.bd
  %.sink.i.i = phi ptr [ %i.gj, %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i ], [ %i.gj, %bb.bh ], [ %i.gj, %bb.bd ], [ %i.gj, %_ZL17stbi__malloc_mad3iiii.exit.i.i.i ], [ %i.gj, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i ], [ %i.gj, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i ], [ %.sink.ph.i.i, %_ZL20stbi__convert_formatPhiijj.exit.thread.sink.split.i.i ]
  %.str.31.sink.i.i = phi ptr [ @.str.26, %_ZL21stbi__mul2sizes_validii.exit.i.i.i.i.i ], [ @.str.26, %bb.bh ], [ @.str.26, %bb.bd ], [ @.str.26, %_ZL17stbi__malloc_mad3iiii.exit.i.i.i ], [ @.str.26, %_ZL21stbi__mul2sizes_validii.exit12.i.i.i.i.i ], [ @.str.26, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i.i.i.i ], [ @.str.31, %_ZL20stbi__convert_formatPhiijj.exit.thread.sink.split.i.i ]
  tail call void @free(ptr noundef %.sink.i.i) #47
  %i.bns = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr %.str.31.sink.i.i, ptr %i.bns, align 8
  store i32 %4, ptr %i.gk, align 4
  br label %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

_ZL20stbi__convert_formatPhiijj.exit.i.i:         ; preds = %.loopexit.i55.i.i, %.loopexit.i.i.i, %.preheader196.i.i.i, %.preheader197.i.i.i
  %.0.i.i = phi ptr [ %i.gx, %.preheader197.i.i.i ], [ %i.avq, %.preheader196.i.i.i ], [ %i.gx, %.loopexit.i.i.i ], [ %i.avq, %.loopexit.i55.i.i ]
  tail call void @free(ptr noundef %i.gj) #47
  store i32 %4, ptr %i.gk, align 4
  br label %bb.bj

bb.bj:                                            ; preds = %_ZL20stbi__convert_formatPhiijj.exit.i.i, %bb.bb, %bb.ba
  %.1.i.i = phi ptr [ %.0.i.i, %_ZL20stbi__convert_formatPhiijj.exit.i.i ], [ %i.gj, %bb.bb ], [ %i.gj, %bb.ba ] ; 2 uses
  %i.bnt = load i32, ptr %.pre118.i.i, align 8
  store i32 %i.bnt, ptr %1, align 4
  %i.bnu = getelementptr inbounds nuw i8, ptr %.pre118.i.i, i64 4
  %i.bnv = load i32, ptr %i.bnu, align 4
  store i32 %i.bnv, ptr %2, align 4
  %.not50.i.i = icmp eq ptr %3, null
  br i1 %.not50.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.bnw = getelementptr inbounds nuw i8, ptr %.pre118.i.i, i64 8
  %i.bnx = load i32, ptr %i.bnw, align 8
  store i32 %i.bnx, ptr %3, align 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %._crit_edge.i
  %i.bny = phi ptr [ null, %bb.bk ], [ null, %bb.bj ], [ %.pre.i, %._crit_edge.i ]
  %.2.i.i = phi ptr [ %.1.i.i, %bb.bk ], [ %.1.i.i, %bb.bj ], [ null, %._crit_edge.i ]
  tail call void @free(ptr noundef %i.bny) #47
  %i.bnz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.boa = load ptr, ptr %i.bnz, align 8
  tail call void @free(ptr noundef %i.boa) #47
  %i.bob = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.boc = load ptr, ptr %i.bob, align 8
  tail call void @free(ptr noundef %i.boc) #47
  br label %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit

_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit: ; preds = %bb.av, %bb.az, %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i, %bb.bl
  %.043.i.i = phi ptr [ null, %bb.av ], [ null, %bb.az ], [ %.2.i.i, %bb.bl ], [ null, %_ZL20stbi__convert_formatPhiijj.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  br label %bb.bn

bb.bm:                                            ; preds = %bb.c, %_ZL10stbi__get8P13stbi__context.exit.i.1.i, %bb.i, %_ZL10stbi__get8P13stbi__context.exit.i.2.i, %bb.o, %_ZL10stbi__get8P13stbi__context.exit.i.3.i, %bb.u, %_ZL10stbi__get8P13stbi__context.exit.i.4.i, %bb.aa, %_ZL10stbi__get8P13stbi__context.exit.i.5.i, %bb.ag, %_ZL10stbi__get8P13stbi__context.exit.i.6.i, %bb.am, %_ZL10stbi__get8P13stbi__context.exit.i.7.i, %bb.aq, %_ZL10stbi__get8P13stbi__context.exit.i.i, %_ZL10stbi__get8P13stbi__context.exit.i.7.i.thread
  %i.bod = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  %i.boe = load <2 x ptr>, ptr %i.j, align 8
  store <2 x ptr> %i.boe, ptr %i.c, align 8
  store ptr @.str.5, ptr %i.bod, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit
  %.0 = phi ptr [ %.043.i.i, %_ZL14stbi__png_loadP13stbi__contextPiS1_S1_iP17stbi__result_info.exit ], [ null, %bb.bm ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i8 @_ZL10stbi__get8P13stbi__context(ptr noundef %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !157 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre = load i8, ptr %i.n, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit

_ZL19stbi__refill_bufferP13stbi__context.exit:    ; preds = %bb.e, %bb.f
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre, %bb.f ]
  %.sink.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ]
  store ptr %.sink.i, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ag, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit, %bb.b
  %.0 = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull captures(none) initializes((8, 32)) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 5) %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.stbi__zbuf, align 8         ; 9 uses
  %i.a = alloca [1024 x i8], align 16             ; 12 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = alloca [3 x i16], align 2                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 0, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #47
  %i.d = load ptr, ptr %0, align 8                ; 35 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 62 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 26 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 28 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 56 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 28 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 57 ; 39 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.pre.i = load ptr, ptr %i.h, align 8           ; 3 uses
  %.pre7.i = load ptr, ptr %i.i, align 8          ; 2 uses
  %i.r = icmp ult ptr %.pre.i, %.pre7.i
  br i1 %i.r, label %bb.ar, label %bb.as

bb.b:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.s = icmp ult ptr %i.gj, %i.gi
  br i1 %i.s, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.j, align 8
  %.not.i.i.1 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.1, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8
  %i.v = load ptr, ptr %i.l, align 8
  %i.w = load i32, ptr %i.n, align 4
  %i.x = tail call noundef i32 %i.u(ptr noundef %i.v, ptr noundef nonnull %i.m, i32 noundef %i.w), !inline_history !158 ; 2 uses
  %i.y = load ptr, ptr %i.h, align 8
  %i.z = load ptr, ptr %i.o, align 8
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = load i32, ptr %i.p, align 8
  %i.af = add nsw i32 %i.ae, %i.ad
  store i32 %i.af, ptr %i.p, align 8
  %i.ag = icmp eq i32 %i.x, 0
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = sext i32 %i.x to i64
  %i.ai = getelementptr inbounds i8, ptr %i.m, i64 %i.ah
  %.pre.i.i.1 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1: ; preds = %bb.f, %bb.e
  %i.aj = phi i8 [ 0, %bb.f ], [ %.pre.i.i.1, %bb.e ]
  %.sink.i.i.i.1 = phi ptr [ %i.q, %bb.f ], [ %i.ai, %bb.e ] ; 2 uses
  store ptr %.sink.i.i.i.1, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.1

bb.g:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.gj, i64 1 ; 2 uses
  store ptr %i.ak, ptr %i.h, align 8
  %i.al = load i8, ptr %i.gj, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.1

_ZL10stbi__get8P13stbi__context.exit.i.1:         ; preds = %bb.g, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1
  %i.am = phi ptr [ %i.gi, %bb.g ], [ %.sink.i.i.i.1, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1 ] ; 2 uses
  %i.an = phi ptr [ %i.ak, %bb.g ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1 ] ; 3 uses
  %.0.i.i.1 = phi i8 [ %i.al, %bb.g ], [ %i.aj, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1 ]
  %.not.i.1 = icmp eq i8 %.0.i.i.1, 80
  br i1 %.not.i.1, label %bb.h, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.1
  %i.ao = icmp ult ptr %i.an, %i.am
  br i1 %i.ao, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.j, align 8
  %.not.i.i.2 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.2, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.k, align 8
  %i.ar = load ptr, ptr %i.l, align 8
  %i.as = load i32, ptr %i.n, align 4
  %i.at = tail call noundef i32 %i.aq(ptr noundef %i.ar, ptr noundef nonnull %i.m, i32 noundef %i.as), !inline_history !158 ; 2 uses
  %i.au = load ptr, ptr %i.h, align 8
  %i.av = load ptr, ptr %i.o, align 8
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = load i32, ptr %i.p, align 8
  %i.bb = add nsw i32 %i.ba, %i.az
  store i32 %i.bb, ptr %i.p, align 8
  %i.bc = icmp eq i32 %i.at, 0
  br i1 %i.bc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = sext i32 %i.at to i64
  %i.be = getelementptr inbounds i8, ptr %i.m, i64 %i.bd
  %.pre.i.i.2 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2: ; preds = %bb.l, %bb.k
  %i.bf = phi i8 [ 0, %bb.l ], [ %.pre.i.i.2, %bb.k ]
  %.sink.i.i.i.2 = phi ptr [ %i.q, %bb.l ], [ %i.be, %bb.k ] ; 2 uses
  store ptr %.sink.i.i.i.2, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.2

bb.m:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  store ptr %i.bg, ptr %i.h, align 8
  %i.bh = load i8, ptr %i.an, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.2

_ZL10stbi__get8P13stbi__context.exit.i.2:         ; preds = %bb.m, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2
  %i.bi = phi ptr [ %i.am, %bb.m ], [ %.sink.i.i.i.2, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2 ] ; 2 uses
  %i.bj = phi ptr [ %i.bg, %bb.m ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2 ] ; 3 uses
  %.0.i.i.2 = phi i8 [ %i.bh, %bb.m ], [ %i.bf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2 ]
  %.not.i.2 = icmp eq i8 %.0.i.i.2, 78
  br i1 %.not.i.2, label %bb.n, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread

bb.n:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.2
  %i.bk = icmp ult ptr %i.bj, %i.bi
  br i1 %i.bk, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load i32, ptr %i.j, align 8
  %.not.i.i.3 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.3, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %i.k, align 8
  %i.bn = load ptr, ptr %i.l, align 8
  %i.bo = load i32, ptr %i.n, align 4
  %i.bp = tail call noundef i32 %i.bm(ptr noundef %i.bn, ptr noundef nonnull %i.m, i32 noundef %i.bo), !inline_history !158 ; 2 uses
  %i.bq = load ptr, ptr %i.h, align 8
  %i.br = load ptr, ptr %i.o, align 8
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = load i32, ptr %i.p, align 8
  %i.bx = add nsw i32 %i.bw, %i.bv
  store i32 %i.bx, ptr %i.p, align 8
  %i.by = icmp eq i32 %i.bp, 0
  br i1 %i.by, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = sext i32 %i.bp to i64
  %i.ca = getelementptr inbounds i8, ptr %i.m, i64 %i.bz
  %.pre.i.i.3 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3

bb.r:                                             ; preds = %bb.p
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3: ; preds = %bb.r, %bb.q
  %i.cb = phi i8 [ 0, %bb.r ], [ %.pre.i.i.3, %bb.q ]
  %.sink.i.i.i.3 = phi ptr [ %i.q, %bb.r ], [ %i.ca, %bb.q ] ; 2 uses
  store ptr %.sink.i.i.i.3, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.3

bb.s:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  store ptr %i.cc, ptr %i.h, align 8
  %i.cd = load i8, ptr %i.bj, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.3

_ZL10stbi__get8P13stbi__context.exit.i.3:         ; preds = %bb.s, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3
  %i.ce = phi ptr [ %i.bi, %bb.s ], [ %.sink.i.i.i.3, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3 ] ; 2 uses
  %i.cf = phi ptr [ %i.cc, %bb.s ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3 ] ; 3 uses
  %.0.i.i.3 = phi i8 [ %i.cd, %bb.s ], [ %i.cb, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.3 ]
  %.not.i.3 = icmp eq i8 %.0.i.i.3, 71
  br i1 %.not.i.3, label %bb.t, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread

bb.t:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.3
  %i.cg = icmp ult ptr %i.cf, %i.ce
  br i1 %i.cg, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = load i32, ptr %i.j, align 8
  %.not.i.i.4 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.4, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.k, align 8
  %i.cj = load ptr, ptr %i.l, align 8
  %i.ck = load i32, ptr %i.n, align 4
  %i.cl = tail call noundef i32 %i.ci(ptr noundef %i.cj, ptr noundef nonnull %i.m, i32 noundef %i.ck), !inline_history !158 ; 2 uses
  %i.cm = load ptr, ptr %i.h, align 8
  %i.cn = load ptr, ptr %i.o, align 8
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = load i32, ptr %i.p, align 8
  %i.ct = add nsw i32 %i.cs, %i.cr
  store i32 %i.ct, ptr %i.p, align 8
  %i.cu = icmp eq i32 %i.cl, 0
  br i1 %i.cu, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = sext i32 %i.cl to i64
  %i.cw = getelementptr inbounds i8, ptr %i.m, i64 %i.cv
  %.pre.i.i.4 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4

bb.x:                                             ; preds = %bb.v
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4: ; preds = %bb.x, %bb.w
  %i.cx = phi i8 [ 0, %bb.x ], [ %.pre.i.i.4, %bb.w ]
  %.sink.i.i.i.4 = phi ptr [ %i.q, %bb.x ], [ %i.cw, %bb.w ] ; 2 uses
  store ptr %.sink.i.i.i.4, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.4

bb.y:                                             ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cf, i64 1 ; 2 uses
  store ptr %i.cy, ptr %i.h, align 8
  %i.cz = load i8, ptr %i.cf, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.4

_ZL10stbi__get8P13stbi__context.exit.i.4:         ; preds = %bb.y, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4
  %i.da = phi ptr [ %i.ce, %bb.y ], [ %.sink.i.i.i.4, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4 ] ; 2 uses
  %i.db = phi ptr [ %i.cy, %bb.y ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4 ] ; 3 uses
  %.0.i.i.4 = phi i8 [ %i.cz, %bb.y ], [ %i.cx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.4 ]
  %.not.i.4 = icmp eq i8 %.0.i.i.4, 13
  br i1 %.not.i.4, label %bb.z, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread

bb.z:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.4
  %i.dc = icmp ult ptr %i.db, %i.da
  br i1 %i.dc, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i32, ptr %i.j, align 8
  %.not.i.i.5 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i.5, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.de = load ptr, ptr %i.k, align 8
  %i.df = load ptr, ptr %i.l, align 8
  %i.dg = load i32, ptr %i.n, align 4
  %i.dh = tail call noundef i32 %i.de(ptr noundef %i.df, ptr noundef nonnull %i.m, i32 noundef %i.dg), !inline_history !158 ; 2 uses
  %i.di = load ptr, ptr %i.h, align 8
  %i.dj = load ptr, ptr %i.o, align 8
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = trunc i64 %i.dm to i32
  %i.do = load i32, ptr %i.p, align 8
  %i.dp = add nsw i32 %i.do, %i.dn
  store i32 %i.dp, ptr %i.p, align 8
  %i.dq = icmp eq i32 %i.dh, 0
  br i1 %i.dq, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = sext i32 %i.dh to i64
  %i.ds = getelementptr inbounds i8, ptr %i.m, i64 %i.dr
  %.pre.i.i.5 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5

bb.ad:                                            ; preds = %bb.ab
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5: ; preds = %bb.ad, %bb.ac
  %i.dt = phi i8 [ 0, %bb.ad ], [ %.pre.i.i.5, %bb.ac ]
  %.sink.i.i.i.5 = phi ptr [ %i.q, %bb.ad ], [ %i.ds, %bb.ac ] ; 2 uses
  store ptr %.sink.i.i.i.5, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.5

bb.ae:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  store ptr %i.du, ptr %i.h, align 8
  %i.dv = load i8, ptr %i.db, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.5

_ZL10stbi__get8P13stbi__context.exit.i.5:         ; preds = %bb.ae, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5
  %i.dw = phi ptr [ %i.da, %bb.ae ], [ %.sink.i.i.i.5, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5 ] ; 2 uses
  %i.dx = phi ptr [ %i.du, %bb.ae ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5 ] ; 3 uses
  %.0.i.i.5 = phi i8 [ %i.dv, %bb.ae ], [ %i.dt, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.5 ]
  %.not.i.5 = icmp eq i8 %.0.i.i.5, 10
  br i1 %.not.i.5, label %bb.af, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread

bb.af:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.5
  %i.dy = icmp ult ptr %i.dx, %i.dw
  br i1 %i.dy, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = load i32, ptr %i.j, align 8
  %.not.i.i.6 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.6, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load ptr, ptr %i.k, align 8
  %i.eb = load ptr, ptr %i.l, align 8
  %i.ec = load i32, ptr %i.n, align 4
  %i.ed = tail call noundef i32 %i.ea(ptr noundef %i.eb, ptr noundef nonnull %i.m, i32 noundef %i.ec), !inline_history !158 ; 2 uses
  %i.ee = load ptr, ptr %i.h, align 8
  %i.ef = load ptr, ptr %i.o, align 8
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = load i32, ptr %i.p, align 8
  %i.el = add nsw i32 %i.ek, %i.ej
  store i32 %i.el, ptr %i.p, align 8
  %i.em = icmp eq i32 %i.ed, 0
  br i1 %i.em, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.en = sext i32 %i.ed to i64
  %i.eo = getelementptr inbounds i8, ptr %i.m, i64 %i.en
  %.pre.i.i.6 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6

bb.aj:                                            ; preds = %bb.ah
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6: ; preds = %bb.aj, %bb.ai
  %i.ep = phi i8 [ 0, %bb.aj ], [ %.pre.i.i.6, %bb.ai ]
  %.sink.i.i.i.6 = phi ptr [ %i.q, %bb.aj ], [ %i.eo, %bb.ai ] ; 2 uses
  store ptr %.sink.i.i.i.6, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.6

bb.ak:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 2 uses
  store ptr %i.eq, ptr %i.h, align 8
  %i.er = load i8, ptr %i.dx, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.6

_ZL10stbi__get8P13stbi__context.exit.i.6:         ; preds = %bb.ak, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6
  %i.es = phi ptr [ %i.dw, %bb.ak ], [ %.sink.i.i.i.6, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6 ]
  %i.et = phi ptr [ %i.eq, %bb.ak ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6 ] ; 3 uses
  %.0.i.i.6 = phi i8 [ %i.er, %bb.ak ], [ %i.ep, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.6 ]
  %.not.i.6 = icmp eq i8 %.0.i.i.6, 26
  br i1 %.not.i.6, label %bb.al, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread

bb.al:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.6
  %i.eu = icmp ult ptr %i.et, %i.es
  br i1 %i.eu, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ev = load i32, ptr %i.j, align 8
  %.not.i.i.7 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.7, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ew = load ptr, ptr %i.k, align 8
  %i.ex = load ptr, ptr %i.l, align 8
  %i.ey = load i32, ptr %i.n, align 4
  %i.ez = tail call noundef i32 %i.ew(ptr noundef %i.ex, ptr noundef nonnull %i.m, i32 noundef %i.ey), !inline_history !158 ; 2 uses
  %i.fa = load ptr, ptr %i.h, align 8
  %i.fb = load ptr, ptr %i.o, align 8
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = load i32, ptr %i.p, align 8
  %i.fh = add nsw i32 %i.fg, %i.ff
  store i32 %i.fh, ptr %i.p, align 8
  %i.fi = icmp eq i32 %i.ez, 0
  br i1 %i.fi, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fj = sext i32 %i.ez to i64
  %i.fk = getelementptr inbounds i8, ptr %i.m, i64 %i.fj
  %.pre.i.i.7 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.7

bb.ap:                                            ; preds = %bb.an
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.7

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.7: ; preds = %bb.ap, %bb.ao
  %i.fl = phi i8 [ 0, %bb.ap ], [ %.pre.i.i.7, %bb.ao ]
  %.sink.i.i.i.7 = phi ptr [ %i.q, %bb.ap ], [ %i.fk, %bb.ao ]
  store ptr %.sink.i.i.i.7, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.7

bb.aq:                                            ; preds = %bb.al
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store ptr %i.fm, ptr %i.h, align 8
  %i.fn = load i8, ptr %i.et, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.7

_ZL10stbi__get8P13stbi__context.exit.i.7:         ; preds = %bb.aq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.7
  %.0.i.i.7 = phi i8 [ %i.fn, %bb.aq ], [ %i.fl, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.7 ]
  %.not.i.7 = icmp eq i8 %.0.i.i.7, 10
  br i1 %.not.i.7, label %_ZL22stbi__check_png_headerP13stbi__context.exit, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread

_ZL22stbi__check_png_headerP13stbi__context.exit: ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.7
  %i.fo = icmp eq i32 %1, 1
  br i1 %i.fo, label %.thread399, label %.preheader418

bb.ar:                                            ; preds = %bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1 ; 2 uses
  store ptr %i.fp, ptr %i.h, align 8
  %i.fq = load i8, ptr %.pre.i, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i

bb.as:                                            ; preds = %bb.a
  %i.fr = load i32, ptr %i.j, align 8
  %.not.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fs = load ptr, ptr %i.k, align 8
  %i.ft = load ptr, ptr %i.l, align 8
  %i.fu = load i32, ptr %i.n, align 4
  %i.fv = tail call noundef i32 %i.fs(ptr noundef %i.ft, ptr noundef nonnull %i.m, i32 noundef %i.fu), !inline_history !158 ; 2 uses
  %i.fw = load ptr, ptr %i.h, align 8
  %i.fx = load ptr, ptr %i.o, align 8
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = load i32, ptr %i.p, align 8
  %i.gd = add nsw i32 %i.gc, %i.gb
  store i32 %i.gd, ptr %i.p, align 8
  %i.ge = icmp eq i32 %i.fv, 0
  br i1 %i.ge, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.gf = sext i32 %i.fv to i64
  %i.gg = getelementptr inbounds i8, ptr %i.m, i64 %i.gf
  %.pre.i.i = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i: ; preds = %bb.av, %bb.au
  %i.gh = phi i8 [ 0, %bb.au ], [ %.pre.i.i, %bb.av ]
  %.sink.i.i.i = phi ptr [ %i.q, %bb.au ], [ %i.gg, %bb.av ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i

_ZL10stbi__get8P13stbi__context.exit.i:           ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i, %bb.ar
  %i.gi = phi ptr [ %.pre7.i, %bb.ar ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ] ; 2 uses
  %i.gj = phi ptr [ %i.fp, %bb.ar ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ] ; 3 uses
  %.0.i.i = phi i8 [ %i.fq, %bb.ar ], [ %i.gh, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ]
  %.not.i = icmp eq i8 %.0.i.i, -119
  br i1 %.not.i, label %bb.b, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread

_ZL22stbi__check_png_headerP13stbi__context.exit.thread: ; preds = %bb.as, %bb.am, %bb.ag, %bb.aa, %bb.u, %bb.o, %bb.i, %bb.c, %_ZL10stbi__get8P13stbi__context.exit.i.7, %_ZL10stbi__get8P13stbi__context.exit.i.6, %_ZL10stbi__get8P13stbi__context.exit.i.5, %_ZL10stbi__get8P13stbi__context.exit.i.4, %_ZL10stbi__get8P13stbi__context.exit.i.3, %_ZL10stbi__get8P13stbi__context.exit.i.2, %_ZL10stbi__get8P13stbi__context.exit.i.1, %_ZL10stbi__get8P13stbi__context.exit.i
  %i.gk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.6, ptr %i.gk, align 8
  br label %.thread399

.preheader418:                                    ; preds = %_ZL22stbi__check_png_headerP13stbi__context.exit
  %i.gl = icmp eq i32 %1, 2                       ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 13 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.preheader418, %.loopexit
  %.0241 = phi i32 [ %.2243, %.loopexit ], [ 0, %.preheader418 ] ; 19 uses
  %.0237 = phi i32 [ %.2239, %.loopexit ], [ 0, %.preheader418 ] ; 20 uses
  %.0234 = phi i32 [ %.1235, %.loopexit ], [ 0, %.preheader418 ] ; 17 uses
  %.0230 = phi i32 [ %.2232, %.loopexit ], [ 1, %.preheader418 ] ; 10 uses
  %.0223 = phi i32 [ %.1224, %.loopexit ], [ 0, %.preheader418 ] ; 21 uses
  %.0215 = phi i32 [ %.4219, %.loopexit ], [ 0, %.preheader418 ] ; 22 uses
  %.0212 = phi i32 [ %.1213, %.loopexit ], [ 0, %.preheader418 ] ; 22 uses
  %.0209 = phi i8 [ %.1210, %.loopexit ], [ 0, %.preheader418 ] ; 17 uses
  %.0204 = phi i8 [ %.3207, %.loopexit ], [ 0, %.preheader418 ] ; 19 uses
  %i.gq = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d)
  %i.gr = shl nuw i32 %i.gq, 16                   ; 4 uses
  %i.gs = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 4 uses
  %i.gt = or disjoint i32 %i.gr, %i.gs            ; 20 uses
  %i.gu = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 4 uses
  %i.gv = shl nuw i32 %i.gu, 16
  %i.gw = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 3 uses
  %i.gx = or disjoint i32 %i.gv, %i.gw
  switch i32 %i.gx, label %bb.gc [
    i32 1130840649, label %bb.ax
    i32 1229472850, label %bb.bd
    i32 1347179589, label %bb.cq
    i32 1951551059, label %bb.dl
    i32 1229209940, label %bb.ei
    i32 1229278788, label %bb.ez
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.gy = icmp eq i32 %i.gt, 0
  br i1 %i.gy, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gz = icmp slt i32 %i.gr, 0
  br i1 %i.gz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ha = load ptr, ptr %i.i, align 8
  store ptr %i.ha, ptr %i.h, align 8
  br label %.loopexit

bb.ba:                                            ; preds = %bb.ay
  %i.hb = load ptr, ptr %i.k, align 8
  %.not.i306 = icmp eq ptr %i.hb, null
  br i1 %.not.i306, label %..thread_crit_edge.i, label %bb.bb

..thread_crit_edge.i:                             ; preds = %bb.ba
  %.pre.i307 = load ptr, ptr %i.h, align 8
  br label %.thread.i

bb.bb:                                            ; preds = %bb.ba
  %i.hc = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.hd = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = trunc i64 %i.hg to i32                  ; 2 uses
  %i.hi = icmp sgt i32 %i.gt, %i.hh
  br i1 %i.hi, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.hc, ptr %i.h, align 8
  %i.hj = load ptr, ptr %i.gp, align 8
  %i.hk = load ptr, ptr %i.l, align 8
  %i.hl = sub nsw i32 %i.gt, %i.hh
  tail call void %i.hj(ptr noundef %i.hk, i32 noundef %i.hl), !inline_history !159
  br label %.loopexit

.thread.i:                                        ; preds = %bb.bb, %..thread_crit_edge.i
  %i.hm = phi ptr [ %.pre.i307, %..thread_crit_edge.i ], [ %i.hd, %bb.bb ]
  %i.hn = zext nneg i32 %i.gt to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hn
  store ptr %i.ho, ptr %i.h, align 8
  br label %.loopexit

bb.bd:                                            ; preds = %bb.aw
  %.not282 = icmp eq i32 %.0230, 0
  br i1 %.not282, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.9, ptr %i.hp, align 8
  br label %.thread399

bb.bf:                                            ; preds = %bb.bd
  %.not283 = icmp eq i32 %i.gt, 13
  br i1 %.not283, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.10, ptr %i.hq, align 8
  br label %.thread399

bb.bh:                                            ; preds = %bb.bf
  %i.hr = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d)
  %i.hs = shl nuw i32 %i.hr, 16
  %i.ht = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d)
  %i.hu = or disjoint i32 %i.hs, %i.ht
  store i32 %i.hu, ptr %i.d, align 8
  %i.hv = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d)
  %i.hw = shl nuw i32 %i.hv, 16
  %i.hx = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d)
  %i.hy = or disjoint i32 %i.hw, %i.hx            ; 2 uses
  store i32 %i.hy, ptr %i.go, align 4
  %i.hz = icmp ugt i32 %i.hy, 16777216
  br i1 %i.hz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ia = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.ia, align 8
  br label %.thread399

bb.bj:                                            ; preds = %bb.bh
  %i.ib = load i32, ptr %i.d, align 8
  %i.ic = icmp ugt i32 %i.ib, 16777216
  br i1 %i.ic, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.id = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.id, align 8
  br label %.thread399

bb.bl:                                            ; preds = %bb.bj
  %i.ie = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.if = load ptr, ptr %i.i, align 8
  %i.ig = icmp ult ptr %i.ie, %i.if
  br i1 %i.ig, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  store ptr %i.ih, ptr %i.h, align 8
  %i.ii = load i8, ptr %i.ie, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.bn:                                            ; preds = %bb.bl
  %i.ij = load i32, ptr %i.j, align 8
  %.not.i308 = icmp eq i32 %i.ij, 0
  br i1 %.not.i308, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ik = load ptr, ptr %i.k, align 8
  %i.il = load ptr, ptr %i.l, align 8
  %i.im = load i32, ptr %i.n, align 4
  %i.in = tail call noundef i32 %i.ik(ptr noundef %i.il, ptr noundef nonnull %i.m, i32 noundef %i.im), !inline_history !160 ; 2 uses
  %i.io = load ptr, ptr %i.h, align 8
  %i.ip = load ptr, ptr %i.o, align 8
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = trunc i64 %i.is to i32
  %i.iu = load i32, ptr %i.p, align 8
  %i.iv = add nsw i32 %i.iu, %i.it
  store i32 %i.iv, ptr %i.p, align 8
  %i.iw = icmp eq i32 %i.in, 0
  br i1 %i.iw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.bq:                                            ; preds = %bb.bo
  %i.ix = sext i32 %i.in to i64
  %i.iy = getelementptr inbounds i8, ptr %i.m, i64 %i.ix
  %.pre.i309 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.bq, %bb.bp
  %i.iz = phi i8 [ 0, %bb.bp ], [ %.pre.i309, %bb.bq ]
  %.sink.i.i = phi ptr [ %i.q, %bb.bp ], [ %i.iy, %bb.bq ]
  store ptr %.sink.i.i, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.bm, %bb.bn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %.0.i = phi i8 [ %i.ii, %bb.bm ], [ %i.iz, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.bn ] ; 3 uses
  %i.ja = zext i8 %.0.i to i32
  store i32 %i.ja, ptr %i.gn, align 8
  %i.jb = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %.0.i)
  %i.jc = icmp eq i8 %i.jb, 1
  %i.jd = and i8 %.0.i, 31
  %switch = icmp ne i8 %i.jd, 0
  %or.cond298 = and i1 %i.jc, %switch
  br i1 %or.cond298, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.je = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.12, ptr %i.je, align 8
  br label %.thread399

bb.bs:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.jf = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.jg = load ptr, ptr %i.i, align 8
  %i.jh = icmp ult ptr %i.jf, %i.jg
  br i1 %i.jh, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 1
  store ptr %i.ji, ptr %i.h, align 8
  %i.jj = load i8, ptr %i.jf, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit315

bb.bu:                                            ; preds = %bb.bs
  %i.jk = load i32, ptr %i.j, align 8
  %.not.i310 = icmp eq i32 %i.jk, 0
  br i1 %.not.i310, label %.critedge.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jl = load ptr, ptr %i.k, align 8
  %i.jm = load ptr, ptr %i.l, align 8
  %i.jn = load i32, ptr %i.n, align 4
  %i.jo = tail call noundef i32 %i.jl(ptr noundef %i.jm, ptr noundef nonnull %i.m, i32 noundef %i.jn), !inline_history !160 ; 2 uses
  %i.jp = load ptr, ptr %i.h, align 8
  %i.jq = load ptr, ptr %i.o, align 8
  %i.jr = ptrtoint ptr %i.jp to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = load i32, ptr %i.p, align 8
  %i.jw = add nsw i32 %i.jv, %i.ju
  store i32 %i.jw, ptr %i.p, align 8
  %i.jx = icmp eq i32 %i.jo, 0
  br i1 %i.jx, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i312

bb.bx:                                            ; preds = %bb.bv
  %i.jy = sext i32 %i.jo to i64
  %i.jz = getelementptr inbounds i8, ptr %i.m, i64 %i.jy
  %.pre.i311 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i312

_ZL19stbi__refill_bufferP13stbi__context.exit.i312: ; preds = %bb.bx, %bb.bw
  %i.ka = phi i8 [ 0, %bb.bw ], [ %.pre.i311, %bb.bx ]
  %.sink.i.i313 = phi ptr [ %i.q, %bb.bw ], [ %i.jz, %bb.bx ]
  store ptr %.sink.i.i313, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit315

_ZL10stbi__get8P13stbi__context.exit315:          ; preds = %bb.bt, %_ZL19stbi__refill_bufferP13stbi__context.exit.i312
  %.0.i314 = phi i8 [ %i.jj, %bb.bt ], [ %i.ka, %_ZL19stbi__refill_bufferP13stbi__context.exit.i312 ] ; 4 uses
  %i.kb = zext nneg i8 %.0.i314 to i32            ; 2 uses
  %i.kc = icmp ugt i8 %.0.i314, 6
  br i1 %i.kc, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit315
  %i.kd = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.13, ptr %i.kd, align 8
  br label %.thread399

bb.bz:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit315
  %i.ke = icmp eq i8 %.0.i314, 3
  br i1 %i.ke, label %bb.ca, label %.critedge

bb.ca:                                            ; preds = %bb.bz
  %i.kf = load i32, ptr %i.gn, align 8
  %i.kg = icmp eq i32 %i.kf, 16
  br i1 %i.kg, label %bb.cb, label %.critedge.thread

bb.cb:                                            ; preds = %bb.ca
  %i.kh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.13, ptr %i.kh, align 8
  br label %.thread399

.critedge:                                        ; preds = %bb.bz
  %i.ki = and i32 %i.kb, 1
  %.not289 = icmp eq i32 %i.ki, 0
  br i1 %.not289, label %.critedge.thread, label %bb.cc

bb.cc:                                            ; preds = %.critedge
  %i.kj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.13, ptr %i.kj, align 8
  br label %.thread399

.critedge.thread:                                 ; preds = %bb.bu, %bb.ca, %.critedge
  %.0.i314370372 = phi i8 [ %.0.i314, %.critedge ], [ 3, %bb.ca ], [ 0, %bb.bu ]
  %i.kk = phi i32 [ %i.kb, %.critedge ], [ 3, %bb.ca ], [ 0, %bb.bu ] ; 3 uses
  %.1205 = phi i8 [ %.0204, %.critedge ], [ 3, %bb.ca ], [ %.0204, %bb.bu ] ; 2 uses
  %i.kl = tail call fastcc noundef zeroext i8 @_ZL10stbi__get8P13stbi__context(ptr noundef nonnull %i.d)
  %.not290 = icmp eq i8 %i.kl, 0
  br i1 %.not290, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.critedge.thread
  %i.km = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.km, align 8
  br label %.thread399

bb.ce:                                            ; preds = %.critedge.thread
  %i.kn = tail call fastcc noundef zeroext i8 @_ZL10stbi__get8P13stbi__context(ptr noundef nonnull %i.d)
  %.not291 = icmp eq i8 %i.kn, 0
  br i1 %.not291, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ko = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.15, ptr %i.ko, align 8
  br label %.thread399

bb.cg:                                            ; preds = %bb.ce
  %i.kp = tail call fastcc noundef zeroext i8 @_ZL10stbi__get8P13stbi__context(ptr noundef nonnull %i.d) ; 2 uses
  %i.kq = zext i8 %i.kp to i32                    ; 2 uses
  %i.kr = icmp ugt i8 %i.kp, 1
  br i1 %i.kr, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ks = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.16, ptr %i.ks, align 8
  br label %.thread399

bb.ci:                                            ; preds = %bb.cg
  %i.kt = load i32, ptr %i.d, align 8             ; 3 uses
  %.not292 = icmp eq i32 %i.kt, 0
  br i1 %.not292, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ku = load i32, ptr %i.go, align 4            ; 3 uses
  %.not293 = icmp eq i32 %i.ku, 0
  br i1 %.not293, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.kv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.17, ptr %i.kv, align 8
  br label %.thread399

bb.cl:                                            ; preds = %bb.cj
  %.not294 = icmp eq i8 %.1205, 0
  br i1 %.not294, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.kw = and i32 %i.kk, 2
  %i.kx = or disjoint i32 %i.kw, 1
  %.not296 = icmp samesign ugt i8 %.0.i314370372, 3
  %i.ky = zext i1 %.not296 to i32
  %i.kz = add nuw nsw i32 %i.kx, %i.ky            ; 2 uses
  store i32 %i.kz, ptr %i.gm, align 8
  %i.la = udiv i32 1073741824, %i.kt
  %i.lb = udiv i32 %i.la, %i.kz
  %i.lc = icmp ult i32 %i.lb, %i.ku
  br i1 %i.lc, label %bb.cn, label %.loopexit

bb.cn:                                            ; preds = %bb.cm
  %i.ld = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.ld, align 8
  br label %.thread399

bb.co:                                            ; preds = %bb.cl
  store i32 1, ptr %i.gm, align 8
  %i.le = udiv i32 1073741824, %i.kt
  %i.lf = lshr i32 %i.le, 2
  %i.lg = icmp ult i32 %i.lf, %i.ku
  br i1 %i.lg, label %bb.cp, label %.loopexit

bb.cp:                                            ; preds = %bb.co
  %i.lh = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.lh, align 8
  br label %.thread399

bb.cq:                                            ; preds = %bb.aw
  %.not280 = icmp eq i32 %.0230, 0
  br i1 %.not280, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.li = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.18, ptr %i.li, align 8
  br label %.thread399

bb.cs:                                            ; preds = %bb.cq
  %i.lj = icmp ugt i32 %i.gt, 768
  br i1 %i.lj, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.lk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.19, ptr %i.lk, align 8
  br label %.thread399

bb.cu:                                            ; preds = %bb.cs
  %.lhs.trunc = trunc nuw nsw i32 %i.gs to i16
  %i.ll = udiv i16 %.lhs.trunc, 3                 ; 2 uses
  %.zext = zext nneg i16 %i.ll to i32             ; 3 uses
  %i.lm = mul nuw nsw i32 %.zext, 3
  %.not281 = icmp eq i32 %i.lm, %i.gt
  br i1 %.not281, label %.preheader, label %bb.cv

.preheader:                                       ; preds = %bb.cu
  %.not746 = icmp samesign ult i32 %i.gs, 3
  br i1 %.not746, label %.loopexit, label %.lr.ph744.preheader

.lr.ph744.preheader:                              ; preds = %.preheader
  %wide.trip.count1077 = zext nneg i16 %i.ll to i64
  %.pre1082 = load ptr, ptr %i.h, align 8
  %.pre1083 = load ptr, ptr %i.i, align 8
  br label %.lr.ph744

bb.cv:                                            ; preds = %bb.cu
  %i.ln = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.19, ptr %i.ln, align 8
  br label %.thread399

.lr.ph744:                                        ; preds = %.lr.ph744.preheader, %_ZL10stbi__get8P13stbi__context.exit333
  %i.lo = phi ptr [ %.pre1083, %.lr.ph744.preheader ], [ %i.of, %_ZL10stbi__get8P13stbi__context.exit333 ] ; 3 uses
  %i.lp = phi ptr [ %.pre1082, %.lr.ph744.preheader ], [ %i.og, %_ZL10stbi__get8P13stbi__context.exit333 ] ; 4 uses
  %indvars.iv1074 = phi i64 [ 0, %.lr.ph744.preheader ], [ %indvars.iv.next1075, %_ZL10stbi__get8P13stbi__context.exit333 ] ; 2 uses
  %i.lq = icmp ult ptr %i.lp, %i.lo
  br i1 %i.lq, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.lr.ph744
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 1 ; 2 uses
  store ptr %i.lr, ptr %i.h, align 8
  %i.ls = load i8, ptr %i.lp, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit321

bb.cx:                                            ; preds = %.lr.ph744
  %i.lt = load i32, ptr %i.j, align 8
  %.not.i316 = icmp eq i32 %i.lt, 0
  br i1 %.not.i316, label %_ZL10stbi__get8P13stbi__context.exit321, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lu = load ptr, ptr %i.k, align 8
  %i.lv = load ptr, ptr %i.l, align 8
  %i.lw = load i32, ptr %i.n, align 4
  %i.lx = tail call noundef i32 %i.lu(ptr noundef %i.lv, ptr noundef nonnull %i.m, i32 noundef %i.lw), !inline_history !160 ; 2 uses
  %i.ly = load ptr, ptr %i.h, align 8
  %i.lz = load ptr, ptr %i.o, align 8
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = trunc i64 %i.mc to i32
  %i.me = load i32, ptr %i.p, align 8
  %i.mf = add nsw i32 %i.me, %i.md
  store i32 %i.mf, ptr %i.p, align 8
  %i.mg = icmp eq i32 %i.lx, 0
  br i1 %i.mg, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i318

bb.da:                                            ; preds = %bb.cy
  %i.mh = sext i32 %i.lx to i64
  %i.mi = getelementptr inbounds i8, ptr %i.m, i64 %i.mh
  %.pre.i317 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i318

_ZL19stbi__refill_bufferP13stbi__context.exit.i318: ; preds = %bb.da, %bb.cz
  %i.mj = phi i8 [ 0, %bb.cz ], [ %.pre.i317, %bb.da ]
  %.sink.i.i319 = phi ptr [ %i.q, %bb.cz ], [ %i.mi, %bb.da ] ; 2 uses
  store ptr %.sink.i.i319, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit321

_ZL10stbi__get8P13stbi__context.exit321:          ; preds = %bb.cw, %bb.cx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i318
  %i.mk = phi ptr [ %i.lo, %bb.cw ], [ %.sink.i.i319, %_ZL19stbi__refill_bufferP13stbi__context.exit.i318 ], [ %i.lo, %bb.cx ] ; 3 uses
  %i.ml = phi ptr [ %i.lr, %bb.cw ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i318 ], [ %i.lp, %bb.cx ] ; 4 uses
  %.0.i320 = phi i8 [ %i.ls, %bb.cw ], [ %i.mj, %_ZL19stbi__refill_bufferP13stbi__context.exit.i318 ], [ 0, %bb.cx ]
  %i.mm = shl nuw nsw i64 %indvars.iv1074, 2
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.mm ; 4 uses
  store i8 %.0.i320, ptr %i.mn, align 4
  %i.mo = icmp ult ptr %i.ml, %i.mk
  br i1 %i.mo, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit321
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 1 ; 2 uses
  store ptr %i.mp, ptr %i.h, align 8
  %i.mq = load i8, ptr %i.ml, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit327

bb.dc:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit321
  %i.mr = load i32, ptr %i.j, align 8
  %.not.i322 = icmp eq i32 %i.mr, 0
  br i1 %.not.i322, label %_ZL10stbi__get8P13stbi__context.exit327, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ms = load ptr, ptr %i.k, align 8
  %i.mt = load ptr, ptr %i.l, align 8
  %i.mu = load i32, ptr %i.n, align 4
  %i.mv = tail call noundef i32 %i.ms(ptr noundef %i.mt, ptr noundef nonnull %i.m, i32 noundef %i.mu), !inline_history !160 ; 2 uses
  %i.mw = load ptr, ptr %i.h, align 8
  %i.mx = load ptr, ptr %i.o, align 8
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = trunc i64 %i.na to i32
  %i.nc = load i32, ptr %i.p, align 8
  %i.nd = add nsw i32 %i.nc, %i.nb
  store i32 %i.nd, ptr %i.p, align 8
  %i.ne = icmp eq i32 %i.mv, 0
  br i1 %i.ne, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i324

bb.df:                                            ; preds = %bb.dd
  %i.nf = sext i32 %i.mv to i64
  %i.ng = getelementptr inbounds i8, ptr %i.m, i64 %i.nf
  %.pre.i323 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i324

_ZL19stbi__refill_bufferP13stbi__context.exit.i324: ; preds = %bb.df, %bb.de
  %i.nh = phi i8 [ 0, %bb.de ], [ %.pre.i323, %bb.df ]
  %.sink.i.i325 = phi ptr [ %i.q, %bb.de ], [ %i.ng, %bb.df ] ; 2 uses
  store ptr %.sink.i.i325, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit327

_ZL10stbi__get8P13stbi__context.exit327:          ; preds = %bb.db, %bb.dc, %_ZL19stbi__refill_bufferP13stbi__context.exit.i324
  %i.ni = phi ptr [ %i.mk, %bb.db ], [ %.sink.i.i325, %_ZL19stbi__refill_bufferP13stbi__context.exit.i324 ], [ %i.mk, %bb.dc ] ; 3 uses
  %i.nj = phi ptr [ %i.mp, %bb.db ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i324 ], [ %i.ml, %bb.dc ] ; 4 uses
  %.0.i326 = phi i8 [ %i.mq, %bb.db ], [ %i.nh, %_ZL19stbi__refill_bufferP13stbi__context.exit.i324 ], [ 0, %bb.dc ]
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mn, i64 1
  store i8 %.0.i326, ptr %i.nk, align 1
  %i.nl = icmp ult ptr %i.nj, %i.ni
  br i1 %i.nl, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit327
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 1 ; 2 uses
  store ptr %i.nm, ptr %i.h, align 8
  %i.nn = load i8, ptr %i.nj, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit333

bb.dh:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit327
  %i.no = load i32, ptr %i.j, align 8
  %.not.i328 = icmp eq i32 %i.no, 0
  br i1 %.not.i328, label %_ZL10stbi__get8P13stbi__context.exit333, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.np = load ptr, ptr %i.k, align 8
  %i.nq = load ptr, ptr %i.l, align 8
  %i.nr = load i32, ptr %i.n, align 4
  %i.ns = tail call noundef i32 %i.np(ptr noundef %i.nq, ptr noundef nonnull %i.m, i32 noundef %i.nr), !inline_history !160 ; 2 uses
  %i.nt = load ptr, ptr %i.h, align 8
  %i.nu = load ptr, ptr %i.o, align 8
  %i.nv = ptrtoint ptr %i.nt to i64
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = trunc i64 %i.nx to i32
  %i.nz = load i32, ptr %i.p, align 8
  %i.oa = add nsw i32 %i.nz, %i.ny
  store i32 %i.oa, ptr %i.p, align 8
  %i.ob = icmp eq i32 %i.ns, 0
  br i1 %i.ob, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i330

bb.dk:                                            ; preds = %bb.di
  %i.oc = sext i32 %i.ns to i64
  %i.od = getelementptr inbounds i8, ptr %i.m, i64 %i.oc
  %.pre.i329 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i330

_ZL19stbi__refill_bufferP13stbi__context.exit.i330: ; preds = %bb.dk, %bb.dj
  %i.oe = phi i8 [ 0, %bb.dj ], [ %.pre.i329, %bb.dk ]
  %.sink.i.i331 = phi ptr [ %i.q, %bb.dj ], [ %i.od, %bb.dk ] ; 2 uses
  store ptr %.sink.i.i331, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit333

_ZL10stbi__get8P13stbi__context.exit333:          ; preds = %bb.dg, %bb.dh, %_ZL19stbi__refill_bufferP13stbi__context.exit.i330
  %i.of = phi ptr [ %i.ni, %bb.dg ], [ %.sink.i.i331, %_ZL19stbi__refill_bufferP13stbi__context.exit.i330 ], [ %i.ni, %bb.dh ]
  %i.og = phi ptr [ %i.nm, %bb.dg ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i330 ], [ %i.nj, %bb.dh ]
  %.0.i332 = phi i8 [ %i.nn, %bb.dg ], [ %i.oe, %_ZL19stbi__refill_bufferP13stbi__context.exit.i330 ], [ 0, %bb.dh ]
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mn, i64 2
  store i8 %.0.i332, ptr %i.oh, align 2
  %i.oi = getelementptr inbounds nuw i8, ptr %i.mn, i64 3
  store i8 -1, ptr %i.oi, align 1
  %indvars.iv.next1075 = add nuw nsw i64 %indvars.iv1074, 1 ; 2 uses
  %exitcond1078.not = icmp eq i64 %indvars.iv.next1075, %wide.trip.count1077
  br i1 %exitcond1078.not, label %.loopexit, label %.lr.ph744, !llvm.loop !161

bb.dl:                                            ; preds = %bb.aw
  %.not275 = icmp eq i32 %.0230, 0
  br i1 %.not275, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.oj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.18, ptr %i.oj, align 8
  br label %.thread399

bb.dn:                                            ; preds = %bb.dl
  %i.ok = load ptr, ptr %i.f, align 8
  %.not276 = icmp eq ptr %i.ok, null
  br i1 %.not276, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ol = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.20, ptr %i.ol, align 8
  br label %.thread399

bb.dp:                                            ; preds = %bb.dn
  %.not277 = icmp eq i8 %.0204, 0
  br i1 %.not277, label %bb.eb, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.gl, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store i32 4, ptr %i.gm, align 8
  br label %.thread399

bb.ds:                                            ; preds = %bb.dq
  %i.om = icmp eq i32 %.0223, 0
  br i1 %i.om, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.on = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.21, ptr %i.on, align 8
  br label %.thread399

bb.du:                                            ; preds = %bb.ds
  %i.oo = icmp ult i32 %.0223, %i.gt
  br i1 %i.oo, label %bb.dv, label %.preheader416

.preheader416:                                    ; preds = %bb.du
  %.not745 = icmp eq i32 %i.gt, 0
  br i1 %.not745, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader416
  %i.op = or disjoint i32 %i.gs, %i.gr
  %wide.trip.count = zext i32 %i.op to i64
  %.pre1080 = load ptr, ptr %i.h, align 8
  %.pre1081 = load ptr, ptr %i.i, align 8
  br label %.lr.ph

bb.dv:                                            ; preds = %bb.du
  %i.oq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.22, ptr %i.oq, align 8
  br label %.thread399

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL10stbi__get8P13stbi__context.exit339
  %i.or = phi ptr [ %.pre1081, %.lr.ph.preheader ], [ %i.pn, %_ZL10stbi__get8P13stbi__context.exit339 ] ; 3 uses
  %i.os = phi ptr [ %.pre1080, %.lr.ph.preheader ], [ %i.po, %_ZL10stbi__get8P13stbi__context.exit339 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZL10stbi__get8P13stbi__context.exit339 ] ; 2 uses
  %i.ot = icmp ult ptr %i.os, %i.or
  br i1 %i.ot, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.lr.ph
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 1 ; 2 uses
  store ptr %i.ou, ptr %i.h, align 8
  %i.ov = load i8, ptr %i.os, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit339

bb.dx:                                            ; preds = %.lr.ph
  %i.ow = load i32, ptr %i.j, align 8
  %.not.i334 = icmp eq i32 %i.ow, 0
  br i1 %.not.i334, label %_ZL10stbi__get8P13stbi__context.exit339, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ox = load ptr, ptr %i.k, align 8
  %i.oy = load ptr, ptr %i.l, align 8
  %i.oz = load i32, ptr %i.n, align 4
  %i.pa = tail call noundef i32 %i.ox(ptr noundef %i.oy, ptr noundef nonnull %i.m, i32 noundef %i.oz), !inline_history !160 ; 2 uses
  %i.pb = load ptr, ptr %i.h, align 8
  %i.pc = load ptr, ptr %i.o, align 8
  %i.pd = ptrtoint ptr %i.pb to i64
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = trunc i64 %i.pf to i32
  %i.ph = load i32, ptr %i.p, align 8
  %i.pi = add nsw i32 %i.ph, %i.pg
  store i32 %i.pi, ptr %i.p, align 8
  %i.pj = icmp eq i32 %i.pa, 0
  br i1 %i.pj, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.m, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i336

bb.ea:                                            ; preds = %bb.dy
  %i.pk = sext i32 %i.pa to i64
  %i.pl = getelementptr inbounds i8, ptr %i.m, i64 %i.pk
  %.pre.i335 = load i8, ptr %i.m, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i336

_ZL19stbi__refill_bufferP13stbi__context.exit.i336: ; preds = %bb.ea, %bb.dz
  %i.pm = phi i8 [ 0, %bb.dz ], [ %.pre.i335, %bb.ea ]
  %.sink.i.i337 = phi ptr [ %i.q, %bb.dz ], [ %i.pl, %bb.ea ] ; 2 uses
  store ptr %.sink.i.i337, ptr %i.i, align 8
  store ptr %i.q, ptr %i.h, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit339

_ZL10stbi__get8P13stbi__context.exit339:          ; preds = %bb.dw, %bb.dx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i336
  %i.pn = phi ptr [ %i.or, %bb.dw ], [ %.sink.i.i337, %_ZL19stbi__refill_bufferP13stbi__context.exit.i336 ], [ %i.or, %bb.dx ]
  %i.po = phi ptr [ %i.ou, %bb.dw ], [ %i.q, %_ZL19stbi__refill_bufferP13stbi__context.exit.i336 ], [ %i.os, %bb.dx ]
  %.0.i338 = phi i8 [ %i.ov, %bb.dw ], [ %i.pm, %_ZL19stbi__refill_bufferP13stbi__context.exit.i336 ], [ 0, %bb.dx ]
  %i.pp = shl nuw nsw i64 %indvars.iv, 2
  %i.pq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 3
  store i8 %.0.i338, ptr %i.pr, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !162

bb.eb:                                            ; preds = %bb.dp
  %i.ps = load i32, ptr %i.gm, align 8            ; 4 uses
  %i.pt = and i32 %i.ps, 1
  %.not278 = icmp eq i32 %i.pt, 0
  br i1 %.not278, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.pu = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.23, ptr %i.pu, align 8
  br label %.thread399

bb.ed:                                            ; preds = %bb.eb
  %i.pv = shl i32 %i.ps, 1
  %.not279 = icmp eq i32 %i.pv, %i.gt
  br i1 %.not279, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.pw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.22, ptr %i.pw, align 8
  br label %.thread399

bb.ef:                                            ; preds = %bb.ed
  br i1 %i.gl, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.px = add nsw i32 %i.ps, 1
  store i32 %i.px, ptr %i.gm, align 8
  br label %.thread399

bb.eh:                                            ; preds = %bb.ef
  %i.py = load i32, ptr %i.gn, align 8
  %i.pz = icmp eq i32 %i.py, 16
  %i.qa = icmp sgt i32 %i.ps, 0                   ; 2 uses
  br i1 %i.pz, label %.preheader412, label %.preheader414

.preheader414:                                    ; preds = %bb.eh
  br i1 %i.qa, label %.lr.ph740, label %.loopexit

.preheader412:                                    ; preds = %bb.eh
  br i1 %i.qa, label %.lr.ph742, label %.loopexit

.lr.ph742:                                        ; preds = %.preheader412, %.lr.ph742
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %.lr.ph742 ], [ 0, %.preheader412 ] ; 3 uses
  %i.qb = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d)
  %i.qc = trunc nuw i32 %i.qb to i16
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv1071
  store i16 %i.qc, ptr %i.qd, align 2
  %indvars.iv.next1072 = add nuw nsw i64 %indvars.iv1071, 1 ; 2 uses
  %i.qe = load i32, ptr %i.gm, align 8
  %i.qf = sext i32 %i.qe to i64
  %i.qg = icmp slt i64 %indvars.iv.next1072, %i.qf
  %i.qh = icmp samesign ult i64 %indvars.iv1071, 2
  %i.qi = select i1 %i.qg, i1 %i.qh, i1 false
  br i1 %i.qi, label %.lr.ph742, label %.loopexit, !llvm.loop !163

.lr.ph740:                                        ; preds = %.preheader414, %.lr.ph740
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %.lr.ph740 ], [ 0, %.preheader414 ] ; 3 uses
  %i.qj = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d)
  %i.qk = load i32, ptr %i.gn, align 8
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds i8, ptr @_ZL23stbi__depth_scale_table, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1
  %i.qo = trunc i32 %i.qj to i8
  %i.qp = mul i8 %i.qn, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv1068
  store i8 %i.qp, ptr %i.qq, align 1
  %indvars.iv.next1069 = add nuw nsw i64 %indvars.iv1068, 1 ; 2 uses
  %i.qr = load i32, ptr %i.gm, align 8
  %i.qs = sext i32 %i.qr to i64
  %i.qt = icmp slt i64 %indvars.iv.next1069, %i.qs
  %i.qu = icmp samesign ult i64 %indvars.iv1068, 2
  %i.qv = select i1 %i.qt, i1 %i.qu, i1 false
  br i1 %i.qv, label %.lr.ph740, label %.loopexit, !llvm.loop !164

bb.ei:                                            ; preds = %bb.aw
  %.not271 = icmp eq i32 %.0230, 0
  br i1 %.not271, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.qw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.18, ptr %i.qw, align 8
  br label %.thread399

bb.ek:                                            ; preds = %bb.ei
  %i.qx = icmp eq i8 %.0204, 0                    ; 2 uses
  %i.qy = icmp ne i32 %.0223, 0
  %or.cond = select i1 %i.qx, i1 true, i1 %i.qy
  br i1 %or.cond, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.qz = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.24, ptr %i.qz, align 8
  br label %.thread399

bb.em:                                            ; preds = %bb.ek
  br i1 %i.gl, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  br i1 %i.qx, label %.thread399, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ra = zext nneg i8 %.0204 to i32
  store i32 %i.ra, ptr %i.gm, align 8
  br label %.thread399

bb.ep:                                            ; preds = %bb.em
  %i.rb = icmp ugt i32 %i.gt, 1073741824
  br i1 %i.rb, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.rc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.25, ptr %i.rc, align 8
  br label %.thread399

bb.er:                                            ; preds = %bb.ep
  %i.rd = add i32 %i.gt, %.0212                   ; 5 uses
  %i.re = icmp slt i32 %i.rd, %.0212
  br i1 %i.re, label %.thread399, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.rf = icmp ugt i32 %i.rd, %.0215
  br i1 %i.rf, label %bb.et, label %._crit_edge

._crit_edge:                                      ; preds = %bb.es
  %.pre1079 = load ptr, ptr %i.f, align 8
  br label %bb.ex

bb.et:                                            ; preds = %bb.es
  %i.rg = icmp eq i32 %.0215, 0
  %i.rh = tail call i32 @llvm.umax.i32(i32 %i.gt, i32 4096)
  %.1216 = select i1 %i.rg, i32 %i.rh, i32 %.0215
  br label %bb.eu

bb.eu:                                            ; preds = %bb.eu, %bb.et
  %.2217 = phi i32 [ %.1216, %bb.et ], [ %i.rj, %bb.eu ] ; 4 uses
  %i.ri = icmp ugt i32 %i.rd, %.2217
  %i.rj = shl i32 %.2217, 1
  br i1 %i.ri, label %bb.eu, label %bb.ev, !llvm.loop !165

bb.ev:                                            ; preds = %bb.eu
  %i.rk = load ptr, ptr %i.f, align 8
  %i.rl = zext i32 %.2217 to i64
  %i.rm = tail call ptr @realloc(ptr noundef %i.rk, i64 noundef %i.rl) #51 ; 3 uses
  %.not272 = icmp eq ptr %i.rm, null
  br i1 %.not272, label %.thread382, label %bb.ew

.thread382:                                       ; preds = %bb.ev
  %i.rn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.rn, align 8
  br label %.thread399

bb.ew:                                            ; preds = %bb.ev
  store ptr %i.rm, ptr %i.f, align 8
  br label %bb.ex

bb.ex:                                            ; preds = %._crit_edge, %bb.ew
  %i.ro = phi ptr [ %i.rm, %bb.ew ], [ %.pre1079, %._crit_edge ]
  %.3218 = phi i32 [ %.2217, %bb.ew ], [ %.0215, %._crit_edge ] ; 2 uses
  %i.rp = zext i32 %.0212 to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rp ; 3 uses
  %i.rr = load ptr, ptr %i.k, align 8
  %.not.i340 = icmp eq ptr %i.rr, null
  br i1 %.not.i340, label %..thread_crit_edge.i342, label %bb.ey

..thread_crit_edge.i342:                          ; preds = %bb.ex
  %.pre.i344 = load ptr, ptr %i.h, align 8
  %.pre35.i = load ptr, ptr %i.i, align 8
  br label %.thread.i341

bb.ey:                                            ; preds = %bb.ex
  %i.rs = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.rt = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ru = ptrtoint ptr %i.rs to i64
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = sub i64 %i.ru, %i.rv                    ; 2 uses
  %i.rx = trunc i64 %i.rw to i32                  ; 2 uses
  %i.ry = icmp sgt i32 %i.gt, %i.rx
  br i1 %i.ry, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %.thread.i341

end_hunk_2
begin_hunk_3_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a
  br i1 %lcmp.mod2138.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i357.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i358.3, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa ]
  %.14651.i.epil.init = phi ptr [ %i.yn, %.lr.ph.preheader.i ], [ %i.aay, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa ]
  %lcmp.mod2139 = icmp ne i64 %xtraiter2137, 0
  call void @llvm.assume(i1 %lcmp.mod2139)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i357.epil = phi i64 [ %indvars.iv.i357.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i358.epil, %.lr.ph.i.epil ] ; 2 uses
  %.14651.i.epil = phi ptr [ %.14651.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.abr, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.abl = getelementptr inbounds nuw i8, ptr %i.yj, i64 %indvars.iv.i357.epil
  %i.abm = load i8, ptr %i.abl, align 1
  %i.abn = zext i8 %i.abm to i64
  %i.abo = shl nuw nsw i64 %i.abn, 2
  %i.abp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.abo
  %i.abq = load <4 x i8>, ptr %i.abp, align 4
  store <4 x i8> %i.abq, ptr %.14651.i.epil, align 1
  %i.abr = getelementptr inbounds nuw i8, ptr %.14651.i.epil, i64 4
  %indvars.iv.next.i358.epil = add nuw nsw i64 %indvars.iv.i357.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2137
  br i1 %epil.iter.cmp.not, label %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, label %.lr.ph.i.epil, !llvm.loop !172

_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit: ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit1816.unr-lcssa, %.lr.ph.i.epil, %.lr.ph55.i.epil.preheader, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.loopexit.unr-lcssa, %.preheader49.i, %.preheader.i
  call void @free(ptr noundef %i.yj) #47
  store ptr %i.yn, ptr %i.g, align 8
  br label %bb.gb

bb.fz:                                            ; preds = %bb.fw
  br i1 %i.ua, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.abs = load i32, ptr %i.gm, align 8
  %i.abt = add nsw i32 %i.abs, 1
  store i32 %i.abt, ptr %i.gm, align 8
  br label %bb.gb

bb.gb:                                            ; preds = %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit, %bb.fz, %bb.ga
  %i.abu = load ptr, ptr %i.e, align 8
  call void @free(ptr noundef %i.abu) #47
  store ptr null, ptr %i.e, align 8
  %i.abv = call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d) ; 0 uses
  %i.abw = call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef nonnull %i.d) ; 0 uses
  br label %.thread399

bb.gc:                                            ; preds = %bb.aw
  %.not297 = icmp eq i32 %.0230, 0
  br i1 %.not297, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.abx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.18, ptr %i.abx, align 8
  br label %.thread399

bb.ge:                                            ; preds = %bb.gc
  %i.aby = and i32 %i.gu, 8192
  %i.abz = icmp eq i32 %i.aby, 0
  br i1 %i.abz, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.aca = lshr i32 %i.gu, 8
  %i.acb = trunc nuw i32 %i.aca to i8
  store i8 %i.acb, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, align 16
  %i.acc = trunc i32 %i.gu to i8
  store i8 %i.acc, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 1), align 1
  %i.acd = lshr i32 %i.gw, 8
  %i.ace = trunc nuw i32 %i.acd to i8
  store i8 %i.ace, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 2), align 2
  %i.acf = trunc i32 %i.gw to i8
  store i8 %i.acf, ptr getelementptr inbounds nuw (i8, ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, i64 3), align 1
  %i.acg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @_ZZL20stbi__parse_png_fileP9stbi__pngiiE13invalid_chunk, ptr %i.acg, align 8
  br label %.thread399

bb.gg:                                            ; preds = %bb.ge
  %i.ach = icmp eq i32 %i.gt, 0
  br i1 %i.ach, label %.loopexit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aci = icmp slt i32 %i.gr, 0
  br i1 %i.aci, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.acj = load ptr, ptr %i.i, align 8
  store ptr %i.acj, ptr %i.h, align 8
  br label %.loopexit

bb.gj:                                            ; preds = %bb.gh
  %i.ack = load ptr, ptr %i.k, align 8
  %.not.i360 = icmp eq ptr %i.ack, null
  br i1 %.not.i360, label %..thread_crit_edge.i362, label %bb.gk

..thread_crit_edge.i362:                          ; preds = %bb.gj
  %.pre.i364 = load ptr, ptr %i.h, align 8
  br label %.thread.i361

bb.gk:                                            ; preds = %bb.gj
  %i.acl = load ptr, ptr %i.i, align 8            ; 2 uses
  %i.acm = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.acn = ptrtoint ptr %i.acl to i64
  %i.aco = ptrtoint ptr %i.acm to i64
  %i.acp = sub i64 %i.acn, %i.aco
  %i.acq = trunc i64 %i.acp to i32                ; 2 uses
  %i.acr = icmp sgt i32 %i.gt, %i.acq
  br i1 %i.acr, label %bb.gl, label %.thread.i361

bb.gl:                                            ; preds = %bb.gk
  store ptr %i.acl, ptr %i.h, align 8
  %i.acs = load ptr, ptr %i.gp, align 8
  %i.act = load ptr, ptr %i.l, align 8
  %i.acu = sub nsw i32 %i.gt, %i.acq
  tail call void %i.acs(ptr noundef %i.act, i32 noundef %i.acu), !inline_history !159
  br label %.loopexit

.thread.i361:                                     ; preds = %bb.gk, %..thread_crit_edge.i362
  %i.acv = phi ptr [ %.pre.i364, %..thread_crit_edge.i362 ], [ %i.acm, %bb.gk ]
  %i.acw = zext nneg i32 %i.gt to i64
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acv, i64 %i.acw
  store ptr %i.acx, ptr %i.h, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL10stbi__get8P13stbi__context.exit339, %.lr.ph740, %.lr.ph742, %_ZL10stbi__get8P13stbi__context.exit333, %.preheader416, %.preheader414, %.preheader412, %.preheader, %_ZL10stbi__getnP13stbi__contextPhi.exit, %bb.ax, %bb.az, %bb.bc, %.thread.i, %bb.cm, %bb.co, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386, %bb.gg, %bb.gi, %bb.gl, %.thread.i361
  %.2243 = phi i32 [ %.0241, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0241, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0241, %.thread.i ], [ %.0241, %.thread.i361 ], [ %.0241, %.preheader412 ], [ %.0241, %.preheader414 ], [ %.0241, %.preheader ], [ %.0241, %bb.ax ], [ %.0241, %bb.az ], [ %.0241, %bb.bc ], [ %i.kq, %bb.co ], [ %i.kq, %bb.cm ], [ %.0241, %bb.gg ], [ %.0241, %bb.gi ], [ %.0241, %bb.gl ], [ %.0241, %.preheader416 ], [ %.0241, %.lr.ph740 ], [ %.0241, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0241, %.lr.ph742 ], [ %.0241, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.2239 = phi i32 [ %.0237, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0237, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0237, %.thread.i ], [ %.0237, %.thread.i361 ], [ %.0237, %.preheader412 ], [ %.0237, %.preheader414 ], [ %.0237, %.preheader ], [ %.0237, %bb.ax ], [ %.0237, %bb.az ], [ %.0237, %bb.bc ], [ %i.kk, %bb.co ], [ %i.kk, %bb.cm ], [ %.0237, %bb.gg ], [ %.0237, %bb.gi ], [ %.0237, %bb.gl ], [ %.0237, %.preheader416 ], [ %.0237, %.lr.ph740 ], [ %.0237, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0237, %.lr.ph742 ], [ %.0237, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1235 = phi i32 [ %.0234, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0234, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ 1, %.thread.i ], [ %.0234, %.thread.i361 ], [ %.0234, %.preheader412 ], [ %.0234, %.preheader414 ], [ %.0234, %.preheader ], [ 1, %bb.ax ], [ 1, %bb.az ], [ 1, %bb.bc ], [ %.0234, %bb.co ], [ %.0234, %bb.cm ], [ %.0234, %bb.gg ], [ %.0234, %bb.gi ], [ %.0234, %bb.gl ], [ %.0234, %.preheader416 ], [ %.0234, %.lr.ph740 ], [ %.0234, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0234, %.lr.ph742 ], [ %.0234, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.2232 = phi i32 [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0230, %.thread.i ], [ 0, %.thread.i361 ], [ 0, %.preheader412 ], [ 0, %.preheader414 ], [ 0, %.preheader ], [ %.0230, %bb.ax ], [ %.0230, %bb.az ], [ %.0230, %bb.bc ], [ 0, %bb.co ], [ 0, %bb.cm ], [ 0, %bb.gg ], [ 0, %bb.gi ], [ 0, %bb.gl ], [ 0, %.preheader416 ], [ 0, %.lr.ph740 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit333 ], [ 0, %.lr.ph742 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1224 = phi i32 [ %.0223, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0223, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0223, %.thread.i ], [ %.0223, %.thread.i361 ], [ %.0223, %.preheader412 ], [ %.0223, %.preheader414 ], [ %.zext, %.preheader ], [ %.0223, %bb.ax ], [ %.0223, %bb.az ], [ %.0223, %bb.bc ], [ %.0223, %bb.co ], [ %.0223, %bb.cm ], [ %.0223, %bb.gg ], [ %.0223, %bb.gi ], [ %.0223, %bb.gl ], [ %.0223, %.preheader416 ], [ %.0223, %.lr.ph740 ], [ %.zext, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0223, %.lr.ph742 ], [ %.0223, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.4219 = phi i32 [ %.3218, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.3218, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0215, %.thread.i ], [ %.0215, %.thread.i361 ], [ %.0215, %.preheader412 ], [ %.0215, %.preheader414 ], [ %.0215, %.preheader ], [ %.0215, %bb.ax ], [ %.0215, %bb.az ], [ %.0215, %bb.bc ], [ %.0215, %bb.co ], [ %.0215, %bb.cm ], [ %.0215, %bb.gg ], [ %.0215, %bb.gi ], [ %.0215, %bb.gl ], [ %.0215, %.preheader416 ], [ %.0215, %.lr.ph740 ], [ %.0215, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0215, %.lr.ph742 ], [ %.0215, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1213 = phi i32 [ %i.rd, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %i.rd, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0212, %.thread.i ], [ %.0212, %.thread.i361 ], [ %.0212, %.preheader412 ], [ %.0212, %.preheader414 ], [ %.0212, %.preheader ], [ %.0212, %bb.ax ], [ %.0212, %bb.az ], [ %.0212, %bb.bc ], [ %.0212, %bb.co ], [ %.0212, %bb.cm ], [ %.0212, %bb.gg ], [ %.0212, %bb.gi ], [ %.0212, %bb.gl ], [ %.0212, %.preheader416 ], [ %.0212, %.lr.ph740 ], [ %.0212, %_ZL10stbi__get8P13stbi__context.exit333 ], [ %.0212, %.lr.ph742 ], [ %.0212, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.1210 = phi i8 [ %.0209, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0209, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0209, %.thread.i ], [ %.0209, %.thread.i361 ], [ 1, %.preheader412 ], [ 1, %.preheader414 ], [ %.0209, %.preheader ], [ %.0209, %bb.ax ], [ %.0209, %bb.az ], [ %.0209, %bb.bc ], [ %.0209, %bb.co ], [ %.0209, %bb.cm ], [ %.0209, %bb.gg ], [ %.0209, %bb.gi ], [ %.0209, %bb.gl ], [ %.0209, %.preheader416 ], [ 1, %.lr.ph740 ], [ %.0209, %_ZL10stbi__get8P13stbi__context.exit333 ], [ 1, %.lr.ph742 ], [ %.0209, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %.3207 = phi i8 [ %.0204, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread386 ], [ %.0204, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ %.0204, %.thread.i ], [ %.0204, %.thread.i361 ], [ 0, %.preheader412 ], [ 0, %.preheader414 ], [ %.0204, %.preheader ], [ %.0204, %bb.ax ], [ %.0204, %bb.az ], [ %.0204, %bb.bc ], [ %.1205, %bb.co ], [ 0, %bb.cm ], [ %.0204, %bb.gg ], [ %.0204, %bb.gi ], [ %.0204, %bb.gl ], [ 4, %.preheader416 ], [ 0, %.lr.ph740 ], [ %.0204, %_ZL10stbi__get8P13stbi__context.exit333 ], [ 0, %.lr.ph742 ], [ 4, %_ZL10stbi__get8P13stbi__context.exit339 ]
  %i.acy = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  %i.acz = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.d) ; 0 uses
  br label %bb.aw, !llvm.loop !173

.thread399:                                       ; preds = %bb.er, %.thread.i353, %_ZL17stbi__malloc_mad3iiii.exit.thread.i, %bb.cc, %bb.ck, %bb.cn, %bb.be, %bb.cp, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.by, %bb.br, %bb.bk, %bb.bi, %bb.bg, %bb.fa, %bb.fd, %bb.gb, %bb.fb, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread, %bb.eo, %bb.el, %.thread382, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, %bb.en, %bb.eq, %bb.ej, %bb.ec, %bb.eg, %bb.ee, %bb.dv, %bb.dt, %bb.dr, %bb.do, %bb.dm, %bb.cv, %bb.ct, %bb.cr, %bb.gf, %bb.gd, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, %_ZL22stbi__check_png_headerP13stbi__context.exit
  %.7 = phi i32 [ 0, %_ZL22stbi__check_png_headerP13stbi__context.exit.thread ], [ 1, %_ZL22stbi__check_png_headerP13stbi__context.exit ], [ 0, %bb.cc ], [ 0, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread ], [ 0, %_ZL24stbi__expand_png_paletteP9stbi__pngPhii.exit.thread ], [ 0, %_ZL22stbi__create_png_imageP9stbi__pngPhjiiii.exit ], [ 1, %bb.gb ], [ 1, %bb.fb ], [ 0, %bb.fd ], [ 0, %assimp_stbi_zlib_decode_malloc_guesssize_headerflag.exit ], [ 0, %bb.fa ], [ 1, %bb.eo ], [ 0, %bb.el ], [ 0, %.thread382 ], [ 0, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread ], [ 1, %bb.en ], [ 0, %bb.eq ], [ 0, %.thread.i353 ], [ 0, %bb.ej ], [ 0, %bb.ec ], [ 1, %bb.eg ], [ 0, %bb.ee ], [ 0, %bb.dv ], [ 0, %bb.dt ], [ 1, %bb.dr ], [ 0, %bb.do ], [ 0, %bb.dm ], [ 0, %bb.cv ], [ 0, %bb.ct ], [ 0, %bb.cr ], [ 0, %bb.gd ], [ 0, %bb.gf ], [ 0, %bb.bg ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %bb.br ], [ 0, %bb.by ], [ 0, %bb.cb ], [ 0, %bb.cd ], [ 0, %bb.cf ], [ 0, %bb.ch ], [ 0, %bb.cp ], [ 0, %bb.be ], [ 0, %bb.cn ], [ 0, %bb.ck ], [ 0, %_ZL17stbi__malloc_mad3iiii.exit.thread.i ], [ 0, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  ret i32 %.7
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 65536) i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !160 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = load i8, ptr %i.ai, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit7

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %.not.i2 = icmp eq i32 %i.an, 0
  br i1 %.not.i2, label %_ZL10stbi__get8P13stbi__context.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call noundef i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au), !inline_history !160 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i3 = load i8, ptr %i.as, align 1
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

_ZL19stbi__refill_bufferP13stbi__context.exit.i4: ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i3, %bb.k ]
  %.sink.i.i5 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i5, ptr %i.c, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit7

_ZL10stbi__get8P13stbi__context.exit7:            ; preds = %bb.g, %bb.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4
  %.0.i6 = phi i8 [ %i.al, %bb.g ], [ %i.bk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4 ], [ 0, %bb.h ]
  %i.bm = zext i8 %.0.i to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = zext i8 %.0.i6 to i32
  %i.bp = or disjoint i32 %i.bn, %i.bo
  ret i32 %i.bp
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL28stbi__compute_transparency16P9stbi__pngPti(i32 %.0.val.0.val, i32 %.0.val.4.val, ptr captures(none) %.24.val, ptr noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #34 {
bb.a:
  %i.a = mul i32 %.0.val.4.val, %.0.val.0.val     ; 8 uses
  %i.b = icmp eq i32 %1, 2
  %.not8 = icmp eq i32 %i.a, 0                    ; 2 uses
  br i1 %i.b, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %.preheader
  %i.e = zext i32 %i.a to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 13
  br i1 %min.iters.check, label %.lr.ph7.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph7.preheader
  %i.f = add i32 %i.a, -1
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = getelementptr i8, ptr %.24.val, i64 %i.h
  %scevgep = getelementptr i8, ptr %i.i, i64 4
  %scevgep2 = getelementptr i8, ptr %0, i64 2
  %bound0 = icmp ult ptr %.24.val, %scevgep2
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph7.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.e, 3                     ; 2 uses
  %i.j = icmp eq i64 %n.mod.vf, 0
  %i.k = select i1 %i.j, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.e, %i.k                 ; 3 uses
  %i.l = shl nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %.24.val, i64 %i.l
  %i.n = trunc i64 %n.vec to i32
  %i.o = load i16, ptr %0, align 2, !alias.scope !174
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2                        ; 4 uses
  %next.gep = getelementptr i8, ptr %.24.val, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %.24.val, i64 %i.p
  %i.r = getelementptr i8, ptr %.24.val, i64 %i.p
  %i.s = getelementptr i8, ptr %.24.val, i64 %i.p
  %wide.vec = load <8 x i16>, ptr %next.gep, align 2, !alias.scope !177, !noalias !174
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.t = icmp ne <4 x i16> %strided.vec, %broadcast.splat
  %i.u = sext <4 x i1> %i.t to <4 x i16>          ; 4 uses
  %i.v = extractelement <4 x i16> %i.u, i64 0
  %i.w = extractelement <4 x i16> %i.u, i64 1
  %i.x = extractelement <4 x i16> %i.u, i64 2
  %i.y = extractelement <4 x i16> %i.u, i64 3
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.aa = getelementptr i8, ptr %i.q, i64 6
  %i.ab = getelementptr i8, ptr %i.r, i64 10
  %i.ac = getelementptr i8, ptr %i.s, i64 14
  store i16 %i.v, ptr %i.z, align 2, !alias.scope !177, !noalias !174
  store i16 %i.w, ptr %i.aa, align 2, !alias.scope !177, !noalias !174
  store i16 %i.x, ptr %i.ab, align 2, !alias.scope !177, !noalias !174
  store i16 %i.y, ptr %i.ac, align 2, !alias.scope !177, !noalias !174
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %.lr.ph7.preheader7, label %vector.body, !llvm.loop !179

.lr.ph7.preheader7:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph7.preheader
  %.06.ph = phi ptr [ %.24.val, %vector.memcheck ], [ %.24.val, %.lr.ph7.preheader ], [ %i.m, %vector.body ] ; 2 uses
  %.0225.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph7.preheader ], [ %i.n, %vector.body ] ; 4 uses
  %i.ae = sub i32 %i.a, %.0225.ph
  %xtraiter = and i32 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph7.prol.loopexit, label %.lr.ph7.prol

.lr.ph7.prol:                                     ; preds = %.lr.ph7.preheader7, %.lr.ph7.prol
  %.06.prol = phi ptr [ %i.ak, %.lr.ph7.prol ], [ %.06.ph, %.lr.ph7.preheader7 ] ; 3 uses
  %.0225.prol = phi i32 [ %i.al, %.lr.ph7.prol ], [ %.0225.ph, %.lr.ph7.preheader7 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph7.prol ], [ 0, %.lr.ph7.preheader7 ]
  %i.af = load i16, ptr %.06.prol, align 2
  %i.ag = load i16, ptr %0, align 2
  %i.ah = icmp ne i16 %i.af, %i.ag
  %i.ai = sext i1 %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.prol, i64 2
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.prol, i64 4 ; 2 uses
  %i.al = add nuw i32 %.0225.prol, 1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph7.prol.loopexit, label %.lr.ph7.prol, !llvm.loop !180

.lr.ph7.prol.loopexit:                            ; preds = %.lr.ph7.prol, %.lr.ph7.preheader7
  %.06.unr = phi ptr [ %.06.ph, %.lr.ph7.preheader7 ], [ %i.ak, %.lr.ph7.prol ]
  %.0225.unr = phi i32 [ %.0225.ph, %.lr.ph7.preheader7 ], [ %i.al, %.lr.ph7.prol ]
  %i.am = sub i32 %.0225.ph, %i.a
  %i.an = icmp ugt i32 %i.am, -4
  br i1 %i.an, label %.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.prol.loopexit, %.lr.ph7
  %.06 = phi ptr [ %i.bl, %.lr.ph7 ], [ %.06.unr, %.lr.ph7.prol.loopexit ] ; 9 uses
  %.0225 = phi i32 [ %i.bm, %.lr.ph7 ], [ %.0225.unr, %.lr.ph7.prol.loopexit ]
  %i.ao = load i16, ptr %.06, align 2
  %i.ap = load i16, ptr %0, align 2
  %i.aq = icmp ne i16 %i.ao, %i.ap
  %i.ar = sext i1 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %.06, i64 2
  store i16 %i.ar, ptr %i.as, align 2
  %i.at = getelementptr inbounds nuw i8, ptr %.06, i64 4
  %i.au = load i16, ptr %i.at, align 2
  %i.av = load i16, ptr %0, align 2
  %i.aw = icmp ne i16 %i.au, %i.av
  %i.ax = sext i1 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %.06, i64 6
  store i16 %i.ax, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %.06, i64 8
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = load i16, ptr %0, align 2
  %i.bc = icmp ne i16 %i.ba, %i.bb
  %i.bd = sext i1 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %.06, i64 10
  store i16 %i.bd, ptr %i.be, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.06, i64 12
  %i.bg = load i16, ptr %i.bf, align 2
  %i.bh = load i16, ptr %0, align 2
  %i.bi = icmp ne i16 %i.bg, %i.bh
  %i.bj = sext i1 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %.06, i64 14
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.06, i64 16
  %i.bm = add nuw i32 %.0225, 4                   ; 2 uses
  %exitcond10.not.3 = icmp eq i32 %i.bm, %i.a
  br i1 %exitcond10.not.3, label %.loopexit, label %.lr.ph7, !llvm.loop !181

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.14 = phi ptr [ %.24.val, %.lr.ph ], [ %i.bz, %bb.f ] ; 5 uses
  %.1233 = phi i32 [ 0, %.lr.ph ], [ %i.ca, %bb.f ]
  %i.bn = load i16, ptr %.14, align 2
  %i.bo = load i16, ptr %0, align 2
  %i.bp = icmp eq i16 %i.bn, %i.bo
  br i1 %i.bp, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %.14, i64 2
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = load i16, ptr %i.c, align 2
  %i.bt = icmp eq i16 %i.br, %i.bs
  br i1 %i.bt, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %.14, i64 4
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = load i16, ptr %i.d, align 2
  %i.bx = icmp eq i16 %i.bv, %i.bw
  br i1 %i.bx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %.14, i64 6
  store i16 0, ptr %i.by, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %.14, i64 8
  %i.ca = add nuw i32 %.1233, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.a
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !182

.loopexit:                                        ; preds = %bb.f, %.lr.ph7.prol.loopexit, %.lr.ph7, %.preheader1, %.preheader
  ret void
}
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_:bb.a
bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #49 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !241

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #49 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #49 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8      ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !241

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #49 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKjfESt10_Select1stIS2_ESt4lessIjESaIS2_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE22_M_emplace_hint_uniqueIJS0_IjS7_EEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const unsigned int, std::__cxx11::basic_string<char>>>, std::less<unsigned int>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  store ptr %0, ptr %3, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #46 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i32, ptr %2, align 8
  store i32 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.d, align 8
  %i.n = load i64, ptr %i.h, align 8
  store i64 %i.n, ptr %i.f, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.o, ptr %i.r, align 8
  store ptr %i.h, ptr %i.e, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.h, align 8
  store ptr %i.a, ptr %i.p, align 8
  %i.s = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.y = load i32, ptr %i.b, align 4
  %i.z = load i32, ptr %i.x, align 4
  %i.aa = icmp ult i32 %i.y, %i.z
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.ab = phi i1 [ %i.aa, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v) #47
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8
  br label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  resume { ptr, i32 } %i.af

bb.h:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.f
  br i1 %i.ah, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.ai = load i64, ptr %i.f, align 8
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #45
  br label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #45
  br label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.08 = phi ptr [ %i.a, %.thread ], [ %i.t, %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  ret ptr %.sroa.0.08
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4
  %i.i = load i32, ptr %2, align 4
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp ult i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !242

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #49 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4
  %.pre82 = load i32, ptr %2, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4                ; 8 uses
  %i.y = load i32, ptr %i.w, align 4              ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #49 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !242

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #49 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIjESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #49 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
end_hunk_4

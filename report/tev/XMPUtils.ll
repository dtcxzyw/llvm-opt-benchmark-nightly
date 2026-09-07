Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/XMPUtils?download=true
inline.NumInlined: 806
inline.NumDeleted: 389
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL15MoveOnePropertyR7XMPMetaPS_PKcS3_:bb.a
  %i.i = and i32 %i.h, -32769
  store i32 %i.i, ptr %i.g, align 8, !tbaa !78
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %i.l, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %_ZNSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE9push_backB8ne180100ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = ashr exact i64 %i.t, 3
  %i.v = add nsw i64 %i.u, 1                      ; 2 uses
  %i.w = icmp ugt i64 %i.v, 2305843009213693951
  br i1 %i.w, label %bb.f, label %_ZNKSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZNKSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #27
  unreachable

_ZNKSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.e
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = sub i64 %i.x, %i.s                       ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.y, 9223372036854775800
  %i.z = ashr exact i64 %i.y, 2
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 2305843009213693951 ; 4 uses
  %i.aa = icmp ne i64 %.0.i.i.i, 0
  call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp ugt i64 %.0.i.i.i, 2305843009213693951
  br i1 %i.ab, label %bb.g, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIP8XMP_NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i

bb.g:                                             ; preds = %_ZNKSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit.i.i
  call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #27
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIP8XMP_NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE11__recommendB8ne180100Em.exit.i.i
  %i.ac = shl nuw i64 %.0.i.i.i, 3
  %i.ad = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.t ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0.i.i.i
  store ptr %i.c, ptr %i.ae, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !61  ; 2 uses
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !64  ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIP8XMP_NodeRNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIP8XMP_NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.aj = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ae, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIP8XMP_NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ah, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIP8XMP_NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ]
  %i.ak = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63, !noalias !138
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 -8 ; 3 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !63, !noalias !138
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIP8XMP_NodeRNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZNSt3__114__split_bufferIP8XMP_NodeRNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIP8XMP_NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i
  %storemerge.i.i = phi ptr [ %i.ae, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIP8XMP_NodeEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %storemerge.i.i, ptr %i.j, align 8, !tbaa !62
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !62
  store ptr %i.af, ptr %i.m, align 8, !tbaa !62
  %.not.i5.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i5.i.i, label %_ZNSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE9push_backB8ne180100ERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__114__split_bufferIP8XMP_NodeRNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ai) #25
  br label %_ZNSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE9push_backB8ne180100ERKS2_.exit

_ZNSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE9push_backB8ne180100ERKS2_.exit: ; preds = %bb.d, %_ZNSt3__114__split_bufferIP8XMP_NodeRNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i, %bb.h
  %.0.i = phi ptr [ %i.p, %bb.d ], [ %i.ag, %_ZNSt3__114__split_bufferIP8XMP_NodeRNS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.ag, %bb.h ]
  store ptr %.0.i, ptr %i.k, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ao = load ptr, ptr %4, align 8, !tbaa !59
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !64 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !61 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.au
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS2_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE9push_backB8ne180100ERKS2_.exit
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.at, ptr nonnull align 8 %i.au, i64 %i.az, i1 false)
  br label %_ZNSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS2_EE.exit

_ZNSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS2_EE.exit: ; preds = %_ZNSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE9push_backB8ne180100ERKS2_.exit, %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.az
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !61
  call void @_Z17DeleteEmptySchemaP8XMP_Node(ptr noundef nonnull %i.b)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %_ZNSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS2_EE.exit
  %i.bb = phi i1 [ true, %_ZNSt3__16vectorIP8XMP_NodeNS_9allocatorIS2_EEE5eraseB8ne180100ENS_11__wrap_iterIPKS2_EE.exit ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i1 %i.bb
}

declare void @_Z7MD5InitP7MD5_CTX(ptr noundef) local_unnamed_addr #4

declare void @_Z9MD5UpdateP7MD5_CTXPhj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_Z8MD5FinalPhP7MD5_CTX(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7XMPMetaD1Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8XMPUtils13MergeFromJPEGEP7XMPMetaRKS0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(352) %1) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN8XMPUtils13ApplyTemplateEP7XMPMetaRKS0_j(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(352) %1, i32 noundef 3)
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72)
  ret void
}

declare void @_ZN8XMPUtils13ApplyTemplateEP7XMPMetaRKS0_j(ptr noundef, ptr noundef nonnull align 8 dereferenceable(352), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8XMPUtils15CurrentDateTimeEP12XMP_DateTime(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.tm, align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = tail call i64 @time(ptr noundef null) #26 ; 2 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !70
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 11, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.79, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 0, ptr %i.f, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.g = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #26 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.h, align 4, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load <4 x i32>, ptr %i.i, align 8, !tbaa !26
  %i.k = add nsw <4 x i32> %i.j, <i32 0, i32 0, i32 1, i32 1900>
  %i.l = shufflevector <4 x i32> %i.k, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.l, ptr %0, align 4, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load <2 x i32>, ptr %1, align 8, !tbaa !26
  %i.o = shufflevector <2 x i32> %i.n, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.o, ptr %i.m, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.p, align 4, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.q, align 1, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.r, i8 0, i64 10, i1 false)
  call void @_ZN8XMPUtils11SetTimeZoneEP12XMP_DateTime(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8XMPUtils11SetTimeZoneEP12XMP_DateTime(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %1 = alloca %struct.tm, align 8                 ; 12 uses
  %2 = alloca %struct.tm, align 8                 ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.tm, align 8                 ; 7 uses
  %4 = alloca %struct.tm, align 8                 ; 7 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !29     ; 3 uses
  %.not.i = icmp eq i32 %i.c, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35
  %.not15.i = icmp eq i32 %i.e, 0
  br i1 %.not15.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36
  %.not16.i = icmp eq i32 %i.g, 0
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.h, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !31   ; 2 uses
  %.not17.i = icmp eq i32 %i.j, 0
  br i1 %.not17.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %.not18.i = icmp eq i32 %i.l, 0
  br i1 %.not18.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  %.not19.i = icmp eq i32 %i.n, 0
  br i1 %.not19.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38
  %.not20.i = icmp eq i32 %i.p, 0
  br i1 %.not20.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.q, align 1, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !33
  %.not21.i = icmp eq i8 %i.s, 0
  br i1 %.not21.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !37
  %.not22.i = icmp eq i32 %i.u, 0
  br i1 %.not22.i, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43
  %.not23.i = icmp eq i32 %i.w, 0
  br i1 %.not23.i, label %bb.m, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 1, ptr %i.x, align 2, !tbaa !34
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !34
  %i.y = icmp eq i8 %.pre.i, 0
  br i1 %i.y, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.z, align 1, !tbaa !32
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.aa, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @.str.80, ptr %i.ab, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i8 0, ptr %i.ac, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !35 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  %or.cond46 = select i1 %.not.i, i1 %i.af, i1 false
  br i1 %or.cond46, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !36
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.aj = tail call i64 @time(ptr noundef null) #26 ; 2 uses
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !70
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.al = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 11, ptr %i.al, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @.str.79, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i8 0, ptr %i.an, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ao = call ptr @localtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %1) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %.pre39 = load i32, ptr %i.i, align 4, !tbaa !31
  br label %bb.t

._crit_edge:                                      ; preds = %bb.o, %bb.p
  %i.ap = phi i32 [ %i.ae, %bb.o ], [ 0, %bb.p ]
  %i.aq = add i32 %i.c, -1900                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 20
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 70)
  %i.as = add nuw i32 %smax, 1903
  %i.at = sub i32 %i.as, %i.c
  %i.au = and i32 %i.at, -4
  %i.av = add i32 %i.aq, %i.au
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !140
  %i.aw = add nsw i32 %i.ap, -1
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !141
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !142
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %i.bb = phi i32 [ %i.j, %._crit_edge ], [ %.pre39, %bb.s ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !143
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load <2 x i32>, ptr %i.bd, align 4, !tbaa !26
  %i.bf = shufflevector <2 x i32> %i.be, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bf, ptr %1, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 -1, ptr %i.bg, align 8, !tbaa !144
  %i.bh = call i64 @mktime(ptr noundef nonnull %1) #26 ; 2 uses
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !70
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bj = call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 11, ptr %i.bj, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @.str.81, ptr %i.bk, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i8 0, ptr %i.bl, align 8, !tbaa !19
  call void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bm = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #26 ; 0 uses
  %i.bn = call ptr @gmtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !145
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !145
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i32 0, ptr %i.bo, align 8, !tbaa !144
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !144
  %i.bq = call i64 @mktime(ptr noundef nonnull %3) #26 ; 2 uses
  %i.br = call i64 @mktime(ptr noundef nonnull %4) #26 ; 2 uses
  %i.bs = icmp ne i64 %i.bq, -1
  %i.bt = icmp ne i64 %i.br, -1
  %or.cond = and i1 %i.bs, %i.bt
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bu = call double @difftime(i64 noundef %i.bq, i64 noundef %i.br) #29
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.bv = call i64 @time(ptr noundef null) #26    ; 2 uses
  store i64 %i.bv, ptr %i.a, align 8, !tbaa !70
  %i.bw = icmp eq i64 %i.bv, -1
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bx = call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 11, ptr %i.bx, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @.str.79, ptr %i.by, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i8 0, ptr %i.bz, align 8, !tbaa !19
  call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ca = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #26 ; 0 uses
  %i.cb = call ptr @gmtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %4) #26 ; 0 uses
  store i32 0, ptr %i.bo, align 8, !tbaa !144
  store i32 0, ptr %i.bp, align 8, !tbaa !144
  %i.cc = call i64 @mktime(ptr noundef nonnull %3) #26 ; 2 uses
  %i.cd = call i64 @mktime(ptr noundef nonnull %4) #26 ; 2 uses
  %i.ce = icmp eq i64 %i.cc, -1
  %i.cf = icmp eq i64 %i.cd, -1
  %or.cond3 = or i1 %i.ce, %i.cf
  br i1 %or.cond3, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cg = call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 11, ptr %i.cg, align 8, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr @.str.81, ptr %i.ch, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i8 0, ptr %i.ci, align 8, !tbaa !19
  call void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cj = call double @difftime(i64 noundef %i.cc, i64 noundef %i.cd) #29
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %.0 = phi double [ %i.bu, %bb.w ], [ %i.cj, %bb.ab ] ; 5 uses
  %i.ck = fcmp ogt double %.0, 0.000000e+00
  br i1 %i.ck, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i8 1, ptr %i.r, align 1, !tbaa !33
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.cl = fcmp oeq double %.0, 0.000000e+00
  br i1 %i.cl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i8 0, ptr %i.r, align 1, !tbaa !33
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  store i8 -1, ptr %i.r, align 1, !tbaa !33
  %i.cm = fneg double %.0
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ad
  %.1 = phi double [ %.0, %bb.ad ], [ %.0, %bb.af ], [ %i.cm, %bb.ag ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.co = insertelement <2 x double> poison, double %.1, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fdiv <2 x double> %i.cp, <double 3.600000e+03, double 6.000000e+01> ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  %i.cs = fptosi double %i.cr to i32              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !37
  %i.cu = sitofp i32 %i.cs to double
  %i.cv = fneg double %i.cu
  %i.cw = extractelement <2 x double> %i.cq, i64 1
  %i.cx = call double @llvm.fmuladd.f64(double %i.cv, double 6.000000e+01, double %i.cw)
  %i.cy = fptosi double %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !43
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.da, align 1, !tbaa !32
  store i8 1, ptr %i.cn, align 2, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN8XMPUtils16ConvertToUTCTimeEP12XMP_DateTime(ptr nofree noundef captures(none) %0) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !29
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !35
  %.not15.i = icmp eq i32 %i.c, 0
  br i1 %.not15.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36
  %.not16.i = icmp eq i32 %i.e, 0
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.f, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31   ; 3 uses
  %.not17.i = icmp eq i32 %i.h, 0
  br i1 %.not17.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39
  %.not18.i = icmp eq i32 %i.j, 0
  br i1 %.not18.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40
end_hunk_0

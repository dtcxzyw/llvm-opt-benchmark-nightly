Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Sample_TempObstacles?download=true
inline.NumInlined: 189
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN20Sample_TempObstacles7loadAllEPKc:bb.a
bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !62
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !105
  %i.aq = call noundef i32 @_ZN11dtTileCache7addTileEPhihPj(ptr noundef nonnull align 8 dereferenceable(912) %i.ap, ptr noundef nonnull %i.an, i32 noundef %i.ak, i8 noundef zeroext 1, ptr noundef nonnull %i.a) #12
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_Z6dtFreePv(ptr noundef nonnull %i.an) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.as = load i32, ptr %i.a, align 4, !tbaa !62  ; 2 uses
  %.not49 = icmp eq i32 %i.as, 0
  br i1 %.not49, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !105
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.av = call noundef i32 @_ZN11dtTileCache16buildNavMeshTileEjP9dtNavMesh(ptr noundef nonnull align 8 dereferenceable(912) %i.at, i32 noundef %i.as, ptr noundef %i.au) #12 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.aw = add nuw nsw i32 %.059, 1                ; 2 uses
  %i.ax = load i32, ptr %i.ac, align 4, !tbaa !276
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.p, label %.thread52, !llvm.loop !275

.thread56:                                        ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.thread52

.loopexit:                                        ; preds = %bb.p, %bb.t
  %i.az = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.z

.thread52:                                        ; preds = %bb.y, %.preheader, %.thread56
  %i.ba = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %bb.k, %bb.m, %bb.o, %.thread52, %bb.i, %bb.g, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z
  ret void
}

declare noundef i32 @_ZN14dtNavMeshQuery4initEPK9dtNavMeshi(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN5ImGui8UnindentEf(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN20Sample_TempObstacles11drawToolsUIEv(ptr noundef nonnull align 8 dereferenceable(276) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i8 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #12, !call_target !164
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i8 [ %i.f, %bb.b ], [ 0, %bb.a ]     ; 6 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @toolNames, i64 32), align 8, !tbaa !78
  %i.i = icmp eq i8 %i.g, 4
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef %i.h, i1 noundef zeroext %i.i) #12
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull dereferenceable(33392) ptr @_Znwm(i64 noundef 33392) #13 ; 2 uses
  tail call void @_ZN17NavMeshTesterToolC1Ev(ptr noundef nonnull align 8 dereferenceable(33392) %i.k) #12
  tail call void @_ZN6Sample7setToolEP10SampleTool(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.k) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @toolNames, i64 16), align 8, !tbaa !78
  %i.m = icmp eq i8 %i.g, 2
  %i.n = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef %i.l, i1 noundef zeroext %i.m) #12
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #13 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV25TempObstacleHighlightTool, i64 16), ptr %i.o, align 16, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.q, i8 0, i64 21, i1 false)
  tail call void @_ZN6Sample7setToolEP10SampleTool(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.o) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @toolNames, i64 24), align 8, !tbaa !78
  %i.s = icmp eq i8 %i.g, 3
  %i.t = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef %i.r, i1 noundef zeroext %i.s) #12
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #13 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV22TempObstacleCreateTool, i64 16), ptr %i.u, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !103
  tail call void @_ZN6Sample7setToolEP10SampleTool(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.u) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @toolNames, i64 48), align 8, !tbaa !78
  %i.x = icmp eq i8 %i.g, 6
  %i.y = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef %i.w, i1 noundef zeroext %i.x) #12
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV21OffMeshConnectionTool, i64 16), ptr %i.z, align 16, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !279
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 29
  store i8 1, ptr %i.ac, align 1, !tbaa !280
  tail call void @_ZN6Sample7setToolEP10SampleTool(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.z) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @toolNames, i64 56), align 8, !tbaa !78
  %i.ae = icmp eq i8 %i.g, 7
  %i.af = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef %i.ad, i1 noundef zeroext %i.ae) #12
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #13 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV16ConvexVolumeTool, i64 16), ptr %i.ag, align 16, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !282
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 4, ptr %i.aj, align 16, !tbaa !283
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store <2 x float> <float 0.000000e+00, float 6.000000e+00>, ptr %i.ak, align 4, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  store float 1.000000e+00, ptr %i.al, align 4, !tbaa !284
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) %scevgep.i, i8 0, i64 52, i1 false)
  tail call void @_ZN6Sample7setToolEP10SampleTool(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.ag) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @toolNames, i64 64), align 8, !tbaa !78
  %i.ao = icmp eq i8 %i.g, 8
  %i.ap = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef %i.an, i1 noundef zeroext %i.ao) #12
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV9CrowdTool, i64 16), ptr %i.aq, align 16, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.as, i8 0, i64 17, i1 false)
  tail call void @_ZN6Sample7setToolEP10SampleTool(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.aq) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @_ZN5ImGui9SeparatorEv() #12
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !159 ; 3 uses
  %.not7 = icmp eq ptr %i.at, null
  br i1 %.not7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #12, !call_target !201
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN17NavMeshTesterToolC1Ev(ptr noundef nonnull align 8 dereferenceable(33392)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN20Sample_TempObstacles11drawDebugUIEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(276) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %.not = icmp eq ptr %i.b, null                  ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = icmp ne ptr %i.d, null
  %i.f = zext i1 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !136
  %i.i = icmp ne ptr %i.h, null
  %i.j = zext i1 %i.i to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ %i.f, %bb.b ] ; 2 uses
  %.sroa.12.0 = phi i8 [ 0, %bb.a ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.21.0 = phi i32 [ 2, %bb.a ], [ 0, %bb.b ]
  %i.k = xor i8 %.sroa.0.0, 1
  %i.l = zext nneg i8 %i.k to i32                 ; 2 uses
  %spec.select.2 = mul nuw nsw i32 %i.l, 3
  %i.m = xor i8 %.sroa.12.0, 1
  %i.n = zext nneg i8 %i.m to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %i.n
  %reass.add = shl nuw nsw i32 %i.l, 1
  %spec.select.5 = add nuw nsw i32 %spec.select.3, %reass.add
  %spec.select.7 = add nuw nsw i32 %spec.select.5, %.sroa.21.0 ; 2 uses
  %i.o = icmp eq i32 %spec.select.7, 8
  br i1 %i.o, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.25) #12
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %.not) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 16 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !211
  %i.r = icmp eq i32 %i.q, 6
  %i.s = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.26, i1 noundef zeroext %i.r) #12
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 6, ptr %i.p, align 4, !tbaa !211
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  %i.t = trunc nuw i8 %.sroa.0.0 to i1
  %i.u = xor i1 %i.t, true                        ; 5 uses
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.u) #12
  %i.v = load i32, ptr %i.p, align 4, !tbaa !211
  %i.w = icmp eq i32 %i.v, 0
  %i.x = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.27, i1 noundef zeroext %i.w) #12
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 4, !tbaa !211
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.u) #12
  %i.y = load i32, ptr %i.p, align 4, !tbaa !211
  %i.z = icmp eq i32 %i.y, 5
  %i.aa = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.28, i1 noundef zeroext %i.z) #12
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 5, ptr %i.p, align 4, !tbaa !211
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.u) #12
  %i.ab = load i32, ptr %i.p, align 4, !tbaa !211
  %i.ac = icmp eq i32 %i.ab, 1
  %i.ad = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.29, i1 noundef zeroext %i.ac) #12
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.p, align 4, !tbaa !211
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.u) #12
  %i.ae = load i32, ptr %i.p, align 4, !tbaa !211
  %i.af = icmp eq i32 %i.ae, 2
  %i.ag = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.30, i1 noundef zeroext %i.af) #12
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr %i.p, align 4, !tbaa !211
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  %i.ah = trunc nuw i8 %.sroa.12.0 to i1
  %i.ai = xor i1 %i.ah, true
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.ai) #12
  %i.aj = load i32, ptr %i.p, align 4, !tbaa !211
  %i.ak = icmp eq i32 %i.aj, 3
  %i.al = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.31, i1 noundef zeroext %i.ak) #12
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 3, ptr %i.p, align 4, !tbaa !211
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.u) #12
  %i.am = load i32, ptr %i.p, align 4, !tbaa !211
  %i.an = icmp eq i32 %i.am, 4
  %i.ao = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.32, i1 noundef zeroext %i.an) #12
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 4, ptr %i.p, align 4, !tbaa !211
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %.not) #12
  %i.ap = load i32, ptr %i.p, align 4, !tbaa !211
  %i.aq = icmp eq i32 %i.ap, 7
  %i.ar = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.33, i1 noundef zeroext %i.aq) #12
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 7, ptr %i.p, align 4, !tbaa !211
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  %.not11 = icmp eq i32 %spec.select.7, 0
  br i1 %.not11, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.34) #12
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.35) #12
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.36) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.c
  ret void
}

declare void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN5ImGui11EndDisabledEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN20Sample_TempObstacles6renderEv(ptr noundef nonnull align 8 dereferenceable(276) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 7 uses
  %i.c = alloca [6 x i32], align 16               ; 4 uses
  %i.d = alloca [3 x float], align 4              ; 8 uses
  %i.e = alloca [3 x float], align 4              ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 6 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 2
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = sdiv i32 %i.r, 3
  %.off = add i32 %i.r, 2
  %i.t = icmp ult i32 %.off, 5
  br i1 %i.t, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 6 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !211
  %.not19 = icmp eq i32 %i.w, 1
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load float, ptr %i.u, align 4, !tbaa !132
  %i.y = fmul float %i.x, 1.000000e+01
  %i.z = fdiv float 1.000000e+00, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !288
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 2
  %i.al = trunc i64 %i.ak to i32
  %i.am = sdiv i32 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load float, ptr %i.an, align 8, !tbaa !212
  tail call void @_Z23duDebugDrawTriMeshSlopeP11duDebugDrawPKfiPKiS2_iff(ptr noundef nonnull %i.aa, ptr noundef %i.m, i32 noundef %i.s, ptr noundef %i.ac, ptr noundef %i.ae, i32 noundef %i.am, float noundef %i.ao, float noundef %i.z) #12
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !30
  tail call void @_ZN9InputGeom22drawOffMeshConnectionsEP11duDebugDrawb(ptr noundef nonnull align 8 dereferenceable(448) %i.ap, ptr noundef nonnull %i.aa, i1 noundef zeroext false) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !105 ; 7 uses
  %.not20 = icmp eq ptr %i.ar, null
  br i1 %.not20, label %_ZN12_GLOBAL__N_113drawObstaclesEP11duDebugDrawPK11dtTileCache.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.v, align 4, !tbaa !211
  %i.at = icmp eq i32 %i.as, 7
  br i1 %i.at, label %bb.g, label %.thread32

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 84 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !150 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.h

.preheader.i:                                     ; preds = %bb.j
  %i.bd = icmp sgt i32 %i.bs, 0
  br i1 %i.bd, label %.lr.ph34.i, label %.loopexit

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  br label %bb.k

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %i.bf = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.bs, %bb.j ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !151
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !154 ; 2 uses
  %.not31.i = icmp eq ptr %i.bj, null
  br i1 %.not31.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNK11dtTileCache19calcTightTileBoundsEPK22dtTileCacheLayerHeaderPfS3_(ptr noundef nonnull align 8 dereferenceable(912) %i.ar, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #12
  %i.bk = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bl = call noundef i32 @_Z10duIntToColii(i32 noundef %i.bk, i32 noundef 64) #12 ; 2 uses
  call void @_Z15duCalcBoxColorsPjjj(ptr noundef nonnull %i.c, i32 noundef %i.bl, i32 noundef %i.bl) #12
  %i.bm = load float, ptr %i.d, align 4, !tbaa !41
  %i.bn = load float, ptr %i.az, align 4, !tbaa !41
  %i.bo = load float, ptr %i.ba, align 4, !tbaa !41
  %i.bp = load float, ptr %i.e, align 4, !tbaa !41
  %i.bq = load float, ptr %i.bb, align 4, !tbaa !41
  %i.br = load float, ptr %i.bc, align 4, !tbaa !41
  call void @_Z14duDebugDrawBoxP11duDebugDrawffffffPKj(ptr noundef nonnull %i.au, float noundef %i.bm, float noundef %i.bn, float noundef %i.bo, float noundef %i.bp, float noundef %i.bq, float noundef %i.br, ptr noundef nonnull %i.c) #12
  %.pre.i = load i32, ptr %i.av, align 4, !tbaa !150
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bs = phi i32 [ %i.bf, %bb.h ], [ %.pre.i, %bb.i ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next.i, %i.bt
  br i1 %i.bu, label %bb.h, label %.preheader.i, !llvm.loop !285

bb.k:                                             ; preds = %bb.m, %.lr.ph34.i
  %i.bv = phi i32 [ %i.bs, %.lr.ph34.i ], [ %i.cs, %bb.m ]
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph34.i ], [ %indvars.iv.next37.i, %bb.m ] ; 3 uses
  %i.bw = load ptr, ptr %i.ay, align 8, !tbaa !151
  %i.bx = getelementptr inbounds nuw [56 x i8], ptr %i.bw, i64 %indvars.iv36.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !154 ; 2 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNK11dtTileCache19calcTightTileBoundsEPK22dtTileCacheLayerHeaderPfS3_(ptr noundef nonnull align 8 dereferenceable(912) %i.ar, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #12
  %i.ca = load float, ptr %i.be, align 4, !tbaa !213
  %i.cb = fmul float %i.ca, 1.000000e-01          ; 3 uses
  %i.cc = load float, ptr %i.d, align 4, !tbaa !41
  %i.cd = fsub float %i.cc, %i.cb
  %i.ce = load <2 x float>, ptr %i.az, align 4, !tbaa !41
  %i.cf = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = fsub <2 x float> %i.ce, %i.cg           ; 2 uses
  %i.ci = load float, ptr %i.e, align 4, !tbaa !41
  %i.cj = fadd float %i.cb, %i.ci
  %i.ck = load <2 x float>, ptr %i.bb, align 4, !tbaa !41
  %i.cl = fadd <2 x float> %i.cg, %i.ck           ; 2 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv36.i to i32
  %i.cn = call noundef i32 @_Z10duIntToColii(i32 noundef %i.cm, i32 noundef 255) #12
  %i.co = extractelement <2 x float> %i.ch, i64 0
  %i.cp = extractelement <2 x float> %i.ch, i64 1
  %i.cq = extractelement <2 x float> %i.cl, i64 0
  %i.cr = extractelement <2 x float> %i.cl, i64 1
  call void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef nonnull %i.au, float noundef %i.cd, float noundef %i.co, float noundef %i.cp, float noundef %i.cj, float noundef %i.cq, float noundef %i.cr, i32 noundef %i.cn, float noundef 2.000000e+00) #12
  %.pre39.i = load i32, ptr %i.av, align 4, !tbaa !150
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cs = phi i32 [ %i.bv, %bb.k ], [ %.pre39.i, %bb.l ] ; 2 uses
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next37.i, %i.ct
  br i1 %i.cu, label %bb.k, label %.loopexit, !llvm.loop !286

.loopexit:                                        ; preds = %bb.m, %.preheader.i, %bb.g
end_hunk_0

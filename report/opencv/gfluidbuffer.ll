Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gfluidbuffer?download=true
inline.NumInlined: 1126
inline.NumDeleted: 619
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv4gapi5fluid4View4PrivD2Ev:bb.a
  br i1 %.not.i.i.i.i, label %_ZN2cv4gapi5fluid4View5CacheD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !165
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #29
  br label %_ZN2cv4gapi5fluid4View5CacheD2Ev.exit

_ZN2cv4gapi5fluid4View5CacheD2Ev.exit:            ; preds = %_ZN2cv8GMatDescD2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid24ViewPrivWithoutOwnBorderD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv4gapi5fluid4View4PrivE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !146
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #29, !inline_history !164
  br label %_ZN2cv8GMatDescD2Ev.exit.i.i

_ZN2cv8GMatDescD2Ev.exit.i.i:                     ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN2cv4gapi5fluid4View4PrivD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !165
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #29, !inline_history !164
  br label %_ZN2cv4gapi5fluid4View4PrivD2Ev.exit

_ZN2cv4gapi5fluid4View4PrivD2Ev.exit:             ; preds = %_ZN2cv8GMatDescD2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv4gapi5fluid24ViewPrivWithoutOwnBorder4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid21ViewPrivWithOwnBorderD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN2cv4gapi5fluid23BufferStorageWithBorderD2Ev.exit, label %_ZNKSt14default_deleteIN2cv4gapi5fluid13BorderHandlerEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN2cv4gapi5fluid13BorderHandlerEEclEPS3_.exit.i.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #27, !inline_history !2
  br label %_ZN2cv4gapi5fluid23BufferStorageWithBorderD2Ev.exit

_ZN2cv4gapi5fluid23BufferStorageWithBorderD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2cv4gapi5fluid13BorderHandlerEEclEPS3_.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2cv4gapi5fluid13BufferStorageE, i64 16), ptr %i.a, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #27, !inline_history !126
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv4gapi5fluid4View4PrivE, i64 16), ptr %0, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN2cv4gapi5fluid23BufferStorageWithBorderD2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29, !inline_history !164
  br label %_ZN2cv8GMatDescD2Ev.exit.i.i

_ZN2cv8GMatDescD2Ev.exit.i.i:                     ; preds = %bb.b, %_ZN2cv4gapi5fluid23BufferStorageWithBorderD2Ev.exit
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZN2cv4gapi5fluid4View4PrivD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #29, !inline_history !164
  br label %_ZN2cv4gapi5fluid4View4PrivD2Ev.exit

_ZN2cv4gapi5fluid4View4PrivD2Ev.exit:             ; preds = %_ZN2cv8GMatDescD2Ev.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid21ViewPrivWithOwnBorderD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN2cv4gapi5fluid23BufferStorageWithBorderD2Ev.exit.i, label %_ZNKSt14default_deleteIN2cv4gapi5fluid13BorderHandlerEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN2cv4gapi5fluid13BorderHandlerEEclEPS3_.exit.i.i.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #27, !inline_history !236
  br label %_ZN2cv4gapi5fluid23BufferStorageWithBorderD2Ev.exit.i

_ZN2cv4gapi5fluid23BufferStorageWithBorderD2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN2cv4gapi5fluid13BorderHandlerEEclEPS3_.exit.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN2cv4gapi5fluid13BufferStorageE, i64 16), ptr %i.a, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #27, !inline_history !126
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN2cv4gapi5fluid4View4PrivE, i64 16), ptr %0, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !145  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2cv8GMatDescD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN2cv4gapi5fluid23BufferStorageWithBorderD2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29, !inline_history !164
  br label %_ZN2cv8GMatDescD2Ev.exit.i.i.i

_ZN2cv8GMatDescD2Ev.exit.i.i.i:                   ; preds = %bb.b, %_ZN2cv4gapi5fluid23BufferStorageWithBorderD2Ev.exit.i
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv4gapi5fluid21ViewPrivWithOwnBorderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #29, !inline_history !164
  br label %_ZN2cv4gapi5fluid21ViewPrivWithOwnBorderD2Ev.exit

_ZN2cv4gapi5fluid21ViewPrivWithOwnBorderD2Ev.exit: ; preds = %_ZN2cv8GMatDescD2Ev.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid13BorderHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid13BorderHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid13BorderHandler21fillCompileTimeBorderERNS1_23BufferStorageWithBorderE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv4gapi5fluid13BorderHandler4sizeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv4gapi12_GLOBAL__N_118fillConstBorderRowIhEEvPhiiiNS_7Scalar_IdEE(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly align 8 captures(none) dead_on_return %4) unnamed_addr #17 {
bb.a:
  %i.a = sub i32 %1, %3
  %i.b = mul i32 %i.a, %2
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 %i.c       ; 4 uses
  %i.e = icmp sgt i32 %3, 0
  %i.f = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge28.split

.preheader.preheader:                             ; preds = %bb.a
  %i.g = zext nneg i32 %2 to i64                  ; 6 uses
  %wide.trip.count33 = zext nneg i32 %3 to i64    ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 3
  %scevgep.a = getelementptr i8, ptr %4, i64 %i.h ; 2 uses
  %5 = mul nuw nsw i64 %wide.trip.count33, %i.g   ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 %5
  %scevgep45 = getelementptr i8, ptr %i.i, i64 %i.c ; 2 uses
  %scevgep46 = getelementptr i8, ptr %0, i64 %5   ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  %bound0 = icmp ult ptr %0, %scevgep45
  %bound1 = icmp ult ptr %i.d, %scevgep46
  %found.conflict = and i1 %bound0, %bound1
  %bound047 = icmp ult ptr %0, %scevgep.a
  %bound148 = icmp ult ptr %4, %scevgep46
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx = or i1 %found.conflict, %found.conflict49
  %bound050 = icmp ult ptr %i.d, %scevgep.a
  %bound151 = icmp ult ptr %4, %scevgep45
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx53 = or i1 %conflict.rdx, %found.conflict52
  %n.vec = and i64 %i.g, 2147483646               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv30 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next31, %._crit_edge ] ; 2 uses
  %i.j = mul nuw nsw i64 %indvars.iv30, %i.g      ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx53
  br i1 %brmerge, label %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.k, align 8, !tbaa !20, !alias.scope !244
  %i.l = tail call <2 x double> @llvm.round.v2f64(<2 x double> %wide.load)
  %i.m = fptosi <2 x double> %i.l to <2 x i32>    ; 2 uses
  %i.n = icmp slt <2 x i32> %i.m, zeroinitializer
  %i.o = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.m, <2 x i32> splat (i32 255))
  %i.p = trunc nuw <2 x i32> %i.o to <2 x i8>
  %i.q = select <2 x i1> %i.n, <2 x i8> zeroinitializer, <2 x i8> %i.p
  %i.r = add nuw nsw i64 %index, %i.j             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  store <2 x i8> %i.q, ptr %i.s, align 1, !tbaa !29, !alias.scope !245, !noalias !246
  %wide.load54 = load <2 x double>, ptr %i.k, align 8, !tbaa !20, !alias.scope !244
  %i.t = tail call <2 x double> @llvm.round.v2f64(<2 x double> %wide.load54)
  %i.u = fptosi <2 x double> %i.t to <2 x i32>    ; 2 uses
  %i.v = icmp slt <2 x i32> %i.u, zeroinitializer
  %i.w = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.u, <2 x i32> splat (i32 255))
  %i.x = trunc nuw <2 x i32> %i.w to <2 x i8>
  %i.y = select <2 x i1> %i.v, <2 x i8> zeroinitializer, <2 x i8> %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r
  store <2 x i8> %i.y, ptr %i.z, align 1, !tbaa !29, !alias.scope !247, !noalias !244
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !241

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit.preheader

_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit.preheader: ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit

._crit_edge28.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit, %middle.block
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge28.split, label %.preheader, !llvm.loop !242

_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit:        ; preds = %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit.preheader, %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit ], [ %indvars.iv.ph, %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !20
  %i.ad = tail call noundef double @llvm.round.f64(double %i.ac)
  %i.ae = fptosi double %i.ad to i32              ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  %spec.select24 = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 255)
  %spec.select = trunc nuw i32 %spec.select24 to i8
  %i.ag = select i1 %i.af, i8 0, i8 %spec.select
  %i.ah = add nuw nsw i64 %indvars.iv, %i.j       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !29
  %i.aj = load double, ptr %i.ab, align 8, !tbaa !20
  %i.ak = tail call noundef double @llvm.round.f64(double %i.aj)
  %i.al = fptosi double %i.ak to i32              ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  %spec.select2325 = tail call i32 @llvm.umin.i32(i32 %i.al, i32 255)
  %spec.select23 = trunc nuw i32 %spec.select2325 to i8
  %i.an = select i1 %i.am, i8 0, i8 %spec.select23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ah
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %_ZN2cv4gapi3ownL8saturateIhivEET_T0_.exit, !llvm.loop !243
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv4gapi12_GLOBAL__N_118fillConstBorderRowIsEEvPhiiiNS_7Scalar_IdEE(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly align 8 captures(none) dead_on_return %4) unnamed_addr #17 {
bb.a:
  %i.a = sub i32 %1, %3
  %i.b = mul i32 %i.a, %2
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [2 x i8], ptr %0, i64 %i.c ; 4 uses
  %i.e = icmp sgt i32 %3, 0
  %i.f = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge26.split

.preheader.preheader:                             ; preds = %bb.a
  %i.g = zext nneg i32 %2 to i64                  ; 6 uses
  %wide.trip.count31 = zext nneg i32 %3 to i64
  %i.h = shl nsw i64 %i.c, 1
  %min.iters.check = icmp ult i32 %2, 2
  %i.i = add nsw i64 %i.h, -1
  %diff.check = icmp ult i64 %i.i, 3
  %or.cond39 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.g, 2147483646               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  %xtraiter = and i64 %i.g, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.j = add nsw i64 %i.g, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv28 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next29, %._crit_edge ] ; 2 uses
  %i.k = mul nuw nsw i64 %indvars.iv28, %i.g      ; 4 uses
  br i1 %or.cond39, label %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index
  %wide.load = load <2 x double>, ptr %i.l, align 8, !tbaa !20
  %i.m = tail call <2 x double> @llvm.round.v2f64(<2 x double> %wide.load)
  %i.n = fptosi <2 x double> %i.m to <2 x i32>
  %i.o = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.n, <2 x i32> splat (i32 -32768))
  %i.p = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.o, <2 x i32> splat (i32 32767))
  %i.q = trunc nsw <2 x i32> %i.p to <2 x i16>    ; 2 uses
  %i.r = add nuw nsw i64 %index, %i.k             ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.r
  store <2 x i16> %i.q, ptr %i.s, align 2, !tbaa !171
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.r
  store <2 x i16> %i.q, ptr %i.t, align 2, !tbaa !171
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.preheader

_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.preheader: ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.prol.loopexit, label %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.prol

_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.prol: ; preds = %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.preheader
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.ph
  %i.w = load double, ptr %i.v, align 8, !tbaa !20
  %i.x = tail call noundef double @llvm.round.f64(double %i.w)
  %i.y = fptosi double %i.x to i32
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.y, i32 -32768)
  %.sink38.prol = tail call i32 @llvm.smin.i32(i32 %i.z, i32 32767)
  %.sink.prol = trunc nsw i32 %.sink38.prol to i16 ; 2 uses
  %i.aa = add nuw nsw i64 %indvars.iv.ph, %i.k    ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa
  store i16 %.sink.prol, ptr %i.ab, align 2, !tbaa !171
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aa
  store i16 %.sink.prol, ptr %i.ac, align 2, !tbaa !171
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.prol.loopexit

_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.prol.loopexit: ; preds = %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.prol, %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.preheader ], [ %indvars.iv.next.prol, %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.prol ]
  %i.ad = icmp eq i64 %indvars.iv.ph, %i.j
  br i1 %i.ad, label %._crit_edge, label %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22

._crit_edge26.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.prol.loopexit, %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22, %middle.block
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %._crit_edge26.split, label %.preheader, !llvm.loop !249

_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22:      ; preds = %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.prol.loopexit, %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22 ], [ %indvars.iv.unr, %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22.prol.loopexit ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.af = load double, ptr %i.ae, align 8, !tbaa !20
  %i.ag = tail call noundef double @llvm.round.f64(double %i.af)
  %i.ah = fptosi double %i.ag to i32
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 -32768)
  %.sink38 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 32767)
  %.sink = trunc nsw i32 %.sink38 to i16          ; 2 uses
  %i.aj = add nuw nsw i64 %indvars.iv, %i.k       ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aj
  store i16 %.sink, ptr %i.ak, align 2, !tbaa !171
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aj
  store i16 %.sink, ptr %i.al, align 2, !tbaa !171
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %i.an = load double, ptr %i.am, align 8, !tbaa !20
  %i.ao = tail call noundef double @llvm.round.f64(double %i.an)
  %i.ap = fptosi double %i.ao to i32
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 -32768)
  %.sink38.1 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 32767)
  %.sink.1 = trunc nsw i32 %.sink38.1 to i16      ; 2 uses
  %i.ar = add nuw nsw i64 %indvars.iv.next, %i.k  ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ar
  store i16 %.sink.1, ptr %i.as, align 2, !tbaa !171
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ar
  store i16 %.sink.1, ptr %i.at, align 2, !tbaa !171
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.g
  br i1 %exitcond.not.1, label %._crit_edge, label %_ZN2cv4gapi3ownL8saturateIsivEET_T0_.exit22, !llvm.loop !250
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv4gapi12_GLOBAL__N_118fillConstBorderRowItEEvPhiiiNS_7Scalar_IdEE(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly align 8 captures(none) dead_on_return %4) unnamed_addr #17 {
end_hunk_0

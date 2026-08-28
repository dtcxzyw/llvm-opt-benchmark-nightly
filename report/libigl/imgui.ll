Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui11IsPopupOpenEPKci:bb.a
  %i.aa = and i32 %.3.i.i, 255
  %i.ab = xor i32 %i.aa, %i.t
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34
  %i.af = xor i32 %i.z, %i.ae                     ; 2 uses
  %.not33.i.i = icmp eq i8 %.pre.i.i, 0
  br i1 %.not33.i.i, label %_Z9ImHashStrPKcmj.exit.i.loopexit, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.i.loopexit:                ; preds = %bb.d
  %i.ag = xor i32 %i.af, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.i.loopexit, %bb.b
  %.5.i.i = phi i32 [ %i.o, %bb.b ], [ %i.ag, %_Z9ImHashStrPKcmj.exit.i.loopexit ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 7260
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !331
  %i.aj = icmp eq i32 %i.ai, %.5.i.i
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_Z9ImHashStrPKcmj.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 7264
  store i32 %.5.i.i, ptr %i.ak, align 8, !tbaa !332
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_Z9ImHashStrPKcmj.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 7320
  %i.am = load i32, ptr %i.al, align 8, !tbaa !333
  %i.an = icmp eq i32 %i.am, %.5.i.i
  br i1 %i.an, label %bb.g, label %_ZN5ImGui11KeepAliveIDEj.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 7324
  store i8 1, ptr %i.ao, align 4, !tbaa !334
  br label %_ZN5ImGui11KeepAliveIDEj.exit.i

_ZN5ImGui11KeepAliveIDEj.exit.i:                  ; preds = %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 7236
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !335
  %i.ar = icmp eq i32 %i.aq, %.5.i.i
  br i1 %i.ar, label %bb.h, label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

bb.h:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit.i
  tail call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %.5.i.i, i32 noundef 11, ptr noundef nonnull %0, ptr noundef null)
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !49
  br label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

_ZN11ImGuiWindow5GetIDEPKcS1_.exit:               ; preds = %bb.h, %_ZN5ImGui11KeepAliveIDEj.exit.i
  %i.as = phi ptr [ %.pre, %bb.h ], [ %i.b, %_ZN5ImGui11KeepAliveIDEj.exit.i ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 7640
  %i.au = load i32, ptr %i.at, align 8, !tbaa !602 ; 3 uses
  %i.av = and i32 %1, 256
  %.not21.i = icmp eq i32 %i.av, 0
  br i1 %.not21.i, label %bb.l, label %.preheader.i

bb.i:                                             ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.thread
  %i.aw = icmp sgt i32 %i.e, 0
  br label %_ZN5ImGui11IsPopupOpenEji.exit

bb.j:                                             ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 7656
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !614
  %i.az = icmp sgt i32 %i.e, %i.ay
  br label %_ZN5ImGui11IsPopupOpenEji.exit

.preheader.i:                                     ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit
  %.not2224.i = icmp sgt i32 %i.au, 0
  br i1 %.not2224.i, label %.lr.ph.i, label %_ZN5ImGui11IsPopupOpenEji.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 7648
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !545
  %wide.trip.count.i = zext nneg i32 %i.au to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !604
  %i.be = icmp eq i32 %i.bd, %.5.i.i              ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond = select i1 %i.be, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_ZN5ImGui11IsPopupOpenEji.exit, label %bb.k, !llvm.loop !603

bb.l:                                             ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 7656
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !614 ; 2 uses
  %i.bh = icmp sgt i32 %i.au, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZN5ImGui11IsPopupOpenEji.exit

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 7648
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !545
  %i.bk = sext i32 %i.bg to i64
  %i.bl = getelementptr inbounds [48 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !604
  %i.bn = icmp eq i32 %i.bm, %.5.i.i
  br label %_ZN5ImGui11IsPopupOpenEji.exit

_ZN5ImGui11IsPopupOpenEji.exit:                   ; preds = %bb.k, %bb.i, %bb.j, %.preheader.i, %bb.l, %bb.m
  %.1.i = phi i1 [ %i.aw, %bb.i ], [ %i.az, %bb.j ], [ %i.bn, %bb.m ], [ false, %bb.l ], [ false, %.preheader.i ], [ %i.be, %bb.k ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui9OpenPopupEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !208  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !329
  %i.g = load i32, ptr %i.d, align 8, !tbaa !327
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !34   ; 2 uses
  %i.l = xor i32 %i.k, -1                         ; 2 uses
  %i.m = load i8, ptr %0, align 1, !tbaa !136     ; 2 uses
  %.not3342.i.i = icmp eq i8 %i.m, 0
  br i1 %.not3342.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %i.n = phi i8 [ %.pre.i.i, %bb.c ], [ %i.m, %bb.a ] ; 2 uses
  %.144.i.i = phi ptr [ %i.o, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %.243.i.i = phi i32 [ %i.ab, %bb.c ], [ %i.l, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 1 ; 2 uses
  %i.p = zext i8 %i.n to i32
  %i.q = icmp eq i8 %i.n, 35
  %.pre.i.i = load i8, ptr %i.o, align 1, !tbaa !136 ; 3 uses
  %i.r = icmp eq i8 %.pre.i.i, 35
  %or.cond51.i.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond51.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !136
  %i.u = icmp eq i8 %i.t, 35
  %spec.select35.i.i = select i1 %i.u, i32 %i.l, i32 %.243.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.3.i.i = phi i32 [ %.243.i.i, %.lr.ph.i.i ], [ %spec.select35.i.i, %bb.b ] ; 2 uses
  %i.v = lshr i32 %.3.i.i, 8
  %i.w = and i32 %.3.i.i, 255
  %i.x = xor i32 %i.w, %i.p
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !34
  %i.ab = xor i32 %i.v, %i.aa                     ; 2 uses
  %.not33.i.i = icmp eq i8 %.pre.i.i, 0
  br i1 %.not33.i.i, label %_Z9ImHashStrPKcmj.exit.i.loopexit, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.i.loopexit:                ; preds = %bb.c
  %i.ac = xor i32 %i.ab, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.i.loopexit, %bb.a
  %.5.i.i = phi i32 [ %i.k, %bb.a ], [ %i.ac, %_Z9ImHashStrPKcmj.exit.i.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !331
  %i.af = icmp eq i32 %i.ae, %.5.i.i
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_Z9ImHashStrPKcmj.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 7264
  store i32 %.5.i.i, ptr %i.ag, align 8, !tbaa !332
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_Z9ImHashStrPKcmj.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 7320
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !333
  %i.aj = icmp eq i32 %i.ai, %.5.i.i
  br i1 %i.aj, label %bb.f, label %_ZN5ImGui11KeepAliveIDEj.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 7324
  store i8 1, ptr %i.ak, align 4, !tbaa !334
  br label %_ZN5ImGui11KeepAliveIDEj.exit.i

_ZN5ImGui11KeepAliveIDEj.exit.i:                  ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 7236
  %i.am = load i32, ptr %i.al, align 4, !tbaa !335
  %i.an = icmp eq i32 %i.am, %.5.i.i
  br i1 %i.an, label %bb.g, label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

bb.g:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit.i
  tail call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %.5.i.i, i32 noundef 11, ptr noundef nonnull %0, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

_ZN11ImGuiWindow5GetIDEPKcS1_.exit:               ; preds = %_ZN5ImGui11KeepAliveIDEj.exit.i, %bb.g
  tail call void @_ZN5ImGui11OpenPopupExEji(i32 noundef %.5.i.i, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui11OpenPopupExEji(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %.sroa.12.sroa.0 = alloca i64, align 8          ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7656
  %i.c = load i32, ptr %i.b, align 8, !tbaa !614  ; 11 uses
  %i.d = and i32 %1, 32
  %.not = icmp ne i32 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 7640
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !602 ; 8 uses
  %i.e = icmp sgt i32 %.pre, %i.c
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.aa, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !208  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.0)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7056
  %i.k = load i32, ptr %i.j, align 8, !tbaa !464  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !329
  %i.o = load i32, ptr %i.l, align 8, !tbaa !327
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %i.n, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34   ; 2 uses
  %i.t = tail call fastcc <2 x float> @_ZN5ImGuiL22NavCalcPreferredRefPosEv() ; 2 uses
  store <2 x float> %i.t, ptr %.sroa.12.sroa.0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.u, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !9
  %i.v = fcmp oge float %.sroa.0.0.copyload.i, -2.560000e+05
  %i.w = fcmp oge float %.sroa.4.0.copyload.i, -2.560000e+05
  %i.x = select i1 %i.v, i1 %i.w, i1 false
  %i.y = select i1 %i.x, ptr %i.u, ptr %.sroa.12.sroa.0
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 7640 ; 10 uses
  %.not21 = icmp sgt i32 %.pre, %i.c
  br i1 %.not21, label %bb.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 7644 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !546
  %i.ad = icmp eq i32 %.pre, %i.ac
  br i1 %i.ad, label %bb.c, label %._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i: ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7648
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !545
  br label %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = add nsw i32 %.pre, 1
  %.not.i.i = icmp eq i32 %.pre, 0
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = sdiv i32 %.pre, 2
  %i.ag = add nsw i32 %i.af, %.pre
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

_ZN5ImGui8MemAllocEm.exit.i.i:                    ; preds = %bb.d, %bb.c
  %i.ah = phi i32 [ %i.ag, %bb.d ], [ 8, %bb.c ]
  %i.ai = tail call noundef i32 @llvm.smax.i32(i32 %i.ah, i32 %i.ae) ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !55
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !55
  %i.ao = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.ap = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.aq = tail call noundef ptr %i.ao(i64 noundef %i.ak, ptr noundef %i.ap), !inline_history !827 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 7648 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !545 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.as, null
  br i1 %.not6.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !547
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.au, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aq, ptr nonnull align 8 %i.as, i64 %i.av, i1 false)
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !545 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 944 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !55
  %i.ba = add nsw i32 %i.az, -1
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.g, %bb.f, %bb.e
  %i.bb = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.bc = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  tail call void %i.bb(ptr noundef %i.aw, ptr noundef %i.bc), !inline_history !828
  br label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !545
  store i32 %i.ai, ptr %i.ab, align 4, !tbaa !546
  %.pre3.i = load i32, ptr %i.aa, align 8, !tbaa !547
  br label %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit

_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i, %bb.h
  %i.bd = phi i32 [ %.pre, %._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.h ]
  %i.be = phi ptr [ %.pre.i, %._ZN8ImVectorI14ImGuiPopupDataE7reserveEi.exit_crit_edge.i ], [ %i.aq, %bb.h ]
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [48 x i8], ptr %i.be, i64 %i.bf ; 8 uses
  store i32 %0, ptr %i.bg, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr null, ptr %.sroa.639.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i32 %i.k, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  store i32 %i.s, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store <2 x float> %i.t, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 %i.z, ptr %.sroa.14.0..sroa_idx, align 8
  %i.bh = load i32, ptr %i.aa, align 8, !tbaa !547
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.aa, align 8, !tbaa !547
  br label %bb.z

bb.i:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 7648 ; 7 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !545 ; 2 uses
  %i.bl = sext i32 %i.c to i64                    ; 2 uses
  %i.bm = getelementptr inbounds [48 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !604
  %i.bo = icmp eq i32 %i.bn, %0
  br i1 %i.bo, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1085
  %i.br = add nsw i32 %i.k, -1
  %i.bs = icmp eq i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.k, ptr %i.bp, align 8, !tbaa !1085
  br label %bb.z

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 7644 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !546 ; 5 uses
  %i.bv = icmp sgt i32 %i.c, %i.bu
  br i1 %i.bv, label %bb.m, label %_ZN5ImGui17ClosePopupToLevelEib.exit

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i22 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i22, label %_ZN5ImGui8MemAllocEm.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = sdiv i32 %i.bu, 2
  %i.bx = add nsw i32 %i.bw, %i.bu
  br label %_ZN5ImGui8MemAllocEm.exit.i.i.i

_ZN5ImGui8MemAllocEm.exit.i.i.i:                  ; preds = %bb.n, %bb.m
  %i.by = phi i32 [ %i.bx, %bb.n ], [ 8, %bb.m ]
  %i.bz = tail call noundef i32 @llvm.smax.i32(i32 %i.by, i32 %i.c) ; 3 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.ca, 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !55
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !55
  %i.cf = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.cg = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.ch = tail call noundef ptr %i.cf(i64 noundef %i.cb, ptr noundef %i.cg), !inline_history !1086 ; 3 uses
  %i.ci = load ptr, ptr %i.bj, align 8, !tbaa !545 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not6.i.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i.i
  %i.cj = load i32, ptr %i.aa, align 8, !tbaa !547
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.ck, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ch, ptr nonnull align 8 %i.ci, i64 %i.cl, i1 false)
  %i.cm = load ptr, ptr %i.bj, align 8, !tbaa !545 ; 2 uses
  %.not.i7.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i7.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not4.i.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 944 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !55
  %i.cq = add nsw i32 %i.cp, -1
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i.i:                  ; preds = %bb.q, %bb.p, %bb.o
  %i.cr = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.cs = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  tail call void %i.cr(ptr noundef %i.cm, ptr noundef %i.cs), !inline_history !1087
  br label %bb.r

bb.r:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i.i
  store ptr %i.ch, ptr %i.bj, align 8, !tbaa !545
  store i32 %i.bz, ptr %i.bt, align 4, !tbaa !546
  br label %_ZN5ImGui17ClosePopupToLevelEib.exit

_ZN5ImGui17ClosePopupToLevelEib.exit:             ; preds = %bb.l, %bb.r
  %.pre.i25 = phi ptr [ %i.bk, %bb.l ], [ %i.ch, %bb.r ]
  %i.ct = phi i32 [ %i.bu, %bb.l ], [ %i.bz, %bb.r ]
  store i32 %i.c, ptr %i.aa, align 8, !tbaa !547
  %i.cu = icmp eq i32 %i.c, %i.ct
  br i1 %i.cu, label %bb.s, label %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit35

bb.s:                                             ; preds = %_ZN5ImGui17ClosePopupToLevelEib.exit
  %i.cv = add nsw i32 %i.c, 1
  %.not.i.i26 = icmp eq i32 %i.c, 0
  br i1 %.not.i.i26, label %_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i27, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = sdiv i32 %i.c, 2
  %i.cx = add nsw i32 %i.cw, %i.c
  br label %_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i27

_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i27: ; preds = %bb.t, %bb.s
  %i.cy = phi i32 [ %i.cx, %bb.t ], [ 8, %bb.s ]
  %i.cz = tail call noundef i32 @llvm.smax.i32(i32 %i.cy, i32 %i.cv) ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = mul nsw i64 %i.da, 48
  %i.dc = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i28, label %_ZN5ImGui8MemAllocEm.exit.i.i29, label %bb.u

bb.u:                                             ; preds = %_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i27
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 944 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !55
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !55
  br label %_ZN5ImGui8MemAllocEm.exit.i.i29

_ZN5ImGui8MemAllocEm.exit.i.i29:                  ; preds = %bb.u, %_ZNK8ImVectorI14ImGuiPopupDataE14_grow_capacityEi.exit.i27
  %i.dg = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.dh = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.di = tail call noundef ptr %i.dg(i64 noundef %i.db, ptr noundef %i.dh), !inline_history !827 ; 3 uses
  %i.dj = load ptr, ptr %i.bj, align 8, !tbaa !545 ; 2 uses
  %.not6.i.i30 = icmp eq ptr %i.dj, null
  br i1 %.not6.i.i30, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i29
  %i.dk = load i32, ptr %i.aa, align 8, !tbaa !547
  %i.dl = sext i32 %i.dk to i64
  %i.dm = mul nsw i64 %i.dl, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.di, ptr nonnull align 8 %i.dj, i64 %i.dm, i1 false)
  %i.dn = load ptr, ptr %i.bj, align 8, !tbaa !545 ; 2 uses
  %.not.i7.i.i31 = icmp eq ptr %i.dn, null
  br i1 %.not.i7.i.i31, label %_ZN5ImGui7MemFreeEPv.exit.i.i33, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i32 = icmp eq ptr %i.do, null
  br i1 %.not4.i.i.i32, label %_ZN5ImGui7MemFreeEPv.exit.i.i33, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 944 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !55
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i33

_ZN5ImGui7MemFreeEPv.exit.i.i33:                  ; preds = %bb.x, %bb.w, %bb.v
  %i.ds = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.dt = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  tail call void %i.ds(ptr noundef %i.dn, ptr noundef %i.dt), !inline_history !828
  br label %bb.y

bb.y:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i33, %_ZN5ImGui8MemAllocEm.exit.i.i29
  store ptr %i.di, ptr %i.bj, align 8, !tbaa !545
  store i32 %i.cz, ptr %i.bt, align 4, !tbaa !546
  %.pre3.i34 = load i32, ptr %i.aa, align 8, !tbaa !547
  %.pre58 = sext i32 %.pre3.i34 to i64
  br label %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit35

_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit35: ; preds = %_ZN5ImGui17ClosePopupToLevelEib.exit, %bb.y
  %.pre-phi = phi i64 [ %.pre58, %bb.y ], [ %i.bl, %_ZN5ImGui17ClosePopupToLevelEib.exit ]
  %i.du = phi ptr [ %i.di, %bb.y ], [ %.pre.i25, %_ZN5ImGui17ClosePopupToLevelEib.exit ]
  %i.dv = getelementptr inbounds [48 x i8], ptr %i.du, i64 %.pre-phi ; 8 uses
  store i32 %0, ptr %i.dv, align 8
  %.sroa.6.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx37, align 4
  %.sroa.639.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr null, ptr %.sroa.639.0..sroa_idx40, align 8
  %.sroa.7.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx42, align 8
  %.sroa.8.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store i32 %i.k, ptr %.sroa.8.0..sroa_idx44, align 8
  %.sroa.11.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.dv, i64 28
  store i32 %i.s, ptr %.sroa.11.0..sroa_idx46, align 4
  %.sroa.12.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %.sroa.12.0..sroa.12.0.56 = load i64, ptr %.sroa.12.sroa.0, align 8
  store i64 %.sroa.12.0..sroa.12.0.56, ptr %.sroa.12.0..sroa_idx48, align 8
  %.sroa.14.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  store i64 %i.z, ptr %.sroa.14.0..sroa_idx49, align 8
  %i.dw = load i32, ptr %i.aa, align 8, !tbaa !547
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.aa, align 8, !tbaa !547
  br label %bb.z

bb.z:                                             ; preds = %bb.k, %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit35, %_ZN8ImVectorI14ImGuiPopupDataE9push_backERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.0)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui9OpenPopupEji(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN5ImGui11OpenPopupExEji(i32 noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc <2 x float> @_ZN5ImGuiL22NavCalcPreferredRefPosEv() unnamed_addr #38 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7762
  %i.c = load i8, ptr %i.b, align 2, !tbaa !320, !range !210, !noundef !211
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 7763
  %i.f = load i8, ptr %i.e, align 1, !tbaa !421, !range !210, !noundef !211
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7688
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425  ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %_ZL7ImClampRK6ImVec2S1_S_.exit

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.j, align 4, !tbaa !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !9
  %i.k = fcmp oge float %.sroa.0.0.copyload.i, -2.560000e+05
  %i.l = fcmp oge float %.sroa.4.0.copyload.i, -2.560000e+05
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.j, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8408
  %.sroa.018.0.copyload19 = load <2 x float>, ptr %i.n, align 8
  br label %bb.g

_ZL7ImClampRK6ImVec2S1_S_.exit:                   ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 880
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 7752
  %i.q = load i32, ptr %i.p, align 8, !tbaa !593
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 5532
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7680
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !432
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !433  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ab = load <2 x float>, ptr %i.v, align 4, !tbaa !9 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.u, align 4, !tbaa !9
  %i.ad = fmul <2 x float> %i.ac, <float 4.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ae = load <2 x float>, ptr %i.s, align 4, !tbaa !9 ; 2 uses
  %i.af = fsub <2 x float> %i.ab, %i.ae           ; 2 uses
  %i.ag = fcmp olt <2 x float> %i.ad, %i.af
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.ad, <2 x float> %i.af ; 2 uses
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aj = fadd <2 x float> %i.ai, %i.ah
  %i.ak = fsub <2 x float> %i.ai, %i.ah
  %i.al = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <2 x i32> <i32 0, i32 3>
  %i.am = load <2 x float>, ptr %i.t, align 4, !tbaa !9
  %i.an = fadd <2 x float> %i.am, %i.al           ; 3 uses
  %i.ao = load <2 x float>, ptr %i.z, align 4, !tbaa !9 ; 3 uses
  %i.ap = load <2 x float>, ptr %i.aa, align 4, !tbaa !9
  %i.aq = fadd <2 x float> %i.ao, %i.ap           ; 2 uses
  %i.ar = fcmp olt <2 x float> %i.an, %i.ao
  %i.as = fcmp ogt <2 x float> %i.an, %i.aq
  %i.at = select <2 x i1> %i.as, <2 x float> %i.aq, <2 x float> %i.an
  %i.au = select <2 x i1> %i.ar, <2 x float> %i.ao, <2 x float> %i.at
  %i.av = fptosi <2 x float> %i.au to <2 x i32>
  %i.aw = sitofp <2 x i32> %i.av to <2 x float>
  br label %bb.g

bb.g:                                             ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit, %bb.f, %bb.e
  %.sroa.018.0 = phi <2 x float> [ %.sroa.018.0.copyload, %bb.e ], [ %.sroa.018.0.copyload19, %bb.f ], [ %i.aw, %_ZL7ImClampRK6ImVec2S1_S_.exit ]
  ret <2 x float> %.sroa.018.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7640 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7648 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !545
  %i.e = sext i32 %0 to i64
  %i.f = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1088 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !608  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 7644 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !546  ; 4 uses
  %i.m = icmp sgt i32 %0, %i.l
  br i1 %i.m, label %bb.b, label %_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv i32 %i.l, 2
  %i.o = add nsw i32 %i.n, %i.l
  br label %_ZN5ImGui8MemAllocEm.exit.i.i

_ZN5ImGui8MemAllocEm.exit.i.i:                    ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %i.o, %bb.c ], [ 8, %bb.b ]
  %i.q = tail call noundef i32 @llvm.smax.i32(i32 %i.p, i32 %0) ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !55
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !55
  %i.w = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !132
  %i.x = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  %i.y = tail call noundef ptr %i.w(i64 noundef %i.s, ptr noundef %i.x), !inline_history !773 ; 2 uses
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !545  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.z, null
  br i1 %.not6.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !547
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.y, ptr nonnull align 8 %i.z, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !545 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr @GImGui, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not4.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 944 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !55
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !55
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i:                    ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !132
  %i.aj = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !132
  tail call void %i.ai(ptr noundef %i.ad, ptr noundef %i.aj), !inline_history !774
  br label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i
  store ptr %i.y, ptr %i.c, align 8, !tbaa !545
  store i32 %i.q, ptr %i.k, align 4, !tbaa !546
  br label %_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit

_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit:     ; preds = %bb.a, %bb.g
  store i32 %0, ptr %i.b, align 8, !tbaa !547
  br i1 %1, label %bb.h, label %bb.o

bb.h:                                             ; preds = %_ZN8ImVectorI14ImGuiPopupDataE6resizeEi.exit
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 143
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !427, !range !210, !noundef !211
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = icmp eq ptr %i.j, null
  %or.cond.not = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_(ptr noundef nonnull %i.j, ptr noundef null)
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 7752
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !593
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN5ImGuiL28NavRestoreLastChildNavWindowEP11ImGuiWindow.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 864
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !697 ; 3 uses
end_hunk_0

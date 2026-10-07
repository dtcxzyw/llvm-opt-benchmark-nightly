Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZL30WindowSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %.011, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !601
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 708
  store i32 -1, ptr %i.bc, align 4, !tbaa !602
  %i.bd = getelementptr inbounds nuw i8, ptr %.011, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !601
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 708
  store i32 -1, ptr %i.bf, align 4, !tbaa !602
  %i.bg = getelementptr inbounds nuw i8, ptr %.011, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !601
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 708
  store i32 -1, ptr %i.bi, align 4, !tbaa !602
  %i.bj = getelementptr inbounds nuw i8, ptr %.011, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !601
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 708
  store i32 -1, ptr %i.bl, align 4, !tbaa !602
  %i.bm = getelementptr inbounds nuw i8, ptr %.011, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !601
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 708
  store i32 -1, ptr %i.bo, align 4, !tbaa !602
  %i.bp = getelementptr inbounds nuw i8, ptr %.011, i64 64 ; 2 uses
  %.not.7 = icmp eq ptr %i.bp, %i.f
  br i1 %.not.7, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL29WindowSettingsHandler_CleanupP12ImGuiContextP20ImGuiSettingsHandlerP24ImGuiSettingsCleanupArgs(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !603  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10064
  br label %bb.b

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %.026 = phi ptr [ %i.d, %.lr.ph ], [ %i.am, %select.unfold ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.026, i64 12 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2              ; 5 uses
  %i.l = and i16 %i.k, 127                        ; 2 uses
  %.not.i22 = icmp ne i16 %i.l, 0                 ; 2 uses
  %i.m = and i16 %i.k, 1920
  %.not1.i = icmp ne i16 %i.m, 0
  %i.n = icmp ugt i16 %i.k, 2047
  %i.o = and i1 %.not1.i, %i.n
  %spec.select.i = and i1 %i.o, %.not.i22         ; 2 uses
  %i.p = load i32, ptr %i.e, align 4, !tbaa !605  ; 2 uses
  %.not21 = icmp eq i32 %i.p, 0
  br i1 %.not21, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i22, label %bb.d, label %_ZNK15ImGuiPackedDate6UnpackEv.exit

bb.d:                                             ; preds = %bb.c
  %i.q = lshr i16 %i.k, 7
  %i.r = and i16 %i.q, 15                         ; 2 uses
  %.not3.i = icmp eq i16 %i.r, 0
  br i1 %.not3.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = lshr i16 %i.k, 11                        ; 2 uses
  %.not4.i = icmp eq i16 %i.s, 0
  br i1 %.not4.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %narrow.i = add nuw nsw i16 %i.l, 2000
  %i.t = zext nneg i16 %narrow.i to i32
  %i.u = mul nuw nsw i32 %i.t, 10000
  %narrow5.i = mul nuw nsw i16 %i.r, 100
  %narrow6.i = add nuw nsw i16 %narrow5.i, %i.s
  %i.v = zext nneg i16 %narrow6.i to i32
  %i.w = add nuw nsw i32 %i.u, %i.v
  br label %_ZNK15ImGuiPackedDate6UnpackEv.exit

_ZNK15ImGuiPackedDate6UnpackEv.exit:              ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.x = phi i32 [ %i.w, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.y = icmp slt i32 %i.x, %i.p
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK15ImGuiPackedDate6UnpackEv.exit, %bb.b
  %i.z = load i8, ptr %i.f, align 4, !tbaa !1252, !range !100, !noundef !236
  %i.aa = trunc nuw i8 %i.z to i1
  %.not = xor i1 %i.aa, true
  %or.cond = or i1 %spec.select.i, %.not
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK15ImGuiPackedDate6UnpackEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.026, i64 14 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = or i8 %i.ac, 8
  store i8 %i.ad, ptr %i.ab, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = load i8, ptr %i.g, align 2, !tbaa !1253, !range !100, !noundef !236
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i8, ptr %i.h, align 1, !tbaa !1254, !range !100, !noundef !236
  %i.ah = trunc nuw i8 %i.ag to i1
  %.not2 = xor i1 %i.ah, true
  %or.cond4 = or i1 %spec.select.i, %.not2
  br i1 %or.cond4, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = load i16, ptr %i.i, align 8, !tbaa !82
  store i16 %i.ai, ptr %i.j, align 4, !tbaa !82
  br label %select.unfold

select.unfold:                                    ; preds = %bb.k, %bb.j
  %i.aj = getelementptr inbounds i8, ptr %.026, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !237
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %.026, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !603
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !606
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = icmp eq ptr %i.am, %i.ar
  br i1 %i.as, label %select.unfold._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZL30WindowSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !82      ; 2 uses
  %.not4050.i = icmp eq i8 %i.a, 0
  br i1 %.not4050.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.f
  %i.b = phi i8 [ %i.s, %bb.f ], [ %i.a, %bb.a ]  ; 2 uses
  %.252.i = phi ptr [ %.3.i, %bb.f ], [ %2, %bb.a ] ; 3 uses
  %.23351.i = phi i32 [ %.334.i, %bb.f ], [ -1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.252.i, i64 1 ; 2 uses
  %i.d = zext i8 %i.b to i32
  %i.e = icmp eq i8 %i.b, 35
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = load i8, ptr %i.c, align 1, !tbaa !82
  %i.g = icmp eq i8 %i.f, 35
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.252.i, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !82
  %i.j = icmp eq i8 %i.i, 35
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.252.i, i64 3
  br label %bb.f, !llvm.loop !6

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.l = lshr i32 %.23351.i, 8
  %i.m = and i32 %.23351.i, 255
  %i.n = xor i32 %i.m, %i.d
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !237
  %i.r = xor i32 %i.q, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.334.i = phi i32 [ -1, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.3.i = phi ptr [ %i.k, %bb.d ], [ %i.c, %bb.e ] ; 2 uses
  %i.s = load i8, ptr %.3.i, align 1, !tbaa !82   ; 2 uses
  %.not40.i = icmp eq i8 %i.s, 0
  br i1 %.not40.i, label %_Z9ImHashStrPKcmj.exit.loopexit, label %.lr.ph.i

_Z9ImHashStrPKcmj.exit.loopexit:                  ; preds = %bb.f
  %i.t = xor i32 %.334.i, -1
  br label %_Z9ImHashStrPKcmj.exit

_Z9ImHashStrPKcmj.exit:                           ; preds = %_Z9ImHashStrPKcmj.exit.loopexit, %bb.a
  %.4.i = phi i32 [ 0, %bb.a ], [ %i.t, %_Z9ImHashStrPKcmj.exit.loopexit ] ; 2 uses
  %i.u = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 10104
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 10112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !603  ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i9.preheader

.lr.ph.i9.preheader:                              ; preds = %_Z9ImHashStrPKcmj.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  br label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.i9.preheader, %select.unfold.i
  %.0914.i = phi ptr [ %i.ah, %select.unfold.i ], [ %i.y, %.lr.ph.i9.preheader ] ; 6 uses
  %i.z = load i32, ptr %.0914.i, align 4, !tbaa !608
  %i.aa = icmp eq i32 %i.z, %.4.i
  br i1 %i.aa, label %bb.g, label %select.unfold.i

bb.g:                                             ; preds = %.lr.ph.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %.0914.i, i64 14
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = and i8 %i.ac, 8
  %.not11.i = icmp eq i8 %i.ad, 0
  br i1 %.not11.i, label %_ZN5ImGui22FindWindowSettingsByIDEj.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.g, %.lr.ph.i9
  %i.ae = getelementptr inbounds i8, ptr %.0914.i, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !237
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %.0914.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.v, align 8, !tbaa !606
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.x, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = icmp eq ptr %i.ah, %i.al
  br i1 %i.am, label %.loopexit, label %.lr.ph.i9

_ZN5ImGui22FindWindowSettingsByIDEj.exit:         ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %.0914.i, i8 0, i64 15, i1 false)
  br label %bb.h

.loopexit:                                        ; preds = %select.unfold.i, %_Z9ImHashStrPKcmj.exit
  %i.an = tail call noundef ptr @_ZN5ImGui23CreateNewWindowSettingsEPKc(ptr noundef nonnull %2)
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %_ZN5ImGui22FindWindowSettingsByIDEj.exit
  %.0 = phi ptr [ %.0914.i, %_ZN5ImGui22FindWindowSettingsByIDEj.exit ], [ %i.an, %.loopexit ] ; 3 uses
  store i32 %.4.i, ptr %.0, align 4, !tbaa !608
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 14 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 2
  %i.aq = or i8 %i.ap, 4
  store i8 %i.aq, ptr %i.ao, align 2
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL30WindowSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) #31 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.d = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %3, ptr noundef nonnull @.str.766, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #41
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !237
  %i.g = load i32, ptr %i.b, align 4, !tbaa !237
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.413.0.insert.ext = shl i32 %i.g, 16
  %.sroa.012.0.insert.ext = and i32 %i.f, 65535
  %.sroa.012.0.insert.insert = or disjoint i32 %.sroa.413.0.insert.ext, %.sroa.012.0.insert.ext
  store i32 %.sroa.012.0.insert.insert, ptr %i.h, align 4, !tbaa !255
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %3, ptr noundef nonnull @.str.767, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #41
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.a, align 4, !tbaa !237
  %i.l = load i32, ptr %i.b, align 4, !tbaa !237
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.insert.ext = shl i32 %i.l, 16
  %.sroa.011.0.insert.ext = and i32 %i.k, 65535
  %.sroa.011.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.ext, %.sroa.011.0.insert.ext
  store i32 %.sroa.011.0.insert.insert, ptr %i.m, align 4, !tbaa !255
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.n = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %3, ptr noundef nonnull @.str.768, ptr noundef nonnull %i.c) #41
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.c, align 4, !tbaa !237
  %i.q = icmp ne i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.s = zext i1 %i.q to i8
  %i.t = load i8, ptr %i.r, align 2
  %i.u = and i8 %i.t, -2
  %i.v = or disjoint i8 %i.u, %i.s
  store i8 %i.v, ptr %i.r, align 2
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.w = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %3, ptr noundef nonnull @.str.769, ptr noundef nonnull %i.c) #41
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.c, align 4, !tbaa !237
  %.not = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = select i1 %.not, i8 0, i8 2
  %i.ac = and i8 %i.aa, -3
  %i.ad = or disjoint i8 %i.ac, %i.ab
  store i8 %i.ad, ptr %i.z, align 2
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ae = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %3, ptr noundef nonnull @.str.770, ptr noundef nonnull %i.c) #41
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !237 ; 3 uses
  %i.ah = sdiv i32 %i.ag, 10000
  %i.ai = trunc i32 %i.ah to i16
  %i.aj = add i16 %i.ai, 48
  %i.ak = and i16 %i.aj, 127
  %i.al = sdiv i32 %i.ag, 100
  %i.am = srem i32 %i.al, 100
  %i.an = trunc nsw i32 %i.am to i16
  %i.ao = shl nsw i16 %i.an, 7
  %i.ap = srem i32 %i.ag, 100
  %i.aq = trunc nsw i32 %i.ap to i16
  %i.ar = shl i16 %i.aq, 11
  %.masked.i = and i16 %i.ao, 1920
  %i.as = or disjoint i16 %i.ak, %.masked.i
  %i.at = or disjoint i16 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i16 %i.at, ptr %i.au, align 4, !tbaa !82
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.f, %bb.i, %bb.h, %bb.d, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL30WindowSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #38 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !603  ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load ptr, ptr @GImGui, align 8           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5280
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 5288
  br label %bb.b

select.unfold._crit_edge:                         ; preds = %select.unfold, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.bq, %select.unfold ]
  %.019 = phi ptr [ %i.d, %.lr.ph ], [ %i.bu, %select.unfold ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.019, i64 14 ; 4 uses
  %i.j = load i8, ptr %i.i, align 2               ; 4 uses
  %i.k = and i8 %i.j, 4
  %.not12 = icmp eq i8 %i.k, 0
  br i1 %.not12, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %.019, align 4, !tbaa !608 ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !262  ; 3 uses
  %i.n = load i32, ptr %i.f, align 8, !tbaa !261  ; 2 uses
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %.idx.i.i = shl nsw i64 %i.o, 4
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.i
  %.not15.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not15.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %.01316.i.i.i = phi ptr [ %.114.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = lshr i64 %.017.i.i.i, 1                  ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !260
  %i.t = icmp ult i32 %i.s, %i.l                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.neg.i.i.i = xor i64 %i.q, -1
  %i.v = add i64 %.017.i.i.i, %.neg.i.i.i
  %.114.i.i.i = select i1 %i.t, ptr %i.u, ptr %.01316.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.t, i64 %i.v, i64 %i.q  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !8

_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.c
  %.013.lcssa.i.i.i = phi ptr [ %i.m, %bb.c ], [ %.114.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.w = icmp eq ptr %.013.lcssa.i.i.i, %i.p
end_hunk_0
begin_hunk_1_@_ZN5ImGui23CreateNewWindowSettingsEPKc:bb.a

bb.e:                                             ; preds = %bb.d
  %i.w = sdiv i32 %i.u, 2
  %i.x = add nsw i32 %i.w, %i.u
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i:      ; preds = %bb.e, %bb.d
  %i.y = phi i32 [ %i.x, %bb.e ], [ 8, %bb.d ]
  %i.z = tail call noundef i32 @llvm.smax.i32(i32 %i.y, i32 %i.s)
  tail call void @_ZN8ImVectorIcE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.z)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, %_Z30ImHashSkipUncontributingPrefixPKc.exit
  store i32 %i.s, ptr %i.n, align 8, !tbaa !280
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 10112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !603
  %i.ac = sext i32 %i.o to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac ; 3 uses
  store i32 %i.r, ptr %i.ad, align 4, !tbaa !237
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader45.i

.preheader.i:                                     ; preds = %bb.f
  %i.af = load i8, ptr %.0, align 1, !tbaa !82    ; 2 uses
  %.not4050.i = icmp eq i8 %i.af, 0
  br i1 %.not4050.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

.preheader45.i:                                   ; preds = %bb.f, %bb.k
  %.03049.i = phi ptr [ %.1.i, %bb.k ], [ %.0, %bb.f ] ; 4 uses
  %.03148.i = phi i32 [ %.132.i, %bb.k ], [ -1, %bb.f ] ; 2 uses
  %.03547.i = phi i64 [ %.136.i, %bb.k ], [ %i.m, %bb.f ] ; 2 uses
  %i.ag = add i64 %.03547.i, -1                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03049.i, i64 1 ; 2 uses
  %i.ai = load i8, ptr %.03049.i, align 1, !tbaa !82 ; 2 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = icmp eq i8 %i.ai, 35
  %i.al = icmp ugt i64 %i.ag, 1
  %or.cond.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.preheader45.i
  %i.am = load i8, ptr %i.ah, align 1, !tbaa !82
  %i.an = icmp eq i8 %i.am, 35
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.03049.i, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !82
  %i.aq = icmp eq i8 %i.ap, 35
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.03049.i, i64 3
  %i.as = add i64 %.03547.i, -3
  br label %bb.k, !llvm.loop !5

bb.j:                                             ; preds = %bb.h, %bb.g, %.preheader45.i
  %i.at = lshr i32 %.03148.i, 8
  %i.au = and i32 %.03148.i, 255
  %i.av = xor i32 %i.au, %i.aj
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !237
  %i.az = xor i32 %i.ay, %i.at
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.136.i = phi i64 [ %i.as, %bb.i ], [ %i.ag, %bb.j ] ; 2 uses
  %.132.i = phi i32 [ -1, %bb.i ], [ %i.az, %bb.j ] ; 2 uses
  %.1.i = phi ptr [ %i.ar, %bb.i ], [ %i.ah, %bb.j ]
  %.not41.i = icmp eq i64 %.136.i, 0
  br i1 %.not41.i, label %_Z9ImHashStrPKcmj.exit, label %.preheader45.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %i.ba = phi i8 [ %i.br, %bb.p ], [ %i.af, %.preheader.i ] ; 2 uses
  %.252.i = phi ptr [ %.3.i, %bb.p ], [ %.0, %.preheader.i ] ; 3 uses
  %.23351.i = phi i32 [ %.334.i, %bb.p ], [ -1, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.252.i, i64 1 ; 2 uses
  %i.bc = zext i8 %i.ba to i32
  %i.bd = icmp eq i8 %i.ba, 35
  br i1 %i.bd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph.i
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !82
  %i.bf = icmp eq i8 %i.be, 35
  br i1 %i.bf, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.252.i, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !82
  %i.bi = icmp eq i8 %i.bh, 35
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.252.i, i64 3
  br label %bb.p, !llvm.loop !6

bb.o:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i
  %i.bk = lshr i32 %.23351.i, 8
  %i.bl = and i32 %.23351.i, 255
  %i.bm = xor i32 %i.bl, %i.bc
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !237
  %i.bq = xor i32 %i.bp, %i.bk
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.334.i = phi i32 [ -1, %bb.n ], [ %i.bq, %bb.o ] ; 2 uses
  %.3.i = phi ptr [ %i.bj, %bb.n ], [ %i.bb, %bb.o ] ; 2 uses
  %i.br = load i8, ptr %.3.i, align 1, !tbaa !82  ; 2 uses
  %.not40.i = icmp eq i8 %i.br, 0
  br i1 %.not40.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

_Z9ImHashStrPKcmj.exit:                           ; preds = %bb.k, %bb.p, %.preheader.i
  %.4.i = phi i32 [ %.334.i, %bb.p ], [ -1, %.preheader.i ], [ %.132.i, %bb.k ]
  %i.bs = xor i32 %.4.i, -1
  store i32 %i.bs, ptr %i.ae, align 4, !tbaa !608
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.bu = add i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr nonnull align 1 %.0, i64 %i.bu, i1 false)
  ret ptr %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui22FindWindowSettingsByIDEj(i32 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10104
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !603  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %.0914 = phi ptr [ %i.n, %select.unfold ], [ %i.e, %.lr.ph.preheader ] ; 5 uses
  %i.f = load i32, ptr %.0914, align 4, !tbaa !608
  %i.g = icmp eq i32 %i.f, %0
  br i1 %i.g, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.0914, i64 14
  %i.i = load i8, ptr %i.h, align 2
  %i.j = and i8 %i.i, 8
  %.not11 = icmp eq i8 %i.j, 0
  br i1 %.not11, label %._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph, %bb.b
  %i.k = getelementptr inbounds i8, ptr %.0914, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !237
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %.0914, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.b, align 8, !tbaa !606
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = icmp eq ptr %i.n, %i.r
  br i1 %i.s, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %select.unfold, %bb.b, %bb.a
  %.09.lcssa = phi ptr [ null, %bb.a ], [ %.0914, %bb.b ], [ null, %select.unfold ]
  ret ptr %.09.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.b = load i32, ptr %i.a, align 4, !tbaa !602  ; 2 uses
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 10112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !603
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  br label %_ZN5ImGui22FindWindowSettingsByIDEj.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !618
  %i.j = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10104
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 10112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !603  ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5ImGui22FindWindowSettingsByIDEj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %select.unfold.i
  %.0914.i = phi ptr [ %i.w, %select.unfold.i ], [ %i.n, %.lr.ph.i.preheader ] ; 5 uses
  %i.o = load i32, ptr %.0914.i, align 4, !tbaa !608
  %i.p = icmp eq i32 %i.o, %i.i
  br i1 %i.p, label %bb.d, label %select.unfold.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0914.i, i64 14
  %i.r = load i8, ptr %i.q, align 2
  %i.s = and i8 %i.r, 8
  %.not11.i = icmp eq i8 %i.s, 0
  br i1 %.not11.i, label %_ZN5ImGui22FindWindowSettingsByIDEj.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.d, %.lr.ph.i
  %i.t = getelementptr inbounds i8, ptr %.0914.i, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !237
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %.0914.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.k, align 8, !tbaa !606
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.m, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = icmp eq ptr %i.w, %i.aa
  br i1 %i.ab, label %_ZN5ImGui22FindWindowSettingsByIDEj.exit, label %.lr.ph.i

_ZN5ImGui22FindWindowSettingsByIDEj.exit:         ; preds = %select.unfold.i, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.c ], [ null, %select.unfold.i ], [ %.0914.i, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui19ClearWindowSettingsEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #38 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !82      ; 3 uses
  %.not4050.i.i = icmp eq i8 %i.a, 0              ; 2 uses
  br i1 %.not4050.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.f
  %i.b = phi i8 [ %i.s, %bb.f ], [ %i.a, %bb.a ]  ; 2 uses
  %.252.i.i = phi ptr [ %.3.i.i, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %.23351.i.i = phi i32 [ %.334.i.i, %bb.f ], [ -1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 1 ; 2 uses
  %i.d = zext i8 %i.b to i32
  %i.e = icmp eq i8 %i.b, 35
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = load i8, ptr %i.c, align 1, !tbaa !82
  %i.g = icmp eq i8 %i.f, 35
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !82
  %i.j = icmp eq i8 %i.i, 35
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.f, !llvm.loop !6

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.l = lshr i32 %.23351.i.i, 8
  %i.m = and i32 %.23351.i.i, 255
  %i.n = xor i32 %i.m, %i.d
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !237
  %i.r = xor i32 %i.q, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.334.i.i = phi i32 [ -1, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.3.i.i = phi ptr [ %i.k, %bb.d ], [ %i.c, %bb.e ] ; 2 uses
  %i.s = load i8, ptr %.3.i.i, align 1, !tbaa !82 ; 2 uses
  %.not40.i.i = icmp eq i8 %i.s, 0
  br i1 %.not40.i.i, label %_Z9ImHashStrPKcmj.exit.loopexit.i, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.loopexit.i:                ; preds = %bb.f
  %i.t = xor i32 %.334.i.i, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.loopexit.i, %bb.a
  %.4.i.i = phi i32 [ 0, %bb.a ], [ %i.t, %_Z9ImHashStrPKcmj.exit.loopexit.i ] ; 2 uses
  %i.u = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 5280
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 5288
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !262  ; 3 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !261  ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %.idx.i.i.i = shl nsw i64 %i.z, 4
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %.idx.i.i.i
  %.not15.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not15.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_Z9ImHashStrPKcmj.exit.i, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %.01316.i.i.i.i = phi ptr [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.x, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %i.ab = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i.i, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !260
  %i.ae = icmp ult i32 %i.ad, %.4.i.i             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.neg.i.i.i.i = xor i64 %i.ab, -1
  %i.ag = add i64 %.017.i.i.i.i, %.neg.i.i.i.i
  %.114.i.i.i.i = select i1 %i.ae, ptr %i.af, ptr %.01316.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.ae, i64 %i.ag, i64 %i.ab ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_Z9ImHashStrPKcmj.exit.i
  %.013.lcssa.i.i.i.i = phi ptr [ %i.x, %_Z9ImHashStrPKcmj.exit.i ], [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ah = icmp eq ptr %.013.lcssa.i.i.i.i, %i.aa
  br i1 %i.ah, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i
  %i.ai = load i32, ptr %.013.lcssa.i.i.i.i, align 8, !tbaa !260
  %.not.i.i.i = icmp eq i32 %i.ai, %.4.i.i
  br i1 %.not.i.i.i, label %_ZN5ImGui16FindWindowByNameEPKc.exit, label %.critedge

_ZN5ImGui16FindWindowByNameEPKc.exit:             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !82 ; 13 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui16FindWindowByNameEPKc.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !614 ; 2 uses
  %i.an = or i32 %i.am, 256
  store i32 %i.an, ptr %i.al, align 4, !tbaa !614
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 8208
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !399
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !400
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load <2 x float>, ptr %i.ar, align 4, !tbaa !75
  %i.at = fadd <2 x float> %i.as, splat (float 6.000000e+01) ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store <2 x float> %i.at, ptr %i.au, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 239 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = and i32 %i.ax, 255
  %i.az = or disjoint i32 %i.ay, 252645120
  store i32 %i.az, ptr %i.aw, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 312
  store <2 x float> %i.at, ptr %i.ba, align 8, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 304
  store <2 x float> %i.at, ptr %i.bb, align 8, !tbaa !75
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 296
  store <2 x float> %i.at, ptr %i.bc, align 8, !tbaa !75
  %i.bd = and i32 %i.am, 64
  %.not31.i.i.not = icmp eq i32 %i.bd, 0
  %.sink.i.i = zext i1 %.not31.i.i.not to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 232
  store i8 2, ptr %i.be, align 8, !tbaa !612
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 233
  store i8 2, ptr %i.bf, align 1, !tbaa !611
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 234
  store i8 %.sink.i.i, ptr %i.bg, align 2, !tbaa !617
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 708
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !602 ; 2 uses
  %.not.i = icmp eq i32 %i.bi, -1
  br i1 %.not.i, label %bb.i, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !618
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 10104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 10112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !603 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i11, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %select.unfold.i.i, %.lr.ph.i.preheader.i
  %.0914.i.i = phi ptr [ %i.bx, %select.unfold.i.i ], [ %i.bo, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.bp = load i32, ptr %.0914.i.i, align 4, !tbaa !608
  %i.bq = icmp eq i32 %i.bp, %i.bk
  br i1 %i.bq, label %bb.j, label %select.unfold.i.i

bb.j:                                             ; preds = %.lr.ph.i.i12
  %i.br = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 14
  %i.bs = load i8, ptr %i.br, align 2             ; 2 uses
  %i.bt = and i8 %i.bs, 8
  %.not11.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not11.i.i, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread18, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %bb.j, %.lr.ph.i.i12
  %i.bu = getelementptr inbounds i8, ptr %.0914.i.i, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !237
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %.0914.i.i, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bl, align 8, !tbaa !606
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bn, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = icmp eq ptr %i.bx, %i.cb
  br i1 %i.cc, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread, label %.lr.ph.i.i12

.critedge:                                        ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, %bb.g, %_ZN5ImGui16FindWindowByNameEPKc.exit
  br i1 %.not4050.i.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge, %bb.o
  %i.cd = phi i8 [ %i.cu, %bb.o ], [ %i.a, %.critedge ] ; 2 uses
  %.252.i = phi ptr [ %.3.i, %bb.o ], [ %0, %.critedge ] ; 3 uses
  %.23351.i = phi i32 [ %.334.i, %bb.o ], [ -1, %.critedge ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.252.i, i64 1 ; 2 uses
  %i.cf = zext i8 %i.cd to i32
  %i.cg = icmp eq i8 %i.cd, 35
  br i1 %i.cg, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.ch = load i8, ptr %i.ce, align 1, !tbaa !82
  %i.ci = icmp eq i8 %i.ch, 35
  br i1 %i.ci, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %.252.i, i64 2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !82
  %i.cl = icmp eq i8 %i.ck, 35
  br i1 %i.cl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %.252.i, i64 3
  br label %bb.o, !llvm.loop !6

bb.n:                                             ; preds = %bb.l, %bb.k, %.lr.ph.i
  %i.cn = lshr i32 %.23351.i, 8
  %i.co = and i32 %.23351.i, 255
  %i.cp = xor i32 %i.co, %i.cf
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !237
  %i.ct = xor i32 %i.cs, %i.cn
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.334.i = phi i32 [ -1, %bb.m ], [ %i.ct, %bb.n ] ; 2 uses
  %.3.i = phi ptr [ %i.cm, %bb.m ], [ %i.ce, %bb.n ] ; 2 uses
  %i.cu = load i8, ptr %.3.i, align 1, !tbaa !82  ; 2 uses
  %.not40.i = icmp eq i8 %i.cu, 0
  br i1 %.not40.i, label %_Z9ImHashStrPKcmj.exit, label %.lr.ph.i

_Z9ImHashStrPKcmj.exit:                           ; preds = %bb.o, %.critedge
  %.4.i = phi i32 [ -1, %.critedge ], [ %.334.i, %bb.o ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.u, i64 10104
  %i.cw = getelementptr inbounds nuw i8, ptr %i.u, i64 10112
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !603 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread, label %.lr.ph.i13.preheader

.lr.ph.i13.preheader:                             ; preds = %_Z9ImHashStrPKcmj.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13.preheader, %select.unfold.i
  %.0914.i = phi ptr [ %i.di, %select.unfold.i ], [ %i.cy, %.lr.ph.i13.preheader ] ; 5 uses
  %i.cz = load i32, ptr %.0914.i, align 4, !tbaa !608
  %i.da = xor i32 %i.cz, %.4.i
  %i.db = icmp eq i32 %i.da, -1
  br i1 %i.db, label %bb.p, label %select.unfold.i

bb.p:                                             ; preds = %.lr.ph.i13
  %i.dc = getelementptr inbounds nuw i8, ptr %.0914.i, i64 14
  %i.dd = load i8, ptr %i.dc, align 2             ; 2 uses
  %i.de = and i8 %i.dd, 8
  %.not11.i = icmp eq i8 %i.de, 0
  br i1 %.not11.i, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread18, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.p, %.lr.ph.i13
  %i.df = getelementptr inbounds i8, ptr %.0914.i, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !237
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %.0914.i, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.cv, align 8, !tbaa !606
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.cx, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = icmp eq ptr %i.di, %i.dm
  br i1 %i.dn, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread, label %.lr.ph.i13

_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit: ; preds = %bb.h
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 10112
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !603 ; 2 uses
  %.not10 = icmp eq ptr %i.dp, null
  br i1 %.not10, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread, label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit._ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread18_crit_edge

_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit._ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread18_crit_edge: ; preds = %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit
  %i.dq = sext i32 %i.bi to i64
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dr, i64 14
  %.pre = load i8, ptr %.phi.trans.insert, align 2
  br label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread18

_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread18: ; preds = %bb.j, %bb.p, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit._ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread18_crit_edge
  %i.ds = phi i8 [ %.pre, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit._ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread18_crit_edge ], [ %i.dd, %bb.p ], [ %i.bs, %bb.j ]
  %i.dt = phi ptr [ %i.dr, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit._ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread18_crit_edge ], [ %.0914.i, %bb.p ], [ %.0914.i.i, %bb.j ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 14
  %i.dv = or i8 %i.ds, 8
  store i8 %i.dv, ptr %i.du, align 2
  br label %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread

_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread: ; preds = %select.unfold.i.i, %select.unfold.i, %_Z9ImHashStrPKcmj.exit, %bb.i, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit.thread18, %_ZN5ImGui26FindWindowSettingsByWindowEP11ImGuiWindow.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL24InitOrLoadWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings(ptr nofree noundef captures(none) initializes((40, 64), (232, 235), (296, 320)) %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #48 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !399
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !400
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !75
  %i.g = fadd <2 x float> %i.f, splat (float 6.000000e+01) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store <2 x float> %i.g, ptr %i.h, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 239 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = load i32, ptr %i.k, align 1
  %i.m = and i32 %i.l, 255                        ; 2 uses
  %i.n = or disjoint i32 %i.m, 252645120
  store i32 %i.n, ptr %i.k, align 1
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load <2 x i16>, ptr %i.o, align 4, !tbaa !255
  %i.q = sitofp <2 x i16> %i.p to <2 x float>     ; 2 uses
  store <2 x float> %i.q, ptr %i.h, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i16, ptr %i.r, align 4, !tbaa !609  ; 2 uses
  %i.t = icmp sgt i16 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.v = load i16, ptr %i.u, align 2, !tbaa !610  ; 2 uses
  %i.w = icmp sgt i16 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = insertelement <2 x i16> poison, i16 %i.s, i64 0
  %i.y = insertelement <2 x i16> %i.x, i16 %i.v, i64 1
  %i.z = uitofp <2 x i16> %i.y to <2 x float>     ; 2 uses
  store <2 x float> %i.z, ptr %i.i, align 8, !tbaa !75
  store <2 x float> %i.z, ptr %i.j, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 0, ptr %i.aa, align 1, !tbaa !611
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.ab, align 8, !tbaa !612
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ac = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ae = load i8, ptr %i.ad, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 207
  %i.ag = and i8 %i.ae, 1
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !613
  %i.ah = or disjoint i32 %i.m, 185273088
  store i32 %i.ah, ptr %i.k, align 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %bb.e
  %i.ai = phi i1 [ %i.ac, %bb.e ], [ true, %bb.a ] ; 3 uses
  %.in = phi <2 x float> [ %i.q, %bb.e ], [ %i.g, %bb.a ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312
  store <2 x float> %.in, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x float> %.in, ptr %i.ak, align 8, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 296
  store <2 x float> %.in, ptr %i.al, align 8, !tbaa !75
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !614
  %i.ao = and i32 %i.an, 64
  %.not31.i = icmp ne i32 %i.ao, 0                ; 3 uses
  %.not = or i1 %.not31.i, %i.ai
  %.sink37.i = select i1 %.not, i8 2, i8 0
  %i.ap = or i1 %.not31.i, %i.ai
  %.sink36.i = select i1 %i.ap, i8 2, i8 0
  %not..not31.i = xor i1 %.not31.i, true
  %narrow = and i1 %i.ai, %not..not31.i
  %.sink.i = zext i1 %narrow to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 %.sink37.i, ptr %i.aq, align 8, !tbaa !612
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 %.sink36.i, ptr %i.ar, align 1, !tbaa !611
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 234
  store i8 %.sink.i, ptr %i.as, align 2, !tbaa !617
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 10064
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = load i16, ptr %i.at, align 8, !tbaa !82
  store i16 %i.av, ptr %i.au, align 4, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN15ImGuiPlatformIO21ClearPlatformHandlersEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((0, 56)) %0) local_unnamed_addr #9 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN15ImGuiPlatformIO21ClearRendererHandlersEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(120) initializes((64, 104)) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui22ScaleWindowsInViewportEP14ImGuiViewportPf(ptr nofree noundef readnone captures(address) %0, float noundef %1) local_unnamed_addr #38 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5216
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !494  ; 2 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !496  ; 2 uses
  %i.f = sext i32 %i.e to i64
  %.idx = shl nsw i64 %i.f, 3
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %.idx
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = insertelement <2 x float> poison, float %1, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.012 = phi ptr [ %i.ar, %bb.c ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.j = load ptr, ptr %.012, align 8, !tbaa !601 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !922  ; 2 uses
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.p = load <2 x float>, ptr %i.n, align 8      ; 2 uses
end_hunk_1

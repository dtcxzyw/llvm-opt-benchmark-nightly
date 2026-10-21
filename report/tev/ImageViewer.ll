Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageViewer?download=true
inline.NumInlined: 16087
inline.NumDeleted: 8272
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEED2B8ne180100Ev:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !506  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !507  ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 -1 acq_rel, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #46, !inline_history !1165
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #46
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN3tev5ImageEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !505
  br label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.m = phi ptr [ %.pre1.i, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !506
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !521
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.r) #48
  br label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrIN3tev22BackgroundImagesLoaderEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #46, !inline_history !15
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #46
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7nanogui6ScreenD2Ev(ptr noundef nonnull align 16 dead_on_return(520) dereferenceable(520)) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3tev11ImageViewer12resize_eventERKN7nanogui5ArrayIiLm2EEE(ptr noundef nonnull align 16 dereferenceable(1408) initializes((657, 658)) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !249
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load float, ptr %i.c, align 16, !tbaa !250
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store float %i.d, ptr %i.e, align 8, !tbaa !310
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 657
  store i8 1, ptr %i.f, align 1, !tbaa !214
  %i.g = tail call noundef zeroext i1 @_ZN7nanogui6Screen12resize_eventERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 16 dereferenceable(520) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret i1 %i.g
}

declare noundef zeroext i1 @_ZN7nanogui6Screen12resize_eventERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 16 dereferenceable(520), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3tev11ImageViewer18mouse_button_eventERKN7nanogui5ArrayIiLm2EEEibi(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #8 align 2 {
bb.a:
  br i1 %3, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !248
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !517
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load <2 x i32>, ptr %1, align 4, !tbaa !227
  %i.k = load <2 x i32>, ptr %i.g, align 4, !tbaa !227
  %i.l = load <2 x i32>, ptr %i.i, align 4, !tbaa !227
  %i.m = add <2 x i32> %i.k, %i.l
  %i.n = sub <2 x i32> %i.j, %i.m                 ; 2 uses
  %i.o = extractelement <2 x i32> %i.n, i64 0     ; 2 uses
  %i.p = extractelement <2 x i32> %i.n, i64 1     ; 2 uses
  %i.q = or i32 %i.p, %i.o
  %or.cond.i = icmp sgt i32 %i.q, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp slt i32 %i.o, %i.s
  %or.cond6.i = select i1 %or.cond.i, i1 %i.t, i1 false
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp slt i32 %i.p, %i.v
  %i.x = select i1 %or.cond6.i, i1 %i.w, i1 false
  br i1 %i.x, label %bb.c, label %.thread77

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !417  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = tail call i64 @_ZNK7nanogui6Widget17absolute_positionEv(ptr noundef nonnull align 8 dereferenceable(148) %0) ; 2 uses
  %.sroa.467.0.extract.shift = lshr i64 %i.ab, 32
  %.sroa.467.0.extract.trunc = trunc nuw i64 %.sroa.467.0.extract.shift to i32
  %i.ac = load i32, ptr %1, align 4, !tbaa !227
  %i.ad = load i32, ptr %i.h, align 4, !tbaa !227
  %i.ae = add nsw i32 %i.ad, %.sroa.467.0.extract.trunc
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !417
  %i.ag = tail call i64 @_ZNK7nanogui6Widget17absolute_positionEv(ptr noundef nonnull align 8 dereferenceable(148) %i.af) ; 2 uses
  %.sroa.465.0.extract.shift = lshr i64 %i.ag, 32
  %.sroa.465.0.extract.trunc = trunc nuw i64 %.sroa.465.0.extract.shift to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !396 ; 2 uses
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !397 ; 3 uses
  %.not95 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not95, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %.sroa.064.0.extract.trunc = trunc i64 %i.ag to i32
  %.sroa.066.0.extract.trunc = trunc i64 %i.ab to i32
  %.neg87 = add i32 %i.ac, %.sroa.066.0.extract.trunc
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.03091 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.g ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.03091
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !398, !nonnull !385, !noundef !385 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !233, !range !331, !noundef !385
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.au = load i32, ptr %i.at, align 8, !tbaa !227
  %i.av = add i32 %i.au, %.sroa.064.0.extract.trunc
  %i.aw = sub i32 %.neg87, %i.av                  ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !227
  %i.az = add i32 %i.ay, %.sroa.465.0.extract.trunc
  %i.ba = sub i32 %i.ae, %i.az                    ; 3 uses
  %i.bb = or i32 %i.ba, %i.aw
  %or.cond.i44 = icmp sgt i32 %i.bb, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = icmp slt i32 %i.aw, %i.bd
  %or.cond6.i45 = select i1 %or.cond.i44, i1 %i.be, i1 false
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp slt i32 %i.ba, %i.bg
  %i.bi = select i1 %or.cond6.i45, i1 %i.bh, i1 false
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 176
  %i.bk = load ptr, ptr %i.bj, align 16, !tbaa !1167
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !233, !range !331, !noundef !385
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.f
  %.sroa.2.0.insert.ext.i46 = zext nneg i32 %i.ba to i64
  %.sroa.2.0.insert.shift.i47 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i46, 32
  %.sroa.0.0.insert.ext.i48 = zext nneg i32 %i.aw to i64
  %.sroa.0.0.insert.insert.i49 = or disjoint i64 %.sroa.2.0.insert.shift.i47, %.sroa.0.0.insert.ext.i48
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i64 %.sroa.0.0.insert.insert.i49, ptr %i.bo, align 16, !tbaa !220
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i32 3, ptr %i.bp, align 8, !tbaa !218
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store i64 %.03091, ptr %i.bq, align 16, !tbaa !522
  br label %.loopexit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.br = add nuw i64 %.03091, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.an
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !1166

.loopexit:                                        ; preds = %bb.g, %bb.c, %.critedge
  %i.bs = tail call noundef zeroext i1 @_ZN7nanogui6Widget18mouse_button_eventERKNS_5ArrayIiLm2EEEibi(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext true, i32 noundef %4)
  br i1 %i.bs, label %bb.p, label %.thread78

.thread77:                                        ; preds = %bb.b
  %i.bt = tail call noundef zeroext i1 @_ZN7nanogui6Widget18mouse_button_eventERKNS_5ArrayIiLm2EEEibi(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext true, i32 noundef %4)
  br i1 %i.bt, label %bb.p, label %.thread78

.thread:                                          ; preds = %bb.a
  %i.bu = tail call noundef zeroext i1 @_ZN7nanogui6Widget18mouse_button_eventERKNS_5ArrayIiLm2EEEibi(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext false, i32 noundef %4)
  br i1 %i.bu, label %bb.p, label %.critedge35

.thread78:                                        ; preds = %.loopexit, %.thread77
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !417 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !397 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !396 ; 2 uses
  %.not7992 = icmp eq ptr %i.by, %i.ca
  br i1 %.not7992, label %._crit_edge, label %.lr.ph94

._crit_edge:                                      ; preds = %.lr.ph94, %.thread78
  %i.cb = tail call noundef ptr @_ZN7nanogui6Widget6screenEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 152
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !226
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !218
  %.not = icmp eq i32 %i.cf, 3
  br i1 %.not, label %bb.p, label %bb.h

.lr.ph94:                                         ; preds = %.thread78, %.lr.ph94
  %.sroa.061.093 = phi ptr [ %i.ch, %.lr.ph94 ], [ %i.by, %.thread78 ] ; 2 uses
  %i.cg = load ptr, ptr %.sroa.061.093, align 8, !tbaa !398, !nonnull !385, !noundef !385
  tail call void @_ZN3tev11ImageButton11hideTextBoxEv(ptr noundef nonnull align 16 dereferenceable(400) %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.061.093, i64 8 ; 2 uses
  %.not79 = icmp eq ptr %i.ch, %i.ca
  br i1 %.not79, label %._crit_edge, label %.lr.ph94

bb.h:                                             ; preds = %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.cj = load i64, ptr %1, align 4, !tbaa !220
  store i64 %i.cj, ptr %i.ci, align 16, !tbaa !220
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cl = load ptr, ptr %i.ck, align 16, !tbaa !232 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 104
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !233, !range !331, !noundef !385
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit, label %._ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit.thread_crit_edge

._ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit.thread_crit_edge: ; preds = %bb.h
  %.pre = load i32, ptr %1, align 4, !tbaa !227
  %.pre99 = load i32, ptr %i.h, align 4, !tbaa !227
  br label %_ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit.thread

_ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit: ; preds = %bb.h
  %.sroa.0.0.copyload = load i64, ptr %1, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !227
  %i.cr = add i32 %.sroa.0.0.extract.trunc.i, 4
  %i.cs = sub i32 %i.cr, %i.cq
  %spec.select.i = icmp ult i32 %i.cs, 14
  %i.ct = lshr i64 %.sroa.0.0.copyload, 32
  %i.cu = trunc nuw i64 %i.ct to i32
  br i1 %spec.select.i, label %bb.i, label %_ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit.thread

bb.i:                                             ; preds = %_ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit
  store i32 4, ptr %i.ce, align 8, !tbaa !218
  br label %bb.p

_ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit.thread: ; preds = %._ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit.thread_crit_edge, %_ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit
  %i.cv = phi i32 [ %.pre99, %._ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit.thread_crit_edge ], [ %i.cu, %_ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit ]
  %i.cw = phi i32 [ %.pre, %._ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit.thread_crit_edge ], [ %.sroa.0.0.extract.trunc.i, %_ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.cy = load ptr, ptr %i.cx, align 16, !tbaa !249 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !227
  %i.db = sub nsw i32 %i.cw, %i.da                ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !227
  %i.de = sub nsw i32 %i.cv, %i.dd                ; 2 uses
  %i.df = or i32 %i.de, %i.db
  %or.cond.i50 = icmp sgt i32 %i.df, -1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = icmp slt i32 %i.db, %i.dh
  %or.cond6.i51 = select i1 %or.cond.i50, i1 %i.di, i1 false
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 52
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = icmp slt i32 %i.de, %i.dk
  %i.dm = select i1 %or.cond6.i51, i1 %i.dl, i1 false
  br i1 %i.dm, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit.thread
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !439
  %.not80 = icmp eq ptr %i.do, null
  br i1 %.not80, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = tail call i32 @glfwGetKey(ptr noundef %i.cd, i32 noundef 67)
  %.not33 = icmp eq i32 %i.dp, 0
  %i.dq = select i1 %.not33, i32 1, i32 2
  store i32 %i.dq, ptr %i.ce, align 8, !tbaa !218
  br label %bb.p

.critedge35:                                      ; preds = %.thread
  %i.dr = tail call noundef ptr @_ZN7nanogui6Widget6screenEv(ptr noundef nonnull align 8 dereferenceable(148) %0) ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !218
  switch i32 %i.dt, label %bb.o [
    i32 3, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %.critedge35
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 657
  store i8 1, ptr %i.du, align 1, !tbaa !214
  br label %bb.o

bb.m:                                             ; preds = %.critedge35
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.dw = load i32, ptr %i.dv, align 16, !tbaa !227
  %i.dx = load i32, ptr %1, align 4, !tbaa !227
  %i.dy = sub nsw i32 %i.dw, %i.dx                ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !227
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !227
  %i.ed = sub nsw i32 %i.ea, %i.ec                ; 2 uses
  %i.ee = mul nsw i32 %i.dy, %i.dy
  %i.ef = mul nsw i32 %i.ed, %i.ed
  %i.eg = add nuw nsw i32 %i.ef, %i.ee
  %i.eh = uitofp nneg i32 %i.eg to double
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.eh)
  %i.ei = fptosi double %sqrt.i to i32
  %i.ej = icmp samesign ult i32 %i.ei, 3
  br i1 %i.ej, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.el = load ptr, ptr %i.ek, align 16, !tbaa !249 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 364
  store i8 0, ptr %i.em, align 4
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 380
  store i8 0, ptr %.sroa.457.0..sroa_idx, align 4
  br label %bb.o

bb.o:                                             ; preds = %.critedge35, %bb.n, %bb.m, %bb.l
  store i32 0, ptr %i.ds, align 8, !tbaa !218
  br label %bb.p

bb.p:                                             ; preds = %.thread77, %.thread, %bb.i, %bb.k, %._crit_edge, %_ZN3tev11ImageViewer18canDragSidebarFromEN7nanogui5ArrayIiLm2EEE.exit.thread, %bb.j, %bb.o, %.loopexit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZNK7nanogui6Widget17absolute_positionEv(ptr noundef nonnull align 8 dereferenceable(148) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !517  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %common.ret, label %bb.b

common.ret1:                                      ; preds = %bb.b, %common.ret
  %common.ret1.op = phi i64 [ %.sroa.0.0.copyload, %common.ret ], [ %.sroa.0.0.insert.insert.i, %bb.b ]
  ret i64 %common.ret1.op

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_ZNK7nanogui6Widget17absolute_positionEv(ptr noundef nonnull align 8 dereferenceable(148) %i.b) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.c to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.c, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !227
  %i.f = add nsw i32 %i.e, %.sroa.0.0.extract.trunc
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !227
  %i.i = add nsw i32 %i.h, %.sroa.4.0.extract.trunc
  %.sroa.2.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.f to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  br label %common.ret1

end_hunk_0

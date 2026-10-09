Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/widget?download=true
inline.NumInlined: 566
inline.NumDeleted: 317
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK7nanogui6Widget11find_widgetERKNS_5ArrayIiLm2EEE:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.321.030 = phi ptr [ %i.c, %.lr.ph ], [ %i.k, %bb.d ]
  %i.k = getelementptr inbounds i8, ptr %.sroa.321.030, i64 -8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.n = load i8, ptr %i.m, align 8, !tbaa !50, !range !49, !noundef !51
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !15
  %i.r = sub nsw i32 %i.e, %i.q                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !15
  %i.u = sub nsw i32 %i.j, %i.t                   ; 2 uses
  %i.v = or i32 %i.u, %i.r
  %or.cond.i = icmp sgt i32 %i.v, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp slt i32 %i.r, %i.x
  %or.cond6.i = select i1 %or.cond.i, i1 %i.y, i1 false
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp slt i32 %i.u, %i.aa
  %i.ac = select i1 %or.cond6.i, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not = icmp eq ptr %i.k, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !70

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.insert.ext.i = zext i32 %i.e to i64
  %.sroa.2.0.insert.ext.i = zext i32 %i.j to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i64 %.sroa.0.0.insert.insert.i, ptr %2, align 8
  %i.ad = call noundef ptr @_ZN7nanogui6Widget11find_widgetERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 8 dereferenceable(148) %i.l, ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.._crit_edge_crit_edge
  %.pre-phi39 = phi i32 [ %.pre38, %.._crit_edge_crit_edge ], [ %i.j, %bb.d ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre37, %.._crit_edge_crit_edge ], [ %i.e, %bb.d ] ; 2 uses
  %i.ae = or i32 %.pre-phi39, %.pre-phi
  %or.cond.i17 = icmp sgt i32 %i.ae, -1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp slt i32 %.pre-phi, %i.ag
  %or.cond6.i18 = select i1 %or.cond.i17, i1 %i.ah, i1 false
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp slt i32 %.pre-phi39, %i.aj
  %i.al = select i1 %or.cond6.i18, i1 %i.ak, i1 false
  %. = select i1 %i.al, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.3 = phi ptr [ %., %._crit_edge ], [ %i.ad, %bb.e ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7nanogui6Widget18mouse_button_eventERKNS_5ArrayIiLm2EEEibi(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.nanogui::Array", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not30.not = icmp eq ptr %i.c, %i.d
  br i1 %.not30.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge17
  %i.h = phi ptr [ %i.d, %.lr.ph ], [ %i.al, %.critedge17 ]
  %.sroa.326.031 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %.critedge17 ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.326.031, i64 -8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !50, !range !49, !noundef !51
  %i.m = trunc nuw i8 %i.l to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %1, align 4, !tbaa !15
  %i.o = load i32, ptr %i.e, align 8, !tbaa !15
  %i.p = sub nsw i32 %i.n, %i.o                   ; 2 uses
  %i.q = load i32, ptr %i.f, align 4, !tbaa !15
  %i.r = load i32, ptr %i.g, align 4, !tbaa !15
  %i.s = sub nsw i32 %i.q, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !15
  %i.v = sub nsw i32 %i.p, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !15
  %i.y = sub nsw i32 %i.s, %i.x                   ; 2 uses
  %i.z = or i32 %i.y, %i.v
  %or.cond.i = icmp sgt i32 %i.z, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp slt i32 %i.v, %i.ab
  %or.cond6.i = select i1 %or.cond.i, i1 %i.ac, i1 false
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp slt i32 %i.y, %i.ae
  %i.ag = select i1 %or.cond6.i, i1 %i.af, i1 false
  br i1 %i.ag, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.ext.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.ext.i = zext i32 %i.s to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %5, align 8
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(148) %i.j, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %i.ak, label %.loopexit, label %..critedge17_crit_edge

..critedge17_crit_edge:                           ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !44
  br label %.critedge17

.critedge:                                        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.critedge17

.critedge17:                                      ; preds = %..critedge17_crit_edge, %.critedge
  %i.al = phi ptr [ %.pre, %..critedge17_crit_edge ], [ %i.h, %.critedge ] ; 2 uses
  %.not.not = icmp eq ptr %i.i, %i.al
  br i1 %.not.not, label %._crit_edge, label %bb.b, !llvm.loop !71

._crit_edge:                                      ; preds = %.critedge17, %bb.a
  %i.am = icmp eq i32 %2, 0
  %or.cond = and i1 %i.am, %3
  br i1 %or.cond, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !53, !range !49, !noundef !51
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e, %.preheader
  %.0.i = phi ptr [ %i.ar, %.preheader ], [ %0, %bb.e ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZN7nanogui6Widget13request_focusEv.exit, label %.preheader, !llvm.loop !0

_ZN7nanogui6Widget13request_focusEv.exit:         ; preds = %.preheader
  call void @_ZN7nanogui6Screen12update_focusEPNS_6WidgetE(ptr noundef nonnull align 16 dereferenceable(520) %.0.i, ptr noundef nonnull align 8 dereferenceable(148) %0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %._crit_edge, %bb.e, %_ZN7nanogui6Widget13request_focusEv.exit
  %.not29 = phi i1 [ false, %_ZN7nanogui6Widget13request_focusEv.exit ], [ false, %._crit_edge ], [ false, %bb.e ], [ true, %bb.d ]
  ret i1 %.not29
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui6Widget13request_focusEv(ptr noundef nonnull align 8 dereferenceable(148) %0) local_unnamed_addr #0 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7nanogui6Screen12update_focusEPNS_6WidgetE(ptr noundef nonnull align 16 dereferenceable(520) %.0, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7nanogui6Widget18mouse_motion_eventERKNS_5ArrayIiLm2EEES4_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.nanogui::Array", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !44
  %.not50 = icmp eq ptr %i.c, %i.d
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.3, %bb.g ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.052 = phi i1 [ false, %.lr.ph ], [ %.3, %bb.g ] ; 3 uses
  %.sroa.344.051 = phi ptr [ %i.c, %.lr.ph ], [ %i.h, %bb.g ]
  %i.h = getelementptr inbounds i8, ptr %.sroa.344.051, i64 -8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48   ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load i8, ptr %i.j, align 8, !tbaa !50, !range !49, !noundef !51
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %7 = load i32, ptr %1, align 4, !tbaa !15
  %8 = load i32, ptr %i.e, align 8, !tbaa !15
  %9 = sub nsw i32 %7, %8                         ; 2 uses
  %10 = load i32, ptr %i.f, align 4, !tbaa !15
  %i.m = load i32, ptr %i.g, align 4, !tbaa !15
  %11 = sub nsw i32 %10, %i.m                     ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %13 = load i32, ptr %12, align 8, !tbaa !15     ; 2 uses
  %14 = sub nsw i32 %9, %13                       ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %16 = load i32, ptr %15, align 4, !tbaa !15     ; 2 uses
  %17 = sub nsw i32 %11, %16                      ; 2 uses
  %i.n = or i32 %17, %14
  %or.cond.i = icmp sgt i32 %i.n, -1
  %18 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %19 = load i32, ptr %18, align 8                ; 2 uses
  %i.o = icmp slt i32 %14, %19
  %or.cond6.i = select i1 %or.cond.i, i1 %i.o, i1 false
  %20 = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %21 = load i32, ptr %20, align 4                ; 2 uses
  %i.p = icmp slt i32 %17, %21
  %i.q = select i1 %or.cond6.i, i1 %i.p, i1 false ; 3 uses
  %22 = load i32, ptr %2, align 4, !tbaa !15
  %23 = load i32, ptr %6, align 4, !tbaa !15
  %24 = add i32 %13, %22
  %25 = sub i32 %9, %24                           ; 2 uses
  %26 = add i32 %16, %23
  %27 = sub i32 %11, %26                          ; 2 uses
  %i.r = or i32 %27, %25
  %or.cond.i32 = icmp sgt i32 %i.r, -1
  %i.s = icmp slt i32 %25, %19
  %or.cond6.i33 = select i1 %or.cond.i32, i1 %i.s, i1 false
  %i.t = icmp slt i32 %27, %21
  %i.u = select i1 %or.cond6.i33, i1 %i.t, i1 false ; 2 uses
  %i.v = xor i1 %i.q, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(148) %i.i, ptr noundef nonnull align 4 dereferenceable(8) %1, i1 noundef zeroext %i.q)
  %i.aa = or i1 %.052, %i.z
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i1 [ %i.aa, %bb.d ], [ %.052, %bb.c ] ; 2 uses
  %or.cond = or i1 %i.q, %i.u
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ab = load i32, ptr %1, align 4, !tbaa !15
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !15
  %i.ad = sub nsw i32 %i.ab, %i.ac
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !15
  %i.af = load i32, ptr %i.g, align 4, !tbaa !15
  %i.ag = sub nsw i32 %i.ae, %i.af
  %.sroa.2.0.insert.ext.i34 = zext i32 %i.ag to i64
  %.sroa.2.0.insert.shift.i35 = shl nuw i64 %.sroa.2.0.insert.ext.i34, 32
  %.sroa.0.0.insert.ext.i36 = zext i32 %i.ad to i64
  %.sroa.0.0.insert.insert.i37 = or disjoint i64 %.sroa.2.0.insert.shift.i35, %.sroa.0.0.insert.ext.i36
  store i64 %.sroa.0.0.insert.insert.i37, ptr %5, align 8
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(148) %i.i, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef %3, i32 noundef %4)
  %i.al = or i1 %.1, %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.3 = phi i1 [ %.052, %bb.b ], [ %i.al, %bb.f ], [ %.1, %bb.e ] ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !44
  %.not = icmp eq ptr %i.h, %i.am
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !72
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7nanogui6Widget12scroll_eventERKNS_5ArrayIiLm2EEERKNS1_IfLm2EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.nanogui::Array", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not23.not = icmp eq ptr %i.c, %i.d
  br i1 %.not23.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.h = phi ptr [ %i.d, %.lr.ph ], [ %i.al, %bb.e ] ; 2 uses
  %.sroa.319.024 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.e ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.319.024, i64 -8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !50, !range !49, !noundef !51
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %1, align 4, !tbaa !15
  %i.o = load i32, ptr %i.e, align 8, !tbaa !15
  %i.p = sub nsw i32 %i.n, %i.o                   ; 2 uses
  %i.q = load i32, ptr %i.f, align 4, !tbaa !15
  %i.r = load i32, ptr %i.g, align 4, !tbaa !15
  %i.s = sub nsw i32 %i.q, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !15
  %i.v = sub nsw i32 %i.p, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !15
  %i.y = sub nsw i32 %i.s, %i.x                   ; 2 uses
  %i.z = or i32 %i.y, %i.v
  %or.cond.i = icmp sgt i32 %i.z, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp slt i32 %i.v, %i.ab
  %or.cond6.i = select i1 %or.cond.i, i1 %i.ac, i1 false
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp slt i32 %i.y, %i.ae
  %i.ag = select i1 %or.cond6.i, i1 %i.af, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  br i1 %i.ag, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.ext.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.ext.i = zext i32 %i.s to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %3, align 8
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(148) %i.j, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %i.ak, label %._crit_edge, label %._crit_edge28

._crit_edge28:                                    ; preds = %bb.d
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !44
  br label %bb.e

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge28, %.critedge, %bb.b
  %i.al = phi ptr [ %.pre, %._crit_edge28 ], [ %i.h, %.critedge ], [ %i.h, %bb.b ] ; 2 uses
  %.not.not = icmp eq ptr %i.i, %i.al
  br i1 %.not.not, label %._crit_edge, label %bb.b, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.d, %bb.e, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.d ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7nanogui6Widget16mouse_drag_eventERKNS_5ArrayIiLm2EEES4_ii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr nofree nonnull readnone align 4 captures(none) %2, i32 %3, i32 %4) unnamed_addr #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef zeroext i1 @_ZN7nanogui6Widget17mouse_enter_eventERKNS_5ArrayIiLm2EEEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(148) initializes((107, 108)) %0, ptr nofree nonnull readnone align 4 captures(none) %1, i1 noundef zeroext %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 107
  store i8 %i.a, ptr %i.b, align 1, !tbaa !74
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef zeroext i1 @_ZN7nanogui6Widget11focus_eventEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(148) initializes((106, 107)) %0, i1 noundef zeroext %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 %i.a, ptr %i.b, align 2, !tbaa !53
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7nanogui6Widget14keyboard_eventEiiii(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i32 %2, i32 %3, i32 %4) unnamed_addr #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7nanogui6Widget24keyboard_character_eventEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui6Widget9add_childEiPS0_(ptr noundef nonnull align 8 dereferenceable(148) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = call ptr @_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EERS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !48
  call void @_ZNK7nanogui6Object7inc_refEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #19
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %0, ptr %i.i, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(148) %i.h, ptr noundef %i.k)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE6insertENS_11__wrap_iterIPKS3_EERS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__split_buffer", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 12 uses
end_hunk_0

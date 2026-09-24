Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/vm?download=true
inline.NumInlined: 3276
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@vm_call_iseq_setup_tailcall:bb.a
._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.0.lcssa1 = phi ptr [ %i.az, %middle.block ], [ %.0.lcssa18.unr, %.lr.ph.prol.loopexit ], [ %.0.7, %.lr.ph ]
  %.pre = load i64, ptr %i.ao, align 8, !tbaa !244
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %vm_pop_frame.exit
  %i.ch = phi i64 [ %i.ap, %vm_pop_frame.exit ], [ %.pre, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %.055, %vm_pop_frame.exit ], [ %.0.lcssa1, %._crit_edge.loopexit ] ; 5 uses
  %i.ci = load i64, ptr %i.p, align 8, !tbaa !243
  %i.cj = getelementptr i8, ptr %i.ar, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !177
  %i.cl = getelementptr i8, ptr %i.ar, i64 240
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !211
  %i.cn = sub i32 %i.cm, %i.at                    ; 5 uses
  %i.co = getelementptr i8, ptr %i.ar, i64 264
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !308
  %i.cq = add i32 %i.cp, %i.cn
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %.0.lcssa, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 56
  %.not.i = icmp ugt ptr %1, %i.ct
  br i1 %.not.i, label %.preheader.i, label %bb.e, !prof !109

.preheader.i:                                     ; preds = %._crit_edge
  %i.cu = icmp sgt i32 %i.cn, 0
  br i1 %i.cu, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.cv = zext nneg i32 %i.cn to i64              ; 2 uses
  %min.iters.check5 = icmp ult i32 %i.cn, 4
  br i1 %min.iters.check5, label %.lr.ph.i.preheader16, label %vector.ph6

vector.ph6:                                       ; preds = %.lr.ph.i.preheader
  %n.vec7 = and i64 %i.cv, 2147483644             ; 4 uses
  %i.cw = shl nuw nsw i64 %n.vec7, 3
  %i.cx = getelementptr i8, ptr %.0.lcssa, i64 %i.cw ; 2 uses
  %i.cy = trunc nuw nsw i64 %n.vec7 to i32
  br label %vector.body8

vector.body8:                                     ; preds = %vector.body8, %vector.ph6
  %index9 = phi i64 [ 0, %vector.ph6 ], [ %index.next11, %vector.body8 ] ; 2 uses
  %i.cz = shl i64 %index9, 3
  %next.gep10 = getelementptr i8, ptr %.0.lcssa, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep10, align 8, !tbaa !50
  store <2 x i64> splat (i64 4), ptr %i.da, align 8, !tbaa !50
  %index.next11 = add nuw i64 %index9, 4          ; 2 uses
  %i.db = icmp eq i64 %index.next11, %n.vec7
  br i1 %i.db, label %middle.block12, label %vector.body8, !llvm.loop !795

middle.block12:                                   ; preds = %vector.body8
  %cmp.n13 = icmp eq i64 %n.vec7, %i.cv
  br i1 %cmp.n13, label %vm_push_frame.exit, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %.lr.ph.i.preheader, %middle.block12
  %.026.i.ph = phi ptr [ %.0.lcssa, %.lr.ph.i.preheader ], [ %i.cx, %middle.block12 ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.cy, %middle.block12 ]
  br label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %.lr.ph.i
  %.026.i = phi ptr [ %i.dc, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader16 ] ; 2 uses
  %.02325.i = phi i32 [ %i.dd, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader16 ]
  %i.dc = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !50
  %i.dd = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dd, %i.cn
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !796

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block12, %.preheader.i
  %.0.lcssa.i = phi ptr [ %.0.lcssa, %.preheader.i ], [ %i.cx, %middle.block12 ], [ %i.dc, %.lr.ph.i ] ; 4 uses
  %i.de = sext i32 %3 to i64
  %i.df = getelementptr [8 x i8], ptr %i.ck, i64 %i.de
  %i.dg = ptrtoint ptr %.val to i64
  %i.dh = and i64 %.val50.val, 32
  %i.di = or disjoint i64 %i.dh, 286326787
  %i.dj = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 %i.dg, ptr %.0.lcssa.i, align 8, !tbaa !50
  %i.dk = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.ci, ptr %i.dj, align 8, !tbaa !50
  %i.dl = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 %i.di, ptr %i.dk, align 8, !tbaa !50
  store ptr %i.df, ptr %1, align 8, !tbaa !112
  store ptr %i.dl, ptr %i.c, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %1, i64 16
  store ptr %.val49, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  store i64 %i.ch, ptr %i.r, align 8, !tbaa !50
  store ptr %i.dk, ptr %i.o, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %1, ptr %i.ak, align 8, !tbaa !107
  store ptr %i.am, ptr %i.al, align 8, !tbaa !110
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_0params_0locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 6 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.n, ptr %i.g, align 8, !tbaa !110
  %i.o = getelementptr i8, ptr %.val4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !158  ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 264
  %i.r = load i32, ptr %i.q, align 8, !tbaa !308
  %i.s = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 6 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -56      ; 3 uses
  %i.v = sext i32 %i.r to i64
  %i.w = getelementptr [8 x i8], ptr %i.m, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 56
  %.not.i = icmp ugt ptr %i.u, %i.x
  br i1 %.not.i, label %vm_push_frame.exit, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %bb.a
  %i.y = getelementptr i8, ptr %i.p, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !177
  %i.aa = ptrtoint ptr %.val to i64
  %i.ab = getelementptr i8, ptr %2, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !243
  %i.ad = getelementptr i8, ptr %2, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !244
  %i.af = getelementptr i8, ptr %i.m, i64 8
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !50
  %i.ag = getelementptr i8, ptr %i.m, i64 16      ; 2 uses
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.m, i64 24
  store i64 286326787, ptr %i.ag, align 8, !tbaa !50
  store ptr %i.z, ptr %i.u, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -48
  store ptr %i.ah, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -32
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -24
  store ptr %i.ag, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.u, ptr %i.s, align 8, !tbaa !107
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_0params_1locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 7 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.n, ptr %i.g, align 8, !tbaa !110
  %i.o = getelementptr i8, ptr %.val4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !158  ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 264
  %i.r = load i32, ptr %i.q, align 8, !tbaa !308
  %i.s = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 6 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -56      ; 3 uses
  %i.v = add i32 %i.r, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [8 x i8], ptr %i.m, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.not.i = icmp ugt ptr %i.u, %i.y
  br i1 %.not.i, label %.lr.ph.i.preheader, label %3, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.p, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.ab = getelementptr i8, ptr %2, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !243
  %i.ad = getelementptr i8, ptr %2, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !244
  %i.af = getelementptr i8, ptr %i.m, i64 8
  store i64 4, ptr %i.m, align 8, !tbaa !50
  %i.ag = ptrtoint ptr %.val to i64
  %i.ah = getelementptr i8, ptr %i.m, i64 16
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 24      ; 2 uses
  store i64 %i.ac, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 32
  store i64 286326787, ptr %i.ai, align 8, !tbaa !50
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -48
  store ptr %i.aj, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -32
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -24
  store ptr %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.u, ptr %i.s, align 8, !tbaa !107
  ret i64 36

3:                                                ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_0params_2locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 8 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.n, ptr %i.g, align 8, !tbaa !110
  %i.o = getelementptr i8, ptr %.val4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !158  ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 264
  %i.r = load i32, ptr %i.q, align 8, !tbaa !308
  %i.s = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 6 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -56      ; 3 uses
  %i.v = add i32 %i.r, 2
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [8 x i8], ptr %i.m, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.not.i = icmp ugt ptr %i.u, %i.y
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.b, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.p, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.ab = getelementptr i8, ptr %2, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !243
  %i.ad = getelementptr i8, ptr %2, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !244
  %i.af = getelementptr i8, ptr %i.m, i64 8
  store i64 4, ptr %i.m, align 8, !tbaa !50
  %i.ag = getelementptr i8, ptr %i.m, i64 16
  store i64 4, ptr %i.af, align 8, !tbaa !50
  %i.ah = ptrtoint ptr %.val to i64
  %i.ai = getelementptr i8, ptr %i.m, i64 24
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 32      ; 2 uses
  store i64 %i.ac, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.m, i64 40
  store i64 286326787, ptr %i.aj, align 8, !tbaa !50
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -48
  store ptr %i.ak, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -32
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -24
  store ptr %i.aj, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.u, ptr %i.s, align 8, !tbaa !107
  ret i64 36

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_0params_3locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 9 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.n, ptr %i.g, align 8, !tbaa !110
  %i.o = getelementptr i8, ptr %.val4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !158  ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 264
  %i.r = load i32, ptr %i.q, align 8, !tbaa !308
  %i.s = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 6 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -56      ; 3 uses
  %i.v = add i32 %i.r, 3
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [8 x i8], ptr %i.m, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.not.i = icmp ugt ptr %i.u, %i.y
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.b, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.p, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.ab = getelementptr i8, ptr %2, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !243
  %i.ad = getelementptr i8, ptr %2, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !244
  %i.af = getelementptr i8, ptr %i.m, i64 8
  store i64 4, ptr %i.m, align 8, !tbaa !50
  %i.ag = getelementptr i8, ptr %i.m, i64 16
  store i64 4, ptr %i.af, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.m, i64 24
  store i64 4, ptr %i.ag, align 8, !tbaa !50
  %i.ai = ptrtoint ptr %.val to i64
  %i.aj = getelementptr i8, ptr %i.m, i64 32
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.m, i64 40      ; 2 uses
  store i64 %i.ac, ptr %i.aj, align 8, !tbaa !50
  %i.al = getelementptr i8, ptr %i.m, i64 48
  store i64 286326787, ptr %i.ak, align 8, !tbaa !50
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -48
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -32
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -24
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.u, ptr %i.s, align 8, !tbaa !107
  ret i64 36

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_0params_4locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 7 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.n, ptr %i.g, align 8, !tbaa !110
  %i.o = getelementptr i8, ptr %.val4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !158  ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 264
  %i.r = load i32, ptr %i.q, align 8, !tbaa !308
  %i.s = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 6 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -56      ; 3 uses
  %i.v = add i32 %i.r, 4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [8 x i8], ptr %i.m, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.not.i = icmp ugt ptr %i.u, %i.y
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.b, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.p, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.ab = getelementptr i8, ptr %2, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !243
  %i.ad = getelementptr i8, ptr %2, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !244
  %i.af = getelementptr i8, ptr %i.m, i64 32
  store <4 x i64> splat (i64 4), ptr %i.m, align 8, !tbaa !50
  %i.ag = ptrtoint ptr %.val to i64
  %i.ah = getelementptr i8, ptr %i.m, i64 40
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 48      ; 2 uses
  store i64 %i.ac, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 56
  store i64 286326787, ptr %i.ai, align 8, !tbaa !50
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -48
end_hunk_0
begin_hunk_1_@vm_call_iseq_setup_normal_0start_0params_5locals:bb.a
  store i64 4, ptr %i.af, align 8, !tbaa !50
  %i.ah = ptrtoint ptr %.val to i64
  %i.ai = getelementptr i8, ptr %i.m, i64 48
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 56      ; 2 uses
  store i64 %i.ac, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.m, i64 64
  store i64 286326787, ptr %i.aj, align 8, !tbaa !50
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -48
  store ptr %i.ak, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -32
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -24
  store ptr %i.aj, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.u, ptr %i.s, align 8, !tbaa !107
  ret i64 36

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_1params_0locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 5 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, -1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %vm_push_frame.exit, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = ptrtoint ptr %.val to i64
  %i.ad = getelementptr i8, ptr %2, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !243
  %i.af = getelementptr i8, ptr %2, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !244
  %i.ah = getelementptr i8, ptr %i.m, i64 16
  store i64 %i.ac, ptr %i.n, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 24      ; 2 uses
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 32
  store i64 286326787, ptr %i.ai, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.aj, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_1params_1locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 5 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr [8 x i8], ptr %i.n, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.y
  br i1 %.not.i, label %vm_push_frame.exit, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.q, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.ab = ptrtoint ptr %.val to i64
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = getelementptr i8, ptr %i.m, i64 16
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.m, i64 24      ; 2 uses
  store i64 %i.ad, ptr %i.ag, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 32
  store i64 286326787, ptr %i.ah, align 8, !tbaa !50
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ah, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_1params_2locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 6 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %.lr.ph.i.preheader, label %3, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = getelementptr i8, ptr %i.m, i64 16
  store i64 4, ptr %i.n, align 8, !tbaa !50
  %i.ah = ptrtoint ptr %.val to i64
  %i.ai = getelementptr i8, ptr %i.m, i64 24
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 32      ; 2 uses
  store i64 %i.ad, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.m, i64 40
  store i64 286326787, ptr %i.aj, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.ak, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.aj, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36

3:                                                ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_1params_3locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 7 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, 2
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.b, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = getelementptr i8, ptr %i.m, i64 16
  store i64 4, ptr %i.n, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.m, i64 24
  store i64 4, ptr %i.ag, align 8, !tbaa !50
  %i.ai = ptrtoint ptr %.val to i64
  %i.aj = getelementptr i8, ptr %i.m, i64 32
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.m, i64 40      ; 2 uses
  store i64 %i.ad, ptr %i.aj, align 8, !tbaa !50
  %i.al = getelementptr i8, ptr %i.m, i64 48
  store i64 286326787, ptr %i.ak, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_1params_4locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 8 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, 3
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.b, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = getelementptr i8, ptr %i.m, i64 16
  store i64 4, ptr %i.n, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.m, i64 24
  store i64 4, ptr %i.ag, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 32
  store i64 4, ptr %i.ah, align 8, !tbaa !50
  %i.aj = ptrtoint ptr %.val to i64
  %i.ak = getelementptr i8, ptr %i.m, i64 40
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !50
  %i.al = getelementptr i8, ptr %i.m, i64 48      ; 2 uses
  store i64 %i.ad, ptr %i.ak, align 8, !tbaa !50
  %i.am = getelementptr i8, ptr %i.m, i64 56
  store i64 286326787, ptr %i.al, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.am, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.al, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_1params_5locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 6 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.b, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = getelementptr i8, ptr %i.m, i64 40
  store <4 x i64> splat (i64 4), ptr %i.n, align 8, !tbaa !50
  %i.ah = ptrtoint ptr %.val to i64
  %i.ai = getelementptr i8, ptr %i.m, i64 48
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 56      ; 2 uses
  store i64 %i.ad, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.m, i64 64
end_hunk_1
begin_hunk_2_@vm_call_iseq_setup_normal_0start_2params_0locals:bb.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = ptrtoint ptr %.val to i64
  %i.ad = getelementptr i8, ptr %2, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !243
  %i.af = getelementptr i8, ptr %2, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !244
  %i.ah = getelementptr i8, ptr %i.m, i64 24
  store i64 %i.ac, ptr %i.n, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 32      ; 2 uses
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 40
  store i64 286326787, ptr %i.ai, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.aj, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_2params_1locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 5 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, -1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %vm_push_frame.exit, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = ptrtoint ptr %.val to i64
  %i.ad = getelementptr i8, ptr %2, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !243
  %i.af = getelementptr i8, ptr %2, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !244
  %i.ah = getelementptr i8, ptr %i.m, i64 24
  store i64 %i.ac, ptr %i.n, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 32      ; 2 uses
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 40
  store i64 286326787, ptr %i.ai, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.aj, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_2params_2locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 5 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr [8 x i8], ptr %i.n, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.y
  br i1 %.not.i, label %vm_push_frame.exit, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.q, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.ab = ptrtoint ptr %.val to i64
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = getelementptr i8, ptr %i.m, i64 24
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.m, i64 32      ; 2 uses
  store i64 %i.ad, ptr %i.ag, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 40
  store i64 286326787, ptr %i.ah, align 8, !tbaa !50
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ah, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_2params_3locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 6 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %.lr.ph.i.preheader, label %3, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = getelementptr i8, ptr %i.m, i64 24
  store i64 4, ptr %i.n, align 8, !tbaa !50
  %i.ah = ptrtoint ptr %.val to i64
  %i.ai = getelementptr i8, ptr %i.m, i64 32
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 40      ; 2 uses
  store i64 %i.ad, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.m, i64 48
  store i64 286326787, ptr %i.aj, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.ak, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.aj, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36

3:                                                ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_2params_4locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 7 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, 2
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.b, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = getelementptr i8, ptr %i.m, i64 24
  store i64 4, ptr %i.n, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.m, i64 32
  store i64 4, ptr %i.ag, align 8, !tbaa !50
  %i.ai = ptrtoint ptr %.val to i64
  %i.aj = getelementptr i8, ptr %i.m, i64 40
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.m, i64 48      ; 2 uses
  store i64 %i.ad, ptr %i.aj, align 8, !tbaa !50
  %i.al = getelementptr i8, ptr %i.m, i64 56
  store i64 286326787, ptr %i.ak, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_2params_5locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 8 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, 3
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.b, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = getelementptr i8, ptr %i.m, i64 24
  store i64 4, ptr %i.n, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.m, i64 32
  store i64 4, ptr %i.ag, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 40
  store i64 4, ptr %i.ah, align 8, !tbaa !50
  %i.aj = ptrtoint ptr %.val to i64
  %i.ak = getelementptr i8, ptr %i.m, i64 48
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !50
  %i.al = getelementptr i8, ptr %i.m, i64 56      ; 2 uses
  store i64 %i.ad, ptr %i.ak, align 8, !tbaa !50
  %i.am = getelementptr i8, ptr %i.m, i64 64
  store i64 286326787, ptr %i.al, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.am, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.al, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_3params_0locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 5 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, -3
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %vm_push_frame.exit, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = ptrtoint ptr %.val to i64
  %i.ad = getelementptr i8, ptr %2, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !243
  %i.af = getelementptr i8, ptr %2, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !244
  %i.ah = getelementptr i8, ptr %i.m, i64 32
  store i64 %i.ac, ptr %i.n, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 40      ; 2 uses
end_hunk_2
begin_hunk_3_@vm_call_iseq_setup_normal_0start_3params_1locals:bb.a
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = ptrtoint ptr %.val to i64
  %i.ad = getelementptr i8, ptr %2, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !243
  %i.af = getelementptr i8, ptr %2, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !244
  %i.ah = getelementptr i8, ptr %i.m, i64 32
  store i64 %i.ac, ptr %i.n, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 40      ; 2 uses
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 48
  store i64 286326787, ptr %i.ai, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.aj, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_3params_2locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 5 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, -1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %vm_push_frame.exit, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = ptrtoint ptr %.val to i64
  %i.ad = getelementptr i8, ptr %2, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !243
  %i.af = getelementptr i8, ptr %2, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !244
  %i.ah = getelementptr i8, ptr %i.m, i64 32
  store i64 %i.ac, ptr %i.n, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 40      ; 2 uses
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 48
  store i64 286326787, ptr %i.ai, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.aj, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_3params_3locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 5 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr [8 x i8], ptr %i.n, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.y
  br i1 %.not.i, label %vm_push_frame.exit, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.q, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !177
  %i.ab = ptrtoint ptr %.val to i64
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = getelementptr i8, ptr %i.m, i64 32
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.m, i64 40      ; 2 uses
  store i64 %i.ad, ptr %i.ag, align 8, !tbaa !50
  %i.ai = getelementptr i8, ptr %i.m, i64 48
  store i64 286326787, ptr %i.ah, align 8, !tbaa !50
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ah, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_3params_4locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 6 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %.lr.ph.i.preheader, label %3, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = getelementptr i8, ptr %i.m, i64 32
  store i64 4, ptr %i.n, align 8, !tbaa !50
  %i.ah = ptrtoint ptr %.val to i64
  %i.ai = getelementptr i8, ptr %i.m, i64 40
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %i.m, i64 48      ; 2 uses
  store i64 %i.ad, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.m, i64 56
  store i64 286326787, ptr %i.aj, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.ak, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.aj, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36

3:                                                ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_3params_5locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !210 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !64 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !245
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 7 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !110
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !158  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !308
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, 2
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.b, !prof !109

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !243
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !244
  %i.ag = getelementptr i8, ptr %i.m, i64 32
  store i64 4, ptr %i.n, align 8, !tbaa !50
  %i.ah = getelementptr i8, ptr %i.m, i64 40
  store i64 4, ptr %i.ag, align 8, !tbaa !50
  %i.ai = ptrtoint ptr %.val to i64
  %i.aj = getelementptr i8, ptr %i.m, i64 48
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !50
  %i.ak = getelementptr i8, ptr %i.m, i64 56      ; 2 uses
  store i64 %i.ad, ptr %i.aj, align 8, !tbaa !50
  %i.al = getelementptr i8, ptr %i.m, i64 64
  store i64 286326787, ptr %i.ak, align 8, !tbaa !50
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !112
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !113
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !112
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !107
  ret i64 36

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

declare i64 @rb_ary_hidden_new(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @argument_kw_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @rb_keyword_error_new(ptr noundef %3, i64 noundef %4) #23
  tail call fastcc void @raise_argument_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.a) #58
  unreachable
}

declare i64 @rb_hash_new() local_unnamed_addr #4

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @make_unknown_kw_hash(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #23 ; 2 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.c = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50
  %i.e = icmp eq i64 %i.d, 36
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50
  %i.h = tail call i64 @rb_ary_push(i64 noundef %i.a, i64 noundef %i.g) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !797

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret i64 %i.a
}

declare i64 @rb_keyword_error_new(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_new_with_size(i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_pop(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flatten_rest_args(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !479
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !114  ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %i.h = lshr i64 %i.e, 15
  %i.i = and i64 %i.h, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !64
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i24 = phi ptr [ %i.g, %bb.b ], [ %i.k, %bb.c ] ; 7 uses
  %.0.i.i = phi i64 [ %i.i, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %.0.i2430 = ptrtoaddr ptr %.0.i24 to i64
  %i.n = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !478  ; 9 uses
  %i.p = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.p, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.q = trunc nsw i64 %.0.i.i to i32
  %i.r = add i32 %i.q, -1                         ; 5 uses
  %i.s = add i32 %i.r, %i.o
  store i32 %i.s, ptr %i.n, align 8, !tbaa !478
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  %i.t = getelementptr i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !110
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %.0.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.not22 = icmp ugt ptr %i.u, %i.y
  br i1 %.not22, label %.preheader, label %bb.f, !prof !109

.preheader:                                       ; preds = %bb.e
  %i.z = icmp sgt i32 %i.r, 0
  br i1 %i.z, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.r, 18
  br i1 %min.iters.check, label %.lr.ph.preheader33, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.aa = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ab = trunc nsw i64 %i.aa to i32
  %i.ac = add i32 %i.o, %i.ab
end_hunk_3

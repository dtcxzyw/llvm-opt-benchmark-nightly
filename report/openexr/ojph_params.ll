Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_params?download=true
inline.NumInlined: 308
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4ojph5local9param_qcd14check_validityERKNS0_9param_sizERKNS0_9param_codE:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local9param_qcd28trim_non_existing_componentsEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.0.in5 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.06 = load ptr, ptr %.0.in5, align 8, !tbaa !91 ; 2 uses
  %.not7 = icmp eq ptr %.06, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %.0, %.lr.ph ], [ %.06, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.08, i64 232
  %i.b = load i16, ptr %i.a, align 8, !tbaa !90
  %i.c = zext i16 %i.b to i32
  %i.d = icmp ugt i32 %1, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %.08, i64 208
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 8, !tbaa !95
  %.0.in = getelementptr inbounds nuw i8, ptr %.08, i64 216
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !91  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN4ojph5local9param_qcd7get_qccEj(ptr nofree noundef nonnull readonly align 8 captures(address, ret: address, provenance) dereferenceable(248) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !89
  %i.b = icmp eq i8 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8
  %.0.i = select i1 %i.b, ptr %0, ptr %i.d        ; 3 uses
  %.not9.i = icmp eq ptr %.0.i, null
  br i1 %.not9.i, label %_ZNK4ojph5local9param_qcd7get_qccEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.110.i = phi ptr [ %i.i, %bb.b ], [ %.0.i, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.110.i, i64 232
  %i.f = load i16, ptr %i.e, align 8, !tbaa !90
  %i.g = zext i16 %i.f to i32
  %.not8.i = icmp eq i32 %1, %i.g
  br i1 %.not8.i, label %_ZNK4ojph5local9param_qcd7get_qccEj.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.110.i, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNK4ojph5local9param_qcd7get_qccEj.exit, label %.lr.ph.i, !llvm.loop !2

_ZNK4ojph5local9param_qcd7get_qccEj.exit:         ; preds = %.lr.ph.i, %bb.b, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %.110.i, %.lr.ph.i ], [ %.0.i, %bb.b ]
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local9param_qcd13set_rev_quantEjjb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) initializes((6, 7)) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = zext i1 %3 to i32
  %i.b = add i32 %2, %i.a                         ; 3 uses
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %.in.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5local10bibo_gains10gain_5x3_lE, i64 %i.c
  %i.d = load float, ptr %.in.i, align 4, !tbaa !139
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = fmul double %i.e, %i.e
  %i.g = tail call double @log(double noundef %i.f) #22
  %i.h = fdiv double %i.g, f0x3FE62E42FEFA39EF
  %i.i = tail call double @llvm.ceil.f64(double %i.h)
  %i.j = fptoui double %i.i to i32
  %i.k = add i32 %i.b, %i.j                       ; 3 uses
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 5 uses
  store i8 %i.l, ptr %i.m, align 2, !tbaa !56
  %.not78 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not78, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.073.lcssa = phi i32 [ %i.k, %bb.a ], [ %i.al, %.lr.ph ] ; 3 uses
  %i.n = icmp ugt i32 %.073.lcssa, 38
  br i1 %i.n, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv88 = phi i64 [ %i.q, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %.07379 = phi i32 [ %i.al, %.lr.ph ], [ %i.k, %bb.a ]
  %.in.i76 = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5local10bibo_gains10gain_5x3_lE, i64 %indvars.iv88
  %i.o = load float, ptr %.in.i76, align 4, !tbaa !139
  %i.p = fpext float %i.o to double
  %i.q = add nsw i64 %indvars.iv88, -1            ; 3 uses
  %.in.i77 = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5local10bibo_gains10gain_5x3_hE, i64 %i.q
  %i.r = load float, ptr %.in.i77, align 4, !tbaa !139
  %i.s = fpext float %i.r to double               ; 3 uses
  %i.t = fmul double %i.p, %i.s
  %i.u = tail call double @log(double noundef %i.t) #22
  %i.v = fdiv double %i.u, f0x3FE62E42FEFA39EF
  %i.w = tail call double @llvm.ceil.f64(double %i.v)
  %i.x = fptoui double %i.w to i32
  %i.y = add i32 %i.b, %i.x                       ; 2 uses
  %i.z = trunc i32 %i.y to i8                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv ; 3 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !56
  %i.ab = tail call i32 @llvm.umax.i32(i32 %.07379, i32 %i.y)
  %i.ac = getelementptr i8, ptr %i.aa, i64 1
  store i8 %i.z, ptr %i.ac, align 1, !tbaa !56
  %i.ad = fmul double %i.s, %i.s
  %i.ae = tail call double @log(double noundef %i.ad) #22
  %i.af = fdiv double %i.ae, f0x3FE62E42FEFA39EF
  %i.ag = tail call double @llvm.ceil.f64(double %i.af)
  %i.ah = fptoui double %i.ag to i32
  %i.ai = add i32 %i.b, %i.ah                     ; 2 uses
  %i.aj = trunc i32 %i.ai to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !56
  %i.al = tail call i32 @llvm.umax.i32(i32 %i.ab, i32 %i.ai) ; 2 uses
  %.not.wide = icmp eq i64 %i.q, 0
  br i1 %.not.wide, label %._crit_edge, label %.lr.ph, !llvm.loop !180

bb.b:                                             ; preds = %._crit_edge
  %i.am = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef 328017, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1307, ptr noundef nonnull @.str.34, i32 noundef %.073.lcssa)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.ap = tail call i32 @llvm.smax.i32(i32 %.073.lcssa, i32 32)
  %i.aq = trunc i32 %i.ap to i8
  %.tr = add i8 %i.aq, -31                        ; 5 uses
  %i.ar = shl i8 %.tr, 5
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ar, ptr %i.as, align 4, !tbaa !94
  %i.at = load i8, ptr %i.m, align 2, !tbaa !56
  %i.au = sub i8 %i.at, %.tr
  %i.av = shl i8 %i.au, 3
  store i8 %i.av, ptr %i.m, align 2, !tbaa !56
  br i1 %.not78, label %._crit_edge87, label %.lr.ph86

._crit_edge87:                                    ; preds = %.lr.ph86, %bb.c
  ret void

.lr.ph86:                                         ; preds = %bb.c, %.lr.ph86
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %.lr.ph86 ], [ 1, %bb.c ] ; 2 uses
  %.084 = phi i32 [ %i.bi, %.lr.ph86 ], [ %1, %bb.c ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv93 ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !56
  %i.ay = sub i8 %i.ax, %.tr
  %i.az = shl i8 %i.ay, 3
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !56
  %i.bc = sub i8 %i.bb, %.tr
  %i.bd = shl i8 %i.bc, 3
  store i8 %i.bd, ptr %i.ba, align 1, !tbaa !56
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 2 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !56
  %i.bg = sub i8 %i.bf, %.tr
  %i.bh = shl i8 %i.bg, 3
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !56
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 3
  %i.bi = add i32 %.084, -1                       ; 2 uses
  %.not75 = icmp eq i32 %i.bi, 0
  br i1 %.not75, label %._crit_edge87, label %.lr.ph86, !llvm.loop !181
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local9param_qcd15set_irrev_quantEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(248) initializes((4, 5)) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 34, ptr %i.a, align 4, !tbaa !94
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %.in.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5local17sqrt_energy_gains10gain_9x7_lE, i64 %i.b
  %i.c = load float, ptr %.in.i, align 4, !tbaa !139 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !88
  %i.f = fmul float %i.c, %i.c
  %i.g = fdiv float %i.e, %i.f                    ; 3 uses
  %i.h = fcmp olt float %i.g, 1.000000e+00
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04451 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ]
  %.04550 = phi float [ %i.j, %.lr.ph ], [ %i.g, %bb.a ]
  %i.i = add nuw nsw i32 %.04451, 1               ; 2 uses
  %i.j = fmul nnan float %.04550, 2.000000e+00    ; 3 uses
  %i.k = fcmp olt float %i.j, 1.000000e+00
  br i1 %i.k, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !182

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.l = shl i32 %i.i, 11
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.045.lcssa = phi float [ %i.g, %bb.a ], [ %i.j, %._crit_edge.loopexit ]
  %.044.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %._crit_edge.loopexit ]
  %i.m = fmul float %.045.lcssa, 2.048000e+03
  %i.n = tail call float @llvm.round.f32(float %i.m)
  %i.o = fptosi float %i.n to i32
  %i.p = tail call i32 @llvm.smin.i32(i32 %i.o, i32 4095)
  %i.q = add nsw i32 %i.p, 63488
  %i.r = or i32 %i.q, %.044.lcssa
  %i.s = trunc i32 %i.r to i16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  store i16 %i.s, ptr %i.t, align 2, !tbaa !56
  %.not67 = icmp eq i32 %1, 0
  br i1 %.not67, label %._crit_edge72, label %.lr.ph71

._crit_edge72:                                    ; preds = %._crit_edge64, %._crit_edge
  ret void

.lr.ph71:                                         ; preds = %._crit_edge, %._crit_edge64
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %._crit_edge64 ], [ 1, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.v, %._crit_edge64 ], [ %i.b, %._crit_edge ] ; 2 uses
  %.in.i48 = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5local17sqrt_energy_gains10gain_9x7_lE, i64 %indvars.iv
  %i.u = load float, ptr %.in.i48, align 4, !tbaa !139
  %i.v = add nsw i64 %indvars.iv, -1              ; 3 uses
  %.in.i49 = getelementptr inbounds nuw [4 x i8], ptr @_ZN4ojph5local17sqrt_energy_gains10gain_9x7_hE, i64 %i.v
  %i.w = load float, ptr %.in.i49, align 4, !tbaa !139 ; 3 uses
  %i.x = load float, ptr %i.d, align 4, !tbaa !88
  %i.y = fmul float %i.u, %i.w
  %i.z = fdiv float %i.x, %i.y                    ; 3 uses
  %i.aa = fcmp olt float %i.z, 1.000000e+00
  br i1 %i.aa, label %.lr.ph56, label %._crit_edge57

.lr.ph56:                                         ; preds = %.lr.ph71, %.lr.ph56
  %.054 = phi i32 [ %i.ab, %.lr.ph56 ], [ 0, %.lr.ph71 ]
  %.14653 = phi float [ %i.ac, %.lr.ph56 ], [ %i.z, %.lr.ph71 ]
  %i.ab = add nuw nsw i32 %.054, 1                ; 2 uses
  %i.ac = fmul nnan float %.14653, 2.000000e+00   ; 3 uses
  %i.ad = fcmp olt float %i.ac, 1.000000e+00
  br i1 %i.ad, label %.lr.ph56, label %._crit_edge57.loopexit, !llvm.loop !183

._crit_edge57.loopexit:                           ; preds = %.lr.ph56
  %i.ae = shl i32 %i.ab, 11
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %.lr.ph71
  %.146.lcssa = phi float [ %i.z, %.lr.ph71 ], [ %i.ac, %._crit_edge57.loopexit ]
  %.0.lcssa = phi i32 [ 0, %.lr.ph71 ], [ %i.ae, %._crit_edge57.loopexit ]
  %i.af = fmul float %.146.lcssa, 2.048000e+03
  %i.ag = tail call float @llvm.round.f32(float %i.af)
  %i.ah = fptosi float %i.ag to i32
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 4095)
  %i.aj = add nsw i32 %i.ai, 63488
  %i.ak = or i32 %i.aj, %.0.lcssa
  %i.al = trunc i32 %i.ak to i16                  ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv78 ; 3 uses
  store i16 %i.al, ptr %i.am, align 2, !tbaa !56
  %i.an = getelementptr i8, ptr %i.am, i64 2
  store i16 %i.al, ptr %i.an, align 2, !tbaa !56
  %i.ao = load float, ptr %i.d, align 4, !tbaa !88
  %i.ap = fmul float %i.w, %i.w
  %i.aq = fdiv float %i.ao, %i.ap                 ; 3 uses
  %i.ar = fcmp olt float %i.aq, 1.000000e+00
  br i1 %i.ar, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %._crit_edge57, %.lr.ph63
  %.161 = phi i32 [ %i.as, %.lr.ph63 ], [ 0, %._crit_edge57 ]
  %.260 = phi float [ %i.at, %.lr.ph63 ], [ %i.aq, %._crit_edge57 ]
  %i.as = add nuw nsw i32 %.161, 1                ; 2 uses
  %i.at = fmul nnan float %.260, 2.000000e+00     ; 3 uses
  %i.au = fcmp olt float %i.at, 1.000000e+00
  br i1 %i.au, label %.lr.ph63, label %._crit_edge64.loopexit, !llvm.loop !184

._crit_edge64.loopexit:                           ; preds = %.lr.ph63
  %i.av = shl i32 %i.as, 11
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %._crit_edge57
  %.2.lcssa = phi float [ %i.aq, %._crit_edge57 ], [ %i.at, %._crit_edge64.loopexit ]
  %.1.lcssa = phi i32 [ 0, %._crit_edge57 ], [ %i.av, %._crit_edge64.loopexit ]
  %i.aw = fmul float %.2.lcssa, 2.048000e+03
  %i.ax = tail call float @llvm.round.f32(float %i.aw)
  %i.ay = fptosi float %i.ax to i32
  %i.az = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 4095)
  %i.ba = add nsw i32 %i.az, 63488
  %i.bb = or i32 %i.ba, %.1.lcssa
  %i.bc = trunc i32 %i.bb to i16
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !56
  %.not.wide = icmp eq i64 %i.v, 0
  br i1 %.not.wide, label %._crit_edge72, label %.lr.ph71, !llvm.loop !185
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4ojph5local9param_qcd14add_qcc_objectEj(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !3

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 216 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92   ; 11 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %i.c, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91
  store ptr %i.g, ptr %i.d, align 8, !tbaa !92
  %i.h = trunc i32 %1 to i16
  store i8 2, ptr %i.e, align 8, !tbaa !89
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 0, ptr %i.i, align 2, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i8 0, ptr %i.j, align 4, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(198) %i.k, i8 0, i64 198, i1 false)
  store float -1.000000e+00, ptr %i.l, align 4, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store i8 1, ptr %i.m, align 8, !tbaa !95
  store ptr null, ptr %i.f, align 8, !tbaa !91
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  store ptr %0, ptr %i.n, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  store i16 %i.h, ptr %i.o, align 8, !tbaa !90
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !91
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #20 ; 12 uses
  %i.q = trunc i32 %1 to i16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  store ptr null, ptr %i.r, align 8, !tbaa !92
  store i8 2, ptr %i.p, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i16 0, ptr %i.s, align 2, !tbaa !93
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i8 0, ptr %i.t, align 4, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 204
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(198) %i.u, i8 0, i64 198, i1 false)
  store float -1.000000e+00, ptr %i.v, align 4, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  store i8 1, ptr %i.w, align 8, !tbaa !95
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 216
  store ptr null, ptr %i.x, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 224
  store ptr %0, ptr %i.y, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 232
  store i16 %i.q, ptr %i.z, align 8, !tbaa !90
  store ptr %i.p, ptr %i.c, align 8, !tbaa !91
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi ptr [ %i.p, %bb.e ], [ %.pre, %bb.d ]
  ret ptr %i.aa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 -1431655765, 1431655804) i32 @_ZNK4ojph5local9param_qcd8get_MAGBEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0) local_unnamed_addr #3 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.049 = phi i32 [ 0, %bb.a ], [ %.3, %.loopexit ] ; 6 uses
  %.03447 = phi ptr [ %0, %bb.a ], [ %i.br, %.loopexit ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.03447, i64 200
  %i.b = load i32, ptr %i.a, align 8, !tbaa !138  ; 8 uses
  %i.c = add i32 %i.b, -1
  %i.d = udiv i32 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %.03447, i64 4
  %i.f = load i8, ptr %i.e, align 4, !tbaa !94    ; 3 uses
  %i.g = and i8 %i.f, 31
  switch i8 %i.g, label %.loopexit [
    i8 0, label %.preheader
    i8 2, label %.preheader39
  ]

.preheader39:                                     ; preds = %bb.b
  %.not50 = icmp eq i32 %i.b, 0
  br i1 %.not50, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader39
  %i.h = getelementptr inbounds nuw i8, ptr %.03447, i64 6 ; 3 uses
  %i.i = lshr i8 %i.f, 5
  %i.j = zext nneg i8 %i.i to i32
  %i.k = sub nsw i32 %i.j, %i.d                   ; 3 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  %i.l = load i16, ptr %i.h, align 2, !tbaa !56
  %i.m = lshr i16 %i.l, 11
  %i.n = zext nneg i16 %i.m to i32
  %i.o = add nsw i32 %i.k, %i.n
  %i.p = tail call i32 @llvm.umax.i32(i32 %.049, i32 %i.o) ; 3 uses
  %exitcond.peel.not = icmp eq i32 %i.b, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.c
  %i.q = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check71 = icmp ult i32 %i.b, 9
  br i1 %min.iters.check71, label %.peel.next.preheader90, label %vector.ph72

vector.ph72:                                      ; preds = %.peel.next.preheader
  %n.vec73 = and i64 %i.q, -8                     ; 3 uses
  %i.r = or disjoint i64 %n.vec73, 1
  %broadcast.splatinsert74 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat75 = shufflevector <4 x i32> %broadcast.splatinsert74, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert76 = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat77 = shufflevector <4 x i32> %broadcast.splatinsert76, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph72
  %index79 = phi i64 [ 0, %vector.ph72 ], [ %index.next84, %vector.body78 ] ; 2 uses
  %vec.phi80 = phi <4 x i32> [ %broadcast.splat77, %vector.ph72 ], [ %i.ah, %vector.body78 ]
  %vec.phi81 = phi <4 x i32> [ %broadcast.splat77, %vector.ph72 ], [ %i.ai, %vector.body78 ]
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph72 ], [ %vec.ind.next, %vector.body78 ] ; 3 uses
  %i.s = add <4 x i32> %vec.ind, splat (i32 -1)
  %i.t = add <4 x i32> %vec.ind, splat (i32 3)
  %i.u = udiv <4 x i32> %i.s, splat (i32 3)
  %i.v = udiv <4 x i32> %i.t, splat (i32 3)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index79 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %wide.load82 = load <4 x i16>, ptr %i.x, align 2, !tbaa !56
  %wide.load83 = load <4 x i16>, ptr %i.y, align 2, !tbaa !56
  %i.z = lshr <4 x i16> %wide.load82, splat (i16 11)
  %i.aa = lshr <4 x i16> %wide.load83, splat (i16 11)
  %i.ab = zext nneg <4 x i16> %i.z to <4 x i32>
  %i.ac = zext nneg <4 x i16> %i.aa to <4 x i32>
  %i.ad = add nsw <4 x i32> %broadcast.splat75, %i.u
  %i.ae = add nsw <4 x i32> %broadcast.splat75, %i.v
  %i.af = add nsw <4 x i32> %i.ad, %i.ab
  %i.ag = add nsw <4 x i32> %i.ae, %i.ac
  %i.ah = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi80, <4 x i32> %i.af) ; 2 uses
  %i.ai = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi81, <4 x i32> %i.ag) ; 2 uses
  %index.next84 = add nuw i64 %index79, 8         ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aj = icmp eq i64 %index.next84, %n.vec73
  br i1 %i.aj, label %middle.block85, label %vector.body78, !llvm.loop !186

middle.block85:                                   ; preds = %vector.body78
  %rdx.minmax86 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ah, <4 x i32> %i.ai)
  %i.ak = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax86) ; 2 uses
  %cmp.n87 = icmp eq i64 %i.q, %n.vec73
  br i1 %cmp.n87, label %.loopexit, label %.peel.next.preheader90

.peel.next.preheader90:                           ; preds = %.peel.next.preheader, %middle.block85
  %indvars.iv.ph = phi i64 [ 1, %.peel.next.preheader ], [ %i.r, %middle.block85 ]
  %.242.ph = phi i32 [ %i.p, %.peel.next.preheader ], [ %i.ak, %middle.block85 ]
  br label %.peel.next

.preheader:                                       ; preds = %bb.b
  %.not51 = icmp eq i32 %i.b, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph45

.lr.ph45:                                         ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %.03447, i64 6 ; 2 uses
  %i.am = lshr i8 %i.f, 5
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  %wide.trip.count59 = zext i32 %i.b to i64       ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45
  %n.vec = and i64 %wide.trip.count59, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert66 = insertelement <4 x i32> poison, i32 %.049, i64 0
  %broadcast.splat67 = shufflevector <4 x i32> %broadcast.splatinsert66, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
end_hunk_0

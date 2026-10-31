Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_toneequal?download=true
inline.NumInlined: 273
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 53
begin_hunk_0_@gui_changed:bb.a
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ac = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ab) #28 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 2480
  store i32 1, ptr %i.ad, align 16, !tbaa !190
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 3020
  store i32 0, ptr %i.ae, align 4, !tbaa !99
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 3024
  store i32 0, ptr %i.af, align 16, !tbaa !100
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 2504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ab) #28 ; 0 uses
  tail call void @dt_iop_refresh_all(ptr noundef nonnull %0) #28
  %i.ai = getelementptr i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.ai, align 8, !tbaa !133
  %i.aj = getelementptr i8, ptr %.val, i64 60
  %.val.val = load i32, ptr %i.aj, align 4, !tbaa !21 ; 3 uses
  %i.ak = icmp ult i32 %.val.val, 5
  br i1 %i.ak, label %switch.lookup, label %show_guiding_controls.exit

switch.lookup:                                    ; preds = %bb.h
  %.val22 = load ptr, ptr %i.a, align 16, !tbaa !60 ; 5 uses
  %i.al = zext nneg i32 %.val.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.gui_changed, i64 %i.al
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 4 uses
  %i.am = zext nneg i32 %.val.val to i64
  %switch.gep23 = getelementptr inbounds nuw i8, ptr @switch.table.gui_changed.13, i64 %i.am
  %switch.load24 = load i8, ptr %switch.gep23, align 1
  %switch.ext25 = zext i8 %switch.load24 to i32
  %i.an = getelementptr inbounds nuw i8, ptr %.val22, i64 2672
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !185
  tail call void @gtk_widget_set_visible(ptr noundef %i.ao, i32 noundef %switch.ext) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %.val22, i64 2712
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !186
  tail call void @gtk_widget_set_visible(ptr noundef %i.aq, i32 noundef %switch.ext) #28
  %i.ar = getelementptr inbounds nuw i8, ptr %.val22, i64 2728
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !187
  tail call void @gtk_widget_set_visible(ptr noundef %i.as, i32 noundef %switch.ext) #28
  %i.at = getelementptr inbounds nuw i8, ptr %.val22, i64 2720
  %i.au = load ptr, ptr %i.at, align 32, !tbaa !188
  tail call void @gtk_widget_set_visible(ptr noundef %i.au, i32 noundef %switch.ext25) #28
  %i.av = getelementptr inbounds nuw i8, ptr %.val22, i64 2688
  %i.aw = load ptr, ptr %i.av, align 64, !tbaa !189
  tail call void @gtk_widget_set_visible(ptr noundef %i.aw, i32 noundef %switch.ext) #28
  br label %show_guiding_controls.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 2720
  %i.ay = load ptr, ptr %i.ax, align 32, !tbaa !188
  %i.az = icmp eq ptr %1, %i.ay
  br i1 %i.az, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 2736
  %i.bb = load ptr, ptr %i.ba, align 16, !tbaa !194
  %i.bc = icmp eq ptr %1, %i.bb
  br i1 %i.bc, label %bb.k, label %show_guiding_controls.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.be = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bd) #28 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 2480
  store i32 1, ptr %i.bf, align 16, !tbaa !190
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 3020
  store i32 0, ptr %i.bg, align 4, !tbaa !99
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 3024
  store i32 0, ptr %i.bh, align 16, !tbaa !100
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 2504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bd) #28 ; 0 uses
  tail call void @dt_iop_refresh_all(ptr noundef nonnull %0) #28
  tail call void @dt_bauhaus_widget_set_quad_active(ptr noundef %1, i32 noundef 0) #28
  br label %show_guiding_controls.exit

show_guiding_controls.exit:                       ; preds = %bb.h, %switch.lookup, %bb.k, %bb.j, %bb.f
  ret void
}

declare void @dt_bauhaus_widget_set_quad_active(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr noundef %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !60  ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.h = call i32 @dt_dev_get_preview_size(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #28
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load float, ptr %i.a, align 4, !tbaa !13
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, %1
  %i.k = fptosi float %i.j to i32                 ; 3 uses
  %i.l = load float, ptr %i.b, align 4, !tbaa !13
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %2
  %i.n = fptosi float %i.m to i32                 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.p = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.o) #28 ; 0 uses
  %i.q = icmp sgt i32 %i.k, -1
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = uitofp nneg i32 %i.k to float
  %i.s = load float, ptr %i.a, align 4, !tbaa !13
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.s, %i.r
  %i.u = icmp sgt i32 %i.n, -1
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = uitofp nneg i32 %i.n to float
  %i.w = load float, ptr %i.b, align 4, !tbaa !13
  %i.x = fcmp reassoc nsz arcp contract afn ogt float %i.w, %i.v
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink40 = phi i32 [ 0, %bb.f ], [ 1, %bb.e ]
  %.sink38 = phi i32 [ 0, %bb.f ], [ %i.k, %bb.e ]
  %.sink = phi i32 [ 0, %bb.f ], [ %i.n, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 3008
  store i32 %.sink40, ptr %i.y, align 64, !tbaa !195
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 2492
  store i32 %.sink38, ptr %i.z, align 4, !tbaa !196
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 2496
  store i32 %.sink, ptr %i.aa, align 64, !tbaa !197
  %i.ab = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.o) #28 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 3008
  %i.ad = load i32, ptr %i.ac, align 64, !tbaa !195
  %.not30 = icmp eq i32 %i.ad, 0
  br i1 %.not30, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 2760
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !198
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 608
  %i.ah = load i32, ptr %i.ag, align 16, !tbaa !199
  %.not31 = icmp eq i32 %i.ah, 0
  br i1 %.not31, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 3020
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !99
  %.not32 = icmp eq i32 %i.aj, 0
  br i1 %.not32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.c, align 8, !tbaa !63
  %.val33 = load ptr, ptr %i.e, align 16, !tbaa !60
  %i.ak = getelementptr i8, ptr %.val, i64 2112
  %.val.val = load ptr, ptr %i.ak, align 16, !tbaa !200
  %i.al = call fastcc float @_luminance_from_module_buffer(ptr %.val.val, ptr %.val33)
  %i.am = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 2468
  store float %i.am, ptr %i.an, align 4, !tbaa !201
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  call fastcc void @switch_cursors(ptr noundef nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k
  %.0 = phi i32 [ 1, %bb.k ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.1 = phi i32 [ %.0, %bb.l ], [ 0, %bb.a ]
  ret i32 %.1
}

declare i32 @dt_dev_get_preview_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc float @_luminance_from_module_buffer(ptr %.664.val.2112.val, ptr nofree readonly captures(none) %.704.val) unnamed_addr #4 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.704.val, i64 2492
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load <2 x i32>, ptr %i.b, align 4, !tbaa !16
  %i.e = tail call i32 @dt_ioppr_get_iop_order(ptr noundef %.664.val.2112.val, ptr noundef nonnull @.str.133, i32 noundef 0) #28
  %i.f = sitofp reassoc nsz arcp contract afn i32 %i.e to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.g = sitofp <2 x i32> %i.d to <2 x float>
  store <2 x float> %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !202 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !203
  %i.k = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.h, ptr noundef %i.j, double noundef %i.f, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 1) #28 ; 0 uses
  %i.l = load float, ptr %i.a, align 8, !tbaa !13
  %i.m = fptosi float %i.l to i32                 ; 2 uses
  %i.n = load float, ptr %i.c, align 4, !tbaa !13
  %i.o = fptosi float %i.n to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.p = getelementptr inbounds nuw i8, ptr %.704.val, i64 2576
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !111 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.704.val, i64 2536
  %i.s = load i64, ptr %i.r, align 8, !tbaa !109  ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.704.val, i64 2544
  %i.u = load i64, ptr %i.t, align 16, !tbaa !110 ; 2 uses
  %i.v = sext i32 %i.m to i64                     ; 8 uses
  %i.w = sext i32 %i.o to i64                     ; 5 uses
  %.not.i = icmp ugt i64 %i.u, %i.w
  %.not60.i = icmp ugt i64 %i.s, %i.v
  %or.cond.i = and i1 %.not60.i, %.not.i
  br i1 %or.cond.i, label %bb.b, label %get_luminance_from_buffer.exit

bb.b:                                             ; preds = %bb.a
  %i.x = call i64 @llvm.usub.sat.i64(i64 range(i64 -2147483648, 2147483648) %i.w, i64 1) ; 2 uses
  %i.y = add nuw nsw i64 %i.w, 1
  %i.z = add i64 %i.u, -1
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 %i.z) ; 2 uses
  %i.ab = icmp ugt i32 %i.m, 1
  %i.ac = add i64 %i.s, -2
  %i.ad = icmp ugt i64 %i.ac, %i.v
  %or.cond62.i = and i1 %i.ab, %i.ad
  br i1 %or.cond62.i, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.q, i64 %i.v ; 3 uses
  %i.ae = mul i64 %i.x, %i.s
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ae ; 4 uses
  %i.af = getelementptr i8, ptr %gep.i, i64 -4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !13
  %i.ah = load float, ptr %gep.i, align 4, !tbaa !13
  %i.ai = getelementptr i8, ptr %gep.i, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !13
  %i.ak = getelementptr i8, ptr %gep.i, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !13
  %i.am = mul i64 %i.s, %i.w
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.am ; 4 uses
  %i.an = getelementptr i8, ptr %gep.1.i, i64 -4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !13
  %i.ap = load float, ptr %gep.1.i, align 4, !tbaa !13
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, f0x3E48E161
  %i.ar = getelementptr i8, ptr %gep.1.i, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !13
  %i.at = getelementptr i8, ptr %gep.1.i, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !13
  %i.av = mul i64 %i.aa, %i.s
  %gep.2.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.av ; 4 uses
  %i.aw = getelementptr i8, ptr %gep.2.i, i64 -4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !13
  %i.ay = load float, ptr %gep.2.i, align 4, !tbaa !13
  %i.az = getelementptr i8, ptr %gep.2.i, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !13
  %i.bb = getelementptr i8, ptr %gep.2.i, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !13
  %reass.add11 = fadd reassoc nsz arcp contract afn float %i.ao, %i.ah
  %reass.add12 = fadd reassoc nsz arcp contract afn float %reass.add11, %i.as
  %reass.add13 = fadd reassoc nsz arcp contract afn float %reass.add12, %i.ay
  %reass.mul14 = fmul reassoc nsz arcp contract afn float %reass.add13, f0x3DFEC66E
  %reass.add15 = fadd reassoc nsz arcp contract afn float %i.aj, %i.ag
  %reass.add16 = fadd reassoc nsz arcp contract afn float %reass.add15, %i.ax
  %reass.add17 = fadd reassoc nsz arcp contract afn float %reass.add16, %i.ba
  %reass.mul18 = fmul reassoc nsz arcp contract afn float %reass.add17, f0x3D9CC8E1
  %reass.add19 = fadd reassoc nsz arcp contract afn float %i.au, %i.al
  %reass.add20 = fadd reassoc nsz arcp contract afn float %reass.add19, %i.bc
  %reass.mul21 = fmul reassoc nsz arcp contract afn float %reass.add20, 0.000000e+00
  %i.bd = fadd reassoc nsz arcp contract afn float %reass.mul14, %i.aq
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %reass.mul18
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %reass.mul21
  br label %get_luminance_from_buffer.exit

bb.c:                                             ; preds = %bb.b
  %i.bg = call i64 @llvm.usub.sat.i64(i64 range(i64 -2147483648, 2147483648) %i.v, i64 1) ; 3 uses
  %i.bh = add nuw nsw i64 %i.v, 1
  %i.bi = add i64 %i.s, -1
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.bi) ; 3 uses
  %i.bk = mul i64 %i.x, %i.s
  %i.bl = getelementptr [4 x i8], ptr %i.q, i64 %i.bk ; 3 uses
  %i.bm = getelementptr [4 x i8], ptr %i.bl, i64 %i.bg
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !13
  %i.bo = getelementptr [4 x i8], ptr %i.bl, i64 %i.v
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !13 ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %i.bl, i64 %i.bj
  %i.br = load float, ptr %i.bq, align 4, !tbaa !13
  %i.bs = mul i64 %i.s, %i.w
  %i.bt = getelementptr [4 x i8], ptr %i.q, i64 %i.bs ; 3 uses
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %i.bg
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !13
  %i.bw = getelementptr [4 x i8], ptr %i.bt, i64 %i.v
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !13 ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, f0x3E48E161
  %i.bz = getelementptr [4 x i8], ptr %i.bt, i64 %i.bj
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !13
  %i.cb = mul i64 %i.aa, %i.s
  %i.cc = getelementptr [4 x i8], ptr %i.q, i64 %i.cb ; 3 uses
  %i.cd = getelementptr [4 x i8], ptr %i.cc, i64 %i.bg
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !13
  %i.cf = getelementptr [4 x i8], ptr %i.cc, i64 %i.v
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !13 ; 2 uses
  %i.ch = getelementptr [4 x i8], ptr %i.cc, i64 %i.bj
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !13
  %reass.add = fadd reassoc nsz arcp contract afn float %i.bv, %i.bp
  %reass.add2 = fadd reassoc nsz arcp contract afn float %reass.add, %i.ca
  %reass.add3 = fadd reassoc nsz arcp contract afn float %reass.add2, %i.cg
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add3, f0x3DFEC66E
  %reass.add4 = fadd reassoc nsz arcp contract afn float %i.br, %i.bn
  %reass.add5 = fadd reassoc nsz arcp contract afn float %reass.add4, %i.ce
  %reass.add6 = fadd reassoc nsz arcp contract afn float %reass.add5, %i.ci
  %reass.mul7 = fmul reassoc nsz arcp contract afn float %reass.add6, f0x3D9CC8E1
  %reass.add8 = fadd reassoc nsz arcp contract afn float %i.bx, %i.bp
  %reass.add9 = fadd reassoc nsz arcp contract afn float %reass.add8, %i.cg
  %reass.mul10 = fmul reassoc nsz arcp contract afn float %reass.add9, 0.000000e+00
  %i.cj = fadd reassoc nsz arcp contract afn float %reass.mul10, %i.by
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, %reass.mul
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %reass.mul7
  br label %get_luminance_from_buffer.exit

get_luminance_from_buffer.exit:                   ; preds = %bb.a, %.preheader.i, %bb.c
  %.155.i = phi nsz float [ +qnan, %bb.a ], [ %i.cl, %bb.c ], [ %i.bf, %.preheader.i ]
  ret float %.155.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @switch_cursors(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !60  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = load i32, ptr %i.d, align 16, !tbaa !87
  %.not29 = icmp eq i32 %i.e, 0
  br i1 %.not29, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !208
  %i.h = tail call ptr @dt_ui_main_window(ptr noundef %i.g) #28 ; 3 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !63  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 2168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !209
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %in_mask_editing.exit.thread, label %in_mask_editing.exit

in_mask_editing.exit:                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 2160
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !210
  %.not46 = icmp eq ptr %i.l, null
  br i1 %.not46, label %in_mask_editing.exit.thread, label %bb.d

in_mask_editing.exit.thread:                      ; preds = %bb.c, %in_mask_editing.exit
  %i.m = tail call i32 @dt_iop_canvas_not_sensitive(ptr noundef nonnull %.val) #28
  %.not31 = icmp eq i32 %i.m, 0
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %in_mask_editing.exit.thread, %in_mask_editing.exit
  %i.n = tail call ptr @gdk_display_get_default() #28
  %i.o = tail call ptr @gdk_cursor_new_from_name(ptr noundef %i.n, ptr noundef nonnull @.str.20) #28 ; 2 uses
  %i.p = tail call ptr @gtk_widget_get_window(ptr noundef %i.h) #28
  tail call void @gdk_window_set_cursor(ptr noundef %i.p, ptr noundef %i.o) #28
  tail call void @g_object_unref(ptr noundef %i.o) #28
  br label %bb.l

bb.e:                                             ; preds = %in_mask_editing.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.r = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.q) #28 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.t = load i32, ptr %i.s, align 16, !tbaa !211
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 3012 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !212
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.q) #28 ; 0 uses
  %i.w = load i32, ptr %i.u, align 4, !tbaa !212
  %.not32 = icmp eq i32 %i.w, 0
  br i1 %.not32, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2760
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !198  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 608
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !199
  %.not33 = icmp eq i32 %i.ab, 0
  br i1 %.not33, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@gui_post_expose:bb.a
  %i.db = fadd reassoc nsz arcp contract afn double %i.da, %i.by
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.bv, double noundef %i.db) #28
  %i.dc = fadd reassoc nsz arcp contract afn double %i.co, %i.by
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.bv, double noundef %i.dc) #28
  %i.dd = fsub reassoc nsz arcp contract afn double %i.by, %i.co
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.bv, double noundef %i.dd) #28
  %i.de = fsub reassoc nsz arcp contract afn double %i.by, %i.da
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.bv, double noundef %i.de) #28
  tail call void @cairo_stroke(ptr noundef %1) #28
  tail call fastcc void @draw_exposure_cursor(ptr noundef %1, double noundef %i.bv, double noundef %i.by, double noundef 1.600000e+01, float noundef %.0162196, float noundef %6, i32 noundef 6)
  tail call fastcc void @draw_exposure_cursor(ptr noundef %1, double noundef %i.bv, double noundef %i.by, double noundef 8.000000e+00, float noundef %.0159199, float noundef %6, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 336
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !228
  %i.di = tail call ptr @pango_font_description_copy_static(ptr noundef %i.dh) #28 ; 4 uses
  %i.dj = tail call i32 @pango_font_description_get_size(ptr noundef %i.di) #30
  %i.dk = sitofp reassoc nsz arcp contract afn i32 %i.dj to float
  %i.dl = fdiv reassoc nsz arcp contract afn float %i.dk, %6
  %i.dm = fptosi float %i.dl to i32
  tail call void @pango_font_description_set_size(ptr noundef %i.di, i32 noundef %i.dm) #28
  %i.dn = tail call ptr @pango_cairo_create_layout(ptr noundef %1) #28 ; 6 uses
  tail call void @pango_layout_set_font_description(ptr noundef %i.dn, ptr noundef %i.di) #28
  %i.do = tail call ptr @pango_layout_get_context(ptr noundef %i.dn) #28
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1424
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !229
  tail call void @pango_cairo_context_set_resolution(ptr noundef %i.do, double noundef %i.dr) #28
  %i.ds = load i32, ptr %i.ab, align 4, !tbaa !99
  %.not174 = icmp eq i32 %i.ds, 0
  br i1 %.not174, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.du = load i32, ptr %i.dt, align 16, !tbaa !215
  %.not175 = icmp eq i32 %i.du, 0
  br i1 %.not175, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dv = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #28
  %i.dw = fpext reassoc nsz arcp contract afn float %.0163195 to double
  %i.dx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef %i.dv, double noundef %i.dw) #28 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @pango_layout_set_text(ptr noundef %i.dn, ptr noundef nonnull %i.a, i32 noundef -1) #28
  call void @pango_layout_get_pixel_extents(ptr noundef %i.dn, ptr noundef nonnull %7, ptr noundef null) #28
  %i.dy = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.0159199, float f0x3EE8BA2E)
  %i.dz = fpext reassoc nsz arcp contract afn float %i.dy to double ; 3 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.dz, double noundef %i.dz, double noundef %i.dz, double noundef 7.500000e-01) #28
  %i.ea = load i32, ptr %i.bf, align 4, !tbaa !220 ; 2 uses
  %i.eb = sitofp reassoc nsz arcp contract afn i32 %i.ea to double ; 2 uses
  %i.ec = fmul reassoc nnan nsz arcp contract afn double %i.eb, 2.000000e+00 ; 2 uses
  %i.ed = fadd reassoc nsz arcp contract afn double %i.ec, 1.600000e+01
  %i.ee = fdiv reassoc nsz arcp contract afn double %i.ed, %i.bi
  %i.ef = fadd reassoc nsz arcp contract afn double %i.ee, %i.bv
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !403 ; 2 uses
  %i.ei = sitofp reassoc nsz arcp contract afn i32 %i.eh to float
  %i.ej = fsub reassoc nsz arcp contract afn float %i.ap, %i.ei
  %i.ek = fpext reassoc nsz arcp contract afn float %i.ej to double
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !404
  %i.en = sitofp reassoc nsz arcp contract afn i32 %i.em to double ; 2 uses
  %i.eo = sitofp reassoc nsz arcp contract afn i32 %i.ea to float
  %i.ep = fdiv reassoc nsz arcp contract afn float %i.eo, %6
  %i.eq = fpext reassoc nsz arcp contract afn float %i.ep to double
  %.neg186 = fmul reassoc nnan nsz arcp contract afn double %i.en, -5.000000e-01
  %.neg187 = fsub reassoc nsz arcp contract afn double %.neg186, %i.eq
  %i.er = fadd reassoc nsz arcp contract afn double %.neg187, %i.ek
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !405
  %i.eu = sitofp reassoc nsz arcp contract afn i32 %i.et to double
  %i.ev = load i32, ptr %7, align 4, !tbaa !406
  %i.ew = sitofp reassoc nsz arcp contract afn i32 %i.ev to double
  %i.ex = fmul reassoc nnan nsz arcp contract afn double %i.ew, 2.000000e+00
  %i.ey = fadd reassoc nsz arcp contract afn double %i.ex, %i.eu
  %i.ez = fmul reassoc nnan nsz arcp contract afn double %i.eb, 4.000000e+00
  %i.fa = fdiv reassoc nsz arcp contract afn double %i.ez, %i.bi
  %i.fb = fadd reassoc nsz arcp contract afn double %i.ey, %i.fa
  %i.fc = sitofp reassoc nsz arcp contract afn i32 %i.eh to double
  %i.fd = fmul reassoc nnan nsz arcp contract afn double %i.fc, 2.000000e+00
  %i.fe = fadd reassoc nsz arcp contract afn double %i.fd, %i.en
  %i.ff = fdiv reassoc nsz arcp contract afn double %i.ec, %i.bi
  %i.fg = fadd reassoc nsz arcp contract afn double %i.fe, %i.ff
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.ef, double noundef %i.er, double noundef %i.fb, double noundef %i.fg) #28
  call void @cairo_fill(ptr noundef %1) #28
  call fastcc void @match_color_to_background(ptr noundef %1, float noundef %.0160198)
  %i.fh = load i32, ptr %i.bf, align 4, !tbaa !220
  %i.fi = sitofp reassoc nsz arcp contract afn i32 %i.fh to double
  %i.fj = fmul reassoc nnan nsz arcp contract afn double %i.fi, 4.000000e+00
  %i.fk = fadd reassoc nsz arcp contract afn double %i.fj, 1.600000e+01
  %i.fl = fdiv reassoc nsz arcp contract afn double %i.fk, %i.bi
  %i.fm = fadd reassoc nsz arcp contract afn double %i.fl, %i.bv
  %i.fn = load i32, ptr %i.eg, align 4, !tbaa !403
  %i.fo = sitofp reassoc nsz arcp contract afn i32 %i.fn to float
  %i.fp = fsub reassoc nsz arcp contract afn float %i.ap, %i.fo
  %i.fq = fpext reassoc nsz arcp contract afn float %i.fp to double
  %i.fr = load i32, ptr %i.el, align 4, !tbaa !404
  %i.fs = sitofp reassoc nsz arcp contract afn i32 %i.fr to double
  %i.ft = fmul reassoc nnan nsz arcp contract afn double %i.fs, 5.000000e-01
  %i.fu = fsub reassoc nsz arcp contract afn double %i.fq, %i.ft
  call void @cairo_move_to(ptr noundef %1, double noundef %i.fm, double noundef %i.fu) #28
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.dn) #28
  call void @cairo_stroke(ptr noundef %1) #28
  call void @pango_font_description_free(ptr noundef %i.di) #28
  call void @g_object_unref(ptr noundef %i.dn) #28
  %i.fv = load i32, ptr %i.ab, align 4, !tbaa !99
  %.not176 = icmp eq i32 %i.fv, 0
  br i1 %.not176, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.fx = load i32, ptr %i.fw, align 16, !tbaa !215
  %.not177 = icmp eq i32 %i.fx, 0
  br i1 %.not177, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 2988 ; 2 uses
  store i32 -1, ptr %i.fy, align 4, !tbaa !213
  %i.fz = load i32, ptr %i.l, align 64, !tbaa !195
  %.not178 = icmp eq i32 %i.fz, 0
  br i1 %.not178, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 2468
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !201 ; 2 uses
  %i.gc = insertelement <8 x float> poison, float %i.gb, i64 0
  %i.gd = shufflevector <8 x float> %i.gc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ge = fadd reassoc nsz arcp contract afn <8 x float> %i.gd, <float 8.000000e+00, float 7.000000e+00, float 6.000000e+00, float 5.000000e+00, float 4.000000e+00, float 3.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.gf = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ge)
  %i.gg = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gf, splat (float 4.500000e-01) ; 8 uses
  %i.gh = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gb)
  %i.gi = fcmp reassoc nsz arcp contract afn olt float %i.gh, 4.500000e-01 ; 2 uses
  %i.gj = bitcast <8 x i1> %i.gg to i8
  %i.gk = icmp ne i8 %i.gj, 0
  %op.rdx = or i1 %i.gk, %i.gi
  br i1 %op.rdx, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %.preheader
  %i.gl = extractelement <8 x i1> %i.gg, i64 1
  %spec.select = zext i1 %i.gl to i32
  %i.gm = extractelement <8 x i1> %i.gg, i64 2
  %spec.select200 = select i1 %i.gm, i32 2, i32 %spec.select
  %i.gn = extractelement <8 x i1> %i.gg, i64 3
  %spec.select201 = select i1 %i.gn, i32 3, i32 %spec.select200
  %i.go = extractelement <8 x i1> %i.gg, i64 4
  %spec.select202 = select i1 %i.go, i32 4, i32 %spec.select201
  %i.gp = extractelement <8 x i1> %i.gg, i64 5
  %spec.select203 = select i1 %i.gp, i32 5, i32 %spec.select202
  %i.gq = extractelement <8 x i1> %i.gg, i64 6
  %spec.select204 = select i1 %i.gq, i32 6, i32 %spec.select203
  %i.gr = extractelement <8 x i1> %i.gg, i64 7
  %spec.select205 = select i1 %i.gr, i32 7, i32 %spec.select204
  %spec.select206 = select i1 %i.gi, i32 8, i32 %spec.select205
  store i32 %spec.select206, ptr %i.fy, align 4, !tbaa !213
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %.preheader, %bb.v
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 2664
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !214
  call void @gtk_widget_queue_draw(ptr noundef %i.gt) #28
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.y

bb.y:                                             ; preds = %.critedge, %bb.d, %bb.l, %bb.x, %in_mask_editing.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @_init_drawing(ptr noalias noundef %0, ptr noundef %1, ptr noalias noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2808
  tail call void @gtk_widget_get_allocation(ptr noundef %1, ptr noundef nonnull %i.b) #28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2824 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !230  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @cairo_surface_destroy(ptr noundef nonnull %i.d) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2816 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2820
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1440
  %i.i = load double, ptr %i.h, align 8, !tbaa !407 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.e, align 8, !tbaa !16
  %i.k = sitofp <2 x i32> %i.j to <2 x double>    ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = fmul reassoc nsz arcp contract afn double %i.i, %i.l
  %i.n = fptosi double %i.m to i32
  %i.o = extractelement <2 x double> %i.k, i64 1
  %i.p = fmul reassoc nsz arcp contract afn double %i.i, %i.o
  %i.q = fptosi double %i.p to i32
  %i.r = tail call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.n, i32 noundef %i.q) #28 ; 3 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1440
  %i.u = load double, ptr %i.t, align 8, !tbaa !407 ; 2 uses
  tail call void @cairo_surface_set_device_scale(ptr noundef %i.r, double noundef %i.u, double noundef %i.u) #28
  store ptr %i.r, ptr %i.c, align 8, !tbaa !230
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2832 ; 36 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !231 ; 2 uses
  %.not148 = icmp eq ptr %i.w, null
  br i1 %.not148, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @cairo_destroy(ptr noundef nonnull %i.w) #28
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !230
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi ptr [ %.pre, %bb.d ], [ %i.r, %bb.c ]
  %i.y = tail call ptr @cairo_create(ptr noundef %i.x) #28 ; 2 uses
  store ptr %i.y, ptr %i.v, align 16, !tbaa !231
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 2840 ; 26 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !232 ; 2 uses
  %.not149 = icmp eq ptr %i.aa, null
  br i1 %.not149, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @g_object_unref(ptr noundef nonnull %i.aa) #28
  %.pre171 = load ptr, ptr %i.v, align 16, !tbaa !231
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = phi ptr [ %.pre171, %bb.f ], [ %i.y, %bb.e ]
  %i.ac = tail call ptr @pango_cairo_create_layout(ptr noundef %i.ab) #28
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !232
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 2864 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !233 ; 2 uses
  %.not150 = icmp eq ptr %i.ae, null
  br i1 %.not150, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @pango_font_description_free(ptr noundef nonnull %i.ae) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 336
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !228
  %i.ai = tail call ptr @pango_font_description_copy_static(ptr noundef %i.ah) #28 ; 2 uses
  store ptr %i.ai, ptr %i.ad, align 16, !tbaa !233
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !232
  tail call void @pango_layout_set_font_description(ptr noundef %i.aj, ptr noundef %i.ai) #28
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !232
  %i.al = tail call ptr @pango_layout_get_context(ptr noundef %i.ak) #28
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1424
  %i.ao = load double, ptr %i.an, align 8, !tbaa !229
  tail call void @pango_cairo_context_set_resolution(ptr noundef %i.al, double noundef %i.ao) #28
  %i.ap = tail call ptr @gtk_widget_get_style_context(ptr noundef %1) #28
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 2872 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i16 88, ptr %i.a, align 16
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_set_text(ptr noundef %i.ar, ptr noundef nonnull %i.a, i32 noundef -1) #28
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !232
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 2848 ; 14 uses
  call void @pango_layout_get_pixel_extents(ptr noundef %i.as, ptr noundef nonnull %i.at, ptr noundef null) #28
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 2860
  %i.av = load i32, ptr %i.au, align 4, !tbaa !409
  %i.aw = sitofp reassoc nsz arcp contract afn i32 %i.av to float
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 2760 ; 5 uses
  store float %i.aw, ptr %i.ax, align 8, !tbaa !234
  store i16 45, ptr %i.a, align 16
  %i.ay = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_set_text(ptr noundef %i.ay, ptr noundef nonnull %i.a, i32 noundef -1) #28
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_get_pixel_extents(ptr noundef %i.az, ptr noundef nonnull %i.at, ptr noundef null) #28
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 2856
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !410
  %i.bc = sitofp reassoc nsz arcp contract afn i32 %i.bb to double
  %i.bd = fmul reassoc nnan nsz arcp contract afn double %i.bc, 5.000000e-01
  %i.be = fptrunc reassoc nsz arcp contract afn double %i.bd to float ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 2764 ; 2 uses
  store float %i.be, ptr %i.bf, align 4, !tbaa !411
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 2804 ; 3 uses
  store i32 4, ptr %i.bg, align 4, !tbaa !220
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 332
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !412
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, 4.000000e+00
  %i.bl = fptosi float %i.bk to i32               ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 2800
  store i32 %i.bl, ptr %i.bm, align 16, !tbaa !235
  %i.bn = load i32, ptr %i.e, align 16, !tbaa !413 ; 2 uses
  %i.bo = sub nsw i32 %i.bn, %i.bl
  %i.bp = sitofp reassoc nsz arcp contract afn i32 %i.bo to double
  %i.bq = load float, ptr %i.ax, align 8, !tbaa !234
  %i.br = fpext reassoc nsz arcp contract afn float %i.bq to double ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn double %i.br, 2.000000e+00 ; 2 uses
  %i.bt = fsub reassoc nsz arcp contract afn double %i.bp, %i.bs
  %i.bu = fptrunc reassoc nsz arcp contract afn double %i.bt to float ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 2768 ; 3 uses
  store float %i.bu, ptr %i.bv, align 16, !tbaa !236
  %i.bw = load i32, ptr %i.f, align 4, !tbaa !414 ; 2 uses
  %i.bx = sub nsw i32 %i.bw, %i.bl
  %i.by = sitofp reassoc nsz arcp contract afn i32 %i.bx to double
  %i.bz = fsub reassoc nsz arcp contract afn double %i.by, %i.bs
  %i.ca = fptrunc reassoc nsz arcp contract afn double %i.bz to float ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 2772 ; 9 uses
  store float %i.ca, ptr %i.cb, align 4, !tbaa !237
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 2776 ; 2 uses
  store float 0.000000e+00, ptr %i.cc, align 8, !tbaa !415
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 2780 ; 2 uses
  store float %i.bu, ptr %i.cd, align 4, !tbaa !416
  %i.ce = fadd reassoc nsz arcp contract afn float %i.ca, 8.000000e+00
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 2784
  store float %i.ce, ptr %i.cf, align 32, !tbaa !417
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 2788
  store float %i.bu, ptr %i.cg, align 4, !tbaa !418
  %i.ch = fmul reassoc nsz arcp contract afn double %i.br, 5.000000e-01
  %i.ci = fsub reassoc nsz arcp contract afn double -8.000000e+00, %i.ch
  %i.cj = fptrunc reassoc nsz arcp contract afn double %i.ci to float
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 2792 ; 2 uses
  store float %i.cj, ptr %i.ck, align 8, !tbaa !419
  %i.cl = fadd reassoc nsz arcp contract afn float %i.be, 1.200000e+01
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, %i.bu
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 2796 ; 6 uses
  store float %i.cm, ptr %i.cn, align 4, !tbaa !420
  %i.co = load ptr, ptr %i.aq, align 8, !tbaa !408
  %i.cp = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.cq = sitofp reassoc nsz arcp contract afn i32 %i.bn to double
  %i.cr = sitofp reassoc nsz arcp contract afn i32 %i.bw to double
  call void @gtk_render_background(ptr noundef %i.co, ptr noundef %i.cp, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.cq, double noundef %i.cr) #28
  %i.cs = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.ct = load float, ptr %i.ax, align 8, !tbaa !234 ; 2 uses
  %i.cu = load i32, ptr %i.bg, align 4, !tbaa !220 ; 2 uses
  %i.cv = shl nsw i32 %i.cu, 1
  %i.cw = sitofp reassoc nsz arcp contract afn i32 %i.cv to float
  %i.cx = fadd reassoc nsz arcp contract afn float %i.ct, %i.cw
  %i.cy = fpext reassoc nsz arcp contract afn float %i.cx to double
  %i.cz = mul nsw i32 %i.cu, 3
  %i.da = sitofp reassoc nsz arcp contract afn i32 %i.cz to float
  %i.db = fadd reassoc nsz arcp contract afn float %i.ct, %i.da
  %i.dc = fpext reassoc nsz arcp contract afn float %i.db to double
  call void @cairo_translate(ptr noundef %i.cs, double noundef %i.cy, double noundef %i.dc) #28
  %i.dd = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 680
  %.sroa.0.0.copyload = load double, ptr %i.df, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 688
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 696
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 704
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.dd, double noundef %.sroa.0.0.copyload, double noundef %.sroa.4.0.copyload, double noundef %.sroa.5.0.copyload, double noundef %.sroa.6.0.copyload) #28
  br label %bb.j

.preheader:                                       ; preds = %bb.j
  %i.dg = load float, ptr %i.cb, align 4, !tbaa !237
  %i.dh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.143, double noundef 2.000000e+00) #28 ; 0 uses
  %i.di = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_set_text(ptr noundef %i.di, ptr noundef nonnull %i.a, i32 noundef -1) #28
  %i.dj = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_get_pixel_extents(ptr noundef %i.dj, ptr noundef nonnull %i.at, ptr noundef null) #28
  %i.dk = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.dl = load <4 x i32>, ptr %i.at, align 32, !tbaa !16
  %i.dm = sitofp <4 x i32> %i.dl to <4 x double>  ; 2 uses
  %i.dn = load float, ptr %i.cn, align 4, !tbaa !420
  %i.do = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dg, i64 1
  %i.dq = fmul reassoc arcp contract afn <2 x float> %i.dp, <float 1.000000e+00, float 0.000000e+00>
  %i.dr = fpext <2 x float> %i.dq to <2 x double>
  %i.ds = shufflevector <4 x double> %i.dm, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.dt = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.ds, splat (double -5.000000e-01)
  %i.du = shufflevector <4 x double> %i.dm, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.dv = fsub reassoc nsz arcp contract afn <2 x double> %i.dr, %i.du
  %i.dw = fadd reassoc nsz arcp contract afn <2 x double> %i.dv, %i.dt ; 2 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0
  %i.dy = extractelement <2 x double> %i.dw, i64 1
  call void @cairo_move_to(ptr noundef %i.dk, double noundef %i.dx, double noundef %i.dy) #28
  %i.dz = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.ea = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_cairo_show_layout(ptr noundef %i.dz, ptr noundef %i.ea) #28
  %i.eb = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_stroke(ptr noundef %i.eb) #28
  %i.ec = load float, ptr %i.cb, align 4, !tbaa !237
  %i.ed = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.143, double noundef 1.000000e+00) #28 ; 0 uses
  %i.ee = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_set_text(ptr noundef %i.ee, ptr noundef nonnull %i.a, i32 noundef -1) #28
  %i.ef = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_get_pixel_extents(ptr noundef %i.ef, ptr noundef nonnull %i.at, ptr noundef null) #28
  %i.eg = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.eh = load <4 x i32>, ptr %i.at, align 32, !tbaa !16
  %i.ei = sitofp <4 x i32> %i.eh to <4 x double>  ; 2 uses
  %i.ej = load float, ptr %i.cn, align 4, !tbaa !420
  %i.ek = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ec, i64 1
  %i.em = fmul reassoc arcp contract afn <2 x float> %i.el, <float 1.000000e+00, float 2.500000e-01>
  %i.en = fpext <2 x float> %i.em to <2 x double>
  %i.eo = shufflevector <4 x double> %i.ei, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.ep = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.eo, splat (double -5.000000e-01)
  %i.eq = shufflevector <4 x double> %i.ei, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.er = fsub reassoc nsz arcp contract afn <2 x double> %i.en, %i.eq
  %i.es = fadd reassoc nsz arcp contract afn <2 x double> %i.er, %i.ep ; 2 uses
  %i.et = extractelement <2 x double> %i.es, i64 0
  %i.eu = extractelement <2 x double> %i.es, i64 1
  call void @cairo_move_to(ptr noundef %i.eg, double noundef %i.et, double noundef %i.eu) #28
  %i.ev = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.ew = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_cairo_show_layout(ptr noundef %i.ev, ptr noundef %i.ew) #28
  %i.ex = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_stroke(ptr noundef %i.ex) #28
  %i.ey = load float, ptr %i.cb, align 4, !tbaa !237
  %i.ez = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.143, double noundef 0.000000e+00) #28 ; 0 uses
  %i.fa = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_set_text(ptr noundef %i.fa, ptr noundef nonnull %i.a, i32 noundef -1) #28
  %i.fb = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_get_pixel_extents(ptr noundef %i.fb, ptr noundef nonnull %i.at, ptr noundef null) #28
  %i.fc = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.fd = load <4 x i32>, ptr %i.at, align 32, !tbaa !16
  %i.fe = sitofp <4 x i32> %i.fd to <4 x double>  ; 2 uses
  %i.ff = load float, ptr %i.cn, align 4, !tbaa !420
  %i.fg = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.ey, i64 1
  %i.fi = fmul reassoc arcp contract afn <2 x float> %i.fh, <float 1.000000e+00, float 5.000000e-01>
  %i.fj = fpext <2 x float> %i.fi to <2 x double>
  %i.fk = shufflevector <4 x double> %i.fe, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.fl = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.fk, splat (double -5.000000e-01)
  %i.fm = shufflevector <4 x double> %i.fe, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.fn = fsub reassoc nsz arcp contract afn <2 x double> %i.fj, %i.fm
  %i.fo = fadd reassoc nsz arcp contract afn <2 x double> %i.fn, %i.fl ; 2 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 0
  %i.fq = extractelement <2 x double> %i.fo, i64 1
  call void @cairo_move_to(ptr noundef %i.fc, double noundef %i.fp, double noundef %i.fq) #28
  %i.fr = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.fs = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_cairo_show_layout(ptr noundef %i.fr, ptr noundef %i.fs) #28
  %i.ft = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_stroke(ptr noundef %i.ft) #28
  %i.fu = load float, ptr %i.cb, align 4, !tbaa !237
  %i.fv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.143, double noundef -1.000000e+00) #28 ; 0 uses
  %i.fw = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_set_text(ptr noundef %i.fw, ptr noundef nonnull %i.a, i32 noundef -1) #28
  %i.fx = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_get_pixel_extents(ptr noundef %i.fx, ptr noundef nonnull %i.at, ptr noundef null) #28
  %i.fy = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.fz = load <4 x i32>, ptr %i.at, align 32, !tbaa !16
  %i.ga = sitofp <4 x i32> %i.fz to <4 x double>  ; 2 uses
  %i.gb = load float, ptr %i.cn, align 4, !tbaa !420
  %i.gc = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gd = insertelement <2 x float> %i.gc, float %i.fu, i64 1
  %i.ge = fmul reassoc arcp contract afn <2 x float> %i.gd, <float 1.000000e+00, float 7.500000e-01>
  %i.gf = fpext <2 x float> %i.ge to <2 x double>
  %i.gg = shufflevector <4 x double> %i.ga, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.gh = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.gg, splat (double -5.000000e-01)
  %i.gi = shufflevector <4 x double> %i.ga, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.gj = fsub reassoc nsz arcp contract afn <2 x double> %i.gf, %i.gi
  %i.gk = fadd reassoc nsz arcp contract afn <2 x double> %i.gj, %i.gh ; 2 uses
  %i.gl = extractelement <2 x double> %i.gk, i64 0
  %i.gm = extractelement <2 x double> %i.gk, i64 1
  call void @cairo_move_to(ptr noundef %i.fy, double noundef %i.gl, double noundef %i.gm) #28
  %i.gn = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.go = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_cairo_show_layout(ptr noundef %i.gn, ptr noundef %i.go) #28
  %i.gp = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_stroke(ptr noundef %i.gp) #28
  %i.gq = load float, ptr %i.cb, align 4, !tbaa !237
  %i.gr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.143, double noundef -2.000000e+00) #28 ; 0 uses
  %i.gs = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_set_text(ptr noundef %i.gs, ptr noundef nonnull %i.a, i32 noundef -1) #28
  %i.gt = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_get_pixel_extents(ptr noundef %i.gt, ptr noundef nonnull %i.at, ptr noundef null) #28
  %i.gu = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.gv = load float, ptr %i.cn, align 4, !tbaa !420
  %i.gw = load <4 x i32>, ptr %i.at, align 32, !tbaa !16
  %i.gx = sitofp <4 x i32> %i.gw to <4 x double>  ; 2 uses
  %i.gy = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.gz = insertelement <2 x float> %i.gy, float %i.gq, i64 1
  %i.ha = fpext <2 x float> %i.gz to <2 x double>
  %i.hb = shufflevector <4 x double> %i.gx, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.hc = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.hb, splat (double -5.000000e-01)
  %i.hd = shufflevector <4 x double> %i.gx, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.he = fsub reassoc nsz arcp contract afn <2 x double> %i.ha, %i.hd
  %i.hf = fadd reassoc nsz arcp contract afn <2 x double> %i.he, %i.hc ; 2 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 0
  %i.hh = extractelement <2 x double> %i.hf, i64 1
  call void @cairo_move_to(ptr noundef %i.gu, double noundef %i.hg, double noundef %i.hh) #28
  %i.hi = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.hj = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_cairo_show_layout(ptr noundef %i.hi, ptr noundef %i.hj) #28
  %i.hk = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_stroke(ptr noundef %i.hk) #28
  %i.hl = load float, ptr %i.cc, align 8, !tbaa !415
  %i.hm = fpext reassoc nsz arcp contract afn float %i.hl to double
  %i.hn = load float, ptr %i.cd, align 4, !tbaa !416
  %i.ho = fpext reassoc nsz arcp contract afn float %i.hn to double
  %i.hp = call ptr @cairo_pattern_create_linear(double noundef %i.hm, double noundef 0.000000e+00, double noundef %i.ho, double noundef 0.000000e+00) #28 ; 4 uses
  call void @cairo_pattern_add_color_stop_rgba(ptr noundef %i.hp, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #28
  call void @cairo_pattern_add_color_stop_rgba(ptr noundef %i.hp, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00) #28
  %i.hq = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_set_line_width(ptr noundef %i.hq, double noundef 0.000000e+00) #28
  %i.hr = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.hs = call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 8 %i.ax, <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 true, i1 true>, <8 x float> poison), !tbaa !13
  %i.ht = shufflevector <8 x float> %i.hs, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 6, i32 7>
  %i.hu = fpext <4 x float> %i.ht to <4 x double> ; 4 uses
  %i.hv = extractelement <4 x double> %i.hu, i64 0
  %i.hw = extractelement <4 x double> %i.hu, i64 1
  %i.hx = extractelement <4 x double> %i.hu, i64 2
  %i.hy = extractelement <4 x double> %i.hu, i64 3
  call void @cairo_rectangle(ptr noundef %i.hr, double noundef %i.hw, double noundef %i.hx, double noundef %i.hy, double noundef %i.hv) #28
  %i.hz = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_set_source(ptr noundef %i.hz, ptr noundef %i.hp) #28
  %i.ia = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_fill(ptr noundef %i.ia) #28
  call void @cairo_pattern_destroy(ptr noundef %i.hp) #28
  %i.ib = load float, ptr %i.cb, align 4, !tbaa !237
  %i.ic = fpext reassoc nsz arcp contract afn float %i.ib to double
  %i.id = call ptr @cairo_pattern_create_linear(double noundef 0.000000e+00, double noundef %i.ic, double noundef 0.000000e+00, double noundef 0.000000e+00) #28 ; 4 uses
  call void @cairo_pattern_add_color_stop_rgba(ptr noundef %i.id, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #28
  call void @cairo_pattern_add_color_stop_rgba(ptr noundef %i.id, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00) #28
  %i.ie = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_set_line_width(ptr noundef %i.ie, double noundef 0.000000e+00) #28
  %i.if = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.ig = load float, ptr %i.ax, align 8, !tbaa !234 ; 2 uses
  %i.ih = load i32, ptr %i.bg, align 4, !tbaa !220
  %i.ii = shl nsw i32 %i.ih, 1
  %i.ij = sitofp reassoc nsz arcp contract afn i32 %i.ii to float
  %i.ik = fadd reassoc nsz arcp contract afn float %i.ig, %i.ij
  %i.il = fneg reassoc nsz arcp contract afn float %i.ik
  %i.im = fpext reassoc nsz arcp contract afn float %i.il to double
  %i.in = fpext reassoc nsz arcp contract afn float %i.ig to double
  %i.io = load float, ptr %i.cb, align 4, !tbaa !237
  %i.ip = fpext reassoc nsz arcp contract afn float %i.io to double
  call void @cairo_rectangle(ptr noundef %i.if, double noundef %i.im, double noundef 0.000000e+00, double noundef %i.in, double noundef %i.ip) #28
  %i.iq = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_set_source(ptr noundef %i.iq, ptr noundef %i.id) #28
  %i.ir = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_fill(ptr noundef %i.ir) #28
  call void @cairo_pattern_destroy(ptr noundef %i.id) #28
  %i.is = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 1432
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !221
  %i.iw = fmul reassoc nsz arcp contract afn double %i.iv, 5.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.is, double noundef %i.iw) #28
  %i.ix = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.iy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 648
  %.sroa.0151.0.copyload = load double, ptr %i.iz, align 8
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 656
  %.sroa.4152.0.copyload = load double, ptr %.sroa.4152.0..sroa_idx, align 8
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 664
  %.sroa.5153.0.copyload = load double, ptr %.sroa.5153.0..sroa_idx, align 8
  %.sroa.6154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 672
  %.sroa.6154.0.copyload = load double, ptr %.sroa.6154.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.ix, double noundef %.sroa.0151.0.copyload, double noundef %.sroa.4152.0.copyload, double noundef %.sroa.5153.0.copyload, double noundef %.sroa.6154.0.copyload) #28
  %i.ja = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.jb = load float, ptr %i.bv, align 16, !tbaa !236
  %i.jc = fpext reassoc nsz arcp contract afn float %i.jb to double
  %i.jd = load float, ptr %i.cb, align 4, !tbaa !237
  %i.je = fpext reassoc nsz arcp contract afn float %i.jd to double
  call void @cairo_rectangle(ptr noundef %i.ja, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.jc, double noundef %i.je) #28
  %i.jf = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_stroke_preserve(ptr noundef %i.jf) #28
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.jh = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.jg) #28 ; 0 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 3032
  store i32 1, ptr %i.ji, align 8, !tbaa !218
  %i.jj = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.jg) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.j:                                             ; preds = %bb.i, %bb.j
  %.0167 = phi float [ -8.000000e+00, %bb.i ], [ %i.kl, %bb.j ] ; 2 uses
  %.0142166 = phi i32 [ 0, %bb.i ], [ %i.km, %bb.j ] ; 2 uses
  %i.jk = uitofp nsz nneg i32 %.0142166 to float
  %i.jl = fmul reassoc nnan nsz arcp contract afn float %i.jk, 1.250000e-01
  %i.jm = load float, ptr %i.bv, align 16, !tbaa !236
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jl, %i.jm
  %i.jo = load float, ptr %i.bf, align 4, !tbaa !411
  %i.jp = fsub reassoc nsz arcp contract afn float %i.jn, %i.jo
  %i.jq = fpext reassoc nsz arcp contract afn float %.0167 to double
  %i.jr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.143, double noundef %i.jq) #28 ; 0 uses
  %i.js = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_set_text(ptr noundef %i.js, ptr noundef nonnull %i.a, i32 noundef -1) #28
  %i.jt = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_layout_get_pixel_extents(ptr noundef %i.jt, ptr noundef nonnull %i.at, ptr noundef null) #28
  %i.ju = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.jv = load float, ptr %i.ck, align 8, !tbaa !419
  %i.jw = load <4 x i32>, ptr %i.at, align 32, !tbaa !16
  %i.jx = sitofp <4 x i32> %i.jw to <4 x double>  ; 2 uses
  %i.jy = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.jz = insertelement <2 x float> %i.jy, float %i.jv, i64 1
  %i.ka = fpext <2 x float> %i.jz to <2 x double>
  %i.kb = shufflevector <4 x double> %i.jx, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.kc = fsub reassoc nsz arcp contract afn <2 x double> %i.ka, %i.kb
  %i.kd = shufflevector <4 x double> %i.jx, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.ke = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.kd, splat (double -5.000000e-01)
  %i.kf = fadd reassoc nsz arcp contract afn <2 x double> %i.kc, %i.ke ; 2 uses
  %i.kg = extractelement <2 x double> %i.kf, i64 0
  %i.kh = extractelement <2 x double> %i.kf, i64 1
  call void @cairo_move_to(ptr noundef %i.ju, double noundef %i.kg, double noundef %i.kh) #28
  %i.ki = load ptr, ptr %i.v, align 16, !tbaa !231
  %i.kj = load ptr, ptr %i.z, align 8, !tbaa !232
  call void @pango_cairo_show_layout(ptr noundef %i.ki, ptr noundef %i.kj) #28
  %i.kk = load ptr, ptr %i.v, align 16, !tbaa !231
  call void @cairo_stroke(ptr noundef %i.kk) #28
  %i.kl = fadd reassoc nsz arcp contract afn float %.0167, 1.000000e+00
  %i.km = add nuw nsw i32 %.0142166, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.km, 9
  br i1 %exitcond.not, label %.preheader, label %bb.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef float @pixel_correction(float noundef %0, ptr noalias nofree noundef readonly captures(none) %1, float noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = fmul reassoc nsz arcp contract afn float %2, %2
  %i.b = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %0, float 0.000000e+00)
  %i.c = tail call reassoc nsz arcp contract afn noundef float @llvm.maxnum.f32(float %i.b, float -8.000000e+00)
  %i.d = insertelement <8 x float> poison, float %i.c, i64 0
  %i.e = shufflevector <8 x float> %i.d, <8 x float> poison, <8 x i32> zeroinitializer
  %i.f = fadd reassoc nsz arcp contract afn <8 x float> %i.e, <float 8.000000e+00, float f0x40DB6DB7, float f0x40B6DB6E, float f0x40924925, float f0x405B6DB7, float f0x40124925, float f0x3F924925, float -0.000000e+00> ; 2 uses
  %i.g = fneg reassoc nsz arcp contract afn <8 x float> %i.f
  %i.h = fmul reassoc nsz arcp contract afn <8 x float> %i.f, %i.g
  %i.i = fmul reassoc nsz arcp contract afn <8 x float> %i.h, splat (float 5.000000e-01)
  %i.j = insertelement <8 x float> poison, float %i.a, i64 0
  %i.k = shufflevector <8 x float> %i.j, <8 x float> poison, <8 x i32> zeroinitializer
  %i.l = fdiv reassoc nsz arcp contract afn <8 x float> %i.i, %i.k
  %i.m = tail call reassoc nsz arcp contract afn <8 x float> @llvm.exp.v8f32(<8 x float> %i.l)
  %i.n = load <8 x float>, ptr %1, align 4, !tbaa !13
  %i.o = fmul reassoc nsz arcp contract afn <8 x float> %i.m, %i.n
  %i.p = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.o)
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.p, float 4.000000e+00)
  %i.r = tail call reassoc nsz arcp contract afn noundef float @llvm.maxnum.f32(float %i.q, float 2.500000e-01)
  ret float %i.r
}

; Function Attrs: nounwind uwtable
define internal fastcc void @match_color_to_background(ptr noundef %0, float noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn ogt float %1, -2.500000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %1, float 0.000000e+00)
  %i.c = fadd reassoc nsz arcp contract afn float %i.b, -2.500000e+00
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %1, float -5.000000e+00)
  %i.e = fadd reassoc nsz arcp contract afn float %i.d, 2.500000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi nsz float [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %.0)
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.f, float f0x3EE8BA2E)
  %i.h = fpext reassoc nsz arcp contract afn float %i.g to double ; 3 uses
  tail call void @cairo_set_source_rgba(ptr noundef %0, double noundef %i.h, double noundef %i.h, double noundef %i.h, double noundef 1.000000e+00) #28
  ret void
}

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_arc_negative(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @draw_exposure_cursor(ptr noundef %0, double noundef %1, double noundef %2, double noundef nofpclass(nan inf zero sub nnorm) %3, float noundef %4, float noundef %5, i32 noundef range(i32 3, 7) %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 5 uses
  %i.b = alloca [2 x double], align 16            ; 5 uses
  %i.c = fpext reassoc nsz arcp contract afn float %5 to double ; 2 uses
  %i.d = fdiv reassoc nsz arcp contract afn double %3, %i.c ; 3 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %4, float f0x3EE8BA2E)
  %i.f = fpext reassoc nsz arcp contract afn float %i.e to double ; 3 uses
  tail call void @cairo_set_source_rgba(ptr noundef %0, double noundef %i.f, double noundef %i.f, double noundef %i.f, double noundef f0x3FECCCCCC0000000) #28
  tail call void @cairo_arc(ptr noundef %0, double noundef %1, double noundef %2, double noundef %i.d, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #28
  tail call void @cairo_fill_preserve(ptr noundef %0) #28
  tail call void @cairo_save(ptr noundef %0) #28
  tail call void @cairo_clip(ptr noundef %0) #28
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %4)
  %i.h = fcmp reassoc nsz arcp contract afn ogt float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store double %1, ptr %i.a, align 16, !tbaa !217
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %2, ptr %i.i, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store double %i.d, ptr %i.b, align 16, !tbaa !217
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.d, ptr %i.j, align 8, !tbaa !217
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1432
  %i.m = load double, ptr %i.l, align 8, !tbaa !221
  %i.n = fdiv reassoc nsz arcp contract afn double %i.m, %i.c
  call void @cairo_draw_hatches(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %6, double noundef %i.n, double noundef 3.000000e-01)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @cairo_restore(ptr noundef %0) #28
  ret void
}

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @pango_font_description_get_size(ptr noundef) local_unnamed_addr #17

declare void @pango_font_description_set_size(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #6

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @pango_cairo_context_set_resolution(ptr noundef, double noundef) local_unnamed_addr #6

declare ptr @pango_layout_get_context(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #18

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_fill(ptr noundef) local_unnamed_addr #6

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nounwind uwtable
define void @gui_focus(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !60  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #28 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3012
  store i32 %1, ptr %i.e, align 4, !tbaa !212
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.c) #28 ; 0 uses
  tail call fastcc void @switch_cursors(ptr noundef %0)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2476 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !112
  store i32 0, ptr %i.g, align 4, !tbaa !112
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2752
  %i.j = load ptr, ptr %i.i, align 64, !tbaa !191
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.j, i32 noundef 0) #28
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  tail call void @dt_dev_reprocess_center(ptr noundef %i.l) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !421
  tail call void @dt_collection_hint_message(ptr noundef %i.m) #28
  %i.n = load ptr, ptr %i.a, align 16, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 3044 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !238
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_unset_distort_signal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !239
  %i.r = and i32 %i.q, 4
  %.not4.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !173
  %i.t = and i32 %i.s, 1048576
  %.not5.i = icmp eq i32 %i.t, 0
  br i1 %.not5.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.49, i32 noundef 2538, ptr noundef nonnull @__FUNCTION__._unset_distort_signal) #28, !inline_history !0
  br label %bb.h
end_hunk_1
begin_hunk_2_@area_draw:bb.a
  store i32 0, ptr %i.f, align 16, !tbaa !242
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2996 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !424
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #28 ; 0 uses
  tail call fastcc void @update_histogram(ptr noundef nonnull %2)
  %i.i = tail call fastcc i32 @update_curve_lut(ptr noundef nonnull %2) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2832 ; 53 uses
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1432
  %i.n = load double, ptr %i.m, align 8, !tbaa !221
  %i.o = fmul reassoc nsz arcp contract afn double %i.n, 5.000000e-01
  tail call void @cairo_set_line_width(ptr noundef %i.k, double noundef %i.o) #28
  %i.p = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 2768 ; 12 uses
  %i.r = load float, ptr %i.q, align 16, !tbaa !236
  %i.s = fpext reassoc nsz arcp contract afn float %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 2772 ; 10 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !237
  %i.v = fpext reassoc nsz arcp contract afn float %i.u to double
  tail call void @cairo_rectangle(ptr noundef %i.p, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.s, double noundef %i.v) #28
  %i.w = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 584
  %.sroa.0.0.copyload = load double, ptr %i.y, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 592
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 600
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 608
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @cairo_set_source_rgba(ptr noundef %i.w, double noundef %.sroa.0.0.copyload, double noundef %.sroa.4.0.copyload, double noundef %.sroa.5.0.copyload, double noundef %.sroa.6.0.copyload) #28
  %i.z = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_fill(ptr noundef %i.z) #28
  %i.aa = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1432
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !221
  %i.ae = fmul reassoc nsz arcp contract afn double %i.ad, 5.000000e-01
  tail call void @cairo_set_line_width(ptr noundef %i.aa, double noundef %i.ae) #28
  %i.af = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 648
  %.sroa.0180.0.copyload = load double, ptr %i.ah, align 8
  %.sroa.4181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 656
  %.sroa.4181.0.copyload = load double, ptr %.sroa.4181.0..sroa_idx, align 8
  %.sroa.5182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 664
  %.sroa.5182.0.copyload = load double, ptr %.sroa.5182.0..sroa_idx, align 8
  %.sroa.6183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 672
  %.sroa.6183.0.copyload = load double, ptr %.sroa.6183.0..sroa_idx, align 8
  tail call void @cairo_set_source_rgba(ptr noundef %i.af, double noundef %.sroa.0180.0.copyload, double noundef %.sroa.4181.0.copyload, double noundef %.sroa.5182.0.copyload, double noundef %.sroa.6183.0.copyload) #28
  %i.ai = load ptr, ptr %i.j, align 16, !tbaa !231 ; 42 uses
  %i.aj = load float, ptr %i.q, align 16, !tbaa !236
  %i.ak = fptosi float %i.aj to i32               ; 2 uses
  %i.al = load float, ptr %i.t, align 4, !tbaa !237
  %i.am = fptosi float %i.al to i32               ; 2 uses
  %i.an = sitofp reassoc nsz arcp contract afn i32 %i.ak to float ; 7 uses
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.am to float ; 7 uses
  %invariant.op.i = fmul reassoc nnan nsz arcp contract afn float %i.an, 1.250000e-01
  %factor.op.fmul.i = fmul reassoc nnan nsz arcp contract afn float %i.ao, 1.250000e-01
  %i.ap = sitofp i32 %i.am to double              ; 7 uses
  %i.aq = sitofp i32 %i.ak to double              ; 7 uses
  %i.ar = fpext reassoc nsz arcp contract afn float %invariant.op.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.ar, double noundef 0.000000e+00) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.ar, double noundef %i.ap) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %i.as = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef %i.as) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.aq, double noundef %i.as) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %.reass31.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ao, 2.500000e-01
  %.reass.1.i = fmul reassoc nnan nsz arcp contract afn float %i.an, 2.500000e-01
  %i.at = fpext reassoc nsz arcp contract afn float %.reass.1.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.at, double noundef 0.000000e+00) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.at, double noundef %i.ap) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %i.au = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef %i.au) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.aq, double noundef %i.au) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %.reass31.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ao, 3.750000e-01
  %.reass.2.i = fmul reassoc nnan nsz arcp contract afn float %i.an, 3.750000e-01
  %i.av = fpext reassoc nsz arcp contract afn float %.reass.2.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.av, double noundef 0.000000e+00) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.av, double noundef %i.ap) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %i.aw = fpext reassoc nsz arcp contract afn float %.reass31.2.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef %i.aw) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.aq, double noundef %i.aw) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %.reass31.3.i = fmul reassoc nnan nsz arcp contract afn float %i.ao, 5.000000e-01
  %.reass.3.i = fmul reassoc nnan nsz arcp contract afn float %i.an, 5.000000e-01
  %i.ax = fpext reassoc nsz arcp contract afn float %.reass.3.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.ax, double noundef 0.000000e+00) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.ax, double noundef %i.ap) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %i.ay = fpext reassoc nsz arcp contract afn float %.reass31.3.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef %i.ay) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.aq, double noundef %i.ay) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %.reass31.4.i = fmul reassoc nnan nsz arcp contract afn float %i.ao, 6.250000e-01
  %.reass.4.i = fmul reassoc nnan nsz arcp contract afn float %i.an, 6.250000e-01
  %i.az = fpext reassoc nsz arcp contract afn float %.reass.4.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.az, double noundef 0.000000e+00) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.az, double noundef %i.ap) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %i.ba = fpext reassoc nsz arcp contract afn float %.reass31.4.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef %i.ba) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.aq, double noundef %i.ba) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %.reass31.5.i = fmul reassoc nnan nsz arcp contract afn float %i.ao, 7.500000e-01
  %.reass.5.i = fmul reassoc nnan nsz arcp contract afn float %i.an, 7.500000e-01
  %i.bb = fpext reassoc nsz arcp contract afn float %.reass.5.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.bb, double noundef 0.000000e+00) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.bb, double noundef %i.ap) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %i.bc = fpext reassoc nsz arcp contract afn float %.reass31.5.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef %i.bc) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.aq, double noundef %i.bc) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %.reass31.6.i = fmul reassoc nnan nsz arcp contract afn float %i.ao, 8.750000e-01
  %.reass.6.i = fmul reassoc nnan nsz arcp contract afn float %i.an, 8.750000e-01
  %i.bd = fpext reassoc nsz arcp contract afn float %.reass.6.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef %i.bd, double noundef 0.000000e+00) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.bd, double noundef %i.ap) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %i.be = fpext reassoc nsz arcp contract afn float %.reass31.6.i to double ; 2 uses
  tail call void @cairo_move_to(ptr noundef %i.ai, double noundef 0.000000e+00, double noundef %i.be) #28
  tail call void @cairo_line_to(ptr noundef %i.ai, double noundef %i.aq, double noundef %i.be) #28
  tail call void @cairo_stroke(ptr noundef %i.ai) #28
  %i.bf = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 680
  %.sroa.0184.0.copyload = load double, ptr %i.bh, align 8
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 688
  %.sroa.4185.0.copyload = load double, ptr %.sroa.4185.0..sroa_idx, align 8
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 696
  %.sroa.5186.0.copyload = load double, ptr %.sroa.5186.0..sroa_idx, align 8
  %.sroa.6187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 704
  %.sroa.6187.0.copyload = load double, ptr %.sroa.6187.0..sroa_idx, align 8
  tail call void @cairo_set_source_rgba(ptr noundef %i.bf, double noundef %.sroa.0184.0.copyload, double noundef %.sroa.4185.0.copyload, double noundef %.sroa.5186.0.copyload, double noundef %.sroa.6187.0.copyload) #28
  %i.bi = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1432
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !221
  tail call void @cairo_set_line_width(ptr noundef %i.bi, double noundef %i.bl) #28
  %i.bm = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.bn = load float, ptr %i.t, align 4, !tbaa !237
  %i.bo = fpext reassoc nsz arcp contract afn float %i.bn to double
  %i.bp = fmul reassoc nsz arcp contract afn double %i.bo, 5.000000e-01
  tail call void @cairo_move_to(ptr noundef %i.bm, double noundef 0.000000e+00, double noundef %i.bp) #28
  %i.bq = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.br = load float, ptr %i.q, align 16, !tbaa !236
  %i.bs = fpext reassoc nsz arcp contract afn float %i.br to double
  %i.bt = load float, ptr %i.t, align 4, !tbaa !237
  %i.bu = fpext reassoc nsz arcp contract afn float %i.bt to double
  %i.bv = fmul reassoc nsz arcp contract afn double %i.bu, 5.000000e-01
  tail call void @cairo_line_to(ptr noundef %i.bq, double noundef %i.bs, double noundef %i.bv) #28
  %i.bw = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_stroke(ptr noundef %i.bw) #28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 3024
  %i.by = load i32, ptr %i.bx, align 16, !tbaa !100
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.ca = load i32, ptr %i.bz, align 16, !tbaa !215
  %.not171 = icmp eq i32 %i.ca, 0
  br i1 %.not171, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 808
  %.sroa.0188.0.copyload = load double, ptr %i.cd, align 8
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 816
  %.sroa.4189.0.copyload = load double, ptr %.sroa.4189.0..sroa_idx, align 8
  %.sroa.5190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 824
  %.sroa.5190.0.copyload = load double, ptr %.sroa.5190.0..sroa_idx, align 8
  %.sroa.6191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 832
  %.sroa.6191.0.copyload = load double, ptr %.sroa.6191.0..sroa_idx, align 8
  tail call void @cairo_set_source_rgba(ptr noundef %i.cb, double noundef %.sroa.0188.0.copyload, double noundef %.sroa.4189.0.copyload, double noundef %.sroa.5190.0.copyload, double noundef %.sroa.6191.0.copyload) #28
  %i.ce = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1432
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !221
  %i.ci = fmul reassoc nsz arcp contract afn double %i.ch, 4.000000e+00
  tail call void @cairo_set_line_width(ptr noundef %i.ce, double noundef %i.ci) #28
  %i.cj = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.ck = load float, ptr %i.t, align 4, !tbaa !237
  %i.cl = fpext reassoc nsz arcp contract afn float %i.ck to double
  tail call void @cairo_move_to(ptr noundef %i.cj, double noundef 0.000000e+00, double noundef %i.cl) #28
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 1408
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 2480
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.co = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.cp = load <2 x float>, ptr %i.q, align 16, !tbaa !13
  %i.cq = fpext <2 x float> %i.cp to <2 x double> ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  %i.cs = extractelement <2 x double> %i.cq, i64 1
  tail call void @cairo_line_to(ptr noundef %i.co, double noundef %i.cr, double noundef %i.cs) #28
  %i.ct = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_close_path(ptr noundef %i.ct) #28
  %i.cu = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_fill(ptr noundef %i.cu) #28
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 2568
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !243
  %i.cx = fcmp reassoc nsz arcp contract afn ogt float %i.cw, -1.000000e-01
  br i1 %i.cx, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.cy = shl nuw nsw i32 %indvars.iv.tr, 3
  %i.cz = uitofp nneg i32 %i.cy to double
  %i.da = fmul reassoc nnan nsz arcp contract afn double %i.cz, f0x3F70101010101010
  %i.db = fadd reassoc nnan nsz arcp contract afn double %i.da, -8.000000e+00
  %i.dc = fptrunc reassoc nnan nsz arcp contract afn double %i.db to float
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !16
  %i.df = sitofp reassoc nsz arcp contract afn i32 %i.de to float
  %i.dg = load i32, ptr %i.cn, align 16, !tbaa !190
  %i.dh = sitofp reassoc nsz arcp contract afn i32 %i.dg to float
  %i.di = fdiv reassoc nsz arcp contract afn float %i.df, %i.dh
  %i.dj = fpext reassoc nsz arcp contract afn float %i.di to double
  %i.dk = fmul reassoc nsz arcp contract afn double %i.dj, f0x3FEEB851EB851EB8
  %i.dl = fptrunc reassoc nsz arcp contract afn double %i.dk to float
  %i.dm = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.dn = fpext reassoc nnan nsz arcp contract afn float %i.dc to double
  %i.do = fmul reassoc nnan nsz arcp contract afn double %i.dn, 1.250000e-01
  %i.dp = fpext reassoc nsz arcp contract afn float %i.dl to double
  %i.dq = fadd reassoc nnan nsz arcp contract afn double %i.do, 1.000000e+00
  %i.dr = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.dp
  %i.ds = load <2 x float>, ptr %i.q, align 16, !tbaa !13
  %i.dt = fpext <2 x float> %i.ds to <2 x double>
  %i.du = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.dr, i64 1
  %i.dw = fmul reassoc nsz arcp contract afn <2 x double> %i.dv, %i.dt ; 2 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0
  %i.dy = extractelement <2 x double> %i.dw, i64 1
  tail call void @cairo_line_to(ptr noundef %i.dm, double noundef %i.dx, double noundef %i.dy) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.e, label %bb.f

bb.g:                                             ; preds = %bb.e
  %i.dz = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_save(ptr noundef %i.dz) #28
  %i.ea = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_set_source_rgb(ptr noundef %i.ea, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #28
  %i.eb = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.ec = load float, ptr %i.q, align 16, !tbaa !236
  %i.ed = fpext reassoc nsz arcp contract afn float %i.ec to double
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 2760
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !234
  %i.eg = fpext reassoc nsz arcp contract afn float %i.ef to double ; 3 uses
  %i.eh = fmul reassoc nsz arcp contract afn double %i.eg, 2.500000e+00
  %i.ei = fsub reassoc nsz arcp contract afn double %i.ed, %i.eh
  %i.ej = fptosi double %i.ei to i32
  %i.ek = fmul reassoc nsz arcp contract afn double %i.eg, 5.000000e-01
  %i.el = fptosi double %i.ek to i32
  %i.em = fmul reassoc nsz arcp contract afn double %i.eg, 2.000000e+00
  %i.en = fptosi double %i.em to i32              ; 2 uses
  tail call void @dtgtk_cairo_paint_warning(ptr noundef %i.eb, i32 noundef %i.ej, i32 noundef %i.el, i32 noundef %i.en, i32 noundef %i.en, i32 noundef 0, ptr noundef null) #28
  %i.eo = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_restore(ptr noundef %i.eo) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 2564
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !244
  %i.er = fcmp reassoc nsz arcp contract afn olt float %i.eq, -7.900000e+00
  br i1 %i.er, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.es = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_save(ptr noundef %i.es) #28
  %i.et = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_set_source_rgb(ptr noundef %i.et, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #28
  %i.eu = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 2760
  %i.ew = load float, ptr %i.ev, align 8, !tbaa !234
  %i.ex = fpext reassoc nsz arcp contract afn float %i.ew to double ; 2 uses
  %i.ey = fmul reassoc nsz arcp contract afn double %i.ex, 5.000000e-01
  %i.ez = fptosi double %i.ey to i32              ; 2 uses
  %i.fa = fmul reassoc nsz arcp contract afn double %i.ex, 2.000000e+00
  %i.fb = fptosi double %i.fa to i32              ; 2 uses
  tail call void @dtgtk_cairo_paint_warning(ptr noundef %i.eu, i32 noundef %i.ez, i32 noundef %i.ez, i32 noundef %i.fb, i32 noundef %i.fb, i32 noundef 0, ptr noundef null) #28
  %i.fc = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_restore(ptr noundef %i.fc) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.c, %bb.b
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 3028
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !135
  %.not172 = icmp eq i32 %i.fe, 0
  br i1 %.not172, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 3040
  %i.fg = load i32, ptr %i.ff, align 32, !tbaa !134
  %.not173 = icmp eq i32 %i.fg, 0
  %i.fh = load ptr, ptr %i.j, align 16, !tbaa !231 ; 2 uses
  br i1 %.not173, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 680
  %.sroa.0192.0.copyload = load double, ptr %i.fj, align 8
  %.sroa.4193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 688
  %.sroa.4193.0.copyload = load double, ptr %.sroa.4193.0..sroa_idx, align 8
  %.sroa.5194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 696
  %.sroa.5194.0.copyload = load double, ptr %.sroa.5194.0..sroa_idx, align 8
  %.sroa.6195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 704
  %.sroa.6195.0.copyload = load double, ptr %.sroa.6195.0..sroa_idx, align 8
  tail call void @cairo_set_source_rgba(ptr noundef %i.fh, double noundef %.sroa.0192.0.copyload, double noundef %.sroa.4193.0.copyload, double noundef %.sroa.5194.0.copyload, double noundef %.sroa.6195.0.copyload) #28
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @cairo_set_source_rgb(ptr noundef %i.fh, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.fk = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.fm = load float, ptr %i.fl, align 64, !tbaa !13
  %i.fn = load float, ptr %i.t, align 4, !tbaa !237
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, %i.fm
  %i.fp = fpext reassoc nsz arcp contract afn float %i.fo to double
  tail call void @cairo_move_to(ptr noundef %i.fk, double noundef 0.000000e+00, double noundef %i.fp) #28
  %i.fq = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.fr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1432
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !221
  %i.fu = fmul reassoc nsz arcp contract afn double %i.ft, 3.000000e+00
  tail call void @cairo_set_line_width(ptr noundef %i.fq, double noundef %i.fu) #28
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.fv = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_stroke(ptr noundef %i.fv) #28
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.p
  %indvars.iv224 = phi i64 [ 1, %bb.n ], [ %indvars.iv.next225, %bb.p ] ; 3 uses
  %i.fw = trunc nuw nsw i64 %indvars.iv224 to i32
  %i.fx = uitofp nsz nneg i32 %i.fw to float
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv224
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !13
  %i.ga = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.gb = load <2 x float>, ptr %i.q, align 16, !tbaa !13
  %i.gc = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gd = insertelement <2 x float> %i.gc, float %i.fz, i64 1
  %i.ge = fmul reassoc nsz arcp contract afn <2 x float> %i.gd, <float f0x3B808081, float 1.000000e+00>
  %i.gf = fmul reassoc nsz arcp contract afn <2 x float> %i.ge, %i.gb
  %i.gg = fpext <2 x float> %i.gf to <2 x double> ; 2 uses
  %i.gh = extractelement <2 x double> %i.gg, i64 0
  %i.gi = extractelement <2 x double> %i.gg, i64 1
  tail call void @cairo_line_to(ptr noundef %i.ga, double noundef %i.gh, double noundef %i.gi) #28
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next225, 256
  br i1 %exitcond227.not, label %bb.o, label %bb.p

bb.q:                                             ; preds = %bb.o, %bb.j
  %i.gj = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #28 ; 0 uses
  %i.gk = load i32, ptr %i.f, align 16, !tbaa !242
  %.not.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i, label %bb.r, label %init_nodes_x.exit

bb.r:                                             ; preds = %bb.q
  %i.gl = load float, ptr %i.q, align 16, !tbaa !236 ; 3 uses
  %i.gm = fcmp reassoc nsz arcp contract afn ogt float %i.gl, 0.000000e+00
  br i1 %i.gm, label %.preheader.i, label %init_nodes_x.exit

.preheader.i:                                     ; preds = %bb.r
  %i.gn = insertelement <8 x float> poison, float %i.gl, i64 0
  %i.go = shufflevector <8 x float> %i.gn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %i.go, <float 0.000000e+00, float 1.250000e-01, float 2.500000e-01, float 3.750000e-01, float 5.000000e-01, float 6.250000e-01, float 7.500000e-01, float 8.750000e-01>
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 2880
  store <8 x float> %i.gp, ptr %i.gq, align 16, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 2912
  store float %i.gl, ptr %i.gr, align 16, !tbaa !13
  store i32 1, ptr %i.f, align 16, !tbaa !242
  br label %init_nodes_x.exit

init_nodes_x.exit:                                ; preds = %bb.q, %bb.r, %.preheader.i
  %i.gs = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #28 ; 0 uses
  %i.gt = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #28 ; 0 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 3036 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !124
  %.not.i178 = icmp eq i32 %i.gv, 0
  br i1 %.not.i178, label %init_nodes_y.exit, label %bb.s

bb.s:                                             ; preds = %init_nodes_x.exit
  %i.gw = load float, ptr %i.t, align 4, !tbaa !237 ; 2 uses
  %i.gx = fcmp reassoc nsz arcp contract afn ogt float %i.gw, 0.000000e+00
  br i1 %i.gx, label %.preheader.i179, label %init_nodes_y.exit

.preheader.i179:                                  ; preds = %bb.s
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 2432
  %i.gz = fpext reassoc nnan nsz arcp contract afn float %i.gw to double ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 2944
  %i.hb = load <8 x float>, ptr %i.gy, align 16, !tbaa !13
  %i.hc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.log2.v8f32(<8 x float> %i.hb)
  %i.hd = fpext <8 x float> %i.hc to <8 x double>
  %i.he = fmul reassoc nsz arcp contract afn <8 x double> %i.hd, splat (double 2.500000e-01)
  %i.hf = fsub reassoc nsz arcp contract afn <8 x double> splat (double 5.000000e-01), %i.he
  %i.hg = insertelement <8 x double> poison, double %i.gz, i64 0
  %i.hh = shufflevector <8 x double> %i.hg, <8 x double> poison, <8 x i32> zeroinitializer
  %i.hi = fmul reassoc nsz arcp contract afn <8 x double> %i.hf, %i.hh
  %i.hj = fptrunc <8 x double> %i.hi to <8 x float>
  store <8 x float> %i.hj, ptr %i.ha, align 16, !tbaa !13
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 2464
  %i.hl = load float, ptr %i.hk, align 16, !tbaa !13
  %i.hm = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.hl)
  %i.hn = fpext reassoc nsz arcp contract afn float %i.hm to double
  %i.ho = fmul reassoc nsz arcp contract afn double %i.hn, 2.500000e-01
  %i.hp = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.ho
  %i.hq = fmul reassoc nsz arcp contract afn double %i.hp, %i.gz
  %i.hr = fptrunc reassoc nsz arcp contract afn double %i.hq to float
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 2976
  store float %i.hr, ptr %i.hs, align 16, !tbaa !13
  store i32 1, ptr %i.g, align 4, !tbaa !424
  br label %init_nodes_y.exit

init_nodes_y.exit:                                ; preds = %init_nodes_x.exit, %bb.s, %.preheader.i179
  %i.ht = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.d) #28 ; 0 uses
  %i.hu = load i32, ptr %i.gu, align 4, !tbaa !124
  %.not174 = icmp eq i32 %i.hu, 0
  br i1 %.not174, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %init_nodes_y.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 2880
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 2944
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 2988
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %bb.t
  %indvars.iv228 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next229, %bb.t ] ; 4 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv228
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !13
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv228
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !13
  %i.ic = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.id = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1432
  %i.if = load double, ptr %i.ie, align 8, !tbaa !221
  %i.ig = fmul reassoc nsz arcp contract afn double %i.if, 6.000000e+00
  tail call void @cairo_set_line_width(ptr noundef %i.ic, double noundef %i.ig) #28
  %i.ih = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.ii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 552
  %.sroa.0196.0.copyload = load double, ptr %i.ij, align 8
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 560
  %.sroa.4197.0.copyload = load double, ptr %.sroa.4197.0..sroa_idx, align 8
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 568
  %.sroa.5198.0.copyload = load double, ptr %.sroa.5198.0..sroa_idx, align 8
  %.sroa.6199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 576
  %.sroa.6199.0.copyload = load double, ptr %.sroa.6199.0..sroa_idx, align 8
  tail call void @cairo_set_source_rgba(ptr noundef %i.ih, double noundef %.sroa.0196.0.copyload, double noundef %.sroa.4197.0.copyload, double noundef %.sroa.5198.0.copyload, double noundef %.sroa.6199.0.copyload) #28
  %i.ik = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.il = fpext reassoc nsz arcp contract afn float %i.hz to double ; 3 uses
  %i.im = load float, ptr %i.t, align 4, !tbaa !237
  %i.in = fpext reassoc nsz arcp contract afn float %i.im to double
  %i.io = fmul reassoc nsz arcp contract afn double %i.in, 5.000000e-01
  tail call void @cairo_move_to(ptr noundef %i.ik, double noundef %i.il, double noundef %i.io) #28
  %i.ip = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.iq = fpext reassoc nsz arcp contract afn float %i.ib to double ; 2 uses
  tail call void @cairo_line_to(ptr noundef %i.ip, double noundef %i.il, double noundef %i.iq) #28
  %i.ir = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_stroke(ptr noundef %i.ir) #28
  %i.is = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 1432
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !221
  %i.iw = fmul reassoc nsz arcp contract afn double %i.iv, 3.000000e+00
  tail call void @cairo_set_line_width(ptr noundef %i.is, double noundef %i.iw) #28
  %i.ix = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.iy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 1432
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !221
  %i.jb = fmul reassoc nsz arcp contract afn double %i.ja, 4.000000e+00
  tail call void @cairo_arc(ptr noundef %i.ix, double noundef %i.il, double noundef %i.iq, double noundef %i.jb, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #28
  %i.jc = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 680
  %.sroa.0200.0.copyload = load double, ptr %i.je, align 8
  %.sroa.4201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 688
  %.sroa.4201.0.copyload = load double, ptr %.sroa.4201.0..sroa_idx, align 8
  %.sroa.5202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 696
  %.sroa.5202.0.copyload = load double, ptr %.sroa.5202.0..sroa_idx, align 8
  %.sroa.6203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jd, i64 704
  %.sroa.6203.0.copyload = load double, ptr %.sroa.6203.0..sroa_idx, align 8
  tail call void @cairo_set_source_rgba(ptr noundef %i.jc, double noundef %.sroa.0200.0.copyload, double noundef %.sroa.4201.0.copyload, double noundef %.sroa.5202.0.copyload, double noundef %.sroa.6203.0.copyload) #28
  %i.jf = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_stroke_preserve(ptr noundef %i.jf) #28
  %i.jg = load i32, ptr %i.hx, align 4, !tbaa !213
  %i.jh = zext i32 %i.jg to i64
  %i.ji = icmp eq i64 %indvars.iv228, %i.jh       ; 4 uses
  %i.jj = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.jk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222 ; 4 uses
  %. = select i1 %i.ji, i64 680, i64 584
  %.241 = select i1 %i.ji, i64 688, i64 592
  %.242 = select i1 %i.ji, i64 696, i64 600
  %.243 = select i1 %i.ji, i64 704, i64 608
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.
  %.sroa.0208.0.copyload = load double, ptr %i.jl, align 8
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.241
  %.sroa.4209.0.copyload = load double, ptr %.sroa.4209.0..sroa_idx, align 8
  %.sroa.5210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.242
  %.sroa.5210.0.copyload = load double, ptr %.sroa.5210.0..sroa_idx, align 8
  %.sroa.6211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.243
  %.sroa.6211.0.copyload = load double, ptr %.sroa.6211.0..sroa_idx, align 8
  tail call void @cairo_set_source_rgba(ptr noundef %i.jj, double noundef %.sroa.0208.0.copyload, double noundef %.sroa.4209.0.copyload, double noundef %.sroa.5210.0.copyload, double noundef %.sroa.6211.0.copyload) #28
  %i.jm = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_fill(ptr noundef %i.jm) #28
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next229, 9
  br i1 %exitcond231.not, label %.loopexit, label %bb.t

.loopexit:                                        ; preds = %bb.t, %init_nodes_y.exit
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.jo = load i32, ptr %i.jn, align 16, !tbaa !215
  %.not175 = icmp eq i32 %i.jo, 0
  br i1 %.not175, label %bb.af, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 3000
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !245
  %.not176 = icmp eq i32 %i.jq, 0
  br i1 %.not176, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 2556
  %i.js = load float, ptr %i.jr, align 4, !tbaa !122
  %i.jt = load float, ptr %i.q, align 16, !tbaa !236
  %i.ju = fmul reassoc nsz arcp contract afn float %i.js, f0x3DB504F3
  %i.jv = fmul reassoc nsz arcp contract afn float %i.ju, %i.jt
  %i.jw = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 1432
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !221
  %i.ka = fmul reassoc nsz arcp contract afn double %i.jz, 1.500000e+00
  tail call void @cairo_set_line_width(ptr noundef %i.jw, double noundef %i.ka) #28
  %i.kb = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 2980
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !246 ; 2 uses
  %i.ke = fmul reassoc nsz arcp contract afn float %i.kd, 2.550000e+02
  %i.kf = load float, ptr %i.q, align 16, !tbaa !236
  %i.kg = fdiv reassoc nsz arcp contract afn float %i.ke, %i.kf ; 3 uses
  %i.kh = fcmp reassoc nsz arcp contract afn ogt float %i.kg, 2.550000e+02
  br i1 %i.kh, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ki = fcmp reassoc nsz arcp contract afn olt float %i.kg, 0.000000e+00
  br i1 %i.ki, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.kj = fptosi float %i.kg to i32
  %i.kk = zext nneg i32 %i.kj to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.kl = phi i64 [ 255, %bb.v ], [ %i.kk, %bb.x ], [ 0, %bb.w ]
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.kl
  %i.kn = load float, ptr %i.km, align 4, !tbaa !13
  %i.ko = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.kp = fpext reassoc nsz arcp contract afn float %i.kd to double
  %i.kq = load float, ptr %i.t, align 4, !tbaa !237
  %i.kr = fmul reassoc nsz arcp contract afn float %i.kq, %i.kn
  %i.ks = fpext reassoc nsz arcp contract afn float %i.kr to double
  %i.kt = fpext reassoc nsz arcp contract afn float %i.jv to double
  tail call void @cairo_arc(ptr noundef %i.ko, double noundef %i.kp, double noundef %i.ks, double noundef %i.kt, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #28
  %i.ku = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.kv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !222 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 680
  %.sroa.0212.0.copyload = load double, ptr %i.kw, align 8
  %.sroa.4213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kv, i64 688
  %.sroa.4213.0.copyload = load double, ptr %.sroa.4213.0..sroa_idx, align 8
  %.sroa.5214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kv, i64 696
  %.sroa.5214.0.copyload = load double, ptr %.sroa.5214.0..sroa_idx, align 8
  %.sroa.6215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kv, i64 704
  %.sroa.6215.0.copyload = load double, ptr %.sroa.6215.0..sroa_idx, align 8
  tail call void @cairo_set_source_rgba(ptr noundef %i.ku, double noundef %.sroa.0212.0.copyload, double noundef %.sroa.4213.0.copyload, double noundef %.sroa.5214.0.copyload, double noundef %.sroa.6215.0.copyload) #28
  %i.kx = load ptr, ptr %i.j, align 16, !tbaa !231
  tail call void @cairo_stroke(ptr noundef %i.kx) #28
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 3008
  %i.kz = load i32, ptr %i.ky, align 64, !tbaa !195
  %.not177 = icmp eq i32 %i.kz, 0
  br i1 %.not177, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.la = getelementptr inbounds nuw i8, ptr %i.b, i64 2468
  %i.lb = load float, ptr %i.la, align 4, !tbaa !201
  %i.lc = fmul reassoc nsz arcp contract afn float %i.lb, 1.250000e-01
  %i.ld = fadd reassoc nsz arcp contract afn float %i.lc, 1.000000e+00
  %i.le = load float, ptr %i.q, align 16, !tbaa !236 ; 2 uses
  %i.lf = fmul reassoc nsz arcp contract afn float %i.ld, %i.le ; 3 uses
  %i.lg = fcmp reassoc nsz arcp contract afn ogt float %i.lf, %i.le
  %i.lh = fcmp reassoc nsz arcp contract afn olt float %i.lf, 0.000000e+00 ; 2 uses
  %or.cond = or i1 %i.lg, %i.lh
  %i.li = load ptr, ptr %i.j, align 16, !tbaa !231 ; 2 uses
  br i1 %or.cond, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  tail call void @cairo_set_source_rgb(ptr noundef %i.li, double noundef 7.500000e-01, double noundef 5.000000e-01, double noundef 0.000000e+00) #28
  %i.lj = load ptr, ptr %i.j, align 16, !tbaa !231
  %i.lk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !174
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_obj_style?download=true
inline.NumInlined: 102
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lv_obj_calculate_style_text_align:bb.a
  br label %bb.g

bb.g:                                             ; preds = %.thread.i.i, %get_selector_style_prop.exit.i
  %.pre-phi24 = phi i32 [ %.pre23, %.thread.i.i ], [ %i.d, %get_selector_style_prop.exit.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.p, %.thread.i.i ], [ %.sroa.0.0.copyload.i.i, %get_selector_style_prop.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 0, ptr %3, align 8
  %i.q = call fastcc i32 @get_prop_core(ptr noundef nonnull readonly %0, i32 noundef %.pre-phi24, i8 noundef zeroext -127, ptr noundef nonnull %3)
  %.not54.i.i5 = icmp eq i32 %i.q, 0
  br i1 %.not54.i.i5, label %bb.h, label %lv_obj_get_style_base_dir.exit

bb.h:                                             ; preds = %bb.g
  %.037.in.i.i10 = load i8, ptr getelementptr inbounds nuw (i8, ptr @lv_style_builtin_prop_flag_lookup_table, i64 129), align 1, !tbaa !42
  %i.r = trunc i8 %.037.in.i.i10 to i1
  br i1 %i.r, label %bb.i, label %.thread.i.i11

bb.i:                                             ; preds = %bb.h
  %.not51.i.i12 = icmp eq i32 %i.e, 0
  br i1 %.not51.i.i12, label %bb.j, label %.lr.ph63.i.i15.preheader

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62   ; 2 uses
  %.not5261.i.i19 = icmp eq ptr %i.t, null
  br i1 %.not5261.i.i19, label %.thread.i.i11, label %.lr.ph63.i.i15.preheader

.lr.ph63.i.i15.preheader:                         ; preds = %bb.j, %bb.i
  %.14262.i.i16.ph = phi ptr [ %0, %bb.i ], [ %i.t, %bb.j ]
  br label %.lr.ph63.i.i15

.lr.ph63.i.i15:                                   ; preds = %.lr.ph63.i.i15.preheader, %bb.k
  %.14262.i.i16 = phi ptr [ %i.z, %bb.k ], [ %.14262.i.i16.ph, %.lr.ph63.i.i15.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.14262.i.i16, i64 60
  %i.v = load i16, ptr %i.u, align 4, !tbaa !61
  %i.w = zext i16 %i.v to i32
  %i.x = call fastcc i32 @get_prop_core(ptr noundef %.14262.i.i16, i32 noundef %i.w, i8 noundef zeroext -127, ptr noundef nonnull %3)
  %.not55.i.i17 = icmp eq i32 %i.x, 0
  br i1 %.not55.i.i17, label %bb.k, label %lv_obj_get_style_base_dir.exit

bb.k:                                             ; preds = %.lr.ph63.i.i15
  %i.y = getelementptr inbounds nuw i8, ptr %.14262.i.i16, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62   ; 2 uses
  %.not52.i.i18 = icmp eq ptr %i.z, null
  br i1 %.not52.i.i18, label %.thread.i.i11, label %.lr.ph63.i.i15, !llvm.loop !2

.thread.i.i11:                                    ; preds = %bb.k, %bb.j, %bb.h
  %i.aa = tail call ptr @lv_style_prop_get_default(i8 noundef zeroext -127) #10 ; 0 uses
  br label %lv_obj_get_style_base_dir.exit

lv_obj_get_style_base_dir.exit:                   ; preds = %.lr.ph63.i.i15, %bb.g, %.thread.i.i11
  %i.ab = ptrtoint ptr %.sroa.0.0.i.i to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ab to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.sroa.0.0.extract.trunc.i, i32 1)
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 -1, -4) i8 @lv_obj_get_style_opa_recursive(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %union.lv_style_value_t, align 8    ; 6 uses
  %3 = alloca %union.lv_style_value_t, align 8    ; 6 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.b

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  br label %.preheader.i.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i16, ptr %i.a, align 4, !tbaa !61
  %i.c = zext i16 %i.b to i32
  %i.d = or i32 %1, %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 0, ptr %3, align 8
  %i.e = and i32 %1, 16711680
  %i.f = call fastcc i32 @get_prop_core(ptr noundef nonnull readonly %0, i32 noundef %i.d, i8 noundef zeroext 112, ptr noundef nonnull %3)
  %.not54.i.i = icmp eq i32 %i.f, 0
  br i1 %.not54.i.i, label %bb.c, label %get_selector_style_prop.exit.i

bb.c:                                             ; preds = %bb.b
  %.037.in.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @lv_style_builtin_prop_flag_lookup_table, i64 112), align 1, !tbaa !42
  %i.g = trunc i8 %.037.in.i.i to i1
  br i1 %i.g, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %bb.c
  %.not51.i.i = icmp eq i32 %i.e, 0
  br i1 %.not51.i.i, label %bb.e, label %.lr.ph63.i.i.preheader

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 2 uses
  %.not5261.i.i = icmp eq ptr %i.i, null
  br i1 %.not5261.i.i, label %.thread.i.i, label %.lr.ph63.i.i.preheader

.lr.ph63.i.i.preheader:                           ; preds = %bb.e, %bb.d
  %.14262.i.i.ph = phi ptr [ %0, %bb.d ], [ %i.i, %bb.e ]
  br label %.lr.ph63.i.i

.lr.ph63.i.i:                                     ; preds = %.lr.ph63.i.i.preheader, %bb.f
  %.14262.i.i = phi ptr [ %i.o, %bb.f ], [ %.14262.i.i.ph, %.lr.ph63.i.i.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.14262.i.i, i64 60
  %i.k = load i16, ptr %i.j, align 4, !tbaa !61
  %i.l = zext i16 %i.k to i32
  %i.m = call fastcc i32 @get_prop_core(ptr noundef %.14262.i.i, i32 noundef %i.l, i8 noundef zeroext 112, ptr noundef nonnull %3)
  %.not55.i.i = icmp eq i32 %i.m, 0
  br i1 %.not55.i.i, label %bb.f, label %get_selector_style_prop.exit.i

bb.f:                                             ; preds = %.lr.ph63.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.14262.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 2 uses
  %.not52.i.i = icmp eq ptr %i.o, null
  br i1 %.not52.i.i, label %.thread.i.i, label %.lr.ph63.i.i, !llvm.loop !2

get_selector_style_prop.exit.i:                   ; preds = %.lr.ph63.i.i, %bb.b
  %.sroa.0.0.copyload.i.i = load ptr, ptr %3, align 8, !tbaa !42
  br label %lv_obj_get_style_opa.exit

.thread.i.i:                                      ; preds = %bb.f, %bb.e, %bb.c
  %i.p = tail call ptr @lv_style_prop_get_default(i8 noundef zeroext 112) #10
  br label %lv_obj_get_style_opa.exit

lv_obj_get_style_opa.exit:                        ; preds = %get_selector_style_prop.exit.i, %.thread.i.i
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %get_selector_style_prop.exit.i ], [ %i.p, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.q = ptrtoint ptr %.sroa.0.0.i.i to i64       ; 2 uses
  %i.r = trunc i64 %i.q to i8                     ; 2 uses
  %i.s = icmp ult i8 %i.r, 3
  br i1 %i.s, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %lv_obj_get_style_opa.exit
  %i.t = trunc i64 %i.q to i16
  %i.u = and i16 %i.t, 255
  %i.v = icmp ult i8 %i.r, -3
  %i.w = mul nuw i16 %i.u, 255
  %i.x = lshr i16 %i.w, 8
  %i.y = trunc nuw i16 %i.x to i8
  %.0 = select i1 %i.v, i8 %i.y, i8 -1            ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = tail call ptr @lv_obj_get_parent(ptr noundef nonnull %0) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.020 = phi ptr [ %i.z, %bb.h ], [ %0, %bb.g ]  ; 2 uses
  %.not2846 = icmp eq ptr %.020, null
  br i1 %.not2846, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.m
  %.149 = phi i8 [ %.2, %bb.m ], [ %.0, %bb.i ]   ; 2 uses
  %.12147 = phi ptr [ %i.as, %bb.m ], [ %.020, %bb.i ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.12147, i64 60
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !61
  %i.ac = zext i16 %i.ab to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 0, ptr %2, align 8
  %i.ad = call fastcc i32 @get_prop_core(ptr noundef nonnull readonly %.12147, i32 noundef %i.ac, i8 noundef zeroext 112, ptr noundef nonnull %2)
  %.not54.i.i30 = icmp eq i32 %i.ad, 0
  br i1 %.not54.i.i30, label %bb.j, label %get_selector_style_prop.exit.i31

bb.j:                                             ; preds = %.lr.ph
  %.037.in.i.i34 = load i8, ptr getelementptr inbounds nuw (i8, ptr @lv_style_builtin_prop_flag_lookup_table, i64 112), align 1, !tbaa !42
  %i.ae = trunc i8 %.037.in.i.i34 to i1
  br i1 %i.ae, label %bb.k, label %.thread.i.i35

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %.12147, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62 ; 2 uses
  %.not5261.i.i36 = icmp eq ptr %i.ag, null
  br i1 %.not5261.i.i36, label %.thread.i.i35, label %.lr.ph63.i.i39

.lr.ph63.i.i39:                                   ; preds = %bb.k, %bb.l
  %.14262.i.i40 = phi ptr [ %i.am, %bb.l ], [ %i.ag, %bb.k ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.14262.i.i40, i64 60
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !61
  %i.aj = zext i16 %i.ai to i32
  %i.ak = call fastcc i32 @get_prop_core(ptr noundef %.14262.i.i40, i32 noundef %i.aj, i8 noundef zeroext 112, ptr noundef nonnull %2)
  %.not55.i.i41 = icmp eq i32 %i.ak, 0
  br i1 %.not55.i.i41, label %bb.l, label %get_selector_style_prop.exit.i31

bb.l:                                             ; preds = %.lr.ph63.i.i39
  %i.al = getelementptr inbounds nuw i8, ptr %.14262.i.i40, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62 ; 2 uses
  %.not52.i.i42 = icmp eq ptr %i.am, null
  br i1 %.not52.i.i42, label %.thread.i.i35, label %.lr.ph63.i.i39, !llvm.loop !2

get_selector_style_prop.exit.i31:                 ; preds = %.lr.ph63.i.i39, %.lr.ph
  %.sroa.0.0.copyload.i.i32 = load ptr, ptr %2, align 8, !tbaa !42
  br label %lv_obj_get_style_opa.exit44

.thread.i.i35:                                    ; preds = %bb.l, %bb.k, %bb.j
  %i.an = tail call ptr @lv_style_prop_get_default(i8 noundef zeroext 112) #10
  br label %lv_obj_get_style_opa.exit44

lv_obj_get_style_opa.exit44:                      ; preds = %get_selector_style_prop.exit.i31, %.thread.i.i35
  %.sroa.0.0.i.i33 = phi ptr [ %.sroa.0.0.copyload.i.i32, %get_selector_style_prop.exit.i31 ], [ %i.an, %.thread.i.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.ao = ptrtoint ptr %.sroa.0.0.i.i33 to i64
  %i.ap = trunc i64 %i.ao to i8                   ; 3 uses
  %i.aq = icmp ult i8 %i.ap, 3
  br i1 %i.aq, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %lv_obj_get_style_opa.exit44
  %i.ar = icmp ult i8 %i.ap, -3
  %4 = tail call i8 @llvm.umulh.i8(i8 %.149, i8 %i.ap)
  %.2 = select i1 %i.ar, i8 %4, i8 %.149          ; 2 uses
  %i.as = tail call ptr @lv_obj_get_parent(ptr noundef nonnull %.12147) #10 ; 2 uses
  %.not28 = icmp eq ptr %i.as, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !127

._crit_edge:                                      ; preds = %bb.m, %bb.i
  %.1.lcssa = phi i8 [ %.0, %bb.i ], [ %.2, %bb.m ] ; 3 uses
  %i.at = icmp ult i8 %.1.lcssa, 3
  br i1 %i.at, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.au = icmp ugt i8 %.1.lcssa, -4
  %..1 = select i1 %i.au, i8 -1, i8 %.1.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %lv_obj_get_style_opa.exit44, %._crit_edge, %bb.n, %lv_obj_get_style_opa.exit
  %.123 = phi i8 [ 0, %lv_obj_get_style_opa.exit ], [ 0, %._crit_edge ], [ %..1, %bb.n ], [ 0, %lv_obj_get_style_opa.exit44 ]
  ret i8 %.123
}

declare void @lv_obj_allocate_spec_attr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @lv_obj_style_apply_recolor(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.lv_style_value_t, align 8    ; 6 uses
  %4 = alloca %union.lv_style_value_t, align 8    ; 6 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.b

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  br label %.preheader.i.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !61
  %i.c = zext i16 %i.b to i32
  %i.d = or i32 %1, %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 0, ptr %4, align 8
  %i.e = and i32 %1, 16711680                     ; 2 uses
  %i.f = call fastcc i32 @get_prop_core(ptr noundef nonnull readonly %0, i32 noundef %i.d, i8 noundef zeroext -125, ptr noundef nonnull %4)
  %.not54.i.i = icmp eq i32 %i.f, 0
  br i1 %.not54.i.i, label %bb.c, label %get_selector_style_prop.exit.i

bb.c:                                             ; preds = %bb.b
  %.037.in.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @lv_style_builtin_prop_flag_lookup_table, i64 131), align 1, !tbaa !42
  %i.g = trunc i8 %.037.in.i.i to i1
  br i1 %i.g, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %bb.c
  %.not51.i.i = icmp eq i32 %i.e, 0
  br i1 %.not51.i.i, label %bb.e, label %.lr.ph63.i.i.preheader

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 2 uses
  %.not5261.i.i = icmp eq ptr %i.i, null
  br i1 %.not5261.i.i, label %.thread.i.i, label %.lr.ph63.i.i.preheader

.lr.ph63.i.i.preheader:                           ; preds = %bb.e, %bb.d
  %.14262.i.i.ph = phi ptr [ %0, %bb.d ], [ %i.i, %bb.e ]
  br label %.lr.ph63.i.i

.lr.ph63.i.i:                                     ; preds = %.lr.ph63.i.i.preheader, %bb.f
  %.14262.i.i = phi ptr [ %i.o, %bb.f ], [ %.14262.i.i.ph, %.lr.ph63.i.i.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.14262.i.i, i64 60
  %i.k = load i16, ptr %i.j, align 4, !tbaa !61
  %i.l = zext i16 %i.k to i32
  %i.m = call fastcc i32 @get_prop_core(ptr noundef %.14262.i.i, i32 noundef %i.l, i8 noundef zeroext -125, ptr noundef nonnull %4)
  %.not55.i.i = icmp eq i32 %i.m, 0
  br i1 %.not55.i.i, label %bb.f, label %get_selector_style_prop.exit.i

bb.f:                                             ; preds = %.lr.ph63.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.14262.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 2 uses
  %.not52.i.i = icmp eq ptr %i.o, null
  br i1 %.not52.i.i, label %.thread.i.i, label %.lr.ph63.i.i, !llvm.loop !2

get_selector_style_prop.exit.i:                   ; preds = %.lr.ph63.i.i, %bb.b
  %.sroa.0.0.copyload.i.i = load ptr, ptr %4, align 8, !tbaa !42
  br label %lv_obj_get_style_recolor_opa.exit

.thread.i.i:                                      ; preds = %bb.f, %bb.e, %bb.c
  %i.p = tail call ptr @lv_style_prop_get_default(i8 noundef zeroext -125) #10
  br label %lv_obj_get_style_recolor_opa.exit

lv_obj_get_style_recolor_opa.exit:                ; preds = %get_selector_style_prop.exit.i, %.thread.i.i
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %get_selector_style_prop.exit.i ], [ %i.p, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.q = ptrtoint ptr %.sroa.0.0.i.i to i64
  %i.r = trunc i64 %i.q to i8                     ; 2 uses
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %lv_obj_get_style_recolor_opa.exit
  %i.s = load i16, ptr %i.a, align 4, !tbaa !61
  %i.t = zext i16 %i.s to i32
  %i.u = or i32 %1, %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 0, ptr %3, align 8
  %i.v = call fastcc i32 @get_prop_core(ptr noundef nonnull readonly %0, i32 noundef %i.u, i8 noundef zeroext -126, ptr noundef nonnull %3)
  %.not54.i.i11 = icmp eq i32 %i.v, 0
  br i1 %.not54.i.i11, label %bb.h, label %get_selector_style_prop.exit.i12

bb.h:                                             ; preds = %bb.g
  %.037.in.i.i15 = load i8, ptr getelementptr inbounds nuw (i8, ptr @lv_style_builtin_prop_flag_lookup_table, i64 130), align 1, !tbaa !42
  %i.w = trunc i8 %.037.in.i.i15 to i1
  br i1 %i.w, label %bb.i, label %.thread.i.i16

bb.i:                                             ; preds = %bb.h
  %.not51.i.i17 = icmp eq i32 %i.e, 0
  br i1 %.not51.i.i17, label %bb.j, label %.lr.ph63.i.i20.preheader

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62   ; 2 uses
  %.not5261.i.i24 = icmp eq ptr %i.y, null
  br i1 %.not5261.i.i24, label %.thread.i.i16, label %.lr.ph63.i.i20.preheader

.lr.ph63.i.i20.preheader:                         ; preds = %bb.j, %bb.i
  %.14262.i.i21.ph = phi ptr [ %0, %bb.i ], [ %i.y, %bb.j ]
  br label %.lr.ph63.i.i20

.lr.ph63.i.i20:                                   ; preds = %.lr.ph63.i.i20.preheader, %bb.k
  %.14262.i.i21 = phi ptr [ %i.ae, %bb.k ], [ %.14262.i.i21.ph, %.lr.ph63.i.i20.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.14262.i.i21, i64 60
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !61
  %i.ab = zext i16 %i.aa to i32
  %i.ac = call fastcc i32 @get_prop_core(ptr noundef %.14262.i.i21, i32 noundef %i.ab, i8 noundef zeroext -126, ptr noundef nonnull %3)
  %.not55.i.i22 = icmp eq i32 %i.ac, 0
  br i1 %.not55.i.i22, label %bb.k, label %get_selector_style_prop.exit.i12

bb.k:                                             ; preds = %.lr.ph63.i.i20
  %i.ad = getelementptr inbounds nuw i8, ptr %.14262.i.i21, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !62 ; 2 uses
  %.not52.i.i23 = icmp eq ptr %i.ae, null
  br i1 %.not52.i.i23, label %.thread.i.i16, label %.lr.ph63.i.i20, !llvm.loop !2

get_selector_style_prop.exit.i12:                 ; preds = %.lr.ph63.i.i20, %bb.g
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %3, align 8, !tbaa !42
  br label %lv_obj_get_style_recolor.exit

.thread.i.i16:                                    ; preds = %bb.k, %bb.j, %bb.h
  %i.af = tail call ptr @lv_style_prop_get_default(i8 noundef zeroext -126) #10
  br label %lv_obj_get_style_recolor.exit

lv_obj_get_style_recolor.exit:                    ; preds = %get_selector_style_prop.exit.i12, %.thread.i.i16
  %.sroa.0.0.i.i14 = phi ptr [ %.sroa.0.0.copyload.i.i13, %get_selector_style_prop.exit.i12 ], [ %i.af, %.thread.i.i16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.ag = ptrtoint ptr %.sroa.0.0.i.i14 to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ag to i24
  %i.ah = tail call i32 @lv_color_to_32(i24 %.sroa.0.0.extract.trunc.i, i8 noundef zeroext %i.r) #10
  %i.ai = tail call i32 @lv_color_over32(i32 %2, i32 %i.ah) #10
  br label %bb.l

bb.l:                                             ; preds = %lv_obj_get_style_recolor.exit, %lv_obj_get_style_recolor_opa.exit
  %.sroa.08.0 = phi i32 [ %i.ai, %lv_obj_get_style_recolor.exit ], [ %2, %lv_obj_get_style_recolor_opa.exit ]
  ret i32 %.sroa.08.0
}

declare i32 @lv_color_over32(i32, i32) local_unnamed_addr #1

declare i32 @lv_color_to_32(i24, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @lv_obj_get_style_recolor_recursive(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %union.lv_style_value_t, align 8    ; 6 uses
  %3 = alloca %union.lv_style_value_t, align 8    ; 6 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.b

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  br label %.preheader.i.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !61
  %i.c = zext i16 %i.b to i32
  %i.d = or i32 %1, %i.c                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 0, ptr %3, align 8
  %i.e = and i32 %1, 16711680                     ; 2 uses
  %i.f = call fastcc i32 @get_prop_core(ptr noundef nonnull readonly %0, i32 noundef %i.d, i8 noundef zeroext -126, ptr noundef nonnull %3)
  %.not54.i.i = icmp eq i32 %i.f, 0
  br i1 %.not54.i.i, label %bb.c, label %get_selector_style_prop.exit.i

bb.c:                                             ; preds = %bb.b
  %.037.in.i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @lv_style_builtin_prop_flag_lookup_table, i64 130), align 1, !tbaa !42
  %i.g = trunc i8 %.037.in.i.i to i1
  br i1 %i.g, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %bb.c
  %.not51.i.i = icmp eq i32 %i.e, 0
  br i1 %.not51.i.i, label %bb.e, label %.lr.ph63.i.i.preheader

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62   ; 2 uses
  %.not5261.i.i = icmp eq ptr %i.i, null
end_hunk_0
begin_hunk_1_@get_prop_core:bb.a
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !40  ; 2 uses
  %.not.not.i = icmp eq i8 %i.al, 0
  br i1 %.not.not.i, label %.thread, label %.lr.ph35.i, !llvm.loop !130

.lr.ph35.i:                                       ; preds = %.lr.ph
  %i.am = icmp eq i8 %i.al, %2
  br i1 %i.am, label %.lr.ph35.i.preheader._crit_edge, label %.lr.ph, !llvm.loop !130

.lr.ph35.i.preheader._crit_edge:                  ; preds = %.lr.ph35.i.preheader, %.lr.ph35.i
  %.lcssa111 = phi ptr [ %i.ak, %.lr.ph35.i ], [ %i.af, %.lr.ph35.i.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa111, i64 8
  br label %.thread95

bb.f:                                             ; preds = %bb.d
  %i.ao = zext i8 %.val.i to i64                  ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ap
  %.not.i = icmp eq i8 %.val.i, 0
  br i1 %.not.i, label %.thread, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ao
  br i1 %exitcond.not.i, label %.thread, label %.lr.ph.i, !llvm.loop !131

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !42
  %i.at = icmp eq i8 %i.as, %2
  br i1 %i.at, label %bb.h, label %bb.g

bb.h:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  br label %.thread95

.thread95:                                        ; preds = %bb.h, %.lr.ph35.i.preheader._crit_edge
  %.sink.in.i = phi ptr [ %i.au, %bb.h ], [ %i.an, %.lr.ph35.i.preheader._crit_edge ]
  %.sink.i = load i64, ptr %.sink.in.i, align 8, !tbaa !42
  store i64 %.sink.i, ptr %3, align 8, !tbaa !42
  br label %.loopexit

.thread:                                          ; preds = %bb.g, %.lr.ph, %bb.f, %bb.e, %bb.c, %bb.b
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %.loopexit, label %.lr.ph120.split, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %.lr.ph120.split
  %i.av = trunc nuw nsw i64 %indvars.iv151 to i32
  br label %._crit_edge

._crit_edge.loopexit170:                          ; preds = %.lr.ph120.split.us
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit170, %._crit_edge.loopexit, %bb.a
  %.053.lcssa = phi i32 [ 0, %bb.a ], [ %i.av, %._crit_edge.loopexit ], [ %i.aw, %._crit_edge.loopexit170 ] ; 2 uses
  %i.ax = icmp samesign ult i32 %.053.lcssa, %i.i
  br i1 %i.ax, label %.lr.ph131, label %.loopexit

.lr.ph131:                                        ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = zext nneg i32 %.053.lcssa to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph131, %.thread100
  %i.ba = phi i32 [ %.fr135, %.lr.ph131 ], [ %i.ch, %.thread100 ] ; 7 uses
  %indvars.iv156 = phi i64 [ %i.az, %.lr.ph131 ], [ %indvars.iv.next157, %.thread100 ] ; 2 uses
  %.055128 = phi i32 [ -1, %.lr.ph131 ], [ %.4, %.thread100 ] ; 8 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv156 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !53 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !133
  %i.bg = and i32 %i.bf, %i.b
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.thread100, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bj = load i32, ptr %i.bi, align 8            ; 3 uses
  %i.bk = and i32 %i.bj, 67108864
  %.not68 = icmp eq i32 %i.bk, 0
  %i.bl = and i32 %i.bj, 16711680
  %.not69 = icmp eq i32 %i.bl, %i.c
  %or.cond104 = and i1 %.not68, %.not69
  br i1 %or.cond104, label %bb.k, label %.thread100

bb.k:                                             ; preds = %bb.j
  %i.bm = and i32 %i.bj, 65535                    ; 4 uses
  %i.bn = and i32 %i.bm, %i.e
  %.not70 = icmp eq i32 %i.bn, 0
  %.not71 = icmp sgt i32 %i.bm, %.055128
  %or.cond = select i1 %.not70, i1 %.not71, i1 false
  br i1 %or.cond, label %bb.l, label %.thread100

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %i.bd, i64 12
  %.val.i75 = load i8, ptr %i.bo, align 4, !tbaa !37 ; 3 uses
  %i.bp = icmp eq i8 %.val.i75, -1
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !38 ; 5 uses
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !40  ; 2 uses
  %.not.not33.i87 = icmp eq i8 %i.br, 0
  br i1 %.not.not33.i87, label %.thread100, label %.lr.ph35.i88.preheader

.lr.ph35.i88.preheader:                           ; preds = %bb.m
  %i.bs = icmp eq i8 %i.br, %2
  br i1 %i.bs, label %.lr.ph35.i88._crit_edge, label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph35.i88.preheader, %.lr.ph35.i88
  %.02834.i89125 = phi i32 [ %i.bt, %.lr.ph35.i88 ], [ 0, %.lr.ph35.i88.preheader ]
  %i.bt = add i32 %.02834.i89125, 1               ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !40  ; 2 uses
  %.not.not.i90 = icmp eq i8 %i.bw, 0
  br i1 %.not.not.i90, label %.thread100, label %.lr.ph35.i88, !llvm.loop !130

.lr.ph35.i88:                                     ; preds = %.lr.ph126
  %i.bx = icmp eq i8 %i.bw, %2
  br i1 %i.bx, label %.lr.ph35.i88._crit_edge, label %.lr.ph126, !llvm.loop !130

.lr.ph35.i88._crit_edge:                          ; preds = %.lr.ph35.i88, %.lr.ph35.i88.preheader
  %.lcssa = phi ptr [ %i.bq, %.lr.ph35.i88.preheader ], [ %i.bv, %.lr.ph35.i88 ]
  %i.by = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bz = zext i8 %.val.i75 to i64                ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ca
  %.not.i76 = icmp eq i8 %.val.i75, 0
  br i1 %.not.i76, label %.thread100, label %.lr.ph.i79

bb.o:                                             ; preds = %.lr.ph.i79
  %indvars.iv.next.i81 = add nuw nsw i64 %indvars.iv.i80, 1 ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %indvars.iv.next.i81, %i.bz
  br i1 %exitcond.not.i82, label %.thread100, label %.lr.ph.i79, !llvm.loop !131

.lr.ph.i79:                                       ; preds = %bb.n, %bb.o
  %indvars.iv.i80 = phi i64 [ %indvars.iv.next.i81, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.i80
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !42
  %i.ce = icmp eq i8 %i.cd, %2
  br i1 %i.ce, label %bb.p, label %bb.o

bb.p:                                             ; preds = %.lr.ph.i79
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i80
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph35.i88._crit_edge
  %.sink.in.i85 = phi ptr [ %i.cf, %bb.p ], [ %i.by, %.lr.ph35.i88._crit_edge ]
  %.sink.i86 = load i64, ptr %.sink.in.i85, align 8, !tbaa !42
  store i64 %.sink.i86, ptr %3, align 8, !tbaa !42
  %i.cg = icmp eq i32 %i.bm, %i.d
  br i1 %i.cg, label %.loopexit, label %..thread100_crit_edge

..thread100_crit_edge:                            ; preds = %bb.q
  %.pre = load i32, ptr %i.f, align 2
  br label %.thread100

.thread100:                                       ; preds = %bb.o, %.lr.ph126, %..thread100_crit_edge, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i
  %i.ch = phi i32 [ %i.ba, %bb.i ], [ %i.ba, %bb.j ], [ %i.ba, %bb.n ], [ %i.ba, %bb.k ], [ %.pre, %..thread100_crit_edge ], [ %i.ba, %bb.m ], [ %i.ba, %.lr.ph126 ], [ %i.ba, %bb.o ] ; 2 uses
  %.4 = phi i32 [ %.055128, %bb.i ], [ %.055128, %bb.j ], [ %.055128, %bb.n ], [ %.055128, %bb.k ], [ %i.bm, %..thread100_crit_edge ], [ %.055128, %bb.m ], [ %.055128, %.lr.ph126 ], [ %.055128, %bb.o ] ; 2 uses
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.ci = lshr i32 %i.ch, 4
  %i.cj = and i32 %i.ci, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = icmp samesign ult i64 %indvars.iv.next157, %i.ck
  br i1 %i.cl, label %bb.i, label %._crit_edge132.loopexit, !llvm.loop !132

._crit_edge132.loopexit:                          ; preds = %.thread100
  %i.cm = icmp sgt i32 %.4, -1
  %i.cn = zext i1 %i.cm to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.thread.us, %.thread, %bb.q, %._crit_edge, %._crit_edge132.loopexit, %.thread95
  %.8 = phi i32 [ 1, %bb.q ], [ 1, %.thread95 ], [ 0, %._crit_edge ], [ %i.cn, %._crit_edge132.loopexit ], [ 0, %.thread ], [ 0, %.thread.us ]
  ret i32 %.8
}

declare void @lv_style_reset(ptr noundef) local_unnamed_addr #1

declare i32 @lv_subject_get_int(ptr noundef) local_unnamed_addr #1

declare i24 @lv_subject_get_color(ptr noundef) local_unnamed_addr #1

declare ptr @lv_subject_get_pointer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !41}
!3 = distinct !{!3, !41}
!4 = distinct !{!4, !41}
!5 = distinct !{!5, !41}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"_Bool", !10, i64 0}
!16 = !{!"p1 omnipotent char", !14, i64 0}
!17 = !{!"", !11, i64 0, !16, i64 8, !16, i64 16}
!18 = !{!"p1 _ZTS13_lv_display_t", !14, i64 0}
!19 = !{!"p1 _ZTS11_lv_group_t", !14, i64 0}
!20 = !{!"p1 _ZTS11_lv_indev_t", !14, i64 0}
!21 = !{!"p1 _ZTS9_lv_obj_t", !14, i64 0}
!22 = !{!"p1 _ZTS11_lv_event_t", !14, i64 0}
!23 = !{!"", !17, i64 0, !15, i64 24, !10, i64 25, !15, i64 26, !15, i64 27, !11, i64 28, !15, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !14, i64 56, !14, i64 64}
!24 = !{!"p1 _ZTS11_lv_timer_t", !14, i64 0}
!25 = !{!"", !15, i64 0, !15, i64 1, !15, i64 2, !24, i64 8, !17, i64 16}
!26 = !{!"", !11, i64 0, !10, i64 4, !14, i64 8, !14, i64 16}
!27 = !{!"_lv_draw_buf_handlers_t", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!28 = !{!"p1 _ZTS11_lv_cache_t", !14, i64 0}
!29 = !{!"p1 _ZTS15_lv_draw_unit_t", !14, i64 0}
!30 = !{!"", !29, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !15, i64 24}
!31 = !{!"long", !10, i64 0}
!32 = !{!"", !14, i64 0, !31, i64 8, !31, i64 16, !17, i64 24}
!33 = !{!"p1 _ZTS14_snippet_stack", !14, i64 0}
!34 = !{!"_lv_global_t", !14, i64 0, !15, i64 8, !15, i64 9, !17, i64 16, !18, i64 40, !18, i64 48, !17, i64 56, !15, i64 80, !11, i64 84, !11, i64 88, !16, i64 96, !17, i64 104, !19, i64 128, !17, i64 136, !20, i64 160, !21, i64 168, !11, i64 176, !14, i64 184, !15, i64 192, !11, i64 196, !11, i64 200, !22, i64 208, !11, i64 216, !23, i64 224, !25, i64 296, !26, i64 336, !27, i64 360, !27, i64 416, !27, i64 472, !17, i64 528, !28, i64 552, !28, i64 560, !30, i64 568, !17, i64 600, !10, i64 624, !14, i64 816, !14, i64 824, !14, i64 832, !32, i64 840, !17, i64 888, !33, i64 912, !14, i64 920, !11, i64 928, !10, i64 932}
!35 = !{!34, !16, i64 96}
!36 = !{!"", !14, i64 0, !11, i64 8, !10, i64 12}
!37 = !{!36, !10, i64 12}
!38 = !{!36, !14, i64 0}
!39 = !{!"", !10, i64 0, !10, i64 8}
!40 = !{!39, !10, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!10, !10, i64 0}
!43 = !{!"p1 _ZTS15_lv_obj_class_t", !14, i64 0}
!44 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !14, i64 0}
!45 = !{!"p1 _ZTS15_lv_obj_style_t", !14, i64 0}
!46 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!47 = !{!"short", !10, i64 0}
!48 = !{!"_lv_obj_t", !43, i64 0, !21, i64 8, !44, i64 16, !45, i64 24, !14, i64 32, !46, i64 40, !11, i64 56, !47, i64 60, !47, i64 62, !47, i64 62, !47, i64 62, !47, i64 62, !47, i64 62, !47, i64 63, !47, i64 63, !47, i64 63, !47, i64 63, !47, i64 63, !47, i64 63, !47, i64 64}
!49 = !{!48, !45, i64 24}
!50 = !{!14, !14, i64 0}
!51 = !{i64 0, i64 8, !50, i64 8, i64 4, !42}
!52 = !{!"_lv_obj_style_t", !14, i64 0, !11, i64 8, !11, i64 11, !11, i64 11, !11, i64 11, !11, i64 11}
!53 = !{!52, !14, i64 0}
!54 = !{!"", !21, i64 0, !10, i64 8, !11, i64 12, !10, i64 16, !10, i64 24}
!55 = !{!54, !21, i64 0}
!56 = !{!54, !10, i64 8}
!57 = !{!54, !11, i64 12}
!58 = !{!34, !15, i64 80}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!48, !47, i64 60}
!62 = !{!48, !21, i64 8}
!63 = !{!43, !43, i64 0}
!64 = !{!"_lv_obj_class_t", !43, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !16, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 56, !11, i64 56, !11, i64 58}
!65 = !{!64, !11, i64 52}
!66 = !{!64, !11, i64 48}
!67 = !{!"any p2 pointer", !14, i64 0}
!68 = !{!"p2 _ZTS9_lv_obj_t", !67, i64 0}
!69 = !{!"_lv_array_t", !16, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !15, i64 20}
!70 = !{!"", !69, i64 0, !10, i64 24, !10, i64 24}
!71 = !{!21, !21, i64 0}
!72 = !{!48, !44, i64 16}
!73 = !{!"", !11, i64 0, !11, i64 4}
!74 = !{!"_lv_obj_spec_attr_t", !68, i64 0, !19, i64 8, !70, i64 16, !73, i64 48, !11, i64 56, !11, i64 60, !47, i64 64, !47, i64 66, !47, i64 66, !47, i64 66, !47, i64 66, !47, i64 67, !47, i64 67}
!75 = !{!74, !68, i64 0}
!76 = !{!"_lv_anim_t", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !10, i64 108, !11, i64 116, !11, i64 120, !11, i64 124, !10, i64 128, !10, i64 128, !10, i64 128, !10, i64 128, !10, i64 128}
!77 = !{!76, !14, i64 0}
!78 = !{!"", !14, i64 0, !11, i64 8, !11, i64 12}
!79 = !{!78, !14, i64 0}
!80 = !{!78, !11, i64 8}
!81 = !{!78, !11, i64 12}
!82 = !{!"p1 _ZTS13_lv_subject_t", !14, i64 0}
!83 = !{!"_lv_observer_t", !82, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !11, i64 32, !11, i64 32, !11, i64 32}
!84 = !{!83, !14, i64 24}
!85 = !{!83, !14, i64 16}
!86 = !{!"", !10, i64 0, !11, i64 4}
!87 = !{!86, !10, i64 0}
!88 = !{!86, !11, i64 4}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !41}
!91 = distinct !{!91, !41}
!92 = distinct !{!92, !41}
!93 = distinct !{!93, !41}
!94 = distinct !{!94, !41}
!95 = distinct !{!95, !41}
!96 = distinct !{!96, !41}
!97 = distinct !{!97, !41}
!98 = !{!"p1 _ZTS14_lv_draw_buf_t", !14, i64 0}
!99 = !{!"", !11, i64 0, !11, i64 1, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10}
!100 = !{!"p1 _ZTS23_lv_draw_buf_handlers_t", !14, i64 0}
!101 = !{!"_lv_draw_buf_t", !99, i64 0, !11, i64 12, !16, i64 16, !14, i64 24, !100, i64 32}
!102 = !{!"p1 _ZTS11_lv_layer_t", !14, i64 0}
!103 = !{!"p1 _ZTS11_lv_theme_t", !14, i64 0}
!104 = !{!"_lv_display_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !98, i64 32, !98, i64 40, !98, i64 48, !98, i64 56, !14, i64 64, !14, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 96, !11, i64 97, !11, i64 97, !11, i64 100, !10, i64 104, !10, i64 616, !11, i64 648, !11, i64 652, !17, i64 656, !101, i64 680, !101, i64 720, !102, i64 760, !14, i64 768, !14, i64 776, !68, i64 784, !21, i64 792, !21, i64 800, !21, i64 808, !21, i64 816, !21, i64 824, !21, i64 832, !11, i64 840, !10, i64 844, !10, i64 844, !14, i64 848, !14, i64 856, !70, i64 864, !11, i64 896, !11, i64 896, !103, i64 904, !24, i64 912, !11, i64 920, !46, i64 924, !11, i64 940}
!105 = !{!104, !11, i64 840}
!106 = !{!104, !68, i64 784}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, !41}
!109 = distinct !{!109, !41}
!110 = distinct !{!110, !41}
!111 = distinct !{!111, !41}
!112 = distinct !{!112, !41}
!113 = distinct !{!113, !41}
!114 = !{!"_lv_obj_style_transition_dsc_t", !47, i64 0, !47, i64 2, !11, i64 4, !10, i64 8, !14, i64 16, !14, i64 24}
!115 = !{!114, !10, i64 8}
!116 = !{!114, !11, i64 4}
!117 = !{!114, !47, i64 0}
!118 = !{!114, !47, i64 2}
!119 = !{!114, !14, i64 16}
!120 = !{!114, !14, i64 24}
!121 = distinct !{!121, !41}
!122 = distinct !{!122, !41}
!123 = distinct !{!123, !41}
!124 = distinct !{!124, !41}
!125 = distinct !{!125, !41}
!126 = distinct !{!126, !41}
!127 = distinct !{!127, !41}
!128 = distinct !{!128, !41}
!129 = distinct !{!129, !41}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = !{!36, !11, i64 8}
end_hunk_1

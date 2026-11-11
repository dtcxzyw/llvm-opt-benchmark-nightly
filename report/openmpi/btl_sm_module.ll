Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/btl_sm_module?download=true
inline.NumInlined: 47
inline.NumDeleted: 33
begin_hunk_0_@sm_add_procs:bb.a
  store i32 %spec.select110, ptr %i.bt, align 4, !tbaa !127
  %i.dq = call i32 @PMIx_Info_load(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, ptr noundef null, i16 noundef zeroext 1) #13, !inline_history !103 ; 0 uses
  %i.dr = call i32 @PMIx_Get(ptr noundef nonnull %6, ptr noundef nonnull %i.dk, ptr noundef nonnull %7, i64 noundef 1, ptr noundef nonnull %i.e) #13, !inline_history !103 ; 2 uses
  call void @PMIx_Info_destruct(ptr noundef nonnull %7) #13, !inline_history !103
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !125 ; 4 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %.thread96.i, label %bb.ac

.thread96.i:                                      ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @free(ptr noundef nonnull %i.dk) #13, !inline_history !103
  br label %init_sm_endpoint.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.du = icmp eq i32 %i.dr, 0
  br i1 %i.du, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !70 ; 3 uses
  store ptr null, ptr %i.dv, align 8, !tbaa !70
  call void @PMIx_Value_free(ptr noundef nonnull %i.ds, i64 noundef 1) #13, !inline_history !103
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @free(ptr noundef nonnull %i.dk) #13, !inline_history !103
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cx, i64 200 ; 2 uses
  store ptr null, ptr %i.dx, align 8, !tbaa !71
  %i.dy = load ptr, ptr @mca_smsc, align 8, !tbaa !59 ; 2 uses
  %.not68.i = icmp eq ptr %i.dy, null
  br i1 %.not68.i, label %.thread100.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !132
  %i.eb = call ptr %i.ea(ptr noundef nonnull %i.cg) #13, !inline_history !103 ; 2 uses
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !71
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %.thread100.i, label %bb.af

.thread100.i:                                     ; preds = %bb.ae, %bb.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @mca_btl_sm, i64 208), i8 0, i64 16, i1 false)
  %i.ed = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_sm, i64 68), align 4, !tbaa !133
  %i.ee = and i32 %i.ed, -7
  store i32 %i.ee, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_sm, i64 68), align 4, !tbaa !133
  br label %bb.af

bb.af:                                            ; preds = %.thread100.i, %bb.ae
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !135
  %i.eh = sext i32 %i.eg to i64                   ; 2 uses
  %i.ei = call noalias ptr @malloc(i64 noundef %i.eh) #15, !inline_history !103 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cx, i64 216
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !72
  %i.ek = icmp eq ptr %i.ei, null
  br i1 %i.ek, label %init_sm_endpoint.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.el, i64 %i.eh, i1 false)
  %i.em = call ptr @opal_shmem_segment_attach(ptr noundef nonnull %i.ei) #13, !inline_history !103 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.cx, i64 120 ; 2 uses
  store ptr %i.em, ptr %i.en, align 8, !tbaa !136
  %i.eo = icmp eq ptr %i.em, null
  br i1 %i.eo, label %init_sm_endpoint.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ep = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !55
  %i.eq = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 32), align 8, !tbaa !64
  %.not69.i = icmp eq i32 %i.ep, %i.eq
  br i1 %.not69.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @opal_class_initialize(ptr noundef nonnull @opal_mutex_t_class) #13, !inline_history !103
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.er = getelementptr inbounds nuw i8, ptr %i.cx, i64 136 ; 2 uses
  store ptr @opal_mutex_t_class, ptr %i.er, align 8, !tbaa !65
  %i.es = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  store volatile i32 1, ptr %i.es, align 8, !tbaa !66
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 40), align 8, !tbaa !67 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !68 ; 2 uses
  %.not6.i70.i = icmp eq ptr %i.eu, null
  br i1 %.not6.i70.i, label %opal_obj_run_constructors.exit74.i, label %.lr.ph.i71.i

.lr.ph.i71.i:                                     ; preds = %bb.aj, %.lr.ph.i71.i
  %i.ev = phi ptr [ %i.ex, %.lr.ph.i71.i ], [ %i.eu, %bb.aj ]
  %.07.i72.i = phi ptr [ %i.ew, %.lr.ph.i71.i ], [ %i.et, %bb.aj ]
  call void %i.ev(ptr noundef nonnull %i.er) #13, !inline_history !104
  %i.ew = getelementptr inbounds nuw i8, ptr %.07.i72.i, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !68 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.ex, null
  br i1 %.not.i73.i, label %opal_obj_run_constructors.exit74.i, label %.lr.ph.i71.i, !llvm.loop !0

opal_obj_run_constructors.exit74.i:               ; preds = %.lr.ph.i71.i, %bb.aj
  call void @free(ptr noundef nonnull %i.dw) #13, !inline_history !103
  %.pre.i = load ptr, ptr %i.en, align 8, !tbaa !136
  br label %init_sm_endpoint.exit

bb.ak:                                            ; preds = %opal_obj_run_constructors.exit.i
  %i.ey = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_sm_component, i64 4496), align 16, !tbaa !107 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cx, i64 120
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !136
  br label %init_sm_endpoint.exit

.critedge.i:                                      ; preds = %bb.ac
  call void @PMIx_Value_free(ptr noundef nonnull %i.ds, i64 noundef 1) #13, !inline_history !103
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @free(ptr noundef nonnull %i.dk) #13, !inline_history !103
  br label %init_sm_endpoint.exit.thread

init_sm_endpoint.exit.thread:                     ; preds = %bb.w, %bb.af, %bb.ag, %.critedge.i, %.thread82.i, %.thread92.i, %.thread96.i
  %.150.i.ph = phi i32 [ -46, %.thread96.i ], [ -2, %.thread92.i ], [ -46, %.thread82.i ], [ %i.dr, %.critedge.i ], [ %.077.i, %bb.w ], [ -2, %bb.af ], [ -1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %sm_btl_first_time_init.exit.thread

init_sm_endpoint.exit:                            ; preds = %opal_obj_run_constructors.exit74.i, %bb.ak
  %i.fa = phi ptr [ %i.ey, %bb.ak ], [ %.pre.i, %opal_obj_run_constructors.exit74.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cx, i64 128
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.al

bb.al:                                            ; preds = %init_sm_endpoint.exit, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %sm_btl_first_time_init.exit.thread, label %bb.n, !llvm.loop !105

sm_btl_first_time_init.exit.thread:               ; preds = %bb.al, %bb.r, %bb.m, %mca_smsc_base_has_feature.exit.thread.i, %bb.j, %bb.i, %bb.d, %bb.h, %bb.f, %bb.k, %init_sm_endpoint.exit.thread, %bb.b, %bb.a
  %.136 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ], [ -2, %bb.f ], [ %i.bb, %bb.k ], [ %.150.i.ph, %init_sm_endpoint.exit.thread ], [ %i.bn, %mca_smsc_base_has_feature.exit.thread.i ], [ %i.as, %bb.j ], [ %i.ai, %bb.i ], [ -2, %bb.d ], [ -2, %bb.h ], [ 0, %bb.m ], [ 0, %bb.al ], [ %i.cf, %bb.r ]
  ret i32 %.136
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sm_del_procs(ptr nofree readnone captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %.not10 = icmp eq i64 %1, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.09 = phi i64 [ %i.l, %bb.d ], [ 0, %bb.a ]    ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.09 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %fini_sm_endpoint.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.h, null
  br i1 %.not6.i.i, label %fini_sm_endpoint.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.h, %bb.c ]
  %.07.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.g, %bb.c ]
  tail call void %i.i(ptr noundef nonnull %i.b) #13, !inline_history !1
  %i.j = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %fini_sm_endpoint.exit, label %.lr.ph.i.i, !llvm.loop !2

fini_sm_endpoint.exit:                            ; preds = %.lr.ph.i.i, %bb.b, %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !62
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %fini_sm_endpoint.exit
  %i.l = add nuw i64 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !137
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sm_finalize(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !25, !noundef !26
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 304), align 8, !tbaa !18 ; 2 uses
  %i.e = icmp ult i32 %i.d, 2147483647
  %.pre16 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_sm_component, i64 5960), align 8, !tbaa !46 ; 2 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %fini_sm_endpoint.exit, %.preheader
  %1 = phi ptr [ %.pre16, %.preheader ], [ %3, %fini_sm_endpoint.exit ]
  tail call void @free(ptr noundef %1) #13
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_sm_component, i64 5960), align 8, !tbaa !46
  store i8 0, ptr %i.a, align 8, !tbaa !24
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_sm_component, i64 5968), align 16, !tbaa !54
  tail call void @free(ptr noundef %i.f) #13
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_sm_component, i64 5968), align 16, !tbaa !54
  %i.g = tail call i32 @opal_shmem_unlink(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_btl_sm_component, i64 296)) #13 ; 0 uses
  %i.h = tail call i32 @opal_shmem_segment_detach(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_btl_sm_component, i64 296)) #13 ; 0 uses
  br label %bb.c

.lr.ph:                                           ; preds = %.preheader, %fini_sm_endpoint.exit
  %i.i = phi i32 [ %i.t, %fini_sm_endpoint.exit ], [ %i.d, %.preheader ] ; 2 uses
  %2 = phi ptr [ %3, %fini_sm_endpoint.exit ], [ %.pre16, %.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %fini_sm_endpoint.exit ], [ 0, %.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [360 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %fini_sm_endpoint.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i, label %fini_sm_endpoint.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.q = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.b ]
  %.07.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.b ]
  tail call void %i.q(ptr noundef nonnull %i.j) #13, !inline_history !1
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %fini_sm_endpoint.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !2

fini_sm_endpoint.exit.loopexit:                   ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_sm_component, i64 5960), align 8, !tbaa !46
  %.pre.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_process_info, i64 304), align 8, !tbaa !18
  br label %fini_sm_endpoint.exit

fini_sm_endpoint.exit:                            ; preds = %fini_sm_endpoint.exit.loopexit, %.lr.ph, %bb.b
  %i.t = phi i32 [ %.pre.a, %fini_sm_endpoint.exit.loopexit ], [ %i.i, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %3 = phi ptr [ %.pre, %fini_sm_endpoint.exit.loopexit ], [ %2, %.lr.ph ], [ %2, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = add i32 %i.t, 1
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !138

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret i32 0
}

; Function Attrs: nounwind uwtable
define ptr @mca_btl_sm_alloc(ptr nofree readnone captures(none) %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_sm_component, i64 5956), align 4, !tbaa !56
  %i.b = zext i32 %i.a to i64
  %.not = icmp ugt i64 %3, %i.b
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_sm, i64 8), align 8, !tbaa !57
  %.not14 = icmp ugt i64 %3, %i.c
  br i1 %.not14, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @mca_smsc, align 8, !tbaa !59 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %mca_smsc_base_has_feature.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61
  %i.f = and i64 %i.e, 2
  %i.g = icmp ne i64 %i.f, 0
  br label %mca_smsc_base_has_feature.exit

mca_smsc_base_has_feature.exit:                   ; preds = %bb.c, %bb.d
  %i.h = phi i1 [ false, %bb.c ], [ %i.g, %bb.d ]
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_btl_sm, i64 24), align 8
  %.not15 = icmp ugt i64 %3, %i.i
  %or.cond = select i1 %i.h, i1 true, i1 %.not15
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %mca_smsc_base_has_feature.exit, %bb.b, %bb.a
  %.sink = phi ptr [ getelementptr inbounds nuw (i8, ptr @mca_btl_sm_component, i64 5232), %bb.a ], [ getelementptr inbounds nuw (i8, ptr @mca_btl_sm_component, i64 4528), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @mca_btl_sm_component, i64 4880), %mca_smsc_base_has_feature.exit ]
  %i.j = tail call fastcc ptr @mca_btl_sm_frag_alloc(ptr noundef nonnull %.sink, ptr noundef %1) ; 5 uses
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %.thread, label %bb.f, !prof !139

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %3, ptr %i.k, align 8, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store i32 %4, ptr %i.l, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 100
  store i8 %2, ptr %i.m, align 4, !tbaa !86
  br label %.thread

.thread:                                          ; preds = %mca_smsc_base_has_feature.exit, %bb.f, %bb.e
  %.019 = phi ptr [ null, %bb.e ], [ %i.j, %bb.f ], [ null, %mca_smsc_base_has_feature.exit ]
  ret ptr %.019
}

; Function Attrs: norecurse nounwind uwtable
define noundef i32 @mca_btl_sm_free(ptr nofree readnone captures(none) %0, ptr noundef initializes((64, 72), (104, 112)) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 1, ptr %i.f, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93   ; 8 uses
  %i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !94, !range !25, !noundef !26
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  %i.l = load volatile i64, ptr %i.k, align 8, !tbaa !70 ; 3 uses
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.08.i.i.i.i = inttoptr i64 %i.l to ptr         ; 2 uses
  store volatile ptr %.08.i.i.i.i, ptr %i.m, align 8, !tbaa !95
  fence release
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = cmpxchg volatile ptr %i.k, i64 %i.l, i64 %i.n acquire monotonic, align 8 ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %opal_lifo_push_atomic.exit.i.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i

opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i: ; preds = %bb.d, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i
  %i.q = phi { i64, i1 } [ %i.s, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i ], [ %i.o, %bb.d ]
  %i.r = extractvalue { i64, i1 } %i.q, 0         ; 2 uses
  %.0.i.i.i.i = inttoptr i64 %i.r to ptr          ; 2 uses
  store volatile ptr %.0.i.i.i.i, ptr %i.m, align 8, !tbaa !95
  fence release
  %i.s = cmpxchg volatile ptr %i.k, i64 %i.r, i64 %i.n acquire monotonic, align 8 ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %opal_lifo_push_atomic.exit.i.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i

opal_lifo_push_atomic.exit.i.i.i:                 ; preds = %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i = phi ptr [ %.08.i.i.i.i, %bb.d ], [ %.0.i.i.i.i, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.v = icmp eq ptr %i.u, %.0.lcssa.i.i.i.i
  br i1 %i.v, label %bb.e, label %mca_btl_sm_frag_return.exit

bb.e:                                             ; preds = %opal_lifo_push_atomic.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.x = load i64, ptr %i.w, align 8, !tbaa !96
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %mca_btl_sm_frag_return.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.z = load volatile i32, ptr %i.y, align 8, !tbaa !97
  %.not.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i, label %mca_btl_sm_frag_return.exit, label %opal_free_list_return_mt.exit.sink.split.i.i

bb.g:                                             ; preds = %bb.c
  %i.aa = inttoptr i64 %i.l to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store volatile ptr %i.aa, ptr %i.ab, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.ac, align 8, !tbaa !98
  %i.ad = ptrtoint ptr %1 to i64
  store volatile i64 %i.ad, ptr %i.k, align 8, !tbaa !70
  %i.ae = load volatile ptr, ptr %i.ab, align 8, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ag = icmp eq ptr %i.af, %i.ae
  br i1 %i.ag, label %bb.h, label %mca_btl_sm_frag_return.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !96
  %.not.i4.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i4.i.i, label %mca_btl_sm_frag_return.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.ak = load volatile i32, ptr %i.aj, align 8, !tbaa !97
  %.not.i.i5.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i5.i.i, label %mca_btl_sm_frag_return.exit, label %opal_free_list_return_mt.exit.sink.split.i.i

opal_free_list_return_mt.exit.sink.split.i.i:     ; preds = %bb.i, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 252 ; 2 uses
  %i.am = load volatile i32, ptr %i.al, align 4, !tbaa !99
  %i.an = add nsw i32 %i.am, 1
  store volatile i32 %i.an, ptr %i.al, align 4, !tbaa !99
  br label %mca_btl_sm_frag_return.exit

mca_btl_sm_frag_return.exit:                      ; preds = %opal_lifo_push_atomic.exit.i.i.i, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %opal_free_list_return_mt.exit.sink.split.i.i
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal ptr @sm_prepare_src(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %struct.iovec, align 8              ; 6 uses
  %i.b = load i64, ptr %5, align 8, !tbaa !140
  %i.c = add i64 %i.b, %4                         ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !148
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !154
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !155  ; 5 uses
  %i.p = and i32 %i.o, 524288
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge, label %bb.b, !prof !100

bb.b:                                             ; preds = %bb.a
  %i.r = and i32 %i.o, 32
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %opal_convertor_need_buffers.exit, label %opal_convertor_need_buffers.exit.thread

opal_convertor_need_buffers.exit:                 ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !156
  %i.u = icmp ne i64 %i.t, 1
  %i.v = and i32 %i.o, 16
  %.not4.i = icmp eq i32 %i.v, 0
  %or.cond.i.not.not79 = or i1 %.not4.i, %i.u
  %i.w = and i32 %i.o, 272629760                  ; 2 uses
  %.not = icmp eq i32 %i.w, 4194304
  %or.cond77 = or i1 %.not, %or.cond.i.not.not79
end_hunk_0

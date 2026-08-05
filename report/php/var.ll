inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@php_debug_zval_dump:bb.a

bb.bj:                                            ; preds = %bb.bi
  %i.gy = load i32, ptr %i.gs, align 4, !tbaa !28 ; 2 uses
  %i.gz = icmp ne i32 %i.gy, 0
  call void @llvm.assume(i1 %i.gz)
  %i.ha = add i32 %i.gy, -1                       ; 2 uses
  store i32 %i.ha, ptr %i.gs, align 4, !tbaa !28
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %bb.bk, label %zval_object_property_dump.exit

bb.bk:                                            ; preds = %bb.bj
  %i.hc = and i32 %i.gw, 128
  %.not5.i.i = icmp eq i32 %i.hc, 0
  br i1 %.not5.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @free(ptr noundef nonnull %i.gs) #12, !inline_history !107
  br label %zval_object_property_dump.exit

bb.bm:                                            ; preds = %bb.bk
  call void @_efree(ptr noundef nonnull %i.gs) #12, !inline_history !107
  br label %zval_object_property_dump.exit

bb.bn:                                            ; preds = %.thread217, %bb.bh, %bb.bg
  %.0202206221 = phi ptr [ %.0202216, %.thread217 ], [ %.0202207, %bb.bh ], [ %.0202207, %bb.bg ]
  call void @php_debug_zval_dump(ptr noundef %.0202206221, i32 noundef %i.ef), !inline_history !107
  br label %zval_object_property_dump.exit

zval_object_property_dump.exit:                   ; preds = %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.bo

bb.bo:                                            ; preds = %bb.au, %zend_get_typed_property_info_for_slot.exit.thread210, %zval_object_property_dump.exit, %zend_get_typed_property_info_for_slot.exit
  %i.hd = add i32 %.0152228, -1                   ; 2 uses
  %.not177 = icmp eq i32 %i.hd, 0
  br i1 %.not177, label %._crit_edge, label %bb.ar, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.bo, %zend_string_release_ex.exit191
  %i.he = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !12
  %i.hg = and i32 %i.hf, 64
  %.not.i192 = icmp eq i32 %i.hg, 0
  br i1 %.not.i192, label %bb.bp, label %zend_array_release.exit

bb.bp:                                            ; preds = %._crit_edge
  %i.hh = load i32, ptr %i.da, align 8, !tbaa !28 ; 2 uses
  %i.hi = icmp ne i32 %i.hh, 0
  call void @llvm.assume(i1 %i.hi)
  %i.hj = add i32 %i.hh, -1                       ; 2 uses
  store i32 %i.hj, ptr %i.da, align 8, !tbaa !28
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.bq, label %zend_array_release.exit

bb.bq:                                            ; preds = %bb.bp
  call void @zend_array_destroy(ptr noundef nonnull %i.da) #12
  br label %zend_array_release.exit

.critedge:                                        ; preds = %php_var_dump_object_prefix.exit
  %i.hl = load i32, ptr %i.dh, align 8, !tbaa !28
  %i.hm = tail call i64 (ptr, ...) @php_printf(ptr noundef nonnull @.str.29, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.dl, i32 noundef %i.dn, i32 noundef 0, i32 noundef %i.hl) #12 ; 0 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !12
  %i.hp = and i32 %i.ho, 64
  %.not.i = icmp eq i32 %i.hp, 0
  br i1 %.not.i, label %bb.br, label %zend_array_release.exit

bb.br:                                            ; preds = %.critedge
  %i.hq = load i32, ptr %i.dg, align 4, !tbaa !28 ; 2 uses
  %i.hr = icmp ne i32 %i.hq, 0
  tail call void @llvm.assume(i1 %i.hr)
  %i.hs = add i32 %i.hq, -1                       ; 2 uses
  store i32 %i.hs, ptr %i.dg, align 4, !tbaa !28
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.bs, label %zend_array_release.exit

bb.bs:                                            ; preds = %bb.br
  tail call void @_efree(ptr noundef nonnull %i.dg) #12
  br label %zend_array_release.exit

zend_array_release.exit:                          ; preds = %bb.bs, %bb.br, %.critedge, %bb.bq, %bb.bp, %._crit_edge
  br i1 %i.c, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %zend_array_release.exit
  %i.hu = add nsw i32 %1, -1
  %i.hv = call i64 (ptr, ...) @php_printf(ptr noundef nonnull @.str, i32 noundef %i.hu, i32 noundef 32) #12 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %zend_array_release.exit, %bb.bt
  %i.hw = call i64 @php_output_write(ptr noundef nonnull @.str.12, i64 noundef 2) #12 ; 0 uses
  br i1 %.not173, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hx = load i32, ptr %i.cr, align 4, !tbaa !58
  %i.hy = and i32 %i.hx, -33
  store i32 %i.hy, ptr %i.cr, align 4, !tbaa !58
  br label %bb.cc

bb.bw:                                            ; preds = %bb.bu
  %i.hz = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !12
  %i.ib = and i32 %i.ia, -33
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !12
  br label %bb.cc

bb.bx:                                            ; preds = %bb.c
  %i.ic = load ptr, ptr %0, align 8, !tbaa !12
  %i.id = tail call ptr @zend_rsrc_list_get_rsrc_type(ptr noundef %i.ic) #12 ; 2 uses
  %i.ie = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !102
  %.not = icmp eq ptr %i.id, null
  %i.ih = select i1 %.not, ptr @.str.16, ptr %i.id
  %i.ii = load i32, ptr %i.ie, align 8, !tbaa !28
  %i.ij = tail call i64 (ptr, ...) @php_printf(ptr noundef nonnull @.str.30, i64 noundef %i.ig, ptr noundef nonnull %i.ih, i32 noundef %i.ii) #12 ; 0 uses
  br label %bb.cc

bb.by:                                            ; preds = %bb.c
  %i.ik = load ptr, ptr %0, align 8, !tbaa !12
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !28
  %i.im = tail call i64 (ptr, ...) @php_printf(ptr noundef nonnull @.str.31, i32 noundef %i.il) #12 ; 0 uses
  %i.in = load ptr, ptr %0, align 8, !tbaa !12
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = add nsw i32 %1, 2
  tail call void @php_debug_zval_dump(ptr noundef nonnull %i.io, i32 noundef %i.ip)
  br i1 %i.c, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.iq = add nsw i32 %1, -1
  %i.ir = tail call i64 (ptr, ...) @php_printf(ptr noundef nonnull @.str, i32 noundef %i.iq, i32 noundef 32) #12 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %i.is = tail call i64 @php_output_write(ptr noundef nonnull @.str.12, i64 noundef 2) #12 ; 0 uses
  br label %bb.cc

bb.cb:                                            ; preds = %bb.c
  %i.it = tail call i64 @php_output_write(ptr noundef nonnull @.str.32, i64 noundef 10) #12 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.ag, %bb.bx, %bb.ca, %bb.cb, %bb.k, %bb.j, %bb.bv, %bb.bw, %.critedge189, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_debug_zval_dump(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12   ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef -1) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !12
  %i.g = and i32 %i.f, 134217728
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.critedge.preheader, label %bb.d, !prof !65

.critedge.preheader:                              ; preds = %bb.c
  %i.h = icmp sgt i32 %i.b, 0
  br i1 %i.h, label %.critedge.preheader49, label %.loopexit

.critedge.preheader49:                            ; preds = %.critedge.preheader
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.critedge

bb.d:                                             ; preds = %bb.b, %bb.c
  %.134.ph = phi i32 [ 11, %bb.c ], [ 1, %bb.b ]
  tail call void @zend_wrong_parameter_error(i32 noundef %.134.ph, i32 noundef %i.b, ptr noundef null, i32 noundef 0, ptr noundef null) #12
  br label %.loopexit

.critedge:                                        ; preds = %.critedge.preheader49, %.critedge
  %indvars.iv = phi i64 [ 0, %.critedge.preheader49 ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  tail call void @php_debug_zval_dump(ptr noundef nonnull %i.i, i32 noundef 1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.critedge, !llvm.loop !109

.loopexit:                                        ; preds = %.critedge, %.critedge.preheader, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef range(i32 -1, 1) i32 @php_var_export_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca [32 x i8], align 16               ; 3 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca [32 x i8], align 16               ; 3 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.gf, %bb.a
  %.0176 = phi ptr [ %0, %bb.a ], [ %i.ace, %bb.gf ] ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0176, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !12
  switch i8 %i.q, label %bb.gg [
    i8 2, label %bb.c
    i8 3, label %bb.f
    i8 1, label %bb.i
    i8 4, label %bb.l
    i8 5, label %bb.x
    i8 6, label %bb.y
    i8 7, label %bb.al
    i8 8, label %bb.cu
    i8 10, label %bb.gf
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %2, align 8, !tbaa !110    ; 3 uses
  %.not.i304 = icmp eq ptr %i.r, null
  br i1 %.not.i304, label %bb.e, label %bb.d, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.u = add i64 %i.t, 5                          ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !112
  %.not12.i305 = icmp ult i64 %i.u, %i.w
  br i1 %.not12.i305, label %smart_str_alloc.exit308, label %bb.e, !prof !65

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i306 = phi i64 [ 5, %bb.c ], [ %i.u, %bb.d ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i306) #12
  %.pre565 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert566 = getelementptr inbounds nuw i8, ptr %.pre565, i64 16
  %.pre567 = load i64, ptr %.phi.trans.insert566, align 8, !tbaa !26
  br label %smart_str_alloc.exit308

smart_str_alloc.exit308:                          ; preds = %bb.d, %bb.e
  %i.x = phi i64 [ %i.t, %bb.d ], [ %.pre567, %bb.e ]
  %i.y = phi ptr [ %i.r, %bb.d ], [ %.pre565, %bb.e ]
  %.1.i307 = phi i64 [ %i.u, %bb.d ], [ %.0.i306, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aa, ptr noundef nonnull align 1 dereferenceable(5) @.str.33, i64 5, i1 false)
  %i.ab = load ptr, ptr %2, align 8, !tbaa !110
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.1.i307, ptr %i.ac, align 8, !tbaa !26
  br label %zend_string_free.exit

bb.f:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i299 = icmp eq ptr %i.ad, null
  br i1 %.not.i299, label %bb.h, label %bb.g, !prof !35

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26 ; 2 uses
  %i.ag = add i64 %i.af, 4                        ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !112
  %.not12.i300 = icmp ult i64 %i.ag, %i.ai
  br i1 %.not12.i300, label %smart_str_alloc.exit303, label %bb.h, !prof !65

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i301 = phi i64 [ 4, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i301) #12
  %.pre562 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert563 = getelementptr inbounds nuw i8, ptr %.pre562, i64 16
  %.pre564 = load i64, ptr %.phi.trans.insert563, align 8, !tbaa !26
  br label %smart_str_alloc.exit303

smart_str_alloc.exit303:                          ; preds = %bb.g, %bb.h
  %i.aj = phi i64 [ %i.af, %bb.g ], [ %.pre564, %bb.h ]
  %i.ak = phi ptr [ %i.ad, %bb.g ], [ %.pre562, %bb.h ]
  %.1.i302 = phi i64 [ %i.ag, %bb.g ], [ %.0.i301, %bb.h ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i32 1702195828, ptr %i.am, align 1
  %i.an = load ptr, ptr %2, align 8, !tbaa !110
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %.1.i302, ptr %i.ao, align 8, !tbaa !26
  br label %zend_string_free.exit

bb.i:                                             ; preds = %bb.b
  %i.ap = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i294 = icmp eq ptr %i.ap, null
  br i1 %.not.i294, label %bb.k, label %bb.j, !prof !35

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26 ; 2 uses
  %i.as = add i64 %i.ar, 4                        ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !112
  %.not12.i295 = icmp ult i64 %i.as, %i.au
  br i1 %.not12.i295, label %smart_str_alloc.exit298, label %bb.k, !prof !65

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i296 = phi i64 [ 4, %bb.i ], [ %i.as, %bb.j ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i296) #12
  %.pre559 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert560 = getelementptr inbounds nuw i8, ptr %.pre559, i64 16
  %.pre561 = load i64, ptr %.phi.trans.insert560, align 8, !tbaa !26
  br label %smart_str_alloc.exit298

smart_str_alloc.exit298:                          ; preds = %bb.j, %bb.k
  %i.av = phi i64 [ %i.ar, %bb.j ], [ %.pre561, %bb.k ]
  %i.aw = phi ptr [ %i.ap, %bb.j ], [ %.pre559, %bb.k ]
  %.1.i297 = phi i64 [ %i.as, %bb.j ], [ %.0.i296, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i32 1280070990, ptr %i.ay, align 1
  %i.az = load ptr, ptr %2, align 8, !tbaa !110
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.1.i297, ptr %i.ba, align 8, !tbaa !26
  br label %zend_string_free.exit

bb.l:                                             ; preds = %bb.b
  %i.bb = load i64, ptr %.0176, align 8, !tbaa !12 ; 4 uses
  %i.bc = icmp eq i64 %i.bb, -9223372036854775808
  br i1 %i.bc, label %zend_print_ulong_to_buf.exit, label %bb.q

zend_print_ulong_to_buf.exit:                     ; preds = %bb.l
  %i.bd = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %bb.n, label %bb.m, !prof !35

bb.m:                                             ; preds = %zend_print_ulong_to_buf.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !26 ; 2 uses
  %i.bg = add i64 %i.bf, 20                       ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !112
  %.not12.i.i = icmp ult i64 %i.bg, %i.bi
  br i1 %.not12.i.i, label %bb.o, label %bb.n, !prof !65

bb.n:                                             ; preds = %bb.m, %zend_print_ulong_to_buf.exit
  %.0.i.i = phi i64 [ 20, %zend_print_ulong_to_buf.exit ], [ %i.bg, %bb.m ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i) #12
  %.pre553 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert554 = getelementptr inbounds nuw i8, ptr %.pre553, i64 16
  %.pre555 = load i64, ptr %.phi.trans.insert554, align 8, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bj = phi i64 [ %i.bf, %bb.m ], [ %.pre555, %bb.n ]
  %i.bk = phi ptr [ %i.bd, %bb.m ], [ %.pre553, %bb.n ]
  %.1.i.i = phi i64 [ %i.bg, %bb.m ], [ %.0.i.i, %bb.n ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj ; 2 uses
  store <16 x i8> <i8 45, i8 57, i8 50, i8 50, i8 51, i8 51, i8 55, i8 50, i8 48, i8 51, i8 54, i8 56, i8 53, i8 52, i8 55, i8 55>, ptr %i.bm, align 1
  %.sroa.19.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i8> <i8 53, i8 56, i8 48, i8 55>, ptr %.sroa.19.11..sroa_idx, align 1
  %4 = load ptr, ptr %2, align 8, !tbaa !110      ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.1.i.i, ptr %5, align 8, !tbaa !26
  %i.bn = add i64 %.1.i.i, 2                      ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !112
  %.not12.i310 = icmp ult i64 %i.bn, %i.bp
  br i1 %.not12.i310, label %smart_str_alloc.exit313, label %bb.p, !prof !65

bb.p:                                             ; preds = %bb.o
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.bn) #12
  %.pre556 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert557 = getelementptr inbounds nuw i8, ptr %.pre556, i64 16
  %.pre558 = load i64, ptr %.phi.trans.insert557, align 8, !tbaa !26
  br label %smart_str_alloc.exit313

smart_str_alloc.exit313:                          ; preds = %bb.o, %bb.p
  %i.bq = phi i64 [ %.1.i.i, %bb.o ], [ %.pre558, %bb.p ]
  %i.br = phi ptr [ %4, %bb.o ], [ %.pre556, %bb.p ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i16 12589, ptr %i.bt, align 1
  %i.bu = load ptr, ptr %2, align 8, !tbaa !110
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 %i.bn, ptr %i.bv, align 8, !tbaa !26
  br label %zend_string_free.exit

bb.q:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 31 ; 5 uses
  %i.bx = icmp slt i64 %i.bb, 0
  br i1 %i.bx, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.by = sub nsw i64 0, %i.bb
  store i8 0, ptr %i.bw, align 1, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.05.i323 = phi ptr [ %i.bw, %bb.r ], [ %i.cc, %bb.s ] ; 2 uses
  %.0.i324 = phi i64 [ %i.by, %bb.r ], [ %i.cd, %bb.s ] ; 3 uses
  %i.bz = urem i64 %.0.i324, 10
  %i.ca = trunc nuw nsw i64 %i.bz to i8
  %i.cb = or disjoint i8 %i.ca, 48
  %i.cc = getelementptr inbounds i8, ptr %.05.i323, i64 -1 ; 2 uses
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !12
  %i.cd = udiv i64 %.0.i324, 10
  %.not.i325 = icmp samesign ult i64 %.0.i324, 10
  br i1 %.not.i325, label %zend_print_ulong_to_buf.exit326, label %bb.s, !llvm.loop !113

zend_print_ulong_to_buf.exit326:                  ; preds = %bb.s
  %i.ce = getelementptr inbounds i8, ptr %.05.i323, i64 -2 ; 2 uses
  store i8 45, ptr %i.ce, align 1, !tbaa !12
  br label %zend_print_long_to_buf.exit

bb.t:                                             ; preds = %bb.q
  store i8 0, ptr %i.bw, align 1, !tbaa !12
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.05.i327 = phi ptr [ %i.bw, %bb.t ], [ %i.ci, %bb.u ]
  %.0.i328 = phi i64 [ %i.bb, %bb.t ], [ %i.cj, %bb.u ] ; 3 uses
  %i.cf = urem i64 %.0.i328, 10
  %i.cg = trunc nuw nsw i64 %i.cf to i8
  %i.ch = or disjoint i8 %i.cg, 48
  %i.ci = getelementptr inbounds i8, ptr %.05.i327, i64 -1 ; 3 uses
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !12
  %i.cj = udiv i64 %.0.i328, 10
  %.not.i329 = icmp ult i64 %.0.i328, 10
  br i1 %.not.i329, label %zend_print_long_to_buf.exit, label %bb.u, !llvm.loop !113

zend_print_long_to_buf.exit:                      ; preds = %bb.u, %zend_print_ulong_to_buf.exit326
  %.0.i319 = phi ptr [ %i.ce, %zend_print_ulong_to_buf.exit326 ], [ %i.ci, %bb.u ] ; 2 uses
  %i.ck = ptrtoint ptr %i.bw to i64
  %i.cl = ptrtoint ptr %.0.i319 to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 3 uses
  %i.cn = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i.i314 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i314, label %bb.w, label %bb.v, !prof !35

bb.v:                                             ; preds = %zend_print_long_to_buf.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !26 ; 2 uses
  %i.cq = add i64 %i.cp, %i.cm                    ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !112
  %.not12.i.i315 = icmp ult i64 %i.cq, %i.cs
  br i1 %.not12.i.i315, label %smart_str_append_long_ex.exit318, label %bb.w, !prof !65

bb.w:                                             ; preds = %bb.v, %zend_print_long_to_buf.exit
  %.0.i.i316 = phi i64 [ %i.cm, %zend_print_long_to_buf.exit ], [ %i.cq, %bb.v ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i316) #12
  %.pre550 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert551 = getelementptr inbounds nuw i8, ptr %.pre550, i64 16
  %.pre552 = load i64, ptr %.phi.trans.insert551, align 8, !tbaa !26
  br label %smart_str_append_long_ex.exit318

smart_str_append_long_ex.exit318:                 ; preds = %bb.v, %bb.w
  %i.ct = phi i64 [ %i.cp, %bb.v ], [ %.pre552, %bb.w ]
  %i.cu = phi ptr [ %i.cn, %bb.v ], [ %.pre550, %bb.w ]
  %.1.i.i317 = phi i64 [ %i.cq, %bb.v ], [ %.0.i.i316, %bb.w ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr nonnull align 1 %.0.i319, i64 %i.cm, i1 false)
  %i.cx = load ptr, ptr %2, align 8, !tbaa !110
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %.1.i.i317, ptr %i.cy, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  br label %zend_string_free.exit

bb.x:                                             ; preds = %bb.b
  %i.cz = load double, ptr %.0176, align 8, !tbaa !12
  %i.da = load i64, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 32), align 8, !tbaa !13
  %i.db = trunc i64 %i.da to i32
  tail call void @smart_str_append_double(ptr noundef %2, double noundef %i.cz, i32 noundef %i.db, i1 noundef zeroext true) #12
  br label %zend_string_free.exit

bb.y:                                             ; preds = %bb.b
  %i.dc = load ptr, ptr %.0176, align 8, !tbaa !12
  %i.dd = tail call ptr @php_addcslashes(ptr noundef %i.dc, ptr noundef nonnull @.str.37, i64 noundef 2) #12 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !26
  %i.dh = tail call ptr @php_str_to_str(ptr noundef nonnull %i.de, i64 noundef %i.dg, ptr noundef nonnull @.str.38, i64 noundef 1, ptr noundef nonnull @.str.39, i64 noundef 12) #12 ; 5 uses
  %i.di = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i.i331 = icmp eq ptr %i.di, null
  br i1 %.not.i.i331, label %bb.aa, label %bb.z, !prof !35

bb.z:                                             ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !26
  %i.dl = add i64 %i.dk, 1                        ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !112
  %.not12.i.i332 = icmp ult i64 %i.dl, %i.dn
  br i1 %.not12.i.i332, label %bb.ab, label %bb.aa, !prof !65

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i.i333 = phi i64 [ 1, %bb.y ], [ %i.dl, %bb.z ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i333) #12
  %.pre545 = load ptr, ptr %2, align 8, !tbaa !110
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.do = phi ptr [ %i.di, %bb.z ], [ %.pre545, %bb.aa ]
  %.1.i.i334 = phi i64 [ %i.dl, %bb.z ], [ %.0.i.i333, %bb.aa ] ; 4 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 23
  %i.dq = getelementptr i8, ptr %i.dp, i64 %.1.i.i334
  store i8 39, ptr %i.dq, align 1, !tbaa !12
  %i.dr = load ptr, ptr %2, align 8, !tbaa !110   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 %.1.i.i334, ptr %i.ds, align 8, !tbaa !26
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !26 ; 2 uses
  %i.dw = add i64 %i.dv, %.1.i.i334               ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !112
  %.not12.i.i366 = icmp ult i64 %i.dw, %i.dy
  br i1 %.not12.i.i366, label %bb.ad, label %bb.ac, !prof !65

bb.ac:                                            ; preds = %bb.ab
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.dw) #12
  %.pre546 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert547 = getelementptr inbounds nuw i8, ptr %.pre546, i64 16
  %.pre548 = load i64, ptr %.phi.trans.insert547, align 8, !tbaa !26
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dz = phi i64 [ %.pre548, %bb.ac ], [ %.1.i.i334, %bb.ab ]
  %i.ea = phi ptr [ %.pre546, %bb.ac ], [ %i.dr, %bb.ab ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr nonnull align 1 %i.dt, i64 %i.dv, i1 false)
  %i.ed = load ptr, ptr %2, align 8, !tbaa !110   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 %i.dw, ptr %i.ee, align 8, !tbaa !26
  %i.ef = add i64 %i.dw, 1                        ; 4 uses
  %i.eg = load i64, ptr %i.dx, align 8, !tbaa !112
  %.not12.i.i336 = icmp ult i64 %i.ef, %i.eg
  br i1 %.not12.i.i336, label %smart_str_appendc_ex.exit339, label %bb.ae, !prof !65

bb.ae:                                            ; preds = %bb.ad
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.ef) #12
  %.pre549 = load ptr, ptr %2, align 8, !tbaa !110
  br label %smart_str_appendc_ex.exit339

smart_str_appendc_ex.exit339:                     ; preds = %bb.ad, %bb.ae
  %i.eh = phi ptr [ %i.ed, %bb.ad ], [ %.pre549, %bb.ae ]
  %i.ei = getelementptr i8, ptr %i.eh, i64 23
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.ef
  store i8 39, ptr %i.ej, align 1, !tbaa !12
  %i.ek = load ptr, ptr %2, align 8, !tbaa !110
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 %i.ef, ptr %i.el, align 8, !tbaa !26
  %i.em = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !12 ; 2 uses
  %i.eo = and i32 %i.en, 64
  %.not.i235 = icmp eq i32 %i.eo, 0
  br i1 %.not.i235, label %bb.af, label %zend_string_free.exit237

bb.af:                                            ; preds = %smart_str_appendc_ex.exit339
  %i.ep = and i32 %i.en, 128
  %.not4.i236 = icmp eq i32 %i.ep, 0
  br i1 %.not4.i236, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.dd) #12
  br label %zend_string_free.exit237

bb.ah:                                            ; preds = %bb.af
  tail call void @_efree(ptr noundef nonnull %i.dd) #12
  br label %zend_string_free.exit237

zend_string_free.exit237:                         ; preds = %smart_str_appendc_ex.exit339, %bb.ag, %bb.ah
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !12 ; 2 uses
  %i.es = and i32 %i.er, 64
  %.not.i234 = icmp eq i32 %i.es, 0
  br i1 %.not.i234, label %bb.ai, label %zend_string_free.exit

bb.ai:                                            ; preds = %zend_string_free.exit237
  %i.et = and i32 %i.er, 128
  %.not4.i = icmp eq i32 %i.et, 0
  br i1 %.not4.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @free(ptr noundef nonnull %i.dh) #12
  br label %zend_string_free.exit

bb.ak:                                            ; preds = %bb.ai
  tail call void @_efree(ptr noundef nonnull %i.dh) #12
  br label %zend_string_free.exit

bb.al:                                            ; preds = %bb.b
  %i.eu = load ptr, ptr %.0176, align 8, !tbaa !12 ; 10 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 6 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ex = and i32 %i.ew, 64
  %.not225 = icmp eq i32 %i.ex, 0
  br i1 %.not225, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ey = and i32 %i.ew, 32
  %.not226 = icmp eq i32 %i.ey, 0
  br i1 %.not226, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ez = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i289 = icmp eq ptr %i.ez, null
  br i1 %.not.i289, label %bb.ap, label %bb.ao, !prof !35

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !26 ; 2 uses
  %i.fc = add i64 %i.fb, 4                        ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !112
  %.not12.i290 = icmp ult i64 %i.fc, %i.fe
  br i1 %.not12.i290, label %smart_str_alloc.exit293, label %bb.ap, !prof !65

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0.i291 = phi i64 [ 4, %bb.an ], [ %i.fc, %bb.ao ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i291) #12
  %.pre510 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert511 = getelementptr inbounds nuw i8, ptr %.pre510, i64 16
  %.pre512 = load i64, ptr %.phi.trans.insert511, align 8, !tbaa !26
  br label %smart_str_alloc.exit293

smart_str_alloc.exit293:                          ; preds = %bb.ao, %bb.ap
  %i.ff = phi i64 [ %i.fb, %bb.ao ], [ %.pre512, %bb.ap ]
  %i.fg = phi ptr [ %i.ez, %bb.ao ], [ %.pre510, %bb.ap ]
  %.1.i292 = phi i64 [ %i.fc, %bb.ao ], [ %.0.i291, %bb.ap ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ff
  store i32 1280070990, ptr %i.fi, align 1
  %i.fj = load ptr, ptr %2, align 8, !tbaa !110
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i64 %.1.i292, ptr %i.fk, align 8, !tbaa !26
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.40) #12
  br label %zend_string_free.exit

bb.aq:                                            ; preds = %bb.am
  %i.fl = load i32, ptr %i.eu, align 4, !tbaa !28
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.eu, align 4, !tbaa !28
  %i.fn = or disjoint i32 %i.ew, 32
  store i32 %i.fn, ptr %i.ev, align 4, !tbaa !12
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.al
  %i.fo = icmp sgt i32 %1, 1                      ; 2 uses
  br i1 %i.fo, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.fp = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i.i340 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i340, label %bb.au, label %bb.at, !prof !35

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !26
  %i.fs = add i64 %i.fr, 1                        ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !112
  %.not12.i.i341 = icmp ult i64 %i.fs, %i.fu
  br i1 %.not12.i.i341, label %smart_str_appendc_ex.exit344, label %bb.au, !prof !65

end_hunk_0
begin_hunk_1_@php_var_export_ex:bb.a
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !112
  %.not12.i.i356 = icmp ult i64 %i.qx, %i.qz
  br i1 %.not12.i.i356, label %bb.dp, label %bb.do, !prof !65

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.0.i.i357 = phi i64 [ 1, %bb.dm ], [ %i.qx, %bb.dn ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i357) #12
  %.pre470 = load ptr, ptr %2, align 8, !tbaa !110
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.ra = phi ptr [ %i.qp, %bb.dn ], [ %.pre470, %bb.do ]
  %.1.i.i358 = phi i64 [ %i.qx, %bb.dn ], [ %.0.i.i357, %bb.do ] ; 4 uses
  %i.rb = getelementptr i8, ptr %i.ra, i64 23
  %i.rc = getelementptr i8, ptr %i.rb, i64 %.1.i.i358
  store i8 92, ptr %i.rc, align 1, !tbaa !12
  %i.rd = load ptr, ptr %2, align 8, !tbaa !110   ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store i64 %.1.i.i358, ptr %i.re, align 8, !tbaa !26
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !57 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !26 ; 2 uses
  %i.rk = add i64 %i.rj, %.1.i.i358               ; 7 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !112
  %.not12.i.i370 = icmp ult i64 %i.rk, %i.rm
  br i1 %.not12.i.i370, label %smart_str_append_ex.exit373, label %bb.dq, !prof !65

bb.dq:                                            ; preds = %bb.dp
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.rk) #12
  %.pre471 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert472 = getelementptr inbounds nuw i8, ptr %.pre471, i64 16
  %.pre473 = load i64, ptr %.phi.trans.insert472, align 8, !tbaa !26
  br label %smart_str_append_ex.exit373

smart_str_append_ex.exit373:                      ; preds = %bb.dp, %bb.dq
  %i.rn = phi i64 [ %.1.i.i358, %bb.dp ], [ %.pre473, %bb.dq ]
  %i.ro = phi ptr [ %i.rd, %bb.dp ], [ %.pre471, %bb.dq ]
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rq, ptr nonnull align 1 %i.rh, i64 %i.rj, i1 false)
  %i.rr = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  store i64 %i.rk, ptr %i.rs, align 8, !tbaa !26
  br i1 %i.qm, label %bb.dr, label %bb.dv

bb.dr:                                            ; preds = %smart_str_append_ex.exit373
  %i.rt = load ptr, ptr %.0176, align 8, !tbaa !12
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 40
  %i.rv = add i64 %i.rk, 2                        ; 5 uses
  %i.rw = load i64, ptr %i.rl, align 8, !tbaa !112
  %.not12.i255 = icmp ult i64 %i.rv, %i.rw
  br i1 %.not12.i255, label %bb.dt, label %bb.ds, !prof !65

bb.ds:                                            ; preds = %bb.dr
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.rv) #12
  %.pre477 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert478 = getelementptr inbounds nuw i8, ptr %.pre477, i64 16
  %.pre479 = load i64, ptr %.phi.trans.insert478, align 8, !tbaa !26
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.rx = phi i64 [ %.pre479, %bb.ds ], [ %i.rk, %bb.dr ]
  %i.ry = phi ptr [ %.pre477, %bb.ds ], [ %i.rr, %bb.dr ]
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.rx
  store i16 14906, ptr %i.sa, align 1
  %i.sb = load ptr, ptr %2, align 8, !tbaa !110   ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  store i64 %i.rv, ptr %i.sc, align 8, !tbaa !26
  %i.sd = load ptr, ptr %i.ru, align 8, !tbaa !12 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !26 ; 2 uses
  %i.sh = add i64 %i.sg, %i.rv                    ; 3 uses
  %i.si = load i64, ptr %i.rl, align 8, !tbaa !112
  %.not12.i.i375 = icmp ult i64 %i.sh, %i.si
  br i1 %.not12.i.i375, label %.thread411, label %bb.du, !prof !65

bb.du:                                            ; preds = %bb.dt
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.sh) #12
  %.pre480 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert481 = getelementptr inbounds nuw i8, ptr %.pre480, i64 16
  %.pre482 = load i64, ptr %.phi.trans.insert481, align 8, !tbaa !26
  br label %.thread411

bb.dv:                                            ; preds = %smart_str_append_ex.exit373
  %i.sj = add i64 %i.rk, 21                       ; 3 uses
  %i.sk = load i64, ptr %i.rl, align 8, !tbaa !112
  %.not12.i250 = icmp ult i64 %i.sj, %i.sk
  br i1 %.not12.i250, label %.thread408, label %bb.dw, !prof !65

bb.dw:                                            ; preds = %bb.dv
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.sj) #12
  %.pre474 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert475 = getelementptr inbounds nuw i8, ptr %.pre474, i64 16
  %.pre476 = load i64, ptr %.phi.trans.insert475, align 8, !tbaa !26
  br label %.thread408

bb.dx:                                            ; preds = %bb.dl, %bb.dk
  %i.sl = phi i64 [ %i.qr, %bb.dk ], [ %.pre485, %bb.dl ]
  %i.sm = phi ptr [ %i.qp, %bb.dk ], [ %.pre483, %bb.dl ]
  %.1.i262 = phi i64 [ %i.qs, %bb.dk ], [ %.0.i261, %bb.dl ]
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.sl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.so, ptr noundef nonnull align 1 dereferenceable(16) @.str.42, i64 16, i1 false)
  %i.sp = load ptr, ptr %2, align 8, !tbaa !110
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  store i64 %.1.i262, ptr %i.sq, align 8, !tbaa !26
  %.not219 = icmp eq ptr %i.pd, null
  br i1 %.not219, label %zend_array_release.exit, label %bb.dy

.thread411:                                       ; preds = %bb.du, %bb.dt
  %i.sr = phi i64 [ %.pre482, %bb.du ], [ %i.rv, %bb.dt ]
  %i.ss = phi ptr [ %.pre480, %bb.du ], [ %i.sb, %bb.dt ]
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.sr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.su, ptr nonnull align 1 %i.se, i64 %i.sg, i1 false)
  %i.sv = load ptr, ptr %2, align 8, !tbaa !110
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  store i64 %i.sh, ptr %i.sw, align 8, !tbaa !26
  %.not219412 = icmp eq ptr %i.pd, null
  br i1 %.not219412, label %zend_array_release.exit, label %.thread413

.thread408:                                       ; preds = %bb.dw, %bb.dv
  %i.sx = phi i64 [ %.pre476, %bb.dw ], [ %i.rk, %bb.dv ]
  %i.sy = phi ptr [ %.pre474, %bb.dw ], [ %i.rr, %bb.dv ]
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 24
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.sx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ta, ptr noundef nonnull align 1 dereferenceable(21) @.str.44, i64 21, i1 false)
  %i.tb = load ptr, ptr %2, align 8, !tbaa !110
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  store i64 %i.sj, ptr %i.tc, align 8, !tbaa !26
  %.not219409 = icmp eq ptr %i.pd, null
  br i1 %.not219409, label %zend_array_release.exit, label %.thread410

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.qm, label %.thread413, label %.thread410

.thread410:                                       ; preds = %.thread408, %bb.dy
  %i.td = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !30 ; 2 uses
  %.not220444 = icmp eq i32 %i.tf, 0
  br i1 %.not220444, label %.thread413, label %.lr.ph

.lr.ph:                                           ; preds = %.thread410
  %i.tg = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !12
  %i.ti = add nsw i32 %1, 2                       ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 5 uses
  %i.tl = ptrtoint ptr %i.tk to i64
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph, %.thread418
  %.0179448 = phi i32 [ %i.tf, %.lr.ph ], [ %i.aaa, %.thread418 ]
  %.0180447 = phi ptr [ %i.th, %.lr.ph ], [ %.1181, %.thread418 ] ; 8 uses
  %.0184446 = phi i32 [ 0, %.lr.ph ], [ %.1185, %.thread418 ] ; 4 uses
  %.0186445 = phi ptr [ null, %.lr.ph ], [ %.1187, %.thread418 ]
  %i.tm = load i32, ptr %i.td, align 8, !tbaa !12
  %i.tn = and i32 %i.tm, 4
  %.not221 = icmp eq i32 %i.tn, 0
  br i1 %.not221, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.to = getelementptr inbounds nuw i8, ptr %.0180447, i64 16
  %i.tp = zext i32 %.0184446 to i64
  %i.tq = add i32 %.0184446, 1
  br label %bb.ed

bb.eb:                                            ; preds = %bb.dz
  %i.tr = getelementptr inbounds nuw i8, ptr %.0180447, i64 32 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.0180447, i64 16
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !31 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0180447, i64 24
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !34 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.0180447, i64 8
  %i.tx = load i8, ptr %i.tw, align 8, !tbaa !12
  %i.ty = icmp eq i8 %i.tx, 12
  br i1 %i.ty, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.tz = load ptr, ptr %.0180447, align 8, !tbaa !12
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eb, %bb.ec, %bb.ea
  %.0188 = phi i64 [ %i.tp, %bb.ea ], [ %i.tt, %bb.ec ], [ %i.tt, %bb.eb ] ; 3 uses
  %.1187 = phi ptr [ %.0186445, %bb.ea ], [ %i.tv, %bb.ec ], [ %i.tv, %bb.eb ] ; 3 uses
  %.1185 = phi i32 [ %i.tq, %bb.ea ], [ %.0184446, %bb.ec ], [ %.0184446, %bb.eb ]
  %.1181 = phi ptr [ %i.to, %bb.ea ], [ %i.tr, %bb.ec ], [ %i.tr, %bb.eb ]
  %.1178 = phi ptr [ %.0180447, %bb.ea ], [ %i.tz, %bb.ec ], [ %.0180447, %bb.eb ] ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.1178, i64 8 ; 2 uses
  %i.ub = load i8, ptr %i.ua, align 8, !tbaa !12
  %i.uc = icmp eq i8 %i.ub, 0
  br i1 %i.uc, label %.thread418, label %bb.ee, !prof !35

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ud = load i8, ptr %i.ua, align 8, !tbaa !12
  %i.ue = icmp eq i8 %i.ud, 13
  br i1 %i.ue, label %bb.ef, label %zend_array_release.exit233, !prof !35

bb.ef:                                            ; preds = %bb.ee
  %i.uf = load ptr, ptr %.1178, align 8, !tbaa !12 ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !117
  %i.ui = and i32 %i.uh, 512
  %.not222 = icmp eq i32 %i.ui, 0
  br i1 %.not222, label %zend_string_alloc.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 64
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !118
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !119
  %.not223 = icmp eq ptr %i.ul, null
  br i1 %.not223, label %.thread418.sink.split, label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.eg, %bb.ef
  %i.um = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.uo = call i32 @zend_unmangle_property_name_ex(ptr noundef %i.un, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef null) #12 ; 0 uses
  %i.up = load ptr, ptr %i.k, align 8, !tbaa !99  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  %i.uq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.up) #13 ; 4 uses
  %i.ur = and i64 %i.uq, -8
  %i.us = add i64 %i.ur, 32
  %i.ut = call noalias ptr @_emalloc(i64 noundef %i.us) #14 ; 9 uses
  store i32 1, ptr %i.ut, align 4, !tbaa !28
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 4 ; 2 uses
  store i32 22, ptr %i.uu, align 4, !tbaa !12
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store i64 0, ptr %i.uv, align 8, !tbaa !121
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  store i64 %i.uq, ptr %i.uw, align 8, !tbaa !26
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ux, ptr nonnull align 1 %i.up, i64 %i.uq, i1 false)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uq
  store i8 0, ptr %i.uy, align 1, !tbaa !12
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uf, i64 32
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !122
  %i.vb = call ptr @zend_read_property_ex(ptr noundef %i.va, ptr noundef %i.oi, ptr noundef nonnull %i.ut, i1 noundef zeroext true, ptr noundef nonnull %3) #12
  %i.vc = load i32, ptr %i.uu, align 4, !tbaa !12
  %i.vd = and i32 %i.vc, 64
  %.not.i = icmp eq i32 %i.vd, 0
  br i1 %.not.i, label %bb.eh, label %zend_string_release_ex.exit

bb.eh:                                            ; preds = %zend_string_alloc.exit
  %i.ve = load i32, ptr %i.ut, align 8, !tbaa !28 ; 2 uses
  %i.vf = icmp ne i32 %i.ve, 0
  call void @llvm.assume(i1 %i.vf)
  %i.vg = add i32 %i.ve, -1                       ; 2 uses
  store i32 %i.vg, ptr %i.ut, align 8, !tbaa !28
  %i.vh = icmp eq i32 %i.vg, 0
  br i1 %i.vh, label %bb.ei, label %zend_string_release_ex.exit

bb.ei:                                            ; preds = %bb.eh
  call void @_efree(ptr noundef nonnull %i.ut) #12
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %zend_string_alloc.exit, %bb.eh, %bb.ei
  %i.vi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !123
  %.not224 = icmp eq ptr %i.vi, null
  br i1 %.not224, label %zend_array_release.exit233, label %bb.ej

bb.ej:                                            ; preds = %zend_string_release_ex.exit
  br i1 %.not, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.vj = load i32, ptr %i.oj, align 4, !tbaa !58
  %i.vk = and i32 %i.vj, -65
  store i32 %i.vk, ptr %i.oj, align 4, !tbaa !58
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.vl = getelementptr inbounds nuw i8, ptr %i.oi, i64 4 ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !12
  %i.vn = and i32 %i.vm, -33
  store i32 %i.vn, ptr %i.vl, align 4, !tbaa !12
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.vo = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !12
  %i.vq = and i32 %i.vp, 64
  %.not.i232 = icmp eq i32 %i.vq, 0
  br i1 %.not.i232, label %bb.en, label %bb.ge

bb.en:                                            ; preds = %bb.em
  %i.vr = load i32, ptr %i.pd, align 8, !tbaa !28 ; 2 uses
  %i.vs = icmp ne i32 %i.vr, 0
  call void @llvm.assume(i1 %i.vs)
  %i.vt = add i32 %i.vr, -1                       ; 2 uses
  store i32 %i.vt, ptr %i.pd, align 8, !tbaa !28
  %i.vu = icmp eq i32 %i.vt, 0
  br i1 %i.vu, label %bb.eo, label %bb.ge

bb.eo:                                            ; preds = %bb.en
  call void @zend_array_destroy(ptr noundef nonnull %i.pd) #12
  br label %bb.ge

zend_array_release.exit233:                       ; preds = %zend_string_release_ex.exit, %bb.ee
  %.1183 = phi ptr [ %.1178, %bb.ee ], [ %i.vb, %zend_string_release_ex.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.vv = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.b, i64 noundef 0, ptr noundef nonnull @.str, i32 noundef %i.ti, i32 noundef 32) #12, !inline_history !124 ; 3 uses
  %i.vw = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.vx = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i19.i = icmp eq ptr %i.vx, null
  br i1 %.not.i19.i, label %bb.eq, label %bb.ep, !prof !35

bb.ep:                                            ; preds = %zend_array_release.exit233
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !26 ; 2 uses
  %i.wa = add i64 %i.vz, %i.vv                    ; 3 uses
  %i.wb = load i64, ptr %i.tj, align 8, !tbaa !112
  %.not12.i20.i = icmp ult i64 %i.wa, %i.wb
  br i1 %.not12.i20.i, label %smart_str_alloc.exit23.i, label %bb.eq, !prof !65

bb.eq:                                            ; preds = %bb.ep, %zend_array_release.exit233
  %.0.i21.i = phi i64 [ %i.vv, %zend_array_release.exit233 ], [ %i.wa, %bb.ep ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i21.i) #12, !inline_history !124
  %.pre486 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert487 = getelementptr inbounds nuw i8, ptr %.pre486, i64 16
  %.pre488 = load i64, ptr %.phi.trans.insert487, align 8, !tbaa !26
  br label %smart_str_alloc.exit23.i

smart_str_alloc.exit23.i:                         ; preds = %bb.eq, %bb.ep
  %i.wc = phi i64 [ %i.vz, %bb.ep ], [ %.pre488, %bb.eq ]
  %i.wd = phi ptr [ %i.vx, %bb.ep ], [ %.pre486, %bb.eq ]
  %.1.i22.i = phi i64 [ %i.wa, %bb.ep ], [ %.0.i21.i, %bb.eq ]
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 24
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wf, ptr align 1 %i.vw, i64 %i.vv, i1 false)
  %i.wg = load ptr, ptr %2, align 8, !tbaa !110
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  store i64 %.1.i22.i, ptr %i.wh, align 8, !tbaa !26
  %i.wi = load ptr, ptr %i.b, align 8, !tbaa !99
  call void @_efree(ptr noundef %i.wi) #12, !inline_history !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.not.i383 = icmp eq ptr %.1187, null
  br i1 %.not.i383, label %bb.ez, label %bb.er

bb.er:                                            ; preds = %smart_str_alloc.exit23.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.wj = call i32 @zend_unmangle_property_name_ex(ptr noundef nonnull %.1187, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #12, !inline_history !124 ; 0 uses
  %i.wk = load ptr, ptr %i.d, align 8, !tbaa !99
  %i.wl = load i64, ptr %i.e, align 8, !tbaa !125
  %i.wm = call ptr @php_addcslashes_str(ptr noundef %i.wk, i64 noundef %i.wl, ptr noundef nonnull @.str.37, i64 noundef 2) #12, !inline_history !124 ; 6 uses
  %i.wn = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i.i31.i = icmp eq ptr %i.wn, null
  br i1 %.not.i.i31.i, label %bb.et, label %bb.es, !prof !35

bb.es:                                            ; preds = %bb.er
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !26
  %i.wq = add i64 %i.wp, 1                        ; 3 uses
  %i.wr = load i64, ptr %i.tj, align 8, !tbaa !112
  %.not12.i.i32.i = icmp ult i64 %i.wq, %i.wr
  br i1 %.not12.i.i32.i, label %bb.eu, label %bb.et, !prof !65

bb.et:                                            ; preds = %bb.es, %bb.er
  %.0.i.i33.i = phi i64 [ 1, %bb.er ], [ %i.wq, %bb.es ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i33.i) #12, !inline_history !124
  %.pre489 = load ptr, ptr %2, align 8, !tbaa !110
  br label %bb.eu

bb.eu:                                            ; preds = %bb.es, %bb.et
  %i.ws = phi ptr [ %i.wn, %bb.es ], [ %.pre489, %bb.et ]
  %.1.i.i34.i = phi i64 [ %i.wq, %bb.es ], [ %.0.i.i33.i, %bb.et ] ; 4 uses
  %i.wt = getelementptr i8, ptr %i.ws, i64 23
  %i.wu = getelementptr i8, ptr %i.wt, i64 %.1.i.i34.i
  store i8 39, ptr %i.wu, align 1, !tbaa !12
  %i.wv = load ptr, ptr %2, align 8, !tbaa !110   ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  store i64 %.1.i.i34.i, ptr %i.ww, align 8, !tbaa !26
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wm, i64 24
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !26 ; 2 uses
  %i.xa = add i64 %i.wz, %.1.i.i34.i              ; 4 uses
  %i.xb = load i64, ptr %i.tj, align 8, !tbaa !112
  %.not12.i.i51.i386 = icmp ult i64 %i.xa, %i.xb
  br i1 %.not12.i.i51.i386, label %bb.ew, label %bb.ev, !prof !65

bb.ev:                                            ; preds = %bb.eu
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.xa) #12, !inline_history !124
  %.pre490 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert491 = getelementptr inbounds nuw i8, ptr %.pre490, i64 16
  %.pre492 = load i64, ptr %.phi.trans.insert491, align 8, !tbaa !26
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %i.xc = phi i64 [ %.1.i.i34.i, %bb.eu ], [ %.pre492, %bb.ev ]
  %i.xd = phi ptr [ %i.wv, %bb.eu ], [ %.pre490, %bb.ev ]
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xf, ptr nonnull align 1 %i.wx, i64 %i.wz, i1 false)
  %i.xg = load ptr, ptr %2, align 8, !tbaa !110   ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  store i64 %i.xa, ptr %i.xh, align 8, !tbaa !26
  %i.xi = add i64 %i.xa, 1                        ; 4 uses
  %i.xj = load i64, ptr %i.tj, align 8, !tbaa !112
  %.not12.i.i36.i = icmp ult i64 %i.xi, %i.xj
  br i1 %.not12.i.i36.i, label %smart_str_appendc_ex.exit39.i, label %bb.ex, !prof !65

bb.ex:                                            ; preds = %bb.ew
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.xi) #12, !inline_history !124
  %.pre493 = load ptr, ptr %2, align 8, !tbaa !110
  br label %smart_str_appendc_ex.exit39.i

smart_str_appendc_ex.exit39.i:                    ; preds = %bb.ex, %bb.ew
  %i.xk = phi ptr [ %.pre493, %bb.ex ], [ %i.xg, %bb.ew ]
  %i.xl = getelementptr i8, ptr %i.xk, i64 23
  %i.xm = getelementptr i8, ptr %i.xl, i64 %i.xi
  store i8 39, ptr %i.xm, align 1, !tbaa !12
  %i.xn = load ptr, ptr %2, align 8, !tbaa !110   ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  store i64 %i.xi, ptr %i.xo, align 8, !tbaa !26
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !12
  %i.xr = and i32 %i.xq, 64
  %.not.i.i390 = icmp eq i32 %i.xr, 0
  br i1 %.not.i.i390, label %bb.ey, label %.thread687

bb.ey:                                            ; preds = %smart_str_appendc_ex.exit39.i
  %i.xs = load i32, ptr %i.wm, align 8, !tbaa !28 ; 2 uses
  %i.xt = icmp ne i32 %i.xs, 0
  call void @llvm.assume(i1 %i.xt)
  %i.xu = add i32 %i.xs, -1                       ; 2 uses
  store i32 %i.xu, ptr %i.wm, align 8, !tbaa !28
  %i.xv = icmp eq i32 %i.xu, 0
  br i1 %i.xv, label %bb.fg, label %.thread687

bb.ez:                                            ; preds = %smart_str_alloc.exit23.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.xw = icmp slt i64 %.0188, 0
  br i1 %i.xw, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  %i.xx = sub i64 0, %.0188
  store i8 0, ptr %i.tk, align 1, !tbaa !12
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fb, %bb.fa
  %.05.i.i401 = phi ptr [ %i.tk, %bb.fa ], [ %i.yb, %bb.fb ] ; 2 uses
  %.0.i25.i = phi i64 [ %i.xx, %bb.fa ], [ %i.yc, %bb.fb ] ; 3 uses
  %i.xy = urem i64 %.0.i25.i, 10
  %i.xz = trunc nuw nsw i64 %i.xy to i8
  %i.ya = or disjoint i8 %i.xz, 48
  %i.yb = getelementptr inbounds i8, ptr %.05.i.i401, i64 -1 ; 2 uses
  store i8 %i.ya, ptr %i.yb, align 1, !tbaa !12
  %i.yc = udiv i64 %.0.i25.i, 10
  %.not.i26.i = icmp ult i64 %.0.i25.i, 10
  br i1 %.not.i26.i, label %zend_print_ulong_to_buf.exit.i402, label %bb.fb, !llvm.loop !113

zend_print_ulong_to_buf.exit.i402:                ; preds = %bb.fb
  %i.yd = getelementptr inbounds i8, ptr %.05.i.i401, i64 -2 ; 2 uses
  store i8 45, ptr %i.yd, align 1, !tbaa !12
  br label %zend_print_long_to_buf.exit.i395

bb.fc:                                            ; preds = %bb.ez
  store i8 0, ptr %i.tk, align 1, !tbaa !12
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fd, %bb.fc
  %.05.i27.i = phi ptr [ %i.tk, %bb.fc ], [ %i.yh, %bb.fd ]
  %.0.i28.i = phi i64 [ %.0188, %bb.fc ], [ %i.yi, %bb.fd ] ; 3 uses
  %i.ye = urem i64 %.0.i28.i, 10
  %i.yf = trunc nuw nsw i64 %i.ye to i8
  %i.yg = or disjoint i8 %i.yf, 48
  %i.yh = getelementptr inbounds i8, ptr %.05.i27.i, i64 -1 ; 3 uses
  store i8 %i.yg, ptr %i.yh, align 1, !tbaa !12
  %i.yi = udiv i64 %.0.i28.i, 10
  %.not.i29.i = icmp ult i64 %.0.i28.i, 10
  br i1 %.not.i29.i, label %zend_print_long_to_buf.exit.i395, label %bb.fd, !llvm.loop !113

zend_print_long_to_buf.exit.i395:                 ; preds = %bb.fd, %zend_print_ulong_to_buf.exit.i402
  %.0.i24.i = phi ptr [ %i.yd, %zend_print_ulong_to_buf.exit.i402 ], [ %i.yh, %bb.fd ] ; 2 uses
  %i.yj = ptrtoint ptr %.0.i24.i to i64
  %i.yk = sub i64 %i.tl, %i.yj                    ; 3 uses
  %i.yl = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i.i.i396 = icmp eq ptr %i.yl, null
  br i1 %.not.i.i.i396, label %bb.ff, label %bb.fe, !prof !35

bb.fe:                                            ; preds = %zend_print_long_to_buf.exit.i395
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.yn = load i64, ptr %i.ym, align 8, !tbaa !26 ; 2 uses
  %i.yo = add i64 %i.yn, %i.yk                    ; 3 uses
  %i.yp = load i64, ptr %i.tj, align 8, !tbaa !112
  %.not12.i.i.i397 = icmp ult i64 %i.yo, %i.yp
  br i1 %.not12.i.i.i397, label %.thread, label %bb.ff, !prof !65

bb.ff:                                            ; preds = %bb.fe, %zend_print_long_to_buf.exit.i395
  %.0.i.i.i398 = phi i64 [ %i.yk, %zend_print_long_to_buf.exit.i395 ], [ %i.yo, %bb.fe ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i.i398) #12, !inline_history !124
  %.pre495 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert496 = getelementptr inbounds nuw i8, ptr %.pre495, i64 16
  %.pre497 = load i64, ptr %.phi.trans.insert496, align 8, !tbaa !26
  br label %.thread

.thread:                                          ; preds = %bb.fe, %bb.ff
  %i.yq = phi i64 [ %i.yn, %bb.fe ], [ %.pre497, %bb.ff ]
  %i.yr = phi ptr [ %i.yl, %bb.fe ], [ %.pre495, %bb.ff ]
  %.1.i.i.i400 = phi i64 [ %i.yo, %bb.fe ], [ %.0.i.i.i398, %bb.ff ]
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 24
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yt, ptr nonnull align 1 %.0.i24.i, i64 %i.yk, i1 false)
  %i.yu = load ptr, ptr %2, align 8, !tbaa !110   ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  store i64 %.1.i.i.i400, ptr %i.yv, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.fh

.thread687:                                       ; preds = %smart_str_appendc_ex.exit39.i, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.fh

bb.fg:                                            ; preds = %bb.ey
  call void @_efree(ptr noundef nonnull %i.wm) #12, !inline_history !124
  %.pr.pre = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %.not.i18.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i18.i, label %bb.fi, label %bb.fh, !prof !126

bb.fh:                                            ; preds = %.thread687, %.thread, %bb.fg
  %i.yw = phi ptr [ %i.yu, %.thread ], [ %.pr.pre, %bb.fg ], [ %i.xn, %.thread687 ] ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %i.yy = load i64, ptr %i.yx, align 8, !tbaa !26 ; 2 uses
  %i.yz = add i64 %i.yy, 4                        ; 3 uses
  %i.za = load i64, ptr %i.tj, align 8, !tbaa !112
  %.not12.i.i391 = icmp ult i64 %i.yz, %i.za
  br i1 %.not12.i.i391, label %smart_str_alloc.exit.i393, label %bb.fi, !prof !65

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.0.i.i392 = phi i64 [ 4, %bb.fg ], [ %i.yz, %bb.fh ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i392) #12, !inline_history !124
  %.pre498 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert499 = getelementptr inbounds nuw i8, ptr %.pre498, i64 16
  %.pre500 = load i64, ptr %.phi.trans.insert499, align 8, !tbaa !26
  br label %smart_str_alloc.exit.i393

smart_str_alloc.exit.i393:                        ; preds = %bb.fi, %bb.fh
  %i.zb = phi i64 [ %i.yy, %bb.fh ], [ %.pre500, %bb.fi ]
  %i.zc = phi ptr [ %i.yw, %bb.fh ], [ %.pre498, %bb.fi ]
  %.1.i.i394 = phi i64 [ %i.yz, %bb.fh ], [ %.0.i.i392, %bb.fi ]
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 24
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.zb
  store i32 540949792, ptr %i.ze, align 1
  %i.zf = load ptr, ptr %2, align 8, !tbaa !110
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  store i64 %.1.i.i394, ptr %i.zg, align 8, !tbaa !26
  %i.zh = call i32 @php_var_export_ex(ptr noundef %.1183, i32 noundef %i.ti, ptr noundef nonnull %2), !inline_history !124 ; 0 uses
  %i.zi = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i.i40.i = icmp eq ptr %i.zi, null
  br i1 %.not.i.i40.i, label %bb.fk, label %bb.fj, !prof !35

bb.fj:                                            ; preds = %smart_str_alloc.exit.i393
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %i.zk = load i64, ptr %i.zj, align 8, !tbaa !26
  %i.zl = add i64 %i.zk, 1                        ; 3 uses
  %i.zm = load i64, ptr %i.tj, align 8, !tbaa !112
  %.not12.i.i41.i = icmp ult i64 %i.zl, %i.zm
  br i1 %.not12.i.i41.i, label %bb.fl, label %bb.fk, !prof !65

bb.fk:                                            ; preds = %bb.fj, %smart_str_alloc.exit.i393
  %.0.i.i42.i = phi i64 [ 1, %smart_str_alloc.exit.i393 ], [ %i.zl, %bb.fj ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i42.i) #12, !inline_history !124
  %.pre501 = load ptr, ptr %2, align 8, !tbaa !110
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  %i.zn = phi ptr [ %i.zi, %bb.fj ], [ %.pre501, %bb.fk ]
  %.1.i.i43.i = phi i64 [ %i.zl, %bb.fj ], [ %.0.i.i42.i, %bb.fk ] ; 3 uses
  %i.zo = getelementptr i8, ptr %i.zn, i64 23
  %i.zp = getelementptr i8, ptr %i.zo, i64 %.1.i.i43.i
  store i8 44, ptr %i.zp, align 1, !tbaa !12
  %i.zq = load ptr, ptr %2, align 8, !tbaa !110   ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  store i64 %.1.i.i43.i, ptr %i.zr, align 8, !tbaa !26
  %i.zs = add i64 %.1.i.i43.i, 1                  ; 4 uses
  %i.zt = load i64, ptr %i.tj, align 8, !tbaa !112
  %.not12.i.i46.i = icmp ult i64 %i.zs, %i.zt
  br i1 %.not12.i.i46.i, label %php_object_element_export.exit, label %bb.fm, !prof !65

bb.fm:                                            ; preds = %bb.fl
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.zs) #12, !inline_history !124
  %.pre502 = load ptr, ptr %2, align 8, !tbaa !110
  br label %php_object_element_export.exit

php_object_element_export.exit:                   ; preds = %bb.fl, %bb.fm
  %i.zu = phi ptr [ %i.zq, %bb.fl ], [ %.pre502, %bb.fm ]
  %i.zv = getelementptr i8, ptr %i.zu, i64 23
  %i.zw = getelementptr i8, ptr %i.zv, i64 %i.zs
  store i8 10, ptr %i.zw, align 1, !tbaa !12
  %i.zx = load ptr, ptr %2, align 8, !tbaa !110
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  store i64 %i.zs, ptr %i.zy, align 8, !tbaa !26
  %i.zz = icmp eq ptr %.1183, %3
  br i1 %i.zz, label %bb.fn, label %.thread418.sink.split

bb.fn:                                            ; preds = %php_object_element_export.exit
  call void @zval_ptr_dtor(ptr noundef %.1183) #12
  br label %.thread418.sink.split

.thread418.sink.split:                            ; preds = %bb.eg, %php_object_element_export.exit, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.thread418

.thread418:                                       ; preds = %.thread418.sink.split, %bb.ed
  %i.aaa = add i32 %.0179448, -1                  ; 2 uses
  %.not220 = icmp eq i32 %i.aaa, 0
  br i1 %.not220, label %.thread413, label %bb.dz, !llvm.loop !127

.thread413:                                       ; preds = %.thread418, %.thread410, %.thread411, %bb.dy
  %i.aab = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !12
  %i.aad = and i32 %i.aac, 64
  %.not.i231 = icmp eq i32 %i.aad, 0
  br i1 %.not.i231, label %bb.fo, label %zend_array_release.exit

bb.fo:                                            ; preds = %.thread413
  %i.aae = load i32, ptr %i.pd, align 4, !tbaa !28 ; 2 uses
  %i.aaf = icmp ne i32 %i.aae, 0
  call void @llvm.assume(i1 %i.aaf)
  %i.aag = add i32 %i.aae, -1                     ; 2 uses
  store i32 %i.aag, ptr %i.pd, align 4, !tbaa !28
  %i.aah = icmp eq i32 %i.aag, 0
  br i1 %i.aah, label %bb.fp, label %zend_array_release.exit

bb.fp:                                            ; preds = %bb.fo
  call void @zend_array_destroy(ptr noundef nonnull %i.pd) #12
  br label %zend_array_release.exit

zend_array_release.exit:                          ; preds = %bb.fp, %bb.fo, %.thread413, %.thread411, %.thread408, %bb.dx
  br i1 %.not, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %zend_array_release.exit
  %i.aai = load i32, ptr %i.oj, align 4, !tbaa !58
  %i.aaj = and i32 %i.aai, -65
  store i32 %i.aaj, ptr %i.oj, align 4, !tbaa !58
  br label %bb.fs

bb.fr:                                            ; preds = %zend_array_release.exit
  %i.aak = getelementptr inbounds nuw i8, ptr %i.oi, i64 4 ; 2 uses
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !12
  %i.aam = and i32 %i.aal, -33
  store i32 %i.aam, ptr %i.aak, align 4, !tbaa !12
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.aan = icmp slt i32 %1, 2
  %or.cond = select i1 %i.aan, i1 true, i1 %i.qm
  br i1 %or.cond, label %bb.fw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  %i.aao = add nsw i32 %1, -1
  %i.aap = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.o, i64 noundef 0, ptr noundef nonnull @.str, i32 noundef %i.aao, i32 noundef 32) #12 ; 3 uses
  %i.aaq = load ptr, ptr %i.o, align 8, !tbaa !99
  %i.aar = load ptr, ptr %2, align 8, !tbaa !110  ; 3 uses
  %.not.i244 = icmp eq ptr %i.aar, null
  br i1 %.not.i244, label %bb.fv, label %bb.fu, !prof !35

bb.fu:                                            ; preds = %bb.ft
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 16
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !26 ; 2 uses
  %i.aau = add i64 %i.aat, %i.aap                 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !112
  %.not12.i245 = icmp ult i64 %i.aau, %i.aaw
  br i1 %.not12.i245, label %smart_str_alloc.exit248, label %bb.fv, !prof !65

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.0.i246 = phi i64 [ %i.aap, %bb.ft ], [ %i.aau, %bb.fu ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i246) #12
  %.pre503 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert504 = getelementptr inbounds nuw i8, ptr %.pre503, i64 16
  %.pre505 = load i64, ptr %.phi.trans.insert504, align 8, !tbaa !26
  br label %smart_str_alloc.exit248

smart_str_alloc.exit248:                          ; preds = %bb.fu, %bb.fv
  %i.aax = phi i64 [ %i.aat, %bb.fu ], [ %.pre505, %bb.fv ]
  %i.aay = phi ptr [ %i.aar, %bb.fu ], [ %.pre503, %bb.fv ]
  %.1.i247 = phi i64 [ %i.aau, %bb.fu ], [ %.0.i246, %bb.fv ]
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 24
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.aax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aba, ptr align 1 %i.aaq, i64 %i.aap, i1 false)
  %i.abb = load ptr, ptr %2, align 8, !tbaa !110
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  store i64 %.1.i247, ptr %i.abc, align 8, !tbaa !26
  %i.abd = load ptr, ptr %i.o, align 8, !tbaa !99
  call void @_efree(ptr noundef %i.abd) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  br label %bb.fw

bb.fw:                                            ; preds = %smart_str_alloc.exit248, %bb.fs
  %i.abe = load ptr, ptr @zend_standard_class_def, align 8, !tbaa !116
  %i.abf = icmp eq ptr %i.qi, %i.abe
  br i1 %i.abf, label %bb.fx, label %bb.ga

bb.fx:                                            ; preds = %bb.fw
  %i.abg = load ptr, ptr %2, align 8, !tbaa !110  ; 3 uses
  %.not.i.i360 = icmp eq ptr %i.abg, null
  br i1 %.not.i.i360, label %bb.fz, label %bb.fy, !prof !35

bb.fy:                                            ; preds = %bb.fx
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.abi = load i64, ptr %i.abh, align 8, !tbaa !26
  %i.abj = add i64 %i.abi, 1                      ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !112
  %.not12.i.i361 = icmp ult i64 %i.abj, %i.abl
  br i1 %.not12.i.i361, label %smart_str_appendc_ex.exit364, label %bb.fz, !prof !65

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.0.i.i362 = phi i64 [ 1, %bb.fx ], [ %i.abj, %bb.fy ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i362) #12
  %.pre509 = load ptr, ptr %2, align 8, !tbaa !110
  br label %smart_str_appendc_ex.exit364

smart_str_appendc_ex.exit364:                     ; preds = %bb.fy, %bb.fz
  %i.abm = phi ptr [ %i.abg, %bb.fy ], [ %.pre509, %bb.fz ]
  %.1.i.i363 = phi i64 [ %i.abj, %bb.fy ], [ %.0.i.i362, %bb.fz ] ; 2 uses
  %i.abn = getelementptr i8, ptr %i.abm, i64 23
  %i.abo = getelementptr i8, ptr %i.abn, i64 %.1.i.i363
  store i8 41, ptr %i.abo, align 1, !tbaa !12
  %i.abp = load ptr, ptr %2, align 8, !tbaa !110
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 16
  store i64 %.1.i.i363, ptr %i.abq, align 8, !tbaa !26
  br label %zend_string_free.exit

bb.ga:                                            ; preds = %bb.fw
  br i1 %i.qm, label %zend_string_free.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.abr = load ptr, ptr %2, align 8, !tbaa !110  ; 3 uses
  %.not.i239 = icmp eq ptr %i.abr, null
  br i1 %.not.i239, label %bb.gd, label %bb.gc, !prof !35

bb.gc:                                            ; preds = %bb.gb
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abt = load i64, ptr %i.abs, align 8, !tbaa !26 ; 2 uses
  %i.abu = add i64 %i.abt, 2                      ; 3 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !112
  %.not12.i240 = icmp ult i64 %i.abu, %i.abw
  br i1 %.not12.i240, label %smart_str_alloc.exit243, label %bb.gd, !prof !65

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.0.i241 = phi i64 [ 2, %bb.gb ], [ %i.abu, %bb.gc ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i241) #12
  %.pre506 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert507 = getelementptr inbounds nuw i8, ptr %.pre506, i64 16
  %.pre508 = load i64, ptr %.phi.trans.insert507, align 8, !tbaa !26
  br label %smart_str_alloc.exit243

smart_str_alloc.exit243:                          ; preds = %bb.gc, %bb.gd
  %i.abx = phi i64 [ %i.abt, %bb.gc ], [ %.pre508, %bb.gd ]
  %i.aby = phi ptr [ %i.abr, %bb.gc ], [ %.pre506, %bb.gd ]
  %.1.i242 = phi i64 [ %i.abu, %bb.gc ], [ %.0.i241, %bb.gd ]
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 24
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 %i.abx
  store i16 10537, ptr %i.aca, align 1
  %i.acb = load ptr, ptr %2, align 8, !tbaa !110
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  store i64 %.1.i242, ptr %i.acc, align 8, !tbaa !26
  br label %zend_string_free.exit

bb.ge:                                            ; preds = %bb.em, %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %zend_string_free.exit

bb.gf:                                            ; preds = %bb.b
  %i.acd = load ptr, ptr %.0176, align 8, !tbaa !12
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  br label %bb.b

bb.gg:                                            ; preds = %bb.b
  %i.acf = load ptr, ptr %2, align 8, !tbaa !110  ; 3 uses
  %.not.i238 = icmp eq ptr %i.acf, null
  br i1 %.not.i238, label %bb.gi, label %bb.gh, !prof !35

bb.gh:                                            ; preds = %bb.gg
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !26 ; 2 uses
  %i.aci = add i64 %i.ach, 4                      ; 3 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !112
  %.not12.i = icmp ult i64 %i.aci, %i.ack
  br i1 %.not12.i, label %smart_str_alloc.exit, label %bb.gi, !prof !65

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.0.i = phi i64 [ 4, %bb.gg ], [ %i.aci, %bb.gh ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i) #12
  %.pre568 = load ptr, ptr %2, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert569 = getelementptr inbounds nuw i8, ptr %.pre568, i64 16
  %.pre570 = load i64, ptr %.phi.trans.insert569, align 8, !tbaa !26
  br label %smart_str_alloc.exit

smart_str_alloc.exit:                             ; preds = %bb.gh, %bb.gi
  %i.acl = phi i64 [ %i.ach, %bb.gh ], [ %.pre570, %bb.gi ]
  %i.acm = phi ptr [ %i.acf, %bb.gh ], [ %.pre568, %bb.gi ]
  %.1.i = phi i64 [ %i.aci, %bb.gh ], [ %.0.i, %bb.gi ]
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 24
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.acl
  store i32 1280070990, ptr %i.aco, align 1
  %i.acp = load ptr, ptr %2, align 8, !tbaa !110
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  store i64 %.1.i, ptr %i.acq, align 8, !tbaa !26
  br label %zend_string_free.exit

zend_string_free.exit:                            ; preds = %smart_str_appendc_ex.exit364, %smart_str_alloc.exit243, %bb.ga, %smart_str_alloc.exit308, %smart_str_alloc.exit303, %smart_str_alloc.exit298, %smart_str_alloc.exit313, %smart_str_append_long_ex.exit318, %bb.x, %smart_str_appendc_ex.exit349, %smart_str_alloc.exit, %zend_string_free.exit237, %bb.aj, %bb.ak, %bb.ge, %.thread428, %bb.ck, %bb.cj, %smart_str_alloc.exit293
  %.14 = phi i32 [ 0, %.thread428 ], [ -1, %bb.ge ], [ 0, %smart_str_alloc.exit293 ], [ -1, %bb.cj ], [ -1, %bb.ck ], [ 0, %smart_str_alloc.exit308 ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %zend_string_free.exit237 ], [ 0, %smart_str_alloc.exit ], [ 0, %smart_str_appendc_ex.exit349 ], [ 0, %bb.x ], [ 0, %smart_str_append_long_ex.exit318 ], [ 0, %smart_str_alloc.exit313 ], [ 0, %smart_str_alloc.exit298 ], [ 0, %smart_str_alloc.exit303 ], [ 0, %bb.ga ], [ 0, %smart_str_alloc.exit243 ], [ 0, %smart_str_appendc_ex.exit364 ]
  ret i32 %.14
}

declare void @smart_str_append_double(ptr noundef, double noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @php_addcslashes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @php_str_to_str(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @zend_error(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @zend_spprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_efree(ptr noundef) local_unnamed_addr #2

declare ptr @zend_read_property_ex(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @zval_ptr_dtor(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @php_var_export(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.smart_str, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = call i32 @php_var_export_ex(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2)
  %i.b = load ptr, ptr %2, align 8, !tbaa !110    ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %smart_str_0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  store i8 0, ptr %i.f, align 1, !tbaa !12
  %.pre3.pre = load ptr, ptr %2, align 8, !tbaa !110
  br label %smart_str_0.exit

smart_str_0.exit:                                 ; preds = %bb.a, %bb.b
  %.pre3 = phi ptr [ null, %bb.a ], [ %.pre3.pre, %bb.b ] ; 3 uses
  %i.g = icmp eq i32 %i.a, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %smart_str_0.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.pre3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.pre3, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %i.k = call i64 @php_output_write(ptr noundef nonnull %i.h, i64 noundef %i.j) #12 ; 0 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !110
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %smart_str_0.exit
  %i.l = phi ptr [ %.pre, %bb.c ], [ %.pre3, %smart_str_0.exit ] ; 5 uses
  %.not.i2 = icmp eq ptr %i.l, null
  br i1 %.not.i2, label %smart_str_free_ex.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !12
  %i.o = and i32 %i.n, 64
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.f, label %smart_str_free_ex.exit

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.l, align 4, !tbaa !28   ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.r, ptr %i.l, align 4, !tbaa !28
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %smart_str_free_ex.exit

bb.g:                                             ; preds = %bb.f
  call void @_efree(ptr noundef nonnull %i.l) #12
  br label %smart_str_free_ex.exit

smart_str_free_ex.exit:                           ; preds = %bb.e, %bb.f, %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define hidden void @zif_var_export(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %2 = alloca %struct.smart_str, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12   ; 2 uses
  %i.d = add i32 %i.c, -3
  %or.cond = icmp ult i32 %i.d, -2
  br i1 %or.cond, label %.thread81, label %bb.b, !prof !129

.thread81:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #12
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = icmp eq i32 %i.c, 1
  br i1 %i.f, label %.critedge, label %bb.c, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i8, ptr %i.g, align 8, !tbaa !12
  switch i8 %i.h, label %zend_parse_arg_bool_ex.exit [
    i8 3, label %.split92.thread
    i8 2, label %.split92.thread.fold.split
  ], !prof !130

.split92.thread.fold.split:                       ; preds = %bb.c
  br label %.split92.thread

.split92.thread:                                  ; preds = %bb.c, %.split92.thread.fold.split
  %storemerge.i = phi i8 [ 1, %bb.c ], [ 0, %.split92.thread.fold.split ]
  store i8 %storemerge.i, ptr %i.a, align 1, !tbaa !128
  br label %.critedge

zend_parse_arg_bool_ex.exit:                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, i32 noundef 2) #12
  %cond.fr71 = freeze i1 %i.j
  br i1 %cond.fr71, label %.critedge, label %bb.d, !prof !131

bb.d:                                             ; preds = %zend_parse_arg_bool_ex.exit, %.thread81
  %.05090 = phi ptr [ null, %.thread81 ], [ %i.i, %zend_parse_arg_bool_ex.exit ]
  %.05289 = phi i32 [ 1, %.thread81 ], [ 9, %zend_parse_arg_bool_ex.exit ]
  %.05388 = phi i32 [ 0, %.thread81 ], [ 2, %zend_parse_arg_bool_ex.exit ] ; 2 uses
  call void @zend_wrong_parameter_error(i32 noundef %.05289, i32 noundef %.05388, ptr noundef null, i32 noundef %.05388, ptr noundef %.05090) #12
  br label %smart_str_free_ex.exit

.critedge:                                        ; preds = %zend_parse_arg_bool_ex.exit, %.split92.thread, %bb.b
  %i.k = call i32 @php_var_export_ex(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull %2)
  %i.l = load ptr, ptr %2, align 8, !tbaa !110    ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %smart_str_0.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !12
  br label %smart_str_0.exit

smart_str_0.exit:                                 ; preds = %.critedge, %bb.e
  %i.q = icmp eq i32 %i.k, -1
  br i1 %i.q, label %bb.f, label %bb.j

bb.f:                                             ; preds = %smart_str_0.exit
end_hunk_1

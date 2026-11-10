Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_ast?download=true
inline.NumInlined: 91
inline.NumDeleted: 13
begin_hunk_0_@zend_ast_destroy:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !47
  %i.ap = and i32 %i.ao, 64
  %.not.i46 = icmp eq i32 %i.ap, 0
  br i1 %.not.i46, label %bb.s, label %zend_string_release_ex.exit47

bb.s:                                             ; preds = %bb.r
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !68 ; 2 uses
  %i.ar = icmp ne i32 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.as, ptr %i.am, align 4, !tbaa !68
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.t, label %zend_string_release_ex.exit47

bb.t:                                             ; preds = %bb.s
  tail call void @_efree(ptr noundef nonnull %i.am) #14
  br label %zend_string_release_ex.exit47

zend_string_release_ex.exit47:                    ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %.03764, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78 ; 5 uses
  %.not43 = icmp eq ptr %i.av, null
  br i1 %.not43, label %zend_string_release_ex.exit, label %bb.u

bb.u:                                             ; preds = %zend_string_release_ex.exit47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !47
  %i.ay = and i32 %i.ax, 64
  %.not.i45 = icmp eq i32 %i.ay, 0
  br i1 %.not.i45, label %bb.v, label %zend_string_release_ex.exit

bb.v:                                             ; preds = %bb.u
  %i.az = load i32, ptr %i.av, align 4, !tbaa !68 ; 2 uses
  %i.ba = icmp ne i32 %i.az, 0
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.bb, ptr %i.av, align 4, !tbaa !68
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.w, label %zend_string_release_ex.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_efree(ptr noundef nonnull %i.av) #14
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.w, %bb.v, %bb.u, %zend_string_release_ex.exit47
  %i.bd = getelementptr inbounds nuw i8, ptr %.03764, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !72
  tail call void @zend_ast_destroy(ptr noundef %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %.03764, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !72
  tail call void @zend_ast_destroy(ptr noundef %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %.03764, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !72
  tail call void @zend_ast_destroy(ptr noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.03764, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !72
  tail call void @zend_ast_destroy(ptr noundef %i.bk)
  br label %.backedge

zval_ptr_dtor_nogc.exit:                          ; preds = %.backedge, %bb.p, %bb.i, %bb.a, %bb.n, %bb.m, %bb.l, %bb.g, %bb.f, %bb.e, %bb.o
  ret void
}

declare void @destroy_op_array(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @zend_ast_ref_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @zend_ast_destroy(ptr noundef nonnull %i.a)
  tail call void @_efree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_ast_apply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.b = and i16 %i.a, 128
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %zend_ast_is_decl.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %.not24 = icmp eq i32 %i.d, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  tail call void %1(ptr noundef nonnull %i.f, ptr noundef %2) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %i.c, align 8, !tbaa !85
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %bb.b, label %.loopexit, !llvm.loop !186

zend_ast_is_decl.exit:                            ; preds = %bb.a
  %i.j = lshr i16 %i.a, 8                         ; 2 uses
  %.not25 = icmp eq i16 %i.j, 0
  br i1 %.not25, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %zend_ast_is_decl.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i16 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %bb.c
  %indvars.iv28 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next29, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv28
  tail call void %1(ptr noundef nonnull %i.l, ptr noundef %2) #14
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !187

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %zend_ast_is_decl.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_ast_export(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
smart_str_alloc.exit8:
  %3 = alloca %struct.smart_str, align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16 ; 3 uses
  call void @smart_str_erealloc(ptr noundef nonnull %3, i64 noundef %i.a) #14
  %i.b = load ptr, ptr %3, align 8, !tbaa !117    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %0, i64 %i.a, i1 false)
  %i.g = load ptr, ptr %3, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.a, ptr %i.h, align 8, !tbaa !64
  call fastcc void @zend_ast_export_ex(ptr noundef %3, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16 ; 3 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !117    ; 3 uses
  %.not.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i3, label %bb.b, label %bb.a, !prof !22

bb.a:                                             ; preds = %smart_str_alloc.exit8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !64   ; 2 uses
  %i.m = add i64 %i.l, %i.i                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !118
  %.not12.i = icmp ult i64 %i.m, %i.o
  br i1 %.not12.i, label %smart_str_0.exit, label %bb.b, !prof !112

bb.b:                                             ; preds = %bb.a, %smart_str_alloc.exit8
  %.0.i = phi i64 [ %i.i, %smart_str_alloc.exit8 ], [ %i.m, %bb.a ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %3, i64 noundef %.0.i) #14
  %.pre = load ptr, ptr %3, align 8, !tbaa !117   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre9 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %smart_str_0.exit

smart_str_0.exit:                                 ; preds = %bb.a, %bb.b
  %i.p = phi i64 [ %i.l, %bb.a ], [ %.pre9, %bb.b ]
  %i.q = phi ptr [ %i.j, %bb.a ], [ %.pre, %bb.b ]
  %.1.i = phi i64 [ %i.m, %bb.a ], [ %.0.i, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %2, i64 %i.i, i1 false)
  %i.t = load ptr, ptr %3, align 8, !tbaa !117    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.1.i
  store i8 0, ptr %i.w, align 1, !tbaa !47
  %i.x = load ptr, ptr %3, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret ptr %i.x
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_ast_export_ex(ptr noundef nonnull %0, ptr noundef %1, i32 noundef range(i32 0, 261) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %.not20872089 = icmp eq ptr %1, null
  br i1 %.not20872089, label %zend_ast_export_list_ex.exit, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 190 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %tailrecurse.backedge
  %.tr18242091 = phi i32 [ %2, %.lr.ph.lr.ph ], [ %.tr1824.be, %tailrecurse.backedge ] ; 6 uses
  %.tr18232090 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %.tr1823.be, %tailrecurse.backedge ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.02088 = phi ptr [ %.tr18232090, %.lr.ph ], [ %.0.be, %.backedge ] ; 169 uses
  %i.b = load i16, ptr %.02088, align 8, !tbaa !70 ; 2 uses
  switch i16 %i.b, label %bb.um [
    i16 64, label %bb.c
    i16 65, label %bb.d
    i16 66, label %bb.g
    i16 2, label %bb.n
    i16 1025, label %bb.tz
    i16 68, label %4
    i16 69, label %4
    i16 72, label %4
    i16 70, label %4
    i16 71, label %bb.bw
    i16 128, label %.loopexit
    i16 131, label %.loopexit
    i16 136, label %.loopexit
    i16 129, label %bb.dl
    i16 130, label %bb.dq
    i16 132, label %bb.dv
    i16 142, label %bb.dv
    i16 133, label %bb.dw
    i16 134, label %bb.dx
    i16 135, label %bb.dx
    i16 148, label %bb.dx
    i16 137, label %bb.dz
    i16 774, label %bb.ee
    i16 139, label %bb.es
    i16 776, label %bb.fa
    i16 141, label %bb.fj
    i16 143, label %bb.fk
    i16 0, label %switch.lookup
    i16 1, label %switch.lookup3915
    i16 256, label %bb.fr
    i16 257, label %bb.fu
    i16 258, label %bb.fv
    i16 259, label %.loopexit1828
    i16 260, label %.loopexit2099
    i16 261, label %switch.lookup3919
    i16 262, label %.loopexit3386
    i16 263, label %.loopexit1829.loopexit
    i16 264, label %.loopexit1829.loopexit3942
    i16 265, label %.loopexit3655
    i16 266, label %bb.fy
    i16 267, label %.loopexit3943
    i16 268, label %switch.lookup3922
    i16 269, label %bb.gg
    i16 270, label %bb.ux
    i16 271, label %bb.gh
    i16 272, label %.loopexit1830.loopexit
    i16 273, label %.loopexit1830
    i16 276, label %bb.vw
    i16 277, label %.loopexit1829
    i16 278, label %bb.gi
    i16 279, label %bb.gj
    i16 280, label %bb.gm
    i16 281, label %.loopexit1831
    i16 282, label %bb.gp
    i16 283, label %bb.gq
    i16 284, label %bb.gr
    i16 285, label %bb.gu
    i16 286, label %bb.gv
    i16 512, label %bb.gw
    i16 513, label %bb.hb
    i16 514, label %bb.hb
    i16 515, label %bb.he
    i16 516, label %bb.hh
    i16 550, label %bb.hs
    i16 3, label %bb.hz
    i16 517, label %bb.ic
    i16 275, label %bb.if
    i16 518, label %.loopexit1832
    i16 519, label %.loopexit2102
    i16 520, label %switch.lookup3926
    i16 531, label %.loopexit3388
    i16 521, label %switch.lookup3930
    i16 522, label %.loopexit3657
    i16 523, label %.loopexit3944
    i16 524, label %bb.un
    i16 525, label %bb.ip
    i16 551, label %bb.iq
    i16 526, label %bb.ir
    i16 527, label %bb.iz
    i16 528, label %bb.jq
    i16 529, label %bb.jt
    i16 274, label %bb.kj
    i16 530, label %bb.kk
    i16 532, label %bb.kl
    i16 533, label %bb.ks
    i16 534, label %bb.kz
    i16 535, label %bb.lg
    i16 536, label %bb.ls
    i16 537, label %bb.lz
    i16 547, label %bb.mj
    i16 548, label %bb.mq
    i16 538, label %bb.na
    i16 1027, label %bb.nl
    i16 775, label %bb.nt
    i16 539, label %bb.nz
    i16 540, label %bb.ok
    i16 541, label %bb.on
    i16 542, label %bb.os
    i16 543, label %bb.pg
    i16 544, label %bb.pg
    i16 549, label %bb.qa
    i16 768, label %bb.qf
    i16 769, label %bb.qf
    i16 770, label %bb.qm
    i16 771, label %bb.qt
    i16 772, label %bb.rk
    i16 773, label %bb.rt
    i16 1536, label %bb.sc
    i16 1026, label %bb.tc
    i16 1024, label %bb.tk
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  tail call fastcc void @zend_ast_export_zval(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %.tr18242091, i32 noundef %3)
  br label %zend_ast_export_list_ex.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64   ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !117    ; 3 uses
  %.not.i.i1377 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1377, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %i.l = add i64 %i.k, %i.h                       ; 3 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1378 = icmp ult i64 %i.l, %i.m
  br i1 %.not12.i.i1378, label %smart_str_appendl.exit1381, label %bb.f, !prof !112

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i1379 = phi i64 [ %i.h, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1379) #14
  %.pre2814 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2815 = getelementptr inbounds nuw i8, ptr %.pre2814, i64 16
  %.pre2816.a = load i64, ptr %.phi.trans.insert2815, align 8, !tbaa !64
  br label %smart_str_appendl.exit1381

smart_str_appendl.exit1381:                       ; preds = %bb.e, %bb.f
  %i.n = phi i64 [ %i.k, %bb.e ], [ %.pre2816.a, %bb.f ]
  %i.o = phi ptr [ %i.i, %bb.e ], [ %.pre2814, %bb.f ]
  %.1.i.i1380 = phi i64 [ %i.l, %bb.e ], [ %.0.i.i1379, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %i.f, i64 %i.h, i1 false)
  %i.r = load ptr, ptr %0, align 8, !tbaa !117
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.1.i.i1380, ptr %i.s, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

bb.g:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %0, align 8, !tbaa !117    ; 3 uses
  %.not.i1362 = icmp eq ptr %i.t, null
  br i1 %.not.i1362, label %bb.i, label %bb.h, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !64   ; 2 uses
  %i.w = add i64 %i.v, 8                          ; 3 uses
  %i.x = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1363 = icmp ult i64 %i.w, %i.x
  br i1 %.not12.i1363, label %bb.j, label %bb.i, !prof !112

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i1364 = phi i64 [ 8, %bb.g ], [ %i.w, %bb.h ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1364) #14
  %.pre2807 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2808 = getelementptr inbounds nuw i8, ptr %.pre2807, i64 16
  %.pre2809.a = load i64, ptr %.phi.trans.insert2808, align 8, !tbaa !64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = phi i64 [ %i.v, %bb.h ], [ %.pre2809.a, %bb.i ]
  %i.z = phi ptr [ %i.t, %bb.h ], [ %.pre2807, %bb.i ]
  %.1.i1365 = phi i64 [ %i.w, %bb.h ], [ %.0.i1364, %bb.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i64 2910858582938315843, ptr %i.ab, align 1
  %i.ac = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.1.i1365, ptr %i.ad, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !198 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.al = add i64 %i.ak, %.1.i1365                ; 4 uses
  %i.am = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1383 = icmp ult i64 %i.al, %i.am
  br i1 %.not12.i.i1383, label %bb.l, label %bb.k, !prof !112

bb.k:                                             ; preds = %bb.j
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.al) #14
  %.pre2810 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2811 = getelementptr inbounds nuw i8, ptr %.pre2810, i64 16
  %.pre2812.a = load i64, ptr %.phi.trans.insert2811, align 8, !tbaa !64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.an = phi i64 [ %.pre2812.a, %bb.k ], [ %.1.i1365, %bb.j ]
  %i.ao = phi ptr [ %.pre2810, %bb.k ], [ %i.ac, %bb.j ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 8 %i.ai, i64 %i.ak, i1 false)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.al, ptr %i.as, align 8, !tbaa !64
  %i.at = add i64 %i.al, 1                        ; 4 uses
  %i.au = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1407 = icmp ult i64 %i.at, %i.au
  br i1 %.not12.i.i1407, label %smart_str_appendc_ex.exit, label %bb.m, !prof !112

bb.m:                                             ; preds = %bb.l
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.at) #14
  %.pre2813.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit

smart_str_appendc_ex.exit:                        ; preds = %bb.l, %bb.m
  %i.av = phi ptr [ %i.ar, %bb.l ], [ %.pre2813.a, %bb.m ]
  %i.aw = getelementptr i8, ptr %i.av, i64 23
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.at
  store i8 41, ptr %i.ax, align 1, !tbaa !47
  %i.ay = load ptr, ptr %0, align 8, !tbaa !117
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.at, ptr %i.az, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

bb.n:                                             ; preds = %bb.b
  %i.ba = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i1372 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1372, label %bb.p, label %bb.o, !prof !22

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !64 ; 2 uses
  %i.bd = add i64 %i.bc, 9                        ; 3 uses
  %i.be = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1373 = icmp ult i64 %i.bd, %i.be
  br i1 %.not12.i.i1373, label %smart_str_appendl.exit1376, label %bb.p, !prof !112

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i1374 = phi i64 [ 9, %bb.n ], [ %i.bd, %bb.o ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1374) #14
  %.pre2804 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2805 = getelementptr inbounds nuw i8, ptr %.pre2804, i64 16
  %.pre2806.a = load i64, ptr %.phi.trans.insert2805, align 8, !tbaa !64
  br label %smart_str_appendl.exit1376

smart_str_appendl.exit1376:                       ; preds = %bb.o, %bb.p
  %i.bf = phi i64 [ %i.bc, %bb.o ], [ %.pre2806.a, %bb.p ]
  %i.bg = phi ptr [ %i.ba, %bb.o ], [ %.pre2804, %bb.p ]
  %.1.i.i1375 = phi i64 [ %i.bd, %bb.o ], [ %.0.i.i1374, %bb.p ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.bi, ptr noundef nonnull align 1 dereferenceable(9) @.str.13, i64 9, i1 false)
  %i.bj = load ptr, ptr %0, align 8, !tbaa !117
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %.1.i.i1375, ptr %i.bk, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

4:                                                ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %5 = icmp eq i16 %i.b, 72
  br i1 %5, label %bb.q, label %bb.u

bb.q:                                             ; preds = %4
  %i.bl = getelementptr inbounds nuw i8, ptr %.02088, i64 2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !76
  %i.bn = and i16 %i.bm, 1
  %.not835 = icmp eq i16 %i.bn, 0
  br i1 %.not835, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i1410 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1410, label %bb.t, label %bb.s, !prof !22

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !64
  %i.br = add i64 %i.bq, 1                        ; 3 uses
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1411 = icmp ult i64 %i.br, %i.bs
  br i1 %.not12.i.i1411, label %smart_str_appendc_ex.exit1414, label %bb.t, !prof !112

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i.i1412 = phi i64 [ 1, %bb.r ], [ %i.br, %bb.s ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1412) #14
  %.pre2748.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1414

smart_str_appendc_ex.exit1414:                    ; preds = %bb.s, %bb.t
  %i.bt = phi ptr [ %i.bo, %bb.s ], [ %.pre2748.a, %bb.t ]
  %.1.i.i1413 = phi i64 [ %i.br, %bb.s ], [ %.0.i.i1412, %bb.t ] ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 23
  %i.bv = getelementptr i8, ptr %i.bu, i64 %.1.i.i1413
  store i8 40, ptr %i.bv, align 1, !tbaa !47
  %i.bw = load ptr, ptr %0, align 8, !tbaa !117
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %.1.i.i1413, ptr %i.bx, align 8, !tbaa !64
  br label %bb.u

bb.u:                                             ; preds = %smart_str_appendc_ex.exit1414, %bb.q, %4
  %i.by = getelementptr inbounds nuw i8, ptr %.02088, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %.02088, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !72 ; 2 uses
  %.not836 = icmp eq ptr %i.ca, null
  br i1 %.not836, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = load i16, ptr %.02088, align 8, !tbaa !70 ; 2 uses
  %i.cc = icmp ne i16 %i.cb, 69
  %i.cd = icmp ne i16 %i.cb, 72
  %spec.select = and i1 %i.cc, %i.cd
  tail call fastcc void @zend_ast_export_attributes(ptr noundef %0, ptr noundef nonnull %i.ca, i32 noundef %3, i1 noundef zeroext %spec.select)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %.02088, i64 12 ; 5 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !77
  tail call fastcc void @zend_ast_export_visibility(ptr noundef %0, i32 noundef %i.cf, i32 noundef 1)
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !77 ; 2 uses
  %i.ch = and i32 %i.cg, 16
  %.not837 = icmp eq i32 %i.ch, 0
  br i1 %.not837, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i1357 = icmp eq ptr %i.ci, null
  br i1 %.not.i1357, label %bb.z, label %bb.y, !prof !22

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !64 ; 2 uses
  %i.cl = add i64 %i.ck, 7                        ; 3 uses
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1358 = icmp ult i64 %i.cl, %i.cm
  br i1 %.not12.i1358, label %smart_str_alloc.exit1361, label %bb.z, !prof !112

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i1359 = phi i64 [ 7, %bb.x ], [ %i.cl, %bb.y ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1359) #14
  %.pre2749.a = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2750.a = getelementptr inbounds nuw i8, ptr %.pre2749.a, i64 16
  %.pre2751.a = load i64, ptr %.phi.trans.insert2750.a, align 8, !tbaa !64
  br label %smart_str_alloc.exit1361

smart_str_alloc.exit1361:                         ; preds = %bb.y, %bb.z
  %i.cn = phi i64 [ %i.ck, %bb.y ], [ %.pre2751.a, %bb.z ]
  %i.co = phi ptr [ %i.ci, %bb.y ], [ %.pre2749.a, %bb.z ]
  %.1.i1360 = phi i64 [ %i.cl, %bb.y ], [ %.0.i1359, %bb.z ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cq, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false)
  %i.cr = load ptr, ptr %0, align 8, !tbaa !117
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 %.1.i1360, ptr %i.cs, align 8, !tbaa !64
  %.pre2752.a = load i32, ptr %i.ce, align 4, !tbaa !77
  br label %bb.aa

bb.aa:                                            ; preds = %smart_str_alloc.exit1361, %bb.w
  %i.ct = phi i32 [ %.pre2752.a, %smart_str_alloc.exit1361 ], [ %i.cg, %bb.w ] ; 2 uses
  %i.cu = and i32 %i.ct, 64
  %.not838 = icmp eq i32 %i.cu, 0
  br i1 %.not838, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i1352 = icmp eq ptr %i.cv, null
  br i1 %.not.i1352, label %bb.ad, label %bb.ac, !prof !22

bb.ac:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !64 ; 2 uses
  %i.cy = add i64 %i.cx, 9                        ; 3 uses
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1353 = icmp ult i64 %i.cy, %i.cz
  br i1 %.not12.i1353, label %smart_str_alloc.exit1356, label %bb.ad, !prof !112

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0.i1354 = phi i64 [ 9, %bb.ab ], [ %i.cy, %bb.ac ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1354) #14
  %.pre2753 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2754 = getelementptr inbounds nuw i8, ptr %.pre2753, i64 16
  %.pre2755.a = load i64, ptr %.phi.trans.insert2754, align 8, !tbaa !64
  br label %smart_str_alloc.exit1356

smart_str_alloc.exit1356:                         ; preds = %bb.ac, %bb.ad
  %i.da = phi i64 [ %i.cx, %bb.ac ], [ %.pre2755.a, %bb.ad ]
  %i.db = phi ptr [ %i.cv, %bb.ac ], [ %.pre2753, %bb.ad ]
  %.1.i1355 = phi i64 [ %i.cy, %bb.ac ], [ %.0.i1354, %bb.ad ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.da
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.dd, ptr noundef nonnull align 1 dereferenceable(9) @.str.15, i64 9, i1 false)
  %i.de = load ptr, ptr %0, align 8, !tbaa !117
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 %.1.i1355, ptr %i.df, align 8, !tbaa !64
  %.pre2756.a = load i32, ptr %i.ce, align 4, !tbaa !77
  br label %bb.ae

bb.ae:                                            ; preds = %smart_str_alloc.exit1356, %bb.aa
  %i.dg = phi i32 [ %.pre2756.a, %smart_str_alloc.exit1356 ], [ %i.ct, %bb.aa ]
  %i.dh = and i32 %i.dg, 32
  %.not839 = icmp eq i32 %i.dh, 0
  br i1 %.not839, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i1347 = icmp eq ptr %i.di, null
  br i1 %.not.i1347, label %bb.ah, label %bb.ag, !prof !22

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !64 ; 2 uses
  %i.dl = add i64 %i.dk, 6                        ; 3 uses
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1348 = icmp ult i64 %i.dl, %i.dm
  br i1 %.not12.i1348, label %smart_str_alloc.exit1351, label %bb.ah, !prof !112

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0.i1349 = phi i64 [ 6, %bb.af ], [ %i.dl, %bb.ag ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1349) #14
  %.pre2757 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2758 = getelementptr inbounds nuw i8, ptr %.pre2757, i64 16
  %.pre2759.a = load i64, ptr %.phi.trans.insert2758, align 8, !tbaa !64
  br label %smart_str_alloc.exit1351

smart_str_alloc.exit1351:                         ; preds = %bb.ag, %bb.ah
  %i.dn = phi i64 [ %i.dk, %bb.ag ], [ %.pre2759.a, %bb.ah ]
  %i.do = phi ptr [ %i.di, %bb.ag ], [ %.pre2757, %bb.ah ]
  %.1.i1350 = phi i64 [ %i.dl, %bb.ag ], [ %.0.i1349, %bb.ah ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.dq, ptr noundef nonnull align 1 dereferenceable(6) @.str.16, i64 6, i1 false)
  %i.dr = load ptr, ptr %0, align 8, !tbaa !117
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 %.1.i1350, ptr %i.ds, align 8, !tbaa !64
  br label %bb.ai

bb.ai:                                            ; preds = %smart_str_alloc.exit1351, %bb.ae
  %i.dt = load i16, ptr %.02088, align 8, !tbaa !75
  %i.du = icmp eq i16 %i.dt, 72
  %i.dv = load ptr, ptr %0, align 8, !tbaa !117   ; 5 uses
  %.not.i1342 = icmp eq ptr %i.dv, null           ; 2 uses
  br i1 %i.du, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not.i1342, label %bb.al, label %bb.ak, !prof !22

bb.ak:                                            ; preds = %bb.aj
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !64 ; 2 uses
  %i.dy = add i64 %i.dx, 2                        ; 3 uses
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1343 = icmp ult i64 %i.dy, %i.dz
  br i1 %.not12.i1343, label %smart_str_alloc.exit1346, label %bb.al, !prof !112

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0.i1344 = phi i64 [ 2, %bb.aj ], [ %i.dy, %bb.ak ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1344) #14
  %.pre2763 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2764 = getelementptr inbounds nuw i8, ptr %.pre2763, i64 16
  %.pre2765.a = load i64, ptr %.phi.trans.insert2764, align 8, !tbaa !64
  br label %smart_str_alloc.exit1346

smart_str_alloc.exit1346:                         ; preds = %bb.ak, %bb.al
  %i.ea = phi i64 [ %i.dx, %bb.ak ], [ %.pre2765.a, %bb.al ]
  %i.eb = phi ptr [ %i.dv, %bb.ak ], [ %.pre2763, %bb.al ]
  %.1.i1345 = phi i64 [ %i.dy, %bb.ak ], [ %.0.i1344, %bb.al ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea
  store i16 28262, ptr %i.ed, align 1
  br label %bb.ap

bb.am:                                            ; preds = %bb.ai
  br i1 %.not.i1342, label %bb.ao, label %bb.an, !prof !22

bb.an:                                            ; preds = %bb.am
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !64 ; 2 uses
  %i.eg = add i64 %i.ef, 9                        ; 3 uses
  %i.eh = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1338 = icmp ult i64 %i.eg, %i.eh
  br i1 %.not12.i1338, label %smart_str_alloc.exit1341, label %bb.ao, !prof !112

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0.i1339 = phi i64 [ 9, %bb.am ], [ %i.eg, %bb.an ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1339) #14
  %.pre2760 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2761 = getelementptr inbounds nuw i8, ptr %.pre2760, i64 16
  %.pre2762.a = load i64, ptr %.phi.trans.insert2761, align 8, !tbaa !64
  br label %smart_str_alloc.exit1341

smart_str_alloc.exit1341:                         ; preds = %bb.an, %bb.ao
  %i.ei = phi i64 [ %i.ef, %bb.an ], [ %.pre2762.a, %bb.ao ]
  %i.ej = phi ptr [ %i.dv, %bb.an ], [ %.pre2760, %bb.ao ]
  %.1.i1340 = phi i64 [ %i.eg, %bb.an ], [ %.0.i1339, %bb.ao ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ei
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.el, ptr noundef nonnull align 1 dereferenceable(9) @.str.18, i64 9, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %smart_str_alloc.exit1341, %smart_str_alloc.exit1346
end_hunk_0
begin_hunk_1_@zend_ast_export_ex:bb.a

bb.ge:                                            ; preds = %bb.gd
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !64
  %i.zb = add i64 %i.za, 1                        ; 3 uses
  %i.zc = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1496 = icmp ult i64 %i.zb, %i.zc
  br i1 %.not12.i.i1496, label %smart_str_appendc_ex.exit1499, label %bb.gf, !prof !112

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.0.i.i1497 = phi i64 [ 1, %bb.gd ], [ %i.zb, %bb.ge ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1497) #14
  %.pre2654 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1499

smart_str_appendc_ex.exit1499:                    ; preds = %bb.ge, %bb.gf
  %i.zd = phi ptr [ %i.yy, %bb.ge ], [ %.pre2654, %bb.gf ]
  %.1.i.i1498 = phi i64 [ %i.zb, %bb.ge ], [ %.0.i.i1497, %bb.gf ] ; 2 uses
  %i.ze = getelementptr i8, ptr %i.zd, i64 23
  %i.zf = getelementptr i8, ptr %i.ze, i64 %.1.i.i1498
  store i8 96, ptr %i.zf, align 1, !tbaa !47
  %i.zg = load ptr, ptr %0, align 8, !tbaa !117
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  store i64 %.1.i.i1498, ptr %i.zh, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

switch.lookup3922:                                ; preds = %bb.b
  %i.zi = getelementptr inbounds nuw i8, ptr %.02088, i64 2
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !71
  %i.zk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.zj, i1 true)
  %i.zl = zext nneg i16 %i.zk to i64
  %switch.gep3923 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.zend_ast_export_ex.4, i64 %i.zl
  %switch.load3924 = load ptr, ptr %switch.gep3923, align 8
  br label %.loopexit1829

bb.gg:                                            ; preds = %bb.b
  %i.zm = getelementptr inbounds nuw i8, ptr %.02088, i64 2
  %i.zn = load i16, ptr %i.zm, align 2, !tbaa !71
  %i.zo = icmp eq i16 %i.zn, 13
  %.str.64..str.65 = select i1 %i.zo, ptr @.str.64, ptr @.str.65
  br label %bb.ux

bb.gh:                                            ; preds = %bb.b
  br label %bb.ux

bb.gi:                                            ; preds = %bb.b
  br label %bb.vw

bb.gj:                                            ; preds = %bb.b
  %i.zp = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_name(ptr noundef %0, ptr noundef %i.zq, i32 noundef 0, i32 noundef %3)
  %i.zr = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i1500 = icmp eq ptr %i.zr, null
  br i1 %.not.i.i1500, label %bb.gl, label %bb.gk, !prof !22

bb.gk:                                            ; preds = %bb.gj
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !64
  %i.zu = add i64 %i.zt, 1                        ; 3 uses
  %i.zv = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1501 = icmp ult i64 %i.zu, %i.zv
  br i1 %.not12.i.i1501, label %smart_str_appendc_ex.exit1504, label %bb.gl, !prof !112

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %.0.i.i1502 = phi i64 [ 1, %bb.gj ], [ %i.zu, %bb.gk ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1502) #14
  %.pre2640.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1504

smart_str_appendc_ex.exit1504:                    ; preds = %bb.gk, %bb.gl
  %i.zw = phi ptr [ %i.zr, %bb.gk ], [ %.pre2640.a, %bb.gl ]
  %.1.i.i1503 = phi i64 [ %i.zu, %bb.gk ], [ %.0.i.i1502, %bb.gl ] ; 2 uses
  %i.zx = getelementptr i8, ptr %i.zw, i64 23
  %i.zy = getelementptr i8, ptr %i.zx, i64 %.1.i.i1503
  store i8 58, ptr %i.zy, align 1, !tbaa !47
  %i.zz = load ptr, ptr %0, align 8, !tbaa !117
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  store i64 %.1.i.i1503, ptr %i.aaa, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

bb.gm:                                            ; preds = %bb.b
  %i.aab = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1505 = icmp eq ptr %i.aab, null
  br i1 %.not.i.i1505, label %bb.go, label %bb.gn, !prof !22

bb.gn:                                            ; preds = %bb.gm
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !64
  %i.aae = add i64 %i.aad, 1                      ; 3 uses
  %i.aaf = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1506 = icmp ult i64 %i.aae, %i.aaf
  br i1 %.not12.i.i1506, label %smart_str_appendc_ex.exit1509, label %bb.go, !prof !112

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.0.i.i1507 = phi i64 [ 1, %bb.gm ], [ %i.aae, %bb.gn ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1507) #14
  %.pre2639 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1509

smart_str_appendc_ex.exit1509:                    ; preds = %bb.gn, %bb.go
  %i.aag = phi ptr [ %i.aab, %bb.gn ], [ %.pre2639, %bb.go ]
  %.1.i.i1508 = phi i64 [ %i.aae, %bb.gn ], [ %.0.i.i1507, %bb.go ] ; 2 uses
  %i.aah = getelementptr i8, ptr %i.aag, i64 23
  %i.aai = getelementptr i8, ptr %i.aah, i64 %.1.i.i1508
  store i8 38, ptr %i.aai, align 1, !tbaa !47
  %i.aaj = load ptr, ptr %0, align 8, !tbaa !117
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  store i64 %.1.i.i1508, ptr %i.aak, align 8, !tbaa !64
  %i.aal = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  br label %.backedge

bb.gp:                                            ; preds = %bb.b
  br label %bb.vw

bb.gq:                                            ; preds = %bb.b
  br label %bb.vw

bb.gr:                                            ; preds = %bb.b
  %i.aam = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i1222 = icmp eq ptr %i.aam, null
  br i1 %.not.i1222, label %bb.gt, label %bb.gs, !prof !22

bb.gs:                                            ; preds = %bb.gr
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !64 ; 2 uses
  %i.aap = add i64 %i.aao, 5                      ; 3 uses
  %i.aaq = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1223 = icmp ult i64 %i.aap, %i.aaq
  br i1 %.not12.i1223, label %smart_str_alloc.exit1226, label %bb.gt, !prof !112

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.0.i1224 = phi i64 [ 5, %bb.gr ], [ %i.aap, %bb.gs ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1224) #14
  %.pre2636 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2637 = getelementptr inbounds nuw i8, ptr %.pre2636, i64 16
  %.pre2638.a = load i64, ptr %.phi.trans.insert2637, align 8, !tbaa !64
  br label %smart_str_alloc.exit1226

smart_str_alloc.exit1226:                         ; preds = %bb.gs, %bb.gt
  %i.aar = phi i64 [ %i.aao, %bb.gs ], [ %.pre2638.a, %bb.gt ]
  %i.aas = phi ptr [ %i.aam, %bb.gs ], [ %.pre2636, %bb.gt ]
  %.1.i1225 = phi i64 [ %i.aap, %bb.gs ], [ %.0.i1224, %bb.gt ]
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 24
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.aar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aau, ptr noundef nonnull align 1 dereferenceable(5) @.str.74, i64 5, i1 false)
  %i.aav = load ptr, ptr %0, align 8, !tbaa !117
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  store i64 %.1.i1225, ptr %i.aaw, align 8, !tbaa !64
  %i.aax = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_name(ptr noundef %0, ptr noundef %i.aay, i32 noundef 0, i32 noundef %3)
  br label %zend_ast_export_list_ex.exit

bb.gu:                                            ; preds = %bb.b
  br label %bb.vw

bb.gv:                                            ; preds = %bb.b
  br label %bb.vw

bb.gw:                                            ; preds = %bb.b
  %i.aaz = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.aba, i32 noundef 260, i32 noundef %3)
  %i.abb = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1510 = icmp eq ptr %i.abb, null
  br i1 %.not.i.i1510, label %bb.gy, label %bb.gx, !prof !22

bb.gx:                                            ; preds = %bb.gw
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !64
  %i.abe = add i64 %i.abd, 1                      ; 3 uses
  %i.abf = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1511 = icmp ult i64 %i.abe, %i.abf
  br i1 %.not12.i.i1511, label %smart_str_appendc_ex.exit1514, label %bb.gy, !prof !112

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.0.i.i1512 = phi i64 [ 1, %bb.gw ], [ %i.abe, %bb.gx ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1512) #14
  %.pre2633.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1514

smart_str_appendc_ex.exit1514:                    ; preds = %bb.gx, %bb.gy
  %i.abg = phi ptr [ %i.abb, %bb.gx ], [ %.pre2633.a, %bb.gy ]
  %.1.i.i1513 = phi i64 [ %i.abe, %bb.gx ], [ %.0.i.i1512, %bb.gy ] ; 2 uses
  %i.abh = getelementptr i8, ptr %i.abg, i64 23
  %i.abi = getelementptr i8, ptr %i.abh, i64 %.1.i.i1513
  store i8 91, ptr %i.abi, align 1, !tbaa !47
  %i.abj = load ptr, ptr %0, align 8, !tbaa !117  ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 16
  store i64 %.1.i.i1513, ptr %i.abk, align 8, !tbaa !64
  %i.abl = getelementptr inbounds nuw i8, ptr %.02088, i64 16
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !72 ; 2 uses
  %.not818 = icmp eq ptr %i.abm, null
  br i1 %.not818, label %.thread3377, label %bb.gz

bb.gz:                                            ; preds = %smart_str_appendc_ex.exit1514
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef nonnull %i.abm, i32 noundef 0, i32 noundef %3)
  %.pre2634.a = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.not.i.i1515 = icmp eq ptr %.pre2634.a, null
  br i1 %.not.i.i1515, label %bb.ha, label %.thread3377, !prof !121

.thread3377:                                      ; preds = %smart_str_appendc_ex.exit1514, %bb.gz
  %i.abn = phi ptr [ %.pre2634.a, %bb.gz ], [ %i.abj, %smart_str_appendc_ex.exit1514 ] ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 16
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !64
  %i.abq = add i64 %i.abp, 1                      ; 3 uses
  %i.abr = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1516 = icmp ult i64 %i.abq, %i.abr
  br i1 %.not12.i.i1516, label %smart_str_appendc_ex.exit1519, label %bb.ha, !prof !112

bb.ha:                                            ; preds = %.thread3377, %bb.gz
  %.0.i.i1517 = phi i64 [ 1, %bb.gz ], [ %i.abq, %.thread3377 ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1517) #14
  %.pre2635.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1519

smart_str_appendc_ex.exit1519:                    ; preds = %.thread3377, %bb.ha
  %i.abs = phi ptr [ %i.abn, %.thread3377 ], [ %.pre2635.a, %bb.ha ]
  %.1.i.i1518 = phi i64 [ %i.abq, %.thread3377 ], [ %.0.i.i1517, %bb.ha ] ; 2 uses
  %i.abt = getelementptr i8, ptr %i.abs, i64 23
  %i.abu = getelementptr i8, ptr %i.abt, i64 %.1.i.i1518
  store i8 93, ptr %i.abu, align 1, !tbaa !47
  %i.abv = load ptr, ptr %0, align 8, !tbaa !117
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  store i64 %.1.i.i1518, ptr %i.abw, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

bb.hb:                                            ; preds = %bb.b, %bb.b
  %i.abx = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.aby, i32 noundef 0, i32 noundef %3)
  %i.abz = load i16, ptr %.02088, align 8, !tbaa !70
  %i.aca = icmp eq i16 %i.abz, 514                ; 2 uses
  %i.acb = select i1 %i.aca, ptr @.str.77, ptr @.str.78
  %i.acc = select i1 %i.aca, i64 3, i64 2         ; 3 uses
  %i.acd = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i1217 = icmp eq ptr %i.acd, null
  br i1 %.not.i1217, label %bb.hd, label %bb.hc, !prof !22

bb.hc:                                            ; preds = %bb.hb
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 16
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !64 ; 2 uses
  %i.acg = add i64 %i.acf, %i.acc                 ; 3 uses
  %i.ach = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1218 = icmp ult i64 %i.acg, %i.ach
  br i1 %.not12.i1218, label %smart_str_alloc.exit1221, label %bb.hd, !prof !112

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %.0.i1219 = phi i64 [ %i.acc, %bb.hb ], [ %i.acg, %bb.hc ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1219) #14
  %.pre2630 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2631.a = getelementptr inbounds nuw i8, ptr %.pre2630, i64 16
  %.pre2632.a = load i64, ptr %.phi.trans.insert2631.a, align 8, !tbaa !64
  br label %smart_str_alloc.exit1221

smart_str_alloc.exit1221:                         ; preds = %bb.hc, %bb.hd
  %i.aci = phi i64 [ %i.acf, %bb.hc ], [ %.pre2632.a, %bb.hd ]
  %i.acj = phi ptr [ %i.acd, %bb.hc ], [ %.pre2630, %bb.hd ]
  %.1.i1220 = phi i64 [ %i.acg, %bb.hc ], [ %.0.i1219, %bb.hd ]
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 24
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 %i.aci
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.acl, ptr noundef nonnull align 1 dereferenceable(2) %i.acb, i64 %i.acc, i1 false)
  %i.acm = load ptr, ptr %0, align 8, !tbaa !117
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 16
  store i64 %.1.i1220, ptr %i.acn, align 8, !tbaa !64
  %i.aco = getelementptr inbounds nuw i8, ptr %.02088, i64 16
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_var(ptr noundef %0, ptr noundef %i.acp, i32 noundef %3)
  br label %zend_ast_export_list_ex.exit

bb.he:                                            ; preds = %bb.b
  %i.acq = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ns_name(ptr noundef %0, ptr noundef %i.acr, i32 noundef %3)
  %i.acs = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i1212 = icmp eq ptr %i.acs, null
  br i1 %.not.i1212, label %bb.hg, label %bb.hf, !prof !22

bb.hf:                                            ; preds = %bb.he
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  %i.acu = load i64, ptr %i.act, align 8, !tbaa !64 ; 2 uses
  %i.acv = add i64 %i.acu, 3                      ; 3 uses
  %i.acw = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1213 = icmp ult i64 %i.acv, %i.acw
  br i1 %.not12.i1213, label %smart_str_alloc.exit1216, label %bb.hg, !prof !112

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %.0.i1214 = phi i64 [ 3, %bb.he ], [ %i.acv, %bb.hf ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1214) #14
  %.pre2627.a = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2628 = getelementptr inbounds nuw i8, ptr %.pre2627.a, i64 16
  %.pre2629.a = load i64, ptr %.phi.trans.insert2628, align 8, !tbaa !64
  br label %smart_str_alloc.exit1216

smart_str_alloc.exit1216:                         ; preds = %bb.hf, %bb.hg
  %i.acx = phi i64 [ %i.acu, %bb.hf ], [ %.pre2629.a, %bb.hg ]
  %i.acy = phi ptr [ %i.acs, %bb.hf ], [ %.pre2627.a, %bb.hg ]
  %.1.i1215 = phi i64 [ %i.acv, %bb.hf ], [ %.0.i1214, %bb.hg ]
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 24
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.acx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ada, ptr noundef nonnull align 1 dereferenceable(3) @.str.79, i64 3, i1 false)
  %i.adb = load ptr, ptr %0, align 8, !tbaa !117
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 16
  store i64 %.1.i1215, ptr %i.adc, align 8, !tbaa !64
  %i.add = getelementptr inbounds nuw i8, ptr %.02088, i64 16
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_var(ptr noundef %0, ptr noundef %i.ade, i32 noundef %3)
  br label %zend_ast_export_list_ex.exit

bb.hh:                                            ; preds = %bb.b
  %i.adf = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !72 ; 3 uses
  %i.adh = load i16, ptr %i.adg, align 8, !tbaa !70
  switch i16 %i.adh, label %bb.hn [
    i16 72, label %bb.hi
    i16 69, label %bb.hi
  ]

bb.hi:                                            ; preds = %bb.hh, %bb.hh
  %i.adi = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1520 = icmp eq ptr %i.adi, null
  br i1 %.not.i.i1520, label %bb.hk, label %bb.hj, !prof !22

bb.hj:                                            ; preds = %bb.hi
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !64
  %i.adl = add i64 %i.adk, 1                      ; 3 uses
  %i.adm = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1521 = icmp ult i64 %i.adl, %i.adm
  br i1 %.not12.i.i1521, label %smart_str_appendc_ex.exit1524, label %bb.hk, !prof !112

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.0.i.i1522 = phi i64 [ 1, %bb.hi ], [ %i.adl, %bb.hj ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1522) #14
  %.pre2620.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1524

smart_str_appendc_ex.exit1524:                    ; preds = %bb.hj, %bb.hk
  %i.adn = phi ptr [ %i.adi, %bb.hj ], [ %.pre2620.a, %bb.hk ]
  %.1.i.i1523 = phi i64 [ %i.adl, %bb.hj ], [ %.0.i.i1522, %bb.hk ] ; 2 uses
  %i.ado = getelementptr i8, ptr %i.adn, i64 23
  %i.adp = getelementptr i8, ptr %i.ado, i64 %.1.i.i1523
  store i8 40, ptr %i.adp, align 1, !tbaa !47
  %i.adq = load ptr, ptr %0, align 8, !tbaa !117
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 16
  store i64 %.1.i.i1523, ptr %i.adr, align 8, !tbaa !64
  tail call fastcc void @zend_ast_export_ns_name(ptr noundef %0, ptr noundef nonnull %i.adg, i32 noundef %3)
  %i.ads = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1525 = icmp eq ptr %i.ads, null
  br i1 %.not.i.i1525, label %bb.hm, label %bb.hl, !prof !22

bb.hl:                                            ; preds = %smart_str_appendc_ex.exit1524
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !64
  %i.adv = add i64 %i.adu, 1                      ; 3 uses
  %i.adw = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1526 = icmp ult i64 %i.adv, %i.adw
  br i1 %.not12.i.i1526, label %.thread1806, label %bb.hm, !prof !112

bb.hm:                                            ; preds = %bb.hl, %smart_str_appendc_ex.exit1524
  %.0.i.i1527 = phi i64 [ 1, %smart_str_appendc_ex.exit1524 ], [ %i.adv, %bb.hl ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1527) #14
  %.pre2621 = load ptr, ptr %0, align 8, !tbaa !117
  br label %.thread1806

.thread1806:                                      ; preds = %bb.hm, %bb.hl
  %i.adx = phi ptr [ %i.ads, %bb.hl ], [ %.pre2621, %bb.hm ]
  %.1.i.i1528 = phi i64 [ %i.adv, %bb.hl ], [ %.0.i.i1527, %bb.hm ] ; 3 uses
  %i.ady = getelementptr i8, ptr %i.adx, i64 23
  %i.adz = getelementptr i8, ptr %i.ady, i64 %.1.i.i1528
  store i8 41, ptr %i.adz, align 1, !tbaa !47
  %i.aea = load ptr, ptr %0, align 8, !tbaa !117  ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  store i64 %.1.i.i1528, ptr %i.aeb, align 8, !tbaa !64
  br label %bb.ho

bb.hn:                                            ; preds = %bb.hh
  tail call fastcc void @zend_ast_export_ns_name(ptr noundef %0, ptr noundef nonnull %i.adg, i32 noundef %3)
  %.pr1805 = load ptr, ptr %0, align 8, !tbaa !117 ; 3 uses
  %.not.i.i1530 = icmp eq ptr %.pr1805, null
  br i1 %.not.i.i1530, label %bb.hp, label %._crit_edge2622, !prof !122

._crit_edge2622:                                  ; preds = %bb.hn
  %.phi.trans.insert2623 = getelementptr inbounds nuw i8, ptr %.pr1805, i64 16
  %.pre2624 = load i64, ptr %.phi.trans.insert2623, align 8, !tbaa !64
  br label %bb.ho

bb.ho:                                            ; preds = %._crit_edge2622, %.thread1806
  %i.aec = phi i64 [ %.1.i.i1528, %.thread1806 ], [ %.pre2624, %._crit_edge2622 ]
  %i.aed = phi ptr [ %i.aea, %.thread1806 ], [ %.pr1805, %._crit_edge2622 ]
  %i.aee = add i64 %i.aec, 1                      ; 3 uses
  %i.aef = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1531 = icmp ult i64 %i.aee, %i.aef
  br i1 %.not12.i.i1531, label %smart_str_appendc_ex.exit1534, label %bb.hp, !prof !112

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.0.i.i1532 = phi i64 [ 1, %bb.hn ], [ %i.aee, %bb.ho ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1532) #14
  %.pre2625.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1534

smart_str_appendc_ex.exit1534:                    ; preds = %bb.ho, %bb.hp
  %i.aeg = phi ptr [ %i.aed, %bb.ho ], [ %.pre2625.a, %bb.hp ]
  %.1.i.i1533 = phi i64 [ %i.aee, %bb.ho ], [ %.0.i.i1532, %bb.hp ] ; 2 uses
  %i.aeh = getelementptr i8, ptr %i.aeg, i64 23
  %i.aei = getelementptr i8, ptr %i.aeh, i64 %.1.i.i1533
  store i8 40, ptr %i.aei, align 1, !tbaa !47
  %i.aej = load ptr, ptr %0, align 8, !tbaa !117
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 16
  store i64 %.1.i.i1533, ptr %i.aek, align 8, !tbaa !64
  %i.ael = getelementptr inbounds nuw i8, ptr %.02088, i64 16
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.aem, i32 noundef 0, i32 noundef %3)
  %i.aen = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1535 = icmp eq ptr %i.aen, null
  br i1 %.not.i.i1535, label %bb.hr, label %bb.hq, !prof !22

bb.hq:                                            ; preds = %smart_str_appendc_ex.exit1534
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %i.aep = load i64, ptr %i.aeo, align 8, !tbaa !64
  %i.aeq = add i64 %i.aep, 1                      ; 3 uses
  %i.aer = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1536 = icmp ult i64 %i.aeq, %i.aer
  br i1 %.not12.i.i1536, label %smart_str_appendc_ex.exit1539, label %bb.hr, !prof !112

bb.hr:                                            ; preds = %bb.hq, %smart_str_appendc_ex.exit1534
  %.0.i.i1537 = phi i64 [ 1, %smart_str_appendc_ex.exit1534 ], [ %i.aeq, %bb.hq ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1537) #14
  %.pre2626.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1539

smart_str_appendc_ex.exit1539:                    ; preds = %bb.hq, %bb.hr
  %i.aes = phi ptr [ %i.aen, %bb.hq ], [ %.pre2626.a, %bb.hr ]
  %.1.i.i1538 = phi i64 [ %i.aeq, %bb.hq ], [ %.0.i.i1537, %bb.hr ] ; 2 uses
  %i.aet = getelementptr i8, ptr %i.aes, i64 23
  %i.aeu = getelementptr i8, ptr %i.aet, i64 %.1.i.i1538
  store i8 41, ptr %i.aeu, align 1, !tbaa !47
  %i.aev = load ptr, ptr %0, align 8, !tbaa !117
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 16
  store i64 %.1.i.i1538, ptr %i.aew, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

bb.hs:                                            ; preds = %bb.b
  %i.aex = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !72
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !47 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 24
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afa, i64 16
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !64 ; 3 uses
  %i.afe = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1386 = icmp eq ptr %i.afe, null
  br i1 %.not.i.i1386, label %bb.hu, label %bb.ht, !prof !22

bb.ht:                                            ; preds = %bb.hs
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !64 ; 2 uses
  %i.afh = add i64 %i.afg, %i.afd                 ; 3 uses
  %i.afi = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1387 = icmp ult i64 %i.afh, %i.afi
  br i1 %.not12.i.i1387, label %bb.hv, label %bb.hu, !prof !112

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %.0.i.i1388 = phi i64 [ %i.afd, %bb.hs ], [ %i.afh, %bb.ht ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1388) #14
  %.pre2615 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2616 = getelementptr inbounds nuw i8, ptr %.pre2615, i64 16
  %.pre2617.a = load i64, ptr %.phi.trans.insert2616, align 8, !tbaa !64
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.afj = phi i64 [ %i.afg, %bb.ht ], [ %.pre2617.a, %bb.hu ]
  %i.afk = phi ptr [ %i.afe, %bb.ht ], [ %.pre2615, %bb.hu ]
  %.1.i.i1389 = phi i64 [ %i.afh, %bb.ht ], [ %.0.i.i1388, %bb.hu ] ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 24
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 %i.afj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.afm, ptr nonnull align 8 %i.afb, i64 %i.afd, i1 false)
  %i.afn = load ptr, ptr %0, align 8, !tbaa !117  ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 16
  store i64 %.1.i.i1389, ptr %i.afo, align 8, !tbaa !64
  %i.afp = add i64 %.1.i.i1389, 1                 ; 4 uses
  %i.afq = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1541 = icmp ult i64 %i.afp, %i.afq
  br i1 %.not12.i.i1541, label %smart_str_appendc_ex.exit1544, label %bb.hw, !prof !112

bb.hw:                                            ; preds = %bb.hv
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.afp) #14
  %.pre2618 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1544

smart_str_appendc_ex.exit1544:                    ; preds = %bb.hv, %bb.hw
  %i.afr = phi ptr [ %i.afn, %bb.hv ], [ %.pre2618, %bb.hw ]
  %i.afs = getelementptr i8, ptr %i.afr, i64 23
  %i.aft = getelementptr i8, ptr %i.afs, i64 %i.afp
  store i8 40, ptr %i.aft, align 1, !tbaa !47
  %i.afu = load ptr, ptr %0, align 8, !tbaa !117
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 16
  store i64 %i.afp, ptr %i.afv, align 8, !tbaa !64
  %i.afw = getelementptr inbounds nuw i8, ptr %.02088, i64 16
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.afx, i32 noundef 0, i32 noundef %3)
  %i.afy = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1545 = icmp eq ptr %i.afy, null
  br i1 %.not.i.i1545, label %bb.hy, label %bb.hx, !prof !22

bb.hx:                                            ; preds = %smart_str_appendc_ex.exit1544
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 16
  %i.aga = load i64, ptr %i.afz, align 8, !tbaa !64
  %i.agb = add i64 %i.aga, 1                      ; 3 uses
  %i.agc = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1546 = icmp ult i64 %i.agb, %i.agc
  br i1 %.not12.i.i1546, label %smart_str_appendc_ex.exit1549, label %bb.hy, !prof !112

bb.hy:                                            ; preds = %bb.hx, %smart_str_appendc_ex.exit1544
  %.0.i.i1547 = phi i64 [ 1, %smart_str_appendc_ex.exit1544 ], [ %i.agb, %bb.hx ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1547) #14
  %.pre2619.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1549

smart_str_appendc_ex.exit1549:                    ; preds = %bb.hx, %bb.hy
  %i.agd = phi ptr [ %i.afy, %bb.hx ], [ %.pre2619.a, %bb.hy ]
  %.1.i.i1548 = phi i64 [ %i.agb, %bb.hx ], [ %.0.i.i1547, %bb.hy ] ; 2 uses
  %i.age = getelementptr i8, ptr %i.agd, i64 23
  %i.agf = getelementptr i8, ptr %i.age, i64 %.1.i.i1548
  store i8 41, ptr %i.agf, align 1, !tbaa !47
  %i.agg = load ptr, ptr %0, align 8, !tbaa !117
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  store i64 %.1.i.i1548, ptr %i.agh, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

bb.hz:                                            ; preds = %bb.b
  %i.agi = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i1207 = icmp eq ptr %i.agi, null
  br i1 %.not.i1207, label %bb.ib, label %bb.ia, !prof !22

bb.ia:                                            ; preds = %bb.hz
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 16
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !64 ; 2 uses
  %i.agl = add i64 %i.agk, 3                      ; 3 uses
  %i.agm = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1208 = icmp ult i64 %i.agl, %i.agm
  br i1 %.not12.i1208, label %smart_str_alloc.exit1211, label %bb.ib, !prof !112

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %.0.i1209 = phi i64 [ 3, %bb.hz ], [ %i.agl, %bb.ia ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1209) #14
  %.pre2612 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2613 = getelementptr inbounds nuw i8, ptr %.pre2612, i64 16
  %.pre2614.a = load i64, ptr %.phi.trans.insert2613, align 8, !tbaa !64
  br label %smart_str_alloc.exit1211

smart_str_alloc.exit1211:                         ; preds = %bb.ia, %bb.ib
  %i.agn = phi i64 [ %i.agk, %bb.ia ], [ %.pre2614.a, %bb.ib ]
  %i.ago = phi ptr [ %i.agi, %bb.ia ], [ %.pre2612, %bb.ib ]
  %.1.i1210 = phi i64 [ %i.agl, %bb.ia ], [ %.0.i1209, %bb.ib ]
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 24
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 %i.agn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.agq, ptr noundef nonnull align 1 dereferenceable(3) @.str.44, i64 3, i1 false)
  %i.agr = load ptr, ptr %0, align 8, !tbaa !117
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 16
  store i64 %.1.i1210, ptr %i.ags, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

bb.ic:                                            ; preds = %bb.b
  %i.agt = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ns_name(ptr noundef %0, ptr noundef %i.agu, i32 noundef %3)
  %i.agv = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i1202 = icmp eq ptr %i.agv, null
  br i1 %.not.i1202, label %bb.ie, label %bb.id, !prof !22

bb.id:                                            ; preds = %bb.ic
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !64 ; 2 uses
  %i.agy = add i64 %i.agx, 2                      ; 3 uses
  %i.agz = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1203 = icmp ult i64 %i.agy, %i.agz
  br i1 %.not12.i1203, label %smart_str_alloc.exit1206, label %bb.ie, !prof !112

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %.0.i1204 = phi i64 [ 2, %bb.ic ], [ %i.agy, %bb.id ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1204) #14
  %.pre2609.a = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2610.a = getelementptr inbounds nuw i8, ptr %.pre2609.a, i64 16
  %.pre2611.a = load i64, ptr %.phi.trans.insert2610.a, align 8, !tbaa !64
  br label %smart_str_alloc.exit1206

smart_str_alloc.exit1206:                         ; preds = %bb.id, %bb.ie
  %i.aha = phi i64 [ %i.agx, %bb.id ], [ %.pre2611.a, %bb.ie ]
  %i.ahb = phi ptr [ %i.agv, %bb.id ], [ %.pre2609.a, %bb.ie ]
  %.1.i1205 = phi i64 [ %i.agy, %bb.id ], [ %.0.i1204, %bb.ie ]
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 24
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 %i.aha
  store i16 14906, ptr %i.ahd, align 1
  %i.ahe = load ptr, ptr %0, align 8, !tbaa !117
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16
  store i64 %.1.i1205, ptr %i.ahf, align 8, !tbaa !64
  %i.ahg = getelementptr inbounds nuw i8, ptr %.02088, i64 16
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_name(ptr noundef %0, ptr noundef %i.ahh, i32 noundef 0, i32 noundef %3)
  br label %zend_ast_export_list_ex.exit

bb.if:                                            ; preds = %bb.b
  %i.ahi = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !72 ; 2 uses
  %i.ahk = icmp eq ptr %i.ahj, null
  br i1 %i.ahk, label %bb.ig, label %bb.in

bb.ig:                                            ; preds = %bb.if
  %i.ahl = getelementptr inbounds nuw i8, ptr %.02088, i64 2
  %i.ahm = load i16, ptr %i.ahl, align 2, !tbaa !71
  %i.ahn = icmp eq i16 %i.ahm, 1
  %i.aho = load ptr, ptr @zend_known_strings, align 8, !tbaa !66 ; 2 uses
  %i.ahp = load ptr, ptr %0, align 8, !tbaa !117  ; 5 uses
  %.not.i.i1391 = icmp eq ptr %i.ahp, null        ; 2 uses
  br i1 %i.ahn, label %bb.ih, label %bb.ik

bb.ih:                                            ; preds = %bb.ig
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.aho, i64 512
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !67 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 24
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahr, i64 16
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i.i1391, label %bb.ij, label %bb.ii, !prof !22

bb.ii:                                            ; preds = %bb.ih
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahp, i64 16
  %i.ahw = load i64, ptr %i.ahv, align 8, !tbaa !64 ; 2 uses
  %i.ahx = add i64 %i.ahw, %i.ahu                 ; 3 uses
  %i.ahy = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1392 = icmp ult i64 %i.ahx, %i.ahy
  br i1 %.not12.i.i1392, label %smart_str_append_ex.exit1395, label %bb.ij, !prof !112

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %.0.i.i1393 = phi i64 [ %i.ahu, %bb.ih ], [ %i.ahx, %bb.ii ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1393) #14
  %.pre2601.a = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2602 = getelementptr inbounds nuw i8, ptr %.pre2601.a, i64 16
  %.pre2603 = load i64, ptr %.phi.trans.insert2602, align 8, !tbaa !64
  br label %smart_str_append_ex.exit1395

smart_str_append_ex.exit1395:                     ; preds = %bb.ii, %bb.ij
  %i.ahz = phi i64 [ %i.ahw, %bb.ii ], [ %.pre2603, %bb.ij ]
  %i.aia = phi ptr [ %i.ahp, %bb.ii ], [ %.pre2601.a, %bb.ij ]
  %.1.i.i1394 = phi i64 [ %i.ahx, %bb.ii ], [ %.0.i.i1393, %bb.ij ] ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 24
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 %i.ahz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aic, ptr nonnull align 8 %i.ahs, i64 %i.ahu, i1 false)
  %i.aid = load ptr, ptr %0, align 8, !tbaa !117  ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  store i64 %.1.i.i1394, ptr %i.aie, align 8, !tbaa !64
  br label %.thread1809

bb.ik:                                            ; preds = %bb.ig
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aho, i64 520
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !67 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 24
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  %i.aij = load i64, ptr %i.aii, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i.i1391, label %bb.im, label %bb.il, !prof !22

bb.il:                                            ; preds = %bb.ik
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahp, i64 16
  %i.ail = load i64, ptr %i.aik, align 8, !tbaa !64 ; 2 uses
  %i.aim = add i64 %i.ail, %i.aij                 ; 3 uses
  %i.ain = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1397 = icmp ult i64 %i.aim, %i.ain
  br i1 %.not12.i.i1397, label %smart_str_append_ex.exit1400, label %bb.im, !prof !112

bb.im:                                            ; preds = %bb.il, %bb.ik
  %.0.i.i1398 = phi i64 [ %i.aij, %bb.ik ], [ %i.aim, %bb.il ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1398) #14
  %.pre2598.a = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2599.a = getelementptr inbounds nuw i8, ptr %.pre2598.a, i64 16
  %.pre2600.a = load i64, ptr %.phi.trans.insert2599.a, align 8, !tbaa !64
  br label %smart_str_append_ex.exit1400

smart_str_append_ex.exit1400:                     ; preds = %bb.il, %bb.im
  %i.aio = phi i64 [ %i.ail, %bb.il ], [ %.pre2600.a, %bb.im ]
  %i.aip = phi ptr [ %i.ahp, %bb.il ], [ %.pre2598.a, %bb.im ]
  %.1.i.i1399 = phi i64 [ %i.aim, %bb.il ], [ %.0.i.i1398, %bb.im ] ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 24
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %i.aio
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.air, ptr nonnull align 8 %i.aih, i64 %i.aij, i1 false)
  %i.ais = load ptr, ptr %0, align 8, !tbaa !117  ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  store i64 %.1.i.i1399, ptr %i.ait, align 8, !tbaa !64
  br label %.thread1809

bb.in:                                            ; preds = %bb.if
  tail call fastcc void @zend_ast_export_ns_name(ptr noundef %0, ptr noundef nonnull %i.ahj, i32 noundef %3)
  %.pr1808 = load ptr, ptr %0, align 8, !tbaa !117 ; 3 uses
  %.not.i1197 = icmp eq ptr %.pr1808, null
  br i1 %.not.i1197, label %bb.io, label %..thread1809_crit_edge, !prof !121

..thread1809_crit_edge:                           ; preds = %bb.in
  %.phi.trans.insert2604 = getelementptr inbounds nuw i8, ptr %.pr1808, i64 16
  %.pre2605.a = load i64, ptr %.phi.trans.insert2604, align 8, !tbaa !64
  br label %.thread1809

.thread1809:                                      ; preds = %..thread1809_crit_edge, %smart_str_append_ex.exit1400, %smart_str_append_ex.exit1395
  %i.aiu = phi i64 [ %.pre2605.a, %..thread1809_crit_edge ], [ %.1.i.i1399, %smart_str_append_ex.exit1400 ], [ %.1.i.i1394, %smart_str_append_ex.exit1395 ] ; 2 uses
  %i.aiv = phi ptr [ %.pr1808, %..thread1809_crit_edge ], [ %i.ais, %smart_str_append_ex.exit1400 ], [ %i.aid, %smart_str_append_ex.exit1395 ]
  %i.aiw = add i64 %i.aiu, 7                      ; 3 uses
  %i.aix = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1198 = icmp ult i64 %i.aiw, %i.aix
  br i1 %.not12.i1198, label %smart_str_alloc.exit1201, label %bb.io, !prof !112

bb.io:                                            ; preds = %.thread1809, %bb.in
  %.0.i1199 = phi i64 [ 7, %bb.in ], [ %i.aiw, %.thread1809 ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1199) #14
  %.pre2606 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2607 = getelementptr inbounds nuw i8, ptr %.pre2606, i64 16
  %.pre2608 = load i64, ptr %.phi.trans.insert2607, align 8, !tbaa !64
  br label %smart_str_alloc.exit1201

smart_str_alloc.exit1201:                         ; preds = %.thread1809, %bb.io
  %i.aiy = phi i64 [ %i.aiu, %.thread1809 ], [ %.pre2608, %bb.io ]
  %i.aiz = phi ptr [ %i.aiv, %.thread1809 ], [ %.pre2606, %bb.io ]
  %.1.i1200 = phi i64 [ %i.aiw, %.thread1809 ], [ %.0.i1199, %bb.io ]
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 24
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 %i.aiy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ajb, ptr noundef nonnull align 1 dereferenceable(7) @.str.81, i64 7, i1 false)
  %i.ajc = load ptr, ptr %0, align 8, !tbaa !117
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 16
  store i64 %.1.i1200, ptr %i.ajd, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

switch.lookup3926:                                ; preds = %bb.b
  %i.aje = getelementptr inbounds nuw i8, ptr %.02088, i64 2
  %i.ajf = load i16, ptr %i.aje, align 2, !tbaa !71
  %i.ajg = sext i16 %i.ajf to i64
  %i.ajh = getelementptr [8 x i8], ptr @switch.table.zend_ast_export_ex.5, i64 %i.ajg
  %switch.gep3927 = getelementptr i8, ptr %i.ajh, i64 -8
  %switch.load3928 = load ptr, ptr %switch.gep3927, align 8
  br label %bb.un

switch.lookup3930:                                ; preds = %bb.b
  %i.aji = getelementptr inbounds nuw i8, ptr %.02088, i64 2
  %i.ajj = load i16, ptr %i.aji, align 2, !tbaa !71
  %switch.tableidx3929 = add nsw i16 %i.ajj, -1   ; 4 uses
  %i.ajk = zext nneg i16 %switch.tableidx3929 to i64
  %switch.gep3931 = getelementptr inbounds nuw i8, ptr @switch.table.zend_ast_export_ex.6, i64 %i.ajk
  %switch.load3932 = load i8, ptr %switch.gep3931, align 1
  %switch.ext = zext i8 %switch.load3932 to i32
  %i.ajl = zext nneg i16 %switch.tableidx3929 to i64
  %switch.gep3933 = getelementptr inbounds nuw i8, ptr @switch.table.zend_ast_export_ex.7, i64 %i.ajl
  %switch.load3934 = load i8, ptr %switch.gep3933, align 1
  %switch.ext3935 = zext i8 %switch.load3934 to i32
  %i.ajm = zext nneg i16 %switch.tableidx3929 to i64
  %switch.gep3936 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.zend_ast_export_ex.8, i64 %i.ajm
  %switch.load3937 = load ptr, ptr %switch.gep3936, align 8
  %i.ajn = zext nneg i16 %switch.tableidx3929 to i64
  %switch.gep3938 = getelementptr inbounds nuw i8, ptr @switch.table.zend_ast_export_ex.9, i64 %i.ajn
  %switch.load3939 = load i8, ptr %switch.gep3938, align 1
  %switch.ext3940 = zext i8 %switch.load3939 to i32
  br label %bb.un

bb.ip:                                            ; preds = %bb.b
  br label %bb.un

bb.iq:                                            ; preds = %bb.b
  br label %bb.un

bb.ir:                                            ; preds = %bb.b
  %i.ajo = getelementptr inbounds nuw i8, ptr %.02088, i64 8 ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.02088, i64 16
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !72 ; 2 uses
  %.not816 = icmp eq ptr %i.ajq, null
  br i1 %.not816, label %bb.iv, label %bb.is

bb.is:                                            ; preds = %bb.ir
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef nonnull %i.ajq, i32 noundef 80, i32 noundef %3)
  %i.ajr = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i1192 = icmp eq ptr %i.ajr, null
  br i1 %.not.i1192, label %bb.iu, label %bb.it, !prof !22

bb.it:                                            ; preds = %bb.is
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 16
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !64 ; 2 uses
  %i.aju = add i64 %i.ajt, 4                      ; 3 uses
  %i.ajv = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1193 = icmp ult i64 %i.aju, %i.ajv
  br i1 %.not12.i1193, label %smart_str_alloc.exit1196, label %bb.iu, !prof !112

bb.iu:                                            ; preds = %bb.it, %bb.is
  %.0.i1194 = phi i64 [ 4, %bb.is ], [ %i.aju, %bb.it ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1194) #14
  %.pre2586.a = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2587 = getelementptr inbounds nuw i8, ptr %.pre2586.a, i64 16
  %.pre2588.a = load i64, ptr %.phi.trans.insert2587, align 8, !tbaa !64
  br label %smart_str_alloc.exit1196

smart_str_alloc.exit1196:                         ; preds = %bb.it, %bb.iu
  %i.ajw = phi i64 [ %i.ajt, %bb.it ], [ %.pre2588.a, %bb.iu ]
  %i.ajx = phi ptr [ %i.ajr, %bb.it ], [ %.pre2586.a, %bb.iu ]
  %.1.i1195 = phi i64 [ %i.aju, %bb.it ], [ %.0.i1194, %bb.iu ]
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 24
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 %i.ajw
  store i32 540949792, ptr %i.ajz, align 1
  %i.aka = load ptr, ptr %0, align 8, !tbaa !117
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 16
  store i64 %.1.i1195, ptr %i.akb, align 8, !tbaa !64
  br label %bb.iv

bb.iv:                                            ; preds = %smart_str_alloc.exit1196, %bb.ir
  %i.akc = getelementptr inbounds nuw i8, ptr %.02088, i64 2
  %i.akd = load i16, ptr %i.akc, align 2, !tbaa !71
  %.not817 = icmp eq i16 %i.akd, 0
  br i1 %.not817, label %tailrecurse.backedge, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.ake = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1550 = icmp eq ptr %i.ake, null
  br i1 %.not.i.i1550, label %bb.iy, label %bb.ix, !prof !22

bb.ix:                                            ; preds = %bb.iw
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 16
  %i.akg = load i64, ptr %i.akf, align 8, !tbaa !64
  %i.akh = add i64 %i.akg, 1                      ; 3 uses
  %i.aki = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1551 = icmp ult i64 %i.akh, %i.aki
  br i1 %.not12.i.i1551, label %smart_str_appendc_ex.exit1554, label %bb.iy, !prof !112

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %.0.i.i1552 = phi i64 [ 1, %bb.iw ], [ %i.akh, %bb.ix ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1552) #14
  %.pre2589.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1554

smart_str_appendc_ex.exit1554:                    ; preds = %bb.ix, %bb.iy
  %i.akj = phi ptr [ %i.ake, %bb.ix ], [ %.pre2589.a, %bb.iy ]
  %.1.i.i1553 = phi i64 [ %i.akh, %bb.ix ], [ %.0.i.i1552, %bb.iy ] ; 2 uses
  %i.akk = getelementptr i8, ptr %i.akj, i64 23
  %i.akl = getelementptr i8, ptr %i.akk, i64 %.1.i.i1553
  store i8 38, ptr %i.akl, align 1, !tbaa !47
  %i.akm = load ptr, ptr %0, align 8, !tbaa !117
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 16
  store i64 %.1.i.i1553, ptr %i.akn, align 8, !tbaa !64
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.iv, %smart_str_appendc_ex.exit1554, %smart_str_alloc.exit1051, %smart_str_alloc.exit931, %smart_str_alloc.exit861, %smart_str_alloc.exit856
  %.tr1823.be.in = phi ptr [ %i.cjk, %smart_str_alloc.exit856 ], [ %i.bho, %smart_str_alloc.exit1051 ], [ %i.bzt, %smart_str_alloc.exit931 ], [ %i.chr, %smart_str_alloc.exit861 ], [ %i.ajo, %smart_str_appendc_ex.exit1554 ], [ %i.ajo, %bb.iv ]
  %.tr1824.be = phi i32 [ %.1755, %smart_str_alloc.exit856 ], [ 0, %smart_str_alloc.exit1051 ], [ 0, %smart_str_alloc.exit931 ], [ %.0753, %smart_str_alloc.exit861 ], [ 80, %smart_str_appendc_ex.exit1554 ], [ 80, %bb.iv ]
  %.tr1823.be = load ptr, ptr %.tr1823.be.in, align 8, !tbaa !72 ; 2 uses
  %.not2087 = icmp eq ptr %.tr1823.be, null
  br i1 %.not2087, label %zend_ast_export_list_ex.exit, label %.lr.ph

bb.iz:                                            ; preds = %bb.b
  %i.ako = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i1187 = icmp eq ptr %i.ako, null
  br i1 %.not.i1187, label %bb.jb, label %bb.ja, !prof !22

bb.ja:                                            ; preds = %bb.iz
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 16
  %i.akq = load i64, ptr %i.akp, align 8, !tbaa !64 ; 2 uses
  %i.akr = add i64 %i.akq, 4                      ; 3 uses
  %i.aks = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1188 = icmp ult i64 %i.akr, %i.aks
  br i1 %.not12.i1188, label %smart_str_alloc.exit1191, label %bb.jb, !prof !112

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %.0.i1189 = phi i64 [ 4, %bb.iz ], [ %i.akr, %bb.ja ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1189) #14
  %.pre2575.a = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2576.a = getelementptr inbounds nuw i8, ptr %.pre2575.a, i64 16
  %.pre2577.a = load i64, ptr %.phi.trans.insert2576.a, align 8, !tbaa !64
  br label %smart_str_alloc.exit1191

smart_str_alloc.exit1191:                         ; preds = %bb.ja, %bb.jb
  %i.akt = phi i64 [ %i.akq, %bb.ja ], [ %.pre2577.a, %bb.jb ]
  %i.aku = phi ptr [ %i.ako, %bb.ja ], [ %.pre2575.a, %bb.jb ]
  %.1.i1190 = phi i64 [ %i.akr, %bb.ja ], [ %.0.i1189, %bb.jb ]
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 24
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 %i.akt
  store i32 544695662, ptr %i.akw, align 1
  %i.akx = load ptr, ptr %0, align 8, !tbaa !117  ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 16
  store i64 %.1.i1190, ptr %i.aky, align 8, !tbaa !64
  %i.akz = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !72 ; 4 uses
  %i.alb = load i16, ptr %i.ala, align 8, !tbaa !70
  %i.alc = icmp eq i16 %i.alb, 71
  br i1 %i.alc, label %bb.jc, label %bb.jl

bb.jc:                                            ; preds = %smart_str_alloc.exit1191
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ala, i64 56
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !72 ; 2 uses
  %.not814 = icmp eq ptr %i.ale, null
  br i1 %.not814, label %.thread3379, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  tail call fastcc void @zend_ast_export_attributes(ptr noundef %0, ptr noundef nonnull %i.ale, i32 noundef %3, i1 noundef zeroext false)
  %.pre2580.a = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.not.i1182 = icmp eq ptr %.pre2580.a, null
  br i1 %.not.i1182, label %bb.je, label %.thread3379, !prof !199

.thread3379:                                      ; preds = %bb.jc, %bb.jd
  %i.alf = phi ptr [ %.pre2580.a, %bb.jd ], [ %i.akx, %bb.jc ] ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  %i.alh = load i64, ptr %i.alg, align 8, !tbaa !64 ; 2 uses
  %i.ali = add i64 %i.alh, 5                      ; 3 uses
  %i.alj = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1183 = icmp ult i64 %i.ali, %i.alj
  br i1 %.not12.i1183, label %smart_str_alloc.exit1186, label %bb.je, !prof !112

bb.je:                                            ; preds = %.thread3379, %bb.jd
  %.0.i1184 = phi i64 [ 5, %bb.jd ], [ %i.ali, %.thread3379 ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1184) #14
  %.pre2581 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2582 = getelementptr inbounds nuw i8, ptr %.pre2581, i64 16
  %.pre2583 = load i64, ptr %.phi.trans.insert2582, align 8, !tbaa !64
  br label %smart_str_alloc.exit1186

smart_str_alloc.exit1186:                         ; preds = %.thread3379, %bb.je
  %i.alk = phi i64 [ %i.alh, %.thread3379 ], [ %.pre2583, %bb.je ]
  %i.all = phi ptr [ %i.alf, %.thread3379 ], [ %.pre2581, %bb.je ]
  %.1.i1185 = phi i64 [ %i.ali, %.thread3379 ], [ %.0.i1184, %bb.je ] ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 24
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 %i.alk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aln, ptr noundef nonnull align 1 dereferenceable(5) @.str.123, i64 5, i1 false)
  %i.alo = load ptr, ptr %0, align 8, !tbaa !117  ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 16
  store i64 %.1.i1185, ptr %i.alp, align 8, !tbaa !64
  %i.alq = getelementptr inbounds nuw i8, ptr %.02088, i64 16 ; 2 uses
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !72 ; 2 uses
  %i.als = load i16, ptr %i.alr, align 8, !tbaa !70
  %i.alt = and i16 %i.als, 128
  %.not1821 = icmp eq i16 %i.alt, 0
  br i1 %.not1821, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %smart_str_alloc.exit1186
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  %i.alv = load i32, ptr %i.alu, align 8, !tbaa !85
  %.not815 = icmp eq i32 %i.alv, 0
  br i1 %.not815, label %bb.jk, label %bb.jg

bb.jg:                                            ; preds = %smart_str_alloc.exit1186, %bb.jf
  %i.alw = add i64 %.1.i1185, 1                   ; 4 uses
  %i.alx = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1556 = icmp ult i64 %i.alw, %i.alx
  br i1 %.not12.i.i1556, label %smart_str_appendc_ex.exit1559, label %bb.jh, !prof !112

bb.jh:                                            ; preds = %bb.jg
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.alw) #14
  %.pre2584 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1559

smart_str_appendc_ex.exit1559:                    ; preds = %bb.jg, %bb.jh
  %i.aly = phi ptr [ %i.alo, %bb.jg ], [ %.pre2584, %bb.jh ]
  %i.alz = getelementptr i8, ptr %i.aly, i64 23
  %i.ama = getelementptr i8, ptr %i.alz, i64 %i.alw
  store i8 40, ptr %i.ama, align 1, !tbaa !47
  %i.amb = load ptr, ptr %0, align 8, !tbaa !117
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 16
  store i64 %i.alw, ptr %i.amc, align 8, !tbaa !64
  %i.amd = load ptr, ptr %i.alq, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.amd, i32 noundef 0, i32 noundef %3)
  %i.ame = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1560 = icmp eq ptr %i.ame, null
  br i1 %.not.i.i1560, label %bb.jj, label %bb.ji, !prof !22

bb.ji:                                            ; preds = %smart_str_appendc_ex.exit1559
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 16
  %i.amg = load i64, ptr %i.amf, align 8, !tbaa !64
  %i.amh = add i64 %i.amg, 1                      ; 3 uses
  %i.ami = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1561 = icmp ult i64 %i.amh, %i.ami
  br i1 %.not12.i.i1561, label %smart_str_appendc_ex.exit1564, label %bb.jj, !prof !112

bb.jj:                                            ; preds = %bb.ji, %smart_str_appendc_ex.exit1559
  %.0.i.i1562 = phi i64 [ 1, %smart_str_appendc_ex.exit1559 ], [ %i.amh, %bb.ji ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1562) #14
  %.pre2585 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1564

smart_str_appendc_ex.exit1564:                    ; preds = %bb.ji, %bb.jj
  %i.amj = phi ptr [ %i.ame, %bb.ji ], [ %.pre2585, %bb.jj ]
  %.1.i.i1563 = phi i64 [ %i.amh, %bb.ji ], [ %.0.i.i1562, %bb.jj ] ; 2 uses
  %i.amk = getelementptr i8, ptr %i.amj, i64 23
  %i.aml = getelementptr i8, ptr %i.amk, i64 %.1.i.i1563
  store i8 41, ptr %i.aml, align 1, !tbaa !47
  %i.amm = load ptr, ptr %0, align 8, !tbaa !117
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 16
  store i64 %.1.i.i1563, ptr %i.amn, align 8, !tbaa !64
  br label %bb.jk

bb.jk:                                            ; preds = %smart_str_appendc_ex.exit1564, %bb.jf
  tail call fastcc void @zend_ast_export_class_no_header(ptr noundef %0, ptr noundef nonnull %i.ala, i32 noundef %3)
  br label %zend_ast_export_list_ex.exit

bb.jl:                                            ; preds = %smart_str_alloc.exit1191
  tail call fastcc void @zend_ast_export_ns_name(ptr noundef %0, ptr noundef nonnull %i.ala, i32 noundef %3)
  %i.amo = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1565 = icmp eq ptr %i.amo, null
  br i1 %.not.i.i1565, label %bb.jn, label %bb.jm, !prof !22

bb.jm:                                            ; preds = %bb.jl
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !64
  %i.amr = add i64 %i.amq, 1                      ; 3 uses
  %i.ams = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1566 = icmp ult i64 %i.amr, %i.ams
  br i1 %.not12.i.i1566, label %smart_str_appendc_ex.exit1569, label %bb.jn, !prof !112

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  %.0.i.i1567 = phi i64 [ 1, %bb.jl ], [ %i.amr, %bb.jm ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1567) #14
  %.pre2578.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1569

smart_str_appendc_ex.exit1569:                    ; preds = %bb.jm, %bb.jn
  %i.amt = phi ptr [ %i.amo, %bb.jm ], [ %.pre2578.a, %bb.jn ]
  %.1.i.i1568 = phi i64 [ %i.amr, %bb.jm ], [ %.0.i.i1567, %bb.jn ] ; 2 uses
  %i.amu = getelementptr i8, ptr %i.amt, i64 23
  %i.amv = getelementptr i8, ptr %i.amu, i64 %.1.i.i1568
  store i8 40, ptr %i.amv, align 1, !tbaa !47
  %i.amw = load ptr, ptr %0, align 8, !tbaa !117
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 16
  store i64 %.1.i.i1568, ptr %i.amx, align 8, !tbaa !64
  %i.amy = getelementptr inbounds nuw i8, ptr %.02088, i64 16
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.amz, i32 noundef 0, i32 noundef %3)
  %i.ana = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1570 = icmp eq ptr %i.ana, null
  br i1 %.not.i.i1570, label %bb.jp, label %bb.jo, !prof !22

bb.jo:                                            ; preds = %smart_str_appendc_ex.exit1569
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %i.anc = load i64, ptr %i.anb, align 8, !tbaa !64
  %i.and = add i64 %i.anc, 1                      ; 3 uses
  %i.ane = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1571 = icmp ult i64 %i.and, %i.ane
  br i1 %.not12.i.i1571, label %smart_str_appendc_ex.exit1574, label %bb.jp, !prof !112

bb.jp:                                            ; preds = %bb.jo, %smart_str_appendc_ex.exit1569
  %.0.i.i1572 = phi i64 [ 1, %smart_str_appendc_ex.exit1569 ], [ %i.and, %bb.jo ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1572) #14
  %.pre2579.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1574

smart_str_appendc_ex.exit1574:                    ; preds = %bb.jo, %bb.jp
  %i.anf = phi ptr [ %i.ana, %bb.jo ], [ %.pre2579.a, %bb.jp ]
  %.1.i.i1573 = phi i64 [ %i.and, %bb.jo ], [ %.0.i.i1572, %bb.jp ] ; 2 uses
  %i.ang = getelementptr i8, ptr %i.anf, i64 23
  %i.anh = getelementptr i8, ptr %i.ang, i64 %.1.i.i1573
  store i8 41, ptr %i.anh, align 1, !tbaa !47
  %i.ani = load ptr, ptr %0, align 8, !tbaa !117
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 16
  store i64 %.1.i.i1573, ptr %i.anj, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

bb.jq:                                            ; preds = %bb.b
  %i.ank = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.anl, i32 noundef 0, i32 noundef %3)
  %i.anm = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i1177 = icmp eq ptr %i.anm, null
  br i1 %.not.i1177, label %bb.js, label %bb.jr, !prof !22

bb.jr:                                            ; preds = %bb.jq
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 16
  %i.ano = load i64, ptr %i.ann, align 8, !tbaa !64 ; 2 uses
  %i.anp = add i64 %i.ano, 12                     ; 3 uses
  %i.anq = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1178 = icmp ult i64 %i.anp, %i.anq
  br i1 %.not12.i1178, label %smart_str_alloc.exit1181, label %bb.js, !prof !112

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %.0.i1179 = phi i64 [ 12, %bb.jq ], [ %i.anp, %bb.jr ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1179) #14
  %.pre2572.a = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2573.a = getelementptr inbounds nuw i8, ptr %.pre2572.a, i64 16
  %.pre2574.a = load i64, ptr %.phi.trans.insert2573.a, align 8, !tbaa !64
  br label %smart_str_alloc.exit1181

smart_str_alloc.exit1181:                         ; preds = %bb.jr, %bb.js
  %i.anr = phi i64 [ %i.ano, %bb.jr ], [ %.pre2574.a, %bb.js ]
  %i.ans = phi ptr [ %i.anm, %bb.jr ], [ %.pre2572.a, %bb.js ]
  %.1.i1180 = phi i64 [ %i.anp, %bb.jr ], [ %.0.i1179, %bb.js ]
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 24
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.anr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.anu, ptr noundef nonnull align 1 dereferenceable(12) @.str.124, i64 12, i1 false)
  %i.anv = load ptr, ptr %0, align 8, !tbaa !117
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 16
  store i64 %.1.i1180, ptr %i.anw, align 8, !tbaa !64
  %i.anx = getelementptr inbounds nuw i8, ptr %.02088, i64 16
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ns_name(ptr noundef %0, ptr noundef %i.any, i32 noundef %3)
  br label %zend_ast_export_list_ex.exit

bb.jt:                                            ; preds = %bb.b
  %i.anz = icmp samesign ugt i32 %.tr18242091, 70 ; 2 uses
  %i.aoa = load ptr, ptr %0, align 8, !tbaa !117  ; 5 uses
  %.not.i.i1575 = icmp eq ptr %i.aoa, null        ; 2 uses
  br i1 %i.anz, label %bb.ju, label %bb.jx
end_hunk_1
begin_hunk_2_@zend_ast_export_ex:bb.a
  %.pre2395 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2396 = getelementptr inbounds nuw i8, ptr %.pre2395, i64 16
  %.pre2397 = load i64, ptr %.phi.trans.insert2396, align 8, !tbaa !64
  br label %smart_str_alloc.exit941

smart_str_alloc.exit941:                          ; preds = %bb.sy, %bb.sz
  %i.byv = phi i64 [ %i.bys, %bb.sy ], [ %.pre2397, %bb.sz ]
  %i.byw = phi ptr [ %i.byq, %bb.sy ], [ %.pre2395, %bb.sz ]
  %.1.i940 = phi i64 [ %i.byt, %bb.sy ], [ %.0.i939, %bb.sz ]
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byw, i64 24
  %i.byy = getelementptr inbounds nuw i8, ptr %i.byx, i64 %i.byv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.byy, ptr noundef nonnull align 1 dereferenceable(3) @.str.82, i64 3, i1 false)
  %i.byz = load ptr, ptr %0, align 8, !tbaa !117
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byz, i64 16
  store i64 %.1.i940, ptr %i.bza, align 8, !tbaa !64
  %i.bzb = load ptr, ptr %i.byo, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.bzb, i32 noundef 0, i32 noundef %3)
  br label %bb.ta

bb.ta:                                            ; preds = %smart_str_alloc.exit941, %smart_str_appendc_ex.exit1704
  %i.bzc = getelementptr inbounds nuw i8, ptr %.02088, i64 48
  %i.bzd = load ptr, ptr %i.bzc, align 8, !tbaa !72 ; 2 uses
  %.not792 = icmp eq ptr %i.bzd, null
  br i1 %.not792, label %zend_ast_export_list_ex.exit, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  tail call fastcc void @zend_ast_export_hook_list(ptr noundef %0, ptr noundef nonnull %i.bzd, i32 noundef %3)
  br label %zend_ast_export_list_ex.exit

bb.tc:                                            ; preds = %bb.b
  %i.bze = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.bzf = getelementptr inbounds nuw i8, ptr %.02088, i64 32
  %i.bzg = load ptr, ptr %i.bzf, align 8, !tbaa !72 ; 2 uses
  %.not784 = icmp eq ptr %i.bzg, null
  br i1 %.not784, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  tail call fastcc void @zend_ast_export_attributes(ptr noundef %0, ptr noundef nonnull %i.bzg, i32 noundef %3, i1 noundef zeroext true)
  br label %bb.te

bb.te:                                            ; preds = %bb.td, %bb.tc
  %i.bzh = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i932 = icmp eq ptr %i.bzh, null
  br i1 %.not.i932, label %bb.tg, label %bb.tf, !prof !22

bb.tf:                                            ; preds = %bb.te
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bzh, i64 16
  %i.bzj = load i64, ptr %i.bzi, align 8, !tbaa !64 ; 2 uses
  %i.bzk = add i64 %i.bzj, 5                      ; 3 uses
  %i.bzl = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i933 = icmp ult i64 %i.bzk, %i.bzl
  br i1 %.not12.i933, label %smart_str_alloc.exit936, label %bb.tg, !prof !112

bb.tg:                                            ; preds = %bb.tf, %bb.te
  %.0.i934 = phi i64 [ 5, %bb.te ], [ %i.bzk, %bb.tf ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i934) #14
  %.pre2377 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2378 = getelementptr inbounds nuw i8, ptr %.pre2377, i64 16
  %.pre2379 = load i64, ptr %.phi.trans.insert2378, align 8, !tbaa !64
  br label %smart_str_alloc.exit936

smart_str_alloc.exit936:                          ; preds = %bb.tf, %bb.tg
  %i.bzm = phi i64 [ %i.bzj, %bb.tf ], [ %.pre2379, %bb.tg ]
  %i.bzn = phi ptr [ %i.bzh, %bb.tf ], [ %.pre2377, %bb.tg ]
  %.1.i935 = phi i64 [ %i.bzk, %bb.tf ], [ %.0.i934, %bb.tg ]
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzn, i64 24
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bzo, i64 %i.bzm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bzp, ptr noundef nonnull align 1 dereferenceable(5) @.str.136, i64 5, i1 false)
  %i.bzq = load ptr, ptr %0, align 8, !tbaa !117
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.bzq, i64 16
  store i64 %.1.i935, ptr %i.bzr, align 8, !tbaa !64
  %i.bzs = load ptr, ptr %i.bze, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_name(ptr noundef %0, ptr noundef %i.bzs, i32 noundef 0, i32 noundef %3)
  %i.bzt = getelementptr inbounds nuw i8, ptr %.02088, i64 16 ; 2 uses
  %i.bzu = load ptr, ptr %i.bzt, align 8, !tbaa !72
  %.not785 = icmp eq ptr %i.bzu, null
  br i1 %.not785, label %zend_ast_export_list_ex.exit, label %bb.th

bb.th:                                            ; preds = %smart_str_alloc.exit936
  %i.bzv = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i927 = icmp eq ptr %i.bzv, null
  br i1 %.not.i927, label %bb.tj, label %bb.ti, !prof !22

bb.ti:                                            ; preds = %bb.th
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.bzv, i64 16
  %i.bzx = load i64, ptr %i.bzw, align 8, !tbaa !64 ; 2 uses
  %i.bzy = add i64 %i.bzx, 3                      ; 3 uses
  %i.bzz = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i928 = icmp ult i64 %i.bzy, %i.bzz
  br i1 %.not12.i928, label %smart_str_alloc.exit931, label %bb.tj, !prof !112

bb.tj:                                            ; preds = %bb.ti, %bb.th
  %.0.i929 = phi i64 [ 3, %bb.th ], [ %i.bzy, %bb.ti ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i929) #14
  %.pre2380 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2381 = getelementptr inbounds nuw i8, ptr %.pre2380, i64 16
  %.pre2382 = load i64, ptr %.phi.trans.insert2381, align 8, !tbaa !64
  br label %smart_str_alloc.exit931

smart_str_alloc.exit931:                          ; preds = %bb.ti, %bb.tj
  %i.caa = phi i64 [ %i.bzx, %bb.ti ], [ %.pre2382, %bb.tj ]
  %i.cab = phi ptr [ %i.bzv, %bb.ti ], [ %.pre2380, %bb.tj ]
  %.1.i930 = phi i64 [ %i.bzy, %bb.ti ], [ %.0.i929, %bb.tj ]
  %i.cac = getelementptr inbounds nuw i8, ptr %i.cab, i64 24
  %i.cad = getelementptr inbounds nuw i8, ptr %i.cac, i64 %i.caa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cad, ptr noundef nonnull align 1 dereferenceable(3) @.str.82, i64 3, i1 false)
  %i.cae = load ptr, ptr %0, align 8, !tbaa !117
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cae, i64 16
  store i64 %.1.i930, ptr %i.caf, align 8, !tbaa !64
  br label %tailrecurse.backedge

bb.tk:                                            ; preds = %bb.b
  %i.cag = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i922 = icmp eq ptr %i.cag, null
  br i1 %.not.i922, label %bb.tm, label %bb.tl, !prof !22

bb.tl:                                            ; preds = %bb.tk
  %i.cah = getelementptr inbounds nuw i8, ptr %i.cag, i64 16
  %i.cai = load i64, ptr %i.cah, align 8, !tbaa !64 ; 2 uses
  %i.caj = add i64 %i.cai, 5                      ; 3 uses
  %i.cak = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i923 = icmp ult i64 %i.caj, %i.cak
  br i1 %.not12.i923, label %smart_str_alloc.exit926, label %bb.tm, !prof !112

bb.tm:                                            ; preds = %bb.tl, %bb.tk
  %.0.i924 = phi i64 [ 5, %bb.tk ], [ %i.caj, %bb.tl ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i924) #14
  %.pre = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre2366 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %smart_str_alloc.exit926

smart_str_alloc.exit926:                          ; preds = %bb.tl, %bb.tm
  %i.cal = phi i64 [ %i.cai, %bb.tl ], [ %.pre2366, %bb.tm ]
  %i.cam = phi ptr [ %i.cag, %bb.tl ], [ %.pre, %bb.tm ]
  %.1.i925 = phi i64 [ %i.caj, %bb.tl ], [ %.0.i924, %bb.tm ]
  %i.can = getelementptr inbounds nuw i8, ptr %i.cam, i64 24
  %i.cao = getelementptr inbounds nuw i8, ptr %i.can, i64 %i.cal
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cao, ptr noundef nonnull align 1 dereferenceable(5) @.str.158, i64 5, i1 false)
  %i.cap = load ptr, ptr %0, align 8, !tbaa !117
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 16
  store i64 %.1.i925, ptr %i.caq, align 8, !tbaa !64
  %i.car = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.cas = load ptr, ptr %i.car, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.cas, i32 noundef 0, i32 noundef %3)
  %i.cat = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1705 = icmp eq ptr %i.cat, null
  br i1 %.not.i.i1705, label %bb.to, label %bb.tn, !prof !22

bb.tn:                                            ; preds = %smart_str_alloc.exit926
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cat, i64 16
  %i.cav = load i64, ptr %i.cau, align 8, !tbaa !64
  %i.caw = add i64 %i.cav, 1                      ; 3 uses
  %i.cax = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1706 = icmp ult i64 %i.caw, %i.cax
  br i1 %.not12.i.i1706, label %smart_str_appendc_ex.exit1709, label %bb.to, !prof !112

bb.to:                                            ; preds = %bb.tn, %smart_str_alloc.exit926
  %.0.i.i1707 = phi i64 [ 1, %smart_str_alloc.exit926 ], [ %i.caw, %bb.tn ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1707) #14
  %.pre2367 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1709

smart_str_appendc_ex.exit1709:                    ; preds = %bb.tn, %bb.to
  %i.cay = phi ptr [ %i.cat, %bb.tn ], [ %.pre2367, %bb.to ]
  %i.caz = phi i64 [ %i.caw, %bb.tn ], [ %.0.i.i1707, %bb.to ] ; 3 uses
  %i.cba = getelementptr i8, ptr %i.cay, i64 23
  %i.cbb = getelementptr i8, ptr %i.cba, i64 %i.caz
  store i8 59, ptr %i.cbb, align 1, !tbaa !47
  %i.cbc = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cbc, i64 16
  store i64 %i.caz, ptr %i.cbd, align 8, !tbaa !64
  %i.cbe = getelementptr inbounds nuw i8, ptr %.02088, i64 16 ; 2 uses
  %i.cbf = load ptr, ptr %i.cbe, align 8, !tbaa !72
  %.not782 = icmp eq ptr %i.cbf, null
  br i1 %.not782, label %.thread3381, label %bb.tp

bb.tp:                                            ; preds = %smart_str_appendc_ex.exit1709
  %i.cbg = add i64 %i.caz, 1                      ; 4 uses
  %i.cbh = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1711 = icmp ult i64 %i.cbg, %i.cbh
  br i1 %.not12.i.i1711, label %bb.tr, label %bb.tq, !prof !112

bb.tq:                                            ; preds = %bb.tp
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.cbg) #14
  %.pre2368 = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.tr

bb.tr:                                            ; preds = %bb.tq, %bb.tp
  %i.cbi = phi ptr [ %i.cbc, %bb.tp ], [ %.pre2368, %bb.tq ]
  %i.cbj = getelementptr i8, ptr %i.cbi, i64 23
  %i.cbk = getelementptr i8, ptr %i.cbj, i64 %i.cbg
  store i8 32, ptr %i.cbk, align 1, !tbaa !47
  %i.cbl = load ptr, ptr %0, align 8, !tbaa !117
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbl, i64 16
  store i64 %i.cbg, ptr %i.cbm, align 8, !tbaa !64
  %i.cbn = load ptr, ptr %i.cbe, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.cbn, i32 noundef 0, i32 noundef %3)
  %.pre2369 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.not.i.i1715 = icmp eq ptr %.pre2369, null
  br i1 %.not.i.i1715, label %bb.ts, label %.thread3381, !prof !199

.thread3381:                                      ; preds = %smart_str_appendc_ex.exit1709, %bb.tr
  %i.cbo = phi ptr [ %.pre2369, %bb.tr ], [ %i.cbc, %smart_str_appendc_ex.exit1709 ] ; 2 uses
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbo, i64 16
  %i.cbq = load i64, ptr %i.cbp, align 8, !tbaa !64
  %i.cbr = add i64 %i.cbq, 1                      ; 3 uses
  %i.cbs = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1716 = icmp ult i64 %i.cbr, %i.cbs
  br i1 %.not12.i.i1716, label %smart_str_appendc_ex.exit1719, label %bb.ts, !prof !112

bb.ts:                                            ; preds = %.thread3381, %bb.tr
  %.0.i.i1717 = phi i64 [ 1, %bb.tr ], [ %i.cbr, %.thread3381 ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1717) #14
  %.pre2370 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1719

smart_str_appendc_ex.exit1719:                    ; preds = %.thread3381, %bb.ts
  %i.cbt = phi ptr [ %i.cbo, %.thread3381 ], [ %.pre2370, %bb.ts ]
  %i.cbu = phi i64 [ %i.cbr, %.thread3381 ], [ %.0.i.i1717, %bb.ts ] ; 3 uses
  %i.cbv = getelementptr i8, ptr %i.cbt, i64 23
  %i.cbw = getelementptr i8, ptr %i.cbv, i64 %i.cbu
  store i8 59, ptr %i.cbw, align 1, !tbaa !47
  %i.cbx = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbx, i64 16
  store i64 %i.cbu, ptr %i.cby, align 8, !tbaa !64
  %i.cbz = getelementptr inbounds nuw i8, ptr %.02088, i64 24 ; 2 uses
  %i.cca = load ptr, ptr %i.cbz, align 8, !tbaa !72
  %.not783 = icmp eq ptr %i.cca, null
  br i1 %.not783, label %.thread3383, label %bb.tt

bb.tt:                                            ; preds = %smart_str_appendc_ex.exit1719
  %i.ccb = add i64 %i.cbu, 1                      ; 4 uses
  %i.ccc = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1721 = icmp ult i64 %i.ccb, %i.ccc
  br i1 %.not12.i.i1721, label %bb.tv, label %bb.tu, !prof !112

bb.tu:                                            ; preds = %bb.tt
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.ccb) #14
  %.pre2371 = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.tv

bb.tv:                                            ; preds = %bb.tu, %bb.tt
  %i.ccd = phi ptr [ %i.cbx, %bb.tt ], [ %.pre2371, %bb.tu ]
  %i.cce = getelementptr i8, ptr %i.ccd, i64 23
  %i.ccf = getelementptr i8, ptr %i.cce, i64 %i.ccb
  store i8 32, ptr %i.ccf, align 1, !tbaa !47
  %i.ccg = load ptr, ptr %0, align 8, !tbaa !117
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccg, i64 16
  store i64 %i.ccb, ptr %i.cch, align 8, !tbaa !64
  %i.cci = load ptr, ptr %i.cbz, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.cci, i32 noundef 0, i32 noundef %3)
  %.pre2372 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.not.i917 = icmp eq ptr %.pre2372, null
  br i1 %.not.i917, label %bb.tw, label %.thread3383, !prof !199

.thread3383:                                      ; preds = %smart_str_appendc_ex.exit1719, %bb.tv
  %i.ccj = phi ptr [ %.pre2372, %bb.tv ], [ %i.cbx, %smart_str_appendc_ex.exit1719 ] ; 2 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccj, i64 16
  %i.ccl = load i64, ptr %i.cck, align 8, !tbaa !64 ; 2 uses
  %i.ccm = add i64 %i.ccl, 4                      ; 3 uses
  %i.ccn = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i918 = icmp ult i64 %i.ccm, %i.ccn
  br i1 %.not12.i918, label %smart_str_alloc.exit921, label %bb.tw, !prof !112

bb.tw:                                            ; preds = %.thread3383, %bb.tv
  %.0.i919 = phi i64 [ 4, %bb.tv ], [ %i.ccm, %.thread3383 ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i919) #14
  %.pre2373 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2374 = getelementptr inbounds nuw i8, ptr %.pre2373, i64 16
  %.pre2375 = load i64, ptr %.phi.trans.insert2374, align 8, !tbaa !64
  br label %smart_str_alloc.exit921

smart_str_alloc.exit921:                          ; preds = %.thread3383, %bb.tw
  %i.cco = phi i64 [ %i.ccl, %.thread3383 ], [ %.pre2375, %bb.tw ]
  %i.ccp = phi ptr [ %i.ccj, %.thread3383 ], [ %.pre2373, %bb.tw ]
  %.1.i920 = phi i64 [ %i.ccm, %.thread3383 ], [ %.0.i919, %bb.tw ]
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccp, i64 24
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.ccq, i64 %i.cco
  store i32 175841321, ptr %i.ccr, align 1
  %i.ccs = load ptr, ptr %0, align 8, !tbaa !117
  %i.cct = getelementptr inbounds nuw i8, ptr %i.ccs, i64 16
  store i64 %.1.i920, ptr %i.cct, align 8, !tbaa !64
  %i.ccu = getelementptr inbounds nuw i8, ptr %.02088, i64 32
  %i.ccv = load ptr, ptr %i.ccu, align 8, !tbaa !72
  %i.ccw = add nsw i32 %3, 1
  tail call fastcc void @zend_ast_export_stmt(ptr noundef %0, ptr noundef %i.ccv, i32 noundef %i.ccw)
  tail call fastcc void @zend_ast_export_indent(ptr noundef %0, i32 noundef %3)
  %i.ccx = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1725 = icmp eq ptr %i.ccx, null
  br i1 %.not.i.i1725, label %bb.ty, label %bb.tx, !prof !22

bb.tx:                                            ; preds = %smart_str_alloc.exit921
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccx, i64 16
  %i.ccz = load i64, ptr %i.ccy, align 8, !tbaa !64
  %i.cda = add i64 %i.ccz, 1                      ; 3 uses
  %i.cdb = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1726 = icmp ult i64 %i.cda, %i.cdb
  br i1 %.not12.i.i1726, label %smart_str_appendc_ex.exit1729, label %bb.ty, !prof !112

bb.ty:                                            ; preds = %bb.tx, %smart_str_alloc.exit921
  %.0.i.i1727 = phi i64 [ 1, %smart_str_alloc.exit921 ], [ %i.cda, %bb.tx ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1727) #14
  %.pre2376 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1729

smart_str_appendc_ex.exit1729:                    ; preds = %bb.tx, %bb.ty
  %i.cdc = phi ptr [ %i.ccx, %bb.tx ], [ %.pre2376, %bb.ty ]
  %.1.i.i1728 = phi i64 [ %i.cda, %bb.tx ], [ %.0.i.i1727, %bb.ty ] ; 2 uses
  %i.cdd = getelementptr i8, ptr %i.cdc, i64 23
  %i.cde = getelementptr i8, ptr %i.cdd, i64 %.1.i.i1728
  store i8 125, ptr %i.cde, align 1, !tbaa !47
  %i.cdf = load ptr, ptr %0, align 8, !tbaa !117
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdf, i64 16
  store i64 %.1.i.i1728, ptr %i.cdg, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

bb.tz:                                            ; preds = %bb.b
  %i.cdh = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i912 = icmp eq ptr %i.cdh, null
  br i1 %.not.i912, label %bb.ub, label %bb.ua, !prof !22

bb.ua:                                            ; preds = %bb.tz
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdh, i64 16
  %i.cdj = load i64, ptr %i.cdi, align 8, !tbaa !64 ; 2 uses
  %i.cdk = add i64 %i.cdj, 9                      ; 3 uses
  %i.cdl = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i913 = icmp ult i64 %i.cdk, %i.cdl
  br i1 %.not12.i913, label %smart_str_alloc.exit916, label %bb.ub, !prof !112

bb.ub:                                            ; preds = %bb.ua, %bb.tz
  %.0.i914 = phi i64 [ 9, %bb.tz ], [ %i.cdk, %bb.ua ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i914) #14
  %.pre2791 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2792 = getelementptr inbounds nuw i8, ptr %.pre2791, i64 16
  %.pre2793 = load i64, ptr %.phi.trans.insert2792, align 8, !tbaa !64
  br label %smart_str_alloc.exit916

smart_str_alloc.exit916:                          ; preds = %bb.ua, %bb.ub
  %i.cdm = phi i64 [ %i.cdj, %bb.ua ], [ %.pre2793, %bb.ub ]
  %i.cdn = phi ptr [ %i.cdh, %bb.ua ], [ %.pre2791, %bb.ub ]
  %.1.i915 = phi i64 [ %i.cdk, %bb.ua ], [ %.0.i914, %bb.ub ]
  %i.cdo = getelementptr inbounds nuw i8, ptr %i.cdn, i64 24
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.cdo, i64 %i.cdm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cdp, ptr noundef nonnull align 1 dereferenceable(9) @.str.159, i64 9, i1 false)
  %i.cdq = load ptr, ptr %0, align 8, !tbaa !117
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdq, i64 16
  store i64 %.1.i915, ptr %i.cdr, align 8, !tbaa !64
  %i.cds = getelementptr inbounds nuw i8, ptr %.02088, i64 8
  %i.cdt = load ptr, ptr %i.cds, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.cdt, i32 noundef 0, i32 noundef %3)
  %i.cdu = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i907 = icmp eq ptr %i.cdu, null
  br i1 %.not.i907, label %bb.ud, label %bb.uc, !prof !22

bb.uc:                                            ; preds = %smart_str_alloc.exit916
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdu, i64 16
  %i.cdw = load i64, ptr %i.cdv, align 8, !tbaa !64 ; 2 uses
  %i.cdx = add i64 %i.cdw, 4                      ; 3 uses
  %i.cdy = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i908 = icmp ult i64 %i.cdx, %i.cdy
  br i1 %.not12.i908, label %smart_str_alloc.exit911, label %bb.ud, !prof !112

bb.ud:                                            ; preds = %bb.uc, %smart_str_alloc.exit916
  %.0.i909 = phi i64 [ 4, %smart_str_alloc.exit916 ], [ %i.cdx, %bb.uc ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i909) #14
  %.pre2794 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2795 = getelementptr inbounds nuw i8, ptr %.pre2794, i64 16
  %.pre2796 = load i64, ptr %.phi.trans.insert2795, align 8, !tbaa !64
  br label %smart_str_alloc.exit911

smart_str_alloc.exit911:                          ; preds = %bb.uc, %bb.ud
  %i.cdz = phi i64 [ %i.cdw, %bb.uc ], [ %.pre2796, %bb.ud ]
  %i.cea = phi ptr [ %i.cdu, %bb.uc ], [ %.pre2794, %bb.ud ]
  %.1.i910 = phi i64 [ %i.cdx, %bb.uc ], [ %.0.i909, %bb.ud ]
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.cea, i64 24
  %i.cec = getelementptr inbounds nuw i8, ptr %i.ceb, i64 %i.cdz
  store i32 544432416, ptr %i.cec, align 1
  %i.ced = load ptr, ptr %0, align 8, !tbaa !117
  %i.cee = getelementptr inbounds nuw i8, ptr %i.ced, i64 16
  store i64 %.1.i910, ptr %i.cee, align 8, !tbaa !64
  %i.cef = getelementptr inbounds nuw i8, ptr %.02088, i64 24
  %i.ceg = load ptr, ptr %i.cef, align 8, !tbaa !72 ; 2 uses
  %.not847 = icmp eq ptr %i.ceg, null
  br i1 %.not847, label %bb.uh, label %bb.ue

bb.ue:                                            ; preds = %smart_str_alloc.exit911
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef nonnull %i.ceg, i32 noundef 0, i32 noundef %3)
  %i.ceh = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i902 = icmp eq ptr %i.ceh, null
  br i1 %.not.i902, label %bb.ug, label %bb.uf, !prof !22

bb.uf:                                            ; preds = %bb.ue
  %i.cei = getelementptr inbounds nuw i8, ptr %i.ceh, i64 16
  %i.cej = load i64, ptr %i.cei, align 8, !tbaa !64 ; 2 uses
  %i.cek = add i64 %i.cej, 4                      ; 3 uses
  %i.cel = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i903 = icmp ult i64 %i.cek, %i.cel
  br i1 %.not12.i903, label %smart_str_alloc.exit906, label %bb.ug, !prof !112

bb.ug:                                            ; preds = %bb.uf, %bb.ue
  %.0.i904 = phi i64 [ 4, %bb.ue ], [ %i.cek, %bb.uf ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i904) #14
  %.pre2797 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2798 = getelementptr inbounds nuw i8, ptr %.pre2797, i64 16
  %.pre2799 = load i64, ptr %.phi.trans.insert2798, align 8, !tbaa !64
  br label %smart_str_alloc.exit906

smart_str_alloc.exit906:                          ; preds = %bb.uf, %bb.ug
  %i.cem = phi i64 [ %i.cej, %bb.uf ], [ %.pre2799, %bb.ug ]
  %i.cen = phi ptr [ %i.ceh, %bb.uf ], [ %.pre2797, %bb.ug ]
  %.1.i905 = phi i64 [ %i.cek, %bb.uf ], [ %.0.i904, %bb.ug ]
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cen, i64 24
  %i.cep = getelementptr inbounds nuw i8, ptr %i.ceo, i64 %i.cem
  store i32 540949792, ptr %i.cep, align 1
  %i.ceq = load ptr, ptr %0, align 8, !tbaa !117
  %i.cer = getelementptr inbounds nuw i8, ptr %i.ceq, i64 16
  store i64 %.1.i905, ptr %i.cer, align 8, !tbaa !64
  br label %bb.uh

bb.uh:                                            ; preds = %smart_str_alloc.exit906, %smart_str_alloc.exit911
  %i.ces = getelementptr inbounds nuw i8, ptr %.02088, i64 16
  %i.cet = load ptr, ptr %i.ces, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.cet, i32 noundef 0, i32 noundef %3)
  %i.ceu = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i897 = icmp eq ptr %i.ceu, null
  br i1 %.not.i897, label %bb.uj, label %bb.ui, !prof !22

bb.ui:                                            ; preds = %bb.uh
  %i.cev = getelementptr inbounds nuw i8, ptr %i.ceu, i64 16
  %i.cew = load i64, ptr %i.cev, align 8, !tbaa !64 ; 2 uses
  %i.cex = add i64 %i.cew, 4                      ; 3 uses
  %i.cey = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i898 = icmp ult i64 %i.cex, %i.cey
  br i1 %.not12.i898, label %smart_str_alloc.exit901, label %bb.uj, !prof !112

bb.uj:                                            ; preds = %bb.ui, %bb.uh
  %.0.i899 = phi i64 [ 4, %bb.uh ], [ %i.cex, %bb.ui ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i899) #14
  %.pre2800 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2801 = getelementptr inbounds nuw i8, ptr %.pre2800, i64 16
  %.pre2802 = load i64, ptr %.phi.trans.insert2801, align 8, !tbaa !64
  br label %smart_str_alloc.exit901

smart_str_alloc.exit901:                          ; preds = %bb.ui, %bb.uj
  %i.cez = phi i64 [ %i.cew, %bb.ui ], [ %.pre2802, %bb.uj ]
  %i.cfa = phi ptr [ %i.ceu, %bb.ui ], [ %.pre2800, %bb.uj ]
  %.1.i900 = phi i64 [ %i.cex, %bb.ui ], [ %.0.i899, %bb.uj ]
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cfa, i64 24
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cfb, i64 %i.cez
  store i32 175841321, ptr %i.cfc, align 1
  %i.cfd = load ptr, ptr %0, align 8, !tbaa !117
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.cfd, i64 16
  store i64 %.1.i900, ptr %i.cfe, align 8, !tbaa !64
  %i.cff = getelementptr inbounds nuw i8, ptr %.02088, i64 32
end_hunk_2
begin_hunk_3_@zend_ast_export_zval:bb.a
  %.053122 = phi i32 [ 0, %.lr.ph ], [ %.154, %bb.ar ] ; 3 uses
  %.055121 = phi ptr [ null, %.lr.ph ], [ %.156, %bb.ar ]
  %.058120 = phi i1 [ true, %.lr.ph ], [ %.2, %bb.ar ] ; 2 uses
  %i.cu = load i32, ptr %i.cm, align 8, !tbaa !47
  %i.cv = and i32 %i.cu, 4
  %.not60 = icmp eq i32 %i.cv, 0
  br i1 %.not60, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %.052123, i64 16
  %i.cx = zext i32 %.053122 to i64
  %i.cy = add i32 %.053122, 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw i8, ptr %.052123, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %.052123, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !203
  %i.dc = getelementptr inbounds nuw i8, ptr %.052123, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !115
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.057 = phi i64 [ %i.cx, %bb.z ], [ %i.db, %bb.aa ] ; 3 uses
  %.156 = phi ptr [ %.055121, %bb.z ], [ %i.dd, %bb.aa ] ; 3 uses
  %.154 = phi i32 [ %i.cy, %bb.z ], [ %.053122, %bb.aa ]
  %.1 = phi ptr [ %i.cw, %bb.z ], [ %i.cz, %bb.aa ]
  %i.de = getelementptr inbounds nuw i8, ptr %.052123, i64 8
  %i.df = load i8, ptr %i.de, align 8, !tbaa !47
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.ar, label %bb.ac, !prof !22

bb.ac:                                            ; preds = %bb.ab
  br i1 %.058120, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dh = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i67 = icmp eq ptr %i.dh, null
  br i1 %.not.i67, label %bb.af, label %bb.ae, !prof !22

bb.ae:                                            ; preds = %bb.ad
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !64 ; 2 uses
  %i.dk = add i64 %i.dj, 2                        ; 3 uses
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !118
  %.not12.i68 = icmp ult i64 %i.dk, %i.dl
  br i1 %.not12.i68, label %smart_str_alloc.exit71, label %bb.af, !prof !112

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0.i69 = phi i64 [ 2, %bb.ad ], [ %i.dk, %bb.ae ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i69) #14
  %.pre127 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert128 = getelementptr inbounds nuw i8, ptr %.pre127, i64 16
  %.pre129 = load i64, ptr %.phi.trans.insert128, align 8, !tbaa !64
  br label %smart_str_alloc.exit71

smart_str_alloc.exit71:                           ; preds = %bb.ae, %bb.af
  %i.dm = phi i64 [ %i.dj, %bb.ae ], [ %.pre129, %bb.af ]
  %i.dn = phi ptr [ %i.dh, %bb.ae ], [ %.pre127, %bb.af ]
  %.1.i70 = phi i64 [ %i.dk, %bb.ae ], [ %.0.i69, %bb.af ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  store i16 8236, ptr %i.dp, align 1
  %i.dq = load ptr, ptr %0, align 8, !tbaa !117
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 %.1.i70, ptr %i.dr, align 8, !tbaa !64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %smart_str_alloc.exit71
  %.not61 = icmp eq ptr %.156, null
  br i1 %.not61, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @zend_ast_export_quoted_str(ptr noundef %0, ptr noundef nonnull %.156)
  %i.ds = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i62 = icmp eq ptr %i.ds, null
  br i1 %.not.i62, label %smart_str_alloc.exit66.sink.split, label %bb.ai, !prof !22

bb.ai:                                            ; preds = %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !64 ; 2 uses
  %i.dv = add i64 %i.du, 4                        ; 3 uses
  %i.dw = load i64, ptr %i.cr, align 8, !tbaa !118
  %.not12.i63 = icmp ult i64 %i.dv, %i.dw
  br i1 %.not12.i63, label %smart_str_alloc.exit66, label %smart_str_alloc.exit66.sink.split, !prof !112

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.dx = icmp slt i64 %.057, 0
  br i1 %i.dx, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.dy = sub i64 0, %.057
  store i8 0, ptr %i.cs, align 1, !tbaa !47
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.05.i101 = phi ptr [ %i.cs, %bb.ak ], [ %i.ec, %bb.al ] ; 2 uses
  %.0.i102 = phi i64 [ %i.dy, %bb.ak ], [ %i.ed, %bb.al ] ; 3 uses
  %i.dz = urem i64 %.0.i102, 10
  %i.ea = trunc nuw nsw i64 %i.dz to i8
  %i.eb = or disjoint i8 %i.ea, 48
  %i.ec = getelementptr inbounds i8, ptr %.05.i101, i64 -1 ; 2 uses
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !47
  %i.ed = udiv i64 %.0.i102, 10
  %.not.i103 = icmp ult i64 %.0.i102, 10
  br i1 %.not.i103, label %zend_print_ulong_to_buf.exit104, label %bb.al, !llvm.loop !200

zend_print_ulong_to_buf.exit104:                  ; preds = %bb.al
  %i.ee = getelementptr inbounds i8, ptr %.05.i101, i64 -2 ; 2 uses
  store i8 45, ptr %i.ee, align 1, !tbaa !47
  br label %zend_print_long_to_buf.exit

bb.am:                                            ; preds = %bb.aj
  store i8 0, ptr %i.cs, align 1, !tbaa !47
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %bb.am
  %.05.i105 = phi ptr [ %i.cs, %bb.am ], [ %i.ei, %bb.an ]
  %.0.i106 = phi i64 [ %.057, %bb.am ], [ %i.ej, %bb.an ] ; 3 uses
  %i.ef = urem i64 %.0.i106, 10
  %i.eg = trunc nuw nsw i64 %i.ef to i8
  %i.eh = or disjoint i8 %i.eg, 48
  %i.ei = getelementptr inbounds i8, ptr %.05.i105, i64 -1 ; 3 uses
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !47
  %i.ej = udiv i64 %.0.i106, 10
  %.not.i107 = icmp ult i64 %.0.i106, 10
  br i1 %.not.i107, label %zend_print_long_to_buf.exit, label %bb.an, !llvm.loop !200

zend_print_long_to_buf.exit:                      ; preds = %bb.an, %zend_print_ulong_to_buf.exit104
  %.0.i92 = phi ptr [ %i.ee, %zend_print_ulong_to_buf.exit104 ], [ %i.ei, %bb.an ] ; 2 uses
  %i.ek = ptrtoint ptr %.0.i92 to i64
  %i.el = sub i64 %i.ct, %i.ek                    ; 3 uses
  %i.em = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.em, null
  br i1 %.not.i.i87, label %bb.ap, label %bb.ao, !prof !22

bb.ao:                                            ; preds = %zend_print_long_to_buf.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !64 ; 2 uses
  %i.ep = add i64 %i.eo, %i.el                    ; 3 uses
  %i.eq = load i64, ptr %i.cr, align 8, !tbaa !118
  %.not12.i.i88 = icmp ult i64 %i.ep, %i.eq
  br i1 %.not12.i.i88, label %bb.aq, label %bb.ap, !prof !112

bb.ap:                                            ; preds = %bb.ao, %zend_print_long_to_buf.exit
  %.0.i.i89 = phi i64 [ %i.el, %zend_print_long_to_buf.exit ], [ %i.ep, %bb.ao ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i89) #14
  %.pre133 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert134 = getelementptr inbounds nuw i8, ptr %.pre133, i64 16
  %.pre135 = load i64, ptr %.phi.trans.insert134, align 8, !tbaa !64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.er = phi i64 [ %i.eo, %bb.ao ], [ %.pre135, %bb.ap ]
  %i.es = phi ptr [ %i.em, %bb.ao ], [ %.pre133, %bb.ap ]
  %.1.i.i90 = phi i64 [ %i.ep, %bb.ao ], [ %.0.i.i89, %bb.ap ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eu, ptr nonnull align 1 %.0.i92, i64 %i.el, i1 false)
  %i.ev = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  store i64 %.1.i.i90, ptr %i.ew, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !64 ; 2 uses
  %i.ey = add i64 %i.ex, 4                        ; 3 uses
  %i.ez = load i64, ptr %i.cr, align 8, !tbaa !118
  %.not12.i = icmp ult i64 %i.ey, %i.ez
  br i1 %.not12.i, label %smart_str_alloc.exit66, label %smart_str_alloc.exit66.sink.split, !prof !112

smart_str_alloc.exit66.sink.split:                ; preds = %bb.aq, %bb.ah, %bb.ai
  %.sink194 = phi i64 [ %i.dv, %bb.ai ], [ 4, %bb.ah ], [ %i.ey, %bb.aq ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.sink194) #14
  %.pre136 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %.pre136, i64 16
  %.pre138 = load i64, ptr %.phi.trans.insert137, align 8, !tbaa !64
  br label %smart_str_alloc.exit66

smart_str_alloc.exit66:                           ; preds = %smart_str_alloc.exit66.sink.split, %bb.aq, %bb.ai
  %.sink193 = phi ptr [ %i.ev, %bb.aq ], [ %i.ds, %bb.ai ], [ %.pre136, %smart_str_alloc.exit66.sink.split ]
  %.sink192 = phi i64 [ %i.ex, %bb.aq ], [ %i.du, %bb.ai ], [ %.pre138, %smart_str_alloc.exit66.sink.split ]
  %.sink = phi i64 [ %i.ey, %bb.aq ], [ %i.dv, %bb.ai ], [ %.sink194, %smart_str_alloc.exit66.sink.split ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.sink193, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.sink192
  store i32 540949792, ptr %i.fb, align 1
  %i.fc = load ptr, ptr %0, align 8, !tbaa !117
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 %.sink, ptr %i.fd, align 8, !tbaa !64
  call fastcc void @zend_ast_export_zval(ptr noundef %0, ptr noundef nonnull %.052123, i32 noundef 0, i32 noundef %3)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ab, %smart_str_alloc.exit66
  %.2 = phi i1 [ false, %smart_str_alloc.exit66 ], [ %.058120, %bb.ab ]
  %i.fe = add i32 %.051124, -1                    ; 2 uses
  %.not = icmp eq i32 %i.fe, 0
  br i1 %.not, label %._crit_edge, label %bb.y, !llvm.loop !201

._crit_edge:                                      ; preds = %bb.ar
  %.pre139 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.not.i.i113 = icmp eq ptr %.pre139, null
  br i1 %.not.i.i113, label %bb.as, label %._crit_edge.thread, !prof !121

._crit_edge.thread:                               ; preds = %smart_str_appendc_ex.exit, %._crit_edge
  %i.ff = phi ptr [ %.pre139, %._crit_edge ], [ %i.cj, %smart_str_appendc_ex.exit ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !64
  %i.fi = add i64 %i.fh, 1                        ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !118
  %.not12.i.i114 = icmp ult i64 %i.fi, %i.fk
  br i1 %.not12.i.i114, label %smart_str_appendc_ex.exit117, label %bb.as, !prof !112

bb.as:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %.0.i.i115 = phi i64 [ 1, %._crit_edge ], [ %i.fi, %._crit_edge.thread ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i115) #14
  %.pre140 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit117

smart_str_appendc_ex.exit117:                     ; preds = %._crit_edge.thread, %bb.as
  %i.fl = phi ptr [ %i.ff, %._crit_edge.thread ], [ %.pre140, %bb.as ]
  %.1.i.i116 = phi i64 [ %i.fi, %._crit_edge.thread ], [ %.0.i.i115, %bb.as ] ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 23
  %i.fn = getelementptr i8, ptr %i.fm, i64 %.1.i.i116
  store i8 93, ptr %i.fn, align 1, !tbaa !47
  %i.fo = load ptr, ptr %0, align 8, !tbaa !117
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store i64 %.1.i.i116, ptr %i.fp, align 8, !tbaa !64
  br label %bb.av

bb.at:                                            ; preds = %bb.c
  %i.fq = load ptr, ptr %.0, align 8, !tbaa !47
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef nonnull %i.fr, i32 noundef %2, i32 noundef %3)
  br label %bb.av

bb.au:                                            ; preds = %bb.c
  unreachable

bb.av:                                            ; preds = %bb.at, %smart_str_appendc_ex.exit117, %bb.u, %bb.t, %smart_str_append_long_ex.exit, %smart_str_alloc.exit76, %smart_str_alloc.exit81, %smart_str_alloc.exit86
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_ast_export_attributes(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = icmp sgt i32 %2, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph49, %zend_ast_export_indent.exit
  %i.f = phi ptr [ %.pre, %.lr.ph49 ], [ %i.gz, %zend_ast_export_indent.exit ] ; 3 uses
  %indvars.iv53 = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next54, %zend_ast_export_indent.exit ] ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = add i64 %i.h, 2                          ; 3 uses
  %i.j = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i = icmp ult i64 %i.i, %i.j
  br i1 %.not12.i, label %smart_str_alloc.exit, label %bb.d, !prof !112

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ 2, %bb.b ], [ %i.i, %bb.c ]   ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i) #14
  %.pre56 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre56, i64 16
  %.pre57 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %smart_str_alloc.exit

smart_str_alloc.exit:                             ; preds = %bb.c, %bb.d
  %i.k = phi i64 [ %i.h, %bb.c ], [ %.pre57, %bb.d ]
  %i.l = phi ptr [ %i.f, %bb.c ], [ %.pre56, %bb.d ]
  %i.m = phi i64 [ %i.i, %bb.c ], [ %.0.i, %bb.d ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i16 23331, ptr %i.o, align 1
  %i.p = load ptr, ptr %0, align 8, !tbaa !117    ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.m, ptr %i.q, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv53
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !85
  %.not50 = icmp eq i32 %i.u, 0
  br i1 %.not50, label %zend_ast_export_attribute_group.exit.thread, label %bb.e

bb.e:                                             ; preds = %smart_str_alloc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.pre59 = load ptr, ptr %.phi.trans.insert58, align 8, !tbaa !72 ; 5 uses
  %.pre60 = load i16, ptr %.pre59, align 8, !tbaa !70
  %i.x = icmp eq i16 %.pre60, 64
  br i1 %i.x, label %bb.f, label %.thread46.peel

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.pre59, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.pre59, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !47
  %i.ab = icmp eq i8 %i.aa, 6
  br i1 %i.ab, label %bb.g, label %.thread46.peel

.thread46.peel:                                   ; preds = %bb.f, %bb.e
  tail call fastcc void @zend_ast_export_ex(ptr noundef nonnull %0, ptr noundef nonnull %.pre59, i32 noundef 0, i32 noundef %2), !inline_history !204
  br label %zend_ast_export_ns_name.exit.peel

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre59, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !71
  switch i16 %i.ad, label %bb.l [
    i16 0, label %bb.j
    i16 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = add i64 %i.m, 10                        ; 3 uses
  %i.af = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i36.peel = icmp ult i64 %i.ae, %i.af
  br i1 %.not12.i.i36.peel, label %smart_str_alloc.exit.i38.peel, label %bb.i, !prof !112

bb.i:                                             ; preds = %bb.h
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.ae) #14, !inline_history !204
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert62 = getelementptr inbounds nuw i8, ptr %.pre61, i64 16
  %.pre63 = load i64, ptr %.phi.trans.insert62, align 8, !tbaa !64
  br label %smart_str_alloc.exit.i38.peel

smart_str_alloc.exit.i38.peel:                    ; preds = %bb.i, %bb.h
  %i.ag = phi i64 [ %i.m, %bb.h ], [ %.pre63, %bb.i ]
  %i.ah = phi ptr [ %i.p, %bb.h ], [ %.pre61, %bb.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.aj, ptr noundef nonnull align 1 dereferenceable(10) @.str.177, i64 10, i1 false)
  br label %.thread.peel

bb.j:                                             ; preds = %bb.g
  %i.ak = add i64 %i.m, 1                         ; 4 uses
  %i.al = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i15.i.peel = icmp ult i64 %i.ak, %i.al
  br i1 %.not12.i.i15.i.peel, label %smart_str_appendc_ex.exit.i44.peel, label %bb.k, !prof !112

bb.k:                                             ; preds = %bb.j
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.ak) #14, !inline_history !204
  %.pre64 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit.i44.peel

smart_str_appendc_ex.exit.i44.peel:               ; preds = %bb.k, %bb.j
  %i.am = phi ptr [ %i.p, %bb.j ], [ %.pre64, %bb.k ]
  %i.an = getelementptr i8, ptr %i.am, i64 23
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ak
  store i8 92, ptr %i.ao, align 1, !tbaa !47
  br label %.thread.peel

.thread.peel:                                     ; preds = %smart_str_appendc_ex.exit.i44.peel, %smart_str_alloc.exit.i38.peel
  %.sink = phi i64 [ %i.ak, %smart_str_appendc_ex.exit.i44.peel ], [ %i.ae, %smart_str_alloc.exit.i38.peel ] ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %.sink, ptr %i.aq, align 8, !tbaa !64
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %.thread.peel
  %i.ar = phi i64 [ %.sink, %.thread.peel ], [ %i.m, %bb.g ] ; 2 uses
  %i.as = phi ptr [ %i.ap, %.thread.peel ], [ %i.p, %bb.g ]
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !47  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !64 ; 2 uses
  %i.ax = add i64 %i.ar, %i.aw                    ; 3 uses
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i.i41.peel = icmp ult i64 %i.ax, %i.ay
  br i1 %.not12.i.i.i41.peel, label %bb.n, label %bb.m, !prof !112

bb.m:                                             ; preds = %bb.l
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.ax) #14, !inline_history !204
  %.pre67 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert68 = getelementptr inbounds nuw i8, ptr %.pre67, i64 16
  %.pre69 = load i64, ptr %.phi.trans.insert68, align 8, !tbaa !64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = phi i64 [ %i.ar, %bb.l ], [ %.pre69, %bb.m ]
  %i.ba = phi ptr [ %i.as, %bb.l ], [ %.pre67, %bb.m ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 8 %i.au, i64 %i.aw, i1 false)
  %i.bd = load ptr, ptr %0, align 8, !tbaa !117
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.ax, ptr %i.be, align 8, !tbaa !64
  br label %zend_ast_export_ns_name.exit.peel

zend_ast_export_ns_name.exit.peel:                ; preds = %bb.n, %.thread46.peel
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !72
  %.not16.i.peel = icmp eq ptr %i.bg, null
  br i1 %.not16.i.peel, label %bb.t, label %bb.o

bb.o:                                             ; preds = %zend_ast_export_ns_name.exit.peel
  %i.bh = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i.i.peel = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.peel, label %bb.q, label %bb.p, !prof !22

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !64
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i.i.peel = icmp ult i64 %i.bk, %i.bl
  br i1 %.not12.i.i.i.peel, label %smart_str_appendc_ex.exit.i.peel, label %bb.q, !prof !112

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i.i.i.peel = phi i64 [ 1, %bb.o ], [ %i.bk, %bb.p ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i.i.peel) #14, !inline_history !205
  %.pre70 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit.i.peel

smart_str_appendc_ex.exit.i.peel:                 ; preds = %bb.q, %bb.p
  %i.bm = phi ptr [ %i.bh, %bb.p ], [ %.pre70, %bb.q ]
  %.1.i.i.i.peel = phi i64 [ %i.bk, %bb.p ], [ %.0.i.i.i.peel, %bb.q ] ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 23
  %i.bo = getelementptr i8, ptr %i.bn, i64 %.1.i.i.i.peel
  store i8 40, ptr %i.bo, align 1, !tbaa !47
  %i.bp = load ptr, ptr %0, align 8, !tbaa !117
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 %.1.i.i.i.peel, ptr %i.bq, align 8, !tbaa !64
  %i.br = load ptr, ptr %i.bf, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef nonnull %0, ptr noundef %i.br, i32 noundef 0, i32 noundef %2), !inline_history !205
  %i.bs = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i17.i.peel = icmp eq ptr %i.bs, null
  br i1 %.not.i.i17.i.peel, label %bb.s, label %bb.r, !prof !22

bb.r:                                             ; preds = %smart_str_appendc_ex.exit.i.peel
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !64
  %i.bv = add i64 %i.bu, 1                        ; 3 uses
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i18.i.peel = icmp ult i64 %i.bv, %i.bw
  br i1 %.not12.i.i18.i.peel, label %smart_str_appendc_ex.exit21.i.peel, label %bb.s, !prof !112

bb.s:                                             ; preds = %bb.r, %smart_str_appendc_ex.exit.i.peel
  %.0.i.i19.i.peel = phi i64 [ 1, %smart_str_appendc_ex.exit.i.peel ], [ %i.bv, %bb.r ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i19.i.peel) #14, !inline_history !205
  %.pre71 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit21.i.peel

smart_str_appendc_ex.exit21.i.peel:               ; preds = %bb.s, %bb.r
  %i.bx = phi ptr [ %i.bs, %bb.r ], [ %.pre71, %bb.s ]
  %.1.i.i20.i.peel = phi i64 [ %i.bv, %bb.r ], [ %.0.i.i19.i.peel, %bb.s ] ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 23
  %i.bz = getelementptr i8, ptr %i.by, i64 %.1.i.i20.i.peel
  store i8 41, ptr %i.bz, align 1, !tbaa !47
  %i.ca = load ptr, ptr %0, align 8, !tbaa !117
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %.1.i.i20.i.peel, ptr %i.cb, align 8, !tbaa !64
  br label %bb.t

bb.t:                                             ; preds = %smart_str_appendc_ex.exit21.i.peel, %zend_ast_export_ns_name.exit.peel
  %i.cc = load i32, ptr %i.t, align 8, !tbaa !85
  %i.cd = icmp ugt i32 %i.cc, 1
  br i1 %i.cd, label %.peel.next, label %zend_ast_export_attribute_group.exit

.peel.next:                                       ; preds = %bb.t, %bb.ao
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ao ], [ 1, %bb.t ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !72 ; 2 uses
  %i.cg = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i26, label %bb.v, label %bb.u, !prof !22

bb.u:                                             ; preds = %.peel.next
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !64 ; 2 uses
  %i.cj = add i64 %i.ci, 2                        ; 3 uses
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i27 = icmp ult i64 %i.cj, %i.ck
  br i1 %.not12.i.i27, label %bb.w, label %bb.v, !prof !112

bb.v:                                             ; preds = %bb.u, %.peel.next
  %.0.i.i28 = phi i64 [ 2, %.peel.next ], [ %i.cj, %bb.u ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i28) #14, !inline_history !205
  %.pre73 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %.pre73, i64 16
  %.pre75 = load i64, ptr %.phi.trans.insert74, align 8, !tbaa !64
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.cl = phi i64 [ %i.ci, %bb.u ], [ %.pre75, %bb.v ]
  %i.cm = phi ptr [ %i.cg, %bb.u ], [ %.pre73, %bb.v ]
  %.1.i.i29 = phi i64 [ %i.cj, %bb.u ], [ %.0.i.i28, %bb.v ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i16 8236, ptr %i.co, align 1
  %i.cp = load ptr, ptr %0, align 8, !tbaa !117
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %.1.i.i29, ptr %i.cq, align 8, !tbaa !64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !72 ; 5 uses
  %i.ct = load i16, ptr %i.cs, align 8, !tbaa !70
  %i.cu = icmp eq i16 %i.ct, 64
  br i1 %i.cu, label %bb.x, label %.thread46

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !47
  %i.cy = icmp eq i8 %i.cx, 6
  br i1 %i.cy, label %bb.y, label %.thread46

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !71
  %.pr = load ptr, ptr %0, align 8, !tbaa !117    ; 8 uses
  switch i16 %i.da, label %bb.af [
    i16 0, label %bb.z
    i16 2, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %.not.i.i14.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i14.i, label %bb.ab, label %bb.aa, !prof !22

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !64
  %i.dd = add i64 %i.dc, 1                        ; 3 uses
  %i.de = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i15.i = icmp ult i64 %i.dd, %i.de
  br i1 %.not12.i.i15.i, label %smart_str_appendc_ex.exit.i44, label %bb.ab, !prof !112

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i.i16.i = phi i64 [ 1, %bb.z ], [ %i.dd, %bb.aa ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i16.i) #14, !inline_history !204
  %.pre79 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit.i44

smart_str_appendc_ex.exit.i44:                    ; preds = %bb.ab, %bb.aa
  %i.df = phi ptr [ %.pr, %bb.aa ], [ %.pre79, %bb.ab ]
  %.1.i.i17.i = phi i64 [ %i.dd, %bb.aa ], [ %.0.i.i16.i, %bb.ab ] ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 23
  %i.dh = getelementptr i8, ptr %i.dg, i64 %.1.i.i17.i
  store i8 92, ptr %i.dh, align 1, !tbaa !47
  br label %.thread

bb.ac:                                            ; preds = %bb.y
  %.not.i.i35 = icmp eq ptr %.pr, null
  br i1 %.not.i.i35, label %bb.ae, label %bb.ad, !prof !22

bb.ad:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !64 ; 2 uses
  %i.dk = add i64 %i.dj, 10                       ; 3 uses
  %i.dl = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i36 = icmp ult i64 %i.dk, %i.dl
  br i1 %.not12.i.i36, label %smart_str_alloc.exit.i38, label %bb.ae, !prof !112

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0.i.i37 = phi i64 [ 10, %bb.ac ], [ %i.dk, %bb.ad ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i37) #14, !inline_history !204
  %.pre76 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert77 = getelementptr inbounds nuw i8, ptr %.pre76, i64 16
  %.pre78 = load i64, ptr %.phi.trans.insert77, align 8, !tbaa !64
  br label %smart_str_alloc.exit.i38

smart_str_alloc.exit.i38:                         ; preds = %bb.ae, %bb.ad
  %i.dm = phi i64 [ %i.dj, %bb.ad ], [ %.pre78, %bb.ae ]
  %i.dn = phi ptr [ %.pr, %bb.ad ], [ %.pre76, %bb.ae ]
  %.1.i.i39 = phi i64 [ %i.dk, %bb.ad ], [ %.0.i.i37, %bb.ae ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.dp, ptr noundef nonnull align 1 dereferenceable(10) @.str.177, i64 10, i1 false)
  br label %.thread

.thread:                                          ; preds = %smart_str_alloc.exit.i38, %smart_str_appendc_ex.exit.i44
  %.1.i.i39.sink = phi i64 [ %.1.i.i39, %smart_str_alloc.exit.i38 ], [ %.1.i.i17.i, %smart_str_appendc_ex.exit.i44 ]
  %i.dq = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 %.1.i.i39.sink, ptr %i.dr, align 8, !tbaa !64
  %i.ds = load ptr, ptr %i.cv, align 8, !tbaa !47 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !64
  br label %bb.ag

bb.af:                                            ; preds = %bb.y
  %i.dw = load ptr, ptr %i.cv, align 8, !tbaa !47 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i40, label %bb.ah, label %bb.ag, !prof !122

bb.ag:                                            ; preds = %.thread, %bb.af
  %i.ea = phi i64 [ %i.dv, %.thread ], [ %i.dz, %bb.af ] ; 3 uses
  %i.eb = phi ptr [ %i.dt, %.thread ], [ %i.dx, %bb.af ] ; 2 uses
  %i.ec = phi ptr [ %i.dq, %.thread ], [ %.pr, %bb.af ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !64 ; 2 uses
  %i.ef = add i64 %i.ee, %i.ea                    ; 3 uses
  %i.eg = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i.i41 = icmp ult i64 %i.ef, %i.eg
  br i1 %.not12.i.i.i41, label %bb.ai, label %bb.ah, !prof !112

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eh = phi i64 [ %i.dz, %bb.af ], [ %i.ea, %bb.ag ]
  %i.ei = phi ptr [ %i.dx, %bb.af ], [ %i.eb, %bb.ag ]
  %.0.i.i.i42 = phi i64 [ %i.dz, %bb.af ], [ %i.ef, %bb.ag ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i.i42) #14, !inline_history !204
  %.pre80 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %.pre80, i64 16
  %.pre82 = load i64, ptr %.phi.trans.insert81, align 8, !tbaa !64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.ej = phi i64 [ %i.ee, %bb.ag ], [ %.pre82, %bb.ah ]
  %i.ek = phi ptr [ %i.ec, %bb.ag ], [ %.pre80, %bb.ah ]
  %i.el = phi i64 [ %i.ea, %bb.ag ], [ %i.eh, %bb.ah ]
  %i.em = phi ptr [ %i.eb, %bb.ag ], [ %i.ei, %bb.ah ]
  %.1.i.i.i43 = phi i64 [ %i.ef, %bb.ag ], [ %.0.i.i.i42, %bb.ah ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ej
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr nonnull align 1 %i.em, i64 %i.el, i1 false)
  %i.ep = load ptr, ptr %0, align 8, !tbaa !117
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 %.1.i.i.i43, ptr %i.eq, align 8, !tbaa !64
  br label %zend_ast_export_ns_name.exit

.thread46:                                        ; preds = %bb.x, %bb.w
  tail call fastcc void @zend_ast_export_ex(ptr noundef nonnull %0, ptr noundef nonnull %i.cs, i32 noundef 0, i32 noundef %2), !inline_history !204
  br label %zend_ast_export_ns_name.exit

zend_ast_export_ns_name.exit:                     ; preds = %bb.ai, %.thread46
  %i.er = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !72
  %.not16.i = icmp eq ptr %i.es, null
  br i1 %.not16.i, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %zend_ast_export_ns_name.exit
  %i.et = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak, !prof !22

bb.ak:                                            ; preds = %bb.aj
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !64
  %i.ew = add i64 %i.ev, 1                        ; 3 uses
  %i.ex = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i.i = icmp ult i64 %i.ew, %i.ex
  br i1 %.not12.i.i.i, label %smart_str_appendc_ex.exit.i, label %bb.al, !prof !112

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0.i.i.i = phi i64 [ 1, %bb.aj ], [ %i.ew, %bb.ak ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i.i) #14, !inline_history !205
  %.pre83 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit.i

smart_str_appendc_ex.exit.i:                      ; preds = %bb.al, %bb.ak
  %i.ey = phi ptr [ %i.et, %bb.ak ], [ %.pre83, %bb.al ]
  %.1.i.i.i = phi i64 [ %i.ew, %bb.ak ], [ %.0.i.i.i, %bb.al ] ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 23
  %i.fa = getelementptr i8, ptr %i.ez, i64 %.1.i.i.i
  store i8 40, ptr %i.fa, align 1, !tbaa !47
  %i.fb = load ptr, ptr %0, align 8, !tbaa !117
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 %.1.i.i.i, ptr %i.fc, align 8, !tbaa !64
  %i.fd = load ptr, ptr %i.er, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef nonnull %0, ptr noundef %i.fd, i32 noundef 0, i32 noundef %2), !inline_history !205
  %i.fe = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i17.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i17.i, label %bb.an, label %bb.am, !prof !22

bb.am:                                            ; preds = %smart_str_appendc_ex.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !64
  %i.fh = add i64 %i.fg, 1                        ; 3 uses
  %i.fi = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i18.i = icmp ult i64 %i.fh, %i.fi
  br i1 %.not12.i.i18.i, label %smart_str_appendc_ex.exit21.i, label %bb.an, !prof !112

bb.an:                                            ; preds = %bb.am, %smart_str_appendc_ex.exit.i
  %.0.i.i19.i = phi i64 [ 1, %smart_str_appendc_ex.exit.i ], [ %i.fh, %bb.am ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i19.i) #14, !inline_history !205
  %.pre84 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit21.i

smart_str_appendc_ex.exit21.i:                    ; preds = %bb.an, %bb.am
  %i.fj = phi ptr [ %i.fe, %bb.am ], [ %.pre84, %bb.an ]
  %.1.i.i20.i = phi i64 [ %i.fh, %bb.am ], [ %.0.i.i19.i, %bb.an ] ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 23
  %i.fl = getelementptr i8, ptr %i.fk, i64 %.1.i.i20.i
  store i8 41, ptr %i.fl, align 1, !tbaa !47
  %i.fm = load ptr, ptr %0, align 8, !tbaa !117
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %.1.i.i20.i, ptr %i.fn, align 8, !tbaa !64
  br label %bb.ao

bb.ao:                                            ; preds = %smart_str_appendc_ex.exit21.i, %zend_ast_export_ns_name.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fo = load i32, ptr %i.t, align 8, !tbaa !85
  %i.fp = zext i32 %i.fo to i64
  %i.fq = icmp samesign ult i64 %indvars.iv.next, %i.fp
  br i1 %i.fq, label %.peel.next, label %zend_ast_export_attribute_group.exit, !llvm.loop !206

zend_ast_export_attribute_group.exit:             ; preds = %bb.ao, %bb.t
  %.pre85 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre85, null
  br i1 %.not.i.i, label %bb.ap, label %zend_ast_export_attribute_group.exit.thread, !prof !121

zend_ast_export_attribute_group.exit.thread:      ; preds = %smart_str_alloc.exit, %zend_ast_export_attribute_group.exit
  %i.fr = phi ptr [ %.pre85, %zend_ast_export_attribute_group.exit ], [ %i.p, %smart_str_alloc.exit ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !64
  %i.fu = add i64 %i.ft, 1                        ; 3 uses
  %i.fv = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i = icmp ult i64 %i.fu, %i.fv
  br i1 %.not12.i.i, label %smart_str_appendc_ex.exit, label %bb.ap, !prof !112

bb.ap:                                            ; preds = %zend_ast_export_attribute_group.exit.thread, %zend_ast_export_attribute_group.exit
  %.0.i.i = phi i64 [ 1, %zend_ast_export_attribute_group.exit ], [ %i.fu, %zend_ast_export_attribute_group.exit.thread ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i) #14
  %.pre86 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit

smart_str_appendc_ex.exit:                        ; preds = %zend_ast_export_attribute_group.exit.thread, %bb.ap
  %i.fw = phi ptr [ %i.fr, %zend_ast_export_attribute_group.exit.thread ], [ %.pre86, %bb.ap ]
  %.1.i.i = phi i64 [ %i.fu, %zend_ast_export_attribute_group.exit.thread ], [ %.0.i.i, %bb.ap ] ; 3 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 23
  %i.fy = getelementptr i8, ptr %i.fx, i64 %.1.i.i
  store i8 93, ptr %i.fy, align 1, !tbaa !47
  %i.fz = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %.1.i.i, ptr %i.ga, align 8, !tbaa !64
  %i.gb = add i64 %.1.i.i, 1                      ; 8 uses
  %i.gc = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i15 = icmp ult i64 %i.gb, %i.gc       ; 2 uses
  br i1 %3, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %smart_str_appendc_ex.exit
  br i1 %.not12.i.i15, label %smart_str_appendc_ex.exit18, label %bb.ar, !prof !112

bb.ar:                                            ; preds = %bb.aq
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.gb) #14
  %.pre88 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit18

smart_str_appendc_ex.exit18:                      ; preds = %bb.aq, %bb.ar
  %i.gd = phi ptr [ %i.fz, %bb.aq ], [ %.pre88, %bb.ar ]
  %i.ge = getelementptr i8, ptr %i.gd, i64 23
  %i.gf = getelementptr i8, ptr %i.ge, i64 %i.gb
  store i8 10, ptr %i.gf, align 1, !tbaa !47
  %i.gg = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store i64 %i.gb, ptr %i.gh, align 8, !tbaa !64
  br i1 %i.e, label %.lr.ph.i, label %zend_ast_export_indent.exit

.lr.ph.i:                                         ; preds = %smart_str_appendc_ex.exit18, %smart_str_alloc.exit.i33
  %i.gi = phi i64 [ %i.gk, %smart_str_alloc.exit.i33 ], [ %i.gb, %smart_str_appendc_ex.exit18 ] ; 2 uses
  %i.gj = phi ptr [ %i.gq, %smart_str_alloc.exit.i33 ], [ %i.gg, %smart_str_appendc_ex.exit18 ]
  %.02.i = phi i32 [ %i.gs, %smart_str_alloc.exit.i33 ], [ %2, %smart_str_appendc_ex.exit18 ] ; 2 uses
  %i.gk = add i64 %i.gi, 4                        ; 4 uses
  %i.gl = load i64, ptr %i.c, align 8, !tbaa !118
  %.not12.i.i31 = icmp ult i64 %i.gk, %i.gl
  br i1 %.not12.i.i31, label %smart_str_alloc.exit.i33, label %bb.as, !prof !112

bb.as:                                            ; preds = %.lr.ph.i
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.gk) #14
  %.pre3.i = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 16
  %.pre4.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  br label %smart_str_alloc.exit.i33

smart_str_alloc.exit.i33:                         ; preds = %bb.as, %.lr.ph.i
  %i.gm = phi i64 [ %i.gi, %.lr.ph.i ], [ %.pre4.i, %bb.as ]
  %i.gn = phi ptr [ %i.gj, %.lr.ph.i ], [ %.pre3.i, %bb.as ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gm
  store i32 538976288, ptr %i.gp, align 1
  %i.gq = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store i64 %i.gk, ptr %i.gr, align 8, !tbaa !64
  %i.gs = add nsw i32 %.02.i, -1
  %i.gt = icmp sgt i32 %.02.i, 1
  br i1 %i.gt, label %.lr.ph.i, label %zend_ast_export_indent.exit, !llvm.loop !2

bb.at:                                            ; preds = %smart_str_appendc_ex.exit
  br i1 %.not12.i.i15, label %smart_str_appendc_ex.exit23, label %bb.au, !prof !112

bb.au:                                            ; preds = %bb.at
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.gb) #14
  %.pre87 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit23

smart_str_appendc_ex.exit23:                      ; preds = %bb.at, %bb.au
  %i.gu = phi ptr [ %i.fz, %bb.at ], [ %.pre87, %bb.au ]
  %i.gv = getelementptr i8, ptr %i.gu, i64 23
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gb
  store i8 32, ptr %i.gw, align 1, !tbaa !47
  %i.gx = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i64 %i.gb, ptr %i.gy, align 8, !tbaa !64
  br label %zend_ast_export_indent.exit

zend_ast_export_indent.exit:                      ; preds = %smart_str_alloc.exit.i33, %smart_str_appendc_ex.exit18, %smart_str_appendc_ex.exit23
  %i.gz = phi ptr [ %i.gx, %smart_str_appendc_ex.exit23 ], [ %i.gg, %smart_str_appendc_ex.exit18 ], [ %i.gq, %smart_str_alloc.exit.i33 ]
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.ha = load i32, ptr %i.a, align 8, !tbaa !85
  %i.hb = zext i32 %i.ha to i64
  %i.hc = icmp samesign ult i64 %indvars.iv.next54, %i.hb
  br i1 %i.hc, label %bb.b, label %._crit_edge, !llvm.loop !207

._crit_edge:                                      ; preds = %zend_ast_export_indent.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_ast_export_visibility(ptr noundef nonnull %0, i32 noundef %1, i32 noundef range(i32 0, 4) %2) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !117    ; 3 uses
  %.not.i39 = icmp eq ptr %i.b, null
  br i1 %.not.i39, label %bb.d, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = add i64 %i.d, 7                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !118
  %.not12.i40 = icmp ult i64 %i.e, %i.g
  br i1 %.not12.i40, label %smart_str_alloc.exit43, label %bb.d, !prof !112

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i41 = phi i64 [ 7, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i41) #14
  %.pre = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre44 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %smart_str_alloc.exit43

smart_str_alloc.exit43:                           ; preds = %bb.c, %bb.d
  %i.h = phi i64 [ %i.d, %bb.c ], [ %.pre44, %bb.d ]
  %i.i = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %.1.i42 = phi i64 [ %i.e, %bb.c ], [ %.0.i41, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.k, ptr noundef nonnull align 1 dereferenceable(7) @.str.165, i64 7, i1 false)
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.l = and i32 %1, 2
  %.not14 = icmp eq i32 %i.l, 0
  br i1 %.not14, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %0, align 8, !tbaa !117    ; 3 uses
  %.not.i34 = icmp eq ptr %i.m, null
  br i1 %.not.i34, label %bb.h, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !64   ; 2 uses
  %i.p = add i64 %i.o, 10                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !118
  %.not12.i35 = icmp ult i64 %i.p, %i.r
  br i1 %.not12.i35, label %smart_str_alloc.exit38, label %bb.h, !prof !112

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i36 = phi i64 [ 10, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i36) #14
  %.pre45 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %.pre45, i64 16
  %.pre47 = load i64, ptr %.phi.trans.insert46, align 8, !tbaa !64
  br label %smart_str_alloc.exit38

smart_str_alloc.exit38:                           ; preds = %bb.g, %bb.h
  %i.s = phi i64 [ %i.o, %bb.g ], [ %.pre47, %bb.h ]
  %i.t = phi ptr [ %i.m, %bb.g ], [ %.pre45, %bb.h ]
  %.1.i37 = phi i64 [ %i.p, %bb.g ], [ %.0.i36, %bb.h ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.v, ptr noundef nonnull align 1 dereferenceable(10) @.str.166, i64 10, i1 false)
  br label %.sink.split

bb.i:                                             ; preds = %bb.e
  %i.w = and i32 %1, 4
  %.not15 = icmp eq i32 %i.w, 0
  br i1 %.not15, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !117    ; 3 uses
  %.not.i29 = icmp eq ptr %i.x, null
  br i1 %.not.i29, label %bb.l, label %bb.k, !prof !22

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !64   ; 2 uses
  %i.aa = add i64 %i.z, 8                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !118
  %.not12.i30 = icmp ult i64 %i.aa, %i.ac
  br i1 %.not12.i30, label %smart_str_alloc.exit33, label %bb.l, !prof !112

end_hunk_3
begin_hunk_4_@zend_ast_export_var:bb.a
  %i.am = load i64, ptr %i.al, align 8, !tbaa !64
  %i.an = add i64 %i.am, 1                        ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !118
  %.not12.i.i18 = icmp ult i64 %i.an, %i.ap
  br i1 %.not12.i.i18, label %smart_str_appendc_ex.exit, label %bb.k, !prof !112

bb.k:                                             ; preds = %bb.j, %.thread
  %.0.i.i19 = phi i64 [ 1, %.thread ], [ %i.an, %bb.j ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i19) #14
  %.pre31 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit

smart_str_appendc_ex.exit:                        ; preds = %bb.j, %bb.k
  %i.aq = phi ptr [ %i.ak, %bb.j ], [ %.pre31, %bb.k ]
  %.1.i.i20 = phi i64 [ %i.an, %bb.j ], [ %.0.i.i19, %bb.k ] ; 4 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 23
  %i.as = getelementptr i8, ptr %i.ar, i64 %.1.i.i20
  store i8 123, ptr %i.as, align 1, !tbaa !47
  %i.at = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.1.i.i20, ptr %i.au, align 8, !tbaa !64
  %i.av = load i16, ptr %1, align 8, !tbaa !70
  %i.aw = icmp eq i16 %i.av, 64
  br i1 %i.aw, label %bb.l, label %zend_ast_export_name.exit

bb.l:                                             ; preds = %smart_str_appendc_ex.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !47
  %i.az = icmp eq i8 %i.ay, 6
  br i1 %i.az, label %bb.m, label %zend_ast_export_name.exit

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !47 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !64 ; 2 uses
  %i.bf = add i64 %i.be, %.1.i.i20                ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !118
  %.not12.i.i.i = icmp ult i64 %i.bf, %i.bh
  br i1 %.not12.i.i.i, label %zend_ast_export_name.exit.thread, label %bb.n, !prof !112

bb.n:                                             ; preds = %bb.m
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.bf) #14, !inline_history !123
  %.pre32 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %.pre32, i64 16
  %.pre34 = load i64, ptr %.phi.trans.insert33, align 8, !tbaa !64
  br label %zend_ast_export_name.exit.thread

zend_ast_export_name.exit.thread:                 ; preds = %bb.n, %bb.m
  %i.bi = phi i64 [ %.pre34, %bb.n ], [ %.1.i.i20, %bb.m ]
  %i.bj = phi ptr [ %.pre32, %bb.n ], [ %i.at, %bb.m ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull align 8 %i.bc, i64 %i.be, i1 false)
  %i.bm = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %i.bf, ptr %i.bn, align 8, !tbaa !64
  br label %bb.o

zend_ast_export_name.exit:                        ; preds = %bb.l, %smart_str_appendc_ex.exit
  tail call fastcc void @zend_ast_export_ex(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %2), !inline_history !123
  %.pr = load ptr, ptr %0, align 8, !tbaa !117    ; 3 uses
  %.not.i.i21 = icmp eq ptr %.pr, null
  br i1 %.not.i.i21, label %bb.p, label %zend_ast_export_name.exit._crit_edge, !prof !218

zend_ast_export_name.exit._crit_edge:             ; preds = %zend_ast_export_name.exit
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %.pre36 = load i64, ptr %.phi.trans.insert35, align 8, !tbaa !64
  br label %bb.o

bb.o:                                             ; preds = %zend_ast_export_name.exit._crit_edge, %zend_ast_export_name.exit.thread
  %i.bo = phi i64 [ %i.bf, %zend_ast_export_name.exit.thread ], [ %.pre36, %zend_ast_export_name.exit._crit_edge ]
  %i.bp = phi ptr [ %i.bm, %zend_ast_export_name.exit.thread ], [ %.pr, %zend_ast_export_name.exit._crit_edge ]
  %i.bq = add i64 %i.bo, 1                        ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !118
  %.not12.i.i22 = icmp ult i64 %i.bq, %i.bs
  br i1 %.not12.i.i22, label %smart_str_appendc_ex.exit25, label %bb.p, !prof !112

bb.p:                                             ; preds = %bb.o, %zend_ast_export_name.exit
  %.0.i.i23 = phi i64 [ 1, %zend_ast_export_name.exit ], [ %i.bq, %bb.o ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i23) #14
  %.pre37 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit25

smart_str_appendc_ex.exit25:                      ; preds = %bb.o, %bb.p
  %i.bt = phi ptr [ %i.bp, %bb.o ], [ %.pre37, %bb.p ]
  %.1.i.i24 = phi i64 [ %i.bq, %bb.o ], [ %.0.i.i23, %bb.p ] ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 23
  %i.bv = getelementptr i8, ptr %i.bu, i64 %.1.i.i24
  store i8 125, ptr %i.bv, align 1, !tbaa !47
  %i.bw = load ptr, ptr %0, align 8, !tbaa !117
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %.1.i.i24, ptr %i.bx, align 8, !tbaa !64
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %smart_str_appendc_ex.exit25, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_ast_export_ns_name(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !70
  %i.b = icmp eq i16 %i.a, 64
  br i1 %i.b, label %bb.b, label %.thread19

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !47
  %i.f = icmp eq i8 %i.e, 6
  br i1 %i.f, label %bb.c, label %.thread19

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !71
  %.pr = load ptr, ptr %0, align 8, !tbaa !117    ; 8 uses
  switch i16 %i.h, label %bb.j [
    i16 0, label %bb.d
    i16 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %.not.i.i14 = icmp eq ptr %.pr, null
  br i1 %.not.i.i14, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64
  %i.k = add i64 %i.j, 1                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !118
  %.not12.i.i15 = icmp ult i64 %i.k, %i.m
  br i1 %.not12.i.i15, label %smart_str_appendc_ex.exit, label %bb.f, !prof !112

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i16 = phi i64 [ 1, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i16) #14
  %.pre21 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit

smart_str_appendc_ex.exit:                        ; preds = %bb.e, %bb.f
  %i.n = phi ptr [ %.pr, %bb.e ], [ %.pre21, %bb.f ]
  %.1.i.i17 = phi i64 [ %i.k, %bb.e ], [ %.0.i.i16, %bb.f ] ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 23
  %i.p = getelementptr i8, ptr %i.o, i64 %.1.i.i17
  store i8 92, ptr %i.p, align 1, !tbaa !47
  br label %.thread

bb.g:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !64   ; 2 uses
  %i.s = add i64 %i.r, 10                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !118
  %.not12.i = icmp ult i64 %i.s, %i.u
  br i1 %.not12.i, label %smart_str_alloc.exit, label %bb.i, !prof !112

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi i64 [ 10, %bb.g ], [ %i.s, %bb.h ]  ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i) #14
  %.pre = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre20 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %smart_str_alloc.exit

smart_str_alloc.exit:                             ; preds = %bb.h, %bb.i
  %i.v = phi i64 [ %i.r, %bb.h ], [ %.pre20, %bb.i ]
  %i.w = phi ptr [ %.pr, %bb.h ], [ %.pre, %bb.i ]
  %.1.i = phi i64 [ %i.s, %bb.h ], [ %.0.i, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.y, ptr noundef nonnull align 1 dereferenceable(10) @.str.177, i64 10, i1 false)
  br label %.thread

.thread:                                          ; preds = %smart_str_alloc.exit, %smart_str_appendc_ex.exit
  %.1.i.sink = phi i64 [ %.1.i, %smart_str_alloc.exit ], [ %.1.i.i17, %smart_str_appendc_ex.exit ]
  %i.z = load ptr, ptr %0, align 8, !tbaa !117    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.1.i.sink, ptr %i.aa, align 8, !tbaa !64
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !47  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !64
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !47  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !64 ; 3 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %bb.l, label %bb.k, !prof !122

bb.k:                                             ; preds = %.thread, %bb.j
  %i.aj = phi i64 [ %i.ae, %.thread ], [ %i.ai, %bb.j ] ; 3 uses
  %i.ak = phi ptr [ %i.ac, %.thread ], [ %i.ag, %bb.j ] ; 2 uses
  %i.al = phi ptr [ %i.z, %.thread ], [ %.pr, %bb.j ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !64 ; 2 uses
  %i.ao = add i64 %i.an, %i.aj                    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !118
  %.not12.i.i = icmp ult i64 %i.ao, %i.aq
  br i1 %.not12.i.i, label %bb.m, label %bb.l, !prof !112

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = phi i64 [ %i.ai, %bb.j ], [ %i.aj, %bb.k ]
  %i.as = phi ptr [ %i.ag, %bb.j ], [ %i.ak, %bb.k ]
  %.0.i.i = phi i64 [ %i.ai, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i) #14
  %.pre22 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %.pre22, i64 16
  %.pre24 = load i64, ptr %.phi.trans.insert23, align 8, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.at = phi i64 [ %i.an, %bb.k ], [ %.pre24, %bb.l ]
  %i.au = phi ptr [ %i.al, %bb.k ], [ %.pre22, %bb.l ]
  %i.av = phi i64 [ %i.aj, %bb.k ], [ %i.ar, %bb.l ]
  %i.aw = phi ptr [ %i.ak, %bb.k ], [ %i.as, %bb.l ]
  %.1.i.i = phi i64 [ %i.ao, %bb.k ], [ %.0.i.i, %bb.l ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.aw, i64 %i.av, i1 false)
  %i.az = load ptr, ptr %0, align 8, !tbaa !117
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.1.i.i, ptr %i.ba, align 8, !tbaa !64
  br label %bb.n

.thread19:                                        ; preds = %bb.b, %bb.a
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_ast_export_qstr(ptr noundef nonnull %0, i8 noundef signext range(i8 34, 97) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aj
  %.076 = phi i64 [ 0, %.lr.ph ], [ %i.cy, %bb.aj ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.076
  %i.f = load i8, ptr %i.e, align 1, !tbaa !47
  %.fr = freeze i8 %i.f                           ; 7 uses
  %i.g = icmp ult i8 %.fr, 32
  br i1 %i.g, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !117    ; 15 uses
  %.not.i = icmp eq ptr %i.h, null                ; 7 uses
  switch i8 %.fr, label %bb.v [
    i8 10, label %bb.d
    i8 13, label %bb.g
    i8 9, label %bb.j
    i8 12, label %bb.m
    i8 11, label %bb.p
    i8 27, label %bb.s
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !64   ; 2 uses
  %i.k = add i64 %i.j, 2                          ; 3 uses
  %i.l = load i64, ptr %i.d, align 8, !tbaa !118
  %.not12.i56 = icmp ult i64 %i.k, %i.l
  br i1 %.not12.i56, label %smart_str_alloc.exit59, label %bb.f, !prof !112

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i57 = phi i64 [ 2, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i57) #14
  %.pre95 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert96 = getelementptr inbounds nuw i8, ptr %.pre95, i64 16
  %.pre97 = load i64, ptr %.phi.trans.insert96, align 8, !tbaa !64
  br label %smart_str_alloc.exit59

smart_str_alloc.exit59:                           ; preds = %bb.e, %bb.f
  %i.m = phi i64 [ %i.j, %bb.e ], [ %.pre97, %bb.f ]
  %i.n = phi ptr [ %i.h, %bb.e ], [ %.pre95, %bb.f ]
  %.1.i58 = phi i64 [ %i.k, %bb.e ], [ %.0.i57, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i16 28252, ptr %i.p, align 1
  br label %bb.aj

bb.g:                                             ; preds = %bb.c
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !64   ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 3 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !118
  %.not12.i51 = icmp ult i64 %i.s, %i.t
  br i1 %.not12.i51, label %smart_str_alloc.exit54, label %bb.i, !prof !112

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i52 = phi i64 [ 2, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i52) #14
  %.pre92 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %.pre92, i64 16
  %.pre94 = load i64, ptr %.phi.trans.insert93, align 8, !tbaa !64
  br label %smart_str_alloc.exit54

smart_str_alloc.exit54:                           ; preds = %bb.h, %bb.i
  %i.u = phi i64 [ %i.r, %bb.h ], [ %.pre94, %bb.i ]
  %i.v = phi ptr [ %i.h, %bb.h ], [ %.pre92, %bb.i ]
  %.1.i53 = phi i64 [ %i.s, %bb.h ], [ %.0.i52, %bb.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i16 29276, ptr %i.x, align 1
  br label %bb.aj

bb.j:                                             ; preds = %bb.c
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !22

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !64   ; 2 uses
  %i.aa = add i64 %i.z, 2                         ; 3 uses
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !118
  %.not12.i46 = icmp ult i64 %i.aa, %i.ab
  br i1 %.not12.i46, label %smart_str_alloc.exit49, label %bb.l, !prof !112

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i47 = phi i64 [ 2, %bb.j ], [ %i.aa, %bb.k ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i47) #14
  %.pre89 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert90 = getelementptr inbounds nuw i8, ptr %.pre89, i64 16
  %.pre91 = load i64, ptr %.phi.trans.insert90, align 8, !tbaa !64
  br label %smart_str_alloc.exit49

smart_str_alloc.exit49:                           ; preds = %bb.k, %bb.l
  %i.ac = phi i64 [ %i.z, %bb.k ], [ %.pre91, %bb.l ]
  %i.ad = phi ptr [ %i.h, %bb.k ], [ %.pre89, %bb.l ]
  %.1.i48 = phi i64 [ %i.aa, %bb.k ], [ %.0.i47, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i16 29788, ptr %i.af, align 1
  br label %bb.aj

bb.m:                                             ; preds = %bb.c
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !22

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !64 ; 2 uses
  %i.ai = add i64 %i.ah, 2                        ; 3 uses
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !118
  %.not12.i41 = icmp ult i64 %i.ai, %i.aj
  br i1 %.not12.i41, label %smart_str_alloc.exit44, label %bb.o, !prof !112

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.i42 = phi i64 [ 2, %bb.m ], [ %i.ai, %bb.n ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i42) #14
  %.pre86 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %.pre86, i64 16
  %.pre88 = load i64, ptr %.phi.trans.insert87, align 8, !tbaa !64
  br label %smart_str_alloc.exit44

smart_str_alloc.exit44:                           ; preds = %bb.n, %bb.o
  %i.ak = phi i64 [ %i.ah, %bb.n ], [ %.pre88, %bb.o ]
  %i.al = phi ptr [ %i.h, %bb.n ], [ %.pre86, %bb.o ]
  %.1.i43 = phi i64 [ %i.ai, %bb.n ], [ %.0.i42, %bb.o ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i16 26204, ptr %i.an, align 1
  br label %bb.aj

bb.p:                                             ; preds = %bb.c
  br i1 %.not.i, label %bb.r, label %bb.q, !prof !22

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !64 ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 3 uses
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !118
  %.not12.i36 = icmp ult i64 %i.aq, %i.ar
  br i1 %.not12.i36, label %smart_str_alloc.exit39, label %bb.r, !prof !112
end_hunk_4
begin_hunk_5_@zend_ast_export_quoted_str:bb.a

smart_str_appendc_ex.exit17.i:                    ; preds = %smart_str_appendc_ex.exit17.sink.split.i, %bb.n, %bb.m
  %.sink.i = phi ptr [ %i.an, %bb.n ], [ %i.av, %bb.m ], [ %.pre25.i, %smart_str_appendc_ex.exit17.sink.split.i ]
  %.1.i.i21.sink34.i = phi i64 [ %i.aq, %bb.n ], [ %i.ax, %bb.m ], [ %.0.i.i20.sink.i, %smart_str_appendc_ex.exit17.sink.split.i ] ; 4 uses
  %i.az = getelementptr i8, ptr %.sink.i, i64 23
  %i.ba = getelementptr i8, ptr %i.az, i64 %.1.i.i21.sink34.i
  store i8 %i.ap, ptr %i.ba, align 1, !tbaa !47
  %i.bb = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.1.i.i21.sink34.i, ptr %i.bc, align 8, !tbaa !64
  %i.bd = add nuw i64 %.023.i, 1                  ; 2 uses
  %i.be = load i64, ptr %i.a, align 8, !tbaa !64
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.j, label %zend_ast_export_str.exit.thread, !llvm.loop !223

zend_ast_export_str.exit.thread:                  ; preds = %smart_str_appendc_ex.exit17.i, %smart_str_appendc_ex.exit21
  %i.bg = phi i64 [ %.1.i.i20, %smart_str_appendc_ex.exit21 ], [ %.1.i.i21.sink34.i, %smart_str_appendc_ex.exit17.i ]
  %i.bh = phi ptr [ %i.ah, %smart_str_appendc_ex.exit21 ], [ %i.bb, %smart_str_appendc_ex.exit17.i ]
  %i.bi = add i64 %i.bg, 1                        ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !118
  %.not12.i.i23 = icmp ult i64 %i.bi, %i.bk
  br i1 %.not12.i.i23, label %smart_str_appendc_ex.exit16, label %smart_str_appendc_ex.exit16.sink.split, !prof !112

smart_str_appendc_ex.exit16.sink.split:           ; preds = %zend_ast_export_str.exit.thread, %smart_str_appendc_ex.exit, %bb.g
  %.sink = phi i64 [ %i.v, %bb.g ], [ 1, %smart_str_appendc_ex.exit ], [ %i.bi, %zend_ast_export_str.exit.thread ] ; 2 uses
  %.sink56.ph = phi i8 [ 34, %bb.g ], [ 34, %smart_str_appendc_ex.exit ], [ 39, %zend_ast_export_str.exit.thread ]
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.sink) #14
  %.pre32 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit16

smart_str_appendc_ex.exit16:                      ; preds = %smart_str_appendc_ex.exit16.sink.split, %zend_ast_export_str.exit.thread, %bb.g
  %.sink60 = phi ptr [ %i.bh, %zend_ast_export_str.exit.thread ], [ %i.s, %bb.g ], [ %.pre32, %smart_str_appendc_ex.exit16.sink.split ]
  %.sink59 = phi i64 [ %i.bi, %zend_ast_export_str.exit.thread ], [ %i.v, %bb.g ], [ %.sink, %smart_str_appendc_ex.exit16.sink.split ] ; 2 uses
  %.sink56 = phi i8 [ 39, %zend_ast_export_str.exit.thread ], [ 34, %bb.g ], [ %.sink56.ph, %smart_str_appendc_ex.exit16.sink.split ]
  %i.bl = getelementptr i8, ptr %.sink60, i64 23
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.sink59
  store i8 %.sink56, ptr %i.bm, align 1, !tbaa !47
  %i.bn = load ptr, ptr %0, align 8, !tbaa !117
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.sink59, ptr %i.bo, align 8, !tbaa !64
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !80}
!1 = distinct !{!1, !80}
!2 = distinct !{!2, !80}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 _ZTS11_zend_arena", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!"_zend_arena", !18, i64 0, !18, i64 8, !16, i64 16}
!20 = !{!19, !18, i64 0}
!21 = !{!19, !18, i64 8}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!19, !16, i64 16}
!24 = !{!"short", !11, i64 0}
!25 = !{!"_zend_stack", !12, i64 0, !12, i64 4, !12, i64 8, !15, i64 16}
!26 = !{!"p1 _ZTS17_zend_class_entry", !15, i64 0}
!27 = !{!"p1 _ZTS12_zend_string", !15, i64 0}
!28 = !{!"p1 _ZTS14_zend_op_array", !15, i64 0}
!29 = !{!"p1 _ZTS11_zend_array", !15, i64 0}
!30 = !{!"_Bool", !11, i64 0}
!31 = !{!"p1 _ZTS19_zend_llist_element", !15, i64 0}
!32 = !{!"long", !11, i64 0}
!33 = !{!"_zend_llist", !31, i64 0, !31, i64 8, !32, i64 16, !32, i64 24, !15, i64 32, !11, i64 40, !31, i64 48}
!34 = !{!"p1 _ZTS22_zend_ini_parser_param", !15, i64 0}
!35 = !{!"p1 _ZTS21_zend_oparray_context", !15, i64 0}
!36 = !{!"p1 _ZTS22_zend_brk_cont_element", !15, i64 0}
!37 = !{!"_zend_oparray_context", !35, i64 0, !28, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !36, i64 48, !29, i64 56, !27, i64 64, !12, i64 72, !30, i64 76, !30, i64 77}
!38 = !{!"_zend_declarables", !32, i64 0}
!39 = !{!"_zend_refcounted_h", !12, i64 0, !11, i64 4}
!40 = !{!"_zend_array", !39, i64 0, !11, i64 8, !12, i64 12, !11, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !32, i64 40, !15, i64 48}
!41 = !{!"_zend_file_context", !38, i64 0, !27, i64 8, !30, i64 16, !30, i64 17, !29, i64 24, !29, i64 32, !29, i64 40, !40, i64 48}
!42 = !{!"any p2 pointer", !15, i64 0}
!43 = !{!"p2 _ZTS14_zend_encoding", !42, i64 0}
!44 = !{!"p1 _ZTS9_zend_ast", !15, i64 0}
!45 = !{!"_zend_compiler_globals", !25, i64 0, !26, i64 24, !27, i64 32, !12, i64 40, !28, i64 48, !29, i64 56, !29, i64 64, !29, i64 72, !11, i64 80, !30, i64 81, !30, i64 82, !30, i64 83, !30, i64 84, !33, i64 88, !34, i64 144, !30, i64 152, !30, i64 153, !30, i64 154, !30, i64 155, !27, i64 160, !12, i64 168, !12, i64 172, !37, i64 176, !41, i64 256, !16, i64 360, !40, i64 368, !43, i64 424, !32, i64 432, !30, i64 440, !30, i64 441, !30, i64 442, !44, i64 448, !16, i64 456, !25, i64 464, !29, i64 488, !12, i64 496, !15, i64 504, !15, i64 512, !32, i64 520, !32, i64 528, !29, i64 536, !29, i64 544, !29, i64 552, !26, i64 560, !12, i64 568, !15, i64 576, !12, i64 584, !25, i64 592}
!46 = !{!45, !12, i64 40}
!47 = !{!11, !11, i64 0}
!48 = !{!"p1 _ZTS14_zend_function", !15, i64 0}
!49 = !{!"_zend_ast_fcc", !24, i64 0, !24, i64 2, !12, i64 4, !48, i64 8}
!50 = !{!49, !24, i64 0}
!51 = !{!49, !24, i64 2}
!52 = !{!49, !12, i64 4}
!53 = !{!49, !48, i64 8}
!54 = !{!"_zval_struct", !11, i64 0, !11, i64 8, !11, i64 12}
!55 = !{!"_zend_ast_zval", !24, i64 0, !24, i64 2, !54, i64 8}
!56 = !{!55, !24, i64 0}
!57 = !{!55, !24, i64 2}
!58 = !{!"_zend_ast_op_array", !24, i64 0, !24, i64 2, !12, i64 4, !28, i64 8}
!59 = !{!58, !24, i64 0}
!60 = !{!58, !24, i64 2}
!61 = !{!58, !12, i64 4}
!62 = !{!58, !28, i64 8}
!63 = !{!"_zend_string", !39, i64 0, !32, i64 8, !32, i64 16, !11, i64 24}
!64 = !{!63, !32, i64 16}
!65 = !{!"p2 _ZTS12_zend_string", !42, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!27, !27, i64 0}
!68 = !{!39, !12, i64 0}
!69 = !{!"_zend_ast", !24, i64 0, !24, i64 2, !12, i64 4, !11, i64 8}
!70 = !{!69, !24, i64 0}
!71 = !{!69, !24, i64 2}
!72 = !{!44, !44, i64 0}
!73 = !{!69, !12, i64 4}
!74 = !{!"_zend_ast_decl", !24, i64 0, !24, i64 2, !12, i64 4, !12, i64 8, !12, i64 12, !27, i64 16, !27, i64 24, !11, i64 32}
!75 = !{!74, !24, i64 0}
!76 = !{!74, !24, i64 2}
!77 = !{!74, !12, i64 12}
!78 = !{!74, !27, i64 16}
!79 = !{!74, !27, i64 24}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"_zend_ast_list", !24, i64 0, !24, i64 2, !12, i64 4, !12, i64 8, !11, i64 16}
!82 = !{!81, !24, i64 0}
!83 = !{!81, !24, i64 2}
!84 = !{!81, !12, i64 4}
!85 = !{!81, !12, i64 8}
!86 = !{!"p2 _ZTS11_zend_array", !42, i64 0}
!87 = !{!"p1 _ZTS13__jmp_buf_tag", !15, i64 0}
!88 = !{!"p1 _ZTS12_zval_struct", !15, i64 0}
!89 = !{!"p1 _ZTS14_zend_vm_stack", !15, i64 0}
!90 = !{!"p1 _ZTS18_zend_execute_data", !15, i64 0}
!91 = !{!"zend_atomic_bool_s", !11, i64 0}
!92 = !{!"p1 _ZTS15_zend_ini_entry", !15, i64 0}
!93 = !{!"p2 _ZTS12_zend_object", !42, i64 0}
!94 = !{!"_zend_objects_store", !93, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!95 = !{!"_zend_lazy_objects_store", !40, i64 0}
!96 = !{!"p1 _ZTS12_zend_object", !15, i64 0}
!97 = !{!"p1 _ZTS8_zend_op", !15, i64 0}
!98 = !{!"p1 _ZTS18_zend_module_entry", !15, i64 0}
!99 = !{!"p1 _ZTS18_HashTableIterator", !15, i64 0}
!100 = !{!"_zend_op", !15, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !12, i64 20, !12, i64 24, !11, i64 28, !11, i64 29, !11, i64 30, !11, i64 31}
!101 = !{!"", !88, i64 0, !88, i64 8, !88, i64 16}
!102 = !{!"p1 _ZTS19_zend_fiber_context", !15, i64 0}
!103 = !{!"p1 _ZTS11_zend_fiber", !15, i64 0}
!104 = !{!"p2 _ZTS16_zend_error_info", !42, i64 0}
!105 = !{!"_zend_call_stack", !15, i64 0, !32, i64 8}
!106 = !{!"p1 _ZTS19_zend_strtod_bigint", !15, i64 0}
!107 = !{!"_zend_strtod_state", !11, i64 0, !106, i64 64, !18, i64 72}
!108 = !{!"_zend_executor_globals", !54, i64 0, !54, i64 16, !11, i64 32, !86, i64 288, !86, i64 296, !40, i64 304, !40, i64 360, !87, i64 416, !12, i64 424, !30, i64 428, !54, i64 432, !12, i64 448, !29, i64 456, !29, i64 464, !29, i64 472, !88, i64 480, !88, i64 488, !89, i64 496, !32, i64 504, !90, i64 512, !26, i64 520, !12, i64 528, !90, i64 536, !12, i64 544, !32, i64 552, !12, i64 560, !12, i64 564, !12, i64 568, !30, i64 572, !30, i64 573, !91, i64 574, !91, i64 575, !29, i64 576, !32, i64 584, !15, i64 592, !15, i64 600, !40, i64 608, !40, i64 664, !12, i64 720, !30, i64 724, !54, i64 728, !54, i64 744, !25, i64 760, !25, i64 784, !25, i64 808, !26, i64 832, !12, i64 840, !12, i64 844, !32, i64 848, !29, i64 856, !29, i64 864, !92, i64 872, !94, i64 880, !95, i64 904, !96, i64 960, !96, i64 968, !97, i64 976, !11, i64 984, !98, i64 1080, !30, i64 1088, !11, i64 1089, !32, i64 1096, !12, i64 1104, !12, i64 1108, !99, i64 1112, !11, i64 1120, !15, i64 1376, !11, i64 1384, !100, i64 1640, !40, i64 1672, !32, i64 1728, !101, i64 1736, !102, i64 1760, !102, i64 1768, !103, i64 1776, !32, i64 1784, !30, i64 1792, !12, i64 1796, !104, i64 1800, !27, i64 1808, !32, i64 1816, !105, i64 1824, !32, i64 1840, !32, i64 1848, !107, i64 1856, !11, i64 1936}
!109 = !{!108, !27, i64 1808}
!110 = !{!108, !32, i64 1816}
!111 = !{ptr @zend_ast_evaluate_ex}
!112 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!113 = !{!40, !12, i64 24}
!114 = !{!"_Bucket", !54, i64 0, !32, i64 16, !27, i64 24}
!115 = !{!114, !27, i64 24}
!116 = !{!"", !27, i64 0, !32, i64 8}
!117 = !{!116, !27, i64 0}
!118 = !{!116, !32, i64 8}
!119 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!120 = !{!"llvm.loop.peeled.count", i32 1}
!121 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!122 = !{!"branch_weights", !"expected", i32 3219615, i32 2144264033}
!123 = !{ptr @zend_ast_export_name}
!124 = !{!"branch_weights", !"expected", i32 2861879, i32 2144621769}
!125 = !{!"branch_weights", !"expected", i32 2861880, i32 2144621768}
!126 = !{!"_znode", !11, i64 0, !11, i64 1, !11, i64 8}
!127 = !{!"_zend_ast_znode", !24, i64 0, !24, i64 2, !12, i64 4, !126, i64 8}
!128 = !{!127, !24, i64 0}
!129 = !{!127, !24, i64 2}
!130 = !{!127, !12, i64 4}
!131 = !{i64 0, i64 1, !47, i64 1, i64 1, !47, i64 8, i64 16, !47}
!132 = !{!74, !12, i64 4}
!133 = !{!74, !12, i64 8}
!134 = distinct !{!134, !80}
!135 = distinct !{!135, !80}
!136 = distinct !{!136, !80}
!137 = distinct !{!137, !80}
!138 = distinct !{!138, !80}
!139 = distinct !{!139, !80}
!140 = !{!30, !30, i64 0}
!141 = !{!108, !96, i64 960}
!142 = !{ptr @is_smaller_function, ptr @is_smaller_or_equal_function}
!143 = !{!"branch_weights", i32 4001, i32 1}
!144 = !{!"p1 _ZTS24_zend_class_mutable_data", !15, i64 0}
!145 = !{!"p1 _ZTS29_zend_inheritance_cache_entry", !15, i64 0}
!146 = !{!"p2 _ZTS19_zend_property_info", !42, i64 0}
!147 = !{!"p1 _ZTS21_zend_object_handlers", !15, i64 0}
!148 = !{!"p1 _ZTS26_zend_class_iterator_funcs", !15, i64 0}
!149 = !{!"p1 _ZTS29_zend_class_arrayaccess_funcs", !15, i64 0}
!150 = !{!"p1 _ZTS16_zend_class_name", !15, i64 0}
!151 = !{!"p2 _ZTS17_zend_trait_alias", !42, i64 0}
!152 = !{!"p2 _ZTS22_zend_trait_precedence", !42, i64 0}
!153 = !{!"_zend_class_entry", !11, i64 0, !27, i64 8, !11, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !88, i64 40, !88, i64 48, !88, i64 56, !40, i64 64, !40, i64 120, !40, i64 176, !144, i64 232, !145, i64 240, !146, i64 248, !48, i64 256, !48, i64 264, !48, i64 272, !48, i64 280, !48, i64 288, !48, i64 296, !48, i64 304, !48, i64 312, !48, i64 320, !48, i64 328, !48, i64 336, !48, i64 344, !48, i64 352, !147, i64 360, !148, i64 368, !149, i64 376, !11, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !11, i64 440, !150, i64 448, !151, i64 456, !152, i64 464, !29, i64 472, !12, i64 480, !29, i64 488, !27, i64 496, !11, i64 504}
!154 = !{!153, !27, i64 8}
!155 = !{!"_zend_object", !39, i64 0, !12, i64 8, !12, i64 12, !26, i64 16, !147, i64 24, !29, i64 32, !11, i64 40}
!156 = !{!155, !26, i64 16}
!157 = !{!26, !26, i64 0}
!158 = !{!155, !29, i64 32}
!159 = !{!155, !147, i64 24}
!160 = !{!"_zend_object_handlers", !12, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200}
!161 = !{!160, !15, i64 200}
!162 = !{!160, !15, i64 112}
!163 = !{!155, !12, i64 12}
!164 = !{!153, !12, i64 32}
!165 = !{i64 0, i64 8, !47, i64 8, i64 4, !47, i64 12, i64 4, !47}
!166 = !{i8 0, i8 2}
!167 = !{}
!168 = !{!45, !30, i64 81}
!169 = !{!"", !30, i64 0}
!170 = !{!169, !30, i64 0}
!171 = !{!160, !15, i64 128}
!172 = !{!45, !15, i64 512}
!173 = !{!15, !15, i64 0}
!174 = !{!153, !15, i64 400}
!175 = !{!153, !48, i64 320}
!176 = !{!153, !12, i64 28}
!177 = distinct !{!177, !80}
!178 = distinct !{!178, !80}
!179 = distinct !{!179, !80}
!180 = distinct !{!180, !80}
!181 = !{!12, !12, i64 0}
!182 = distinct !{!182, !80}
!183 = distinct !{!183, !80}
!184 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!185 = !{!"branch_weights", i32 2146410443, i32 -2146410443}
!186 = distinct !{!186, !80}
!187 = distinct !{!187, !80}
!188 = distinct !{ptr @zend_ast_export_list_ex, null}
!189 = distinct !{!189, !80, !120}
!190 = distinct !{null}
!191 = !{!"p1 _ZTS14_zend_arg_info", !15, i64 0}
!192 = !{!"p1 _ZTS19_zend_property_info", !15, i64 0}
!193 = !{!"p1 int", !15, i64 0}
!194 = !{!"p1 _ZTS16_zend_live_range", !15, i64 0}
!195 = !{!"p1 _ZTS23_zend_try_catch_element", !15, i64 0}
!196 = !{!"p2 _ZTS14_zend_op_array", !42, i64 0}
!197 = !{!"_zend_op_array", !11, i64 0, !11, i64 1, !12, i64 4, !27, i64 8, !26, i64 16, !48, i64 24, !12, i64 32, !12, i64 36, !191, i64 40, !29, i64 48, !42, i64 56, !27, i64 64, !12, i64 72, !192, i64 80, !12, i64 88, !12, i64 92, !12, i64 96, !97, i64 104, !29, i64 112, !29, i64 120, !65, i64 128, !193, i64 136, !12, i64 144, !12, i64 148, !194, i64 152, !195, i64 160, !27, i64 168, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !88, i64 192, !196, i64 200, !11, i64 208}
!198 = !{!197, !27, i64 8}
!199 = !{!"branch_weights", !"expected", i32 1717127, i32 2145766521}
!200 = distinct !{!200, !80}
!201 = distinct !{!201, !80}
!202 = !{!108, !32, i64 552}
!203 = !{!114, !32, i64 16}
!204 = distinct !{null, null}
!205 = distinct !{null}
!206 = distinct !{!206, !80, !120}
!207 = distinct !{!207, !80}
!208 = distinct !{!208, !80, !120}
!209 = distinct !{!209, !80, !120}
!210 = distinct !{!210, !80}
!211 = !{!"branch_weights", !"expected", i32 1181510, i32 2146302138}
!212 = distinct !{!212, !80}
!213 = distinct !{!213, !80}
!214 = distinct !{!214, !80, !120}
!215 = distinct !{!215, !80, !120}
!216 = distinct !{!216, !80, !120}
!217 = distinct !{!217, !80}
!218 = !{!"branch_weights", !"expected", i32 1430940, i32 2146052708}
!219 = distinct !{!219, !80}
!220 = !{!"branch_weights", !"expected", i32 6439230, i32 2141044418}
!221 = distinct !{!221, !80}
!222 = distinct !{!222, !80}
!223 = distinct !{!223, !80}
end_hunk_5

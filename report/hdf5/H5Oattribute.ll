begin_hunk_0_@H5O__attr_remove_by_idx:bb.a
  %i.s = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.t = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !29
  %i.u = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_remove_by_idx, i32 noundef 1554, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %bb.w

bb.f:                                             ; preds = %bb.d
  %.pr = load i64, ptr %i.l, align 8, !tbaa !50
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %0, align 8, !tbaa !13
  %i.w = call i32 @H5A__dense_remove_by_idx(ptr noundef %i.v, ptr noundef nonnull %4, i32 noundef %1, i32 noundef %2, i64 noundef %3) #10
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.z = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !29
  %i.aa = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_remove_by_idx, i32 noundef 1561, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.42) #10 ; 0 uses
  br label %bb.w

.thread:                                          ; preds = %bb.c, %bb.f
  %.03952 = phi i32 [ %i.q, %bb.f ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.ab = load ptr, ptr %0, align 8, !tbaa !13
  %i.ac = call i32 @H5A__compact_build_table(ptr noundef %i.ab, ptr noundef nonnull %i.j, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #10
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.ae = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.af = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !29
  %i.ag = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_remove_by_idx, i32 noundef 1569, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.38) #10 ; 0 uses
  br label %.thread53

bb.j:                                             ; preds = %.thread
  %i.ah = load i64, ptr %5, align 8, !tbaa !110
  %.not45 = icmp ult i64 %3, %i.ah
  br i1 %.not45, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !29
  %i.aj = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !29
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_remove_by_idx, i32 noundef 1573, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.36) #10 ; 0 uses
  br label %.thread53

bb.l:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  store ptr %i.al, ptr %6, align 8, !tbaa !102
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %3
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !74
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !104
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i8 0, ptr %i.av, align 8, !tbaa !105
  store i32 1, ptr %7, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @H5O__attr_remove_cb, ptr %i.aw, align 8, !tbaa !60
  %i.ax = call i32 @H5O__msg_iterate_real(ptr noundef %i.al, ptr noundef nonnull %i.j, ptr noundef nonnull @H5O_MSG_ATTR, ptr noundef nonnull %7, ptr noundef nonnull %6) #10
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.ba = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !29
  %i.bb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_remove_by_idx, i32 noundef 1584, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef nonnull @.str.43) #10 ; 0 uses
  br label %.thread53

bb.n:                                             ; preds = %bb.l
  %i.bc = load i8, ptr %i.av, align 8, !tbaa !105, !range !10, !noundef !11
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.bf = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !29
  %i.bg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_remove_by_idx, i32 noundef 1588, i64 noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull @.str.26) #10 ; 0 uses
  br label %.thread53

.thread53:                                        ; preds = %bb.i, %bb.k, %bb.m, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g
  %.03951 = phi i32 [ %i.q, %bb.g ], [ %.03952, %bb.p ]
  %.not46 = icmp eq i32 %.03951, 0
  br i1 %.not46, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = call fastcc i32 @H5O__attr_remove_update(ptr noundef nonnull %0, ptr noundef %i.j, ptr noundef %4)
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.bk = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !29
  %i.bl = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_remove_by_idx, i32 noundef 1594, i64 noundef %i.bj, i64 noundef %i.bk, ptr noundef nonnull @.str.44) #10 ; 0 uses
  br label %bb.w

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.bm = load ptr, ptr %0, align 8, !tbaa !13
  %i.bn = call i32 @H5O_touch_oh(ptr noundef %i.bm, ptr noundef nonnull %i.j, i1 noundef zeroext false) #10
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bp = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.bq = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !29
  %i.br = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_remove_by_idx, i32 noundef 1598, i64 noundef %i.bp, i64 noundef %i.bq, ptr noundef nonnull @.str.15) #10 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.b
  %i.bs = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.bt = load i64, ptr @H5E_CANTPIN_g, align 8, !tbaa !29
  %i.bu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_remove_by_idx, i32 noundef 1547, i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull @.str.1) #10 ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %.thread53, %bb.t, %bb.u, %bb.s, %bb.h, %bb.e
  %.2.ph = phi i32 [ -1, %.thread53 ], [ 0, %bb.t ], [ -1, %bb.u ], [ -1, %bb.s ], [ -1, %bb.h ], [ -1, %bb.e ]
  %i.bv = call i32 @H5O_unpin(ptr noundef nonnull %i.j) #10
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bx = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.by = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !29
  %i.bz = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_remove_by_idx, i32 noundef 1602, i64 noundef %i.bx, i64 noundef %i.by, ptr noundef nonnull @.str.16) #10 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w
  %.3 = phi i32 [ -1, %bb.x ], [ %.2.ph, %bb.w ], [ -1, %bb.v ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !80
  %.not48 = icmp eq ptr %i.cb, null
  br i1 %.not48, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = call i32 @H5A__attr_release_table(ptr noundef nonnull %5) #10
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ce = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.cf = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !29
  %i.cg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_remove_by_idx, i32 noundef 1604, i64 noundef %i.ce, i64 noundef %i.cf, ptr noundef nonnull @.str.40) #10 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa, %bb.a
  %.4 = phi i32 [ -1, %bb.aa ], [ %.3, %bb.z ], [ %.3, %bb.y ], [ 0, %bb.a ]
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !29
  call void @H5AC_tag(i64 noundef %i.ch, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.4
}

declare i32 @H5A__dense_remove_by_idx(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O__attr_count_real(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5O_ainfo_t, align 8        ; 4 uses
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.g, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.h = load i8, ptr %i.g, align 8, !tbaa !30
  %i.i = icmp ugt i8 %i.h, 1
  br i1 %i.i, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.k = load i64, ptr %i.j, align 8, !tbaa !111  ; 6 uses
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112  ; 5 uses
  %min.iters.check = icmp ult i64 %i.k, 11
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.n = add i64 %i.k, -1                         ; 2 uses
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp eq i64 %i.o, 4294967295
  %i.q = icmp ugt i64 %i.n, 4294967295
  %i.r = or i1 %i.p, %i.q
  br i1 %i.r, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.s = and i64 %i.k, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec = sub nsw i64 %i.k, %i.u                 ; 3 uses
  %4 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi29 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %index
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !113
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !113
  %i.ae = insertelement <2 x ptr> poison, ptr %i.ac, i64 0
  %i.af = insertelement <2 x ptr> %i.ae, ptr %i.ad, i64 1
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !113
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !113
  %i.ai = insertelement <2 x ptr> poison, ptr %i.ag, i64 0
  %i.aj = insertelement <2 x ptr> %i.ai, ptr %i.ah, i64 1
  %i.ak = icmp eq <2 x ptr> %i.af, <ptr @H5O_MSG_ATTR, ptr @H5O_MSG_ATTR>
  %i.al = icmp eq <2 x ptr> %i.aj, <ptr @H5O_MSG_ATTR, ptr @H5O_MSG_ATTR>
  %i.am = zext <2 x i1> %i.ak to <2 x i64>
  %i.an = zext <2 x i1> %i.al to <2 x i64>
  %i.ao = add <2 x i64> %vec.phi, %i.am           ; 2 uses
  %i.ap = add <2 x i64> %vec.phi29, %i.an         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.025.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %4, %middle.block ]
  %.01724.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.ar, %middle.block ]
  br label %scalar.ph

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.as = call i32 @H5A__get_ainfo(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3) #10 ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.av = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !29
  %i.aw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_count_real, i32 noundef 1637, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.as, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = load i64, ptr %i.ax, align 8
  %storemerge = select i1 %.not, i64 0, i64 %i.ay
  store i64 %storemerge, ptr %2, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.019 = phi i32 [ -1, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.g

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %6, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ]
  %.025 = phi i32 [ %5, %scalar.ph ], [ %.025.ph, %scalar.ph.preheader ]
  %.01724 = phi i64 [ %spec.select, %scalar.ph ], [ %.01724.ph, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !113
  %i.bb = icmp eq ptr %i.ba, @H5O_MSG_ATTR
  %i.bc = zext i1 %i.bb to i64
  %spec.select = add i64 %.01724, %i.bc           ; 2 uses
  %5 = add i32 %.025, 1                           ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.bd = icmp ugt i64 %i.k, %6
  br i1 %i.bd, label %scalar.ph, label %._crit_edge, !llvm.loop !117

._crit_edge:                                      ; preds = %scalar.ph, %.preheader
  %.017.lcssa = phi i64 [ 0, %.preheader ], [ %spec.select, %scalar.ph ]
  store i64 %.017.lcssa, ptr %2, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge, %bb.f
  %.120 = phi i32 [ 0, %bb.a ], [ %.019, %bb.f ], [ 0, %._crit_edge ]
  ret i32 %.120
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O__attr_exists(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5O_ainfo_t, align 8        ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.H5O_iter_xst_t, align 8     ; 5 uses
  %5 = alloca %struct.H5O_mesg_operator_t, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 -1, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !69
  call void @H5AC_tag(i64 noundef %i.c, ptr noundef nonnull %i.a) #10
  %i.d = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %bb.n, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @H5O_protect(ptr noundef nonnull %0, i32 noundef 128, i1 noundef zeroext false) #10 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 -1, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.n = load i8, ptr %i.m, align 8, !tbaa !30
  %i.o = icmp ugt i8 %i.n, 1
  br i1 %i.o, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !13
  %i.q = call i32 @H5A__get_ainfo(ptr noundef %i.p, ptr noundef nonnull %i.j, ptr noundef nonnull %3) #10
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.t = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !29
  %i.u = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_exists, i32 noundef 1726, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %.pr = load i64, ptr %i.l, align 8, !tbaa !50
  %.not = icmp eq i64 %.pr, -1
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %0, align 8, !tbaa !13
  %i.w = call i32 @H5A__dense_exists(ptr noundef %i.v, ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2) #10
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.z = load i64, ptr @H5E_BADITER_g, align 8, !tbaa !29
  %i.aa = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_exists, i32 noundef 1733, i64 noundef %i.y, i64 noundef %i.z, ptr noundef nonnull @.str.45) #10 ; 0 uses
  br label %bb.l

.thread:                                          ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr %1, ptr %4, align 8, !tbaa !118
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.ab, align 8, !tbaa !121
  store i32 1, ptr %5, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @H5O__attr_exists_cb, ptr %i.ac, align 8, !tbaa !60
  %i.ad = load ptr, ptr %0, align 8, !tbaa !13
  %i.ae = call i32 @H5O__msg_iterate_real(ptr noundef %i.ad, ptr noundef nonnull %i.j, ptr noundef nonnull @H5O_MSG_ATTR, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.ag = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.ah = load i64, ptr @H5E_BADITER_g, align 8, !tbaa !29
  %i.ai = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_exists, i32 noundef 1747, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.45) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.022 = phi i32 [ -1, %bb.i ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.aj = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.ak = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !29
  %i.al = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_exists, i32 noundef 1719, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.17) #10 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.g, %bb.h, %bb.e
  %.1.ph = phi i32 [ %.022, %bb.j ], [ 0, %bb.g ], [ -1, %bb.h ], [ -1, %bb.e ]
  %i.am = call i32 @H5O_unprotect(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 0) #10
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.ap = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !29
  %i.aq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_exists, i32 noundef 1752, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.24) #10 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.a
  %.2 = phi i32 [ -1, %bb.m ], [ %.1.ph, %bb.l ], [ -1, %bb.k ], [ 0, %bb.a ]
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !29
  call void @H5AC_tag(i64 noundef %i.ar, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.2
}

declare i32 @H5A__dense_exists(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @H5O__attr_exists_cb(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef readonly captures(none) %3) #5 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74
  %i.m = load ptr, ptr %3, align 8, !tbaa !118
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %i.m) #12
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !121
  store i8 1, ptr %i.q, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O__attr_bh_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5O_ainfo_t, align 8        ; 7 uses
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread79, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.h = load i8, ptr %i.g, align 8, !tbaa !30
  %i.i = icmp ugt i8 %i.h, 1
  br i1 %i.i, label %bb.c, label %.thread79

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.j = call i32 @H5A__get_ainfo(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3) #10 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr @H5E_ATTR_g, align 8, !tbaa !29
  %i.m = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !29
  %i.n = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__attr_bh_info, i32 noundef 1787, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %.thread67

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.thread67, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5S?download=true
inline.NumInlined: 8
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@H5Sextent_copy:bb.a
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !37

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !16
  %i.ad = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !16
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Sextent_copy, i32 noundef 552, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.18) #10 ; 0 uses
  br label %.thread30

bb.k:                                             ; preds = %bb.i
  %i.af = call ptr @H5I_object_verify(i64 noundef %0, i32 noundef 4) #10 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !37

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !16
  %i.ai = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !16
  %i.aj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Sextent_copy, i32 noundef 554, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.18) #10 ; 0 uses
  br label %.thread30

bb.m:                                             ; preds = %bb.k
  %i.ak = call i32 @H5S_extent_copy(ptr noundef nonnull %i.af, ptr noundef nonnull %i.aa)
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %bb.o, !prof !37

bb.n:                                             ; preds = %bb.m
  %i.am = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.an = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !16
  %i.ao = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Sextent_copy, i32 noundef 558, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.21) #10 ; 0 uses
  br label %.thread30

.thread30:                                        ; preds = %bb.n, %bb.l, %bb.j
  %i.ap = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %.thread24

bb.o:                                             ; preds = %bb.m
  %i.aq = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.p

.thread24:                                        ; preds = %bb.h, %bb.f, %bb.c, %.thread30
  %i.ar = call i32 @H5E_dump_api_stack() #10      ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread24
  %.0131927 = phi i32 [ -1, %.thread24 ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.0131927
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S_extent_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.f = tail call i32 @H5S__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12
  %.pre7 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre8 = trunc nuw i8 %.pre to i1
  %.pre9 = trunc nuw i8 %.pre7 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_extent_copy, i32 noundef 578, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %bb.j

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi10 = phi i1 [ %.pre9, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre8, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi10, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.j, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @H5S__extent_copy_real(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.p = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !16
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_extent_copy, i32 noundef 585, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.21) #10 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41
  %i.u = icmp eq i32 %i.t, 3
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @H5S_select_all(ptr noundef nonnull %0, i1 noundef zeroext false) #10
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.y = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !16
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_extent_copy, i32 noundef 591, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.22) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.f, %bb.i, %bb.h, %bb.g, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S__extent_copy_real(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.critedge, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %H5S__extent_release.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @H5FL_arr_free(ptr noundef nonnull @H5_hsize_t_arr_free_list, ptr noundef nonnull %i.k) #10
  store ptr %i.l, ptr %i.j, align 8, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %.not10.i = icmp eq ptr %i.n, null
  br i1 %.not10.i, label %H5S__extent_release.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @H5FL_arr_free(ptr noundef nonnull @H5_hsize_t_arr_free_list, ptr noundef nonnull %i.n) #10
  store ptr %i.o, ptr %i.m, align 8, !tbaa !32
  br label %H5S__extent_release.exit

H5S__extent_release.exit:                         ; preds = %bb.b, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = load <2 x i32>, ptr %i.r, align 8, !tbaa !42
  %i.t = load i32, ptr %i.r, align 8, !tbaa !30
  store <2 x i32> %i.s, ptr %i.g, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !34
  store i64 %i.v, ptr %i.q, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !33   ; 3 uses
  store i32 %i.x, ptr %i.p, align 8, !tbaa !33
  switch i32 %i.t, label %.loopexit [
    i32 2, label %bb.g
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %H5S__extent_release.exit, %H5S__extent_release.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.h:                                             ; preds = %H5S__extent_release.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = zext i32 %i.x to i64
  %i.ac = tail call noalias ptr @H5FL_arr_malloc(ptr noundef nonnull @H5_hsize_t_arr_free_list, i64 noundef %i.ab) #10 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !31
  %i.ae = load i32, ptr %i.w, align 8, !tbaa !33  ; 6 uses
  %.not52 = icmp eq i32 %i.ae, 0
  br i1 %.not52, label %.loopexit48, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !31  ; 7 uses
  %wide.trip.count = zext i32 %i.ae to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.ae, 8
  %3 = ptrtoaddr ptr %i.ac to i64
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %3
  %diff.check = icmp ugt i64 %i.ah, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x i64>, ptr %i.ai, align 8, !tbaa !16
  %wide.load64 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x i64> %wide.load, ptr %i.ak, align 8, !tbaa !16
  store <2 x i64> %wide.load64, ptr %i.al, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit48, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.prol
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.prol
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !53

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %.loopexit48, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.at = load i64, ptr %i.as, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  store i64 %i.at, ptr %i.au, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.1
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.1
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next.2
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !16
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.2
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit48, label %scalar.ph, !llvm.loop !54

bb.j:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.be, align 8, !tbaa !31
  br label %.loopexit48

.loopexit48:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.i, %bb.j
  %i.bf = phi i32 [ %i.x, %bb.j ], [ 0, %bb.i ], [ %i.ae, %middle.block ], [ %i.ae, %scalar.ph ], [ %i.ae, %scalar.ph.prol.loopexit ]
  br i1 %2, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.loopexit48
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !32
  %.not46 = icmp eq ptr %i.bh, null
  br i1 %.not46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = zext i32 %i.bf to i64
  %i.bj = tail call noalias ptr @H5FL_arr_malloc(ptr noundef nonnull @H5_hsize_t_arr_free_list, i64 noundef %i.bi) #10 ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !32
  %i.bl = load i32, ptr %i.w, align 8, !tbaa !33  ; 3 uses
  %.not53 = icmp eq i32 %i.bl, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.l
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !32 ; 7 uses
  %wide.trip.count58 = zext i32 %i.bl to i64      ; 5 uses
  %min.iters.check68 = icmp ult i32 %i.bl, 8
  %4 = ptrtoaddr ptr %i.bj to i64
  %i.bn = ptrtoaddr ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %4
  %diff.check66 = icmp ugt i64 %i.bo, -32
  %or.cond81 = select i1 %min.iters.check68, i1 true, i1 %diff.check66
  br i1 %or.cond81, label %scalar.ph67.preheader, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph51
  %n.vec70 = and i64 %wide.trip.count58, 4294967292 ; 3 uses
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next75, %vector.body71 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index72 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load73 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !16
  %wide.load74 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !16
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <2 x i64> %wide.load73, ptr %i.br, align 8, !tbaa !16
  store <2 x i64> %wide.load74, ptr %i.bs, align 8, !tbaa !16
  %index.next75 = add nuw i64 %index72, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.bt, label %middle.block76, label %vector.body71, !llvm.loop !55

middle.block76:                                   ; preds = %vector.body71
  %cmp.n77 = icmp eq i64 %n.vec70, %wide.trip.count58
  br i1 %cmp.n77, label %.loopexit, label %scalar.ph67.preheader

scalar.ph67.preheader:                            ; preds = %.lr.ph51, %middle.block76
  %indvars.iv55.ph = phi i64 [ 0, %.lr.ph51 ], [ %n.vec70, %middle.block76 ] ; 3 uses
  %xtraiter82 = and i64 %wide.trip.count58, 3     ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %scalar.ph67.prol.loopexit, label %scalar.ph67.prol

scalar.ph67.prol:                                 ; preds = %scalar.ph67.preheader, %scalar.ph67.prol
  %indvars.iv55.prol = phi i64 [ %indvars.iv.next56.prol, %scalar.ph67.prol ], [ %indvars.iv55.ph, %scalar.ph67.preheader ] ; 3 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %scalar.ph67.prol ], [ 0, %scalar.ph67.preheader ]
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv55.prol
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv55.prol
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !16
  %indvars.iv.next56.prol = add nuw nsw i64 %indvars.iv55.prol, 1 ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %scalar.ph67.prol.loopexit, label %scalar.ph67.prol, !llvm.loop !56

scalar.ph67.prol.loopexit:                        ; preds = %scalar.ph67.prol, %scalar.ph67.preheader
  %indvars.iv55.unr = phi i64 [ %indvars.iv55.ph, %scalar.ph67.preheader ], [ %indvars.iv.next56.prol, %scalar.ph67.prol ]
  %i.bx = sub nsw i64 %indvars.iv55.ph, %wide.trip.count58
  %i.by = icmp ugt i64 %i.bx, -4
  br i1 %i.by, label %.loopexit, label %scalar.ph67

scalar.ph67:                                      ; preds = %scalar.ph67.prol.loopexit, %scalar.ph67
  %indvars.iv55 = phi i64 [ %indvars.iv.next56.3, %scalar.ph67 ], [ %indvars.iv55.unr, %scalar.ph67.prol.loopexit ] ; 6 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv55
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !16
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv55
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !16
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next56
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next56
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !16
  %indvars.iv.next56.1 = add nuw nsw i64 %indvars.iv55, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next56.1
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !16
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next56.1
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !16
  %indvars.iv.next56.2 = add nuw nsw i64 %indvars.iv55, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next56.2
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !16
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next56.2
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !16
  %indvars.iv.next56.3 = add nuw nsw i64 %indvars.iv55, 4 ; 2 uses
  %exitcond59.not.3 = icmp eq i64 %indvars.iv.next56.3, %wide.trip.count58
  br i1 %exitcond59.not.3, label %.loopexit, label %scalar.ph67, !llvm.loop !57

bb.m:                                             ; preds = %bb.k, %.loopexit48
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.cl, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph67.prol.loopexit, %scalar.ph67, %middle.block76, %bb.l, %H5S__extent_release.exit, %bb.m, %bb.g
  %i.cm = tail call i32 @H5O_set_shared(ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %bb.n, label %.critedge

bb.n:                                             ; preds = %.loopexit
  %i.co = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.cp = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !16
  %i.cq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S__extent_copy_real, i32 noundef 656, i64 noundef %i.co, i64 noundef %i.cp, ptr noundef nonnull @.str.23) #10 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !31 ; 2 uses
  %.not47 = icmp eq ptr %i.cs, null
  br i1 %.not47, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = tail call ptr @H5FL_arr_free(ptr noundef nonnull @H5_hsize_t_arr_free_list, ptr noundef nonnull %i.cs) #10
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !31
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.o, %bb.n, %bb.a
  %.1 = phi i32 [ -1, %bb.o ], [ -1, %bb.n ], [ 0, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.1
}

declare noalias ptr @H5FL_arr_malloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5O_set_shared(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5S_select_copy(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @H5S_get_simple_extent_npoints(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.f = tail call i32 @H5S__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12
  %.pre2 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre3 = trunc nuw i8 %.pre to i1
  %.pre4 = trunc nuw i8 %.pre2 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_get_simple_extent_npoints, i32 noundef 732, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi5 = phi i1 [ %.pre4, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre3, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi5, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.0 = phi i64 [ -1, %bb.c ], [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @H5Sget_simple_extent_npoints(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %1, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !35

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Sget_simple_extent_npoints, i32 noundef 760, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.11) #10 ; 0 uses
  br label %.thread16

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.p = tail call i32 @H5S__init_package()
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !38
end_hunk_0
begin_hunk_1_@H5S_get_simple_extent_ndims:bb.a
  %i.q = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.r = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !16
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_get_simple_extent_ndims, i32 noundef 897, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.25) #10 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.g ], [ %i.p, %bb.f ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5Sget_simple_extent_dims(i64 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %3, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !35

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Sget_simple_extent_dims, i32 noundef 923, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.11) #10 ; 0 uses
  br label %H5S_get_simple_extent_dims.exit.thread21

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.p = tail call i32 @H5S__init_package()
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !38

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Sget_simple_extent_dims, i32 noundef 923, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %H5S_get_simple_extent_dims.exit.thread21

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %3) #10
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !35

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !16
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Sget_simple_extent_dims, i32 noundef 923, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.12) #10 ; 0 uses
  br label %H5S_get_simple_extent_dims.exit.thread21

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #10          ; 0 uses
  %i.aa = call ptr @H5I_object_verify(i64 noundef %0, i32 noundef 4) #10 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %H5S_get_simple_extent_dims.exit, label %bb.j, !prof !37

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  %i.ae = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %i.ag, label %bb.m, label %bb.k, !prof !14

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.ah = call i32 @H5S__init_package()
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12
  %.pre6.i = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre7.i = trunc nuw i8 %.pre.i to i1
  %.pre8.i = trunc nuw i8 %.pre6.i to i1
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.aj = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.ak = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.al = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_get_simple_extent_dims, i32 noundef 1003, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %H5S_get_simple_extent_dims.exit.thread27

bb.m:                                             ; preds = %._crit_edge.i, %bb.j
  %.pre-phi9.i = phi i1 [ %.pre8.i, %._crit_edge.i ], [ %i.af, %bb.j ]
  %.pre-phi.i = phi i1 [ %.pre7.i, %._crit_edge.i ], [ %i.ad, %bb.j ]
  %i.am = xor i1 %.pre-phi9.i, true
  %i.an = select i1 %.pre-phi.i, i1 true, i1 %i.am
  br i1 %i.an, label %bb.n, label %H5S_get_simple_extent_dims.exit.thread27, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.ao = call i32 @H5S_extent_get_dims(ptr noundef nonnull readonly %i.aa, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.o, label %H5S_get_simple_extent_dims.exit.thread27

bb.o:                                             ; preds = %bb.n
  %i.aq = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.ar = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !16
  %i.as = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_get_simple_extent_dims, i32 noundef 1010, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.26) #10 ; 0 uses
  br label %H5S_get_simple_extent_dims.exit.thread27

H5S_get_simple_extent_dims.exit.thread27:         ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.011.ph.ph = phi i32 [ -1, %bb.l ], [ -1, %bb.o ], [ %i.ao, %bb.n ], [ -1, %bb.m ]
  %i.at = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.p

H5S_get_simple_extent_dims.exit:                  ; preds = %bb.i
  %i.au = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !16
  %i.av = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !16
  %i.aw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Sget_simple_extent_dims, i32 noundef 927, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.18) #10 ; 0 uses
  %i.ax = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %H5S_get_simple_extent_dims.exit.thread21

H5S_get_simple_extent_dims.exit.thread21:         ; preds = %bb.h, %bb.f, %bb.c, %H5S_get_simple_extent_dims.exit
  %i.ay = call i32 @H5E_dump_api_stack() #10      ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %H5S_get_simple_extent_dims.exit.thread27, %H5S_get_simple_extent_dims.exit.thread21
  %.0111624 = phi i32 [ -1, %H5S_get_simple_extent_dims.exit.thread21 ], [ %.011.ph.ph, %H5S_get_simple_extent_dims.exit.thread27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0111624
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5S_get_simple_extent_dims(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.f = tail call i32 @H5S__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12
  %.pre6 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre7 = trunc nuw i8 %.pre to i1
  %.pre8 = trunc nuw i8 %.pre6 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_get_simple_extent_dims, i32 noundef 1003, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi9 = phi i1 [ %.pre8, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre7, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi9, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.g, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @H5S_extent_get_dims(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.p = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !16
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_get_simple_extent_dims, i32 noundef 1010, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.26) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ %i.m, %bb.e ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5S_extent_get_dims(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.f = tail call i32 @H5S__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12
  %.pre57 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre58 = trunc nuw i8 %.pre to i1
  %.pre59 = trunc nuw i8 %.pre57 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_extent_get_dims, i32 noundef 952, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi60 = phi i1 [ %.pre59, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre58, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi60, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %.loopexit, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !30
  switch i32 %i.n, label %bb.g [
    i32 2, label %.loopexit
    i32 0, label %.loopexit
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !33   ; 27 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %.not = icmp eq ptr %1, null                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not, label %.loopexit, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 7 uses
  %wide.trip.count55 = zext nneg i32 %i.p to i64  ; 5 uses
  %min.iters.check133 = icmp ult i32 %i.p, 8
  %3 = ptrtoaddr ptr %1 to i64
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = sub i64 %i.t, %3
  %diff.check131 = icmp ugt i64 %i.u, -32
  %or.cond = select i1 %min.iters.check133, i1 true, i1 %diff.check131
  br i1 %or.cond, label %scalar.ph132.preheader, label %vector.ph134

vector.ph134:                                     ; preds = %.lr.ph.split.us.split
  %n.vec135 = and i64 %wide.trip.count55, 2147483644 ; 3 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph134
  %index137 = phi i64 [ 0, %vector.ph134 ], [ %index.next140, %vector.body136 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index137 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load138 = load <2 x i64>, ptr %i.v, align 8, !tbaa !16
  %wide.load139 = load <2 x i64>, ptr %i.w, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index137 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x i64> %wide.load138, ptr %i.x, align 8, !tbaa !16
  store <2 x i64> %wide.load139, ptr %i.y, align 8, !tbaa !16
  %index.next140 = add nuw i64 %index137, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.z, label %middle.block141, label %vector.body136, !llvm.loop !61

middle.block141:                                  ; preds = %vector.body136
  %cmp.n142 = icmp eq i64 %n.vec135, %wide.trip.count55
  br i1 %cmp.n142, label %.loopexit, label %scalar.ph132.preheader

scalar.ph132.preheader:                           ; preds = %.lr.ph.split.us.split, %middle.block141
  %indvars.iv52.ph = phi i64 [ 0, %.lr.ph.split.us.split ], [ %n.vec135, %middle.block141 ] ; 3 uses
  %xtraiter162 = and i64 %wide.trip.count55, 3    ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %scalar.ph132.prol.loopexit, label %scalar.ph132.prol

scalar.ph132.prol:                                ; preds = %scalar.ph132.preheader, %scalar.ph132.prol
  %indvars.iv52.prol = phi i64 [ %indvars.iv.next53.prol, %scalar.ph132.prol ], [ %indvars.iv52.ph, %scalar.ph132.preheader ] ; 3 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %scalar.ph132.prol ], [ 0, %scalar.ph132.preheader ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv52.prol
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv52.prol
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !16
  %indvars.iv.next53.prol = add nuw nsw i64 %indvars.iv52.prol, 1 ; 2 uses
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %scalar.ph132.prol.loopexit, label %scalar.ph132.prol, !llvm.loop !62

scalar.ph132.prol.loopexit:                       ; preds = %scalar.ph132.prol, %scalar.ph132.preheader
  %indvars.iv52.unr = phi i64 [ %indvars.iv52.ph, %scalar.ph132.preheader ], [ %indvars.iv.next53.prol, %scalar.ph132.prol ]
  %i.ad = sub nsw i64 %indvars.iv52.ph, %wide.trip.count55
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.loopexit, label %scalar.ph132

scalar.ph132:                                     ; preds = %scalar.ph132.prol.loopexit, %scalar.ph132
  %indvars.iv52 = phi i64 [ %indvars.iv.next53.3, %scalar.ph132 ], [ %indvars.iv52.unr, %scalar.ph132.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv52
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv52
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !16
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next53
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next53
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !16
  %indvars.iv.next53.1 = add nuw nsw i64 %indvars.iv52, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next53.1
  %i.am = load i64, ptr %i.al, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next53.1
  store i64 %i.am, ptr %i.an, align 8, !tbaa !16
  %indvars.iv.next53.2 = add nuw nsw i64 %indvars.iv52, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next53.2
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next53.2
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !16
  %indvars.iv.next53.3 = add nuw nsw i64 %indvars.iv52, 4 ; 2 uses
  %exitcond56.not.3 = icmp eq i64 %indvars.iv.next53.3, %wide.trip.count55
  br i1 %exitcond56.not.3, label %.loopexit, label %scalar.ph132, !llvm.loop !63

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !32 ; 13 uses
  %.not28 = icmp eq ptr %i.as, null
  br i1 %.not28, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !31  ; 14 uses
  %wide.trip.count50 = zext nneg i32 %i.p to i64  ; 10 uses
  br i1 %.not, label %.lr.ph.split.split.us.split.us.preheader, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %min.iters.check105 = icmp ult i32 %i.p, 22
  br i1 %min.iters.check105, label %.lr.ph.split.split.us.split.preheader149, label %vector.memcheck98

vector.memcheck98:                                ; preds = %.lr.ph.split.split.us.split.preheader
  %4 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %5 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.au = sub i64 %5, %4
  %diff.check99 = icmp ugt i64 %i.au, -32
  %6 = ptrtoaddr ptr %i.at to i64                 ; 2 uses
  %i.av = sub i64 %6, %5
  %diff.check100 = icmp ugt i64 %i.av, -32
  %conflict.rdx101 = or i1 %diff.check99, %diff.check100
  %i.aw = sub i64 %6, %4
  %diff.check102 = icmp ugt i64 %i.aw, -32
  %conflict.rdx103 = or i1 %conflict.rdx101, %diff.check102
  br i1 %conflict.rdx103, label %.lr.ph.split.split.us.split.preheader149, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck98
  %n.vec107 = and i64 %wide.trip.count50, 2147483644 ; 3 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next112, %vector.body108 ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index109 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load110 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !16 ; 2 uses
  %wide.load111 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !16 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index109 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x i64> %wide.load110, ptr %i.az, align 8, !tbaa !16
  store <2 x i64> %wide.load111, ptr %i.ba, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index109 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i64> %wide.load110, ptr %i.bb, align 8, !tbaa !16
  store <2 x i64> %wide.load111, ptr %i.bc, align 8, !tbaa !16
  %index.next112 = add nuw i64 %index109, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.bd, label %middle.block113, label %vector.body108, !llvm.loop !64

middle.block113:                                  ; preds = %vector.body108
  %cmp.n114 = icmp eq i64 %n.vec107, %wide.trip.count50
  br i1 %cmp.n114, label %.loopexit, label %.lr.ph.split.split.us.split.preheader149

.lr.ph.split.split.us.split.preheader149:         ; preds = %vector.memcheck98, %.lr.ph.split.split.us.split.preheader, %middle.block113
  %indvars.iv42.ph = phi i64 [ 0, %vector.memcheck98 ], [ 0, %.lr.ph.split.split.us.split.preheader ], [ %n.vec107, %middle.block113 ] ; 3 uses
  %xtraiter156 = and i64 %wide.trip.count50, 3    ; 2 uses
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %.lr.ph.split.split.us.split.prol.loopexit, label %.lr.ph.split.split.us.split.prol

.lr.ph.split.split.us.split.prol:                 ; preds = %.lr.ph.split.split.us.split.preheader149, %.lr.ph.split.split.us.split.prol
  %indvars.iv42.prol = phi i64 [ %indvars.iv.next43.prol, %.lr.ph.split.split.us.split.prol ], [ %indvars.iv42.ph, %.lr.ph.split.split.us.split.preheader149 ] ; 4 uses
  %prol.iter158 = phi i64 [ %prol.iter158.next, %.lr.ph.split.split.us.split.prol ], [ 0, %.lr.ph.split.split.us.split.preheader149 ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv42.prol
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !16 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv42.prol
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv42.prol
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !16
  %indvars.iv.next43.prol = add nuw nsw i64 %indvars.iv42.prol, 1 ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %.lr.ph.split.split.us.split.prol.loopexit, label %.lr.ph.split.split.us.split.prol, !llvm.loop !65

.lr.ph.split.split.us.split.prol.loopexit:        ; preds = %.lr.ph.split.split.us.split.prol, %.lr.ph.split.split.us.split.preheader149
  %indvars.iv42.unr = phi i64 [ %indvars.iv42.ph, %.lr.ph.split.split.us.split.preheader149 ], [ %indvars.iv.next43.prol, %.lr.ph.split.split.us.split.prol ]
  %i.bi = sub nsw i64 %indvars.iv42.ph, %wide.trip.count50
  %i.bj = icmp ugt i64 %i.bi, -4
  br i1 %i.bj, label %.loopexit, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %min.iters.check119 = icmp ult i32 %i.p, 8
  %7 = ptrtoaddr ptr %2 to i64
  %8 = ptrtoaddr ptr %i.at to i64
  %i.bk = sub i64 %8, %7
  %diff.check117 = icmp ugt i64 %i.bk, -32
  %or.cond145 = select i1 %min.iters.check119, i1 true, i1 %diff.check117
  br i1 %or.cond145, label %.lr.ph.split.split.us.split.us.preheader147, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph.split.split.us.split.us.preheader
  %n.vec121 = and i64 %wide.trip.count50, 2147483644 ; 3 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next126, %vector.body122 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index123 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load124 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !16
  %wide.load125 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index123 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x i64> %wide.load124, ptr %i.bn, align 8, !tbaa !16
  store <2 x i64> %wide.load125, ptr %i.bo, align 8, !tbaa !16
  %index.next126 = add nuw i64 %index123, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.bp, label %middle.block127, label %vector.body122, !llvm.loop !66

middle.block127:                                  ; preds = %vector.body122
  %cmp.n128 = icmp eq i64 %n.vec121, %wide.trip.count50
  br i1 %cmp.n128, label %.loopexit, label %.lr.ph.split.split.us.split.us.preheader147

.lr.ph.split.split.us.split.us.preheader147:      ; preds = %.lr.ph.split.split.us.split.us.preheader, %middle.block127
  %indvars.iv47.ph = phi i64 [ 0, %.lr.ph.split.split.us.split.us.preheader ], [ %n.vec121, %middle.block127 ] ; 3 uses
  %xtraiter159 = and i64 %wide.trip.count50, 3    ; 2 uses
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol

.lr.ph.split.split.us.split.us.prol:              ; preds = %.lr.ph.split.split.us.split.us.preheader147, %.lr.ph.split.split.us.split.us.prol
  %indvars.iv47.prol = phi i64 [ %indvars.iv.next48.prol, %.lr.ph.split.split.us.split.us.prol ], [ %indvars.iv47.ph, %.lr.ph.split.split.us.split.us.preheader147 ] ; 3 uses
  %prol.iter161 = phi i64 [ %prol.iter161.next, %.lr.ph.split.split.us.split.us.prol ], [ 0, %.lr.ph.split.split.us.split.us.preheader147 ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv47.prol
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv47.prol
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !16
  %indvars.iv.next48.prol = add nuw nsw i64 %indvars.iv47.prol, 1 ; 2 uses
  %prol.iter161.next = add i64 %prol.iter161, 1   ; 2 uses
  %prol.iter161.cmp.not = icmp eq i64 %prol.iter161.next, %xtraiter159
  br i1 %prol.iter161.cmp.not, label %.lr.ph.split.split.us.split.us.prol.loopexit, label %.lr.ph.split.split.us.split.us.prol, !llvm.loop !67

.lr.ph.split.split.us.split.us.prol.loopexit:     ; preds = %.lr.ph.split.split.us.split.us.prol, %.lr.ph.split.split.us.split.us.preheader147
  %indvars.iv47.unr = phi i64 [ %indvars.iv47.ph, %.lr.ph.split.split.us.split.us.preheader147 ], [ %indvars.iv.next48.prol, %.lr.ph.split.split.us.split.us.prol ]
  %i.bt = sub nsw i64 %indvars.iv47.ph, %wide.trip.count50
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %.loopexit, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.prol.loopexit, %.lr.ph.split.split.us.split.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48.3, %.lr.ph.split.split.us.split.us ], [ %indvars.iv47.unr, %.lr.ph.split.split.us.split.us.prol.loopexit ] ; 6 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv47
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv47
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !16
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next48
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !16
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next48
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !16
  %indvars.iv.next48.1 = add nuw nsw i64 %indvars.iv47, 2 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next48.1
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next48.1
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !16
  %indvars.iv.next48.2 = add nuw nsw i64 %indvars.iv47, 3 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next48.2
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !16
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next48.2
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !16
  %indvars.iv.next48.3 = add nuw nsw i64 %indvars.iv47, 4 ; 2 uses
  %exitcond51.not.3 = icmp eq i64 %indvars.iv.next48.3, %wide.trip.count50
  br i1 %exitcond51.not.3, label %.loopexit, label %.lr.ph.split.split.us.split.us, !llvm.loop !68

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.prol.loopexit, %.lr.ph.split.split.us.split
  %indvars.iv42 = phi i64 [ %indvars.iv.next43.3, %.lr.ph.split.split.us.split ], [ %indvars.iv42.unr, %.lr.ph.split.split.us.split.prol.loopexit ] ; 7 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv42
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !16 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv42
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !16
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv42
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !16
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next43
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !16 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next43
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next43
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !16
  %indvars.iv.next43.1 = add nuw nsw i64 %indvars.iv42, 2 ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next43.1
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !16 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next43.1
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !16
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next43.1
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !16
  %indvars.iv.next43.2 = add nuw nsw i64 %indvars.iv42, 3 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next43.2
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !16 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next43.2
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !16
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next43.2
  store i64 %i.cu, ptr %i.cw, align 8, !tbaa !16
  %indvars.iv.next43.3 = add nuw nsw i64 %indvars.iv42, 4 ; 2 uses
  %exitcond46.not.3 = icmp eq i64 %indvars.iv.next43.3, %wide.trip.count50
  br i1 %exitcond46.not.3, label %.loopexit, label %.lr.ph.split.split.us.split, !llvm.loop !69

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not, label %.lr.ph.split.split.split.us.preheader, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us.preheader:            ; preds = %.lr.ph.split.split
  %wide.trip.count40 = zext nneg i32 %i.p to i64  ; 5 uses
  %min.iters.check87 = icmp ult i32 %i.p, 8
  %9 = ptrtoaddr ptr %2 to i64
  %10 = ptrtoaddr ptr %i.as to i64
  %i.cx = sub i64 %10, %9
  %diff.check85 = icmp ugt i64 %i.cx, -32
  %or.cond146 = or i1 %min.iters.check87, %diff.check85
  br i1 %or.cond146, label %.lr.ph.split.split.split.us.preheader151, label %vector.ph88

vector.ph88:                                      ; preds = %.lr.ph.split.split.split.us.preheader
  %n.vec89 = and i64 %wide.trip.count40, 2147483644 ; 3 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next94, %vector.body90 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index91 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load92 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !16
  %wide.load93 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !16
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index91 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x i64> %wide.load92, ptr %i.da, align 8, !tbaa !16
  store <2 x i64> %wide.load93, ptr %i.db, align 8, !tbaa !16
  %index.next94 = add nuw i64 %index91, 4         ; 2 uses
  %i.dc = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.dc, label %middle.block95, label %vector.body90, !llvm.loop !70

middle.block95:                                   ; preds = %vector.body90
  %cmp.n96 = icmp eq i64 %n.vec89, %wide.trip.count40
  br i1 %cmp.n96, label %.loopexit, label %.lr.ph.split.split.split.us.preheader151

.lr.ph.split.split.split.us.preheader151:         ; preds = %.lr.ph.split.split.split.us.preheader, %middle.block95
  %indvars.iv37.ph = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader ], [ %n.vec89, %middle.block95 ] ; 3 uses
  %xtraiter154 = and i64 %wide.trip.count40, 3    ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %.lr.ph.split.split.split.us.prol.loopexit, label %.lr.ph.split.split.split.us.prol

.lr.ph.split.split.split.us.prol:                 ; preds = %.lr.ph.split.split.split.us.preheader151, %.lr.ph.split.split.split.us.prol
  %indvars.iv37.prol = phi i64 [ %indvars.iv.next38.prol, %.lr.ph.split.split.split.us.prol ], [ %indvars.iv37.ph, %.lr.ph.split.split.split.us.preheader151 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.split.split.us.prol ], [ 0, %.lr.ph.split.split.split.us.preheader151 ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv37.prol
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv37.prol
  store i64 %i.de, ptr %i.df, align 8, !tbaa !16
  %indvars.iv.next38.prol = add nuw nsw i64 %indvars.iv37.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter154
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.split.us.prol.loopexit, label %.lr.ph.split.split.split.us.prol, !llvm.loop !71

.lr.ph.split.split.split.us.prol.loopexit:        ; preds = %.lr.ph.split.split.split.us.prol, %.lr.ph.split.split.split.us.preheader151
  %indvars.iv37.unr = phi i64 [ %indvars.iv37.ph, %.lr.ph.split.split.split.us.preheader151 ], [ %indvars.iv.next38.prol, %.lr.ph.split.split.split.us.prol ]
  %i.dg = sub nsw i64 %indvars.iv37.ph, %wide.trip.count40
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %.loopexit, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.split.us.prol.loopexit, %.lr.ph.split.split.split.us
  %indvars.iv37 = phi i64 [ %indvars.iv.next38.3, %.lr.ph.split.split.split.us ], [ %indvars.iv37.unr, %.lr.ph.split.split.split.us.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv37
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !16
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv37
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !16
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next38
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next38
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !16
  %indvars.iv.next38.1 = add nuw nsw i64 %indvars.iv37, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next38.1
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !16
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next38.1
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !16
  %indvars.iv.next38.2 = add nuw nsw i64 %indvars.iv37, 3 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next38.2
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !16
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next38.2
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !16
  %indvars.iv.next38.3 = add nuw nsw i64 %indvars.iv37, 4 ; 2 uses
  %exitcond41.not.3 = icmp eq i64 %indvars.iv.next38.3, %wide.trip.count40
  br i1 %exitcond41.not.3, label %.loopexit, label %.lr.ph.split.split.split.us, !llvm.loop !72

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.du = load ptr, ptr %i.r, align 8, !tbaa !31  ; 5 uses
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.p, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.split.split
  %11 = ptrtoaddr ptr %2 to i64                   ; 3 uses
  %i.dv = ptrtoaddr ptr %1 to i64                 ; 3 uses
  %i.dw = sub i64 %i.dv, %11
  %diff.check = icmp ugt i64 %i.dw, -32
  %12 = ptrtoaddr ptr %i.du to i64                ; 2 uses
  %i.dx = sub i64 %12, %i.dv
  %diff.check74 = icmp ugt i64 %i.dx, -32
  %conflict.rdx = or i1 %diff.check, %diff.check74
  %13 = ptrtoaddr ptr %i.as to i64                ; 2 uses
  %i.dy = sub i64 %i.dv, %13
  %diff.check75 = icmp ugt i64 %i.dy, -32
  %conflict.rdx76 = or i1 %conflict.rdx, %diff.check75
  %i.dz = sub i64 %12, %11
  %diff.check77 = icmp ugt i64 %i.dz, -32
  %conflict.rdx78 = or i1 %conflict.rdx76, %diff.check77
  %i.ea = sub i64 %13, %11
  %diff.check79 = icmp ugt i64 %i.ea, -32
  %conflict.rdx80 = or i1 %conflict.rdx78, %diff.check79
  br i1 %conflict.rdx80, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load = load <2 x i64>, ptr %i.eb, align 8, !tbaa !16
  %wide.load81 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !16
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <2 x i64> %wide.load, ptr %i.ed, align 8, !tbaa !16
  store <2 x i64> %wide.load81, ptr %i.ee, align 8, !tbaa !16
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load82 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !16
  %wide.load83 = load <2 x i64>, ptr %i.eg, align 8, !tbaa !16
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x i64> %wide.load82, ptr %i.eh, align 8, !tbaa !16
  store <2 x i64> %wide.load83, ptr %i.ei, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.split.split, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.split.split ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.ph
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !16
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.ph
  store i64 %i.el, ptr %i.em, align 8, !tbaa !16
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.ph
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !16
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.ph
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !16
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.eq = add nsw i64 %wide.trip.count, -1
  %i.er = icmp eq i64 %indvars.iv.ph, %i.eq
  br i1 %i.er, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv
  %i.et = load i64, ptr %i.es, align 8, !tbaa !16
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !16
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !16
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !16
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !16
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !16
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !74

bb.g:                                             ; preds = %bb.e
  %i.fe = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.ff = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !16
  %i.fg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_extent_get_dims, i32 noundef 980, i64 noundef %i.fe, i64 noundef %i.ff, ptr noundef nonnull @.str.25) #10 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph.split.split.split.us.prol.loopexit, %.lr.ph.split.split.split.us, %.lr.ph.split.split.us.split.prol.loopexit, %.lr.ph.split.split.us.split, %.lr.ph.split.split.us.split.us.prol.loopexit, %.lr.ph.split.split.us.split.us, %scalar.ph132.prol.loopexit, %scalar.ph132, %middle.block, %middle.block95, %middle.block113, %middle.block127, %middle.block141, %bb.f, %.lr.ph.split.us, %bb.e, %bb.e, %bb.c, %bb.g, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.g ], [ -1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.e ], [ %i.p, %bb.f ], [ %i.p, %.lr.ph.split.us ], [ %i.p, %middle.block127 ], [ %i.p, %middle.block113 ], [ %i.p, %middle.block95 ], [ %i.p, %middle.block141 ], [ %i.p, %middle.block ], [ %i.p, %.lr.ph.split.split.split.us.prol.loopexit ], [ %i.p, %scalar.ph132.prol.loopexit ], [ %i.p, %.lr.ph.split.split.us.split.us.prol.loopexit ], [ %i.p, %.lr.ph.split.split.us.split.prol.loopexit ], [ %i.p, %scalar.ph132 ], [ %i.p, %.lr.ph.split.split.us.split.us ], [ %i.p, %.lr.ph.split.split.us.split ], [ %i.p, %.lr.ph.split.split.split.us ], [ %i.p, %scalar.ph ], [ %i.p, %scalar.ph.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.f = tail call i32 @H5S__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12
  %.pre6 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre7 = trunc nuw i8 %.pre to i1
  %.pre8 = trunc nuw i8 %.pre6 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_write, i32 noundef 1031, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi9 = phi i1 [ %.pre8, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre7, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi9, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.g, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @H5O_msg_write_oh(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef %2, ptr noundef %3) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.p = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_write, i32 noundef 1040, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.27) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

declare i32 @H5O_msg_write_oh(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S_append(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.f = tail call i32 @H5S__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12
  %.pre5 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre6 = trunc nuw i8 %.pre to i1
  %.pre7 = trunc nuw i8 %.pre5 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_append, i32 noundef 1060, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi8 = phi i1 [ %.pre7, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre6, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi8, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.g, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @H5O_msg_append_oh(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %2) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.p = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_append, i32 noundef 1069, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.28) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

end_hunk_1
begin_hunk_2_@H5Sset_extent_none:bb.a
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g, !prof !38

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.r = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.s = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Sset_extent_none, i32 noundef 1736, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %.thread18

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.u = call i32 @H5CX_push(ptr noundef nonnull %1) #10
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.i, !prof !35

bb.h:                                             ; preds = %bb.g
  %i.w = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.x = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !16
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Sset_extent_none, i32 noundef 1736, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.12) #10 ; 0 uses
  br label %.thread18

bb.i:                                             ; preds = %bb.g
  %i.z = call i32 @H5E_clear_stack() #10          ; 0 uses
  %i.aa = call ptr @H5I_object_verify(i64 noundef %0, i32 noundef 4) #10 ; 7 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread23, label %bb.j

.thread23:                                        ; preds = %bb.i
  %i.ac = load i64, ptr @H5E_ID_g, align 8, !tbaa !16
  %i.ad = load i64, ptr @H5E_BADID_g, align 8, !tbaa !16
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Sset_extent_none, i32 noundef 1740, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.18) #10 ; 0 uses
  %i.af = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %.thread18

bb.j:                                             ; preds = %bb.i
  %i.ag = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = xor i1 %i.aj, true
  %i.al = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %i.al, label %bb.k, label %bb.q, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.an = load i32, ptr %i.am, align 8, !tbaa !30
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = call ptr @H5FL_arr_free(ptr noundef nonnull @H5_hsize_t_arr_free_list, ptr noundef nonnull %i.aq) #10
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 72 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !32 ; 2 uses
  %.not10.i = icmp eq ptr %i.at, null
  br i1 %.not10.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = call ptr @H5FL_arr_free(ptr noundef nonnull @H5_hsize_t_arr_free_list, ptr noundef nonnull %i.at) #10
  store ptr %i.au, ptr %i.as, align 8, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i32 0, ptr %i.av, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 0, ptr %i.aw, align 8, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 2, ptr %i.ax, align 8, !tbaa !25
  %i.ay = call i32 @H5CX_pop(i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.r

.thread18:                                        ; preds = %bb.c, %bb.f, %bb.h, %.thread23
  %i.az = call i32 @H5E_dump_api_stack() #10      ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread18
  %.0111621 = phi i32 [ -1, %.thread18 ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 %.0111621
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @H5S_set_extent(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.f = tail call i32 @H5S__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge39

._crit_edge39:                                    ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12
  %.pre40 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre41 = trunc nuw i8 %.pre to i1
  %.pre42 = trunc nuw i8 %.pre40 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_set_extent, i32 noundef 1767, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %._crit_edge.thread

bb.d:                                             ; preds = %._crit_edge39, %bb.a
  %.pre-phi43 = phi i1 [ %.pre42, %._crit_edge39 ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre41, %._crit_edge39 ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi43, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %.preheader, label %._crit_edge.thread, !prof !14

.preheader:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %.not35 = icmp eq i32 %i.n, 0
  br i1 %.not35, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.trip.count = zext i32 %i.n to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.034 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.i ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16   ; 3 uses
  %.not28 = icmp eq i64 %i.s, %i.u
  br i1 %.not28, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !47   ; 2 uses
  %.not29 = icmp eq ptr %i.v, null
  br i1 %.not29, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16   ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.u
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.aa = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !16
  %i.ab = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_set_extent, i32 noundef 1780, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.61, i64 noundef %i.u, i64 noundef %i.x) #10 ; 0 uses
  br label %._crit_edge.thread

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.1 = phi i32 [ %.034, %bb.e ], [ 1, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.i
  %i.ac = icmp eq i32 %.1, 0
  br i1 %i.ac, label %._crit_edge.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ad = tail call i32 @H5S_set_extent_real(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %._crit_edge.thread

bb.k:                                             ; preds = %bb.j
  %i.af = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.ag = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !16
  %i.ah = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_set_extent, i32 noundef 1789, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.62) #10 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %bb.c, %bb.h, %bb.k, %bb.j, %._crit_edge, %bb.d
  %.2 = phi i32 [ -1, %bb.c ], [ -1, %bb.h ], [ -1, %bb.k ], [ 1, %bb.j ], [ 0, %._crit_edge ], [ 0, %bb.d ], [ 0, %.preheader ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S_set_extent_real(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !11
  %i.f = tail call i32 @H5S__init_package()
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge23

._crit_edge23:                                    ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12
  %.pre24 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre25 = trunc nuw i8 %.pre to i1
  %.pre26 = trunc nuw i8 %.pre24 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !11
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_set_extent_real, i32 noundef 1840, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.4) #10 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %._crit_edge23, %bb.a
  %.pre-phi27 = phi i1 [ %.pre26, %._crit_edge23 ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre25, %._crit_edge23 ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi27, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %.preheader, label %bb.i, !prof !14

.preheader:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 7 uses
  %wide.trip.count = zext i32 %i.n to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %2 = ptrtoaddr ptr %i.p to i64
  %i.q = ptrtoaddr ptr %1 to i64
  %i.r = sub i64 %i.q, %2
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ splat (i64 1), %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi29 = phi <2 x i64> [ splat (i64 1), %vector.ph ], [ %i.x, %vector.body ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8, !tbaa !16 ; 2 uses
  %wide.load30 = load <2 x i64>, ptr %i.t, align 8, !tbaa !16 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x i64> %wide.load, ptr %i.u, align 8, !tbaa !16
  store <2 x i64> %wide.load30, ptr %i.v, align 8, !tbaa !16
  %i.w = mul <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.x = mul <2 x i64> %wide.load30, %vec.phi29   ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <2 x i64> %i.x, %i.w
  %i.z = tail call i64 @llvm.vector.reduce.mul.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.01920.ph = phi i64 [ 1, %.lr.ph ], [ %i.z, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.01920.prol = phi i64 [ %i.ad, %scalar.ph.prol ], [ %.01920.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.prol
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !16
  %i.ad = mul i64 %i.ab, %.01920.prol             ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !87

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.01920.unr = phi i64 [ %.01920.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.01920 = phi i64 [ %i.av, %scalar.ph ], [ %.01920.unr, %scalar.ph.prol.loopexit ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !16 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !16
  %i.aj = mul i64 %i.ah, %.01920
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  store i64 %i.al, ptr %i.am, align 8, !tbaa !16
  %i.an = mul i64 %i.al, %i.aj
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !16
  %i.ar = mul i64 %i.ap, %i.an
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.at = load i64, ptr %i.as, align 8, !tbaa !16 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  store i64 %i.at, ptr %i.au, align 8, !tbaa !16
  %i.av = mul i64 %i.at, %i.ar                    ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !88

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %.019.lcssa = phi i64 [ 1, %.preheader ], [ %i.z, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.av, %scalar.ph ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.019.lcssa, ptr %i.aw, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !39
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !41
  %i.ba = icmp eq i32 %i.az, 3
  br i1 %i.ba, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.bb = tail call i32 @H5S_select_all(ptr noundef nonnull %0, i1 noundef zeroext false) #10
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.be = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !16
  %i.bf = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_set_extent_real, i32 noundef 1856, i64 noundef %i.bd, i64 noundef %i.be, ptr noundef nonnull @.str.22) #10 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %._crit_edge
  %i.bg = tail call i32 @H5O_msg_reset_share(i32 noundef 1, ptr noundef nonnull %0) #10
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !16
  %i.bj = load i64, ptr @H5E_CANTRESET_g, align 8, !tbaa !16
  %i.bk = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5S_set_extent_real, i32 noundef 1860, i64 noundef %i.bi, i64 noundef %i.bj, ptr noundef nonnull @.str.63) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.f, %bb.h, %bb.g, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.h ], [ 0, %bb.g ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @H5S_has_extent(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !25
  %.not = icmp eq i32 %i.n, 2
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @H5Sextent_equal(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %2, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #10
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !35

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !12
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !16
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !16
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5Sextent_equal, i32 noundef 1884, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.11) #10 ; 0 uses
  br label %H5S_extent_equal.exit.thread24

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.k = phi i8 [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  %i.l = load i8, ptr @H5S_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = trunc nuw i8 %i.k to i1
  %i.o = select i1 %i.m, i1 true, i1 %i.n
  br i1 %i.o, label %bb.g, label %bb.e, !prof !14
end_hunk_2

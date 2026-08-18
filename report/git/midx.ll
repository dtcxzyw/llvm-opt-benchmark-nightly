inline.NumInlined: 114
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@load_multi_pack_index_one:bb.a

.loopexit:                                        ; preds = %.peel.next, %.lr.ph
  %i.du = tail call fastcc ptr @_(ptr noundef nonnull @.str.45)
  tail call void (ptr, ...) @die(ptr noundef %i.du) #22
  unreachable

bb.ae:                                            ; preds = %.peel.next
  br i1 %i.dn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dv = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !99
  %i.dy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0102141, ptr noundef nonnull dereferenceable(1) %i.dx) #24
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %.loopexit148, label %bb.ag

.loopexit148:                                     ; preds = %bb.af
  %i.ea = tail call fastcc ptr @_(ptr noundef nonnull @.str.46)
  %i.eb = load ptr, ptr %i.dc, align 8, !tbaa !95 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dv
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !99
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !99
  tail call void (ptr, ...) @die(ptr noundef %i.ea, ptr noundef %i.ed, ptr noundef %i.ef) #22
  unreachable

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.ag, %bb.ad, %bb.ac
  %.pre-phi = phi i64 [ 0, %bb.ac ], [ 1, %bb.ad ], [ %wide.trip.count, %bb.ag ]
  tail call void @trace2_data_intmax_fl(ptr noundef nonnull @.str.11, i32 noundef 221, ptr noundef nonnull @.str.19, ptr noundef %i.c, ptr noundef nonnull @.str.47, i64 noundef %.pre-phi) #21
  %i.eg = getelementptr inbounds nuw i8, ptr %i.x, i64 60
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !85
  %i.ei = zext i32 %i.eh to i64
  tail call void @trace2_data_intmax_fl(ptr noundef nonnull @.str.11, i32 noundef 222, ptr noundef nonnull @.str.19, ptr noundef %i.c, ptr noundef nonnull @.str.48, i64 noundef %i.ei) #21
  tail call void @free_chunkfile(ptr noundef %i.bz) #21
  br label %bb.al

bb.ah:                                            ; preds = %bb.p, %bb.a, %_.exit133, %_.exit130, %_.exit
  %.0106 = phi ptr [ null, %bb.a ], [ null, %_.exit ], [ null, %_.exit130 ], [ %i.x, %_.exit133 ], [ %i.x, %bb.p ]
  %.0105 = phi i64 [ undef, %bb.a ], [ undef, %_.exit ], [ %i.k, %_.exit130 ], [ %i.k, %_.exit133 ], [ %i.k, %bb.p ]
  %.0104 = phi ptr [ null, %bb.a ], [ null, %_.exit ], [ null, %_.exit130 ], [ %i.v, %_.exit133 ], [ %i.v, %bb.p ] ; 2 uses
  %.0 = phi ptr [ null, %bb.a ], [ null, %_.exit ], [ null, %_.exit130 ], [ null, %_.exit133 ], [ %i.bz, %bb.p ]
  tail call void @free(ptr noundef %.0106) #21
  tail call void @free_chunkfile(ptr noundef %.0) #21
  %.not127 = icmp eq ptr %.0104, null
  br i1 %.not127, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ej = tail call i32 @munmap(ptr noundef nonnull %.0104, i64 noundef %.0105) #21 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ek = icmp sgt i32 %i.d, -1
  br i1 %i.ek, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.el = tail call i32 @close(i32 noundef %i.d) #21 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %._crit_edge
  %.0107 = phi ptr [ %i.x, %._crit_edge ], [ null, %bb.ak ], [ null, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %.0107
}

declare void @strbuf_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @close_midx(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  tail call void @close_midx(ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call i32 @munmap(ptr noundef %i.d, i64 noundef %i.f) #21 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %.not24 = icmp eq i32 %i.i, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.k = phi i32 [ %i.i, %.lr.ph ], [ %i.r, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !96
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102  ; 2 uses
  %magicptr = ptrtoint ptr %i.n to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, -2
  br i1 %switch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8
  %i.q = and i16 %i.p, -129
  store i16 %i.q, ptr %i.o, align 8
  %.pre = load i32, ptr %i.h, align 8, !tbaa !83
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi i32 [ %i.k, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.c, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96
  tail call void @free(ptr noundef %i.v) #21
  store ptr null, ptr %i.u, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95
  tail call void @free(ptr noundef %i.x) #21
  store ptr null, ptr %i.w, align 8, !tbaa !95
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.z) #21
  tail call void @free(ptr noundef nonnull %0) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @prepare_midx_pack(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq i32 %i.c, 1
  br i1 %.not.i, label %odb_source_files_downcast.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.32, i32 noundef 31, ptr noundef nonnull @.str.33, i32 noundef %i.c) #22
  unreachable

odb_source_files_downcast.exit:                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.load_midx_chain_fd_st.buf, i64 24, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %odb_source_files_downcast.exit, %bb.c
  %.023.i = phi ptr [ %.0.i, %bb.c ], [ %0, %odb_source_files_downcast.exit ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.023.i, i64 172
  %i.e = load i32, ptr %i.d, align 4, !tbaa !82   ; 3 uses
  %i.f = icmp ult i32 %1, %i.e
  br i1 %i.f, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.023.i, i64 160
  %.0.i = load ptr, ptr %i.g, align 8, !tbaa !106 ; 2 uses
  %.not.i15 = icmp eq ptr %.0.i, null
  br i1 %.not.i15, label %.critedge18.i, label %.lr.ph.i, !llvm.loop !107

.critedge18.i:                                    ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 445, ptr noundef nonnull @.str.60, i32 noundef %1) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.023.i, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !83
  %i.j = add i32 %i.i, %i.e
  %.not17.i = icmp ult i32 %1, %i.j
  br i1 %.not17.i, label %midx_for_pack.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.k = getelementptr inbounds nuw i8, ptr %.023.i, i64 172
  %i.l = tail call fastcc ptr @_(ptr noundef nonnull @.str.61)
  %i.m = load i32, ptr %i.h, align 8, !tbaa !83
  %i.n = load i32, ptr %i.k, align 4, !tbaa !82
  %i.o = add i32 %i.n, %i.m
  tail call void (ptr, ...) @die(ptr noundef %i.l, i32 noundef %1, i32 noundef %i.o) #22
  unreachable

midx_for_pack.exit:                               ; preds = %.critedge.i
  %i.p = sub nuw i32 %1, %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %.023.i, i64 192 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96
  %i.s = zext i32 %i.p to i64                     ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102
  %magicptr = ptrtoint ptr %i.u to i64
  switch i64 %magicptr, label %bb.e [
    i64 -1, label %bb.i
    i64 0, label %bb.f
  ]

bb.e:                                             ; preds = %midx_for_pack.exit
  br label %bb.i

bb.f:                                             ; preds = %midx_for_pack.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108
  %i.x = getelementptr inbounds nuw i8, ptr %.023.i, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.s
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.5, ptr noundef %i.w, ptr noundef %i.aa) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !109, !range !110, !noundef !111
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = call ptr @packfile_store_load_pack(ptr noundef %i.ac, ptr noundef %i.ae, i32 noundef %i.ah) #21 ; 3 uses
  call void @strbuf_release(ptr noundef nonnull %2) #21
  %.not14 = icmp eq ptr %i.ai, null
  br i1 %.not14, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !96
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.s
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ak, align 8, !tbaa !102
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 112 ; 2 uses
  %i.am = load i16, ptr %i.al, align 8
  %i.an = or i16 %i.am, 128
  store i16 %i.an, ptr %i.al, align 8
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !96
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.s
  store ptr %i.ai, ptr %i.ap, align 8, !tbaa !102
  br label %bb.i

bb.i:                                             ; preds = %midx_for_pack.exit, %bb.h, %bb.g, %bb.e
  %.0 = phi i32 [ 1, %bb.g ], [ 0, %bb.e ], [ 0, %bb.h ], [ 1, %midx_for_pack.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i32 %.0
}

declare ptr @packfile_store_load_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @nth_midxed_pack(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not22.i = icmp eq ptr %0, null
  br i1 %.not22.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.023.i = phi ptr [ %.0.i, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.023.i, i64 172
  %i.b = load i32, ptr %i.a, align 4, !tbaa !82   ; 3 uses
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.023.i, i64 160
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i, !llvm.loop !107

.critedge18.i:                                    ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 445, ptr noundef nonnull @.str.60, i32 noundef %1) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.023.i, i64 56 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !83
  %i.g = add i32 %i.f, %i.b
  %.not17.i = icmp ult i32 %1, %i.g
  br i1 %.not17.i, label %midx_for_pack.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.h = getelementptr inbounds nuw i8, ptr %.023.i, i64 172
  %i.i = tail call fastcc ptr @_(ptr noundef nonnull @.str.61)
  %i.j = load i32, ptr %i.e, align 8, !tbaa !83
  %i.k = load i32, ptr %i.h, align 4, !tbaa !82
  %i.l = add i32 %i.k, %i.j
  tail call void (ptr, ...) @die(ptr noundef %i.i, i32 noundef %1, i32 noundef %i.l) #22
  unreachable

midx_for_pack.exit:                               ; preds = %.critedge.i
  %i.m = sub nuw i32 %1, %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %.023.i, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !96
  %i.p = zext i32 %i.m to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !102  ; 2 uses
  %i.s = icmp eq ptr %i.r, inttoptr (i64 -1 to ptr)
  %. = select i1 %i.s, ptr null, ptr %i.r
  ret ptr %.
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @nth_bitmapped_pack(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not22.i = icmp eq ptr %0, null
  br i1 %.not22.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.023.i = phi ptr [ %.0.i, %bb.b ], [ %0, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.023.i, i64 172
  %i.b = load i32, ptr %i.a, align 4, !tbaa !82   ; 3 uses
  %i.c = icmp ult i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.023.i, i64 160
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i, !llvm.loop !107

.critedge18.i:                                    ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 445, ptr noundef nonnull @.str.60, i32 noundef %2) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.023.i, i64 56 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !83
  %i.g = add i32 %i.f, %i.b
  %.not17.i = icmp ult i32 %2, %i.g
  br i1 %.not17.i, label %midx_for_pack.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.h = getelementptr inbounds nuw i8, ptr %.023.i, i64 172
  %i.i = tail call fastcc ptr @_(ptr noundef nonnull @.str.61)
  %i.j = load i32, ptr %i.e, align 8, !tbaa !83
  %i.k = load i32, ptr %i.h, align 4, !tbaa !82
  %i.l = add i32 %i.k, %i.j
  tail call void (ptr, ...) @die(ptr noundef %i.i, i32 noundef %2, i32 noundef %i.l) #22
  unreachable

midx_for_pack.exit:                               ; preds = %.critedge.i
  %i.m = sub nuw i32 %2, %i.b
  %i.n = getelementptr inbounds nuw i8, ptr %.023.i, i64 88 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !112
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %midx_for_pack.exit
  %i.p = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i, label %_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #21
  br label %_.exit

_.exit:                                           ; preds = %bb.d, %bb.e
  %.0.i13 = phi ptr [ %i.q, %bb.e ], [ @.str.6, %bb.d ]
  %i.r = tail call i32 (ptr, ...) @error(ptr noundef %.0.i13) #21 ; 0 uses
  br label %bb.j

bb.f:                                             ; preds = %midx_for_pack.exit
  %i.s = tail call i32 @prepare_midx_pack(ptr noundef nonnull %.023.i, i32 noundef %2)
  %.not12 = icmp eq i32 %i.s, 0
  br i1 %.not12, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i14 = icmp eq i32 %i.t, 0
  br i1 %.not4.i14, label %_.exit16, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #21
  br label %_.exit16

_.exit16:                                         ; preds = %bb.g, %bb.h
  %.0.i15 = phi ptr [ %i.u, %bb.h ], [ @.str.7, %bb.g ]
  %i.v = tail call i32 (ptr, ...) @error(ptr noundef %.0.i15, i32 noundef %2) #21 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.023.i, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !96
  %i.y = zext i32 %i.m to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !102
  store ptr %i.aa, ptr %1, align 8, !tbaa !113
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !112
  %i.ac = shl nuw nsw i64 %i.y, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac ; 8 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !81
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw i32 %i.af, 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !81
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 16
  %i.al = or disjoint i32 %i.ak, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !81
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = or disjoint i32 %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !81
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.aq, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.au, ptr %i.av, align 8, !tbaa !115
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !81
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw i32 %i.ay, 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !81
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 16
  %i.be = or disjoint i32 %i.bd, %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !81
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = or disjoint i32 %i.be, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 7
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !81
  %i.bm = zext i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !116
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %2, ptr %i.bp, align 8, !tbaa !117
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.023.i, ptr %i.bq, align 8, !tbaa !118
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_.exit16, %_.exit
  %.0 = phi i32 [ -1, %_.exit16 ], [ 0, %bb.i ], [ -1, %_.exit ]
  ret i32 %.0
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !81
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.62, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bsearch_one_midx(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = load ptr, ptr %1, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59
  %i.m = tail call i32 @bsearch_hash(ptr noundef %0, ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.l, ptr noundef %2) #21
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.o = load i32, ptr %i.n, align 8, !tbaa !84
  %i.p = load i32, ptr %2, align 4, !tbaa !79
  %i.q = add i32 %i.p, %i.o
  store i32 %i.q, ptr %2, align 4, !tbaa !79
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.m
}

declare i32 @bsearch_hash(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @bsearch_midx(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bsearch_one_midx.exit.us, label %bsearch_one_midx.exit

bsearch_one_midx.exit.us:                         ; preds = %.lr.ph, %bb.b
  %.058.us = phi ptr [ %i.o, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.058.us, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %.058.us, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = load ptr, ptr %.058.us, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59
  %i.m = tail call i32 @bsearch_hash(ptr noundef %0, ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.l, ptr noundef null) #21
  %.not6.us = icmp eq i32 %i.m, 0
  br i1 %.not6.us, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bsearch_one_midx.exit.us
  %i.n = getelementptr inbounds nuw i8, ptr %.058.us, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86   ; 2 uses
  %.not.us = icmp eq ptr %i.o, null
  br i1 %.not.us, label %._crit_edge, label %bsearch_one_midx.exit.us, !llvm.loop !121

bsearch_one_midx.exit:                            ; preds = %.lr.ph, %bb.c
  %.058 = phi ptr [ %i.ah, %bb.c ], [ %1, %.lr.ph ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.058, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !119
  %i.r = getelementptr inbounds nuw i8, ptr %.058, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.t = load ptr, ptr %.058, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 448
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !59
  %i.ab = tail call i32 @bsearch_hash(ptr noundef %0, ptr noundef %i.q, ptr noundef %i.s, i64 noundef %i.aa, ptr noundef nonnull %2) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %.058, i64 168
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !84
  %i.ae = load i32, ptr %2, align 4, !tbaa !79
  %i.af = add i32 %i.ae, %i.ad
  store i32 %i.af, ptr %2, align 4, !tbaa !79
  %.not6 = icmp eq i32 %i.ab, 0
  br i1 %.not6, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bsearch_one_midx.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.058, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !86 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %._crit_edge, label %bsearch_one_midx.exit, !llvm.loop !121

._crit_edge:                                      ; preds = %bsearch_one_midx.exit, %bb.c, %bsearch_one_midx.exit.us, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bsearch_one_midx.exit.us ], [ 0, %bb.c ], [ 1, %bsearch_one_midx.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @midx_has_oid(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not7.i = icmp eq ptr %0, null
  br i1 %.not7.i, label %bsearch_midx.exit, label %bsearch_one_midx.exit.us.i

bsearch_one_midx.exit.us.i:                       ; preds = %bb.a, %bb.b
  %.058.us.i = phi ptr [ %i.o, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.058.us.i, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %.058.us.i, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = load ptr, ptr %.058.us.i, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59
  %i.m = tail call i32 @bsearch_hash(ptr noundef %1, ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.l, ptr noundef null) #21
  %.not6.us.i = icmp eq i32 %i.m, 0
  br i1 %.not6.us.i, label %bb.b, label %bsearch_midx.exit

bb.b:                                             ; preds = %bsearch_one_midx.exit.us.i
  %i.n = getelementptr inbounds nuw i8, ptr %.058.us.i, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86   ; 2 uses
  %.not.us.i = icmp eq ptr %i.o, null
  br i1 %.not.us.i, label %bsearch_midx.exit, label %bsearch_one_midx.exit.us.i, !llvm.loop !121

bsearch_midx.exit:                                ; preds = %bsearch_one_midx.exit.us.i, %bb.b, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ 1, %bsearch_one_midx.exit.us.i ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @nth_midxed_object_oid(ptr nofree noundef writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !84
  %i.e = add i32 %i.d, %i.b
  %.not = icmp ult i32 %2, %i.e
  br i1 %.not, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.019.i = phi ptr [ %.0.i, %bb.b ], [ %1, %bb.a ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.019.i, i64 168
  %i.g = load i32, ptr %i.f, align 8, !tbaa !84   ; 3 uses
  %i.h = icmp ult i32 %2, %i.g
  br i1 %i.h, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.019.i, i64 160
  %.0.i = load ptr, ptr %i.i, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge15.i, label %.lr.ph.i, !llvm.loop !122

.critedge15.i:                                    ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %2) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.019.i, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !85
  %i.l = add i32 %i.k, %i.g
  %.not14.i = icmp ult i32 %2, %i.l
  br i1 %.not14.i, label %midx_for_object.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.m = tail call fastcc ptr @_(ptr noundef nonnull @.str.64)
  tail call void (ptr, ...) @die(ptr noundef %i.m) #22
  unreachable

midx_for_object.exit:                             ; preds = %.critedge.i
  %i.n = sub nuw i32 %2, %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %.019.i, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !120
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i, i64 53
  %i.r = load i8, ptr %i.q, align 1, !tbaa !92
  %i.s = zext i8 %i.r to i64
  %i.t = zext i32 %i.n to i64
  %i.u = mul nuw nsw i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u
  %i.w = load ptr, ptr %.019.i, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 448
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr readonly align 1 %i.v, i64 %i.ad, i1 false)
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !59 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 32
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %midx_for_object.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ah = sub nuw nsw i64 32, %i.ae
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 0, i64 %i.ah, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %midx_for_object.exit
  %.not.i.i = icmp eq ptr %i.ab, @hash_algos
  br i1 %.not.i.i, label %oidread.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.1.i.i = icmp eq ptr %i.ab, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i, label %oidread.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.2.i.i = icmp eq ptr %i.ab, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i = select i1 %.not.2.i.i, i32 2, i32 0
  br label %oidread.exit

oidread.exit:                                     ; preds = %bb.e, %bb.f, %bb.g
  %.2.i.i = phi i32 [ %spec.select.i.i, %bb.g ], [ 0, %bb.e ], [ 1, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.2.i.i, ptr %i.ai, align 4, !tbaa !123
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %oidread.exit
  %.0 = phi ptr [ %0, %oidread.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @nth_midxed_offset(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not18.i = icmp eq ptr %0, null
  br i1 %.not18.i, label %.critedge15.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.019.i = phi ptr [ %.0.i, %bb.b ], [ %0, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.019.i, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.019.i, i64 160
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge15.i, label %.lr.ph.i, !llvm.loop !122

.critedge15.i:                                    ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %1) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.019.i, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !85
  %i.g = add i32 %i.f, %i.b
  %.not14.i = icmp ult i32 %1, %i.g
  br i1 %.not14.i, label %midx_for_object.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.h = tail call fastcc ptr @_(ptr noundef nonnull @.str.64)
  tail call void (ptr, ...) @die(ptr noundef %i.h) #22
  unreachable

midx_for_object.exit:                             ; preds = %.critedge.i
  %i.i = sub nuw i32 %1, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %.019.i, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !125
  %i.l = zext i32 %i.i to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !81
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw i32 %i.q, 24                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !81
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.x = load i8, ptr %i.w, align 1, !tbaa !81
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !81
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.v, %i.ac
  %i.ae = or disjoint i32 %i.ad, %i.z
  %i.af = or disjoint i32 %i.ae, %i.r             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !126 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  %.not10 = icmp sgt i32 %i.r, -1
  %or.cond = select i1 %.not, i1 true, i1 %.not10
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %midx_for_object.exit
  %i.ai = and i32 %i.af, 2147483647
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.019.i, i64 136
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !127
  %i.am = lshr i64 %i.al, 3
  %.not11 = icmp samesign ugt i64 %i.am, %i.aj
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = tail call fastcc ptr @_(ptr noundef nonnull @.str.8)
  tail call void (ptr, ...) @die(ptr noundef %i.an) #22
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ao = shl nuw nsw i64 %i.aj, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 1
  %i.at = zext i32 %i.aq to i64
  %i.au = zext i32 %i.as to i64
  %i.av = shl nuw i64 %i.au, 32
  %i.aw = or disjoint i64 %i.av, %i.at
  %op.rdx = tail call i64 @llvm.bswap.i64(i64 %i.aw)
  br label %bb.h

bb.g:                                             ; preds = %midx_for_object.exit
  %i.ax = zext i32 %i.af to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i64 [ %op.rdx, %bb.f ], [ %i.ax, %bb.g ]
  ret i64 %.0
}

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @nth_midxed_pack_int_id(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not18.i = icmp eq ptr %0, null
  br i1 %.not18.i, label %.critedge15.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.019.i = phi ptr [ %.0.i, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.019.i, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.019.i, i64 160
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge15.i, label %.lr.ph.i, !llvm.loop !122

.critedge15.i:                                    ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %1) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.019.i, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !85
  %i.g = add i32 %i.f, %i.b
  %.not14.i = icmp ult i32 %1, %i.g
  br i1 %.not14.i, label %midx_for_object.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.h = tail call fastcc ptr @_(ptr noundef nonnull @.str.64)
  tail call void (ptr, ...) @die(ptr noundef %i.h) #22
  unreachable

midx_for_object.exit:                             ; preds = %.critedge.i
  %i.i = sub nuw i32 %1, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %.019.i, i64 172
  %i.k = load i32, ptr %i.j, align 4, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125
  %i.n = zext i32 %i.i to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = add i32 %i.r, %i.k
  ret i32 %i.s
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @fill_midx_entry(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not7.i = icmp eq ptr %0, null
  br i1 %.not7.i, label %bsearch_midx.exit.thread, label %bsearch_one_midx.exit.i

bsearch_one_midx.exit.i:                          ; preds = %bb.a, %bb.b
  %.058.i = phi ptr [ %i.t, %bb.b ], [ %0, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.058.i, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %.058.i, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.f = load ptr, ptr %.058.i, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !59
  %i.n = call i32 @bsearch_hash(ptr noundef %1, ptr noundef %i.c, ptr noundef %i.e, i64 noundef %i.m, ptr noundef nonnull %i.a) #21
  %i.o = getelementptr inbounds nuw i8, ptr %.058.i, i64 168
  %i.p = load i32, ptr %i.o, align 8, !tbaa !84
  %i.q = load i32, ptr %i.a, align 4, !tbaa !79
  %i.r = add i32 %i.q, %i.p                       ; 8 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !79
  %.not6.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i, label %bb.b, label %.lr.ph.i14

bb.b:                                             ; preds = %bsearch_one_midx.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.058.i, i64 160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bsearch_midx.exit.thread, label %bsearch_one_midx.exit.i, !llvm.loop !121

.lr.ph.i14:                                       ; preds = %bsearch_one_midx.exit.i, %bb.c
  %.019.i = phi ptr [ %.0.i15, %bb.c ], [ %0, %bsearch_one_midx.exit.i ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i, i64 168
  %i.v = load i32, ptr %i.u, align 8, !tbaa !84   ; 2 uses
  %i.w = icmp ult i32 %i.r, %i.v
  br i1 %i.w, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i14
  %i.x = getelementptr inbounds nuw i8, ptr %.019.i, i64 160
  %.0.i15 = load ptr, ptr %i.x, align 8, !tbaa !106 ; 2 uses
  %.not.i16 = icmp eq ptr %.0.i15, null
  br i1 %.not.i16, label %.critedge15.i, label %.lr.ph.i14, !llvm.loop !122

.critedge15.i:                                    ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %i.r) #22
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i14
  %i.y = getelementptr inbounds nuw i8, ptr %.019.i, i64 60
  %i.z = load i32, ptr %i.y, align 4, !tbaa !85
  %i.aa = add i32 %i.z, %i.v
  %.not14.i = icmp ult i32 %i.r, %i.aa
  br i1 %.not14.i, label %.lr.ph.i.i, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.ab = call fastcc ptr @_(ptr noundef nonnull @.str.64)
  call void (ptr, ...) @die(ptr noundef %i.ab) #22
  unreachable

.lr.ph.i.i:                                       ; preds = %.critedge.i, %bb.e
  %.019.i.i = phi ptr [ %.0.i.i, %bb.e ], [ %.019.i, %.critedge.i ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 168
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !84 ; 3 uses
  %i.ae = icmp ult i32 %i.r, %i.ad
  br i1 %i.ae, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 160
  %.0.i.i = load ptr, ptr %i.af, align 8, !tbaa !106 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %.critedge15.i.i, label %.lr.ph.i.i, !llvm.loop !122

.critedge15.i.i:                                  ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %i.r) #22
  unreachable

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !85
  %i.ai = add i32 %i.ah, %i.ad
  %.not14.i.i = icmp ult i32 %i.r, %i.ai
  br i1 %.not14.i.i, label %nth_midxed_pack_int_id.exit, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i
  %i.aj = call fastcc ptr @_(ptr noundef nonnull @.str.64)
  call void (ptr, ...) @die(ptr noundef %i.aj) #22
  unreachable

nth_midxed_pack_int_id.exit:                      ; preds = %.critedge.i.i
  %i.ak = sub nuw i32 %i.r, %i.ad
  %i.al = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 172
  %i.am = load i32, ptr %i.al, align 4, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 120
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !125
  %i.ap = zext i32 %i.ak to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 1
  %i.at = call i32 @llvm.bswap.i32(i32 %i.as)
  %i.au = add i32 %i.at, %i.am                    ; 2 uses
  %i.av = call i32 @prepare_midx_pack(ptr noundef nonnull %.019.i, i32 noundef %i.au)
  %.not10 = icmp eq i32 %i.av, 0
  br i1 %.not10, label %bb.g, label %bsearch_midx.exit.thread

bb.g:                                             ; preds = %nth_midxed_pack_int_id.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.019.i, i64 192
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %.019.i, i64 172
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !82
  %i.ba = sub i32 %i.au, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !102 ; 4 uses
  %i.be = call i32 @is_pack_valid(ptr noundef %i.bd) #21
  %.not11 = icmp eq i32 %i.be, 0
  br i1 %.not11, label %bsearch_midx.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr i8, ptr %i.bd, i64 52
  %.val = load i32, ptr %i.bf, align 4, !tbaa !128
  %.not12 = icmp eq i32 %.val, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bh = call i32 @oidset_contains(ptr noundef nonnull %i.bg, ptr noundef %1) #21
  %.not13 = icmp eq i32 %i.bh, 0
  br i1 %.not13, label %bb.j, label %bsearch_midx.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !79
  %i.bj = call i64 @nth_midxed_offset(ptr noundef nonnull %.019.i, i32 noundef %i.bi)
  store i64 %i.bj, ptr %2, align 8, !tbaa !131
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bd, ptr %i.bk, align 8, !tbaa !133
  br label %bsearch_midx.exit.thread

bsearch_midx.exit.thread:                         ; preds = %bb.b, %bb.a, %bb.i, %bb.g, %nth_midxed_pack_int_id.exit, %bb.j
  %.0 = phi i32 [ 0, %bb.i ], [ 0, %bb.g ], [ 1, %bb.j ], [ 0, %nth_midxed_pack_int_id.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

declare i32 @is_pack_valid(ptr noundef) local_unnamed_addr #1

declare i32 @oidset_contains(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @cmp_idx_or_pack_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !81      ; 2 uses
  %.not14 = icmp eq i8 %i.a, 0
  br i1 %.not14, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %i.g, %bb.b ], [ %i.a, %bb.a ]
  %.016 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %.0915 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.c = load i8, ptr %.0915, align 1, !tbaa !81
  %i.d = icmp eq i8 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.016, i64 1 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0915, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.e, align 1, !tbaa !81    ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !134

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.09.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %bb.b ], [ %.0915, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.e, %bb.b ], [ %.016, %.lr.ph ] ; 2 uses
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa, ptr noundef nonnull dereferenceable(4) @.str.9) #24
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.09.lcssa, ptr noundef nonnull dereferenceable(5) @.str.10) #24
  %.not13 = icmp eq i32 %i.i, 0
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.09.lcssa, ptr noundef nonnull dereferenceable(1) %.0.lcssa) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.010 = phi i32 [ %i.j, %bb.d ], [ 0, %bb.c ]
  ret i32 %.010
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @midx_layer_contains_pack(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i8, ptr %i.c, align 4, !tbaa !91
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = zext i32 %i.b to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call ptr @xmalloc(i64 noundef %i.i) #21 ; 4 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !105
  %i.k = load i32, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  %.not62 = icmp eq i32 %i.k, 0
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %i.k to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.preheader81, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> %vec.ind, ptr %i.l, align 8, !tbaa !135
  store <2 x i64> %step.add, ptr %i.m, align 8, !tbaa !135
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader81

.lr.ph.preheader81:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader81, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader81 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store i64 %indvars.iv, ptr %i.o, align 8, !tbaa !135
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  %.pre-phi = phi i64 [ 0, %bb.c ], [ %wide.trip.count, %middle.block ], [ %wide.trip.count, %.lr.ph ]
  %i.p = tail call i32 @git_qsort_s(ptr noundef %i.j, i64 noundef %.pre-phi, i64 noundef 8, ptr noundef nonnull @midx_pack_names_cmp, ptr noundef nonnull %0) #21
  %.not42 = icmp eq i32 %i.p, 0
  br i1 %.not42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 684, ptr noundef nonnull @.str.12) #22
  unreachable

bb.e:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %.not63 = icmp eq i32 %i.b, 0
  br i1 %.not63, label %.thread, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !105  ; 2 uses
  %.not43 = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95   ; 2 uses
  br i1 %.not43, label %.lr.ph55.split.us, label %.lr.ph55.split

.lr.ph55.split.us:                                ; preds = %.lr.ph55, %bb.h
  %.03453.us = phi i32 [ %spec.select50.us, %bb.h ], [ %i.b, %.lr.ph55 ] ; 2 uses
  %.03552.us = phi i32 [ %spec.select.us, %bb.h ], [ 0, %.lr.ph55 ] ; 3 uses
  %i.u = sub nuw i32 %.03453.us, %.03552.us
  %i.v = lshr i32 %i.u, 1
  %i.w = add i32 %i.v, %.03552.us                 ; 3 uses
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.x
  %.032.us = load ptr, ptr %i.y, align 8, !tbaa !99 ; 3 uses
  %i.z = load i8, ptr %.032.us, align 1, !tbaa !81 ; 2 uses
  %.not14.i.us = icmp eq i8 %i.z, 0
  br i1 %.not14.i.us, label %.critedge.i.us, label %.lr.ph.i.us
end_hunk_0
begin_hunk_1_@midx_layer_contains_pack:bb.a
.lr.ph.i.us:                                      ; preds = %.lr.ph55.split.us, %bb.f
  %i.aa = phi i8 [ %i.af, %bb.f ], [ %i.z, %.lr.ph55.split.us ]
  %.016.i.us = phi ptr [ %i.ad, %bb.f ], [ %.032.us, %.lr.ph55.split.us ] ; 2 uses
  %.0915.i.us = phi ptr [ %i.ae, %bb.f ], [ %1, %.lr.ph55.split.us ] ; 3 uses
  %i.ab = load i8, ptr %.0915.i.us, align 1, !tbaa !81
  %i.ac = icmp eq i8 %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %.critedge.i.us

bb.f:                                             ; preds = %.lr.ph.i.us
  %i.ad = getelementptr inbounds nuw i8, ptr %.016.i.us, i64 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0915.i.us, i64 1 ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !81  ; 2 uses
  %.not.i.us = icmp eq i8 %i.af, 0
  br i1 %.not.i.us, label %.critedge.i.us, label %.lr.ph.i.us, !llvm.loop !134

.critedge.i.us:                                   ; preds = %.lr.ph.i.us, %bb.f, %.lr.ph55.split.us
  %.09.lcssa.i.us = phi ptr [ %1, %.lr.ph55.split.us ], [ %.0915.i.us, %.lr.ph.i.us ], [ %i.ae, %bb.f ] ; 2 uses
  %.0.lcssa.i.us = phi ptr [ %.032.us, %.lr.ph55.split.us ], [ %.016.i.us, %.lr.ph.i.us ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.us, ptr noundef nonnull dereferenceable(4) @.str.9) #24
  %.not12.i.us = icmp eq i32 %i.ag, 0
  br i1 %.not12.i.us, label %bb.g, label %cmp_idx_or_pack_name.exit.us

bb.g:                                             ; preds = %.critedge.i.us
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.09.lcssa.i.us, ptr noundef nonnull dereferenceable(5) @.str.10) #24
  %.not13.i.us = icmp eq i32 %i.ah, 0
  br i1 %.not13.i.us, label %.thread, label %cmp_idx_or_pack_name.exit.us

cmp_idx_or_pack_name.exit.us:                     ; preds = %bb.g, %.critedge.i.us
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.09.lcssa.i.us, ptr noundef nonnull dereferenceable(1) %.0.lcssa.i.us) #24 ; 2 uses
  %.not44.us = icmp eq i32 %i.ai, 0
  br i1 %.not44.us, label %.thread, label %bb.h

bb.h:                                             ; preds = %cmp_idx_or_pack_name.exit.us
  %i.aj = icmp sgt i32 %i.ai, 0                   ; 2 uses
  %i.ak = add i32 %i.w, 1
  %spec.select.us = select i1 %i.aj, i32 %i.ak, i32 %.03552.us ; 2 uses
  %spec.select50.us = select i1 %i.aj, i32 %.03453.us, i32 %i.w ; 2 uses
  %i.al = icmp ult i32 %spec.select.us, %spec.select50.us
  br i1 %i.al, label %.lr.ph55.split.us, label %.thread

.lr.ph55.split:                                   ; preds = %.lr.ph55, %bb.k
  %.03453 = phi i32 [ %spec.select50, %bb.k ], [ %i.b, %.lr.ph55 ] ; 2 uses
  %.03552 = phi i32 [ %spec.select, %bb.k ], [ 0, %.lr.ph55 ] ; 3 uses
  %i.am = sub nuw i32 %.03453, %.03552
  %i.an = lshr i32 %i.am, 1
  %i.ao = add i32 %i.an, %.03552                  ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !135
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ar
  %.032 = load ptr, ptr %i.as, align 8, !tbaa !99 ; 3 uses
  %i.at = load i8, ptr %.032, align 1, !tbaa !81  ; 2 uses
  %.not14.i = icmp eq i8 %i.at, 0
  br i1 %.not14.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph55.split, %bb.i
  %i.au = phi i8 [ %i.az, %bb.i ], [ %i.at, %.lr.ph55.split ]
  %.016.i = phi ptr [ %i.ax, %bb.i ], [ %.032, %.lr.ph55.split ] ; 2 uses
  %.0915.i = phi ptr [ %i.ay, %bb.i ], [ %1, %.lr.ph55.split ] ; 3 uses
  %i.av = load i8, ptr %.0915.i, align 1, !tbaa !81
  %i.aw = icmp eq i8 %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.016.i, i64 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0915.i, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !81  ; 2 uses
  %.not.i = icmp eq i8 %i.az, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !134

.critedge.i:                                      ; preds = %bb.i, %.lr.ph.i, %.lr.ph55.split
  %.09.lcssa.i = phi ptr [ %1, %.lr.ph55.split ], [ %.0915.i, %.lr.ph.i ], [ %i.ay, %bb.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.032, %.lr.ph55.split ], [ %.016.i, %.lr.ph.i ], [ %i.ax, %bb.i ] ; 2 uses
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.lcssa.i, ptr noundef nonnull dereferenceable(4) @.str.9) #24
  %.not12.i = icmp eq i32 %i.ba, 0
  br i1 %.not12.i, label %bb.j, label %cmp_idx_or_pack_name.exit

bb.j:                                             ; preds = %.critedge.i
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.09.lcssa.i, ptr noundef nonnull dereferenceable(5) @.str.10) #24
  %.not13.i = icmp eq i32 %i.bb, 0
  br i1 %.not13.i, label %.thread, label %cmp_idx_or_pack_name.exit

cmp_idx_or_pack_name.exit:                        ; preds = %.critedge.i, %bb.j
  %i.bc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.09.lcssa.i, ptr noundef nonnull dereferenceable(1) %.0.lcssa.i) #24 ; 2 uses
  %.not44 = icmp eq i32 %i.bc, 0
  br i1 %.not44, label %.thread, label %bb.k

bb.k:                                             ; preds = %cmp_idx_or_pack_name.exit
  %i.bd = icmp sgt i32 %i.bc, 0                   ; 2 uses
  %i.be = add i32 %i.ao, 1
  %spec.select = select i1 %i.bd, i32 %i.be, i32 %.03552 ; 2 uses
  %spec.select50 = select i1 %i.bd, i32 %.03453, i32 %i.ao ; 2 uses
  %i.bf = icmp ult i32 %spec.select, %spec.select50
  br i1 %i.bf, label %.lr.ph55.split, label %.thread

.thread:                                          ; preds = %bb.k, %cmp_idx_or_pack_name.exit, %bb.j, %bb.h, %cmp_idx_or_pack_name.exit.us, %bb.g, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ 1, %bb.g ], [ 1, %cmp_idx_or_pack_name.exit.us ], [ 0, %bb.h ], [ 1, %cmp_idx_or_pack_name.exit ], [ 1, %bb.j ], [ 0, %bb.k ]
  ret i32 %.2
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

declare i32 @git_qsort_s(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @midx_pack_names_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !135
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99
  %i.f = load i64, ptr %1, align 8, !tbaa !135
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.h) #24
  ret i32 %i.i
}

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @midx_contains_pack(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not6 = icmp eq ptr %0, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.047 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.a = tail call i32 @midx_layer_contains_pack(ptr noundef nonnull %.047, ptr noundef %1)
  %.not5 = icmp eq i32 %i.a, 0
  br i1 %.not5, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.047, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !140

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @midx_preferred_pack(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  switch i32 %i.b, label %bb.g [
    i32 -1, label %bb.b
    i32 -2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @load_midx_revindex(ptr noundef nonnull %0) #21
  %.not.not = icmp eq i32 %i.c, 0
  br i1 %.not.not, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  store i32 -2, ptr %i.a, align 8, !tbaa !94
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !84
  %i.f = tail call i32 @pack_pos_to_midx(ptr noundef nonnull %0, i32 noundef %i.e) #21 ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.019.i.i = phi ptr [ %.0.i.i, %bb.d ], [ %0, %bb.c ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 168
  %i.h = load i32, ptr %i.g, align 8, !tbaa !84   ; 3 uses
  %i.i = icmp ult i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 160
  %.0.i.i = load ptr, ptr %i.j, align 8, !tbaa !106 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %.critedge15.i.i, label %.lr.ph.i.i, !llvm.loop !122

.critedge15.i.i:                                  ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %i.f) #22
  unreachable

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !85
  %i.m = add i32 %i.l, %i.h
  %.not14.i.i = icmp ult i32 %i.f, %i.m
  br i1 %.not14.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge.i.i
  %i.n = tail call fastcc ptr @_(ptr noundef nonnull @.str.64)
  tail call void (ptr, ...) @die(ptr noundef %i.n) #22
  unreachable

bb.f:                                             ; preds = %.critedge.i.i
  %i.o = sub nuw i32 %i.f, %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 172
  %i.q = load i32, ptr %i.p, align 4, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125
  %i.t = zext i32 %i.o to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 1
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = add i32 %i.x, %i.q                       ; 2 uses
  store i32 %i.y, ptr %i.a, align 8, !tbaa !94
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.z = phi i32 [ %i.y, %bb.f ], [ %i.b, %bb.a ]
  store i32 %i.z, ptr %1, align 4, !tbaa !79
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.a, %bb.g
  %.1 = phi i32 [ 0, %bb.g ], [ -1, %.thread ], [ -1, %bb.a ]
  ret i32 %.1
}

declare i32 @load_midx_revindex(ptr noundef) local_unnamed_addr #1

declare i32 @pack_pos_to_midx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @prepare_multi_pack_index_one(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %odb_source_files_downcast.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.32, i32 noundef 31, ptr noundef nonnull @.str.33, i32 noundef %i.b) #22
  unreachable

odb_source_files_downcast.exit:                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  tail call void @prepare_repo_settings(ptr noundef %i.e) #21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.g = load i32, ptr %i.f, align 8, !tbaa !141
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %odb_source_files_downcast.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %.not8 = icmp eq ptr %i.k, null
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @load_multi_pack_index(ptr noundef nonnull %0) ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.l, ptr %i.n, align 8, !tbaa !68
  %i.o = icmp ne ptr %i.l, null
  %i.p = zext i1 %i.o to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %odb_source_files_downcast.exit, %bb.d
  %.0 = phi i32 [ 0, %odb_source_files_downcast.exit ], [ %i.p, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

declare void @prepare_repo_settings(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @midx_checksum_valid(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  %i.k = tail call i32 @hashfile_checksum_valid(ptr noundef %i.f, ptr noundef %i.h, i64 noundef %i.j) #21
  ret i32 %i.k
}

declare i32 @hashfile_checksum_valid(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @clear_midx_files_ext(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.clear_midx_data, align 8    ; 10 uses
  %4 = alloca %struct.strbuf, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @cmp_strmap_entry, ptr %i.a, align 8, !tbaa !142
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %1, ptr %i.d, align 8, !tbaa !143
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.load_midx_chain_fd_st.buf, i64 24, i1 false)
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, ptr noundef %1) #21
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.g = call i32 @strset_add(ptr noundef nonnull %3, ptr noundef %i.f) #21 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  call void @for_each_file_in_pack_dir(ptr noundef %i.i, ptr noundef nonnull @clear_midx_file_ext, ptr noundef nonnull %3) #21
  call void @strmap_clear(ptr noundef nonnull %3, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare i32 @cmp_strmap_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @strset_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @for_each_file_in_pack_dir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @clear_midx_file_ext(ptr noundef %0, i64 %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call zeroext i1 @starts_with(ptr noundef %2, ptr noundef nonnull @.str.66) #21
  br i1 %i.a, label %bb.b, label %ends_with.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143  ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #24 ; 2 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #24 ; 3 uses
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %ends_with.exit.thread, label %ends_with.exit

ends_with.exit:                                   ; preds = %bb.b
  %i.g = sub nuw i64 %i.d, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.h, ptr nonnull readonly %i.c, i64 %i.e)
  %.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %ends_with.exit.thread

bb.c:                                             ; preds = %ends_with.exit
  %i.i = tail call i32 @strmap_contains(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %ends_with.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @unlink(ptr noundef %0) #21
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %ends_with.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call fastcc ptr @_(ptr noundef nonnull @.str.67)
  tail call void (ptr, ...) @die_errno(ptr noundef %i.k, ptr noundef %0) #22
  unreachable

ends_with.exit.thread:                            ; preds = %bb.b, %bb.d, %bb.c, %bb.a, %ends_with.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @clear_incremental_midx_files_ext(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.clear_midx_data, align 8    ; 10 uses
  %4 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @cmp_strmap_entry, ptr %i.a, align 8, !tbaa !142
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %1, ptr %i.d, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.load_midx_chain_fd_st.buf, i64 24, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
end_hunk_1
begin_hunk_2_@verify_midx_file:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.bt

bb.f:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 448
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !24
  %i.x = tail call i32 @hashfile_checksum_valid(ptr noundef %i.s, ptr noundef %i.u, i64 noundef %i.w) #21
  %.not106 = icmp eq i32 %i.x, 0
  br i1 %.not106, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i116 = icmp eq i32 %i.y, 0
  br i1 %.not4.i116, label %_.exit118, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #21
  br label %_.exit118

_.exit118:                                        ; preds = %bb.g, %bb.h
  %.0.i117 = phi ptr [ %i.z, %bb.h ], [ @.str.21, %bb.g ]
  tail call void (ptr, ...) @midx_report(ptr noundef %.0.i117)
  br label %bb.i

bb.i:                                             ; preds = %_.exit118, %bb.f
  %i.aa = and i32 %1, 1
  %.not107 = icmp eq i32 %i.aa, 0                 ; 3 uses
  br i1 %.not107, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i119 = icmp eq i32 %i.ab, 0
  br i1 %.not4.i119, label %_.exit121, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #21
  br label %_.exit121

_.exit121:                                        ; preds = %bb.j, %bb.k
  %.0.i120 = phi ptr [ %i.ac, %bb.k ], [ @.str.22, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !83
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 172
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !82
  %i.ah = add i32 %i.ag, %i.ae
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call ptr @start_delayed_progress(ptr noundef %i.d, ptr noundef %.0.i120, i64 noundef %i.ai) #21 ; 2 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !156
  br label %bb.l

bb.l:                                             ; preds = %_.exit121, %bb.i
  %i.ak = phi ptr [ %i.aj, %_.exit121 ], [ null, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 172 ; 2 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !83
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !82
  %i.ap = sub i32 0, %i.an
  %.not252 = icmp eq i32 %i.ao, %i.ap
  br i1 %.not252, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %i.aq = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ar = tail call i32 @prepare_midx_pack(ptr noundef nonnull %i.e, i32 noundef %i.aq)
  %.not115 = icmp eq i32 %i.ar, 0
  br i1 %.not115, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @midx_report(ptr noundef nonnull @.str.23, i32 noundef %i.aq)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  tail call void @display_progress(ptr noundef %i.ak, i64 noundef %indvars.iv.next) #21
  %i.as = load i32, ptr %i.al, align 8, !tbaa !83
  %i.at = load i32, ptr %i.am, align 4, !tbaa !82
  %i.au = add i32 %i.at, %i.as
  %i.av = zext i32 %i.au to i64
  %i.aw = icmp samesign ult i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !158

._crit_edge:                                      ; preds = %bb.n, %bb.l
  %i.ax = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not4.i.i, label %stop_progress.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ay = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #21
  br label %stop_progress.exit

stop_progress.exit:                               ; preds = %._crit_edge, %bb.o
  %.0.i.i = phi ptr [ %i.ay, %bb.o ], [ @.str.72, %._crit_edge ]
  call void @stop_progress_msg(ptr noundef nonnull %i.a, ptr noundef %.0.i.i) #21
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 12 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !85 ; 3 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %stop_progress.exit
  %i.bc = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i122 = icmp eq i32 %i.bc, 0
  br i1 %.not4.i122, label %_.exit124, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #21
  br label %_.exit124

_.exit124:                                        ; preds = %bb.p, %bb.q
  %.0.i123 = phi ptr [ %i.bd, %bb.q ], [ @.str.24, %bb.p ]
  call void (ptr, ...) @midx_report(ptr noundef %.0.i123)
  br label %bb.bs

bb.r:                                             ; preds = %stop_progress.exit
  br i1 %.not107, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i125 = icmp eq i32 %i.be, 0
  br i1 %.not4.i125, label %_.exit127, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #21
  %.pre = load i32, ptr %i.az, align 4, !tbaa !85
  br label %_.exit127

_.exit127:                                        ; preds = %bb.s, %bb.t
  %i.bg = phi i32 [ %.pre, %bb.t ], [ %i.ba, %bb.s ]
  %.0.i126 = phi ptr [ %i.bf, %bb.t ], [ @.str.25, %bb.s ]
  %i.bh = add i32 %i.bg, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = call ptr @start_sparse_progress(ptr noundef %i.d, ptr noundef %.0.i126, i64 noundef %i.bi) #21
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !156
  %.pre297.pre = load i32, ptr %i.az, align 4, !tbaa !85
  br label %bb.u

bb.u:                                             ; preds = %_.exit127, %bb.r
  %.pre297 = phi i32 [ %.pre297.pre, %_.exit127 ], [ %i.ba, %bb.r ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 32
  br label %.preheader

.preheader:                                       ; preds = %bb.u, %._crit_edge242
  %i.bn = phi i32 [ %.pre297, %bb.u ], [ %i.er, %._crit_edge242 ] ; 2 uses
  %i.bo = phi i32 [ %.pre297, %bb.u ], [ %i.es, %._crit_edge242 ] ; 2 uses
  %.098243 = phi ptr [ %i.e, %bb.u ], [ %i.eu, %._crit_edge242 ]
  %.not253 = icmp eq i32 %i.bo, 1
  br i1 %.not253, label %._crit_edge242, label %.lr.ph241

.lr.ph241:                                        ; preds = %.preheader, %bb.al
  %i.bp = phi i32 [ %i.en, %bb.al ], [ %i.bn, %.preheader ]
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %bb.al ], [ 0, %.preheader ] ; 2 uses
  %i.bq = phi i32 [ %i.en, %bb.al ], [ %i.bo, %.preheader ]
  %indvars290 = trunc nuw i64 %indvars.iv288 to i32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.br = load i32, ptr %i.bk, align 8, !tbaa !84 ; 4 uses
  %i.bs = add i32 %i.br, %indvars290              ; 5 uses
  %i.bt = add i32 %i.br, %i.bq
  %.not.i = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i, label %.lr.ph.i.i, label %nth_midxed_object_oid.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph241, %bb.v
  %.019.i.i = phi ptr [ %.0.i.i129, %bb.v ], [ %i.e, %.lr.ph241 ] ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 168
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !84 ; 3 uses
  %i.bw = icmp ult i32 %i.bs, %i.bv
  br i1 %i.bw, label %bb.v, label %.critedge.i.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 160
  %.0.i.i129 = load ptr, ptr %i.bx, align 8, !tbaa !106 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i129, null
  br i1 %.not.i.i, label %.critedge15.i.i, label %.lr.ph.i.i, !llvm.loop !122

.critedge15.i.i:                                  ; preds = %bb.v
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %i.bs) #22
  unreachable

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 60
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !85
  %i.ca = add i32 %i.bz, %i.bv
  %.not14.i.i = icmp ult i32 %i.bs, %i.ca
  br i1 %.not14.i.i, label %midx_for_object.exit.i, label %bb.w

bb.w:                                             ; preds = %.critedge.i.i
  %i.cb = call fastcc ptr @_(ptr noundef nonnull @.str.64)
  call void (ptr, ...) @die(ptr noundef %i.cb) #22
  unreachable

midx_for_object.exit.i:                           ; preds = %.critedge.i.i
  %i.cc = sub nuw i32 %i.bs, %i.bv
  %i.cd = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 112
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !120
  %i.cf = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 53
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !92
  %i.ch = zext i8 %i.cg to i64
  %i.ci = zext i32 %i.cc to i64
  %i.cj = mul nuw nsw i64 %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cj
  %i.cl = load ptr, ptr %.019.i.i, align 8, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !26
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !30
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 448
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !42 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %4, ptr readonly align 1 %i.ck, i64 %i.cs, i1 false)
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !59 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 32
  br i1 %i.cu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %midx_for_object.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 %i.ct
  %i.cw = sub nuw nsw i64 32, %i.ct
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cv, i8 0, i64 %i.cw, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %midx_for_object.exit.i
  %.not.i.i.i = icmp eq ptr %i.cq, @hash_algos
  br i1 %.not.i.i.i, label %oidread.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.1.i.i.i = icmp eq ptr %i.cq, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i, label %oidread.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.2.i.i.i = icmp eq ptr %i.cq, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i = select i1 %.not.2.i.i.i, i32 2, i32 0
  br label %oidread.exit.i

oidread.exit.i:                                   ; preds = %bb.aa, %bb.z, %bb.y
  %.2.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.aa ], [ 0, %bb.y ], [ 1, %bb.z ]
  store i32 %.2.i.i.i, ptr %i.bl, align 4, !tbaa !123
  br label %nth_midxed_object_oid.exit

nth_midxed_object_oid.exit:                       ; preds = %.lr.ph241, %oidread.exit.i
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 5 uses
  %i.cx = trunc nuw i64 %indvars.iv.next289 to i32
  %i.cy = add i32 %i.br, %i.cx                    ; 5 uses
  %i.cz = add i32 %i.bp, %i.br
  %.not.i130 = icmp ult i32 %i.cy, %i.cz
  br i1 %.not.i130, label %.lr.ph.i.i132, label %nth_midxed_object_oid.exit146

.lr.ph.i.i132:                                    ; preds = %nth_midxed_object_oid.exit, %bb.ab
  %.019.i.i133 = phi ptr [ %.0.i.i143, %bb.ab ], [ %i.e, %nth_midxed_object_oid.exit ] ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.019.i.i133, i64 168
  %i.db = load i32, ptr %i.da, align 8, !tbaa !84 ; 3 uses
  %i.dc = icmp ult i32 %i.cy, %i.db
  br i1 %i.dc, label %bb.ab, label %.critedge.i.i134

bb.ab:                                            ; preds = %.lr.ph.i.i132
  %i.dd = getelementptr inbounds nuw i8, ptr %.019.i.i133, i64 160
  %.0.i.i143 = load ptr, ptr %i.dd, align 8, !tbaa !106 ; 2 uses
  %.not.i.i144 = icmp eq ptr %.0.i.i143, null
  br i1 %.not.i.i144, label %.critedge15.i.i145, label %.lr.ph.i.i132, !llvm.loop !122

.critedge15.i.i145:                               ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %i.cy) #22
  unreachable

.critedge.i.i134:                                 ; preds = %.lr.ph.i.i132
  %i.de = getelementptr inbounds nuw i8, ptr %.019.i.i133, i64 60
  %i.df = load i32, ptr %i.de, align 4, !tbaa !85
  %i.dg = add i32 %i.df, %i.db
  %.not14.i.i135 = icmp ult i32 %i.cy, %i.dg
  br i1 %.not14.i.i135, label %midx_for_object.exit.i136, label %bb.ac

bb.ac:                                            ; preds = %.critedge.i.i134
  %i.dh = call fastcc ptr @_(ptr noundef nonnull @.str.64)
  call void (ptr, ...) @die(ptr noundef %i.dh) #22
  unreachable

midx_for_object.exit.i136:                        ; preds = %.critedge.i.i134
  %i.di = sub nuw i32 %i.cy, %i.db
  %i.dj = getelementptr inbounds nuw i8, ptr %.019.i.i133, i64 112
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !120
  %i.dl = getelementptr inbounds nuw i8, ptr %.019.i.i133, i64 53
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !92
  %i.dn = zext i8 %i.dm to i64
  %i.do = zext i32 %i.di to i64
  %i.dp = mul nuw nsw i64 %i.dn, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dp
  %i.dr = load ptr, ptr %.019.i.i133, align 8, !tbaa !25
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !26
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !30
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 448
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !42 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr readonly align 1 %i.dq, i64 %i.dy, i1 false)
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !59 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, 32
  br i1 %i.ea, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %midx_for_object.exit.i136
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 %i.dz
  %i.ec = sub nuw nsw i64 32, %i.dz
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.eb, i8 0, i64 %i.ec, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %midx_for_object.exit.i136
  %.not.i.i.i137 = icmp eq ptr %i.dw, @hash_algos
  br i1 %.not.i.i.i137, label %oidread.exit.i141, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.1.i.i.i138 = icmp eq ptr %i.dw, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i138, label %oidread.exit.i141, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not.2.i.i.i139 = icmp eq ptr %i.dw, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i140 = select i1 %.not.2.i.i.i139, i32 2, i32 0
  br label %oidread.exit.i141

oidread.exit.i141:                                ; preds = %bb.ag, %bb.af, %bb.ae
  %.2.i.i.i142 = phi i32 [ %spec.select.i.i.i140, %bb.ag ], [ 0, %bb.ae ], [ 1, %bb.af ]
  store i32 %.2.i.i.i142, ptr %i.bm, align 4, !tbaa !123
  br label %nth_midxed_object_oid.exit146

nth_midxed_object_oid.exit146:                    ; preds = %nth_midxed_object_oid.exit, %oidread.exit.i141
  %i.ed = call i32 @memcmp(ptr noundef nonnull readonly dereferenceable(32) %4, ptr noundef nonnull readonly dereferenceable(32) %5, i64 noundef 32) #24
  %i.ee = icmp sgt i32 %i.ed, -1
  br i1 %i.ee, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %nth_midxed_object_oid.exit146
  %i.ef = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i147 = icmp eq i32 %i.ef, 0
  br i1 %.not4.i147, label %_.exit149, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #21
  br label %_.exit149

_.exit149:                                        ; preds = %bb.ah, %bb.ai
  %.0.i148 = phi ptr [ %i.eg, %bb.ai ], [ @.str.26, %bb.ah ]
  %i.eh = call ptr @oid_to_hex(ptr noundef nonnull %4) #21
  %i.ei = call ptr @oid_to_hex(ptr noundef nonnull %5) #21
  %i.ej = add nuw i32 %indvars290, 1
  call void (ptr, ...) @midx_report(ptr noundef %.0.i148, i32 noundef %indvars290, ptr noundef %i.eh, ptr noundef %i.ei, i32 noundef %i.ej)
  br label %bb.aj

bb.aj:                                            ; preds = %nth_midxed_object_oid.exit146, %_.exit149
  %i.ek = and i64 %indvars.iv.next289, 4095
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !156
  call void @display_progress(ptr noundef %i.em, i64 noundef %indvars.iv.next289) #21
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.en = load i32, ptr %i.az, align 4, !tbaa !85 ; 5 uses
  %i.eo = add i32 %i.en, -1
  %i.ep = zext i32 %i.eo to i64
  %i.eq = icmp samesign ult i64 %indvars.iv.next289, %i.ep
  br i1 %i.eq, label %.lr.ph241, label %._crit_edge242, !llvm.loop !159

._crit_edge242:                                   ; preds = %bb.al, %.preheader
  %i.er = phi i32 [ %i.bn, %.preheader ], [ %i.en, %bb.al ]
  %i.es = phi i32 [ 1, %.preheader ], [ %i.en, %bb.al ]
  %i.et = getelementptr inbounds nuw i8, ptr %.098243, i64 160
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !86 ; 2 uses
  %.not108 = icmp eq ptr %i.eu, null
  br i1 %.not108, label %bb.am, label %.preheader, !llvm.loop !160

bb.am:                                            ; preds = %._crit_edge242
  %i.ev = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i.i150 = icmp eq i32 %i.ev, 0
  br i1 %.not4.i.i150, label %stop_progress.exit152, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ew = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #21
  br label %stop_progress.exit152

stop_progress.exit152:                            ; preds = %bb.am, %bb.an
  %.0.i.i151 = phi ptr [ %i.ew, %bb.an ], [ @.str.72, %bb.am ]
  call void @stop_progress_msg(ptr noundef nonnull %i.a, ptr noundef %.0.i.i151) #21
  %i.ex = load i32, ptr %i.az, align 4, !tbaa !85
  %i.ey = load i32, ptr %i.bk, align 8, !tbaa !84
  %i.ez = add i32 %i.ey, %i.ex
  %i.fa = zext i32 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 3
  %i.fc = call ptr @xmalloc(i64 noundef %i.fb) #21 ; 7 uses
  %i.fd = load i32, ptr %i.az, align 4, !tbaa !85
  %i.fe = load i32, ptr %i.bk, align 8, !tbaa !84
  %i.ff = add i32 %i.fe, %i.fd                    ; 2 uses
  %.not254 = icmp eq i32 %i.ff, 0
  br i1 %.not254, label %._crit_edge246, label %.lr.ph245.preheader

.lr.ph245.preheader:                              ; preds = %stop_progress.exit152
  %wide.trip.count = zext i32 %i.ff to i64
  br label %.lr.ph245

.lr.ph245:                                        ; preds = %.lr.ph245.preheader, %nth_midxed_pack_int_id.exit
  %indvars.iv291 = phi i64 [ 0, %.lr.ph245.preheader ], [ %indvars.iv.next292, %nth_midxed_pack_int_id.exit ] ; 6 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv291 ; 2 uses
  %i.fh = trunc nuw i64 %indvars.iv291 to i32     ; 2 uses
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !161
  br label %.lr.ph.i.i153

.lr.ph.i.i153:                                    ; preds = %.lr.ph245, %bb.ao
  %.019.i.i154 = phi ptr [ %.0.i.i158, %bb.ao ], [ %i.e, %.lr.ph245 ] ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.019.i.i154, i64 168
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !84 ; 2 uses
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = icmp samesign ult i64 %indvars.iv291, %i.fk
  br i1 %i.fl, label %bb.ao, label %.critedge.i.i155

bb.ao:                                            ; preds = %.lr.ph.i.i153
  %i.fm = getelementptr inbounds nuw i8, ptr %.019.i.i154, i64 160
  %.0.i.i158 = load ptr, ptr %i.fm, align 8, !tbaa !106 ; 2 uses
  %.not.i.i159 = icmp eq ptr %.0.i.i158, null
  br i1 %.not.i.i159, label %.critedge15.i.i160, label %.lr.ph.i.i153, !llvm.loop !122

.critedge15.i.i160:                               ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 427, ptr noundef nonnull @.str.63, i32 noundef %i.fh) #22
  unreachable

.critedge.i.i155:                                 ; preds = %.lr.ph.i.i153
  %i.fn = getelementptr inbounds nuw i8, ptr %.019.i.i154, i64 60
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !85
  %i.fp = add i32 %i.fo, %i.fj
  %i.fq = zext i32 %i.fp to i64
  %.not14.i.i156 = icmp samesign ult i64 %indvars.iv291, %i.fq
  br i1 %.not14.i.i156, label %nth_midxed_pack_int_id.exit, label %bb.ap

bb.ap:                                            ; preds = %.critedge.i.i155
  %i.fr = call fastcc ptr @_(ptr noundef nonnull @.str.64)
  call void (ptr, ...) @die(ptr noundef %i.fr) #22
  unreachable

nth_midxed_pack_int_id.exit:                      ; preds = %.critedge.i.i155
  %8 = sub nuw nsw i64 %indvars.iv291, %i.fk
  %i.fs = getelementptr inbounds nuw i8, ptr %.019.i.i154, i64 172
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !82
  %i.fu = getelementptr inbounds nuw i8, ptr %.019.i.i154, i64 120
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !125
  %i.fw = shl nuw nsw i64 %8, 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 1
  %i.fz = call i32 @llvm.bswap.i32(i32 %i.fy)
  %i.ga = add i32 %i.fz, %i.ft
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !163
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge246, label %.lr.ph245, !llvm.loop !164

._crit_edge246:                                   ; preds = %nth_midxed_pack_int_id.exit, %stop_progress.exit152
  br i1 %.not107, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge246
  %i.gc = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i161 = icmp eq i32 %i.gc, 0
  br i1 %.not4.i161, label %_.exit163, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #21
  br label %_.exit163

_.exit163:                                        ; preds = %bb.aq, %bb.ar
  %.0.i162 = phi ptr [ %i.gd, %bb.ar ], [ @.str.27, %bb.aq ]
  %i.ge = load i32, ptr %i.az, align 4, !tbaa !85
  %i.gf = zext i32 %i.ge to i64
  %i.gg = call ptr @start_sparse_progress(ptr noundef %i.d, ptr noundef %.0.i162, i64 noundef %i.gf) #21 ; 2 uses
  store ptr %i.gg, ptr %i.a, align 8, !tbaa !156
  call void @display_progress(ptr noundef %i.gg, i64 noundef 0) #21
  %i.gh = load i32, ptr %i.az, align 4, !tbaa !85 ; 2 uses
  %i.gi = icmp ugt i32 %i.gh, 1
  br i1 %i.gi, label %bb.as, label %sane_qsort.exit

bb.as:                                            ; preds = %_.exit163
  %i.gj = zext i32 %i.gh to i64
  call void @qsort(ptr noundef %i.fc, i64 noundef range(i64 0, 4294967296) %i.gj, i64 noundef 8, ptr noundef nonnull @compare_pair_pos_vs_id) #21
  br label %sane_qsort.exit

sane_qsort.exit:                                  ; preds = %_.exit163, %bb.as
  %i.gk = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i.i164 = icmp eq i32 %i.gk, 0
  br i1 %.not4.i.i164, label %stop_progress.exit166, label %bb.at

bb.at:                                            ; preds = %sane_qsort.exit
  %i.gl = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #21
  br label %stop_progress.exit166

stop_progress.exit166:                            ; preds = %sane_qsort.exit, %bb.at
  %.0.i.i165 = phi ptr [ %i.gl, %bb.at ], [ @.str.72, %sane_qsort.exit ]
  call void @stop_progress_msg(ptr noundef nonnull %i.a, ptr noundef %.0.i.i165) #21
  %i.gm = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i167 = icmp eq i32 %i.gm, 0
  br i1 %.not4.i167, label %_.exit169, label %bb.au

bb.au:                                            ; preds = %stop_progress.exit166
  %i.gn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #21
  br label %_.exit169

_.exit169:                                        ; preds = %stop_progress.exit166, %bb.au
  %.0.i168 = phi ptr [ %i.gn, %bb.au ], [ @.str.28, %stop_progress.exit166 ]
  %i.go = load i32, ptr %i.az, align 4, !tbaa !85
  %i.gp = zext i32 %i.go to i64
  %i.gq = call ptr @start_sparse_progress(ptr noundef %i.d, ptr noundef %.0.i168, i64 noundef %i.gp) #21
  store ptr %i.gq, ptr %i.a, align 8, !tbaa !156
  br label %bb.ax

.critedge:                                        ; preds = %._crit_edge246
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !156
  call void @display_progress(ptr noundef %i.gr, i64 noundef 0) #21
  %i.gs = load i32, ptr %i.az, align 4, !tbaa !85 ; 2 uses
  %i.gt = icmp ugt i32 %i.gs, 1
  br i1 %i.gt, label %bb.av, label %sane_qsort.exit170

bb.av:                                            ; preds = %.critedge
  %i.gu = zext i32 %i.gs to i64
  call void @qsort(ptr noundef %i.fc, i64 noundef range(i64 0, 4294967296) %i.gu, i64 noundef 8, ptr noundef nonnull @compare_pair_pos_vs_id) #21
  br label %sane_qsort.exit170

sane_qsort.exit170:                               ; preds = %.critedge, %bb.av
  %i.gv = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i.i171 = icmp eq i32 %i.gv, 0
  br i1 %.not4.i.i171, label %stop_progress.exit173, label %bb.aw

bb.aw:                                            ; preds = %sane_qsort.exit170
  %i.gw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #21
  br label %stop_progress.exit173

stop_progress.exit173:                            ; preds = %sane_qsort.exit170, %bb.aw
  %.0.i.i172 = phi ptr [ %i.gw, %bb.aw ], [ @.str.72, %sane_qsort.exit170 ]
  call void @stop_progress_msg(ptr noundef nonnull %i.a, ptr noundef %.0.i.i172) #21
  br label %bb.ax

bb.ax:                                            ; preds = %stop_progress.exit173, %_.exit169
  %i.gx = load i32, ptr %i.az, align 4, !tbaa !85
  %i.gy = load i32, ptr %i.bk, align 8, !tbaa !84
  %i.gz = sub i32 0, %i.gx
  %.not255 = icmp eq i32 %i.gy, %i.gz
  br i1 %.not255, label %.loopexit, label %.lr.ph251

.lr.ph251:                                        ; preds = %bb.ax
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph251, %bb.bq
  %indvars.iv294 = phi i64 [ 0, %.lr.ph251 ], [ %indvars.iv.next295.pre-phi, %bb.bq ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %.not109 = icmp eq i64 %indvars.iv294, 0
  br i1 %.not109, label %bb.be, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hb = getelementptr [8 x i8], ptr %i.fc, i64 %indvars.iv294
  %i.hc = getelementptr i8, ptr %i.hb, i64 -4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !163 ; 11 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv294
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !163
  %.not110 = icmp eq i32 %i.hd, %i.hg
  br i1 %.not110, label %bb.be, label %.lr.ph.i.i174

.lr.ph.i.i174:                                    ; preds = %bb.az, %bb.ba
  %.023.i.i = phi ptr [ %.0.i.i176, %bb.ba ], [ %i.e, %bb.az ] ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 172
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !82 ; 3 uses
  %i.hj = icmp ult i32 %i.hd, %i.hi
  br i1 %i.hj, label %bb.ba, label %.critedge.i.i175

bb.ba:                                            ; preds = %.lr.ph.i.i174
  %i.hk = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 160
  %.0.i.i176 = load ptr, ptr %i.hk, align 8, !tbaa !106 ; 2 uses
  %.not.i.i177 = icmp eq ptr %.0.i.i176, null
  br i1 %.not.i.i177, label %.critedge18.i.i, label %.lr.ph.i.i174, !llvm.loop !107

.critedge18.i.i:                                  ; preds = %bb.ba
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 445, ptr noundef nonnull @.str.60, i32 noundef %i.hd) #22
  unreachable

.critedge.i.i175:                                 ; preds = %.lr.ph.i.i174
  %i.hl = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 56
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !83
  %i.hn = add i32 %i.hm, %i.hi
  %.not17.i.i = icmp ult i32 %i.hd, %i.hn
  br i1 %.not17.i.i, label %nth_midxed_pack.exit, label %bb.bb

bb.bb:                                            ; preds = %.critedge.i.i175
  %i.ho = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 172
  %i.hp = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 56
  %i.hq = call fastcc ptr @_(ptr noundef nonnull @.str.61)
  %i.hr = load i32, ptr %i.hp, align 8, !tbaa !83
  %i.hs = load i32, ptr %i.ho, align 4, !tbaa !82
  %i.ht = add i32 %i.hs, %i.hr
  call void (ptr, ...) @die(ptr noundef %i.hq, i32 noundef %i.hd, i32 noundef %i.ht) #22
  unreachable

nth_midxed_pack.exit:                             ; preds = %.critedge.i.i175
  %i.hu = sub nuw i32 %i.hd, %i.hi
  %i.hv = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 192
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !96
  %i.hx = zext i32 %i.hu to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hx
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !102
  %magicptr = ptrtoint ptr %i.hz to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, -2
  br i1 %switch, label %.lr.ph.i.i179, label %bb.be

.lr.ph.i.i179:                                    ; preds = %nth_midxed_pack.exit, %bb.bc
  %.023.i.i180 = phi ptr [ %.0.i.i184, %bb.bc ], [ %i.e, %nth_midxed_pack.exit ] ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.023.i.i180, i64 172
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !82 ; 3 uses
  %i.ic = icmp ult i32 %i.hd, %i.ib
  br i1 %i.ic, label %bb.bc, label %.critedge.i.i181

bb.bc:                                            ; preds = %.lr.ph.i.i179
  %i.id = getelementptr inbounds nuw i8, ptr %.023.i.i180, i64 160
  %.0.i.i184 = load ptr, ptr %i.id, align 8, !tbaa !106 ; 2 uses
  %.not.i.i185 = icmp eq ptr %.0.i.i184, null
  br i1 %.not.i.i185, label %.critedge18.i.i186, label %.lr.ph.i.i179, !llvm.loop !107

.critedge18.i.i186:                               ; preds = %bb.bc
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.11, i32 noundef 445, ptr noundef nonnull @.str.60, i32 noundef %i.hd) #22
  unreachable

.critedge.i.i181:                                 ; preds = %.lr.ph.i.i179
  %i.ie = getelementptr inbounds nuw i8, ptr %.023.i.i180, i64 56
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !83
  %i.ig = add i32 %i.if, %i.ib
  %.not17.i.i182 = icmp ult i32 %i.hd, %i.ig
  br i1 %.not17.i.i182, label %nth_midxed_pack.exit187, label %bb.bd

bb.bd:                                            ; preds = %.critedge.i.i181
  %i.ih = getelementptr inbounds nuw i8, ptr %.023.i.i180, i64 172
  %i.ii = getelementptr inbounds nuw i8, ptr %.023.i.i180, i64 56
  %i.ij = call fastcc ptr @_(ptr noundef nonnull @.str.61)
  %i.ik = load i32, ptr %i.ii, align 8, !tbaa !83
  %i.il = load i32, ptr %i.ih, align 4, !tbaa !82
  %i.im = add i32 %i.il, %i.ik
  call void (ptr, ...) @die(ptr noundef %i.ij, i32 noundef %i.hd, i32 noundef %i.im) #22
  unreachable

nth_midxed_pack.exit187:                          ; preds = %.critedge.i.i181
  %i.in = sub nuw i32 %i.hd, %i.ib
  %i.io = getelementptr inbounds nuw i8, ptr %.023.i.i180, i64 192
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !96
  %i.iq = zext i32 %i.in to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !102 ; 2 uses
  %i.it = icmp eq ptr %i.is, inttoptr (i64 -1 to ptr)
  %..i183 = select i1 %i.it, ptr null, ptr %i.is  ; 2 uses
  %i.iu = call i32 @close_pack_fd(ptr noundef %..i183) #21 ; 0 uses
  call void @close_pack_index(ptr noundef %..i183) #21
  br label %bb.be

bb.be:                                            ; preds = %nth_midxed_pack.exit, %nth_midxed_pack.exit187, %bb.az, %bb.ay
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv294 ; 3 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !161
  %i.ix = call ptr @nth_midxed_object_oid(ptr noundef nonnull %6, ptr noundef nonnull %i.e, i32 noundef %i.iw) ; 0 uses
  %i.iy = call i32 @fill_midx_entry(ptr noundef nonnull %i.e, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.not112 = icmp eq i32 %i.iy, 0
  br i1 %.not112, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.iz = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i188 = icmp eq i32 %i.iz, 0
  br i1 %.not4.i188, label %_.exit190, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ja = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #21
  br label %_.exit190

_.exit190:                                        ; preds = %bb.bf, %bb.bg
  %.0.i189 = phi ptr [ %i.ja, %bb.bg ], [ @.str.29, %bb.bf ]
  %i.jb = load i32, ptr %i.iv, align 4, !tbaa !161
  %i.jc = call ptr @oid_to_hex(ptr noundef nonnull %6) #21
  call void (ptr, ...) @midx_report(ptr noundef %.0.i189, i32 noundef %i.jb, ptr noundef %i.jc)
  %.pre299 = add nuw nsw i64 %indvars.iv294, 1
  br label %bb.bq

bb.bh:                                            ; preds = %bb.be
  %i.jd = load ptr, ptr %i.ha, align 8, !tbaa !133 ; 3 uses
  %i.je = call i32 @open_pack_index(ptr noundef %i.jd) #21
  %.not113 = icmp eq i32 %i.je, 0
  br i1 %.not113, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jf = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i191 = icmp eq i32 %i.jf, 0
  br i1 %.not4.i191, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jg = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #21
  br label %bb.bp

bb.bk:                                            ; preds = %bb.bh
  %i.jh = load i64, ptr %7, align 8, !tbaa !131   ; 2 uses
  %i.ji = call i64 @find_pack_entry_one(ptr noundef nonnull %6, ptr noundef %i.jd) #21 ; 2 uses
  %.not114 = icmp eq i64 %i.jh, %i.ji
  br i1 %.not114, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i194 = icmp eq i32 %i.jj, 0
  br i1 %.not4.i194, label %_.exit196, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #21
  br label %_.exit196

_.exit196:                                        ; preds = %bb.bl, %bb.bm
  %.0.i195 = phi ptr [ %i.jk, %bb.bm ], [ @.str.31, %bb.bl ]
  %i.jl = load i32, ptr %i.iv, align 4, !tbaa !161
  %i.jm = call ptr @oid_to_hex(ptr noundef nonnull %6) #21
  call void (ptr, ...) @midx_report(ptr noundef %.0.i195, i32 noundef %i.jl, ptr noundef %i.jm, i64 noundef %i.jh, i64 noundef %i.ji)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %_.exit196
  %i.jn = add nuw nsw i64 %indvars.iv294, 1       ; 4 uses
  %i.jo = and i64 %i.jn, 4095
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.jq = load ptr, ptr %i.a, align 8, !tbaa !156
  call void @display_progress(ptr noundef %i.jq, i64 noundef %i.jn) #21
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bj, %bb.bi
  %.0.i192 = phi ptr [ %i.jg, %bb.bj ], [ @.str.30, %bb.bi ]
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jd, i64 208
  call void (ptr, ...) @midx_report(ptr noundef %.0.i192, ptr noundef nonnull %i.jr)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.loopexit

bb.bq:                                            ; preds = %_.exit190, %bb.bo, %bb.bn
  %indvars.iv.next295.pre-phi = phi i64 [ %.pre299, %_.exit190 ], [ %i.jn, %bb.bo ], [ %i.jn, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.js = load i32, ptr %i.az, align 4, !tbaa !85
  %i.jt = load i32, ptr %i.bk, align 8, !tbaa !84
  %i.ju = add i32 %i.jt, %i.js
  %i.jv = zext i32 %i.ju to i64
  %i.jw = icmp samesign ult i64 %indvars.iv.next295.pre-phi, %i.jv
  br i1 %i.jw, label %bb.ay, label %.loopexit, !llvm.loop !165

.loopexit:                                        ; preds = %bb.bq, %bb.ax, %bb.bp
  %i.jx = load i32, ptr @git_gettext_enabled, align 4, !tbaa !79
  %.not4.i.i197 = icmp eq i32 %i.jx, 0
  br i1 %.not4.i.i197, label %stop_progress.exit199, label %bb.br

bb.br:                                            ; preds = %.loopexit
  %i.jy = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef 5) #21
  br label %stop_progress.exit199

stop_progress.exit199:                            ; preds = %.loopexit, %bb.br
  %.0.i.i198 = phi ptr [ %i.jy, %bb.br ], [ @.str.72, %.loopexit ]
  call void @stop_progress_msg(ptr noundef nonnull %i.a, ptr noundef %.0.i.i198) #21
  br label %bb.bs

bb.bs:                                            ; preds = %stop_progress.exit199, %_.exit124
  %.0100 = phi ptr [ null, %_.exit124 ], [ %i.fc, %stop_progress.exit199 ]
  call void @free(ptr noundef %.0100) #21
  call void @close_midx(ptr noundef nonnull %i.e)
  %.b = load i1, ptr @verify_midx_error, align 4
  %i.jz = zext i1 %.b to i32
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.e
  %.0 = phi i32 [ %i.jz, %bb.bs ], [ %.097, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: cold nofree nounwind uwtable
define internal void @midx_report(ptr nofree noundef readonly captures(none) %0, ...) unnamed_addr #12 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store i1 true, ptr @verify_midx_error, align 4
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !166
  %i.b = call i32 @vfprintf(ptr noundef %i.a, ptr noundef %0, ptr noundef nonnull %1) #25 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !166
  %fputc = call i32 @fputc(i32 10, ptr %i.c)      ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

declare ptr @start_delayed_progress(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @display_progress(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @start_sparse_progress(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_pair_pos_vs_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !163
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !163
  %i.e = sub i32 %i.b, %i.d
  ret i32 %i.e
}

declare i32 @close_pack_fd(ptr noundef) local_unnamed_addr #1

declare void @close_pack_index(ptr noundef) local_unnamed_addr #1

declare i32 @open_pack_index(ptr noundef) local_unnamed_addr #1

declare i64 @find_pack_entry_one(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @git_open_cloexec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

declare i32 @error_errno(ptr noundef, ...) local_unnamed_addr #1

declare ptr @xmmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i8 @oid_version(ptr noundef) local_unnamed_addr #1

declare ptr @init_chunkfile(ptr noundef) local_unnamed_addr #1

declare i32 @read_table_of_contents(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1
end_hunk_2

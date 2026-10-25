Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Dchunk?download=true
inline.NumInlined: 65
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@H5D__chunk_flush_entry:bb.a
  %i.dl = load ptr, ptr %i.w, align 8, !tbaa !176
  %i.dm = load ptr, ptr %4, align 8, !tbaa !177
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !179
  %i.dp = zext i32 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %i.dl, i64 %i.dq, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 4000
  %i.ds = load <2 x i64>, ptr %i.z, align 8, !tbaa !25
  store <2 x i64> %i.ds, ptr %i.dr, align 8, !tbaa !25
  %i.dt = load i64, ptr %i.ag, align 8, !tbaa !182
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 4016
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !183
  %i.dv = load i32, ptr %i.ad, align 8, !tbaa !184
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 4024
  store i32 %i.dv, ptr %i.dw, align 8, !tbaa !185
  store i8 1, ptr %i.dj, align 8, !tbaa !67
  br label %bb.af

.thread102:                                       ; preds = %bb.v, %bb.y, %bb.ac, %.thread
  %.366.ph = phi i1 [ %.164.ph, %.thread ], [ %.26598, %bb.ac ], [ %.26598, %bb.y ], [ %.265.ph, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.pre112 = load ptr, ptr %i.o, align 8, !tbaa !196
  br label %bb.ao

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i8 0, ptr %i.q, align 1, !tbaa !205
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !23  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 3660 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !337
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.pre113.pre = load ptr, ptr %i.o, align 8, !tbaa !196
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.b
  %.pre113 = phi ptr [ %.pre113.pre, %bb.af ], [ %i.p, %bb.b ] ; 5 uses
  %i.eb = phi ptr [ %i.dx, %bb.af ], [ %i.g, %bb.b ]
  %i.ec = phi i8 [ %i.de, %bb.af ], [ %i.k, %bb.b ]
  %i.ed = phi i8 [ %i.dc, %bb.af ], [ %i.i, %bb.b ]
  br i1 %2, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !153
  %i.ef = icmp eq ptr %i.ee, %.pre113
  br i1 %i.ef, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store ptr null, ptr %i.a, align 8, !tbaa !153
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.not79 = icmp eq ptr %.pre113, null
  br i1 %.not79, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !197
  %i.ei = and i32 %i.eh, 1
  %.not80 = icmp eq i32 %i.ei, 0
  %i.ej = trunc nuw i8 %i.ed to i1
  %i.ek = trunc nuw i8 %i.ec to i1
  %i.el = xor i1 %i.ek, true
  %i.em = select i1 %i.ej, i1 true, i1 %i.el      ; 2 uses
  br i1 %.not80, label %bb.al, label %.thread106

bb.al:                                            ; preds = %bb.ak
  br i1 %i.em, label %bb.am, label %H5D__chunk_mem_xfree.exit, !prof !206

.thread106:                                       ; preds = %bb.ak
  br i1 %i.em, label %.thread107, label %H5D__chunk_mem_xfree.exit, !prof !206

bb.am:                                            ; preds = %bb.al
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 200
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !170
  %.not8.i = icmp eq i64 %i.eo, 0
  br i1 %.not8.i, label %.thread107, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ep = call ptr @H5MM_xfree(ptr noundef nonnull %.pre113) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit

.thread107:                                       ; preds = %.thread106, %bb.am
  %i.eq = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_chunk_blk_free_list, ptr noundef nonnull %.pre113) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit

H5D__chunk_mem_xfree.exit:                        ; preds = %.thread106, %bb.al, %bb.an, %.thread107
  store ptr null, ptr %i.o, align 8, !tbaa !196
  br label %bb.ao

bb.ao:                                            ; preds = %.thread102, %bb.ag, %H5D__chunk_mem_xfree.exit, %bb.aj
  %i.er = phi ptr [ null, %H5D__chunk_mem_xfree.exit ], [ null, %bb.aj ], [ %.pre113, %bb.ag ], [ %.pre112, %.thread102 ]
  %or.cond = phi i1 [ false, %H5D__chunk_mem_xfree.exit ], [ false, %bb.aj ], [ false, %bb.ag ], [ %.366.ph, %.thread102 ]
  %.4 = phi i32 [ 0, %H5D__chunk_mem_xfree.exit ], [ 0, %bb.aj ], [ 0, %bb.ag ], [ -1, %.thread102 ]
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !153 ; 2 uses
  %.not81 = icmp eq ptr %i.es, %i.er
  br i1 %.not81, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.et = call ptr @H5MM_xfree(ptr noundef %i.es) #15 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  br i1 %or.cond, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.eu = load ptr, ptr %i.o, align 8, !tbaa !196 ; 3 uses
  %.not82 = icmp eq ptr %i.eu, null
  br i1 %.not82, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !197
  %i.ex = and i32 %i.ew, 1
  %.not83 = icmp eq i32 %i.ex, 0
  %i.ey = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = xor i1 %i.fb, true
  %i.fd = select i1 %i.ez, i1 true, i1 %i.fc      ; 2 uses
  br i1 %.not83, label %bb.at, label %.thread109

bb.at:                                            ; preds = %bb.as
  br i1 %i.fd, label %bb.au, label %H5D__chunk_mem_xfree.exit87, !prof !206

.thread109:                                       ; preds = %bb.as
  br i1 %i.fd, label %.thread110, label %H5D__chunk_mem_xfree.exit87, !prof !206

bb.au:                                            ; preds = %bb.at
  %i.fe = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 200
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !170
  %.not8.i86 = icmp eq i64 %i.fg, 0
  br i1 %.not8.i86, label %.thread110, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fh = call ptr @H5MM_xfree(ptr noundef nonnull %i.eu) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit87

.thread110:                                       ; preds = %.thread109, %bb.au
  %i.fi = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_chunk_blk_free_list, ptr noundef nonnull %i.eu) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit87

H5D__chunk_mem_xfree.exit87:                      ; preds = %.thread109, %bb.at, %bb.av, %.thread110
  store ptr null, ptr %i.o, align 8, !tbaa !196
  br label %bb.aw

bb.aw:                                            ; preds = %bb.a, %bb.ar, %H5D__chunk_mem_xfree.exit87, %bb.aq
  %.5 = phi i32 [ -1, %H5D__chunk_mem_xfree.exit87 ], [ -1, %bb.ar ], [ %.4, %bb.aq ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5D__chunk_allocated_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #6 {
bb.a:
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load i64, ptr %i.g, align 8, !tbaa !210
  %i.i = load i64, ptr %1, align 8, !tbaa !25
  %i.j = add i64 %i.i, %i.h
  store i64 %i.j, ptr %1, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5D__chunk_allocate(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5D_chk_idx_info_t, align 8 ; 7 uses
  %i.a = alloca [33 x i64], align 16              ; 4 uses
  %i.b = alloca [33 x i64], align 16              ; 7 uses
  %i.c = alloca [33 x i64], align 16              ; 15 uses
  %i.d = alloca i64, align 8                      ; 15 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.H5O_pline_t, align 8        ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %struct.H5D_fill_buf_info_t, align 8 ; 11 uses
  %i.h = alloca [33 x i8], align 16               ; 10 uses
  %i.i = alloca [33 x i64], align 16              ; 9 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.H5Z_cb_t, align 8           ; 6 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %7 = alloca %struct.H5D_chunk_ud_t, align 16    ; 12 uses
  %i.l = alloca i8, align 1                       ; 9 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.H5Z_cb_t, align 8           ; 6 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2464
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i64 0, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i32 0, ptr %i.e, align 4, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 144 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr null, ptr %i.g, align 8, !tbaa !153
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, <2 x i64> <i64 264, i64 2448>
  %i.y = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = xor i1 %i.ab, true
  %i.ad = select i1 %i.z, i1 true, i1 %i.ac
  br i1 %i.ad, label %bb.b, label %H5D__chunk_mem_xfree.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 2840 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 2836
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !52 ; 6 uses
  %i.ah = zext i32 %i.ag to i64                   ; 7 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ah
  store i64 0, ptr %i.ai, align 8, !tbaa !25
  %.not391 = icmp eq i32 %i.ag, 0                 ; 2 uses
  br i1 %.not391, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ah
  br i1 %exitcond.not, label %.lr.ph338, label %.lr.ph, !llvm.loop !338

.lr.ph338:                                        ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 268
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  br label %bb.d

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.am = load i64, ptr %i.al, align 8, !tbaa !25
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %H5D__chunk_cinfo_cache_reset.exit, label %bb.c

H5D__chunk_cinfo_cache_reset.exit:                ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 3728
  store i8 0, ptr %i.ao, align 8, !tbaa !67
  br label %H5D__chunk_mem_xfree.exit

bb.d:                                             ; preds = %.lr.ph338, %bb.k
  %indvars.iv407 = phi i64 [ 0, %.lr.ph338 ], [ %indvars.iv.next408, %bb.k ] ; 10 uses
  %.0190337 = phi i8 [ 0, %.lr.ph338 ], [ %.1191, %bb.k ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv407
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !25 ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = trunc nuw i64 %indvars.iv407 to i32
  %i.at = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.au = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !25
  %i.av = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5293, i64 noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.24, i32 noundef %i.as) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv407
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.ay = add i64 %i.aq, -1
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = udiv i64 %i.az, %i.aq
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv407
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv407
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !25 ; 2 uses
  %i.be = add i64 %i.bd, -1
  %i.bf = udiv i64 %i.be, %i.aq                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv407
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !25
  %i.bh = load i8, ptr %i.aj, align 4, !tbaa !24
  %i.bi = and i8 %i.bh, 1
  %.not.a = icmp eq i8 %i.bi, 0
  br i1 %.not.a, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = load i64, ptr %i.ak, align 8, !tbaa !170
  %.not241 = icmp eq i64 %i.bj, 0
  br i1 %.not241, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = urem i64 %i.bd, %i.aq
  %.not242 = icmp eq i64 %i.bk, 0
  br i1 %.not242, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv407
  store i8 1, ptr %i.bl, align 1, !tbaa !11
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv407
  store i64 %i.bf, ptr %i.bm, align 8, !tbaa !25
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv407
  store i8 0, ptr %i.bn, align 1, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1191 = phi i8 [ 1, %bb.i ], [ %.0190337, %bb.j ] ; 2 uses
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %exitcond410.not = icmp eq i64 %indvars.iv.next408, %i.ah
  br i1 %exitcond410.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !339

._crit_edge.loopexit:                             ; preds = %bb.k
  %i.bo = trunc nuw i8 %.1191 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit
  %.0190.lcssa = phi i1 [ false, %bb.b ], [ %i.bo, %._crit_edge.loopexit ] ; 2 uses
  %i.bp = call i32 @H5P_is_fill_value_defined(ptr noundef nonnull %i.v, ptr noundef nonnull %i.f) #15
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.br = load i64, ptr @H5E_PLIST_g, align 8, !tbaa !25
  %i.bs = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !25
  %i.bt = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5312, i64 noundef %i.br, i64 noundef %i.bs, ptr noundef nonnull @.str.16) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit

bb.m:                                             ; preds = %._crit_edge
  br i1 %1, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 132
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !152
  switch i32 %i.bv, label %bb.p [
    i32 0, label %bb.q
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bw = load i32, ptr %i.f, align 4, !tbaa !54
  %i.bx = add i32 %i.bw, -1
  %or.cond = icmp ult i32 %i.bx, 2
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !170
  %.not235 = icmp eq i64 %i.bz, 0
  br i1 %.not235, label %bb.af, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 552
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !24 ; 2 uses
  store i64 %i.cb, ptr %i.d, align 8, !tbaa !25
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !23  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !135
  %i.cg = call i32 @H5D__fill_init(ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull @H5D__chunk_mem_alloc, ptr noundef nonnull %i.s, ptr noundef nonnull @H5D__chunk_mem_free, ptr noundef nonnull %i.s, ptr noundef nonnull %i.cd, ptr noundef %i.cf, i64 noundef 0, i64 noundef %i.cb) #15
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ci = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.cj = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !25
  %i.ck = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5340, i64 noundef %i.ci, i64 noundef %i.cj, ptr noundef nonnull @.str.26) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit

bb.s:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !213, !range !12, !noundef !13
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 200
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !170
  %.not236 = icmp eq i64 %i.cq, 0
  br i1 %.not236, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  %i.cr = load i64, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  store i64 %i.cr, ptr %i.k, align 8, !tbaa !25
  br i1 %.0190.lcssa, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cs = call noalias ptr @H5D__chunk_mem_alloc(i64 noundef %i.cr, ptr noundef nonnull %4) ; 4 uses
  store ptr %i.cs, ptr %i.g, align 8, !tbaa !153
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cu = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !25
  %i.cv = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !25
  %i.cw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5362, i64 noundef %i.cu, i64 noundef %i.cv, ptr noundef nonnull @.str.27) #15 ; 0 uses
  br label %H5D__chunk_cinfo_cache_reset.exit244.thread287

bb.x:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %i.cl, align 8, !tbaa !344
  %i.cy = load i64, ptr %i.d, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr align 1 %i.cx, i64 %i.cy, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.0..0..0.224430 = phi ptr [ %i.cs, %bb.x ], [ null, %bb.u ] ; 4 uses
  %i.cz = call i32 @H5CX_get_err_detect(ptr noundef nonnull %i.j) #15
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.db = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.dc = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !25
  %i.dd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5368, i64 noundef %i.db, i64 noundef %i.dc, ptr noundef nonnull @.str.28) #15 ; 0 uses
  br label %H5D__chunk_cinfo_cache_reset.exit244.thread287

bb.aa:                                            ; preds = %bb.y
  %i.de = call i32 @H5CX_get_filter_cb(ptr noundef nonnull %6) #15
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dg = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.dh = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !25
  %i.di = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5370, i64 noundef %i.dg, i64 noundef %i.dh, ptr noundef nonnull @.str.29) #15 ; 0 uses
  br label %H5D__chunk_cinfo_cache_reset.exit244.thread287

bb.ac:                                            ; preds = %bb.aa
  %i.dj = load i32, ptr %i.j, align 4, !tbaa !54
  %i.dk = load ptr, ptr %6, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call i32 @H5Z_pipeline(ptr noundef nonnull %i.s, i32 noundef 0, ptr noundef nonnull %i.e, i32 noundef %i.dj, ptr %i.dk, ptr %i.dm, ptr noundef nonnull %i.d, ptr noundef nonnull %i.k, ptr noundef nonnull %i.cl) #15
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dp = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !25
  %i.dq = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !25
  %i.dr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5375, i64 noundef %i.dp, i64 noundef %i.dq, ptr noundef nonnull @.str.30) #15 ; 0 uses
  br label %H5D__chunk_cinfo_cache_reset.exit244.thread287

H5D__chunk_cinfo_cache_reset.exit244.thread287:   ; preds = %bb.ad, %bb.ab, %bb.z, %bb.w
  %.0..0..0.224429 = phi ptr [ %.0..0..0.224430, %bb.ad ], [ %.0..0..0.224430, %bb.ab ], [ %.0..0..0.224430, %bb.z ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  br label %bb.ch

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  br label %bb.ag

bb.af:                                            ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 552
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.t, %bb.s, %bb.af
  %.0..0..0.224431 = phi ptr [ null, %bb.af ], [ %.0..0..0.224430, %bb.ae ], [ null, %bb.s ], [ null, %bb.t ] ; 2 uses
  %.0210.not247 = phi i1 [ true, %bb.af ], [ false, %bb.ae ], [ false, %bb.s ], [ false, %bb.t ] ; 4 uses
  %.0211.in = phi ptr [ %i.ds, %bb.af ], [ %i.d, %bb.ae ], [ %i.d, %bb.s ], [ %i.d, %bb.t ]
  %.0200 = phi ptr [ null, %bb.af ], [ %i.cl, %bb.ae ], [ %i.cl, %bb.s ], [ %i.cl, %bb.t ]
  %.0192 = phi i1 [ false, %bb.af ], [ true, %bb.ae ], [ true, %bb.s ], [ true, %bb.t ] ; 2 uses
  %.0211 = load i64, ptr %.0211.in, align 8, !tbaa !24
  %i.dt = load ptr, ptr %0, align 8, !tbaa !160
  store ptr %i.dt, ptr %3, align 8, !tbaa !71
  %i.du = load ptr, ptr %i.o, align 8, !tbaa !23  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 144
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !72
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 248
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !73
  br i1 %.not391, label %.loopexit293, label %.lr.ph389

.lr.ph389:                                        ; preds = %bb.ag
  %i.dz = shl nuw nsw i64 %i.ah, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.p, i64 552 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 200 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.0341 = add i32 %i.ag, -1
  %i.em = icmp slt i32 %i.ag, 1
  %i.en = zext i32 %.0341 to i64                  ; 6 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.en ; 4 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.en
  %xtraiter = and i64 %i.ah, 1
  %i.eq = icmp eq i32 %i.ag, 1
  %unroll_iter = and i64 %i.ah, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod583 = trunc i32 %i.ag to i1
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph389, %bb.cf
  %indvars.iv422 = phi i64 [ 0, %.lr.ph389 ], [ %indvars.iv.next423, %bb.cf ] ; 6 uses
  %.0179387 = phi i32 [ 0, %.lr.ph389 ], [ %.10189.ph, %bb.cf ] ; 2 uses
  %.1201385 = phi ptr [ %.0200, %.lr.ph389 ], [ %.9209.ph, %bb.cf ] ; 3 uses
  %.1212384 = phi i64 [ %.0211, %.lr.ph389 ], [ %.11222.ph, %bb.cf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv422
  %i.es = load i64, ptr %i.er, align 8, !tbaa !25 ; 6 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv422 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !25
  %i.ev = icmp ugt i64 %i.es, %i.eu
  br i1 %i.ev, label %bb.cf, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 0, i64 %i.dz, i1 false)
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv422
  store i64 %i.es, ptr %i.ew, align 8, !tbaa !25
  br i1 %.0190.lcssa, label %.preheader.preheader, label %bb.aq

.preheader.preheader:                             ; preds = %bb.ai
  br i1 %i.eq, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.al
  %indvars.iv411 = phi i64 [ %indvars.iv.next412.1, %bb.al ], [ 0, %.preheader.preheader ] ; 5 uses
  %.1180339 = phi i32 [ %.2181.1, %bb.al ], [ 0, %.preheader.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.al ], [ 0, %.preheader.preheader ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv411
  %i.ey = load i8, ptr %i.ex, align 2, !tbaa !11, !range !12, !noundef !13
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.aj, label %.preheader.1

bb.aj:                                            ; preds = %.preheader
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv411
  %i.fb = load i64, ptr %i.fa, align 16, !tbaa !25
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv411
  %i.fd = load i64, ptr %i.fc, align 16, !tbaa !25
  %i.fe = icmp eq i64 %i.fb, %i.fd
  %i.ff = zext i1 %i.fe to i32
  %spec.select = add i32 %.1180339, %i.ff
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.aj, %.preheader
  %.2181 = phi i32 [ %.1180339, %.preheader ], [ %spec.select, %bb.aj ] ; 2 uses
  %indvars.iv.next412 = or disjoint i64 %indvars.iv411, 1 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next412
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !11, !range !12, !noundef !13
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.preheader.1
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next412
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !25
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next412
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !25
  %i.fn = icmp eq i64 %i.fk, %i.fm
  %i.fo = zext i1 %i.fn to i32
  %spec.select.1 = add i32 %.2181, %i.fo
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.preheader.1
  %.2181.1 = phi i32 [ %.2181, %.preheader.1 ], [ %spec.select.1, %bb.ak ] ; 3 uses
  %indvars.iv.next412.1 = add nuw nsw i64 %indvars.iv411, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !340

.unr-lcssa:                                       ; preds = %bb.al
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %indvars.iv411.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next412.1, %.unr-lcssa ] ; 3 uses
  %.1180339.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %.2181.1, %.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod583)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv411.epil.init
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !11, !range !12, !noundef !13
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.am, label %.epilog-lcssa

bb.am:                                            ; preds = %.preheader.epil.preheader
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv411.epil.init
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !25
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv411.epil.init
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !25
  %i.fw = icmp eq i64 %i.ft, %i.fv
  %i.fx = zext i1 %i.fw to i32
  %spec.select.epil = add i32 %.1180339.epil.init, %i.fx
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.preheader.epil.preheader, %bb.am, %.unr-lcssa
  %.2181.lcssa = phi i32 [ %.2181.1, %.unr-lcssa ], [ %.1180339.epil.init, %.preheader.epil.preheader ], [ %spec.select.epil, %bb.am ] ; 3 uses
  %i.fy = load i8, ptr %i.ea, align 8, !range !12
  %i.fz = trunc nuw i8 %i.fy to i1
  %or.cond5 = select i1 %.0210.not247, i1 true, i1 %i.fz
  br i1 %or.cond5, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.epilog-lcssa
  %.not237 = icmp eq i32 %.2181.lcssa, 0
  br i1 %.not237, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ga = load i64, ptr %i.eb, align 8, !tbaa !24
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.gb = load i64, ptr %i.d, align 8, !tbaa !25
  br label %bb.aq

bb.aq:                                            ; preds = %.epilog-lcssa, %bb.ap, %bb.ao, %bb.ai
  %.2213 = phi i64 [ %.1212384, %.epilog-lcssa ], [ %i.ga, %bb.ao ], [ %i.gb, %bb.ap ], [ %.1212384, %bb.ai ]
  %.2202 = phi ptr [ %.1201385, %.epilog-lcssa ], [ %i.g, %bb.ao ], [ %i.ec, %bb.ap ], [ %.1201385, %bb.ai ]
  %.3182 = phi i32 [ %.2181.lcssa, %.epilog-lcssa ], [ %.2181.lcssa, %bb.ao ], [ 0, %bb.ap ], [ %.0179387, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  store i8 0, ptr %i.l, align 1, !tbaa !11
  %i.gc = call i32 @H5D__chunk_lookup(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %7)
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %._crit_edge540, label %.lr.ph539

._crit_edge540:                                   ; preds = %bb.aq, %.loopexit
  %i.ge = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.gf = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !25
  %i.gg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5456, i64 noundef %i.ge, i64 noundef %i.gf, ptr noundef nonnull @.str.3) #15 ; 0 uses
  br label %bb.ce

.lr.ph539:                                        ; preds = %bb.aq, %.loopexit
  %.3214381537 = phi i64 [ %.10221, %.loopexit ], [ %.2213, %bb.aq ]
  %.3203382536 = phi ptr [ %.8208, %.loopexit ], [ %.2202, %bb.aq ] ; 7 uses
  %.4183383535 = phi i32 [ %.9188, %.loopexit ], [ %.3182, %bb.aq ] ; 6 uses
  %i.gh = load i8, ptr %i.ea, align 8, !range !12
  %i.gi = trunc nuw i8 %i.gh to i1
  %or.cond8 = select i1 %.0192, i1 %i.gi, i1 false
  br i1 %or.cond8, label %bb.ar, label %bb.bi

bb.ar:                                            ; preds = %.lr.ph539
  %i.gj = load i64, ptr %i.ed, align 8, !tbaa !345
  %i.gk = load i64, ptr %i.d, align 8, !tbaa !25  ; 3 uses
  %i.gl = icmp ult i64 %i.gj, %i.gk
  br i1 %i.gl, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.gm = load ptr, ptr %i.ec, align 8, !tbaa !344 ; 2 uses
  %i.gn = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.go = trunc nuw i8 %i.gn to i1
  %i.gp = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = xor i1 %i.gq, true
  %i.gs = select i1 %i.go, i1 true, i1 %i.gr
  br i1 %i.gs, label %bb.at, label %H5D__chunk_mem_realloc.exit.thread, !prof !14

H5D__chunk_mem_realloc.exit.thread:               ; preds = %bb.as
  store ptr null, ptr %i.ec, align 8, !tbaa !344
  br label %.loopexit292

bb.at:                                            ; preds = %bb.as
  %i.gt = load i64, ptr %i.ee, align 8, !tbaa !170
  %.not.i = icmp eq i64 %i.gt, 0
  br i1 %.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gu = call ptr @H5MM_realloc(ptr noundef %i.gm, i64 noundef %i.gk) #15
  br label %H5D__chunk_mem_realloc.exit

bb.av:                                            ; preds = %bb.at
  %i.gv = call ptr @H5FL_blk_realloc(ptr noundef nonnull @H5_chunk_blk_free_list, ptr noundef %i.gm, i64 noundef %i.gk) #15
  br label %H5D__chunk_mem_realloc.exit

H5D__chunk_mem_realloc.exit:                      ; preds = %bb.au, %bb.av
  %.0.i = phi ptr [ %i.gu, %bb.au ], [ %i.gv, %bb.av ] ; 2 uses
  store ptr %.0.i, ptr %i.ec, align 8, !tbaa !344
  %i.gw = icmp eq ptr %.0.i, null
  br i1 %i.gw, label %.loopexit292, label %bb.aw

.loopexit292:                                     ; preds = %H5D__chunk_mem_realloc.exit, %H5D__chunk_mem_realloc.exit.thread
  %i.gx = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !25
  %i.gy = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !25
  %i.gz = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5495, i64 noundef %i.gx, i64 noundef %i.gy, ptr noundef nonnull @.str.31) #15 ; 0 uses
  br label %bb.ce

bb.aw:                                            ; preds = %H5D__chunk_mem_realloc.exit
  %i.ha = load i64, ptr %i.d, align 8, !tbaa !25
  store i64 %i.ha, ptr %i.ed, align 8, !tbaa !345
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ar
  %i.hb = load i64, ptr %i.ef, align 8, !tbaa !214
  %i.hc = call i32 @H5D__fill_refill_vl(ptr noundef nonnull %5, i64 noundef %i.hb) #15
  %i.hd = icmp slt i32 %i.hc, 0
  br i1 %i.hd, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.he = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.hf = load i64, ptr @H5E_CANTCONVERT_g, align 8, !tbaa !25
  %i.hg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5501, i64 noundef %i.he, i64 noundef %i.hf, ptr noundef nonnull @.str.32) #15 ; 0 uses
  br label %bb.ce

bb.az:                                            ; preds = %bb.ax
  %i.hh = load i64, ptr %i.ee, align 8, !tbaa !170
  %i.hi = icmp eq i64 %i.hh, 0
  %i.hj = icmp ne i32 %.4183383535, 0
  %or.cond10 = select i1 %i.hi, i1 true, i1 %i.hj
  br i1 %or.cond10, label %bb.bh, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  %i.hk = load i64, ptr %i.d, align 8, !tbaa !25
  store i64 %i.hk, ptr %i.n, align 8, !tbaa !25
  %i.hl = call i32 @H5CX_get_err_detect(ptr noundef nonnull %i.m) #15
  %i.hm = icmp slt i32 %i.hl, 0
  br i1 %i.hm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hn = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.ho = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !25
  %i.hp = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5511, i64 noundef %i.hn, i64 noundef %i.ho, ptr noundef nonnull @.str.28) #15 ; 0 uses
  br label %.thread254

bb.bc:                                            ; preds = %bb.ba
  %i.hq = call i32 @H5CX_get_filter_cb(ptr noundef nonnull %8) #15
  %i.hr = icmp slt i32 %i.hq, 0
  br i1 %i.hr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hs = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.ht = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !25
  %i.hu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5513, i64 noundef %i.hs, i64 noundef %i.ht, ptr noundef nonnull @.str.29) #15 ; 0 uses
  br label %.thread254

bb.be:                                            ; preds = %bb.bc
  %i.hv = load i32, ptr %i.m, align 4, !tbaa !54
  %i.hw = load ptr, ptr %8, align 8
  %i.hx = load ptr, ptr %i.eg, align 8
  %i.hy = call i32 @H5Z_pipeline(ptr noundef nonnull %i.s, i32 noundef 0, ptr noundef nonnull %i.e, i32 noundef %i.hv, ptr %i.hw, ptr %i.hx, ptr noundef nonnull %i.n, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.ec) #15
  %i.hz = icmp slt i32 %i.hy, 0
  br i1 %i.hz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ia = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !25
  %i.ib = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !25
  %i.ic = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5518, i64 noundef %i.ia, i64 noundef %i.ib, ptr noundef nonnull @.str.30) #15 ; 0 uses
  br label %.thread254

.thread254:                                       ; preds = %bb.bb, %bb.bd, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  br label %bb.ce

bb.bg:                                            ; preds = %bb.be
  %i.id = load i64, ptr %i.n, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  br label %bb.bi

bb.bh:                                            ; preds = %bb.az
  %i.ie = load i64, ptr %i.eb, align 8, !tbaa !24
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %.lr.ph539
  %.5216 = phi i64 [ %i.ie, %bb.bh ], [ %i.id, %bb.bg ], [ %.3214381537, %.lr.ph539 ] ; 8 uses
  store <2 x ptr> %i.x, ptr %7, align 16, !tbaa !153
  store ptr %i.c, ptr %i.eh, align 16, !tbaa !176
  store i64 -1, ptr %i.ei, align 16, !tbaa !147
  store i64 %.5216, ptr %i.ej, align 8, !tbaa !175
  %i.if = load i32, ptr %i.e, align 4, !tbaa !54
  store i32 %i.if, ptr %i.ek, align 16, !tbaa !184
  %i.ig = call i32 @H5D__chunk_file_alloc(ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.l, ptr noundef nonnull %i.c)
  %i.ih = icmp slt i32 %i.ig, 0
  br i1 %i.ih, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ii = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.ij = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !25
  %i.ik = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5540, i64 noundef %i.ii, i64 noundef %i.ij, ptr noundef nonnull @.str.33) #15 ; 0 uses
  br label %bb.ce

bb.bk:                                            ; preds = %bb.bi
  br i1 %.0210.not247, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.il = load ptr, ptr %0, align 8, !tbaa !160
  %i.im = call ptr @H5F_get_shared(ptr noundef %i.il) #15
  %i.in = load i64, ptr %i.ei, align 16, !tbaa !147
  %i.io = load ptr, ptr %.3203382536, align 8, !tbaa !153
  %i.ip = call i32 @H5F_shared_block_write(ptr noundef %i.im, i32 noundef 3, i64 noundef %i.in, i64 noundef %.5216, ptr noundef %i.io) #15
  %i.iq = icmp slt i32 %i.ip, 0
  br i1 %i.iq, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ir = load i64, ptr @H5E_IO_g, align 8, !tbaa !25
  %i.is = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !25
  %i.it = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5585, i64 noundef %i.ir, i64 noundef %i.is, ptr noundef nonnull @.str.8) #15 ; 0 uses
  br label %bb.ce

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.iu = load i8, ptr %i.l, align 1, !tbaa !11, !range !12, !noundef !13
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.iw = load ptr, ptr %i.el, align 8, !tbaa !186 ; 2 uses
  %.not238 = icmp eq ptr %i.iw, null
  br i1 %.not238, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ix = call i32 %i.iw(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %0) #15
  %i.iy = icmp slt i32 %i.ix, 0
  br i1 %i.iy, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.iz = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.ja = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !25
  %i.jb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5592, i64 noundef %i.iz, i64 noundef %i.ja, ptr noundef nonnull @.str.9) #15 ; 0 uses
  br label %bb.ce

bb.br:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  br i1 %i.em, label %.loopexit456, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.br
  %i.jc = load i8, ptr %i.ea, align 8, !range !12
  %.fr394 = freeze i8 %i.jc                       ; 2 uses
  %i.jd = trunc i8 %.fr394 to i1
  %i.je = load i64, ptr %i.d, align 8
  %i.jf = or i1 %.0210.not247, %i.jd
  %i.jg = load i64, ptr %i.eo, align 8, !tbaa !25
  %i.jh = add i64 %i.jg, 1                        ; 4 uses
  store i64 %i.jh, ptr %i.eo, align 8, !tbaa !25
  %i.ji = load i64, ptr %i.ep, align 8, !tbaa !25 ; 3 uses
  %i.jj = icmp ugt i64 %i.jh, %i.ji               ; 2 uses
  br i1 %i.jf, label %.lr.ph347.split.us, label %.lr.ph347.split

.lr.ph347.split.us:                               ; preds = %.lr.ph347
  br i1 %i.jj, label %.lr.ph374, label %.split.us

bb.bs:                                            ; preds = %bb.bu
  %indvars.iv.next420 = add nsw i64 %indvars.iv419, -1 ; 4 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next420 ; 3 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !25
  %i.jm = add i64 %i.jl, 1                        ; 3 uses
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !25
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next420
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !25 ; 2 uses
  %i.jp = icmp ugt i64 %i.jm, %i.jo
  br i1 %i.jp, label %.lr.ph374, label %.split.us, !llvm.loop !341

.lr.ph374:                                        ; preds = %.lr.ph347.split.us, %bb.bs
  %indvars.iv419 = phi i64 [ %indvars.iv.next420, %bb.bs ], [ %i.en, %.lr.ph347.split.us ] ; 5 uses
  %i.jq = phi i64 [ %i.jo, %bb.bs ], [ %i.ji, %.lr.ph347.split.us ]
  %i.jr = phi ptr [ %i.jk, %bb.bs ], [ %i.eo, %.lr.ph347.split.us ]
  %.5184344.us373 = phi i32 [ %.7186.us, %bb.bs ], [ %.4183383535, %.lr.ph347.split.us ] ; 2 uses
  %i.js = icmp eq i64 %indvars.iv419, %indvars.iv422
  %spec.select495 = select i1 %i.js, i64 %i.es, i64 0 ; 2 uses
  store i64 %spec.select495, ptr %i.jr, align 8, !tbaa !25
  %i.jt = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv419
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !11, !range !12, !noundef !13
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph374
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv419
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !25 ; 2 uses
  %i.jy = icmp eq i64 %i.jx, %i.jq
  %i.jz = icmp ult i64 %spec.select495, %i.jx
  %or.cond291.us = and i1 %i.jy, %i.jz
  %i.ka = sext i1 %or.cond291.us to i32
  %spec.select390 = add i32 %.5184344.us373, %i.ka
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph374
  %.7186.us = phi i32 [ %.5184344.us373, %.lr.ph374 ], [ %spec.select390, %bb.bt ] ; 3 uses
  %i.kb = icmp slt i64 %indvars.iv419, 1
  br i1 %i.kb, label %.loopexit456, label %bb.bs, !llvm.loop !341

.lr.ph347.split:                                  ; preds = %.lr.ph347
  br i1 %i.jj, label %.lr.ph365, label %.split.us

bb.bv:                                            ; preds = %bb.cc
  %indvars.iv.next417 = add nsw i64 %indvars.iv416, -1 ; 4 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next417 ; 3 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !25
  %i.ke = add i64 %i.kd, 1                        ; 3 uses
  store i64 %i.ke, ptr %i.kc, align 8, !tbaa !25
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next417
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !25 ; 2 uses
  %i.kh = icmp ugt i64 %i.ke, %i.kg
  br i1 %i.kh, label %.lr.ph365, label %.split.us, !llvm.loop !341

.lr.ph365:                                        ; preds = %.lr.ph347.split, %bb.bv
  %indvars.iv416 = phi i64 [ %indvars.iv.next417, %bb.bv ], [ %i.en, %.lr.ph347.split ] ; 5 uses
  %i.ki = phi i64 [ %i.kg, %bb.bv ], [ %i.ji, %.lr.ph347.split ]
  %i.kj = phi ptr [ %i.kc, %bb.bv ], [ %i.eo, %.lr.ph347.split ]
  %.6217342364 = phi i64 [ %.8219, %bb.bv ], [ %.5216, %.lr.ph347.split ] ; 3 uses
  %.4204343363 = phi ptr [ %.6206, %bb.bv ], [ %.3203382536, %.lr.ph347.split ] ; 3 uses
  %.5184344362 = phi i32 [ %.7186, %bb.bv ], [ %.4183383535, %.lr.ph347.split ] ; 3 uses
  %i.kk = icmp eq i64 %indvars.iv416, %indvars.iv422
  %spec.select496 = select i1 %i.kk, i64 %i.es, i64 0 ; 2 uses
  store i64 %spec.select496, ptr %i.kj, align 8, !tbaa !25
  %i.kl = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv416
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !11, !range !12, !noundef !13
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %.lr.ph365
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv416
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !25 ; 2 uses
  %i.kq = icmp eq i64 %i.kp, %i.ki
  %i.kr = icmp ult i64 %spec.select496, %i.kp
  %or.cond291 = and i1 %i.kq, %i.kr
  br i1 %or.cond291, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  %i.ks = add i32 %.5184344362, -1                ; 2 uses
  %.not395 = icmp eq i32 %i.ks, 0
  br i1 %.not395, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %bb.bx
  br label %bb.cc

.split.us:                                        ; preds = %bb.bv, %bb.bs, %.lr.ph347.split, %.lr.ph347.split.us
  %.us-phi = phi i64 [ %indvars.iv.next420, %bb.bs ], [ %i.en, %.lr.ph347.split.us ], [ %i.en, %.lr.ph347.split ], [ %indvars.iv.next417, %bb.bv ] ; 2 uses
  %.us-phi352 = phi i64 [ %i.jm, %bb.bs ], [ %i.jh, %.lr.ph347.split.us ], [ %i.jh, %.lr.ph347.split ], [ %i.ke, %bb.bv ]
  %.us-phi353 = phi i64 [ %.5216, %bb.bs ], [ %.5216, %.lr.ph347.split.us ], [ %.5216, %.lr.ph347.split ], [ %.8219, %bb.bv ] ; 3 uses
  %.us-phi354 = phi ptr [ %.3203382536, %bb.bs ], [ %.3203382536, %.lr.ph347.split.us ], [ %.3203382536, %.lr.ph347.split ], [ %.6206, %bb.bv ] ; 3 uses
  %.us-phi355 = phi i32 [ %.7186.us, %bb.bs ], [ %.4183383535, %.lr.ph347.split.us ], [ %.4183383535, %.lr.ph347.split ], [ %.7186, %bb.bv ] ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.h, i64 %.us-phi
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !11, !range !12, !noundef !13
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.bz, label %.loopexit

bb.bz:                                            ; preds = %.split.us
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.us-phi
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !25
  %i.ky = icmp eq i64 %.us-phi352, %i.kx
  br i1 %i.ky, label %bb.ca, label %.loopexit

bb.ca:                                            ; preds = %bb.bz
  %i.kz = add i32 %.us-phi355, 1
  %i.la = icmp ne i32 %.us-phi355, 0
  %or.cond17 = select i1 %.0210.not247, i1 true, i1 %i.la
  %i.lb = trunc nuw i8 %.fr394 to i1
  %or.cond20 = select i1 %or.cond17, i1 true, i1 %i.lb
  br i1 %or.cond20, label %.loopexit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lc = load i64, ptr %i.eb, align 8, !tbaa !24
  br label %.loopexit

bb.cc:                                            ; preds = %bb.bx, %bb.by, %bb.bw, %.lr.ph365
  %.8219 = phi i64 [ %.6217342364, %bb.bx ], [ %i.je, %bb.by ], [ %.6217342364, %.lr.ph365 ], [ %.6217342364, %bb.bw ] ; 3 uses
  %.6206 = phi ptr [ %.4204343363, %bb.bx ], [ %i.ec, %bb.by ], [ %.4204343363, %.lr.ph365 ], [ %.4204343363, %bb.bw ] ; 3 uses
  %.7186 = phi i32 [ %i.ks, %bb.bx ], [ 0, %bb.by ], [ %.5184344362, %.lr.ph365 ], [ %.5184344362, %bb.bw ] ; 3 uses
  %i.ld = icmp slt i64 %indvars.iv416, 1
  br i1 %i.ld, label %.loopexit456, label %bb.bv, !llvm.loop !341

.loopexit:                                        ; preds = %bb.ca, %bb.cb, %bb.bz, %.split.us
  %.10221 = phi i64 [ %.us-phi353, %bb.bz ], [ %.us-phi353, %.split.us ], [ %i.lc, %bb.cb ], [ %.us-phi353, %bb.ca ]
  %.8208 = phi ptr [ %.us-phi354, %bb.bz ], [ %.us-phi354, %.split.us ], [ %i.g, %bb.cb ], [ %.us-phi354, %bb.ca ]
  %.9188 = phi i32 [ %.us-phi355, %bb.bz ], [ %.us-phi355, %.split.us ], [ 1, %bb.cb ], [ %i.kz, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  store i8 0, ptr %i.l, align 1, !tbaa !11
  %i.le = call i32 @H5D__chunk_lookup(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %7)
  %i.lf = icmp slt i32 %i.le, 0
  br i1 %i.lf, label %._crit_edge540, label %.lr.ph539, !llvm.loop !342

.loopexit456:                                     ; preds = %bb.br, %bb.cc, %bb.bu
  %.10221.ph = phi i64 [ %.8219, %bb.cc ], [ %.5216, %bb.bu ], [ %.5216, %bb.br ]
  %.8208.ph = phi ptr [ %.6206, %bb.cc ], [ %.3203382536, %bb.bu ], [ %.3203382536, %bb.br ]
  %.9188.ph = phi i32 [ %.7186, %bb.cc ], [ %.7186.us, %bb.bu ], [ %.4183383535, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  %i.lg = icmp eq i64 %i.es, 0
  br i1 %i.lg, label %.thread279, label %bb.cd

.thread279:                                       ; preds = %.loopexit456
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %.loopexit293

bb.cd:                                            ; preds = %.loopexit456
  %i.lh = add i64 %i.es, -1
  store i64 %i.lh, ptr %i.et, align 8, !tbaa !25
  br label %bb.cf

bb.ce:                                            ; preds = %._crit_edge540, %.loopexit292, %bb.ay, %bb.bj, %bb.bm, %bb.bq, %.thread254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %H5D__chunk_cinfo_cache_reset.exit244

bb.cf:                                            ; preds = %bb.cd, %bb.ah
  %.11222.ph = phi i64 [ %.1212384, %bb.ah ], [ %.10221.ph, %bb.cd ]
  %.9209.ph = phi ptr [ %.1201385, %bb.ah ], [ %.8208.ph, %bb.cd ]
  %.10189.ph = phi i32 [ %.0179387, %bb.ah ], [ %.9188.ph, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %exitcond426.not = icmp eq i64 %indvars.iv.next423, %i.ah
  br i1 %exitcond426.not, label %.loopexit293, label %bb.ah, !llvm.loop !343

.loopexit293:                                     ; preds = %bb.cf, %bb.ag, %.thread279
  %i.li = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.lj = trunc nuw i8 %i.li to i1
  %i.lk = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.ll = trunc nuw i8 %i.lk to i1
  %i.lm = xor i1 %i.ll, true
  %i.ln = select i1 %i.lj, i1 true, i1 %i.lm
  br i1 %i.ln, label %bb.cg, label %H5D__chunk_cinfo_cache_reset.exit244, !prof !14

bb.cg:                                            ; preds = %.loopexit293
  %i.lo = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 3728
  store i8 0, ptr %i.lp, align 8, !tbaa !67
  br label %H5D__chunk_cinfo_cache_reset.exit244

H5D__chunk_cinfo_cache_reset.exit244:             ; preds = %bb.cg, %.loopexit293, %bb.ce
  %.10 = phi i32 [ 0, %bb.cg ], [ -1, %bb.ce ], [ 0, %.loopexit293 ] ; 2 uses
  br i1 %.0192, label %bb.ch, label %H5D__chunk_cinfo_cache_reset.exit244.thread

bb.ch:                                            ; preds = %H5D__chunk_cinfo_cache_reset.exit244.thread287, %H5D__chunk_cinfo_cache_reset.exit244
  %.0..0..0.224428 = phi ptr [ %.0..0..0.224429, %H5D__chunk_cinfo_cache_reset.exit244.thread287 ], [ %.0..0..0.224431, %H5D__chunk_cinfo_cache_reset.exit244 ] ; 2 uses
  %.10290 = phi i32 [ -1, %H5D__chunk_cinfo_cache_reset.exit244.thread287 ], [ %.10, %H5D__chunk_cinfo_cache_reset.exit244 ]
  %i.lq = call i32 @H5D__fill_term(ptr noundef nonnull %5) #15
  %i.lr = icmp slt i32 %i.lq, 0
  br i1 %i.lr, label %bb.ci, label %H5D__chunk_cinfo_cache_reset.exit244.thread

bb.ci:                                            ; preds = %bb.ch
  %i.ls = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.lt = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !25
  %i.lu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_allocate, i32 noundef 5658, i64 noundef %i.ls, i64 noundef %i.lt, ptr noundef nonnull @.str.34) #15 ; 0 uses
  br label %H5D__chunk_cinfo_cache_reset.exit244.thread

H5D__chunk_cinfo_cache_reset.exit244.thread:      ; preds = %bb.ci, %bb.ch, %H5D__chunk_cinfo_cache_reset.exit244
  %.0..0..0.224 = phi ptr [ %.0..0..0.224428, %bb.ci ], [ %.0..0..0.224428, %bb.ch ], [ %.0..0..0.224431, %H5D__chunk_cinfo_cache_reset.exit244 ] ; 2 uses
  %.11 = phi i32 [ -1, %bb.ci ], [ %.10290, %bb.ch ], [ %.10, %H5D__chunk_cinfo_cache_reset.exit244 ] ; 2 uses
  %i.lv = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.lw = trunc nuw i8 %i.lv to i1
  %i.lx = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.ly = trunc nuw i8 %i.lx to i1
  %i.lz = xor i1 %i.ly, true
  %i.ma = select i1 %i.lw, i1 true, i1 %i.lz
  %i.mb = icmp ne ptr %.0..0..0.224, null
  %or.cond.i = and i1 %i.mb, %i.ma
  br i1 %or.cond.i, label %bb.cj, label %H5D__chunk_mem_xfree.exit, !prof !346

bb.cj:                                            ; preds = %H5D__chunk_cinfo_cache_reset.exit244.thread
  %i.mc = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_chunk_blk_free_list, ptr noundef nonnull %.0..0..0.224) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit

H5D__chunk_mem_xfree.exit:                        ; preds = %bb.cj, %H5D__chunk_cinfo_cache_reset.exit244.thread, %bb.r, %bb.l, %bb.e, %H5D__chunk_cinfo_cache_reset.exit, %bb.a
  %.12 = phi i32 [ 0, %bb.a ], [ %.11, %bb.cj ], [ %.11, %H5D__chunk_cinfo_cache_reset.exit244.thread ], [ 0, %H5D__chunk_cinfo_cache_reset.exit ], [ -1, %bb.e ], [ -1, %bb.l ], [ -1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @H5D__fill_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @H5CX_get_err_detect(ptr noundef) local_unnamed_addr #3

declare i32 @H5CX_get_filter_cb(ptr noundef) local_unnamed_addr #3

declare i32 @H5Z_pipeline(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr, ptr, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5D__fill_refill_vl(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @H5D__fill_term(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5D__chunk_update_old_edge_chunks(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [33 x i64], align 16              ; 5 uses
  %i.b = alloca [33 x i64], align 16              ; 6 uses
  %i.c = alloca [33 x i8], align 16               ; 5 uses
  %i.d = alloca [33 x i64], align 16              ; 12 uses
  %2 = alloca %struct.H5D_chunk_ud_t, align 8     ; 11 uses
  %3 = alloca %union.H5D_storage_t, align 8       ; 4 uses
  %4 = alloca %struct.H5D_dset_io_info_t, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 280 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.h = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = xor i1 %i.k, true
  %i.m = select i1 %i.i, i1 true, i1 %i.l
  br i1 %i.m, label %bb.b, label %H5D__chunk_cinfo_cache_reset.exit108, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2840 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 2836
  %i.p = load i32, ptr %i.o, align 4, !tbaa !52
  %.fr142 = freeze i32 %i.p                       ; 3 uses
  %i.q = zext i32 %.fr142 to i64                  ; 7 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.q
  store i64 0, ptr %i.r, align 8, !tbaa !25
  %.not139 = icmp eq i32 %.fr142, 0
  br i1 %.not139, label %._crit_edge137, label %.lr.ph

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !347

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %H5D__chunk_cinfo_cache_reset.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.y = load i64, ptr %i.x, align 8, !tbaa !25
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %H5D__chunk_cinfo_cache_reset.exit, label %bb.c

H5D__chunk_cinfo_cache_reset.exit:                ; preds = %bb.d, %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 3728
  store i8 0, ptr %i.aa, align 8, !tbaa !67
  br label %H5D__chunk_cinfo_cache_reset.exit108

._crit_edge:                                      ; preds = %bb.c
  store ptr %i.d, ptr %3, align 8, !tbaa !24
  store ptr %0, ptr %4, align 8, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.ab, align 8, !tbaa !161
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr null, ptr %i.ac, align 8, !tbaa !24
  br label %.lr.ph118

.lr.ph136:                                        ; preds = %bb.o
  %i.ad = shl nuw nsw i64 %i.q, 3                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ag = icmp slt i32 %.fr142, 1
  br i1 %i.ag, label %.lr.ph136.split.us, label %.lr.ph136.split

.lr.ph136.split.us:                               ; preds = %.lr.ph136, %bb.i
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %bb.i ], [ 0, %.lr.ph136 ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv162
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !11, !range !12, !noundef !13
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.split.us.us, label %bb.i

.split.us.us:                                     ; preds = %.lr.ph136.split.us
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 0, i64 %i.ad, i1 false)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv162
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !25 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv162
  store i64 %i.al, ptr %i.am, align 8, !tbaa !25
  %i.an = call i32 @H5D__chunk_lookup(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %2)
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.split127.us, label %bb.e

bb.e:                                             ; preds = %.split.us.us
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !147
  %i.aq = icmp ne i64 %i.ap, -1
  %i.ar = load i32, ptr %i.af, align 8
  %i.as = icmp ne i32 %i.ar, -1
  %or.cond.us.us = select i1 %i.aq, i1 true, i1 %i.as
  br i1 %or.cond.us.us, label %bb.f, label %.split133.us.us

bb.f:                                             ; preds = %bb.e
  %i.at = call fastcc ptr @H5D__chunk_lock(ptr noundef nonnull %4, ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext true) ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.split129.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = call fastcc i32 @H5D__chunk_unlock(ptr noundef nonnull %4, ptr noundef %2, i1 noundef zeroext true, ptr noundef %i.at, i64 noundef 0)
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %.split131.us, label %.split133.us.us

.split133.us.us:                                  ; preds = %bb.e, %bb.g
  %i.ax = icmp eq i64 %i.al, 0
  br i1 %i.ax, label %._crit_edge137, label %bb.h

bb.h:                                             ; preds = %.split133.us.us
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv162 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !25
  %i.ba = add i64 %i.az, -1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph136.split.us
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %i.q
  br i1 %exitcond166.not, label %._crit_edge137, label %.lr.ph136.split.us, !llvm.loop !348

.lr.ph118:                                        ; preds = %._crit_edge, %bb.o
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %bb.o ], [ 0, %._crit_edge ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv149 ; 2 uses
  store i8 0, ptr %i.bb, align 1, !tbaa !11
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv149
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !25 ; 5 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph118
  %i.bf = trunc nuw i64 %indvars.iv149 to i32
  %i.bg = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.bh = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !25
  %i.bi = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_update_old_edge_chunks, i32 noundef 5753, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.24, i32 noundef %i.bf) #15 ; 0 uses
  br label %H5D__chunk_cinfo_cache_reset.exit108

bb.k:                                             ; preds = %.lr.ph118
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv149
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !25 ; 3 uses
  %i.bl = udiv i64 %i.bk, %i.bd                   ; 2 uses
end_hunk_0

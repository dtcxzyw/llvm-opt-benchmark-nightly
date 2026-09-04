Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/record?download=true
inline.NumInlined: 118
inline.NumDeleted: 12
begin_hunk_0_@reftable_index_record_decode:bb.a
  %.019.i = getelementptr inbounds nuw i8, ptr %.01931.i, i64 1 ; 2 uses
  %.not22.i = icmp sgt i8 %i.l, -1
  br i1 %.not22.i, label %get_var_int.exit, label %bb.d, !llvm.loop !0

get_var_int.exit:                                 ; preds = %bb.e, %bb.c
  %.0.lcssa.i = phi i64 [ %i.j, %bb.c ], [ %i.q, %bb.e ]
  %.019.lcssa.i = phi ptr [ %.01928.i, %bb.c ], [ %.019.i, %bb.e ]
  store i64 %.0.lcssa.i, ptr %0, align 8, !tbaa !22
  %i.r = ptrtoint ptr %.019.lcssa.i to i64
  %i.s = ptrtoint ptr %3 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  br label %get_var_int.exit.thread

get_var_int.exit.thread:                          ; preds = %bb.d, %get_var_int.exit, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ %i.f, %bb.a ], [ %i.u, %get_var_int.exit ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @reftable_index_record_release(ptr noundef %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @reftable_buf_release(ptr noundef nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @not_a_deletion(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @reftable_index_record_equal(ptr noundef %0, ptr noundef %1, i32 %2) #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !42
  %i.b = load i64, ptr %1, align 8, !tbaa !42
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call i32 @reftable_buf_cmp(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17
  %.not = icmp eq i32 %i.f, 0
  %i.g = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ]
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal i32 @reftable_index_record_cmp(ptr noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call i32 @reftable_buf_cmp(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  ret i32 %i.c
}

declare void @reftable_buf_release(ptr noundef) local_unnamed_addr #6

declare i32 @reftable_buf_cmp(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal i32 @reftable_obj_record_key(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #5 {
bb.a:
  tail call void @reftable_buf_reset(ptr noundef %1) #17
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !46
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i32 @reftable_buf_add(ptr noundef %1, ptr noundef %i.a, i64 noundef %i.d) #17
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal range(i32 -13, 1) i32 @reftable_obj_record_copy_from(ptr nofree noundef captures(none) initializes((8, 16), (24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  tail call void @reftable_free(ptr noundef %i.a) #17
  store ptr null, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  tail call void @reftable_free(ptr noundef %i.c) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !46
  %i.f = sext i32 %i.e to i64
  %i.g = tail call ptr @reftable_malloc(i64 noundef %i.f) #17 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !45
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.d, align 8, !tbaa !46   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !46
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !45
  %i.k = sext i32 %i.h to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %i.j, i64 %i.k, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !48   ; 3 uses
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %mul.ov = icmp slt i32 %i.m, 0
  br i1 %mul.ov, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call ptr @reftable_malloc(i64 noundef %i.o) #17 ; 3 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !47
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = load i32, ptr %i.l, align 8, !tbaa !48
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.r, i64 %i.u, i1 false)
  %i.v = load i32, ptr %i.l, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.v, ptr %i.w, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.e, %bb.a
  %.0 = phi i32 [ -13, %bb.a ], [ -13, %bb.f ], [ -13, %bb.e ], [ 0, %bb.g ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext range(i8 0, 8) i8 @reftable_obj_record_val_type(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = add i32 %i.b, -1
  %or.cond = icmp ult i32 %i.c, 7
  %i.d = trunc nuw nsw i32 %i.b to i8
  %.0 = select i1 %or.cond, i8 %i.d, i8 0
  ret i8 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @reftable_obj_record_encode(ptr nofree noundef readonly captures(none) %0, ptr nofree writeonly captures(none) %1, i64 %2, i32 %3) #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 6 uses
  %i.c = alloca [10 x i8], align 1                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !48   ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp sgt i32 %i.e, 7
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %.thread97

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.h = trunc i32 %i.e to i8
  %i.i = and i8 %i.h, 127
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 %i.i, ptr %i.j, align 1, !tbaa !20
  %i.k = lshr i32 %i.e, 7                         ; 2 uses
  %.not15.i = icmp eq i32 %i.k, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.l = zext nneg i32 %i.k to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.m = phi i64 [ %i.t, %.lr.ph.i ], [ %i.l, %.lr.ph.i.preheader ]
  %.016.i = phi i32 [ %i.q, %.lr.ph.i ], [ 9, %.lr.ph.i.preheader ]
  %i.n = add nsw i64 %i.m, -1                     ; 2 uses
  %i.o = trunc i64 %i.n to i8
  %i.p = or i8 %i.o, -128
  %i.q = add i32 %.016.i, -1                      ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r
  store i8 %i.p, ptr %i.s, align 1, !tbaa !20
  %i.t = lshr i64 %i.n, 7                         ; 2 uses
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 9, %bb.b ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %i.u = sub nsw i64 10, %.0.lcssa.i              ; 4 uses
  %i.v = icmp ult i64 %2, %i.u
  br i1 %i.v, label %put_var_int.exit.thread, label %put_var_int.exit

put_var_int.exit.thread:                          ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %.thread

put_var_int.exit:                                 ; preds = %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %i.w, i64 %i.u, i1 false)
  %i.x = trunc i64 %i.u to i32                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %.thread, label %bb.c

bb.c:                                             ; preds = %put_var_int.exit
  %i.z = and i64 %i.u, 2147483647                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = sub i64 %2, %i.z
  %.pr = load i32, ptr %i.d, align 8, !tbaa !48
  %i.ac = icmp eq i32 %.pr, 0
  br i1 %i.ac, label %.thread, label %.thread97

.thread97:                                        ; preds = %bb.a, %bb.c
  %.sroa.0.0101 = phi ptr [ %i.aa, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %.sroa.10.0100 = phi i64 [ %i.ab, %bb.c ], [ %2, %bb.a ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ag = trunc i64 %i.af to i8
  %i.ah = and i8 %i.ag, 127
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !20
  %i.aj = lshr i64 %i.af, 7                       ; 2 uses
  %.not15.i37 = icmp eq i64 %i.aj, 0
  br i1 %.not15.i37, label %._crit_edge.i42, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.thread97, %.lr.ph.i38
  %i.ak = phi i64 [ %i.ar, %.lr.ph.i38 ], [ %i.aj, %.thread97 ]
  %.016.i39 = phi i32 [ %i.ao, %.lr.ph.i38 ], [ 9, %.thread97 ]
  %i.al = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.am = trunc i64 %i.al to i8
  %i.an = or i8 %i.am, -128
  %i.ao = add i32 %.016.i39, -1                   ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap
  store i8 %i.an, ptr %i.aq, align 1, !tbaa !20
  %i.ar = lshr i64 %i.al, 7                       ; 2 uses
  %.not.i40 = icmp eq i64 %i.ar, 0
  br i1 %.not.i40, label %._crit_edge.i42, label %.lr.ph.i38, !llvm.loop !1

._crit_edge.i42:                                  ; preds = %.lr.ph.i38, %.thread97
  %.0.lcssa.i43 = phi i64 [ 9, %.thread97 ], [ %i.ap, %.lr.ph.i38 ] ; 2 uses
  %i.as = sub nsw i64 10, %.0.lcssa.i43           ; 4 uses
  %i.at = icmp ult i64 %.sroa.10.0100, %i.as
  br i1 %i.at, label %put_var_int.exit45.thread, label %put_var_int.exit45

put_var_int.exit45.thread:                        ; preds = %._crit_edge.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.thread

put_var_int.exit45:                               ; preds = %._crit_edge.i42
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.lcssa.i43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0101, ptr nonnull align 1 %i.au, i64 %i.as, i1 false)
  %i.av = trunc i64 %i.as to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %.thread, label %bb.d

bb.d:                                             ; preds = %put_var_int.exit45
  %i.ax = and i64 %i.as, 2147483647               ; 2 uses
  %i.ay = sub i64 %.sroa.10.0100, %i.ax           ; 2 uses
  %i.az = load i32, ptr %i.d, align 8, !tbaa !48
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !47 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0101, i64 %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.be = phi ptr [ %i.bb, %.lr.ph ], [ %i.cb, %bb.f ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.026.in82 = phi ptr [ %i.bb, %.lr.ph ], [ %i.cc, %bb.f ]
  %.sroa.0.180 = phi ptr [ %i.bc, %.lr.ph ], [ %i.bz, %bb.f ] ; 2 uses
  %.sroa.10.179 = phi i64 [ %i.ay, %.lr.ph ], [ %i.ca, %bb.f ] ; 2 uses
  %.026 = load i64, ptr %.026.in82, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bh = sub i64 %i.bg, %.026                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = and i8 %i.bi, 127
  store i8 %i.bj, ptr %i.bd, align 1, !tbaa !20
  %i.bk = lshr i64 %i.bh, 7                       ; 2 uses
  %.not15.i46 = icmp eq i64 %i.bk, 0
  br i1 %.not15.i46, label %._crit_edge.i51, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.e, %.lr.ph.i47
  %i.bl = phi i64 [ %i.bs, %.lr.ph.i47 ], [ %i.bk, %bb.e ]
  %.016.i48 = phi i32 [ %i.bp, %.lr.ph.i47 ], [ 9, %bb.e ]
  %i.bm = add nsw i64 %i.bl, -1                   ; 2 uses
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = or i8 %i.bn, -128
  %i.bp = add i32 %.016.i48, -1                   ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  store i8 %i.bo, ptr %i.br, align 1, !tbaa !20
  %i.bs = lshr i64 %i.bm, 7                       ; 2 uses
  %.not.i49 = icmp eq i64 %i.bs, 0
  br i1 %.not.i49, label %._crit_edge.i51, label %.lr.ph.i47, !llvm.loop !1

._crit_edge.i51:                                  ; preds = %.lr.ph.i47, %bb.e
  %.0.lcssa.i52 = phi i64 [ 9, %bb.e ], [ %i.bq, %.lr.ph.i47 ] ; 2 uses
  %i.bt = sub nsw i64 10, %.0.lcssa.i52           ; 4 uses
  %i.bu = icmp ult i64 %.sroa.10.179, %i.bt
  br i1 %i.bu, label %put_var_int.exit54.thread, label %put_var_int.exit54

put_var_int.exit54.thread:                        ; preds = %._crit_edge.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread

put_var_int.exit54:                               ; preds = %._crit_edge.i51
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.lcssa.i52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.180, ptr nonnull align 1 %i.bv, i64 %i.bt, i1 false)
  %i.bw = trunc i64 %i.bt to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bx = icmp sgt i32 %i.bw, -1
  br i1 %i.bx, label %bb.f, label %.thread

bb.f:                                             ; preds = %put_var_int.exit54
  %i.by = and i64 %i.bt, 2147483647               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.180, i64 %i.by
  %i.ca = sub i64 %.sroa.10.179, %i.by            ; 2 uses
  %i.cb = load ptr, ptr %i.ad, align 8, !tbaa !47 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = load i32, ptr %i.d, align 8, !tbaa !48
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %bb.e, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.sroa.10.1.lcssa = phi i64 [ %i.ay, %bb.d ], [ %i.ca, %bb.f ]
  %i.cg = sub i64 %2, %.sroa.10.1.lcssa
  %i.ch = trunc i64 %i.cg to i32
  br label %.thread

.thread:                                          ; preds = %put_var_int.exit54, %bb.c, %put_var_int.exit54.thread, %put_var_int.exit45.thread, %put_var_int.exit.thread, %put_var_int.exit45, %put_var_int.exit, %._crit_edge
  %.2 = phi i32 [ %i.ch, %._crit_edge ], [ %i.x, %bb.c ], [ %i.x, %put_var_int.exit ], [ -11, %put_var_int.exit45.thread ], [ %i.av, %put_var_int.exit45 ], [ -11, %put_var_int.exit.thread ], [ -11, %put_var_int.exit54.thread ], [ %i.bw, %put_var_int.exit54 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @reftable_obj_record_decode(ptr nofree noundef captures(none) initializes((8, 16), (24, 32)) %0, ptr nofree noundef readonly byval(%struct.reftable_buf) align 8 captures(none) %1, i8 noundef zeroext %2, ptr %3, i64 %4, i32 %5, ptr nofree readnone captures(none) %6) #5 {
bb.a:
  %i.a = zext i8 %2 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !45
  tail call void @reftable_free(ptr noundef %i.b) #17
  store ptr null, ptr %0, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  tail call void @reftable_free(ptr noundef %i.d) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 3 uses
  %i.g = tail call ptr @reftable_malloc(i64 noundef %i.f) #17 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !45
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %get_var_int.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %i.i, i64 %i.f, i1 false)
  %i.j = trunc i64 %i.f to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !46
  %i.l = icmp eq i8 %2, 0
  br i1 %i.l, label %bb.c, label %.thread154

.thread154:                                       ; preds = %bb.b
  store ptr null, ptr %i.c, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !48
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %get_var_int.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i8, ptr %3, align 1, !tbaa !20      ; 2 uses
  %i.o = and i8 %i.n, 127
  %i.p = zext nneg i8 %i.o to i64                 ; 2 uses
  %.01928.i = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %.not2229.i = icmp sgt i8 %i.n, -1
  br i1 %.not2229.i, label %get_var_int.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %4
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.01931.i = phi ptr [ %.01928.i, %.lr.ph.i ], [ %.019.i, %bb.f ] ; 3 uses
  %.030.i = phi i64 [ %i.p, %.lr.ph.i ], [ %i.w, %bb.f ] ; 2 uses
  %or.cond.i = icmp ult i64 %.030.i, 144115188075855871
  %.not24.i = icmp ult ptr %.01931.i, %i.q
  %or.cond25.i = select i1 %or.cond.i, i1 %.not24.i, i1 false
  br i1 %or.cond25.i, label %bb.f, label %get_var_int.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr %.01931.i, align 1, !tbaa !20 ; 2 uses
  %i.s = shl nuw i64 %.030.i, 7
  %i.t = add nuw i64 %i.s, 128
  %i.u = and i8 %i.r, 127
  %i.v = zext nneg i8 %i.u to i64
  %i.w = or disjoint i64 %i.t, %i.v               ; 2 uses
  %.019.i = getelementptr inbounds nuw i8, ptr %.01931.i, i64 1 ; 2 uses
  %.not22.i = icmp sgt i8 %i.r, -1
  br i1 %.not22.i, label %get_var_int.exit, label %bb.e, !llvm.loop !0

get_var_int.exit:                                 ; preds = %bb.f, %bb.d
  %.0.lcssa.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.f ] ; 3 uses
  %.019.lcssa.i = phi ptr [ %.01928.i, %bb.d ], [ %.019.i, %bb.f ]
  %i.x = ptrtoint ptr %.019.lcssa.i to i64
  %i.y = ptrtoint ptr %3 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %get_var_int.exit.thread, label %bb.g

bb.g:                                             ; preds = %get_var_int.exit
  store ptr null, ptr %i.c, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !48
  %i.ad = icmp eq i64 %.0.lcssa.i, 0
  br i1 %i.ad, label %get_var_int.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = and i64 %i.z, 2147483647                ; 2 uses
  %i.af = sub i64 %4, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  %mul.ov.i = icmp ugt i64 %.0.lcssa.i, 2305843009213693951
  br i1 %mul.ov.i, label %.thread115, label %bb.i

.thread115:                                       ; preds = %bb.h
  %i.ah = tail call ptr @__errno_location() #20
  store i32 12, ptr %i.ah, align 4, !tbaa !27
  br label %get_var_int.exit.thread

bb.i:                                             ; preds = %.thread154, %bb.h
  %.sroa.10.0109161 = phi i64 [ %4, %.thread154 ], [ %i.af, %bb.h ] ; 3 uses
  %.sroa.0.0111160 = phi ptr [ %3, %.thread154 ], [ %i.ag, %bb.h ] ; 5 uses
  %.0103112159 = phi i64 [ %i.a, %.thread154 ], [ %.0.lcssa.i, %bb.h ] ; 4 uses
  %i.ai = phi ptr [ %i.m, %.thread154 ], [ %i.ac, %bb.h ]
  %i.aj = shl nuw i64 %.0103112159, 3
  %i.ak = tail call ptr @reftable_malloc(i64 noundef %i.aj) #17 ; 4 uses
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !47
  %.not48 = icmp eq ptr %i.ak, null
  br i1 %.not48, label %get_var_int.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = trunc i64 %.0103112159 to i32
  store i32 %i.al, ptr %i.ai, align 8, !tbaa !48
  %.not.i51 = icmp eq i64 %.sroa.10.0109161, 0
  br i1 %.not.i51, label %get_var_int.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load i8, ptr %.sroa.0.0111160, align 1, !tbaa !20 ; 2 uses
  %i.an = and i8 %i.am, 127
  %i.ao = zext nneg i8 %i.an to i64               ; 2 uses
  %.01928.i52 = getelementptr inbounds nuw i8, ptr %.sroa.0.0111160, i64 1 ; 2 uses
  %.not2229.i53 = icmp sgt i8 %i.am, -1
  br i1 %.not2229.i53, label %get_var_int.exit66, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0111160, i64 %.sroa.10.0109161
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i54
  %.01931.i55 = phi ptr [ %.01928.i52, %.lr.ph.i54 ], [ %.019.i61, %bb.m ] ; 3 uses
  %.030.i56 = phi i64 [ %i.ao, %.lr.ph.i54 ], [ %i.av, %bb.m ] ; 2 uses
  %or.cond.i57 = icmp ult i64 %.030.i56, 144115188075855871
  %.not24.i58 = icmp ult ptr %.01931.i55, %i.ap
  %or.cond25.i59 = select i1 %or.cond.i57, i1 %.not24.i58, i1 false
  br i1 %or.cond25.i59, label %bb.m, label %get_var_int.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aq = load i8, ptr %.01931.i55, align 1, !tbaa !20 ; 2 uses
  %i.ar = shl nuw i64 %.030.i56, 7
  %i.as = add nuw i64 %i.ar, 128
  %i.at = and i8 %i.aq, 127
  %i.au = zext nneg i8 %i.at to i64
  %i.av = or disjoint i64 %i.as, %i.au            ; 2 uses
  %.019.i61 = getelementptr inbounds nuw i8, ptr %.01931.i55, i64 1 ; 2 uses
  %.not22.i62 = icmp sgt i8 %i.aq, -1
  br i1 %.not22.i62, label %get_var_int.exit66, label %bb.l, !llvm.loop !0

get_var_int.exit66:                               ; preds = %bb.m, %bb.k
  %i.aw = phi i64 [ %i.ao, %bb.k ], [ %i.av, %bb.m ] ; 2 uses
  %.019.lcssa.i65 = phi ptr [ %.01928.i52, %bb.k ], [ %.019.i61, %bb.m ]
  store i64 %i.aw, ptr %i.ak, align 8, !tbaa !22
  %i.ax = ptrtoint ptr %.019.lcssa.i65 to i64
  %i.ay = ptrtoint ptr %.sroa.0.0111160 to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %get_var_int.exit.thread, label %bb.n

bb.n:                                             ; preds = %get_var_int.exit66
  %i.bc = and i64 %i.az, 2147483647               ; 2 uses
  %i.bd = sub i64 %.sroa.10.0109161, %i.bc        ; 2 uses
  %.not49137 = icmp samesign ugt i64 %.0103112159, 1
  br i1 %.not49137, label %.lr.ph.preheader, label %.thread127

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0111160, i64 %i.bc
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %.0141 = phi i64 [ %i.bz, %bb.r ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.036140 = phi i64 [ %i.bx, %bb.r ], [ %i.aw, %.lr.ph.preheader ]
  %.sroa.0.1139 = phi ptr [ %i.bv, %bb.r ], [ %i.be, %.lr.ph.preheader ] ; 5 uses
  %.sroa.10.1138 = phi i64 [ %i.bw, %bb.r ], [ %i.bd, %.lr.ph.preheader ] ; 3 uses
  %.not.i67 = icmp eq i64 %.sroa.10.1138, 0
  br i1 %.not.i67, label %get_var_int.exit.thread, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bf = load i8, ptr %.sroa.0.1139, align 1, !tbaa !20 ; 2 uses
  %i.bg = and i8 %i.bf, 127
  %i.bh = zext nneg i8 %i.bg to i64               ; 2 uses
  %.01928.i68 = getelementptr inbounds nuw i8, ptr %.sroa.0.1139, i64 1 ; 2 uses
  %.not2229.i69 = icmp sgt i8 %i.bf, -1
  br i1 %.not2229.i69, label %get_var_int.exit82, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.1139, i64 %.sroa.10.1138
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i70
  %.01931.i71 = phi ptr [ %.01928.i68, %.lr.ph.i70 ], [ %.019.i77, %bb.q ] ; 3 uses
  %.030.i72 = phi i64 [ %i.bh, %.lr.ph.i70 ], [ %i.bo, %bb.q ] ; 2 uses
  %or.cond.i73 = icmp ult i64 %.030.i72, 144115188075855871
  %.not24.i74 = icmp ult ptr %.01931.i71, %i.bi
  %or.cond25.i75 = select i1 %or.cond.i73, i1 %.not24.i74, i1 false
  br i1 %or.cond25.i75, label %bb.q, label %get_var_int.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bj = load i8, ptr %.01931.i71, align 1, !tbaa !20 ; 2 uses
end_hunk_0

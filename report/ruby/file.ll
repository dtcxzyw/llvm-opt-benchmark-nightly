inline.NumInlined: 520
inline.NumDeleted: 102
begin_hunk_0_@ruby_enc_find_basename:bb.a
  %.119.i116 = getelementptr i8, ptr %.01822.i, i64 1 ; 2 uses
  %i.y = icmp ult ptr %.119.i116, %i.d
  br i1 %i.y, label %.lr.ph118, label %chompdirsep.exit

.preheader.i62:                                   ; preds = %.lr.ph118
  %.119.i = getelementptr i8, ptr %.119.i117, i64 1 ; 2 uses
  %i.z = icmp ult ptr %.119.i, %i.d
  br i1 %i.z, label %.lr.ph118, label %chompdirsep.exit, !llvm.loop !88

.lr.ph118:                                        ; preds = %.preheader.i62.preheader, %.preheader.i62
  %.119.i117 = phi ptr [ %.119.i, %.preheader.i62 ], [ %.119.i116, %.preheader.i62.preheader ] ; 3 uses
  %i.aa = load i8, ptr %.119.i117, align 1, !tbaa !36
  %i.ab = icmp eq i8 %i.aa, 47
  br i1 %i.ab, label %.preheader.i62, label %.critedge.thread.i61, !llvm.loop !88

bb.j:                                             ; preds = %.lr.ph.i60
  %i.ac = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.01822.i, ptr noundef nonnull %i.d, ptr noundef nonnull %3) #22
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %.01822.i, i64 %i.ad
  br label %.critedge.thread.i61

.critedge.thread.i61:                             ; preds = %.lr.ph118, %bb.j
  %.220.i = phi ptr [ %i.ae, %bb.j ], [ %.119.i117, %.lr.ph118 ] ; 3 uses
  %i.af = icmp ult ptr %.220.i, %i.d
  br i1 %i.af, label %.lr.ph.i60, label %chompdirsep.exit, !llvm.loop !89

chompdirsep.exit:                                 ; preds = %.critedge.thread.i61, %.preheader.i62.preheader, %.preheader.i62, %rb_enc_path_last_separator.exit.thread
  %.018.lcssa.i = phi ptr [ %.150, %rb_enc_path_last_separator.exit.thread ], [ %.01822.i, %.preheader.i62 ], [ %.220.i, %.critedge.thread.i61 ], [ %.01822.i, %.preheader.i62.preheader ]
  %i.ag = ptrtoint ptr %.018.lcssa.i to i64
  %i.ah = ptrtoint ptr %.150 to i64               ; 6 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 10 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %chompdirsep.exit
  %scevgep = getelementptr i8, ptr %.150, i64 %i.ai
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.04773 = phi ptr [ %i.am, %bb.k ], [ %.150, %.lr.ph.preheader ] ; 3 uses
  %i.ak = load i8, ptr %.04773, align 1, !tbaa !36
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.k, label %.critedge.loopexit

bb.k:                                             ; preds = %.lr.ph
  %i.am = getelementptr i8, ptr %.04773, i64 1    ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.ah
  %i.ap = icmp slt i64 %i.ao, %i.ai
  br i1 %i.ap, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !105

.critedge.loopexit:                               ; preds = %bb.k, %.lr.ph
  %.047.lcssa.ph = phi ptr [ %.04773, %.lr.ph ], [ %scevgep, %bb.k ] ; 2 uses
  %.pre = ptrtoint ptr %.047.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %chompdirsep.exit
  %.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %i.ah, %chompdirsep.exit ]
  %.047.lcssa = phi ptr [ %.047.lcssa.ph, %.critedge.loopexit ], [ %.150, %chompdirsep.exit ]
  %i.aq = sub i64 %.pre-phi, %i.ah
  %i.ar = icmp slt i64 %i.aq, %i.ai
  br i1 %i.ar, label %.lr.ph78, label %._crit_edge.thread

.lr.ph78:                                         ; preds = %.critedge, %.lr.ph78
  %.04677 = phi ptr [ %spec.select, %.lr.ph78 ], [ null, %.critedge ]
  %.14876 = phi ptr [ %i.aw, %.lr.ph78 ], [ %.047.lcssa, %.critedge ] ; 4 uses
  %i.as = load i8, ptr %.14876, align 1, !tbaa !36
  %i.at = icmp eq i8 %i.as, 46
  %spec.select = select i1 %i.at, ptr %.14876, ptr %.04677 ; 3 uses
  %i.au = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.14876, ptr noundef nonnull %i.d, ptr noundef nonnull %3) #22
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %.14876, i64 %i.av ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.ah
  %i.az = icmp slt i64 %i.ay, %i.ai
  br i1 %i.az, label %.lr.ph78, label %._crit_edge, !llvm.loop !106

._crit_edge:                                      ; preds = %.lr.ph78
  %.not58 = icmp eq ptr %spec.select, null
  br i1 %.not58, label %._crit_edge.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ba = ptrtoint ptr %spec.select to i64
  %i.bb = sub i64 %i.ba, %i.ah
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.critedge, %._crit_edge, %bb.l, %bb.g
  %.2 = phi ptr [ %.150, %bb.l ], [ %i.g, %bb.g ], [ %.150, %._crit_edge ], [ %.150, %.critedge ]
  %.044 = phi i64 [ %i.bb, %bb.l ], [ 1, %bb.g ], [ %i.ai, %._crit_edge ], [ %i.ai, %.critedge ]
  %.0 = phi i64 [ %i.ai, %bb.l ], [ -1, %bb.g ], [ %i.ai, %._crit_edge ], [ %i.ai, %.critedge ]
  %.not59 = icmp eq ptr %1, null
  br i1 %.not59, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread
  store i64 %.044, ptr %1, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.thread
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.0, ptr %2, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  ret ptr %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_file_dirname(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_file_dirname_n(i64 noundef %0, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @rb_file_dirname_n(i64 noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 0, ptr %i.c, align 8, !tbaa !14
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.126, i32 noundef %1) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.f = icmp eq i64 %0, 0
  %i.g = and i64 %0, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.c
  %i.j = inttoptr i64 %0 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 5
  br i1 %i.m, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.c
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.n = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.n, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !15

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.n, %.lr.ph.i.i.i ]
  %i.o = tail call i64 @rb_check_funcall_default(i64 noundef %0, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %0) #22
  store i64 %i.o, ptr %i.a, align 8, !tbaa !14
  %i.p = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.q = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i = phi i64 [ %i.q, %rbimpl_intern_const.exit.i.i ], [ %0, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.r = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i)
  store i64 %i.r, ptr %i.b, align 8, !tbaa !14
  %i.s = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #22 ; 6 uses
  %i.t = load i64, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !90
  %i.x = getelementptr i8, ptr %i.s, i64 %i.w     ; 15 uses
  %i.y = call ptr @rb_enc_get(i64 noundef %i.t) #22 ; 2 uses
  %i.z = icmp ult ptr %i.s, %i.x
  br i1 %i.z, label %.lr.ph.i, label %skiproot.exit

.lr.ph.i:                                         ; preds = %rb_get_path.exit, %bb.d
  %.01.i = phi ptr [ %i.ac, %bb.d ], [ %i.s, %rb_get_path.exit ] ; 3 uses
  %i.aa = load i8, ptr %.01.i, align 1, !tbaa !36
  %i.ab = icmp eq i8 %i.aa, 47
  br i1 %i.ab, label %bb.d, label %skiproot.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.ac = getelementptr i8, ptr %.01.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ac, %i.x
  br i1 %exitcond.not.i, label %skiproot.exit, label %.lr.ph.i, !llvm.loop !94

skiproot.exit:                                    ; preds = %.lr.ph.i, %bb.d, %rb_get_path.exit
  %.0.lcssa.i = phi ptr [ %i.s, %rb_get_path.exit ], [ %.01.i, %.lr.ph.i ], [ %i.x, %bb.d ] ; 11 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 1
  %i.ae = icmp ugt ptr %.0.lcssa.i, %i.ad
  %i.af = getelementptr i8, ptr %.0.lcssa.i, i64 -1
  %spec.select = select i1 %i.ae, ptr %i.af, ptr %i.s ; 3 uses
  %i.ag = zext nneg i32 %1 to i64                 ; 6 uses
  %i.ah = ptrtoint ptr %i.x to i64
  %i.ai = ptrtoint ptr %.0.lcssa.i to i64
  %i.aj = add i64 %i.ah, 1
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = sdiv i64 %i.ak, 2
  %i.am = icmp slt i64 %i.al, %i.ag
  br i1 %i.am, label %bb.l, label %bb.e

bb.e:                                             ; preds = %skiproot.exit
  switch i32 %1, label %bb.h [
    i32 0, label %bb.l
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.an = icmp ult ptr %.0.lcssa.i, %i.x
  br i1 %i.an, label %.lr.ph.i76, label %rb_enc_path_last_separator.exit

.lr.ph.i76:                                       ; preds = %bb.f, %.critedge.thread.i
  %.01627.i = phi ptr [ %.2.i, %.critedge.thread.i ], [ %.0.lcssa.i, %bb.f ] ; 5 uses
  %.01726.i = phi ptr [ %.219.i, %.critedge.thread.i ], [ null, %bb.f ] ; 3 uses
  %i.ao = load i8, ptr %.01627.i, align 1, !tbaa !36
  %i.ap = icmp eq i8 %i.ao, 47
  br i1 %i.ap, label %.preheader.i.preheader, label %bb.g

.preheader.i.preheader:                           ; preds = %.lr.ph.i76
  %.1.i121 = getelementptr i8, ptr %.01627.i, i64 1 ; 2 uses
  %i.aq = icmp ult ptr %.1.i121, %i.x
  br i1 %i.aq, label %.lr.ph123, label %rb_enc_path_last_separator.exit

.preheader.i:                                     ; preds = %.lr.ph123
  %.1.i = getelementptr i8, ptr %.1.i122, i64 1   ; 2 uses
  %i.ar = icmp ult ptr %.1.i, %i.x
  br i1 %i.ar, label %.lr.ph123, label %rb_enc_path_last_separator.exit, !llvm.loop !86

.lr.ph123:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i122 = phi ptr [ %.1.i, %.preheader.i ], [ %.1.i121, %.preheader.i.preheader ] ; 3 uses
  %i.as = load i8, ptr %.1.i122, align 1, !tbaa !36
  %i.at = icmp eq i8 %i.as, 47
  br i1 %i.at, label %.preheader.i, label %.critedge.thread.i, !llvm.loop !86

bb.g:                                             ; preds = %.lr.ph.i76
  %i.au = call i32 @rb_enc_mbclen(ptr noundef nonnull %.01627.i, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y) #22
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %.01627.i, i64 %i.av
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.lr.ph123, %bb.g
  %.219.i = phi ptr [ %.01726.i, %bb.g ], [ %.01627.i, %.lr.ph123 ] ; 2 uses
  %.2.i = phi ptr [ %i.aw, %bb.g ], [ %.1.i122, %.lr.ph123 ] ; 2 uses
  %i.ax = icmp ult ptr %.2.i, %i.x
  br i1 %i.ax, label %.lr.ph.i76, label %rb_enc_path_last_separator.exit, !llvm.loop !87

rb_enc_path_last_separator.exit:                  ; preds = %.critedge.thread.i, %.preheader.i.preheader, %.preheader.i, %bb.f
  %.01725.i = phi ptr [ %.01726.i, %.preheader.i ], [ null, %bb.f ], [ %.219.i, %.critedge.thread.i ], [ %.01726.i, %.preheader.i.preheader ] ; 2 uses
  %.not = icmp eq ptr %.01725.i, null
  %spec.select75 = select i1 %.not, ptr %.0.lcssa.i, ptr %.01725.i
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.ay = icmp ult i32 %1, 128
  br i1 %i.ay, label %bb.i, label %rb_alloc_tmp_buffer2.exit

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.c, align 8, !tbaa !14
  %i.az = shl nuw nsw i64 %i.ag, 3
  %i.ba = alloca i8, i64 %i.az, align 16
  br label %.lr.ph.preheader

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.h
  %i.bb = shl nuw nsw i64 %i.ag, 3
  %i.bc = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.c, i64 noundef %i.bb, i64 noundef %i.ag) #27
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i, %rb_alloc_tmp_buffer2.exit
  %i.bd = phi ptr [ %i.ba, %bb.i ], [ %i.bc, %rb_alloc_tmp_buffer2.exit ] ; 4 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader133, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ag, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.0.lcssa.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.be, align 8, !tbaa !107
  store <2 x ptr> %broadcast.splat, ptr %i.bf, align 8, !tbaa !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ag
  br i1 %cmp.n, label %.preheader80, label %.lr.ph.preheader133

.lr.ph.preheader133:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader80:                                     ; preds = %.lr.ph, %middle.block
  %i.bh = icmp ult ptr %.0.lcssa.i, %i.x
  br i1 %i.bh, label %.lr.ph91, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader133, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader133 ] ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.bd, i64 %indvars.iv
  store ptr %.0.lcssa.i, ptr %i.bi, align 8, !tbaa !107
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader80, label %.lr.ph, !llvm.loop !111

.lr.ph91:                                         ; preds = %.preheader80, %bb.k
  %.190 = phi i32 [ %.3, %bb.k ], [ 0, %.preheader80 ] ; 5 uses
  %.06389 = phi ptr [ %.265, %bb.k ], [ %.0.lcssa.i, %.preheader80 ] ; 5 uses
  %i.bj = load i8, ptr %.06389, align 1, !tbaa !36
  %i.bk = icmp eq i8 %i.bj, 47
  br i1 %i.bk, label %.preheader.preheader, label %bb.j

.preheader.preheader:                             ; preds = %.lr.ph91
  %.164125 = getelementptr i8, ptr %.06389, i64 1 ; 2 uses
  %i.bl = icmp ult ptr %.164125, %i.x
  br i1 %i.bl, label %.lr.ph127, label %.critedge

.preheader:                                       ; preds = %.lr.ph127
  %.164 = getelementptr i8, ptr %.164126, i64 1   ; 2 uses
  %i.bm = icmp ult ptr %.164, %i.x
  br i1 %i.bm, label %.lr.ph127, label %.critedge, !llvm.loop !112

.lr.ph127:                                        ; preds = %.preheader.preheader, %.preheader
  %.164126 = phi ptr [ %.164, %.preheader ], [ %.164125, %.preheader.preheader ] ; 3 uses
  %i.bn = load i8, ptr %.164126, align 1, !tbaa !36
  %i.bo = icmp eq i8 %i.bn, 47
  br i1 %i.bo, label %.preheader, label %.critedge.thread77, !llvm.loop !112

.critedge.thread77:                               ; preds = %.lr.ph127
  %i.bp = add i32 %.190, 1                        ; 2 uses
  %i.bq = sext i32 %.190 to i64
  %i.br = getelementptr [8 x i8], ptr %i.bd, i64 %i.bq
  store ptr %.06389, ptr %i.br, align 8, !tbaa !107
  %i.bs = icmp eq i32 %i.bp, %1
  %spec.store.select = select i1 %i.bs, i32 0, i32 %i.bp
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph91
  %i.bt = call i32 @rb_enc_mbclen(ptr noundef nonnull %.06389, ptr noundef nonnull %i.x, ptr noundef %i.y) #22
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %.06389, i64 %i.bu
  br label %bb.k

bb.k:                                             ; preds = %.critedge.thread77, %bb.j
  %.265 = phi ptr [ %.164126, %.critedge.thread77 ], [ %i.bv, %bb.j ] ; 2 uses
  %.3 = phi i32 [ %spec.store.select, %.critedge.thread77 ], [ %.190, %bb.j ] ; 2 uses
  %i.bw = icmp ult ptr %.265, %i.x
  br i1 %i.bw, label %.lr.ph91, label %.critedge, !llvm.loop !113

.critedge:                                        ; preds = %bb.k, %.preheader.preheader, %.preheader, %.preheader80
  %.185 = phi i32 [ %.190, %.preheader ], [ 0, %.preheader80 ], [ %.3, %bb.k ], [ %.190, %.preheader.preheader ]
  %i.bx = sext i32 %.185 to i64
  %i.by = getelementptr [8 x i8], ptr %i.bd, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !107
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.c) #22
  br label %bb.l

bb.l:                                             ; preds = %rb_enc_path_last_separator.exit, %.critedge, %bb.e, %skiproot.exit
  %.467 = phi ptr [ %.0.lcssa.i, %skiproot.exit ], [ %i.bz, %.critedge ], [ %i.x, %bb.e ], [ %spec.select75, %rb_enc_path_last_separator.exit ] ; 2 uses
  %i.ca = icmp eq ptr %.467, %spec.select
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = call i64 @rb_str_new_static(ptr noundef nonnull @.str.127, i64 noundef 1) #22
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cc = ptrtoint ptr %.467 to i64
  %i.cd = ptrtoint ptr %spec.select to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = call i64 @rb_str_new(ptr noundef %spec.select, i64 noundef %i.ce) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink = phi i64 [ %i.cf, %bb.n ], [ %i.cb, %bb.m ] ; 2 uses
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !14
  call void @rb_enc_copy(i64 noundef %.sink, i64 noundef %i.cg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i64 %.sink
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @ruby_enc_find_extname(ptr noundef nonnull %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = phi i64 [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  %i.d = getelementptr i8, ptr %0, i64 %i.c       ; 6 uses
  %i.e = icmp ult ptr %0, %i.d
  br i1 %i.e, label %.lr.ph.i, label %rb_enc_path_last_separator.exit.thread

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.thread.i
  %.01627.i = phi ptr [ %.2.i, %.critedge.thread.i ], [ %0, %bb.d ] ; 5 uses
  %.01726.i = phi ptr [ %.219.i, %.critedge.thread.i ], [ null, %bb.d ] ; 3 uses
  %i.f = load i8, ptr %.01627.i, align 1, !tbaa !36
  %i.g = icmp eq i8 %i.f, 47
  br i1 %i.g, label %.preheader.i.preheader, label %bb.e

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %.1.i71 = getelementptr i8, ptr %.01627.i, i64 1 ; 2 uses
  %i.h = icmp ult ptr %.1.i71, %i.d
  br i1 %i.h, label %.lr.ph, label %rb_enc_path_last_separator.exit

.preheader.i:                                     ; preds = %.lr.ph
  %.1.i = getelementptr i8, ptr %.1.i72, i64 1    ; 2 uses
  %i.i = icmp ult ptr %.1.i, %i.d
  br i1 %i.i, label %.lr.ph, label %rb_enc_path_last_separator.exit, !llvm.loop !86

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i72 = phi ptr [ %.1.i, %.preheader.i ], [ %.1.i71, %.preheader.i.preheader ] ; 3 uses
  %i.j = load i8, ptr %.1.i72, align 1, !tbaa !36
  %i.k = icmp eq i8 %i.j, 47
  br i1 %i.k, label %.preheader.i, label %.critedge.thread.i, !llvm.loop !86

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.01627.i, ptr noundef nonnull %i.d, ptr noundef nonnull %2) #22
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr i8, ptr %.01627.i, i64 %i.m
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.lr.ph, %bb.e
  %.219.i = phi ptr [ %.01726.i, %bb.e ], [ %.01627.i, %.lr.ph ] ; 2 uses
  %.2.i = phi ptr [ %i.n, %bb.e ], [ %.1.i72, %.lr.ph ] ; 2 uses
  %i.o = icmp ult ptr %.2.i, %i.d
  br i1 %i.o, label %.lr.ph.i, label %rb_enc_path_last_separator.exit, !llvm.loop !87

rb_enc_path_last_separator.exit:                  ; preds = %.critedge.thread.i, %.preheader.i.preheader, %.preheader.i
  %.01725.i = phi ptr [ %.01726.i, %.preheader.i ], [ %.219.i, %.critedge.thread.i ], [ %.01726.i, %.preheader.i.preheader ] ; 2 uses
  %.not43 = icmp eq ptr %.01725.i, null
  br i1 %.not43, label %rb_enc_path_last_separator.exit.thread, label %.preheader

.preheader:                                       ; preds = %rb_enc_path_last_separator.exit, %.preheader
  %.035 = phi ptr [ %i.p, %.preheader ], [ %.01725.i, %rb_enc_path_last_separator.exit ]
  %i.p = getelementptr i8, ptr %.035, i64 1       ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !36
  %i.r = icmp eq i8 %i.q, 47
  br i1 %i.r, label %.preheader, label %rb_enc_path_last_separator.exit.thread, !llvm.loop !114

rb_enc_path_last_separator.exit.thread:           ; preds = %.preheader, %bb.d, %rb_enc_path_last_separator.exit
  %.0 = phi ptr [ %0, %bb.d ], [ %0, %rb_enc_path_last_separator.exit ], [ %i.p, %.preheader ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %rb_enc_path_last_separator.exit.thread
  %.2 = phi ptr [ %.0, %rb_enc_path_last_separator.exit.thread ], [ %i.t, %bb.f ] ; 3 uses
  %i.s = load i8, ptr %.2, align 1, !tbaa !36     ; 2 uses
  %cond = icmp eq i8 %i.s, 46
  %i.t = getelementptr i8, ptr %.2, i64 1
  br i1 %cond, label %bb.f, label %.critedge, !llvm.loop !115

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.u = phi i8 [ %.pr, %bb.g ], [ %i.s, %bb.f ]
  %.3 = phi ptr [ %i.x, %bb.g ], [ %.2, %bb.f ]   ; 5 uses
  %.034 = phi ptr [ %.1, %bb.g ], [ null, %bb.f ] ; 6 uses
  switch i8 %i.u, label %.fold.split [
    i8 0, label %bb.h
    i8 46, label %bb.g
    i8 47, label %bb.h
  ]

.fold.split:                                      ; preds = %.critedge
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %.fold.split
  %.1 = phi ptr [ %.3, %.critedge ], [ %.034, %.fold.split ]
  %i.v = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.3, ptr noundef nonnull %i.d, ptr noundef nonnull %2) #22
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %.3, i64 %i.w      ; 2 uses
  %.pr = load i8, ptr %i.x, align 1, !tbaa !36
  br label %.critedge, !llvm.loop !116

bb.h:                                             ; preds = %.critedge, %.critedge
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not46 = icmp eq ptr %.034, null
  %i.y = icmp eq ptr %.034, %.0
  %or.cond = or i1 %.not46, %i.y
end_hunk_0

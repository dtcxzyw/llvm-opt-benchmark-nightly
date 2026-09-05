Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Shyper?download=true
inline.NumInlined: 104
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 68
begin_hunk_0_@H5S__hyper_adjust_u:bb.a
  %i.v = load i64, ptr %i.o, align 8, !tbaa !18
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2056
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv34 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !18
  %i.aa = sub i64 %i.z, %i.v
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !18
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !18
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2312
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv34 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.ag = sub i64 %i.af, %i.ab
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !18
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count
  br i1 %exitcond38.not, label %.loopexit.loopexit, label %.preheader, !llvm.loop !132

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.ah = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.l, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2584
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 2 uses
  %.not27 = icmp eq ptr %i.aj, null
  br i1 %.not27, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ak = load i64, ptr @H5S_hyper_op_gen_g, align 8, !tbaa !18 ; 2 uses
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr @H5S_hyper_op_gen_g, align 8, !tbaa !18
  tail call fastcc void @H5S__hyper_adjust_u_helper(ptr noundef nonnull %i.aj, i32 noundef %i.h, ptr noundef nonnull %1, i64 noundef %i.ak)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.preheader28, %bb.d, %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5S__hyper_adjust_s(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.preheader34, label %.critedge, !prof !16

.preheader34:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33   ; 3 uses
  %.not38 = icmp eq i32 %i.h, 0
  br i1 %.not38, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader34
  %wide.trip.count = zext i32 %i.h to i64         ; 2 uses
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !2

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c, %.preheader
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.preheader ], [ 0, %bb.c ] ; 5 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1032
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv40 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = sub nsw i64 %i.r, %i.t
  store i64 %i.u, ptr %i.q, align 8, !tbaa !50
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2056
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18
  %i.z = load i64, ptr %i.s, align 8, !tbaa !18
  %i.aa = sub nsw i64 %i.y, %i.z
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !18
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2312
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv40 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.af = load i64, ptr %i.s, align 8, !tbaa !18
  %i.ag = sub nsw i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !18
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond44.not, label %.loopexit.loopexit, label %.preheader, !llvm.loop !3

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.ah = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.l, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2584
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23 ; 2 uses
  %.not33 = icmp eq ptr %i.aj, null
  br i1 %.not33, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ak = load i64, ptr @H5S_hyper_op_gen_g, align 8, !tbaa !18 ; 2 uses
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr @H5S_hyper_op_gen_g, align 8, !tbaa !18
  tail call fastcc void @H5S__hyper_adjust_s_helper(ptr noundef nonnull %i.aj, i32 noundef %i.h, ptr noundef nonnull %1, i64 noundef %i.ak)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.preheader34, %bb.d, %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @H5S__hyper_project_scalar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %bb.f, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !25
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1032 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !33   ; 5 uses
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext i32 %i.n to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.o = icmp ult i32 %i.n, 4
  br i1 %i.o, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv.a = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv.a
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.a
  store i64 %i.q, ptr %i.r, align 16, !tbaa !18
  %indvars.iv.next.a = or disjoint i64 %indvars.iv.a, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv.next.a
  %i.t = load i64, ptr %i.s, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.a
  store i64 %i.t, ptr %i.u, align 8, !tbaa !18
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.a, 2 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv.next.1
  %i.w = load i64, ptr %i.v, align 8, !tbaa !50
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store i64 %i.w, ptr %i.x, align 16, !tbaa !18
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.a, 3 ; 2 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv.next.2
  %i.z = load i64, ptr %i.y, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.a, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !133

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 2584
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.pn = phi ptr [ %i.ag, %bb.e ], [ %i.ac, %bb.d ]
  %.016.in = getelementptr inbounds nuw i8, ptr %.pn, i64 56
  %.016 = load ptr, ptr %.016.in, align 8, !tbaa !59 ; 2 uses
  %i.ad = load i64, ptr %.016, align 8, !tbaa !61
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %.016, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br i1 %.not, label %.loopexit.loopexit22, label %bb.e

.loopexit.loopexit22:                             ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !33
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv.epil
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.epil
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !18
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !134

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %.loopexit.loopexit22, %bb.c
  %i.ak = phi i32 [ %.pre, %.loopexit.loopexit22 ], [ 0, %bb.c ], [ %i.n, %.lr.ph.epil ], [ %i.n, %.loopexit.loopexit.unr-lcssa ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.an = call i64 @H5VM_array_offset(i32 noundef %i.ak, ptr noundef %i.am, ptr noundef nonnull %i.a) #14
  store i64 %i.an, ptr %1, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef range(i32 -1, 1) i32 @H5S__hyper_project_simple(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 9 uses
  %i.b = alloca [32 x i64], align 16              ; 6 uses
  %i.c = load i8, ptr @H5S_init_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %bb.as, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @H5S_select_release(ptr noundef %1) #14
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.l = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !18
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_project_simple, i32 noundef 6860, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.51) #14 ; 0 uses
  br label %bb.as

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_hyper_sel_t_reg_free_list) #14 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 30 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !24
  %i.q = icmp eq ptr %i.n, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !18
  %i.s = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !18
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__hyper_project_simple, i32 noundef 6864, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.52) #14 ; 0 uses
  br label %bb.as

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 2568
  store i32 -1, ptr %i.u, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 14 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24   ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !25
  %i.y = icmp eq i32 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !33  ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !33 ; 11 uses
  %i.ad = icmp ult i32 %i.aa, %i.ac               ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ad, label %.lr.ph171.preheader, label %bb.h

.lr.ph171.preheader:                              ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 1032 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.af = sub nuw i32 %i.ac, %i.aa                ; 2 uses
  %wide.trip.count205 = zext i32 %i.af to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count205, 3      ; 3 uses
  %i.ag = add i32 %i.af, -1
  %i.ah = icmp ult i32 %i.ag, 3
  br i1 %i.ah, label %.lr.ph171.epil.preheader, label %.lr.ph171.preheader.new

.lr.ph171.preheader.new:                          ; preds = %.lr.ph171.preheader
  %unroll_iter = and i64 %wide.trip.count205, 4294967292
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171, %.lr.ph171.preheader.new
  %indvars.iv202 = phi i64 [ 0, %.lr.ph171.preheader.new ], [ %indvars.iv.next203.3, %.lr.ph171 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph171.preheader.new ], [ %niter.next.3, %.lr.ph171 ]
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %indvars.iv202
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv202
  store i64 %i.aj, ptr %i.ak, align 16, !tbaa !18
  %indvars.iv.next203 = or disjoint i64 %indvars.iv202, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %indvars.iv.next203
  %i.am = load i64, ptr %i.al, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next203
  store i64 %i.am, ptr %i.an, align 8, !tbaa !18
  %indvars.iv.next203.1 = or disjoint i64 %indvars.iv202, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %indvars.iv.next203.1
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next203.1
  store i64 %i.ap, ptr %i.aq, align 16, !tbaa !18
  %indvars.iv.next203.2 = or disjoint i64 %indvars.iv202, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %indvars.iv.next203.2
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next203.2
  store i64 %i.as, ptr %i.at, align 8, !tbaa !18
  %indvars.iv.next203.3 = add nuw nsw i64 %indvars.iv202, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph171, !llvm.loop !135

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph171
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph171.epil.preheader

.lr.ph171.epil.preheader:                         ; preds = %._crit_edge.unr-lcssa, %.lr.ph171.preheader
  %indvars.iv202.epil.init = phi i64 [ 0, %.lr.ph171.preheader ], [ %indvars.iv.next203.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod284 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod284)
  br label %.lr.ph171.epil

.lr.ph171.epil:                                   ; preds = %.lr.ph171.epil, %.lr.ph171.epil.preheader
  %indvars.iv202.epil = phi i64 [ %indvars.iv202.epil.init, %.lr.ph171.epil.preheader ], [ %indvars.iv.next203.epil, %.lr.ph171.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph171.epil.preheader ], [ %epil.iter.next, %.lr.ph171.epil ]
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %indvars.iv202.epil
  %i.av = load i64, ptr %i.au, align 8, !tbaa !50
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv202.epil
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !18
  %indvars.iv.next203.epil = add nuw nsw i64 %indvars.iv202.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph171.epil, !llvm.loop !136

._crit_edge:                                      ; preds = %.lr.ph171.epil, %._crit_edge.unr-lcssa
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.az = call i64 @H5VM_array_offset(i32 noundef %i.ac, ptr noundef %i.ay, ptr noundef nonnull %i.a) #14
  store i64 %i.az, ptr %2, align 8, !tbaa !18
  %i.ba = load i32, ptr %i.ab, align 8, !tbaa !33 ; 2 uses
  %i.bb = load i32, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %i.bc = sub i32 %i.ba, %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %2, align 8, !tbaa !18
  %i.bd = sub nuw i32 %i.aa, %i.ac                ; 2 uses
  %.not179 = icmp eq i32 %i.aa, %i.ac
  br i1 %.not179, label %.loopexit, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %bb.h
  %wide.trip.count = zext i32 %i.bd to i64
  br label %.lr.ph169

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %.lr.ph169
  %indvars.iv199 = phi i64 [ 0, %.lr.ph169.preheader ], [ %indvars.iv.next200, %.lr.ph169 ] ; 9 uses
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %indvars.iv199
  store i64 0, ptr %i.bg, align 8, !tbaa !50
  %i.bh = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %indvars.iv199
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 1, ptr %i.bj, align 8, !tbaa !51
  %i.bk = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %indvars.iv199
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 1, ptr %i.bm, align 8, !tbaa !42
  %i.bn = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %indvars.iv199
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i64 1, ptr %i.bp, align 8, !tbaa !52
end_hunk_0

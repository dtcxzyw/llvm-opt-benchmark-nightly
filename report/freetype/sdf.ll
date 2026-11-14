Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sdf?download=true
inline.NumInlined: 97
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@sdf_generate_with_overlaps:bb.a
  %.1.us.us.1 = phi i8 [ %.1.us.us, %bb.ac ], [ %i.fp, %bb.ab ] ; 3 uses
  %indvars.iv.next223.1 = add nuw nsw i64 %indvars.iv222, 2 ; 2 uses
  %niter19.next.1 = add i64 %niter19, 2           ; 2 uses
  %niter19.ncmp.1 = icmp eq i64 %niter19.next.1, %unroll_iter18
  br i1 %niter19.ncmp.1, label %._crit_edge189.us.us.unr-lcssa, label %.lr.ph188.us.us.new, !llvm.loop !150

._crit_edge189.us.us.unr-lcssa:                   ; preds = %bb.ad
  br i1 %lcmp.mod14.not, label %._crit_edge189.us.us, label %.epil.preheader12

.epil.preheader12:                                ; preds = %._crit_edge189.us.us.unr-lcssa, %.lr.ph188.us.us
  %indvars.iv222.epil.init = phi i64 [ 0, %.lr.ph188.us.us ], [ %indvars.iv.next223.1, %._crit_edge189.us.us.unr-lcssa ] ; 2 uses
  %.0186.us.us.epil.init = phi i8 [ -1, %.lr.ph188.us.us ], [ %.1.us.us.1, %._crit_edge189.us.us.unr-lcssa ] ; 2 uses
  %.0137185.us.us.epil.init = phi i8 [ 0, %.lr.ph188.us.us ], [ %.1138.us.us.1, %._crit_edge189.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod17)
  %i.fr = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv222.epil.init
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !47
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.ew
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !70  ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv222.epil.init
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !24
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.epil.preheader12
  %i.fz = call i8 @llvm.umin.i8(i8 %.0186.us.us.epil.init, i8 %i.fv)
  br label %._crit_edge189.us.us

bb.af:                                            ; preds = %.epil.preheader12
  %i.ga = call i8 @llvm.umax.i8(i8 %.0137185.us.us.epil.init, i8 %i.fv)
  br label %._crit_edge189.us.us

._crit_edge189.us.us:                             ; preds = %bb.ae, %bb.af, %._crit_edge189.us.us.unr-lcssa
  %.1138.us.us.lcssa = phi i8 [ %.1138.us.us.1, %._crit_edge189.us.us.unr-lcssa ], [ %i.ga, %bb.af ], [ %.0137185.us.us.epil.init, %bb.ae ]
  %.1.us.us.lcssa = phi i8 [ %.1.us.us.1, %._crit_edge189.us.us.unr-lcssa ], [ %.0186.us.us.epil.init, %bb.af ], [ %i.fz, %bb.ae ]
  %i.gb = call i8 @llvm.umin.i8(i8 %.1138.us.us.lcssa, i8 %.1.us.us.lcssa)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ew
  %i.gd = xor i8 %i.gb, -1
  store i8 %i.gd, ptr %i.gc, align 1, !tbaa !70
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %i.di
  br i1 %exitcond230.not, label %._crit_edge194.split.us.us.split, label %.lr.ph188.us.us, !llvm.loop !151

._crit_edge194.split.us.us.split:                 ; preds = %._crit_edge189.us.us
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %i.dj
  br i1 %exitcond235.not, label %.thread165, label %.preheader169.us, !llvm.loop !152

.loopexit:                                        ; preds = %bb.e, %.preheader169.preheader, %._crit_edge182, %.preheader169.lr.ph, %bb.d
  %.not161 = icmp eq ptr %i.p, null
  br i1 %.not161, label %.thread, label %.thread165

.thread165:                                       ; preds = %get_contour_orientation.exit, %._crit_edge194.split.us.us.split.us.us, %._crit_edge194.split.us.us.split, %.loopexit
  call void @ft_mem_free(ptr noundef nonnull %i.d, ptr noundef nonnull %i.p) #12
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %.thread165, %.loopexit
  %.not162 = icmp eq ptr %i.n, null
  br i1 %.not162, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.thread
  %i.ge = icmp eq i32 %.0148.lcssa, 0
  br i1 %i.ge, label %bb.ah, label %.preheader

bb.ah:                                            ; preds = %bb.ag
  store i32 97, ptr %i.a, align 4, !tbaa !24
  br label %bb.aj

.preheader:                                       ; preds = %bb.ag, %.preheader
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %.preheader ], [ 0, %bb.ag ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %indvars.iv240
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !47
  call void @ft_mem_free(ptr noundef nonnull %i.d, ptr noundef %i.gh) #12
  store ptr null, ptr %i.gg, align 8, !tbaa !47
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %i.m
  br i1 %exitcond244.not, label %bb.ai, label %.preheader, !llvm.loop !153

bb.ai:                                            ; preds = %.preheader
  call void @ft_mem_free(ptr noundef nonnull %i.d, ptr noundef nonnull %i.n) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %.thread
  %i.gi = load i32, ptr %i.a, align 4, !tbaa !24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.b, %bb.aj
  %.0140 = phi i32 [ %i.gi, %bb.aj ], [ 6, %bb.b ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0140
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sdf_generate_subdivision(i64 range(i64 0, 281474976710656) %0, i32 range(i32 0, 2) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %6 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %7 = alloca %struct.FT_Vector_, align 8         ; 7 uses
  %8 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %9 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %10 = alloca %struct.FT_Vector_, align 8        ; 7 uses
  %11 = alloca %struct.FT_Vector_, align 8        ; 6 uses
  %12 = alloca %struct.FT_Vector_, align 8        ; 7 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %13 = alloca [3 x %struct.FT_Vector_], align 16 ; 7 uses
  %14 = alloca [4 x %struct.FT_Vector_], align 16 ; 7 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %split_sdf_shape.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !82     ; 7 uses
  %.not65.i = icmp eq ptr %i.e, null
  br i1 %.not65.i, label %split_sdf_shape.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92   ; 2 uses
  %.not66112.i = icmp eq ptr %i.g, null
  br i1 %.not66112.i, label %.loopexit, label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph116.i
  %.046114.i = phi ptr [ null, %.lr.ph116.i ], [ %i.ar, %.loopexit.i ]
  %.048113.i = phi ptr [ %i.g, %.lr.ph116.i ], [ %i.ax, %.loopexit.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.048113.i, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !101
  %.not67107.i = icmp eq ptr %i.n, null
  br i1 %.not67107.i, label %._crit_edge111.i, label %.lr.ph110.i

.lr.ph110.i:                                      ; preds = %bb.d, %bb.i
  %.044108.i = phi ptr [ %i.aq, %bb.i ], [ %i.n, %bb.d ] ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.044108.i, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !99
  switch i32 %i.p, label %.thread95.i [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph110.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !tbaa !24
  %i.q = call ptr @ft_mem_qalloc(ptr noundef nonnull %i.e, i64 noundef 80, ptr noundef nonnull %i.c) #12 ; 4 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %.not8.i.i = icmp eq i32 %i.r, 0
  br i1 %.not8.i.i, label %.thread.i, label %sdf_edge_new.exit.i

sdf_edge_new.exit.i:                              ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.thread95.i

.thread.i:                                        ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %.044108.i, i64 72, i1 false)
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr %i.s, ptr %i.t, align 8, !tbaa !100
  store ptr %i.q, ptr %i.d, align 8, !tbaa !101
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph110.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %.044108.i, i64 16, i1 false), !tbaa.struct !91
  %i.u = getelementptr inbounds nuw i8, ptr %.044108.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !91
  %i.v = getelementptr inbounds nuw i8, ptr %.044108.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !91
  %i.w = load <2 x i64>, ptr %i.l, align 16, !tbaa !77
  %i.x = load <2 x i64>, ptr %13, align 16, !tbaa !77
  %i.y = add nsw <2 x i64> %i.x, %i.w
  %i.z = load <2 x i64>, ptr %i.k, align 16, !tbaa !77
  %i.aa = shl <2 x i64> %i.z, splat (i64 1)
  %i.ab = sub <2 x i64> %i.y, %i.aa
  %i.ac = call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.ab, i1 true)
  %i.ad = trunc <2 x i64> %i.ac to <2 x i32>      ; 2 uses
  %i.ae = extractelement <2 x i32> %i.ad, i64 0
  %i.af = extractelement <2 x i32> %i.ad, i64 1
  %.042.i = call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.af) ; 2 uses
  %i.ag = icmp sgt i32 %.042.i, 8
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.041106.i = phi i32 [ %i.ai, %.lr.ph.i ], [ 1, %bb.f ]
  %.143105.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %.042.i, %bb.f ] ; 2 uses
  %i.ah = lshr i32 %.143105.i, 2
  %i.ai = shl i32 %.041106.i, 1                   ; 2 uses
  %i.aj = icmp samesign ugt i32 %.143105.i, 35
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !162

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.041.lcssa.i = phi i32 [ 1, %bb.f ], [ %i.ai, %.lr.ph.i ]
  %i.ak = call fastcc i32 @split_sdf_conic(ptr noundef %i.e, ptr noundef %13, i32 noundef %.041.lcssa.i, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph110.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %.044108.i, i64 16, i1 false), !tbaa.struct !91
  %i.al = getelementptr inbounds nuw i8, ptr %.044108.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !91
  %i.am = getelementptr inbounds nuw i8, ptr %.044108.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !91
  %i.an = getelementptr inbounds nuw i8, ptr %.044108.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !91
  %i.ao = call fastcc i32 @split_sdf_cubic(ptr noundef %i.e, ptr noundef %14, i32 noundef 32, ptr noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.151.i = phi i32 [ %i.ao, %bb.g ], [ %i.ak, %._crit_edge.i ] ; 2 uses
  %.not70.i = icmp eq i32 %.151.i, 0
  br i1 %.not70.i, label %bb.i, label %.thread95.i

bb.i:                                             ; preds = %bb.h, %.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.044108.i, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !100 ; 2 uses
  %.not67.i = icmp eq ptr %i.aq, null
  br i1 %.not67.i, label %._crit_edge111.i, label %.lr.ph110.i, !llvm.loop !163

._crit_edge111.i:                                 ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !24
  %i.ar = call ptr @ft_mem_qalloc(ptr noundef nonnull %i.e, i64 noundef 32, ptr noundef nonnull %i.b) #12 ; 5 uses
  %i.as = load i32, ptr %i.b, align 4, !tbaa !24  ; 2 uses
  %.not8.i72.i = icmp eq i32 %i.as, 0
  br i1 %.not8.i72.i, label %bb.j, label %sdf_contour_new.exit.i

sdf_contour_new.exit.i:                           ; preds = %._crit_edge111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.thread95.i

bb.j:                                             ; preds = %._crit_edge111.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %.046114.i, ptr %i.at, align 8, !tbaa !95
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !101
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !97
  store ptr null, ptr %i.d, align 8, !tbaa !101
  %i.aw = getelementptr inbounds nuw i8, ptr %.048113.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !95 ; 2 uses
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !97  ; 2 uses
  %.not1617.i.i = icmp eq ptr %i.ay, null
  br i1 %.not1617.i.i, label %.loopexit.i, label %sdf_edge_done.exit.i.i

sdf_edge_done.exit.i.i:                           ; preds = %bb.j, %sdf_edge_done.exit.i.i
  %.018.i.i = phi ptr [ %i.ba, %sdf_edge_done.exit.i.i ], [ %i.ay, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !100 ; 2 uses
  call void @ft_mem_free(ptr noundef nonnull %i.e, ptr noundef nonnull %.018.i.i) #12
  %.not16.i.i = icmp eq ptr %i.ba, null
  br i1 %.not16.i.i, label %.loopexit.i, label %sdf_edge_done.exit.i.i, !llvm.loop !0

.thread95.i:                                      ; preds = %bb.h, %.lr.ph110.i, %sdf_contour_new.exit.i, %sdf_edge_new.exit.i
  %.3.ph.i = phi i32 [ %i.as, %sdf_contour_new.exit.i ], [ %i.r, %sdf_edge_new.exit.i ], [ %.151.i, %bb.h ], [ 6, %.lr.ph110.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %split_sdf_shape.exit.thread

.loopexit.i:                                      ; preds = %sdf_edge_done.exit.i.i, %bb.j
  call void @ft_mem_free(ptr noundef nonnull %i.e, ptr noundef nonnull %.048113.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %.not66.i = icmp eq ptr %i.ax, null
  br i1 %.not66.i, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %.loopexit.i, %bb.c
  %.046.lcssa.i = phi ptr [ null, %bb.c ], [ %i.ar, %.loopexit.i ]
  store ptr %.046.lcssa.i, ptr %i.f, align 8, !tbaa !92
  %.fr251.i = freeze i64 %0                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.bb = shl i32 %3, 16                          ; 6 uses
  %i.bc = icmp eq ptr %4, null
  %i.bd = add i32 %3, -33
  %or.cond3.i = icmp ult i32 %i.bd, -31
  %or.cond314.i = or i1 %i.bc, %or.cond3.i
  br i1 %or.cond314.i, label %.loopexit.sink.split.i, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.be = load ptr, ptr %2, align 8, !tbaa !82    ; 10 uses
  %.not.i10 = icmp eq ptr %i.be, null
  br i1 %.not.i10, label %.loopexit.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load i32, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !50 ; 2 uses
  %i.bi = udiv i32 2147483647, %i.bh
  %i.bj = icmp ugt i32 %i.bf, %i.bi
  br i1 %i.bj, label %.loopexit.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = mul i32 %i.bh, %i.bf
  %i.bl = zext i32 %i.bk to i64
  %i.bm = call ptr @ft_mem_realloc(ptr noundef nonnull %i.be, i64 noundef 12, i64 noundef 0, i64 noundef %i.bl, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 10 uses
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !24
  %.not164.i = icmp eq i32 %i.bn, 0
  br i1 %.not164.i, label %bb.n, label %sdf_generate_bounding_box.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = load i32, ptr %i.bg, align 4, !tbaa !50 ; 5 uses
  %i.bp = load i32, ptr %4, align 8, !tbaa !48    ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !47 ; 2 uses
  %i.bs = icmp eq i32 %i.bo, 0
  %i.bt = icmp eq i32 %i.bp, 0
  %or.cond5.i = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond5.i, label %.loopexit.sink.split.i, label %.preheader221.i

.preheader221.i:                                  ; preds = %bb.n
  %.0140238.i = load ptr, ptr %i.f, align 8, !tbaa !96 ; 2 uses
  %.not165239.i = icmp eq ptr %.0140238.i, null
  br i1 %.not165239.i, label %.preheader.i, label %.lr.ph241.i

.lr.ph241.i:                                      ; preds = %.preheader221.i
  %i.bu = zext nneg i32 %3 to i64                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i23.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cb = and i64 %.fr251.i, 4294967295
  %i.cc = icmp eq i64 %i.cb, 1
  %.not172.i = icmp samesign ult i64 %.fr251.i, 1099511627776
  %i.cd = sext i32 %i.bo to i64
  %i.ce = sext i32 %i.bp to i64
  br label %bb.q

.preheader.i:                                     ; preds = %._crit_edge.i13, %.preheader221.i
  %i.cf = icmp sgt i32 %i.bp, 0
  br i1 %i.cf, label %.lr.ph248.i, label %sdf_generate_bounding_box.exit

.lr.ph248.i:                                      ; preds = %.preheader.i
  %.not166.i = icmp eq i32 %1, 0
  %spec.select.i = select i1 %.not166.i, i8 -1, i8 1 ; 2 uses
  %i.cg = icmp sgt i32 %i.bo, 0
  %i.ch = zext nneg i32 %i.bb to i64              ; 2 uses
  br i1 %i.cg, label %.lr.ph248.split.i, label %sdf_generate_bounding_box.exit

.lr.ph248.split.i:                                ; preds = %.lr.ph248.i
  %i.ci = and i64 %.fr251.i, 1095216660480
  %.not167.i = icmp eq i64 %i.ci, 0
  %i.cj = zext nneg i32 %i.bo to i64              ; 4 uses
  %wide.trip.count279.i = zext nneg i32 %i.bp to i64 ; 2 uses
  br i1 %.not167.i, label %.lr.ph245.us.i, label %.lr.ph245.i

.lr.ph245.us.i:                                   ; preds = %.lr.ph248.split.i, %._crit_edge246.split.us.us.i
  %indvars.iv276.i = phi i64 [ %indvars.iv.next277.i, %._crit_edge246.split.us.us.i ], [ 0, %.lr.ph248.split.i ] ; 2 uses
  %i.ck = mul nuw nsw i64 %indvars.iv276.i, %i.cj
  br label %bb.o

bb.o:                                             ; preds = %.thread.i14, %.lr.ph245.us.i
  %indvars.iv272.i = phi i64 [ %indvars.iv.next273.i, %.thread.i14 ], [ 0, %.lr.ph245.us.i ] ; 2 uses
  %.1243.us.us.i = phi i8 [ %.2.us.us304.i, %.thread.i14 ], [ %spec.select.i, %.lr.ph245.us.i ]
  %i.cl = add nuw nsw i64 %indvars.iv272.i, %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !174 ; 2 uses
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %.thread.i14, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.pre283.i = load i32, ptr %i.cm, align 4, !tbaa !175
  %spec.select312.i = call i32 @llvm.smin.i32(i32 %.pre283.i, i32 %i.bb)
  br label %.thread.i14

.thread.i14:                                      ; preds = %bb.p, %bb.o
  %.2.us.us304.i = phi i8 [ %.1243.us.us.i, %bb.o ], [ %i.co, %bb.p ] ; 2 uses
  %i.cq = phi i32 [ %i.bb, %bb.o ], [ %spec.select312.i, %bb.p ]
  %i.cr = sext i8 %.2.us.us304.i to i32
  %i.cs = mul nsw i32 %i.cq, %i.cr                ; 2 uses
  store i32 %i.cs, ptr %i.cm, align 4, !tbaa !175
  %i.ct = sext i32 %i.cs to i64
  %i.cu = call i64 @FT_DivFix(i64 noundef %i.ct, i64 noundef %i.ch) #12
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  %i.cw = icmp slt i32 %i.cv, 0
  %i.cx = call i32 @llvm.abs.i32(i32 %i.cv, i1 true) ; 2 uses
  %i.cy = lshr i32 %i.cx, 9
  %i.cz = icmp sgt i32 %i.cv, 0
  %i.da = icmp samesign ugt i32 %i.cx, 65535
  %or.cond.i.us.us.i = select i1 %i.cz, i1 %i.da, i1 false
  %spec.store.select4.i.us.us.i = select i1 %or.cond.i.us.us.i, i32 127, i32 %i.cy ; 2 uses
  %i.db = call i32 @llvm.umin.i32(i32 %spec.store.select4.i.us.us.i, i32 128)
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/lincs?download=true
inline.NumInlined: 2108
inline.NumDeleted: 793
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN3gmx26count_triangle_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE:bb.a
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  %i.j = sdiv i32 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 2
  %i.s = trunc i64 %i.r to i32
  %i.t = sdiv i32 %i.s, 3
  %i.u = add nsw i32 %i.t, %i.j                   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %bb.a
  %i.w = ashr exact i64 %i.g, 2                   ; 4 uses
  %i.x = sub nsw i64 0, %i.w
  %invariant.gep109 = getelementptr [4 x i8], ptr %i.n, i64 %i.x ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24   ; 4 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !24    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %bb.b

._crit_edge107:                                   ; preds = %._crit_edge, %bb.a
  %.046.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %._crit_edge ]
  ret i32 %.046.lcssa

bb.b:                                             ; preds = %.lr.ph106, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.046104 = phi i32 [ 0, %.lr.ph106 ], [ %spec.select, %._crit_edge ]
  %i.ab = mul nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.ac = icmp sgt i64 %i.w, %i.ab
  %.0.i.v = select i1 %i.ac, ptr %i.d, ptr %invariant.gep109
  %.0.i = getelementptr [4 x i8], ptr %.0.i.v, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !25 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !25 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [4 x i8], ptr %i.aa, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !25 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !25 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.am
  %.not9198 = icmp eq i32 %i.aj, %i.al
  br i1 %.not9198, label %._crit_edge, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %bb.b
  %i.ao = sext i32 %i.aj to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ao
  br label %.lr.ph101

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.aq = zext nneg i8 %.4 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.048.lcssa = phi i32 [ 0, %bb.b ], [ %i.aq, %._crit_edge.loopexit ]
  %spec.select = add nuw nsw i32 %.046104, %.048.lcssa ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge107, label %bb.b, !llvm.loop !264

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %.loopexit
  %.048100 = phi i8 [ %.4, %.loopexit ], [ 0, %.lr.ph101.preheader ] ; 3 uses
  %.sroa.072.099 = phi ptr [ %i.bw, %.loopexit ], [ %i.ap, %.lr.ph101.preheader ] ; 2 uses
  %i.ar = load i32, ptr %.sroa.072.099, align 4, !tbaa !25 ; 3 uses
  %i.as = zext i32 %i.ar to i64
  %.not = icmp eq i64 %indvars.iv, %i.as
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph101
  %i.at = mul nsw i32 %i.ar, 3
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = icmp sgt i64 %i.w, %i.au
  %.0.i57.v = select i1 %i.av, ptr %i.d, ptr %invariant.gep109
  %.0.i57 = getelementptr [4 x i8], ptr %.0.i57.v, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i57, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !25 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, %i.ag
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i57, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.ba, %bb.d ], [ %i.ax, %bb.c ]
  %i.bb = sext i32 %.0 to i64
  %i.bc = getelementptr [4 x i8], ptr %i.aa, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !25 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !25 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bg
  %.not9293 = icmp eq i32 %i.bd, %i.bf
  br i1 %.not9293, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bi
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.14995 = phi i8 [ %.3, %bb.i ], [ %.048100, %.lr.ph.preheader ] ; 2 uses
  %.sroa.065.094 = phi ptr [ %i.bv, %bb.i ], [ %i.bj, %.lr.ph.preheader ] ; 2 uses
  %i.bk = load i32, ptr %.sroa.065.094, align 4, !tbaa !25 ; 3 uses
  %i.bl = zext i32 %i.bk to i64
  %.not54 = icmp eq i64 %indvars.iv, %i.bl
  %.not55 = icmp eq i32 %i.bk, %i.ar
  %or.cond = or i1 %.not54, %.not55
  br i1 %or.cond, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bm = mul nsw i32 %i.bk, 3
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = icmp sgt i64 %i.w, %i.bn
  %.0.i62.v = select i1 %i.bo, ptr %i.d, ptr %invariant.gep109
  %.0.i62 = getelementptr [4 x i8], ptr %.0.i62.v, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i62, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !25
  %i.br = icmp eq i32 %i.bq, %i.ae
  br i1 %i.br, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i62, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !25
  %i.bu = icmp eq i32 %i.bt, %i.ae
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.lr.ph
  %.3 = phi i8 [ %.14995, %.lr.ph ], [ 1, %bb.h ], [ %.14995, %bb.g ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.065.094, i64 4 ; 2 uses
  %.not92 = icmp eq ptr %i.bv, %i.bh
  br i1 %.not92, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.i, %bb.e, %.lr.ph101
  %.4 = phi i8 [ %.048100, %.lr.ph101 ], [ %.048100, %bb.e ], [ %.3, %bb.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.072.099, i64 4 ; 2 uses
  %.not91 = icmp eq ptr %i.bw, %i.an
  br i1 %.not91, label %._crit_edge.loopexit, label %.lr.ph101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN3gmx10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS_8ArrayRefIKNS_11ListOfListsIiEEEEbiiPNS_25ObservablesReducerBuilderE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(768) %1, i32 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readnone captures(none) %4, i1 noundef zeroext %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::function.91", align 8  ; 12 uses
  %10 = alloca %"class.std::function.93", align 8 ; 12 uses
  %.not = icmp eq ptr %0, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = select i1 %5, ptr @.str.2, ptr @.str.3
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = tail call noalias noundef nonnull dereferenceable(656) ptr @_Znwm(i64 noundef 656) #37 ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  store i8 0, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 648
  store i8 0, ptr %i.i, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.c, i8 0, i64 241, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.d, i8 0, i64 100, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(51) %i.e, i8 0, i64 51, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, i8 0, i64 176, i1 false)
  %i.j = tail call noundef i32 @_Z20gmx_mtop_ftype_countRK10gmx_mtop_t19InteractionFunction(ptr noundef nonnull align 8 dereferenceable(768) %1, i32 noundef 62)
  %i.k = tail call noundef i32 @_Z20gmx_mtop_ftype_countRK10gmx_mtop_t19InteractionFunction(ptr noundef nonnull align 8 dereferenceable(768) %1, i32 noundef 63)
  %i.l = add nsw i32 %i.k, %i.j
  store i32 %i.l, ptr %i.c, align 8, !tbaa !270
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %6, ptr %i.n, align 4, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i32 %7, ptr %i.o, align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !271
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !274  ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !275  ; 4 uses
  %.not127 = icmp eq ptr %i.s, %i.t
  br i1 %.not127, label %._crit_edge118, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %bb.c
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 2408
  br label %.lr.ph117

._crit_edge118:                                   ; preds = %._crit_edge.a, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store i32 0, ptr %i.y, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !277 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !277 ; 2 uses
  %.not111119 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not111119, label %._crit_edge124, label %.lr.ph123

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %._crit_edge.a
  %.promoted = phi i32 [ %.promoted130, %._crit_edge.a ], [ 0, %.lr.ph117.preheader ] ; 4 uses
  %.075115 = phi i64 [ %i.bi, %._crit_edge.a ], [ 0, %.lr.ph117.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [2408 x i8], ptr %i.t, i64 %.075115
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !287 ; 4 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %iter.check, label %._crit_edge.a

iter.check:                                       ; preds = %.lr.ph117
  %i.ah = getelementptr inbounds [48 x i8], ptr %3, i64 %.075115
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.af to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.af, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check149 = icmp ult i32 %i.af, 32
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.promoted, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi150 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi151 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi152 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.az, %vector.body ]
  %i.ak = getelementptr [4 x i8], ptr %i.ai, i64 %index ; 8 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 32
  %i.am = getelementptr i8, ptr %i.ak, i64 64
  %i.an = getelementptr i8, ptr %i.ak, i64 96
  %wide.load = load <8 x i32>, ptr %i.ak, align 4, !tbaa !25
  %wide.load153 = load <8 x i32>, ptr %i.al, align 4, !tbaa !25
  %wide.load154 = load <8 x i32>, ptr %i.am, align 4, !tbaa !25
  %wide.load155 = load <8 x i32>, ptr %i.an, align 4, !tbaa !25
  %i.ao = getelementptr i8, ptr %i.ak, i64 4
  %i.ap = getelementptr i8, ptr %i.ak, i64 36
  %i.aq = getelementptr i8, ptr %i.ak, i64 68
  %i.ar = getelementptr i8, ptr %i.ak, i64 100
  %wide.load156 = load <8 x i32>, ptr %i.ao, align 4, !tbaa !25
  %wide.load157 = load <8 x i32>, ptr %i.ap, align 4, !tbaa !25
  %wide.load158 = load <8 x i32>, ptr %i.aq, align 4, !tbaa !25
  %wide.load159 = load <8 x i32>, ptr %i.ar, align 4, !tbaa !25
  %i.as = sub <8 x i32> %wide.load156, %wide.load
  %i.at = sub <8 x i32> %wide.load157, %wide.load153
  %i.au = sub <8 x i32> %wide.load158, %wide.load154
  %i.av = sub <8 x i32> %wide.load159, %wide.load155
  %i.aw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %i.as) ; 2 uses
  %i.ax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi150, <8 x i32> %i.at) ; 2 uses
  %i.ay = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi151, <8 x i32> %i.au) ; 2 uses
  %i.az = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi152, <8 x i32> %i.av) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aw, <8 x i32> %i.ax)
  %rdx.minmax160 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.ay)
  %rdx.minmax161 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax160, <8 x i32> %i.az)
  %i.bb = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax161) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bb, %vec.epilog.iter.check ], [ %.promoted, %vector.main.loop.iter.check ]
  %broadcast.splatinsert164 = insertelement <4 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat165 = shufflevector <4 x i32> %broadcast.splatinsert164, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec162 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index163 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next169, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi166 = phi <4 x i32> [ %broadcast.splat165, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %i.bc = getelementptr [4 x i8], ptr %i.ai, i64 %index163 ; 2 uses
  %wide.load167 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !25
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %wide.load168 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !25
  %i.be = sub <4 x i32> %wide.load168, %wide.load167
  %i.bf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi166, <4 x i32> %i.be) ; 2 uses
  %index.next169 = add nuw i64 %index163, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next169, %n.vec162
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !266

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bh = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.bf) ; 2 uses
  %cmp.n170 = icmp eq i64 %n.vec162, %wide.trip.count
  br i1 %cmp.n170, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec162, %vec.epilog.middle.block ]
  %.ph = phi i32 [ %.promoted, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.sroa.speculated.lcssa = phi i32 [ %i.bh, %vec.epilog.middle.block ], [ %i.bb, %middle.block ], [ %.sroa.speculated, %vec.epilog.scalar.ph ] ; 2 uses
  store i32 %.sroa.speculated.lcssa, ptr %i.p, align 4, !tbaa !25
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge, %.lr.ph117
  %.promoted130 = phi i32 [ %.sroa.speculated.lcssa, %._crit_edge ], [ %.promoted, %.lr.ph117 ]
  %i.bi = add nuw i64 %.075115, 1                 ; 2 uses
  %exitcond129.not = icmp eq i64 %i.bi, %i.x
  br i1 %exitcond129.not, label %._crit_edge118, label %.lr.ph117, !llvm.loop !267

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bj = phi i32 [ %.sroa.speculated, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %i.bk = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !25
  %i.bm = getelementptr i8, ptr %i.bk, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !25
  %i.bo = sub i32 %i.bn, %i.bl
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.bj, i32 %i.bo) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !268

._crit_edge124.loopexit:                          ; preds = %_ZN3gmxL36more_than_two_sequential_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE.exit
  store i32 %i.cb, ptr %i.y, align 8, !tbaa !78
  %i.bp = trunc nuw i8 %.1 to i1
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %._crit_edge124.loopexit, %._crit_edge118
  %.078.lcssa = phi i1 [ false, %._crit_edge118 ], [ %i.bp, %._crit_edge124.loopexit ] ; 2 uses
  br i1 %5, label %bb.g, label %.thread

.thread:                                          ; preds = %._crit_edge124
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store i8 0, ptr %i.bq, align 8, !tbaa !84
  br label %bb.i

.lr.ph123:                                        ; preds = %._crit_edge118, %_ZN3gmxL36more_than_two_sequential_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE.exit
  %i.br = phi i32 [ %i.cb, %_ZN3gmxL36more_than_two_sequential_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE.exit ], [ 0, %._crit_edge118 ]
  %.078121 = phi i8 [ %.1, %_ZN3gmxL36more_than_two_sequential_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE.exit ], [ 0, %._crit_edge118 ]
  %.sroa.0100.0120 = phi ptr [ %i.dy, %_ZN3gmxL36more_than_two_sequential_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE.exit ], [ %i.aa, %._crit_edge118 ] ; 3 uses
  %i.bs = load i32, ptr %.sroa.0100.0120, align 8, !tbaa !289
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds nuw [2408 x i8], ptr %i.t, i64 %i.bt ; 5 uses
  %i.bv = getelementptr inbounds [48 x i8], ptr %3, i64 %i.bt ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0100.0120, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !290
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.bz = tail call noundef i32 @_ZN3gmx26count_triangle_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE(ptr noundef nonnull align 8 dereferenceable(2280) %i.by, ptr noundef nonnull align 8 dereferenceable(48) %i.bv)
  %i.ca = mul nsw i32 %i.bz, %i.bx
  %i.cb = add nsw i32 %i.br, %i.ca                ; 2 uses
  %i.cc = trunc nuw i8 %.078121 to i1
  br i1 %i.cc, label %_ZN3gmxL36more_than_two_sequential_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph123
  %.val = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 1568
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 1576
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !23
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !24 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = lshr exact i64 %i.cj, 2
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = sdiv i32 %i.cl, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 1592
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 1600
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !23
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !24 ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = lshr exact i64 %i.ct, 2
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = sdiv i32 %i.cv, 3
  %i.cx = add nsw i32 %i.cw, %i.cm                ; 2 uses
  %i.cy = ashr exact i64 %i.cj, 2                 ; 2 uses
  %.not11.i = icmp sgt i32 %i.cx, 0
  br i1 %.not11.i, label %.lr.ph.i, label %_ZN3gmxL36more_than_two_sequential_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.cz = sub nsw i64 0, %i.cy
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cq, i64 %i.cz
  %wide.trip.count.i = zext nneg i32 %i.cx to i64
  br label %bb.e

bb.e:                                             ; preds = %.critedge22.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge22.i ] ; 2 uses
  %i.da = mul nuw nsw i64 %indvars.iv.i, 3        ; 2 uses
  %i.db = icmp sgt i64 %i.cy, %i.da
  %.0.i.v.i = select i1 %i.db, ptr %i.cg, ptr %invariant.gep.i
  %.0.i.i = getelementptr [4 x i8], ptr %.0.i.v.i, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !25
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr [4 x i8], ptr %.val, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !25
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr i8, ptr %i.df, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !25
  %i.dk = sext i32 %i.dj to i64
  %i.dl = sub nsw i64 %i.dk, %i.dh
  %i.dm = icmp sgt i64 %i.dl, 1
  br i1 %i.dm, label %bb.f, label %.critedge22.i

bb.f:                                             ; preds = %bb.e
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !25
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr [4 x i8], ptr %.val, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !25
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %i.dq, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !25
  %i.dv = sext i32 %i.du to i64
  %i.dw = sub nsw i64 %i.dv, %i.ds
  %i.dx = icmp sgt i64 %i.dw, 1
  br i1 %i.dx, label %_ZN3gmxL36more_than_two_sequential_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE.exit, label %.critedge22.i

.critedge22.i:                                    ; preds = %bb.f, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN3gmxL36more_than_two_sequential_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE.exit, label %bb.e, !llvm.loop !269

_ZN3gmxL36more_than_two_sequential_constraintsERKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEERKNS_11ListOfListsIiEE.exit: ; preds = %.critedge22.i, %bb.f, %bb.d, %.lr.ph123
  %.1 = phi i8 [ 1, %.lr.ph123 ], [ 0, %bb.d ], [ 0, %.critedge22.i ], [ 1, %bb.f ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0100.0120, i64 56 ; 2 uses
  %.not111 = icmp eq ptr %i.dy, %i.ac
  br i1 %.not111, label %._crit_edge124.loopexit, label %.lr.ph123

bb.g:                                             ; preds = %._crit_edge124
  %i.dz = icmp slt i32 %7, 1
  %i.ea = select i1 %i.dz, i1 true, i1 %.078.lcssa ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.ec = zext i1 %i.ea to i8
  store i8 %i.ec, ptr %i.eb, align 8, !tbaa !84
  %i.ed = load ptr, ptr @debug, align 8, !tbaa !90 ; 2 uses
  %.not112 = icmp eq ptr %i.ed, null
  br i1 %.not112, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ee = zext i1 %i.ea to i32
  %i.ef = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.4, i32 noundef %i.ee) #19 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h, %bb.g
  %i.eg = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 8) ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i32 %i.eg, ptr %i.eh, align 8, !tbaa !91
  %i.ei = icmp sgt i32 %i.eg, 1
  %i.ej = select i1 %i.ei, i1 %.078.lcssa, i1 false ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.el = zext i1 %i.ej to i8
  store i8 %i.el, ptr %i.ek, align 8, !tbaa !92
  %i.em = load ptr, ptr @debug, align 8, !tbaa !90 ; 2 uses
  %.not86 = icmp eq ptr %i.em, null
  br i1 %.not86, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.en = select i1 %i.ej, ptr @.str.3, ptr @.str.6
  %i.eo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.em, ptr noundef nonnull @.str.5, i32 noundef %i.eg, ptr noundef nonnull %i.en) #19 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ep = icmp eq i32 %i.eg, 1
  %i.eq = add nsw i32 %i.eg, 1
  %narrow = select i1 %i.ep, i32 1, i32 %i.eq
  %.sink = sext i32 %narrow to i64
  tail call fastcc void @_ZNSt6vectorIN12_GLOBAL__N_14TaskESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.sink)
  br i1 %5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.er = load i32, ptr %i.y, align 8, !tbaa !78
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %bb.m, label %.thread109

bb.m:                                             ; preds = %bb.k, %bb.l
  tail call void @_Z11please_citeP8_IO_FILEPKc(ptr noundef %0, ptr noundef nonnull @.str.7)
  br i1 %.not, label %bb.r, label %bb.n

.thread109:                                       ; preds = %bb.l
  tail call void @_Z11please_citeP8_IO_FILEPKc(ptr noundef %0, ptr noundef nonnull @.str.8)
  br i1 %.not, label %bb.r, label %.thread110

.thread110:                                       ; preds = %.thread109
  %i.et = load i32, ptr %i.c, align 8, !tbaa !270
  %i.eu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %i.et) #19 ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ev = load i32, ptr %i.c, align 8, !tbaa !270
  %i.ew = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %i.ev) #19 ; 0 uses
  br i1 %5, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.10, i64 131, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %.thread110, %bb.o, %bb.n
  %i.ex = load i32, ptr %i.y, align 8, !tbaa !78  ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ez = load i32, ptr %i.o, align 8, !tbaa !77
  %i.fa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %i.ex, i32 noundef %i.ez) #19 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.thread109, %bb.p, %bb.q, %bb.m
  %.not87 = icmp eq ptr %8, null
  br i1 %.not87, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.fb = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.fe, align 8
  store i64 %i.fb, ptr %9, align 8, !tbaa !94
  store ptr @"_ZNSt17_Function_handlerIFvOSt8functionIFN3gmx24ObservablesReducerStatusENS1_20ReductionRequirementEEENS1_8ArrayRefIdEEEZNS1_10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS7_IKNS1_11ListOfListsIiEEEEbiiPNS1_25ObservablesReducerBuilderEE3$_0E9_M_invokeERKSt9_Any_dataS6_OS8_", ptr %i.fd, align 8, !tbaa !292
  store ptr @"_ZNSt17_Function_handlerIFvOSt8functionIFN3gmx24ObservablesReducerStatusENS1_20ReductionRequirementEEENS1_8ArrayRefIdEEEZNS1_10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS7_IKNS1_11ListOfListsIiEEEEbiiPNS1_25ObservablesReducerBuilderEE3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation", ptr %i.fc, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.fh, align 8
  store i64 %i.fb, ptr %10, align 8, !tbaa !94
  store ptr @"_ZNSt17_Function_handlerIFvlEZN3gmx10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS1_8ArrayRefIKNS1_11ListOfListsIiEEEEbiiPNS1_25ObservablesReducerBuilderEE3$_1E9_M_invokeERKSt9_Any_dataOl", ptr %i.fg, align 8, !tbaa !294
  store ptr @"_ZNSt17_Function_handlerIFvlEZN3gmx10init_lincsEP8_IO_FILERK10gmx_mtop_tiNS1_8ArrayRefIKNS1_11ListOfListsIiEEEEbiiPNS1_25ObservablesReducerBuilderEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.ff, align 8, !tbaa !96
  invoke void @_ZN3gmx25ObservablesReducerBuilder13addSubscriberEiOSt8functionIFvOS1_IFNS_24ObservablesReducerStatusENS_20ReductionRequirementEEENS_8ArrayRefIdEEEEOS1_IFvlEE(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !96 ; 2 uses
  %.not.i = icmp eq ptr %i.fi, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fj = invoke noundef zeroext i1 %i.fi(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #38
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.t, %bb.u
end_hunk_0

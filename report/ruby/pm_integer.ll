inline.NumInlined: 29
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@pm_integer_string:bb.a
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %pm_integer_free.exit, label %bb.h

pm_integer_free.exit:                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !30
  tail call void (ptr, ptr, ...) @pm_buffer_append_format(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %i.p) #16
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr %2, align 8, !tbaa !16     ; 3 uses
  %i.r = mul i64 %i.q, 9                          ; 4 uses
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 1) #15 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %.preheader42

.preheader42:                                     ; preds = %bb.h
  %invariant.gep = getelementptr i8, ptr %i.s, i64 %i.r
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.lr.ph47.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.u = add i64 %i.r, -1                         ; 2 uses
  %.not50 = icmp eq i64 %i.u, 0
  br i1 %.not50, label %pm_integer_free.exit41, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %.preheader42, %.preheader
  %i.v = phi i64 [ %i.u, %.preheader ], [ -1, %.preheader42 ] ; 2 uses
  br label %.lr.ph47

.lr.ph:                                           ; preds = %.preheader42, %.lr.ph
  %.03745 = phi i64 [ %i.bh, %.lr.ph ], [ 0, %.preheader42 ] ; 3 uses
  %i.w = getelementptr [4 x i8], ptr %i.m, i64 %.03745
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7    ; 9 uses
  %.neg = mul i64 %.03745, -9
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.neg ; 6 uses
  %i.y = urem i32 %i.x, 10
  %i.z = trunc nuw nsw i32 %i.y to i8
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr i8, ptr %gep, i64 -1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !11
  %i.ac = getelementptr i8, ptr %gep, i64 -5
  %i.ad = udiv i32 %i.x, 10
  %i.ae = udiv i32 %i.x, 100
  %i.af = udiv i32 %i.x, 1000
  %i.ag = udiv i32 %i.x, 10000
  %i.ah = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.af, i64 1
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.ae, i64 2
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ad, i64 3
  %i.al = urem <4 x i32> %i.ak, splat (i32 10)
  %i.am = trunc nuw nsw <4 x i32> %i.al to <4 x i8>
  %i.an = or disjoint <4 x i8> %i.am, splat (i8 48)
  store <4 x i8> %i.an, ptr %i.ac, align 1, !tbaa !11
  %i.ao = udiv i32 %i.x, 100000
  %.lhs.trunc = trunc nuw i32 %i.ao to i16
  %i.ap = urem i16 %.lhs.trunc, 10
  %i.aq = trunc nuw nsw i16 %i.ap to i8
  %i.ar = or disjoint i8 %i.aq, 48
  %i.as = getelementptr i8, ptr %gep, i64 -6
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !11
  %i.at = udiv i32 %i.x, 1000000
  %.lhs.trunc58 = trunc nuw nsw i32 %i.at to i16
  %i.au = urem i16 %.lhs.trunc58, 10
  %i.av = trunc nuw nsw i16 %i.au to i8
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = getelementptr i8, ptr %gep, i64 -7
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !11
  %i.ay = udiv i32 %i.x, 10000000
  %.lhs.trunc60 = trunc nuw nsw i32 %i.ay to i16
  %i.az = urem i16 %.lhs.trunc60, 10
  %i.ba = trunc nuw nsw i16 %i.az to i8
  %i.bb = or disjoint i8 %i.ba, 48
  %i.bc = getelementptr i8, ptr %gep, i64 -8
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !11
  %i.bd = udiv i32 %i.x, 100000000
  %.lhs.trunc62 = trunc nuw nsw i32 %i.bd to i8
  %i.be = urem i8 %.lhs.trunc62, 10
  %i.bf = or disjoint i8 %i.be, 48
  %i.bg = getelementptr i8, ptr %gep, i64 -9
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !11
  %i.bh = add nuw i64 %.03745, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.q
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !36

.lr.ph47:                                         ; preds = %.lr.ph47.preheader, %bb.i
  %.046 = phi i64 [ %i.bl, %bb.i ], [ 0, %.lr.ph47.preheader ] ; 3 uses
  %i.bi = getelementptr i8, ptr %i.s, i64 %.046
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = icmp eq i8 %i.bj, 48
  br i1 %i.bk, label %bb.i, label %pm_integer_free.exit41

bb.i:                                             ; preds = %.lr.ph47
  %i.bl = add nuw i64 %.046, 1                    ; 2 uses
  %exitcond51.not = icmp eq i64 %i.bl, %i.v
  br i1 %exitcond51.not, label %pm_integer_free.exit41, label %.lr.ph47, !llvm.loop !37

pm_integer_free.exit41:                           ; preds = %.lr.ph47, %bb.i, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.v, %bb.i ], [ %.046, %.lr.ph47 ] ; 2 uses
  %i.bm = getelementptr i8, ptr %i.s, i64 %.0.lcssa
  %i.bn = sub i64 %i.r, %.0.lcssa
  tail call void @pm_buffer_append_string(ptr noundef %0, ptr noundef %i.bm, i64 noundef %i.bn) #16
  tail call void @free(ptr noundef %i.s) #16
  tail call void @free(ptr noundef nonnull %i.m) #16
  br label %bb.j

bb.j:                                             ; preds = %pm_integer_free.exit41, %bb.h, %pm_integer_free.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.d
  ret void
}

declare void @pm_buffer_append_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @pm_buffer_append_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_integer_convert_base(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 1000000000, 4294967297) %2, i64 noundef range(i64 1000000000, 4294967297) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.pm_integer_t, align 8       ; 12 uses
  %5 = alloca %struct.pm_integer_t, align 8       ; 4 uses
  %6 = alloca %struct.pm_integer_t, align 8       ; 7 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread140, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.e = add i64 %i.d, 1
  %i.f = lshr i64 %i.e, 1                         ; 4 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 340, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_integer_convert_base) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 24) #15 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.ae, label %.preheader

.thread140:                                       ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #15 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.ae, label %.lr.ph.preheader

.preheader:                                       ; preds = %bb.d
  %.not111 = icmp eq i64 %i.d, 0
  br i1 %.not111, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread140, %.preheader
  %i.l = phi i64 [ %i.f, %.preheader ], [ 1, %.thread140 ]
  %.057101143149 = phi i64 [ %i.d, %.preheader ], [ 1, %.thread140 ] ; 2 uses
  %.058100144148 = phi ptr [ %i.b, %.preheader ], [ %i.i, %.thread140 ] ; 2 uses
  %i.m = phi ptr [ %i.g, %.preheader ], [ %i.j, %.thread140 ] ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %pm_integer_from_uint64.exit80, %.preheader
  %i.n = phi i64 [ %i.f, %.preheader ], [ %i.l, %pm_integer_from_uint64.exit80 ] ; 2 uses
  %i.o = phi ptr [ %i.g, %.preheader ], [ %i.m, %pm_integer_from_uint64.exit80 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.p = icmp samesign ult i64 %2, %3
  br i1 %i.p, label %bb.e, label %.preheader29.i

bb.e:                                             ; preds = %._crit_edge
  %i.q = trunc nuw i64 %2 to i32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !30
  br label %pm_integer_from_uint64.exit

.preheader29.i:                                   ; preds = %._crit_edge, %.preheader29.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader29.i ], [ 1, %._crit_edge ] ; 5 uses
  %.02431.i = phi i64 [ %i.t, %.preheader29.i ], [ %2, %._crit_edge ] ; 2 uses
  %.02530.i = phi i64 [ %i.s, %.preheader29.i ], [ 0, %._crit_edge ]
  %i.s = add i64 %.02530.i, 1                     ; 4 uses
  %i.t = udiv i64 %.02431.i, %3
  %.not.i = icmp samesign ugt i64 %3, %.02431.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %.not.i, label %bb.f, label %.preheader29.i, !llvm.loop !38

bb.f:                                             ; preds = %.preheader29.i
  %i.u = shl i64 %i.s, 2
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #14 ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %pm_integer_from_uint64.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %.not34.i = icmp eq i64 %i.s, 0
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.x = icmp eq i64 %indvars.iv.i, 1
  br i1 %i.x, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter166 = and i64 %indvars.iv.i, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod164.not = trunc nuw i64 %indvars.iv.i to i1
  br i1 %lcmp.mod164.not, label %.lr.ph.i.epil.preheader, label %._crit_edge.i

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.033.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ]
  %.02332.i.epil.init = phi i64 [ %2, %.lr.ph.i.preheader ], [ %i.ak, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod165 = trunc nuw i64 %indvars.iv.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod165)
  %i.y = urem i64 %.02332.i.epil.init, %3
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = getelementptr [4 x i8], ptr %i.v, i64 %.033.i.epil.init
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  store i64 %i.s, ptr %4, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.v, ptr %i.ab, align 8, !tbaa !22
  br label %pm_integer_from_uint64.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.033.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.al, %.lr.ph.i ] ; 3 uses
  %.02332.i = phi i64 [ %2, %.lr.ph.i.preheader.new ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %niter167 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter167.next.1, %.lr.ph.i ]
  %i.ac = urem i64 %.02332.i, %3
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = getelementptr [4 x i8], ptr %i.v, i64 %.033.i
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !7
  %i.af = udiv i64 %.02332.i, %3                  ; 2 uses
  %i.ag = urem i64 %i.af, %3
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = getelementptr [4 x i8], ptr %i.v, i64 %.033.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !7
  %i.ak = udiv i64 %i.af, %3                      ; 2 uses
  %i.al = add nuw i64 %.033.i, 2                  ; 2 uses
  %niter167.next.1 = add i64 %niter167, 2         ; 2 uses
  %niter167.ncmp.1 = icmp eq i64 %niter167.next.1, %unroll_iter166
  br i1 %niter167.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !39

pm_integer_from_uint64.exit:                      ; preds = %bb.e, %bb.f, %._crit_edge.i
  %i.am = icmp samesign ugt i64 %i.n, 1
  br i1 %i.am, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %pm_integer_from_uint64.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %pm_integer_from_uint64.exit80
  %.060105 = phi i64 [ %i.ca, %pm_integer_from_uint64.exit80 ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.aq = getelementptr [4 x i8], ptr %.058100144148, i64 %.060105
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = zext i32 %i.ar to i64
  %i.at = or disjoint i64 %.060105, 1             ; 2 uses
  %i.au = icmp ult i64 %i.at, %.057101143149
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.av = getelementptr [4 x i8], ptr %.058100144148, i64 %i.at
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw i64 %2, %i.ax
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.az = phi i64 [ %i.ay, %bb.g ], [ 0, %.lr.ph ]
  %i.ba = add nuw i64 %i.az, %i.as                ; 5 uses
  %i.bb = lshr exact i64 %.060105, 1
  %i.bc = getelementptr [24 x i8], ptr %i.m, i64 %i.bb ; 3 uses
  %i.bd = icmp ult i64 %i.ba, %3
  br i1 %i.bd, label %bb.i, label %.preheader29.i67

bb.i:                                             ; preds = %bb.h
  %i.be = trunc nuw i64 %i.ba to i32
  %i.bf = getelementptr i8, ptr %i.bc, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !30
  br label %pm_integer_from_uint64.exit80

.preheader29.i67:                                 ; preds = %bb.h, %.preheader29.i67
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i72, %.preheader29.i67 ], [ 1, %bb.h ] ; 5 uses
  %.02431.i69 = phi i64 [ %i.bh, %.preheader29.i67 ], [ %i.ba, %bb.h ] ; 2 uses
  %.02530.i70 = phi i64 [ %i.bg, %.preheader29.i67 ], [ 0, %bb.h ]
  %i.bg = add i64 %.02530.i70, 1                  ; 4 uses
  %i.bh = udiv i64 %.02431.i69, %3
  %.not.i71 = icmp ugt i64 %3, %.02431.i69
  %indvars.iv.next.i72 = add i64 %indvars.iv.i68, 1
  br i1 %.not.i71, label %bb.j, label %.preheader29.i67, !llvm.loop !38

bb.j:                                             ; preds = %.preheader29.i67
  %i.bi = shl i64 %i.bg, 2
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bi) #14 ; 5 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %pm_integer_from_uint64.exit80, label %.preheader.i73

.preheader.i73:                                   ; preds = %bb.j
  %.not34.i74 = icmp eq i64 %i.bg, 0
  br i1 %.not34.i74, label %._crit_edge.i79, label %.lr.ph.i75.preheader

.lr.ph.i75.preheader:                             ; preds = %.preheader.i73
  %i.bl = icmp eq i64 %indvars.iv.i68, 1
  br i1 %i.bl, label %.lr.ph.i75.epil.preheader, label %.lr.ph.i75.preheader.new

.lr.ph.i75.preheader.new:                         ; preds = %.lr.ph.i75.preheader
  %unroll_iter = and i64 %indvars.iv.i68, -2
  br label %.lr.ph.i75

._crit_edge.i79.loopexit.unr-lcssa:               ; preds = %.lr.ph.i75
  %lcmp.mod.not = trunc nuw i64 %indvars.iv.i68 to i1
  br i1 %lcmp.mod.not, label %.lr.ph.i75.epil.preheader, label %._crit_edge.i79

.lr.ph.i75.epil.preheader:                        ; preds = %._crit_edge.i79.loopexit.unr-lcssa, %.lr.ph.i75.preheader
  %.033.i76.epil.init = phi i64 [ 0, %.lr.ph.i75.preheader ], [ %i.bz, %._crit_edge.i79.loopexit.unr-lcssa ]
  %.02332.i77.epil.init = phi i64 [ %i.ba, %.lr.ph.i75.preheader ], [ %i.by, %._crit_edge.i79.loopexit.unr-lcssa ]
  %lcmp.mod162 = trunc nuw i64 %indvars.iv.i68 to i1
  tail call void @llvm.assume(i1 %lcmp.mod162)
  %i.bm = urem i64 %.02332.i77.epil.init, %3
  %i.bn = trunc nuw i64 %i.bm to i32
  %i.bo = getelementptr [4 x i8], ptr %i.bj, i64 %.033.i76.epil.init
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !7
  br label %._crit_edge.i79

._crit_edge.i79:                                  ; preds = %.lr.ph.i75.epil.preheader, %._crit_edge.i79.loopexit.unr-lcssa, %.preheader.i73
  store i64 %i.bg, ptr %i.bc, align 8, !tbaa !16
  %i.bp = getelementptr i8, ptr %i.bc, i64 8
  store ptr %i.bj, ptr %i.bp, align 8, !tbaa !22
  br label %pm_integer_from_uint64.exit80

.lr.ph.i75:                                       ; preds = %.lr.ph.i75, %.lr.ph.i75.preheader.new
  %.033.i76 = phi i64 [ 0, %.lr.ph.i75.preheader.new ], [ %i.bz, %.lr.ph.i75 ] ; 3 uses
  %.02332.i77 = phi i64 [ %i.ba, %.lr.ph.i75.preheader.new ], [ %i.by, %.lr.ph.i75 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i75.preheader.new ], [ %niter.next.1, %.lr.ph.i75 ]
  %i.bq = urem i64 %.02332.i77, %3
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = getelementptr [4 x i8], ptr %i.bj, i64 %.033.i76
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !7
  %i.bt = udiv i64 %.02332.i77, %3                ; 2 uses
  %i.bu = urem i64 %i.bt, %3
  %i.bv = trunc nuw i64 %i.bu to i32
  %i.bw = getelementptr [4 x i8], ptr %i.bj, i64 %.033.i76
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !7
  %i.by = udiv i64 %i.bt, %3                      ; 2 uses
  %i.bz = add nuw i64 %.033.i76, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i79.loopexit.unr-lcssa, label %.lr.ph.i75, !llvm.loop !39

pm_integer_from_uint64.exit80:                    ; preds = %bb.i, %bb.j, %._crit_edge.i79
  %i.ca = add i64 %.060105, 2                     ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %.057101143149
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !40

bb.k:                                             ; preds = %.lr.ph109, %bb.m
  %.059108 = phi i64 [ %i.n, %.lr.ph109 ], [ %i.ce, %bb.m ] ; 4 uses
  %.061107 = phi ptr [ %i.o, %.lr.ph109 ], [ %i.cf, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call fastcc void @karatsuba_multiply(ptr noundef %5, ptr noundef %4, ptr noundef nonnull %4, i64 noundef %3)
  %i.cc = load ptr, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %.not.i81 = icmp eq ptr %i.cc, null
  br i1 %.not.i81, label %pm_integer_free.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.cc) #16
  br label %pm_integer_free.exit

pm_integer_free.exit:                             ; preds = %bb.k, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !41
  %i.cd = add nuw i64 %.059108, 1
  %i.ce = lshr i64 %i.cd, 1                       ; 2 uses
  %i.cf = call noalias ptr @calloc(i64 noundef %i.ce, i64 noundef 24) #15 ; 4 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.ab
  call void @free(ptr noundef nonnull %.061107) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.cg = icmp ugt i64 %.059108, 2
  br i1 %i.cg, label %bb.k, label %._crit_edge110, !llvm.loop !43

bb.n:                                             ; preds = %pm_integer_free.exit, %bb.ab
  %.0106 = phi i64 [ 0, %pm_integer_free.exit ], [ %i.dz, %bb.ab ] ; 6 uses
  %i.ch = or disjoint i64 %.0106, 1               ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %.059108
  br i1 %i.ci, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cj = lshr exact i64 %.0106, 1
  %i.ck = getelementptr [24 x i8], ptr %i.cf, i64 %i.cj
  %i.cl = getelementptr [24 x i8], ptr %.061107, i64 %.0106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false), !tbaa.struct !41
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.cm = getelementptr [24 x i8], ptr %.061107, i64 %i.ch ; 2 uses
  call fastcc void @karatsuba_multiply(ptr noundef %6, ptr noundef %4, ptr noundef %i.cm, i64 noundef %3)
  %i.cn = lshr exact i64 %.0106, 1
  %i.co = getelementptr [24 x i8], ptr %i.cf, i64 %i.cn ; 3 uses
  %i.cp = getelementptr [24 x i8], ptr %.061107, i64 %.0106 ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8      ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !22 ; 3 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr i8, ptr %i.cp, i64 16
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cu = load i64, ptr %i.cp, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.039.i = phi ptr [ %i.ct, %bb.q ], [ %i.cr, %bb.r ]
  %.0.i = phi i64 [ 1, %bb.q ], [ %i.cu, %bb.r ]  ; 2 uses
  %i.cv = load ptr, ptr %i.ao, align 8, !tbaa !22 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null                 ; 3 uses
  %i.cx = load i64, ptr %6, align 8
  %.041.i = select i1 %i.cw, ptr %i.ap, ptr %i.cv
  %.040.i = select i1 %i.cw, i64 1, i64 %i.cx     ; 2 uses
  %i.cy = call i64 @llvm.umax.i64(i64 %.0.i, i64 %.040.i) ; 5 uses
  %i.cz = add i64 %i.cy, 1                        ; 2 uses
  %i.da = shl i64 %i.cz, 2
  %i.db = call noalias ptr @malloc(i64 noundef %i.da) #14 ; 4 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %big_add.exit, label %.preheader.i82

.preheader.i82:                                   ; preds = %bb.s
  %.not51.i = icmp eq i64 %i.cy, 0
  br i1 %.not51.i, label %._crit_edge.thread.i, label %.lr.ph.i83

._crit_edge.i85:                                  ; preds = %bb.w
  %.not.i86 = icmp ugt i64 %3, %i.do
  br i1 %.not.i86, label %._crit_edge.thread.i, label %bb.x

.lr.ph.i83:                                       ; preds = %.preheader.i82, %bb.w
  %.04350.i = phi i64 [ %i.dt, %bb.w ], [ 0, %.preheader.i82 ] ; 6 uses
  %.04449.i = phi i64 [ %i.ds, %bb.w ], [ 0, %.preheader.i82 ]
  %i.dd = icmp ult i64 %.04350.i, %.0.i
  br i1 %i.dd, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i83
  %i.de = getelementptr [4 x i8], ptr %.039.i, i64 %.04350.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = zext i32 %i.df to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i83
  %i.dh = phi i64 [ %i.dg, %bb.t ], [ 0, %.lr.ph.i83 ]
  %i.di = add nuw nsw i64 %i.dh, %.04449.i
  %i.dj = icmp ult i64 %.04350.i, %.040.i
  br i1 %i.dj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr [4 x i8], ptr %.041.i, i64 %.04350.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = zext i32 %i.dl to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dn = phi i64 [ %i.dm, %bb.v ], [ 0, %bb.u ]
  %i.do = add nuw nsw i64 %i.di, %i.dn            ; 3 uses
  %i.dp = urem i64 %i.do, %3
  %i.dq = trunc nuw i64 %i.dp to i32
  %i.dr = getelementptr [4 x i8], ptr %i.db, i64 %.04350.i
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !7
  %i.ds = udiv i64 %i.do, %3                      ; 2 uses
  %i.dt = add nuw i64 %.04350.i, 1                ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %i.dt, %i.cy
  br i1 %exitcond.not.i84, label %._crit_edge.i85, label %.lr.ph.i83, !llvm.loop !44

bb.x:                                             ; preds = %._crit_edge.i85
  %i.du = trunc nuw nsw i64 %i.ds to i32
  %i.dv = getelementptr [4 x i8], ptr %i.db, i64 %i.cy
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !7
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.x, %._crit_edge.i85, %.preheader.i82
  %.042.i = phi i64 [ %i.cz, %bb.x ], [ %i.cy, %._crit_edge.i85 ], [ 0, %.preheader.i82 ]
  store i64 %.042.i, ptr %i.co, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.db, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !27
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.pre = load ptr, ptr %i.cq, align 8, !tbaa !22
  br label %big_add.exit

big_add.exit:                                     ; preds = %bb.s, %._crit_edge.thread.i
  %i.dw = phi ptr [ %i.cr, %bb.s ], [ %.pre, %._crit_edge.thread.i ] ; 2 uses
  %.not.i87 = icmp eq ptr %i.dw, null
  br i1 %.not.i87, label %pm_integer_free.exit88, label %bb.y

bb.y:                                             ; preds = %big_add.exit
  call void @free(ptr noundef nonnull %i.dw) #16
  br label %pm_integer_free.exit88

pm_integer_free.exit88:                           ; preds = %big_add.exit, %bb.y
  %i.dx = getelementptr i8, ptr %i.cm, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !22 ; 2 uses
  %.not.i89 = icmp eq ptr %i.dy, null
  br i1 %.not.i89, label %pm_integer_free.exit90, label %bb.z

bb.z:                                             ; preds = %pm_integer_free.exit88
  call void @free(ptr noundef nonnull %i.dy) #16
  br label %pm_integer_free.exit90

pm_integer_free.exit90:                           ; preds = %pm_integer_free.exit88, %bb.z
  br i1 %i.cw, label %pm_integer_free.exit92, label %bb.aa

bb.aa:                                            ; preds = %pm_integer_free.exit90
  call void @free(ptr noundef nonnull %i.cv) #16
  br label %pm_integer_free.exit92

pm_integer_free.exit92:                           ; preds = %pm_integer_free.exit90, %bb.aa
end_hunk_0

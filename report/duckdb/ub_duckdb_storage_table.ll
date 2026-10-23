Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_table?download=true
inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 651
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIaEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a

bb.i:                                             ; preds = %.lr.ph45, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %.03344 = phi i64 [ 0, %.lr.ph45 ], [ %i.aj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !959
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !305 ; 2 uses
  %.not.i35 = icmp eq ptr %i.aa, null
  br i1 %.not.i35, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.03344
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !206
  %i.ad = zext i32 %i.ac to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.i, %bb.j
  %i.ae = phi i64 [ %i.ad, %bb.j ], [ %.03344, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !273 ; 2 uses
  %i.ah = load i8, ptr %i.f, align 8, !tbaa !273
  %.sroa.speculated10.i.i.i = tail call i8 @llvm.smin.i8(i8 %i.ah, i8 %i.ag)
  store i8 %.sroa.speculated10.i.i.i, ptr %i.f, align 8, !tbaa !273
  %i.ai = load i8, ptr %i.g, align 8, !tbaa !273
  %.sroa.speculated.i.i.i = tail call i8 @llvm.smax.i8(i8 %i.ag, i8 %i.ai)
  store i8 %.sroa.speculated.i.i.i, ptr %i.g, align 8, !tbaa !273
  %i.aj = add nuw i64 %.03344, 1                  ; 2 uses
  %exitcond48.not = icmp eq i64 %i.aj, %3
  br i1 %exitcond48.not, label %._crit_edge, label %bb.i, !llvm.loop !4696

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2048)
  %.not46 = icmp eq i64 %3, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.o
  %.043 = phi i64 [ 0, %.lr.ph ], [ %i.bj, %bb.o ] ; 4 uses
  %.03142 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.o ] ; 3 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !959
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !305 ; 2 uses
  %.not.i36 = icmp eq ptr %i.ap, null
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.043
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !206
  %i.as = zext i32 %i.ar to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37

_ZNK6duckdb15SelectionVector9get_indexEm.exit37:  ; preds = %bb.l, %bb.m
  %i.at = phi i64 [ %i.as, %bb.m ], [ %.043, %bb.l ] ; 3 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !267 ; 2 uses
  %.not.i38 = icmp eq ptr %i.au, null
  br i1 %.not.i38, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37
  %i.av = lshr i64 %i.at, 6
  %i.aw = and i64 %i.at, 63
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !218
  %i.az = shl nuw i64 1, %i.aw
  %i.ba = and i64 %i.ay, %i.az
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %bb.n, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  store i8 1, ptr %i.al, align 1, !tbaa !1314
  %i.bb = add i64 %.03142, 1
  %i.bc = trunc i64 %.043 to i32
  %i.bd = load ptr, ptr %4, align 8, !tbaa !305
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.03142
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !206
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.at
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !273 ; 2 uses
  %i.bh = load i8, ptr %i.am, align 8, !tbaa !273
  %.sroa.speculated10.i.i.i39 = tail call i8 @llvm.smin.i8(i8 %i.bh, i8 %i.bg)
  store i8 %.sroa.speculated10.i.i.i39, ptr %i.am, align 8, !tbaa !273
  %i.bi = load i8, ptr %i.an, align 8, !tbaa !273
  %.sroa.speculated.i.i.i40 = tail call i8 @llvm.smax.i8(i8 %i.bg, i8 %i.bi)
  store i8 %.sroa.speculated.i.i.i40, ptr %i.an, align 8, !tbaa !273
  br label %bb.o

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  store i8 1, ptr %i.ak, align 8, !tbaa !1313
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %.1 = phi i64 [ %i.bb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %.03142, %bb.n ] ; 2 uses
  %i.bj = add nuw i64 %.043, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !4697

.loopexit:                                        ; preds = %bb.o, %bb.k, %_ZN6duckdb15SelectionVector10InitializeEPj.exit
  %.032 = phi i64 [ %3, %_ZN6duckdb15SelectionVector10InitializeEPj.exit ], [ 0, %bb.k ], [ %.1, %bb.o ]
  ret i64 %.032
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb32TemplatedUpdateNumericStatisticsIsEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(73) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1209 ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !267
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 1, ptr %i.e, align 1, !tbaa !1314
  %.not64 = icmp eq i64 %3, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !959
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !305  ; 4 uses
  %.not.i35 = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 9 uses
  %.promoted59 = load i16, ptr %i.h, align 8, !tbaa !317 ; 6 uses
  %.promoted61 = load i16, ptr %i.i, align 8, !tbaa !317 ; 6 uses
  br i1 %.not.i35, label %iter.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph58
  %xtraiter164 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter167 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

iter.check:                                       ; preds = %.lr.ph58
  %min.iters.check106 = icmp ult i64 %3, 4
  br i1 %min.iters.check106, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %vector.memcheck107

vector.memcheck107:                               ; preds = %iter.check
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.l = shl i64 %3, 1
  %i.m = getelementptr i8, ptr %i.b, i64 %i.l
  %bound0108 = icmp ult ptr %i.h, %i.m
  %bound1109 = icmp ult ptr %i.b, %i.k
  %found.conflict110 = and i1 %bound0108, %bound1109
  br i1 %found.conflict110, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck107
  %min.iters.check111 = icmp ult i64 %3, 16
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph112

vector.ph112:                                     ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %3, 12
  %n.vec113 = and i64 %3, -16                     ; 4 uses
  %broadcast.splatinsert114 = insertelement <8 x i16> poison, i16 %.promoted61, i64 0
  %broadcast.splat115 = shufflevector <8 x i16> %broadcast.splatinsert114, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert116 = insertelement <8 x i16> poison, i16 %.promoted59, i64 0
  %broadcast.splat117 = shufflevector <8 x i16> %broadcast.splatinsert116, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.ph112, %vector.body118
  %index119 = phi i64 [ 0, %vector.ph112 ], [ %index.next126, %vector.body118 ] ; 2 uses
  %vec.phi120 = phi <8 x i16> [ %broadcast.splat115, %vector.ph112 ], [ %i.s, %vector.body118 ]
  %vec.phi121 = phi <8 x i16> [ %broadcast.splat115, %vector.ph112 ], [ %i.t, %vector.body118 ]
  %vec.phi122 = phi <8 x i16> [ %broadcast.splat117, %vector.ph112 ], [ %i.q, %vector.body118 ]
  %vec.phi123 = phi <8 x i16> [ %broadcast.splat117, %vector.ph112 ], [ %i.r, %vector.body118 ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index119 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load124 = load <8 x i16>, ptr %i.o, align 2, !tbaa !317, !alias.scope !4711 ; 2 uses
  %wide.load125 = load <8 x i16>, ptr %i.p, align 2, !tbaa !317, !alias.scope !4711 ; 2 uses
  %i.q = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi122, <8 x i16> %wide.load124) ; 2 uses
  %i.r = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi123, <8 x i16> %wide.load125) ; 2 uses
  %i.s = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load124, <8 x i16> %vec.phi120) ; 2 uses
  %i.t = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %wide.load125, <8 x i16> %vec.phi121) ; 2 uses
  %index.next126 = add nuw i64 %index119, 16      ; 2 uses
  %i.u = icmp eq i64 %index.next126, %n.vec113
  br i1 %i.u, label %middle.block127, label %vector.body118, !llvm.loop !4700

middle.block127:                                  ; preds = %vector.body118
  %rdx.minmax128 = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.s, <8 x i16> %i.t)
  %i.v = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax128) ; 3 uses
  %rdx.minmax129 = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.q, <8 x i16> %i.r)
  %i.w = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax129) ; 3 uses
  store i16 %i.w, ptr %i.h, align 8, !tbaa !317, !alias.scope !4712, !noalias !4711
  store i16 %i.v, ptr %i.i, align 8, !tbaa !317, !alias.scope !4712, !noalias !4711
  %cmp.n130 = icmp eq i64 %3, %n.vec113
  br i1 %cmp.n130, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block127
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %vec.epilog.ph, !prof !1901

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec113, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx131 = phi i16 [ %i.v, %vec.epilog.iter.check ], [ %.promoted61, %vector.main.loop.iter.check ]
  %bc.merge.rdx132 = phi i16 [ %i.w, %vec.epilog.iter.check ], [ %.promoted59, %vector.main.loop.iter.check ]
  %n.vec133 = and i64 %3, -4                      ; 3 uses
  %broadcast.splatinsert134 = insertelement <4 x i16> poison, i16 %bc.merge.rdx131, i64 0
  %broadcast.splat135 = shufflevector <4 x i16> %broadcast.splatinsert134, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert136 = insertelement <4 x i16> poison, i16 %bc.merge.rdx132, i64 0
  %broadcast.splat137 = shufflevector <4 x i16> %broadcast.splatinsert136, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next142, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi139 = phi <4 x i16> [ %broadcast.splat135, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %vec.phi140 = phi <4 x i16> [ %broadcast.splat137, %vec.epilog.ph ], [ %i.y, %vec.epilog.vector.body ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index138
  %wide.load141 = load <4 x i16>, ptr %i.x, align 2, !tbaa !317, !alias.scope !4711 ; 2 uses
  %i.y = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %vec.phi140, <4 x i16> %wide.load141) ; 2 uses
  %i.z = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %wide.load141, <4 x i16> %vec.phi139) ; 2 uses
  %index.next142 = add nuw i64 %index138, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next142, %n.vec133
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4702

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.z) ; 2 uses
  %i.ac = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.y) ; 2 uses
  store i16 %i.ac, ptr %i.h, align 8, !tbaa !317, !alias.scope !4712, !noalias !4711
  store i16 %i.ab, ptr %i.i, align 8, !tbaa !317, !alias.scope !4712, !noalias !4711
  %cmp.n143 = icmp eq i64 %3, %n.vec133
  br i1 %cmp.n143, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %iter.check, %vector.memcheck107, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.speculated.i.i.i62.us.ph = phi i16 [ %.promoted61, %iter.check ], [ %.promoted61, %vector.memcheck107 ], [ %i.v, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.speculated10.i.i.i60.us.ph = phi i16 [ %.promoted59, %iter.check ], [ %.promoted59, %vector.memcheck107 ], [ %i.w, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ] ; 2 uses
  %.03357.us.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck107 ], [ %n.vec113, %vec.epilog.iter.check ], [ %n.vec133, %vec.epilog.middle.block ] ; 4 uses
  %.neg171 = or disjoint i64 %.03357.us.ph, 1
  %xtraiter169 = and i64 %3, 1
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.03357.us.ph
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !317 ; 2 uses
  %.sroa.speculated10.i.i.i.us.prol = tail call i16 @llvm.smin.i16(i16 %.sroa.speculated10.i.i.i60.us.ph, i16 %i.ae) ; 2 uses
  store i16 %.sroa.speculated10.i.i.i.us.prol, ptr %i.h, align 8, !tbaa !317
  %.sroa.speculated.i.i.i.us.prol = tail call i16 @llvm.smax.i16(i16 %i.ae, i16 %.sroa.speculated.i.i.i62.us.ph) ; 2 uses
  store i16 %.sroa.speculated.i.i.i.us.prol, ptr %i.i, align 8, !tbaa !317
  %i.af = or disjoint i64 %.03357.us.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.sroa.speculated.i.i.i62.us.unr = phi i16 [ %.sroa.speculated.i.i.i62.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.sroa.speculated.i.i.i.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ]
  %.sroa.speculated10.i.i.i60.us.unr = phi i16 [ %.sroa.speculated10.i.i.i60.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.sroa.speculated10.i.i.i.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ]
  %.03357.us.unr = phi i64 [ %.03357.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.af, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ]
  %i.ag = icmp eq i64 %3, %.neg171
  br i1 %i.ag, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.sroa.speculated.i.i.i62.us = phi i16 [ %.sroa.speculated.i.i.i.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ], [ %.sroa.speculated.i.i.i62.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit ]
  %.sroa.speculated10.i.i.i60.us = phi i16 [ %.sroa.speculated10.i.i.i.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ], [ %.sroa.speculated10.i.i.i60.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit ]
  %.03357.us = phi i64 [ %i.am, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ], [ %.03357.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.03357.us
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !317 ; 2 uses
  %.sroa.speculated10.i.i.i.us = tail call i16 @llvm.smin.i16(i16 %.sroa.speculated10.i.i.i60.us, i16 %i.ai) ; 2 uses
  store i16 %.sroa.speculated10.i.i.i.us, ptr %i.h, align 8, !tbaa !317
  %.sroa.speculated.i.i.i.us = tail call i16 @llvm.smax.i16(i16 %i.ai, i16 %.sroa.speculated.i.i.i62.us) ; 2 uses
  store i16 %.sroa.speculated.i.i.i.us, ptr %i.i, align 8, !tbaa !317
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.03357.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !317 ; 2 uses
  %.sroa.speculated10.i.i.i.us.1 = tail call i16 @llvm.smin.i16(i16 %.sroa.speculated10.i.i.i.us, i16 %i.al) ; 2 uses
  store i16 %.sroa.speculated10.i.i.i.us.1, ptr %i.h, align 8, !tbaa !317
  %.sroa.speculated.i.i.i.us.1 = tail call i16 @llvm.smax.i16(i16 %i.al, i16 %.sroa.speculated.i.i.i.us) ; 2 uses
  store i16 %.sroa.speculated.i.i.i.us.1, ptr %i.i, align 8, !tbaa !317
  %i.am = add nuw i64 %.03357.us, 2               ; 2 uses
  %exitcond74.not.1 = icmp eq i64 %i.am, %3
  br i1 %exitcond74.not.1, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !4703

._crit_edge.loopexit152.unr-lcssa:                ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit152.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.sroa.speculated.i.i.i62.epil.init = phi i16 [ %.promoted61, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.sroa.speculated.i.i.i.1, %._crit_edge.loopexit152.unr-lcssa ]
  %.sroa.speculated10.i.i.i60.epil.init = phi i16 [ %.promoted59, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.sroa.speculated10.i.i.i.1, %._crit_edge.loopexit152.unr-lcssa ]
  %.03357.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bv, %._crit_edge.loopexit152.unr-lcssa ]
  %lcmp.mod166 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.03357.epil.init
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !206
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !317 ; 2 uses
  %.sroa.speculated10.i.i.i.epil = tail call i16 @llvm.smin.i16(i16 %.sroa.speculated10.i.i.i60.epil.init, i16 %i.ar)
  store i16 %.sroa.speculated10.i.i.i.epil, ptr %i.h, align 8, !tbaa !317
  %.sroa.speculated.i.i.i.epil = tail call i16 @llvm.smax.i16(i16 %i.ar, i16 %.sroa.speculated.i.i.i62.epil.init)
  store i16 %.sroa.speculated.i.i.i.epil, ptr %i.i, align 8, !tbaa !317
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit152.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, %middle.block127, %vec.epilog.middle.block, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.as, align 8, !tbaa !957
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !269 ; 8 uses
  store ptr null, ptr %i.at, align 8, !tbaa !269
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVector10InitializeEPj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.av, align 8, !tbaa !271
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !272
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !213
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #37, !inline_history !82
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !213
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #37, !inline_history !82
  br label %_ZN6duckdb15SelectionVector10InitializeEPj.exit

bb.e:                                             ; preds = %bb.c
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !206
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.f ], [ %i.bi, %bb.g ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.h, label %_ZN6duckdb15SelectionVector10InitializeEPj.exit, !prof !274

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #37
  br label %_ZN6duckdb15SelectionVector10InitializeEPj.exit

_ZN6duckdb15SelectionVector10InitializeEPj.exit:  ; preds = %._crit_edge, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  store ptr null, ptr %4, align 8, !tbaa !305
  br label %.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.sroa.speculated.i.i.i62 = phi i16 [ %.promoted61, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.sroa.speculated.i.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %.sroa.speculated10.i.i.i60 = phi i16 [ %.promoted59, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.sroa.speculated10.i.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %.03357 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %niter168 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter168.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.03357
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !206
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !317 ; 2 uses
  %.sroa.speculated10.i.i.i = tail call i16 @llvm.smin.i16(i16 %.sroa.speculated10.i.i.i60, i16 %i.bo) ; 2 uses
  store i16 %.sroa.speculated10.i.i.i, ptr %i.h, align 8, !tbaa !317
  %.sroa.speculated.i.i.i = tail call i16 @llvm.smax.i16(i16 %i.bo, i16 %.sroa.speculated.i.i.i62) ; 2 uses
  store i16 %.sroa.speculated.i.i.i, ptr %i.i, align 8, !tbaa !317
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.03357
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !206
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !317 ; 2 uses
  %.sroa.speculated10.i.i.i.1 = tail call i16 @llvm.smin.i16(i16 %.sroa.speculated10.i.i.i, i16 %i.bu) ; 3 uses
  store i16 %.sroa.speculated10.i.i.i.1, ptr %i.h, align 8, !tbaa !317
  %.sroa.speculated.i.i.i.1 = tail call i16 @llvm.smax.i16(i16 %i.bu, i16 %.sroa.speculated.i.i.i) ; 3 uses
  store i16 %.sroa.speculated.i.i.i.1, ptr %i.i, align 8, !tbaa !317
  %i.bv = add nuw i64 %.03357, 2                  ; 2 uses
  %niter168.next.1 = add nuw i64 %niter168, 2     ; 2 uses
  %niter168.ncmp.1 = icmp eq i64 %niter168.next.1, %unroll_iter167
  br i1 %niter168.ncmp.1, label %._crit_edge.loopexit152.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !4704

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2048)
  %.not63 = icmp eq i64 %3, 0
  br i1 %.not63, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.bw = load ptr, ptr %2, align 8, !tbaa !959
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !305 ; 5 uses
  %.not.i36 = icmp eq ptr %i.bx, null             ; 2 uses
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !267 ; 3 uses
  %.not.i38 = icmp eq ptr %i.by, null
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 13 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 12 uses
  br i1 %.not.i38, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i8 1, ptr %i.ca, align 1, !tbaa !1314
  %i.cd = load ptr, ptr %4, align 8, !tbaa !305   ; 7 uses
  %.promoted = load i16, ptr %i.cb, align 8, !tbaa !317 ; 5 uses
  %.promoted54 = load i16, ptr %i.cc, align 8, !tbaa !317 ; 5 uses
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader: ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %3, 1
  %i.ce = icmp eq i64 %3, 1
  br i1 %i.ce, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader
end_hunk_0
begin_hunk_1_@_ZN6duckdb32TemplatedUpdateNumericStatisticsIhEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE:bb.a

bb.i:                                             ; preds = %.lr.ph45, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %.03344 = phi i64 [ 0, %.lr.ph45 ], [ %i.aj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !959
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !305 ; 2 uses
  %.not.i35 = icmp eq ptr %i.aa, null
  br i1 %.not.i35, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.03344
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !206
  %i.ad = zext i32 %i.ac to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.i, %bb.j
  %i.ae = phi i64 [ %i.ad, %bb.j ], [ %.03344, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !273 ; 2 uses
  %i.ah = load i8, ptr %i.f, align 8, !tbaa !273
  %.sroa.speculated10.i.i.i = tail call i8 @llvm.umin.i8(i8 %i.ah, i8 %i.ag)
  store i8 %.sroa.speculated10.i.i.i, ptr %i.f, align 8, !tbaa !273
  %i.ai = load i8, ptr %i.g, align 8, !tbaa !273
  %.sroa.speculated.i.i.i = tail call i8 @llvm.umax.i8(i8 %i.ag, i8 %i.ai)
  store i8 %.sroa.speculated.i.i.i, ptr %i.g, align 8, !tbaa !273
  %i.aj = add nuw i64 %.03344, 1                  ; 2 uses
  %exitcond48.not = icmp eq i64 %i.aj, %3
  br i1 %exitcond48.not, label %._crit_edge, label %bb.i, !llvm.loop !4740

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2048)
  %.not46 = icmp eq i64 %3, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.o
  %.043 = phi i64 [ 0, %.lr.ph ], [ %i.bj, %bb.o ] ; 4 uses
  %.03142 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.o ] ; 3 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !959
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !305 ; 2 uses
  %.not.i36 = icmp eq ptr %i.ap, null
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.043
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !206
  %i.as = zext i32 %i.ar to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37

_ZNK6duckdb15SelectionVector9get_indexEm.exit37:  ; preds = %bb.l, %bb.m
  %i.at = phi i64 [ %i.as, %bb.m ], [ %.043, %bb.l ] ; 3 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !267 ; 2 uses
  %.not.i38 = icmp eq ptr %i.au, null
  br i1 %.not.i38, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37
  %i.av = lshr i64 %i.at, 6
  %i.aw = and i64 %i.at, 63
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !218
  %i.az = shl nuw i64 1, %i.aw
  %i.ba = and i64 %i.ay, %i.az
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %bb.n, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  store i8 1, ptr %i.al, align 1, !tbaa !1314
  %i.bb = add i64 %.03142, 1
  %i.bc = trunc i64 %.043 to i32
  %i.bd = load ptr, ptr %4, align 8, !tbaa !305
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.03142
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !206
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.at
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !273 ; 2 uses
  %i.bh = load i8, ptr %i.am, align 8, !tbaa !273
  %.sroa.speculated10.i.i.i39 = tail call i8 @llvm.umin.i8(i8 %i.bh, i8 %i.bg)
  store i8 %.sroa.speculated10.i.i.i39, ptr %i.am, align 8, !tbaa !273
  %i.bi = load i8, ptr %i.an, align 8, !tbaa !273
  %.sroa.speculated.i.i.i40 = tail call i8 @llvm.umax.i8(i8 %i.bg, i8 %i.bi)
  store i8 %.sroa.speculated.i.i.i40, ptr %i.an, align 8, !tbaa !273
  br label %bb.o

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  store i8 1, ptr %i.ak, align 8, !tbaa !1313
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %.1 = phi i64 [ %i.bb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %.03142, %bb.n ] ; 2 uses
  %i.bj = add nuw i64 %.043, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !4741

.loopexit:                                        ; preds = %bb.o, %bb.k, %_ZN6duckdb15SelectionVector10InitializeEPj.exit
  %.032 = phi i64 [ %3, %_ZN6duckdb15SelectionVector10InitializeEPj.exit ], [ 0, %bb.k ], [ %.1, %bb.o ]
  ret i64 %.032
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN6duckdb32TemplatedUpdateNumericStatisticsItEEmPNS_13UpdateSegmentERNS_17SegmentStatisticsERNS_19UnifiedVectorFormatEmRNS_15SelectionVectorE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(73) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1209 ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !267
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 1, ptr %i.e, align 1, !tbaa !1314
  %.not64 = icmp eq i64 %3, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !959
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !305  ; 4 uses
  %.not.i35 = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 9 uses
  %.promoted59 = load i16, ptr %i.h, align 8, !tbaa !317 ; 6 uses
  %.promoted61 = load i16, ptr %i.i, align 8, !tbaa !317 ; 6 uses
  br i1 %.not.i35, label %iter.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %.lr.ph58
  %xtraiter164 = and i64 %3, 1
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter167 = and i64 %3, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

iter.check:                                       ; preds = %.lr.ph58
  %min.iters.check106 = icmp ult i64 %3, 4
  br i1 %min.iters.check106, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %vector.memcheck107

vector.memcheck107:                               ; preds = %iter.check
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.l = shl i64 %3, 1
  %i.m = getelementptr i8, ptr %i.b, i64 %i.l
  %bound0108 = icmp ult ptr %i.h, %i.m
  %bound1109 = icmp ult ptr %i.b, %i.k
  %found.conflict110 = and i1 %bound0108, %bound1109
  br i1 %found.conflict110, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck107
  %min.iters.check111 = icmp ult i64 %3, 16
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph112

vector.ph112:                                     ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %3, 12
  %n.vec113 = and i64 %3, -16                     ; 4 uses
  %broadcast.splatinsert114 = insertelement <8 x i16> poison, i16 %.promoted61, i64 0
  %broadcast.splat115 = shufflevector <8 x i16> %broadcast.splatinsert114, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert116 = insertelement <8 x i16> poison, i16 %.promoted59, i64 0
  %broadcast.splat117 = shufflevector <8 x i16> %broadcast.splatinsert116, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.ph112, %vector.body118
  %index119 = phi i64 [ 0, %vector.ph112 ], [ %index.next126, %vector.body118 ] ; 2 uses
  %vec.phi120 = phi <8 x i16> [ %broadcast.splat115, %vector.ph112 ], [ %i.s, %vector.body118 ]
  %vec.phi121 = phi <8 x i16> [ %broadcast.splat115, %vector.ph112 ], [ %i.t, %vector.body118 ]
  %vec.phi122 = phi <8 x i16> [ %broadcast.splat117, %vector.ph112 ], [ %i.q, %vector.body118 ]
  %vec.phi123 = phi <8 x i16> [ %broadcast.splat117, %vector.ph112 ], [ %i.r, %vector.body118 ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index119 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load124 = load <8 x i16>, ptr %i.o, align 2, !tbaa !317, !alias.scope !4755 ; 2 uses
  %wide.load125 = load <8 x i16>, ptr %i.p, align 2, !tbaa !317, !alias.scope !4755 ; 2 uses
  %i.q = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi122, <8 x i16> %wide.load124) ; 2 uses
  %i.r = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi123, <8 x i16> %wide.load125) ; 2 uses
  %i.s = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load124, <8 x i16> %vec.phi120) ; 2 uses
  %i.t = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load125, <8 x i16> %vec.phi121) ; 2 uses
  %index.next126 = add nuw i64 %index119, 16      ; 2 uses
  %i.u = icmp eq i64 %index.next126, %n.vec113
  br i1 %i.u, label %middle.block127, label %vector.body118, !llvm.loop !4744

middle.block127:                                  ; preds = %vector.body118
  %rdx.minmax128 = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.s, <8 x i16> %i.t)
  %i.v = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax128) ; 3 uses
  %rdx.minmax129 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.q, <8 x i16> %i.r)
  %i.w = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax129) ; 3 uses
  store i16 %i.w, ptr %i.h, align 8, !tbaa !317, !alias.scope !4756, !noalias !4755
  store i16 %i.v, ptr %i.i, align 8, !tbaa !317, !alias.scope !4756, !noalias !4755
  %cmp.n130 = icmp eq i64 %3, %n.vec113
  br i1 %cmp.n130, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block127
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %vec.epilog.ph, !prof !1901

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec113, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx131 = phi i16 [ %i.v, %vec.epilog.iter.check ], [ %.promoted61, %vector.main.loop.iter.check ]
  %bc.merge.rdx132 = phi i16 [ %i.w, %vec.epilog.iter.check ], [ %.promoted59, %vector.main.loop.iter.check ]
  %n.vec133 = and i64 %3, -4                      ; 3 uses
  %broadcast.splatinsert134 = insertelement <4 x i16> poison, i16 %bc.merge.rdx131, i64 0
  %broadcast.splat135 = shufflevector <4 x i16> %broadcast.splatinsert134, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert136 = insertelement <4 x i16> poison, i16 %bc.merge.rdx132, i64 0
  %broadcast.splat137 = shufflevector <4 x i16> %broadcast.splatinsert136, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next142, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi139 = phi <4 x i16> [ %broadcast.splat135, %vec.epilog.ph ], [ %i.z, %vec.epilog.vector.body ]
  %vec.phi140 = phi <4 x i16> [ %broadcast.splat137, %vec.epilog.ph ], [ %i.y, %vec.epilog.vector.body ]
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index138
  %wide.load141 = load <4 x i16>, ptr %i.x, align 2, !tbaa !317, !alias.scope !4755 ; 2 uses
  %i.y = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %vec.phi140, <4 x i16> %wide.load141) ; 2 uses
  %i.z = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load141, <4 x i16> %vec.phi139) ; 2 uses
  %index.next142 = add nuw i64 %index138, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next142, %n.vec133
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4746

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ab = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.z) ; 2 uses
  %i.ac = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.y) ; 2 uses
  store i16 %i.ac, ptr %i.h, align 8, !tbaa !317, !alias.scope !4756, !noalias !4755
  store i16 %i.ab, ptr %i.i, align 8, !tbaa !317, !alias.scope !4756, !noalias !4755
  %cmp.n143 = icmp eq i64 %3, %n.vec133
  br i1 %cmp.n143, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %iter.check, %vector.memcheck107, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.speculated.i.i.i62.us.ph = phi i16 [ %.promoted61, %iter.check ], [ %.promoted61, %vector.memcheck107 ], [ %i.v, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.speculated10.i.i.i60.us.ph = phi i16 [ %.promoted59, %iter.check ], [ %.promoted59, %vector.memcheck107 ], [ %i.w, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ] ; 2 uses
  %.03357.us.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck107 ], [ %n.vec113, %vec.epilog.iter.check ], [ %n.vec133, %vec.epilog.middle.block ] ; 4 uses
  %.neg171 = or disjoint i64 %.03357.us.ph, 1
  %xtraiter169 = and i64 %3, 1
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.03357.us.ph
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !317 ; 2 uses
  %.sroa.speculated10.i.i.i.us.prol = tail call i16 @llvm.umin.i16(i16 %.sroa.speculated10.i.i.i60.us.ph, i16 %i.ae) ; 2 uses
  store i16 %.sroa.speculated10.i.i.i.us.prol, ptr %i.h, align 8, !tbaa !317
  %.sroa.speculated.i.i.i.us.prol = tail call i16 @llvm.umax.i16(i16 %i.ae, i16 %.sroa.speculated.i.i.i62.us.ph) ; 2 uses
  store i16 %.sroa.speculated.i.i.i.us.prol, ptr %i.i, align 8, !tbaa !317
  %i.af = or disjoint i64 %.03357.us.ph, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.sroa.speculated.i.i.i62.us.unr = phi i16 [ %.sroa.speculated.i.i.i62.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.sroa.speculated.i.i.i.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ]
  %.sroa.speculated10.i.i.i60.us.unr = phi i16 [ %.sroa.speculated10.i.i.i60.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %.sroa.speculated10.i.i.i.us.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ]
  %.03357.us.unr = phi i64 [ %.03357.us.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.af, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol ]
  %i.ag = icmp eq i64 %3, %.neg171
  br i1 %i.ag, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.sroa.speculated.i.i.i62.us = phi i16 [ %.sroa.speculated.i.i.i.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ], [ %.sroa.speculated.i.i.i62.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit ]
  %.sroa.speculated10.i.i.i60.us = phi i16 [ %.sroa.speculated10.i.i.i.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ], [ %.sroa.speculated10.i.i.i60.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit ]
  %.03357.us = phi i64 [ %i.am, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ], [ %.03357.us.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.03357.us
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !317 ; 2 uses
  %.sroa.speculated10.i.i.i.us = tail call i16 @llvm.umin.i16(i16 %.sroa.speculated10.i.i.i60.us, i16 %i.ai) ; 2 uses
  store i16 %.sroa.speculated10.i.i.i.us, ptr %i.h, align 8, !tbaa !317
  %.sroa.speculated.i.i.i.us = tail call i16 @llvm.umax.i16(i16 %i.ai, i16 %.sroa.speculated.i.i.i62.us) ; 2 uses
  store i16 %.sroa.speculated.i.i.i.us, ptr %i.i, align 8, !tbaa !317
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.03357.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !317 ; 2 uses
  %.sroa.speculated10.i.i.i.us.1 = tail call i16 @llvm.umin.i16(i16 %.sroa.speculated10.i.i.i.us, i16 %i.al) ; 2 uses
  store i16 %.sroa.speculated10.i.i.i.us.1, ptr %i.h, align 8, !tbaa !317
  %.sroa.speculated.i.i.i.us.1 = tail call i16 @llvm.umax.i16(i16 %i.al, i16 %.sroa.speculated.i.i.i.us) ; 2 uses
  store i16 %.sroa.speculated.i.i.i.us.1, ptr %i.i, align 8, !tbaa !317
  %i.am = add nuw i64 %.03357.us, 2               ; 2 uses
  %exitcond74.not.1 = icmp eq i64 %i.am, %3
  br i1 %exitcond74.not.1, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !4747

._crit_edge.loopexit152.unr-lcssa:                ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit152.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.sroa.speculated.i.i.i62.epil.init = phi i16 [ %.promoted61, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.sroa.speculated.i.i.i.1, %._crit_edge.loopexit152.unr-lcssa ]
  %.sroa.speculated10.i.i.i60.epil.init = phi i16 [ %.promoted59, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %.sroa.speculated10.i.i.i.1, %._crit_edge.loopexit152.unr-lcssa ]
  %.03357.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.bv, %._crit_edge.loopexit152.unr-lcssa ]
  %lcmp.mod166 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.03357.epil.init
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !206
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !317 ; 2 uses
  %.sroa.speculated10.i.i.i.epil = tail call i16 @llvm.umin.i16(i16 %.sroa.speculated10.i.i.i60.epil.init, i16 %i.ar)
  store i16 %.sroa.speculated10.i.i.i.epil, ptr %i.h, align 8, !tbaa !317
  %.sroa.speculated.i.i.i.epil = tail call i16 @llvm.umax.i16(i16 %i.ar, i16 %.sroa.speculated.i.i.i62.epil.init)
  store i16 %.sroa.speculated.i.i.i.epil, ptr %i.i, align 8, !tbaa !317
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %._crit_edge.loopexit152.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, %middle.block127, %vec.epilog.middle.block, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.as, align 8, !tbaa !957
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !269 ; 8 uses
  store ptr null, ptr %i.at, align 8, !tbaa !269
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVector10InitializeEPj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.av, align 8, !tbaa !271
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !272
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !213
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #37, !inline_history !82
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !213
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #37, !inline_history !82
  br label %_ZN6duckdb15SelectionVector10InitializeEPj.exit

bb.e:                                             ; preds = %bb.c
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !206
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.f ], [ %i.bi, %bb.g ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.h, label %_ZN6duckdb15SelectionVector10InitializeEPj.exit, !prof !274

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #37
  br label %_ZN6duckdb15SelectionVector10InitializeEPj.exit

_ZN6duckdb15SelectionVector10InitializeEPj.exit:  ; preds = %._crit_edge, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  store ptr null, ptr %4, align 8, !tbaa !305
  br label %.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.sroa.speculated.i.i.i62 = phi i16 [ %.promoted61, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.sroa.speculated.i.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %.sroa.speculated10.i.i.i60 = phi i16 [ %.promoted59, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %.sroa.speculated10.i.i.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %.03357 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.bv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %niter168 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter168.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.03357
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !206
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !317 ; 2 uses
  %.sroa.speculated10.i.i.i = tail call i16 @llvm.umin.i16(i16 %.sroa.speculated10.i.i.i60, i16 %i.bo) ; 2 uses
  store i16 %.sroa.speculated10.i.i.i, ptr %i.h, align 8, !tbaa !317
  %.sroa.speculated.i.i.i = tail call i16 @llvm.umax.i16(i16 %i.bo, i16 %.sroa.speculated.i.i.i62) ; 2 uses
  store i16 %.sroa.speculated.i.i.i, ptr %i.i, align 8, !tbaa !317
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.03357
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !206
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !317 ; 2 uses
  %.sroa.speculated10.i.i.i.1 = tail call i16 @llvm.umin.i16(i16 %.sroa.speculated10.i.i.i, i16 %i.bu) ; 3 uses
  store i16 %.sroa.speculated10.i.i.i.1, ptr %i.h, align 8, !tbaa !317
  %.sroa.speculated.i.i.i.1 = tail call i16 @llvm.umax.i16(i16 %i.bu, i16 %.sroa.speculated.i.i.i) ; 3 uses
  store i16 %.sroa.speculated.i.i.i.1, ptr %i.i, align 8, !tbaa !317
  %i.bv = add nuw i64 %.03357, 2                  ; 2 uses
  %niter168.next.1 = add nuw i64 %niter168, 2     ; 2 uses
  %niter168.ncmp.1 = icmp eq i64 %niter168.next.1, %unroll_iter167
  br i1 %niter168.ncmp.1, label %._crit_edge.loopexit152.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !4748

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 2048)
  %.not63 = icmp eq i64 %3, 0
  br i1 %.not63, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.bw = load ptr, ptr %2, align 8, !tbaa !959
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !305 ; 5 uses
  %.not.i36 = icmp eq ptr %i.bx, null             ; 2 uses
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !267 ; 3 uses
  %.not.i38 = icmp eq ptr %i.by, null
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 13 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 12 uses
  br i1 %.not.i38, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i8 1, ptr %i.ca, align 1, !tbaa !1314
  %i.cd = load ptr, ptr %4, align 8, !tbaa !305   ; 7 uses
  %.promoted = load i16, ptr %i.cb, align 8, !tbaa !317 ; 5 uses
  %.promoted54 = load i16, ptr %i.cc, align 8, !tbaa !317 ; 5 uses
  br i1 %.not.i36, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.us.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader: ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %3, 1
  %i.ce = icmp eq i64 %3, 1
  br i1 %i.ce, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us.preheader
end_hunk_1

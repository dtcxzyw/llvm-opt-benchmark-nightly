Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/domdec_setup?download=true
inline.NumInlined: 472
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZL16fits_pp_pme_perfiif:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = sitofp i32 %i.a to double
  %i.c = tail call noundef double @cbrt(double noundef %i.b) #22
  %i.d = tail call double @llvm.rint.f64(double %i.c)
  %i.e = fptosi double %i.d to i32
  %i.f = sitofp i32 %1 to double                  ; 2 uses
  %i.g = tail call double @sqrt(double noundef %i.f) #18
  %i.h = tail call double @llvm.rint.f64(double %i.g)
  %i.i = fptosi double %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13
  %i.n = add nsw i32 %i.e, 3
  %i.o = icmp sgt i32 %i.m, %i.n
  br i1 %i.o, label %bb.j, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !134    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !135
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.w = load ptr, ptr %3, align 8, !tbaa !134    ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIiSaIiEED2Ev.exit16, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !135
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit16

_ZNSt6vectorIiSaIiEED2Ev.exit16:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.p

bb.f:                                             ; preds = %bb.b
  %.0.i.i = tail call noundef i32 @llvm.abs.i32(i32 %i.a, i1 true) ; 2 uses
  %.0.i4.i = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.ac = icmp eq i32 %0, %1
  br i1 %i.ac, label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp eq i32 %1, 0
  br i1 %i.ad, label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.a, i1 true) ; 2 uses
  %i.af = lshr exact i32 %.0.i.i, %i.ae           ; 3 uses
  %i.ag = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %1, i1 true) ; 2 uses
  %i.ah = lshr exact i32 %.0.i4.i, %i.ag          ; 3 uses
  %i.ai = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.ag)
  %spec.select34.i.i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %i.ah) ; 2 uses
  %i.aj = icmp eq i32 %i.af, %i.ah
  br i1 %i.aj, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.h
  %spec.select.lcssa.i.i = phi i32 [ %spec.select34.i.i, %bb.h ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.ak = shl i32 %spec.select.lcssa.i.i, %i.ai
  br label %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %spec.select37.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %spec.select34.i.i, %bb.h ] ; 4 uses
  %.02736.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ah, %bb.h ]
  %.02835.i.i = phi i32 [ %spec.select37.i.i, %.lr.ph.i.i ], [ %i.af, %bb.h ]
  %spec.select33.i.i = tail call i32 @llvm.umax.i32(i32 %.02835.i.i, i32 %.02736.i.i)
  %i.al = sub nuw nsw i32 %spec.select33.i.i, %spec.select37.i.i ; 2 uses
  %i.am = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.al, i1 true)
  %i.an = lshr exact i32 %i.al, %i.am             ; 3 uses
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %spec.select37.i.i, i32 %i.an) ; 2 uses
  %i.ao = icmp eq i32 %spec.select37.i.i, %i.an
  br i1 %i.ao, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1

_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit: ; preds = %bb.f, %bb.g, %._crit_edge.i.i
  %.0.i5.i = phi i32 [ %i.ak, %._crit_edge.i.i ], [ %.0.i4.i, %bb.f ], [ %.0.i.i, %bb.g ]
  %i.ap = shl nsw i32 %.0.i5.i, 1
  %i.aq = icmp slt i32 %i.ap, %i.i
  br i1 %i.aq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit
  %i.ar = sitofp i32 %0 to double
  %i.as = fdiv double %i.f, %i.ar
  %i.at = fpext float %2 to double
  %i.au = fmul double %i.at, f0x3FEE666666666666
  %i.av = fcmp ogt double %i.as, %i.au
  br label %bb.j

bb.j:                                             ; preds = %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, %bb.b, %bb.i
  %.0 = phi i1 [ %i.av, %bb.i ], [ false, %bb.b ], [ false, %_ZSt3gcdIiiENSt11common_typeIJT_T0_EE4typeES1_S2_.exit ]
  %i.aw = load ptr, ptr %4, align 8, !tbaa !134   ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIiSaIiEED2Ev.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !135
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit18

_ZNSt6vectorIiSaIiEED2Ev.exit18:                  ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bc = load ptr, ptr %3, align 8, !tbaa !134   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIiSaIiEED2Ev.exit20, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit18
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !135
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit20

_ZNSt6vectorIiSaIiEED2Ev.exit20:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit18, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @cbrt(double noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #15

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_Z17enumValueToString13EwaldGeometry(i32 noundef) local_unnamed_addr #6

declare void @_Z22count_bonded_distancesRK10gmx_mtop_tRK10t_inputrecPdS5_(ptr noundef nonnull align 8 dereferenceable(768), ptr noundef nonnull align 8 dereferenceable(888), ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14assign_factorsffPA3_KfRK11gmx_ddbox_tiRK10t_inputrecfiiPKiS9_PN3gmx11BasicVectorIiEESD_(float noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(200) %3, i32 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %5, float noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef nonnull captures(none) %11, ptr nofree noundef nonnull captures(none) %12) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %8, 0
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %4 to i64                       ; 2 uses
  %i.c = tail call fastcc noundef float @_ZL13comm_cost_estffPA3_KfRK11gmx_ddbox_tlRK10t_inputrecfiRKN3gmx11BasicVectorIiEE(float noundef %0, float noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(200) %3, i64 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(888) %5, float noundef %6, i32 noundef %7, ptr noundef nonnull align 4 dereferenceable(12) %11) ; 2 uses
  %i.d = fcmp ult float %i.c, 0.000000e+00
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %12, align 4, !tbaa !13
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc noundef float @_ZL13comm_cost_estffPA3_KfRK11gmx_ddbox_tlRK10t_inputrecfiRKN3gmx11BasicVectorIiEE(float noundef %0, float noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(200) %3, i64 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(888) %5, float noundef %6, i32 noundef %7, ptr noundef nonnull align 4 dereferenceable(12) %12)
  %i.h = fcmp olt float %i.c, %i.g
  br i1 %i.h, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) %11, i64 12, i1 false), !tbaa.struct !284
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.i = load i32, ptr %10, align 4, !tbaa !13    ; 4 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %.preheader90.lr.ph, label %.loopexit

.preheader90.lr.ph:                               ; preds = %bb.f
  %i.k = getelementptr i8, ptr %11, i64 4         ; 16 uses
  %i.l = getelementptr i8, ptr %11, i64 8         ; 5 uses
  %i.m = add nsw i32 %8, -1
  %i.n = getelementptr i8, ptr %9, i64 4          ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 4
  %13 = add nsw i32 %i.i, -1                      ; 2 uses
  %bound0134 = icmp ult ptr %11, %i.n
  %bound1135 = icmp ult ptr %9, %i.k
  %found.conflict136 = and i1 %bound0134, %bound1135
  %bound0 = icmp ult ptr %i.k, %i.n
  %bound1 = icmp ult ptr %9, %i.l
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader90

.preheader90:                                     ; preds = %._crit_edge106, %.preheader90.lr.ph
  %indvar = phi i32 [ %indvar.next, %._crit_edge106 ], [ 0, %.preheader90.lr.ph ] ; 4 uses
  %.084107 = phi i32 [ %i.dw, %._crit_edge106 ], [ %i.i, %.preheader90.lr.ph ] ; 15 uses
  %14 = sub i32 %13, %indvar
  %.not118 = icmp eq i32 %.084107, 0              ; 2 uses
  br i1 %.not118, label %._crit_edge, label %iter.check158

iter.check158:                                    ; preds = %.preheader90
  %.pre = load i32, ptr %11, align 4, !tbaa !13   ; 3 uses
  %min.iters.check137 = icmp ult i32 %.084107, 4
  %brmerge = or i1 %min.iters.check137, %found.conflict136
  br i1 %brmerge, label %.lr.ph.preheader, label %vector.main.loop.iter.check138

vector.main.loop.iter.check138:                   ; preds = %iter.check158
  %min.iters.check139 = icmp ult i32 %.084107, 32
  br i1 %min.iters.check139, label %vec.epilog.ph162, label %vector.ph140

vector.ph140:                                     ; preds = %vector.main.loop.iter.check138
  %i.p = and i32 %.084107, 28
  %n.vec141 = and i32 %.084107, -32               ; 4 uses
  %i.q = insertelement <8 x i32> <i32 poison, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, i32 %.pre, i64 0
  %i.r = load i32, ptr %9, align 4, !tbaa !13, !alias.scope !285
  %broadcast.splatinsert148 = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat149 = shufflevector <8 x i32> %broadcast.splatinsert148, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body142

vector.body142:                                   ; preds = %vector.ph140, %vector.body142
  %index143 = phi i32 [ 0, %vector.ph140 ], [ %index.next150, %vector.body142 ]
  %vec.phi144 = phi <8 x i32> [ %i.q, %vector.ph140 ], [ %i.s, %vector.body142 ]
  %vec.phi145 = phi <8 x i32> [ splat (i32 1), %vector.ph140 ], [ %i.t, %vector.body142 ]
  %vec.phi146 = phi <8 x i32> [ splat (i32 1), %vector.ph140 ], [ %i.u, %vector.body142 ]
  %vec.phi147 = phi <8 x i32> [ splat (i32 1), %vector.ph140 ], [ %i.v, %vector.body142 ]
  %i.s = mul <8 x i32> %vec.phi144, %broadcast.splat149 ; 2 uses
  %i.t = mul <8 x i32> %vec.phi145, %broadcast.splat149 ; 2 uses
  %i.u = mul <8 x i32> %vec.phi146, %broadcast.splat149 ; 2 uses
  %i.v = mul <8 x i32> %vec.phi147, %broadcast.splat149 ; 2 uses
  %index.next150 = add nuw i32 %index143, 32      ; 2 uses
  %i.w = icmp eq i32 %index.next150, %n.vec141
  br i1 %i.w, label %middle.block151, label %vector.body142, !llvm.loop !265

middle.block151:                                  ; preds = %vector.body142
  %bin.rdx152 = mul <8 x i32> %i.t, %i.s
  %bin.rdx153 = mul <8 x i32> %i.u, %bin.rdx152
  %bin.rdx154 = mul <8 x i32> %i.v, %bin.rdx153
  %i.x = tail call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %bin.rdx154) ; 3 uses
  store i32 %i.x, ptr %11, align 4, !tbaa !13, !alias.scope !288, !noalias !285
  %cmp.n155 = icmp eq i32 %.084107, %n.vec141
  br i1 %cmp.n155, label %._crit_edge, label %vec.epilog.iter.check160

vec.epilog.iter.check160:                         ; preds = %middle.block151
  %min.epilog.iters.check161 = icmp eq i32 %i.p, 0
  br i1 %min.epilog.iters.check161, label %.lr.ph.preheader, label %vec.epilog.ph162, !prof !289

vec.epilog.ph162:                                 ; preds = %vector.main.loop.iter.check138, %vec.epilog.iter.check160
  %vec.epilog.resume.val156 = phi i32 [ %n.vec141, %vec.epilog.iter.check160 ], [ 0, %vector.main.loop.iter.check138 ]
  %bc.merge.rdx157 = phi i32 [ %i.x, %vec.epilog.iter.check160 ], [ %.pre, %vector.main.loop.iter.check138 ]
  %n.vec163 = and i32 %.084107, -4                ; 3 uses
  %i.y = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %bc.merge.rdx157, i64 0
  %i.z = load i32, ptr %9, align 4, !tbaa !13, !alias.scope !285
  %broadcast.splatinsert167 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat168 = shufflevector <4 x i32> %broadcast.splatinsert167, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body164

vec.epilog.vector.body164:                        ; preds = %vec.epilog.vector.body164, %vec.epilog.ph162
  %index165 = phi i32 [ %vec.epilog.resume.val156, %vec.epilog.ph162 ], [ %index.next169, %vec.epilog.vector.body164 ]
  %vec.phi166 = phi <4 x i32> [ %i.y, %vec.epilog.ph162 ], [ %i.aa, %vec.epilog.vector.body164 ]
  %i.aa = mul <4 x i32> %vec.phi166, %broadcast.splat168 ; 2 uses
  %index.next169 = add nuw i32 %index165, 4       ; 2 uses
  %i.ab = icmp eq i32 %index.next169, %n.vec163
  br i1 %i.ab, label %vec.epilog.middle.block170, label %vec.epilog.vector.body164, !llvm.loop !267

vec.epilog.middle.block170:                       ; preds = %vec.epilog.vector.body164
  %i.ac = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.aa) ; 2 uses
  store i32 %i.ac, ptr %11, align 4, !tbaa !13, !alias.scope !288, !noalias !285
  %cmp.n171 = icmp eq i32 %.084107, %n.vec163
  br i1 %cmp.n171, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check158, %vec.epilog.iter.check160, %vec.epilog.middle.block170
  %.ph174 = phi i32 [ %.pre, %iter.check158 ], [ %i.ac, %vec.epilog.middle.block170 ], [ %i.x, %vec.epilog.iter.check160 ] ; 2 uses
  %.08391.ph = phi i32 [ 0, %iter.check158 ], [ %n.vec163, %vec.epilog.middle.block170 ], [ %n.vec141, %vec.epilog.iter.check160 ] ; 4 uses
  %i.ad = sub i32 %.084107, %.08391.ph
  %15 = add i32 %indvar, %.08391.ph
  %i.ae = sub i32 %13, %15
  %xtraiter = and i32 %i.ad, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %i.af = phi i32 [ %i.ah, %.lr.ph.prol ], [ %.ph174, %.lr.ph.preheader ]
  %.08391.prol = phi i32 [ %i.ai, %.lr.ph.prol ], [ %.08391.ph, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ag = load i32, ptr %9, align 4, !tbaa !13
  %i.ah = mul nsw i32 %i.af, %i.ag                ; 3 uses
  store i32 %i.ah, ptr %11, align 4, !tbaa !13
  %i.ai = add nuw nsw i32 %.08391.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !268

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi i32 [ %.ph174, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %.08391.unr = phi i32 [ %.08391.ph, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.prol ]
  %i.aj = icmp ult i32 %i.ae, 7
  br i1 %i.aj, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block151, %vec.epilog.middle.block170, %.preheader90
  %i.ak = load i32, ptr %10, align 4, !tbaa !13   ; 2 uses
  %i.al = sub nsw i32 %i.ak, %.084107             ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %.preheader88.preheader, label %.preheader89

.preheader88.preheader:                           ; preds = %._crit_edge
  %i.an = add i32 %indvar, %i.ak
  %i.ao = sub i32 %i.i, %i.an
  br label %.preheader88

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.ap = phi i32 [ %i.bf, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.08391 = phi i32 [ %i.bg, %.lr.ph ], [ %.08391.unr, %.lr.ph.prol.loopexit ]
  %i.aq = load i32, ptr %9, align 4, !tbaa !13
  %i.ar = mul nsw i32 %i.ap, %i.aq                ; 2 uses
  store i32 %i.ar, ptr %11, align 4, !tbaa !13
  %i.as = load i32, ptr %9, align 4, !tbaa !13
  %i.at = mul nsw i32 %i.ar, %i.as                ; 2 uses
  store i32 %i.at, ptr %11, align 4, !tbaa !13
  %i.au = load i32, ptr %9, align 4, !tbaa !13
  %i.av = mul nsw i32 %i.at, %i.au                ; 2 uses
  store i32 %i.av, ptr %11, align 4, !tbaa !13
  %i.aw = load i32, ptr %9, align 4, !tbaa !13
  %i.ax = mul nsw i32 %i.av, %i.aw                ; 2 uses
  store i32 %i.ax, ptr %11, align 4, !tbaa !13
  %i.ay = load i32, ptr %9, align 4, !tbaa !13
  %i.az = mul nsw i32 %i.ax, %i.ay                ; 2 uses
  store i32 %i.az, ptr %11, align 4, !tbaa !13
  %i.ba = load i32, ptr %9, align 4, !tbaa !13
  %i.bb = mul nsw i32 %i.az, %i.ba                ; 2 uses
  store i32 %i.bb, ptr %11, align 4, !tbaa !13
  %i.bc = load i32, ptr %9, align 4, !tbaa !13
  %i.bd = mul nsw i32 %i.bb, %i.bc                ; 2 uses
  store i32 %i.bd, ptr %11, align 4, !tbaa !13
  %i.be = load i32, ptr %9, align 4, !tbaa !13
  %i.bf = mul nsw i32 %i.bd, %i.be                ; 2 uses
  store i32 %i.bf, ptr %11, align 4, !tbaa !13
  %i.bg = add nuw nsw i32 %.08391, 8              ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.bg, %.084107
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !269

.preheader89:                                     ; preds = %.preheader, %._crit_edge
  br i1 %.not118, label %.loopexit, label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %.preheader89
  %.pre114 = load i32, ptr %11, align 4, !tbaa !13 ; 2 uses
  %xtraiter190 = and i32 %.084107, 7              ; 3 uses
  %i.bh = icmp ult i32 %14, 7
  br i1 %i.bh, label %.lr.ph105.epil.preheader, label %.lr.ph105.preheader.new

.lr.ph105.preheader.new:                          ; preds = %.lr.ph105.preheader
  %unroll_iter196 = and i32 %.084107, -8
  br label %.lr.ph105

.preheader88:                                     ; preds = %.preheader88.preheader, %._crit_edge102
  %indvar184 = phi i32 [ 0, %.preheader88.preheader ], [ %indvar.next185, %._crit_edge102 ] ; 2 uses
  %.082103 = phi i32 [ %i.al, %.preheader88.preheader ], [ %i.db, %._crit_edge102 ] ; 13 uses
  %.not = icmp eq i32 %.082103, 0                 ; 2 uses
  br i1 %.not, label %.preheader87, label %iter.check

iter.check:                                       ; preds = %.preheader88
  %.pre110 = load i32, ptr %i.k, align 4, !tbaa !13 ; 3 uses
  %min.iters.check = icmp ult i32 %.082103, 4
  %brmerge211 = or i1 %min.iters.check, %found.conflict
  br i1 %brmerge211, label %.lr.ph93.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i32 %.082103, 32
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = and i32 %.082103, 28
  %n.vec = and i32 %.082103, -32                  ; 4 uses
  %i.bj = insertelement <8 x i32> <i32 poison, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>, i32 %.pre110, i64 0
  %i.bk = load i32, ptr %9, align 4, !tbaa !13, !alias.scope !291
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i32> [ %i.bj, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi120 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %i.bm, %vector.body ]
  %vec.phi121 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %i.bn, %vector.body ]
  %vec.phi122 = phi <8 x i32> [ splat (i32 1), %vector.ph ], [ %i.bo, %vector.body ]
  %i.bl = mul <8 x i32> %vec.phi, %broadcast.splat ; 2 uses
  %i.bm = mul <8 x i32> %vec.phi120, %broadcast.splat ; 2 uses
  %i.bn = mul <8 x i32> %vec.phi121, %broadcast.splat ; 2 uses
  %i.bo = mul <8 x i32> %vec.phi122, %broadcast.splat ; 2 uses
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.bp = icmp eq i32 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !272

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <8 x i32> %i.bm, %i.bl
  %bin.rdx123 = mul <8 x i32> %i.bn, %bin.rdx
  %bin.rdx124 = mul <8 x i32> %i.bo, %bin.rdx123
  %i.bq = tail call i32 @llvm.vector.reduce.mul.v8i32(<8 x i32> %bin.rdx124) ; 3 uses
  store i32 %i.bq, ptr %i.k, align 4, !tbaa !13, !alias.scope !292, !noalias !291
  %cmp.n = icmp eq i32 %.082103, %n.vec
  br i1 %cmp.n, label %.preheader87, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.bi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph93.preheader, label %vec.epilog.ph, !prof !289

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bq, %vec.epilog.iter.check ], [ %.pre110, %vector.main.loop.iter.check ]
  %n.vec125 = and i32 %.082103, -4                ; 3 uses
  %i.br = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %bc.merge.rdx, i64 0
  %i.bs = load i32, ptr %9, align 4, !tbaa !13, !alias.scope !291
  %broadcast.splatinsert128 = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat129 = shufflevector <4 x i32> %broadcast.splatinsert128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index126 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next130, %vec.epilog.vector.body ]
  %vec.phi127 = phi <4 x i32> [ %i.br, %vec.epilog.ph ], [ %i.bt, %vec.epilog.vector.body ]
  %i.bt = mul <4 x i32> %vec.phi127, %broadcast.splat129 ; 2 uses
  %index.next130 = add nuw i32 %index126, 4       ; 2 uses
  %i.bu = icmp eq i32 %index.next130, %n.vec125
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !274

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bv = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %i.bt) ; 2 uses
  store i32 %i.bv, ptr %i.k, align 4, !tbaa !13, !alias.scope !292, !noalias !291
  %cmp.n131 = icmp eq i32 %.082103, %n.vec125
  br i1 %cmp.n131, label %.preheader87, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i32 [ %.pre110, %iter.check ], [ %i.bv, %vec.epilog.middle.block ], [ %i.bq, %vec.epilog.iter.check ]
  %.08192.ph = phi i32 [ 0, %iter.check ], [ %n.vec125, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %.lr.ph93

.preheader87:                                     ; preds = %.lr.ph93, %middle.block, %vec.epilog.middle.block, %.preheader88
  %i.bw = add nuw i32 %.082103, %.084107          ; 4 uses
  %i.bx = load i32, ptr %10, align 4, !tbaa !13
  %i.by = sub i32 %i.bx, %i.bw
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph95.preheader, label %._crit_edge96

.lr.ph95.preheader:                               ; preds = %.preheader87
  %.pre111 = load i32, ptr %i.l, align 4, !tbaa !13
  br label %.lr.ph95

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph93
  %i.ca = phi i32 [ %i.cc, %.lr.ph93 ], [ %.ph, %.lr.ph93.preheader ]
  %.08192 = phi i32 [ %i.cd, %.lr.ph93 ], [ %.08192.ph, %.lr.ph93.preheader ]
  %i.cb = load i32, ptr %9, align 4, !tbaa !13
  %i.cc = mul nsw i32 %i.ca, %i.cb                ; 2 uses
  store i32 %i.cc, ptr %i.k, align 4, !tbaa !13
  %i.cd = add nuw nsw i32 %.08192, 1              ; 2 uses
  %i.ce = icmp samesign ult i32 %i.cd, %.082103
  br i1 %i.ce, label %.lr.ph93, label %.preheader87, !llvm.loop !275

._crit_edge96:                                    ; preds = %.lr.ph95, %.preheader87
  tail call fastcc void @_ZL14assign_factorsffPA3_KfRK11gmx_ddbox_tiRK10t_inputrecfiiPKiS9_PN3gmx11BasicVectorIiEESD_(float noundef %0, float noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(200) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(888) %5, float noundef %6, i32 noundef %7, i32 noundef %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef %11, ptr noundef %12)
  %i.cf = load i32, ptr %10, align 4, !tbaa !13
  %i.cg = sub i32 %i.cf, %i.bw
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.lr.ph99.preheader, label %.preheader

.lr.ph99.preheader:                               ; preds = %._crit_edge96
  %.pre112 = load i32, ptr %i.l, align 4, !tbaa !13
  br label %.lr.ph99

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.lr.ph95
  %i.ci = phi i32 [ %i.ck, %.lr.ph95 ], [ %.pre111, %.lr.ph95.preheader ]
  %.08094 = phi i32 [ %i.cl, %.lr.ph95 ], [ 0, %.lr.ph95.preheader ]
  %i.cj = load i32, ptr %9, align 4, !tbaa !13
  %i.ck = mul nsw i32 %i.ci, %i.cj                ; 2 uses
  store i32 %i.ck, ptr %i.l, align 4, !tbaa !13
  %i.cl = add nuw nsw i32 %.08094, 1              ; 2 uses
  %i.cm = load i32, ptr %10, align 4, !tbaa !13
  %i.cn = sub i32 %i.cm, %i.bw
  %i.co = icmp slt i32 %i.cl, %i.cn
end_hunk_0

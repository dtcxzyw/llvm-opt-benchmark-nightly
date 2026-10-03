Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/selectionoptionmanager?download=true
inline.NumInlined: 486
inline.NumDeleted: 282
begin_hunk_0_@_ZN3gmx22SelectionOptionManager27requestOptionDelayedParsingEPNS_22SelectionOptionStorageE:bb.a
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.af ; 4 uses
  %next.gep5 = getelementptr i8, ptr %i.i, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ag = getelementptr i8, ptr %next.gep5, i64 32
  %i.ah = getelementptr i8, ptr %next.gep5, i64 64
  %i.ai = getelementptr i8, ptr %next.gep5, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep5, align 8, !tbaa !43, !alias.scope !127, !noalias !126
  %wide.load6 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !43, !alias.scope !127, !noalias !126
  %wide.load7 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !43, !alias.scope !127, !noalias !126
  %wide.load8 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !43, !alias.scope !127, !noalias !126
  %i.aj = getelementptr i8, ptr %next.gep, i64 32
  %i.ak = getelementptr i8, ptr %next.gep, i64 64
  %i.al = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !43, !alias.scope !126, !noalias !127
  store <4 x i64> %wide.load6, ptr %i.aj, align 8, !tbaa !43, !alias.scope !126, !noalias !127
  store <4 x i64> %wide.load7, ptr %i.ak, align 8, !tbaa !43, !alias.scope !126, !noalias !127
  store <4 x i64> %wide.load8, ptr %i.al, align 8, !tbaa !43, !alias.scope !126, !noalias !127
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.an = shl i64 %n.vec10, 3                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.t, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.i, i64 %i.an
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index11, 3                     ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.t, i64 %i.aq
  %next.gep13 = getelementptr i8, ptr %i.i, i64 %i.aq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %wide.load14 = load <4 x i64>, ptr %next.gep13, align 8, !tbaa !43, !alias.scope !127, !noalias !126
  store <4 x i64> %wide.load14, ptr %next.gep12, align 8, !tbaa !43, !alias.scope !126, !noalias !127
  %index.next15 = add nuw i64 %index11, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next15, %n.vec10
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.z, %n.vec10
  br i1 %cmp.n16, label %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.as = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !43, !alias.scope !127, !noalias !126
  store i64 %i.as, ptr %.012.i.i.i.i.i, align 8, !tbaa !43, !alias.scope !126, !noalias !127
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !125

_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i33.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE17_M_realloc_insertIJRPNS0_22SelectionOptionStorageEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i.i
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ay) #23
  br label %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE17_M_realloc_insertIJRPNS0_22SelectionOptionStorageEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE17_M_realloc_insertIJRPNS0_22SelectionOptionStorageEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit32.i.i
  store ptr %i.t, ptr %i.c, align 8, !tbaa !38
  store ptr %i.av, ptr %i.d, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.az, ptr %i.f, align 8, !tbaa !44
  br label %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE12emplace_backIJRPNS0_22SelectionOptionStorageEEEERS3_DpOT_.exit

_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE12emplace_backIJRPNS0_22SelectionOptionStorageEEEERS3_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN3gmx22SelectionOptionManager4Impl16SelectionRequestESaIS3_EE17_M_realloc_insertIJRPNS0_22SelectionOptionStorageEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK3gmx22SelectionOptionManager22hasRequestedSelectionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = icmp ne ptr %i.d, %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx22SelectionOptionManager11initOptionsEPNS_17IOptionsContainerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 3 uses
  %.not9 = icmp eq ptr %i.d, %i.f
  br i1 %.not9, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = ptrtoaddr ptr %i.d to i64
  %i.i = add i64 %i.g, -8
  %i.j = sub i64 %i.i, %i.h                       ; 3 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.k, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.j, 24
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.j, 120
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.l, 12
  %n.vec = and i64 %i.l, 4611686018427387888      ; 4 uses
  %i.n = shl i64 %n.vec, 3
  %i.o = getelementptr i8, ptr %i.d, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi14 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi15 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi16 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %i.p = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.p ; 4 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 32
  %i.r = getelementptr i8, ptr %next.gep, i64 64
  %i.s = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !43
  %wide.load17 = load <4 x ptr>, ptr %i.q, align 8, !tbaa !43
  %wide.load18 = load <4 x ptr>, ptr %i.r, align 8, !tbaa !43
  %wide.load19 = load <4 x ptr>, ptr %i.s, align 8, !tbaa !43
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 200
  %wide.gep20 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load17, i64 200
  %wide.gep21 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load18, i64 200
  %wide.gep22 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load19, i64 200
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !132
  %wide.masked.gather23 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep20, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !132
  %wide.masked.gather24 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep21, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !132
  %wide.masked.gather25 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep22, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !132
  %i.t = and <4 x i64> %wide.masked.gather, splat (i64 2)
  %i.u = and <4 x i64> %wide.masked.gather23, splat (i64 2)
  %i.v = and <4 x i64> %wide.masked.gather24, splat (i64 2)
  %i.w = and <4 x i64> %wide.masked.gather25, splat (i64 2)
  %i.x = icmp eq <4 x i64> %i.t, zeroinitializer
  %i.y = icmp eq <4 x i64> %i.u, zeroinitializer
  %i.z = icmp eq <4 x i64> %i.v, zeroinitializer
  %i.aa = icmp eq <4 x i64> %i.w, zeroinitializer
  %i.ab = or <4 x i1> %vec.phi, %i.x              ; 2 uses
  %i.ac = or <4 x i1> %vec.phi14, %i.y            ; 2 uses
  %i.ad = or <4 x i1> %vec.phi15, %i.z            ; 2 uses
  %i.ae = or <4 x i1> %vec.phi16, %i.aa           ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.ac, %i.ab
  %bin.rdx26 = or <4 x i1> %i.ad, %bin.rdx
  %bin.rdx27 = or <4 x i1> %i.ae, %bin.rdx26
  %bin.rdx27.fr = freeze <4 x i1> %bin.rdx27
  %i.ag = bitcast <4 x i1> %bin.rdx27.fr to i4
  %.not40 = icmp eq i4 %i.ag, 0
  %rdx.select = zext i1 %.not40 to i8             ; 3 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %rdx.select, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %i.l, 4611686018427387900    ; 3 uses
  %2 = icmp eq i8 %bc.merge.rdx, 0
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %2, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %3 = shl i64 %n.vec28, 3
  %4 = getelementptr i8, ptr %i.d, i64 %3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi30 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr41, %vec.epilog.vector.body ]
  %i.ah = shl i64 %index29, 3
  %next.gep31 = getelementptr i8, ptr %i.d, i64 %i.ah
  %wide.load32 = load <4 x ptr>, ptr %next.gep31, align 8, !tbaa !43
  %wide.gep33 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load32, i64 200
  %wide.masked.gather34 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep33, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !132
  %i.ai = and <4 x i64> %wide.masked.gather34, splat (i64 2)
  %i.aj = icmp eq <4 x i64> %i.ai, zeroinitializer
  %i.ak = or <4 x i1> %vec.phi30, %i.aj
  %.fr41 = freeze <4 x i1> %i.ak                  ; 2 uses
  %index.next35 = add nuw i64 %index29, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next35, %n.vec28
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.am = bitcast <4 x i1> %.fr41 to i4
  %.not42 = icmp eq i4 %i.am, 0
  %rdx.select36 = zext i1 %.not42 to i8           ; 2 uses
  %cmp.n37 = icmp eq i64 %i.l, %n.vec28
  br i1 %cmp.n37, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.ph = phi i8 [ 1, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select36, %vec.epilog.middle.block ]
  %.sroa.05.010.ph = phi ptr [ %i.d, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.011 = phi i8 [ %spec.select, %.lr.ph ], [ %.011.ph, %.lr.ph.preheader ]
  %.sroa.05.010 = phi ptr [ %i.ar, %.lr.ph ], [ %.sroa.05.010.ph, %.lr.ph.preheader ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.05.010, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !132
  %i.aq = and i64 %i.ap, 2
  %.not8 = icmp eq i64 %i.aq, 0
  %spec.select = select i1 %.not8, i8 0, i8 %.011 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.f
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !130

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i8 [ %rdx.select36, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.as = zext nneg i8 %spec.select.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.as, %._crit_edge.loopexit ]
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !65, !nonnull !66, !align !67
  tail call void @_ZN3gmx19SelectionCollection11initOptionsEPNS_17IOptionsContainerENS0_19SelectionTypeOptionE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %1, i32 noundef %.0.lcssa)
  ret void
}

declare void @_ZN3gmx19SelectionCollection11initOptionsEPNS_17IOptionsContainerENS0_19SelectionTypeOptionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx22SelectionOptionManager23parseRequestedFromStdinEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::vector.7", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %.not27 = icmp eq ptr %i.d, %i.f
  br i1 %.not27, label %_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit19, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.022.028 = phi ptr [ %i.d, %.lr.ph ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.i = load ptr, ptr %.sroa.022.028, align 8, !tbaa !16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.7, ptr noundef %i.k, ptr noundef %i.m)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65, !nonnull !66, !align !67
  %i.p = load ptr, ptr %.sroa.022.028, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  invoke void @_ZN3gmx19SelectionCollection14parseFromStdinEibRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.7") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 noundef %i.r, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %.sroa.022.028, align 8, !tbaa !16
  invoke void @_ZN3gmx22SelectionOptionStorage13addSelectionsERKSt6vectorINS_9SelectionESaIS2_EEb(ptr noundef nonnull align 8 dereferenceable(208) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %3, align 8, !tbaa !35     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #23
  br label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit:   ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.h
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !31
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12
  %.not = icmp eq ptr %i.ac, %i.af
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !133

bb.g:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.h:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit12

bb.i:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #23
  br label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit12

_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit12: ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ai, %bb.i ], [ %i.ai, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ao = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.h
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit12
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !31
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %.pn, %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !39
  %.not.i.i.i16 = icmp eq ptr %i.at, %i.as
  br i1 %.not.i.i.i16, label %_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit, label %_ZSt8_DestroyIPN3gmx22SelectionOptionManager4Impl16SelectionRequestES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3gmx22SelectionOptionManager4Impl16SelectionRequestES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  store ptr %i.as, ptr %i.e, align 8, !tbaa !39
  br label %_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit

_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZSt8_DestroyIPN3gmx22SelectionOptionManager4Impl16SelectionRequestES3_EvT_S5_RSaIT0_E.exit.i.i.i
  resume { ptr, i32 } %.pn.pn

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %.pre29 = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.au = icmp eq ptr %.pre29, %.pre
  br i1 %i.au, label %_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit19, label %_ZSt8_DestroyIPN3gmx22SelectionOptionManager4Impl16SelectionRequestES3_EvT_S5_RSaIT0_E.exit.i.i.i18

_ZSt8_DestroyIPN3gmx22SelectionOptionManager4Impl16SelectionRequestES3_EvT_S5_RSaIT0_E.exit.i.i.i18: ; preds = %._crit_edge
  store ptr %.pre, ptr %i.e, align 8, !tbaa !39
  br label %_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit19

_ZN3gmx22SelectionOptionManager4Impl15RequestsClearerD2Ev.exit19: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPN3gmx22SelectionOptionManager4Impl16SelectionRequestES3_EvT_S5_RSaIT0_E.exit.i.i.i18
end_hunk_0

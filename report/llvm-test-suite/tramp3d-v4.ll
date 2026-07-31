inline.NumInlined: 28156
inline.NumDeleted: 8422
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZNK18CanonicalCenteringILi1EEclE13CenteringType14ContinuityTypei:bb.a
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 44
  %i.af = ptrtoaddr ptr %i.y to i64
  %i.ag = sub i64 %i.t, %i.af
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 9223372036854775800     ; 3 uses
  %i.ah = shl i64 %n.vec, 2                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.r, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ak ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.r, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !236
  %wide.load15 = load <4 x i32>, ptr %i.al, align 4, !tbaa !236
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %wide.load15, ptr %i.am, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader39

.lr.ph.i.i.i.i.i.i.preheader39:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader39, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %i.ao = load i32, ptr %.sroa.04.08.i.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ao, ptr %.09.i.i.i.i.i.i, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.q
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !252

_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i:   ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EEC2EmRKS2_.exit.i.i.thread ], [ %i.ai, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !231
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !242 ; 3 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !245 ; 5 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i4.i, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread, label %bb.d

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread: ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr null, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !246
  br label %_ZN9CenteringILi1EEC2ERKS0_.exit

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EEC2ERKS3_.exit.i
  %i.bc = icmp ugt i64 %i.az, 9223372036854775800
  br i1 %i.bc, label %bb.e, label %.lr.ph.i.i.i.i.i6.i.preheader, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

.lr.ph.i.i.i.i.i6.i.preheader:                    ; preds = %bb.d
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #45 ; 6 uses
  store ptr %i.bd, ptr %i.as, align 8, !tbaa !245
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !246
  %i.bg = sub i64 %i.ax, %i.ay
  %i.bh = add i64 %i.bg, -8                       ; 2 uses
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check20 = icmp ult i64 %i.bh, 72
  %i.bk = ptrtoaddr ptr %i.bd to i64
  %i.bl = sub i64 %i.ay, %i.bk
  %diff.check18 = icmp ugt i64 %i.bl, -32
  %or.cond37 = or i1 %min.iters.check20, %diff.check18
  br i1 %or.cond37, label %.lr.ph.i.i.i.i.i6.i.preheader38, label %vector.ph21

vector.ph21:                                      ; preds = %.lr.ph.i.i.i.i.i6.i.preheader
  %n.vec23 = and i64 %i.bj, 4611686018427387900   ; 3 uses
  %i.bm = shl i64 %n.vec23, 3                     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bd, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.aw, i64 %i.bm
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph21
  %index25 = phi i64 [ 0, %vector.ph21 ], [ %index.next30, %vector.body24 ] ; 2 uses
  %i.bp = shl i64 %index25, 3                     ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.bd, i64 %i.bp ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.aw, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load28 = load <2 x double>, ptr %next.gep27, align 8, !tbaa !247
  %wide.load29 = load <2 x double>, ptr %i.bq, align 8, !tbaa !247
  %i.br = getelementptr i8, ptr %next.gep26, i64 16
  store <2 x double> %wide.load28, ptr %next.gep26, align 8, !tbaa !247
  store <2 x double> %wide.load29, ptr %i.br, align 8, !tbaa !247
  %index.next30 = add nuw i64 %index25, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.bs, label %middle.block31, label %vector.body24, !llvm.loop !253

middle.block31:                                   ; preds = %vector.body24
  %cmp.n32 = icmp eq i64 %i.bj, %n.vec23
  br i1 %cmp.n32, label %_ZN9CenteringILi1EEC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i6.i.preheader38

.lr.ph.i.i.i.i.i6.i.preheader38:                  ; preds = %.lr.ph.i.i.i.i.i6.i.preheader, %middle.block31
  %.09.i.i.i.i.i7.i.ph = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i6.i.preheader ], [ %i.bn, %middle.block31 ]
  %.sroa.04.08.i.i.i.i.i8.i.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i6.i.preheader ], [ %i.bo, %middle.block31 ]
  br label %.lr.ph.i.i.i.i.i6.i

.lr.ph.i.i.i.i.i6.i:                              ; preds = %.lr.ph.i.i.i.i.i6.i.preheader38, %.lr.ph.i.i.i.i.i6.i
  %.09.i.i.i.i.i7.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i6.i ], [ %.09.i.i.i.i.i7.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader38 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i8.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i6.i ], [ %.sroa.04.08.i.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader38 ] ; 2 uses
  %i.bt = load double, ptr %.sroa.04.08.i.i.i.i.i8.i, align 8, !tbaa !247
  store double %i.bt, ptr %.09.i.i.i.i.i7.i, align 8, !tbaa !247
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i9.i = icmp eq ptr %i.bu, %i.av
  br i1 %.not.i.i.i.i.i9.i, label %_ZN9CenteringILi1EEC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i6.i, !llvm.loop !254

_ZN9CenteringILi1EEC2ERKS0_.exit:                 ; preds = %.lr.ph.i.i.i.i.i6.i, %middle.block31, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread
  %.0.lcssa.i.i.i.i.i10.i = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread ], [ %i.bn, %middle.block31 ], [ %i.bv, %.lr.ph.i.i.i.i.i6.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.lcssa.i.i.i.i.i10.i, ptr %i.bw, align 8, !tbaa !242
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z18canonicalCenteringILi2EEK9CenteringIXT_EE13CenteringType14ContinuityTypei(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.Centering.67) align 8 captures(none) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.a = icmp eq i32 %3, 0
  %i.b = srem i32 %3, 4
  %i.c = select i1 %i.a, i32 3, i32 %i.b
  %i.d = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258, !noalias !255
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260, !noalias !255
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !262, !noalias !255
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [56 x i8], ptr %i.j, i64 %i.k ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !255
  store i64 %i.m, ptr %0, align 8, !alias.scope !255
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264, !noalias !255 ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !267, !noalias !255 ; 9 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !alias.scope !255
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread.i, label %bb.b

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread.i: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr null, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.n, align 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !268, !alias.scope !255
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.u, 9223372036854775800
  br i1 %i.x, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader.i, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46, !noalias !255
  unreachable

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %bb.b
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #45, !noalias !255 ; 9 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !267, !alias.scope !255
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !268, !alias.scope !255
  %i.ab = sub i64 %i.s, %i.t
  %i.ac = add i64 %i.ab, -8                       ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader.i
  %i.af = add i64 %i.s, -8
  %i.ag = sub i64 %i.af, %i.t
  %i.ah = and i64 %i.ag, -8
  %i.ai = add i64 %i.ah, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ai
  %scevgep12 = getelementptr i8, ptr %i.r, i64 %i.ai
  %bound0 = icmp ult ptr %i.y, %scevgep12
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.y, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.r, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 3 uses
  %i.an = or disjoint i64 %i.am, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.am
  %next.gep13 = getelementptr i8, ptr %i.y, i64 %i.an
  %next.gep14 = getelementptr i8, ptr %i.r, i64 %i.am
  %next.gep15 = getelementptr i8, ptr %i.r, i64 %i.an
  %wide.vec = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !236, !alias.scope !269, !noalias !255
  %wide.vec17 = load <4 x i32>, ptr %next.gep15, align 4, !tbaa !236, !alias.scope !269, !noalias !255
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !272, !noalias !255
  store <4 x i32> %wide.vec17, ptr %next.gep13, align 4, !tbaa !4, !alias.scope !272, !noalias !255
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader.i, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.ak, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader.i ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ap = load i32, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 4, !tbaa !236, !noalias !255
  store i32 %i.ap, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !4, !noalias !255
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !236, !noalias !255
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !4, !noalias !255
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.q
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !275

_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread.i ], [ %i.ak, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.av, align 8, !tbaa !264, !alias.scope !255
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !276, !noalias !255 ; 3 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !279, !noalias !255 ; 9 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false), !alias.scope !255
  %.not.i.i.i.i4.i.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i.i4.i.i, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.i, label %bb.d

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.i: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr null, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.aw, align 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !280, !alias.scope !255
  br label %_ZNK18CanonicalCenteringILi2EEclE13CenteringType14ContinuityTypei.exit

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i.i
  %i.bg = icmp ugt i64 %i.bd, 9223372036854775792
  br i1 %i.bg, label %bb.e, label %.lr.ph.i.i.i.i.i6.i.preheader.i, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46, !noalias !255
  unreachable

.lr.ph.i.i.i.i.i6.i.preheader.i:                  ; preds = %bb.d
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #45, !noalias !255 ; 9 uses
  store ptr %i.bh, ptr %i.aw, align 8, !tbaa !279, !alias.scope !255
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !280, !alias.scope !255
  %i.bk = sub i64 %i.bb, %i.bc
  %i.bl = add i64 %i.bk, -16                      ; 2 uses
  %i.bm = lshr i64 %i.bl, 4
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check29 = icmp ult i64 %i.bl, 240
  br i1 %min.iters.check29, label %.lr.ph.i.i.i.i.i6.i.i.preheader, label %vector.memcheck22

vector.memcheck22:                                ; preds = %.lr.ph.i.i.i.i.i6.i.preheader.i
  %i.bo = add i64 %i.bb, -16
  %i.bp = sub i64 %i.bo, %i.bc
  %i.bq = and i64 %i.bp, -16
  %i.br = add i64 %i.bq, 16                       ; 2 uses
  %scevgep23 = getelementptr i8, ptr %i.bh, i64 %i.br
  %scevgep24 = getelementptr i8, ptr %i.ba, i64 %i.br
  %bound025 = icmp ult ptr %i.bh, %scevgep24
  %bound126 = icmp ult ptr %i.ba, %scevgep23
  %found.conflict27 = and i1 %bound025, %bound126
  br i1 %found.conflict27, label %.lr.ph.i.i.i.i.i6.i.i.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %vector.memcheck22
  %n.vec32 = and i64 %i.bn, 2305843009213693950   ; 3 uses
  %i.bs = shl i64 %n.vec32, 4                     ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bh, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.ba, i64 %i.bs
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next40, %vector.body33 ] ; 2 uses
  %i.bv = shl i64 %index34, 4                     ; 3 uses
  %i.bw = or disjoint i64 %i.bv, 16               ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.bh, i64 %i.bv
  %next.gep36 = getelementptr i8, ptr %i.bh, i64 %i.bw
  %next.gep37 = getelementptr i8, ptr %i.ba, i64 %i.bv
  %next.gep38 = getelementptr i8, ptr %i.ba, i64 %i.bw
  %wide.load = load <2 x double>, ptr %next.gep37, align 8, !tbaa !247, !alias.scope !281, !noalias !255
  %wide.load39 = load <2 x double>, ptr %next.gep38, align 8, !tbaa !247, !alias.scope !281, !noalias !255
  store <2 x double> %wide.load, ptr %next.gep35, align 8, !tbaa !247, !alias.scope !284, !noalias !286
  store <2 x double> %wide.load39, ptr %next.gep36, align 8, !tbaa !247, !alias.scope !284, !noalias !286
  %index.next40 = add nuw i64 %index34, 2         ; 2 uses
  %i.bx = icmp eq i64 %index.next40, %n.vec32
  br i1 %i.bx, label %middle.block41, label %vector.body33, !llvm.loop !287

middle.block41:                                   ; preds = %vector.body33
  %cmp.n42 = icmp eq i64 %i.bn, %n.vec32
  br i1 %cmp.n42, label %_ZNK18CanonicalCenteringILi2EEclE13CenteringType14ContinuityTypei.exit, label %.lr.ph.i.i.i.i.i6.i.i.preheader

.lr.ph.i.i.i.i.i6.i.i.preheader:                  ; preds = %vector.memcheck22, %.lr.ph.i.i.i.i.i6.i.preheader.i, %middle.block41
  %.09.i.i.i.i.i7.i.i.ph = phi ptr [ %i.bh, %vector.memcheck22 ], [ %i.bh, %.lr.ph.i.i.i.i.i6.i.preheader.i ], [ %i.bt, %middle.block41 ]
  %.sroa.04.08.i.i.i.i.i8.i.i.ph = phi ptr [ %i.ba, %vector.memcheck22 ], [ %i.ba, %.lr.ph.i.i.i.i.i6.i.preheader.i ], [ %i.bu, %middle.block41 ]
  br label %.lr.ph.i.i.i.i.i6.i.i

.lr.ph.i.i.i.i.i6.i.i:                            ; preds = %.lr.ph.i.i.i.i.i6.i.i.preheader, %.lr.ph.i.i.i.i.i6.i.i
  %.09.i.i.i.i.i7.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i6.i.i ], [ %.09.i.i.i.i.i7.i.i.ph, %.lr.ph.i.i.i.i.i6.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i8.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i6.i.i ], [ %.sroa.04.08.i.i.i.i.i8.i.i.ph, %.lr.ph.i.i.i.i.i6.i.i.preheader ] ; 3 uses
  %i.by = load double, ptr %.sroa.04.08.i.i.i.i.i8.i.i, align 8, !tbaa !247, !noalias !255
  store double %i.by, ptr %.09.i.i.i.i.i7.i.i, align 8, !tbaa !247, !noalias !255
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i.i, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !247, !noalias !255
  store double %i.cb, ptr %i.bz, align 8, !tbaa !247, !noalias !255
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i.i, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i9.i.i = icmp eq ptr %i.cc, %i.az
  br i1 %.not.i.i.i.i.i9.i.i, label %_ZNK18CanonicalCenteringILi2EEclE13CenteringType14ContinuityTypei.exit, label %.lr.ph.i.i.i.i.i6.i.i, !llvm.loop !288

_ZNK18CanonicalCenteringILi2EEclE13CenteringType14ContinuityTypei.exit: ; preds = %.lr.ph.i.i.i.i.i6.i.i, %middle.block41, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.i
  %.0.lcssa.i.i.i.i.i10.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread.i ], [ %i.bt, %middle.block41 ], [ %i.cd, %.lr.ph.i.i.i.i.i6.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.lcssa.i.i.i.i.i10.i.i, ptr %i.ce, align 8, !tbaa !276, !alias.scope !255
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK18CanonicalCenteringILi2EEclE13CenteringType14ContinuityTypei(ptr dead_on_unwind noalias writable sret(%class.Centering.67) align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  %i.b = srem i32 %4, 4
  %i.c = select i1 %i.a, i32 3, i32 %i.b
  %i.d = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !260
  %i.h = zext i32 %3 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !262
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [56 x i8], ptr %i.j, i64 %i.k ; 5 uses
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264  ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !267  ; 9 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread, label %bb.b

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr null, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.u, 9223372036854775800
  br i1 %i.x, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #45 ; 9 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !267
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !268
  %i.ab = sub i64 %i.s, %i.t
  %i.ac = add i64 %i.ab, -8                       ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader48, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.af = add i64 %i.s, -8
  %i.ag = sub i64 %i.af, %i.t
  %i.ah = and i64 %i.ag, -8
  %i.ai = add i64 %i.ah, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ai
  %scevgep14 = getelementptr i8, ptr %i.r, i64 %i.ai
  %bound0 = icmp ult ptr %i.y, %scevgep14
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.y, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.r, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 3 uses
  %i.an = or disjoint i64 %i.am, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.am
  %next.gep15 = getelementptr i8, ptr %i.y, i64 %i.an
  %next.gep16 = getelementptr i8, ptr %i.r, i64 %i.am
  %next.gep17 = getelementptr i8, ptr %i.r, i64 %i.an
  %wide.vec = load <4 x i32>, ptr %next.gep16, align 4, !tbaa !236, !alias.scope !289
  %wide.vec19 = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !236, !alias.scope !289
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !292, !noalias !289
  store <4 x i32> %wide.vec19, ptr %next.gep15, align 4, !tbaa !4, !alias.scope !292, !noalias !289
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.preheader48:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader48 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader48 ] ; 3 uses
  %i.ap = load i32, ptr %.sroa.04.08.i.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ap, ptr %.09.i.i.i.i.i.i, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !236
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, %i.q
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !295

_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i:   ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i.i.thread ], [ %i.ak, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.av, align 8, !tbaa !264
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !276 ; 3 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !279 ; 9 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i.i4.i, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread, label %bb.d

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr null, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EEC2ERKS0_.exit

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i
  %i.bg = icmp ugt i64 %i.bd, 9223372036854775792
  br i1 %i.bg, label %bb.e, label %.lr.ph.i.i.i.i.i6.i.preheader, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

.lr.ph.i.i.i.i.i6.i.preheader:                    ; preds = %bb.d
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #45 ; 9 uses
  store ptr %i.bh, ptr %i.aw, align 8, !tbaa !279
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !280
  %i.bk = sub i64 %i.bb, %i.bc
  %i.bl = add i64 %i.bk, -16                      ; 2 uses
  %i.bm = lshr i64 %i.bl, 4
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check31 = icmp ult i64 %i.bl, 240
  br i1 %min.iters.check31, label %.lr.ph.i.i.i.i.i6.i.preheader47, label %vector.memcheck24

vector.memcheck24:                                ; preds = %.lr.ph.i.i.i.i.i6.i.preheader
  %i.bo = add i64 %i.bb, -16
  %i.bp = sub i64 %i.bo, %i.bc
  %i.bq = and i64 %i.bp, -16
  %i.br = add i64 %i.bq, 16                       ; 2 uses
  %scevgep25 = getelementptr i8, ptr %i.bh, i64 %i.br
  %scevgep26 = getelementptr i8, ptr %i.ba, i64 %i.br
  %bound027 = icmp ult ptr %i.bh, %scevgep26
  %bound128 = icmp ult ptr %i.ba, %scevgep25
  %found.conflict29 = and i1 %bound027, %bound128
  br i1 %found.conflict29, label %.lr.ph.i.i.i.i.i6.i.preheader47, label %vector.ph32

vector.ph32:                                      ; preds = %vector.memcheck24
  %n.vec34 = and i64 %i.bn, 2305843009213693950   ; 3 uses
  %i.bs = shl i64 %n.vec34, 4                     ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bh, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.ba, i64 %i.bs
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph32
  %index36 = phi i64 [ 0, %vector.ph32 ], [ %index.next42, %vector.body35 ] ; 2 uses
  %i.bv = shl i64 %index36, 4                     ; 3 uses
  %i.bw = or disjoint i64 %i.bv, 16               ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.bh, i64 %i.bv
  %next.gep38 = getelementptr i8, ptr %i.bh, i64 %i.bw
  %next.gep39 = getelementptr i8, ptr %i.ba, i64 %i.bv
  %next.gep40 = getelementptr i8, ptr %i.ba, i64 %i.bw
  %wide.load = load <2 x double>, ptr %next.gep39, align 8, !tbaa !247, !alias.scope !296
  %wide.load41 = load <2 x double>, ptr %next.gep40, align 8, !tbaa !247, !alias.scope !296
  store <2 x double> %wide.load, ptr %next.gep37, align 8, !tbaa !247, !alias.scope !299, !noalias !296
  store <2 x double> %wide.load41, ptr %next.gep38, align 8, !tbaa !247, !alias.scope !299, !noalias !296
  %index.next42 = add nuw i64 %index36, 2         ; 2 uses
  %i.bx = icmp eq i64 %index.next42, %n.vec34
  br i1 %i.bx, label %middle.block43, label %vector.body35, !llvm.loop !301

middle.block43:                                   ; preds = %vector.body35
  %cmp.n44 = icmp eq i64 %i.bn, %n.vec34
  br i1 %cmp.n44, label %_ZN9CenteringILi2EEC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i6.i.preheader47

.lr.ph.i.i.i.i.i6.i.preheader47:                  ; preds = %vector.memcheck24, %.lr.ph.i.i.i.i.i6.i.preheader, %middle.block43
  %.09.i.i.i.i.i7.i.ph = phi ptr [ %i.bh, %vector.memcheck24 ], [ %i.bh, %.lr.ph.i.i.i.i.i6.i.preheader ], [ %i.bt, %middle.block43 ]
  %.sroa.04.08.i.i.i.i.i8.i.ph = phi ptr [ %i.ba, %vector.memcheck24 ], [ %i.ba, %.lr.ph.i.i.i.i.i6.i.preheader ], [ %i.bu, %middle.block43 ]
  br label %.lr.ph.i.i.i.i.i6.i

.lr.ph.i.i.i.i.i6.i:                              ; preds = %.lr.ph.i.i.i.i.i6.i.preheader47, %.lr.ph.i.i.i.i.i6.i
  %.09.i.i.i.i.i7.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i6.i ], [ %.09.i.i.i.i.i7.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader47 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i8.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i6.i ], [ %.sroa.04.08.i.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader47 ] ; 3 uses
  %i.by = load double, ptr %.sroa.04.08.i.i.i.i.i8.i, align 8, !tbaa !247
  store double %i.by, ptr %.09.i.i.i.i.i7.i, align 8, !tbaa !247
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !247
  store double %i.cb, ptr %i.bz, align 8, !tbaa !247
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i9.i = icmp eq ptr %i.cc, %i.az
  br i1 %.not.i.i.i.i.i9.i, label %_ZN9CenteringILi2EEC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i6.i, !llvm.loop !302

_ZN9CenteringILi2EEC2ERKS0_.exit:                 ; preds = %.lr.ph.i.i.i.i.i6.i, %middle.block43, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread
  %.0.lcssa.i.i.i.i.i10.i = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i.thread ], [ %i.bt, %middle.block43 ], [ %i.cd, %.lr.ph.i.i.i.i.i6.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.lcssa.i.i.i.i.i10.i, ptr %i.ce, align 8, !tbaa !276
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z18canonicalCenteringILi3EEK9CenteringIXT_EE13CenteringType14ContinuityTypei(ptr dead_on_unwind noalias nonnull writable sret(%class.Centering.78) align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  %i.b = srem i32 %3, 8
  %i.c = select i1 %i.a, i32 7, i32 %i.b
  %i.d = load ptr, ptr @_ZN18CanonicalCenteringILi3EE17centering_table_mE, align 8, !tbaa !303, !noalias !305
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !308, !noalias !305
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310, !noalias !305
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [56 x i8], ptr %i.j, i64 %i.k
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.l)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK18CanonicalCenteringILi3EEclE13CenteringType14ContinuityTypei(ptr dead_on_unwind noalias writable sret(%class.Centering.78) align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  %i.b = srem i32 %4, 8
  %i.c = select i1 %i.a, i32 7, i32 %i.b
  %i.d = load ptr, ptr @_ZN18CanonicalCenteringILi3EE17centering_table_mE, align 8, !tbaa !303
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !308
  %i.h = zext i32 %3 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !310
  %i.k = sext i32 %i.c to i64
  %i.l = getelementptr inbounds [56 x i8], ptr %i.j, i64 %i.k
  tail call void @_ZN9CenteringILi3EEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.l)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN18CanonicalCenteringILi1EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat($_ZN18CanonicalCenteringILi1EEC5Ev) align 2 {
bb.a:
  %1 = alloca %class.Centering, align 8           ; 18 uses
  %2 = alloca %class.Loc, align 4                 ; 15 uses
  %3 = alloca %class.Vector, align 8              ; 17 uses
  %4 = alloca [1 x [2 x %"class.std::vector.57"]], align 16 ; 18 uses
  %5 = alloca [1 x [2 x %"class.std::vector.62"]], align 16 ; 18 uses
  %6 = alloca %class.Centering, align 8           ; 9 uses
  %7 = alloca %class.Centering, align 8           ; 15 uses
  %8 = alloca %class.Centering, align 8           ; 15 uses
  %9 = alloca %class.Centering, align 8           ; 7 uses
  %10 = alloca %class.Centering, align 8          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #47
  store i32 3, ptr %1, align 8, !tbaa !312
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store i32 0, ptr %2, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  store double 0.000000e+00, ptr %3, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.c = load i32, ptr @_ZN18CanonicalCenteringILi1EE13class_count_mE, align 4, !tbaa !4 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit114.loopexit, label %.loopexit114

.loopexit114.loopexit:                            ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #45 ; 5 uses
  store ptr %i.e, ptr @_ZN18CanonicalCenteringILi1EE17centering_table_mE, align 8, !tbaa !224
  %i.f = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !227
  %i.g = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.g, align 16
  %.ptr51 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51, align 8, !tbaa !312
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.ptr51.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.h, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1, align 16, !tbaa !312
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.i, i8 0, i64 52, i1 false)
  store ptr %.ptr51, ptr %i.f, align 8, !tbaa !229
  %i.j = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.j, align 16
  %.ptr51.1128 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.1128, align 8, !tbaa !312
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.ptr51.1.1 = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.k, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.1, align 16, !tbaa !312
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.l, i8 0, i64 52, i1 false)
  store ptr %.ptr51.1128, ptr %i.m, align 8, !tbaa !229
  %i.n = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !227
  %i.p = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.p, align 16
  %.ptr51.1130 = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.1130, align 8, !tbaa !312
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.ptr51.1.1131 = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.q, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.1131, align 16, !tbaa !312
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.r, i8 0, i64 52, i1 false)
  store ptr %.ptr51.1130, ptr %i.n, align 8, !tbaa !229
  %i.s = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.s, align 16
  %.ptr51.1128.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.1128.1, align 8, !tbaa !312
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %.ptr51.1.1.1 = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.t, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.1.1, align 16, !tbaa !312
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.u, i8 0, i64 52, i1 false)
  store ptr %.ptr51.1128.1, ptr %i.v, align 8, !tbaa !229
  %i.w = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !227
  %i.y = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znam(i64 noundef 120) #45 ; 5 uses
  store i64 2, ptr %i.y, align 16
  %.ptr51.2 = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store i32 3, ptr %.ptr51.2, align 8, !tbaa !312
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.ptr51.1.2 = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.z, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr51.1.2, align 16, !tbaa !312
end_hunk_0
begin_hunk_1_@_ZN18CanonicalCenteringILi2EEC2Ev:bb.a
  store ptr %.ptr71.1974, ptr %i.r, align 8, !tbaa !262
  %i.y = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znam(i64 noundef 232) #45 ; 9 uses
  store i64 4, ptr %i.y, align 16
  %.ptr71.1972.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store i32 3, ptr %.ptr71.1972.1, align 8, !tbaa !361
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.ptr71.1.1.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.z, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.1.1.1, align 16, !tbaa !361
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %.ptr71.2.1.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.aa, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.2.1.1, align 8, !tbaa !361
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 124
  %.ptr71.3.1.1 = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ab, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.3.1.1, align 16, !tbaa !361
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 180
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ac, i8 0, i64 52, i1 false)
  store ptr %.ptr71.1972.1, ptr %i.ad, align 8, !tbaa !262
  %i.ae = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !260
  %i.ag = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znam(i64 noundef 232) #45 ; 9 uses
  store i64 4, ptr %i.ag, align 16
  %.ptr71.2979 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store i32 3, ptr %.ptr71.2979, align 8, !tbaa !361
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %.ptr71.1.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ah, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.1.2, align 16, !tbaa !361
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %.ptr71.2.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ai, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.2.2, align 8, !tbaa !361
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 124
  %.ptr71.3.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.aj, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.3.2, align 16, !tbaa !361
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ak, i8 0, i64 52, i1 false)
  store ptr %.ptr71.2979, ptr %i.ae, align 8, !tbaa !262
  %i.al = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znam(i64 noundef 232) #45 ; 9 uses
  store i64 4, ptr %i.al, align 16
  %.ptr71.1972.2 = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store i32 3, ptr %.ptr71.1972.2, align 8, !tbaa !361
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %.ptr71.1.1.2 = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.am, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.1.1.2, align 16, !tbaa !361
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %.ptr71.2.1.2 = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.an, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.2.1.2, align 8, !tbaa !361
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 124
  %.ptr71.3.1.2 = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ao, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.3.1.2, align 16, !tbaa !361
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 180
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ap, i8 0, i64 52, i1 false)
  store ptr %.ptr71.1972.2, ptr %i.aq, align 8, !tbaa !262
  %i.ar = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #45 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !260
  %i.at = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znam(i64 noundef 232) #45 ; 9 uses
  store i64 4, ptr %i.at, align 16
  %.ptr71.3980 = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store i32 3, ptr %.ptr71.3980, align 8, !tbaa !361
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %.ptr71.1.3 = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.au, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.1.3, align 16, !tbaa !361
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  %.ptr71.2.3 = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.av, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.2.3, align 8, !tbaa !361
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 124
  %.ptr71.3.3 = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.aw, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.3.3, align 16, !tbaa !361
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ax, i8 0, i64 52, i1 false)
  store ptr %.ptr71.3980, ptr %i.ar, align 8, !tbaa !262
  %i.ay = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znam(i64 noundef 232) #45 ; 9 uses
  store i64 4, ptr %i.ay, align 16
  %.ptr71.1972.3 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store i32 3, ptr %.ptr71.1972.3, align 8, !tbaa !361
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %.ptr71.1.1.3 = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.az, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.1.1.3, align 16, !tbaa !361
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 68
  %.ptr71.2.1.3 = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ba, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.2.1.3, align 8, !tbaa !361
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 124
  %.ptr71.3.1.3 = getelementptr inbounds nuw i8, ptr %i.ay, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bb, i8 0, i64 52, i1 false)
  store i32 3, ptr %.ptr71.3.1.3, align 16, !tbaa !361
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 180
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bc, i8 0, i64 52, i1 false)
  store ptr %.ptr71.1972.3, ptr %i.bd, align 8, !tbaa !262
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.be = add nsw i32 %i.c, 1
  store i32 %i.be, ptr @_ZN18CanonicalCenteringILi2EE13class_count_mE, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store i32 3, ptr %4, align 8, !tbaa !361
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.bf, i8 0, i64 52, i1 false)
  %i.bh = load i64, ptr %4, align 8
  store i64 %i.bh, ptr %1, align 8
  %i.bi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bg) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 19 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk) ; 0 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !280
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %.loopexit
  %i.bs = load ptr, ptr %i.bg, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i1.i, label %_ZN9CenteringILi2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !268
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #48
  br label %_ZN9CenteringILi2EED2Ev.exit

_ZN9CenteringILi2EED2Ev.exit:                     ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 18 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !264 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 13 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !268
  %.not.i.i = icmp eq ptr %i.bz, %i.cb
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9CenteringILi2EED2Ev.exit
  store i32 1, ptr %i.bz, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 1, ptr %i.cc, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cd, ptr %i.by, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i

bb.e:                                             ; preds = %_ZN9CenteringILi2EED2Ev.exit
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !267 ; 11 uses
  %i.cf = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 4 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.f, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.cj = ashr exact i64 %i.ch, 3                 ; 3 uses
  %.sroa.speculated.i.i232 = call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i232, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 3 uses
  %.not.i.i233 = icmp ne i64 %i.cn, 0
  call void @llvm.assume(i1 %.not.i.i233)
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #45 ; 11 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch ; 2 uses
  store i32 1, ptr %i.cq, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 1, ptr %i.cr, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i234 = icmp eq ptr %i.ce, %i.bz
  br i1 %.not9.i.i.i.i.i.i234, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i, label %.lr.ph.i.i.i.i.i.i235.preheader

.lr.ph.i.i.i.i.i.i235.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.cs = sub i64 %i.cf, %i.cg
  %i.ct = add i64 %i.cs, -8                       ; 2 uses
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ct, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i235.preheader2351, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i235.preheader
  %i.cw = add i64 %i.cf, -8
  %i.cx = sub i64 %i.cw, %i.cg
  %i.cy = and i64 %i.cx, -8
  %i.cz = add i64 %i.cy, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cp, i64 %i.cz
  %scevgep1323 = getelementptr i8, ptr %i.ce, i64 %i.cz
  %bound0 = icmp ult ptr %i.cp, %scevgep1323
  %bound1 = icmp ult ptr %i.ce, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i235.preheader2351, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cv, 4611686018427387900     ; 3 uses
  %i.da = shl i64 %n.vec, 3                       ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.da  ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ce, i64 %i.da
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 3                       ; 3 uses
  %i.de = or disjoint i64 %i.dd, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.dd
  %next.gep1324 = getelementptr i8, ptr %i.cp, i64 %i.de
  %next.gep1325 = getelementptr i8, ptr %i.ce, i64 %i.dd
  %next.gep1326 = getelementptr i8, ptr %i.ce, i64 %i.de
  %wide.vec = load <4 x i32>, ptr %next.gep1325, align 4, !tbaa !236, !alias.scope !369
  %wide.vec1328 = load <4 x i32>, ptr %next.gep1326, align 4, !tbaa !236, !alias.scope !369
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !372, !noalias !369
  store <4 x i32> %wide.vec1328, ptr %next.gep1324, align 4, !tbaa !4, !alias.scope !372, !noalias !369
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i, label %.lr.ph.i.i.i.i.i.i235.preheader2351

.lr.ph.i.i.i.i.i.i235.preheader2351:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i235.preheader, %middle.block
  %.011.i.i.i.i.i.i236.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.i.i.i.i.i.i235.preheader ], [ %i.db, %middle.block ]
  %.0810.i.i.i.i.i.i237.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i.i.i.i.i.i235.preheader ], [ %i.dc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i235

.lr.ph.i.i.i.i.i.i235:                            ; preds = %.lr.ph.i.i.i.i.i.i235.preheader2351, %.lr.ph.i.i.i.i.i.i235
  %.011.i.i.i.i.i.i236 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i235 ], [ %.011.i.i.i.i.i.i236.ph, %.lr.ph.i.i.i.i.i.i235.preheader2351 ] ; 3 uses
  %.0810.i.i.i.i.i.i237 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i235 ], [ %.0810.i.i.i.i.i.i237.ph, %.lr.ph.i.i.i.i.i.i235.preheader2351 ] ; 3 uses
  %i.dg = load i32, ptr %.0810.i.i.i.i.i.i237, align 4, !tbaa !236
  store i32 %i.dg, ptr %.011.i.i.i.i.i.i236, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i236, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i237, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !236
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !4
  %i.dk = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i237, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i236, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i238 = icmp eq ptr %i.dk, %i.bz
  br i1 %.not.i.i.i.i.i.i238, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i, label %.lr.ph.i.i.i.i.i.i235, !llvm.loop !375

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i: ; preds = %.lr.ph.i.i.i.i.i.i235, %middle.block, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i.i239 = phi ptr [ %i.cp, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.db, %middle.block ], [ %i.dl, %.lr.ph.i.i.i.i.i.i235 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i239, i64 8
  %.not.i25.i246 = icmp eq ptr %i.ce, null
  br i1 %.not.i25.i246, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ch) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i, %bb.g
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !267
  store ptr %i.dm, ptr %i.by, align 8, !tbaa !264
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn
  store ptr %i.dn, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.d
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 18 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !276 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 13 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !280
  %.not.i3.i = icmp eq ptr %i.dp, %i.dr
  br i1 %.not.i3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i
  store <2 x double> splat (double 5.000000e-01), ptr %i.dp, align 8, !tbaa !247
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store ptr %i.ds, ptr %i.do, align 8, !tbaa !276
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit

bb.i:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i
  %i.dt = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 11 uses
  %i.du = ptrtoint ptr %i.dp to i64               ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64               ; 3 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 4 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775792
  br i1 %i.dx, label %bb.j, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.dy = ashr exact i64 %i.dw, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 576460752303423487)
  %i.ec = select i1 %i.ea, i64 576460752303423487, i64 %i.eb ; 3 uses
  %.not.i.i228 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i228)
  %i.ed = shl nuw nsw i64 %i.ec, 4
  %i.ee = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #45 ; 11 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw
  store <2 x double> splat (double 5.000000e-01), ptr %i.ef, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.dt, %i.dp
  br i1 %.not9.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i, label %.lr.ph.i.i.i.i.i.i229.preheader

.lr.ph.i.i.i.i.i.i229.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.eg = sub i64 %i.du, %i.dv
  %i.eh = add i64 %i.eg, -16                      ; 2 uses
  %i.ei = lshr i64 %i.eh, 4
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check1340 = icmp ult i64 %i.eh, 240
  br i1 %min.iters.check1340, label %.lr.ph.i.i.i.i.i.i229.preheader2349, label %vector.memcheck1333

vector.memcheck1333:                              ; preds = %.lr.ph.i.i.i.i.i.i229.preheader
  %i.ek = add i64 %i.du, -16
  %i.el = sub i64 %i.ek, %i.dv
  %i.em = and i64 %i.el, -16
  %i.en = add i64 %i.em, 16                       ; 2 uses
  %scevgep1334 = getelementptr i8, ptr %i.ee, i64 %i.en
  %scevgep1335 = getelementptr i8, ptr %i.dt, i64 %i.en
  %bound01336 = icmp ult ptr %i.ee, %scevgep1335
  %bound11337 = icmp ult ptr %i.dt, %scevgep1334
  %found.conflict1338 = and i1 %bound01336, %bound11337
  br i1 %found.conflict1338, label %.lr.ph.i.i.i.i.i.i229.preheader2349, label %vector.ph1341

vector.ph1341:                                    ; preds = %vector.memcheck1333
  %n.vec1343 = and i64 %i.ej, 2305843009213693950 ; 3 uses
  %i.eo = shl i64 %n.vec1343, 4                   ; 2 uses
  %i.ep = getelementptr i8, ptr %i.ee, i64 %i.eo  ; 2 uses
  %i.eq = getelementptr i8, ptr %i.dt, i64 %i.eo
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %vector.ph1341
  %index1345 = phi i64 [ 0, %vector.ph1341 ], [ %index.next1351, %vector.body1344 ] ; 2 uses
  %i.er = shl i64 %index1345, 4                   ; 3 uses
  %i.es = or disjoint i64 %i.er, 16               ; 2 uses
  %next.gep1346 = getelementptr i8, ptr %i.ee, i64 %i.er
  %next.gep1347 = getelementptr i8, ptr %i.ee, i64 %i.es
  %next.gep1348 = getelementptr i8, ptr %i.dt, i64 %i.er
  %next.gep1349 = getelementptr i8, ptr %i.dt, i64 %i.es
  %wide.load = load <2 x double>, ptr %next.gep1348, align 8, !tbaa !247, !alias.scope !376
  %wide.load1350 = load <2 x double>, ptr %next.gep1349, align 8, !tbaa !247, !alias.scope !376
  store <2 x double> %wide.load, ptr %next.gep1346, align 8, !tbaa !247, !alias.scope !379, !noalias !376
  store <2 x double> %wide.load1350, ptr %next.gep1347, align 8, !tbaa !247, !alias.scope !379, !noalias !376
  %index.next1351 = add nuw i64 %index1345, 2     ; 2 uses
  %i.et = icmp eq i64 %index.next1351, %n.vec1343
  br i1 %i.et, label %middle.block1352, label %vector.body1344, !llvm.loop !381

middle.block1352:                                 ; preds = %vector.body1344
  %cmp.n1353 = icmp eq i64 %i.ej, %n.vec1343
  br i1 %cmp.n1353, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i, label %.lr.ph.i.i.i.i.i.i229.preheader2349

.lr.ph.i.i.i.i.i.i229.preheader2349:              ; preds = %vector.memcheck1333, %.lr.ph.i.i.i.i.i.i229.preheader, %middle.block1352
  %.011.i.i.i.i.i.i.ph = phi ptr [ %i.ee, %vector.memcheck1333 ], [ %i.ee, %.lr.ph.i.i.i.i.i.i229.preheader ], [ %i.ep, %middle.block1352 ]
  %.0810.i.i.i.i.i.i.ph = phi ptr [ %i.dt, %vector.memcheck1333 ], [ %i.dt, %.lr.ph.i.i.i.i.i.i229.preheader ], [ %i.eq, %middle.block1352 ]
  br label %.lr.ph.i.i.i.i.i.i229

.lr.ph.i.i.i.i.i.i229:                            ; preds = %.lr.ph.i.i.i.i.i.i229.preheader2349, %.lr.ph.i.i.i.i.i.i229
  %.011.i.i.i.i.i.i = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i229 ], [ %.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i229.preheader2349 ] ; 3 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i229 ], [ %.0810.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i229.preheader2349 ] ; 3 uses
  %i.eu = load double, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !247
  store double %i.eu, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !247
  %i.ev = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !247
  store double %i.ex, ptr %i.ev, align 8, !tbaa !247
  %i.ey = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i230 = icmp eq ptr %i.ey, %i.dp
  br i1 %.not.i.i.i.i.i.i230, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i, label %.lr.ph.i.i.i.i.i.i229, !llvm.loop !382

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i: ; preds = %.lr.ph.i.i.i.i.i.i229, %middle.block1352, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i.i231 = phi ptr [ %i.ee, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.ep, %middle.block1352 ], [ %i.ez, %.lr.ph.i.i.i.i.i.i229 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i231, i64 16
  %.not.i25.i = icmp eq ptr %i.dt, null
  br i1 %.not.i25.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dw) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i, %bb.k
  store ptr %i.ee, ptr %i.bj, align 8, !tbaa !279
  store ptr %i.fa, ptr %i.do, align 8, !tbaa !276
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.fb, ptr %i.dq, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit

_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit: ; preds = %bb.h, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit
  %i.fc = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !260
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !262 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 168
  %i.fh = load i64, ptr %1, align 8
  store i64 %i.fh, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 176
  %i.fj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 200
  %i.fl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 8 dereferenceable(24) %i.bj) ; 0 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !264 ; 7 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.fp = load ptr, ptr %i.fo, align 16, !tbaa !268
  %.not.i.i74 = icmp eq ptr %i.fn, %i.fp
  br i1 %.not.i.i74, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit
  store i32 1, ptr %i.fn, align 4, !tbaa !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i32 0, ptr %i.fq, align 4, !tbaa !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.fr, ptr %i.fm, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i75

bb.m:                                             ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit
  %i.fs = load ptr, ptr %2, align 16, !tbaa !267  ; 11 uses
  %i.ft = ptrtoint ptr %i.fn to i64               ; 3 uses
  %i.fu = ptrtoint ptr %i.fs to i64               ; 3 uses
  %i.fv = sub i64 %i.ft, %i.fu                    ; 4 uses
  %i.fw = icmp eq i64 %i.fv, 9223372036854775800
  br i1 %i.fw, label %bb.n, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i266

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i266: ; preds = %bb.m
  %i.fx = ashr exact i64 %i.fv, 3                 ; 3 uses
  %.sroa.speculated.i.i267 = call i64 @llvm.umax.i64(i64 %i.fx, i64 1)
  %i.fy = add nsw i64 %.sroa.speculated.i.i267, %i.fx ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 1152921504606846975)
  %i.gb = select i1 %i.fz, i64 1152921504606846975, i64 %i.ga ; 3 uses
  %.not.i.i268 = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i268)
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #45 ; 11 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fv ; 2 uses
  store i32 1, ptr %i.ge, align 4, !tbaa !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i32 0, ptr %i.gf, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i269 = icmp eq ptr %i.fs, %i.fn
  br i1 %.not9.i.i.i.i.i.i269, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i281, label %.lr.ph.i.i.i.i.i.i270.preheader

.lr.ph.i.i.i.i.i.i270.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i266
  %i.gg = sub i64 %i.ft, %i.fu
  %i.gh = add i64 %i.gg, -8                       ; 2 uses
  %i.gi = lshr i64 %i.gh, 3
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %min.iters.check1363 = icmp ult i64 %i.gh, 120
  br i1 %min.iters.check1363, label %.lr.ph.i.i.i.i.i.i270.preheader2347, label %vector.memcheck1356

vector.memcheck1356:                              ; preds = %.lr.ph.i.i.i.i.i.i270.preheader
  %i.gk = add i64 %i.ft, -8
  %i.gl = sub i64 %i.gk, %i.fu
  %i.gm = and i64 %i.gl, -8
  %i.gn = add i64 %i.gm, 8                        ; 2 uses
  %scevgep1357 = getelementptr i8, ptr %i.gd, i64 %i.gn
  %scevgep1358 = getelementptr i8, ptr %i.fs, i64 %i.gn
  %bound01359 = icmp ult ptr %i.gd, %scevgep1358
  %bound11360 = icmp ult ptr %i.fs, %scevgep1357
  %found.conflict1361 = and i1 %bound01359, %bound11360
  br i1 %found.conflict1361, label %.lr.ph.i.i.i.i.i.i270.preheader2347, label %vector.ph1364

vector.ph1364:                                    ; preds = %vector.memcheck1356
  %n.vec1366 = and i64 %i.gj, 4611686018427387900 ; 3 uses
  %i.go = shl i64 %n.vec1366, 3                   ; 2 uses
  %i.gp = getelementptr i8, ptr %i.gd, i64 %i.go  ; 2 uses
  %i.gq = getelementptr i8, ptr %i.fs, i64 %i.go
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %vector.ph1364
  %index1368 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1381, %vector.body1367 ] ; 2 uses
  %i.gr = shl i64 %index1368, 3                   ; 3 uses
  %i.gs = or disjoint i64 %i.gr, 16               ; 2 uses
  %next.gep1369 = getelementptr i8, ptr %i.gd, i64 %i.gr
  %next.gep1370 = getelementptr i8, ptr %i.gd, i64 %i.gs
  %next.gep1371 = getelementptr i8, ptr %i.fs, i64 %i.gr
  %next.gep1372 = getelementptr i8, ptr %i.fs, i64 %i.gs
  %wide.vec1373 = load <4 x i32>, ptr %next.gep1371, align 4, !tbaa !236, !alias.scope !383
  %wide.vec1376 = load <4 x i32>, ptr %next.gep1372, align 4, !tbaa !236, !alias.scope !383
  store <4 x i32> %wide.vec1373, ptr %next.gep1369, align 4, !tbaa !4, !alias.scope !386, !noalias !383
  store <4 x i32> %wide.vec1376, ptr %next.gep1370, align 4, !tbaa !4, !alias.scope !386, !noalias !383
  %index.next1381 = add nuw i64 %index1368, 4     ; 2 uses
  %i.gt = icmp eq i64 %index.next1381, %n.vec1366
  br i1 %i.gt, label %middle.block1382, label %vector.body1367, !llvm.loop !388

middle.block1382:                                 ; preds = %vector.body1367
  %cmp.n1383 = icmp eq i64 %i.gj, %n.vec1366
  br i1 %cmp.n1383, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i281, label %.lr.ph.i.i.i.i.i.i270.preheader2347

.lr.ph.i.i.i.i.i.i270.preheader2347:              ; preds = %vector.memcheck1356, %.lr.ph.i.i.i.i.i.i270.preheader, %middle.block1382
  %.011.i.i.i.i.i.i271.ph = phi ptr [ %i.gd, %vector.memcheck1356 ], [ %i.gd, %.lr.ph.i.i.i.i.i.i270.preheader ], [ %i.gp, %middle.block1382 ]
  %.0810.i.i.i.i.i.i272.ph = phi ptr [ %i.fs, %vector.memcheck1356 ], [ %i.fs, %.lr.ph.i.i.i.i.i.i270.preheader ], [ %i.gq, %middle.block1382 ]
  br label %.lr.ph.i.i.i.i.i.i270

.lr.ph.i.i.i.i.i.i270:                            ; preds = %.lr.ph.i.i.i.i.i.i270.preheader2347, %.lr.ph.i.i.i.i.i.i270
  %.011.i.i.i.i.i.i271 = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i270 ], [ %.011.i.i.i.i.i.i271.ph, %.lr.ph.i.i.i.i.i.i270.preheader2347 ] ; 3 uses
  %.0810.i.i.i.i.i.i272 = phi ptr [ %i.gy, %.lr.ph.i.i.i.i.i.i270 ], [ %.0810.i.i.i.i.i.i272.ph, %.lr.ph.i.i.i.i.i.i270.preheader2347 ] ; 3 uses
  %i.gu = load i32, ptr %.0810.i.i.i.i.i.i272, align 4, !tbaa !236
  store i32 %i.gu, ptr %.011.i.i.i.i.i.i271, align 4, !tbaa !4
  %i.gv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i271, i64 4
  %i.gw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i272, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !236
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !4
  %i.gy = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i272, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i271, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i273 = icmp eq ptr %i.gy, %i.fn
  br i1 %.not.i.i.i.i.i.i273, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i281, label %.lr.ph.i.i.i.i.i.i270, !llvm.loop !389

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i281: ; preds = %.lr.ph.i.i.i.i.i.i270, %middle.block1382, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i266
  %.0.lcssa.i.i.i.i.i.i275 = phi ptr [ %i.gd, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i266 ], [ %i.gp, %middle.block1382 ], [ %i.gz, %.lr.ph.i.i.i.i.i.i270 ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i275, i64 8
  %.not.i25.i283 = icmp eq ptr %i.fs, null
  br i1 %.not.i25.i283, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit284, label %bb.o

bb.o:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i281
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fv) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit284

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit284: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i281, %bb.o
  store ptr %i.gd, ptr %2, align 16, !tbaa !267
  store ptr %i.ha, ptr %i.fm, align 8, !tbaa !264
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.hb, ptr %i.fo, align 16, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i75

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i75: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit284, %bb.l
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !276 ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.hf = load ptr, ptr %i.he, align 16, !tbaa !280
  %.not.i4.i = icmp eq ptr %i.hd, %i.hf
  br i1 %.not.i4.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i75
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %i.hd, align 8, !tbaa !247
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store ptr %i.hg, ptr %i.hc, align 8, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit

bb.q:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i75
  %i.hh = load ptr, ptr %3, align 16, !tbaa !279  ; 11 uses
  %i.hi = ptrtoint ptr %i.hd to i64               ; 3 uses
  %i.hj = ptrtoint ptr %i.hh to i64               ; 3 uses
  %i.hk = sub i64 %i.hi, %i.hj                    ; 4 uses
  %i.hl = icmp eq i64 %i.hk, 9223372036854775792
  br i1 %i.hl, label %bb.r, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i247

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i247: ; preds = %bb.q
  %i.hm = ashr exact i64 %i.hk, 4                 ; 3 uses
  %.sroa.speculated.i.i248 = call i64 @llvm.umax.i64(i64 %i.hm, i64 1)
  %i.hn = add nsw i64 %.sroa.speculated.i.i248, %i.hm ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.hm
  %i.hp = call i64 @llvm.umin.i64(i64 %i.hn, i64 576460752303423487)
  %i.hq = select i1 %i.ho, i64 576460752303423487, i64 %i.hp ; 3 uses
  %.not.i.i249 = icmp ne i64 %i.hq, 0
  call void @llvm.assume(i1 %.not.i.i249)
  %i.hr = shl nuw nsw i64 %i.hq, 4
  %i.hs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #45 ; 11 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hk
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %i.ht, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i250 = icmp eq ptr %i.hh, %i.hd
  br i1 %.not9.i.i.i.i.i.i250, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i262, label %.lr.ph.i.i.i.i.i.i251.preheader

.lr.ph.i.i.i.i.i.i251.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i247
  %i.hu = sub i64 %i.hi, %i.hj
  %i.hv = add i64 %i.hu, -16                      ; 2 uses
  %i.hw = lshr i64 %i.hv, 4
  %i.hx = add nuw nsw i64 %i.hw, 1                ; 2 uses
  %min.iters.check1393 = icmp ult i64 %i.hv, 240
  br i1 %min.iters.check1393, label %.lr.ph.i.i.i.i.i.i251.preheader2345, label %vector.memcheck1386

vector.memcheck1386:                              ; preds = %.lr.ph.i.i.i.i.i.i251.preheader
  %i.hy = add i64 %i.hi, -16
  %i.hz = sub i64 %i.hy, %i.hj
  %i.ia = and i64 %i.hz, -16
  %i.ib = add i64 %i.ia, 16                       ; 2 uses
  %scevgep1387 = getelementptr i8, ptr %i.hs, i64 %i.ib
  %scevgep1388 = getelementptr i8, ptr %i.hh, i64 %i.ib
  %bound01389 = icmp ult ptr %i.hs, %scevgep1388
  %bound11390 = icmp ult ptr %i.hh, %scevgep1387
  %found.conflict1391 = and i1 %bound01389, %bound11390
  br i1 %found.conflict1391, label %.lr.ph.i.i.i.i.i.i251.preheader2345, label %vector.ph1394

vector.ph1394:                                    ; preds = %vector.memcheck1386
  %n.vec1396 = and i64 %i.hx, 2305843009213693950 ; 3 uses
  %i.ic = shl i64 %n.vec1396, 4                   ; 2 uses
  %i.id = getelementptr i8, ptr %i.hs, i64 %i.ic  ; 2 uses
  %i.ie = getelementptr i8, ptr %i.hh, i64 %i.ic
  br label %vector.body1397

vector.body1397:                                  ; preds = %vector.body1397, %vector.ph1394
  %index1398 = phi i64 [ 0, %vector.ph1394 ], [ %index.next1405, %vector.body1397 ] ; 2 uses
  %i.if = shl i64 %index1398, 4                   ; 3 uses
  %i.ig = or disjoint i64 %i.if, 16               ; 2 uses
  %next.gep1399 = getelementptr i8, ptr %i.hs, i64 %i.if
  %next.gep1400 = getelementptr i8, ptr %i.hs, i64 %i.ig
  %next.gep1401 = getelementptr i8, ptr %i.hh, i64 %i.if
  %next.gep1402 = getelementptr i8, ptr %i.hh, i64 %i.ig
  %wide.load1403 = load <2 x double>, ptr %next.gep1401, align 8, !tbaa !247, !alias.scope !390
  %wide.load1404 = load <2 x double>, ptr %next.gep1402, align 8, !tbaa !247, !alias.scope !390
  store <2 x double> %wide.load1403, ptr %next.gep1399, align 8, !tbaa !247, !alias.scope !393, !noalias !390
  store <2 x double> %wide.load1404, ptr %next.gep1400, align 8, !tbaa !247, !alias.scope !393, !noalias !390
  %index.next1405 = add nuw i64 %index1398, 2     ; 2 uses
  %i.ih = icmp eq i64 %index.next1405, %n.vec1396
  br i1 %i.ih, label %middle.block1406, label %vector.body1397, !llvm.loop !395

middle.block1406:                                 ; preds = %vector.body1397
  %cmp.n1407 = icmp eq i64 %i.hx, %n.vec1396
  br i1 %cmp.n1407, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i262, label %.lr.ph.i.i.i.i.i.i251.preheader2345

.lr.ph.i.i.i.i.i.i251.preheader2345:              ; preds = %vector.memcheck1386, %.lr.ph.i.i.i.i.i.i251.preheader, %middle.block1406
  %.011.i.i.i.i.i.i252.ph = phi ptr [ %i.hs, %vector.memcheck1386 ], [ %i.hs, %.lr.ph.i.i.i.i.i.i251.preheader ], [ %i.id, %middle.block1406 ]
  %.0810.i.i.i.i.i.i253.ph = phi ptr [ %i.hh, %vector.memcheck1386 ], [ %i.hh, %.lr.ph.i.i.i.i.i.i251.preheader ], [ %i.ie, %middle.block1406 ]
  br label %.lr.ph.i.i.i.i.i.i251

.lr.ph.i.i.i.i.i.i251:                            ; preds = %.lr.ph.i.i.i.i.i.i251.preheader2345, %.lr.ph.i.i.i.i.i.i251
  %.011.i.i.i.i.i.i252 = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i.i251 ], [ %.011.i.i.i.i.i.i252.ph, %.lr.ph.i.i.i.i.i.i251.preheader2345 ] ; 3 uses
  %.0810.i.i.i.i.i.i253 = phi ptr [ %i.im, %.lr.ph.i.i.i.i.i.i251 ], [ %.0810.i.i.i.i.i.i253.ph, %.lr.ph.i.i.i.i.i.i251.preheader2345 ] ; 3 uses
  %i.ii = load double, ptr %.0810.i.i.i.i.i.i253, align 8, !tbaa !247
  store double %i.ii, ptr %.011.i.i.i.i.i.i252, align 8, !tbaa !247
  %i.ij = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i252, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i253, i64 8
  %i.il = load double, ptr %i.ik, align 8, !tbaa !247
  store double %i.il, ptr %i.ij, align 8, !tbaa !247
  %i.im = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i253, i64 16 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i252, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i254 = icmp eq ptr %i.im, %i.hd
  br i1 %.not.i.i.i.i.i.i254, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i262, label %.lr.ph.i.i.i.i.i.i251, !llvm.loop !396

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i262: ; preds = %.lr.ph.i.i.i.i.i.i251, %middle.block1406, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i247
  %.0.lcssa.i.i.i.i.i.i256 = phi ptr [ %i.hs, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i247 ], [ %i.id, %middle.block1406 ], [ %i.in, %.lr.ph.i.i.i.i.i.i251 ]
  %i.io = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i256, i64 16
  %.not.i25.i264 = icmp eq ptr %i.hh, null
  br i1 %.not.i25.i264, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit265, label %bb.s

bb.s:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i262
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hk) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit265

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit265: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i262, %bb.s
  store ptr %i.hs, ptr %3, align 16, !tbaa !279
  store ptr %i.io, ptr %i.hc, align 8, !tbaa !276
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %i.hq
  store ptr %i.ip, ptr %i.he, align 16, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit: ; preds = %bb.p, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit265
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.ir = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.it = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.iv = load ptr, ptr %i.iu, align 16, !tbaa !264 ; 7 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !268
  %.not.i.i76 = icmp eq ptr %i.iv, %i.ix
  br i1 %.not.i.i76, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit
  store i32 1, ptr %i.iv, align 4, !tbaa !4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  store i32 0, ptr %i.iy, align 4, !tbaa !4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store ptr %i.iz, ptr %i.iu, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i77

bb.u:                                             ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit
  %i.ja = load ptr, ptr %i.iq, align 8, !tbaa !267 ; 11 uses
  %i.jb = ptrtoint ptr %i.iv to i64               ; 3 uses
  %i.jc = ptrtoint ptr %i.ja to i64               ; 3 uses
  %i.jd = sub i64 %i.jb, %i.jc                    ; 4 uses
  %i.je = icmp eq i64 %i.jd, 9223372036854775800
  br i1 %i.je, label %bb.v, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i304

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i304: ; preds = %bb.u
  %i.jf = ashr exact i64 %i.jd, 3                 ; 3 uses
  %.sroa.speculated.i.i305 = call i64 @llvm.umax.i64(i64 %i.jf, i64 1)
  %i.jg = add nsw i64 %.sroa.speculated.i.i305, %i.jf ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.jf
  %i.ji = call i64 @llvm.umin.i64(i64 %i.jg, i64 1152921504606846975)
  %i.jj = select i1 %i.jh, i64 1152921504606846975, i64 %i.ji ; 3 uses
  %.not.i.i306 = icmp ne i64 %i.jj, 0
  call void @llvm.assume(i1 %.not.i.i306)
  %i.jk = shl nuw nsw i64 %i.jj, 3
  %i.jl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #45 ; 11 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jd ; 2 uses
  store i32 1, ptr %i.jm, align 4, !tbaa !4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  store i32 0, ptr %i.jn, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i307 = icmp eq ptr %i.ja, %i.iv
  br i1 %.not9.i.i.i.i.i.i307, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i319, label %.lr.ph.i.i.i.i.i.i308.preheader

.lr.ph.i.i.i.i.i.i308.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i304
  %i.jo = sub i64 %i.jb, %i.jc
  %i.jp = add i64 %i.jo, -8                       ; 2 uses
  %i.jq = lshr i64 %i.jp, 3
  %i.jr = add nuw nsw i64 %i.jq, 1                ; 2 uses
  %min.iters.check1417 = icmp ult i64 %i.jp, 120
  br i1 %min.iters.check1417, label %.lr.ph.i.i.i.i.i.i308.preheader2343, label %vector.memcheck1410

vector.memcheck1410:                              ; preds = %.lr.ph.i.i.i.i.i.i308.preheader
  %i.js = add i64 %i.jb, -8
  %i.jt = sub i64 %i.js, %i.jc
  %i.ju = and i64 %i.jt, -8
  %i.jv = add i64 %i.ju, 8                        ; 2 uses
  %scevgep1411 = getelementptr i8, ptr %i.jl, i64 %i.jv
  %scevgep1412 = getelementptr i8, ptr %i.ja, i64 %i.jv
  %bound01413 = icmp ult ptr %i.jl, %scevgep1412
  %bound11414 = icmp ult ptr %i.ja, %scevgep1411
  %found.conflict1415 = and i1 %bound01413, %bound11414
  br i1 %found.conflict1415, label %.lr.ph.i.i.i.i.i.i308.preheader2343, label %vector.ph1418

vector.ph1418:                                    ; preds = %vector.memcheck1410
  %n.vec1420 = and i64 %i.jr, 4611686018427387900 ; 3 uses
  %i.jw = shl i64 %n.vec1420, 3                   ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jl, i64 %i.jw  ; 2 uses
  %i.jy = getelementptr i8, ptr %i.ja, i64 %i.jw
  br label %vector.body1421

vector.body1421:                                  ; preds = %vector.body1421, %vector.ph1418
  %index1422 = phi i64 [ 0, %vector.ph1418 ], [ %index.next1435, %vector.body1421 ] ; 2 uses
  %i.jz = shl i64 %index1422, 3                   ; 3 uses
  %i.ka = or disjoint i64 %i.jz, 16               ; 2 uses
  %next.gep1423 = getelementptr i8, ptr %i.jl, i64 %i.jz
  %next.gep1424 = getelementptr i8, ptr %i.jl, i64 %i.ka
  %next.gep1425 = getelementptr i8, ptr %i.ja, i64 %i.jz
  %next.gep1426 = getelementptr i8, ptr %i.ja, i64 %i.ka
  %wide.vec1427 = load <4 x i32>, ptr %next.gep1425, align 4, !tbaa !236, !alias.scope !397
  %wide.vec1430 = load <4 x i32>, ptr %next.gep1426, align 4, !tbaa !236, !alias.scope !397
  store <4 x i32> %wide.vec1427, ptr %next.gep1423, align 4, !tbaa !4, !alias.scope !400, !noalias !397
  store <4 x i32> %wide.vec1430, ptr %next.gep1424, align 4, !tbaa !4, !alias.scope !400, !noalias !397
  %index.next1435 = add nuw i64 %index1422, 4     ; 2 uses
  %i.kb = icmp eq i64 %index.next1435, %n.vec1420
  br i1 %i.kb, label %middle.block1436, label %vector.body1421, !llvm.loop !402

middle.block1436:                                 ; preds = %vector.body1421
  %cmp.n1437 = icmp eq i64 %i.jr, %n.vec1420
  br i1 %cmp.n1437, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i319, label %.lr.ph.i.i.i.i.i.i308.preheader2343

.lr.ph.i.i.i.i.i.i308.preheader2343:              ; preds = %vector.memcheck1410, %.lr.ph.i.i.i.i.i.i308.preheader, %middle.block1436
  %.011.i.i.i.i.i.i309.ph = phi ptr [ %i.jl, %vector.memcheck1410 ], [ %i.jl, %.lr.ph.i.i.i.i.i.i308.preheader ], [ %i.jx, %middle.block1436 ]
  %.0810.i.i.i.i.i.i310.ph = phi ptr [ %i.ja, %vector.memcheck1410 ], [ %i.ja, %.lr.ph.i.i.i.i.i.i308.preheader ], [ %i.jy, %middle.block1436 ]
  br label %.lr.ph.i.i.i.i.i.i308

.lr.ph.i.i.i.i.i.i308:                            ; preds = %.lr.ph.i.i.i.i.i.i308.preheader2343, %.lr.ph.i.i.i.i.i.i308
  %.011.i.i.i.i.i.i309 = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i.i308 ], [ %.011.i.i.i.i.i.i309.ph, %.lr.ph.i.i.i.i.i.i308.preheader2343 ] ; 3 uses
  %.0810.i.i.i.i.i.i310 = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i.i308 ], [ %.0810.i.i.i.i.i.i310.ph, %.lr.ph.i.i.i.i.i.i308.preheader2343 ] ; 3 uses
  %i.kc = load i32, ptr %.0810.i.i.i.i.i.i310, align 4, !tbaa !236
  store i32 %i.kc, ptr %.011.i.i.i.i.i.i309, align 4, !tbaa !4
  %i.kd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i309, i64 4
  %i.ke = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i310, i64 4
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !236
  store i32 %i.kf, ptr %i.kd, align 4, !tbaa !4
  %i.kg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i310, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i309, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i311 = icmp eq ptr %i.kg, %i.iv
  br i1 %.not.i.i.i.i.i.i311, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i319, label %.lr.ph.i.i.i.i.i.i308, !llvm.loop !403

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i319: ; preds = %.lr.ph.i.i.i.i.i.i308, %middle.block1436, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i304
  %.0.lcssa.i.i.i.i.i.i313 = phi ptr [ %i.jl, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i304 ], [ %i.jx, %middle.block1436 ], [ %i.kh, %.lr.ph.i.i.i.i.i.i308 ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i313, i64 8
  %.not.i25.i321 = icmp eq ptr %i.ja, null
  br i1 %.not.i25.i321, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit322, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i319
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.jd) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit322

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit322: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i319, %bb.w
  store ptr %i.jl, ptr %i.iq, align 8, !tbaa !267
  store ptr %i.ki, ptr %i.iu, align 16, !tbaa !264
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jj
  store ptr %i.kj, ptr %i.iw, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i77

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i77: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit322, %bb.t
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.kl = load ptr, ptr %i.kk, align 16, !tbaa !276 ; 6 uses
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !280
  %.not.i4.i78 = icmp eq ptr %i.kl, %i.kn
  br i1 %.not.i4.i78, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i77
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, ptr %i.kl, align 8, !tbaa !247
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store ptr %i.ko, ptr %i.kk, align 16, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit79

bb.y:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i77
  %i.kp = load ptr, ptr %i.is, align 8, !tbaa !279 ; 11 uses
  %i.kq = ptrtoint ptr %i.kl to i64               ; 3 uses
  %i.kr = ptrtoint ptr %i.kp to i64               ; 3 uses
  %i.ks = sub i64 %i.kq, %i.kr                    ; 4 uses
  %i.kt = icmp eq i64 %i.ks, 9223372036854775792
  br i1 %i.kt, label %bb.z, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i285

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i285: ; preds = %bb.y
  %i.ku = ashr exact i64 %i.ks, 4                 ; 3 uses
  %.sroa.speculated.i.i286 = call i64 @llvm.umax.i64(i64 %i.ku, i64 1)
  %i.kv = add nsw i64 %.sroa.speculated.i.i286, %i.ku ; 2 uses
  %i.kw = icmp ult i64 %i.kv, %i.ku
  %i.kx = call i64 @llvm.umin.i64(i64 %i.kv, i64 576460752303423487)
  %i.ky = select i1 %i.kw, i64 576460752303423487, i64 %i.kx ; 3 uses
  %.not.i.i287 = icmp ne i64 %i.ky, 0
  call void @llvm.assume(i1 %.not.i.i287)
  %i.kz = shl nuw nsw i64 %i.ky, 4
  %i.la = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kz) #45 ; 11 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ks
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, ptr %i.lb, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i288 = icmp eq ptr %i.kp, %i.kl
  br i1 %.not9.i.i.i.i.i.i288, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i300, label %.lr.ph.i.i.i.i.i.i289.preheader

.lr.ph.i.i.i.i.i.i289.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i285
  %i.lc = sub i64 %i.kq, %i.kr
  %i.ld = add i64 %i.lc, -16                      ; 2 uses
  %i.le = lshr i64 %i.ld, 4
  %i.lf = add nuw nsw i64 %i.le, 1                ; 2 uses
  %min.iters.check1447 = icmp ult i64 %i.ld, 240
  br i1 %min.iters.check1447, label %.lr.ph.i.i.i.i.i.i289.preheader2341, label %vector.memcheck1440

vector.memcheck1440:                              ; preds = %.lr.ph.i.i.i.i.i.i289.preheader
  %i.lg = add i64 %i.kq, -16
  %i.lh = sub i64 %i.lg, %i.kr
  %i.li = and i64 %i.lh, -16
  %i.lj = add i64 %i.li, 16                       ; 2 uses
  %scevgep1441 = getelementptr i8, ptr %i.la, i64 %i.lj
  %scevgep1442 = getelementptr i8, ptr %i.kp, i64 %i.lj
  %bound01443 = icmp ult ptr %i.la, %scevgep1442
  %bound11444 = icmp ult ptr %i.kp, %scevgep1441
  %found.conflict1445 = and i1 %bound01443, %bound11444
  br i1 %found.conflict1445, label %.lr.ph.i.i.i.i.i.i289.preheader2341, label %vector.ph1448

vector.ph1448:                                    ; preds = %vector.memcheck1440
  %n.vec1450 = and i64 %i.lf, 2305843009213693950 ; 3 uses
  %i.lk = shl i64 %n.vec1450, 4                   ; 2 uses
  %i.ll = getelementptr i8, ptr %i.la, i64 %i.lk  ; 2 uses
  %i.lm = getelementptr i8, ptr %i.kp, i64 %i.lk
  br label %vector.body1451

vector.body1451:                                  ; preds = %vector.body1451, %vector.ph1448
  %index1452 = phi i64 [ 0, %vector.ph1448 ], [ %index.next1459, %vector.body1451 ] ; 2 uses
  %i.ln = shl i64 %index1452, 4                   ; 3 uses
  %i.lo = or disjoint i64 %i.ln, 16               ; 2 uses
  %next.gep1453 = getelementptr i8, ptr %i.la, i64 %i.ln
  %next.gep1454 = getelementptr i8, ptr %i.la, i64 %i.lo
  %next.gep1455 = getelementptr i8, ptr %i.kp, i64 %i.ln
  %next.gep1456 = getelementptr i8, ptr %i.kp, i64 %i.lo
  %wide.load1457 = load <2 x double>, ptr %next.gep1455, align 8, !tbaa !247, !alias.scope !404
  %wide.load1458 = load <2 x double>, ptr %next.gep1456, align 8, !tbaa !247, !alias.scope !404
  store <2 x double> %wide.load1457, ptr %next.gep1453, align 8, !tbaa !247, !alias.scope !407, !noalias !404
  store <2 x double> %wide.load1458, ptr %next.gep1454, align 8, !tbaa !247, !alias.scope !407, !noalias !404
  %index.next1459 = add nuw i64 %index1452, 2     ; 2 uses
  %i.lp = icmp eq i64 %index.next1459, %n.vec1450
  br i1 %i.lp, label %middle.block1460, label %vector.body1451, !llvm.loop !409

middle.block1460:                                 ; preds = %vector.body1451
  %cmp.n1461 = icmp eq i64 %i.lf, %n.vec1450
  br i1 %cmp.n1461, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i300, label %.lr.ph.i.i.i.i.i.i289.preheader2341

.lr.ph.i.i.i.i.i.i289.preheader2341:              ; preds = %vector.memcheck1440, %.lr.ph.i.i.i.i.i.i289.preheader, %middle.block1460
  %.011.i.i.i.i.i.i290.ph = phi ptr [ %i.la, %vector.memcheck1440 ], [ %i.la, %.lr.ph.i.i.i.i.i.i289.preheader ], [ %i.ll, %middle.block1460 ]
  %.0810.i.i.i.i.i.i291.ph = phi ptr [ %i.kp, %vector.memcheck1440 ], [ %i.kp, %.lr.ph.i.i.i.i.i.i289.preheader ], [ %i.lm, %middle.block1460 ]
  br label %.lr.ph.i.i.i.i.i.i289

.lr.ph.i.i.i.i.i.i289:                            ; preds = %.lr.ph.i.i.i.i.i.i289.preheader2341, %.lr.ph.i.i.i.i.i.i289
  %.011.i.i.i.i.i.i290 = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i.i289 ], [ %.011.i.i.i.i.i.i290.ph, %.lr.ph.i.i.i.i.i.i289.preheader2341 ] ; 3 uses
  %.0810.i.i.i.i.i.i291 = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i.i289 ], [ %.0810.i.i.i.i.i.i291.ph, %.lr.ph.i.i.i.i.i.i289.preheader2341 ] ; 3 uses
  %i.lq = load double, ptr %.0810.i.i.i.i.i.i291, align 8, !tbaa !247
  store double %i.lq, ptr %.011.i.i.i.i.i.i290, align 8, !tbaa !247
  %i.lr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i290, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i291, i64 8
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !247
  store double %i.lt, ptr %i.lr, align 8, !tbaa !247
  %i.lu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i291, i64 16 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i290, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i292 = icmp eq ptr %i.lu, %i.kl
  br i1 %.not.i.i.i.i.i.i292, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i300, label %.lr.ph.i.i.i.i.i.i289, !llvm.loop !410

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i300: ; preds = %.lr.ph.i.i.i.i.i.i289, %middle.block1460, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i285
  %.0.lcssa.i.i.i.i.i.i294 = phi ptr [ %i.la, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i285 ], [ %i.ll, %middle.block1460 ], [ %i.lv, %.lr.ph.i.i.i.i.i.i289 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i294, i64 16
  %.not.i25.i302 = icmp eq ptr %i.kp, null
  br i1 %.not.i25.i302, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit303, label %bb.aa

bb.aa:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i300
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.ks) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit303

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit303: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i300, %bb.aa
  store ptr %i.la, ptr %i.is, align 8, !tbaa !279
  store ptr %i.lw, ptr %i.kk, align 16, !tbaa !276
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %i.la, i64 %i.ky
  store ptr %i.lx, ptr %i.km, align 8, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit79

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit79: ; preds = %bb.x, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit303
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 10 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 10 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !264 ; 7 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.md = load ptr, ptr %i.mc, align 16, !tbaa !268
  %.not.i.i80 = icmp eq ptr %i.mb, %i.md
  br i1 %.not.i.i80, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit79
  store i32 0, ptr %i.mb, align 4, !tbaa !4
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  store i32 1, ptr %i.me, align 4, !tbaa !4
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store ptr %i.mf, ptr %i.ma, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i81

bb.ac:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit79
  %i.mg = load ptr, ptr %i.ly, align 16, !tbaa !267 ; 11 uses
  %i.mh = ptrtoint ptr %i.mb to i64               ; 3 uses
  %i.mi = ptrtoint ptr %i.mg to i64               ; 3 uses
  %i.mj = sub i64 %i.mh, %i.mi                    ; 4 uses
  %i.mk = icmp eq i64 %i.mj, 9223372036854775800
  br i1 %i.mk, label %bb.ad, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i342

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i342: ; preds = %bb.ac
  %i.ml = ashr exact i64 %i.mj, 3                 ; 3 uses
  %.sroa.speculated.i.i343 = call i64 @llvm.umax.i64(i64 %i.ml, i64 1)
  %i.mm = add nsw i64 %.sroa.speculated.i.i343, %i.ml ; 2 uses
  %i.mn = icmp ult i64 %i.mm, %i.ml
  %i.mo = call i64 @llvm.umin.i64(i64 %i.mm, i64 1152921504606846975)
  %i.mp = select i1 %i.mn, i64 1152921504606846975, i64 %i.mo ; 3 uses
  %.not.i.i344 = icmp ne i64 %i.mp, 0
  call void @llvm.assume(i1 %.not.i.i344)
  %i.mq = shl nuw nsw i64 %i.mp, 3
  %i.mr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mq) #45 ; 11 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mj ; 2 uses
  store i32 0, ptr %i.ms, align 4, !tbaa !4
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store i32 1, ptr %i.mt, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i345 = icmp eq ptr %i.mg, %i.mb
  br i1 %.not9.i.i.i.i.i.i345, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i357, label %.lr.ph.i.i.i.i.i.i346.preheader

.lr.ph.i.i.i.i.i.i346.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i342
  %i.mu = sub i64 %i.mh, %i.mi
  %i.mv = add i64 %i.mu, -8                       ; 2 uses
  %i.mw = lshr i64 %i.mv, 3
  %i.mx = add nuw nsw i64 %i.mw, 1                ; 2 uses
  %min.iters.check1471 = icmp ult i64 %i.mv, 120
  br i1 %min.iters.check1471, label %.lr.ph.i.i.i.i.i.i346.preheader2339, label %vector.memcheck1464

vector.memcheck1464:                              ; preds = %.lr.ph.i.i.i.i.i.i346.preheader
  %i.my = add i64 %i.mh, -8
  %i.mz = sub i64 %i.my, %i.mi
  %i.na = and i64 %i.mz, -8
  %i.nb = add i64 %i.na, 8                        ; 2 uses
  %scevgep1465 = getelementptr i8, ptr %i.mr, i64 %i.nb
  %scevgep1466 = getelementptr i8, ptr %i.mg, i64 %i.nb
  %bound01467 = icmp ult ptr %i.mr, %scevgep1466
  %bound11468 = icmp ult ptr %i.mg, %scevgep1465
  %found.conflict1469 = and i1 %bound01467, %bound11468
  br i1 %found.conflict1469, label %.lr.ph.i.i.i.i.i.i346.preheader2339, label %vector.ph1472

vector.ph1472:                                    ; preds = %vector.memcheck1464
  %n.vec1474 = and i64 %i.mx, 4611686018427387900 ; 3 uses
  %i.nc = shl i64 %n.vec1474, 3                   ; 2 uses
  %i.nd = getelementptr i8, ptr %i.mr, i64 %i.nc  ; 2 uses
  %i.ne = getelementptr i8, ptr %i.mg, i64 %i.nc
  br label %vector.body1475

vector.body1475:                                  ; preds = %vector.body1475, %vector.ph1472
  %index1476 = phi i64 [ 0, %vector.ph1472 ], [ %index.next1489, %vector.body1475 ] ; 2 uses
  %i.nf = shl i64 %index1476, 3                   ; 3 uses
  %i.ng = or disjoint i64 %i.nf, 16               ; 2 uses
  %next.gep1477 = getelementptr i8, ptr %i.mr, i64 %i.nf
  %next.gep1478 = getelementptr i8, ptr %i.mr, i64 %i.ng
  %next.gep1479 = getelementptr i8, ptr %i.mg, i64 %i.nf
  %next.gep1480 = getelementptr i8, ptr %i.mg, i64 %i.ng
  %wide.vec1481 = load <4 x i32>, ptr %next.gep1479, align 4, !tbaa !236, !alias.scope !411
  %wide.vec1484 = load <4 x i32>, ptr %next.gep1480, align 4, !tbaa !236, !alias.scope !411
  store <4 x i32> %wide.vec1481, ptr %next.gep1477, align 4, !tbaa !4, !alias.scope !414, !noalias !411
  store <4 x i32> %wide.vec1484, ptr %next.gep1478, align 4, !tbaa !4, !alias.scope !414, !noalias !411
  %index.next1489 = add nuw i64 %index1476, 4     ; 2 uses
  %i.nh = icmp eq i64 %index.next1489, %n.vec1474
  br i1 %i.nh, label %middle.block1490, label %vector.body1475, !llvm.loop !416

middle.block1490:                                 ; preds = %vector.body1475
  %cmp.n1491 = icmp eq i64 %i.mx, %n.vec1474
  br i1 %cmp.n1491, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i357, label %.lr.ph.i.i.i.i.i.i346.preheader2339

.lr.ph.i.i.i.i.i.i346.preheader2339:              ; preds = %vector.memcheck1464, %.lr.ph.i.i.i.i.i.i346.preheader, %middle.block1490
  %.011.i.i.i.i.i.i347.ph = phi ptr [ %i.mr, %vector.memcheck1464 ], [ %i.mr, %.lr.ph.i.i.i.i.i.i346.preheader ], [ %i.nd, %middle.block1490 ]
  %.0810.i.i.i.i.i.i348.ph = phi ptr [ %i.mg, %vector.memcheck1464 ], [ %i.mg, %.lr.ph.i.i.i.i.i.i346.preheader ], [ %i.ne, %middle.block1490 ]
  br label %.lr.ph.i.i.i.i.i.i346

.lr.ph.i.i.i.i.i.i346:                            ; preds = %.lr.ph.i.i.i.i.i.i346.preheader2339, %.lr.ph.i.i.i.i.i.i346
  %.011.i.i.i.i.i.i347 = phi ptr [ %i.nn, %.lr.ph.i.i.i.i.i.i346 ], [ %.011.i.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i.i346.preheader2339 ] ; 3 uses
  %.0810.i.i.i.i.i.i348 = phi ptr [ %i.nm, %.lr.ph.i.i.i.i.i.i346 ], [ %.0810.i.i.i.i.i.i348.ph, %.lr.ph.i.i.i.i.i.i346.preheader2339 ] ; 3 uses
  %i.ni = load i32, ptr %.0810.i.i.i.i.i.i348, align 4, !tbaa !236
  store i32 %i.ni, ptr %.011.i.i.i.i.i.i347, align 4, !tbaa !4
  %i.nj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i347, i64 4
  %i.nk = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i348, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !236
  store i32 %i.nl, ptr %i.nj, align 4, !tbaa !4
  %i.nm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i348, i64 8 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i347, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i349 = icmp eq ptr %i.nm, %i.mb
  br i1 %.not.i.i.i.i.i.i349, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i357, label %.lr.ph.i.i.i.i.i.i346, !llvm.loop !417

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i357: ; preds = %.lr.ph.i.i.i.i.i.i346, %middle.block1490, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i342
  %.0.lcssa.i.i.i.i.i.i351 = phi ptr [ %i.mr, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i342 ], [ %i.nd, %middle.block1490 ], [ %i.nn, %.lr.ph.i.i.i.i.i.i346 ]
  %i.no = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i351, i64 8
  %.not.i25.i359 = icmp eq ptr %i.mg, null
  br i1 %.not.i25.i359, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit360, label %bb.ae

bb.ae:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i357
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.mj) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit360

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit360: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i357, %bb.ae
  store ptr %i.mr, ptr %i.ly, align 16, !tbaa !267
  store ptr %i.no, ptr %i.ma, align 8, !tbaa !264
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.mp
  store ptr %i.np, ptr %i.mc, align 16, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i81

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i81: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit360, %bb.ab
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 6 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !276 ; 6 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.nt = load ptr, ptr %i.ns, align 16, !tbaa !280
  %.not.i4.i82 = icmp eq ptr %i.nr, %i.nt
  br i1 %.not.i4.i82, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i81
  store <2 x double> <double 0.000000e+00, double 5.000000e-01>, ptr %i.nr, align 8, !tbaa !247
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  store ptr %i.nu, ptr %i.nq, align 8, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit83

bb.ag:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i81
  %i.nv = load ptr, ptr %i.lz, align 16, !tbaa !279 ; 11 uses
  %i.nw = ptrtoint ptr %i.nr to i64               ; 3 uses
  %i.nx = ptrtoint ptr %i.nv to i64               ; 3 uses
  %i.ny = sub i64 %i.nw, %i.nx                    ; 4 uses
  %i.nz = icmp eq i64 %i.ny, 9223372036854775792
  br i1 %i.nz, label %bb.ah, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i323

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i323: ; preds = %bb.ag
  %i.oa = ashr exact i64 %i.ny, 4                 ; 3 uses
  %.sroa.speculated.i.i324 = call i64 @llvm.umax.i64(i64 %i.oa, i64 1)
  %i.ob = add nsw i64 %.sroa.speculated.i.i324, %i.oa ; 2 uses
  %i.oc = icmp ult i64 %i.ob, %i.oa
  %i.od = call i64 @llvm.umin.i64(i64 %i.ob, i64 576460752303423487)
  %i.oe = select i1 %i.oc, i64 576460752303423487, i64 %i.od ; 3 uses
  %.not.i.i325 = icmp ne i64 %i.oe, 0
  call void @llvm.assume(i1 %.not.i.i325)
  %i.of = shl nuw nsw i64 %i.oe, 4
  %i.og = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.of) #45 ; 11 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.ny
  store <2 x double> <double 0.000000e+00, double 5.000000e-01>, ptr %i.oh, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i326 = icmp eq ptr %i.nv, %i.nr
  br i1 %.not9.i.i.i.i.i.i326, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i338, label %.lr.ph.i.i.i.i.i.i327.preheader

.lr.ph.i.i.i.i.i.i327.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i323
  %i.oi = sub i64 %i.nw, %i.nx
  %i.oj = add i64 %i.oi, -16                      ; 2 uses
  %i.ok = lshr i64 %i.oj, 4
  %i.ol = add nuw nsw i64 %i.ok, 1                ; 2 uses
  %min.iters.check1501 = icmp ult i64 %i.oj, 240
  br i1 %min.iters.check1501, label %.lr.ph.i.i.i.i.i.i327.preheader2337, label %vector.memcheck1494

vector.memcheck1494:                              ; preds = %.lr.ph.i.i.i.i.i.i327.preheader
  %i.om = add i64 %i.nw, -16
  %i.on = sub i64 %i.om, %i.nx
  %i.oo = and i64 %i.on, -16
  %i.op = add i64 %i.oo, 16                       ; 2 uses
  %scevgep1495 = getelementptr i8, ptr %i.og, i64 %i.op
  %scevgep1496 = getelementptr i8, ptr %i.nv, i64 %i.op
  %bound01497 = icmp ult ptr %i.og, %scevgep1496
  %bound11498 = icmp ult ptr %i.nv, %scevgep1495
  %found.conflict1499 = and i1 %bound01497, %bound11498
  br i1 %found.conflict1499, label %.lr.ph.i.i.i.i.i.i327.preheader2337, label %vector.ph1502

vector.ph1502:                                    ; preds = %vector.memcheck1494
  %n.vec1504 = and i64 %i.ol, 2305843009213693950 ; 3 uses
  %i.oq = shl i64 %n.vec1504, 4                   ; 2 uses
  %i.or = getelementptr i8, ptr %i.og, i64 %i.oq  ; 2 uses
  %i.os = getelementptr i8, ptr %i.nv, i64 %i.oq
  br label %vector.body1505

vector.body1505:                                  ; preds = %vector.body1505, %vector.ph1502
  %index1506 = phi i64 [ 0, %vector.ph1502 ], [ %index.next1513, %vector.body1505 ] ; 2 uses
  %i.ot = shl i64 %index1506, 4                   ; 3 uses
  %i.ou = or disjoint i64 %i.ot, 16               ; 2 uses
  %next.gep1507 = getelementptr i8, ptr %i.og, i64 %i.ot
  %next.gep1508 = getelementptr i8, ptr %i.og, i64 %i.ou
  %next.gep1509 = getelementptr i8, ptr %i.nv, i64 %i.ot
  %next.gep1510 = getelementptr i8, ptr %i.nv, i64 %i.ou
  %wide.load1511 = load <2 x double>, ptr %next.gep1509, align 8, !tbaa !247, !alias.scope !418
  %wide.load1512 = load <2 x double>, ptr %next.gep1510, align 8, !tbaa !247, !alias.scope !418
  store <2 x double> %wide.load1511, ptr %next.gep1507, align 8, !tbaa !247, !alias.scope !421, !noalias !418
  store <2 x double> %wide.load1512, ptr %next.gep1508, align 8, !tbaa !247, !alias.scope !421, !noalias !418
  %index.next1513 = add nuw i64 %index1506, 2     ; 2 uses
  %i.ov = icmp eq i64 %index.next1513, %n.vec1504
  br i1 %i.ov, label %middle.block1514, label %vector.body1505, !llvm.loop !423

middle.block1514:                                 ; preds = %vector.body1505
  %cmp.n1515 = icmp eq i64 %i.ol, %n.vec1504
  br i1 %cmp.n1515, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i338, label %.lr.ph.i.i.i.i.i.i327.preheader2337

.lr.ph.i.i.i.i.i.i327.preheader2337:              ; preds = %vector.memcheck1494, %.lr.ph.i.i.i.i.i.i327.preheader, %middle.block1514
  %.011.i.i.i.i.i.i328.ph = phi ptr [ %i.og, %vector.memcheck1494 ], [ %i.og, %.lr.ph.i.i.i.i.i.i327.preheader ], [ %i.or, %middle.block1514 ]
  %.0810.i.i.i.i.i.i329.ph = phi ptr [ %i.nv, %vector.memcheck1494 ], [ %i.nv, %.lr.ph.i.i.i.i.i.i327.preheader ], [ %i.os, %middle.block1514 ]
  br label %.lr.ph.i.i.i.i.i.i327

.lr.ph.i.i.i.i.i.i327:                            ; preds = %.lr.ph.i.i.i.i.i.i327.preheader2337, %.lr.ph.i.i.i.i.i.i327
  %.011.i.i.i.i.i.i328 = phi ptr [ %i.pb, %.lr.ph.i.i.i.i.i.i327 ], [ %.011.i.i.i.i.i.i328.ph, %.lr.ph.i.i.i.i.i.i327.preheader2337 ] ; 3 uses
  %.0810.i.i.i.i.i.i329 = phi ptr [ %i.pa, %.lr.ph.i.i.i.i.i.i327 ], [ %.0810.i.i.i.i.i.i329.ph, %.lr.ph.i.i.i.i.i.i327.preheader2337 ] ; 3 uses
  %i.ow = load double, ptr %.0810.i.i.i.i.i.i329, align 8, !tbaa !247
  store double %i.ow, ptr %.011.i.i.i.i.i.i328, align 8, !tbaa !247
  %i.ox = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i328, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i329, i64 8
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !247
  store double %i.oz, ptr %i.ox, align 8, !tbaa !247
  %i.pa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i329, i64 16 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i328, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i330 = icmp eq ptr %i.pa, %i.nr
  br i1 %.not.i.i.i.i.i.i330, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i338, label %.lr.ph.i.i.i.i.i.i327, !llvm.loop !424

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i338: ; preds = %.lr.ph.i.i.i.i.i.i327, %middle.block1514, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i323
  %.0.lcssa.i.i.i.i.i.i332 = phi ptr [ %i.og, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i323 ], [ %i.or, %middle.block1514 ], [ %i.pb, %.lr.ph.i.i.i.i.i.i327 ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i332, i64 16
  %.not.i25.i340 = icmp eq ptr %i.nv, null
  br i1 %.not.i25.i340, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit341, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i338
  call void @_ZdlPvm(ptr noundef nonnull %i.nv, i64 noundef %i.ny) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit341

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit341: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i338, %bb.ai
  store ptr %i.og, ptr %i.lz, align 16, !tbaa !279
  store ptr %i.pc, ptr %i.nq, align 8, !tbaa !276
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.og, i64 %i.oe
  store ptr %i.pd, ptr %i.ns, align 16, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit83

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit83: ; preds = %bb.af, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit341
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  %i.pf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.pe, ptr noundef nonnull align 8 dereferenceable(24) %i.ly) ; 0 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  %i.ph = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noundef nonnull align 8 dereferenceable(24) %i.lz) ; 0 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  %i.pj = load ptr, ptr %i.pi, align 16, !tbaa !264 ; 7 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !268
  %.not.i.i84 = icmp eq ptr %i.pj, %i.pl
  br i1 %.not.i.i84, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit83
  store i32 0, ptr %i.pj, align 4, !tbaa !4
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  store i32 1, ptr %i.pm, align 4, !tbaa !4
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store ptr %i.pn, ptr %i.pi, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i85

bb.ak:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit83
  %i.po = load ptr, ptr %i.pe, align 8, !tbaa !267 ; 11 uses
  %i.pp = ptrtoint ptr %i.pj to i64               ; 3 uses
  %i.pq = ptrtoint ptr %i.po to i64               ; 3 uses
  %i.pr = sub i64 %i.pp, %i.pq                    ; 4 uses
  %i.ps = icmp eq i64 %i.pr, 9223372036854775800
  br i1 %i.ps, label %bb.al, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i380

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i380: ; preds = %bb.ak
  %i.pt = ashr exact i64 %i.pr, 3                 ; 3 uses
  %.sroa.speculated.i.i381 = call i64 @llvm.umax.i64(i64 %i.pt, i64 1)
  %i.pu = add nsw i64 %.sroa.speculated.i.i381, %i.pt ; 2 uses
  %i.pv = icmp ult i64 %i.pu, %i.pt
  %i.pw = call i64 @llvm.umin.i64(i64 %i.pu, i64 1152921504606846975)
  %i.px = select i1 %i.pv, i64 1152921504606846975, i64 %i.pw ; 3 uses
  %.not.i.i382 = icmp ne i64 %i.px, 0
  call void @llvm.assume(i1 %.not.i.i382)
  %i.py = shl nuw nsw i64 %i.px, 3
  %i.pz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.py) #45 ; 11 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.pr ; 2 uses
  store i32 0, ptr %i.qa, align 4, !tbaa !4
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  store i32 1, ptr %i.qb, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i383 = icmp eq ptr %i.po, %i.pj
  br i1 %.not9.i.i.i.i.i.i383, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i395, label %.lr.ph.i.i.i.i.i.i384.preheader

.lr.ph.i.i.i.i.i.i384.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i380
  %i.qc = sub i64 %i.pp, %i.pq
  %i.qd = add i64 %i.qc, -8                       ; 2 uses
  %i.qe = lshr i64 %i.qd, 3
  %i.qf = add nuw nsw i64 %i.qe, 1                ; 2 uses
  %min.iters.check1525 = icmp ult i64 %i.qd, 120
  br i1 %min.iters.check1525, label %.lr.ph.i.i.i.i.i.i384.preheader2335, label %vector.memcheck1518

vector.memcheck1518:                              ; preds = %.lr.ph.i.i.i.i.i.i384.preheader
  %i.qg = add i64 %i.pp, -8
  %i.qh = sub i64 %i.qg, %i.pq
  %i.qi = and i64 %i.qh, -8
  %i.qj = add i64 %i.qi, 8                        ; 2 uses
  %scevgep1519 = getelementptr i8, ptr %i.pz, i64 %i.qj
  %scevgep1520 = getelementptr i8, ptr %i.po, i64 %i.qj
  %bound01521 = icmp ult ptr %i.pz, %scevgep1520
  %bound11522 = icmp ult ptr %i.po, %scevgep1519
  %found.conflict1523 = and i1 %bound01521, %bound11522
  br i1 %found.conflict1523, label %.lr.ph.i.i.i.i.i.i384.preheader2335, label %vector.ph1526

vector.ph1526:                                    ; preds = %vector.memcheck1518
  %n.vec1528 = and i64 %i.qf, 4611686018427387900 ; 3 uses
  %i.qk = shl i64 %n.vec1528, 3                   ; 2 uses
  %i.ql = getelementptr i8, ptr %i.pz, i64 %i.qk  ; 2 uses
  %i.qm = getelementptr i8, ptr %i.po, i64 %i.qk
  br label %vector.body1529

vector.body1529:                                  ; preds = %vector.body1529, %vector.ph1526
  %index1530 = phi i64 [ 0, %vector.ph1526 ], [ %index.next1543, %vector.body1529 ] ; 2 uses
  %i.qn = shl i64 %index1530, 3                   ; 3 uses
  %i.qo = or disjoint i64 %i.qn, 16               ; 2 uses
  %next.gep1531 = getelementptr i8, ptr %i.pz, i64 %i.qn
  %next.gep1532 = getelementptr i8, ptr %i.pz, i64 %i.qo
  %next.gep1533 = getelementptr i8, ptr %i.po, i64 %i.qn
  %next.gep1534 = getelementptr i8, ptr %i.po, i64 %i.qo
  %wide.vec1535 = load <4 x i32>, ptr %next.gep1533, align 4, !tbaa !236, !alias.scope !425
  %wide.vec1538 = load <4 x i32>, ptr %next.gep1534, align 4, !tbaa !236, !alias.scope !425
  store <4 x i32> %wide.vec1535, ptr %next.gep1531, align 4, !tbaa !4, !alias.scope !428, !noalias !425
  store <4 x i32> %wide.vec1538, ptr %next.gep1532, align 4, !tbaa !4, !alias.scope !428, !noalias !425
  %index.next1543 = add nuw i64 %index1530, 4     ; 2 uses
  %i.qp = icmp eq i64 %index.next1543, %n.vec1528
  br i1 %i.qp, label %middle.block1544, label %vector.body1529, !llvm.loop !430

middle.block1544:                                 ; preds = %vector.body1529
  %cmp.n1545 = icmp eq i64 %i.qf, %n.vec1528
  br i1 %cmp.n1545, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i395, label %.lr.ph.i.i.i.i.i.i384.preheader2335

.lr.ph.i.i.i.i.i.i384.preheader2335:              ; preds = %vector.memcheck1518, %.lr.ph.i.i.i.i.i.i384.preheader, %middle.block1544
  %.011.i.i.i.i.i.i385.ph = phi ptr [ %i.pz, %vector.memcheck1518 ], [ %i.pz, %.lr.ph.i.i.i.i.i.i384.preheader ], [ %i.ql, %middle.block1544 ]
  %.0810.i.i.i.i.i.i386.ph = phi ptr [ %i.po, %vector.memcheck1518 ], [ %i.po, %.lr.ph.i.i.i.i.i.i384.preheader ], [ %i.qm, %middle.block1544 ]
  br label %.lr.ph.i.i.i.i.i.i384

.lr.ph.i.i.i.i.i.i384:                            ; preds = %.lr.ph.i.i.i.i.i.i384.preheader2335, %.lr.ph.i.i.i.i.i.i384
  %.011.i.i.i.i.i.i385 = phi ptr [ %i.qv, %.lr.ph.i.i.i.i.i.i384 ], [ %.011.i.i.i.i.i.i385.ph, %.lr.ph.i.i.i.i.i.i384.preheader2335 ] ; 3 uses
  %.0810.i.i.i.i.i.i386 = phi ptr [ %i.qu, %.lr.ph.i.i.i.i.i.i384 ], [ %.0810.i.i.i.i.i.i386.ph, %.lr.ph.i.i.i.i.i.i384.preheader2335 ] ; 3 uses
  %i.qq = load i32, ptr %.0810.i.i.i.i.i.i386, align 4, !tbaa !236
  store i32 %i.qq, ptr %.011.i.i.i.i.i.i385, align 4, !tbaa !4
  %i.qr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i385, i64 4
  %i.qs = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i386, i64 4
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !236
  store i32 %i.qt, ptr %i.qr, align 4, !tbaa !4
  %i.qu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i386, i64 8 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i385, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i387 = icmp eq ptr %i.qu, %i.pj
  br i1 %.not.i.i.i.i.i.i387, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i395, label %.lr.ph.i.i.i.i.i.i384, !llvm.loop !431

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i395: ; preds = %.lr.ph.i.i.i.i.i.i384, %middle.block1544, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i380
  %.0.lcssa.i.i.i.i.i.i389 = phi ptr [ %i.pz, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i380 ], [ %i.ql, %middle.block1544 ], [ %i.qv, %.lr.ph.i.i.i.i.i.i384 ]
  %i.qw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i389, i64 8
  %.not.i25.i397 = icmp eq ptr %i.po, null
  br i1 %.not.i25.i397, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit398, label %bb.am

bb.am:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i395
  call void @_ZdlPvm(ptr noundef nonnull %i.po, i64 noundef %i.pr) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit398

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit398: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i395, %bb.am
  store ptr %i.pz, ptr %i.pe, align 8, !tbaa !267
  store ptr %i.qw, ptr %i.pi, align 16, !tbaa !264
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %i.px
  store ptr %i.qx, ptr %i.pk, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i85

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i85: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit398, %bb.aj
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 6 uses
  %i.qz = load ptr, ptr %i.qy, align 16, !tbaa !276 ; 6 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !280
  %.not.i4.i86 = icmp eq ptr %i.qz, %i.rb
  br i1 %.not.i4.i86, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i85
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.qz, align 8, !tbaa !247
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  store ptr %i.rc, ptr %i.qy, align 16, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87

bb.ao:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i85
  %i.rd = load ptr, ptr %i.pg, align 8, !tbaa !279 ; 11 uses
  %i.re = ptrtoint ptr %i.qz to i64               ; 3 uses
  %i.rf = ptrtoint ptr %i.rd to i64               ; 3 uses
  %i.rg = sub i64 %i.re, %i.rf                    ; 4 uses
  %i.rh = icmp eq i64 %i.rg, 9223372036854775792
  br i1 %i.rh, label %bb.ap, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i361

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i361: ; preds = %bb.ao
  %i.ri = ashr exact i64 %i.rg, 4                 ; 3 uses
  %.sroa.speculated.i.i362 = call i64 @llvm.umax.i64(i64 %i.ri, i64 1)
  %i.rj = add nsw i64 %.sroa.speculated.i.i362, %i.ri ; 2 uses
  %i.rk = icmp ult i64 %i.rj, %i.ri
  %i.rl = call i64 @llvm.umin.i64(i64 %i.rj, i64 576460752303423487)
  %i.rm = select i1 %i.rk, i64 576460752303423487, i64 %i.rl ; 3 uses
  %.not.i.i363 = icmp ne i64 %i.rm, 0
  call void @llvm.assume(i1 %.not.i.i363)
  %i.rn = shl nuw nsw i64 %i.rm, 4
  %i.ro = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rn) #45 ; 11 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rg
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.rp, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i364 = icmp eq ptr %i.rd, %i.qz
  br i1 %.not9.i.i.i.i.i.i364, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i376, label %.lr.ph.i.i.i.i.i.i365.preheader

.lr.ph.i.i.i.i.i.i365.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i361
  %i.rq = sub i64 %i.re, %i.rf
  %i.rr = add i64 %i.rq, -16                      ; 2 uses
  %i.rs = lshr i64 %i.rr, 4
  %i.rt = add nuw nsw i64 %i.rs, 1                ; 2 uses
  %min.iters.check1555 = icmp ult i64 %i.rr, 240
  br i1 %min.iters.check1555, label %.lr.ph.i.i.i.i.i.i365.preheader2333, label %vector.memcheck1548

vector.memcheck1548:                              ; preds = %.lr.ph.i.i.i.i.i.i365.preheader
  %i.ru = add i64 %i.re, -16
  %i.rv = sub i64 %i.ru, %i.rf
  %i.rw = and i64 %i.rv, -16
  %i.rx = add i64 %i.rw, 16                       ; 2 uses
  %scevgep1549 = getelementptr i8, ptr %i.ro, i64 %i.rx
  %scevgep1550 = getelementptr i8, ptr %i.rd, i64 %i.rx
  %bound01551 = icmp ult ptr %i.ro, %scevgep1550
  %bound11552 = icmp ult ptr %i.rd, %scevgep1549
  %found.conflict1553 = and i1 %bound01551, %bound11552
  br i1 %found.conflict1553, label %.lr.ph.i.i.i.i.i.i365.preheader2333, label %vector.ph1556

vector.ph1556:                                    ; preds = %vector.memcheck1548
  %n.vec1558 = and i64 %i.rt, 2305843009213693950 ; 3 uses
  %i.ry = shl i64 %n.vec1558, 4                   ; 2 uses
  %i.rz = getelementptr i8, ptr %i.ro, i64 %i.ry  ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rd, i64 %i.ry
  br label %vector.body1559

vector.body1559:                                  ; preds = %vector.body1559, %vector.ph1556
  %index1560 = phi i64 [ 0, %vector.ph1556 ], [ %index.next1567, %vector.body1559 ] ; 2 uses
  %i.sb = shl i64 %index1560, 4                   ; 3 uses
  %i.sc = or disjoint i64 %i.sb, 16               ; 2 uses
  %next.gep1561 = getelementptr i8, ptr %i.ro, i64 %i.sb
  %next.gep1562 = getelementptr i8, ptr %i.ro, i64 %i.sc
  %next.gep1563 = getelementptr i8, ptr %i.rd, i64 %i.sb
  %next.gep1564 = getelementptr i8, ptr %i.rd, i64 %i.sc
  %wide.load1565 = load <2 x double>, ptr %next.gep1563, align 8, !tbaa !247, !alias.scope !432
  %wide.load1566 = load <2 x double>, ptr %next.gep1564, align 8, !tbaa !247, !alias.scope !432
  store <2 x double> %wide.load1565, ptr %next.gep1561, align 8, !tbaa !247, !alias.scope !435, !noalias !432
  store <2 x double> %wide.load1566, ptr %next.gep1562, align 8, !tbaa !247, !alias.scope !435, !noalias !432
  %index.next1567 = add nuw i64 %index1560, 2     ; 2 uses
  %i.sd = icmp eq i64 %index.next1567, %n.vec1558
  br i1 %i.sd, label %middle.block1568, label %vector.body1559, !llvm.loop !437

middle.block1568:                                 ; preds = %vector.body1559
  %cmp.n1569 = icmp eq i64 %i.rt, %n.vec1558
  br i1 %cmp.n1569, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i376, label %.lr.ph.i.i.i.i.i.i365.preheader2333

.lr.ph.i.i.i.i.i.i365.preheader2333:              ; preds = %vector.memcheck1548, %.lr.ph.i.i.i.i.i.i365.preheader, %middle.block1568
  %.011.i.i.i.i.i.i366.ph = phi ptr [ %i.ro, %vector.memcheck1548 ], [ %i.ro, %.lr.ph.i.i.i.i.i.i365.preheader ], [ %i.rz, %middle.block1568 ]
  %.0810.i.i.i.i.i.i367.ph = phi ptr [ %i.rd, %vector.memcheck1548 ], [ %i.rd, %.lr.ph.i.i.i.i.i.i365.preheader ], [ %i.sa, %middle.block1568 ]
  br label %.lr.ph.i.i.i.i.i.i365

.lr.ph.i.i.i.i.i.i365:                            ; preds = %.lr.ph.i.i.i.i.i.i365.preheader2333, %.lr.ph.i.i.i.i.i.i365
  %.011.i.i.i.i.i.i366 = phi ptr [ %i.sj, %.lr.ph.i.i.i.i.i.i365 ], [ %.011.i.i.i.i.i.i366.ph, %.lr.ph.i.i.i.i.i.i365.preheader2333 ] ; 3 uses
  %.0810.i.i.i.i.i.i367 = phi ptr [ %i.si, %.lr.ph.i.i.i.i.i.i365 ], [ %.0810.i.i.i.i.i.i367.ph, %.lr.ph.i.i.i.i.i.i365.preheader2333 ] ; 3 uses
  %i.se = load double, ptr %.0810.i.i.i.i.i.i367, align 8, !tbaa !247
  store double %i.se, ptr %.011.i.i.i.i.i.i366, align 8, !tbaa !247
  %i.sf = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i366, i64 8
  %i.sg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i367, i64 8
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !247
  store double %i.sh, ptr %i.sf, align 8, !tbaa !247
  %i.si = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i367, i64 16 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i366, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i368 = icmp eq ptr %i.si, %i.qz
  br i1 %.not.i.i.i.i.i.i368, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i376, label %.lr.ph.i.i.i.i.i.i365, !llvm.loop !438

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i376: ; preds = %.lr.ph.i.i.i.i.i.i365, %middle.block1568, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i361
  %.0.lcssa.i.i.i.i.i.i370 = phi ptr [ %i.ro, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i361 ], [ %i.rz, %middle.block1568 ], [ %i.sj, %.lr.ph.i.i.i.i.i.i365 ]
  %i.sk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i370, i64 16
  %.not.i25.i378 = icmp eq ptr %i.rd, null
  br i1 %.not.i25.i378, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit379, label %bb.aq

bb.aq:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i376
  call void @_ZdlPvm(ptr noundef nonnull %i.rd, i64 noundef %i.rg) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit379

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit379: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i376, %bb.aq
  store ptr %i.ro, ptr %i.pg, align 8, !tbaa !279
  store ptr %i.sk, ptr %i.qy, align 16, !tbaa !276
  %i.sl = getelementptr inbounds nuw [16 x i8], ptr %i.ro, i64 %i.rm
  store ptr %i.sl, ptr %i.ra, align 8, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87: ; preds = %bb.an, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit379
  %i.sm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.sp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.sq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.st = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.su = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.sz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.tb = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.td = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.te = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit
  %i.tf = phi i1 [ true, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87 ], [ false, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit ]
  %indvars.iv.sroa.phi = phi ptr [ %3, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87 ], [ %indvars.iv.sroa.gep2354, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit ] ; 3 uses
  %indvars.iv.sroa.phi2358 = phi ptr [ %2, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87 ], [ %indvars.iv.sroa.gep2360, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit87 ], [ 1, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.tg = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  call void @_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 1, i32 noundef %i.tg, ptr noundef nonnull align 8 dereferenceable(24) %indvars.iv.sroa.phi2358, ptr noundef nonnull align 8 dereferenceable(24) %indvars.iv.sroa.phi)
  %i.th = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !260
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tj, i64 %indvars.iv
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !262 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 56
  %i.tn = load i64, ptr %5, align 8
  store i64 %i.tn, ptr %i.tm, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 64
  %i.tp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.to, ptr noundef nonnull align 8 dereferenceable(24) %i.sm) ; 0 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 88
  %i.tr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.tq, ptr noundef nonnull align 8 dereferenceable(24) %i.sn) ; 0 uses
  %i.ts = load ptr, ptr %i.sn, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i88 = icmp eq ptr %i.ts, null
  br i1 %.not.i.i.i.i88, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i89, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.tt = load ptr, ptr %i.so, align 8, !tbaa !280
  %i.tu = ptrtoint ptr %i.tt to i64
  %i.tv = ptrtoint ptr %i.ts to i64
  %i.tw = sub i64 %i.tu, %i.tv
  call void @_ZdlPvm(ptr noundef nonnull %i.ts, i64 noundef %i.tw) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i89

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i89: ; preds = %bb.as, %bb.ar
  %i.tx = load ptr, ptr %i.sm, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i90 = icmp eq ptr %i.tx, null
  br i1 %.not.i.i.i1.i90, label %_ZN9CenteringILi2EED2Ev.exit91, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i89
  %i.ty = load ptr, ptr %i.sp, align 8, !tbaa !268
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = ptrtoint ptr %i.tx to i64
  %i.ub = sub i64 %i.tz, %i.ua
  call void @_ZdlPvm(ptr noundef nonnull %i.tx, i64 noundef %i.ub) #48
  br label %_ZN9CenteringILi2EED2Ev.exit91

_ZN9CenteringILi2EED2Ev.exit91:                   ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i89, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  %i.uc = getelementptr inbounds nuw [24 x i8], ptr %i.ly, i64 %indvars.iv ; 3 uses
  %i.ud = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %indvars.iv ; 3 uses
  call void @_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef 1, i32 noundef %i.tg, ptr noundef nonnull align 8 dereferenceable(24) %i.uc, ptr noundef nonnull align 8 dereferenceable(24) %i.ud)
  %i.ue = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !260
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %indvars.iv
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !262 ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 112
  %i.uk = load i64, ptr %6, align 8
  store i64 %i.uk, ptr %i.uj, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 120
  %i.um = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ul, ptr noundef nonnull align 8 dereferenceable(24) %i.sq) ; 0 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.ui, i64 144
  %i.uo = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.un, ptr noundef nonnull align 8 dereferenceable(24) %i.sr) ; 0 uses
  %i.up = load ptr, ptr %i.sr, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.up, null
  br i1 %.not.i.i.i.i92, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i93, label %bb.au

bb.au:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit91
  %i.uq = load ptr, ptr %i.ss, align 8, !tbaa !280
  %i.ur = ptrtoint ptr %i.uq to i64
  %i.us = ptrtoint ptr %i.up to i64
  %i.ut = sub i64 %i.ur, %i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.up, i64 noundef %i.ut) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i93

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i93: ; preds = %bb.au, %_ZN9CenteringILi2EED2Ev.exit91
  %i.uu = load ptr, ptr %i.sq, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i94 = icmp eq ptr %i.uu, null
  br i1 %.not.i.i.i1.i94, label %_ZN9CenteringILi2EED2Ev.exit95, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i93
  %i.uv = load ptr, ptr %i.st, align 8, !tbaa !268
  %i.uw = ptrtoint ptr %i.uv to i64
  %i.ux = ptrtoint ptr %i.uu to i64
  %i.uy = sub i64 %i.uw, %i.ux
  call void @_ZdlPvm(ptr noundef nonnull %i.uu, i64 noundef %i.uy) #48
  br label %_ZN9CenteringILi2EED2Ev.exit95

_ZN9CenteringILi2EED2Ev.exit95:                   ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i93, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.uz = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi2358, i64 8
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !264, !noalias !439 ; 3 uses
  %i.vb = load ptr, ptr %indvars.iv.sroa.phi2358, align 8, !tbaa !267, !noalias !439 ; 9 uses
  %i.vc = ptrtoint ptr %i.va to i64               ; 3 uses
  %i.vd = ptrtoint ptr %i.vb to i64               ; 3 uses
  %i.ve = sub i64 %i.vc, %i.vd                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !alias.scope !439
  %.not.i.i.i.i.i = icmp eq ptr %i.va, %i.vb
end_hunk_1
begin_hunk_2_@_ZN18CanonicalCenteringILi2EEC2Ev:bb.a

bb.bc:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit.i
  %i.zd = icmp ugt i64 %i.zb, 9223372036854775792
  br i1 %i.zd, label %bb.bd, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109, !prof !44

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109: ; preds = %bb.bc
  %i.ze = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zb) #45 ; 9 uses
  store ptr %i.ze, ptr %i.tc, align 8, !tbaa !279
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 %i.zb
  store ptr %i.zf, ptr %i.te, align 8, !tbaa !280
  %i.zg = sub i64 %i.yz, %i.za
  %i.zh = add i64 %i.zg, -16                      ; 2 uses
  %i.zi = lshr i64 %i.zh, 4
  %i.zj = add nuw nsw i64 %i.zi, 1                ; 2 uses
  %min.iters.check1581 = icmp ult i64 %i.zh, 80
  br i1 %min.iters.check1581, label %.lr.ph.i.i.i.i.i6.i.preheader, label %vector.memcheck1572

vector.memcheck1572:                              ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109
  %scevgep1573 = getelementptr i8, ptr %i.ze, i64 16
  %i.zk = add i64 %i.yz, -16
  %i.zl = sub i64 %i.zk, %i.za
  %i.zm = and i64 %i.zl, -16                      ; 2 uses
  %scevgep1574 = getelementptr i8, ptr %scevgep1573, i64 %i.zm
  %scevgep1575 = getelementptr i8, ptr %i.yy, i64 16
  %scevgep1576 = getelementptr i8, ptr %scevgep1575, i64 %i.zm
  %bound01577 = icmp ult ptr %i.ze, %scevgep1576
  %bound11578 = icmp ult ptr %i.yy, %scevgep1574
  %found.conflict1579 = and i1 %bound01577, %bound11578
  br i1 %found.conflict1579, label %.lr.ph.i.i.i.i.i6.i.preheader, label %vector.ph1582

vector.ph1582:                                    ; preds = %vector.memcheck1572
  %n.vec1584 = and i64 %i.zj, 2305843009213693950 ; 3 uses
  %i.zn = shl i64 %n.vec1584, 4                   ; 2 uses
  %i.zo = getelementptr i8, ptr %i.ze, i64 %i.zn  ; 2 uses
  %i.zp = getelementptr i8, ptr %i.yy, i64 %i.zn
  br label %vector.body1585

vector.body1585:                                  ; preds = %vector.body1585, %vector.ph1582
  %index1586 = phi i64 [ 0, %vector.ph1582 ], [ %index.next1593, %vector.body1585 ] ; 2 uses
  %i.zq = shl i64 %index1586, 4                   ; 3 uses
  %i.zr = or disjoint i64 %i.zq, 16               ; 2 uses
  %next.gep1587 = getelementptr i8, ptr %i.ze, i64 %i.zq
  %next.gep1588 = getelementptr i8, ptr %i.ze, i64 %i.zr
  %next.gep1589 = getelementptr i8, ptr %i.yy, i64 %i.zq
  %next.gep1590 = getelementptr i8, ptr %i.yy, i64 %i.zr
  %wide.load1591 = load <2 x double>, ptr %next.gep1589, align 8, !tbaa !247, !alias.scope !470
  %wide.load1592 = load <2 x double>, ptr %next.gep1590, align 8, !tbaa !247, !alias.scope !470
  store <2 x double> %wide.load1591, ptr %next.gep1587, align 8, !tbaa !247, !alias.scope !473, !noalias !470
  store <2 x double> %wide.load1592, ptr %next.gep1588, align 8, !tbaa !247, !alias.scope !473, !noalias !470
  %index.next1593 = add nuw i64 %index1586, 2     ; 2 uses
  %i.zs = icmp eq i64 %index.next1593, %n.vec1584
  br i1 %i.zs, label %middle.block1594, label %vector.body1585, !llvm.loop !475

middle.block1594:                                 ; preds = %vector.body1585
  %cmp.n1595 = icmp eq i64 %i.zj, %n.vec1584
  br i1 %cmp.n1595, label %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit, label %.lr.ph.i.i.i.i.i6.i.preheader

.lr.ph.i.i.i.i.i6.i.preheader:                    ; preds = %vector.memcheck1572, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109, %middle.block1594
  %.09.i.i.i.i.i7.i.ph = phi ptr [ %i.ze, %vector.memcheck1572 ], [ %i.ze, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109 ], [ %i.zo, %middle.block1594 ]
  %.sroa.04.08.i.i.i.i.i8.i.ph = phi ptr [ %i.yy, %vector.memcheck1572 ], [ %i.yy, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109 ], [ %i.zp, %middle.block1594 ]
  br label %.lr.ph.i.i.i.i.i6.i

.lr.ph.i.i.i.i.i6.i:                              ; preds = %.lr.ph.i.i.i.i.i6.i.preheader, %.lr.ph.i.i.i.i.i6.i
  %.09.i.i.i.i.i7.i = phi ptr [ %i.zy, %.lr.ph.i.i.i.i.i6.i ], [ %.09.i.i.i.i.i7.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i8.i = phi ptr [ %i.zx, %.lr.ph.i.i.i.i.i6.i ], [ %.sroa.04.08.i.i.i.i.i8.i.ph, %.lr.ph.i.i.i.i.i6.i.preheader ] ; 3 uses
  %i.zt = load double, ptr %.sroa.04.08.i.i.i.i.i8.i, align 8, !tbaa !247
  store double %i.zt, ptr %.09.i.i.i.i.i7.i, align 8, !tbaa !247
  %i.zu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 8
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 8
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !247
  store double %i.zw, ptr %i.zu, align 8, !tbaa !247
  %i.zx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i, i64 16 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i9.i = icmp eq ptr %i.zx, %i.yx
  br i1 %.not.i.i.i.i.i9.i, label %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit, label %.lr.ph.i.i.i.i.i6.i, !llvm.loop !476

_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit: ; preds = %.lr.ph.i.i.i.i.i6.i, %middle.block1594, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109.thread
  %.0.lcssa.i.i.i.i.i10.i = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i109.thread ], [ %i.zo, %middle.block1594 ], [ %i.zy, %.lr.ph.i.i.i.i.i6.i ]
  store ptr %.0.lcssa.i.i.i.i.i10.i, ptr %i.td, align 8, !tbaa !276
  %i.zz = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !260
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %indvars.iv
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !262 ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 168
  %i.aaf = load i64, ptr %7, align 8
  store i64 %i.aaf, ptr %i.aae, align 8
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aad, i64 176
  %i.aah = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aag, ptr noundef nonnull align 8 dereferenceable(24) %i.sz) ; 0 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aad, i64 200
  %i.aaj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.aai, ptr noundef nonnull align 8 dereferenceable(24) %i.tc) ; 0 uses
  %i.aak = load ptr, ptr %i.tc, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i110 = icmp eq ptr %i.aak, null
  br i1 %.not.i.i.i.i110, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i111, label %bb.be

bb.be:                                            ; preds = %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit
  %i.aal = load ptr, ptr %i.te, align 8, !tbaa !280
  %i.aam = ptrtoint ptr %i.aal to i64
  %i.aan = ptrtoint ptr %i.aak to i64
  %i.aao = sub i64 %i.aam, %i.aan
  call void @_ZdlPvm(ptr noundef nonnull %i.aak, i64 noundef %i.aao) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i111

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i111: ; preds = %bb.be, %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit
  %i.aap = load ptr, ptr %i.sz, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i112 = icmp eq ptr %i.aap, null
  br i1 %.not.i.i.i1.i112, label %_ZN9CenteringILi2EED2Ev.exit113, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i111
  %i.aaq = load ptr, ptr %i.tb, align 8, !tbaa !268
  %i.aar = ptrtoint ptr %i.aaq to i64
  %i.aas = ptrtoint ptr %i.aap to i64
  %i.aat = sub i64 %i.aar, %i.aas
  call void @_ZdlPvm(ptr noundef nonnull %i.aap, i64 noundef %i.aat) #48
  br label %_ZN9CenteringILi2EED2Ev.exit113

_ZN9CenteringILi2EED2Ev.exit113:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i111, %bb.bf
  %i.aau = load ptr, ptr %9, align 8, !tbaa !279  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aau, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit113
  %i.aav = load ptr, ptr %i.sw, align 8, !tbaa !280
  %i.aaw = ptrtoint ptr %i.aav to i64
  %i.aax = ptrtoint ptr %i.aau to i64
  %i.aay = sub i64 %i.aaw, %i.aax
  call void @_ZdlPvm(ptr noundef nonnull %i.aau, i64 noundef %i.aay) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit: ; preds = %_ZN9CenteringILi2EED2Ev.exit113, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  %i.aaz = load ptr, ptr %8, align 8, !tbaa !267  ; 3 uses
  %.not.i.i.i114 = icmp eq ptr %i.aaz, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit
  %i.aba = load ptr, ptr %i.su, align 8, !tbaa !268
  %i.abb = ptrtoint ptr %i.aba to i64
  %i.abc = ptrtoint ptr %i.aaz to i64
  %i.abd = sub i64 %i.abb, %i.abc
  call void @_ZdlPvm(ptr noundef nonnull %i.aaz, i64 noundef %i.abd) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  br i1 %i.tf, label %bb.ar, label %.preheader867.preheader, !llvm.loop !477

.preheader867.preheader:                          ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit
  %i.abe = load ptr, ptr %2, align 16, !tbaa !267 ; 14 uses
  %i.abf = load ptr, ptr %i.fm, align 8, !tbaa !264 ; 2 uses
  %.not.i.i131 = icmp eq ptr %i.abf, %i.abe
  br i1 %.not.i.i131, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit, label %bb.co

bb.bi:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1.1
  store i32 0, ptr %i.aoa, align 4, !tbaa !4
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aoa, i64 4
  store i32 1, ptr %i.abg, align 4, !tbaa !4
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aoa, i64 8
  store ptr %i.abh, ptr %i.fm, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i116

bb.bj:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1.1
  %i.abi = ptrtoint ptr %i.aoa to i64             ; 3 uses
  %i.abj = ptrtoint ptr %i.abe to i64             ; 3 uses
  %i.abk = sub i64 %i.abi, %i.abj                 ; 4 uses
  %i.abl = icmp eq i64 %i.abk, 9223372036854775800
  br i1 %i.abl, label %bb.bk, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i418

bb.bk:                                            ; preds = %bb.bj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i418: ; preds = %bb.bj
  %i.abm = ashr exact i64 %i.abk, 3               ; 3 uses
  %.sroa.speculated.i.i419 = call i64 @llvm.umax.i64(i64 %i.abm, i64 1)
  %i.abn = add nsw i64 %.sroa.speculated.i.i419, %i.abm ; 2 uses
  %i.abo = icmp ult i64 %i.abn, %i.abm
  %i.abp = call i64 @llvm.umin.i64(i64 %i.abn, i64 1152921504606846975)
  %i.abq = select i1 %i.abo, i64 1152921504606846975, i64 %i.abp ; 3 uses
  %.not.i.i420 = icmp ne i64 %i.abq, 0
  call void @llvm.assume(i1 %.not.i.i420)
  %i.abr = shl nuw nsw i64 %i.abq, 3
  %i.abs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abr) #45 ; 11 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abk ; 2 uses
  store i32 0, ptr %i.abt, align 4, !tbaa !4
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 4
  store i32 1, ptr %i.abu, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i421 = icmp eq ptr %i.abe, %i.aoa
  br i1 %.not9.i.i.i.i.i.i421, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433, label %.lr.ph.i.i.i.i.i.i422.preheader

.lr.ph.i.i.i.i.i.i422.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i418
  %i.abv = sub i64 %i.abi, %i.abj
  %i.abw = add i64 %i.abv, -8                     ; 2 uses
  %i.abx = lshr i64 %i.abw, 3
  %i.aby = add nuw nsw i64 %i.abx, 1              ; 2 uses
  %min.iters.check1695 = icmp ult i64 %i.abw, 120
  br i1 %min.iters.check1695, label %.lr.ph.i.i.i.i.i.i422.preheader2327, label %vector.memcheck1688

vector.memcheck1688:                              ; preds = %.lr.ph.i.i.i.i.i.i422.preheader
  %i.abz = add i64 %i.abi, -8
  %i.aca = sub i64 %i.abz, %i.abj
  %i.acb = and i64 %i.aca, -8
  %i.acc = add i64 %i.acb, 8                      ; 2 uses
  %scevgep1689 = getelementptr i8, ptr %i.abs, i64 %i.acc
  %scevgep1690 = getelementptr i8, ptr %i.abe, i64 %i.acc
  %bound01691 = icmp ult ptr %i.abs, %scevgep1690
  %bound11692 = icmp ult ptr %i.abe, %scevgep1689
  %found.conflict1693 = and i1 %bound01691, %bound11692
  br i1 %found.conflict1693, label %.lr.ph.i.i.i.i.i.i422.preheader2327, label %vector.ph1696

vector.ph1696:                                    ; preds = %vector.memcheck1688
  %n.vec1698 = and i64 %i.aby, 4611686018427387900 ; 3 uses
  %i.acd = shl i64 %n.vec1698, 3                  ; 2 uses
  %i.ace = getelementptr i8, ptr %i.abs, i64 %i.acd ; 2 uses
  %i.acf = getelementptr i8, ptr %i.abe, i64 %i.acd
  br label %vector.body1699

vector.body1699:                                  ; preds = %vector.body1699, %vector.ph1696
  %index1700 = phi i64 [ 0, %vector.ph1696 ], [ %index.next1713, %vector.body1699 ] ; 2 uses
  %i.acg = shl i64 %index1700, 3                  ; 3 uses
  %i.ach = or disjoint i64 %i.acg, 16             ; 2 uses
  %next.gep1701 = getelementptr i8, ptr %i.abs, i64 %i.acg
  %next.gep1702 = getelementptr i8, ptr %i.abs, i64 %i.ach
  %next.gep1703 = getelementptr i8, ptr %i.abe, i64 %i.acg
  %next.gep1704 = getelementptr i8, ptr %i.abe, i64 %i.ach
  %wide.vec1705 = load <4 x i32>, ptr %next.gep1703, align 4, !tbaa !236, !alias.scope !478
  %wide.vec1708 = load <4 x i32>, ptr %next.gep1704, align 4, !tbaa !236, !alias.scope !478
  store <4 x i32> %wide.vec1705, ptr %next.gep1701, align 4, !tbaa !4, !alias.scope !481, !noalias !478
  store <4 x i32> %wide.vec1708, ptr %next.gep1702, align 4, !tbaa !4, !alias.scope !481, !noalias !478
  %index.next1713 = add nuw i64 %index1700, 4     ; 2 uses
  %i.aci = icmp eq i64 %index.next1713, %n.vec1698
  br i1 %i.aci, label %middle.block1714, label %vector.body1699, !llvm.loop !483

middle.block1714:                                 ; preds = %vector.body1699
  %cmp.n1715 = icmp eq i64 %i.aby, %n.vec1698
  br i1 %cmp.n1715, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433, label %.lr.ph.i.i.i.i.i.i422.preheader2327

.lr.ph.i.i.i.i.i.i422.preheader2327:              ; preds = %vector.memcheck1688, %.lr.ph.i.i.i.i.i.i422.preheader, %middle.block1714
  %.011.i.i.i.i.i.i423.ph = phi ptr [ %i.abs, %vector.memcheck1688 ], [ %i.abs, %.lr.ph.i.i.i.i.i.i422.preheader ], [ %i.ace, %middle.block1714 ]
  %.0810.i.i.i.i.i.i424.ph = phi ptr [ %i.abe, %vector.memcheck1688 ], [ %i.abe, %.lr.ph.i.i.i.i.i.i422.preheader ], [ %i.acf, %middle.block1714 ]
  br label %.lr.ph.i.i.i.i.i.i422

.lr.ph.i.i.i.i.i.i422:                            ; preds = %.lr.ph.i.i.i.i.i.i422.preheader2327, %.lr.ph.i.i.i.i.i.i422
  %.011.i.i.i.i.i.i423 = phi ptr [ %i.aco, %.lr.ph.i.i.i.i.i.i422 ], [ %.011.i.i.i.i.i.i423.ph, %.lr.ph.i.i.i.i.i.i422.preheader2327 ] ; 3 uses
  %.0810.i.i.i.i.i.i424 = phi ptr [ %i.acn, %.lr.ph.i.i.i.i.i.i422 ], [ %.0810.i.i.i.i.i.i424.ph, %.lr.ph.i.i.i.i.i.i422.preheader2327 ] ; 3 uses
  %i.acj = load i32, ptr %.0810.i.i.i.i.i.i424, align 4, !tbaa !236
  store i32 %i.acj, ptr %.011.i.i.i.i.i.i423, align 4, !tbaa !4
  %i.ack = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i423, i64 4
  %i.acl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i424, i64 4
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !236
  store i32 %i.acm, ptr %i.ack, align 4, !tbaa !4
  %i.acn = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i424, i64 8 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i423, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i425 = icmp eq ptr %i.acn, %i.aoa
  br i1 %.not.i.i.i.i.i.i425, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433, label %.lr.ph.i.i.i.i.i.i422, !llvm.loop !484

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433: ; preds = %.lr.ph.i.i.i.i.i.i422, %middle.block1714, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i418
  %.0.lcssa.i.i.i.i.i.i427 = phi ptr [ %i.abs, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i418 ], [ %i.ace, %middle.block1714 ], [ %i.aco, %.lr.ph.i.i.i.i.i.i422 ]
  %i.acp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i427, i64 8
  %.not.i25.i435 = icmp eq ptr %i.abe, null
  br i1 %.not.i25.i435, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit436, label %bb.bl

bb.bl:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433
  call void @_ZdlPvm(ptr noundef nonnull %i.abe, i64 noundef %i.abk) #48
  %.pre.pre = load ptr, ptr %i.hc, align 8, !tbaa !276
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit436

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit436: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433, %bb.bl
  %.pre = phi ptr [ %i.aod, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i433 ], [ %.pre.pre, %bb.bl ]
  store ptr %i.abs, ptr %2, align 16, !tbaa !267
  store ptr %i.acp, ptr %i.fm, align 8, !tbaa !264
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %i.abq
  store ptr %i.acq, ptr %i.fo, align 16, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i116

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i116: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit436, %bb.bi
  %i.acr = phi ptr [ %.pre, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit436 ], [ %i.aod, %bb.bi ] ; 6 uses
  %i.acs = load ptr, ptr %i.he, align 16, !tbaa !280
  %.not.i4.i117 = icmp eq ptr %i.acr, %i.acs
  br i1 %.not.i4.i117, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i116
  store <2 x double> <double 0.000000e+00, double 5.000000e-01>, ptr %i.acr, align 8, !tbaa !247
  %i.act = getelementptr inbounds nuw i8, ptr %i.acr, i64 16
  store ptr %i.act, ptr %i.hc, align 8, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit118

bb.bn:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i116
  %i.acu = load ptr, ptr %3, align 16, !tbaa !279 ; 11 uses
  %i.acv = ptrtoint ptr %i.acr to i64             ; 3 uses
  %i.acw = ptrtoint ptr %i.acu to i64             ; 3 uses
  %i.acx = sub i64 %i.acv, %i.acw                 ; 4 uses
  %i.acy = icmp eq i64 %i.acx, 9223372036854775792
  br i1 %i.acy, label %bb.bo, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i399

bb.bo:                                            ; preds = %bb.bn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i399: ; preds = %bb.bn
  %i.acz = ashr exact i64 %i.acx, 4               ; 3 uses
  %.sroa.speculated.i.i400 = call i64 @llvm.umax.i64(i64 %i.acz, i64 1)
  %i.ada = add nsw i64 %.sroa.speculated.i.i400, %i.acz ; 2 uses
  %i.adb = icmp ult i64 %i.ada, %i.acz
  %i.adc = call i64 @llvm.umin.i64(i64 %i.ada, i64 576460752303423487)
  %i.add = select i1 %i.adb, i64 576460752303423487, i64 %i.adc ; 3 uses
  %.not.i.i401 = icmp ne i64 %i.add, 0
  call void @llvm.assume(i1 %.not.i.i401)
  %i.ade = shl nuw nsw i64 %i.add, 4
  %i.adf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ade) #45 ; 11 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.acx
  store <2 x double> <double 0.000000e+00, double 5.000000e-01>, ptr %i.adg, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i402 = icmp eq ptr %i.acu, %i.acr
  br i1 %.not9.i.i.i.i.i.i402, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i414, label %.lr.ph.i.i.i.i.i.i403.preheader

.lr.ph.i.i.i.i.i.i403.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i399
  %i.adh = sub i64 %i.acv, %i.acw
  %i.adi = add i64 %i.adh, -16                    ; 2 uses
  %i.adj = lshr i64 %i.adi, 4
  %i.adk = add nuw nsw i64 %i.adj, 1              ; 2 uses
  %min.iters.check1725 = icmp ult i64 %i.adi, 240
  br i1 %min.iters.check1725, label %.lr.ph.i.i.i.i.i.i403.preheader2325, label %vector.memcheck1718

vector.memcheck1718:                              ; preds = %.lr.ph.i.i.i.i.i.i403.preheader
  %i.adl = add i64 %i.acv, -16
  %i.adm = sub i64 %i.adl, %i.acw
  %i.adn = and i64 %i.adm, -16
  %i.ado = add i64 %i.adn, 16                     ; 2 uses
  %scevgep1719 = getelementptr i8, ptr %i.adf, i64 %i.ado
  %scevgep1720 = getelementptr i8, ptr %i.acu, i64 %i.ado
  %bound01721 = icmp ult ptr %i.adf, %scevgep1720
  %bound11722 = icmp ult ptr %i.acu, %scevgep1719
  %found.conflict1723 = and i1 %bound01721, %bound11722
  br i1 %found.conflict1723, label %.lr.ph.i.i.i.i.i.i403.preheader2325, label %vector.ph1726

vector.ph1726:                                    ; preds = %vector.memcheck1718
  %n.vec1728 = and i64 %i.adk, 2305843009213693950 ; 3 uses
  %i.adp = shl i64 %n.vec1728, 4                  ; 2 uses
  %i.adq = getelementptr i8, ptr %i.adf, i64 %i.adp ; 2 uses
  %i.adr = getelementptr i8, ptr %i.acu, i64 %i.adp
  br label %vector.body1729

vector.body1729:                                  ; preds = %vector.body1729, %vector.ph1726
  %index1730 = phi i64 [ 0, %vector.ph1726 ], [ %index.next1737, %vector.body1729 ] ; 2 uses
  %i.ads = shl i64 %index1730, 4                  ; 3 uses
  %i.adt = or disjoint i64 %i.ads, 16             ; 2 uses
  %next.gep1731 = getelementptr i8, ptr %i.adf, i64 %i.ads
  %next.gep1732 = getelementptr i8, ptr %i.adf, i64 %i.adt
  %next.gep1733 = getelementptr i8, ptr %i.acu, i64 %i.ads
  %next.gep1734 = getelementptr i8, ptr %i.acu, i64 %i.adt
  %wide.load1735 = load <2 x double>, ptr %next.gep1733, align 8, !tbaa !247, !alias.scope !485
  %wide.load1736 = load <2 x double>, ptr %next.gep1734, align 8, !tbaa !247, !alias.scope !485
  store <2 x double> %wide.load1735, ptr %next.gep1731, align 8, !tbaa !247, !alias.scope !488, !noalias !485
  store <2 x double> %wide.load1736, ptr %next.gep1732, align 8, !tbaa !247, !alias.scope !488, !noalias !485
  %index.next1737 = add nuw i64 %index1730, 2     ; 2 uses
  %i.adu = icmp eq i64 %index.next1737, %n.vec1728
  br i1 %i.adu, label %middle.block1738, label %vector.body1729, !llvm.loop !490

middle.block1738:                                 ; preds = %vector.body1729
  %cmp.n1739 = icmp eq i64 %i.adk, %n.vec1728
  br i1 %cmp.n1739, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i414, label %.lr.ph.i.i.i.i.i.i403.preheader2325

.lr.ph.i.i.i.i.i.i403.preheader2325:              ; preds = %vector.memcheck1718, %.lr.ph.i.i.i.i.i.i403.preheader, %middle.block1738
  %.011.i.i.i.i.i.i404.ph = phi ptr [ %i.adf, %vector.memcheck1718 ], [ %i.adf, %.lr.ph.i.i.i.i.i.i403.preheader ], [ %i.adq, %middle.block1738 ]
  %.0810.i.i.i.i.i.i405.ph = phi ptr [ %i.acu, %vector.memcheck1718 ], [ %i.acu, %.lr.ph.i.i.i.i.i.i403.preheader ], [ %i.adr, %middle.block1738 ]
  br label %.lr.ph.i.i.i.i.i.i403

.lr.ph.i.i.i.i.i.i403:                            ; preds = %.lr.ph.i.i.i.i.i.i403.preheader2325, %.lr.ph.i.i.i.i.i.i403
  %.011.i.i.i.i.i.i404 = phi ptr [ %i.aea, %.lr.ph.i.i.i.i.i.i403 ], [ %.011.i.i.i.i.i.i404.ph, %.lr.ph.i.i.i.i.i.i403.preheader2325 ] ; 3 uses
  %.0810.i.i.i.i.i.i405 = phi ptr [ %i.adz, %.lr.ph.i.i.i.i.i.i403 ], [ %.0810.i.i.i.i.i.i405.ph, %.lr.ph.i.i.i.i.i.i403.preheader2325 ] ; 3 uses
  %i.adv = load double, ptr %.0810.i.i.i.i.i.i405, align 8, !tbaa !247
  store double %i.adv, ptr %.011.i.i.i.i.i.i404, align 8, !tbaa !247
  %i.adw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i404, i64 8
  %i.adx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i405, i64 8
  %i.ady = load double, ptr %i.adx, align 8, !tbaa !247
  store double %i.ady, ptr %i.adw, align 8, !tbaa !247
  %i.adz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i405, i64 16 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i404, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i406 = icmp eq ptr %i.adz, %i.acr
  br i1 %.not.i.i.i.i.i.i406, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i414, label %.lr.ph.i.i.i.i.i.i403, !llvm.loop !491

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i414: ; preds = %.lr.ph.i.i.i.i.i.i403, %middle.block1738, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i399
  %.0.lcssa.i.i.i.i.i.i408 = phi ptr [ %i.adf, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i399 ], [ %i.adq, %middle.block1738 ], [ %i.aea, %.lr.ph.i.i.i.i.i.i403 ]
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i408, i64 16
  %.not.i25.i416 = icmp eq ptr %i.acu, null
  br i1 %.not.i25.i416, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit417, label %bb.bp

bb.bp:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i414
  call void @_ZdlPvm(ptr noundef nonnull %i.acu, i64 noundef %i.acx) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit417

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit417: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i414, %bb.bp
  store ptr %i.adf, ptr %3, align 16, !tbaa !279
  store ptr %i.aeb, ptr %i.hc, align 8, !tbaa !276
  %i.aec = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %i.add
  store ptr %i.aec, ptr %i.he, align 16, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit118

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit118: ; preds = %bb.bm, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit417
  %i.aed = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  %i.aee = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  %i.aef = load ptr, ptr %i.iu, align 16, !tbaa !264 ; 7 uses
  %i.aeg = load ptr, ptr %i.iw, align 8, !tbaa !268
  %.not.i.i119 = icmp eq ptr %i.aef, %i.aeg
  br i1 %.not.i.i119, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit118
  store i32 0, ptr %i.aef, align 4, !tbaa !4
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aef, i64 4
  store i32 1, ptr %i.aeh, align 4, !tbaa !4
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  store ptr %i.aei, ptr %i.iu, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i120

bb.br:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit118
  %i.aej = load ptr, ptr %i.iq, align 8, !tbaa !267 ; 11 uses
  %i.aek = ptrtoint ptr %i.aef to i64             ; 3 uses
  %i.ael = ptrtoint ptr %i.aej to i64             ; 3 uses
  %i.aem = sub i64 %i.aek, %i.ael                 ; 4 uses
  %i.aen = icmp eq i64 %i.aem, 9223372036854775800
  br i1 %i.aen, label %bb.bs, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i456

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i456: ; preds = %bb.br
  %i.aeo = ashr exact i64 %i.aem, 3               ; 3 uses
  %.sroa.speculated.i.i457 = call i64 @llvm.umax.i64(i64 %i.aeo, i64 1)
  %i.aep = add nsw i64 %.sroa.speculated.i.i457, %i.aeo ; 2 uses
  %i.aeq = icmp ult i64 %i.aep, %i.aeo
  %i.aer = call i64 @llvm.umin.i64(i64 %i.aep, i64 1152921504606846975)
  %i.aes = select i1 %i.aeq, i64 1152921504606846975, i64 %i.aer ; 3 uses
  %.not.i.i458 = icmp ne i64 %i.aes, 0
  call void @llvm.assume(i1 %.not.i.i458)
  %i.aet = shl nuw nsw i64 %i.aes, 3
  %i.aeu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aet) #45 ; 11 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %i.aem ; 2 uses
  store i32 0, ptr %i.aev, align 4, !tbaa !4
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  store i32 1, ptr %i.aew, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i459 = icmp eq ptr %i.aej, %i.aef
  br i1 %.not9.i.i.i.i.i.i459, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i471, label %.lr.ph.i.i.i.i.i.i460.preheader

.lr.ph.i.i.i.i.i.i460.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i456
  %i.aex = sub i64 %i.aek, %i.ael
  %i.aey = add i64 %i.aex, -8                     ; 2 uses
  %i.aez = lshr i64 %i.aey, 3
  %i.afa = add nuw nsw i64 %i.aez, 1              ; 2 uses
  %min.iters.check1749 = icmp ult i64 %i.aey, 120
  br i1 %min.iters.check1749, label %.lr.ph.i.i.i.i.i.i460.preheader2323, label %vector.memcheck1742

vector.memcheck1742:                              ; preds = %.lr.ph.i.i.i.i.i.i460.preheader
  %i.afb = add i64 %i.aek, -8
  %i.afc = sub i64 %i.afb, %i.ael
  %i.afd = and i64 %i.afc, -8
  %i.afe = add i64 %i.afd, 8                      ; 2 uses
  %scevgep1743 = getelementptr i8, ptr %i.aeu, i64 %i.afe
  %scevgep1744 = getelementptr i8, ptr %i.aej, i64 %i.afe
  %bound01745 = icmp ult ptr %i.aeu, %scevgep1744
  %bound11746 = icmp ult ptr %i.aej, %scevgep1743
  %found.conflict1747 = and i1 %bound01745, %bound11746
  br i1 %found.conflict1747, label %.lr.ph.i.i.i.i.i.i460.preheader2323, label %vector.ph1750

vector.ph1750:                                    ; preds = %vector.memcheck1742
  %n.vec1752 = and i64 %i.afa, 4611686018427387900 ; 3 uses
  %i.aff = shl i64 %n.vec1752, 3                  ; 2 uses
  %i.afg = getelementptr i8, ptr %i.aeu, i64 %i.aff ; 2 uses
  %i.afh = getelementptr i8, ptr %i.aej, i64 %i.aff
  br label %vector.body1753

vector.body1753:                                  ; preds = %vector.body1753, %vector.ph1750
  %index1754 = phi i64 [ 0, %vector.ph1750 ], [ %index.next1767, %vector.body1753 ] ; 2 uses
  %i.afi = shl i64 %index1754, 3                  ; 3 uses
  %i.afj = or disjoint i64 %i.afi, 16             ; 2 uses
  %next.gep1755 = getelementptr i8, ptr %i.aeu, i64 %i.afi
  %next.gep1756 = getelementptr i8, ptr %i.aeu, i64 %i.afj
  %next.gep1757 = getelementptr i8, ptr %i.aej, i64 %i.afi
  %next.gep1758 = getelementptr i8, ptr %i.aej, i64 %i.afj
  %wide.vec1759 = load <4 x i32>, ptr %next.gep1757, align 4, !tbaa !236, !alias.scope !492
  %wide.vec1762 = load <4 x i32>, ptr %next.gep1758, align 4, !tbaa !236, !alias.scope !492
  store <4 x i32> %wide.vec1759, ptr %next.gep1755, align 4, !tbaa !4, !alias.scope !495, !noalias !492
  store <4 x i32> %wide.vec1762, ptr %next.gep1756, align 4, !tbaa !4, !alias.scope !495, !noalias !492
  %index.next1767 = add nuw i64 %index1754, 4     ; 2 uses
  %i.afk = icmp eq i64 %index.next1767, %n.vec1752
  br i1 %i.afk, label %middle.block1768, label %vector.body1753, !llvm.loop !497

middle.block1768:                                 ; preds = %vector.body1753
  %cmp.n1769 = icmp eq i64 %i.afa, %n.vec1752
  br i1 %cmp.n1769, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i471, label %.lr.ph.i.i.i.i.i.i460.preheader2323

.lr.ph.i.i.i.i.i.i460.preheader2323:              ; preds = %vector.memcheck1742, %.lr.ph.i.i.i.i.i.i460.preheader, %middle.block1768
  %.011.i.i.i.i.i.i461.ph = phi ptr [ %i.aeu, %vector.memcheck1742 ], [ %i.aeu, %.lr.ph.i.i.i.i.i.i460.preheader ], [ %i.afg, %middle.block1768 ]
  %.0810.i.i.i.i.i.i462.ph = phi ptr [ %i.aej, %vector.memcheck1742 ], [ %i.aej, %.lr.ph.i.i.i.i.i.i460.preheader ], [ %i.afh, %middle.block1768 ]
  br label %.lr.ph.i.i.i.i.i.i460

.lr.ph.i.i.i.i.i.i460:                            ; preds = %.lr.ph.i.i.i.i.i.i460.preheader2323, %.lr.ph.i.i.i.i.i.i460
  %.011.i.i.i.i.i.i461 = phi ptr [ %i.afq, %.lr.ph.i.i.i.i.i.i460 ], [ %.011.i.i.i.i.i.i461.ph, %.lr.ph.i.i.i.i.i.i460.preheader2323 ] ; 3 uses
  %.0810.i.i.i.i.i.i462 = phi ptr [ %i.afp, %.lr.ph.i.i.i.i.i.i460 ], [ %.0810.i.i.i.i.i.i462.ph, %.lr.ph.i.i.i.i.i.i460.preheader2323 ] ; 3 uses
  %i.afl = load i32, ptr %.0810.i.i.i.i.i.i462, align 4, !tbaa !236
  store i32 %i.afl, ptr %.011.i.i.i.i.i.i461, align 4, !tbaa !4
  %i.afm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i461, i64 4
  %i.afn = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i462, i64 4
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !236
  store i32 %i.afo, ptr %i.afm, align 4, !tbaa !4
  %i.afp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i462, i64 8 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i461, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i463 = icmp eq ptr %i.afp, %i.aef
  br i1 %.not.i.i.i.i.i.i463, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i471, label %.lr.ph.i.i.i.i.i.i460, !llvm.loop !498

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i471: ; preds = %.lr.ph.i.i.i.i.i.i460, %middle.block1768, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i456
  %.0.lcssa.i.i.i.i.i.i465 = phi ptr [ %i.aeu, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i456 ], [ %i.afg, %middle.block1768 ], [ %i.afq, %.lr.ph.i.i.i.i.i.i460 ]
  %i.afr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i465, i64 8
  %.not.i25.i473 = icmp eq ptr %i.aej, null
  br i1 %.not.i25.i473, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit474, label %bb.bt

bb.bt:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i471
  call void @_ZdlPvm(ptr noundef nonnull %i.aej, i64 noundef %i.aem) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit474

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit474: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i471, %bb.bt
  store ptr %i.aeu, ptr %i.iq, align 8, !tbaa !267
  store ptr %i.afr, ptr %i.iu, align 16, !tbaa !264
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.aeu, i64 %i.aes
  store ptr %i.afs, ptr %i.iw, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i120

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i120: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit474, %bb.bq
  %i.aft = load ptr, ptr %i.kk, align 16, !tbaa !276 ; 6 uses
  %i.afu = load ptr, ptr %i.km, align 8, !tbaa !280
  %.not.i4.i121 = icmp eq ptr %i.aft, %i.afu
  br i1 %.not.i4.i121, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i120
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.aft, align 8, !tbaa !247
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aft, i64 16
  store ptr %i.afv, ptr %i.kk, align 16, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit122

bb.bv:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i120
  %i.afw = load ptr, ptr %i.is, align 8, !tbaa !279 ; 11 uses
  %i.afx = ptrtoint ptr %i.aft to i64             ; 3 uses
  %i.afy = ptrtoint ptr %i.afw to i64             ; 3 uses
  %i.afz = sub i64 %i.afx, %i.afy                 ; 4 uses
  %i.aga = icmp eq i64 %i.afz, 9223372036854775792
  br i1 %i.aga, label %bb.bw, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i437

bb.bw:                                            ; preds = %bb.bv
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i437: ; preds = %bb.bv
  %i.agb = ashr exact i64 %i.afz, 4               ; 3 uses
  %.sroa.speculated.i.i438 = call i64 @llvm.umax.i64(i64 %i.agb, i64 1)
  %i.agc = add nsw i64 %.sroa.speculated.i.i438, %i.agb ; 2 uses
  %i.agd = icmp ult i64 %i.agc, %i.agb
  %i.age = call i64 @llvm.umin.i64(i64 %i.agc, i64 576460752303423487)
  %i.agf = select i1 %i.agd, i64 576460752303423487, i64 %i.age ; 3 uses
  %.not.i.i439 = icmp ne i64 %i.agf, 0
  call void @llvm.assume(i1 %.not.i.i439)
  %i.agg = shl nuw nsw i64 %i.agf, 4
  %i.agh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agg) #45 ; 11 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 %i.afz
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.agi, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i440 = icmp eq ptr %i.afw, %i.aft
  br i1 %.not9.i.i.i.i.i.i440, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i452, label %.lr.ph.i.i.i.i.i.i441.preheader

.lr.ph.i.i.i.i.i.i441.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i437
  %i.agj = sub i64 %i.afx, %i.afy
  %i.agk = add i64 %i.agj, -16                    ; 2 uses
  %i.agl = lshr i64 %i.agk, 4
  %i.agm = add nuw nsw i64 %i.agl, 1              ; 2 uses
  %min.iters.check1779 = icmp ult i64 %i.agk, 240
  br i1 %min.iters.check1779, label %.lr.ph.i.i.i.i.i.i441.preheader2321, label %vector.memcheck1772

vector.memcheck1772:                              ; preds = %.lr.ph.i.i.i.i.i.i441.preheader
  %i.agn = add i64 %i.afx, -16
  %i.ago = sub i64 %i.agn, %i.afy
  %i.agp = and i64 %i.ago, -16
  %i.agq = add i64 %i.agp, 16                     ; 2 uses
  %scevgep1773 = getelementptr i8, ptr %i.agh, i64 %i.agq
  %scevgep1774 = getelementptr i8, ptr %i.afw, i64 %i.agq
  %bound01775 = icmp ult ptr %i.agh, %scevgep1774
  %bound11776 = icmp ult ptr %i.afw, %scevgep1773
  %found.conflict1777 = and i1 %bound01775, %bound11776
  br i1 %found.conflict1777, label %.lr.ph.i.i.i.i.i.i441.preheader2321, label %vector.ph1780

vector.ph1780:                                    ; preds = %vector.memcheck1772
  %n.vec1782 = and i64 %i.agm, 2305843009213693950 ; 3 uses
  %i.agr = shl i64 %n.vec1782, 4                  ; 2 uses
  %i.ags = getelementptr i8, ptr %i.agh, i64 %i.agr ; 2 uses
  %i.agt = getelementptr i8, ptr %i.afw, i64 %i.agr
  br label %vector.body1783

vector.body1783:                                  ; preds = %vector.body1783, %vector.ph1780
  %index1784 = phi i64 [ 0, %vector.ph1780 ], [ %index.next1791, %vector.body1783 ] ; 2 uses
  %i.agu = shl i64 %index1784, 4                  ; 3 uses
  %i.agv = or disjoint i64 %i.agu, 16             ; 2 uses
  %next.gep1785 = getelementptr i8, ptr %i.agh, i64 %i.agu
  %next.gep1786 = getelementptr i8, ptr %i.agh, i64 %i.agv
  %next.gep1787 = getelementptr i8, ptr %i.afw, i64 %i.agu
  %next.gep1788 = getelementptr i8, ptr %i.afw, i64 %i.agv
  %wide.load1789 = load <2 x double>, ptr %next.gep1787, align 8, !tbaa !247, !alias.scope !499
  %wide.load1790 = load <2 x double>, ptr %next.gep1788, align 8, !tbaa !247, !alias.scope !499
  store <2 x double> %wide.load1789, ptr %next.gep1785, align 8, !tbaa !247, !alias.scope !502, !noalias !499
  store <2 x double> %wide.load1790, ptr %next.gep1786, align 8, !tbaa !247, !alias.scope !502, !noalias !499
  %index.next1791 = add nuw i64 %index1784, 2     ; 2 uses
  %i.agw = icmp eq i64 %index.next1791, %n.vec1782
  br i1 %i.agw, label %middle.block1792, label %vector.body1783, !llvm.loop !504

middle.block1792:                                 ; preds = %vector.body1783
  %cmp.n1793 = icmp eq i64 %i.agm, %n.vec1782
  br i1 %cmp.n1793, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i452, label %.lr.ph.i.i.i.i.i.i441.preheader2321

.lr.ph.i.i.i.i.i.i441.preheader2321:              ; preds = %vector.memcheck1772, %.lr.ph.i.i.i.i.i.i441.preheader, %middle.block1792
  %.011.i.i.i.i.i.i442.ph = phi ptr [ %i.agh, %vector.memcheck1772 ], [ %i.agh, %.lr.ph.i.i.i.i.i.i441.preheader ], [ %i.ags, %middle.block1792 ]
  %.0810.i.i.i.i.i.i443.ph = phi ptr [ %i.afw, %vector.memcheck1772 ], [ %i.afw, %.lr.ph.i.i.i.i.i.i441.preheader ], [ %i.agt, %middle.block1792 ]
  br label %.lr.ph.i.i.i.i.i.i441

.lr.ph.i.i.i.i.i.i441:                            ; preds = %.lr.ph.i.i.i.i.i.i441.preheader2321, %.lr.ph.i.i.i.i.i.i441
  %.011.i.i.i.i.i.i442 = phi ptr [ %i.ahc, %.lr.ph.i.i.i.i.i.i441 ], [ %.011.i.i.i.i.i.i442.ph, %.lr.ph.i.i.i.i.i.i441.preheader2321 ] ; 3 uses
  %.0810.i.i.i.i.i.i443 = phi ptr [ %i.ahb, %.lr.ph.i.i.i.i.i.i441 ], [ %.0810.i.i.i.i.i.i443.ph, %.lr.ph.i.i.i.i.i.i441.preheader2321 ] ; 3 uses
  %i.agx = load double, ptr %.0810.i.i.i.i.i.i443, align 8, !tbaa !247
  store double %i.agx, ptr %.011.i.i.i.i.i.i442, align 8, !tbaa !247
  %i.agy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i442, i64 8
  %i.agz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i443, i64 8
  %i.aha = load double, ptr %i.agz, align 8, !tbaa !247
  store double %i.aha, ptr %i.agy, align 8, !tbaa !247
  %i.ahb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i443, i64 16 ; 2 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i442, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i444 = icmp eq ptr %i.ahb, %i.aft
  br i1 %.not.i.i.i.i.i.i444, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i452, label %.lr.ph.i.i.i.i.i.i441, !llvm.loop !505

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i452: ; preds = %.lr.ph.i.i.i.i.i.i441, %middle.block1792, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i437
  %.0.lcssa.i.i.i.i.i.i446 = phi ptr [ %i.agh, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i437 ], [ %i.ags, %middle.block1792 ], [ %i.ahc, %.lr.ph.i.i.i.i.i.i441 ]
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i446, i64 16
  %.not.i25.i454 = icmp eq ptr %i.afw, null
  br i1 %.not.i25.i454, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit455, label %bb.bx

bb.bx:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i452
  call void @_ZdlPvm(ptr noundef nonnull %i.afw, i64 noundef %i.afz) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit455

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit455: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i452, %bb.bx
  store ptr %i.agh, ptr %i.is, align 8, !tbaa !279
  store ptr %i.ahd, ptr %i.kk, align 16, !tbaa !276
  %i.ahe = getelementptr inbounds nuw [16 x i8], ptr %i.agh, i64 %i.agf
  store ptr %i.ahe, ptr %i.km, align 8, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit122

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit122: ; preds = %bb.bu, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit455
  %i.ahf = load ptr, ptr %i.ma, align 8, !tbaa !264 ; 7 uses
  %i.ahg = load ptr, ptr %i.mc, align 16, !tbaa !268
  %.not.i.i123 = icmp eq ptr %i.ahf, %i.ahg
  br i1 %.not.i.i123, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit122
  store i32 1, ptr %i.ahf, align 4, !tbaa !4
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahf, i64 4
  store i32 0, ptr %i.ahh, align 4, !tbaa !4
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  store ptr %i.ahi, ptr %i.ma, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i124

bb.bz:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit122
  %i.ahj = load ptr, ptr %i.ly, align 16, !tbaa !267 ; 11 uses
  %i.ahk = ptrtoint ptr %i.ahf to i64             ; 3 uses
  %i.ahl = ptrtoint ptr %i.ahj to i64             ; 3 uses
  %i.ahm = sub i64 %i.ahk, %i.ahl                 ; 4 uses
  %i.ahn = icmp eq i64 %i.ahm, 9223372036854775800
  br i1 %i.ahn, label %bb.ca, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i494

bb.ca:                                            ; preds = %bb.bz
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i494: ; preds = %bb.bz
  %i.aho = ashr exact i64 %i.ahm, 3               ; 3 uses
  %.sroa.speculated.i.i495 = call i64 @llvm.umax.i64(i64 %i.aho, i64 1)
  %i.ahp = add nsw i64 %.sroa.speculated.i.i495, %i.aho ; 2 uses
  %i.ahq = icmp ult i64 %i.ahp, %i.aho
  %i.ahr = call i64 @llvm.umin.i64(i64 %i.ahp, i64 1152921504606846975)
  %i.ahs = select i1 %i.ahq, i64 1152921504606846975, i64 %i.ahr ; 3 uses
  %.not.i.i496 = icmp ne i64 %i.ahs, 0
  call void @llvm.assume(i1 %.not.i.i496)
  %i.aht = shl nuw nsw i64 %i.ahs, 3
  %i.ahu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aht) #45 ; 11 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.ahm ; 2 uses
  store i32 1, ptr %i.ahv, align 4, !tbaa !4
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 4
  store i32 0, ptr %i.ahw, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i497 = icmp eq ptr %i.ahj, %i.ahf
  br i1 %.not9.i.i.i.i.i.i497, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i509, label %.lr.ph.i.i.i.i.i.i498.preheader

.lr.ph.i.i.i.i.i.i498.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i494
  %i.ahx = sub i64 %i.ahk, %i.ahl
  %i.ahy = add i64 %i.ahx, -8                     ; 2 uses
  %i.ahz = lshr i64 %i.ahy, 3
  %i.aia = add nuw nsw i64 %i.ahz, 1              ; 2 uses
  %min.iters.check1803 = icmp ult i64 %i.ahy, 120
  br i1 %min.iters.check1803, label %.lr.ph.i.i.i.i.i.i498.preheader2319, label %vector.memcheck1796

vector.memcheck1796:                              ; preds = %.lr.ph.i.i.i.i.i.i498.preheader
  %i.aib = add i64 %i.ahk, -8
  %i.aic = sub i64 %i.aib, %i.ahl
  %i.aid = and i64 %i.aic, -8
  %i.aie = add i64 %i.aid, 8                      ; 2 uses
  %scevgep1797 = getelementptr i8, ptr %i.ahu, i64 %i.aie
  %scevgep1798 = getelementptr i8, ptr %i.ahj, i64 %i.aie
  %bound01799 = icmp ult ptr %i.ahu, %scevgep1798
  %bound11800 = icmp ult ptr %i.ahj, %scevgep1797
  %found.conflict1801 = and i1 %bound01799, %bound11800
  br i1 %found.conflict1801, label %.lr.ph.i.i.i.i.i.i498.preheader2319, label %vector.ph1804

vector.ph1804:                                    ; preds = %vector.memcheck1796
  %n.vec1806 = and i64 %i.aia, 4611686018427387900 ; 3 uses
  %i.aif = shl i64 %n.vec1806, 3                  ; 2 uses
  %i.aig = getelementptr i8, ptr %i.ahu, i64 %i.aif ; 2 uses
  %i.aih = getelementptr i8, ptr %i.ahj, i64 %i.aif
  br label %vector.body1807

vector.body1807:                                  ; preds = %vector.body1807, %vector.ph1804
  %index1808 = phi i64 [ 0, %vector.ph1804 ], [ %index.next1821, %vector.body1807 ] ; 2 uses
  %i.aii = shl i64 %index1808, 3                  ; 3 uses
  %i.aij = or disjoint i64 %i.aii, 16             ; 2 uses
  %next.gep1809 = getelementptr i8, ptr %i.ahu, i64 %i.aii
  %next.gep1810 = getelementptr i8, ptr %i.ahu, i64 %i.aij
  %next.gep1811 = getelementptr i8, ptr %i.ahj, i64 %i.aii
  %next.gep1812 = getelementptr i8, ptr %i.ahj, i64 %i.aij
  %wide.vec1813 = load <4 x i32>, ptr %next.gep1811, align 4, !tbaa !236, !alias.scope !506
  %wide.vec1816 = load <4 x i32>, ptr %next.gep1812, align 4, !tbaa !236, !alias.scope !506
  store <4 x i32> %wide.vec1813, ptr %next.gep1809, align 4, !tbaa !4, !alias.scope !509, !noalias !506
  store <4 x i32> %wide.vec1816, ptr %next.gep1810, align 4, !tbaa !4, !alias.scope !509, !noalias !506
  %index.next1821 = add nuw i64 %index1808, 4     ; 2 uses
  %i.aik = icmp eq i64 %index.next1821, %n.vec1806
  br i1 %i.aik, label %middle.block1822, label %vector.body1807, !llvm.loop !511

middle.block1822:                                 ; preds = %vector.body1807
  %cmp.n1823 = icmp eq i64 %i.aia, %n.vec1806
  br i1 %cmp.n1823, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i509, label %.lr.ph.i.i.i.i.i.i498.preheader2319

.lr.ph.i.i.i.i.i.i498.preheader2319:              ; preds = %vector.memcheck1796, %.lr.ph.i.i.i.i.i.i498.preheader, %middle.block1822
  %.011.i.i.i.i.i.i499.ph = phi ptr [ %i.ahu, %vector.memcheck1796 ], [ %i.ahu, %.lr.ph.i.i.i.i.i.i498.preheader ], [ %i.aig, %middle.block1822 ]
  %.0810.i.i.i.i.i.i500.ph = phi ptr [ %i.ahj, %vector.memcheck1796 ], [ %i.ahj, %.lr.ph.i.i.i.i.i.i498.preheader ], [ %i.aih, %middle.block1822 ]
  br label %.lr.ph.i.i.i.i.i.i498

.lr.ph.i.i.i.i.i.i498:                            ; preds = %.lr.ph.i.i.i.i.i.i498.preheader2319, %.lr.ph.i.i.i.i.i.i498
  %.011.i.i.i.i.i.i499 = phi ptr [ %i.aiq, %.lr.ph.i.i.i.i.i.i498 ], [ %.011.i.i.i.i.i.i499.ph, %.lr.ph.i.i.i.i.i.i498.preheader2319 ] ; 3 uses
  %.0810.i.i.i.i.i.i500 = phi ptr [ %i.aip, %.lr.ph.i.i.i.i.i.i498 ], [ %.0810.i.i.i.i.i.i500.ph, %.lr.ph.i.i.i.i.i.i498.preheader2319 ] ; 3 uses
  %i.ail = load i32, ptr %.0810.i.i.i.i.i.i500, align 4, !tbaa !236
  store i32 %i.ail, ptr %.011.i.i.i.i.i.i499, align 4, !tbaa !4
  %i.aim = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i499, i64 4
  %i.ain = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i500, i64 4
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !236
  store i32 %i.aio, ptr %i.aim, align 4, !tbaa !4
  %i.aip = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i500, i64 8 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i499, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i501 = icmp eq ptr %i.aip, %i.ahf
  br i1 %.not.i.i.i.i.i.i501, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i509, label %.lr.ph.i.i.i.i.i.i498, !llvm.loop !512

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i509: ; preds = %.lr.ph.i.i.i.i.i.i498, %middle.block1822, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i494
  %.0.lcssa.i.i.i.i.i.i503 = phi ptr [ %i.ahu, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i494 ], [ %i.aig, %middle.block1822 ], [ %i.aiq, %.lr.ph.i.i.i.i.i.i498 ]
  %i.air = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i503, i64 8
  %.not.i25.i511 = icmp eq ptr %i.ahj, null
  br i1 %.not.i25.i511, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit512, label %bb.cb

bb.cb:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i509
  call void @_ZdlPvm(ptr noundef nonnull %i.ahj, i64 noundef %i.ahm) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit512

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit512: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i509, %bb.cb
  store ptr %i.ahu, ptr %i.ly, align 16, !tbaa !267
  store ptr %i.air, ptr %i.ma, align 8, !tbaa !264
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.ahu, i64 %i.ahs
  store ptr %i.ais, ptr %i.mc, align 16, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i124

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i124: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit512, %bb.by
  %i.ait = load ptr, ptr %i.nq, align 8, !tbaa !276 ; 6 uses
  %i.aiu = load ptr, ptr %i.ns, align 16, !tbaa !280
  %.not.i4.i125 = icmp eq ptr %i.ait, %i.aiu
  br i1 %.not.i4.i125, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i124
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %i.ait, align 8, !tbaa !247
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 16
  store ptr %i.aiv, ptr %i.nq, align 8, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit126

bb.cd:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i124
  %i.aiw = load ptr, ptr %i.lz, align 16, !tbaa !279 ; 11 uses
  %i.aix = ptrtoint ptr %i.ait to i64             ; 3 uses
  %i.aiy = ptrtoint ptr %i.aiw to i64             ; 3 uses
  %i.aiz = sub i64 %i.aix, %i.aiy                 ; 4 uses
  %i.aja = icmp eq i64 %i.aiz, 9223372036854775792
  br i1 %i.aja, label %bb.ce, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i475

bb.ce:                                            ; preds = %bb.cd
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i475: ; preds = %bb.cd
  %i.ajb = ashr exact i64 %i.aiz, 4               ; 3 uses
  %.sroa.speculated.i.i476 = call i64 @llvm.umax.i64(i64 %i.ajb, i64 1)
  %i.ajc = add nsw i64 %.sroa.speculated.i.i476, %i.ajb ; 2 uses
  %i.ajd = icmp ult i64 %i.ajc, %i.ajb
  %i.aje = call i64 @llvm.umin.i64(i64 %i.ajc, i64 576460752303423487)
  %i.ajf = select i1 %i.ajd, i64 576460752303423487, i64 %i.aje ; 3 uses
  %.not.i.i477 = icmp ne i64 %i.ajf, 0
  call void @llvm.assume(i1 %.not.i.i477)
  %i.ajg = shl nuw nsw i64 %i.ajf, 4
  %i.ajh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajg) #45 ; 11 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %i.aiz
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %i.aji, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i478 = icmp eq ptr %i.aiw, %i.ait
  br i1 %.not9.i.i.i.i.i.i478, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i490, label %.lr.ph.i.i.i.i.i.i479.preheader

.lr.ph.i.i.i.i.i.i479.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i475
  %i.ajj = sub i64 %i.aix, %i.aiy
  %i.ajk = add i64 %i.ajj, -16                    ; 2 uses
  %i.ajl = lshr i64 %i.ajk, 4
  %i.ajm = add nuw nsw i64 %i.ajl, 1              ; 2 uses
  %min.iters.check1833 = icmp ult i64 %i.ajk, 240
  br i1 %min.iters.check1833, label %.lr.ph.i.i.i.i.i.i479.preheader2317, label %vector.memcheck1826

vector.memcheck1826:                              ; preds = %.lr.ph.i.i.i.i.i.i479.preheader
  %i.ajn = add i64 %i.aix, -16
  %i.ajo = sub i64 %i.ajn, %i.aiy
  %i.ajp = and i64 %i.ajo, -16
  %i.ajq = add i64 %i.ajp, 16                     ; 2 uses
  %scevgep1827 = getelementptr i8, ptr %i.ajh, i64 %i.ajq
  %scevgep1828 = getelementptr i8, ptr %i.aiw, i64 %i.ajq
  %bound01829 = icmp ult ptr %i.ajh, %scevgep1828
  %bound11830 = icmp ult ptr %i.aiw, %scevgep1827
  %found.conflict1831 = and i1 %bound01829, %bound11830
  br i1 %found.conflict1831, label %.lr.ph.i.i.i.i.i.i479.preheader2317, label %vector.ph1834

vector.ph1834:                                    ; preds = %vector.memcheck1826
  %n.vec1836 = and i64 %i.ajm, 2305843009213693950 ; 3 uses
  %i.ajr = shl i64 %n.vec1836, 4                  ; 2 uses
  %i.ajs = getelementptr i8, ptr %i.ajh, i64 %i.ajr ; 2 uses
  %i.ajt = getelementptr i8, ptr %i.aiw, i64 %i.ajr
  br label %vector.body1837

vector.body1837:                                  ; preds = %vector.body1837, %vector.ph1834
  %index1838 = phi i64 [ 0, %vector.ph1834 ], [ %index.next1845, %vector.body1837 ] ; 2 uses
  %i.aju = shl i64 %index1838, 4                  ; 3 uses
  %i.ajv = or disjoint i64 %i.aju, 16             ; 2 uses
  %next.gep1839 = getelementptr i8, ptr %i.ajh, i64 %i.aju
  %next.gep1840 = getelementptr i8, ptr %i.ajh, i64 %i.ajv
  %next.gep1841 = getelementptr i8, ptr %i.aiw, i64 %i.aju
  %next.gep1842 = getelementptr i8, ptr %i.aiw, i64 %i.ajv
  %wide.load1843 = load <2 x double>, ptr %next.gep1841, align 8, !tbaa !247, !alias.scope !513
  %wide.load1844 = load <2 x double>, ptr %next.gep1842, align 8, !tbaa !247, !alias.scope !513
  store <2 x double> %wide.load1843, ptr %next.gep1839, align 8, !tbaa !247, !alias.scope !516, !noalias !513
  store <2 x double> %wide.load1844, ptr %next.gep1840, align 8, !tbaa !247, !alias.scope !516, !noalias !513
  %index.next1845 = add nuw i64 %index1838, 2     ; 2 uses
  %i.ajw = icmp eq i64 %index.next1845, %n.vec1836
  br i1 %i.ajw, label %middle.block1846, label %vector.body1837, !llvm.loop !518

middle.block1846:                                 ; preds = %vector.body1837
  %cmp.n1847 = icmp eq i64 %i.ajm, %n.vec1836
  br i1 %cmp.n1847, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i490, label %.lr.ph.i.i.i.i.i.i479.preheader2317

.lr.ph.i.i.i.i.i.i479.preheader2317:              ; preds = %vector.memcheck1826, %.lr.ph.i.i.i.i.i.i479.preheader, %middle.block1846
  %.011.i.i.i.i.i.i480.ph = phi ptr [ %i.ajh, %vector.memcheck1826 ], [ %i.ajh, %.lr.ph.i.i.i.i.i.i479.preheader ], [ %i.ajs, %middle.block1846 ]
  %.0810.i.i.i.i.i.i481.ph = phi ptr [ %i.aiw, %vector.memcheck1826 ], [ %i.aiw, %.lr.ph.i.i.i.i.i.i479.preheader ], [ %i.ajt, %middle.block1846 ]
  br label %.lr.ph.i.i.i.i.i.i479

.lr.ph.i.i.i.i.i.i479:                            ; preds = %.lr.ph.i.i.i.i.i.i479.preheader2317, %.lr.ph.i.i.i.i.i.i479
  %.011.i.i.i.i.i.i480 = phi ptr [ %i.akc, %.lr.ph.i.i.i.i.i.i479 ], [ %.011.i.i.i.i.i.i480.ph, %.lr.ph.i.i.i.i.i.i479.preheader2317 ] ; 3 uses
  %.0810.i.i.i.i.i.i481 = phi ptr [ %i.akb, %.lr.ph.i.i.i.i.i.i479 ], [ %.0810.i.i.i.i.i.i481.ph, %.lr.ph.i.i.i.i.i.i479.preheader2317 ] ; 3 uses
  %i.ajx = load double, ptr %.0810.i.i.i.i.i.i481, align 8, !tbaa !247
  store double %i.ajx, ptr %.011.i.i.i.i.i.i480, align 8, !tbaa !247
  %i.ajy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i480, i64 8
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i481, i64 8
  %i.aka = load double, ptr %i.ajz, align 8, !tbaa !247
  store double %i.aka, ptr %i.ajy, align 8, !tbaa !247
  %i.akb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i481, i64 16 ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i480, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i482 = icmp eq ptr %i.akb, %i.ait
  br i1 %.not.i.i.i.i.i.i482, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i490, label %.lr.ph.i.i.i.i.i.i479, !llvm.loop !519

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i490: ; preds = %.lr.ph.i.i.i.i.i.i479, %middle.block1846, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i475
  %.0.lcssa.i.i.i.i.i.i484 = phi ptr [ %i.ajh, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i475 ], [ %i.ajs, %middle.block1846 ], [ %i.akc, %.lr.ph.i.i.i.i.i.i479 ]
  %i.akd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i484, i64 16
  %.not.i25.i492 = icmp eq ptr %i.aiw, null
  br i1 %.not.i25.i492, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit493, label %bb.cf

bb.cf:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i490
  call void @_ZdlPvm(ptr noundef nonnull %i.aiw, i64 noundef %i.aiz) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit493

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit493: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i490, %bb.cf
  store ptr %i.ajh, ptr %i.lz, align 16, !tbaa !279
  store ptr %i.akd, ptr %i.nq, align 8, !tbaa !276
  %i.ake = getelementptr inbounds nuw [16 x i8], ptr %i.ajh, i64 %i.ajf
  store ptr %i.ake, ptr %i.ns, align 16, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit126

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit126: ; preds = %bb.cc, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit493
  %i.akf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.pe, ptr noundef nonnull align 8 dereferenceable(24) %i.ly) ; 0 uses
  %i.akg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.pg, ptr noundef nonnull align 8 dereferenceable(24) %i.lz) ; 0 uses
  %i.akh = load ptr, ptr %i.pi, align 16, !tbaa !264 ; 7 uses
  %i.aki = load ptr, ptr %i.pk, align 8, !tbaa !268
  %.not.i.i127 = icmp eq ptr %i.akh, %i.aki
  br i1 %.not.i.i127, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit126
  store i32 1, ptr %i.akh, align 4, !tbaa !4
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akh, i64 4
  store i32 0, ptr %i.akj, align 4, !tbaa !4
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  store ptr %i.akk, ptr %i.pi, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i128

bb.ch:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit126
  %i.akl = load ptr, ptr %i.pe, align 8, !tbaa !267 ; 11 uses
  %i.akm = ptrtoint ptr %i.akh to i64             ; 3 uses
  %i.akn = ptrtoint ptr %i.akl to i64             ; 3 uses
  %i.ako = sub i64 %i.akm, %i.akn                 ; 4 uses
  %i.akp = icmp eq i64 %i.ako, 9223372036854775800
  br i1 %i.akp, label %bb.ci, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i532

bb.ci:                                            ; preds = %bb.ch
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i532: ; preds = %bb.ch
  %i.akq = ashr exact i64 %i.ako, 3               ; 3 uses
  %.sroa.speculated.i.i533 = call i64 @llvm.umax.i64(i64 %i.akq, i64 1)
  %i.akr = add nsw i64 %.sroa.speculated.i.i533, %i.akq ; 2 uses
  %i.aks = icmp ult i64 %i.akr, %i.akq
  %i.akt = call i64 @llvm.umin.i64(i64 %i.akr, i64 1152921504606846975)
  %i.aku = select i1 %i.aks, i64 1152921504606846975, i64 %i.akt ; 3 uses
  %.not.i.i534 = icmp ne i64 %i.aku, 0
  call void @llvm.assume(i1 %.not.i.i534)
  %i.akv = shl nuw nsw i64 %i.aku, 3
  %i.akw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akv) #45 ; 11 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.ako ; 2 uses
  store i32 1, ptr %i.akx, align 4, !tbaa !4
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  store i32 0, ptr %i.aky, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i535 = icmp eq ptr %i.akl, %i.akh
  br i1 %.not9.i.i.i.i.i.i535, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i547, label %.lr.ph.i.i.i.i.i.i536.preheader

.lr.ph.i.i.i.i.i.i536.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i532
  %i.akz = sub i64 %i.akm, %i.akn
  %i.ala = add i64 %i.akz, -8                     ; 2 uses
  %i.alb = lshr i64 %i.ala, 3
  %i.alc = add nuw nsw i64 %i.alb, 1              ; 2 uses
  %min.iters.check1857 = icmp ult i64 %i.ala, 120
  br i1 %min.iters.check1857, label %.lr.ph.i.i.i.i.i.i536.preheader2315, label %vector.memcheck1850

vector.memcheck1850:                              ; preds = %.lr.ph.i.i.i.i.i.i536.preheader
  %i.ald = add i64 %i.akm, -8
  %i.ale = sub i64 %i.ald, %i.akn
  %i.alf = and i64 %i.ale, -8
  %i.alg = add i64 %i.alf, 8                      ; 2 uses
  %scevgep1851 = getelementptr i8, ptr %i.akw, i64 %i.alg
  %scevgep1852 = getelementptr i8, ptr %i.akl, i64 %i.alg
  %bound01853 = icmp ult ptr %i.akw, %scevgep1852
  %bound11854 = icmp ult ptr %i.akl, %scevgep1851
  %found.conflict1855 = and i1 %bound01853, %bound11854
  br i1 %found.conflict1855, label %.lr.ph.i.i.i.i.i.i536.preheader2315, label %vector.ph1858

vector.ph1858:                                    ; preds = %vector.memcheck1850
  %n.vec1860 = and i64 %i.alc, 4611686018427387900 ; 3 uses
  %i.alh = shl i64 %n.vec1860, 3                  ; 2 uses
  %i.ali = getelementptr i8, ptr %i.akw, i64 %i.alh ; 2 uses
  %i.alj = getelementptr i8, ptr %i.akl, i64 %i.alh
  br label %vector.body1861

vector.body1861:                                  ; preds = %vector.body1861, %vector.ph1858
  %index1862 = phi i64 [ 0, %vector.ph1858 ], [ %index.next1875, %vector.body1861 ] ; 2 uses
  %i.alk = shl i64 %index1862, 3                  ; 3 uses
  %i.all = or disjoint i64 %i.alk, 16             ; 2 uses
  %next.gep1863 = getelementptr i8, ptr %i.akw, i64 %i.alk
  %next.gep1864 = getelementptr i8, ptr %i.akw, i64 %i.all
  %next.gep1865 = getelementptr i8, ptr %i.akl, i64 %i.alk
  %next.gep1866 = getelementptr i8, ptr %i.akl, i64 %i.all
  %wide.vec1867 = load <4 x i32>, ptr %next.gep1865, align 4, !tbaa !236, !alias.scope !520
  %wide.vec1870 = load <4 x i32>, ptr %next.gep1866, align 4, !tbaa !236, !alias.scope !520
  store <4 x i32> %wide.vec1867, ptr %next.gep1863, align 4, !tbaa !4, !alias.scope !523, !noalias !520
  store <4 x i32> %wide.vec1870, ptr %next.gep1864, align 4, !tbaa !4, !alias.scope !523, !noalias !520
  %index.next1875 = add nuw i64 %index1862, 4     ; 2 uses
  %i.alm = icmp eq i64 %index.next1875, %n.vec1860
  br i1 %i.alm, label %middle.block1876, label %vector.body1861, !llvm.loop !525

middle.block1876:                                 ; preds = %vector.body1861
  %cmp.n1877 = icmp eq i64 %i.alc, %n.vec1860
  br i1 %cmp.n1877, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i547, label %.lr.ph.i.i.i.i.i.i536.preheader2315

.lr.ph.i.i.i.i.i.i536.preheader2315:              ; preds = %vector.memcheck1850, %.lr.ph.i.i.i.i.i.i536.preheader, %middle.block1876
  %.011.i.i.i.i.i.i537.ph = phi ptr [ %i.akw, %vector.memcheck1850 ], [ %i.akw, %.lr.ph.i.i.i.i.i.i536.preheader ], [ %i.ali, %middle.block1876 ]
  %.0810.i.i.i.i.i.i538.ph = phi ptr [ %i.akl, %vector.memcheck1850 ], [ %i.akl, %.lr.ph.i.i.i.i.i.i536.preheader ], [ %i.alj, %middle.block1876 ]
  br label %.lr.ph.i.i.i.i.i.i536

.lr.ph.i.i.i.i.i.i536:                            ; preds = %.lr.ph.i.i.i.i.i.i536.preheader2315, %.lr.ph.i.i.i.i.i.i536
  %.011.i.i.i.i.i.i537 = phi ptr [ %i.als, %.lr.ph.i.i.i.i.i.i536 ], [ %.011.i.i.i.i.i.i537.ph, %.lr.ph.i.i.i.i.i.i536.preheader2315 ] ; 3 uses
  %.0810.i.i.i.i.i.i538 = phi ptr [ %i.alr, %.lr.ph.i.i.i.i.i.i536 ], [ %.0810.i.i.i.i.i.i538.ph, %.lr.ph.i.i.i.i.i.i536.preheader2315 ] ; 3 uses
  %i.aln = load i32, ptr %.0810.i.i.i.i.i.i538, align 4, !tbaa !236
  store i32 %i.aln, ptr %.011.i.i.i.i.i.i537, align 4, !tbaa !4
  %i.alo = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i537, i64 4
  %i.alp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i538, i64 4
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !236
  store i32 %i.alq, ptr %i.alo, align 4, !tbaa !4
  %i.alr = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i538, i64 8 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i537, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i539 = icmp eq ptr %i.alr, %i.akh
  br i1 %.not.i.i.i.i.i.i539, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i547, label %.lr.ph.i.i.i.i.i.i536, !llvm.loop !526

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i547: ; preds = %.lr.ph.i.i.i.i.i.i536, %middle.block1876, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i532
  %.0.lcssa.i.i.i.i.i.i541 = phi ptr [ %i.akw, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i532 ], [ %i.ali, %middle.block1876 ], [ %i.als, %.lr.ph.i.i.i.i.i.i536 ]
  %i.alt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i541, i64 8
  %.not.i25.i549 = icmp eq ptr %i.akl, null
  br i1 %.not.i25.i549, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit550, label %bb.cj

bb.cj:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i547
  call void @_ZdlPvm(ptr noundef nonnull %i.akl, i64 noundef %i.ako) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit550

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit550: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i547, %bb.cj
  store ptr %i.akw, ptr %i.pe, align 8, !tbaa !267
  store ptr %i.alt, ptr %i.pi, align 16, !tbaa !264
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr %i.akw, i64 %i.aku
  store ptr %i.alu, ptr %i.pk, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i128

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i128: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit550, %bb.cg
  %i.alv = load ptr, ptr %i.qy, align 16, !tbaa !276 ; 6 uses
  %i.alw = load ptr, ptr %i.ra, align 8, !tbaa !280
  %.not.i4.i129 = icmp eq ptr %i.alv, %i.alw
  br i1 %.not.i4.i129, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i128
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, ptr %i.alv, align 8, !tbaa !247
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alv, i64 16
  store ptr %i.alx, ptr %i.qy, align 16, !tbaa !276
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130

bb.cl:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i128
  %i.aly = load ptr, ptr %i.pg, align 8, !tbaa !279 ; 11 uses
  %i.alz = ptrtoint ptr %i.alv to i64             ; 3 uses
  %i.ama = ptrtoint ptr %i.aly to i64             ; 3 uses
  %i.amb = sub i64 %i.alz, %i.ama                 ; 4 uses
  %i.amc = icmp eq i64 %i.amb, 9223372036854775792
  br i1 %i.amc, label %bb.cm, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i513

bb.cm:                                            ; preds = %bb.cl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i513: ; preds = %bb.cl
  %i.amd = ashr exact i64 %i.amb, 4               ; 3 uses
  %.sroa.speculated.i.i514 = call i64 @llvm.umax.i64(i64 %i.amd, i64 1)
  %i.ame = add nsw i64 %.sroa.speculated.i.i514, %i.amd ; 2 uses
  %i.amf = icmp ult i64 %i.ame, %i.amd
  %i.amg = call i64 @llvm.umin.i64(i64 %i.ame, i64 576460752303423487)
  %i.amh = select i1 %i.amf, i64 576460752303423487, i64 %i.amg ; 3 uses
  %.not.i.i515 = icmp ne i64 %i.amh, 0
  call void @llvm.assume(i1 %.not.i.i515)
  %i.ami = shl nuw nsw i64 %i.amh, 4
  %i.amj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ami) #45 ; 11 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 %i.amb
  store <2 x double> <double 5.000000e-01, double 1.000000e+00>, ptr %i.amk, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i516 = icmp eq ptr %i.aly, %i.alv
  br i1 %.not9.i.i.i.i.i.i516, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i528, label %.lr.ph.i.i.i.i.i.i517.preheader

.lr.ph.i.i.i.i.i.i517.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i513
  %i.aml = sub i64 %i.alz, %i.ama
  %i.amm = add i64 %i.aml, -16                    ; 2 uses
  %i.amn = lshr i64 %i.amm, 4
  %i.amo = add nuw nsw i64 %i.amn, 1              ; 2 uses
  %min.iters.check1887 = icmp ult i64 %i.amm, 240
  br i1 %min.iters.check1887, label %.lr.ph.i.i.i.i.i.i517.preheader2313, label %vector.memcheck1880

vector.memcheck1880:                              ; preds = %.lr.ph.i.i.i.i.i.i517.preheader
  %i.amp = add i64 %i.alz, -16
  %i.amq = sub i64 %i.amp, %i.ama
  %i.amr = and i64 %i.amq, -16
  %i.ams = add i64 %i.amr, 16                     ; 2 uses
  %scevgep1881 = getelementptr i8, ptr %i.amj, i64 %i.ams
  %scevgep1882 = getelementptr i8, ptr %i.aly, i64 %i.ams
  %bound01883 = icmp ult ptr %i.amj, %scevgep1882
  %bound11884 = icmp ult ptr %i.aly, %scevgep1881
  %found.conflict1885 = and i1 %bound01883, %bound11884
  br i1 %found.conflict1885, label %.lr.ph.i.i.i.i.i.i517.preheader2313, label %vector.ph1888

vector.ph1888:                                    ; preds = %vector.memcheck1880
  %n.vec1890 = and i64 %i.amo, 2305843009213693950 ; 3 uses
  %i.amt = shl i64 %n.vec1890, 4                  ; 2 uses
  %i.amu = getelementptr i8, ptr %i.amj, i64 %i.amt ; 2 uses
  %i.amv = getelementptr i8, ptr %i.aly, i64 %i.amt
  br label %vector.body1891

vector.body1891:                                  ; preds = %vector.body1891, %vector.ph1888
  %index1892 = phi i64 [ 0, %vector.ph1888 ], [ %index.next1899, %vector.body1891 ] ; 2 uses
  %i.amw = shl i64 %index1892, 4                  ; 3 uses
  %i.amx = or disjoint i64 %i.amw, 16             ; 2 uses
  %next.gep1893 = getelementptr i8, ptr %i.amj, i64 %i.amw
  %next.gep1894 = getelementptr i8, ptr %i.amj, i64 %i.amx
  %next.gep1895 = getelementptr i8, ptr %i.aly, i64 %i.amw
  %next.gep1896 = getelementptr i8, ptr %i.aly, i64 %i.amx
  %wide.load1897 = load <2 x double>, ptr %next.gep1895, align 8, !tbaa !247, !alias.scope !527
  %wide.load1898 = load <2 x double>, ptr %next.gep1896, align 8, !tbaa !247, !alias.scope !527
  store <2 x double> %wide.load1897, ptr %next.gep1893, align 8, !tbaa !247, !alias.scope !530, !noalias !527
  store <2 x double> %wide.load1898, ptr %next.gep1894, align 8, !tbaa !247, !alias.scope !530, !noalias !527
  %index.next1899 = add nuw i64 %index1892, 2     ; 2 uses
  %i.amy = icmp eq i64 %index.next1899, %n.vec1890
  br i1 %i.amy, label %middle.block1900, label %vector.body1891, !llvm.loop !532

middle.block1900:                                 ; preds = %vector.body1891
  %cmp.n1901 = icmp eq i64 %i.amo, %n.vec1890
  br i1 %cmp.n1901, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i528, label %.lr.ph.i.i.i.i.i.i517.preheader2313

.lr.ph.i.i.i.i.i.i517.preheader2313:              ; preds = %vector.memcheck1880, %.lr.ph.i.i.i.i.i.i517.preheader, %middle.block1900
  %.011.i.i.i.i.i.i518.ph = phi ptr [ %i.amj, %vector.memcheck1880 ], [ %i.amj, %.lr.ph.i.i.i.i.i.i517.preheader ], [ %i.amu, %middle.block1900 ]
  %.0810.i.i.i.i.i.i519.ph = phi ptr [ %i.aly, %vector.memcheck1880 ], [ %i.aly, %.lr.ph.i.i.i.i.i.i517.preheader ], [ %i.amv, %middle.block1900 ]
  br label %.lr.ph.i.i.i.i.i.i517

.lr.ph.i.i.i.i.i.i517:                            ; preds = %.lr.ph.i.i.i.i.i.i517.preheader2313, %.lr.ph.i.i.i.i.i.i517
  %.011.i.i.i.i.i.i518 = phi ptr [ %i.ane, %.lr.ph.i.i.i.i.i.i517 ], [ %.011.i.i.i.i.i.i518.ph, %.lr.ph.i.i.i.i.i.i517.preheader2313 ] ; 3 uses
  %.0810.i.i.i.i.i.i519 = phi ptr [ %i.and, %.lr.ph.i.i.i.i.i.i517 ], [ %.0810.i.i.i.i.i.i519.ph, %.lr.ph.i.i.i.i.i.i517.preheader2313 ] ; 3 uses
  %i.amz = load double, ptr %.0810.i.i.i.i.i.i519, align 8, !tbaa !247
  store double %i.amz, ptr %.011.i.i.i.i.i.i518, align 8, !tbaa !247
  %i.ana = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i518, i64 8
  %i.anb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i519, i64 8
  %i.anc = load double, ptr %i.anb, align 8, !tbaa !247
  store double %i.anc, ptr %i.ana, align 8, !tbaa !247
  %i.and = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i519, i64 16 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i518, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i520 = icmp eq ptr %i.and, %i.alv
  br i1 %.not.i.i.i.i.i.i520, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i528, label %.lr.ph.i.i.i.i.i.i517, !llvm.loop !533

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i528: ; preds = %.lr.ph.i.i.i.i.i.i517, %middle.block1900, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i513
  %.0.lcssa.i.i.i.i.i.i522 = phi ptr [ %i.amj, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i513 ], [ %i.amu, %middle.block1900 ], [ %i.ane, %.lr.ph.i.i.i.i.i.i517 ]
  %i.anf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i522, i64 16
  %.not.i25.i530 = icmp eq ptr %i.aly, null
  br i1 %.not.i25.i530, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit531, label %bb.cn

bb.cn:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i528
  call void @_ZdlPvm(ptr noundef nonnull %i.aly, i64 noundef %i.amb) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit531

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit531: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i528, %bb.cn
  store ptr %i.amj, ptr %i.pg, align 8, !tbaa !279
  store ptr %i.anf, ptr %i.qy, align 16, !tbaa !276
  %i.ang = getelementptr inbounds nuw [16 x i8], ptr %i.amj, i64 %i.amh
  store ptr %i.ang, ptr %i.ra, align 8, !tbaa !280
  br label %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130

_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130: ; preds = %bb.ck, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit531
  %i.anh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ank = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.anl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.anq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ans = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 5 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.anv = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.anz = getelementptr inbounds nuw i8, ptr %14, i64 24
  br label %bb.cw

bb.co:                                            ; preds = %.preheader867.preheader
  store ptr %i.abe, ptr %i.fm, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit:     ; preds = %.preheader867.preheader, %bb.co
  %i.aoa = phi ptr [ %i.abf, %.preheader867.preheader ], [ %i.abe, %bb.co ] ; 7 uses
  %i.aob = load ptr, ptr %3, align 16, !tbaa !279 ; 3 uses
  %i.aoc = load ptr, ptr %i.hc, align 8, !tbaa !276 ; 2 uses
  %.not.i.i132 = icmp eq ptr %i.aoc, %i.aob
  br i1 %.not.i.i132, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit
  store ptr %i.aob, ptr %i.hc, align 8, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit, %bb.cp
  %i.aod = phi ptr [ %i.aoc, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit ], [ %i.aob, %bb.cp ] ; 2 uses
  %i.aoe = load ptr, ptr %i.iq, align 8, !tbaa !267 ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.aog = load ptr, ptr %i.aof, align 16, !tbaa !264
  %.not.i.i131.1 = icmp eq ptr %i.aog, %i.aoe
  br i1 %.not.i.i131.1, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit
  store ptr %i.aoe, ptr %i.aof, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1:   ; preds = %bb.cq, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit
  %i.aoh = load ptr, ptr %i.is, align 8, !tbaa !279 ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.aoj = load ptr, ptr %i.aoi, align 16, !tbaa !276
  %.not.i.i132.1 = icmp eq ptr %i.aoj, %i.aoh
  br i1 %.not.i.i132.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1
  store ptr %i.aoh, ptr %i.aoi, align 16, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1: ; preds = %bb.cr, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1
  %i.aok = load ptr, ptr %i.ly, align 16, !tbaa !267 ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !264
  %.not.i.i131.1988 = icmp eq ptr %i.aom, %i.aok
  br i1 %.not.i.i131.1988, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1990, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1
  store ptr %i.aok, ptr %i.aol, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1990

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1990: ; preds = %bb.cs, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1
  %i.aon = load ptr, ptr %i.lz, align 16, !tbaa !279 ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !276
  %.not.i.i132.1989 = icmp eq ptr %i.aop, %i.aon
  br i1 %.not.i.i132.1989, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1991, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1990
  store ptr %i.aon, ptr %i.aoo, align 8, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1991

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1991: ; preds = %bb.ct, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1990
  %i.aoq = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !267 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.aot = load ptr, ptr %i.aos, align 16, !tbaa !264
  %.not.i.i131.1.1 = icmp eq ptr %i.aot, %i.aor
  br i1 %.not.i.i131.1.1, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1.1, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1991
  store ptr %i.aor, ptr %i.aos, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1.1

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1.1: ; preds = %bb.cu, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1991
  %i.aou = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !279 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.aox = load ptr, ptr %i.aow, align 16, !tbaa !276
  %.not.i.i132.1.1 = icmp eq ptr %i.aox, %i.aov
  br i1 %.not.i.i132.1.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1.1, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1.1
  store ptr %i.aov, ptr %i.aow, align 16, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1.1

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit.1.1: ; preds = %bb.cv, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit.1.1
  %i.aoy = load ptr, ptr %i.fo, align 16, !tbaa !268
  %.not.i.i115 = icmp eq ptr %i.aoa, %i.aoy
  br i1 %.not.i.i115, label %bb.bj, label %bb.bi

bb.cw:                                            ; preds = %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130, %_ZN9CenteringILi2EED2Ev.exit187
  %i.aoz = phi i1 [ true, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130 ], [ false, %_ZN9CenteringILi2EED2Ev.exit187 ]
  %indvars.iv992.sroa.phi = phi ptr [ %3, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130 ], [ %indvars.iv992.sroa.gep2353, %_ZN9CenteringILi2EED2Ev.exit187 ] ; 3 uses
  %indvars.iv992.sroa.phi2355 = phi ptr [ %2, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130 ], [ %indvars.iv992.sroa.gep2357, %_ZN9CenteringILi2EED2Ev.exit187 ] ; 3 uses
  %indvars.iv992 = phi i64 [ 0, %_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_.exit130 ], [ 1, %_ZN9CenteringILi2EED2Ev.exit187 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #47
  %i.apa = trunc nuw nsw i64 %indvars.iv992 to i32 ; 3 uses
  call void @_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef 2, i32 noundef %i.apa, ptr noundef nonnull align 8 dereferenceable(24) %indvars.iv992.sroa.phi2355, ptr noundef nonnull align 8 dereferenceable(24) %indvars.iv992.sroa.phi)
  %i.apb = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 16
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !260
  %i.ape = getelementptr inbounds nuw [8 x i8], ptr %i.apd, i64 %indvars.iv992
end_hunk_2
begin_hunk_3_@_ZN18CanonicalCenteringILi2EEC2Ev:bb.a
  %i.auu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i172, i64 8
  %i.auv = load double, ptr %i.auu, align 8, !tbaa !247
  store double %i.auv, ptr %i.aut, align 8, !tbaa !247
  %i.auw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8.i172, i64 16 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7.i171, i64 16 ; 2 uses
  %.not.i.i.i.i.i9.i173 = icmp eq ptr %i.auw, %i.atw
  br i1 %.not.i.i.i.i.i9.i173, label %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit175, label %.lr.ph.i.i.i.i.i6.i170, !llvm.loop !568

_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit175: ; preds = %.lr.ph.i.i.i.i.i6.i170, %middle.block1926, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i168.thread
  %.0.lcssa.i.i.i.i.i10.i174 = phi ptr [ null, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i.i168.thread ], [ %i.aun, %middle.block1926 ], [ %i.aux, %.lr.ph.i.i.i.i.i6.i170 ]
  store ptr %.0.lcssa.i.i.i.i.i10.i174, ptr %i.anu, align 8, !tbaa !276
  %i.auy = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 16
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !260
  %i.avb = getelementptr inbounds nuw [8 x i8], ptr %i.ava, i64 %indvars.iv992
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !262 ; 3 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 168
  %i.ave = load i64, ptr %11, align 8
  store i64 %i.ave, ptr %i.avd, align 8
  %i.avf = getelementptr inbounds nuw i8, ptr %i.avc, i64 176
  %i.avg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.avf, ptr noundef nonnull align 8 dereferenceable(24) %i.anq) ; 0 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avc, i64 200
  %i.avi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.avh, ptr noundef nonnull align 8 dereferenceable(24) %i.ant) ; 0 uses
  %i.avj = load ptr, ptr %i.ant, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i176 = icmp eq ptr %i.avj, null
  br i1 %.not.i.i.i.i176, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i177, label %bb.dh

bb.dh:                                            ; preds = %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit175
  %i.avk = load ptr, ptr %i.anv, align 8, !tbaa !280
  %i.avl = ptrtoint ptr %i.avk to i64
  %i.avm = ptrtoint ptr %i.avj to i64
  %i.avn = sub i64 %i.avl, %i.avm
  call void @_ZdlPvm(ptr noundef nonnull %i.avj, i64 noundef %i.avn) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i177

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i177: ; preds = %bb.dh, %_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE.exit175
  %i.avo = load ptr, ptr %i.anq, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i178 = icmp eq ptr %i.avo, null
  br i1 %.not.i.i.i1.i178, label %_ZN9CenteringILi2EED2Ev.exit179, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i177
  %i.avp = load ptr, ptr %i.ans, align 8, !tbaa !268
  %i.avq = ptrtoint ptr %i.avp to i64
  %i.avr = ptrtoint ptr %i.avo to i64
  %i.avs = sub i64 %i.avq, %i.avr
  call void @_ZdlPvm(ptr noundef nonnull %i.avo, i64 noundef %i.avs) #48
  br label %_ZN9CenteringILi2EED2Ev.exit179

_ZN9CenteringILi2EED2Ev.exit179:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i177, %bb.di
  %i.avt = load ptr, ptr %13, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i180 = icmp eq ptr %i.avt, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit181, label %bb.dj

bb.dj:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit179
  %i.avu = load ptr, ptr %i.ann, align 8, !tbaa !280
  %i.avv = ptrtoint ptr %i.avu to i64
  %i.avw = ptrtoint ptr %i.avt to i64
  %i.avx = sub i64 %i.avv, %i.avw
  call void @_ZdlPvm(ptr noundef nonnull %i.avt, i64 noundef %i.avx) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit181

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit181: ; preds = %_ZN9CenteringILi2EED2Ev.exit179, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #47
  %i.avy = load ptr, ptr %12, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i182 = icmp eq ptr %i.avy, null
  br i1 %.not.i.i.i182, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit183, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit181
  %i.avz = load ptr, ptr %i.anl, align 8, !tbaa !268
  %i.awa = ptrtoint ptr %i.avz to i64
  %i.awb = ptrtoint ptr %i.avy to i64
  %i.awc = sub i64 %i.awa, %i.awb
  call void @_ZdlPvm(ptr noundef nonnull %i.avy, i64 noundef %i.awc) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit183

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit183:      ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit181, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #47
  call void @_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %14, i32 noundef 2, i32 noundef %i.apa, ptr noundef nonnull align 8 dereferenceable(24) %i.apw, ptr noundef nonnull align 8 dereferenceable(24) %i.ari)
  %i.awd = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 16
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !260
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.awf, i64 %indvars.iv992
  %i.awh = load ptr, ptr %i.awg, align 8, !tbaa !262 ; 3 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 112
  %i.awj = load i64, ptr %14, align 8
  store i64 %i.awj, ptr %i.awi, align 8
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awh, i64 120
  %i.awl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.awk, ptr noundef nonnull align 8 dereferenceable(24) %i.anw) ; 0 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awh, i64 144
  %i.awn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.awm, ptr noundef nonnull align 8 dereferenceable(24) %i.anx) ; 0 uses
  %i.awo = load ptr, ptr %i.anx, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i184 = icmp eq ptr %i.awo, null
  br i1 %.not.i.i.i.i184, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i185, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit183
  %i.awp = load ptr, ptr %i.any, align 8, !tbaa !280
  %i.awq = ptrtoint ptr %i.awp to i64
  %i.awr = ptrtoint ptr %i.awo to i64
  %i.aws = sub i64 %i.awq, %i.awr
  call void @_ZdlPvm(ptr noundef nonnull %i.awo, i64 noundef %i.aws) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i185

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i185: ; preds = %bb.dl, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit183
  %i.awt = load ptr, ptr %i.anw, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i186 = icmp eq ptr %i.awt, null
  br i1 %.not.i.i.i1.i186, label %_ZN9CenteringILi2EED2Ev.exit187, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i185
  %i.awu = load ptr, ptr %i.anz, align 8, !tbaa !268
  %i.awv = ptrtoint ptr %i.awu to i64
  %i.aww = ptrtoint ptr %i.awt to i64
  %i.awx = sub i64 %i.awv, %i.aww
  call void @_ZdlPvm(ptr noundef nonnull %i.awt, i64 noundef %i.awx) #48
  br label %_ZN9CenteringILi2EED2Ev.exit187

_ZN9CenteringILi2EED2Ev.exit187:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i185, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #47
  br i1 %i.aoz, label %bb.cw, label %.preheader.preheader, !llvm.loop !569

.preheader.preheader:                             ; preds = %_ZN9CenteringILi2EED2Ev.exit187
  %i.awy = load ptr, ptr %2, align 16, !tbaa !267 ; 2 uses
  %i.awz = load ptr, ptr %i.fm, align 8, !tbaa !264
  %.not.i.i216 = icmp eq ptr %i.awz, %i.awy
  br i1 %.not.i.i216, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217, label %bb.ff

bb.dn:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1.1
  %i.axa = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.axb = load ptr, ptr %i.axa, align 8, !tbaa !280
  %i.axc = ptrtoint ptr %i.axb to i64
  %i.axd = ptrtoint ptr %i.bpc to i64
  %i.axe = sub i64 %i.axc, %i.axd
  call void @_ZdlPvm(ptr noundef nonnull %i.bpc, i64 noundef %i.axe) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i189

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i189: ; preds = %bb.dn, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1.1
  %i.axf = load ptr, ptr %i.boy, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i190 = icmp eq ptr %i.axf, null
  br i1 %.not.i.i.i1.i190, label %_ZN9CenteringILi2EED2Ev.exit191, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i189
  %i.axg = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !268
  %i.axi = ptrtoint ptr %i.axh to i64
  %i.axj = ptrtoint ptr %i.axf to i64
  %i.axk = sub i64 %i.axi, %i.axj
  call void @_ZdlPvm(ptr noundef nonnull %i.axf, i64 noundef %i.axk) #48
  br label %_ZN9CenteringILi2EED2Ev.exit191

_ZN9CenteringILi2EED2Ev.exit191:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i189, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #47
  %i.axl = load ptr, ptr %i.by, align 8, !tbaa !264 ; 7 uses
  %i.axm = load ptr, ptr %i.ca, align 8, !tbaa !268
  %.not.i.i192 = icmp eq ptr %i.axl, %i.axm
  br i1 %.not.i.i192, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit191
  store i32 0, ptr %i.axl, align 4, !tbaa !4
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axl, i64 4
  store i32 0, ptr %i.axn, align 4, !tbaa !4
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axl, i64 8
  store ptr %i.axo, ptr %i.by, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i193

bb.dq:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit191
  %i.axp = load ptr, ptr %i.a, align 8, !tbaa !267 ; 11 uses
  %i.axq = ptrtoint ptr %i.axl to i64             ; 3 uses
  %i.axr = ptrtoint ptr %i.axp to i64             ; 3 uses
  %i.axs = sub i64 %i.axq, %i.axr                 ; 4 uses
  %i.axt = icmp eq i64 %i.axs, 9223372036854775800
  br i1 %i.axt, label %bb.dr, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i570

bb.dr:                                            ; preds = %bb.dq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i570: ; preds = %bb.dq
  %i.axu = ashr exact i64 %i.axs, 3               ; 3 uses
  %.sroa.speculated.i.i571 = call i64 @llvm.umax.i64(i64 %i.axu, i64 1)
  %i.axv = add nsw i64 %.sroa.speculated.i.i571, %i.axu ; 2 uses
  %i.axw = icmp ult i64 %i.axv, %i.axu
  %i.axx = call i64 @llvm.umin.i64(i64 %i.axv, i64 1152921504606846975)
  %i.axy = select i1 %i.axw, i64 1152921504606846975, i64 %i.axx ; 3 uses
  %.not.i.i572 = icmp ne i64 %i.axy, 0
  call void @llvm.assume(i1 %.not.i.i572)
  %i.axz = shl nuw nsw i64 %i.axy, 3
  %i.aya = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.axz) #45 ; 11 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 %i.axs ; 2 uses
  store i32 0, ptr %i.ayb, align 4, !tbaa !4
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 4
  store i32 0, ptr %i.ayc, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i573 = icmp eq ptr %i.axp, %i.axl
  br i1 %.not9.i.i.i.i.i.i573, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i585, label %.lr.ph.i.i.i.i.i.i574.preheader

.lr.ph.i.i.i.i.i.i574.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i570
  %i.ayd = sub i64 %i.axq, %i.axr
  %i.aye = add i64 %i.ayd, -8                     ; 2 uses
  %i.ayf = lshr i64 %i.aye, 3
  %i.ayg = add nuw nsw i64 %i.ayf, 1              ; 2 uses
  %min.iters.check2027 = icmp ult i64 %i.aye, 120
  br i1 %min.iters.check2027, label %.lr.ph.i.i.i.i.i.i574.preheader2307, label %vector.memcheck2020

vector.memcheck2020:                              ; preds = %.lr.ph.i.i.i.i.i.i574.preheader
  %i.ayh = add i64 %i.axq, -8
  %i.ayi = sub i64 %i.ayh, %i.axr
  %i.ayj = and i64 %i.ayi, -8
  %i.ayk = add i64 %i.ayj, 8                      ; 2 uses
  %scevgep2021 = getelementptr i8, ptr %i.aya, i64 %i.ayk
  %scevgep2022 = getelementptr i8, ptr %i.axp, i64 %i.ayk
  %bound02023 = icmp ult ptr %i.aya, %scevgep2022
  %bound12024 = icmp ult ptr %i.axp, %scevgep2021
  %found.conflict2025 = and i1 %bound02023, %bound12024
  br i1 %found.conflict2025, label %.lr.ph.i.i.i.i.i.i574.preheader2307, label %vector.ph2028

vector.ph2028:                                    ; preds = %vector.memcheck2020
  %n.vec2030 = and i64 %i.ayg, 4611686018427387900 ; 3 uses
  %i.ayl = shl i64 %n.vec2030, 3                  ; 2 uses
  %i.aym = getelementptr i8, ptr %i.aya, i64 %i.ayl ; 2 uses
  %i.ayn = getelementptr i8, ptr %i.axp, i64 %i.ayl
  br label %vector.body2031

vector.body2031:                                  ; preds = %vector.body2031, %vector.ph2028
  %index2032 = phi i64 [ 0, %vector.ph2028 ], [ %index.next2045, %vector.body2031 ] ; 2 uses
  %i.ayo = shl i64 %index2032, 3                  ; 3 uses
  %i.ayp = or disjoint i64 %i.ayo, 16             ; 2 uses
  %next.gep2033 = getelementptr i8, ptr %i.aya, i64 %i.ayo
  %next.gep2034 = getelementptr i8, ptr %i.aya, i64 %i.ayp
  %next.gep2035 = getelementptr i8, ptr %i.axp, i64 %i.ayo
  %next.gep2036 = getelementptr i8, ptr %i.axp, i64 %i.ayp
  %wide.vec2037 = load <4 x i32>, ptr %next.gep2035, align 4, !tbaa !236, !alias.scope !570
  %wide.vec2040 = load <4 x i32>, ptr %next.gep2036, align 4, !tbaa !236, !alias.scope !570
  store <4 x i32> %wide.vec2037, ptr %next.gep2033, align 4, !tbaa !4, !alias.scope !573, !noalias !570
  store <4 x i32> %wide.vec2040, ptr %next.gep2034, align 4, !tbaa !4, !alias.scope !573, !noalias !570
  %index.next2045 = add nuw i64 %index2032, 4     ; 2 uses
  %i.ayq = icmp eq i64 %index.next2045, %n.vec2030
  br i1 %i.ayq, label %middle.block2046, label %vector.body2031, !llvm.loop !575

middle.block2046:                                 ; preds = %vector.body2031
  %cmp.n2047 = icmp eq i64 %i.ayg, %n.vec2030
  br i1 %cmp.n2047, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i585, label %.lr.ph.i.i.i.i.i.i574.preheader2307

.lr.ph.i.i.i.i.i.i574.preheader2307:              ; preds = %vector.memcheck2020, %.lr.ph.i.i.i.i.i.i574.preheader, %middle.block2046
  %.011.i.i.i.i.i.i575.ph = phi ptr [ %i.aya, %vector.memcheck2020 ], [ %i.aya, %.lr.ph.i.i.i.i.i.i574.preheader ], [ %i.aym, %middle.block2046 ]
  %.0810.i.i.i.i.i.i576.ph = phi ptr [ %i.axp, %vector.memcheck2020 ], [ %i.axp, %.lr.ph.i.i.i.i.i.i574.preheader ], [ %i.ayn, %middle.block2046 ]
  br label %.lr.ph.i.i.i.i.i.i574

.lr.ph.i.i.i.i.i.i574:                            ; preds = %.lr.ph.i.i.i.i.i.i574.preheader2307, %.lr.ph.i.i.i.i.i.i574
  %.011.i.i.i.i.i.i575 = phi ptr [ %i.ayw, %.lr.ph.i.i.i.i.i.i574 ], [ %.011.i.i.i.i.i.i575.ph, %.lr.ph.i.i.i.i.i.i574.preheader2307 ] ; 3 uses
  %.0810.i.i.i.i.i.i576 = phi ptr [ %i.ayv, %.lr.ph.i.i.i.i.i.i574 ], [ %.0810.i.i.i.i.i.i576.ph, %.lr.ph.i.i.i.i.i.i574.preheader2307 ] ; 3 uses
  %i.ayr = load i32, ptr %.0810.i.i.i.i.i.i576, align 4, !tbaa !236
  store i32 %i.ayr, ptr %.011.i.i.i.i.i.i575, align 4, !tbaa !4
  %i.ays = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i575, i64 4
  %i.ayt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i576, i64 4
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !236
  store i32 %i.ayu, ptr %i.ays, align 4, !tbaa !4
  %i.ayv = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i576, i64 8 ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i575, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i577 = icmp eq ptr %i.ayv, %i.axl
  br i1 %.not.i.i.i.i.i.i577, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i585, label %.lr.ph.i.i.i.i.i.i574, !llvm.loop !576

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i585: ; preds = %.lr.ph.i.i.i.i.i.i574, %middle.block2046, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i570
  %.0.lcssa.i.i.i.i.i.i579 = phi ptr [ %i.aya, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i570 ], [ %i.aym, %middle.block2046 ], [ %i.ayw, %.lr.ph.i.i.i.i.i.i574 ]
  %i.ayx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i579, i64 8
  %.not.i25.i587 = icmp eq ptr %i.axp, null
  br i1 %.not.i25.i587, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit588, label %bb.ds

bb.ds:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i585
  call void @_ZdlPvm(ptr noundef nonnull %i.axp, i64 noundef %i.axs) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit588

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit588: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i585, %bb.ds
  store ptr %i.aya, ptr %i.a, align 8, !tbaa !267
  store ptr %i.ayx, ptr %i.by, align 8, !tbaa !264
  %i.ayy = getelementptr inbounds nuw [8 x i8], ptr %i.aya, i64 %i.axy
  store ptr %i.ayy, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i193

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i193: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit588, %bb.dp
  %i.ayz = load ptr, ptr %i.do, align 8, !tbaa !276 ; 6 uses
  %i.aza = load ptr, ptr %i.dq, align 8, !tbaa !280
  %.not.i3.i194 = icmp eq ptr %i.ayz, %i.aza
  br i1 %.not.i3.i194, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i193
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayz, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ayz, i8 0, i64 16, i1 false)
  store ptr %i.azb, ptr %i.do, align 8, !tbaa !276
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit195

bb.du:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i193
  %i.azc = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 11 uses
  %i.azd = ptrtoint ptr %i.ayz to i64             ; 3 uses
  %i.aze = ptrtoint ptr %i.azc to i64             ; 3 uses
  %i.azf = sub i64 %i.azd, %i.aze                 ; 4 uses
  %i.azg = icmp eq i64 %i.azf, 9223372036854775792
  br i1 %i.azg, label %bb.dv, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i551

bb.dv:                                            ; preds = %bb.du
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i551: ; preds = %bb.du
  %i.azh = ashr exact i64 %i.azf, 4               ; 3 uses
  %.sroa.speculated.i.i552 = call i64 @llvm.umax.i64(i64 %i.azh, i64 1)
  %i.azi = add nsw i64 %.sroa.speculated.i.i552, %i.azh ; 2 uses
  %i.azj = icmp ult i64 %i.azi, %i.azh
  %i.azk = call i64 @llvm.umin.i64(i64 %i.azi, i64 576460752303423487)
  %i.azl = select i1 %i.azj, i64 576460752303423487, i64 %i.azk ; 3 uses
  %.not.i.i553 = icmp ne i64 %i.azl, 0
  call void @llvm.assume(i1 %.not.i.i553)
  %i.azm = shl nuw nsw i64 %i.azl, 4
  %i.azn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.azm) #45 ; 11 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 %i.azf
  %.not9.i.i.i.i.i.i554 = icmp eq ptr %i.azc, %i.ayz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.azo, i8 0, i64 16, i1 false)
  br i1 %.not9.i.i.i.i.i.i554, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i566, label %.lr.ph.i.i.i.i.i.i555.preheader

.lr.ph.i.i.i.i.i.i555.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i551
  %i.azp = sub i64 %i.azd, %i.aze
  %i.azq = add i64 %i.azp, -16                    ; 2 uses
  %i.azr = lshr i64 %i.azq, 4
  %i.azs = add nuw nsw i64 %i.azr, 1              ; 2 uses
  %min.iters.check2057 = icmp ult i64 %i.azq, 240
  br i1 %min.iters.check2057, label %.lr.ph.i.i.i.i.i.i555.preheader2305, label %vector.memcheck2050

vector.memcheck2050:                              ; preds = %.lr.ph.i.i.i.i.i.i555.preheader
  %i.azt = add i64 %i.azd, -16
  %i.azu = sub i64 %i.azt, %i.aze
  %i.azv = and i64 %i.azu, -16
  %i.azw = add i64 %i.azv, 16                     ; 2 uses
  %scevgep2051 = getelementptr i8, ptr %i.azn, i64 %i.azw
  %scevgep2052 = getelementptr i8, ptr %i.azc, i64 %i.azw
  %bound02053 = icmp ult ptr %i.azn, %scevgep2052
  %bound12054 = icmp ult ptr %i.azc, %scevgep2051
  %found.conflict2055 = and i1 %bound02053, %bound12054
  br i1 %found.conflict2055, label %.lr.ph.i.i.i.i.i.i555.preheader2305, label %vector.ph2058

vector.ph2058:                                    ; preds = %vector.memcheck2050
  %n.vec2060 = and i64 %i.azs, 2305843009213693950 ; 3 uses
  %i.azx = shl i64 %n.vec2060, 4                  ; 2 uses
  %i.azy = getelementptr i8, ptr %i.azn, i64 %i.azx ; 2 uses
  %i.azz = getelementptr i8, ptr %i.azc, i64 %i.azx
  br label %vector.body2061

vector.body2061:                                  ; preds = %vector.body2061, %vector.ph2058
  %index2062 = phi i64 [ 0, %vector.ph2058 ], [ %index.next2069, %vector.body2061 ] ; 2 uses
  %i.baa = shl i64 %index2062, 4                  ; 3 uses
  %i.bab = or disjoint i64 %i.baa, 16             ; 2 uses
  %next.gep2063 = getelementptr i8, ptr %i.azn, i64 %i.baa
  %next.gep2064 = getelementptr i8, ptr %i.azn, i64 %i.bab
  %next.gep2065 = getelementptr i8, ptr %i.azc, i64 %i.baa
  %next.gep2066 = getelementptr i8, ptr %i.azc, i64 %i.bab
  %wide.load2067 = load <2 x double>, ptr %next.gep2065, align 8, !tbaa !247, !alias.scope !577
  %wide.load2068 = load <2 x double>, ptr %next.gep2066, align 8, !tbaa !247, !alias.scope !577
  store <2 x double> %wide.load2067, ptr %next.gep2063, align 8, !tbaa !247, !alias.scope !580, !noalias !577
  store <2 x double> %wide.load2068, ptr %next.gep2064, align 8, !tbaa !247, !alias.scope !580, !noalias !577
  %index.next2069 = add nuw i64 %index2062, 2     ; 2 uses
  %i.bac = icmp eq i64 %index.next2069, %n.vec2060
  br i1 %i.bac, label %middle.block2070, label %vector.body2061, !llvm.loop !582

middle.block2070:                                 ; preds = %vector.body2061
  %cmp.n2071 = icmp eq i64 %i.azs, %n.vec2060
  br i1 %cmp.n2071, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i566, label %.lr.ph.i.i.i.i.i.i555.preheader2305

.lr.ph.i.i.i.i.i.i555.preheader2305:              ; preds = %vector.memcheck2050, %.lr.ph.i.i.i.i.i.i555.preheader, %middle.block2070
  %.011.i.i.i.i.i.i556.ph = phi ptr [ %i.azn, %vector.memcheck2050 ], [ %i.azn, %.lr.ph.i.i.i.i.i.i555.preheader ], [ %i.azy, %middle.block2070 ]
  %.0810.i.i.i.i.i.i557.ph = phi ptr [ %i.azc, %vector.memcheck2050 ], [ %i.azc, %.lr.ph.i.i.i.i.i.i555.preheader ], [ %i.azz, %middle.block2070 ]
  br label %.lr.ph.i.i.i.i.i.i555

.lr.ph.i.i.i.i.i.i555:                            ; preds = %.lr.ph.i.i.i.i.i.i555.preheader2305, %.lr.ph.i.i.i.i.i.i555
  %.011.i.i.i.i.i.i556 = phi ptr [ %i.bai, %.lr.ph.i.i.i.i.i.i555 ], [ %.011.i.i.i.i.i.i556.ph, %.lr.ph.i.i.i.i.i.i555.preheader2305 ] ; 3 uses
  %.0810.i.i.i.i.i.i557 = phi ptr [ %i.bah, %.lr.ph.i.i.i.i.i.i555 ], [ %.0810.i.i.i.i.i.i557.ph, %.lr.ph.i.i.i.i.i.i555.preheader2305 ] ; 3 uses
  %i.bad = load double, ptr %.0810.i.i.i.i.i.i557, align 8, !tbaa !247
  store double %i.bad, ptr %.011.i.i.i.i.i.i556, align 8, !tbaa !247
  %i.bae = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i556, i64 8
  %i.baf = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i557, i64 8
  %i.bag = load double, ptr %i.baf, align 8, !tbaa !247
  store double %i.bag, ptr %i.bae, align 8, !tbaa !247
  %i.bah = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i557, i64 16 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i556, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i558 = icmp eq ptr %i.bah, %i.ayz
  br i1 %.not.i.i.i.i.i.i558, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i566, label %.lr.ph.i.i.i.i.i.i555, !llvm.loop !583

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i566: ; preds = %.lr.ph.i.i.i.i.i.i555, %middle.block2070, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i551
  %.0.lcssa.i.i.i.i.i.i560 = phi ptr [ %i.azn, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i551 ], [ %i.azy, %middle.block2070 ], [ %i.bai, %.lr.ph.i.i.i.i.i.i555 ]
  %i.baj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i560, i64 16
  %.not.i25.i568 = icmp eq ptr %i.azc, null
  br i1 %.not.i25.i568, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit569, label %bb.dw

bb.dw:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i566
  call void @_ZdlPvm(ptr noundef nonnull %i.azc, i64 noundef %i.azf) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit569

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit569: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i566, %bb.dw
  store ptr %i.azn, ptr %i.bj, align 8, !tbaa !279
  store ptr %i.baj, ptr %i.do, align 8, !tbaa !276
  %i.bak = getelementptr inbounds nuw [16 x i8], ptr %i.azn, i64 %i.azl
  store ptr %i.bak, ptr %i.dq, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit195

_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit195: ; preds = %bb.dt, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit569
  %i.bal = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !260
  %i.ban = load ptr, ptr %i.bam, align 8, !tbaa !262 ; 3 uses
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 168
  %i.bap = load i64, ptr %1, align 8
  store i64 %i.bap, ptr %i.bao, align 8
  %i.baq = getelementptr inbounds nuw i8, ptr %i.ban, i64 176
  %i.bar = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.baq, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %i.ban, i64 200
  %i.bat = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bas, ptr noundef nonnull align 8 dereferenceable(24) %i.bj) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #47
  store i32 0, ptr %16, align 8, !tbaa !361
  %i.bau = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i32 1, ptr %i.bau, align 4, !tbaa !462
  %i.bav = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bav, i8 0, i64 48, i1 false)
  %i.baw = load i64, ptr %16, align 8
  store i64 %i.baw, ptr %1, align 8
  %i.bax = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bav) ; 0 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.baz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bay) ; 0 uses
  %i.bba = load ptr, ptr %i.bay, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i196 = icmp eq ptr %i.bba, null
  br i1 %.not.i.i.i.i196, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i197, label %bb.dx

bb.dx:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit195
  %i.bbb = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !280
  %i.bbd = ptrtoint ptr %i.bbc to i64
  %i.bbe = ptrtoint ptr %i.bba to i64
  %i.bbf = sub i64 %i.bbd, %i.bbe
  call void @_ZdlPvm(ptr noundef nonnull %i.bba, i64 noundef %i.bbf) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i197

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i197: ; preds = %bb.dx, %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit195
  %i.bbg = load ptr, ptr %i.bav, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i198 = icmp eq ptr %i.bbg, null
  br i1 %.not.i.i.i1.i198, label %_ZN9CenteringILi2EED2Ev.exit199, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i197
  %i.bbh = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bbi = load ptr, ptr %i.bbh, align 8, !tbaa !268
  %i.bbj = ptrtoint ptr %i.bbi to i64
  %i.bbk = ptrtoint ptr %i.bbg to i64
  %i.bbl = sub i64 %i.bbj, %i.bbk
  call void @_ZdlPvm(ptr noundef nonnull %i.bbg, i64 noundef %i.bbl) #48
  br label %_ZN9CenteringILi2EED2Ev.exit199

_ZN9CenteringILi2EED2Ev.exit199:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i197, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #47
  %i.bbm = load ptr, ptr %i.by, align 8, !tbaa !264 ; 7 uses
  %i.bbn = load ptr, ptr %i.ca, align 8, !tbaa !268 ; 2 uses
  %.not.i.i200 = icmp eq ptr %i.bbm, %i.bbn
  br i1 %.not.i.i200, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit199
  store i32 0, ptr %i.bbm, align 4, !tbaa !4
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbm, i64 4
  store i32 0, ptr %i.bbo, align 4, !tbaa !4
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbm, i64 8 ; 2 uses
  store ptr %i.bbp, ptr %i.by, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i201

bb.ea:                                            ; preds = %_ZN9CenteringILi2EED2Ev.exit199
  %i.bbq = load ptr, ptr %i.a, align 8, !tbaa !267 ; 11 uses
  %i.bbr = ptrtoint ptr %i.bbm to i64             ; 3 uses
  %i.bbs = ptrtoint ptr %i.bbq to i64             ; 3 uses
  %i.bbt = sub i64 %i.bbr, %i.bbs                 ; 4 uses
  %i.bbu = icmp eq i64 %i.bbt, 9223372036854775800
  br i1 %i.bbu, label %bb.eb, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i608

bb.eb:                                            ; preds = %bb.ea
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i608: ; preds = %bb.ea
  %i.bbv = ashr exact i64 %i.bbt, 3               ; 3 uses
  %.sroa.speculated.i.i609 = call i64 @llvm.umax.i64(i64 %i.bbv, i64 1)
  %i.bbw = add nsw i64 %.sroa.speculated.i.i609, %i.bbv ; 2 uses
  %i.bbx = icmp ult i64 %i.bbw, %i.bbv
  %i.bby = call i64 @llvm.umin.i64(i64 %i.bbw, i64 1152921504606846975)
  %i.bbz = select i1 %i.bbx, i64 1152921504606846975, i64 %i.bby ; 3 uses
  %.not.i.i610 = icmp ne i64 %i.bbz, 0
  call void @llvm.assume(i1 %.not.i.i610)
  %i.bca = shl nuw nsw i64 %i.bbz, 3
  %i.bcb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bca) #45 ; 11 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 %i.bbt ; 2 uses
  store i32 0, ptr %i.bcc, align 4, !tbaa !4
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 4
  store i32 0, ptr %i.bcd, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i611 = icmp eq ptr %i.bbq, %i.bbm
  br i1 %.not9.i.i.i.i.i.i611, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i623, label %.lr.ph.i.i.i.i.i.i612.preheader

.lr.ph.i.i.i.i.i.i612.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i608
  %i.bce = sub i64 %i.bbr, %i.bbs
  %i.bcf = add i64 %i.bce, -8                     ; 2 uses
  %i.bcg = lshr i64 %i.bcf, 3
  %i.bch = add nuw nsw i64 %i.bcg, 1              ; 2 uses
  %min.iters.check2081 = icmp ult i64 %i.bcf, 120
  br i1 %min.iters.check2081, label %.lr.ph.i.i.i.i.i.i612.preheader2303, label %vector.memcheck2074

vector.memcheck2074:                              ; preds = %.lr.ph.i.i.i.i.i.i612.preheader
  %i.bci = add i64 %i.bbr, -8
  %i.bcj = sub i64 %i.bci, %i.bbs
  %i.bck = and i64 %i.bcj, -8
  %i.bcl = add i64 %i.bck, 8                      ; 2 uses
  %scevgep2075 = getelementptr i8, ptr %i.bcb, i64 %i.bcl
  %scevgep2076 = getelementptr i8, ptr %i.bbq, i64 %i.bcl
  %bound02077 = icmp ult ptr %i.bcb, %scevgep2076
  %bound12078 = icmp ult ptr %i.bbq, %scevgep2075
  %found.conflict2079 = and i1 %bound02077, %bound12078
  br i1 %found.conflict2079, label %.lr.ph.i.i.i.i.i.i612.preheader2303, label %vector.ph2082

vector.ph2082:                                    ; preds = %vector.memcheck2074
  %n.vec2084 = and i64 %i.bch, 4611686018427387900 ; 3 uses
  %i.bcm = shl i64 %n.vec2084, 3                  ; 2 uses
  %i.bcn = getelementptr i8, ptr %i.bcb, i64 %i.bcm ; 2 uses
  %i.bco = getelementptr i8, ptr %i.bbq, i64 %i.bcm
  br label %vector.body2085

vector.body2085:                                  ; preds = %vector.body2085, %vector.ph2082
  %index2086 = phi i64 [ 0, %vector.ph2082 ], [ %index.next2099, %vector.body2085 ] ; 2 uses
  %i.bcp = shl i64 %index2086, 3                  ; 3 uses
  %i.bcq = or disjoint i64 %i.bcp, 16             ; 2 uses
  %next.gep2087 = getelementptr i8, ptr %i.bcb, i64 %i.bcp
  %next.gep2088 = getelementptr i8, ptr %i.bcb, i64 %i.bcq
  %next.gep2089 = getelementptr i8, ptr %i.bbq, i64 %i.bcp
  %next.gep2090 = getelementptr i8, ptr %i.bbq, i64 %i.bcq
  %wide.vec2091 = load <4 x i32>, ptr %next.gep2089, align 4, !tbaa !236, !alias.scope !584
  %wide.vec2094 = load <4 x i32>, ptr %next.gep2090, align 4, !tbaa !236, !alias.scope !584
  store <4 x i32> %wide.vec2091, ptr %next.gep2087, align 4, !tbaa !4, !alias.scope !587, !noalias !584
  store <4 x i32> %wide.vec2094, ptr %next.gep2088, align 4, !tbaa !4, !alias.scope !587, !noalias !584
  %index.next2099 = add nuw i64 %index2086, 4     ; 2 uses
  %i.bcr = icmp eq i64 %index.next2099, %n.vec2084
  br i1 %i.bcr, label %middle.block2100, label %vector.body2085, !llvm.loop !589

middle.block2100:                                 ; preds = %vector.body2085
  %cmp.n2101 = icmp eq i64 %i.bch, %n.vec2084
  br i1 %cmp.n2101, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i623, label %.lr.ph.i.i.i.i.i.i612.preheader2303

.lr.ph.i.i.i.i.i.i612.preheader2303:              ; preds = %vector.memcheck2074, %.lr.ph.i.i.i.i.i.i612.preheader, %middle.block2100
  %.011.i.i.i.i.i.i613.ph = phi ptr [ %i.bcb, %vector.memcheck2074 ], [ %i.bcb, %.lr.ph.i.i.i.i.i.i612.preheader ], [ %i.bcn, %middle.block2100 ]
  %.0810.i.i.i.i.i.i614.ph = phi ptr [ %i.bbq, %vector.memcheck2074 ], [ %i.bbq, %.lr.ph.i.i.i.i.i.i612.preheader ], [ %i.bco, %middle.block2100 ]
  br label %.lr.ph.i.i.i.i.i.i612

.lr.ph.i.i.i.i.i.i612:                            ; preds = %.lr.ph.i.i.i.i.i.i612.preheader2303, %.lr.ph.i.i.i.i.i.i612
  %.011.i.i.i.i.i.i613 = phi ptr [ %i.bcx, %.lr.ph.i.i.i.i.i.i612 ], [ %.011.i.i.i.i.i.i613.ph, %.lr.ph.i.i.i.i.i.i612.preheader2303 ] ; 3 uses
  %.0810.i.i.i.i.i.i614 = phi ptr [ %i.bcw, %.lr.ph.i.i.i.i.i.i612 ], [ %.0810.i.i.i.i.i.i614.ph, %.lr.ph.i.i.i.i.i.i612.preheader2303 ] ; 3 uses
  %i.bcs = load i32, ptr %.0810.i.i.i.i.i.i614, align 4, !tbaa !236
  store i32 %i.bcs, ptr %.011.i.i.i.i.i.i613, align 4, !tbaa !4
  %i.bct = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i613, i64 4
  %i.bcu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i614, i64 4
  %i.bcv = load i32, ptr %i.bcu, align 4, !tbaa !236
  store i32 %i.bcv, ptr %i.bct, align 4, !tbaa !4
  %i.bcw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i614, i64 8 ; 2 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i613, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i615 = icmp eq ptr %i.bcw, %i.bbm
  br i1 %.not.i.i.i.i.i.i615, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i623, label %.lr.ph.i.i.i.i.i.i612, !llvm.loop !590

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i623: ; preds = %.lr.ph.i.i.i.i.i.i612, %middle.block2100, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i608
  %.0.lcssa.i.i.i.i.i.i617 = phi ptr [ %i.bcb, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i608 ], [ %i.bcn, %middle.block2100 ], [ %i.bcx, %.lr.ph.i.i.i.i.i.i612 ]
  %i.bcy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i617, i64 8 ; 2 uses
  %.not.i25.i625 = icmp eq ptr %i.bbq, null
  br i1 %.not.i25.i625, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit626, label %bb.ec

bb.ec:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i623
  call void @_ZdlPvm(ptr noundef nonnull %i.bbq, i64 noundef %i.bbt) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit626

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit626: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i623, %bb.ec
  store ptr %i.bcb, ptr %i.a, align 8, !tbaa !267
  store ptr %i.bcy, ptr %i.by, align 8, !tbaa !264
  %i.bcz = getelementptr inbounds nuw [8 x i8], ptr %i.bcb, i64 %i.bbz ; 2 uses
  store ptr %i.bcz, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i201

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i201: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit626, %bb.dz
  %i.bda = phi ptr [ %i.bcz, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit626 ], [ %i.bbn, %bb.dz ] ; 2 uses
  %i.bdb = phi ptr [ %i.bcy, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit626 ], [ %i.bbp, %bb.dz ] ; 2 uses
  %i.bdc = load ptr, ptr %i.do, align 8, !tbaa !276 ; 6 uses
  %i.bdd = load ptr, ptr %i.dq, align 8, !tbaa !280 ; 2 uses
  %.not.i3.i202 = icmp eq ptr %i.bdc, %i.bdd
  br i1 %.not.i3.i202, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i201
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdc, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdc, i8 0, i64 16, i1 false)
  store ptr %i.bde, ptr %i.do, align 8, !tbaa !276
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit203

bb.ee:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i201
  %i.bdf = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 11 uses
  %i.bdg = ptrtoint ptr %i.bdc to i64             ; 3 uses
  %i.bdh = ptrtoint ptr %i.bdf to i64             ; 3 uses
  %i.bdi = sub i64 %i.bdg, %i.bdh                 ; 4 uses
  %i.bdj = icmp eq i64 %i.bdi, 9223372036854775792
  br i1 %i.bdj, label %bb.ef, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i589

bb.ef:                                            ; preds = %bb.ee
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i589: ; preds = %bb.ee
  %i.bdk = ashr exact i64 %i.bdi, 4               ; 3 uses
  %.sroa.speculated.i.i590 = call i64 @llvm.umax.i64(i64 %i.bdk, i64 1)
  %i.bdl = add nsw i64 %.sroa.speculated.i.i590, %i.bdk ; 2 uses
  %i.bdm = icmp ult i64 %i.bdl, %i.bdk
  %i.bdn = call i64 @llvm.umin.i64(i64 %i.bdl, i64 576460752303423487)
  %i.bdo = select i1 %i.bdm, i64 576460752303423487, i64 %i.bdn ; 3 uses
  %.not.i.i591 = icmp ne i64 %i.bdo, 0
  call void @llvm.assume(i1 %.not.i.i591)
  %i.bdp = shl nuw nsw i64 %i.bdo, 4
  %i.bdq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bdp) #45 ; 11 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 %i.bdi
  %.not9.i.i.i.i.i.i592 = icmp eq ptr %i.bdf, %i.bdc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdr, i8 0, i64 16, i1 false)
  br i1 %.not9.i.i.i.i.i.i592, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604, label %.lr.ph.i.i.i.i.i.i593.preheader

.lr.ph.i.i.i.i.i.i593.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i589
  %i.bds = sub i64 %i.bdg, %i.bdh
  %i.bdt = add i64 %i.bds, -16                    ; 2 uses
  %i.bdu = lshr i64 %i.bdt, 4
  %i.bdv = add nuw nsw i64 %i.bdu, 1              ; 2 uses
  %min.iters.check2111 = icmp ult i64 %i.bdt, 240
  br i1 %min.iters.check2111, label %.lr.ph.i.i.i.i.i.i593.preheader2301, label %vector.memcheck2104

vector.memcheck2104:                              ; preds = %.lr.ph.i.i.i.i.i.i593.preheader
  %i.bdw = add i64 %i.bdg, -16
  %i.bdx = sub i64 %i.bdw, %i.bdh
  %i.bdy = and i64 %i.bdx, -16
  %i.bdz = add i64 %i.bdy, 16                     ; 2 uses
  %scevgep2105 = getelementptr i8, ptr %i.bdq, i64 %i.bdz
  %scevgep2106 = getelementptr i8, ptr %i.bdf, i64 %i.bdz
  %bound02107 = icmp ult ptr %i.bdq, %scevgep2106
  %bound12108 = icmp ult ptr %i.bdf, %scevgep2105
  %found.conflict2109 = and i1 %bound02107, %bound12108
  br i1 %found.conflict2109, label %.lr.ph.i.i.i.i.i.i593.preheader2301, label %vector.ph2112

vector.ph2112:                                    ; preds = %vector.memcheck2104
  %n.vec2114 = and i64 %i.bdv, 2305843009213693950 ; 3 uses
  %i.bea = shl i64 %n.vec2114, 4                  ; 2 uses
  %i.beb = getelementptr i8, ptr %i.bdq, i64 %i.bea ; 2 uses
  %i.bec = getelementptr i8, ptr %i.bdf, i64 %i.bea
  br label %vector.body2115

vector.body2115:                                  ; preds = %vector.body2115, %vector.ph2112
  %index2116 = phi i64 [ 0, %vector.ph2112 ], [ %index.next2123, %vector.body2115 ] ; 2 uses
  %i.bed = shl i64 %index2116, 4                  ; 3 uses
  %i.bee = or disjoint i64 %i.bed, 16             ; 2 uses
  %next.gep2117 = getelementptr i8, ptr %i.bdq, i64 %i.bed
  %next.gep2118 = getelementptr i8, ptr %i.bdq, i64 %i.bee
  %next.gep2119 = getelementptr i8, ptr %i.bdf, i64 %i.bed
  %next.gep2120 = getelementptr i8, ptr %i.bdf, i64 %i.bee
  %wide.load2121 = load <2 x double>, ptr %next.gep2119, align 8, !tbaa !247, !alias.scope !591
  %wide.load2122 = load <2 x double>, ptr %next.gep2120, align 8, !tbaa !247, !alias.scope !591
  store <2 x double> %wide.load2121, ptr %next.gep2117, align 8, !tbaa !247, !alias.scope !594, !noalias !591
  store <2 x double> %wide.load2122, ptr %next.gep2118, align 8, !tbaa !247, !alias.scope !594, !noalias !591
  %index.next2123 = add nuw i64 %index2116, 2     ; 2 uses
  %i.bef = icmp eq i64 %index.next2123, %n.vec2114
  br i1 %i.bef, label %middle.block2124, label %vector.body2115, !llvm.loop !596

middle.block2124:                                 ; preds = %vector.body2115
  %cmp.n2125 = icmp eq i64 %i.bdv, %n.vec2114
  br i1 %cmp.n2125, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604, label %.lr.ph.i.i.i.i.i.i593.preheader2301

.lr.ph.i.i.i.i.i.i593.preheader2301:              ; preds = %vector.memcheck2104, %.lr.ph.i.i.i.i.i.i593.preheader, %middle.block2124
  %.011.i.i.i.i.i.i594.ph = phi ptr [ %i.bdq, %vector.memcheck2104 ], [ %i.bdq, %.lr.ph.i.i.i.i.i.i593.preheader ], [ %i.beb, %middle.block2124 ]
  %.0810.i.i.i.i.i.i595.ph = phi ptr [ %i.bdf, %vector.memcheck2104 ], [ %i.bdf, %.lr.ph.i.i.i.i.i.i593.preheader ], [ %i.bec, %middle.block2124 ]
  br label %.lr.ph.i.i.i.i.i.i593

.lr.ph.i.i.i.i.i.i593:                            ; preds = %.lr.ph.i.i.i.i.i.i593.preheader2301, %.lr.ph.i.i.i.i.i.i593
  %.011.i.i.i.i.i.i594 = phi ptr [ %i.bel, %.lr.ph.i.i.i.i.i.i593 ], [ %.011.i.i.i.i.i.i594.ph, %.lr.ph.i.i.i.i.i.i593.preheader2301 ] ; 3 uses
  %.0810.i.i.i.i.i.i595 = phi ptr [ %i.bek, %.lr.ph.i.i.i.i.i.i593 ], [ %.0810.i.i.i.i.i.i595.ph, %.lr.ph.i.i.i.i.i.i593.preheader2301 ] ; 3 uses
  %i.beg = load double, ptr %.0810.i.i.i.i.i.i595, align 8, !tbaa !247
  store double %i.beg, ptr %.011.i.i.i.i.i.i594, align 8, !tbaa !247
  %i.beh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i594, i64 8
  %i.bei = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i595, i64 8
  %i.bej = load double, ptr %i.bei, align 8, !tbaa !247
  store double %i.bej, ptr %i.beh, align 8, !tbaa !247
  %i.bek = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i595, i64 16 ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i594, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i596 = icmp eq ptr %i.bek, %i.bdc
  br i1 %.not.i.i.i.i.i.i596, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604, label %.lr.ph.i.i.i.i.i.i593, !llvm.loop !597

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604: ; preds = %.lr.ph.i.i.i.i.i.i593, %middle.block2124, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i589
  %.0.lcssa.i.i.i.i.i.i598 = phi ptr [ %i.bdq, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i589 ], [ %i.beb, %middle.block2124 ], [ %i.bel, %.lr.ph.i.i.i.i.i.i593 ]
  %i.bem = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i598, i64 16 ; 2 uses
  %.not.i25.i606 = icmp eq ptr %i.bdf, null
  br i1 %.not.i25.i606, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607, label %bb.eg

bb.eg:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604
  call void @_ZdlPvm(ptr noundef nonnull %i.bdf, i64 noundef %i.bdi) #48
  %.pre1005.pre = load ptr, ptr %i.by, align 8, !tbaa !264
  %.pre1006.pre = load ptr, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604, %bb.eg
  %.pre1006 = phi ptr [ %i.bda, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604 ], [ %.pre1006.pre, %bb.eg ]
  %.pre1005 = phi ptr [ %i.bdb, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i604 ], [ %.pre1005.pre, %bb.eg ]
  store ptr %i.bdq, ptr %i.bj, align 8, !tbaa !279
  store ptr %i.bem, ptr %i.do, align 8, !tbaa !276
  %i.ben = getelementptr inbounds nuw [16 x i8], ptr %i.bdq, i64 %i.bdo ; 2 uses
  store ptr %i.ben, ptr %i.dq, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit203

_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit203: ; preds = %bb.ed, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607
  %i.beo = phi ptr [ %i.bdd, %bb.ed ], [ %i.ben, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607 ] ; 2 uses
  %i.bep = phi ptr [ %i.bde, %bb.ed ], [ %i.bem, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607 ] ; 2 uses
  %i.beq = phi ptr [ %i.bda, %bb.ed ], [ %.pre1006, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607 ] ; 5 uses
  %i.ber = phi ptr [ %i.bdb, %bb.ed ], [ %.pre1005, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit607 ] ; 4 uses
  %.not.i.i204 = icmp eq ptr %i.ber, %i.beq
  br i1 %.not.i.i204, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit203
  store i32 0, ptr %i.ber, align 4, !tbaa !4
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 4
  store i32 0, ptr %i.bes, align 4, !tbaa !4
  %i.bet = getelementptr inbounds nuw i8, ptr %i.ber, i64 8 ; 2 uses
  store ptr %i.bet, ptr %i.by, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i205

bb.ei:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit203
  %i.beu = load ptr, ptr %i.a, align 8, !tbaa !267 ; 11 uses
  %i.bev = ptrtoint ptr %i.beq to i64             ; 3 uses
  %i.bew = ptrtoint ptr %i.beu to i64             ; 3 uses
  %i.bex = sub i64 %i.bev, %i.bew                 ; 4 uses
  %i.bey = icmp eq i64 %i.bex, 9223372036854775800
  br i1 %i.bey, label %bb.ej, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i646

bb.ej:                                            ; preds = %bb.ei
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i646: ; preds = %bb.ei
  %i.bez = ashr exact i64 %i.bex, 3               ; 3 uses
  %.sroa.speculated.i.i647 = call i64 @llvm.umax.i64(i64 %i.bez, i64 1)
  %i.bfa = add nsw i64 %.sroa.speculated.i.i647, %i.bez ; 2 uses
  %i.bfb = icmp ult i64 %i.bfa, %i.bez
  %i.bfc = call i64 @llvm.umin.i64(i64 %i.bfa, i64 1152921504606846975)
  %i.bfd = select i1 %i.bfb, i64 1152921504606846975, i64 %i.bfc ; 3 uses
  %.not.i.i648 = icmp ne i64 %i.bfd, 0
  call void @llvm.assume(i1 %.not.i.i648)
  %i.bfe = shl nuw nsw i64 %i.bfd, 3
  %i.bff = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bfe) #45 ; 11 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 %i.bex ; 2 uses
  store i32 0, ptr %i.bfg, align 4, !tbaa !4
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 4
  store i32 0, ptr %i.bfh, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i649 = icmp eq ptr %i.beu, %i.beq
  br i1 %.not9.i.i.i.i.i.i649, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661, label %.lr.ph.i.i.i.i.i.i650.preheader

.lr.ph.i.i.i.i.i.i650.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i646
  %i.bfi = sub i64 %i.bev, %i.bew
  %i.bfj = add i64 %i.bfi, -8                     ; 2 uses
  %i.bfk = lshr i64 %i.bfj, 3
  %i.bfl = add nuw nsw i64 %i.bfk, 1              ; 2 uses
  %min.iters.check2135 = icmp ult i64 %i.bfj, 120
  br i1 %min.iters.check2135, label %.lr.ph.i.i.i.i.i.i650.preheader2299, label %vector.memcheck2128

vector.memcheck2128:                              ; preds = %.lr.ph.i.i.i.i.i.i650.preheader
  %i.bfm = add i64 %i.bev, -8
  %i.bfn = sub i64 %i.bfm, %i.bew
  %i.bfo = and i64 %i.bfn, -8
  %i.bfp = add i64 %i.bfo, 8                      ; 2 uses
  %scevgep2129 = getelementptr i8, ptr %i.bff, i64 %i.bfp
  %scevgep2130 = getelementptr i8, ptr %i.beu, i64 %i.bfp
  %bound02131 = icmp ult ptr %i.bff, %scevgep2130
  %bound12132 = icmp ult ptr %i.beu, %scevgep2129
  %found.conflict2133 = and i1 %bound02131, %bound12132
  br i1 %found.conflict2133, label %.lr.ph.i.i.i.i.i.i650.preheader2299, label %vector.ph2136

vector.ph2136:                                    ; preds = %vector.memcheck2128
  %n.vec2138 = and i64 %i.bfl, 4611686018427387900 ; 3 uses
  %i.bfq = shl i64 %n.vec2138, 3                  ; 2 uses
  %i.bfr = getelementptr i8, ptr %i.bff, i64 %i.bfq ; 2 uses
  %i.bfs = getelementptr i8, ptr %i.beu, i64 %i.bfq
  br label %vector.body2139

vector.body2139:                                  ; preds = %vector.body2139, %vector.ph2136
  %index2140 = phi i64 [ 0, %vector.ph2136 ], [ %index.next2153, %vector.body2139 ] ; 2 uses
  %i.bft = shl i64 %index2140, 3                  ; 3 uses
  %i.bfu = or disjoint i64 %i.bft, 16             ; 2 uses
  %next.gep2141 = getelementptr i8, ptr %i.bff, i64 %i.bft
  %next.gep2142 = getelementptr i8, ptr %i.bff, i64 %i.bfu
  %next.gep2143 = getelementptr i8, ptr %i.beu, i64 %i.bft
  %next.gep2144 = getelementptr i8, ptr %i.beu, i64 %i.bfu
  %wide.vec2145 = load <4 x i32>, ptr %next.gep2143, align 4, !tbaa !236, !alias.scope !598
  %wide.vec2148 = load <4 x i32>, ptr %next.gep2144, align 4, !tbaa !236, !alias.scope !598
  store <4 x i32> %wide.vec2145, ptr %next.gep2141, align 4, !tbaa !4, !alias.scope !601, !noalias !598
  store <4 x i32> %wide.vec2148, ptr %next.gep2142, align 4, !tbaa !4, !alias.scope !601, !noalias !598
  %index.next2153 = add nuw i64 %index2140, 4     ; 2 uses
  %i.bfv = icmp eq i64 %index.next2153, %n.vec2138
  br i1 %i.bfv, label %middle.block2154, label %vector.body2139, !llvm.loop !603

middle.block2154:                                 ; preds = %vector.body2139
  %cmp.n2155 = icmp eq i64 %i.bfl, %n.vec2138
  br i1 %cmp.n2155, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661, label %.lr.ph.i.i.i.i.i.i650.preheader2299

.lr.ph.i.i.i.i.i.i650.preheader2299:              ; preds = %vector.memcheck2128, %.lr.ph.i.i.i.i.i.i650.preheader, %middle.block2154
  %.011.i.i.i.i.i.i651.ph = phi ptr [ %i.bff, %vector.memcheck2128 ], [ %i.bff, %.lr.ph.i.i.i.i.i.i650.preheader ], [ %i.bfr, %middle.block2154 ]
  %.0810.i.i.i.i.i.i652.ph = phi ptr [ %i.beu, %vector.memcheck2128 ], [ %i.beu, %.lr.ph.i.i.i.i.i.i650.preheader ], [ %i.bfs, %middle.block2154 ]
  br label %.lr.ph.i.i.i.i.i.i650

.lr.ph.i.i.i.i.i.i650:                            ; preds = %.lr.ph.i.i.i.i.i.i650.preheader2299, %.lr.ph.i.i.i.i.i.i650
  %.011.i.i.i.i.i.i651 = phi ptr [ %i.bgb, %.lr.ph.i.i.i.i.i.i650 ], [ %.011.i.i.i.i.i.i651.ph, %.lr.ph.i.i.i.i.i.i650.preheader2299 ] ; 3 uses
  %.0810.i.i.i.i.i.i652 = phi ptr [ %i.bga, %.lr.ph.i.i.i.i.i.i650 ], [ %.0810.i.i.i.i.i.i652.ph, %.lr.ph.i.i.i.i.i.i650.preheader2299 ] ; 3 uses
  %i.bfw = load i32, ptr %.0810.i.i.i.i.i.i652, align 4, !tbaa !236
  store i32 %i.bfw, ptr %.011.i.i.i.i.i.i651, align 4, !tbaa !4
  %i.bfx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i651, i64 4
  %i.bfy = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i652, i64 4
  %i.bfz = load i32, ptr %i.bfy, align 4, !tbaa !236
  store i32 %i.bfz, ptr %i.bfx, align 4, !tbaa !4
  %i.bga = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i652, i64 8 ; 2 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i651, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i653 = icmp eq ptr %i.bga, %i.beq
  br i1 %.not.i.i.i.i.i.i653, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661, label %.lr.ph.i.i.i.i.i.i650, !llvm.loop !604

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661: ; preds = %.lr.ph.i.i.i.i.i.i650, %middle.block2154, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i646
  %.0.lcssa.i.i.i.i.i.i655 = phi ptr [ %i.bff, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i646 ], [ %i.bfr, %middle.block2154 ], [ %i.bgb, %.lr.ph.i.i.i.i.i.i650 ]
  %i.bgc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i655, i64 8 ; 2 uses
  %.not.i25.i663 = icmp eq ptr %i.beu, null
  br i1 %.not.i25.i663, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664, label %bb.ek

bb.ek:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661
  call void @_ZdlPvm(ptr noundef nonnull %i.beu, i64 noundef %i.bex) #48
  %.pre1007.pre = load ptr, ptr %i.do, align 8, !tbaa !276
  %.pre1008.pre = load ptr, ptr %i.dq, align 8, !tbaa !280
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661, %bb.ek
  %.pre1008 = phi ptr [ %i.beo, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661 ], [ %.pre1008.pre, %bb.ek ]
  %.pre1007 = phi ptr [ %i.bep, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i661 ], [ %.pre1007.pre, %bb.ek ]
  store ptr %i.bff, ptr %i.a, align 8, !tbaa !267
  store ptr %i.bgc, ptr %i.by, align 8, !tbaa !264
  %i.bgd = getelementptr inbounds nuw [8 x i8], ptr %i.bff, i64 %i.bfd ; 2 uses
  store ptr %i.bgd, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i205

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i205: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664, %bb.eh
  %i.bge = phi ptr [ %i.bgd, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664 ], [ %i.beq, %bb.eh ] ; 2 uses
  %i.bgf = phi ptr [ %i.bgc, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664 ], [ %i.bet, %bb.eh ] ; 2 uses
  %i.bgg = phi ptr [ %.pre1008, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664 ], [ %i.beo, %bb.eh ] ; 5 uses
  %i.bgh = phi ptr [ %.pre1007, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit664 ], [ %i.bep, %bb.eh ] ; 3 uses
  %.not.i3.i206 = icmp eq ptr %i.bgh, %i.bgg
  br i1 %.not.i3.i206, label %bb.em, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i205
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.bgh, align 8, !tbaa !247
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bgh, i64 16 ; 2 uses
  store ptr %i.bgi, ptr %i.do, align 8, !tbaa !276
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit207

bb.em:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i205
  %i.bgj = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 11 uses
  %i.bgk = ptrtoint ptr %i.bgg to i64             ; 3 uses
  %i.bgl = ptrtoint ptr %i.bgj to i64             ; 3 uses
  %i.bgm = sub i64 %i.bgk, %i.bgl                 ; 4 uses
  %i.bgn = icmp eq i64 %i.bgm, 9223372036854775792
  br i1 %i.bgn, label %bb.en, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i627

bb.en:                                            ; preds = %bb.em
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i627: ; preds = %bb.em
  %i.bgo = ashr exact i64 %i.bgm, 4               ; 3 uses
  %.sroa.speculated.i.i628 = call i64 @llvm.umax.i64(i64 %i.bgo, i64 1)
  %i.bgp = add nsw i64 %.sroa.speculated.i.i628, %i.bgo ; 2 uses
  %i.bgq = icmp ult i64 %i.bgp, %i.bgo
  %i.bgr = call i64 @llvm.umin.i64(i64 %i.bgp, i64 576460752303423487)
  %i.bgs = select i1 %i.bgq, i64 576460752303423487, i64 %i.bgr ; 3 uses
  %.not.i.i629 = icmp ne i64 %i.bgs, 0
  call void @llvm.assume(i1 %.not.i.i629)
  %i.bgt = shl nuw nsw i64 %i.bgs, 4
  %i.bgu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bgt) #45 ; 11 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgu, i64 %i.bgm
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.bgv, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i630 = icmp eq ptr %i.bgj, %i.bgg
  br i1 %.not9.i.i.i.i.i.i630, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642, label %.lr.ph.i.i.i.i.i.i631.preheader

.lr.ph.i.i.i.i.i.i631.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i627
  %i.bgw = sub i64 %i.bgk, %i.bgl
  %i.bgx = add i64 %i.bgw, -16                    ; 2 uses
  %i.bgy = lshr i64 %i.bgx, 4
  %i.bgz = add nuw nsw i64 %i.bgy, 1              ; 2 uses
  %min.iters.check2165 = icmp ult i64 %i.bgx, 240
  br i1 %min.iters.check2165, label %.lr.ph.i.i.i.i.i.i631.preheader2297, label %vector.memcheck2158

vector.memcheck2158:                              ; preds = %.lr.ph.i.i.i.i.i.i631.preheader
  %i.bha = add i64 %i.bgk, -16
  %i.bhb = sub i64 %i.bha, %i.bgl
  %i.bhc = and i64 %i.bhb, -16
  %i.bhd = add i64 %i.bhc, 16                     ; 2 uses
  %scevgep2159 = getelementptr i8, ptr %i.bgu, i64 %i.bhd
  %scevgep2160 = getelementptr i8, ptr %i.bgj, i64 %i.bhd
  %bound02161 = icmp ult ptr %i.bgu, %scevgep2160
  %bound12162 = icmp ult ptr %i.bgj, %scevgep2159
  %found.conflict2163 = and i1 %bound02161, %bound12162
  br i1 %found.conflict2163, label %.lr.ph.i.i.i.i.i.i631.preheader2297, label %vector.ph2166

vector.ph2166:                                    ; preds = %vector.memcheck2158
  %n.vec2168 = and i64 %i.bgz, 2305843009213693950 ; 3 uses
  %i.bhe = shl i64 %n.vec2168, 4                  ; 2 uses
  %i.bhf = getelementptr i8, ptr %i.bgu, i64 %i.bhe ; 2 uses
  %i.bhg = getelementptr i8, ptr %i.bgj, i64 %i.bhe
  br label %vector.body2169

vector.body2169:                                  ; preds = %vector.body2169, %vector.ph2166
  %index2170 = phi i64 [ 0, %vector.ph2166 ], [ %index.next2177, %vector.body2169 ] ; 2 uses
  %i.bhh = shl i64 %index2170, 4                  ; 3 uses
  %i.bhi = or disjoint i64 %i.bhh, 16             ; 2 uses
  %next.gep2171 = getelementptr i8, ptr %i.bgu, i64 %i.bhh
  %next.gep2172 = getelementptr i8, ptr %i.bgu, i64 %i.bhi
  %next.gep2173 = getelementptr i8, ptr %i.bgj, i64 %i.bhh
  %next.gep2174 = getelementptr i8, ptr %i.bgj, i64 %i.bhi
  %wide.load2175 = load <2 x double>, ptr %next.gep2173, align 8, !tbaa !247, !alias.scope !605
  %wide.load2176 = load <2 x double>, ptr %next.gep2174, align 8, !tbaa !247, !alias.scope !605
  store <2 x double> %wide.load2175, ptr %next.gep2171, align 8, !tbaa !247, !alias.scope !608, !noalias !605
  store <2 x double> %wide.load2176, ptr %next.gep2172, align 8, !tbaa !247, !alias.scope !608, !noalias !605
  %index.next2177 = add nuw i64 %index2170, 2     ; 2 uses
  %i.bhj = icmp eq i64 %index.next2177, %n.vec2168
  br i1 %i.bhj, label %middle.block2178, label %vector.body2169, !llvm.loop !610

middle.block2178:                                 ; preds = %vector.body2169
  %cmp.n2179 = icmp eq i64 %i.bgz, %n.vec2168
  br i1 %cmp.n2179, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642, label %.lr.ph.i.i.i.i.i.i631.preheader2297

.lr.ph.i.i.i.i.i.i631.preheader2297:              ; preds = %vector.memcheck2158, %.lr.ph.i.i.i.i.i.i631.preheader, %middle.block2178
  %.011.i.i.i.i.i.i632.ph = phi ptr [ %i.bgu, %vector.memcheck2158 ], [ %i.bgu, %.lr.ph.i.i.i.i.i.i631.preheader ], [ %i.bhf, %middle.block2178 ]
  %.0810.i.i.i.i.i.i633.ph = phi ptr [ %i.bgj, %vector.memcheck2158 ], [ %i.bgj, %.lr.ph.i.i.i.i.i.i631.preheader ], [ %i.bhg, %middle.block2178 ]
  br label %.lr.ph.i.i.i.i.i.i631

.lr.ph.i.i.i.i.i.i631:                            ; preds = %.lr.ph.i.i.i.i.i.i631.preheader2297, %.lr.ph.i.i.i.i.i.i631
  %.011.i.i.i.i.i.i632 = phi ptr [ %i.bhp, %.lr.ph.i.i.i.i.i.i631 ], [ %.011.i.i.i.i.i.i632.ph, %.lr.ph.i.i.i.i.i.i631.preheader2297 ] ; 3 uses
  %.0810.i.i.i.i.i.i633 = phi ptr [ %i.bho, %.lr.ph.i.i.i.i.i.i631 ], [ %.0810.i.i.i.i.i.i633.ph, %.lr.ph.i.i.i.i.i.i631.preheader2297 ] ; 3 uses
  %i.bhk = load double, ptr %.0810.i.i.i.i.i.i633, align 8, !tbaa !247
  store double %i.bhk, ptr %.011.i.i.i.i.i.i632, align 8, !tbaa !247
  %i.bhl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i632, i64 8
  %i.bhm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i633, i64 8
  %i.bhn = load double, ptr %i.bhm, align 8, !tbaa !247
  store double %i.bhn, ptr %i.bhl, align 8, !tbaa !247
  %i.bho = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i633, i64 16 ; 2 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i632, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i634 = icmp eq ptr %i.bho, %i.bgg
  br i1 %.not.i.i.i.i.i.i634, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642, label %.lr.ph.i.i.i.i.i.i631, !llvm.loop !611

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642: ; preds = %.lr.ph.i.i.i.i.i.i631, %middle.block2178, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i627
  %.0.lcssa.i.i.i.i.i.i636 = phi ptr [ %i.bgu, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i627 ], [ %i.bhf, %middle.block2178 ], [ %i.bhp, %.lr.ph.i.i.i.i.i.i631 ]
  %i.bhq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i636, i64 16 ; 2 uses
  %.not.i25.i644 = icmp eq ptr %i.bgj, null
  br i1 %.not.i25.i644, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645, label %bb.eo

bb.eo:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642
  call void @_ZdlPvm(ptr noundef nonnull %i.bgj, i64 noundef %i.bgm) #48
  %.pre1009.pre = load ptr, ptr %i.by, align 8, !tbaa !264
  %.pre1010.pre = load ptr, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642, %bb.eo
  %.pre1010 = phi ptr [ %i.bge, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642 ], [ %.pre1010.pre, %bb.eo ]
  %.pre1009 = phi ptr [ %i.bgf, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i642 ], [ %.pre1009.pre, %bb.eo ]
  store ptr %i.bgu, ptr %i.bj, align 8, !tbaa !279
  store ptr %i.bhq, ptr %i.do, align 8, !tbaa !276
  %i.bhr = getelementptr inbounds nuw [16 x i8], ptr %i.bgu, i64 %i.bgs ; 2 uses
  store ptr %i.bhr, ptr %i.dq, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit207

_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit207: ; preds = %bb.el, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645
  %i.bhs = phi ptr [ %i.bgg, %bb.el ], [ %i.bhr, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645 ] ; 2 uses
  %i.bht = phi ptr [ %i.bgi, %bb.el ], [ %i.bhq, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645 ] ; 2 uses
  %i.bhu = phi ptr [ %i.bge, %bb.el ], [ %.pre1010, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645 ] ; 5 uses
  %i.bhv = phi ptr [ %i.bgf, %bb.el ], [ %.pre1009, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit645 ] ; 4 uses
  %.not.i.i208 = icmp eq ptr %i.bhv, %i.bhu
  br i1 %.not.i.i208, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit207
  store i32 0, ptr %i.bhv, align 4, !tbaa !4
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 4
  store i32 0, ptr %i.bhw, align 4, !tbaa !4
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhv, i64 8 ; 2 uses
  store ptr %i.bhx, ptr %i.by, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i209

bb.eq:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit207
  %i.bhy = load ptr, ptr %i.a, align 8, !tbaa !267 ; 11 uses
  %i.bhz = ptrtoint ptr %i.bhu to i64             ; 3 uses
  %i.bia = ptrtoint ptr %i.bhy to i64             ; 3 uses
  %i.bib = sub i64 %i.bhz, %i.bia                 ; 4 uses
  %i.bic = icmp eq i64 %i.bib, 9223372036854775800
  br i1 %i.bic, label %bb.er, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i684

bb.er:                                            ; preds = %bb.eq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i684: ; preds = %bb.eq
  %i.bid = ashr exact i64 %i.bib, 3               ; 3 uses
  %.sroa.speculated.i.i685 = call i64 @llvm.umax.i64(i64 %i.bid, i64 1)
  %i.bie = add nsw i64 %.sroa.speculated.i.i685, %i.bid ; 2 uses
  %i.bif = icmp ult i64 %i.bie, %i.bid
  %i.big = call i64 @llvm.umin.i64(i64 %i.bie, i64 1152921504606846975)
  %i.bih = select i1 %i.bif, i64 1152921504606846975, i64 %i.big ; 3 uses
  %.not.i.i686 = icmp ne i64 %i.bih, 0
  call void @llvm.assume(i1 %.not.i.i686)
  %i.bii = shl nuw nsw i64 %i.bih, 3
  %i.bij = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bii) #45 ; 11 uses
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 %i.bib ; 2 uses
  store i32 0, ptr %i.bik, align 4, !tbaa !4
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 4
  store i32 0, ptr %i.bil, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i687 = icmp eq ptr %i.bhy, %i.bhu
  br i1 %.not9.i.i.i.i.i.i687, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699, label %.lr.ph.i.i.i.i.i.i688.preheader

.lr.ph.i.i.i.i.i.i688.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i684
  %i.bim = sub i64 %i.bhz, %i.bia
  %i.bin = add i64 %i.bim, -8                     ; 2 uses
  %i.bio = lshr i64 %i.bin, 3
  %i.bip = add nuw nsw i64 %i.bio, 1              ; 2 uses
  %min.iters.check2189 = icmp ult i64 %i.bin, 120
  br i1 %min.iters.check2189, label %.lr.ph.i.i.i.i.i.i688.preheader2295, label %vector.memcheck2182

vector.memcheck2182:                              ; preds = %.lr.ph.i.i.i.i.i.i688.preheader
  %i.biq = add i64 %i.bhz, -8
  %i.bir = sub i64 %i.biq, %i.bia
  %i.bis = and i64 %i.bir, -8
  %i.bit = add i64 %i.bis, 8                      ; 2 uses
  %scevgep2183 = getelementptr i8, ptr %i.bij, i64 %i.bit
  %scevgep2184 = getelementptr i8, ptr %i.bhy, i64 %i.bit
  %bound02185 = icmp ult ptr %i.bij, %scevgep2184
  %bound12186 = icmp ult ptr %i.bhy, %scevgep2183
  %found.conflict2187 = and i1 %bound02185, %bound12186
  br i1 %found.conflict2187, label %.lr.ph.i.i.i.i.i.i688.preheader2295, label %vector.ph2190

vector.ph2190:                                    ; preds = %vector.memcheck2182
  %n.vec2192 = and i64 %i.bip, 4611686018427387900 ; 3 uses
  %i.biu = shl i64 %n.vec2192, 3                  ; 2 uses
  %i.biv = getelementptr i8, ptr %i.bij, i64 %i.biu ; 2 uses
  %i.biw = getelementptr i8, ptr %i.bhy, i64 %i.biu
  br label %vector.body2193

vector.body2193:                                  ; preds = %vector.body2193, %vector.ph2190
  %index2194 = phi i64 [ 0, %vector.ph2190 ], [ %index.next2207, %vector.body2193 ] ; 2 uses
  %i.bix = shl i64 %index2194, 3                  ; 3 uses
  %i.biy = or disjoint i64 %i.bix, 16             ; 2 uses
  %next.gep2195 = getelementptr i8, ptr %i.bij, i64 %i.bix
  %next.gep2196 = getelementptr i8, ptr %i.bij, i64 %i.biy
  %next.gep2197 = getelementptr i8, ptr %i.bhy, i64 %i.bix
  %next.gep2198 = getelementptr i8, ptr %i.bhy, i64 %i.biy
  %wide.vec2199 = load <4 x i32>, ptr %next.gep2197, align 4, !tbaa !236, !alias.scope !612
  %wide.vec2202 = load <4 x i32>, ptr %next.gep2198, align 4, !tbaa !236, !alias.scope !612
  store <4 x i32> %wide.vec2199, ptr %next.gep2195, align 4, !tbaa !4, !alias.scope !615, !noalias !612
  store <4 x i32> %wide.vec2202, ptr %next.gep2196, align 4, !tbaa !4, !alias.scope !615, !noalias !612
  %index.next2207 = add nuw i64 %index2194, 4     ; 2 uses
  %i.biz = icmp eq i64 %index.next2207, %n.vec2192
  br i1 %i.biz, label %middle.block2208, label %vector.body2193, !llvm.loop !617

middle.block2208:                                 ; preds = %vector.body2193
  %cmp.n2209 = icmp eq i64 %i.bip, %n.vec2192
  br i1 %cmp.n2209, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699, label %.lr.ph.i.i.i.i.i.i688.preheader2295

.lr.ph.i.i.i.i.i.i688.preheader2295:              ; preds = %vector.memcheck2182, %.lr.ph.i.i.i.i.i.i688.preheader, %middle.block2208
  %.011.i.i.i.i.i.i689.ph = phi ptr [ %i.bij, %vector.memcheck2182 ], [ %i.bij, %.lr.ph.i.i.i.i.i.i688.preheader ], [ %i.biv, %middle.block2208 ]
  %.0810.i.i.i.i.i.i690.ph = phi ptr [ %i.bhy, %vector.memcheck2182 ], [ %i.bhy, %.lr.ph.i.i.i.i.i.i688.preheader ], [ %i.biw, %middle.block2208 ]
  br label %.lr.ph.i.i.i.i.i.i688

.lr.ph.i.i.i.i.i.i688:                            ; preds = %.lr.ph.i.i.i.i.i.i688.preheader2295, %.lr.ph.i.i.i.i.i.i688
  %.011.i.i.i.i.i.i689 = phi ptr [ %i.bjf, %.lr.ph.i.i.i.i.i.i688 ], [ %.011.i.i.i.i.i.i689.ph, %.lr.ph.i.i.i.i.i.i688.preheader2295 ] ; 3 uses
  %.0810.i.i.i.i.i.i690 = phi ptr [ %i.bje, %.lr.ph.i.i.i.i.i.i688 ], [ %.0810.i.i.i.i.i.i690.ph, %.lr.ph.i.i.i.i.i.i688.preheader2295 ] ; 3 uses
  %i.bja = load i32, ptr %.0810.i.i.i.i.i.i690, align 4, !tbaa !236
  store i32 %i.bja, ptr %.011.i.i.i.i.i.i689, align 4, !tbaa !4
  %i.bjb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i689, i64 4
  %i.bjc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i690, i64 4
  %i.bjd = load i32, ptr %i.bjc, align 4, !tbaa !236
  store i32 %i.bjd, ptr %i.bjb, align 4, !tbaa !4
  %i.bje = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i690, i64 8 ; 2 uses
  %i.bjf = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i689, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i691 = icmp eq ptr %i.bje, %i.bhu
  br i1 %.not.i.i.i.i.i.i691, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699, label %.lr.ph.i.i.i.i.i.i688, !llvm.loop !618

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699: ; preds = %.lr.ph.i.i.i.i.i.i688, %middle.block2208, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i684
  %.0.lcssa.i.i.i.i.i.i693 = phi ptr [ %i.bij, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i684 ], [ %i.biv, %middle.block2208 ], [ %i.bjf, %.lr.ph.i.i.i.i.i.i688 ]
  %i.bjg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i693, i64 8 ; 2 uses
  %.not.i25.i701 = icmp eq ptr %i.bhy, null
  br i1 %.not.i25.i701, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702, label %bb.es

bb.es:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699
  call void @_ZdlPvm(ptr noundef nonnull %i.bhy, i64 noundef %i.bib) #48
  %.pre1011.pre = load ptr, ptr %i.do, align 8, !tbaa !276
  %.pre1012.pre = load ptr, ptr %i.dq, align 8, !tbaa !280
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699, %bb.es
  %.pre1012 = phi ptr [ %i.bhs, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699 ], [ %.pre1012.pre, %bb.es ]
  %.pre1011 = phi ptr [ %i.bht, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i699 ], [ %.pre1011.pre, %bb.es ]
  store ptr %i.bij, ptr %i.a, align 8, !tbaa !267
  store ptr %i.bjg, ptr %i.by, align 8, !tbaa !264
  %i.bjh = getelementptr inbounds nuw [8 x i8], ptr %i.bij, i64 %i.bih ; 2 uses
  store ptr %i.bjh, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i209

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i209: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702, %bb.ep
  %i.bji = phi ptr [ %i.bjh, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702 ], [ %i.bhu, %bb.ep ] ; 2 uses
  %i.bjj = phi ptr [ %i.bjg, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702 ], [ %i.bhx, %bb.ep ] ; 2 uses
  %i.bjk = phi ptr [ %.pre1012, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702 ], [ %i.bhs, %bb.ep ] ; 5 uses
  %i.bjl = phi ptr [ %.pre1011, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit702 ], [ %i.bht, %bb.ep ] ; 3 uses
  %.not.i3.i210 = icmp eq ptr %i.bjl, %i.bjk
  br i1 %.not.i3.i210, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i209
  store <2 x double> splat (double 1.000000e+00), ptr %i.bjl, align 8, !tbaa !247
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 16 ; 2 uses
  store ptr %i.bjm, ptr %i.do, align 8, !tbaa !276
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit211

bb.eu:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i209
  %i.bjn = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 11 uses
  %i.bjo = ptrtoint ptr %i.bjk to i64             ; 3 uses
  %i.bjp = ptrtoint ptr %i.bjn to i64             ; 3 uses
  %i.bjq = sub i64 %i.bjo, %i.bjp                 ; 4 uses
  %i.bjr = icmp eq i64 %i.bjq, 9223372036854775792
  br i1 %i.bjr, label %bb.ev, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i665

bb.ev:                                            ; preds = %bb.eu
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i665: ; preds = %bb.eu
  %i.bjs = ashr exact i64 %i.bjq, 4               ; 3 uses
  %.sroa.speculated.i.i666 = call i64 @llvm.umax.i64(i64 %i.bjs, i64 1)
  %i.bjt = add nsw i64 %.sroa.speculated.i.i666, %i.bjs ; 2 uses
  %i.bju = icmp ult i64 %i.bjt, %i.bjs
  %i.bjv = call i64 @llvm.umin.i64(i64 %i.bjt, i64 576460752303423487)
  %i.bjw = select i1 %i.bju, i64 576460752303423487, i64 %i.bjv ; 3 uses
  %.not.i.i667 = icmp ne i64 %i.bjw, 0
  call void @llvm.assume(i1 %.not.i.i667)
  %i.bjx = shl nuw nsw i64 %i.bjw, 4
  %i.bjy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bjx) #45 ; 11 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 %i.bjq
  store <2 x double> splat (double 1.000000e+00), ptr %i.bjz, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i668 = icmp eq ptr %i.bjn, %i.bjk
  br i1 %.not9.i.i.i.i.i.i668, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680, label %.lr.ph.i.i.i.i.i.i669.preheader

.lr.ph.i.i.i.i.i.i669.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i665
  %i.bka = sub i64 %i.bjo, %i.bjp
  %i.bkb = add i64 %i.bka, -16                    ; 2 uses
  %i.bkc = lshr i64 %i.bkb, 4
  %i.bkd = add nuw nsw i64 %i.bkc, 1              ; 2 uses
  %min.iters.check2219 = icmp ult i64 %i.bkb, 240
  br i1 %min.iters.check2219, label %.lr.ph.i.i.i.i.i.i669.preheader2293, label %vector.memcheck2212

vector.memcheck2212:                              ; preds = %.lr.ph.i.i.i.i.i.i669.preheader
  %i.bke = add i64 %i.bjo, -16
  %i.bkf = sub i64 %i.bke, %i.bjp
  %i.bkg = and i64 %i.bkf, -16
  %i.bkh = add i64 %i.bkg, 16                     ; 2 uses
  %scevgep2213 = getelementptr i8, ptr %i.bjy, i64 %i.bkh
  %scevgep2214 = getelementptr i8, ptr %i.bjn, i64 %i.bkh
  %bound02215 = icmp ult ptr %i.bjy, %scevgep2214
  %bound12216 = icmp ult ptr %i.bjn, %scevgep2213
  %found.conflict2217 = and i1 %bound02215, %bound12216
  br i1 %found.conflict2217, label %.lr.ph.i.i.i.i.i.i669.preheader2293, label %vector.ph2220

vector.ph2220:                                    ; preds = %vector.memcheck2212
  %n.vec2222 = and i64 %i.bkd, 2305843009213693950 ; 3 uses
  %i.bki = shl i64 %n.vec2222, 4                  ; 2 uses
  %i.bkj = getelementptr i8, ptr %i.bjy, i64 %i.bki ; 2 uses
  %i.bkk = getelementptr i8, ptr %i.bjn, i64 %i.bki
  br label %vector.body2223

vector.body2223:                                  ; preds = %vector.body2223, %vector.ph2220
  %index2224 = phi i64 [ 0, %vector.ph2220 ], [ %index.next2231, %vector.body2223 ] ; 2 uses
  %i.bkl = shl i64 %index2224, 4                  ; 3 uses
  %i.bkm = or disjoint i64 %i.bkl, 16             ; 2 uses
  %next.gep2225 = getelementptr i8, ptr %i.bjy, i64 %i.bkl
  %next.gep2226 = getelementptr i8, ptr %i.bjy, i64 %i.bkm
  %next.gep2227 = getelementptr i8, ptr %i.bjn, i64 %i.bkl
  %next.gep2228 = getelementptr i8, ptr %i.bjn, i64 %i.bkm
  %wide.load2229 = load <2 x double>, ptr %next.gep2227, align 8, !tbaa !247, !alias.scope !619
  %wide.load2230 = load <2 x double>, ptr %next.gep2228, align 8, !tbaa !247, !alias.scope !619
  store <2 x double> %wide.load2229, ptr %next.gep2225, align 8, !tbaa !247, !alias.scope !622, !noalias !619
  store <2 x double> %wide.load2230, ptr %next.gep2226, align 8, !tbaa !247, !alias.scope !622, !noalias !619
  %index.next2231 = add nuw i64 %index2224, 2     ; 2 uses
  %i.bkn = icmp eq i64 %index.next2231, %n.vec2222
  br i1 %i.bkn, label %middle.block2232, label %vector.body2223, !llvm.loop !624

middle.block2232:                                 ; preds = %vector.body2223
  %cmp.n2233 = icmp eq i64 %i.bkd, %n.vec2222
  br i1 %cmp.n2233, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680, label %.lr.ph.i.i.i.i.i.i669.preheader2293

.lr.ph.i.i.i.i.i.i669.preheader2293:              ; preds = %vector.memcheck2212, %.lr.ph.i.i.i.i.i.i669.preheader, %middle.block2232
  %.011.i.i.i.i.i.i670.ph = phi ptr [ %i.bjy, %vector.memcheck2212 ], [ %i.bjy, %.lr.ph.i.i.i.i.i.i669.preheader ], [ %i.bkj, %middle.block2232 ]
  %.0810.i.i.i.i.i.i671.ph = phi ptr [ %i.bjn, %vector.memcheck2212 ], [ %i.bjn, %.lr.ph.i.i.i.i.i.i669.preheader ], [ %i.bkk, %middle.block2232 ]
  br label %.lr.ph.i.i.i.i.i.i669

.lr.ph.i.i.i.i.i.i669:                            ; preds = %.lr.ph.i.i.i.i.i.i669.preheader2293, %.lr.ph.i.i.i.i.i.i669
  %.011.i.i.i.i.i.i670 = phi ptr [ %i.bkt, %.lr.ph.i.i.i.i.i.i669 ], [ %.011.i.i.i.i.i.i670.ph, %.lr.ph.i.i.i.i.i.i669.preheader2293 ] ; 3 uses
  %.0810.i.i.i.i.i.i671 = phi ptr [ %i.bks, %.lr.ph.i.i.i.i.i.i669 ], [ %.0810.i.i.i.i.i.i671.ph, %.lr.ph.i.i.i.i.i.i669.preheader2293 ] ; 3 uses
  %i.bko = load double, ptr %.0810.i.i.i.i.i.i671, align 8, !tbaa !247
  store double %i.bko, ptr %.011.i.i.i.i.i.i670, align 8, !tbaa !247
  %i.bkp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i670, i64 8
  %i.bkq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i671, i64 8
  %i.bkr = load double, ptr %i.bkq, align 8, !tbaa !247
  store double %i.bkr, ptr %i.bkp, align 8, !tbaa !247
  %i.bks = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i671, i64 16 ; 2 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i670, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i672 = icmp eq ptr %i.bks, %i.bjk
  br i1 %.not.i.i.i.i.i.i672, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680, label %.lr.ph.i.i.i.i.i.i669, !llvm.loop !625

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680: ; preds = %.lr.ph.i.i.i.i.i.i669, %middle.block2232, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i665
  %.0.lcssa.i.i.i.i.i.i674 = phi ptr [ %i.bjy, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i665 ], [ %i.bkj, %middle.block2232 ], [ %i.bkt, %.lr.ph.i.i.i.i.i.i669 ]
  %i.bku = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i674, i64 16 ; 2 uses
  %.not.i25.i682 = icmp eq ptr %i.bjn, null
  br i1 %.not.i25.i682, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683, label %bb.ew

bb.ew:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680
  call void @_ZdlPvm(ptr noundef nonnull %i.bjn, i64 noundef %i.bjq) #48
  %.pre1013.pre = load ptr, ptr %i.by, align 8, !tbaa !264
  %.pre1014.pre = load ptr, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680, %bb.ew
  %.pre1014 = phi ptr [ %i.bji, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680 ], [ %.pre1014.pre, %bb.ew ]
  %.pre1013 = phi ptr [ %i.bjj, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i680 ], [ %.pre1013.pre, %bb.ew ]
  store ptr %i.bjy, ptr %i.bj, align 8, !tbaa !279
  store ptr %i.bku, ptr %i.do, align 8, !tbaa !276
  %i.bkv = getelementptr inbounds nuw [16 x i8], ptr %i.bjy, i64 %i.bjw ; 2 uses
  store ptr %i.bkv, ptr %i.dq, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit211

_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit211: ; preds = %bb.et, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683
  %i.bkw = phi ptr [ %i.bjk, %bb.et ], [ %i.bkv, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683 ] ; 2 uses
  %i.bkx = phi ptr [ %i.bjm, %bb.et ], [ %i.bku, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683 ] ; 2 uses
  %i.bky = phi ptr [ %i.bji, %bb.et ], [ %.pre1014, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683 ] ; 4 uses
  %i.bkz = phi ptr [ %i.bjj, %bb.et ], [ %.pre1013, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit683 ] ; 4 uses
  %.not.i.i212 = icmp eq ptr %i.bkz, %i.bky
  br i1 %.not.i.i212, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit211
  store i32 0, ptr %i.bkz, align 4, !tbaa !4
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkz, i64 4
  store i32 0, ptr %i.bla, align 4, !tbaa !4
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bkz, i64 8
  store ptr %i.blb, ptr %i.by, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i213

bb.ey:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit211
  %i.blc = load ptr, ptr %i.a, align 8, !tbaa !267 ; 11 uses
  %i.bld = ptrtoint ptr %i.bky to i64             ; 3 uses
  %i.ble = ptrtoint ptr %i.blc to i64             ; 3 uses
  %i.blf = sub i64 %i.bld, %i.ble                 ; 4 uses
  %i.blg = icmp eq i64 %i.blf, 9223372036854775800
  br i1 %i.blg, label %bb.ez, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i722

bb.ez:                                            ; preds = %bb.ey
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i722: ; preds = %bb.ey
  %i.blh = ashr exact i64 %i.blf, 3               ; 3 uses
  %.sroa.speculated.i.i723 = call i64 @llvm.umax.i64(i64 %i.blh, i64 1)
  %i.bli = add nsw i64 %.sroa.speculated.i.i723, %i.blh ; 2 uses
  %i.blj = icmp ult i64 %i.bli, %i.blh
  %i.blk = call i64 @llvm.umin.i64(i64 %i.bli, i64 1152921504606846975)
  %i.bll = select i1 %i.blj, i64 1152921504606846975, i64 %i.blk ; 3 uses
  %.not.i.i724 = icmp ne i64 %i.bll, 0
  call void @llvm.assume(i1 %.not.i.i724)
  %i.blm = shl nuw nsw i64 %i.bll, 3
  %i.bln = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.blm) #45 ; 11 uses
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bln, i64 %i.blf ; 2 uses
  store i32 0, ptr %i.blo, align 4, !tbaa !4
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blo, i64 4
  store i32 0, ptr %i.blp, align 4, !tbaa !4
  %.not9.i.i.i.i.i.i725 = icmp eq ptr %i.blc, %i.bky
  br i1 %.not9.i.i.i.i.i.i725, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737, label %.lr.ph.i.i.i.i.i.i726.preheader

.lr.ph.i.i.i.i.i.i726.preheader:                  ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i722
  %i.blq = sub i64 %i.bld, %i.ble
  %i.blr = add i64 %i.blq, -8                     ; 2 uses
  %i.bls = lshr i64 %i.blr, 3
  %i.blt = add nuw nsw i64 %i.bls, 1              ; 2 uses
  %min.iters.check2243 = icmp ult i64 %i.blr, 120
  br i1 %min.iters.check2243, label %.lr.ph.i.i.i.i.i.i726.preheader2291, label %vector.memcheck2236

vector.memcheck2236:                              ; preds = %.lr.ph.i.i.i.i.i.i726.preheader
  %i.blu = add i64 %i.bld, -8
  %i.blv = sub i64 %i.blu, %i.ble
  %i.blw = and i64 %i.blv, -8
  %i.blx = add i64 %i.blw, 8                      ; 2 uses
  %scevgep2237 = getelementptr i8, ptr %i.bln, i64 %i.blx
  %scevgep2238 = getelementptr i8, ptr %i.blc, i64 %i.blx
  %bound02239 = icmp ult ptr %i.bln, %scevgep2238
  %bound12240 = icmp ult ptr %i.blc, %scevgep2237
  %found.conflict2241 = and i1 %bound02239, %bound12240
  br i1 %found.conflict2241, label %.lr.ph.i.i.i.i.i.i726.preheader2291, label %vector.ph2244

vector.ph2244:                                    ; preds = %vector.memcheck2236
  %n.vec2246 = and i64 %i.blt, 4611686018427387900 ; 3 uses
  %i.bly = shl i64 %n.vec2246, 3                  ; 2 uses
  %i.blz = getelementptr i8, ptr %i.bln, i64 %i.bly ; 2 uses
  %i.bma = getelementptr i8, ptr %i.blc, i64 %i.bly
  br label %vector.body2247

vector.body2247:                                  ; preds = %vector.body2247, %vector.ph2244
  %index2248 = phi i64 [ 0, %vector.ph2244 ], [ %index.next2261, %vector.body2247 ] ; 2 uses
  %i.bmb = shl i64 %index2248, 3                  ; 3 uses
  %i.bmc = or disjoint i64 %i.bmb, 16             ; 2 uses
  %next.gep2249 = getelementptr i8, ptr %i.bln, i64 %i.bmb
  %next.gep2250 = getelementptr i8, ptr %i.bln, i64 %i.bmc
  %next.gep2251 = getelementptr i8, ptr %i.blc, i64 %i.bmb
  %next.gep2252 = getelementptr i8, ptr %i.blc, i64 %i.bmc
  %wide.vec2253 = load <4 x i32>, ptr %next.gep2251, align 4, !tbaa !236, !alias.scope !626
  %wide.vec2256 = load <4 x i32>, ptr %next.gep2252, align 4, !tbaa !236, !alias.scope !626
  store <4 x i32> %wide.vec2253, ptr %next.gep2249, align 4, !tbaa !4, !alias.scope !629, !noalias !626
  store <4 x i32> %wide.vec2256, ptr %next.gep2250, align 4, !tbaa !4, !alias.scope !629, !noalias !626
  %index.next2261 = add nuw i64 %index2248, 4     ; 2 uses
  %i.bmd = icmp eq i64 %index.next2261, %n.vec2246
  br i1 %i.bmd, label %middle.block2262, label %vector.body2247, !llvm.loop !631

middle.block2262:                                 ; preds = %vector.body2247
  %cmp.n2263 = icmp eq i64 %i.blt, %n.vec2246
  br i1 %cmp.n2263, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737, label %.lr.ph.i.i.i.i.i.i726.preheader2291

.lr.ph.i.i.i.i.i.i726.preheader2291:              ; preds = %vector.memcheck2236, %.lr.ph.i.i.i.i.i.i726.preheader, %middle.block2262
  %.011.i.i.i.i.i.i727.ph = phi ptr [ %i.bln, %vector.memcheck2236 ], [ %i.bln, %.lr.ph.i.i.i.i.i.i726.preheader ], [ %i.blz, %middle.block2262 ]
  %.0810.i.i.i.i.i.i728.ph = phi ptr [ %i.blc, %vector.memcheck2236 ], [ %i.blc, %.lr.ph.i.i.i.i.i.i726.preheader ], [ %i.bma, %middle.block2262 ]
  br label %.lr.ph.i.i.i.i.i.i726

.lr.ph.i.i.i.i.i.i726:                            ; preds = %.lr.ph.i.i.i.i.i.i726.preheader2291, %.lr.ph.i.i.i.i.i.i726
  %.011.i.i.i.i.i.i727 = phi ptr [ %i.bmj, %.lr.ph.i.i.i.i.i.i726 ], [ %.011.i.i.i.i.i.i727.ph, %.lr.ph.i.i.i.i.i.i726.preheader2291 ] ; 3 uses
  %.0810.i.i.i.i.i.i728 = phi ptr [ %i.bmi, %.lr.ph.i.i.i.i.i.i726 ], [ %.0810.i.i.i.i.i.i728.ph, %.lr.ph.i.i.i.i.i.i726.preheader2291 ] ; 3 uses
  %i.bme = load i32, ptr %.0810.i.i.i.i.i.i728, align 4, !tbaa !236
  store i32 %i.bme, ptr %.011.i.i.i.i.i.i727, align 4, !tbaa !4
  %i.bmf = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i727, i64 4
  %i.bmg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i728, i64 4
  %i.bmh = load i32, ptr %i.bmg, align 4, !tbaa !236
  store i32 %i.bmh, ptr %i.bmf, align 4, !tbaa !4
  %i.bmi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i728, i64 8 ; 2 uses
  %i.bmj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i727, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i729 = icmp eq ptr %i.bmi, %i.bky
  br i1 %.not.i.i.i.i.i.i729, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737, label %.lr.ph.i.i.i.i.i.i726, !llvm.loop !632

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737: ; preds = %.lr.ph.i.i.i.i.i.i726, %middle.block2262, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i722
  %.0.lcssa.i.i.i.i.i.i731 = phi ptr [ %i.bln, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i722 ], [ %i.blz, %middle.block2262 ], [ %i.bmj, %.lr.ph.i.i.i.i.i.i726 ]
  %i.bmk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i731, i64 8
  %.not.i25.i739 = icmp eq ptr %i.blc, null
  br i1 %.not.i25.i739, label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit740, label %bb.fa

bb.fa:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737
  call void @_ZdlPvm(ptr noundef nonnull %i.blc, i64 noundef %i.blf) #48
  %.pre1015.pre = load ptr, ptr %i.do, align 8, !tbaa !276
  %.pre1016.pre = load ptr, ptr %i.dq, align 8, !tbaa !280
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit740

_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit740: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737, %bb.fa
  %.pre1016 = phi ptr [ %i.bkw, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737 ], [ %.pre1016.pre, %bb.fa ]
  %.pre1015 = phi ptr [ %i.bkx, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i737 ], [ %.pre1015.pre, %bb.fa ]
  store ptr %i.bln, ptr %i.a, align 8, !tbaa !267
  store ptr %i.bmk, ptr %i.by, align 8, !tbaa !264
  %i.bml = getelementptr inbounds nuw [8 x i8], ptr %i.bln, i64 %i.bll
  store ptr %i.bml, ptr %i.ca, align 8, !tbaa !268
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i213

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i213: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit740, %bb.ex
  %i.bmm = phi ptr [ %.pre1016, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit740 ], [ %i.bkw, %bb.ex ] ; 4 uses
  %i.bmn = phi ptr [ %.pre1015, %_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit740 ], [ %i.bkx, %bb.ex ] ; 3 uses
  %.not.i3.i214 = icmp eq ptr %i.bmn, %i.bmm
  br i1 %.not.i3.i214, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i213
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bmn, align 8, !tbaa !247
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmn, i64 16
  store ptr %i.bmo, ptr %i.do, align 8, !tbaa !276
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit215

bb.fc:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit.i213
  %i.bmp = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 11 uses
  %i.bmq = ptrtoint ptr %i.bmm to i64             ; 3 uses
  %i.bmr = ptrtoint ptr %i.bmp to i64             ; 3 uses
  %i.bms = sub i64 %i.bmq, %i.bmr                 ; 4 uses
  %i.bmt = icmp eq i64 %i.bms, 9223372036854775792
  br i1 %i.bmt, label %bb.fd, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i703

bb.fd:                                            ; preds = %bb.fc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i703: ; preds = %bb.fc
  %i.bmu = ashr exact i64 %i.bms, 4               ; 3 uses
  %.sroa.speculated.i.i704 = call i64 @llvm.umax.i64(i64 %i.bmu, i64 1)
  %i.bmv = add nsw i64 %.sroa.speculated.i.i704, %i.bmu ; 2 uses
  %i.bmw = icmp ult i64 %i.bmv, %i.bmu
  %i.bmx = call i64 @llvm.umin.i64(i64 %i.bmv, i64 576460752303423487)
  %i.bmy = select i1 %i.bmw, i64 576460752303423487, i64 %i.bmx ; 3 uses
  %.not.i.i705 = icmp ne i64 %i.bmy, 0
  call void @llvm.assume(i1 %.not.i.i705)
  %i.bmz = shl nuw nsw i64 %i.bmy, 4
  %i.bna = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bmz) #45 ; 11 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 %i.bms
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.bnb, align 8, !tbaa !247
  %.not9.i.i.i.i.i.i706 = icmp eq ptr %i.bmp, %i.bmm
  br i1 %.not9.i.i.i.i.i.i706, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i718, label %.lr.ph.i.i.i.i.i.i707.preheader

.lr.ph.i.i.i.i.i.i707.preheader:                  ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i703
  %i.bnc = sub i64 %i.bmq, %i.bmr
  %i.bnd = add i64 %i.bnc, -16                    ; 2 uses
  %i.bne = lshr i64 %i.bnd, 4
  %i.bnf = add nuw nsw i64 %i.bne, 1              ; 2 uses
  %min.iters.check2273 = icmp ult i64 %i.bnd, 240
  br i1 %min.iters.check2273, label %.lr.ph.i.i.i.i.i.i707.preheader2290, label %vector.memcheck2266

vector.memcheck2266:                              ; preds = %.lr.ph.i.i.i.i.i.i707.preheader
  %i.bng = add i64 %i.bmq, -16
  %i.bnh = sub i64 %i.bng, %i.bmr
  %i.bni = and i64 %i.bnh, -16
  %i.bnj = add i64 %i.bni, 16                     ; 2 uses
  %scevgep2267 = getelementptr i8, ptr %i.bna, i64 %i.bnj
  %scevgep2268 = getelementptr i8, ptr %i.bmp, i64 %i.bnj
  %bound02269 = icmp ult ptr %i.bna, %scevgep2268
  %bound12270 = icmp ult ptr %i.bmp, %scevgep2267
  %found.conflict2271 = and i1 %bound02269, %bound12270
  br i1 %found.conflict2271, label %.lr.ph.i.i.i.i.i.i707.preheader2290, label %vector.ph2274

vector.ph2274:                                    ; preds = %vector.memcheck2266
  %n.vec2276 = and i64 %i.bnf, 2305843009213693950 ; 3 uses
  %i.bnk = shl i64 %n.vec2276, 4                  ; 2 uses
  %i.bnl = getelementptr i8, ptr %i.bna, i64 %i.bnk ; 2 uses
  %i.bnm = getelementptr i8, ptr %i.bmp, i64 %i.bnk
  br label %vector.body2277

vector.body2277:                                  ; preds = %vector.body2277, %vector.ph2274
  %index2278 = phi i64 [ 0, %vector.ph2274 ], [ %index.next2285, %vector.body2277 ] ; 2 uses
  %i.bnn = shl i64 %index2278, 4                  ; 3 uses
  %i.bno = or disjoint i64 %i.bnn, 16             ; 2 uses
  %next.gep2279 = getelementptr i8, ptr %i.bna, i64 %i.bnn
  %next.gep2280 = getelementptr i8, ptr %i.bna, i64 %i.bno
  %next.gep2281 = getelementptr i8, ptr %i.bmp, i64 %i.bnn
  %next.gep2282 = getelementptr i8, ptr %i.bmp, i64 %i.bno
  %wide.load2283 = load <2 x double>, ptr %next.gep2281, align 8, !tbaa !247, !alias.scope !633
  %wide.load2284 = load <2 x double>, ptr %next.gep2282, align 8, !tbaa !247, !alias.scope !633
  store <2 x double> %wide.load2283, ptr %next.gep2279, align 8, !tbaa !247, !alias.scope !636, !noalias !633
  store <2 x double> %wide.load2284, ptr %next.gep2280, align 8, !tbaa !247, !alias.scope !636, !noalias !633
  %index.next2285 = add nuw i64 %index2278, 2     ; 2 uses
  %i.bnp = icmp eq i64 %index.next2285, %n.vec2276
  br i1 %i.bnp, label %middle.block2286, label %vector.body2277, !llvm.loop !638

middle.block2286:                                 ; preds = %vector.body2277
  %cmp.n2287 = icmp eq i64 %i.bnf, %n.vec2276
  br i1 %cmp.n2287, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i718, label %.lr.ph.i.i.i.i.i.i707.preheader2290

.lr.ph.i.i.i.i.i.i707.preheader2290:              ; preds = %vector.memcheck2266, %.lr.ph.i.i.i.i.i.i707.preheader, %middle.block2286
  %.011.i.i.i.i.i.i708.ph = phi ptr [ %i.bna, %vector.memcheck2266 ], [ %i.bna, %.lr.ph.i.i.i.i.i.i707.preheader ], [ %i.bnl, %middle.block2286 ]
  %.0810.i.i.i.i.i.i709.ph = phi ptr [ %i.bmp, %vector.memcheck2266 ], [ %i.bmp, %.lr.ph.i.i.i.i.i.i707.preheader ], [ %i.bnm, %middle.block2286 ]
  br label %.lr.ph.i.i.i.i.i.i707

.lr.ph.i.i.i.i.i.i707:                            ; preds = %.lr.ph.i.i.i.i.i.i707.preheader2290, %.lr.ph.i.i.i.i.i.i707
  %.011.i.i.i.i.i.i708 = phi ptr [ %i.bnv, %.lr.ph.i.i.i.i.i.i707 ], [ %.011.i.i.i.i.i.i708.ph, %.lr.ph.i.i.i.i.i.i707.preheader2290 ] ; 3 uses
  %.0810.i.i.i.i.i.i709 = phi ptr [ %i.bnu, %.lr.ph.i.i.i.i.i.i707 ], [ %.0810.i.i.i.i.i.i709.ph, %.lr.ph.i.i.i.i.i.i707.preheader2290 ] ; 3 uses
  %i.bnq = load double, ptr %.0810.i.i.i.i.i.i709, align 8, !tbaa !247
  store double %i.bnq, ptr %.011.i.i.i.i.i.i708, align 8, !tbaa !247
  %i.bnr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i708, i64 8
  %i.bns = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i709, i64 8
  %i.bnt = load double, ptr %i.bns, align 8, !tbaa !247
  store double %i.bnt, ptr %i.bnr, align 8, !tbaa !247
  %i.bnu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i709, i64 16 ; 2 uses
  %i.bnv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i708, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i710 = icmp eq ptr %i.bnu, %i.bmm
  br i1 %.not.i.i.i.i.i.i710, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i718, label %.lr.ph.i.i.i.i.i.i707, !llvm.loop !639

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i718: ; preds = %.lr.ph.i.i.i.i.i.i707, %middle.block2286, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i703
  %.0.lcssa.i.i.i.i.i.i712 = phi ptr [ %i.bna, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i703 ], [ %i.bnl, %middle.block2286 ], [ %i.bnv, %.lr.ph.i.i.i.i.i.i707 ]
  %i.bnw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i712, i64 16
  %.not.i25.i720 = icmp eq ptr %i.bmp, null
  br i1 %.not.i25.i720, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit721, label %bb.fe

bb.fe:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i718
  call void @_ZdlPvm(ptr noundef nonnull %i.bmp, i64 noundef %i.bms) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit721

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit721: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i718, %bb.fe
  store ptr %i.bna, ptr %i.bj, align 8, !tbaa !279
  store ptr %i.bnw, ptr %i.do, align 8, !tbaa !276
  %i.bnx = getelementptr inbounds nuw [16 x i8], ptr %i.bna, i64 %i.bmy
  store ptr %i.bnx, ptr %i.dq, align 8, !tbaa !280
  br label %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit215

_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit215: ; preds = %bb.fb, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit721
  %i.bny = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %i.bnz = load ptr, ptr %i.bny, align 8, !tbaa !260
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 8
  %i.bob = load ptr, ptr %i.boa, align 8, !tbaa !262 ; 3 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 168
  %i.bod = load i64, ptr %1, align 8
  store i64 %i.bod, ptr %i.boc, align 8
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bob, i64 176
  %i.bof = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.boe, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bob, i64 200
  %i.boh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bog, ptr noundef nonnull align 8 dereferenceable(24) %i.bj) ; 0 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.boj = load ptr, ptr %i.boi, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i220 = icmp eq ptr %i.boj, null
  br i1 %.not.i.i.i220, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221, label %bb.fn

bb.ff:                                            ; preds = %.preheader.preheader
  store ptr %i.awy, ptr %i.fm, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217:  ; preds = %.preheader.preheader, %bb.ff
  %i.bok = load ptr, ptr %3, align 16, !tbaa !279 ; 2 uses
  %i.bol = load ptr, ptr %i.hc, align 8, !tbaa !276
  %.not.i.i218 = icmp eq ptr %i.bol, %i.bok
  br i1 %.not.i.i218, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219, label %bb.fg

bb.fg:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217
  store ptr %i.bok, ptr %i.hc, align 8, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217, %bb.fg
  %i.bom = load ptr, ptr %i.iq, align 8, !tbaa !267 ; 2 uses
  %i.bon = load ptr, ptr %i.aof, align 16, !tbaa !264
  %.not.i.i216.1 = icmp eq ptr %i.bon, %i.bom
  br i1 %.not.i.i216.1, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219
  store ptr %i.bom, ptr %i.aof, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1: ; preds = %bb.fh, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219
  %i.boo = load ptr, ptr %i.is, align 8, !tbaa !279 ; 2 uses
  %i.bop = load ptr, ptr %i.aoi, align 16, !tbaa !276
  %.not.i.i218.1 = icmp eq ptr %i.bop, %i.boo
  br i1 %.not.i.i218.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1
  store ptr %i.boo, ptr %i.aoi, align 16, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1: ; preds = %bb.fi, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1
  %i.boq = load ptr, ptr %i.ly, align 16, !tbaa !267 ; 2 uses
  %i.bor = load ptr, ptr %i.aol, align 8, !tbaa !264
  %.not.i.i216.11001 = icmp eq ptr %i.bor, %i.boq
  br i1 %.not.i.i216.11001, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.11003, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1
  store ptr %i.boq, ptr %i.aol, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.11003

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.11003: ; preds = %bb.fj, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1
  %i.bos = load ptr, ptr %i.lz, align 16, !tbaa !279 ; 2 uses
  %i.bot = load ptr, ptr %i.aoo, align 8, !tbaa !276
  %.not.i.i218.11002 = icmp eq ptr %i.bot, %i.bos
  br i1 %.not.i.i218.11002, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.11004, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.11003
  store ptr %i.bos, ptr %i.aoo, align 8, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.11004

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.11004: ; preds = %bb.fk, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.11003
  %i.bou = load ptr, ptr %i.aoq, align 8, !tbaa !267 ; 2 uses
  %i.bov = load ptr, ptr %i.aos, align 16, !tbaa !264
  %.not.i.i216.1.1 = icmp eq ptr %i.bov, %i.bou
  br i1 %.not.i.i216.1.1, label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1.1, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.11004
  store ptr %i.bou, ptr %i.aos, align 16, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1.1

_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1.1: ; preds = %bb.fl, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.11004
  %i.bow = load ptr, ptr %i.aou, align 8, !tbaa !279 ; 2 uses
  %i.box = load ptr, ptr %i.aow, align 16, !tbaa !276
  %.not.i.i218.1.1 = icmp eq ptr %i.box, %i.bow
  br i1 %.not.i.i218.1.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1.1, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1.1
  store ptr %i.bow, ptr %i.aow, align 16, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1.1

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE5clearEv.exit219.1.1: ; preds = %bb.fm, %_ZNSt6vectorI3LocILi2EESaIS1_EE5clearEv.exit217.1.1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #47
  %i.boy = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, i8 0, i64 56, i1 false)
  store i64 0, ptr %1, align 8
  %i.boz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.boy) ; 0 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.bpb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bpa) ; 0 uses
  %i.bpc = load ptr, ptr %i.bpa, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i188 = icmp eq ptr %i.bpc, null
  br i1 %.not.i.i.i.i188, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i189, label %bb.dn

bb.fn:                                            ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit215
  %i.bpd = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !280
  %i.bpf = ptrtoint ptr %i.bpe to i64
  %i.bpg = ptrtoint ptr %i.boj to i64
  %i.bph = sub i64 %i.bpf, %i.bpg
  call void @_ZdlPvm(ptr noundef nonnull %i.boj, i64 noundef %i.bph) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221: ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit215, %bb.fn
  %i.bpi = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bpj = load ptr, ptr %i.bpi, align 16, !tbaa !279 ; 3 uses
  %.not.i.i.i220.1 = icmp eq ptr %i.bpj, null
  br i1 %.not.i.i.i220.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.1, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221
  %i.bpk = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bpl = load ptr, ptr %i.bpk, align 16, !tbaa !280
  %i.bpm = ptrtoint ptr %i.bpl to i64
  %i.bpn = ptrtoint ptr %i.bpj to i64
end_hunk_3
begin_hunk_4_@_ZN18CanonicalCenteringILi2EEC2Ev:bb.a

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.2: ; preds = %bb.fp, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.1
  %i.bpw = load ptr, ptr %3, align 16, !tbaa !279 ; 3 uses
  %.not.i.i.i220.3 = icmp eq ptr %i.bpw, null
  br i1 %.not.i.i.i220.3, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.3, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.2
  %i.bpx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bpy = load ptr, ptr %i.bpx, align 16, !tbaa !280
  %i.bpz = ptrtoint ptr %i.bpy to i64
  %i.bqa = ptrtoint ptr %i.bpw to i64
  %i.bqb = sub i64 %i.bpz, %i.bqa
  call void @_ZdlPvm(ptr noundef nonnull %i.bpw, i64 noundef %i.bqb) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.3

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.3: ; preds = %bb.fq, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.bqc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bqd = load ptr, ptr %i.bqc, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i222 = icmp eq ptr %i.bqd, null
  br i1 %.not.i.i.i222, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223, label %bb.fr

bb.fr:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.3
  %i.bqe = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bqf = load ptr, ptr %i.bqe, align 8, !tbaa !268
  %i.bqg = ptrtoint ptr %i.bqf to i64
  %i.bqh = ptrtoint ptr %i.bqd to i64
  %i.bqi = sub i64 %i.bqg, %i.bqh
  call void @_ZdlPvm(ptr noundef nonnull %i.bqd, i64 noundef %i.bqi) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223:      ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit221.3, %bb.fr
  %i.bqj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bqk = load ptr, ptr %i.bqj, align 16, !tbaa !267 ; 3 uses
  %.not.i.i.i222.1 = icmp eq ptr %i.bqk, null
  br i1 %.not.i.i.i222.1, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.1, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223
  %i.bql = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bqm = load ptr, ptr %i.bql, align 16, !tbaa !268
  %i.bqn = ptrtoint ptr %i.bqm to i64
  %i.bqo = ptrtoint ptr %i.bqk to i64
  %i.bqp = sub i64 %i.bqn, %i.bqo
  call void @_ZdlPvm(ptr noundef nonnull %i.bqk, i64 noundef %i.bqp) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.1

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.1:    ; preds = %bb.fs, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223
  %i.bqq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bqr = load ptr, ptr %i.bqq, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i222.2 = icmp eq ptr %i.bqr, null
  br i1 %.not.i.i.i222.2, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.2, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.1
  %i.bqs = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bqt = load ptr, ptr %i.bqs, align 8, !tbaa !268
  %i.bqu = ptrtoint ptr %i.bqt to i64
  %i.bqv = ptrtoint ptr %i.bqr to i64
  %i.bqw = sub i64 %i.bqu, %i.bqv
  call void @_ZdlPvm(ptr noundef nonnull %i.bqr, i64 noundef %i.bqw) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.2

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.2:    ; preds = %bb.ft, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.1
  %i.bqx = load ptr, ptr %2, align 16, !tbaa !267 ; 3 uses
  %.not.i.i.i222.3 = icmp eq ptr %i.bqx, null
  br i1 %.not.i.i.i222.3, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.3, label %bb.fu

bb.fu:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.2
  %i.bqy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bqz = load ptr, ptr %i.bqy, align 16, !tbaa !268
  %i.bra = ptrtoint ptr %i.bqz to i64
  %i.brb = ptrtoint ptr %i.bqx to i64
  %i.brc = sub i64 %i.bra, %i.brb
  call void @_ZdlPvm(ptr noundef nonnull %i.bqx, i64 noundef %i.brc) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.3

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.3:    ; preds = %bb.fu, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.brd = load ptr, ptr %i.bj, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i224 = icmp eq ptr %i.brd, null
  br i1 %.not.i.i.i.i224, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i225, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.3
  %i.bre = load ptr, ptr %i.dq, align 8, !tbaa !280
  %i.brf = ptrtoint ptr %i.bre to i64
  %i.brg = ptrtoint ptr %i.brd to i64
  %i.brh = sub i64 %i.brf, %i.brg
  call void @_ZdlPvm(ptr noundef nonnull %i.brd, i64 noundef %i.brh) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i225

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i225: ; preds = %bb.fv, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit223.3
  %i.bri = load ptr, ptr %i.a, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i226 = icmp eq ptr %i.bri, null
  br i1 %.not.i.i.i1.i226, label %_ZN9CenteringILi2EED2Ev.exit227, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i225
  %i.brj = load ptr, ptr %i.ca, align 8, !tbaa !268
  %i.brk = ptrtoint ptr %i.brj to i64
  %i.brl = ptrtoint ptr %i.bri to i64
  %i.brm = sub i64 %i.brk, %i.brl
  call void @_ZdlPvm(ptr noundef nonnull %i.bri, i64 noundef %i.brm) #48
  br label %_ZN9CenteringILi2EED2Ev.exit227

_ZN9CenteringILi2EED2Ev.exit227:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i225, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !236
  store i32 %i.e, ptr %i.b, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !236
  store i32 %i.h, ptr %i.f, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.a, align 8, !tbaa !264
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 4 dereferenceable(8) %2)
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !276  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !280
  %.not.i4 = icmp eq ptr %i.k, %i.m
  br i1 %.not.i4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit
  %i.n = load double, ptr %3, align 8, !tbaa !247
  store double %i.n, ptr %i.k, align 8, !tbaa !247
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !247
  store double %i.q, ptr %i.o, align 8, !tbaa !247
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.r, ptr %i.j, align 8, !tbaa !276
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit
  tail call void @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !267    ; 24 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !268
  %i.j = load ptr, ptr %0, align 8, !tbaa !267    ; 22 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 5 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 10 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit.i
  %i.q = sub i64 %i.d, %i.e
  %i.r = add i64 %i.q, -8                         ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check125 = icmp ult i64 %i.r, 120
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.i.preheader148, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.u = add i64 %i.d, -8
  %i.v = sub i64 %i.u, %i.e
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep119 = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep120 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0121 = icmp ult ptr %i.p, %scevgep120
  %bound1122 = icmp ult ptr %i.c, %scevgep119
  %found.conflict123 = and i1 %bound0121, %bound1122
  br i1 %found.conflict123, label %.lr.ph.i.i.i.i.i.preheader148, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck118
  %n.vec128 = and i64 %i.t, 4611686018427387900   ; 3 uses
  %i.y = shl i64 %n.vec128, 3                     ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next143, %vector.body129 ] ; 2 uses
  %i.ab = shl i64 %index130, 3                    ; 3 uses
  %i.ac = or disjoint i64 %i.ab, 16               ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.p, i64 %i.ab
  %next.gep132 = getelementptr i8, ptr %i.p, i64 %i.ac
  %next.gep133 = getelementptr i8, ptr %i.c, i64 %i.ab
  %next.gep134 = getelementptr i8, ptr %i.c, i64 %i.ac
  %wide.vec135 = load <4 x i32>, ptr %next.gep133, align 4, !tbaa !236, !alias.scope !640
  %wide.vec138 = load <4 x i32>, ptr %next.gep134, align 4, !tbaa !236, !alias.scope !640
  store <4 x i32> %wide.vec135, ptr %next.gep131, align 4, !tbaa !4, !alias.scope !643, !noalias !640
  store <4 x i32> %wide.vec138, ptr %next.gep132, align 4, !tbaa !4, !alias.scope !643, !noalias !640
  %index.next143 = add nuw i64 %index130, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next143, %n.vec128
  br i1 %i.ad, label %middle.block144, label %vector.body129, !llvm.loop !645

middle.block144:                                  ; preds = %vector.body129
  %cmp.n145 = icmp eq i64 %i.t, %n.vec128
  br i1 %cmp.n145, label %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i.preheader148

.lr.ph.i.i.i.i.i.preheader148:                    ; preds = %vector.memcheck118, %.lr.ph.i.i.i.i.i.preheader, %middle.block144
  %.09.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck118 ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block144 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck118 ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block144 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader148, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader148 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader148 ] ; 3 uses
  %i.ae = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ae, ptr %.09.i.i.i.i.i, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !236
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !646

_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block144, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #48
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !267
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !268
  br label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !264 ; 9 uses
  %i.an = ptrtoint ptr %i.am to i64               ; 4 uses
  %i.ao = sub i64 %i.an, %i.l                     ; 4 uses
  %.not24 = icmp ult i64 %i.ao, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp sgt i64 %i.g, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i25.preheader, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i25.preheader:                     ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i25.preheader151, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i25.preheader
  %scevgep = getelementptr i8, ptr %i.j, i64 %i.f
  %bound0 = icmp ult ptr %i.j, %i.b
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i25.preheader151, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775804      ; 3 uses
  %i.aq = and i64 %i.g, 3
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.j, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.c, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 3 uses
  %i.av = or disjoint i64 %i.au, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.au
  %next.gep47 = getelementptr i8, ptr %i.j, i64 %i.av
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.au
  %next.gep49 = getelementptr i8, ptr %i.c, i64 %i.av
  %wide.vec = load <4 x i32>, ptr %next.gep48, align 4, !tbaa !236, !alias.scope !647
  %wide.vec51 = load <4 x i32>, ptr %next.gep49, align 4, !tbaa !236, !alias.scope !647
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !650, !noalias !647
  store <4 x i32> %wide.vec51, ptr %next.gep47, align 4, !tbaa !4, !alias.scope !650, !noalias !647
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !652

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i25.preheader151

.lr.ph.i.i.i.i.i25.preheader151:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i25.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.aq, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.as, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25.preheader151, %.lr.ph.i.i.i.i.i25
  %.012.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i25 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i25.preheader151 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i25 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i25.preheader151 ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i25 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i25.preheader151 ] ; 3 uses
  %i.ax = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ax, ptr %.0811.i.i.i.i.i, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !236
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bd = add nsw i64 %.012.i.i.i.i.i, -1
  %i.be = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i25, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !653

bb.h:                                             ; preds = %bb.f
  %i.bf = getelementptr i8, ptr %i.c, i64 %i.ao   ; 7 uses
  %i.bg = ashr exact i64 %i.ao, 3                 ; 7 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i27.preheader, label %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i27.preheader:                     ; preds = %bb.h
  %min.iters.check64 = icmp ult i64 %i.bg, 6
  br i1 %min.iters.check64, label %.lr.ph.i.i.i.i.i27.preheader150, label %vector.memcheck57

vector.memcheck57:                                ; preds = %.lr.ph.i.i.i.i.i27.preheader
  %scevgep59 = getelementptr i8, ptr %i.c, i64 %i.ao
  %bound060 = icmp ult ptr %i.j, %scevgep59
  %bound161 = icmp ult ptr %i.c, %i.am
  %found.conflict62 = and i1 %bound060, %bound161
  br i1 %found.conflict62, label %.lr.ph.i.i.i.i.i27.preheader150, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck57
  %n.vec67 = and i64 %i.bg, 9223372036854775804   ; 3 uses
  %i.bi = and i64 %i.bg, 3
  %i.bj = shl i64 %n.vec67, 3                     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.j, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.c, i64 %i.bj
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next82, %vector.body68 ] ; 2 uses
  %i.bm = shl i64 %index69, 3                     ; 3 uses
  %i.bn = or disjoint i64 %i.bm, 16               ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.j, i64 %i.bm
  %next.gep71 = getelementptr i8, ptr %i.j, i64 %i.bn
  %next.gep72 = getelementptr i8, ptr %i.c, i64 %i.bm
  %next.gep73 = getelementptr i8, ptr %i.c, i64 %i.bn
  %wide.vec74 = load <4 x i32>, ptr %next.gep72, align 4, !tbaa !236, !alias.scope !654
  %wide.vec77 = load <4 x i32>, ptr %next.gep73, align 4, !tbaa !236, !alias.scope !654
  store <4 x i32> %wide.vec74, ptr %next.gep70, align 4, !tbaa !4, !alias.scope !657, !noalias !654
  store <4 x i32> %wide.vec77, ptr %next.gep71, align 4, !tbaa !4, !alias.scope !657, !noalias !654
  %index.next82 = add nuw i64 %index69, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next82, %n.vec67
  br i1 %i.bo, label %middle.block83, label %vector.body68, !llvm.loop !659

middle.block83:                                   ; preds = %vector.body68
  %cmp.n84 = icmp eq i64 %i.bg, %n.vec67
  br i1 %cmp.n84, label %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i27.preheader150

.lr.ph.i.i.i.i.i27.preheader150:                  ; preds = %vector.memcheck57, %.lr.ph.i.i.i.i.i27.preheader, %middle.block83
  %.012.i.i.i.i.i28.ph = phi i64 [ %i.bg, %vector.memcheck57 ], [ %i.bg, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bi, %middle.block83 ]
  %.0811.i.i.i.i.i29.ph = phi ptr [ %i.j, %vector.memcheck57 ], [ %i.j, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bk, %middle.block83 ]
  %.0910.i.i.i.i.i30.ph = phi ptr [ %i.c, %vector.memcheck57 ], [ %i.c, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bl, %middle.block83 ]
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27.preheader150, %.lr.ph.i.i.i.i.i27
  %.012.i.i.i.i.i28 = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i27 ], [ %.012.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i27.preheader150 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i27 ], [ %.0811.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i27.preheader150 ] ; 3 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i27 ], [ %.0910.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i27.preheader150 ] ; 3 uses
  %i.bp = load i32, ptr %.0910.i.i.i.i.i30, align 4, !tbaa !236
  store i32 %i.bp, ptr %.0811.i.i.i.i.i29, align 4, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !236
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 8
  %i.bv = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.bw = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit, !llvm.loop !660

_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit:        ; preds = %.lr.ph.i.i.i.i.i27, %middle.block83, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bf, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit
  %i.bx = add i64 %i.l, %i.d
  %i.by = add i64 %i.e, %i.an
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = add i64 %i.bz, -8                       ; 2 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check95 = icmp ult i64 %i.ca, 200
  br i1 %min.iters.check95, label %.lr.ph.i.i.i.i.preheader149, label %vector.memcheck88

vector.memcheck88:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cd = add i64 %i.l, %i.d
  %i.ce = add i64 %i.cd, -8
  %i.cf = add i64 %i.e, %i.an
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = and i64 %i.cg, -8                       ; 2 uses
  %i.ci = getelementptr i8, ptr %i.am, i64 %i.ch
  %scevgep89 = getelementptr i8, ptr %i.ci, i64 8
  %i.cj = add i64 %i.ch, %i.an
  %i.ck = add i64 %i.cj, 8
  %i.cl = sub i64 %i.ck, %i.l
  %scevgep90 = getelementptr i8, ptr %i.c, i64 %i.cl
  %bound091 = icmp ult ptr %i.am, %scevgep90
  %bound192 = icmp ult ptr %i.bf, %scevgep89
  %found.conflict93 = and i1 %bound091, %bound192
  br i1 %found.conflict93, label %.lr.ph.i.i.i.i.preheader149, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck88
  %n.vec98 = and i64 %i.cc, 4611686018427387900   ; 3 uses
  %i.cm = shl i64 %n.vec98, 3                     ; 2 uses
  %i.cn = getelementptr i8, ptr %i.am, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bf, i64 %i.cm
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph96
  %index100 = phi i64 [ 0, %vector.ph96 ], [ %index.next113, %vector.body99 ] ; 2 uses
  %i.cp = shl i64 %index100, 3                    ; 3 uses
  %i.cq = or disjoint i64 %i.cp, 16               ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.am, i64 %i.cp
  %next.gep102 = getelementptr i8, ptr %i.am, i64 %i.cq
  %next.gep103 = getelementptr i8, ptr %i.bf, i64 %i.cp
  %next.gep104 = getelementptr i8, ptr %i.bf, i64 %i.cq
  %wide.vec105 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !236, !alias.scope !661
  %wide.vec108 = load <4 x i32>, ptr %next.gep104, align 4, !tbaa !236, !alias.scope !661
  store <4 x i32> %wide.vec105, ptr %next.gep101, align 4, !tbaa !4, !alias.scope !664, !noalias !661
  store <4 x i32> %wide.vec108, ptr %next.gep102, align 4, !tbaa !4, !alias.scope !664, !noalias !661
  %index.next113 = add nuw i64 %index100, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next113, %n.vec98
  br i1 %i.cr, label %middle.block114, label %vector.body99, !llvm.loop !666

middle.block114:                                  ; preds = %vector.body99
  %cmp.n115 = icmp eq i64 %i.cc, %n.vec98
  br i1 %cmp.n115, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader149

.lr.ph.i.i.i.i.preheader149:                      ; preds = %vector.memcheck88, %.lr.ph.i.i.i.i.preheader, %middle.block114
  %.011.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck88 ], [ %i.am, %.lr.ph.i.i.i.i.preheader ], [ %i.cn, %middle.block114 ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck88 ], [ %i.bf, %.lr.ph.i.i.i.i.preheader ], [ %i.co, %middle.block114 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader149, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader149 ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader149 ] ; 3 uses
  %i.cs = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !236
  store i32 %i.cs, ptr %.011.i.i.i.i, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !236
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cw, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !667

_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.i.i.i.i, %middle.block, %middle.block114, %bb.g, %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.cy = phi ptr [ %i.j, %middle.block114 ], [ %i.p, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i25 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.f
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !264
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !276  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !279    ; 21 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !280
  %i.j = load ptr, ptr %0, align 8, !tbaa !279    ; 19 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 5 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 10 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit.i
  %i.q = sub i64 %i.d, %i.e
  %i.r = add i64 %i.q, -16                        ; 2 uses
  %i.s = lshr i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check62 = icmp ult i64 %i.r, 240
  br i1 %min.iters.check62, label %.lr.ph.i.i.i.i.i.preheader79, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.u = add i64 %i.d, -16
  %i.v = sub i64 %i.u, %i.e
  %i.w = and i64 %i.v, -16
  %i.x = add i64 %i.w, 16                         ; 2 uses
  %scevgep56 = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep57 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound058 = icmp ult ptr %i.p, %scevgep57
  %bound159 = icmp ult ptr %i.c, %scevgep56
  %found.conflict60 = and i1 %bound058, %bound159
  br i1 %found.conflict60, label %.lr.ph.i.i.i.i.i.preheader79, label %vector.ph63

vector.ph63:                                      ; preds = %vector.memcheck55
  %n.vec65 = and i64 %i.t, 2305843009213693950    ; 3 uses
  %i.y = shl i64 %n.vec65, 4                      ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next74, %vector.body66 ] ; 2 uses
  %i.ab = shl i64 %index67, 4                     ; 3 uses
  %i.ac = or disjoint i64 %i.ab, 16               ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.p, i64 %i.ab
  %next.gep69 = getelementptr i8, ptr %i.p, i64 %i.ac
  %next.gep70 = getelementptr i8, ptr %i.c, i64 %i.ab
  %next.gep71 = getelementptr i8, ptr %i.c, i64 %i.ac
  %wide.load72 = load <2 x double>, ptr %next.gep70, align 8, !tbaa !247, !alias.scope !668
  %wide.load73 = load <2 x double>, ptr %next.gep71, align 8, !tbaa !247, !alias.scope !668
  store <2 x double> %wide.load72, ptr %next.gep68, align 8, !tbaa !247, !alias.scope !671, !noalias !668
  store <2 x double> %wide.load73, ptr %next.gep69, align 8, !tbaa !247, !alias.scope !671, !noalias !668
  %index.next74 = add nuw i64 %index67, 2         ; 2 uses
  %i.ad = icmp eq i64 %index.next74, %n.vec65
  br i1 %i.ad, label %middle.block75, label %vector.body66, !llvm.loop !673

middle.block75:                                   ; preds = %vector.body66
  %cmp.n76 = icmp eq i64 %i.t, %n.vec65
  br i1 %cmp.n76, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i.preheader79

.lr.ph.i.i.i.i.i.preheader79:                     ; preds = %vector.memcheck55, %.lr.ph.i.i.i.i.i.preheader, %middle.block75
  %.09.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck55 ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block75 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck55 ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block75 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader79, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader79 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader79 ] ; 3 uses
  %i.ae = load double, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !247
  store double %i.ae, ptr %.09.i.i.i.i.i, align 8, !tbaa !247
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !247
  store double %i.ah, ptr %i.af, align 8, !tbaa !247
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !674

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block75, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #48
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !279
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !280
  br label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !276 ; 8 uses
  %i.an = ptrtoint ptr %i.am to i64               ; 4 uses
  %i.ao = sub i64 %i.an, %i.l                     ; 5 uses
  %.not24 = icmp ult i64 %i.ao, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp sgt i64 %i.g, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i25.preheader, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

.lr.ph.i.i.i.i.i25.preheader:                     ; preds = %bb.g
  %i.aq = and i64 %i.f, 16
  %lcmp.mod.not = icmp eq i64 %i.aq, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i.i.i25.prol

.lr.ph.i.i.i.i.i25.prol:                          ; preds = %.lr.ph.i.i.i.i.i25.preheader
  %.not.i.i.i.i.i.i.prol = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i.i.i.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i25.prol
  %i.ar = load double, ptr %i.c, align 8, !tbaa !247
  store double %i.ar, ptr %i.j, align 8, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !247
  store double %i.au, ptr %i.as, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i25.prol
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ax = add nsw i64 %i.g, -1
  br label %.lr.ph.i.i.i.i.i25.prol.loopexit

.lr.ph.i.i.i.i.i25.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i25.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.ax, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.aw, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.av, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %i.ay = icmp eq i64 %i.f, 16
  br i1 %i.ay, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1
  %.012.i.i.i.i.i = phi i64 [ %i.bl, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i25.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bk, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i25.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bj, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i25.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i25
  %i.az = load double, ptr %.0910.i.i.i.i.i, align 8, !tbaa !247
  store double %i.az, ptr %.0811.i.i.i.i.i, align 8, !tbaa !247
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !247
  store double %i.bc, ptr %i.ba, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i:    ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i25
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !247
  store double %i.bf, ptr %i.bd, align 8, !tbaa !247
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !247
  store double %i.bi, ptr %i.bg, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.bl = add nsw i64 %.012.i.i.i.i.i, -2
  %i.bm = icmp sgt i64 %.012.i.i.i.i.i, 2
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i25, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, !llvm.loop !675

bb.h:                                             ; preds = %bb.f
  %i.bn = getelementptr i8, ptr %i.c, i64 %i.ao   ; 7 uses
  %i.bo = ashr exact i64 %i.ao, 4                 ; 3 uses
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i27.preheader, label %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i27.preheader:                     ; preds = %bb.h
  %i.bq = and i64 %i.ao, 16
  %lcmp.mod83.not = icmp eq i64 %i.bq, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i.i.i.i27.prol.loopexit, label %.lr.ph.i.i.i.i.i27.prol

.lr.ph.i.i.i.i.i27.prol:                          ; preds = %.lr.ph.i.i.i.i.i27.preheader
  %.not.i.i.i.i.i.i31.prol = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i.i.i31.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.prol: ; preds = %.lr.ph.i.i.i.i.i27.prol
  %i.br = load double, ptr %i.c, align 8, !tbaa !247
  store double %i.br, ptr %i.j, align 8, !tbaa !247
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !247
  store double %i.bu, ptr %i.bs, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.prol, %.lr.ph.i.i.i.i.i27.prol
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bx = add nsw i64 %i.bo, -1
  br label %.lr.ph.i.i.i.i.i27.prol.loopexit

.lr.ph.i.i.i.i.i27.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol, %.lr.ph.i.i.i.i.i27.preheader
  %.012.i.i.i.i.i28.unr = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bx, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol ]
  %.0811.i.i.i.i.i29.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bw, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol ]
  %.0910.i.i.i.i.i30.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bv, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol ]
  %i.by = icmp eq i64 %i.ao, 16
  br i1 %i.by, label %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1
  %.012.i.i.i.i.i28 = phi i64 [ %i.cl, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1 ], [ %.012.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i27.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.ck, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1 ], [ %.0811.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i27.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.cj, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1 ], [ %.0910.i.i.i.i.i30.unr, %.lr.ph.i.i.i.i.i27.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i31 = icmp eq ptr %.0811.i.i.i.i.i29, %.0910.i.i.i.i.i30
  br i1 %.not.i.i.i.i.i.i31, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i27
  %i.bz = load double, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !247
  store double %i.bz, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !247
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !247
  store double %i.cc, ptr %i.ca, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i27
  %.not.i.i.i.i.i.i31.1 = icmp eq ptr %.0811.i.i.i.i.i29, %.0910.i.i.i.i.i30
  br i1 %.not.i.i.i.i.i.i31.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !247
  store double %i.cf, ptr %i.cd, align 8, !tbaa !247
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !247
  store double %i.ci, ptr %i.cg, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 32
  %i.cl = add nsw i64 %.012.i.i.i.i.i28, -2
  %i.cm = icmp sgt i64 %.012.i.i.i.i.i28, 2
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, !llvm.loop !676

_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i27.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bn, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit
  %i.cn = add i64 %i.l, %i.d
  %i.co = add i64 %i.e, %i.an
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = add i64 %i.cp, -16                      ; 2 uses
  %i.cr = lshr i64 %i.cq, 4
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 400
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ct = add i64 %i.l, %i.d
  %i.cu = add i64 %i.ct, -16
  %i.cv = add i64 %i.e, %i.an
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = and i64 %i.cw, -16                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.am, i64 %i.cx
  %scevgep = getelementptr i8, ptr %i.cy, i64 16
  %i.cz = add i64 %i.cx, %i.an
  %i.da = add i64 %i.cz, 16
  %i.db = sub i64 %i.da, %i.l
  %scevgep49 = getelementptr i8, ptr %i.c, i64 %i.db
  %bound0 = icmp ult ptr %i.am, %scevgep49
  %bound1 = icmp ult ptr %i.bn, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cs, 2305843009213693950     ; 3 uses
  %i.dc = shl i64 %n.vec, 4                       ; 2 uses
  %i.dd = getelementptr i8, ptr %i.am, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.bn, i64 %i.dc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 4                       ; 3 uses
  %i.dg = or disjoint i64 %i.df, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.df
  %next.gep50 = getelementptr i8, ptr %i.am, i64 %i.dg
  %next.gep51 = getelementptr i8, ptr %i.bn, i64 %i.df
  %next.gep52 = getelementptr i8, ptr %i.bn, i64 %i.dg
  %wide.load = load <2 x double>, ptr %next.gep51, align 8, !tbaa !247, !alias.scope !677
  %wide.load53 = load <2 x double>, ptr %next.gep52, align 8, !tbaa !247, !alias.scope !677
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !247, !alias.scope !680, !noalias !677
  store <2 x double> %wide.load53, ptr %next.gep50, align 8, !tbaa !247, !alias.scope !680, !noalias !677
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !682

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader80

.lr.ph.i.i.i.i.preheader80:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.preheader ], [ %i.dd, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader80, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader80 ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader80 ] ; 3 uses
  %i.di = load double, ptr %.0810.i.i.i.i, align 8, !tbaa !247
  store double %i.di, ptr %.011.i.i.i.i, align 8, !tbaa !247
  %i.dj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !247
  store double %i.dl, ptr %i.dj, align 8, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.dm, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !683

_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i25.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, %.lr.ph.i.i.i.i, %middle.block, %bb.g, %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.do = phi ptr [ %i.j, %middle.block ], [ %i.p, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit ], [ %i.j, %.lr.ph.i.i.i.i ], [ %i.j, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %i.j, %.lr.ph.i.i.i.i.i25.prol.loopexit ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.f
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !276
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9CenteringILi2EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi2EESaIS5_EERKS3_I6VectorILi2Ed4FullESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !361
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !462
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !264  ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !267    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorI3LocILi2EEE8allocateEmPKv.exit.i.i.i.i, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorI3LocILi2EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #45
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorI3LocILi2EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt15__new_allocatorI3LocILi2EEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 11 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !267
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !264
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !268
  %i.o = load ptr, ptr %3, align 8, !tbaa !449    ; 9 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !449  ; 3 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i
  %i.s = sub i64 %i.r, %i.p
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = add i64 %i.r, -8
  %i.x = sub i64 %i.w, %i.p
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.z
  %scevgep20 = getelementptr i8, ptr %i.o, i64 %i.z
  %bound0 = icmp ult ptr %i.k, %scevgep20
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ad
  %next.gep21 = getelementptr i8, ptr %i.k, i64 %i.ae
  %next.gep22 = getelementptr i8, ptr %i.o, i64 %i.ad
  %next.gep23 = getelementptr i8, ptr %i.o, i64 %i.ae
  %wide.vec = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !236, !alias.scope !684
  %wide.vec25 = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !236, !alias.scope !684
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !687, !noalias !684
  store <4 x i32> %wide.vec25, ptr %next.gep21, align 4, !tbaa !4, !alias.scope !687, !noalias !684
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !689

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.preheader54

.lr.ph.i.i.i.i.i.preheader54:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader54, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader54 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader54 ] ; 3 uses
  %i.ag = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ag, ptr %.09.i.i.i.i.i, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !236
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !690

_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit:     ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EEC2EmRKS2_.exit.i ], [ %i.ab, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.l, align 8, !tbaa !264
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !276 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !279   ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i.i.i4, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit
  %i.at = icmp ugt i64 %i.as, 9223372036854775792
  br i1 %i.at, label %bb.e, label %_ZNSt15__new_allocatorI6VectorILi2Ed4FullEE8allocateEmPKv.exit.i.i.i.i, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorI6VectorILi2Ed4FullEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #45
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorI6VectorILi2Ed4FullEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit
  %i.av = phi ptr [ %i.au, %_ZNSt15__new_allocatorI6VectorILi2Ed4FullEE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorI3LocILi2EESaIS1_EEC2ERKS3_.exit ] ; 11 uses
  store ptr %i.av, ptr %i.am, align 8, !tbaa !279
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !276
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !280
  %i.az = load ptr, ptr %4, align 8, !tbaa !461   ; 9 uses
  %i.ba = ptrtoaddr ptr %i.az to i64              ; 2 uses
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !461 ; 3 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64              ; 2 uses
  %.not7.i.i.i.i.i5 = icmp eq ptr %i.az, %i.bb
  br i1 %.not7.i.i.i.i.i5, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i6.preheader

.lr.ph.i.i.i.i.i6.preheader:                      ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i
  %i.bd = sub i64 %i.bc, %i.ba
  %i.be = add i64 %i.bd, -16                      ; 2 uses
  %i.bf = lshr i64 %i.be, 4
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check37 = icmp ult i64 %i.be, 240
  br i1 %min.iters.check37, label %.lr.ph.i.i.i.i.i6.preheader53, label %vector.memcheck30

vector.memcheck30:                                ; preds = %.lr.ph.i.i.i.i.i6.preheader
  %i.bh = add i64 %i.bc, -16
  %i.bi = sub i64 %i.bh, %i.ba
  %i.bj = and i64 %i.bi, -16
  %i.bk = add i64 %i.bj, 16                       ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.av, i64 %i.bk
  %scevgep32 = getelementptr i8, ptr %i.az, i64 %i.bk
  %bound033 = icmp ult ptr %i.av, %scevgep32
  %bound134 = icmp ult ptr %i.az, %scevgep31
  %found.conflict35 = and i1 %bound033, %bound134
  br i1 %found.conflict35, label %.lr.ph.i.i.i.i.i6.preheader53, label %vector.ph38

vector.ph38:                                      ; preds = %vector.memcheck30
  %n.vec40 = and i64 %i.bg, 2305843009213693950   ; 3 uses
  %i.bl = shl i64 %n.vec40, 4                     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.av, i64 %i.bl  ; 2 uses
  %i.bn = getelementptr i8, ptr %i.az, i64 %i.bl
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph38
  %index42 = phi i64 [ 0, %vector.ph38 ], [ %index.next48, %vector.body41 ] ; 2 uses
  %i.bo = shl i64 %index42, 4                     ; 3 uses
  %i.bp = or disjoint i64 %i.bo, 16               ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.av, i64 %i.bo
  %next.gep44 = getelementptr i8, ptr %i.av, i64 %i.bp
  %next.gep45 = getelementptr i8, ptr %i.az, i64 %i.bo
  %next.gep46 = getelementptr i8, ptr %i.az, i64 %i.bp
  %wide.load = load <2 x double>, ptr %next.gep45, align 8, !tbaa !247, !alias.scope !691
  %wide.load47 = load <2 x double>, ptr %next.gep46, align 8, !tbaa !247, !alias.scope !691
  store <2 x double> %wide.load, ptr %next.gep43, align 8, !tbaa !247, !alias.scope !694, !noalias !691
  store <2 x double> %wide.load47, ptr %next.gep44, align 8, !tbaa !247, !alias.scope !694, !noalias !691
  %index.next48 = add nuw i64 %index42, 2         ; 2 uses
  %i.bq = icmp eq i64 %index.next48, %n.vec40
  br i1 %i.bq, label %middle.block49, label %vector.body41, !llvm.loop !696

middle.block49:                                   ; preds = %vector.body41
  %cmp.n50 = icmp eq i64 %i.bg, %n.vec40
  br i1 %cmp.n50, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i6.preheader53

.lr.ph.i.i.i.i.i6.preheader53:                    ; preds = %vector.memcheck30, %.lr.ph.i.i.i.i.i6.preheader, %middle.block49
  %.09.i.i.i.i.i7.ph = phi ptr [ %i.av, %vector.memcheck30 ], [ %i.av, %.lr.ph.i.i.i.i.i6.preheader ], [ %i.bm, %middle.block49 ]
  %.sroa.04.08.i.i.i.i.i8.ph = phi ptr [ %i.az, %vector.memcheck30 ], [ %i.az, %.lr.ph.i.i.i.i.i6.preheader ], [ %i.bn, %middle.block49 ]
  br label %.lr.ph.i.i.i.i.i6

.lr.ph.i.i.i.i.i6:                                ; preds = %.lr.ph.i.i.i.i.i6.preheader53, %.lr.ph.i.i.i.i.i6
  %.09.i.i.i.i.i7 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i6 ], [ %.09.i.i.i.i.i7.ph, %.lr.ph.i.i.i.i.i6.preheader53 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i8 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i6 ], [ %.sroa.04.08.i.i.i.i.i8.ph, %.lr.ph.i.i.i.i.i6.preheader53 ] ; 3 uses
  %i.br = load double, ptr %.sroa.04.08.i.i.i.i.i8, align 8, !tbaa !247
  store double %i.br, ptr %.09.i.i.i.i.i7, align 8, !tbaa !247
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !247
  store double %i.bu, ptr %i.bs, align 8, !tbaa !247
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i8, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i7, i64 16 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.bv, %i.bb
  br i1 %.not.i.i.i.i.i9, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i6, !llvm.loop !697

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEC2ERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i6, %middle.block49, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i
  %.0.lcssa.i.i.i.i.i10 = phi ptr [ %i.av, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EEC2EmRKS3_.exit.i ], [ %i.bm, %middle.block49 ], [ %i.bw, %.lr.ph.i.i.i.i.i6 ]
  store ptr %.0.lcssa.i.i.i.i.i10, ptr %i.aw, align 8, !tbaa !276
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN18CanonicalCenteringILi2EED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat($_ZN18CanonicalCenteringILi2EED5Ev) align 2 {
bb.a:
  %i.a = load i32, ptr @_ZN18CanonicalCenteringILi2EE13class_count_mE, align 4, !tbaa !4
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr @_ZN18CanonicalCenteringILi2EE13class_count_mE, align 4, !tbaa !4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader12.preheader, label %bb.l

.preheader12.preheader:                           ; preds = %bb.a
  %.pre18 = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %bb.j
  %i.d = phi ptr [ %.pre18, %.preheader12.preheader ], [ %i.bh, %bb.j ]
  %indvars.iv = phi i64 [ 0, %.preheader12.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !260  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !262  ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.c

bb.b:                                             ; preds = %bb.j
  %i.i = icmp eq ptr %i.bh, null
  br i1 %i.i, label %bb.l, label %bb.k

bb.c:                                             ; preds = %.preheader12
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.idx = mul i64 %i.k, 56                        ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN9CenteringILi2EED2Ev.exit
  %i.n = phi ptr [ %i.o, %_ZN9CenteringILi2EED2Ev.exit ], [ %i.m, %.preheader.preheader ] ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -56 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !279  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !280
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i: ; preds = %bb.d, %.preheader
  %i.w = getelementptr inbounds i8, ptr %i.n, i64 -48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !267  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1.i, label %_ZN9CenteringILi2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 -32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !268
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #48
  br label %_ZN9CenteringILi2EED2Ev.exit

_ZN9CenteringILi2EED2Ev.exit:                     ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i, %bb.e
  %i.ad = icmp eq ptr %i.o, %i.g
  br i1 %i.ad, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN9CenteringILi2EED2Ev.exit, %bb.c
  %i.ae = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.j, i64 noundef %i.ae) #48
  %.pre19 = load ptr, ptr @_ZN18CanonicalCenteringILi2EE17centering_table_mE, align 8, !tbaa !258
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre19, i64 %indvars.iv
  %.pre20 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !260
  br label %bb.f

bb.f:                                             ; preds = %.preheader12, %.loopexit
  %i.af = phi ptr [ %i.f, %.preheader12 ], [ %.pre20, %.loopexit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !262 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %.idx.1 = mul i64 %i.ak, 56                     ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.loopexit33, label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %bb.g
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.1
  br label %.preheader.1

.preheader.1:                                     ; preds = %_ZN9CenteringILi2EED2Ev.exit.1, %.preheader.preheader.1
  %i.an = phi ptr [ %i.ao, %_ZN9CenteringILi2EED2Ev.exit.1 ], [ %i.am, %.preheader.preheader.1 ] ; 5 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -56 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !279 ; 3 uses
  %.not.i.i.i.i.1 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i.1, label %bb.h

bb.h:                                             ; preds = %.preheader.1
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !280
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i.1

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i.1: ; preds = %bb.h, %.preheader.1
  %i.aw = getelementptr inbounds i8, ptr %i.an, i64 -48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !267 ; 3 uses
  %.not.i.i.i1.i.1 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i1.i.1, label %_ZN9CenteringILi2EED2Ev.exit.1, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i.1
  %i.ay = getelementptr inbounds i8, ptr %i.an, i64 -32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !268
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #48
  br label %_ZN9CenteringILi2EED2Ev.exit.1

_ZN9CenteringILi2EED2Ev.exit.1:                   ; preds = %bb.i, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i.1
  %i.bd = icmp eq ptr %i.ao, %i.ah
  br i1 %i.bd, label %.loopexit33, label %.preheader.1
end_hunk_4
begin_hunk_5_@_ZN12DataBlockPtrIiLb0EED2Ev:bb.a
_ZN19DataBlockControllerIiED2Ev.exit.i.i.i:       ; preds = %bb.k, %bb.j, %_ZN16SingleObservableIiED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr9, i64 noundef 72) #48
  br label %_ZN18RefCountedBlockPtrIiLb0E19DataBlockControllerIiEED2Ev.exit

_ZN18RefCountedBlockPtrIiLb0E19DataBlockControllerIiEED2Ev.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN19DataBlockControllerIiED2Ev.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiP12InformStreamESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2264
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiP12InformStreamESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2265 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #48
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2266

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #34

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #31

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #31

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #30

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #31

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #31

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #30

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #31

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #32

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #35

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #32

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #32

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #35

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #31

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_emplace_uniqueIJRS2_EEES0_ISt17_Rb_tree_iteratorIS2_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #45 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %1, align 4                ; 2 uses
  store i64 %i.c, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.d, align 8, !tbaa !69 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  %i.f = trunc i64 %i.c to i32                    ; 3 uses
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
  %i.i = icmp sgt i32 %i.h, %i.f                  ; 2 uses
  %.in.v.i = select i1 %i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2267

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.i, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.e, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.l = icmp eq ptr %.019.lcssa29.i, %i.k
  br i1 %i.l, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #50 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.n = phi i32 [ %.pre, %bb.b ], [ %i.h, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.m, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.o = icmp slt i32 %i.n, %i.f
  br i1 %i.o, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.4.0.i.ph, %i.e
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = icmp sgt i32 %i.r, %i.f
  br label %.thread

.thread:                                          ; preds = %bb.d, %select.unfold
  %i.t = phi i1 [ %i.s, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #47
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !76
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !76
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #48
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.e
  %.sroa.3.022 = phi i8 [ 1, %.thread ], [ 0, %bb.e ]
  %.sroa.09.021 = phi ptr [ %i.a, %.thread ], [ %.sroa.05.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.021, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.022, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI3LocILi2EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %.not88 = icmp eq ptr %2, %3
  br i1 %.not88, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 10 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 10 uses
  %i.d = sub i64 %i.b, %i.c                       ; 7 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !268
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !264  ; 35 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 5 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 10 uses
  %i.r = sub i64 %i.b, %i.c
  %i.s = add i64 %i.r, -8                         ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check212 = icmp ult i64 %i.s, 520
  br i1 %min.iters.check212, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck186

vector.memcheck186:                               ; preds = %bb.d
  %i.v = add i64 %i.b, -8
  %i.w = sub i64 %i.v, %i.c
  %i.x = and i64 %i.w, -8                         ; 4 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep187 = getelementptr i8, ptr %i.y, i64 4 ; 3 uses
  %scevgep188 = getelementptr i8, ptr %i.i, i64 4 ; 3 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep189 = getelementptr i8, ptr %i.z, i64 8 ; 3 uses
  %i.aa = add i64 %i.x, %i.c
  %i.ab = add i64 %i.aa, 4
  %i.ac = sub i64 %i.ab, %i.b
  %scevgep190 = getelementptr i8, ptr %i.i, i64 %i.ac ; 2 uses
  %i.ad = add i64 %i.c, 4
  %i.ae = sub i64 %i.ad, %i.b
  %scevgep191 = getelementptr i8, ptr %i.i, i64 %i.ae ; 2 uses
  %i.af = add i64 %i.x, %i.c
  %i.ag = add i64 %i.af, 8
  %i.ah = sub i64 %i.ag, %i.b
  %scevgep192 = getelementptr i8, ptr %i.i, i64 %i.ah ; 2 uses
  %bound0193 = icmp ult ptr %i.i, %scevgep189
  %bound1194 = icmp ult ptr %scevgep188, %scevgep187
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0196 = icmp ult ptr %i.i, %scevgep190
  %bound1197 = icmp ult ptr %i.q, %scevgep187
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx = or i1 %found.conflict195, %found.conflict198
  %bound0199 = icmp ult ptr %i.i, %scevgep192
  %bound1200 = icmp ult ptr %scevgep191, %scevgep187
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx, %found.conflict201
  %bound0203 = icmp ult ptr %scevgep188, %scevgep190
  %bound1204 = icmp ult ptr %i.q, %scevgep189
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  %bound0207 = icmp ult ptr %scevgep188, %scevgep192
  %bound1208 = icmp ult ptr %scevgep191, %scevgep189
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx210 = or i1 %conflict.rdx206, %found.conflict209
  br i1 %conflict.rdx210, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %vector.memcheck186
  %n.vec215 = and i64 %i.u, 4611686018427387900   ; 3 uses
  %i.ai = shl i64 %n.vec215, 3                    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.q, i64 %i.ai
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph213
  %index217 = phi i64 [ 0, %vector.ph213 ], [ %index.next230, %vector.body216 ] ; 2 uses
  %i.al = shl i64 %index217, 3                    ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep218 = getelementptr i8, ptr %i.i, i64 %i.al
  %next.gep219 = getelementptr i8, ptr %i.i, i64 %i.am
  %next.gep220 = getelementptr i8, ptr %i.q, i64 %i.al
  %next.gep221 = getelementptr i8, ptr %i.q, i64 %i.am
  %wide.vec222 = load <4 x i32>, ptr %next.gep220, align 4, !tbaa !236
  %wide.vec225 = load <4 x i32>, ptr %next.gep221, align 4, !tbaa !236
  store <4 x i32> %wide.vec222, ptr %next.gep218, align 4, !tbaa !4
  store <4 x i32> %wide.vec225, ptr %next.gep219, align 4, !tbaa !4
  %index.next230 = add nuw i64 %index217, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next230, %n.vec215
  br i1 %i.an, label %middle.block231, label %vector.body216, !llvm.loop !2268

middle.block231:                                  ; preds = %vector.body216
  %cmp.n232 = icmp eq i64 %i.u, %n.vec215
  br i1 %cmp.n232, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck186, %bb.d, %middle.block231
  %.09.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck186 ], [ %i.i, %bb.d ], [ %i.aj, %middle.block231 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck186 ], [ %i.q, %bb.d ], [ %i.ak, %middle.block231 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ao = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ao, ptr %.09.i.i.i.i.i, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !236
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2269

_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block231
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.au, ptr %i.h, align 8, !tbaa !264
  %i.av = ptrtoint ptr %i.q to i64
  %i.aw = sub i64 %i.av, %i.m
  %i.ax = ashr exact i64 %i.aw, 3                 ; 5 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i43.preheader, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i43.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i43.prol

.lr.ph.i.i.i.i.i43.prol:                          ; preds = %.lr.ph.i.i.i.i.i43.preheader, %.lr.ph.i.i.i.i.i43.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i43.prol ], [ %i.ax, %.lr.ph.i.i.i.i.i43.preheader ]
  %.069.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i43.prol ], [ %i.i, %.lr.ph.i.i.i.i.i43.preheader ] ; 2 uses
  %.078.i.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i43.prol ], [ %i.q, %.lr.ph.i.i.i.i.i43.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i43.prol ], [ 0, %.lr.ph.i.i.i.i.i43.preheader ]
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !236
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  %i.bd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !236
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !4
  %i.bf = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i43.prol, !llvm.loop !2270

.lr.ph.i.i.i.i.i43.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i43.prol, %.lr.ph.i.i.i.i.i43.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bf, %.lr.ph.i.i.i.i.i43.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i43.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.az, %.lr.ph.i.i.i.i.i43.prol ]
  %i.bg = icmp ult i64 %i.ax, 4
  br i1 %i.bg, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %.lr.ph.i.i.i.i.i43
  %.010.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i43 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i43 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i43 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 8 uses
  %i.bh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !236
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !4
  %i.bk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  %i.bl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !236
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !4
  %i.bn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.bo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !236
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !4
  %i.bq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  %i.br = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !236
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !4
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !236
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !4
  %i.bw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !236
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !4
  %i.bz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !236
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !4
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -28
  %i.cd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !236
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !4
  %i.cf = add nsw i64 %.010.i.i.i.i.i, -4
  %i.cg = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit, !llvm.loop !2271

_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %.lr.ph.i.i.i.i.i43, %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ch = icmp sgt i64 %i.e, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i44.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i44.preheader:                     ; preds = %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit
  %min.iters.check242 = icmp ult i64 %i.e, 6
  br i1 %min.iters.check242, label %.lr.ph.i.i.i.i.i44.preheader360, label %vector.memcheck235

vector.memcheck235:                               ; preds = %.lr.ph.i.i.i.i.i44.preheader
  %scevgep236 = getelementptr i8, ptr %1, i64 %i.d
  %bound0238 = icmp ult ptr %1, %3
  %bound1239 = icmp ult ptr %2, %scevgep236
  %found.conflict240 = and i1 %bound0238, %bound1239
  br i1 %found.conflict240, label %.lr.ph.i.i.i.i.i44.preheader360, label %vector.ph243

vector.ph243:                                     ; preds = %vector.memcheck235
  %n.vec245 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %i.ci = and i64 %i.e, 3
  %i.cj = shl i64 %n.vec245, 3                    ; 2 uses
  %i.ck = getelementptr i8, ptr %1, i64 %i.cj
  %i.cl = getelementptr i8, ptr %2, i64 %i.cj
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph243
  %index247 = phi i64 [ 0, %vector.ph243 ], [ %index.next260, %vector.body246 ] ; 2 uses
  %i.cm = shl i64 %index247, 3                    ; 3 uses
  %i.cn = or disjoint i64 %i.cm, 16               ; 2 uses
  %next.gep248 = getelementptr i8, ptr %1, i64 %i.cm
  %next.gep249 = getelementptr i8, ptr %1, i64 %i.cn
  %next.gep250 = getelementptr i8, ptr %2, i64 %i.cm
  %next.gep251 = getelementptr i8, ptr %2, i64 %i.cn
  %wide.vec252 = load <4 x i32>, ptr %next.gep250, align 4, !tbaa !236, !alias.scope !2272
  %wide.vec255 = load <4 x i32>, ptr %next.gep251, align 4, !tbaa !236, !alias.scope !2272
  store <4 x i32> %wide.vec252, ptr %next.gep248, align 4, !tbaa !4, !alias.scope !2275, !noalias !2272
  store <4 x i32> %wide.vec255, ptr %next.gep249, align 4, !tbaa !4, !alias.scope !2275, !noalias !2272
  %index.next260 = add nuw i64 %index247, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next260, %n.vec245
  br i1 %i.co, label %middle.block261, label %vector.body246, !llvm.loop !2277

middle.block261:                                  ; preds = %vector.body246
  %cmp.n262 = icmp eq i64 %i.e, %n.vec245
  br i1 %cmp.n262, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i44.preheader360

.lr.ph.i.i.i.i.i44.preheader360:                  ; preds = %vector.memcheck235, %.lr.ph.i.i.i.i.i44.preheader, %middle.block261
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %vector.memcheck235 ], [ %i.e, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.ci, %middle.block261 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck235 ], [ %1, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.ck, %middle.block261 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck235 ], [ %2, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.cl, %middle.block261 ]
  br label %.lr.ph.i.i.i.i.i44

.lr.ph.i.i.i.i.i44:                               ; preds = %.lr.ph.i.i.i.i.i44.preheader360, %.lr.ph.i.i.i.i.i44
  %.012.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i44 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i44.preheader360 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i44 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i44.preheader360 ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i44 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i44.preheader360 ] ; 3 uses
  %i.cp = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.cp, ptr %.0811.i.i.i.i.i, align 4, !tbaa !4
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !236
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.cv = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cw = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i44, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, !llvm.loop !2278

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.cx = getelementptr inbounds i8, ptr %2, i64 %i.n ; 7 uses
  %.not7.i.i.i.i = icmp eq ptr %i.cx, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cy = add i64 %i.b, %i.m
  %i.cz = add i64 %i.k, %i.c
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = add i64 %i.da, -8                       ; 2 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.db, 200
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader364, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.de = add i64 %i.b, %i.m
  %i.df = add i64 %i.de, -8
  %i.dg = add i64 %i.k, %i.c
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = and i64 %i.dh, -8                       ; 2 uses
  %i.dj = getelementptr i8, ptr %i.i, i64 %i.di
  %scevgep = getelementptr i8, ptr %i.dj, i64 8
  %i.dk = add i64 %i.di, %i.k
  %i.dl = add i64 %i.dk, 8
  %i.dm = sub i64 %i.dl, %i.m
  %scevgep115 = getelementptr i8, ptr %2, i64 %i.dm
  %bound0 = icmp ult ptr %i.i, %scevgep115
  %bound1 = icmp ult ptr %i.cx, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader364, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dd, 4611686018427387900     ; 3 uses
  %i.dn = shl i64 %n.vec, 3                       ; 2 uses
  %i.do = getelementptr i8, ptr %i.i, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.cx, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 3                       ; 3 uses
  %i.dr = or disjoint i64 %i.dq, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.dq
  %next.gep116 = getelementptr i8, ptr %i.i, i64 %i.dr
  %next.gep117 = getelementptr i8, ptr %i.cx, i64 %i.dq
  %next.gep118 = getelementptr i8, ptr %i.cx, i64 %i.dr
  %wide.vec = load <4 x i32>, ptr %next.gep117, align 4, !tbaa !236, !alias.scope !2279
  %wide.vec120 = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !236, !alias.scope !2279
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !2282, !noalias !2279
  store <4 x i32> %wide.vec120, ptr %next.gep116, align 4, !tbaa !4, !alias.scope !2282, !noalias !2279
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !2284

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader364

.lr.ph.i.i.i.i.preheader364:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader364, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader364 ] ; 3 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader364 ] ; 3 uses
  %i.dt = load i32, ptr %.sroa.04.08.i.i.i.i, align 4, !tbaa !236
  store i32 %i.dt, ptr %.09.i.i.i.i, align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !236
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.dx, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2285

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.dz = sub nsw i64 %i.e, %i.o
  %i.ea = getelementptr [8 x i8], ptr %i.i, i64 %i.dz ; 6 uses
  %.not7.i.i.i.i.i45 = icmp eq ptr %1, %i.i
  br i1 %.not7.i.i.i.i.i45, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, label %.lr.ph.i.i.i.i.i46.preheader

.lr.ph.i.i.i.i.i46.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.eb = sub i64 %i.k, %i.m
  %i.ec = add i64 %i.eb, -8                       ; 2 uses
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.ec, 168
  br i1 %min.iters.check132, label %.lr.ph.i.i.i.i.i46.preheader363, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.lr.ph.i.i.i.i.i46.preheader
  %i.ef = add i64 %i.k, -8
  %i.eg = sub i64 %i.ef, %i.m
  %i.eh = and i64 %i.eg, -8                       ; 2 uses
  %i.ei = add i64 %i.d, %i.eh
  %i.ej = add i64 %i.ei, 8
  %i.ek = sub i64 %i.ej, %i.n
  %scevgep126 = getelementptr i8, ptr %i.i, i64 %i.ek
  %i.el = getelementptr i8, ptr %1, i64 %i.eh
  %scevgep127 = getelementptr i8, ptr %i.el, i64 8
  %bound0128 = icmp ult ptr %i.ea, %scevgep127
  %bound1129 = icmp ult ptr %1, %scevgep126
  %found.conflict130 = and i1 %bound0128, %bound1129
  br i1 %found.conflict130, label %.lr.ph.i.i.i.i.i46.preheader363, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck125
  %n.vec135 = and i64 %i.ee, 4611686018427387900  ; 3 uses
  %i.em = shl i64 %n.vec135, 3                    ; 2 uses
  %i.en = getelementptr i8, ptr %i.ea, i64 %i.em
  %i.eo = getelementptr i8, ptr %1, i64 %i.em
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph133
  %index137 = phi i64 [ 0, %vector.ph133 ], [ %index.next150, %vector.body136 ] ; 2 uses
  %i.ep = shl i64 %index137, 3                    ; 3 uses
  %i.eq = or disjoint i64 %i.ep, 16               ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.ea, i64 %i.ep
  %next.gep139 = getelementptr i8, ptr %i.ea, i64 %i.eq
  %next.gep140 = getelementptr i8, ptr %1, i64 %i.ep
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.eq
  %wide.vec142 = load <4 x i32>, ptr %next.gep140, align 4, !tbaa !236, !alias.scope !2286
  %wide.vec145 = load <4 x i32>, ptr %next.gep141, align 4, !tbaa !236, !alias.scope !2286
  store <4 x i32> %wide.vec142, ptr %next.gep138, align 4, !tbaa !4, !alias.scope !2289, !noalias !2286
  store <4 x i32> %wide.vec145, ptr %next.gep139, align 4, !tbaa !4, !alias.scope !2289, !noalias !2286
  %index.next150 = add nuw i64 %index137, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next150, %n.vec135
  br i1 %i.er, label %middle.block151, label %vector.body136, !llvm.loop !2291

middle.block151:                                  ; preds = %vector.body136
  %cmp.n152 = icmp eq i64 %i.ee, %n.vec135
  br i1 %cmp.n152, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, label %.lr.ph.i.i.i.i.i46.preheader363

.lr.ph.i.i.i.i.i46.preheader363:                  ; preds = %vector.memcheck125, %.lr.ph.i.i.i.i.i46.preheader, %middle.block151
  %.09.i.i.i.i.i47.ph = phi ptr [ %i.ea, %vector.memcheck125 ], [ %i.ea, %.lr.ph.i.i.i.i.i46.preheader ], [ %i.en, %middle.block151 ]
  %.sroa.04.08.i.i.i.i.i48.ph = phi ptr [ %1, %vector.memcheck125 ], [ %1, %.lr.ph.i.i.i.i.i46.preheader ], [ %i.eo, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i46

.lr.ph.i.i.i.i.i46:                               ; preds = %.lr.ph.i.i.i.i.i46.preheader363, %.lr.ph.i.i.i.i.i46
  %.09.i.i.i.i.i47 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i46 ], [ %.09.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i46.preheader363 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i48 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i46 ], [ %.sroa.04.08.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i46.preheader363 ] ; 3 uses
  %i.es = load i32, ptr %.sroa.04.08.i.i.i.i.i48, align 4, !tbaa !236
  store i32 %i.es, ptr %.09.i.i.i.i.i47, align 4, !tbaa !4
  %i.et = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i47, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i48, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !236
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !4
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i48, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i47, i64 8
  %.not.i.i.i.i.i49 = icmp eq ptr %i.ew, %i.i
  br i1 %.not.i.i.i.i.i49, label %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, label %.lr.ph.i.i.i.i.i46, !llvm.loop !2292

_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51: ; preds = %.lr.ph.i.i.i.i.i46, %middle.block151, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ey, ptr %i.h, align 8, !tbaa !264
  %i.ez = ashr exact i64 %i.n, 3                  ; 7 uses
  %i.fa = icmp sgt i64 %i.ez, 0
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i53.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i53.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51
  %min.iters.check162 = icmp ult i64 %i.ez, 6
  br i1 %min.iters.check162, label %.lr.ph.i.i.i.i.i53.preheader361, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i.i.i.i.i53.preheader
  %scevgep157 = getelementptr i8, ptr %2, i64 %i.n
  %bound0158 = icmp ult ptr %1, %scevgep157
  %bound1159 = icmp ult ptr %2, %i.i
  %found.conflict160 = and i1 %bound0158, %bound1159
  br i1 %found.conflict160, label %.lr.ph.i.i.i.i.i53.preheader361, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck155
  %n.vec165 = and i64 %i.ez, 9223372036854775804  ; 3 uses
  %i.fb = and i64 %i.ez, 3
  %i.fc = shl i64 %n.vec165, 3                    ; 2 uses
  %i.fd = getelementptr i8, ptr %1, i64 %i.fc
  %i.fe = getelementptr i8, ptr %2, i64 %i.fc
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph163
  %index167 = phi i64 [ 0, %vector.ph163 ], [ %index.next180, %vector.body166 ] ; 2 uses
  %i.ff = shl i64 %index167, 3                    ; 3 uses
  %i.fg = or disjoint i64 %i.ff, 16               ; 2 uses
  %next.gep168 = getelementptr i8, ptr %1, i64 %i.ff
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.fg
  %next.gep170 = getelementptr i8, ptr %2, i64 %i.ff
  %next.gep171 = getelementptr i8, ptr %2, i64 %i.fg
  %wide.vec172 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !236, !alias.scope !2293
  %wide.vec175 = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !236, !alias.scope !2293
  store <4 x i32> %wide.vec172, ptr %next.gep168, align 4, !tbaa !4, !alias.scope !2296, !noalias !2293
  store <4 x i32> %wide.vec175, ptr %next.gep169, align 4, !tbaa !4, !alias.scope !2296, !noalias !2293
  %index.next180 = add nuw i64 %index167, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next180, %n.vec165
  br i1 %i.fh, label %middle.block181, label %vector.body166, !llvm.loop !2298

middle.block181:                                  ; preds = %vector.body166
  %cmp.n182 = icmp eq i64 %i.ez, %n.vec165
  br i1 %cmp.n182, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.i53.preheader361

.lr.ph.i.i.i.i.i53.preheader361:                  ; preds = %vector.memcheck155, %.lr.ph.i.i.i.i.i53.preheader, %middle.block181
  %.012.i.i.i.i.i54.ph = phi i64 [ %i.ez, %vector.memcheck155 ], [ %i.ez, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.fb, %middle.block181 ]
  %.0811.i.i.i.i.i55.ph = phi ptr [ %1, %vector.memcheck155 ], [ %1, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.fd, %middle.block181 ]
  %.0910.i.i.i.i.i56.ph = phi ptr [ %2, %vector.memcheck155 ], [ %2, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.fe, %middle.block181 ]
  br label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %.lr.ph.i.i.i.i.i53.preheader361, %.lr.ph.i.i.i.i.i53
  %.012.i.i.i.i.i54 = phi i64 [ %i.fo, %.lr.ph.i.i.i.i.i53 ], [ %.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i53.preheader361 ] ; 2 uses
  %.0811.i.i.i.i.i55 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i53 ], [ %.0811.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i53.preheader361 ] ; 3 uses
  %.0910.i.i.i.i.i56 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i53 ], [ %.0910.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i53.preheader361 ] ; 3 uses
  %i.fi = load i32, ptr %.0910.i.i.i.i.i56, align 4, !tbaa !236
  store i32 %i.fi, ptr %.0811.i.i.i.i.i55, align 4, !tbaa !4
  %i.fj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !236
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !4
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55, i64 8
  %i.fo = add nsw i64 %.012.i.i.i.i.i54, -1
  %i.fp = icmp samesign ugt i64 %.012.i.i.i.i.i54, 1
  br i1 %i.fp, label %.lr.ph.i.i.i.i.i53, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, !llvm.loop !2299

bb.e:                                             ; preds = %bb.b
  %i.fq = load ptr, ptr %0, align 8, !tbaa !267   ; 11 uses
  %i.fr = ptrtoint ptr %i.fq to i64               ; 4 uses
  %i.fs = sub i64 %i.k, %i.fr
  %i.ft = ashr exact i64 %i.fs, 3                 ; 4 uses
  %i.fu = sub nsw i64 1152921504606846975, %i.ft
  %i.fv = icmp ult i64 %i.fu, %i.e
  br i1 %i.fv, label %bb.f, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ft, i64 %i.e)
  %i.fw = add nsw i64 %.sroa.speculated.i, %i.ft  ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.ft
  %i.fy = tail call i64 @llvm.umin.i64(i64 %i.fw, i64 1152921504606846975)
  %i.fz = select i1 %i.fx, i64 1152921504606846975, i64 %i.fy ; 3 uses
  %.not.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ga = shl nuw nsw i64 %i.fz, 3
  %i.gb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #45
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.gc = phi ptr [ %i.gb, %bb.g ], [ null, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.fq, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i58.preheader

.lr.ph.i.i.i.i.i58.preheader:                     ; preds = %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit
  %i.gd = sub i64 %i.a, %i.fr
  %i.ge = add i64 %i.gd, -8                       ; 2 uses
  %i.gf = lshr i64 %i.ge, 3
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check273 = icmp ult i64 %i.ge, 120
  br i1 %min.iters.check273, label %.lr.ph.i.i.i.i.i58.preheader358, label %vector.memcheck266

vector.memcheck266:                               ; preds = %.lr.ph.i.i.i.i.i58.preheader
  %i.gh = add i64 %i.a, -8
  %i.gi = sub i64 %i.gh, %i.fr
  %i.gj = and i64 %i.gi, -8
  %i.gk = add i64 %i.gj, 8                        ; 2 uses
  %scevgep267 = getelementptr i8, ptr %i.gc, i64 %i.gk
  %scevgep268 = getelementptr i8, ptr %i.fq, i64 %i.gk
  %bound0269 = icmp ult ptr %i.gc, %scevgep268
  %bound1270 = icmp ult ptr %i.fq, %scevgep267
  %found.conflict271 = and i1 %bound0269, %bound1270
  br i1 %found.conflict271, label %.lr.ph.i.i.i.i.i58.preheader358, label %vector.ph274

vector.ph274:                                     ; preds = %vector.memcheck266
  %n.vec276 = and i64 %i.gg, 4611686018427387900  ; 3 uses
  %i.gl = shl i64 %n.vec276, 3                    ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gc, i64 %i.gl  ; 2 uses
  %i.gn = getelementptr i8, ptr %i.fq, i64 %i.gl
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph274
  %index278 = phi i64 [ 0, %vector.ph274 ], [ %index.next291, %vector.body277 ] ; 2 uses
  %i.go = shl i64 %index278, 3                    ; 3 uses
  %i.gp = or disjoint i64 %i.go, 16               ; 2 uses
  %next.gep279 = getelementptr i8, ptr %i.gc, i64 %i.go
  %next.gep280 = getelementptr i8, ptr %i.gc, i64 %i.gp
  %next.gep281 = getelementptr i8, ptr %i.fq, i64 %i.go
  %next.gep282 = getelementptr i8, ptr %i.fq, i64 %i.gp
  %wide.vec283 = load <4 x i32>, ptr %next.gep281, align 4, !tbaa !236, !alias.scope !2300
  %wide.vec286 = load <4 x i32>, ptr %next.gep282, align 4, !tbaa !236, !alias.scope !2300
  store <4 x i32> %wide.vec283, ptr %next.gep279, align 4, !tbaa !4, !alias.scope !2303, !noalias !2300
  store <4 x i32> %wide.vec286, ptr %next.gep280, align 4, !tbaa !4, !alias.scope !2303, !noalias !2300
  %index.next291 = add nuw i64 %index278, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next291, %n.vec276
  br i1 %i.gq, label %middle.block292, label %vector.body277, !llvm.loop !2305

middle.block292:                                  ; preds = %vector.body277
  %cmp.n293 = icmp eq i64 %i.gg, %n.vec276
  br i1 %cmp.n293, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i58.preheader358

.lr.ph.i.i.i.i.i58.preheader358:                  ; preds = %vector.memcheck266, %.lr.ph.i.i.i.i.i58.preheader, %middle.block292
  %.011.i.i.i.i.i.ph = phi ptr [ %i.gc, %vector.memcheck266 ], [ %i.gc, %.lr.ph.i.i.i.i.i58.preheader ], [ %i.gm, %middle.block292 ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.fq, %vector.memcheck266 ], [ %i.fq, %.lr.ph.i.i.i.i.i58.preheader ], [ %i.gn, %middle.block292 ]
  br label %.lr.ph.i.i.i.i.i58

.lr.ph.i.i.i.i.i58:                               ; preds = %.lr.ph.i.i.i.i.i58.preheader358, %.lr.ph.i.i.i.i.i58
  %.011.i.i.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i58 ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i58.preheader358 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i58 ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i58.preheader358 ] ; 3 uses
  %i.gr = load i32, ptr %.0810.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.gr, ptr %.011.i.i.i.i.i, align 4, !tbaa !4
  %i.gs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !236
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !4
  %i.gv = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i59 = icmp eq ptr %i.gv, %1
  br i1 %.not.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i58, !llvm.loop !2306

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i58, %middle.block292, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i60 = phi ptr [ %i.gc, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE11_M_allocateEm.exit ], [ %i.gm, %middle.block292 ], [ %i.gw, %.lr.ph.i.i.i.i.i58 ] ; 7 uses
  %i.gx = sub i64 %i.b, %i.c
  %i.gy = add i64 %i.gx, -8                       ; 2 uses
  %i.gz = lshr i64 %i.gy, 3
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.gy, 120
  br i1 %min.iters.check303, label %.lr.ph.i.i.i.i62.preheader, label %vector.memcheck296

vector.memcheck296:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.hb = add i64 %i.b, -8
  %i.hc = sub i64 %i.hb, %i.c
  %i.hd = and i64 %i.hc, -8
  %i.he = add i64 %i.hd, 8                        ; 2 uses
  %scevgep297 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.he
  %scevgep298 = getelementptr i8, ptr %2, i64 %i.he
  %bound0299 = icmp ult ptr %.0.lcssa.i.i.i.i.i60, %scevgep298
  %bound1300 = icmp ult ptr %2, %scevgep297
  %found.conflict301 = and i1 %bound0299, %bound1300
  br i1 %found.conflict301, label %.lr.ph.i.i.i.i62.preheader, label %vector.ph304

vector.ph304:                                     ; preds = %vector.memcheck296
  %n.vec306 = and i64 %i.ha, 4611686018427387900  ; 3 uses
  %i.hf = shl i64 %n.vec306, 3                    ; 2 uses
  %i.hg = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.hf ; 2 uses
  %i.hh = getelementptr i8, ptr %2, i64 %i.hf
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph304
  %index308 = phi i64 [ 0, %vector.ph304 ], [ %index.next321, %vector.body307 ] ; 2 uses
  %i.hi = shl i64 %index308, 3                    ; 3 uses
  %i.hj = or disjoint i64 %i.hi, 16               ; 2 uses
  %next.gep309 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.hi
  %next.gep310 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i60, i64 %i.hj
  %next.gep311 = getelementptr i8, ptr %2, i64 %i.hi
  %next.gep312 = getelementptr i8, ptr %2, i64 %i.hj
  %wide.vec313 = load <4 x i32>, ptr %next.gep311, align 4, !tbaa !236, !alias.scope !2307
  %wide.vec316 = load <4 x i32>, ptr %next.gep312, align 4, !tbaa !236, !alias.scope !2307
  store <4 x i32> %wide.vec313, ptr %next.gep309, align 4, !tbaa !4, !alias.scope !2310, !noalias !2307
  store <4 x i32> %wide.vec316, ptr %next.gep310, align 4, !tbaa !4, !alias.scope !2310, !noalias !2307
  %index.next321 = add nuw i64 %index308, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next321, %n.vec306
  br i1 %i.hk, label %middle.block322, label %vector.body307, !llvm.loop !2312

middle.block322:                                  ; preds = %vector.body307
  %cmp.n323 = icmp eq i64 %i.ha, %n.vec306
  br i1 %cmp.n323, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67, label %.lr.ph.i.i.i.i62.preheader

.lr.ph.i.i.i.i62.preheader:                       ; preds = %vector.memcheck296, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %middle.block322
  %.09.i.i.i.i63.ph = phi ptr [ %.0.lcssa.i.i.i.i.i60, %vector.memcheck296 ], [ %.0.lcssa.i.i.i.i.i60, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.hg, %middle.block322 ]
  %.sroa.04.08.i.i.i.i64.ph = phi ptr [ %2, %vector.memcheck296 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.hh, %middle.block322 ]
  br label %.lr.ph.i.i.i.i62

.lr.ph.i.i.i.i62:                                 ; preds = %.lr.ph.i.i.i.i62.preheader, %.lr.ph.i.i.i.i62
  %.09.i.i.i.i63 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i62 ], [ %.09.i.i.i.i63.ph, %.lr.ph.i.i.i.i62.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i64 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i62 ], [ %.sroa.04.08.i.i.i.i64.ph, %.lr.ph.i.i.i.i62.preheader ] ; 3 uses
  %i.hl = load i32, ptr %.sroa.04.08.i.i.i.i64, align 4, !tbaa !236
  store i32 %i.hl, ptr %.09.i.i.i.i63, align 4, !tbaa !4
  %i.hm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i63, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i64, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !236
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !4
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i64, i64 8 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i63, i64 8 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.hp, %3
  br i1 %.not.i.i.i.i65, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67, label %.lr.ph.i.i.i.i62, !llvm.loop !2313

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i62, %middle.block322
  %.lcssa113 = phi ptr [ %i.hg, %middle.block322 ], [ %i.hq, %.lr.ph.i.i.i.i62 ] ; 8 uses
  %.not9.i.i.i.i.i68 = icmp eq ptr %1, %i.i
  br i1 %.not9.i.i.i.i.i68, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, label %.lr.ph.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i69.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67
  %i.hr = sub i64 %i.k, %i.a
  %i.hs = add i64 %i.hr, -8                       ; 2 uses
  %i.ht = lshr i64 %i.hs, 3
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.hs, 120
  br i1 %min.iters.check333, label %.lr.ph.i.i.i.i.i69.preheader356, label %vector.memcheck326

vector.memcheck326:                               ; preds = %.lr.ph.i.i.i.i.i69.preheader
  %i.hv = add i64 %i.k, -8
  %i.hw = sub i64 %i.hv, %i.a
  %i.hx = and i64 %i.hw, -8
  %i.hy = add i64 %i.hx, 8                        ; 2 uses
  %scevgep327 = getelementptr i8, ptr %.lcssa113, i64 %i.hy
  %scevgep328 = getelementptr i8, ptr %1, i64 %i.hy
  %bound0329 = icmp ult ptr %.lcssa113, %scevgep328
  %bound1330 = icmp ult ptr %1, %scevgep327
  %found.conflict331 = and i1 %bound0329, %bound1330
  br i1 %found.conflict331, label %.lr.ph.i.i.i.i.i69.preheader356, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck326
  %n.vec336 = and i64 %i.hu, 4611686018427387900  ; 3 uses
  %i.hz = shl i64 %n.vec336, 3                    ; 2 uses
  %i.ia = getelementptr i8, ptr %.lcssa113, i64 %i.hz ; 2 uses
  %i.ib = getelementptr i8, ptr %1, i64 %i.hz
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph334
  %index338 = phi i64 [ 0, %vector.ph334 ], [ %index.next351, %vector.body337 ] ; 2 uses
  %i.ic = shl i64 %index338, 3                    ; 3 uses
  %i.id = or disjoint i64 %i.ic, 16               ; 2 uses
  %next.gep339 = getelementptr i8, ptr %.lcssa113, i64 %i.ic
  %next.gep340 = getelementptr i8, ptr %.lcssa113, i64 %i.id
  %next.gep341 = getelementptr i8, ptr %1, i64 %i.ic
  %next.gep342 = getelementptr i8, ptr %1, i64 %i.id
  %wide.vec343 = load <4 x i32>, ptr %next.gep341, align 4, !tbaa !236, !alias.scope !2314
  %wide.vec346 = load <4 x i32>, ptr %next.gep342, align 4, !tbaa !236, !alias.scope !2314
  store <4 x i32> %wide.vec343, ptr %next.gep339, align 4, !tbaa !4, !alias.scope !2317, !noalias !2314
  store <4 x i32> %wide.vec346, ptr %next.gep340, align 4, !tbaa !4, !alias.scope !2317, !noalias !2314
  %index.next351 = add nuw i64 %index338, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next351, %n.vec336
  br i1 %i.ie, label %middle.block352, label %vector.body337, !llvm.loop !2319

middle.block352:                                  ; preds = %vector.body337
  %cmp.n353 = icmp eq i64 %i.hu, %n.vec336
  br i1 %cmp.n353, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, label %.lr.ph.i.i.i.i.i69.preheader356

.lr.ph.i.i.i.i.i69.preheader356:                  ; preds = %vector.memcheck326, %.lr.ph.i.i.i.i.i69.preheader, %middle.block352
  %.011.i.i.i.i.i70.ph = phi ptr [ %.lcssa113, %vector.memcheck326 ], [ %.lcssa113, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ia, %middle.block352 ]
  %.0810.i.i.i.i.i71.ph = phi ptr [ %1, %vector.memcheck326 ], [ %1, %.lr.ph.i.i.i.i.i69.preheader ], [ %i.ib, %middle.block352 ]
  br label %.lr.ph.i.i.i.i.i69

.lr.ph.i.i.i.i.i69:                               ; preds = %.lr.ph.i.i.i.i.i69.preheader356, %.lr.ph.i.i.i.i.i69
  %.011.i.i.i.i.i70 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i69 ], [ %.011.i.i.i.i.i70.ph, %.lr.ph.i.i.i.i.i69.preheader356 ] ; 3 uses
  %.0810.i.i.i.i.i71 = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i69 ], [ %.0810.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i69.preheader356 ] ; 3 uses
  %i.if = load i32, ptr %.0810.i.i.i.i.i71, align 4, !tbaa !236
  store i32 %i.if, ptr %.011.i.i.i.i.i70, align 4, !tbaa !4
  %i.ig = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i70, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i71, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !236
  store i32 %i.ii, ptr %i.ig, align 4, !tbaa !4
  %i.ij = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i71, i64 8 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i70, i64 8 ; 2 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %i.ij, %i.i
  br i1 %.not.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, label %.lr.ph.i.i.i.i.i69, !llvm.loop !2320

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74: ; preds = %.lr.ph.i.i.i.i.i69, %middle.block352, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %.lcssa113, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit67 ], [ %i.ia, %middle.block352 ], [ %i.ik, %.lr.ph.i.i.i.i.i69 ]
  %.not.i75 = icmp eq ptr %i.fq, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74
  %i.il = sub i64 %i.j, %i.fr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.il) #48
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit74, %bb.h
  store ptr %i.gc, ptr %0, align 8, !tbaa !267
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.h, align 8, !tbaa !264
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.fz
  store ptr %i.im, ptr %i.f, align 8, !tbaa !268
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi2EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.i.i.i.i.i44, %middle.block181, %middle.block261, %_ZSt22__uninitialized_move_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit51, %_ZSt13move_backwardIP3LocILi2EES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 10 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 10 uses
  %i.d = sub i64 %i.b, %i.c                       ; 8 uses
  %i.e = ashr exact i64 %i.d, 4                   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !280
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !276  ; 35 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 10 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 6 uses
  %i.o = ashr exact i64 %i.n, 4                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 11 uses
  %i.r = sub i64 %i.b, %i.c
  %i.s = add i64 %i.r, -16                        ; 2 uses
  %i.t = lshr i64 %i.s, 4
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check177 = icmp ult i64 %i.s, 1040
  br i1 %min.iters.check177, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck151

vector.memcheck151:                               ; preds = %bb.d
  %i.v = add i64 %i.b, -16
  %i.w = sub i64 %i.v, %i.c
  %i.x = and i64 %i.w, -16                        ; 4 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep152 = getelementptr i8, ptr %i.y, i64 8 ; 3 uses
  %scevgep153 = getelementptr i8, ptr %i.i, i64 8 ; 3 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.x
  %scevgep154 = getelementptr i8, ptr %i.z, i64 16 ; 3 uses
  %i.aa = add i64 %i.x, %i.c
  %i.ab = add i64 %i.aa, 8
  %i.ac = sub i64 %i.ab, %i.b
  %scevgep155 = getelementptr i8, ptr %i.i, i64 %i.ac ; 2 uses
  %i.ad = add i64 %i.c, 8
  %i.ae = sub i64 %i.ad, %i.b
  %scevgep156 = getelementptr i8, ptr %i.i, i64 %i.ae ; 2 uses
  %i.af = add i64 %i.x, %i.c
  %i.ag = add i64 %i.af, 16
  %i.ah = sub i64 %i.ag, %i.b
  %scevgep157 = getelementptr i8, ptr %i.i, i64 %i.ah ; 2 uses
  %bound0158 = icmp ult ptr %i.i, %scevgep154
  %bound1159 = icmp ult ptr %scevgep153, %scevgep152
  %found.conflict160 = and i1 %bound0158, %bound1159
  %bound0161 = icmp ult ptr %i.i, %scevgep155
  %bound1162 = icmp ult ptr %i.q, %scevgep152
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx = or i1 %found.conflict160, %found.conflict163
  %bound0164 = icmp ult ptr %i.i, %scevgep157
  %bound1165 = icmp ult ptr %scevgep156, %scevgep152
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx, %found.conflict166
  %bound0168 = icmp ult ptr %scevgep153, %scevgep155
  %bound1169 = icmp ult ptr %i.q, %scevgep154
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %scevgep153, %scevgep157
  %bound1173 = icmp ult ptr %scevgep156, %scevgep154
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  br i1 %conflict.rdx175, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck151
  %n.vec180 = and i64 %i.u, 2305843009213693950   ; 3 uses
  %i.ai = shl i64 %n.vec180, 4                    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.q, i64 %i.ai
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph178
  %index182 = phi i64 [ 0, %vector.ph178 ], [ %index.next189, %vector.body181 ] ; 2 uses
  %i.al = shl i64 %index182, 4                    ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.i, i64 %i.al
  %next.gep184 = getelementptr i8, ptr %i.i, i64 %i.am
  %next.gep185 = getelementptr i8, ptr %i.q, i64 %i.al
  %next.gep186 = getelementptr i8, ptr %i.q, i64 %i.am
  %wide.load187 = load <2 x double>, ptr %next.gep185, align 8, !tbaa !247
  %wide.load188 = load <2 x double>, ptr %next.gep186, align 8, !tbaa !247
  store <2 x double> %wide.load187, ptr %next.gep183, align 8, !tbaa !247
  store <2 x double> %wide.load188, ptr %next.gep184, align 8, !tbaa !247
  %index.next189 = add nuw i64 %index182, 2       ; 2 uses
  %i.an = icmp eq i64 %index.next189, %n.vec180
  br i1 %i.an, label %middle.block190, label %vector.body181, !llvm.loop !2321

middle.block190:                                  ; preds = %vector.body181
  %cmp.n191 = icmp eq i64 %i.u, %n.vec180
  br i1 %cmp.n191, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck151, %bb.d, %middle.block190
  %.09.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck151 ], [ %i.i, %bb.d ], [ %i.aj, %middle.block190 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck151 ], [ %i.q, %bb.d ], [ %i.ak, %middle.block190 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ao = load double, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !247
  store double %i.ao, ptr %.09.i.i.i.i.i, align 8, !tbaa !247
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !247
  store double %i.ar, ptr %i.ap, align 8, !tbaa !247
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2322

_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block190
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.au, ptr %i.h, align 8, !tbaa !276
  %i.av = ptrtoint ptr %i.q to i64
  %i.aw = sub i64 %i.av, %i.m                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 4                 ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i43.preheader, label %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i43.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.az = and i64 %i.aw, 16
  %lcmp.mod274.not = icmp eq i64 %i.az, 0
  br i1 %lcmp.mod274.not, label %.lr.ph.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i43.prol

.lr.ph.i.i.i.i.i43.prol:                          ; preds = %.lr.ph.i.i.i.i.i43.preheader
  %i.ba = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !247
  store double %i.bc, ptr %i.bb, align 8, !tbaa !247
  %i.bd = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.be = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !247
  store double %i.bf, ptr %i.bd, align 8, !tbaa !247
  %i.bg = add nsw i64 %i.ax, -1
  br label %.lr.ph.i.i.i.i.i43.prol.loopexit

.lr.ph.i.i.i.i.i43.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i43.prol, %.lr.ph.i.i.i.i.i43.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.i43.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.bb, %.lr.ph.i.i.i.i.i43.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i43.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i43.prol ]
  %i.bh = icmp eq i64 %i.aw, 16
  br i1 %i.bh, label %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1
  %.010.i.i.i.i.i = phi i64 [ %i.bu, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bp, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bo, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i43.prol.loopexit ] ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.069.i.i.i.i.i, %.078.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i43
  %i.bi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.bj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !247
  store double %i.bk, ptr %i.bj, align 8, !tbaa !247
  %i.bl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.bm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !247
  store double %i.bn, ptr %i.bl, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i:    ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i43
  %i.bo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %.069.i.i.i.i.i, %.078.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bq = load double, ptr %i.bo, align 8, !tbaa !247
  store double %i.bq, ptr %i.bp, align 8, !tbaa !247
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !247
  store double %i.bt, ptr %i.br, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bu = add nsw i64 %.010.i.i.i.i.i, -2
  %i.bv = icmp sgt i64 %.010.i.i.i.i.i, 2
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, !llvm.loop !2323

_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i43.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.bw = icmp sgt i64 %i.e, 0
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i44.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i44.preheader:                     ; preds = %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit
  %i.bx = and i64 %i.d, 16
  %lcmp.mod276.not = icmp eq i64 %i.bx, 0
  br i1 %lcmp.mod276.not, label %.lr.ph.i.i.i.i.i44.prol.loopexit, label %.lr.ph.i.i.i.i.i44.prol

.lr.ph.i.i.i.i.i44.prol:                          ; preds = %.lr.ph.i.i.i.i.i44.preheader
  %.not.i.i.i.i.i.i45.prol = icmp eq ptr %1, %2
  br i1 %.not.i.i.i.i.i.i45.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46.prol: ; preds = %.lr.ph.i.i.i.i.i44.prol
  %i.by = load double, ptr %2, align 8, !tbaa !247
  store double %i.by, ptr %1, align 8, !tbaa !247
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !247
  store double %i.cb, ptr %i.bz, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46.prol, %.lr.ph.i.i.i.i.i44.prol
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = add nsw i64 %i.e, -1
  br label %.lr.ph.i.i.i.i.i44.prol.loopexit

.lr.ph.i.i.i.i.i44.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol, %.lr.ph.i.i.i.i.i44.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.ce, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.cd, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.cc, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.prol ]
  %i.cf = icmp eq i64 %i.d, 16
  br i1 %i.cf, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i44

.lr.ph.i.i.i.i.i44:                               ; preds = %.lr.ph.i.i.i.i.i44.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1
  %.012.i.i.i.i.i = phi i64 [ %i.cs, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i44.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cr, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i44.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cq, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i44.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i45 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i45, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i44
  %i.cg = load double, ptr %.0910.i.i.i.i.i, align 8, !tbaa !247
  store double %i.cg, ptr %.0811.i.i.i.i.i, align 8, !tbaa !247
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !247
  store double %i.cj, ptr %i.ch, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46, %.lr.ph.i.i.i.i.i44
  %.not.i.i.i.i.i.i45.1 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i45.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !247
  store double %i.cm, ptr %i.ck, align 8, !tbaa !247
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.cp = load double, ptr %i.co, align 8, !tbaa !247
  store double %i.cp, ptr %i.cn, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i46.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47
  %i.cq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.cs = add nsw i64 %.012.i.i.i.i.i, -2
  %i.ct = icmp sgt i64 %.012.i.i.i.i.i, 2
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i44, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, !llvm.loop !675

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.cu = getelementptr inbounds i8, ptr %2, i64 %i.n ; 7 uses
  %.not7.i.i.i.i = icmp eq ptr %i.cu, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cv = add i64 %i.b, %i.m
  %i.cw = add i64 %i.k, %i.c
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = add i64 %i.cx, -16                      ; 2 uses
  %i.cz = lshr i64 %i.cy, 4
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 400
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader272, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.db = add i64 %i.b, %i.m
  %i.dc = add i64 %i.db, -16
  %i.dd = add i64 %i.k, %i.c
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = and i64 %i.de, -16                      ; 2 uses
  %i.dg = getelementptr i8, ptr %i.i, i64 %i.df
  %scevgep = getelementptr i8, ptr %i.dg, i64 16
  %i.dh = add i64 %i.df, %i.k
  %i.di = add i64 %i.dh, 16
  %i.dj = sub i64 %i.di, %i.m
  %scevgep121 = getelementptr i8, ptr %2, i64 %i.dj
  %bound0 = icmp ult ptr %i.i, %scevgep121
  %bound1 = icmp ult ptr %i.cu, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader272, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 2305843009213693950     ; 3 uses
  %i.dk = shl i64 %n.vec, 4                       ; 2 uses
  %i.dl = getelementptr i8, ptr %i.i, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.cu, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl i64 %index, 4                       ; 3 uses
  %i.do = or disjoint i64 %i.dn, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.dn
  %next.gep122 = getelementptr i8, ptr %i.i, i64 %i.do
  %next.gep123 = getelementptr i8, ptr %i.cu, i64 %i.dn
  %next.gep124 = getelementptr i8, ptr %i.cu, i64 %i.do
  %wide.load = load <2 x double>, ptr %next.gep123, align 8, !tbaa !247, !alias.scope !2324
  %wide.load125 = load <2 x double>, ptr %next.gep124, align 8, !tbaa !247, !alias.scope !2324
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !247, !alias.scope !2327, !noalias !2324
  store <2 x double> %wide.load125, ptr %next.gep122, align 8, !tbaa !247, !alias.scope !2327, !noalias !2324
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !2329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader272

.lr.ph.i.i.i.i.preheader272:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.dl, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.cu, %vector.memcheck ], [ %i.cu, %.lr.ph.i.i.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader272, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader272 ] ; 3 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader272 ] ; 3 uses
  %i.dq = load double, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !247
  store double %i.dq, ptr %.09.i.i.i.i, align 8, !tbaa !247
  %i.dr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !247
  store double %i.dt, ptr %i.dr, align 8, !tbaa !247
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.du, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2330

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.dw = sub nsw i64 %i.e, %i.o
  %i.dx = getelementptr [16 x i8], ptr %i.i, i64 %i.dw ; 6 uses
  %.not7.i.i.i.i.i48 = icmp eq ptr %1, %i.i
  br i1 %.not7.i.i.i.i.i48, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  %i.dy = sub i64 %i.k, %i.m
  %i.dz = add i64 %i.dy, -16                      ; 2 uses
  %i.ea = lshr i64 %i.dz, 4
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.dz, 336
  br i1 %min.iters.check134, label %.lr.ph.i.i.i.i.i49.preheader271, label %vector.memcheck127

vector.memcheck127:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader
  %i.ec = add i64 %i.k, -16
  %i.ed = sub i64 %i.ec, %i.m
  %i.ee = and i64 %i.ed, -16                      ; 2 uses
  %i.ef = add i64 %i.d, %i.ee
  %i.eg = add i64 %i.ef, 16
  %i.eh = sub i64 %i.eg, %i.n
  %scevgep128 = getelementptr i8, ptr %i.i, i64 %i.eh
  %i.ei = getelementptr i8, ptr %1, i64 %i.ee
  %scevgep129 = getelementptr i8, ptr %i.ei, i64 16
  %bound0130 = icmp ult ptr %i.dx, %scevgep129
  %bound1131 = icmp ult ptr %1, %scevgep128
  %found.conflict132 = and i1 %bound0130, %bound1131
  br i1 %found.conflict132, label %.lr.ph.i.i.i.i.i49.preheader271, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck127
  %n.vec137 = and i64 %i.eb, 2305843009213693950  ; 3 uses
  %i.ej = shl i64 %n.vec137, 4                    ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dx, i64 %i.ej
  %i.el = getelementptr i8, ptr %1, i64 %i.ej
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph135
  %index139 = phi i64 [ 0, %vector.ph135 ], [ %index.next146, %vector.body138 ] ; 2 uses
  %i.em = shl i64 %index139, 4                    ; 3 uses
  %i.en = or disjoint i64 %i.em, 16               ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.dx, i64 %i.em
  %next.gep141 = getelementptr i8, ptr %i.dx, i64 %i.en
  %next.gep142 = getelementptr i8, ptr %1, i64 %i.em
  %next.gep143 = getelementptr i8, ptr %1, i64 %i.en
  %wide.load144 = load <2 x double>, ptr %next.gep142, align 8, !tbaa !247, !alias.scope !2331
  %wide.load145 = load <2 x double>, ptr %next.gep143, align 8, !tbaa !247, !alias.scope !2331
  store <2 x double> %wide.load144, ptr %next.gep140, align 8, !tbaa !247, !alias.scope !2334, !noalias !2331
  store <2 x double> %wide.load145, ptr %next.gep141, align 8, !tbaa !247, !alias.scope !2334, !noalias !2331
  %index.next146 = add nuw i64 %index139, 2       ; 2 uses
  %i.eo = icmp eq i64 %index.next146, %n.vec137
  br i1 %i.eo, label %middle.block147, label %vector.body138, !llvm.loop !2336

middle.block147:                                  ; preds = %vector.body138
  %cmp.n148 = icmp eq i64 %i.eb, %n.vec137
  br i1 %cmp.n148, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader271

.lr.ph.i.i.i.i.i49.preheader271:                  ; preds = %vector.memcheck127, %.lr.ph.i.i.i.i.i49.preheader, %middle.block147
  %.09.i.i.i.i.i50.ph = phi ptr [ %i.dx, %vector.memcheck127 ], [ %i.dx, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.ek, %middle.block147 ]
  %.sroa.04.08.i.i.i.i.i51.ph = phi ptr [ %1, %vector.memcheck127 ], [ %1, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.el, %middle.block147 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader271, %.lr.ph.i.i.i.i.i49
  %.09.i.i.i.i.i50 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i49 ], [ %.09.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i49.preheader271 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i51 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i49 ], [ %.sroa.04.08.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i49.preheader271 ] ; 3 uses
  %i.ep = load double, ptr %.sroa.04.08.i.i.i.i.i51, align 8, !tbaa !247
  store double %i.ep, ptr %.09.i.i.i.i.i50, align 8, !tbaa !247
  %i.eq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i50, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i51, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !247
  store double %i.es, ptr %i.eq, align 8, !tbaa !247
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i51, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i50, i64 16
  %.not.i.i.i.i.i52 = icmp eq ptr %i.et, %i.i
  br i1 %.not.i.i.i.i.i52, label %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, label %.lr.ph.i.i.i.i.i49, !llvm.loop !2337

_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54: ; preds = %.lr.ph.i.i.i.i.i49, %middle.block147, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.ev, ptr %i.h, align 8, !tbaa !276
  %i.ew = ashr exact i64 %i.n, 4                  ; 3 uses
  %i.ex = icmp sgt i64 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i56.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i56.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54
  %i.ey = and i64 %i.n, 16
  %lcmp.mod.not = icmp eq i64 %i.ey, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i56.prol.loopexit, label %.lr.ph.i.i.i.i.i56.prol

.lr.ph.i.i.i.i.i56.prol:                          ; preds = %.lr.ph.i.i.i.i.i56.preheader
  %.not.i.i.i.i.i.i60.prol = icmp eq ptr %1, %2
  br i1 %.not.i.i.i.i.i.i60.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.prol: ; preds = %.lr.ph.i.i.i.i.i56.prol
  %i.ez = load double, ptr %2, align 8, !tbaa !247
  store double %i.ez, ptr %1, align 8, !tbaa !247
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !247
  store double %i.fc, ptr %i.fa, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.prol, %.lr.ph.i.i.i.i.i56.prol
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ff = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i.i.i.i56.prol.loopexit

.lr.ph.i.i.i.i.i56.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol, %.lr.ph.i.i.i.i.i56.preheader
  %.012.i.i.i.i.i57.unr = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.ff, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol ]
  %.0811.i.i.i.i.i58.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.fe, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol ]
  %.0910.i.i.i.i.i59.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i56.preheader ], [ %i.fd, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.prol ]
  %i.fg = icmp eq i64 %i.n, 16
  br i1 %i.fg, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %.lr.ph.i.i.i.i.i56.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1
  %.012.i.i.i.i.i57 = phi i64 [ %i.ft, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1 ], [ %.012.i.i.i.i.i57.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i58 = phi ptr [ %i.fs, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1 ], [ %.0811.i.i.i.i.i58.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i59 = phi ptr [ %i.fr, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1 ], [ %.0910.i.i.i.i.i59.unr, %.lr.ph.i.i.i.i.i56.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i60 = icmp eq ptr %.0811.i.i.i.i.i58, %.0910.i.i.i.i.i59
  br i1 %.not.i.i.i.i.i.i60, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61: ; preds = %.lr.ph.i.i.i.i.i56
  %i.fh = load double, ptr %.0910.i.i.i.i.i59, align 8, !tbaa !247
  store double %i.fh, ptr %.0811.i.i.i.i.i58, align 8, !tbaa !247
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 8
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !247
  store double %i.fk, ptr %i.fi, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61, %.lr.ph.i.i.i.i.i56
  %.not.i.i.i.i.i.i60.1 = icmp eq ptr %.0811.i.i.i.i.i58, %.0910.i.i.i.i.i59
  br i1 %.not.i.i.i.i.i.i60.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62
  %i.fl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !247
  store double %i.fn, ptr %i.fl, align 8, !tbaa !247
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 24
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !247
  store double %i.fq, ptr %i.fo, align 8, !tbaa !247
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i61.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 32
  %i.ft = add nsw i64 %.012.i.i.i.i.i57, -2
  %i.fu = icmp sgt i64 %.012.i.i.i.i.i57, 2
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i56, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, !llvm.loop !675

bb.e:                                             ; preds = %bb.b
  %i.fv = load ptr, ptr %0, align 8, !tbaa !279   ; 11 uses
  %i.fw = ptrtoint ptr %i.fv to i64               ; 4 uses
  %i.fx = sub i64 %i.k, %i.fw
  %i.fy = ashr exact i64 %i.fx, 4                 ; 4 uses
  %i.fz = sub nsw i64 576460752303423487, %i.fy
  %i.ga = icmp ult i64 %i.fz, %i.e
  br i1 %i.ga, label %bb.f, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.199) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.e)
  %i.gb = add nsw i64 %.sroa.speculated.i, %i.fy  ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.fy
  %i.gd = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 576460752303423487)
  %i.ge = select i1 %i.gc, i64 576460752303423487, i64 %i.gd ; 3 uses
  %.not.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit
  %i.gf = shl nuw nsw i64 %i.ge, 4
  %i.gg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #45
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.gh = phi ptr [ %i.gg, %bb.g ], [ null, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit ] ; 10 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.fv, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i64.preheader

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit
  %i.gi = sub i64 %i.a, %i.fw
  %i.gj = add i64 %i.gi, -16                      ; 2 uses
  %i.gk = lshr i64 %i.gj, 4
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %min.iters.check201 = icmp ult i64 %i.gj, 240
  br i1 %min.iters.check201, label %.lr.ph.i.i.i.i.i64.preheader268, label %vector.memcheck194

vector.memcheck194:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader
  %i.gm = add i64 %i.a, -16
  %i.gn = sub i64 %i.gm, %i.fw
  %i.go = and i64 %i.gn, -16
  %i.gp = add i64 %i.go, 16                       ; 2 uses
  %scevgep195 = getelementptr i8, ptr %i.gh, i64 %i.gp
  %scevgep196 = getelementptr i8, ptr %i.fv, i64 %i.gp
  %bound0197 = icmp ult ptr %i.gh, %scevgep196
  %bound1198 = icmp ult ptr %i.fv, %scevgep195
  %found.conflict199 = and i1 %bound0197, %bound1198
  br i1 %found.conflict199, label %.lr.ph.i.i.i.i.i64.preheader268, label %vector.ph202

vector.ph202:                                     ; preds = %vector.memcheck194
  %n.vec204 = and i64 %i.gl, 2305843009213693950  ; 3 uses
  %i.gq = shl i64 %n.vec204, 4                    ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gh, i64 %i.gq  ; 2 uses
  %i.gs = getelementptr i8, ptr %i.fv, i64 %i.gq
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph202
  %index206 = phi i64 [ 0, %vector.ph202 ], [ %index.next213, %vector.body205 ] ; 2 uses
  %i.gt = shl i64 %index206, 4                    ; 3 uses
  %i.gu = or disjoint i64 %i.gt, 16               ; 2 uses
  %next.gep207 = getelementptr i8, ptr %i.gh, i64 %i.gt
  %next.gep208 = getelementptr i8, ptr %i.gh, i64 %i.gu
  %next.gep209 = getelementptr i8, ptr %i.fv, i64 %i.gt
  %next.gep210 = getelementptr i8, ptr %i.fv, i64 %i.gu
  %wide.load211 = load <2 x double>, ptr %next.gep209, align 8, !tbaa !247, !alias.scope !2338
  %wide.load212 = load <2 x double>, ptr %next.gep210, align 8, !tbaa !247, !alias.scope !2338
  store <2 x double> %wide.load211, ptr %next.gep207, align 8, !tbaa !247, !alias.scope !2341, !noalias !2338
  store <2 x double> %wide.load212, ptr %next.gep208, align 8, !tbaa !247, !alias.scope !2341, !noalias !2338
  %index.next213 = add nuw i64 %index206, 2       ; 2 uses
  %i.gv = icmp eq i64 %index.next213, %n.vec204
  br i1 %i.gv, label %middle.block214, label %vector.body205, !llvm.loop !2343

middle.block214:                                  ; preds = %vector.body205
  %cmp.n215 = icmp eq i64 %i.gl, %n.vec204
  br i1 %cmp.n215, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i64.preheader268

.lr.ph.i.i.i.i.i64.preheader268:                  ; preds = %vector.memcheck194, %.lr.ph.i.i.i.i.i64.preheader, %middle.block214
  %.011.i.i.i.i.i.ph = phi ptr [ %i.gh, %vector.memcheck194 ], [ %i.gh, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.gr, %middle.block214 ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.fv, %vector.memcheck194 ], [ %i.fv, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.gs, %middle.block214 ]
  br label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.preheader268, %.lr.ph.i.i.i.i.i64
  %.011.i.i.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i.i.i64 ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i64.preheader268 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i64 ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i64.preheader268 ] ; 3 uses
  %i.gw = load double, ptr %.0810.i.i.i.i.i, align 8, !tbaa !247
  store double %i.gw, ptr %.011.i.i.i.i.i, align 8, !tbaa !247
  %i.gx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !247
  store double %i.gz, ptr %i.gx, align 8, !tbaa !247
  %i.ha = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %i.ha, %1
  br i1 %.not.i.i.i.i.i65, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i64, !llvm.loop !2344

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i64, %middle.block214, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i66 = phi ptr [ %i.gh, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE11_M_allocateEm.exit ], [ %i.gr, %middle.block214 ], [ %i.hb, %.lr.ph.i.i.i.i.i64 ] ; 7 uses
  %i.hc = sub i64 %i.b, %i.c
  %i.hd = add i64 %i.hc, -16                      ; 2 uses
  %i.he = lshr i64 %i.hd, 4
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check225 = icmp ult i64 %i.hd, 240
  br i1 %min.iters.check225, label %.lr.ph.i.i.i.i68.preheader, label %vector.memcheck218

vector.memcheck218:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.hg = add i64 %i.b, -16
  %i.hh = sub i64 %i.hg, %i.c
  %i.hi = and i64 %i.hh, -16
  %i.hj = add i64 %i.hi, 16                       ; 2 uses
  %scevgep219 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hj
  %scevgep220 = getelementptr i8, ptr %2, i64 %i.hj
  %bound0221 = icmp ult ptr %.0.lcssa.i.i.i.i.i66, %scevgep220
  %bound1222 = icmp ult ptr %2, %scevgep219
  %found.conflict223 = and i1 %bound0221, %bound1222
  br i1 %found.conflict223, label %.lr.ph.i.i.i.i68.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %vector.memcheck218
  %n.vec228 = and i64 %i.hf, 2305843009213693950  ; 3 uses
  %i.hk = shl i64 %n.vec228, 4                    ; 2 uses
  %i.hl = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hk ; 2 uses
  %i.hm = getelementptr i8, ptr %2, i64 %i.hk
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph226
  %index230 = phi i64 [ 0, %vector.ph226 ], [ %index.next237, %vector.body229 ] ; 2 uses
  %i.hn = shl i64 %index230, 4                    ; 3 uses
  %i.ho = or disjoint i64 %i.hn, 16               ; 2 uses
  %next.gep231 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.hn
  %next.gep232 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i66, i64 %i.ho
  %next.gep233 = getelementptr i8, ptr %2, i64 %i.hn
  %next.gep234 = getelementptr i8, ptr %2, i64 %i.ho
  %wide.load235 = load <2 x double>, ptr %next.gep233, align 8, !tbaa !247, !alias.scope !2345
  %wide.load236 = load <2 x double>, ptr %next.gep234, align 8, !tbaa !247, !alias.scope !2345
  store <2 x double> %wide.load235, ptr %next.gep231, align 8, !tbaa !247, !alias.scope !2348, !noalias !2345
  store <2 x double> %wide.load236, ptr %next.gep232, align 8, !tbaa !247, !alias.scope !2348, !noalias !2345
  %index.next237 = add nuw i64 %index230, 2       ; 2 uses
  %i.hp = icmp eq i64 %index.next237, %n.vec228
  br i1 %i.hp, label %middle.block238, label %vector.body229, !llvm.loop !2350

middle.block238:                                  ; preds = %vector.body229
  %cmp.n239 = icmp eq i64 %i.hf, %n.vec228
  br i1 %cmp.n239, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73, label %.lr.ph.i.i.i.i68.preheader

.lr.ph.i.i.i.i68.preheader:                       ; preds = %vector.memcheck218, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %middle.block238
  %.09.i.i.i.i69.ph = phi ptr [ %.0.lcssa.i.i.i.i.i66, %vector.memcheck218 ], [ %.0.lcssa.i.i.i.i.i66, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.hl, %middle.block238 ]
  %.sroa.04.08.i.i.i.i70.ph = phi ptr [ %2, %vector.memcheck218 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.hm, %middle.block238 ]
  br label %.lr.ph.i.i.i.i68

.lr.ph.i.i.i.i68:                                 ; preds = %.lr.ph.i.i.i.i68.preheader, %.lr.ph.i.i.i.i68
  %.09.i.i.i.i69 = phi ptr [ %i.hv, %.lr.ph.i.i.i.i68 ], [ %.09.i.i.i.i69.ph, %.lr.ph.i.i.i.i68.preheader ] ; 3 uses
  %.sroa.04.08.i.i.i.i70 = phi ptr [ %i.hu, %.lr.ph.i.i.i.i68 ], [ %.sroa.04.08.i.i.i.i70.ph, %.lr.ph.i.i.i.i68.preheader ] ; 3 uses
  %i.hq = load double, ptr %.sroa.04.08.i.i.i.i70, align 8, !tbaa !247
  store double %i.hq, ptr %.09.i.i.i.i69, align 8, !tbaa !247
  %i.hr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i69, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i70, i64 8
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !247
  store double %i.ht, ptr %i.hr, align 8, !tbaa !247
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i70, i64 16 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i69, i64 16 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.hu, %3
  br i1 %.not.i.i.i.i71, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73, label %.lr.ph.i.i.i.i68, !llvm.loop !2351

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73: ; preds = %.lr.ph.i.i.i.i68, %middle.block238
  %.lcssa119 = phi ptr [ %i.hl, %middle.block238 ], [ %i.hv, %.lr.ph.i.i.i.i68 ] ; 8 uses
  %.not9.i.i.i.i.i74 = icmp eq ptr %1, %i.i
  br i1 %.not9.i.i.i.i.i74, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75.preheader

.lr.ph.i.i.i.i.i75.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73
  %i.hw = sub i64 %i.k, %i.a
  %i.hx = add i64 %i.hw, -16                      ; 2 uses
  %i.hy = lshr i64 %i.hx, 4
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check249 = icmp ult i64 %i.hx, 240
  br i1 %min.iters.check249, label %.lr.ph.i.i.i.i.i75.preheader266, label %vector.memcheck242

vector.memcheck242:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader
  %i.ia = add i64 %i.k, -16
  %i.ib = sub i64 %i.ia, %i.a
  %i.ic = and i64 %i.ib, -16
  %i.id = add i64 %i.ic, 16                       ; 2 uses
  %scevgep243 = getelementptr i8, ptr %.lcssa119, i64 %i.id
  %scevgep244 = getelementptr i8, ptr %1, i64 %i.id
  %bound0245 = icmp ult ptr %.lcssa119, %scevgep244
  %bound1246 = icmp ult ptr %1, %scevgep243
  %found.conflict247 = and i1 %bound0245, %bound1246
  br i1 %found.conflict247, label %.lr.ph.i.i.i.i.i75.preheader266, label %vector.ph250

vector.ph250:                                     ; preds = %vector.memcheck242
  %n.vec252 = and i64 %i.hz, 2305843009213693950  ; 3 uses
  %i.ie = shl i64 %n.vec252, 4                    ; 2 uses
  %i.if = getelementptr i8, ptr %.lcssa119, i64 %i.ie ; 2 uses
  %i.ig = getelementptr i8, ptr %1, i64 %i.ie
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph250
  %index254 = phi i64 [ 0, %vector.ph250 ], [ %index.next261, %vector.body253 ] ; 2 uses
  %i.ih = shl i64 %index254, 4                    ; 3 uses
  %i.ii = or disjoint i64 %i.ih, 16               ; 2 uses
  %next.gep255 = getelementptr i8, ptr %.lcssa119, i64 %i.ih
  %next.gep256 = getelementptr i8, ptr %.lcssa119, i64 %i.ii
  %next.gep257 = getelementptr i8, ptr %1, i64 %i.ih
  %next.gep258 = getelementptr i8, ptr %1, i64 %i.ii
  %wide.load259 = load <2 x double>, ptr %next.gep257, align 8, !tbaa !247, !alias.scope !2352
  %wide.load260 = load <2 x double>, ptr %next.gep258, align 8, !tbaa !247, !alias.scope !2352
  store <2 x double> %wide.load259, ptr %next.gep255, align 8, !tbaa !247, !alias.scope !2355, !noalias !2352
  store <2 x double> %wide.load260, ptr %next.gep256, align 8, !tbaa !247, !alias.scope !2355, !noalias !2352
  %index.next261 = add nuw i64 %index254, 2       ; 2 uses
  %i.ij = icmp eq i64 %index.next261, %n.vec252
  br i1 %i.ij, label %middle.block262, label %vector.body253, !llvm.loop !2357

middle.block262:                                  ; preds = %vector.body253
  %cmp.n263 = icmp eq i64 %i.hz, %n.vec252
  br i1 %cmp.n263, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75.preheader266

.lr.ph.i.i.i.i.i75.preheader266:                  ; preds = %vector.memcheck242, %.lr.ph.i.i.i.i.i75.preheader, %middle.block262
  %.011.i.i.i.i.i76.ph = phi ptr [ %.lcssa119, %vector.memcheck242 ], [ %.lcssa119, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.if, %middle.block262 ]
  %.0810.i.i.i.i.i77.ph = phi ptr [ %1, %vector.memcheck242 ], [ %1, %.lr.ph.i.i.i.i.i75.preheader ], [ %i.ig, %middle.block262 ]
  br label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %.lr.ph.i.i.i.i.i75.preheader266, %.lr.ph.i.i.i.i.i75
  %.011.i.i.i.i.i76 = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i75 ], [ %.011.i.i.i.i.i76.ph, %.lr.ph.i.i.i.i.i75.preheader266 ] ; 3 uses
  %.0810.i.i.i.i.i77 = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i75 ], [ %.0810.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i75.preheader266 ] ; 3 uses
  %i.ik = load double, ptr %.0810.i.i.i.i.i77, align 8, !tbaa !247
  store double %i.ik, ptr %.011.i.i.i.i.i76, align 8, !tbaa !247
  %i.il = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i76, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i77, i64 8
  %i.in = load double, ptr %i.im, align 8, !tbaa !247
  store double %i.in, ptr %i.il, align 8, !tbaa !247
  %i.io = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i77, i64 16 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i76, i64 16 ; 2 uses
  %.not.i.i.i.i.i78 = icmp eq ptr %i.io, %i.i
  br i1 %.not.i.i.i.i.i78, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, label %.lr.ph.i.i.i.i.i75, !llvm.loop !2358

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80: ; preds = %.lr.ph.i.i.i.i.i75, %middle.block262, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73
  %.0.lcssa.i.i.i.i.i79 = phi ptr [ %.lcssa119, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit73 ], [ %i.if, %middle.block262 ], [ %i.ip, %.lr.ph.i.i.i.i.i75 ]
  %.not.i81 = icmp eq ptr %i.fv, null
  br i1 %.not.i81, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80
  %i.iq = sub i64 %i.j, %i.fw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.iq) #48
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit80, %bb.h
  store ptr %i.gh, ptr %0, align 8, !tbaa !279
  store ptr %.0.lcssa.i.i.i.i.i79, ptr %i.h, align 8, !tbaa !276
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.ge
  store ptr %i.ir, ptr %i.f, align 8, !tbaa !280
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK6VectorILi2Ed4FullESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i56.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i62.1, %.lr.ph.i.i.i.i.i44.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i47.1, %_ZSt22__uninitialized_move_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit54, %_ZSt13move_backwardIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !267    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #45 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <2 x i32>, ptr %2, align 4, !tbaa !236
  store <2 x i32> %i.r, ptr %i.q, align 4, !tbaa !4
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit
  %i.s = sub i64 %i.m, %i.e
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader78, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = add i64 %i.m, -8
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep37 = getelementptr i8, ptr %i.c, i64 %i.z
  %bound0 = icmp ult ptr %i.p, %scevgep37
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad
  %next.gep38 = getelementptr i8, ptr %i.p, i64 %i.ae
  %next.gep39 = getelementptr i8, ptr %i.c, i64 %i.ad
  %next.gep40 = getelementptr i8, ptr %i.c, i64 %i.ae
  %wide.vec = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !236, !alias.scope !2359
  %wide.vec42 = load <4 x i32>, ptr %next.gep40, align 4, !tbaa !236, !alias.scope !2359
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !4, !alias.scope !2362, !noalias !2359
  store <4 x i32> %wide.vec42, ptr %next.gep38, align 4, !tbaa !4, !alias.scope !2362, !noalias !2359
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !2364

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader78

.lr.ph.i.i.i.i.i.preheader78:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader78, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader78 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader78 ] ; 3 uses
  %i.ag = load i32, ptr %.0810.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ag, ptr %.011.i.i.i.i.i, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !236
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2365

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI3LocILi2EESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 7 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.an = sub i64 %i.d, %i.m
  %i.ao = add i64 %i.an, -8                       ; 2 uses
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check54 = icmp ult i64 %i.ao, 136
  br i1 %min.iters.check54, label %.lr.ph.i.i.i.i.i19.preheader77, label %vector.memcheck47

vector.memcheck47:                                ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %i.ar = add i64 %i.d, -8
  %i.as = sub i64 %i.ar, %i.m
  %i.at = and i64 %i.as, -8                       ; 2 uses
  %i.au = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.at
  %scevgep48 = getelementptr i8, ptr %i.au, i64 16
  %i.av = getelementptr i8, ptr %1, i64 %i.at
  %scevgep49 = getelementptr i8, ptr %i.av, i64 8
  %bound050 = icmp ult ptr %i.am, %scevgep49
  %bound151 = icmp ult ptr %1, %scevgep48
  %found.conflict52 = and i1 %bound050, %bound151
  br i1 %found.conflict52, label %.lr.ph.i.i.i.i.i19.preheader77, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck47
  %n.vec57 = and i64 %i.aq, 4611686018427387900   ; 3 uses
  %i.aw = shl i64 %n.vec57, 3                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.am, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.aw
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph55
  %index59 = phi i64 [ 0, %vector.ph55 ], [ %index.next72, %vector.body58 ] ; 2 uses
  %i.az = shl i64 %index59, 3                     ; 3 uses
  %i.ba = or disjoint i64 %i.az, 16               ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.am, i64 %i.az
  %next.gep61 = getelementptr i8, ptr %i.am, i64 %i.ba
  %next.gep62 = getelementptr i8, ptr %1, i64 %i.az
  %next.gep63 = getelementptr i8, ptr %1, i64 %i.ba
  %wide.vec64 = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !236, !alias.scope !2366
  %wide.vec67 = load <4 x i32>, ptr %next.gep63, align 4, !tbaa !236, !alias.scope !2366
  store <4 x i32> %wide.vec64, ptr %next.gep60, align 4, !tbaa !4, !alias.scope !2369, !noalias !2366
  store <4 x i32> %wide.vec67, ptr %next.gep61, align 4, !tbaa !4, !alias.scope !2369, !noalias !2366
  %index.next72 = add nuw i64 %index59, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next72, %n.vec57
  br i1 %i.bb, label %middle.block73, label %vector.body58, !llvm.loop !2371

middle.block73:                                   ; preds = %vector.body58
  %cmp.n74 = icmp eq i64 %i.aq, %n.vec57
  br i1 %cmp.n74, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24, label %.lr.ph.i.i.i.i.i19.preheader77

.lr.ph.i.i.i.i.i19.preheader77:                   ; preds = %vector.memcheck47, %.lr.ph.i.i.i.i.i19.preheader, %middle.block73
  %.011.i.i.i.i.i20.ph = phi ptr [ %i.am, %vector.memcheck47 ], [ %i.am, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.ax, %middle.block73 ]
  %.0810.i.i.i.i.i21.ph = phi ptr [ %1, %vector.memcheck47 ], [ %1, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.ay, %middle.block73 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader77, %.lr.ph.i.i.i.i.i19
  %.011.i.i.i.i.i20 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i19 ], [ %.011.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader77 ] ; 2 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i19 ], [ %.0810.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader77 ] ; 2 uses
  %i.bc = load <2 x i32>, ptr %.0810.i.i.i.i.i21, align 4, !tbaa !236
  store <2 x i32> %i.bc, ptr %.011.i.i.i.i.i20, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !2372

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %middle.block73, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.am, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.ax, %middle.block73 ], [ %i.be, %.lr.ph.i.i.i.i.i19 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !268
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #48
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi2EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !267
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.a, align 8, !tbaa !264
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !268
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !276  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !279    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #45 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load <2 x double>, ptr %2, align 8, !tbaa !247
  store <2 x double> %i.r, ptr %i.q, align 8, !tbaa !247
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit
  %i.s = sub i64 %i.m, %i.e
  %i.t = add i64 %i.s, -16                        ; 2 uses
  %i.u = lshr i64 %i.t, 4
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 240
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = add i64 %i.m, -16
  %i.x = sub i64 %i.w, %i.e
  %i.y = and i64 %i.x, -16
  %i.z = add i64 %i.y, 16                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.z
  %scevgep37 = getelementptr i8, ptr %i.c, i64 %i.z
  %bound0 = icmp ult ptr %i.p, %scevgep37
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 2305843009213693950      ; 3 uses
  %i.aa = shl i64 %n.vec, 4                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 4                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad
  %next.gep38 = getelementptr i8, ptr %i.p, i64 %i.ae
  %next.gep39 = getelementptr i8, ptr %i.c, i64 %i.ad
  %next.gep40 = getelementptr i8, ptr %i.c, i64 %i.ae
  %wide.load = load <2 x double>, ptr %next.gep39, align 8, !tbaa !247, !alias.scope !2373
  %wide.load41 = load <2 x double>, ptr %next.gep40, align 8, !tbaa !247, !alias.scope !2373
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !247, !alias.scope !2376, !noalias !2373
  store <2 x double> %wide.load41, ptr %next.gep38, align 8, !tbaa !247, !alias.scope !2376, !noalias !2373
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !2378

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader68

.lr.ph.i.i.i.i.i.preheader68:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader68, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader68 ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader68 ] ; 3 uses
  %i.ag = load double, ptr %.0810.i.i.i.i.i, align 8, !tbaa !247
  store double %i.ag, ptr %.011.i.i.i.i.i, align 8, !tbaa !247
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !247
  store double %i.aj, ptr %i.ah, align 8, !tbaa !247
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2379

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI6VectorILi2Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 7 uses
  %.not9.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.an = sub i64 %i.d, %i.m
  %i.ao = add i64 %i.an, -16                      ; 2 uses
  %i.ap = lshr i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check50 = icmp ult i64 %i.ao, 272
  br i1 %min.iters.check50, label %.lr.ph.i.i.i.i.i19.preheader67, label %vector.memcheck43

vector.memcheck43:                                ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %i.ar = add i64 %i.d, -16
  %i.as = sub i64 %i.ar, %i.m
  %i.at = and i64 %i.as, -16                      ; 2 uses
  %i.au = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.at
  %scevgep44 = getelementptr i8, ptr %i.au, i64 32
  %i.av = getelementptr i8, ptr %1, i64 %i.at
  %scevgep45 = getelementptr i8, ptr %i.av, i64 16
  %bound046 = icmp ult ptr %i.am, %scevgep45
  %bound147 = icmp ult ptr %1, %scevgep44
  %found.conflict48 = and i1 %bound046, %bound147
  br i1 %found.conflict48, label %.lr.ph.i.i.i.i.i19.preheader67, label %vector.ph51

vector.ph51:                                      ; preds = %vector.memcheck43
  %n.vec53 = and i64 %i.aq, 2305843009213693950   ; 3 uses
  %i.aw = shl i64 %n.vec53, 4                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.am, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.aw
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next62, %vector.body54 ] ; 2 uses
  %i.az = shl i64 %index55, 4                     ; 3 uses
  %i.ba = or disjoint i64 %i.az, 16               ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.am, i64 %i.az
  %next.gep57 = getelementptr i8, ptr %i.am, i64 %i.ba
  %next.gep58 = getelementptr i8, ptr %1, i64 %i.az
  %next.gep59 = getelementptr i8, ptr %1, i64 %i.ba
  %wide.load60 = load <2 x double>, ptr %next.gep58, align 8, !tbaa !247, !alias.scope !2380
  %wide.load61 = load <2 x double>, ptr %next.gep59, align 8, !tbaa !247, !alias.scope !2380
  store <2 x double> %wide.load60, ptr %next.gep56, align 8, !tbaa !247, !alias.scope !2383, !noalias !2380
  store <2 x double> %wide.load61, ptr %next.gep57, align 8, !tbaa !247, !alias.scope !2383, !noalias !2380
  %index.next62 = add nuw i64 %index55, 2         ; 2 uses
  %i.bb = icmp eq i64 %index.next62, %n.vec53
  br i1 %i.bb, label %middle.block63, label %vector.body54, !llvm.loop !2385

middle.block63:                                   ; preds = %vector.body54
  %cmp.n64 = icmp eq i64 %i.aq, %n.vec53
  br i1 %cmp.n64, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19.preheader67

.lr.ph.i.i.i.i.i19.preheader67:                   ; preds = %vector.memcheck43, %.lr.ph.i.i.i.i.i19.preheader, %middle.block63
  %.011.i.i.i.i.i20.ph = phi ptr [ %i.am, %vector.memcheck43 ], [ %i.am, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.ax, %middle.block63 ]
  %.0810.i.i.i.i.i21.ph = phi ptr [ %1, %vector.memcheck43 ], [ %1, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.ay, %middle.block63 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader67, %.lr.ph.i.i.i.i.i19
  %.011.i.i.i.i.i20 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i19 ], [ %.011.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader67 ] ; 2 uses
  %.0810.i.i.i.i.i21 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i19 ], [ %.0810.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader67 ] ; 2 uses
  %i.bc = load <2 x double>, ptr %.0810.i.i.i.i.i21, align 8, !tbaa !247
  store <2 x double> %i.bc, ptr %.011.i.i.i.i.i20, align 8, !tbaa !247
  %i.bd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i21, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !2386

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %middle.block63, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.am, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ax, %middle.block63 ], [ %i.be, %.lr.ph.i.i.i.i.i19 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !280
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #48
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi2Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !279
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.a, align 8, !tbaa !276
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI3LocILi3EESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not90 = icmp eq ptr %2, %3
  br i1 %.not90, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = sdiv exact i64 %i.c, 12                  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !714
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !715  ; 13 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = sdiv exact i64 %i.m, 12                  ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 4 uses
  %i.q = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.q, ptr %.09.i.i.i.i.i, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !236
  store i32 %i.t, ptr %i.r, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !236
  store i32 %i.w, ptr %i.u, align 4, !tbaa !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIP3LocILi3EES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2387

_ZSt22__uninitialized_move_aIP3LocILi3EES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.z, ptr %i.g, align 8, !tbaa !715
  %i.aa = ptrtoint ptr %i.p to i64
  %i.ab = sub i64 %i.aa, %i.l                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIP3LocILi3EES2_ET0_T_S4_S3_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt22__uninitialized_move_aIP3LocILi3EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ad = udiv exact i64 %i.ab, 12
  br label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %.lr.ph.i.i.i.i.i43, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i43 ], [ %i.ad, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i43 ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i43 ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !236
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !4
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !236
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !4
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !236
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !4
  %i.an = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ao = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIP3LocILi3EES2_ET0_T_S4_S3_.exit, !llvm.loop !2388

_ZSt13move_backwardIP3LocILi3EES2_ET0_T_S4_S3_.exit: ; preds = %.lr.ph.i.i.i.i.i43, %_ZSt22__uninitialized_move_aIP3LocILi3EES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.ap = icmp sgt i64 %i.c, 0
  br i1 %i.ap, label %.lr.ph.preheader.i.i.i.i.i44, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.preheader.i.i.i.i.i44:                     ; preds = %_ZSt13move_backwardIP3LocILi3EES2_ET0_T_S4_S3_.exit
  %i.aq = udiv exact i64 %i.c, 12
  br label %.lr.ph.i.i.i.i.i45

.lr.ph.i.i.i.i.i45:                               ; preds = %.lr.ph.i.i.i.i.i45, %.lr.ph.preheader.i.i.i.i.i44
  %.012.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i45 ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i44 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i45 ], [ %1, %.lr.ph.preheader.i.i.i.i.i44 ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i45 ], [ %2, %.lr.ph.preheader.i.i.i.i.i44 ] ; 4 uses
  %i.ar = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !236
  store i32 %i.ar, ptr %.0811.i.i.i.i.i, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !236
  store i32 %i.au, ptr %i.as, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !236
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 12
  %i.ba = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i45, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, !llvm.loop !784

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bc = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.bc, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 4 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.bc, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPK3LocILi3EESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 4 uses
  %i.bd = load i32, ptr %.sroa.04.08.i.i.i.i, align 4, !tbaa !236
  store i32 %i.bd, ptr %.09.i.i.i.i, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
end_hunk_5

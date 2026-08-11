inline.NumInlined: 1329
inline.NumDeleted: 628
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Mapgen13getBlockSeed2EN4core8vector3dIsEEi:bb.a
  %i.i = add i32 %i.b, %i.h
  %i.j = add i32 %i.i, %i.g
  %i.k = add i32 %i.j, %i.d                       ; 2 uses
  %i.l = lshr i32 %i.k, 13
  %i.m = xor i32 %i.l, %i.k                       ; 3 uses
  %i.n = mul i32 %i.m, 60493
  %i.o = mul i32 %i.n, %i.m
  %i.p = add i32 %i.o, 19990303
  %i.q = mul i32 %i.p, %i.m
  %i.r = add i32 %i.q, 1376312589
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext i16 @_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !99   ; 2 uses
  %.not18 = icmp slt i16 %3, %2
  br i1 %.not18, label %_ZNK14NodeDefManager3getERK7MapNode.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %sext = shl i32 %1, 16
  %i.e = ashr exact i32 %sext, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i16, ptr %i.f, align 4, !tbaa !102
  %i.h = sext i16 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h
  %i.j = ashr i32 %1, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load i16, ptr %i.k, align 4, !tbaa !103
  %i.m = sext i16 %i.l to i32
  %i.n = sub nsw i32 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load i32, ptr %i.o, align 4, !tbaa !104
  %i.q = mul nsw i32 %i.n, %i.p
  %i.r = sext i16 %3 to i32
  %i.s = add i32 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.u = load i16, ptr %i.t, align 2, !tbaa !105
  %i.v = sext i16 %i.u to i32
  %i.w = sub i32 %i.s, %i.v
  %i.x = mul i32 %i.w, %i.d
  %i.y = add nsw i32 %i.i, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !109
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !112 ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 2072
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 259000
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.01120 = phi i16 [ %3, %.lr.ph ], [ %i.az, %bb.e ] ; 2 uses
  %.01319 = phi i32 [ %i.y, %.lr.ph ], [ %i.ay, %bb.e ] ; 2 uses
  %i.al = zext i32 %.01319 to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.al
  %i.an = load i16, ptr %i.am, align 4, !tbaa !113
  %i.ao = zext i16 %i.an to i64                   ; 2 uses
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw [2072 x i8], ptr %i.af, i64 %i.ao ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !74
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.d, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.c, %bb.d
  %i.au = phi ptr [ %i.ak, %bb.d ], [ %i.aq, %bb.c ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1403
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !115, !range !92, !noundef !93
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZNK14NodeDefManager3getERK7MapNode.exit._crit_edge, label %bb.e

bb.e:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.ay = sub i32 %.01319, %i.d
  %i.az = add i16 %.01120, -1                     ; 2 uses
  %.not = icmp slt i16 %i.az, %2
  br i1 %.not, label %_ZNK14NodeDefManager3getERK7MapNode.exit._crit_edge, label %bb.b, !llvm.loop !150

_ZNK14NodeDefManager3getERK7MapNode.exit._crit_edge: ; preds = %bb.e, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.a
  %narrow = phi i16 [ -31007, %bb.a ], [ %.01120, %_ZNK14NodeDefManager3getERK7MapNode.exit ], [ -31007, %bb.e ]
  ret i16 %narrow
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext i16 @_ZN6Mapgen17findLiquidSurfaceEN4core8vector2dIsEEss(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !99   ; 2 uses
  %.not29 = icmp slt i16 %3, %2
  br i1 %.not29, label %.thread18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %sext = shl i32 %1, 16
  %i.e = ashr exact i32 %sext, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i16, ptr %i.f, align 4, !tbaa !102
  %i.h = sext i16 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h
  %i.j = ashr i32 %1, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load i16, ptr %i.k, align 4, !tbaa !103
  %i.m = sext i16 %i.l to i32
  %i.n = sub nsw i32 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load i32, ptr %i.o, align 4, !tbaa !104
  %i.q = mul nsw i32 %i.n, %i.p
  %i.r = sext i16 %3 to i32
  %i.s = add i32 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.u = load i16, ptr %i.t, align 2, !tbaa !105
  %i.v = sext i16 %i.u to i32
  %i.w = sub i32 %i.s, %i.v
  %i.x = mul i32 %i.w, %i.d
  %i.y = add nsw i32 %i.i, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !109
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !112 ; 4 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 2072
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 260403 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 259000 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01431 = phi i16 [ %3, %.lr.ph ], [ %i.bg, %bb.d ] ; 2 uses
  %.01730 = phi i32 [ %i.y, %.lr.ph ], [ %i.bf, %bb.d ] ; 2 uses
  %i.am = zext i32 %.01730 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !113
  %i.ap = zext i16 %i.ao to i64                   ; 2 uses
  %i.aq = icmp ugt i64 %i.aj, %i.ap
  br i1 %i.aq, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw [2072 x i8], ptr %i.af, i64 %i.ap ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !74
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNK14NodeDefManager3getERK7MapNode.exit, label %_ZNK14NodeDefManager3getERK7MapNode.exit.thread

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.c
  %i.av = load i8, ptr %i.ak, align 1, !tbaa !115, !range !92, !noundef !93
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.thread18, label %_ZNK14NodeDefManager3getERK7MapNode.exit15

_ZNK14NodeDefManager3getERK7MapNode.exit.thread25: ; preds = %bb.b
  %i.ax = load i8, ptr %i.ak, align 1, !tbaa !115, !range !92, !noundef !93
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.thread18, label %_ZNK14NodeDefManager3getERK7MapNode.exit15

_ZNK14NodeDefManager3getERK7MapNode.exit.thread:  ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 1403
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !115, !range !92, !noundef !93
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.thread18, label %_ZNK14NodeDefManager3getERK7MapNode.exit15

_ZNK14NodeDefManager3getERK7MapNode.exit15:       ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread
  %i.bc = phi ptr [ %i.ar, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread ], [ %i.al, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25 ], [ %i.al, %_ZNK14NodeDefManager3getERK7MapNode.exit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1449
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !151
  %.not27 = icmp eq i8 %i.be, 0
  br i1 %.not27, label %bb.d, label %.thread18

bb.d:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit15
  %i.bf = sub i32 %.01730, %i.d
  %i.bg = add i16 %.01431, -1                     ; 2 uses
  %.not = icmp slt i16 %i.bg, %2
  br i1 %.not, label %.thread18, label %bb.b, !llvm.loop !152

.thread18:                                        ; preds = %bb.d, %_ZNK14NodeDefManager3getERK7MapNode.exit15, %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25, %bb.a
  %.2 = phi i16 [ -31007, %bb.a ], [ -31007, %_ZNK14NodeDefManager3getERK7MapNode.exit ], [ %.01431, %_ZNK14NodeDefManager3getERK7MapNode.exit15 ], [ -31007, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread ], [ -31007, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25 ], [ -31007, %bb.d ]
  ret i16 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN6Mapgen15updateHeightmapEN4core8vector3dIsEES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i48 %1, i48 %2) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.09.0.extract.trunc = trunc i48 %1 to i16 ; 7 uses
  %.sroa.210.0.extract.shift = lshr i48 %1, 16
  %.sroa.210.0.extract.trunc = trunc i48 %.sroa.210.0.extract.shift to i16 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i48 %2 to i16  ; 4 uses
  %.sroa.2.0.extract.shift = lshr i48 %2, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.311.0.extract.shift = lshr i48 %1, 32
  %.sroa.311.0.extract.trunc = trunc nuw i48 %.sroa.311.0.extract.shift to i16 ; 3 uses
  %i.c = ashr i48 %2, 32
  %i.d = trunc nsw i48 %i.c to i32                ; 3 uses
  %i.e = sext i16 %.sroa.311.0.extract.trunc to i32
  %.not1420 = icmp sgt i32 %i.e, %i.d
  br i1 %.not1420, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not1517 = icmp sgt i16 %.sroa.09.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = sext i16 %.sroa.2.0.extract.trunc to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br i1 %.not1517, label %.loopexit, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not18.i = icmp slt i16 %.sroa.2.0.extract.trunc, %.sroa.210.0.extract.trunc
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !99   ; 2 uses
  br i1 %.not18.i, label %.preheader.us23.preheader, label %.preheader.lr.ph.split.split

.preheader.us23.preheader:                        ; preds = %.preheader.lr.ph.split
  %i.s = add i16 %.sroa.09.0.extract.trunc, 1
  %i.t = add i16 %.sroa.0.0.extract.trunc, 1
  %smax.a = tail call i16 @llvm.smax.i16(i16 %i.s, i16 %i.t)
  %i.u = xor i16 %.sroa.09.0.extract.trunc, -1
  %i.v = add i16 %smax.a, %i.u                    ; 3 uses
  %i.w = zext i16 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1                  ; 5 uses
  %min.iters.check = icmp ult i16 %i.v, 3
  %min.iters.check38 = icmp ult i16 %i.v, 15
  %i.y = and i64 %i.x, 12
  %n.vec = and i64 %i.x, 131056                   ; 5 uses
  %i.z = trunc i64 %n.vec to i16
  %i.aa = add i16 %.sroa.09.0.extract.trunc, %i.z
  %cmp.n = icmp eq i64 %i.x, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  %n.vec40 = and i64 %i.x, 131068                 ; 4 uses
  %i.ab = trunc i64 %n.vec40 to i16
  %i.ac = add i16 %.sroa.09.0.extract.trunc, %i.ab
  %cmp.n43 = icmp eq i64 %i.x, %n.vec40
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us23.preheader, %._crit_edge.split.us.us
  %.022.us24 = phi i64 [ %indvars.iv.next31.lcssa, %._crit_edge.split.us.us ], [ 0, %.preheader.us23.preheader ] ; 5 uses
  %.01321.us25 = phi i16 [ %i.ao, %._crit_edge.split.us.us ], [ %.sroa.311.0.extract.trunc, %.preheader.us23.preheader ]
  br i1 %min.iters.check, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = add i64 %.022.us24, %n.vec              ; 2 uses
  %i.ae = getelementptr [2 x i8], ptr %i.b, i64 %.022.us24
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <8 x i16> splat (i16 -31007), ptr %i.af, align 2, !tbaa !154
  store <8 x i16> splat (i16 -31007), ptr %i.ag, align 2, !tbaa !154
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader, label %vec.epilog.ph, !prof !158

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ai = add i64 %.022.us24, %n.vec40            ; 2 uses
  %i.aj = getelementptr [2 x i8], ptr %i.b, i64 %.022.us24
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = getelementptr [2 x i8], ptr %i.aj, i64 %index41
  store <4 x i16> splat (i16 -31007), ptr %i.ak, align 2, !tbaa !154
  %index.next42 = add nuw i64 %index41, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next42, %n.vec40
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n43, label %._crit_edge.split.us.us, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader

_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv30.ph = phi i64 [ %.022.us24, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.01218.us.us.ph = phi i16 [ %.sroa.09.0.extract.trunc, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us

_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us: ; preds = %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us
  %indvars.iv30.a = phi i64 [ %indvars.iv.next31.a, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us ], [ %indvars.iv30.ph, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader ] ; 2 uses
  %.01218.us.us = phi i16 [ %i.an, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us ], [ %.01218.us.us.ph, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader ]
  %i.am = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv30.a
  store i16 -31007, ptr %i.am, align 2, !tbaa !154
  %i.an = add i16 %.01218.us.us, 1                ; 2 uses
  %indvars.iv.next31.a = add nsw i64 %indvars.iv30.a, 1 ; 2 uses
  %.not15.us.us = icmp sgt i16 %i.an, %.sroa.0.0.extract.trunc
  br i1 %.not15.us.us, label %._crit_edge.split.us.us, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us, !llvm.loop !160

._crit_edge.split.us.us:                          ; preds = %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next31.lcssa = phi i64 [ %i.ai, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %indvars.iv.next31.a, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us ]
  %i.ao = add i16 %.01321.us25, 1                 ; 2 uses
  %i.ap = sext i16 %i.ao to i32
  %.not14.us26 = icmp sgt i32 %i.ap, %i.d
  br i1 %.not14.us26, label %.loopexit, label %iter.check, !llvm.loop !161

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.aq = load i32, ptr %i.j, align 4, !tbaa !104
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !106
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !109
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !112 ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 2072
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 259000
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge.split
  %.022 = phi i64 [ 0, %.preheader.lr.ph.split.split ], [ %indvars.iv.next.a, %._crit_edge.split ]
  %.01321 = phi i16 [ %.sroa.311.0.extract.trunc, %.preheader.lr.ph.split.split ], [ %i.ba, %._crit_edge.split ] ; 2 uses
  %i.az = sext i16 %.01321 to i32
  br label %.lr.ph.i

._crit_edge.split:                                ; preds = %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit
  %i.ba = add i16 %.01321, 1                      ; 2 uses
  %i.bb = sext i16 %i.ba to i32
  %.not14 = icmp sgt i32 %i.bb, %i.d
  br i1 %.not14, label %.loopexit, label %.preheader, !llvm.loop !161

.lr.ph.i:                                         ; preds = %.preheader, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit
  %indvars.iv.a = phi i64 [ %.022, %.preheader ], [ %indvars.iv.next.a, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit ] ; 2 uses
  %.01218 = phi i16 [ %.sroa.09.0.extract.trunc, %.preheader ], [ %i.cg, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit ] ; 2 uses
  %i.bc = sext i16 %.01218 to i32
  %i.bd = load i16, ptr %i.h, align 8, !tbaa !102
  %i.be = sext i16 %i.bd to i32
  %i.bf = sub nsw i32 %i.bc, %i.be
  %i.bg = load i16, ptr %i.i, align 4, !tbaa !103
  %i.bh = sext i16 %i.bg to i32
  %i.bi = sub nsw i32 %i.az, %i.bh
  %i.bj = mul nsw i32 %i.bi, %i.aq
  %i.bk = add i32 %i.bj, %i.k
  %i.bl = load i16, ptr %i.l, align 2, !tbaa !105
  %i.bm = sext i16 %i.bl to i32
  %i.bn = sub i32 %i.bk, %i.bm
  %i.bo = mul i32 %i.bn, %i.r
  %i.bp = add nsw i32 %i.bf, %i.bo
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.01120.i = phi i16 [ %.sroa.2.0.extract.trunc, %.lr.ph.i ], [ %i.ce, %bb.f ] ; 2 uses
  %.01319.i = phi i32 [ %i.bp, %.lr.ph.i ], [ %i.cd, %bb.f ] ; 2 uses
  %i.bq = zext i32 %.01319.i to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !113
  %i.bt = zext i16 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.ax, %i.bt
  br i1 %i.bu, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw [2072 x i8], ptr %i.at, i64 %i.bt ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !74
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.e, label %_ZNK14NodeDefManager3getERK7MapNode.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.i

_ZNK14NodeDefManager3getERK7MapNode.exit.i:       ; preds = %bb.e, %bb.d
  %i.bz = phi ptr [ %i.ay, %bb.e ], [ %i.bv, %bb.d ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1403
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !115, !range !92, !noundef !93
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i
  %i.cd = sub i32 %.01319.i, %i.r
  %i.ce = add i16 %.01120.i, -1                   ; 2 uses
  %.not.i = icmp slt i16 %i.ce, %.sroa.210.0.extract.trunc
  br i1 %.not.i, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit, label %bb.c, !llvm.loop !150

_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit: ; preds = %bb.f, %_ZNK14NodeDefManager3getERK7MapNode.exit.i
  %narrow.i.ph = phi i16 [ -31007, %bb.f ], [ %.01120.i, %_ZNK14NodeDefManager3getERK7MapNode.exit.i ]
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv.a
  store i16 %narrow.i.ph, ptr %i.cf, align 2, !tbaa !154
  %i.cg = add i16 %.01218, 1                      ; 2 uses
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 2 uses
  %.not15 = icmp sgt i16 %i.cg, %.sroa.0.0.extract.trunc
  br i1 %.not15, label %._crit_edge.split, label %.lr.ph.i, !llvm.loop !162

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Mapgen11getSurfacesEN4core8vector2dIsEEssRSt6vectorIsSaIsEES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 %1, i16 noundef signext %2, i16 noundef signext %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.e = ashr i32 %1, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load i16, ptr %i.f, align 4, !tbaa !103
  %i.h = sext i16 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !104
  %i.l = mul nsw i32 %i.i, %i.k
  %i.m = load i32, ptr %i.d, align 4, !tbaa !99   ; 2 uses
  %i.n = sext i16 %3 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !105
  %i.q = sext i16 %i.p to i32
  %i.r = add i32 %i.l, %i.n
  %i.s = sub i32 %i.r, %i.q
  %i.t = mul i32 %i.s, %i.m
  %sext = shl i32 %1, 16
  %i.u = ashr exact i32 %sext, 16
  %i.v = load i16, ptr %i.c, align 4, !tbaa !102
  %i.w = sext i16 %i.v to i32
  %i.x = sub nsw i32 %i.u, %i.w
  %i.y = add nsw i32 %i.x, %i.t                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 2 uses
  %i.ag = and i32 %i.ad, 65535
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !109
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !112 ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 2072
  %i.ap = icmp ugt i64 %i.ao, %i.ah
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw [2072 x i8], ptr %i.ak, i64 %i.ah ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !74
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.av = phi ptr [ %i.au, %bb.c ], [ %i.aq, %bb.b ]
  %storemerge32 = add i16 %3, -1                  ; 2 uses
  %.not1633 = icmp slt i16 %storemerge32, %2
  br i1 %.not1633, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.aw = sub i32 %i.y, %i.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1403
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !115, !range !92, !noundef !93
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIsSaIsEE9push_backERKs.exit, %_ZNK14NodeDefManager3getERK7MapNode.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit
  %storemerge37 = phi i16 [ %storemerge32, %.lr.ph ], [ %storemerge, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit ] ; 4 uses
  %.036 = phi i8 [ %i.ay, %.lr.ph ], [ %i.cb, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit ]
  %storemerge.in35 = phi i16 [ %3, %.lr.ph ], [ %storemerge37, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit ] ; 2 uses
  %.03134 = phi i32 [ %i.aw, %.lr.ph ], [ %i.dr, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit ] ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !106
  %i.bg = zext i32 %.03134 to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 2 uses
  %i.bk = and i32 %i.bi, 65535
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !109
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !112 ; 3 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 2072
  %i.bt = icmp ugt i64 %i.bs, %i.bl
  br i1 %i.bt, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw [2072 x i8], ptr %i.bo, i64 %i.bl ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !74
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.f, label %_ZNK14NodeDefManager3getERK7MapNode.exit17

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit17

_ZNK14NodeDefManager3getERK7MapNode.exit17:       ; preds = %bb.e, %bb.f
  %i.bz = phi ptr [ %i.by, %bb.f ], [ %i.bu, %bb.e ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1403
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !115, !range !92, !noundef !93 ; 2 uses
  %i.cc = trunc nuw i8 %i.cb to i1
  %.not = xor i1 %i.cc, true                      ; 2 uses
  %i.cd = trunc nuw i8 %.036 to i1                ; 2 uses
  %or.cond = or i1 %i.cd, %.not
  br i1 %or.cond, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit17
  %i.ce = load ptr, ptr %i.az, align 8, !tbaa !163 ; 4 uses
  %i.cf = load ptr, ptr %i.ba, align 8, !tbaa !165
  %.not.i = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i16 %storemerge37, ptr %i.ce, align 2, !tbaa !154
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store ptr %i.cg, ptr %i.az, align 8, !tbaa !163
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.i:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %4, align 8, !tbaa !166   ; 4 uses
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 6 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775806
  br i1 %i.cl, label %bb.j, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #33
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.cm = ashr exact i64 %i.ck, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add i64 %.sroa.speculated.i.i.i, %i.cm  ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 4611686018427387903)
  %i.cq = select i1 %i.co, i64 4611686018427387903, i64 %i.cp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cr = shl nuw nsw i64 %i.cq, 1
  %i.cs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #32 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.ck ; 2 uses
  store i16 %storemerge37, ptr %i.ct, align 2, !tbaa !154
  %i.cu = icmp sgt i64 %i.ck, 0
  br i1 %i.cu, label %bb.k, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cs, ptr align 2 %i.ch, i64 %i.ck, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %.not.i17.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.ck) #31
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  store ptr %i.cs, ptr %4, align 8, !tbaa !166
  store ptr %i.cv, ptr %i.az, align 8, !tbaa !163
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.cq
  store ptr %i.cw, ptr %i.ba, align 8, !tbaa !165
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.m:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit17
  %or.cond4 = and i1 %i.cd, %.not
  br i1 %or.cond4, label %bb.n, label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.n:                                             ; preds = %bb.m
  %i.cx = load ptr, ptr %i.bb, align 8, !tbaa !163 ; 4 uses
  %i.cy = load ptr, ptr %i.bc, align 8, !tbaa !165
  %.not.i.i = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i.i, label %bb.p, label %bb.o

end_hunk_0

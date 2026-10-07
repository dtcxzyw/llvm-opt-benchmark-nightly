Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen?download=true
inline.NumInlined: 1329
inline.NumDeleted: 628
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss:bb.a
  %i.v = sext i16 %i.u to i32
  %i.w = sub i32 %i.s, %i.v
  %i.x = mul i32 %i.w, %i.d
  %i.y = add nsw i32 %i.i, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !103
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !106
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !107 ; 3 uses
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
  %i.an = load i16, ptr %i.am, align 4, !tbaa !109
  %i.ao = zext i16 %i.an to i64                   ; 2 uses
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw [2072 x i8], ptr %i.af, i64 %i.ao ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !80
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.d, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.c, %bb.d
  %i.au = phi ptr [ %i.ak, %bb.d ], [ %i.aq, %bb.c ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1403
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !144, !range !87, !noundef !88
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZNK14NodeDefManager3getERK7MapNode.exit._crit_edge, label %bb.e

bb.e:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.ay = sub i32 %.01319, %i.d
  %i.az = add i16 %.01120, -1                     ; 2 uses
  %.not = icmp slt i16 %i.az, %2
  br i1 %.not, label %_ZNK14NodeDefManager3getERK7MapNode.exit._crit_edge, label %bb.b, !llvm.loop !0

_ZNK14NodeDefManager3getERK7MapNode.exit._crit_edge: ; preds = %bb.e, %_ZNK14NodeDefManager3getERK7MapNode.exit, %bb.a
  %narrow = phi i16 [ -31007, %bb.a ], [ %.01120, %_ZNK14NodeDefManager3getERK7MapNode.exit ], [ -31007, %bb.e ]
  ret i16 %narrow
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext i16 @_ZN6Mapgen17findLiquidSurfaceEN4core8vector2dIsEEss(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !96   ; 2 uses
  %.not29 = icmp slt i16 %3, %2
  br i1 %.not29, label %.thread18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %sext = shl i32 %1, 16
  %i.e = ashr exact i32 %sext, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i16, ptr %i.f, align 4, !tbaa !97
  %i.h = sext i16 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h
  %i.j = ashr i32 %1, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load i16, ptr %i.k, align 4, !tbaa !98
  %i.m = sext i16 %i.l to i32
  %i.n = sub nsw i32 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load i32, ptr %i.o, align 4, !tbaa !99
  %i.q = mul nsw i32 %i.n, %i.p
  %i.r = sext i16 %3 to i32
  %i.s = add i32 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.u = load i16, ptr %i.t, align 2, !tbaa !100
  %i.v = sext i16 %i.u to i32
  %i.w = sub i32 %i.s, %i.v
  %i.x = mul i32 %i.w, %i.d
  %i.y = add nsw i32 %i.i, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !103
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !106
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !107 ; 4 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 2072
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 260403 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 259000 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01331 = phi i16 [ %3, %.lr.ph ], [ %i.bg, %bb.d ] ; 2 uses
  %.01730 = phi i32 [ %i.y, %.lr.ph ], [ %i.bf, %bb.d ] ; 2 uses
  %i.am = zext i32 %.01730 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !109
  %i.ap = zext i16 %i.ao to i64                   ; 2 uses
  %i.aq = icmp ugt i64 %i.aj, %i.ap
  br i1 %i.aq, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw [2072 x i8], ptr %i.af, i64 %i.ap ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !80
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNK14NodeDefManager3getERK7MapNode.exit, label %_ZNK14NodeDefManager3getERK7MapNode.exit.thread

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.c
  %i.av = load i8, ptr %i.ak, align 1, !tbaa !144, !range !87, !noundef !88
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.thread18, label %_ZNK14NodeDefManager3getERK7MapNode.exit15

_ZNK14NodeDefManager3getERK7MapNode.exit.thread25: ; preds = %bb.b
  %i.ax = load i8, ptr %i.ak, align 1, !tbaa !144, !range !87, !noundef !88
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.thread18, label %_ZNK14NodeDefManager3getERK7MapNode.exit15

_ZNK14NodeDefManager3getERK7MapNode.exit.thread:  ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 1403
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !144, !range !87, !noundef !88
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.thread18, label %_ZNK14NodeDefManager3getERK7MapNode.exit15

_ZNK14NodeDefManager3getERK7MapNode.exit15:       ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread
  %i.bc = phi ptr [ %i.ar, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread ], [ %i.al, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25 ], [ %i.al, %_ZNK14NodeDefManager3getERK7MapNode.exit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1449
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !145
  %.not27 = icmp eq i8 %i.be, 0
  br i1 %.not27, label %bb.d, label %.thread18

bb.d:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit15
  %i.bf = sub i32 %.01730, %i.d
  %i.bg = add i16 %.01331, -1                     ; 2 uses
  %.not = icmp slt i16 %i.bg, %2
  br i1 %.not, label %.thread18, label %bb.b, !llvm.loop !284

.thread18:                                        ; preds = %bb.d, %_ZNK14NodeDefManager3getERK7MapNode.exit15, %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25, %bb.a
  %.2 = phi i16 [ -31007, %bb.a ], [ -31007, %_ZNK14NodeDefManager3getERK7MapNode.exit ], [ %.01331, %_ZNK14NodeDefManager3getERK7MapNode.exit15 ], [ -31007, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread ], [ -31007, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25 ], [ -31007, %bb.d ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 5 uses
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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !96   ; 2 uses
  br i1 %.not18.i, label %.preheader.us23.preheader, label %.preheader.lr.ph.split.split

.preheader.us23.preheader:                        ; preds = %.preheader.lr.ph.split
  %i.s = add i16 %.sroa.0.0.extract.trunc, 1
  %i.t = add i16 %.sroa.09.0.extract.trunc, 1
  %smax = tail call i16 @llvm.smax.i16(i16 %i.s, i16 %i.t)
  %i.u = xor i16 %.sroa.09.0.extract.trunc, -1
  %i.v = add i16 %smax, %i.u                      ; 3 uses
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

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = getelementptr [2 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <8 x i16> splat (i16 -31007), ptr %i.af, align 2, !tbaa !68
  store <8 x i16> splat (i16 -31007), ptr %i.ag, align 2, !tbaa !68
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader, label %vec.epilog.ph, !prof !292

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ai = add i64 %.022.us24, %n.vec40            ; 2 uses
  %i.aj = getelementptr [2 x i8], ptr %i.b, i64 %.022.us24
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = getelementptr [2 x i8], ptr %i.aj, i64 %index41
  store <4 x i16> splat (i16 -31007), ptr %i.ak, align 2, !tbaa !68
  %index.next42 = add nuw i64 %index41, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next42, %n.vec40
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !286

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n43, label %._crit_edge.split.us.us, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader

_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv30.ph = phi i64 [ %.022.us24, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.01218.us.us.ph = phi i16 [ %.sroa.09.0.extract.trunc, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us

_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us: ; preds = %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us ], [ %indvars.iv30.ph, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader ] ; 2 uses
  %.01218.us.us = phi i16 [ %i.an, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us ], [ %.01218.us.us.ph, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader ]
  %i.am = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv30
  store i16 -31007, ptr %i.am, align 2, !tbaa !68
  %i.an = add i16 %.01218.us.us, 1                ; 2 uses
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, 1 ; 2 uses
  %.not15.us.us = icmp sgt i16 %i.an, %.sroa.0.0.extract.trunc
  br i1 %.not15.us.us, label %._crit_edge.split.us.us, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us, !llvm.loop !287

._crit_edge.split.us.us:                          ; preds = %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next31.lcssa = phi i64 [ %i.ai, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %indvars.iv.next31, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us ]
  %i.ao = add i16 %.01321.us25, 1                 ; 2 uses
  %i.ap = sext i16 %i.ao to i32
  %.not14.us26 = icmp sgt i32 %i.ap, %i.d
  br i1 %.not14.us26, label %.loopexit, label %iter.check, !llvm.loop !288

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.aq = load i32, ptr %i.j, align 4, !tbaa !99
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !103
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !107 ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 2072
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 259000
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge.split
  %.022 = phi i64 [ 0, %.preheader.lr.ph.split.split ], [ %indvars.iv.next, %._crit_edge.split ]
  %.01321 = phi i16 [ %.sroa.311.0.extract.trunc, %.preheader.lr.ph.split.split ], [ %i.ba, %._crit_edge.split ] ; 2 uses
  %i.az = sext i16 %.01321 to i32
  br label %.lr.ph.i

._crit_edge.split:                                ; preds = %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit
  %i.ba = add i16 %.01321, 1                      ; 2 uses
  %i.bb = sext i16 %i.ba to i32
  %.not14 = icmp sgt i32 %i.bb, %i.d
  br i1 %.not14, label %.loopexit, label %.preheader, !llvm.loop !288

.lr.ph.i:                                         ; preds = %.preheader, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit
  %indvars.iv = phi i64 [ %.022, %.preheader ], [ %indvars.iv.next, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit ] ; 2 uses
  %.01218 = phi i16 [ %.sroa.09.0.extract.trunc, %.preheader ], [ %i.cg, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit ] ; 2 uses
  %i.bc = sext i16 %.01218 to i32
  %i.bd = load i16, ptr %i.h, align 8, !tbaa !97
  %i.be = sext i16 %i.bd to i32
  %i.bf = sub nsw i32 %i.bc, %i.be
  %i.bg = load i16, ptr %i.i, align 4, !tbaa !98
  %i.bh = sext i16 %i.bg to i32
  %i.bi = sub nsw i32 %i.az, %i.bh
  %i.bj = mul nsw i32 %i.bi, %i.aq
  %i.bk = add i32 %i.bj, %i.k
  %i.bl = load i16, ptr %i.l, align 2, !tbaa !100
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
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !109
  %i.bt = zext i16 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.ax, %i.bt
  br i1 %i.bu, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw [2072 x i8], ptr %i.at, i64 %i.bt ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !80
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.e, label %_ZNK14NodeDefManager3getERK7MapNode.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit.i

_ZNK14NodeDefManager3getERK7MapNode.exit.i:       ; preds = %bb.e, %bb.d
  %i.bz = phi ptr [ %i.ay, %bb.e ], [ %i.bv, %bb.d ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1403
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !144, !range !87, !noundef !88
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i
  %i.cd = sub i32 %.01319.i, %i.r
  %i.ce = add i16 %.01120.i, -1                   ; 2 uses
  %.not.i = icmp slt i16 %i.ce, %.sroa.210.0.extract.trunc
  br i1 %.not.i, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit, label %bb.c, !llvm.loop !0

_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit: ; preds = %bb.f, %_ZNK14NodeDefManager3getERK7MapNode.exit.i
  %narrow.i.ph = phi i16 [ -31007, %bb.f ], [ %.01120.i, %_ZNK14NodeDefManager3getERK7MapNode.exit.i ]
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv
  store i16 %narrow.i.ph, ptr %i.cf, align 2, !tbaa !68
  %i.cg = add i16 %.01218, 1                      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not15 = icmp sgt i16 %i.cg, %.sroa.0.0.extract.trunc
  br i1 %.not15, label %._crit_edge.split, label %.lr.ph.i, !llvm.loop !289

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Mapgen11getSurfacesEN4core8vector2dIsEEssRSt6vectorIsSaIsEES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 %1, i16 noundef signext %2, i16 noundef signext %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.e = ashr i32 %1, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load i16, ptr %i.f, align 4, !tbaa !98
  %i.h = sext i16 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !99
  %i.l = mul nsw i32 %i.i, %i.k
  %i.m = load i32, ptr %i.d, align 4, !tbaa !96   ; 2 uses
  %i.n = sext i16 %3 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !100
  %i.q = sext i16 %i.p to i32
  %i.r = add i32 %i.l, %i.n
  %i.s = sub i32 %i.r, %i.q
  %i.t = mul i32 %i.s, %i.m
  %sext = shl i32 %1, 16
end_hunk_0
begin_hunk_1_@_ZN6Mapgen12updateLiquidEP11UniqueQueueIN4core8vector3dIsEEES3_S3_:bb.a

.noexc142:                                        ; preds = %.noexc7.i.i.i
  unreachable

.loopexit.split-lp216:                            ; preds = %.noexc.i.i.i, %.noexc7.i.i.i
  %lpad.loopexit.split-lp218 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dt

bb.dt:                                            ; preds = %.loopexit.split-lp216, %.loopexit215.split.us
  %lpad.phi219 = phi { ptr, i32 } [ %lpad.loopexit217.us, %.loopexit215.split.us ], [ %lpad.loopexit.split-lp218, %.loopexit.split-lp216 ]
  %i.xp = extractvalue { ptr, i32 } %lpad.phi219, 0
  %i.xq = tail call ptr @__cxa_begin_catch(ptr %i.xp) #30 ; 0 uses
  store i64 %i.sg, ptr %i.o, align 8, !tbaa !153
  invoke void @__cxa_rethrow() #33
          to label %bb.dw unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.xr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.xs = landingpad { ptr, i32 }
          catch ptr null
  %i.xt = extractvalue { ptr, i32 } %i.xs, 0
  tail call void @__clang_call_terminate(ptr %i.xt) #34
  unreachable

bb.dw:                                            ; preds = %bb.dt
  unreachable

common.resume:                                    ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i108.split.us, %bb.dy, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.split.us, %bb.du
  %.sink575 = phi ptr [ %i.se, %bb.du ], [ %i.se, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.split.us ], [ %i.ho, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i108.split.us ], [ %i.ho, %bb.dy ]
  %common.resume.op = phi { ptr, i32 } [ %i.xr, %bb.du ], [ %i.xn, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.split.us ], [ %i.xm, %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i108.split.us ], [ %i.xy, %bb.dy ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink575, i64 noundef 24) #31
  resume { ptr, i32 } %common.resume.op

.split377.us:                                     ; preds = %bb.dd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #33
  unreachable

.split379.us:                                     ; preds = %bb.dg
  %i.xu = icmp ugt i64 %i.vj, 2305843009213693951
  br i1 %i.xu, label %.noexc.i.i, label %.noexc3.i.i

.noexc.i.i:                                       ; preds = %.split379.us
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

.noexc3.i.i:                                      ; preds = %.split379.us
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

.split.us:                                        ; preds = %bb.al
  %i.xv = icmp ugt i64 %i.hw, 2305843009213693951
  br i1 %i.xv, label %.noexc.i.i.i157, label %.noexc7.i.i.i156

.noexc.i.i.i157:                                  ; preds = %.split.us
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #33
          to label %.noexc158 unwind label %.loopexit.split-lp

.noexc158:                                        ; preds = %.noexc.i.i.i157
  unreachable

.noexc7.i.i.i156:                                 ; preds = %.split.us
  invoke void @_ZSt17__throw_bad_allocv() #33
          to label %.noexc159 unwind label %.loopexit.split-lp

.noexc159:                                        ; preds = %.noexc7.i.i.i156
  unreachable

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i157, %.noexc7.i.i.i156
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.dx

bb.dx:                                            ; preds = %.loopexit.split-lp, %.loopexit214.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit214.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.xw = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.xx = tail call ptr @__cxa_begin_catch(ptr %i.xw) #30 ; 0 uses
  store i64 %i.hq, ptr %i.o, align 8, !tbaa !153
  invoke void @__cxa_rethrow() #33
          to label %bb.ea unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.xy = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.xz = landingpad { ptr, i32 }
          catch ptr null
  %i.ya = extractvalue { ptr, i32 } %i.xz, 0
  tail call void @__clang_call_terminate(ptr %i.ya) #34
  unreachable

bb.ea:                                            ; preds = %bb.dx
  unreachable

.split362.us:                                     ; preds = %bb.az
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #33
  unreachable

.split364.us:                                     ; preds = %bb.bc
  %i.yb = icmp ugt i64 %i.kt, 2305843009213693951
  br i1 %i.yb, label %.noexc.i.i130, label %.noexc3.i.i129

.noexc.i.i130:                                    ; preds = %.split364.us
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

.noexc3.i.i129:                                   ; preds = %.split364.us
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Mapgen11setLightingEhN4core8vector3dIsEES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i8 noundef zeroext %1, i48 %2, i48 %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %class.ScopeProfiler, align 8       ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.sroa.036.0.extract.trunc = trunc i48 %2 to i16 ; 2 uses
  %.sroa.237.0.extract.shift = lshr i48 %2, 16
  %.sroa.237.0.extract.trunc = trunc i48 %.sroa.237.0.extract.shift to i16 ; 3 uses
  %.sroa.035.0.extract.trunc = trunc i48 %3 to i16 ; 2 uses
  %.sroa.2.0.extract.shift = lshr i48 %3, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.b = load ptr, ptr @g_profiler, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 29, ptr %i.a, align 8, !tbaa !92
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !91
  %i.e = load i64, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.d, ptr noundef nonnull align 1 dereferenceable(29) @.str.16, i64 29, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !80
  %i.g = load ptr, ptr %5, align 8, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %4, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.i = load ptr, ptr %5, align 8, !tbaa !91     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !tbaa !90
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.m = sext i16 %.sroa.035.0.extract.trunc to i32 ; 3 uses
  %i.n = sext i16 %.sroa.036.0.extract.trunc to i32 ; 5 uses
  %i.o = sext i16 %.sroa.237.0.extract.trunc to i32
  %i.p = ashr i48 %3, 32
  %i.q = trunc nsw i48 %i.p to i32                ; 2 uses
  %i.r = ashr i48 %2, 32
  %i.s = trunc nsw i48 %i.r to i32                ; 3 uses
  %.not47 = icmp sgt i32 %i.s, %i.q
  %.not2243 = icmp sgt i16 %.sroa.237.0.extract.trunc, %.sroa.2.0.extract.trunc
  %or.cond = select i1 %.not47, i1 true, i1 %.not2243
  br i1 %or.cond, label %._crit_edge49.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.not2340 = icmp sgt i16 %.sroa.036.0.extract.trunc, %.sroa.035.0.extract.trunc
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.x = load i16, ptr %i.w, align 4, !tbaa !98
  %i.y = sext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !99
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !100
  %i.af = sext i16 %i.ae to i32
  %i.ag = load i16, ptr %i.v, align 4, !tbaa !97
  %i.ah = sext i16 %i.ag to i32
  %i.ai = sub nsw i32 %i.n, %i.ah
  br i1 %.not2340, label %._crit_edge49.split, label %.preheader.lr.ph.split.split

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !103 ; 9 uses
  %i.al = call i16 @llvm.smax.i16(i16 %.sroa.2.0.extract.trunc, i16 %.sroa.237.0.extract.trunc)
  %smax51 = sext i16 %i.al to i32
  %smax53 = call i32 @llvm.smax.i32(i32 %i.q, i32 %i.s)
  %i.am = add nsw i32 %i.m, 1
  %i.an = sub nsw i32 %i.am, %i.n
  %i.ao = sub nsw i32 %i.m, %i.n
  %xtraiter = and i32 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.ap = icmp ult i32 %i.ao, 7
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge46
  %.01548 = phi i32 [ %i.s, %.preheader.lr.ph.split.split ], [ %i.bd, %._crit_edge46 ] ; 3 uses
  %i.aq = sub nsw i32 %.01548, %i.y
  %i.ar = mul nsw i32 %i.aq, %i.ab
  %invariant.op = sub i32 %i.ar, %i.af
  br label %.lr.ph

._crit_edge49.split:                              ; preds = %._crit_edge46, %.preheader.lr.ph.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %4) #30
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !91 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge49.split
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !90
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #31
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %._crit_edge49.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %5, align 8, !tbaa !91    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.c
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.b
  %i.bb = load i64, ptr %i.c, align 8, !tbaa !90
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.ay

._crit_edge46:                                    ; preds = %._crit_edge
  %i.bd = add nsw i32 %.01548, 1
  %exitcond54.not = icmp eq i32 %.01548, %smax53
  br i1 %exitcond54.not, label %._crit_edge49.split, label %.preheader, !llvm.loop !325

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %.01444 = phi i32 [ %i.o, %.preheader ], [ %i.bl, %._crit_edge ] ; 3 uses
  %.reass = add i32 %.01444, %invariant.op
  %i.be = mul i32 %.reass, %i.ac
  %i.bf = add nsw i32 %i.ai, %i.be                ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.042.prol = phi i32 [ %i.bj, %.prol.preheader ], [ %i.n, %.lr.ph ]
  %.01341.prol = phi i32 [ %i.bk, %.prol.preheader ], [ %i.bf, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.bg = zext i32 %.01341.prol to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %1, ptr %i.bi, align 2, !tbaa !159
  %i.bj = add nsw i32 %.042.prol, 1               ; 2 uses
  %i.bk = add i32 %.01341.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !326

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.042.unr = phi i32 [ %i.n, %.lr.ph ], [ %i.bj, %.prol.preheader ]
  %.01341.unr = phi i32 [ %i.bf, %.lr.ph ], [ %i.bk, %.prol.preheader ]
  br i1 %i.ap, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %i.bl = add nsw i32 %.01444, 1
  %exitcond52.not = icmp eq i32 %.01444, %smax51
  br i1 %exitcond52.not, label %._crit_edge46, label %.lr.ph, !llvm.loop !327

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.042 = phi i32 [ %i.cs, %.lr.ph.new ], [ %.042.unr, %.prol.loopexit ] ; 2 uses
  %.01341 = phi i32 [ %i.ct, %.lr.ph.new ], [ %.01341.unr, %.prol.loopexit ] ; 9 uses
  %i.bm = zext i32 %.01341 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  store i8 %1, ptr %i.bo, align 2, !tbaa !159
  %i.bp = add i32 %.01341, 1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %1, ptr %i.bs, align 2, !tbaa !159
  %i.bt = add i32 %.01341, 2
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 %1, ptr %i.bw, align 2, !tbaa !159
  %i.bx = add i32 %.01341, 3
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i8 %1, ptr %i.ca, align 2, !tbaa !159
  %i.cb = add i32 %.01341, 4
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i8 %1, ptr %i.ce, align 2, !tbaa !159
  %i.cf = add i32 %.01341, 5
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i8 %1, ptr %i.ci, align 2, !tbaa !159
  %i.cj = add i32 %.01341, 6
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i8 %1, ptr %i.cm, align 2, !tbaa !159
  %i.cn = add nsw i32 %.042, 7
  %i.co = add i32 %.01341, 7
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  store i8 %1, ptr %i.cr, align 2, !tbaa !159
  %i.cs = add nsw i32 %.042, 8
  %i.ct = add i32 %.01341, 8
  %exitcond.not.7 = icmp eq i32 %i.cn, %i.m
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph.new, !llvm.loop !328
}

declare void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef zeroext, i8 noundef signext) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %0) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !90
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 2 dereferenceable(6) %3, i8 noundef zeroext %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = icmp ult i8 %4, 2
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.021.0.copyload = load i48, ptr %3, align 2, !tbaa !68 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %.sroa.021.0.copyload to i16 ; 3 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.021.0.copyload, 16
  %.sroa.3.0.extract.trunc.i = trunc i48 %.sroa.3.0.extract.shift.i to i16 ; 3 uses
  %i.c = load i16, ptr %1, align 4, !tbaa !97
  %.not.i = icmp sgt i16 %i.c, %.sroa.0.0.extract.trunc.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.e = load i16, ptr %i.d, align 2
  %.not6.i = icmp slt i16 %i.e, %.sroa.0.0.extract.trunc.i
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not6.i
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 2
  %.not7.i = icmp sgt i16 %i.g, %.sroa.3.0.extract.trunc.i
  %or.cond12.i = select i1 %or.cond.i, i1 true, i1 %.not7.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i16, ptr %i.h, align 4
  %.not8.i = icmp slt i16 %i.i, %.sroa.3.0.extract.trunc.i
  %or.cond14.i = select i1 %or.cond12.i, i1 true, i1 %.not8.i
  br i1 %or.cond14.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ashr i48 %.sroa.021.0.copyload, 32
  %i.k = trunc nsw i48 %i.j to i32                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i16, ptr %i.l, align 4, !tbaa !98
  %i.n = sext i16 %i.m to i32
  %.not9.i = icmp sge i32 %i.k, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.p = load i16, ptr %i.o, align 2
  %i.q = sext i16 %i.p to i32
  %i.r = icmp sle i32 %i.k, %i.q
  %or.cond = select i1 %.not9.i, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.d, label %.critedge

end_hunk_1
begin_hunk_2_@_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h:bb.a
  %i.bg = load i16, ptr %i.at, align 4, !tbaa !109
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 312
  %i.bi = zext i16 %i.bg to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bj, align 1, !tbaa !90
  %i.bk = and i8 %.sroa.0.0.copyload.i.i, 32
  %.not38 = icmp eq i8 %i.bk, 0
  br i1 %.not38, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = and i8 %i.az, 15
  %spec.select. = tail call i8 @llvm.umax.i8(i8 %spec.select, i8 %i.bl)
  %i.bm = and i8 %i.az, -16
  %.in = tail call i8 @llvm.umax.i8(i8 %.0, i8 %i.bm)
  %i.bn = or disjoint i8 %spec.select., %.in      ; 3 uses
  store i8 %i.bn, ptr %i.a, align 1, !tbaa !90
  store i8 %i.bn, ptr %i.ay, align 2, !tbaa !159
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !164 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !165
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %.not.i.i = icmp eq ptr %i.bp, %i.bs
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(7) %i.bp, ptr noundef nonnull align 2 dereferenceable(6) %3, i64 6, i1 false), !tbaa.struct !166
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  store i8 %i.bn, ptr %i.bt, align 2, !tbaa !168
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !164
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bv, ptr %i.bo, align 8, !tbaa !164
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  call void @_ZNSt5dequeISt4pairIN4core8vector3dIsEEhESaIS4_EE16_M_push_back_auxIJRKS3_RhEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 2 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.i, %bb.b, %bb.c, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Mapgen12calcLightingEN4core8vector3dIsEES2_S2_S2_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i48 %1, i48 %2, i48 %3, i48 %4, i1 noundef zeroext %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 2 uses
  %7 = alloca %"class.core::vector3d", align 8    ; 2 uses
  %8 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store i48 %3, ptr %6, align 8
  store i48 %4, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.b = load ptr, ptr @g_profiler, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.c, ptr %9, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 29, ptr %i.a, align 8, !tbaa !92
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %9, align 8, !tbaa !91
  %i.e = load i64, ptr %i.a, align 8, !tbaa !92   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.d, ptr noundef nonnull align 1 dereferenceable(29) @.str.16, i64 29, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !80
  %i.g = load ptr, ptr %9, align 8, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %8, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %9, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %9, align 8, !tbaa !91     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !tbaa !90
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @_ZN6Mapgen17propagateSunlightEN4core8vector3dIsEES2_b(ptr noundef nonnull align 8 dereferenceable(200) %0, i48 %1, i48 %2, i1 noundef zeroext %5)
  invoke void @_ZN6Mapgen11spreadLightERKN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 2 dereferenceable(6) %6, ptr noundef nonnull align 2 dereferenceable(6) %7)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %8) #30
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !91   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.o, align 8, !tbaa !90
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret void

bb.c:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.d:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %9, align 8, !tbaa !91     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.d
  %i.w = load i64, ptr %i.c, align 8, !tbaa !90
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.c
  %.pn = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %8) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn12 = phi { ptr, i32 } [ %i.y, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN6Mapgen17propagateSunlightEN4core8vector3dIsEES2_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i48 %1, i48 %2, i1 noundef zeroext %3) local_unnamed_addr #11 align 2 {
bb.a:
  %.sroa.034.0.extract.trunc = trunc i48 %1 to i16 ; 3 uses
  %.sroa.235.0.extract.shift = lshr i48 %1, 16
  %.sroa.235.0.extract.trunc = trunc i48 %.sroa.235.0.extract.shift to i16 ; 2 uses
  %.sroa.033.0.extract.trunc = trunc i48 %2 to i16 ; 2 uses
  %.sroa.2.0.extract.shift = lshr i48 %2, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 3 uses
  %i.a = sext i16 %.sroa.034.0.extract.trunc to i32
  %i.b = sext i16 %.sroa.2.0.extract.trunc to i32 ; 2 uses
  %i.c = sext i16 %.sroa.235.0.extract.trunc to i32
  %i.d = ashr i48 %2, 32
  %i.e = trunc nsw i48 %i.d to i32                ; 2 uses
  %i.f = ashr i48 %1, 32
  %i.g = trunc nsw i48 %i.f to i32                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !60
  %.not = icmp slt i32 %i.i, %i.b
  %.not.fr50 = freeze i1 %.not
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.not1951 = icmp sgt i32 %i.g, %i.e
  br i1 %.not1951, label %._crit_edge53.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not2042 = icmp sgt i16 %.sroa.034.0.extract.trunc, %.sroa.033.0.extract.trunc
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  br i1 %.not2042, label %._crit_edge53.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not2138 = icmp slt i16 %.sroa.2.0.extract.trunc, %.sroa.235.0.extract.trunc
  %.not2138.fr = freeze i1 %.not2138
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.q = add i16 %.sroa.2.0.extract.trunc, 1
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.u = load i16, ptr %i.t, align 4, !tbaa !98
  %i.v = sext i16 %i.u to i32
  %i.w = load i32, ptr %i.s, align 4, !tbaa !99
  %i.x = load i32, ptr %i.m, align 4, !tbaa !96   ; 2 uses
  %i.y = load i16, ptr %i.p, align 2, !tbaa !100
  %i.z = sext i16 %i.y to i32
  %invariant.op54 = sub nsw i32 %i.r, %i.z
  %i.aa = load i16, ptr %i.l, align 4, !tbaa !97
  %i.ab = sext i16 %i.aa to i32
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !103 ; 2 uses
  br i1 %.not2138.fr, label %._crit_edge53.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.ad = tail call i16 @llvm.smax.i16(i16 %.sroa.033.0.extract.trunc, i16 %.sroa.034.0.extract.trunc)
  %smax = sext i16 %i.ad to i32
  %smax82 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %i.g)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %.01852 = phi i32 [ %i.aj, %._crit_edge.split ], [ %i.g, %.preheader.preheader ] ; 3 uses
  %i.ae = sub nsw i32 %.01852, %i.v
  %i.af = mul nsw i32 %i.ae, %i.w
  %.reass55 = add i32 %i.af, %invariant.op54
  %i.ag = mul i32 %.reass55, %i.x
  %invariant.op = sub i32 %i.ag, %i.ab
  %i.ah = load ptr, ptr %i.n, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 312
  br label %bb.b

._crit_edge53.split:                              ; preds = %._crit_edge.split, %.preheader.lr.ph.split, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.split:                                ; preds = %.critedge
  %i.aj = add nsw i32 %.01852, 1
  %exitcond83.not = icmp eq i32 %.01852, %smax82
  br i1 %exitcond83.not, label %._crit_edge53.split, label %.preheader, !llvm.loop !330

bb.b:                                             ; preds = %.preheader, %.critedge
  %.01643 = phi i32 [ %i.a, %.preheader ], [ %i.ba, %.critedge ] ; 3 uses
  %.reass = add i32 %.01643, %invariant.op        ; 2 uses
  %i.ak = zext i32 %.reass to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ak ; 2 uses
  %i.am = load i16, ptr %i.al, align 4, !tbaa !109
  %i.an = icmp eq i16 %i.am, 127
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not.fr50, label %.lr.ph, label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !159
  %i.aq = and i8 %i.ap, 15
  %i.ar = icmp ne i8 %i.aq, 15
  %or.cond = and i1 %3, %i.ar
  br i1 %or.cond, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.reass.pn = phi i32 [ %.reass, %.lr.ph ], [ %.03640, %bb.f ]
  %.039 = phi i32 [ %i.b, %.lr.ph ], [ %i.az, %bb.f ] ; 2 uses
  %.03640 = sub i32 %.reass.pn, %i.x              ; 2 uses
  %i.as = zext i32 %.03640 to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.as ; 2 uses
  %i.au = load i16, ptr %i.at, align 4, !tbaa !109
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.av
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.aw, align 1, !tbaa !90
  %i.ax = and i8 %.sroa.0.0.copyload.i.i, 64
  %.not22.not = icmp eq i8 %i.ax, 0
  br i1 %.not22.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i8 15, ptr %i.ay, align 2, !tbaa !159
  %i.az = add nsw i32 %.039, -1
  %.not21.not = icmp sgt i32 %.039, %i.c
  br i1 %.not21.not, label %bb.e, label %.critedge, !llvm.loop !331

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %i.ba = add nsw i32 %.01643, 1
  %exitcond.not = icmp eq i32 %.01643, %smax
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.b, !llvm.loop !332
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Mapgen11spreadLightERKN4core8vector3dIsEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::queue.162", align 8    ; 34 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseISt4pairIN4core8vector3dIsEEhESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 0)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.13.0.copyload = load i16, ptr %.sroa.13.0..sroa_idx, align 2, !tbaa !68 ; 5 uses
  %.sroa.22.6..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load <2 x i16>, ptr %1, align 2, !tbaa !68
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !68 ; 3 uses
  %.sroa.0108.0.copyload = load i16, ptr %1, align 2, !tbaa !68 ; 3 uses
  %i.c = load <2 x i16>, ptr %2, align 2, !tbaa !68
  %.sroa.22.6.copyload = load i16, ptr %.sroa.22.6..sroa_idx, align 2, !tbaa !68 ; 3 uses
  %.sroa.17.6.copyload = load i16, ptr %2, align 2, !tbaa !68 ; 3 uses
  %.sroa.26.6..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.26.6.copyload = load i16, ptr %.sroa.26.6..sroa_idx, align 2, !tbaa !68 ; 4 uses
  %i.d = sext i16 %.sroa.17.6.copyload to i32
  %i.e = sext i16 %.sroa.0108.0.copyload to i32   ; 2 uses
  %i.f = sext i16 %.sroa.22.6.copyload to i32
  %i.g = sext i16 %.sroa.9.0.copyload to i32
  %.not144 = icmp sgt i16 %.sroa.13.0.copyload, %.sroa.26.6.copyload
  br i1 %.not144, label %.preheader133, label %.preheader135.lr.ph

.preheader135.lr.ph:                              ; preds = %bb.a
  %.not50140 = icmp sgt i16 %.sroa.9.0.copyload, %.sroa.22.6.copyload
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.not51137 = icmp sgt i16 %.sroa.0108.0.copyload, %.sroa.17.6.copyload
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %brmerge = select i1 %.not50140, i1 true, i1 %.not51137
  br i1 %brmerge, label %.preheader133, label %.preheader135.preheader

.preheader135.preheader:                          ; preds = %.preheader135.lr.ph
  %i.s = sext i16 %.sroa.13.0.copyload to i32
  %i.t = call i16 @llvm.smax.i16(i16 %.sroa.26.6.copyload, i16 %.sroa.13.0.copyload)
  %smax155 = sext i16 %i.t to i32
  br label %.preheader135

.preheader135:                                    ; preds = %.preheader135.preheader, %._crit_edge143
  %.043145 = phi i32 [ %i.ah, %._crit_edge143 ], [ %i.s, %.preheader135.preheader ] ; 4 uses
  %i.u = trunc nsw i32 %.043145 to i16
  br label %.lr.ph

.preheader133:                                    ; preds = %._crit_edge143, %.preheader135.lr.ph, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !169
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !169  ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %._crit_edge151, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader133
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ag = shufflevector <2 x i16> %i.c, <2 x i16> %i.b, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %.preheader

._crit_edge143:                                   ; preds = %._crit_edge
  %i.ah = add nsw i32 %.043145, 1
  %exitcond156.not = icmp eq i32 %.043145, %smax155
  br i1 %exitcond156.not, label %.preheader133, label %.preheader135, !llvm.loop !333

.lr.ph:                                           ; preds = %.preheader135, %._crit_edge
  %.042141 = phi i32 [ %i.g, %.preheader135 ], [ %i.be, %._crit_edge ] ; 4 uses
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !93  ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = trunc nsw i32 %.042141 to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.am = load i16, ptr %i.al, align 4, !tbaa !98
  %i.an = sext i16 %i.am to i32
  %i.ao = sub nsw i32 %.043145, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !99
  %i.as = mul nsw i32 %i.ao, %i.ar
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !96
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  %i.av = load i16, ptr %i.au, align 2, !tbaa !100
  %i.aw = sext i16 %i.av to i32
  %i.ax = add i32 %i.as, %.042141
  %i.ay = sub i32 %i.ax, %i.aw
  %i.az = mul i32 %i.ay, %i.at
  %i.ba = load i16, ptr %i.aj, align 4, !tbaa !97
  %i.bb = sext i16 %i.ba to i32
  %i.bc = sub nsw i32 %i.e, %i.bb
  %i.bd = add nsw i32 %i.bc, %i.az
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit.split
  %i.be = add nsw i32 %.042141, 1
  %exitcond154.not = icmp eq i32 %.042141, %i.f
  br i1 %exitcond154.not, label %._crit_edge143, label %.lr.ph, !llvm.loop !334

bb.b:                                             ; preds = %.lr.ph, %.loopexit.split
  %.040139 = phi i32 [ %i.e, %.lr.ph ], [ %i.hr, %.loopexit.split ] ; 3 uses
  %.041138 = phi i32 [ %i.bd, %.lr.ph ], [ %i.hs, %.loopexit.split ] ; 2 uses
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !103
  %i.bi = zext i32 %.041138 to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 4, !tbaa !109 ; 2 uses
  %i.bl = icmp eq i16 %i.bk, 127
  br i1 %i.bl, label %.loopexit.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 312
  %i.bo = zext i16 %i.bk to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bp, align 1, !tbaa !90 ; 3 uses
  %i.bq = and i8 %.sroa.0.0.copyload.i.i, 32
  %.not52 = icmp eq i8 %i.bq, 0
  br i1 %.not52, label %.loopexit.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = and i8 %.sroa.0.0.copyload.i.i, 15      ; 2 uses
  %.not53 = icmp eq i8 %i.br, 0
  br i1 %.not53, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.bs = shl i8 %.sroa.0.0.copyload.i.i, 4
  %i.bt = or disjoint i8 %i.bs, %i.br             ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i8 %i.bt, ptr %i.bu, align 2, !tbaa !159
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !159 ; 2 uses
  %.not54 = icmp eq i8 %.pre, 0
  br i1 %.not54, label %.loopexit.split, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.bv = phi i8 [ %i.bt, %.thread ], [ %.pre, %bb.e ] ; 3 uses
  %i.bw = trunc nsw i32 %.040139 to i16
  %i.bx = icmp eq i8 %i.bv, 1
  %i.by = and i8 %i.bv, 15
  %spec.select.i = call i8 @llvm.usub.sat.i8(i8 %i.by, i8 1) ; 2 uses
  %i.bz = and i8 %i.bv, -16                       ; 2 uses
  %.not35.i = icmp eq i8 %i.bz, 0
  %i.ca = add i8 %i.bz, -16
  %.0.i = select i1 %.not35.i, i8 0, i8 %i.ca     ; 2 uses
  %i.cb = zext nneg i8 %spec.select.i to i32
  %i.cc = zext i8 %.0.i to i32
  br i1 %i.bx, label %.loopexit.split, label %.split

.split:                                           ; preds = %bb.f, %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit
  %.039.idx136 = phi i64 [ %.039.add, %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit ], [ 0, %bb.f ] ; 2 uses
  %.039.ptr = getelementptr inbounds nuw i8, ptr @g_6dirs, i64 %.039.idx136 ; 3 uses
  %i.cd = load i16, ptr %.039.ptr, align 2, !tbaa !65
  %i.ce = add i16 %i.cd, %i.bw                    ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.039.ptr, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !66
  %i.ch = add i16 %i.cg, %i.ak                    ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.039.ptr, i64 4
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !67
  %i.ck = add i16 %i.cj, %i.u                     ; 4 uses
  %.sroa.3.0.insert.ext.i = zext i16 %i.ck to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.ch to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.ce to i48
  %i.cl = or disjoint i48 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %i.cl, %.sroa.3.0.insert.shift.i ; 2 uses
  %.not.i.i = icmp sgt i16 %.sroa.0108.0.copyload, %i.ce
  %.not6.i.i = icmp slt i16 %.sroa.17.6.copyload, %i.ce
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not6.i.i
  %.not7.i.i = icmp sgt i16 %.sroa.9.0.copyload, %i.ch
  %or.cond12.i.i = select i1 %or.cond.i.i, i1 true, i1 %.not7.i.i
  %.not8.i.i = icmp slt i16 %.sroa.22.6.copyload, %i.ch
  %or.cond14.i.i = select i1 %or.cond12.i.i, i1 true, i1 %.not8.i.i
  br i1 %or.cond14.i.i, label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit, label %bb.g

bb.g:                                             ; preds = %.split
  %.not9.i.i = icmp sge i16 %i.ck, %.sroa.13.0.copyload
  %i.cm = icmp sle i16 %i.ck, %.sroa.26.6.copyload
  %or.cond.i = and i1 %.not9.i.i, %i.cm
  br i1 %or.cond.i, label %bb.h, label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit

bb.h:                                             ; preds = %bb.g
  %i.cn = sext i16 %i.ck to i32
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !93  ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !98
  %i.cs = sext i16 %i.cr to i32
  %i.ct = sub nsw i32 %i.cn, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !99
  %i.cx = mul nsw i32 %i.ct, %i.cw
  %i.cy = load i32, ptr %i.cu, align 4, !tbaa !96
  %i.cz = sext i16 %i.ch to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 10
  %i.db = load i16, ptr %i.da, align 2, !tbaa !100
  %i.dc = sext i16 %i.db to i32
  %i.dd = add i32 %i.cx, %i.cz
  %i.de = sub i32 %i.dd, %i.dc
  %i.df = mul i32 %i.de, %i.cy
  %i.dg = sext i16 %i.ce to i32
  %i.dh = load i16, ptr %i.cp, align 4, !tbaa !97
  %i.di = sext i16 %i.dh to i32
  %i.dj = sub nsw i32 %i.dg, %i.di
  %i.dk = add nsw i32 %i.dj, %i.df
  %i.dl = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !103
  %i.dn = zext i32 %i.dk to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !159 ; 3 uses
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = and i32 %i.dr, 15
  %.not36.i = icmp samesign ult i32 %i.ds, %i.cb
  %i.dt = and i32 %i.dr, 240
  %.not37.i = icmp samesign ult i32 %i.dt, %i.cc
  %or.cond = select i1 %.not36.i, i1 true, i1 %.not37.i
  br i1 %or.cond, label %bb.i, label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit

bb.i:                                             ; preds = %bb.h
  %i.du = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.dv = load i16, ptr %i.do, align 4, !tbaa !109
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 312
  %i.dx = zext i16 %i.dv to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.dy, align 1, !tbaa !90
  %i.dz = and i8 %.sroa.0.0.copyload.i.i.i, 32
  %.not38.i = icmp eq i8 %i.dz, 0
  br i1 %.not38.i, label %_ZN6Mapgen11lightSpreadER9VoxelAreaRSt5queueISt4pairIN4core8vector3dIsEEhESt5dequeIS7_SaIS7_EEERKS6_h.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_2

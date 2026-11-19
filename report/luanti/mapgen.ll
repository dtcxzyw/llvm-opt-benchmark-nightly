Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen?download=true
inline.NumInlined: 1329
inline.NumDeleted: 628
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Mapgen17findLiquidSurfaceEN4core8vector2dIsEEss:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01331 = phi i16 [ %3, %.lr.ph ], [ %i.bh, %bb.d ] ; 2 uses
  %.01730 = phi i32 [ %i.z, %.lr.ph ], [ %i.bg, %bb.d ] ; 2 uses
  %i.an = zext i32 %.01730 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !107
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = icmp ugt i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw [2072 x i8], ptr %i.ag, i64 %i.aq ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !80
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZNK14NodeDefManager3getERK7MapNode.exit, label %_ZNK14NodeDefManager3getERK7MapNode.exit.thread

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.c
  %i.aw = load i8, ptr %i.al, align 1, !tbaa !142, !range !143, !noundef !144
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.thread18, label %_ZNK14NodeDefManager3getERK7MapNode.exit15

_ZNK14NodeDefManager3getERK7MapNode.exit.thread25: ; preds = %bb.b
  %i.ay = load i8, ptr %i.al, align 1, !tbaa !142, !range !143, !noundef !144
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.thread18, label %_ZNK14NodeDefManager3getERK7MapNode.exit15

_ZNK14NodeDefManager3getERK7MapNode.exit.thread:  ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 1403
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !142, !range !143, !noundef !144
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.thread18, label %_ZNK14NodeDefManager3getERK7MapNode.exit15

_ZNK14NodeDefManager3getERK7MapNode.exit15:       ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread
  %i.bd = phi ptr [ %i.as, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread ], [ %i.am, %_ZNK14NodeDefManager3getERK7MapNode.exit.thread25 ], [ %i.am, %_ZNK14NodeDefManager3getERK7MapNode.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1449
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !145
  %.not27 = icmp eq i8 %i.bf, 0
  br i1 %.not27, label %bb.d, label %.thread18

bb.d:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit15
  %i.bg = sub i32 %.01730, %i.d
  %i.bh = add i16 %.01331, -1                     ; 2 uses
  %.not = icmp slt i16 %i.bh, %2
  br i1 %.not, label %.thread18, label %bb.b, !llvm.loop !283

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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !94   ; 2 uses
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
  %n.vec39 = and i64 %i.x, 131068                 ; 4 uses
  %i.ab = trunc i64 %n.vec39 to i16
  %i.ac = add i16 %.sroa.09.0.extract.trunc, %i.ab
  %cmp.n42 = icmp eq i64 %i.x, %n.vec39
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
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !284

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader, label %vec.epilog.ph, !prof !291

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ai = add i64 %.022.us24, %n.vec39            ; 2 uses
  %i.aj = getelementptr [2 x i8], ptr %i.b, i64 %.022.us24
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = getelementptr [2 x i8], ptr %i.aj, i64 %index40
  store <4 x i16> splat (i16 -31007), ptr %i.ak, align 2, !tbaa !68
  %index.next41 = add nuw i64 %index40, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next41, %n.vec39
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !285

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n42, label %._crit_edge.split.us.us, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us.preheader

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
  br i1 %.not15.us.us, label %._crit_edge.split.us.us, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us, !llvm.loop !286

._crit_edge.split.us.us:                          ; preds = %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next31.lcssa = phi i64 [ %i.ai, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %indvars.iv.next31, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.us.us ]
  %i.ao = add i16 %.01321.us25, 1                 ; 2 uses
  %i.ap = sext i16 %i.ao to i32
  %.not14.us26 = icmp sgt i32 %i.ap, %i.d
  br i1 %.not14.us26, label %.loopexit, label %iter.check, !llvm.loop !287

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.aq = load i32, ptr %i.j, align 4, !tbaa !97
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !101
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !104
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !105 ; 3 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 2072
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 259000
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge.split
  %.022 = phi i32 [ 0, %.preheader.lr.ph.split.split ], [ %4, %._crit_edge.split ]
  %.01321 = phi i16 [ %.sroa.311.0.extract.trunc, %.preheader.lr.ph.split.split ], [ %i.ba, %._crit_edge.split ] ; 2 uses
  %i.az = sext i16 %.01321 to i32
  br label %.lr.ph.i

._crit_edge.split:                                ; preds = %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit
  %i.ba = add i16 %.01321, 1                      ; 2 uses
  %i.bb = sext i16 %i.ba to i32
  %.not14 = icmp sgt i32 %i.bb, %i.d
  br i1 %.not14, label %.loopexit, label %.preheader, !llvm.loop !287

.lr.ph.i:                                         ; preds = %.preheader, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit
  %.119 = phi i32 [ %.022, %.preheader ], [ %4, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit ] ; 2 uses
  %.01218 = phi i16 [ %.sroa.09.0.extract.trunc, %.preheader ], [ %i.cg, %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit ] ; 2 uses
  %i.bc = sext i16 %.01218 to i32
  %i.bd = load i16, ptr %i.h, align 8, !tbaa !95
  %i.be = sext i16 %i.bd to i32
  %i.bf = sub nsw i32 %i.bc, %i.be
  %i.bg = load i16, ptr %i.i, align 4, !tbaa !96
  %i.bh = sext i16 %i.bg to i32
  %i.bi = sub nsw i32 %i.az, %i.bh
  %i.bj = mul nsw i32 %i.bi, %i.aq
  %i.bk = add i32 %i.bj, %i.k
  %i.bl = load i16, ptr %i.l, align 2, !tbaa !98
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
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !107
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
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !142, !range !143, !noundef !144
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit.i
  %i.cd = sub i32 %.01319.i, %i.r
  %i.ce = add i16 %.01120.i, -1                   ; 2 uses
  %.not.i = icmp slt i16 %i.ce, %.sroa.210.0.extract.trunc
  br i1 %.not.i, label %_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit, label %bb.c, !llvm.loop !0

_ZN6Mapgen15findGroundLevelEN4core8vector2dIsEEss.exit.loopexit: ; preds = %bb.f, %_ZNK14NodeDefManager3getERK7MapNode.exit.i
  %narrow.i.ph = phi i16 [ -31007, %bb.f ], [ %.01120.i, %_ZNK14NodeDefManager3getERK7MapNode.exit.i ]
  %3 = sext i32 %.119 to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.b, i64 %3
  store i16 %narrow.i.ph, ptr %i.cf, align 2, !tbaa !68
  %i.cg = add i16 %.01218, 1                      ; 2 uses
  %4 = add nsw i32 %.119, 1                       ; 2 uses
  %.not15 = icmp sgt i16 %i.cg, %.sroa.0.0.extract.trunc
  br i1 %.not15, label %._crit_edge.split, label %.lr.ph.i, !llvm.loop !288

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6Mapgen11getSurfacesEN4core8vector2dIsEEssRSt6vectorIsSaIsEES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 %1, i16 noundef signext %2, i16 noundef signext %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.e = ashr i32 %1, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load i16, ptr %i.f, align 4, !tbaa !96
  %i.h = sext i16 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  %i.l = mul nsw i32 %i.i, %i.k
  %i.m = load i32, ptr %i.d, align 4, !tbaa !94   ; 2 uses
  %i.n = sext i16 %3 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !98
  %i.q = sext i16 %i.p to i32
  %i.r = add i32 %i.l, %i.n
  %i.s = sub i32 %i.r, %i.q
  %i.t = mul i32 %i.s, %i.m
  %i.u = shl i32 %1, 16
  %i.v = ashr exact i32 %i.u, 16
  %i.w = load i16, ptr %i.c, align 4, !tbaa !95
  %i.x = sext i16 %i.w to i32
  %i.y = sub nsw i32 %i.v, %i.x
  %i.z = add nsw i32 %i.y, %i.t                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73 ; 2 uses
  %i.ah = and i32 %i.ae, 65535
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !105 ; 3 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 2072
  %i.aq = icmp ugt i64 %i.ap, %i.ai
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw [2072 x i8], ptr %i.al, i64 %i.ai ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !80
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.aw = phi ptr [ %i.av, %bb.c ], [ %i.ar, %bb.b ]
  %storemerge32 = add i16 %3, -1                  ; 2 uses
  %.not1633 = icmp slt i16 %storemerge32, %2
  br i1 %.not1633, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.ax = sub i32 %i.z, %i.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1403
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !142, !range !143, !noundef !144
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIsSaIsEE9push_backERKs.exit, %_ZNK14NodeDefManager3getERK7MapNode.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit
  %storemerge37 = phi i16 [ %storemerge32, %.lr.ph ], [ %storemerge, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit ] ; 4 uses
  %.036 = phi i8 [ %i.az, %.lr.ph ], [ %i.cc, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit ]
  %storemerge.in35 = phi i16 [ %3, %.lr.ph ], [ %storemerge37, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit ] ; 2 uses
  %.03134 = phi i32 [ %i.ax, %.lr.ph ], [ %i.dy, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit ] ; 2 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !101
  %i.bh = zext i32 %.03134 to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = load ptr, ptr %i.af, align 8, !tbaa !73 ; 2 uses
  %i.bl = and i32 %i.bj, 65535
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !104
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !105 ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 2072
  %i.bu = icmp ugt i64 %i.bt, %i.bm
  br i1 %i.bu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw [2072 x i8], ptr %i.bp, i64 %i.bm ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !80
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.f, label %_ZNK14NodeDefManager3getERK7MapNode.exit17

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit17

_ZNK14NodeDefManager3getERK7MapNode.exit17:       ; preds = %bb.e, %bb.f
  %i.ca = phi ptr [ %i.bz, %bb.f ], [ %i.bv, %bb.e ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1403
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !142, !range !143, !noundef !144 ; 2 uses
  %i.cd = trunc nuw i8 %i.cc to i1
  %.not = xor i1 %i.cd, true                      ; 2 uses
  %i.ce = trunc nuw i8 %.036 to i1                ; 2 uses
  %or.cond = or i1 %i.ce, %.not
  br i1 %or.cond, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit17
  %i.cf = load ptr, ptr %i.ba, align 8, !tbaa !294 ; 4 uses
  %i.cg = load ptr, ptr %i.bb, align 8, !tbaa !295
  %.not.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i16 %storemerge37, ptr %i.cf, align 2, !tbaa !68
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store ptr %i.ch, ptr %i.ba, align 8, !tbaa !294
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.i:                                             ; preds = %bb.g
  %i.ci = load ptr, ptr %4, align 8, !tbaa !296   ; 4 uses
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 5 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775806
  br i1 %i.cm, label %bb.j, label %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #33
  unreachable

_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.cn = ashr exact i64 %i.cl, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add i64 %.sroa.speculated.i.i.i, %i.cn  ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 4611686018427387903)
  %i.cr = select i1 %i.cp, i64 4611686018427387903, i64 %i.cq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cs = shl nuw nsw i64 %i.cr, 1
  %i.ct = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #32 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cl ; 2 uses
  store i16 %storemerge37, ptr %i.cu, align 2, !tbaa !68
  %i.cv = icmp sgt i64 %i.cl, 0
  br i1 %i.cv, label %bb.k, label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ct, ptr align 2 %i.ci, i64 %i.cl, i1 false)
  br label %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %.not.i17.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  %i.cx = load ptr, ptr %i.bb, align 8, !tbaa !295
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cz) #31
  br label %_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i

_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_.exit16.i.i
  store ptr %i.ct, ptr %4, align 8, !tbaa !296
  store ptr %i.cw, ptr %i.ba, align 8, !tbaa !294
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.da, ptr %i.bb, align 8, !tbaa !295
  br label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.m:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit17
  %or.cond4 = and i1 %i.ce, %.not
  br i1 %or.cond4, label %bb.n, label %_ZNSt6vectorIsSaIsEE9push_backERKs.exit

bb.n:                                             ; preds = %bb.m
  %i.db = load ptr, ptr %i.bc, align 8, !tbaa !294 ; 4 uses
  %i.dc = load ptr, ptr %i.bd, align 8, !tbaa !295
end_hunk_0

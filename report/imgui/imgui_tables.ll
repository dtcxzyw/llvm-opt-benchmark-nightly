Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn:bb.a
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 117
  %.val = load i8, ptr %i.m, align 1, !tbaa !418
  %i.n = and i8 %.val, 3
  %i.o = zext nneg i8 %i.n to i16
  %i.p = shl nuw nsw i16 %i.o, 8
  %i.q = and i16 %i.e, -769
  %i.r = or disjoint i16 %i.p, %i.q
  store i16 %i.r, ptr %i.d, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 573
  store i8 1, ptr %i.s, align 1, !tbaa !288
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 4) i8 @_ZN5ImGui31TableGetColumnNextSortDirectionEP16ImGuiTableColumn(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.b = load i16, ptr %i.a, align 2, !tbaa !339
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 115
  %i.e = load i16, ptr %i.d, align 1              ; 2 uses
  %i.f = lshr i16 %i.e, 8                         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 117
  %.val13 = load i8, ptr %i.g, align 1, !tbaa !418 ; 4 uses
  %i.h = zext i8 %.val13 to i16
  %i.i = xor i16 %i.f, %i.h
  %i.j = and i16 %i.i, 3
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 117
  %.val14 = load i8, ptr %i.l, align 1, !tbaa !418
  %i.m = and i8 %.val14, 3
  br label %.loopexit

bb.c:                                             ; preds = %.preheader
  %i.n = lshr i8 %.val13, 2
  %i.o = zext nneg i8 %i.n to i16
  %i.p = xor i16 %i.f, %i.o
  %i.q = and i16 %i.p, 3
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = lshr i8 %.val13, 4
  %i.t = zext nneg i8 %i.s to i16
  %i.u = xor i16 %i.f, %i.t
  %i.v = and i16 %i.u, 3
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c, %.preheader
  %.01118.lcssa = phi i8 [ 1, %.preheader ], [ 2, %bb.c ], [ 3, %bb.d ]
  %i.x = lshr i16 %i.e, 10
  %i.y = trunc nuw nsw i16 %i.x to i8
  %.rhs.trunc = and i8 %i.y, 3
  %i.z = urem i8 %.01118.lcssa, %.rhs.trunc
  %i.aa = shl nuw nsw i8 %i.z, 1
  %i.ab = lshr i8 %.val13, %i.aa
  %i.ac = and i8 %i.ab, 3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i8 [ %i.m, %bb.b ], [ %i.ac, %bb.e ], [ 0, %bb.d ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui27TableSetColumnSortDirectionEi18ImGuiSortDirectionb(i32 noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !263  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !217
  %i.f = and i32 %i.e, 67108864
  %.not = icmp ne i32 %i.f, 0
  %spec.select = and i1 %2, %.not                 ; 3 uses
  br i1 %spec.select, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !221  ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !271  ; 21 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.h, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check63 = icmp ult i32 %i.h, 16
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.by, %vector.body ]
  %vec.phi64 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.bz, %vector.body ]
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.o = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.p = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.q = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.s = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.u = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.v = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.w = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.x = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.y = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.aa = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.ab = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 98
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 218
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 338
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 458
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 578
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 698
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 818
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 938
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 1058
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1178
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 1298
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 1418
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 1538
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 1658
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 1778
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 1898
  %i.as = load i16, ptr %i.ac, align 2, !tbaa !339
  %i.at = load i16, ptr %i.ad, align 2, !tbaa !339
  %i.au = load i16, ptr %i.ae, align 2, !tbaa !339
  %i.av = load i16, ptr %i.af, align 2, !tbaa !339
  %i.aw = load i16, ptr %i.ag, align 2, !tbaa !339
  %i.ax = load i16, ptr %i.ah, align 2, !tbaa !339
  %i.ay = load i16, ptr %i.ai, align 2, !tbaa !339
  %i.az = load i16, ptr %i.aj, align 2, !tbaa !339
  %i.ba = insertelement <8 x i16> poison, i16 %i.as, i64 0
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 1
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 2
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 3
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 4
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 5
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 6
  %i.bh = insertelement <8 x i16> %i.bg, i16 %i.az, i64 7
  %i.bi = load i16, ptr %i.ak, align 2, !tbaa !339
  %i.bj = load i16, ptr %i.al, align 2, !tbaa !339
  %i.bk = load i16, ptr %i.am, align 2, !tbaa !339
  %i.bl = load i16, ptr %i.an, align 2, !tbaa !339
  %i.bm = load i16, ptr %i.ao, align 2, !tbaa !339
  %i.bn = load i16, ptr %i.ap, align 2, !tbaa !339
  %i.bo = load i16, ptr %i.aq, align 2, !tbaa !339
  %i.bp = load i16, ptr %i.ar, align 2, !tbaa !339
  %i.bq = insertelement <8 x i16> poison, i16 %i.bi, i64 0
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 1
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 2
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 3
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 4
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.bn, i64 5
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 6
  %i.bx = insertelement <8 x i16> %i.bw, i16 %i.bp, i64 7
  %i.by = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi, <8 x i16> %i.bh) ; 2 uses
  %i.bz = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi64, <8 x i16> %i.bx) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !648

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.by, <8 x i16> %i.bz)
  %i.cb = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !652

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.cb, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi67 = phi <4 x i16> [ %broadcast.splat, %vec.epilog.ph ], [ %i.cs, %vec.epilog.vector.body ]
  %i.cc = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index66
  %i.cd = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index66
  %i.ce = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index66
  %i.cf = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %index66
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 98
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 218
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 338
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 458
  %i.ck = load i16, ptr %i.cg, align 2, !tbaa !339
  %i.cl = load i16, ptr %i.ch, align 2, !tbaa !339
  %i.cm = load i16, ptr %i.ci, align 2, !tbaa !339
  %i.cn = load i16, ptr %i.cj, align 2, !tbaa !339
  %i.co = insertelement <4 x i16> poison, i16 %i.ck, i64 0
  %i.cp = insertelement <4 x i16> %i.co, i16 %i.cl, i64 1
  %i.cq = insertelement <4 x i16> %i.cp, i16 %i.cm, i64 2
  %i.cr = insertelement <4 x i16> %i.cq, i16 %i.cn, i64 3
  %i.cs = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi67, <4 x i16> %i.cr) ; 2 uses
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.ct = icmp eq i64 %index.next68, %n.vec65
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !649

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cu = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.cs) ; 2 uses
  %cmp.n69 = icmp eq i64 %n.vec65, %wide.trip.count
  br i1 %cmp.n69, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec65, %vec.epilog.middle.block ]
  %.03740.ph = phi i16 [ 0, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i16 [ %i.cu, %vec.epilog.middle.block ], [ %i.cb, %middle.block ], [ %i.cz, %vec.epilog.scalar.ph ]
  %i.cv = add nuw i16 %.lcssa, 1
  br label %._crit_edge

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.03740 = phi i16 [ %i.cz, %vec.epilog.scalar.ph ], [ %.03740.ph, %vec.epilog.scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [120 x i8], ptr %i.k, i64 %indvars.iv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 98
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !339
  %i.cz = tail call noundef i16 @llvm.smax.i16(i16 %.03740, i16 %i.cy) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !650

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit, %bb.a
  %i.da = phi i16 [ 0, %bb.a ], [ 1, %.preheader ], [ %i.cv, %._crit_edge.loopexit ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !271
  %i.dd = sext i32 %0 to i64
  %i.de = getelementptr inbounds [120 x i8], ptr %i.dc, i64 %i.dd ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 115 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 1
  %i.dh = and i8 %1, 3                            ; 2 uses
  %i.di = zext nneg i8 %i.dh to i16
  %i.dj = shl nuw nsw i16 %i.di, 8
  %i.dk = and i16 %i.dg, -769
  %i.dl = or disjoint i16 %i.dk, %i.dj
  store i16 %i.dl, ptr %i.df, align 1
  %i.dm = icmp eq i8 %i.dh, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 98 ; 2 uses
  br i1 %i.dm, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !339
  %i.dp = icmp ne i16 %i.do, -1
  %or.cond = and i1 %spec.select, %i.dp
  br i1 %or.cond, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %._crit_edge
  %.sink = phi i16 [ -1, %._crit_edge ], [ %i.da, %bb.b ]
  store i16 %.sink, ptr %i.dn, align 2, !tbaa !339
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !221 ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %bb.c
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 573 ; 2 uses
  %.pre57 = load ptr, ptr %i.db, align 8, !tbaa !271 ; 2 uses
  br i1 %spec.select, label %.lr.ph44.split.us, label %.lr.ph44.split

.lr.ph44.split.us:                                ; preds = %.lr.ph44, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us
  %i.du = phi i32 [ %i.ep, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us ], [ %i.dr, %.lr.ph44 ] ; 2 uses
  %i.dv = phi ptr [ %i.eq, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us ], [ %.pre57, %.lr.ph44 ] ; 3 uses
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us ], [ 0, %.lr.ph44 ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [120 x i8], ptr %i.dv, i64 %indvars.iv50 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 98
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !339
  %i.dz = icmp eq i16 %i.dy, -1
  br i1 %i.dz, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph44.split.us
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 115 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 1            ; 3 uses
  %i.ec = lshr i16 %i.eb, 12
  %i.ed = zext nneg i16 %i.ec to i32
  %i.ee = lshr i16 %i.eb, 8
  %i.ef = and i16 %i.ee, 3
  %i.eg = zext nneg i16 %i.ef to i32
  %i.eh = shl nuw nsw i32 1, %i.eg
  %i.ei = and i32 %i.eh, %i.ed
  %.not.i.us = icmp eq i32 %i.ei, 0
  br i1 %.not.i.us, label %bb.e, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us

bb.e:                                             ; preds = %bb.d
  %i.ej = getelementptr i8, ptr %i.dw, i64 117
  %.val.i.us = load i8, ptr %i.ej, align 1, !tbaa !418
  %i.ek = and i8 %.val.i.us, 3
  %i.el = zext nneg i8 %i.ek to i16
  %i.em = shl nuw nsw i16 %i.el, 8
  %i.en = and i16 %i.eb, -769
  %i.eo = or disjoint i16 %i.em, %i.en
  store i16 %i.eo, ptr %i.ea, align 1
  store i8 1, ptr %i.dt, align 1, !tbaa !288
  %.pre56 = load ptr, ptr %i.db, align 8, !tbaa !271
  %.pre58 = load i32, ptr %i.dq, align 4, !tbaa !221
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us

_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us: ; preds = %bb.e, %bb.d, %.lr.ph44.split.us
  %i.ep = phi i32 [ %.pre58, %bb.e ], [ %i.du, %bb.d ], [ %i.du, %.lr.ph44.split.us ] ; 2 uses
  %i.eq = phi ptr [ %.pre56, %bb.e ], [ %i.dv, %bb.d ], [ %i.dv, %.lr.ph44.split.us ]
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.er = sext i32 %i.ep to i64
  %i.es = icmp slt i64 %indvars.iv.next51, %i.er
  br i1 %i.es, label %.lr.ph44.split.us, label %._crit_edge45, !llvm.loop !651

._crit_edge45:                                    ; preds = %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit.us, %bb.c
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 578
  store i8 1, ptr %i.et, align 2, !tbaa !284
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 573
  store i8 1, ptr %i.eu, align 1, !tbaa !288
  ret void

.lr.ph44.split:                                   ; preds = %.lr.ph44, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit
  %i.ev = phi i32 [ %i.fp, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit ], [ %i.dr, %.lr.ph44 ] ; 3 uses
  %i.ew = phi ptr [ %i.fq, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit ], [ %.pre57, %.lr.ph44 ] ; 4 uses
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit ], [ 0, %.lr.ph44 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [120 x i8], ptr %i.ew, i64 %indvars.iv47 ; 4 uses
  %i.ey = icmp eq ptr %i.ex, %i.de
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ex, i64 98 ; 2 uses
  br i1 %i.ey, label %bb.f, label %.thread

.thread:                                          ; preds = %.lr.ph44.split
  store i16 -1, ptr %.phi.trans.insert, align 2, !tbaa !339
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.f:                                             ; preds = %.lr.ph44.split
  %.pre54 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !339
  %i.ez = icmp eq i16 %.pre54, -1
  br i1 %i.ez, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 115 ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 1            ; 3 uses
  %i.fc = lshr i16 %i.fb, 12
  %i.fd = zext nneg i16 %i.fc to i32
  %i.fe = lshr i16 %i.fb, 8
  %i.ff = and i16 %i.fe, 3
  %i.fg = zext nneg i16 %i.ff to i32
  %i.fh = shl nuw nsw i32 1, %i.fg
  %i.fi = and i32 %i.fh, %i.fd
  %.not.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i, label %bb.h, label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

bb.h:                                             ; preds = %bb.g
  %i.fj = getelementptr i8, ptr %i.ex, i64 117
  %.val.i = load i8, ptr %i.fj, align 1, !tbaa !418
  %i.fk = and i8 %.val.i, 3
  %i.fl = zext nneg i8 %i.fk to i16
  %i.fm = shl nuw nsw i16 %i.fl, 8
  %i.fn = and i16 %i.fb, -769
  %i.fo = or disjoint i16 %i.fm, %i.fn
  store i16 %i.fo, ptr %i.fa, align 1
  store i8 1, ptr %i.dt, align 1, !tbaa !288
  %.pre = load ptr, ptr %i.db, align 8, !tbaa !271
  %.pre55 = load i32, ptr %i.dq, align 4, !tbaa !221
  br label %_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit

_ZN5ImGui27TableFixColumnSortDirectionEP10ImGuiTableP16ImGuiTableColumn.exit: ; preds = %.thread, %bb.f, %bb.g, %bb.h
  %i.fp = phi i32 [ %i.ev, %bb.f ], [ %i.ev, %bb.g ], [ %.pre55, %bb.h ], [ %i.ev, %.thread ] ; 2 uses
  %i.fq = phi ptr [ %i.ew, %bb.f ], [ %i.ew, %bb.g ], [ %.pre, %bb.h ], [ %i.ew, %.thread ]
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.fr = sext i32 %i.fp to i64
  %i.fs = icmp slt i64 %indvars.iv.next48, %i.fr
  br i1 %i.fs, label %.lr.ph44.split, label %._crit_edge45, !llvm.loop !651
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui22TableSortSpecsSanitizeEP10ImGuiTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
end_hunk_0

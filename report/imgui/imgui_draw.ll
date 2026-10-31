Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_Z27ImTextureDataUpdateNewFrameP13ImTextureData:bb.a
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread24, label %thread-pre-split25

.thread24:                                        ; preds = %bb.j
  store i32 1, ptr %i.a, align 4, !tbaa !310
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %thread-pre-split, %.thread24
  br i1 %i.r, label %thread-pre-split25.thread, label %.thread27

.thread27:                                        ; preds = %bb.k
  store i32 2, ptr %i.a, align 4, !tbaa !310
  br label %thread-pre-split25.thread

thread-pre-split25:                               ; preds = %bb.h, %bb.i, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !628
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !628
  br label %thread-pre-split25.thread

thread-pre-split25.thread:                        ; preds = %thread-pre-split, %bb.k, %.thread27, %thread-pre-split25
  %.029 = phi i1 [ false, %.thread27 ], [ false, %thread-pre-split25 ], [ true, %bb.k ], [ false, %thread-pre-split ]
  ret i1 %.029
}

; Function Attrs: mustprogress uwtable
define void @_Z20ImFontAtlasBuildMainP11ImFontAtlas(ptr noundef %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !309
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !399
  %.not12 = icmp eq i32 %i.d, %i.f
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_Z21ImFontAtlasBuildClearP11ImFontAtlas(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !339
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i32, ptr %i.j, align 8, !tbaa !400
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = tail call noundef ptr @_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef null) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !333  ; 2 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !348  ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.idx.i = shl nsw i64 %i.r, 3
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %.idx.i
  %.not16.i = icmp eq i32 %i.q, 0
  br i1 %.not16.i, label %_ZL52ImFontAtlasBuildUpdateRendererHasTexturesFromContextP11ImFontAtlas.exit, label %.critedge.i

bb.i:                                             ; preds = %.critedge.i
  %i.t = getelementptr inbounds nuw i8, ptr %.01317.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i, label %_ZL52ImFontAtlasBuildUpdateRendererHasTexturesFromContextP11ImFontAtlas.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %bb.i
  %.01317.i = phi ptr [ %i.t, %bb.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.u = load ptr, ptr %.01317.i, align 8, !tbaa !349
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !121  ; 2 uses
  %.not15.i = icmp eq ptr %i.w, null
  br i1 %.not15.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !401
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.aa = trunc i32 %i.y to i8
  %i.ab = lshr i8 %i.aa, 4
  %i.ac = and i8 %i.ab, 1
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !325
  br label %_ZL52ImFontAtlasBuildUpdateRendererHasTexturesFromContextP11ImFontAtlas.exit

_ZL52ImFontAtlasBuildUpdateRendererHasTexturesFromContextP11ImFontAtlas.exit: ; preds = %bb.i, %bb.h, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 81
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !325, !range !351, !noundef !352
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZL52ImFontAtlasBuildUpdateRendererHasTexturesFromContextP11ImFontAtlas.exit
  tail call void @_Z43ImFontAtlasBuildLegacyPreloadAllGlyphRangesP11ImFontAtlas(ptr noundef nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZL52ImFontAtlasBuildUpdateRendererHasTexturesFromContextP11ImFontAtlas.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 1, ptr %i.ag, align 2, !tbaa !347
  ret void
}

declare void @_ZN12ImGuiStorage10SetVoidPtrEjPv(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq i32 %1, %4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %7, 0
  br i1 %i.b, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %switch.selectcmp2.i = icmp eq i32 %1, 1
  %switch.selectcmp.i = icmp eq i32 %1, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i32 4, i32 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 1, i32 %switch.select.i
  %i.c = mul nsw i32 %6, %switch.select3.i
  %i.d = sext i32 %i.c to i64                     ; 5 uses
  %i.e = sext i32 %2 to i64                       ; 5 uses
  %i.f = sext i32 %5 to i64                       ; 5 uses
  %xtraiter = and i32 %7, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.05583.prol = phi i32 [ %i.g, %.prol.preheader ], [ %7, %.lr.ph ]
  %.05682.prol = phi ptr [ %i.h, %.prol.preheader ], [ %0, %.lr.ph ] ; 2 uses
  %.05781.prol = phi ptr [ %i.i, %.prol.preheader ], [ %3, %.lr.ph ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05781.prol, ptr align 1 %.05682.prol, i64 %i.d, i1 false)
  %i.g = add nsw i32 %.05583.prol, -1             ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.05682.prol, i64 %i.e ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.05781.prol, i64 %i.f ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !629

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.05583.unr = phi i32 [ %7, %.lr.ph ], [ %i.g, %.prol.preheader ]
  %.05682.unr = phi ptr [ %0, %.lr.ph ], [ %i.h, %.prol.preheader ]
  %.05781.unr = phi ptr [ %3, %.lr.ph ], [ %i.i, %.prol.preheader ]
  %i.j = icmp ult i32 %7, 4
  br i1 %i.j, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.05583 = phi i32 [ %i.q, %.lr.ph.new ], [ %.05583.unr, %.prol.loopexit ] ; 2 uses
  %.05682 = phi ptr [ %i.r, %.lr.ph.new ], [ %.05682.unr, %.prol.loopexit ] ; 2 uses
  %.05781 = phi ptr [ %i.s, %.lr.ph.new ], [ %.05781.unr, %.prol.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05781, ptr align 1 %.05682, i64 %i.d, i1 false)
  %i.k = getelementptr inbounds i8, ptr %.05682, i64 %i.e ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.05781, i64 %i.f ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.k, i64 %i.d, i1 false)
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.e ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.f ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.m, i64 %i.d, i1 false)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.e ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.f ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.o, i64 %i.d, i1 false)
  %i.q = add nsw i32 %.05583, -4
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 %i.e
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.f
  %i.t = icmp sgt i32 %.05583, 4
  br i1 %i.t, label %.lr.ph.new, label %.loopexit, !llvm.loop !10

bb.c:                                             ; preds = %bb.a
  %i.u = icmp eq i32 %1, 1
  %i.v = icmp eq i32 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %.preheader63, label %bb.d

.preheader63:                                     ; preds = %bb.c
  %i.w = icmp sgt i32 %7, 0
  br i1 %i.w, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader63
  %i.x = icmp sgt i32 %6, 0
  %i.y = sext i32 %2 to i64                       ; 2 uses
  %i.z = sext i32 %5 to i64                       ; 2 uses
  br i1 %i.x, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.aa = add nsw i32 %7, -1
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = mul nsw i64 %i.z, %i.ab
  %i.ad = add nsw i32 %6, -1
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %8 = shl nuw nsw i64 %i.ae, 2
  %i.af = getelementptr i8, ptr %3, i64 %i.ac
  %i.ag = getelementptr i8, ptr %i.af, i64 %8
  %scevgep104 = getelementptr i8, ptr %i.ag, i64 4
  %9 = mul nsw i64 %i.y, %i.ab
  %i.ah = getelementptr i8, ptr %0, i64 %9
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.ae
  %scevgep105 = getelementptr i8, ptr %i.ai, i64 1
  %i.aj = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check112 = icmp ult i32 %6, 8
  %bound0106 = icmp ult ptr %3, %scevgep105
  %bound1107 = icmp ult ptr %0, %scevgep104
  %found.conflict108 = and i1 %bound0106, %bound1107
  %i.ak = or i32 %2, %5
  %i.al = icmp slt i32 %i.ak, 0
  %i.am = or i1 %found.conflict108, %i.al
  %n.vec114 = and i64 %i.aj, 2147483640           ; 5 uses
  %i.an = trunc nuw nsw i64 %n.vec114 to i32
  %i.ao = sub nsw i32 %6, %i.an
  %i.ap = shl nuw nsw i64 %n.vec114, 2
  %cmp.n123 = icmp eq i64 %n.vec114, %i.aj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge77
  %.05480 = phi i32 [ %i.bc, %._crit_edge77 ], [ %7, %.preheader.preheader ] ; 2 uses
  %.179 = phi ptr [ %i.bd, %._crit_edge77 ], [ %0, %.preheader.preheader ] ; 4 uses
  %.15878 = phi ptr [ %i.be, %._crit_edge77 ], [ %3, %.preheader.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check112, i1 true, i1 %i.am
  br i1 %brmerge, label %scalar.ph111.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %.preheader
  %i.aq = getelementptr i8, ptr %.15878, i64 %i.ap
  %i.ar = getelementptr i8, ptr %.179, i64 %n.vec114
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 3 uses
  %i.as = shl i64 %index116, 2
  %next.gep117 = getelementptr i8, ptr %.15878, i64 %i.as ; 2 uses
  %next.gep118 = getelementptr i8, ptr %.179, i64 %index116 ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep118, i64 4
  %wide.load119 = load <4 x i8>, ptr %next.gep118, align 1, !tbaa !50, !alias.scope !640
  %wide.load120 = load <4 x i8>, ptr %i.at, align 1, !tbaa !50, !alias.scope !640
  %i.au = zext <4 x i8> %wide.load119 to <4 x i32>
  %i.av = zext <4 x i8> %wide.load120 to <4 x i32>
  %i.aw = shl nuw <4 x i32> %i.au, splat (i32 24)
  %i.ax = shl nuw <4 x i32> %i.av, splat (i32 24)
  %i.ay = or disjoint <4 x i32> %i.aw, splat (i32 16777215)
  %i.az = or disjoint <4 x i32> %i.ax, splat (i32 16777215)
  %i.ba = getelementptr i8, ptr %next.gep117, i64 16
  store <4 x i32> %i.ay, ptr %next.gep117, align 4, !tbaa !258, !alias.scope !641, !noalias !640
  store <4 x i32> %i.az, ptr %i.ba, align 4, !tbaa !258, !alias.scope !641, !noalias !640
  %index.next121 = add nuw i64 %index116, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.bb, label %middle.block122, label %vector.body115, !llvm.loop !633

middle.block122:                                  ; preds = %vector.body115
  br i1 %cmp.n123, label %._crit_edge77, label %scalar.ph111.preheader

scalar.ph111.preheader:                           ; preds = %.preheader, %middle.block122
  %.05176.ph = phi i32 [ %i.ao, %middle.block122 ], [ %6, %.preheader ]
  %.05275.ph = phi ptr [ %i.aq, %middle.block122 ], [ %.15878, %.preheader ]
  %.05374.ph = phi ptr [ %i.ar, %middle.block122 ], [ %.179, %.preheader ]
  br label %scalar.ph111

._crit_edge77:                                    ; preds = %scalar.ph111, %middle.block122
  %i.bc = add nsw i32 %.05480, -1
  %i.bd = getelementptr inbounds i8, ptr %.179, i64 %i.y
  %i.be = getelementptr inbounds i8, ptr %.15878, i64 %i.z
  %i.bf = icmp sgt i32 %.05480, 1
  br i1 %i.bf, label %.preheader, label %.loopexit, !llvm.loop !11

scalar.ph111:                                     ; preds = %scalar.ph111.preheader, %scalar.ph111
  %.05176 = phi i32 [ %i.bm, %scalar.ph111 ], [ %.05176.ph, %scalar.ph111.preheader ] ; 2 uses
  %.05275 = phi ptr [ %i.bl, %scalar.ph111 ], [ %.05275.ph, %scalar.ph111.preheader ] ; 2 uses
  %.05374 = phi ptr [ %i.bg, %scalar.ph111 ], [ %.05374.ph, %scalar.ph111.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05374, i64 1
  %i.bh = load i8, ptr %.05374, align 1, !tbaa !50
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw i32 %i.bi, 24
  %i.bk = or disjoint i32 %i.bj, 16777215
  %i.bl = getelementptr inbounds nuw i8, ptr %.05275, i64 4
  store i32 %i.bk, ptr %.05275, align 4, !tbaa !258
  %i.bm = add nsw i32 %.05176, -1
  %i.bn = icmp sgt i32 %.05176, 1
  br i1 %i.bn, label %scalar.ph111, label %._crit_edge77, !llvm.loop !634

bb.d:                                             ; preds = %bb.c
  %i.bo = icmp eq i32 %1, 0
  %i.bp = icmp eq i32 %4, 1
  %or.cond3 = and i1 %i.bo, %i.bp
  %i.bq = icmp sgt i32 %7, 0
  %or.cond85 = and i1 %or.cond3, %i.bq
  br i1 %or.cond85, label %.preheader65.lr.ph, label %.loopexit

.preheader65.lr.ph:                               ; preds = %bb.d
  %i.br = icmp sgt i32 %6, 0
  %i.bs = sext i32 %2 to i64                      ; 2 uses
  %i.bt = sext i32 %5 to i64                      ; 2 uses
  br i1 %i.br, label %.preheader65.preheader, label %.loopexit

.preheader65.preheader:                           ; preds = %.preheader65.lr.ph
  %i.bu = add nsw i32 %7, -1
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = mul nsw i64 %i.bt, %i.bv
  %i.bx = add nsw i32 %6, -1
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %10 = getelementptr i8, ptr %3, i64 %i.bw
  %i.bz = getelementptr i8, ptr %10, i64 %i.by
  %scevgep.a = getelementptr i8, ptr %i.bz, i64 1
  %11 = mul nsw i64 %i.bs, %i.bv
  %12 = shl nuw nsw i64 %i.by, 2
  %i.ca = getelementptr i8, ptr %0, i64 %11
  %i.cb = getelementptr i8, ptr %i.ca, i64 %12
  %scevgep97 = getelementptr i8, ptr %i.cb, i64 4
  %i.cc = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %6, 8
  %bound0 = icmp ult ptr %3, %scevgep97
  %bound1 = icmp ult ptr %0, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %i.cd = or i32 %2, %5
  %i.ce = icmp slt i32 %i.cd, 0
  %i.cf = or i1 %found.conflict, %i.ce
  %n.vec = and i64 %i.cc, 2147483640              ; 5 uses
  %i.cg = trunc nuw nsw i64 %n.vec to i32
  %i.ch = sub nsw i32 %6, %i.cg
  %i.ci = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.cc
  br label %.preheader65

.preheader65:                                     ; preds = %.preheader65.preheader, %._crit_edge
  %.05073 = phi i32 [ %i.ct, %._crit_edge ], [ %7, %.preheader65.preheader ] ; 2 uses
  %.272 = phi ptr [ %i.cu, %._crit_edge ], [ %0, %.preheader65.preheader ] ; 4 uses
  %.25971 = phi ptr [ %i.cv, %._crit_edge ], [ %3, %.preheader65.preheader ] ; 4 uses
  %brmerge131 = select i1 %min.iters.check, i1 true, i1 %i.cf
  br i1 %brmerge131, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader65
  %i.cj = getelementptr i8, ptr %.25971, i64 %n.vec
  %i.ck = getelementptr i8, ptr %.272, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.25971, i64 %index ; 2 uses
  %i.cl = shl i64 %index, 2
  %next.gep99 = getelementptr i8, ptr %.272, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep99, align 4, !tbaa !258, !alias.scope !642
  %wide.load100 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !258, !alias.scope !642
  %i.cn = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.co = lshr <4 x i32> %wide.load100, splat (i32 24)
  %i.cp = trunc nuw <4 x i32> %i.cn to <4 x i8>
  %i.cq = trunc nuw <4 x i32> %i.co to <4 x i8>
  %i.cr = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.cp, ptr %next.gep, align 1, !tbaa !50, !alias.scope !643, !noalias !642
  store <4 x i8> %i.cq, ptr %i.cr, align 1, !tbaa !50, !alias.scope !643, !noalias !642
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !638

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader65, %middle.block
  %.070.ph = phi i32 [ %i.ch, %middle.block ], [ %6, %.preheader65 ]
  %.04869.ph = phi ptr [ %i.cj, %middle.block ], [ %.25971, %.preheader65 ]
  %.04968.ph = phi ptr [ %i.ck, %middle.block ], [ %.272, %.preheader65 ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ct = add nsw i32 %.05073, -1
  %i.cu = getelementptr inbounds i8, ptr %.272, i64 %i.bs
  %i.cv = getelementptr inbounds i8, ptr %.25971, i64 %i.bt
  %i.cw = icmp sgt i32 %.05073, 1
  br i1 %i.cw, label %.preheader65, label %.loopexit, !llvm.loop !12

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.070 = phi i32 [ %i.dc, %scalar.ph ], [ %.070.ph, %scalar.ph.preheader ] ; 2 uses
  %.04869 = phi ptr [ %i.db, %scalar.ph ], [ %.04869.ph, %scalar.ph.preheader ] ; 2 uses
  %.04968 = phi ptr [ %i.cx, %scalar.ph ], [ %.04968.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.04968, i64 4
  %i.cy = load i32, ptr %.04968, align 4, !tbaa !258
  %i.cz = lshr i32 %i.cy, 24
  %i.da = trunc nuw i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.04869, i64 1
  store i8 %i.da, ptr %.04869, align 1, !tbaa !50
  %i.dc = add nsw i32 %.070, -1
  %i.dd = icmp sgt i32 %.070, 1
  br i1 %i.dd, label %scalar.ph, label %._crit_edge, !llvm.loop !639

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge77, %.prol.loopexit, %.lr.ph.new, %.preheader65.lr.ph, %.preheader63, %.preheader.lr.ph, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z34ImFontAtlasTextureBlockPostProcessP26ImFontAtlasPostProcessData(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !649
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.d = load float, ptr %i.c, align 4, !tbaa !403 ; 6 uses
  %i.e = fcmp une float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %_Z42ImFontAtlasTextureBlockPostProcessMultiplyP26ImFontAtlasPostProcessDataf.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !404  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !405  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !406
  switch i32 %i.k, label %_Z42ImFontAtlasTextureBlockPostProcessMultiplyP26ImFontAtlasPostProcessDataf.exit [
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.m = load i32, ptr %i.l, align 4, !tbaa !407  ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph56.i, label %_Z42ImFontAtlasTextureBlockPostProcessMultiplyP26ImFontAtlasPostProcessDataf.exit

.lr.ph56.i:                                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = sext i32 %i.i to i64
  %i.q = load i32, ptr %i.o, align 8, !tbaa !408  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph56.split.i.preheader, label %_Z42ImFontAtlasTextureBlockPostProcessMultiplyP26ImFontAtlasPostProcessDataf.exit

.lr.ph56.split.i.preheader:                       ; preds = %.lr.ph56.i
  %broadcast.splatinsert19 = insertelement <16 x float> poison, float %i.d, i64 0
  %broadcast.splat20 = shufflevector <16 x float> %broadcast.splatinsert19, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert29 = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat30 = shufflevector <4 x float> %broadcast.splatinsert29, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph56.split.i

.lr.ph56.splitthread-pre-split.i:                 ; preds = %._crit_edge52.i
  %i.s = getelementptr inbounds i8, ptr %.054.i, i64 %i.p
  %i.t = add nsw i32 %.03953.i, -1
  %.pr.i = load i32, ptr %i.o, align 8, !tbaa !408
  br label %.lr.ph56.split.i

.lr.ph56.split.i:                                 ; preds = %.lr.ph56.split.i.preheader, %.lr.ph56.splitthread-pre-split.i
  %i.u = phi i32 [ %.pr.i, %.lr.ph56.splitthread-pre-split.i ], [ %i.q, %.lr.ph56.split.i.preheader ] ; 7 uses
  %.054.i = phi ptr [ %i.s, %.lr.ph56.splitthread-pre-split.i ], [ %i.g, %.lr.ph56.split.i.preheader ] ; 6 uses
  %.03953.i = phi i32 [ %i.t, %.lr.ph56.splitthread-pre-split.i ], [ %i.m, %.lr.ph56.split.i.preheader ] ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %iter.check, label %._crit_edge52.i

iter.check:                                       ; preds = %.lr.ph56.split.i
  %i.w = zext nneg i32 %i.u to i64                ; 5 uses
  %min.iters.check15 = icmp ult i32 %i.u, 4
  br i1 %min.iters.check15, label %.lr.ph51.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check16 = icmp ult i32 %i.u, 16
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph17

vector.ph17:                                      ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.w, 12
  %n.vec18 = and i64 %i.w, 2147483632             ; 5 uses
  %i.y = trunc nuw nsw i64 %n.vec18 to i32
  %i.z = sub nsw i32 %i.u, %i.y
  %i.aa = getelementptr i8, ptr %.054.i, i64 %n.vec18
  br label %vector.body21

vector.body21:                                    ; preds = %vector.ph17, %vector.body21
  %index22 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body21 ] ; 2 uses
  %next.gep23 = getelementptr i8, ptr %.054.i, i64 %index22 ; 2 uses
  %wide.load24 = load <16 x i8>, ptr %next.gep23, align 1, !tbaa !50
  %i.ab = uitofp <16 x i8> %wide.load24 to <16 x float>
  %i.ac = fmul <16 x float> %broadcast.splat20, %i.ab
  %i.ad = fptoui <16 x float> %i.ac to <16 x i32>
  %i.ae = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ad, <16 x i32> splat (i32 255))
  %i.af = trunc nuw <16 x i32> %i.ae to <16 x i8>
  store <16 x i8> %i.af, ptr %next.gep23, align 1, !tbaa !50
  %index.next25 = add nuw i64 %index22, 16        ; 2 uses
  %i.ag = icmp eq i64 %index.next25, %n.vec18
  br i1 %i.ag, label %middle.block26, label %vector.body21, !llvm.loop !644

middle.block26:                                   ; preds = %vector.body21
  %cmp.n27 = icmp eq i64 %n.vec18, %i.w
  br i1 %cmp.n27, label %._crit_edge52.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block26
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph51.i.preheader, label %vec.epilog.ph, !prof !409

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec18, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %i.w, 2147483644             ; 4 uses
  %i.ah = trunc nuw nsw i64 %n.vec28 to i32
  %i.ai = sub nsw i32 %i.u, %i.ah
  %i.aj = getelementptr i8, ptr %.054.i, i64 %n.vec28
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 2 uses
  %next.gep32 = getelementptr i8, ptr %.054.i, i64 %index31 ; 2 uses
  %wide.load33 = load <4 x i8>, ptr %next.gep32, align 1, !tbaa !50
  %i.ak = uitofp <4 x i8> %wide.load33 to <4 x float>
  %i.al = fmul <4 x float> %broadcast.splat30, %i.ak
  %i.am = fptoui <4 x float> %i.al to <4 x i32>
  %i.an = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.am, <4 x i32> splat (i32 255))
  %i.ao = trunc nuw <4 x i32> %i.an to <4 x i8>
  store <4 x i8> %i.ao, ptr %next.gep32, align 1, !tbaa !50
  %index.next34 = add nuw i64 %index31, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next34, %n.vec28
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !645

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %n.vec28, %i.w
  br i1 %cmp.n35, label %._crit_edge52.i, label %.lr.ph51.i.preheader

.lr.ph51.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03749.i.ph = phi i32 [ %i.u, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.03848.i.ph = phi ptr [ %.054.i, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph51.i
end_hunk_0
begin_hunk_1_@_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt:bb.a
  store <4 x i8> %wide.load212, ptr %next.gep211, align 1, !tbaa !50
  %index.next213 = add nuw i64 %index209, 4       ; 2 uses
  %i.lx = icmp eq i64 %index.next213, %n.vec207
  br i1 %i.lx, label %vec.epilog.middle.block214, label %vec.epilog.vector.body208, !llvm.loop !685

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body208
  %cmp.n215 = icmp eq i64 %n.vec207, %i.ks
  br i1 %cmp.n215, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i68.i.i.preheader

.preheader.i68.i.i.preheader:                     ; preds = %iter.check201, %vec.epilog.iter.check202, %vec.epilog.middle.block214
  %.09.i69.i.i.ph = phi i32 [ %i.kr, %iter.check201 ], [ %i.ln, %vec.epilog.iter.check202 ], [ %i.lu, %vec.epilog.middle.block214 ] ; 4 uses
  %.048.i70.i.i.ph = phi ptr [ %i.li, %iter.check201 ], [ %i.lo, %vec.epilog.iter.check202 ], [ %i.lv, %vec.epilog.middle.block214 ] ; 2 uses
  %.ph294 = phi ptr [ %.lcssa.sink.i.i62.i, %iter.check201 ], [ %i.lp, %vec.epilog.iter.check202 ], [ %i.lw, %vec.epilog.middle.block214 ] ; 2 uses
  %i.ly = add nsw i32 %.09.i69.i.i.ph, -1
  %xtraiter309 = and i32 %.09.i69.i.i.ph, 7       ; 2 uses
  %lcmp.mod310.not = icmp eq i32 %xtraiter309, 0
  br i1 %lcmp.mod310.not, label %.preheader.i68.i.i.prol.loopexit, label %.preheader.i68.i.i.prol

.preheader.i68.i.i.prol:                          ; preds = %.preheader.i68.i.i.preheader, %.preheader.i68.i.i.prol
  %.09.i69.i.i.prol = phi i32 [ %i.ma, %.preheader.i68.i.i.prol ], [ %.09.i69.i.i.ph, %.preheader.i68.i.i.preheader ]
  %.048.i70.i.i.prol = phi ptr [ %i.mb, %.preheader.i68.i.i.prol ], [ %.048.i70.i.i.ph, %.preheader.i68.i.i.preheader ] ; 2 uses
  %i.lz = phi ptr [ %i.md, %.preheader.i68.i.i.prol ], [ %.ph294, %.preheader.i68.i.i.preheader ] ; 2 uses
  %prol.iter311 = phi i32 [ %prol.iter311.next, %.preheader.i68.i.i.prol ], [ 0, %.preheader.i68.i.i.preheader ]
  %i.ma = add nsw i32 %.09.i69.i.i.prol, -1       ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.048.i70.i.i.prol, i64 1 ; 2 uses
  %i.mc = load i8, ptr %.048.i70.i.i.prol, align 1, !tbaa !50
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 1 ; 3 uses
  store i8 %i.mc, ptr %i.lz, align 1, !tbaa !50
  %prol.iter311.next = add i32 %prol.iter311, 1   ; 2 uses
  %prol.iter311.cmp.not = icmp eq i32 %prol.iter311.next, %xtraiter309
  br i1 %prol.iter311.cmp.not, label %.preheader.i68.i.i.prol.loopexit, label %.preheader.i68.i.i.prol, !llvm.loop !686

.preheader.i68.i.i.prol.loopexit:                 ; preds = %.preheader.i68.i.i.prol, %.preheader.i68.i.i.preheader
  %.lcssa301.unr = phi ptr [ poison, %.preheader.i68.i.i.preheader ], [ %i.md, %.preheader.i68.i.i.prol ]
  %.09.i69.i.i.unr = phi i32 [ %.09.i69.i.i.ph, %.preheader.i68.i.i.preheader ], [ %i.ma, %.preheader.i68.i.i.prol ]
  %.048.i70.i.i.unr = phi ptr [ %.048.i70.i.i.ph, %.preheader.i68.i.i.preheader ], [ %i.mb, %.preheader.i68.i.i.prol ]
  %.unr312 = phi ptr [ %.ph294, %.preheader.i68.i.i.preheader ], [ %i.md, %.preheader.i68.i.i.prol ]
  %i.me = icmp ult i32 %i.ly, 7
  br i1 %i.me, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i68.i.i

.preheader.i68.i.i:                               ; preds = %.preheader.i68.i.i.prol.loopexit, %.preheader.i68.i.i
  %.09.i69.i.i = phi i32 [ %i.nb, %.preheader.i68.i.i ], [ %.09.i69.i.i.unr, %.preheader.i68.i.i.prol.loopexit ]
  %.048.i70.i.i = phi ptr [ %i.nc, %.preheader.i68.i.i ], [ %.048.i70.i.i.unr, %.preheader.i68.i.i.prol.loopexit ] ; 9 uses
  %i.mf = phi ptr [ %i.ne, %.preheader.i68.i.i ], [ %.unr312, %.preheader.i68.i.i.prol.loopexit ] ; 9 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 1
  %i.mh = load i8, ptr %.048.i70.i.i, align 1, !tbaa !50
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  store i8 %i.mh, ptr %i.mf, align 1, !tbaa !50
  %i.mj = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 2
  %i.mk = load i8, ptr %i.mg, align 1, !tbaa !50
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  store i8 %i.mk, ptr %i.mi, align 1, !tbaa !50
  %i.mm = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 3
  %i.mn = load i8, ptr %i.mj, align 1, !tbaa !50
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mf, i64 3
  store i8 %i.mn, ptr %i.ml, align 1, !tbaa !50
  %i.mp = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 4
  %i.mq = load i8, ptr %i.mm, align 1, !tbaa !50
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  store i8 %i.mq, ptr %i.mo, align 1, !tbaa !50
  %i.ms = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 5
  %i.mt = load i8, ptr %i.mp, align 1, !tbaa !50
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mf, i64 5
  store i8 %i.mt, ptr %i.mr, align 1, !tbaa !50
  %i.mv = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 6
  %i.mw = load i8, ptr %i.ms, align 1, !tbaa !50
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mf, i64 6
  store i8 %i.mw, ptr %i.mu, align 1, !tbaa !50
  %i.my = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 7
  %i.mz = load i8, ptr %i.mv, align 1, !tbaa !50
  %i.na = getelementptr inbounds nuw i8, ptr %i.mf, i64 7
  store i8 %i.mz, ptr %i.mx, align 1, !tbaa !50
  %i.nb = add nsw i32 %.09.i69.i.i, -8            ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.048.i70.i.i, i64 8
  %i.nd = load i8, ptr %i.my, align 1, !tbaa !50
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mf, i64 8 ; 2 uses
  store i8 %i.nd, ptr %i.na, align 1, !tbaa !50
  %.not.i71.i.i.7 = icmp eq i32 %i.nb, 0
  br i1 %.not.i71.i.i.7, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i68.i.i, !llvm.loop !687

bb.t:                                             ; preds = %bb.q
  %i.nf = icmp samesign ugt i8 %i.am, 7
  br i1 %i.nf, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ng = getelementptr inbounds nuw i8, ptr %.034.i, i64 2 ; 2 uses
  %i.nh = shl nuw nsw i32 %i.an, 8
  %i.ni = getelementptr inbounds nuw i8, ptr %.034.i, i64 1 ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !50  ; 3 uses
  %i.nk = zext i8 %i.nj to i32
  %i.nl = or disjoint i32 %i.nh, %i.nk
  %i.nm = add nsw i32 %i.nl, -2047
  %i.nn = zext nneg i32 %i.nm to i64              ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i62.i, i64 %i.nn ; 3 uses
  %i.np = icmp ugt ptr %i.no, %i.aj
  br i1 %i.np, label %_ZL8stb__litPKhj.exit75.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nq = icmp ult ptr %i.ng, %1
  br i1 %i.nq, label %_ZL8stb__litPKhj.exit75.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.sink.i.i62.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ng, i64 %i.nn, i1 false)
  %.pre101.i.i = load i8, ptr %.034.i, align 1, !tbaa !50
  %.pre102.i.i = load i8, ptr %i.ni, align 1, !tbaa !50
  br label %_ZL8stb__litPKhj.exit75.i.i

_ZL8stb__litPKhj.exit75.i.i:                      ; preds = %bb.w, %bb.v, %bb.u
  %i.nr = phi i8 [ %.pre102.i.i, %bb.w ], [ %i.nj, %bb.u ], [ %i.nj, %bb.v ]
  %i.ns = phi i8 [ %.pre101.i.i, %bb.w ], [ %i.am, %bb.u ], [ %i.am, %bb.v ]
  %.sink.i74.i.i = phi ptr [ %i.no, %bb.w ], [ %i.no, %bb.u ], [ %i.al, %bb.v ] ; 2 uses
  store ptr %.sink.i74.i.i, ptr @_ZL9stb__dout, align 8, !tbaa !411
  %i.nt = zext i8 %i.ns to i64
  %i.nu = shl nuw nsw i64 %i.nt, 8
  %i.nv = zext i8 %i.nr to i64
  %i.nw = getelementptr i8, ptr %.034.i, i64 %i.nu
  %i.nx = getelementptr i8, ptr %i.nw, i64 %i.nv
  %i.ny = getelementptr i8, ptr %i.nx, i64 -2045
  br label %_ZL20stb_decompress_tokenPKh.exit.i

bb.x:                                             ; preds = %bb.t
  switch i8 %i.am, label %_ZL14stb_decompressPhPKhj.exit [
    i8 7, label %bb.y
    i8 6, label %bb.ab
    i8 4, label %bb.ad
  ]

bb.y:                                             ; preds = %bb.x
  %i.nz = getelementptr inbounds nuw i8, ptr %.034.i, i64 3 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.034.i, i64 1 ; 2 uses
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !50
  %i.oc = zext i8 %i.ob to i64
  %i.od = shl nuw nsw i64 %i.oc, 8                ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.034.i, i64 2 ; 2 uses
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !50
  %i.og = zext i8 %i.of to i64                    ; 3 uses
  %i.oh = or disjoint i64 %i.od, %i.og
  %i.oi = add nuw nsw i64 %i.oh, 1                ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i62.i, i64 %i.oi ; 3 uses
  %i.ok = icmp ugt ptr %i.oj, %i.aj
  br i1 %i.ok, label %_ZL8stb__litPKhj.exit77.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ol = icmp ult ptr %i.nz, %1
  br i1 %i.ol, label %_ZL8stb__litPKhj.exit77.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.sink.i.i62.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.nz, i64 %i.oi, i1 false)
  %.pre.i.i = load i8, ptr %i.oa, align 1, !tbaa !50
  %.pre100.i.i = load i8, ptr %i.oe, align 1, !tbaa !50
  %.pre104.i.i = zext i8 %.pre.i.i to i64
  %.pre105.i.i = shl nuw nsw i64 %.pre104.i.i, 8
  %.pre107.i.i = zext i8 %.pre100.i.i to i64
  br label %_ZL8stb__litPKhj.exit77.i.i

_ZL8stb__litPKhj.exit77.i.i:                      ; preds = %bb.aa, %bb.z, %bb.y
  %.pre-phi108.i.i = phi i64 [ %i.og, %bb.y ], [ %.pre107.i.i, %bb.aa ], [ %i.og, %bb.z ]
  %.pre-phi106.i.i = phi i64 [ %i.od, %bb.y ], [ %.pre105.i.i, %bb.aa ], [ %i.od, %bb.z ]
  %.sink.i76.i.i = phi ptr [ %i.oj, %bb.y ], [ %i.oj, %bb.aa ], [ %i.al, %bb.z ] ; 2 uses
  store ptr %.sink.i76.i.i, ptr @_ZL9stb__dout, align 8, !tbaa !411
  %i.om = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.pre-phi106.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 %.pre-phi108.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  br label %_ZL20stb_decompress_tokenPKh.exit.i

bb.ab:                                            ; preds = %bb.x
  %i.op = getelementptr inbounds nuw i8, ptr %.034.i, i64 4
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !50  ; 3 uses
  %i.or = zext i8 %i.oq to i32
  %i.os = add nuw nsw i32 %i.or, 1                ; 5 uses
  %i.ot = zext nneg i32 %i.os to i64              ; 6 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i62.i, i64 %i.ot ; 2 uses
  %i.ov = icmp ugt ptr %i.ou, %i.aj
  br i1 %i.ov, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ow = getelementptr inbounds nuw i8, ptr %.034.i, i64 1
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !50
  %i.oy = zext i8 %i.ox to i64
  %i.oz = shl nuw nsw i64 %i.oy, 16               ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.034.i, i64 2
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !50
  %i.pc = zext i8 %i.pb to i64
  %i.pd = shl nuw nsw i64 %i.pc, 8                ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.034.i, i64 3
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !50
  %i.pg = zext i8 %i.pf to i64                    ; 2 uses
  %i.ph = or disjoint i64 %i.oz, %i.pg
  %i.pi = or disjoint i64 %i.ph, %i.pd
  %i.pj = xor i64 %i.pi, -1
  %i.pk = getelementptr inbounds i8, ptr %.lcssa.sink.i.i62.i, i64 %i.pj ; 22 uses
  %i.pl = icmp ult ptr %i.pk, %i.h
  br i1 %i.pl, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %iter.check235

iter.check235:                                    ; preds = %bb.ac
  %min.iters.check221 = icmp ult i8 %i.oq, 3
  br i1 %min.iters.check221, label %.preheader.i78.i.i.preheader, label %vector.memcheck219

vector.memcheck219:                               ; preds = %iter.check235
  %i.pm = or disjoint i64 %i.oz, %i.pd
  %i.pn = or disjoint i64 %i.pm, 1
  %8 = add nuw nsw i64 %i.pn, %i.pg
  %diff.check220 = icmp samesign ult i64 %8, 32
  br i1 %diff.check220, label %.preheader.i78.i.i.preheader, label %vector.main.loop.iter.check222

vector.main.loop.iter.check222:                   ; preds = %vector.memcheck219
  %min.iters.check223 = icmp ult i8 %i.oq, 31
  br i1 %min.iters.check223, label %vec.epilog.ph239, label %vector.ph224

vector.ph224:                                     ; preds = %vector.main.loop.iter.check222
  %i.po = and i64 %i.ot, 28
  %n.vec225 = and i64 %i.ot, 480                  ; 12 uses
  %i.pp = trunc nuw nsw i64 %n.vec225 to i32
  %i.pq = sub nsw i32 %i.os, %i.pp
  %i.pr = getelementptr i8, ptr %i.pk, i64 %n.vec225
  %i.ps = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %n.vec225 ; 2 uses
  %i.pt = getelementptr i8, ptr %i.pk, i64 16
  %wide.load230 = load <16 x i8>, ptr %i.pk, align 1, !tbaa !50
  %wide.load231 = load <16 x i8>, ptr %i.pt, align 1, !tbaa !50
  %i.pu = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 16
  store <16 x i8> %wide.load230, ptr %.lcssa.sink.i.i62.i, align 1, !tbaa !50
  store <16 x i8> %wide.load231, ptr %i.pu, align 1, !tbaa !50
  %i.pv = icmp eq i64 %n.vec225, 32
  br i1 %i.pv, label %middle.block233, label %vector.body226.1

vector.body226.1:                                 ; preds = %vector.ph224
  %next.gep228.1 = getelementptr i8, ptr %i.pk, i64 32
  %next.gep229.1 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 32
  %i.pw = getelementptr i8, ptr %i.pk, i64 48
  %wide.load230.1 = load <16 x i8>, ptr %next.gep228.1, align 1, !tbaa !50
  %wide.load231.1 = load <16 x i8>, ptr %i.pw, align 1, !tbaa !50
  %i.px = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 48
  store <16 x i8> %wide.load230.1, ptr %next.gep229.1, align 1, !tbaa !50
  store <16 x i8> %wide.load231.1, ptr %i.px, align 1, !tbaa !50
  %i.py = icmp eq i64 %n.vec225, 64
  br i1 %i.py, label %middle.block233, label %vector.body226.2

vector.body226.2:                                 ; preds = %vector.body226.1
  %next.gep228.2 = getelementptr i8, ptr %i.pk, i64 64
  %next.gep229.2 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 64
  %i.pz = getelementptr i8, ptr %i.pk, i64 80
  %wide.load230.2 = load <16 x i8>, ptr %next.gep228.2, align 1, !tbaa !50
  %wide.load231.2 = load <16 x i8>, ptr %i.pz, align 1, !tbaa !50
  %i.qa = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 80
  store <16 x i8> %wide.load230.2, ptr %next.gep229.2, align 1, !tbaa !50
  store <16 x i8> %wide.load231.2, ptr %i.qa, align 1, !tbaa !50
  %i.qb = icmp eq i64 %n.vec225, 96
  br i1 %i.qb, label %middle.block233, label %vector.body226.3

vector.body226.3:                                 ; preds = %vector.body226.2
  %next.gep228.3 = getelementptr i8, ptr %i.pk, i64 96
  %next.gep229.3 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 96
  %i.qc = getelementptr i8, ptr %i.pk, i64 112
  %wide.load230.3 = load <16 x i8>, ptr %next.gep228.3, align 1, !tbaa !50
  %wide.load231.3 = load <16 x i8>, ptr %i.qc, align 1, !tbaa !50
  %i.qd = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 112
  store <16 x i8> %wide.load230.3, ptr %next.gep229.3, align 1, !tbaa !50
  store <16 x i8> %wide.load231.3, ptr %i.qd, align 1, !tbaa !50
  %i.qe = icmp eq i64 %n.vec225, 128
  br i1 %i.qe, label %middle.block233, label %vector.body226.4

vector.body226.4:                                 ; preds = %vector.body226.3
  %next.gep228.4 = getelementptr i8, ptr %i.pk, i64 128
  %next.gep229.4 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 128
  %i.qf = getelementptr i8, ptr %i.pk, i64 144
  %wide.load230.4 = load <16 x i8>, ptr %next.gep228.4, align 1, !tbaa !50
  %wide.load231.4 = load <16 x i8>, ptr %i.qf, align 1, !tbaa !50
  %i.qg = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 144
  store <16 x i8> %wide.load230.4, ptr %next.gep229.4, align 1, !tbaa !50
  store <16 x i8> %wide.load231.4, ptr %i.qg, align 1, !tbaa !50
  %i.qh = icmp eq i64 %n.vec225, 160
  br i1 %i.qh, label %middle.block233, label %vector.body226.5

vector.body226.5:                                 ; preds = %vector.body226.4
  %next.gep228.5 = getelementptr i8, ptr %i.pk, i64 160
  %next.gep229.5 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 160
  %i.qi = getelementptr i8, ptr %i.pk, i64 176
  %wide.load230.5 = load <16 x i8>, ptr %next.gep228.5, align 1, !tbaa !50
  %wide.load231.5 = load <16 x i8>, ptr %i.qi, align 1, !tbaa !50
  %i.qj = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 176
  store <16 x i8> %wide.load230.5, ptr %next.gep229.5, align 1, !tbaa !50
  store <16 x i8> %wide.load231.5, ptr %i.qj, align 1, !tbaa !50
  %i.qk = icmp eq i64 %n.vec225, 192
  br i1 %i.qk, label %middle.block233, label %vector.body226.6

vector.body226.6:                                 ; preds = %vector.body226.5
  %next.gep228.6 = getelementptr i8, ptr %i.pk, i64 192
  %next.gep229.6 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 192
  %i.ql = getelementptr i8, ptr %i.pk, i64 208
  %wide.load230.6 = load <16 x i8>, ptr %next.gep228.6, align 1, !tbaa !50
  %wide.load231.6 = load <16 x i8>, ptr %i.ql, align 1, !tbaa !50
  %i.qm = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 208
  store <16 x i8> %wide.load230.6, ptr %next.gep229.6, align 1, !tbaa !50
  store <16 x i8> %wide.load231.6, ptr %i.qm, align 1, !tbaa !50
  %i.qn = icmp eq i64 %n.vec225, 224
  br i1 %i.qn, label %middle.block233, label %vector.body226.7

vector.body226.7:                                 ; preds = %vector.body226.6
  %next.gep228.7 = getelementptr i8, ptr %i.pk, i64 224
  %next.gep229.7 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 224
  %i.qo = getelementptr i8, ptr %i.pk, i64 240
  %wide.load230.7 = load <16 x i8>, ptr %next.gep228.7, align 1, !tbaa !50
  %wide.load231.7 = load <16 x i8>, ptr %i.qo, align 1, !tbaa !50
  %i.qp = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 240
  store <16 x i8> %wide.load230.7, ptr %next.gep229.7, align 1, !tbaa !50
  store <16 x i8> %wide.load231.7, ptr %i.qp, align 1, !tbaa !50
  br label %middle.block233

middle.block233:                                  ; preds = %vector.body226.7, %vector.body226.6, %vector.body226.5, %vector.body226.4, %vector.body226.3, %vector.body226.2, %vector.body226.1, %vector.ph224
  %cmp.n234 = icmp eq i64 %n.vec225, %i.ot
  br i1 %cmp.n234, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %vec.epilog.iter.check236

vec.epilog.iter.check236:                         ; preds = %middle.block233
  %min.epilog.iters.check238 = icmp eq i64 %i.po, 0
  br i1 %min.epilog.iters.check238, label %.preheader.i78.i.i.preheader, label %vec.epilog.ph239, !prof !435

vec.epilog.ph239:                                 ; preds = %vector.main.loop.iter.check222, %vec.epilog.iter.check236
  %vec.epilog.resume.val240 = phi i64 [ %n.vec225, %vec.epilog.iter.check236 ], [ 0, %vector.main.loop.iter.check222 ]
  %n.vec241 = and i64 %i.ot, 508                  ; 5 uses
  %i.qq = trunc nuw nsw i64 %n.vec241 to i32
  %i.qr = sub nsw i32 %i.os, %i.qq
  %i.qs = getelementptr i8, ptr %i.pk, i64 %n.vec241
  %i.qt = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %n.vec241 ; 2 uses
  br label %vec.epilog.vector.body242

vec.epilog.vector.body242:                        ; preds = %vec.epilog.vector.body242, %vec.epilog.ph239
  %index243 = phi i64 [ %vec.epilog.resume.val240, %vec.epilog.ph239 ], [ %index.next247, %vec.epilog.vector.body242 ] ; 3 uses
  %next.gep244 = getelementptr i8, ptr %i.pk, i64 %index243
  %next.gep245 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %index243
  %wide.load246 = load <4 x i8>, ptr %next.gep244, align 1, !tbaa !50
  store <4 x i8> %wide.load246, ptr %next.gep245, align 1, !tbaa !50
  %index.next247 = add nuw i64 %index243, 4       ; 2 uses
  %i.qu = icmp eq i64 %index.next247, %n.vec241
  br i1 %i.qu, label %vec.epilog.middle.block248, label %vec.epilog.vector.body242, !llvm.loop !688

vec.epilog.middle.block248:                       ; preds = %vec.epilog.vector.body242
  %cmp.n249 = icmp eq i64 %n.vec241, %i.ot
  br i1 %cmp.n249, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i78.i.i.preheader

.preheader.i78.i.i.preheader:                     ; preds = %iter.check235, %vector.memcheck219, %vec.epilog.iter.check236, %vec.epilog.middle.block248
  %.09.i79.i.i.ph = phi i32 [ %i.os, %iter.check235 ], [ %i.os, %vector.memcheck219 ], [ %i.pq, %vec.epilog.iter.check236 ], [ %i.qr, %vec.epilog.middle.block248 ] ; 4 uses
  %.048.i80.i.i.ph = phi ptr [ %i.pk, %iter.check235 ], [ %i.pk, %vector.memcheck219 ], [ %i.pr, %vec.epilog.iter.check236 ], [ %i.qs, %vec.epilog.middle.block248 ] ; 2 uses
  %.ph296 = phi ptr [ %.lcssa.sink.i.i62.i, %iter.check235 ], [ %.lcssa.sink.i.i62.i, %vector.memcheck219 ], [ %i.ps, %vec.epilog.iter.check236 ], [ %i.qt, %vec.epilog.middle.block248 ] ; 2 uses
  %i.qv = add nsw i32 %.09.i79.i.i.ph, -1
  %xtraiter305 = and i32 %.09.i79.i.i.ph, 7       ; 2 uses
  %lcmp.mod306.not = icmp eq i32 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %.preheader.i78.i.i.prol.loopexit, label %.preheader.i78.i.i.prol

.preheader.i78.i.i.prol:                          ; preds = %.preheader.i78.i.i.preheader, %.preheader.i78.i.i.prol
  %.09.i79.i.i.prol = phi i32 [ %i.qx, %.preheader.i78.i.i.prol ], [ %.09.i79.i.i.ph, %.preheader.i78.i.i.preheader ]
  %.048.i80.i.i.prol = phi ptr [ %i.qy, %.preheader.i78.i.i.prol ], [ %.048.i80.i.i.ph, %.preheader.i78.i.i.preheader ] ; 2 uses
  %i.qw = phi ptr [ %i.ra, %.preheader.i78.i.i.prol ], [ %.ph296, %.preheader.i78.i.i.preheader ] ; 2 uses
  %prol.iter307 = phi i32 [ %prol.iter307.next, %.preheader.i78.i.i.prol ], [ 0, %.preheader.i78.i.i.preheader ]
  %i.qx = add nsw i32 %.09.i79.i.i.prol, -1       ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.048.i80.i.i.prol, i64 1 ; 2 uses
  %i.qz = load i8, ptr %.048.i80.i.i.prol, align 1, !tbaa !50
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 1 ; 3 uses
  store i8 %i.qz, ptr %i.qw, align 1, !tbaa !50
  %prol.iter307.next = add i32 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i32 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %.preheader.i78.i.i.prol.loopexit, label %.preheader.i78.i.i.prol, !llvm.loop !689

.preheader.i78.i.i.prol.loopexit:                 ; preds = %.preheader.i78.i.i.prol, %.preheader.i78.i.i.preheader
  %.lcssa300.unr = phi ptr [ poison, %.preheader.i78.i.i.preheader ], [ %i.ra, %.preheader.i78.i.i.prol ]
  %.09.i79.i.i.unr = phi i32 [ %.09.i79.i.i.ph, %.preheader.i78.i.i.preheader ], [ %i.qx, %.preheader.i78.i.i.prol ]
  %.048.i80.i.i.unr = phi ptr [ %.048.i80.i.i.ph, %.preheader.i78.i.i.preheader ], [ %i.qy, %.preheader.i78.i.i.prol ]
  %.unr308 = phi ptr [ %.ph296, %.preheader.i78.i.i.preheader ], [ %i.ra, %.preheader.i78.i.i.prol ]
  %i.rb = icmp ult i32 %i.qv, 7
  br i1 %i.rb, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i78.i.i

.preheader.i78.i.i:                               ; preds = %.preheader.i78.i.i.prol.loopexit, %.preheader.i78.i.i
  %.09.i79.i.i = phi i32 [ %i.ry, %.preheader.i78.i.i ], [ %.09.i79.i.i.unr, %.preheader.i78.i.i.prol.loopexit ]
  %.048.i80.i.i = phi ptr [ %i.rz, %.preheader.i78.i.i ], [ %.048.i80.i.i.unr, %.preheader.i78.i.i.prol.loopexit ] ; 9 uses
  %i.rc = phi ptr [ %i.sb, %.preheader.i78.i.i ], [ %.unr308, %.preheader.i78.i.i.prol.loopexit ] ; 9 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.048.i80.i.i, i64 1
  %i.re = load i8, ptr %.048.i80.i.i, align 1, !tbaa !50
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 1
  store i8 %i.re, ptr %i.rc, align 1, !tbaa !50
  %i.rg = getelementptr inbounds nuw i8, ptr %.048.i80.i.i, i64 2
  %i.rh = load i8, ptr %i.rd, align 1, !tbaa !50
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rc, i64 2
  store i8 %i.rh, ptr %i.rf, align 1, !tbaa !50
  %i.rj = getelementptr inbounds nuw i8, ptr %.048.i80.i.i, i64 3
  %i.rk = load i8, ptr %i.rg, align 1, !tbaa !50
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rc, i64 3
  store i8 %i.rk, ptr %i.ri, align 1, !tbaa !50
  %i.rm = getelementptr inbounds nuw i8, ptr %.048.i80.i.i, i64 4
  %i.rn = load i8, ptr %i.rj, align 1, !tbaa !50
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  store i8 %i.rn, ptr %i.rl, align 1, !tbaa !50
  %i.rp = getelementptr inbounds nuw i8, ptr %.048.i80.i.i, i64 5
  %i.rq = load i8, ptr %i.rm, align 1, !tbaa !50
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rc, i64 5
  store i8 %i.rq, ptr %i.ro, align 1, !tbaa !50
  %i.rs = getelementptr inbounds nuw i8, ptr %.048.i80.i.i, i64 6
  %i.rt = load i8, ptr %i.rp, align 1, !tbaa !50
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rc, i64 6
  store i8 %i.rt, ptr %i.rr, align 1, !tbaa !50
  %i.rv = getelementptr inbounds nuw i8, ptr %.048.i80.i.i, i64 7
  %i.rw = load i8, ptr %i.rs, align 1, !tbaa !50
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rc, i64 7
  store i8 %i.rw, ptr %i.ru, align 1, !tbaa !50
  %i.ry = add nsw i32 %.09.i79.i.i, -8            ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.048.i80.i.i, i64 8
  %i.sa = load i8, ptr %i.rv, align 1, !tbaa !50
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 2 uses
  store i8 %i.sa, ptr %i.rx, align 1, !tbaa !50
  %.not.i81.i.i.7 = icmp eq i32 %i.ry, 0
  br i1 %.not.i81.i.i.7, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i78.i.i, !llvm.loop !690

bb.ad:                                            ; preds = %bb.x
  %i.sc = getelementptr inbounds nuw i8, ptr %.034.i, i64 4
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !50
  %i.se = zext i8 %i.sd to i32
  %i.sf = shl nuw nsw i32 %i.se, 8
  %i.sg = getelementptr inbounds nuw i8, ptr %.034.i, i64 5
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !50
  %i.si = zext i8 %i.sh to i32
  %i.sj = or disjoint i32 %i.sf, %i.si            ; 3 uses
  %i.sk = add nuw nsw i32 %i.sj, 1                ; 5 uses
  %i.sl = zext nneg i32 %i.sk to i64              ; 6 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i62.i, i64 %i.sl ; 2 uses
  %i.sn = icmp ugt ptr %i.sm, %i.aj
  br i1 %i.sn, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.so = getelementptr inbounds nuw i8, ptr %.034.i, i64 1
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !50
  %i.sq = zext i8 %i.sp to i64
  %i.sr = shl nuw nsw i64 %i.sq, 16               ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.034.i, i64 2
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !50
  %i.su = zext i8 %i.st to i64
  %i.sv = shl nuw nsw i64 %i.su, 8                ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.034.i, i64 3
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !50
  %i.sy = zext i8 %i.sx to i64                    ; 2 uses
  %i.sz = or disjoint i64 %i.sr, %i.sy
  %i.ta = or disjoint i64 %i.sz, %i.sv
  %i.tb = xor i64 %i.ta, -1
  %i.tc = getelementptr inbounds i8, ptr %.lcssa.sink.i.i62.i, i64 %i.tb ; 7 uses
  %i.td = icmp ult ptr %i.tc, %i.h
  br i1 %i.td, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %iter.check269

iter.check269:                                    ; preds = %bb.ae
  %min.iters.check255 = icmp samesign ult i32 %i.sj, 3
  br i1 %min.iters.check255, label %.preheader.i84.i.i.preheader, label %vector.memcheck253

vector.memcheck253:                               ; preds = %iter.check269
  %i.te = or disjoint i64 %i.sr, %i.sv
  %i.tf = or disjoint i64 %i.te, 1
  %9 = add nuw nsw i64 %i.tf, %i.sy
  %diff.check254 = icmp samesign ult i64 %9, 32
  br i1 %diff.check254, label %.preheader.i84.i.i.preheader, label %vector.main.loop.iter.check256

vector.main.loop.iter.check256:                   ; preds = %vector.memcheck253
  %min.iters.check257 = icmp samesign ult i32 %i.sj, 31
  br i1 %min.iters.check257, label %vec.epilog.ph273, label %vector.ph258

vector.ph258:                                     ; preds = %vector.main.loop.iter.check256
  %i.tg = and i64 %i.sl, 28
  %n.vec259 = and i64 %i.sl, 131040               ; 6 uses
  %i.th = trunc nuw nsw i64 %n.vec259 to i32
  %i.ti = sub nsw i32 %i.sk, %i.th
  %i.tj = getelementptr i8, ptr %i.tc, i64 %n.vec259
  %i.tk = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %n.vec259 ; 2 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.ph258, %vector.body260
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next266, %vector.body260 ] ; 3 uses
  %next.gep262 = getelementptr i8, ptr %i.tc, i64 %index261 ; 2 uses
  %next.gep263 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %index261 ; 2 uses
  %i.tl = getelementptr i8, ptr %next.gep262, i64 16
  %wide.load264 = load <16 x i8>, ptr %next.gep262, align 1, !tbaa !50
  %wide.load265 = load <16 x i8>, ptr %i.tl, align 1, !tbaa !50
  %i.tm = getelementptr i8, ptr %next.gep263, i64 16
  store <16 x i8> %wide.load264, ptr %next.gep263, align 1, !tbaa !50
  store <16 x i8> %wide.load265, ptr %i.tm, align 1, !tbaa !50
  %index.next266 = add nuw i64 %index261, 32      ; 2 uses
  %i.tn = icmp eq i64 %index.next266, %n.vec259
  br i1 %i.tn, label %middle.block267, label %vector.body260, !llvm.loop !691

middle.block267:                                  ; preds = %vector.body260
  %cmp.n268 = icmp eq i64 %n.vec259, %i.sl
  br i1 %cmp.n268, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %vec.epilog.iter.check270

vec.epilog.iter.check270:                         ; preds = %middle.block267
  %min.epilog.iters.check272 = icmp eq i64 %i.tg, 0
  br i1 %min.epilog.iters.check272, label %.preheader.i84.i.i.preheader, label %vec.epilog.ph273, !prof !435

vec.epilog.ph273:                                 ; preds = %vector.main.loop.iter.check256, %vec.epilog.iter.check270
  %vec.epilog.resume.val274 = phi i64 [ %n.vec259, %vec.epilog.iter.check270 ], [ 0, %vector.main.loop.iter.check256 ]
  %n.vec275 = and i64 %i.sl, 131068               ; 5 uses
  %i.to = trunc nuw nsw i64 %n.vec275 to i32
  %i.tp = sub nsw i32 %i.sk, %i.to
  %i.tq = getelementptr i8, ptr %i.tc, i64 %n.vec275
  %i.tr = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %n.vec275 ; 2 uses
  br label %vec.epilog.vector.body276

vec.epilog.vector.body276:                        ; preds = %vec.epilog.vector.body276, %vec.epilog.ph273
  %index277 = phi i64 [ %vec.epilog.resume.val274, %vec.epilog.ph273 ], [ %index.next281, %vec.epilog.vector.body276 ] ; 3 uses
  %next.gep278 = getelementptr i8, ptr %i.tc, i64 %index277
  %next.gep279 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %index277
  %wide.load280 = load <4 x i8>, ptr %next.gep278, align 1, !tbaa !50
  store <4 x i8> %wide.load280, ptr %next.gep279, align 1, !tbaa !50
  %index.next281 = add nuw i64 %index277, 4       ; 2 uses
  %i.ts = icmp eq i64 %index.next281, %n.vec275
  br i1 %i.ts, label %vec.epilog.middle.block282, label %vec.epilog.vector.body276, !llvm.loop !692

vec.epilog.middle.block282:                       ; preds = %vec.epilog.vector.body276
  %cmp.n283 = icmp eq i64 %n.vec275, %i.sl
  br i1 %cmp.n283, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i84.i.i.preheader

.preheader.i84.i.i.preheader:                     ; preds = %iter.check269, %vector.memcheck253, %vec.epilog.iter.check270, %vec.epilog.middle.block282
  %.09.i85.i.i.ph = phi i32 [ %i.sk, %iter.check269 ], [ %i.sk, %vector.memcheck253 ], [ %i.ti, %vec.epilog.iter.check270 ], [ %i.tp, %vec.epilog.middle.block282 ] ; 4 uses
  %.048.i86.i.i.ph = phi ptr [ %i.tc, %iter.check269 ], [ %i.tc, %vector.memcheck253 ], [ %i.tj, %vec.epilog.iter.check270 ], [ %i.tq, %vec.epilog.middle.block282 ] ; 2 uses
  %.ph298 = phi ptr [ %.lcssa.sink.i.i62.i, %iter.check269 ], [ %.lcssa.sink.i.i62.i, %vector.memcheck253 ], [ %i.tk, %vec.epilog.iter.check270 ], [ %i.tr, %vec.epilog.middle.block282 ] ; 2 uses
  %i.tt = add nsw i32 %.09.i85.i.i.ph, -1
  %xtraiter = and i32 %.09.i85.i.i.ph, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i84.i.i.prol.loopexit, label %.preheader.i84.i.i.prol

.preheader.i84.i.i.prol:                          ; preds = %.preheader.i84.i.i.preheader, %.preheader.i84.i.i.prol
  %.09.i85.i.i.prol = phi i32 [ %i.tv, %.preheader.i84.i.i.prol ], [ %.09.i85.i.i.ph, %.preheader.i84.i.i.preheader ]
  %.048.i86.i.i.prol = phi ptr [ %i.tw, %.preheader.i84.i.i.prol ], [ %.048.i86.i.i.ph, %.preheader.i84.i.i.preheader ] ; 2 uses
  %i.tu = phi ptr [ %i.ty, %.preheader.i84.i.i.prol ], [ %.ph298, %.preheader.i84.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.i84.i.i.prol ], [ 0, %.preheader.i84.i.i.preheader ]
  %i.tv = add nsw i32 %.09.i85.i.i.prol, -1       ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.048.i86.i.i.prol, i64 1 ; 2 uses
  %i.tx = load i8, ptr %.048.i86.i.i.prol, align 1, !tbaa !50
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 1 ; 3 uses
  store i8 %i.tx, ptr %i.tu, align 1, !tbaa !50
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i84.i.i.prol.loopexit, label %.preheader.i84.i.i.prol, !llvm.loop !693

.preheader.i84.i.i.prol.loopexit:                 ; preds = %.preheader.i84.i.i.prol, %.preheader.i84.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i84.i.i.preheader ], [ %i.ty, %.preheader.i84.i.i.prol ]
  %.09.i85.i.i.unr = phi i32 [ %.09.i85.i.i.ph, %.preheader.i84.i.i.preheader ], [ %i.tv, %.preheader.i84.i.i.prol ]
  %.048.i86.i.i.unr = phi ptr [ %.048.i86.i.i.ph, %.preheader.i84.i.i.preheader ], [ %i.tw, %.preheader.i84.i.i.prol ]
  %.unr = phi ptr [ %.ph298, %.preheader.i84.i.i.preheader ], [ %i.ty, %.preheader.i84.i.i.prol ]
  %i.tz = icmp ult i32 %i.tt, 7
  br i1 %i.tz, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i84.i.i

.preheader.i84.i.i:                               ; preds = %.preheader.i84.i.i.prol.loopexit, %.preheader.i84.i.i
  %.09.i85.i.i = phi i32 [ %i.uw, %.preheader.i84.i.i ], [ %.09.i85.i.i.unr, %.preheader.i84.i.i.prol.loopexit ]
  %.048.i86.i.i = phi ptr [ %i.ux, %.preheader.i84.i.i ], [ %.048.i86.i.i.unr, %.preheader.i84.i.i.prol.loopexit ] ; 9 uses
  %i.ua = phi ptr [ %i.uz, %.preheader.i84.i.i ], [ %.unr, %.preheader.i84.i.i.prol.loopexit ] ; 9 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 1
  %i.uc = load i8, ptr %.048.i86.i.i, align 1, !tbaa !50
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 1
  store i8 %i.uc, ptr %i.ua, align 1, !tbaa !50
  %i.ue = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 2
  %i.uf = load i8, ptr %i.ub, align 1, !tbaa !50
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ua, i64 2
  store i8 %i.uf, ptr %i.ud, align 1, !tbaa !50
  %i.uh = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 3
  %i.ui = load i8, ptr %i.ue, align 1, !tbaa !50
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ua, i64 3
  store i8 %i.ui, ptr %i.ug, align 1, !tbaa !50
  %i.uk = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 4
  %i.ul = load i8, ptr %i.uh, align 1, !tbaa !50
  %i.um = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  store i8 %i.ul, ptr %i.uj, align 1, !tbaa !50
  %i.un = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 5
  %i.uo = load i8, ptr %i.uk, align 1, !tbaa !50
  %i.up = getelementptr inbounds nuw i8, ptr %i.ua, i64 5
  store i8 %i.uo, ptr %i.um, align 1, !tbaa !50
  %i.uq = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 6
  %i.ur = load i8, ptr %i.un, align 1, !tbaa !50
  %i.us = getelementptr inbounds nuw i8, ptr %i.ua, i64 6
  store i8 %i.ur, ptr %i.up, align 1, !tbaa !50
  %i.ut = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 7
  %i.uu = load i8, ptr %i.uq, align 1, !tbaa !50
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ua, i64 7
  store i8 %i.uu, ptr %i.us, align 1, !tbaa !50
  %i.uw = add nsw i32 %.09.i85.i.i, -8            ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.048.i86.i.i, i64 8
  %i.uy = load i8, ptr %i.ut, align 1, !tbaa !50
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ua, i64 8 ; 2 uses
  store i8 %i.uy, ptr %i.uv, align 1, !tbaa !50
  %.not.i87.i.i.7 = icmp eq i32 %i.uw, 0
  br i1 %.not.i87.i.i.7, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i84.i.i, !llvm.loop !694

_ZL20stb_decompress_tokenPKh.exit.i:              ; preds = %_ZL8stb__litPKhj.exit77.i.i, %_ZL8stb__litPKhj.exit75.i.i, %_ZL8stb__litPKhj.exit.i.i
  %.lcssa.sink.i.i64.i = phi ptr [ %.sink.i76.i.i, %_ZL8stb__litPKhj.exit77.i.i ], [ %.sink.i74.i.i, %_ZL8stb__litPKhj.exit75.i.i ], [ %.sink.i.i.i, %_ZL8stb__litPKhj.exit.i.i ]
  %.0.i.i = phi ptr [ %i.oo, %_ZL8stb__litPKhj.exit77.i.i ], [ %i.ny, %_ZL8stb__litPKhj.exit75.i.i ], [ %i.gv, %_ZL8stb__litPKhj.exit.i.i ] ; 2 uses
  %i.va = icmp eq ptr %.0.i.i, %.034.i
  br i1 %i.va, label %_ZL14stb_decompressPhPKhj.exit, label %_ZL20stb_decompress_tokenPKh.exit.thread.i

_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i: ; preds = %.preheader.i84.i.i.prol.loopexit, %.preheader.i84.i.i, %.preheader.i78.i.i.prol.loopexit, %.preheader.i78.i.i, %.preheader.i68.i.i.prol.loopexit, %.preheader.i68.i.i, %.preheader.i62.i.i.prol.loopexit, %.preheader.i62.i.i, %.preheader.i56.i.i.prol.loopexit, %.preheader.i56.i.i, %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i, %middle.block267, %vec.epilog.middle.block282, %middle.block233, %vec.epilog.middle.block248, %middle.block199, %vec.epilog.middle.block214, %middle.block165, %vec.epilog.middle.block180, %middle.block131, %vec.epilog.middle.block146, %middle.block, %vec.epilog.middle.block, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.s, %bb.r, %bb.p, %bb.o, %bb.j, %bb.i, %bb.g, %bb.f
  %.lcssa.sink.i88.i.sink.i = phi ptr [ %i.sb, %.preheader.i78.i.i ], [ %i.ne, %.preheader.i68.i.i ], [ %i.kh, %.preheader.i62.i.i ], [ %i.gl, %.preheader.i56.i.i ], [ %i.de, %.preheader.i.i.i ], [ %i.as, %bb.f ], [ %i.al, %bb.g ], [ %i.dl, %bb.i ], [ %i.al, %bb.j ], [ %i.hc, %bb.o ], [ %i.al, %bb.p ], [ %i.kt, %bb.r ], [ %i.al, %bb.s ], [ %i.ou, %bb.ab ], [ %i.al, %bb.ac ], [ %i.sm, %bb.ad ], [ %i.al, %bb.ae ], [ %i.bw, %vec.epilog.middle.block ], [ %i.bh, %middle.block ], [ %i.fd, %vec.epilog.middle.block146 ], [ %i.ec, %middle.block131 ], [ %i.iz, %vec.epilog.middle.block180 ], [ %i.hy, %middle.block165 ], [ %i.lw, %vec.epilog.middle.block214 ], [ %i.lp, %middle.block199 ], [ %i.qt, %vec.epilog.middle.block248 ], [ %i.ps, %middle.block233 ], [ %i.tr, %vec.epilog.middle.block282 ], [ %i.tk, %middle.block267 ], [ %.lcssa304.unr, %.preheader.i.i.i.prol.loopexit ], [ %.lcssa303.unr, %.preheader.i56.i.i.prol.loopexit ], [ %.lcssa302.unr, %.preheader.i62.i.i.prol.loopexit ], [ %.lcssa301.unr, %.preheader.i68.i.i.prol.loopexit ], [ %.lcssa300.unr, %.preheader.i78.i.i.prol.loopexit ], [ %.lcssa.unr, %.preheader.i84.i.i.prol.loopexit ], [ %i.uz, %.preheader.i84.i.i ] ; 2 uses
  %.sink.i = phi i64 [ 5, %.preheader.i78.i.i.prol.loopexit ], [ 5, %.preheader.i68.i.i.prol.loopexit ], [ 4, %.preheader.i62.i.i.prol.loopexit ], [ 3, %.preheader.i56.i.i.prol.loopexit ], [ 2, %.preheader.i.i.i.prol.loopexit ], [ 2, %bb.f ], [ 2, %bb.g ], [ 3, %bb.i ], [ 3, %bb.j ], [ 4, %bb.o ], [ 4, %bb.p ], [ 5, %bb.r ], [ 5, %bb.s ], [ 5, %bb.ab ], [ 5, %bb.ac ], [ 6, %bb.ad ], [ 6, %bb.ae ], [ 2, %vec.epilog.middle.block ], [ 2, %middle.block ], [ 3, %vec.epilog.middle.block146 ], [ 3, %middle.block131 ], [ 4, %vec.epilog.middle.block180 ], [ 4, %middle.block165 ], [ 5, %vec.epilog.middle.block214 ], [ 5, %middle.block199 ], [ 5, %vec.epilog.middle.block248 ], [ 5, %middle.block233 ], [ 6, %vec.epilog.middle.block282 ], [ 6, %middle.block267 ], [ 2, %.preheader.i.i.i ], [ 3, %.preheader.i56.i.i ], [ 4, %.preheader.i62.i.i ], [ 5, %.preheader.i68.i.i ], [ 5, %.preheader.i78.i.i ], [ 6, %.preheader.i84.i.i ], [ 6, %.preheader.i84.i.i.prol.loopexit ]
  store ptr %.lcssa.sink.i88.i.sink.i, ptr @_ZL9stb__dout, align 8, !tbaa !411
  %i.vb = getelementptr inbounds nuw i8, ptr %.034.i, i64 %.sink.i
  br label %_ZL20stb_decompress_tokenPKh.exit.thread.i

_ZL20stb_decompress_tokenPKh.exit.thread.i:       ; preds = %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, %_ZL20stb_decompress_tokenPKh.exit.i
  %.lcssa.sink.i.i63.i = phi ptr [ %.lcssa.sink.i.i64.i, %_ZL20stb_decompress_tokenPKh.exit.i ], [ %.lcssa.sink.i88.i.sink.i, %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i ] ; 2 uses
  %.0.i42.i = phi ptr [ %.0.i.i, %_ZL20stb_decompress_tokenPKh.exit.i ], [ %i.vb, %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i ]
  %.not49.i = icmp ugt ptr %.lcssa.sink.i.i63.i, %i.aj
  br i1 %.not49.i, label %_ZL14stb_decompressPhPKhj.exit, label %bb.d, !llvm.loop !695

_ZL14stb_decompressPhPKhj.exit:                   ; preds = %_ZL20stb_decompress_tokenPKh.exit.thread.i, %_ZL20stb_decompress_tokenPKh.exit.i, %bb.x, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZL14stb_decompressPhPKhj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %7, ptr noundef nonnull align 8 dereferenceable(160) %4, i64 160, i1 false), !tbaa.struct !431
  br label %bb.ah

bb.ag:                                            ; preds = %_ZL14stb_decompressPhPKhj.exit
  call void @_ZN12ImFontConfigC1Ev(ptr noundef nonnull align 8 dereferenceable(153) %7)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.vc = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i8 1, ptr %i.vc, align 4, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull readonly align 8 dereferenceable(160) %7, i64 160, i1 false), !tbaa.struct !431
  %i.vd = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.h, ptr %i.vd, align 8, !tbaa !354
  %i.ve = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %i.f, ptr %i.ve, align 8, !tbaa !436
  %i.vf = fcmp ogt float %3, 0.000000e+00
  %i.vg = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %i.vh = load float, ptr %i.vg, align 4
  %i.vi = select i1 %i.vf, float %3, float %i.vh
  store float %i.vi, ptr %i.vg, align 4, !tbaa !414
  %.not9.i = icmp eq ptr %5, null
  br i1 %.not9.i, label %_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.vj = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %5, ptr %i.vj, align 8, !tbaa !437
  br label %_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit

_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit: ; preds = %bb.ah, %bb.ai
  %i.vk = call noundef ptr @_ZN11ImFontAtlas7AddFontEPK12ImFontConfig(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  ret ptr %i.vk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef nonnull ptr @_Z47ImGui_GetDefaultCompressedFontDataProggyForeverPi(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0) local_unnamed_addr #22 {
bb.a:
  store i32 14562, ptr %0, align 4, !tbaa !258
  ret ptr @_ZL42proggy_forever_minimal_ttf_compressed_data
}

; Function Attrs: mustprogress uwtable
end_hunk_1
begin_hunk_2_@_Z43ImFontAtlasBuildLegacyPreloadAllGlyphRangesP11ImFontAtlas:bb.a
  br i1 %.not43, label %._crit_edge58, label %.lr.ph57, !llvm.loop !715

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN11ImFontBaked9FindGlyphEt.exit49
  %i.be = phi i16 [ %i.ba, %.lr.ph.preheader ], [ %i.bn, %_ZN11ImFontBaked9FindGlyphEt.exit49 ]
  %indvars.iv = phi i64 [ %i.bb, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN11ImFontBaked9FindGlyphEt.exit49 ] ; 6 uses
  %i.bf = trunc nuw i64 %indvars.iv to i16
  %i.bg = load i32, ptr %i.ar, align 8, !tbaa !259
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !260
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !243
  %cond51 = icmp eq i16 %i.bl, -1
  br i1 %cond51, label %bb.j, label %_ZN11ImFontBaked9FindGlyphEt.exit49

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %i.bm = tail call fastcc noundef ptr @_ZL26ImFontBaked_BuildLoadGlyphP11ImFontBakedtPf(ptr noundef nonnull align 8 dereferenceable(104) %i.m, i16 noundef zeroext %i.bf, ptr noundef null) ; 0 uses
  %.pre = load i16, ptr %i.az, align 2, !tbaa !243
  br label %_ZN11ImFontBaked9FindGlyphEt.exit49

_ZN11ImFontBaked9FindGlyphEt.exit49:              ; preds = %bb.j, %bb.i
  %i.bn = phi i16 [ %.pre, %bb.j ], [ %i.be, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bo = zext i16 %i.bn to i64
  %i.bp = icmp samesign ult i64 %indvars.iv, %i.bo
  %i.bq = icmp samesign ult i64 %indvars.iv, 65535
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %.lr.ph, label %._crit_edge, !llvm.loop !716

._crit_edge58:                                    ; preds = %._crit_edge, %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %.03560, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.bs, %i.aq
  br i1 %.not41, label %._crit_edge62, label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z36ImFontAtlasBuildGetOversampleFactorsP12ImFontConfigP11ImFontBakedPiS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #28 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.b = load i8, ptr %i.a, align 1, !tbaa !484   ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i8 %i.b to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load float, ptr %i.d, align 4, !tbaa !256
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load float, ptr %i.f, align 8, !tbaa !468
  %i.h = fmul float %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load float, ptr %i.i, align 8, !tbaa !416
  %i.k = fmul float %i.h, %i.j
  %i.l = fcmp ogt float %i.k, 3.600000e+01
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.n = load i8, ptr %i.m, align 2, !tbaa !432, !range !351, !noundef !352
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i32 1, i32 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.q = phi i32 [ %i.c, %bb.b ], [ 1, %bb.c ], [ %i.p, %bb.d ]
  store i32 %i.q, ptr %2, align 4, !tbaa !258
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !299
  %narrow = tail call i8 @llvm.umax.i8(i8 %i.s, i8 1)
  %spec.select = sext i8 %narrow to i32
  store i32 %spec.select, ptr %3, align 4, !tbaa !258
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z25ImFontAtlasFontInitOutputP11ImFontAtlasP6ImFont(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !359  ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !361  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx
  %.not11 = icmp eq i32 %i.d, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 696
  br label %bb.b

._crit_edge:                                      ; preds = %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit, %bb.a
  %.09.lcssa = phi i1 [ true, %bb.a ], [ %i.p, %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit ]
  ret i1 %.09.lcssa

bb.b:                                             ; preds = %.lr.ph, %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit
  %.013 = phi ptr [ %i.c, %.lr.ph ], [ %i.q, %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit ] ; 2 uses
  %.0912 = phi i1 [ true, %.lr.ph ], [ %i.p, %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit ]
  %i.h = load ptr, ptr %.013, align 8, !tbaa !381 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !382  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !341
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.k, %bb.c ], [ %i.j, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !388  ; 2 uses
  %.not10.i = icmp eq ptr %i.n, null
  br i1 %.not10.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef %0, ptr noundef nonnull %i.h), !inline_history !418
  br i1 %i.o, label %bb.f, label %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit

bb.f:                                             ; preds = %bb.d, %bb.e
  br label %_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit

_Z25ImFontAtlasFontSourceInitP11ImFontAtlasP12ImFontConfig.exit: ; preds = %bb.e, %bb.f
  %i.p = phi i1 [ %.0912, %bb.f ], [ false, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11ImFontAtlas21GetGlyphRangesDefaultEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(760) %0) local_unnamed_addr #23 align 2 {
bb.a:
  ret ptr @_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z38ImFontAtlasBuildRenderBitmapFromStringP11ImFontAtlasiiiiPKcc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i8 noundef signext %6) local_unnamed_addr #21 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !332  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !309
  switch i32 %i.e, label %.loopexit [
    i32 1, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.g = icmp sgt i32 %4, 0
  br i1 %i.g, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.h = icmp sgt i32 %3, 0
  %i.i = sext i32 %3 to i64                       ; 2 uses
  br i1 %i.h, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !308
  %i.l = load i32, ptr %i.f, align 4, !tbaa !311
  %i.m = mul nsw i32 %i.l, %2
  %i.n = add nsw i32 %i.m, %1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !313
  %i.q = mul nsw i32 %i.n, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 %i.r
  %wide.trip.count62 = zext nneg i32 %3 to i64    ; 8 uses
  %min.iters.check76 = icmp ult i32 %3, 4
  %min.iters.check77 = icmp ult i32 %3, 32
  %i.t = and i64 %wide.trip.count62, 28
  %n.vec79 = and i64 %wide.trip.count62, 2147483616 ; 4 uses
  %broadcast.splatinsert80 = insertelement <16 x i8> poison, i8 %6, i64 0
  %broadcast.splat81 = shufflevector <16 x i8> %broadcast.splatinsert80, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n88 = icmp eq i64 %n.vec79, %wide.trip.count62
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  %n.vec89 = and i64 %wide.trip.count62, 2147483644 ; 3 uses
  %broadcast.splatinsert90 = insertelement <4 x i8> poison, i8 %6, i64 0
  %broadcast.splat91 = shufflevector <4 x i8> %broadcast.splatinsert90, <4 x i8> poison, <4 x i32> zeroinitializer
  %cmp.n95 = icmp eq i64 %n.vec89, %wide.trip.count62
  %xtraiter98 = and i64 %wide.trip.count62, 3     ; 2 uses
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge52
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge52 ] ; 2 uses
  %.04055 = phi i32 [ 0, %.preheader.preheader ], [ %i.as, %._crit_edge52 ]
  %.04154 = phi ptr [ %i.s, %.preheader.preheader ], [ %i.av, %._crit_edge52 ] ; 9 uses
  %.04253 = phi ptr [ %5, %.preheader.preheader ], [ %i.aw, %._crit_edge52 ] ; 8 uses
  br i1 %min.iters.check76, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %iter.check
  %i.u = mul i64 %indvar, %i.i
  %i.v = add i64 %i.u, %i.a
  %.0415474 = ptrtoaddr ptr %.04154 to i64
  %i.w = sub i64 %i.v, %.0415474
  %diff.check = icmp ugt i64 %i.w, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck73
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.body82

vector.body82:                                    ; preds = %vector.main.loop.iter.check, %vector.body82
  %index83 = phi i64 [ %index.next86, %vector.body82 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.04253, i64 %index83 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load84 = load <16 x i8>, ptr %i.x, align 1, !tbaa !50
  %wide.load85 = load <16 x i8>, ptr %i.y, align 1, !tbaa !50
  %i.z = icmp eq <16 x i8> %wide.load84, %broadcast.splat81
  %i.aa = icmp eq <16 x i8> %wide.load85, %broadcast.splat81
  %i.ab = sext <16 x i1> %i.z to <16 x i8>
  %i.ac = sext <16 x i1> %i.aa to <16 x i8>
  %i.ad = getelementptr inbounds nuw i8, ptr %.04154, i64 %index83 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %i.ab, ptr %i.ad, align 1, !tbaa !50
  store <16 x i8> %i.ac, ptr %i.ae, align 1, !tbaa !50
  %index.next86 = add nuw i64 %index83, 32        ; 2 uses
  %i.af = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.af, label %middle.block87, label %vector.body82, !llvm.loop !717

middle.block87:                                   ; preds = %vector.body82
  br i1 %cmp.n88, label %._crit_edge52, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block87
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !435

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec79, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index92 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next94, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.04253, i64 %index92
  %wide.load93 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !50
  %i.ah = icmp eq <4 x i8> %wide.load93, %broadcast.splat91
  %i.ai = sext <4 x i1> %i.ah to <4 x i8>
  %i.aj = getelementptr inbounds nuw i8, ptr %.04154, i64 %index92
  store <4 x i8> %i.ai, ptr %i.aj, align 1, !tbaa !50
  %index.next94 = add nuw i64 %index92, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !718

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n95, label %._crit_edge52, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck73, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv59.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck73 ], [ %n.vec79, %vec.epilog.iter.check ], [ %n.vec89, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod99.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv59.prol = phi i64 [ %indvars.iv.next60.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv59.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter100 = phi i64 [ %prol.iter100.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.04253, i64 %indvars.iv59.prol
  %i.am = load i8, ptr %i.al, align 1, !tbaa !50
  %i.an = icmp eq i8 %i.am, %6
  %i.ao = sext i1 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %.04154, i64 %indvars.iv59.prol
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !50
  %indvars.iv.next60.prol = add nuw nsw i64 %indvars.iv59.prol, 1 ; 2 uses
  %prol.iter100.next = add i64 %prol.iter100, 1   ; 2 uses
  %prol.iter100.cmp.not = icmp eq i64 %prol.iter100.next, %xtraiter98
  br i1 %prol.iter100.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !719

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv59.unr = phi i64 [ %indvars.iv59.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next60.prol, %vec.epilog.scalar.ph.prol ]
  %i.aq = sub nsw i64 %indvars.iv59.ph, %wide.trip.count62
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge52, label %vec.epilog.scalar.ph

._crit_edge52:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block87
  %i.as = add nuw nsw i32 %.04055, 1              ; 2 uses
  %i.at = load i32, ptr %i.f, align 4, !tbaa !311
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %.04154, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.04253, i64 %i.i
  %exitcond64.not = icmp eq i32 %i.as, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond64.not, label %.loopexit, label %iter.check, !llvm.loop !720

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv59 = phi i64 [ %indvars.iv.next60.3, %vec.epilog.scalar.ph ], [ %indvars.iv59.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04253, i64 %indvars.iv59
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !50
  %i.az = icmp eq i8 %i.ay, %6
  %i.ba = sext i1 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %.04154, i64 %indvars.iv59
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !50
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.04253, i64 %indvars.iv.next60
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !50
  %i.be = icmp eq i8 %i.bd, %6
  %i.bf = sext i1 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.04154, i64 %indvars.iv.next60
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !50
  %indvars.iv.next60.1 = add nuw nsw i64 %indvars.iv59, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.04253, i64 %indvars.iv.next60.1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !50
  %i.bj = icmp eq i8 %i.bi, %6
  %i.bk = sext i1 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.04154, i64 %indvars.iv.next60.1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !50
  %indvars.iv.next60.2 = add nuw nsw i64 %indvars.iv59, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.04253, i64 %indvars.iv.next60.2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !50
  %i.bo = icmp eq i8 %i.bn, %6
  %i.bp = sext i1 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.04154, i64 %indvars.iv.next60.2
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !50
  %indvars.iv.next60.3 = add nuw nsw i64 %indvars.iv59, 4 ; 2 uses
  %exitcond63.not.3 = icmp eq i64 %indvars.iv.next60.3, %wide.trip.count62
  br i1 %exitcond63.not.3, label %._crit_edge52, label %vec.epilog.scalar.ph, !llvm.loop !721

bb.c:                                             ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.bs = icmp sgt i32 %4, 0
  br i1 %i.bs, label %.preheader45.lr.ph, label %.loopexit

.preheader45.lr.ph:                               ; preds = %bb.c
  %i.bt = icmp sgt i32 %3, 0
  %i.bu = sext i32 %3 to i64                      ; 2 uses
  br i1 %i.bt, label %.preheader45.preheader, label %.loopexit

.preheader45.preheader:                           ; preds = %.preheader45.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !308
  %i.bx = load i32, ptr %i.br, align 4, !tbaa !311
  %i.by = mul nsw i32 %i.bx, %2
  %i.bz = add nsw i32 %i.by, %1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !313
  %i.cc = mul nsw i32 %i.bz, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %i.bw, i64 %i.cd
  %wide.trip.count = zext nneg i32 %3 to i64      ; 7 uses
  %7 = shl nuw nsw i64 %wide.trip.count, 2
  %i.cf = add nsw i32 %4, -1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = mul nuw nsw i64 %i.bu, %i.cg
  %i.ci = getelementptr i8, ptr %5, i64 %i.ch
  %scevgep71 = getelementptr i8, ptr %i.ci, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %6, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.preheader, %._crit_edge
  %.03750 = phi i32 [ %i.cz, %._crit_edge ], [ 0, %.preheader45.preheader ]
  %.03849 = phi ptr [ %i.dc, %._crit_edge ], [ %i.ce, %.preheader45.preheader ] ; 9 uses
  %.148 = phi ptr [ %i.dd, %._crit_edge ], [ %5, %.preheader45.preheader ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader45
  %scevgep = getelementptr i8, ptr %.03849, i64 %7
  %bound0 = icmp ult ptr %.03849, %scevgep71
  %bound1 = icmp ult ptr %5, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.148, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %wide.load = load <4 x i8>, ptr %i.cj, align 1, !tbaa !50, !alias.scope !729
  %wide.load72 = load <4 x i8>, ptr %i.ck, align 1, !tbaa !50, !alias.scope !729
  %i.cl = icmp eq <4 x i8> %wide.load, %broadcast.splat
  %i.cm = icmp eq <4 x i8> %wide.load72, %broadcast.splat
  %i.cn = sext <4 x i1> %i.cl to <4 x i32>
  %i.co = sext <4 x i1> %i.cm to <4 x i32>
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.03849, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x i32> %i.cn, ptr %i.cp, align 4, !tbaa !258, !alias.scope !730, !noalias !729
  store <4 x i32> %i.co, ptr %i.cq, align 4, !tbaa !258, !alias.scope !730, !noalias !729
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !725

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader45, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader45 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.148, i64 %indvars.iv.prol
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !50
  %i.cu = icmp eq i8 %i.ct, %6
  %i.cv = sext i1 %i.cu to i32
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.03849, i64 %indvars.iv.prol
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !258
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !726

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cx = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cz = add nuw nsw i32 %.03750, 1              ; 2 uses
  %i.da = load i32, ptr %i.br, align 4, !tbaa !311
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %.03849, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.148, i64 %i.bu
  %exitcond58.not = icmp eq i32 %i.cz, %4
  br i1 %exitcond58.not, label %.loopexit, label %.preheader45, !llvm.loop !727

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.148, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !50
  %i.dg = icmp eq i8 %i.df, %6
  %i.dh = sext i1 %i.dg to i32
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.03849, i64 %indvars.iv
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !258
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.148, i64 %indvars.iv.next
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !50
  %i.dl = icmp eq i8 %i.dk, %6
  %i.dm = sext i1 %i.dl to i32
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.03849, i64 %indvars.iv.next
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !258
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.148, i64 %indvars.iv.next.1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !50
  %i.dq = icmp eq i8 %i.dp, %6
  %i.dr = sext i1 %i.dq to i32
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.03849, i64 %indvars.iv.next.1
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !258
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.148, i64 %indvars.iv.next.2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !50
  %i.dv = icmp eq i8 %i.du, %6
  %i.dw = sext i1 %i.dv to i32
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.03849, i64 %indvars.iv.next.2
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !258
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !728

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge52, %bb.c, %.preheader45.lr.ph, %bb.b, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6ImFont15ClearOutputDataEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(76) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !364  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 688 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !375  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %i.i = phi i32 [ %i.f, %.lr.ph.i ], [ %i.ac, %bb.f ] ; 2 uses
  %.020.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ad, %bb.f ] ; 3 uses
  %i.j = lshr i32 %.020.i, 5
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !376
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !377
  %i.o = and i32 %.020.i, 31
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [104 x i8], ptr %i.n, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load i32, ptr %i.r, align 8, !tbaa !378
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !339
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 164
  %i.v = load i32, ptr %i.u, align 4, !tbaa !379
  %i.w = icmp sle i32 %i.s, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.y = load ptr, ptr %i.x, align 8
  %.not17.i = icmp eq ptr %i.y, %0
  %or.cond.i = select i1 %i.w, i1 %.not17.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 67108864
  %.not18.i = icmp eq i32 %i.ab, 0
  br i1 %.not18.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_Z23ImFontAtlasBakedDiscardP11ImFontAtlasP6ImFontP11ImFontBaked(ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !375
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ac = phi i32 [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.ad = add nuw nsw i32 %.020.i, 1              ; 2 uses
  %i.ae = icmp slt i32 %i.ad, %i.ac
  br i1 %i.ae, label %bb.c, label %_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti.exit, !llvm.loop !8

_Z27ImFontAtlasFontDiscardBakesP11ImFontAtlasP6ImFonti.exit: ; preds = %bb.f, %.preheader.i, %bb.b, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.af, align 4
  store ptr null, ptr %0, align 8, !tbaa !380
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z28ImFontAtlasFontRebuildOutputP11ImFontAtlasP6ImFont(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #10 {
bb.a:
  tail call void @_Z28ImFontAtlasFontDestroyOutputP11ImFontAtlasP6ImFont(ptr noundef %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !359  ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !361  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx.i = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.d, 0
  br i1 %.not11.i, label %_Z25ImFontAtlasFontInitOutputP11ImFontAtlasP6ImFont.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZL26ImFontBaked_BuildGrowIndexP11ImFontBakedi:bb.a
  br i1 %i.bk, label %_ZN8ImVectorItE6resizeEiRKt.exit, label %.preheader.i5.new

.preheader.i5.new:                                ; preds = %.prol.loopexit21, %.preheader.i5.new
  %indvars.iv.i8 = phi i64 [ %indvars.iv.next.i9.3, %.preheader.i5.new ], [ %indvars.iv.i8.unr, %.prol.loopexit21 ] ; 5 uses
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %indvars.iv.i8
  store i16 -1, ptr %i.bm, align 2
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.bo = getelementptr [2 x i8], ptr %i.bn, i64 %indvars.iv.i8
  %i.bp = getelementptr i8, ptr %i.bo, i64 2
  store i16 -1, ptr %i.bp, align 2
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.br = getelementptr [2 x i8], ptr %i.bq, i64 %indvars.iv.i8
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  store i16 -1, ptr %i.bs, align 2
  %i.bt = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.bu = getelementptr [2 x i8], ptr %i.bt, i64 %indvars.iv.i8
  %i.bv = getelementptr i8, ptr %i.bu, i64 6
  store i16 -1, ptr %i.bv, align 2
  %indvars.iv.next.i9.3 = add nsw i64 %indvars.iv.i8, 4 ; 2 uses
  %exitcond.not.i10.3 = icmp eq i64 %indvars.iv.next.i9.3, %wide.trip.count.i6
  br i1 %exitcond.not.i10.3, label %_ZN8ImVectorItE6resizeEiRKt.exit, label %.preheader.i5.new, !llvm.loop !823

_ZN8ImVectorItE6resizeEiRKt.exit:                 ; preds = %.prol.loopexit21, %.preheader.i5.new, %_ZN8ImVectorItE7reserveEi.exit.i
  store i32 %1, ptr %i.a, align 8, !tbaa !88
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN8ImVectorItE6resizeEiRKt.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z37ImFontAtlasBakedAddFontGlyphAdvancedXP11ImFontAtlasP11ImFontBakedP12ImFontConfigtf(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i16 noundef zeroext %3, float noundef %4) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !384
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !359
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !381
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.g = load float, ptr %i.f, align 4, !tbaa !414 ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load float, ptr %i.i, align 4, !tbaa !256
  %i.k = fdiv float %i.j, %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi float [ %i.k, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.n = load float, ptr %i.m, align 8, !tbaa !477
  %i.o = fmul float %i.l, %i.n                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.q = load float, ptr %i.p, align 4, !tbaa !301
  %i.r = fmul float %i.l, %i.q                    ; 2 uses
  %i.s = fcmp olt float %4, %i.o
  %i.t = fcmp ogt float %4, %i.r
  %i.u = select i1 %i.t, float %i.r, float %4
  %i.v = select i1 %i.s, float %i.o, float %i.u   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 54
  %i.x = load i8, ptr %i.w, align 2, !tbaa !432, !range !351, !noundef !352
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = fadd float %i.v, 5.000000e-01
  %i.aa = fptosi float %i.z to i32
  %i.ab = sitofp i32 %i.aa to float
  %.0 = select i1 %i.y, float %i.ab, float %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !480
  %i.ae = fadd float %i.ad, %.0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1 = phi float [ %i.ae, %bb.d ], [ %4, %bb.a ]
  %i.af = zext i16 %3 to i32
  %i.ag = add nuw nsw i32 %i.af, 1
  tail call fastcc void @_ZL26ImFontBaked_BuildGrowIndexP11ImFontBakedi(ptr noundef %1, i32 noundef %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !467
  %i.aj = zext i16 %3 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  store float %.1, ptr %i.ak, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z34ImFontAtlasBakedSetFontGlyphBitmapP11ImFontAtlasP11ImFontBakedP12ImFontConfigP11ImFontGlyphP13ImTextureRectPKh15ImTextureFormati(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332  ; 5 uses
  %i.c = load i16, ptr %4, align 2, !tbaa !440
  %i.d = zext i16 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !441
  %i.g = zext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !308  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !311  ; 2 uses
  %i.l = mul i32 %i.k, %i.g
  %i.m = add i32 %i.l, %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !313  ; 2 uses
  %i.p = mul i32 %i.m, %i.o
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = getelementptr i8, ptr %i.i, i64 %i.q     ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !309  ; 3 uses
  %i.u = mul i32 %i.o, %i.k                       ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !442  ; 7 uses
  %i.x = zext i16 %i.w to i32                     ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 3 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !443  ; 5 uses
  %i.aa = zext i16 %i.z to i32                    ; 7 uses
  %i.ab = icmp eq i32 %6, %i.t
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not34 = icmp eq i16 %i.z, 0
  br i1 %.not34, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %switch.selectcmp2.i.i = icmp eq i32 %6, 1
  %switch.selectcmp.i.i = icmp eq i32 %6, 0
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 4, i32 0
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 1, i32 %switch.select.i.i
  %i.ac = mul nuw nsw i32 %switch.select3.i.i, %i.x
  %i.ad = zext nneg i32 %i.ac to i64              ; 5 uses
  %i.ae = sext i32 %7 to i64                      ; 5 uses
  %i.af = sext i32 %i.u to i64                    ; 5 uses
  %xtraiter = and i32 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %.05583.i.prol = phi i32 [ %i.ag, %.prol.preheader ], [ %i.aa, %.lr.ph.i ]
  %.05682.i.prol = phi ptr [ %i.ah, %.prol.preheader ], [ %5, %.lr.ph.i ] ; 2 uses
  %.05781.i.prol = phi ptr [ %i.ai, %.prol.preheader ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05781.i.prol, ptr align 1 %.05682.i.prol, i64 %i.ad, i1 false)
  %i.ag = add nsw i32 %.05583.i.prol, -1          ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.05682.i.prol, i64 %i.ae ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.05781.i.prol, i64 %i.af ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !824

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.05583.i.unr = phi i32 [ %i.aa, %.lr.ph.i ], [ %i.ag, %.prol.preheader ]
  %.05682.i.unr = phi ptr [ %5, %.lr.ph.i ], [ %i.ah, %.prol.preheader ]
  %.05781.i.unr = phi ptr [ %i.r, %.lr.ph.i ], [ %i.ai, %.prol.preheader ]
  %i.aj = icmp ult i16 %i.z, 4
  br i1 %i.aj, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.05583.i = phi i32 [ %i.aq, %.lr.ph.i.new ], [ %.05583.i.unr, %.prol.loopexit ] ; 2 uses
  %.05682.i = phi ptr [ %i.ar, %.lr.ph.i.new ], [ %.05682.i.unr, %.prol.loopexit ] ; 2 uses
  %.05781.i = phi ptr [ %i.as, %.lr.ph.i.new ], [ %.05781.i.unr, %.prol.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05781.i, ptr align 1 %.05682.i, i64 %i.ad, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %.05682.i, i64 %i.ae ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.05781.i, i64 %i.af ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.ak, i64 %i.ad, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.ae ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.af ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.am, i64 %i.ad, i1 false)
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.ao, i64 %i.ad, i1 false)
  %i.aq = add nsw i32 %.05583.i, -4
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.ae
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.af
  %i.at = icmp sgt i32 %.05583.i, 4
  br i1 %i.at, label %.lr.ph.i.new, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, !llvm.loop !10

bb.c:                                             ; preds = %bb.a
  %i.au = icmp eq i32 %6, 1
  %i.av = icmp eq i32 %i.t, 0
  %or.cond.i = and i1 %i.au, %i.av
  br i1 %or.cond.i, label %.preheader63.i, label %bb.d

.preheader63.i:                                   ; preds = %bb.c
  %.not32 = icmp eq i16 %i.z, 0
  br i1 %.not32, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader63.i
  %.not33 = icmp eq i16 %i.w, 0
  %i.aw = sext i32 %7 to i64                      ; 2 uses
  %i.ax = sext i32 %i.u to i64                    ; 2 uses
  br i1 %.not33, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.i
  %i.ay = add nsw i32 %i.aa, -1
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = mul nsw i64 %i.ax, %i.az
  %i.bb = add nsw i32 %i.x, -1
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %8 = shl nuw nsw i64 %i.bc, 2
  %i.bd = getelementptr i8, ptr %i.i, i64 %i.ba
  %i.be = getelementptr i8, ptr %i.bd, i64 %8
  %9 = getelementptr i8, ptr %i.be, i64 %i.q
  %scevgep69 = getelementptr i8, ptr %9, i64 4
  %10 = mul nsw i64 %i.aw, %i.az
  %i.bf = getelementptr i8, ptr %5, i64 %10
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.bc
  %scevgep70 = getelementptr i8, ptr %i.bg, i64 1
  %i.bh = zext i16 %i.w to i64                    ; 2 uses
  %min.iters.check77 = icmp ult i16 %i.w, 8
  %bound071 = icmp ult ptr %i.r, %scevgep70
  %bound172 = icmp ult ptr %5, %scevgep69
  %found.conflict73 = and i1 %bound071, %bound172
  %i.bi = or i32 %7, %i.u
  %i.bj = icmp slt i32 %i.bi, 0
  %i.bk = or i1 %found.conflict73, %i.bj
  %n.vec79 = and i64 %i.bh, 65528                 ; 5 uses
  %i.bl = trunc nuw nsw i64 %n.vec79 to i32
  %i.bm = sub nsw i32 %i.x, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec79, 2
  %cmp.n88 = icmp eq i64 %n.vec79, %i.bh
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge77.i
  %.05480.i = phi i32 [ %i.ca, %._crit_edge77.i ], [ %i.aa, %.preheader.i.preheader ] ; 2 uses
  %.179.i = phi ptr [ %i.cb, %._crit_edge77.i ], [ %5, %.preheader.i.preheader ] ; 4 uses
  %.15878.i = phi ptr [ %i.cc, %._crit_edge77.i ], [ %i.r, %.preheader.i.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check77, i1 true, i1 %i.bk
  br i1 %brmerge, label %scalar.ph76.preheader, label %vector.ph78

vector.ph78:                                      ; preds = %.preheader.i
  %i.bo = getelementptr i8, ptr %.15878.i, i64 %i.bn
  %i.bp = getelementptr i8, ptr %.179.i, i64 %n.vec79
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next86, %vector.body80 ] ; 3 uses
  %i.bq = shl i64 %index81, 2
  %next.gep82 = getelementptr i8, ptr %.15878.i, i64 %i.bq ; 2 uses
  %next.gep83 = getelementptr i8, ptr %.179.i, i64 %index81 ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep83, i64 4
  %wide.load84 = load <4 x i8>, ptr %next.gep83, align 1, !tbaa !50, !alias.scope !840
  %wide.load85 = load <4 x i8>, ptr %i.br, align 1, !tbaa !50, !alias.scope !840
  %i.bs = zext <4 x i8> %wide.load84 to <4 x i32>
  %i.bt = zext <4 x i8> %wide.load85 to <4 x i32>
  %i.bu = shl nuw <4 x i32> %i.bs, splat (i32 24)
  %i.bv = shl nuw <4 x i32> %i.bt, splat (i32 24)
  %i.bw = or disjoint <4 x i32> %i.bu, splat (i32 16777215)
  %i.bx = or disjoint <4 x i32> %i.bv, splat (i32 16777215)
  %i.by = getelementptr i8, ptr %next.gep82, i64 16
  store <4 x i32> %i.bw, ptr %next.gep82, align 4, !tbaa !258, !alias.scope !841, !noalias !840
  store <4 x i32> %i.bx, ptr %i.by, align 4, !tbaa !258, !alias.scope !841, !noalias !840
  %index.next86 = add nuw i64 %index81, 8         ; 2 uses
  %i.bz = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.bz, label %middle.block87, label %vector.body80, !llvm.loop !828

middle.block87:                                   ; preds = %vector.body80
  br i1 %cmp.n88, label %._crit_edge77.i, label %scalar.ph76.preheader

scalar.ph76.preheader:                            ; preds = %.preheader.i, %middle.block87
  %.05176.i.ph = phi i32 [ %i.bm, %middle.block87 ], [ %i.x, %.preheader.i ]
  %.05275.i.ph = phi ptr [ %i.bo, %middle.block87 ], [ %.15878.i, %.preheader.i ]
  %.05374.i.ph = phi ptr [ %i.bp, %middle.block87 ], [ %.179.i, %.preheader.i ]
  br label %scalar.ph76

._crit_edge77.i:                                  ; preds = %scalar.ph76, %middle.block87
  %i.ca = add nsw i32 %.05480.i, -1
  %i.cb = getelementptr inbounds i8, ptr %.179.i, i64 %i.aw
  %i.cc = getelementptr inbounds i8, ptr %.15878.i, i64 %i.ax
  %i.cd = icmp sgt i32 %.05480.i, 1
  br i1 %i.cd, label %.preheader.i, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, !llvm.loop !11

scalar.ph76:                                      ; preds = %scalar.ph76.preheader, %scalar.ph76
  %.05176.i = phi i32 [ %i.ck, %scalar.ph76 ], [ %.05176.i.ph, %scalar.ph76.preheader ] ; 2 uses
  %.05275.i = phi ptr [ %i.cj, %scalar.ph76 ], [ %.05275.i.ph, %scalar.ph76.preheader ] ; 2 uses
  %.05374.i = phi ptr [ %i.ce, %scalar.ph76 ], [ %.05374.i.ph, %scalar.ph76.preheader ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.05374.i, i64 1
  %i.cf = load i8, ptr %.05374.i, align 1, !tbaa !50
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw i32 %i.cg, 24
  %i.ci = or disjoint i32 %i.ch, 16777215
  %i.cj = getelementptr inbounds nuw i8, ptr %.05275.i, i64 4
  store i32 %i.ci, ptr %.05275.i, align 4, !tbaa !258
  %i.ck = add nsw i32 %.05176.i, -1
  %i.cl = icmp sgt i32 %.05176.i, 1
  br i1 %i.cl, label %scalar.ph76, label %._crit_edge77.i, !llvm.loop !829

bb.d:                                             ; preds = %bb.c
  %i.cm = icmp eq i32 %6, 0
  %i.cn = icmp eq i32 %i.t, 1
  %or.cond3.i = and i1 %i.cm, %i.cn
  %i.co = icmp ne i16 %i.z, 0
  %or.cond85.i = and i1 %or.cond3.i, %i.co
  br i1 %or.cond85.i, label %.preheader65.lr.ph.i, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit

.preheader65.lr.ph.i:                             ; preds = %bb.d
  %.not = icmp eq i16 %i.w, 0
  %i.cp = sext i32 %7 to i64                      ; 2 uses
  %i.cq = sext i32 %i.u to i64                    ; 2 uses
  br i1 %.not, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, label %.preheader65.i.preheader

.preheader65.i.preheader:                         ; preds = %.preheader65.lr.ph.i
  %i.cr = add nsw i32 %i.aa, -1
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = mul nsw i64 %i.cq, %i.cs
  %i.cu = add nsw i32 %i.x, -1
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %11 = getelementptr i8, ptr %i.i, i64 %i.ct
  %i.cw = getelementptr i8, ptr %11, i64 %i.q
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.cv
  %scevgep = getelementptr i8, ptr %i.cx, i64 1
  %i.cy = mul nsw i64 %i.cp, %i.cs
  %12 = shl nuw nsw i64 %i.cv, 2
  %i.cz = getelementptr i8, ptr %5, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 %12
  %scevgep62 = getelementptr i8, ptr %i.da, i64 4
  %i.db = zext i16 %i.w to i64                    ; 2 uses
  %min.iters.check = icmp ult i16 %i.w, 8
  %bound0 = icmp ult ptr %i.r, %scevgep62
  %bound1 = icmp ult ptr %5, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.dc = or i32 %7, %i.u
  %i.dd = icmp slt i32 %i.dc, 0
  %i.de = or i1 %found.conflict, %i.dd
  %n.vec = and i64 %i.db, 65528                   ; 5 uses
  %i.df = trunc nuw nsw i64 %n.vec to i32
  %i.dg = sub nsw i32 %i.x, %i.df
  %i.dh = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.db
  br label %.preheader65.i

.preheader65.i:                                   ; preds = %.preheader65.i.preheader, %._crit_edge.i
  %.05073.i = phi i32 [ %i.ds, %._crit_edge.i ], [ %i.aa, %.preheader65.i.preheader ] ; 2 uses
  %.272.i = phi ptr [ %i.dt, %._crit_edge.i ], [ %5, %.preheader65.i.preheader ] ; 4 uses
  %.25971.i = phi ptr [ %i.du, %._crit_edge.i ], [ %i.r, %.preheader65.i.preheader ] ; 4 uses
  %brmerge134 = select i1 %min.iters.check, i1 true, i1 %i.de
  br i1 %brmerge134, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader65.i
  %i.di = getelementptr i8, ptr %.25971.i, i64 %n.vec
  %i.dj = getelementptr i8, ptr %.272.i, i64 %i.dh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.25971.i, i64 %index ; 2 uses
  %i.dk = shl i64 %index, 2
  %next.gep64 = getelementptr i8, ptr %.272.i, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep64, align 4, !tbaa !258, !alias.scope !842
  %wide.load65 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !258, !alias.scope !842
  %i.dm = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.dn = lshr <4 x i32> %wide.load65, splat (i32 24)
  %i.do = trunc nuw <4 x i32> %i.dm to <4 x i8>
  %i.dp = trunc nuw <4 x i32> %i.dn to <4 x i8>
  %i.dq = getelementptr i8, ptr %next.gep, i64 4
  store <4 x i8> %i.do, ptr %next.gep, align 1, !tbaa !50, !alias.scope !843, !noalias !842
  store <4 x i8> %i.dp, ptr %i.dq, align 1, !tbaa !50, !alias.scope !843, !noalias !842
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !833

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader65.i, %middle.block
  %.070.i.ph = phi i32 [ %i.dg, %middle.block ], [ %i.x, %.preheader65.i ]
  %.04869.i.ph = phi ptr [ %i.di, %middle.block ], [ %.25971.i, %.preheader65.i ]
  %.04968.i.ph = phi ptr [ %i.dj, %middle.block ], [ %.272.i, %.preheader65.i ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.ds = add nsw i32 %.05073.i, -1
  %i.dt = getelementptr inbounds i8, ptr %.272.i, i64 %i.cp
  %i.du = getelementptr inbounds i8, ptr %.25971.i, i64 %i.cq
  %i.dv = icmp sgt i32 %.05073.i, 1
  br i1 %i.dv, label %.preheader65.i, label %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit, !llvm.loop !12

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.070.i = phi i32 [ %i.eb, %scalar.ph ], [ %.070.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.04869.i = phi ptr [ %i.ea, %scalar.ph ], [ %.04869.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.04968.i = phi ptr [ %i.dw, %scalar.ph ], [ %.04968.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.04968.i, i64 4
  %i.dx = load i32, ptr %.04968.i, align 4, !tbaa !258
  %i.dy = lshr i32 %i.dx, 24
  %i.dz = trunc nuw i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.04869.i, i64 1
  store i8 %i.dz, ptr %.04869.i, align 1, !tbaa !50
  %i.eb = add nsw i32 %.070.i, -1
  %i.ec = icmp sgt i32 %.070.i, 1
  br i1 %i.ec, label %scalar.ph, label %._crit_edge.i, !llvm.loop !834

_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit: ; preds = %._crit_edge.i, %._crit_edge77.i, %.prol.loopexit, %.lr.ph.i.new, %bb.b, %.preheader63.i, %.preheader.lr.ph.i, %bb.d, %.preheader65.lr.ph.i
  %i.ed = load i16, ptr %4, align 2, !tbaa !440
  %i.ee = zext i16 %i.ed to i32                   ; 8 uses
  %i.ef = load i16, ptr %i.e, align 2, !tbaa !441
  %i.eg = zext i16 %i.ef to i32                   ; 8 uses
  %i.eh = load ptr, ptr %i.h, align 8, !tbaa !308
  %i.ei = load i32, ptr %i.j, align 4, !tbaa !311 ; 2 uses
  %i.ej = mul nsw i32 %i.ei, %i.eg
  %i.ek = add nsw i32 %i.ej, %i.ee
  %i.el = load i32, ptr %i.n, align 4, !tbaa !313 ; 2 uses
  %i.em = mul nsw i32 %i.ek, %i.el
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.eh, i64 %i.en ; 2 uses
  %i.ep = mul nsw i32 %i.el, %i.ei                ; 2 uses
  %i.eq = load i16, ptr %i.v, align 2, !tbaa !442 ; 13 uses
  %i.er = zext i16 %i.eq to i32                   ; 5 uses
  %i.es = load i16, ptr %i.y, align 2, !tbaa !443 ; 8 uses
  %i.et = zext i16 %i.es to i32                   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !403 ; 6 uses
  %i.ew = fcmp une float %i.ev, 1.000000e+00
  br i1 %i.ew, label %bb.e, label %_Z34ImFontAtlasTextureBlockPostProcessP26ImFontAtlasPostProcessData.exit

bb.e:                                             ; preds = %_Z30ImFontAtlasTextureBlockConvertPKh15ImTextureFormatiPhS1_iii.exit
  %i.ex = load i32, ptr %i.s, align 8, !tbaa !309
  switch i32 %i.ex, label %_Z34ImFontAtlasTextureBlockPostProcessP26ImFontAtlasPostProcessData.exit [
    i32 1, label %bb.f
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %.not37 = icmp eq i16 %i.es, 0
  br i1 %.not37, label %_Z34ImFontAtlasTextureBlockPostProcessP26ImFontAtlasPostProcessData.exit, label %.lr.ph56.i.i

.lr.ph56.i.i:                                     ; preds = %bb.f
  %i.ey = sext i32 %i.ep to i64
  %.not38 = icmp eq i16 %i.eq, 0
  br i1 %.not38, label %_Z34ImFontAtlasTextureBlockPostProcessP26ImFontAtlasPostProcessData.exit, label %.lr.ph56.split.i.i.preheader

.lr.ph56.split.i.i.preheader:                     ; preds = %.lr.ph56.i.i
  %i.ez = zext i16 %i.eq to i64                   ; 5 uses
  %min.iters.check106 = icmp ult i16 %i.eq, 4
  %min.iters.check107 = icmp ult i16 %i.eq, 16
  %i.fa = and i64 %i.ez, 12
  %n.vec109 = and i64 %i.ez, 65520                ; 5 uses
  %i.fb = trunc nuw nsw i64 %n.vec109 to i32
  %i.fc = sub nsw i32 %i.er, %i.fb
  %broadcast.splatinsert110 = insertelement <16 x float> poison, float %i.ev, i64 0
  %broadcast.splat111 = shufflevector <16 x float> %broadcast.splatinsert110, <16 x float> poison, <16 x i32> zeroinitializer
  %cmp.n118 = icmp eq i64 %n.vec109, %i.ez
  %min.epilog.iters.check = icmp eq i64 %i.fa, 0
  %n.vec119 = and i64 %i.ez, 65532                ; 4 uses
  %i.fd = trunc nuw nsw i64 %n.vec119 to i32
  %i.fe = sub nsw i32 %i.er, %i.fd
  %broadcast.splatinsert120 = insertelement <4 x float> poison, float %i.ev, i64 0
  %broadcast.splat121 = shufflevector <4 x float> %broadcast.splatinsert120, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n126 = icmp eq i64 %n.vec119, %i.ez
  br label %iter.check

.lr.ph56.splitthread-pre-split.i.i:               ; preds = %._crit_edge52.i.i
  %i.ff = getelementptr inbounds i8, ptr %.054.i.i, i64 %i.ey
  %i.fg = add nsw i32 %.03953.i.i, -1
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph56.split.i.i.preheader, %.lr.ph56.splitthread-pre-split.i.i
  %.054.i.i = phi ptr [ %i.ff, %.lr.ph56.splitthread-pre-split.i.i ], [ %i.eo, %.lr.ph56.split.i.i.preheader ] ; 6 uses
  %.03953.i.i = phi i32 [ %i.fg, %.lr.ph56.splitthread-pre-split.i.i ], [ %i.et, %.lr.ph56.split.i.i.preheader ] ; 2 uses
  br i1 %min.iters.check106, label %.lr.ph51.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check
  %i.fh = getelementptr i8, ptr %.054.i.i, i64 %n.vec109
  br label %vector.body112

vector.body112:                                   ; preds = %vector.ph108, %vector.body112
  %index113 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body112 ] ; 2 uses
  %next.gep114 = getelementptr i8, ptr %.054.i.i, i64 %index113 ; 2 uses
  %wide.load115 = load <16 x i8>, ptr %next.gep114, align 1, !tbaa !50
  %i.fi = uitofp <16 x i8> %wide.load115 to <16 x float>
  %i.fj = fmul <16 x float> %broadcast.splat111, %i.fi
  %i.fk = fptoui <16 x float> %i.fj to <16 x i32>
  %i.fl = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.fk, <16 x i32> splat (i32 255))
  %i.fm = trunc nuw <16 x i32> %i.fl to <16 x i8>
  store <16 x i8> %i.fm, ptr %next.gep114, align 1, !tbaa !50
  %index.next116 = add nuw i64 %index113, 16      ; 2 uses
  %i.fn = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.fn, label %middle.block117, label %vector.body112, !llvm.loop !835

middle.block117:                                  ; preds = %vector.body112
  br i1 %cmp.n118, label %._crit_edge52.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block117
  br i1 %min.epilog.iters.check, label %.lr.ph51.i.i.preheader, label %vec.epilog.ph, !prof !409

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec109, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fo = getelementptr i8, ptr %.054.i.i, i64 %n.vec119
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index122 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 2 uses
  %next.gep123 = getelementptr i8, ptr %.054.i.i, i64 %index122 ; 2 uses
  %wide.load124 = load <4 x i8>, ptr %next.gep123, align 1, !tbaa !50
  %i.fp = uitofp <4 x i8> %wide.load124 to <4 x float>
  %i.fq = fmul <4 x float> %broadcast.splat121, %i.fp
  %i.fr = fptoui <4 x float> %i.fq to <4 x i32>
  %i.fs = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fr, <4 x i32> splat (i32 255))
  %i.ft = trunc nuw <4 x i32> %i.fs to <4 x i8>
  store <4 x i8> %i.ft, ptr %next.gep123, align 1, !tbaa !50
  %index.next125 = add nuw i64 %index122, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next125, %n.vec119
  br i1 %i.fu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !836

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n126, label %._crit_edge52.i.i, label %.lr.ph51.i.i.preheader

.lr.ph51.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03749.i.i.ph = phi i32 [ %i.er, %iter.check ], [ %i.fc, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ]
  %.03848.i.i.ph = phi ptr [ %.054.i.i, %iter.check ], [ %i.fh, %vec.epilog.iter.check ], [ %i.fo, %vec.epilog.middle.block ]
  br label %.lr.ph51.i.i

._crit_edge52.i.i:                                ; preds = %.lr.ph51.i.i, %vec.epilog.middle.block, %middle.block117
  %i.fv = icmp sgt i32 %.03953.i.i, 1
  br i1 %i.fv, label %.lr.ph56.splitthread-pre-split.i.i, label %_Z34ImFontAtlasTextureBlockPostProcessP26ImFontAtlasPostProcessData.exit.loopexit, !llvm.loop !13

.lr.ph51.i.i:                                     ; preds = %.lr.ph51.i.i.preheader, %.lr.ph51.i.i
end_hunk_3

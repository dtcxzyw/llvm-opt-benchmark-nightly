Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sclLibScl?download=true
inline.NumInlined: 277
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_SclReadFromGenlib:bb.a
  %i.gh = phi ptr [ %.pre170.i, %.Vec_PtrPush.exit125_crit_edge.i ], [ %.pre171.i, %bb.ay ], [ %i.gf, %Vec_PtrGrow.exit12.sink.split.i121.i ]
  %i.gi = add nsw i32 %i.gg, 1
  store i32 %i.gi, ptr %i.fo, align 4, !tbaa !27
  %i.gj = sext i32 %i.gg to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gj
  store ptr %i.fr, ptr %i.gk, align 8, !tbaa !28
  %i.gl = tail call ptr @Mio_PinReadName(ptr noundef nonnull %.1143.i) #21 ; 3 uses
  %.not.i126.i = icmp eq ptr %i.gl, null
  br i1 %.not.i126.i, label %Abc_UtilStrsav.exit127.i, label %bb.bc

bb.bc:                                            ; preds = %Vec_PtrPush.exit125.i
  %i.gm = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.gl) #22
  %i.gn = add i64 %i.gm, 1
  %i.go = tail call noalias ptr @malloc(i64 noundef %i.gn) #23 ; 2 uses
  %i.gp = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.go, ptr noundef nonnull readonly dereferenceable(1) %i.gl) #21 ; 0 uses
  br label %Abc_UtilStrsav.exit127.i

Abc_UtilStrsav.exit127.i:                         ; preds = %bb.bc, %Vec_PtrPush.exit125.i
  %i.gq = phi ptr [ %i.go, %bb.bc ], [ null, %Vec_PtrPush.exit125.i ]
  store ptr %i.gq, ptr %i.fr, align 8, !tbaa !51
  %i.gr = tail call noalias noundef dereferenceable_or_null(1080) ptr @calloc(i64 noundef 1, i64 noundef 1080) #20 ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fr, i64 12 ; 3 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !27 ; 7 uses
  %i.gv = load i32, ptr %i.gs, align 8, !tbaa !26
  %i.gw = icmp eq i32 %i.gu, %i.gv
  br i1 %i.gw, label %bb.bd, label %Vec_PtrPush.exit135.i

bb.bd:                                            ; preds = %Abc_UtilStrsav.exit127.i
  %i.gx = icmp slt i32 %i.gu, 16
  br i1 %i.gx, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i133.i = icmp eq ptr %i.gz, null
  br i1 %.not9.i.i133.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ha = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.gz, i64 noundef 128) #24
  br label %Vec_PtrGrow.exit.i134.i

bb.bg:                                            ; preds = %bb.be
  %i.hb = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #23
  br label %Vec_PtrGrow.exit.i134.i

Vec_PtrGrow.exit.i134.i:                          ; preds = %bb.bg, %bb.bf
  %i.hc = phi ptr [ %i.ha, %bb.bf ], [ %i.hb, %bb.bg ]
  store ptr %i.hc, ptr %i.gy, align 8, !tbaa !25
  br label %Vec_PtrGrow.exit12.sink.split.i131.i

bb.bh:                                            ; preds = %bb.bd
  %i.hd = icmp samesign ult i32 %i.gu, 1073741823
  %i.he = shl nuw nsw i32 %i.gu, 1
  %spec.select.i128.i = select i1 %i.hd, i32 %i.he, i32 2147483647 ; 3 uses
  %.not.i10.i129.i = icmp samesign ult i32 %i.gu, %spec.select.i128.i
  br i1 %.not.i10.i129.i, label %bb.bi, label %Vec_PtrPush.exit135.i

bb.bi:                                            ; preds = %bb.bh
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !25 ; 2 uses
  %.not9.i11.i130.i = icmp eq ptr %i.hg, null
  %i.hh = zext nneg i32 %spec.select.i128.i to i64
  %i.hi = shl nuw nsw i64 %i.hh, 3                ; 2 uses
  br i1 %.not9.i11.i130.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hj = tail call ptr @realloc(ptr noundef nonnull %i.hg, i64 noundef %i.hi) #24
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.hk = tail call noalias ptr @malloc(i64 noundef %i.hi) #23
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.hl = phi ptr [ %i.hj, %bb.bj ], [ %i.hk, %bb.bk ]
  store ptr %i.hl, ptr %i.hf, align 8, !tbaa !25
  br label %Vec_PtrGrow.exit12.sink.split.i131.i

Vec_PtrGrow.exit12.sink.split.i131.i:             ; preds = %bb.bl, %Vec_PtrGrow.exit.i134.i
  %spec.select.sink.i132.i = phi i32 [ %spec.select.i128.i, %bb.bl ], [ 16, %Vec_PtrGrow.exit.i134.i ]
  store i32 %spec.select.sink.i132.i, ptr %i.gs, align 8, !tbaa !26
  %.pre173.i = load i32, ptr %i.gt, align 4, !tbaa !27
  br label %Vec_PtrPush.exit135.i

Vec_PtrPush.exit135.i:                            ; preds = %Vec_PtrGrow.exit12.sink.split.i131.i, %bb.bh, %Abc_UtilStrsav.exit127.i
  %i.hm = phi i32 [ %i.gu, %Abc_UtilStrsav.exit127.i ], [ %i.gu, %bb.bh ], [ %.pre173.i, %Vec_PtrGrow.exit12.sink.split.i131.i ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !25
  %i.hp = add nsw i32 %i.hm, 1
  store i32 %i.hp, ptr %i.gt, align 4, !tbaa !27
  %i.hq = sext i32 %i.hm to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.hq
  store ptr %i.gr, ptr %i.hr, align 8, !tbaa !28
  %i.hs = icmp ult i32 %i.fq, 3
  br i1 %i.hs, label %switch.lookup.i, label %bb.bm

switch.lookup.i:                                  ; preds = %Vec_PtrPush.exit135.i
  %switch.offset.i = sub nuw nsw i32 3, %i.fq
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i32 %switch.offset.i, ptr %i.ht, align 8, !tbaa !57
  br label %bb.bm

bb.bm:                                            ; preds = %switch.lookup.i, %Vec_PtrPush.exit135.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  tail call fastcc void @Abc_SclReadSurfaceGenlib(ptr noundef nonnull %i.hu)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gr, i64 200
  tail call fastcc void @Abc_SclReadSurfaceGenlib(ptr noundef nonnull %i.hv)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gr, i64 376
  tail call fastcc void @Abc_SclReadSurfaceGenlib(ptr noundef nonnull %i.hw)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gr, i64 552
  tail call fastcc void @Abc_SclReadSurfaceGenlib(ptr noundef nonnull %i.hx)
  %i.hy = tail call ptr @Mio_PinReadNext(ptr noundef nonnull %.1143.i) #21 ; 2 uses
  %.not88.i = icmp eq ptr %i.hy, null
  br i1 %.not88.i, label %._crit_edge146.i, label %bb.at, !llvm.loop !86

._crit_edge146.i:                                 ; preds = %bb.bm, %._crit_edge.i
  %i.hz = add nuw nsw i32 %.084147.i, 1           ; 2 uses
  %i.ia = load i32, ptr %i.aw, align 4, !tbaa !34
  %i.ib = icmp slt i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.w, label %._crit_edge149.i, !llvm.loop !87

._crit_edge149.i:                                 ; preds = %._crit_edge146.i, %.preheader.i
  %i.ic = tail call ptr @Mio_GateReadNext(ptr noundef nonnull %.0151.i) #21 ; 2 uses
  %.not.i = icmp eq ptr %i.ic, null
  br i1 %.not.i, label %Abc_SclReadLibraryGenlib.exit, label %bb.c, !llvm.loop !88

Abc_SclReadLibraryGenlib.exit:                    ; preds = %._crit_edge149.i, %Abc_UtilStrsav.exit.i
  tail call void @Abc_SclHashCells(ptr noundef nonnull %i.a) #21
  tail call void @Abc_SclLinkCells(ptr noundef nonnull %i.a) #21
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @Abc_SclHashCells(ptr noundef) local_unnamed_addr #2

declare void @Abc_SclLinkCells(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_SclReadFromStr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !36
  %i.b = tail call noalias dereferenceable_or_null(152) ptr @calloc(i64 noundef 1, i64 noundef 152) #20 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store float -1.000000e+00, ptr %i.c, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  store i32 9, ptr %i.d, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  store i32 12, ptr %i.f, align 4, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr i8, ptr %0, i64 8          ; 16 uses
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !60 ; 24 uses
  %i.i = load i8, ptr %.val.i.i, align 1, !tbaa !61 ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %.not8.i.i = icmp sgt i8 %i.i, -1
  br i1 %.not8.i.i, label %Vec_StrGetI.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 1, %bb.a ] ; 2 uses
  %i.k = phi i32 [ %i.s, %.lr.ph.i.i ], [ %i.j, %bb.a ]
  %.010.i.i = phi i32 [ %i.p, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.079.i.i = phi i32 [ %i.m, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.l = and i32 %i.k, 127
  %i.m = add nuw nsw i32 %.079.i.i, 1             ; 2 uses
  %i.n = mul nuw nsw i32 %.079.i.i, 7
  %i.o = shl i32 %i.l, %i.n
  %i.p = or i32 %i.o, %.010.i.i                   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %indvars.iv.i.i
  %i.r = load i8, ptr %i.q, align 1, !tbaa !61    ; 2 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %.not.i.i = icmp sgt i8 %i.r, -1
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.t = mul nuw nsw i32 %i.m, 7
  br label %Vec_StrGetI.exit.i

Vec_StrGetI.exit.i:                               ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.u = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.i, %._crit_edge.loopexit.i.i ] ; 4 uses
  %.07.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.t, %._crit_edge.loopexit.i.i ]
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.p, %._crit_edge.loopexit.i.i ]
  %.lcssa.i.i = phi i32 [ %i.j, %bb.a ], [ %i.s, %._crit_edge.loopexit.i.i ]
  %i.v = shl i32 %.lcssa.i.i, %.07.lcssa.i.i
  %i.w = or i32 %i.v, %.0.lcssa.i.i
  %.not.i = icmp eq i32 %i.w, 10
  br i1 %.not.i, label %.preheader.preheader, label %Abc_SclReadLibrary.exit

.preheader.preheader:                             ; preds = %Vec_StrGetI.exit.i
  %scevgep = getelementptr i8, ptr %.val.i.i, i64 %i.u ; 3 uses
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep) ; 3 uses
  %i.x = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %scevgep) #22
  %i.y = add i64 %i.x, 1
  %i.z = tail call noalias noundef ptr @malloc(i64 noundef %i.y) #23 ; 2 uses
  %i.aa = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull readonly dereferenceable(1) %scevgep) #21 ; 0 uses
  store ptr %i.z, ptr %i.b, align 8, !tbaa !17
  %i.ab = getelementptr i8, ptr %.val.i.i, i64 %strlen
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.u
  %scevgep150 = getelementptr i8, ptr %i.ac, i64 1 ; 3 uses
  %strlen151 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep150) ; 2 uses
  %i.ad = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %scevgep150) #22
  %i.ae = add i64 %i.ad, 1
  %i.af = tail call noalias noundef ptr @malloc(i64 noundef %i.ae) #23 ; 2 uses
  %i.ag = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull readonly dereferenceable(1) %scevgep150) #21 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !62
  %1 = getelementptr i8, ptr %.val.i.i, i64 %strlen
  %i.ai = getelementptr i8, ptr %1, i64 %strlen151
  %i.aj = getelementptr i8, ptr %i.ai, i64 %i.u
  %scevgep152 = getelementptr i8, ptr %i.aj, i64 2 ; 3 uses
  %strlen153 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep152)
  %2 = add i64 %strlen, %strlen153
  %i.ak = add i64 %2, %strlen151
  %i.al = add i64 %i.ak, %i.u                     ; 5 uses
  %i.am = add i64 %i.al, 3                        ; 2 uses
  %i.an = trunc nsw i64 %i.am to i32
  %i.ao = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %scevgep152) #22
  %i.ap = add i64 %i.ao, 1
  %i.aq = tail call noalias noundef ptr @malloc(i64 noundef %i.ap) #23 ; 2 uses
  %i.ar = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull readonly dereferenceable(1) %scevgep152) #21 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !63
  %i.at = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.am
  %i.au = load i8, ptr %i.at, align 1, !tbaa !61
  %.sroa.0.0.insert.ext.i.i = zext i8 %i.au to i32
  %i.av = shl i64 %i.al, 32
  %sext275 = add i64 %i.av, 17179869184
  %i.aw = ashr exact i64 %sext275, 32
  %i.ax = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !61
  %.sroa.0.1.insert.ext.i.i = zext i8 %i.ay to i32
  %.sroa.0.1.insert.shift.i.i = shl nuw nsw i32 %.sroa.0.1.insert.ext.i.i, 8
  %.sroa.0.1.insert.insert.i.i = or disjoint i32 %.sroa.0.1.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.az = shl i64 %i.al, 32
  %sext276 = add i64 %i.az, 21474836480
  %i.ba = ashr exact i64 %sext276, 32
  %i.bb = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !61
  %.sroa.0.2.insert.ext.i.i = zext i8 %i.bc to i32
  %.sroa.0.2.insert.shift.i.i = shl nuw nsw i32 %.sroa.0.2.insert.ext.i.i, 16
  %.sroa.0.2.insert.insert.i.i = or disjoint i32 %.sroa.0.1.insert.insert.i.i, %.sroa.0.2.insert.shift.i.i
  %i.bd = shl i64 %i.al, 32
  %sext277 = add i64 %i.bd, 25769803776
  %i.be = ashr exact i64 %sext277, 32
  %i.bf = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !61
  %.sroa.0.3.insert.ext.i.i = zext i8 %i.bg to i32
  %.sroa.0.3.insert.shift.i.i = shl nuw i32 %.sroa.0.3.insert.ext.i.i, 24
  %.sroa.0.3.insert.insert.i.i = or disjoint i32 %.sroa.0.2.insert.insert.i.i, %.sroa.0.3.insert.shift.i.i
  store i32 %.sroa.0.3.insert.insert.i.i, ptr %i.c, align 8, !tbaa !58
  %i.bh = add i32 %i.an, 5                        ; 2 uses
  %i.bi = shl i64 %i.al, 32
  %sext278 = add i64 %i.bi, 30064771072
  %i.bj = ashr exact i64 %sext278, 32
  %i.bk = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !61  ; 2 uses
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %.not8.i267.i = icmp sgt i8 %i.bl, -1
  br i1 %.not8.i267.i, label %Vec_StrGetI.exit279.i, label %.lr.ph.preheader.i268.i

.lr.ph.preheader.i268.i:                          ; preds = %.preheader.preheader
  %i.bn = sext i32 %i.bh to i64
  br label %.lr.ph.i269.i

.lr.ph.i269.i:                                    ; preds = %.lr.ph.i269.i, %.lr.ph.preheader.i268.i
  %indvars.iv.i270.i = phi i64 [ %i.bn, %.lr.ph.preheader.i268.i ], [ %indvars.iv.next.i273.i, %.lr.ph.i269.i ] ; 2 uses
  %i.bo = phi i32 [ %i.bm, %.lr.ph.preheader.i268.i ], [ %i.bw, %.lr.ph.i269.i ]
  %.010.i271.i = phi i32 [ 0, %.lr.ph.preheader.i268.i ], [ %i.bt, %.lr.ph.i269.i ]
  %.079.i272.i = phi i32 [ 0, %.lr.ph.preheader.i268.i ], [ %i.bq, %.lr.ph.i269.i ] ; 2 uses
  %i.bp = and i32 %i.bo, 127
  %i.bq = add nuw nsw i32 %.079.i272.i, 1         ; 2 uses
  %i.br = mul nuw nsw i32 %.079.i272.i, 7
  %i.bs = shl i32 %i.bp, %i.br
  %i.bt = or i32 %i.bs, %.010.i271.i              ; 2 uses
  %indvars.iv.next.i273.i = add nsw i64 %indvars.iv.i270.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.val.i.i, i64 %indvars.iv.i270.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !61  ; 2 uses
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %.not.i274.i = icmp sgt i8 %i.bv, -1
  br i1 %.not.i274.i, label %._crit_edge.loopexit.i275.i, label %.lr.ph.i269.i, !llvm.loop !0

._crit_edge.loopexit.i275.i:                      ; preds = %.lr.ph.i269.i
  %i.bx = trunc nsw i64 %indvars.iv.next.i273.i to i32
  %i.by = mul nuw nsw i32 %i.bq, 7
  br label %Vec_StrGetI.exit279.i

Vec_StrGetI.exit279.i:                            ; preds = %._crit_edge.loopexit.i275.i, %.preheader.preheader
  %i.bz = phi i32 [ %i.bh, %.preheader.preheader ], [ %i.bx, %._crit_edge.loopexit.i275.i ] ; 6 uses
  %.07.lcssa.i276.i = phi i32 [ 0, %.preheader.preheader ], [ %i.by, %._crit_edge.loopexit.i275.i ]
  %.0.lcssa.i277.i = phi i32 [ 0, %.preheader.preheader ], [ %i.bt, %._crit_edge.loopexit.i275.i ]
  %.lcssa.i278.i = phi i32 [ %i.bm, %.preheader.preheader ], [ %i.bw, %._crit_edge.loopexit.i275.i ]
  %i.ca = shl i32 %.lcssa.i278.i, %.07.lcssa.i276.i
  %i.cb = or i32 %i.ca, %.0.lcssa.i277.i
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !18
  %i.cc = sext i32 %i.bz to i64
  %i.cd = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !61
  %.sroa.0.0.insert.ext.i280.i = zext i8 %i.ce to i32
  %i.cf = sext i32 %i.bz to i64
  %i.cg = getelementptr i8, ptr %.val.i.i, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !61
  %.sroa.0.1.insert.ext.i281.i = zext i8 %i.ci to i32
  %.sroa.0.1.insert.shift.i282.i = shl nuw nsw i32 %.sroa.0.1.insert.ext.i281.i, 8
  %.sroa.0.1.insert.insert.i283.i = or disjoint i32 %.sroa.0.1.insert.shift.i282.i, %.sroa.0.0.insert.ext.i280.i
  %i.cj = sext i32 %i.bz to i64
  %i.ck = getelementptr i8, ptr %.val.i.i, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !61
  %.sroa.0.2.insert.ext.i284.i = zext i8 %i.cm to i32
  %.sroa.0.2.insert.shift.i285.i = shl nuw nsw i32 %.sroa.0.2.insert.ext.i284.i, 16
  %.sroa.0.2.insert.insert.i286.i = or disjoint i32 %.sroa.0.1.insert.insert.i283.i, %.sroa.0.2.insert.shift.i285.i
  %i.cn = sext i32 %i.bz to i64
  %i.co = getelementptr i8, ptr %.val.i.i, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 3
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !61
  %.sroa.0.3.insert.ext.i287.i = zext i8 %i.cq to i32
  %.sroa.0.3.insert.shift.i288.i = shl nuw i32 %.sroa.0.3.insert.ext.i287.i, 24
  %.sroa.0.3.insert.insert.i289.i = or disjoint i32 %.sroa.0.2.insert.insert.i286.i, %.sroa.0.3.insert.shift.i288.i
  store i32 %.sroa.0.3.insert.insert.i289.i, ptr %i.e, align 8, !tbaa !19
  %i.cr = add i32 %i.bz, 5                        ; 2 uses
  %i.cs = sext i32 %i.bz to i64
  %i.ct = getelementptr i8, ptr %.val.i.i, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 4
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !61  ; 2 uses
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %.not8.i292.i = icmp sgt i8 %i.cv, -1
  br i1 %.not8.i292.i, label %Vec_StrGetI.exit304.i, label %.lr.ph.preheader.i293.i

.lr.ph.preheader.i293.i:                          ; preds = %Vec_StrGetI.exit279.i
  %i.cx = sext i32 %i.cr to i64
  br label %.lr.ph.i294.i

.lr.ph.i294.i:                                    ; preds = %.lr.ph.i294.i, %.lr.ph.preheader.i293.i
  %indvars.iv.i295.i = phi i64 [ %i.cx, %.lr.ph.preheader.i293.i ], [ %indvars.iv.next.i298.i, %.lr.ph.i294.i ] ; 2 uses
  %i.cy = phi i32 [ %i.cw, %.lr.ph.preheader.i293.i ], [ %i.dg, %.lr.ph.i294.i ]
  %.010.i296.i = phi i32 [ 0, %.lr.ph.preheader.i293.i ], [ %i.dd, %.lr.ph.i294.i ]
  %.079.i297.i = phi i32 [ 0, %.lr.ph.preheader.i293.i ], [ %i.da, %.lr.ph.i294.i ] ; 2 uses
  %i.cz = and i32 %i.cy, 127
  %i.da = add nuw nsw i32 %.079.i297.i, 1         ; 2 uses
  %i.db = mul nuw nsw i32 %.079.i297.i, 7
  %i.dc = shl i32 %i.cz, %i.db
  %i.dd = or i32 %i.dc, %.010.i296.i              ; 2 uses
  %indvars.iv.next.i298.i = add nsw i64 %indvars.iv.i295.i, 1 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.val.i.i, i64 %indvars.iv.i295.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !61  ; 2 uses
  %i.dg = zext i8 %i.df to i32                    ; 2 uses
  %.not.i299.i = icmp sgt i8 %i.df, -1
  br i1 %.not.i299.i, label %._crit_edge.loopexit.i300.i, label %.lr.ph.i294.i, !llvm.loop !0

._crit_edge.loopexit.i300.i:                      ; preds = %.lr.ph.i294.i
  %i.dh = trunc nsw i64 %indvars.iv.next.i298.i to i32
  %i.di = mul nuw nsw i32 %i.da, 7
  br label %Vec_StrGetI.exit304.i

Vec_StrGetI.exit304.i:                            ; preds = %._crit_edge.loopexit.i300.i, %Vec_StrGetI.exit279.i
  %i.dj = phi i32 [ %i.cr, %Vec_StrGetI.exit279.i ], [ %i.dh, %._crit_edge.loopexit.i300.i ] ; 6 uses
  %.07.lcssa.i301.i = phi i32 [ 0, %Vec_StrGetI.exit279.i ], [ %i.di, %._crit_edge.loopexit.i300.i ]
  %.0.lcssa.i302.i = phi i32 [ 0, %Vec_StrGetI.exit279.i ], [ %i.dd, %._crit_edge.loopexit.i300.i ]
  %.lcssa.i303.i = phi i32 [ %i.cw, %Vec_StrGetI.exit279.i ], [ %i.dg, %._crit_edge.loopexit.i300.i ]
  %i.dk = shl i32 %.lcssa.i303.i, %.07.lcssa.i301.i
  %i.dl = or i32 %i.dk, %.0.lcssa.i302.i
  store i32 %i.dl, ptr %i.f, align 4, !tbaa !20
  %i.dm = sext i32 %i.dj to i64
  %i.dn = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !61
  %.sroa.0.0.insert.ext.i305.i = zext i8 %i.do to i32
  %i.dp = sext i32 %i.dj to i64
  %i.dq = getelementptr i8, ptr %.val.i.i, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !61
  %.sroa.0.1.insert.ext.i306.i = zext i8 %i.ds to i32
  %.sroa.0.1.insert.shift.i307.i = shl nuw nsw i32 %.sroa.0.1.insert.ext.i306.i, 8
  %.sroa.0.1.insert.insert.i308.i = or disjoint i32 %.sroa.0.1.insert.shift.i307.i, %.sroa.0.0.insert.ext.i305.i
  %i.dt = add nsw i32 %i.dj, 3                    ; 2 uses
  store i32 %i.dt, ptr %i.a, align 4, !tbaa !36
  %i.du = sext i32 %i.dj to i64
  %i.dv = getelementptr i8, ptr %.val.i.i, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !61
  %.sroa.0.2.insert.ext.i309.i = zext i8 %i.dx to i32
  %.sroa.0.2.insert.shift.i310.i = shl nuw nsw i32 %.sroa.0.2.insert.ext.i309.i, 16
  %.sroa.0.2.insert.insert.i311.i = or disjoint i32 %.sroa.0.1.insert.insert.i308.i, %.sroa.0.2.insert.shift.i310.i
  %i.dy = sext i32 %i.dt to i64
  %i.dz = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !61
  %.sroa.0.3.insert.ext.i312.i = zext i8 %i.ea to i32
  %.sroa.0.3.insert.shift.i313.i = shl nuw i32 %.sroa.0.3.insert.ext.i312.i, 24
  %.sroa.0.3.insert.insert.i314.i = or disjoint i32 %.sroa.0.2.insert.insert.i311.i, %.sroa.0.3.insert.shift.i313.i
  store i32 %.sroa.0.3.insert.insert.i314.i, ptr %i.g, align 8, !tbaa !21
  %i.eb = add i32 %i.dj, 5                        ; 2 uses
  %i.ec = sext i32 %i.dj to i64
  %i.ed = getelementptr i8, ptr %.val.i.i, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !61  ; 2 uses
  %i.eg = zext i8 %i.ef to i32                    ; 2 uses
  %.not8.i317.i = icmp sgt i8 %i.ef, -1
  br i1 %.not8.i317.i, label %Vec_StrGetI.exit329.i, label %.lr.ph.preheader.i318.i

.lr.ph.preheader.i318.i:                          ; preds = %Vec_StrGetI.exit304.i
  %i.eh = sext i32 %i.eb to i64
  br label %.lr.ph.i319.i

.lr.ph.i319.i:                                    ; preds = %.lr.ph.i319.i, %.lr.ph.preheader.i318.i
  %indvars.iv.i320.i = phi i64 [ %i.eh, %.lr.ph.preheader.i318.i ], [ %indvars.iv.next.i323.i, %.lr.ph.i319.i ] ; 2 uses
  %i.ei = phi i32 [ %i.eg, %.lr.ph.preheader.i318.i ], [ %i.eq, %.lr.ph.i319.i ]
  %.010.i321.i = phi i32 [ 0, %.lr.ph.preheader.i318.i ], [ %i.en, %.lr.ph.i319.i ]
  %.079.i322.i = phi i32 [ 0, %.lr.ph.preheader.i318.i ], [ %i.ek, %.lr.ph.i319.i ] ; 2 uses
  %i.ej = and i32 %i.ei, 127
  %i.ek = add nuw nsw i32 %.079.i322.i, 1         ; 2 uses
  %i.el = mul nuw nsw i32 %.079.i322.i, 7
  %i.em = shl i32 %i.ej, %i.el
  %i.en = or i32 %i.em, %.010.i321.i              ; 2 uses
end_hunk_0

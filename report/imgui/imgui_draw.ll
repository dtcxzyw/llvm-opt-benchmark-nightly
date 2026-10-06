Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_Z22ImFontAtlasPackAddRectP11ImFontAtlasiiP20ImFontAtlasRectEntry:bb.a
  %i.gg = sitofp i32 %i.gf to float
  %i.gh = fmul nnan float %i.gg, 2.000000e-01
  %i.gi = fcmp ogt float %i.gh, %i.gd
  br i1 %i.gi, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_Z28ImFontAtlasBuildDiscardBakesP11ImFontAtlasi.exit
  tail call void @_Z22ImFontAtlasTextureGrowP11ImFontAtlasii(ptr noundef nonnull %0, i32 noundef -1, i32 noundef -1), !inline_history !709
  br label %_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas.exit

bb.aq:                                            ; preds = %_Z28ImFontAtlasBuildDiscardBakesP11ImFontAtlasi.exit
  %i.gj = load ptr, ptr %i.v, align 8, !tbaa !332 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 36
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !311
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !312
  tail call void @_Z24ImFontAtlasTextureRepackP11ImFontAtlasii(ptr noundef nonnull %0, i32 noundef %i.gl, i32 noundef %i.gn), !inline_history !709
  br label %_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas.exit

_Z27ImFontAtlasTextureMakeSpaceP11ImFontAtlas.exit: ; preds = %bb.ap, %bb.aq
  %i.go = add nsw i32 %.04586, -1
  br label %.preheader55.split.split.i

.thread:                                          ; preds = %.preheader.split58.us.i, %bb.a, %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread66.split.loopexit
  %.sroa.058.179 = phi i16 [ %i.en, %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread66.split.loopexit ], [ 0, %bb.a ], [ -1, %.preheader.split58.us.i ] ; 2 uses
  %.sroa.6.178.in = phi i32 [ %i.dp, %_ZL16stbrp_pack_rectsP13stbrp_contextP10stbrp_recti.exit.thread66.split.loopexit ], [ 0, %bb.a ], [ %i.dp, %.preheader.split58.us.i ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !710
  %i.gr = zext i16 %.sroa.058.179 to i32
  %i.gs = and i32 %1, 65535                       ; 2 uses
  %i.gt = add i32 %i.d, %i.gs
  %i.gu = add i32 %i.gt, %i.gr
  %i.gv = tail call noundef i32 @llvm.smax.i32(i32 %i.gq, i32 %i.gu)
  store i32 %i.gv, ptr %i.gp, align 8, !tbaa !710
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 180 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !711
  %i.gy = and i32 %.sroa.6.178.in, 65535
  %i.gz = and i32 %2, 65535                       ; 2 uses
  %i.ha = add i32 %i.d, %i.gz
  %i.hb = add i32 %i.ha, %i.gy
  %i.hc = tail call noundef i32 @llvm.smax.i32(i32 %i.gx, i32 %i.hb)
  store i32 %i.hc, ptr %i.gw, align 4, !tbaa !711
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !461
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !461
  %i.hg = mul nsw i32 %i.k, %i.l
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !460
  %i.hj = add nsw i32 %i.hi, %i.hg
  store i32 %i.hj, ptr %i.hh, align 8, !tbaa !460
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 5 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !395 ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !394
  %i.ho = icmp eq i32 %i.hl, %i.hn
  br i1 %i.ho, label %bb.ar, label %._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i: ; preds = %.thread
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !331
  br label %_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit

bb.ar:                                            ; preds = %.thread
  %i.hp = add nsw i32 %i.hl, 1
  %.not.i.i53 = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i53, label %_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hq = sdiv i32 %i.hl, 2
  %i.hr = add nsw i32 %i.hq, %i.hl
  br label %_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i

_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i: ; preds = %bb.as, %bb.ar
  %i.hs = phi i32 [ %i.hr, %bb.as ], [ 8, %bb.ar ]
  %i.ht = tail call noundef i32 @llvm.smax.i32(i32 %i.hs, i32 %i.hp) ; 2 uses
  %i.hu = sext i32 %i.ht to i64
  %i.hv = shl nsw i64 %i.hu, 3
  %i.hw = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.hv) ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !331 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.hy, null
  br i1 %.not6.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i
  %i.hz = load i32, ptr %i.hk, align 8, !tbaa !395
  %i.ia = sext i32 %i.hz to i64
  %i.ib = shl nsw i64 %i.ia, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.hw, ptr nonnull align 2 %i.hy, i64 %i.ib, i1 false)
  %i.ic = load ptr, ptr %i.hx, align 8, !tbaa !331
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ic)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !331
  store i32 %i.ht, ptr %i.hm, align 4, !tbaa !394
  %.pre3.i = load i32, ptr %i.hk, align 8, !tbaa !395
  br label %_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit

_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i, %bb.au
  %i.id = phi i32 [ %i.hl, %._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.au ]
  %i.ie = phi ptr [ %.pre.i, %._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i ], [ %i.hw, %bb.au ]
  %i.if = sext i32 %i.id to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.if
  %.sroa.1160.0.insert.ext = zext nneg i32 %i.gz to i64
  %.sroa.1160.0.insert.shift = shl nuw i64 %.sroa.1160.0.insert.ext, 48
  %.sroa.9.0.insert.ext = zext nneg i32 %i.gs to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 32
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.1160.0.insert.shift, %.sroa.9.0.insert.shift
  %i.ih = shl i32 %.sroa.6.178.in, 16
  %.sroa.6.0.insert.shift = zext i32 %i.ih to i64
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.6.0.insert.shift
  %.sroa.058.0.insert.ext = zext i16 %.sroa.058.179 to i64
  %.sroa.058.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.058.0.insert.ext
  store i64 %.sroa.058.0.insert.insert, ptr %i.ig, align 2
  %i.ii = load i32, ptr %i.hk, align 8, !tbaa !395 ; 2 uses
  %i.ij = add nsw i32 %i.ii, 1
  store i32 %i.ij, ptr %i.hk, align 8, !tbaa !395
  %.not52 = icmp eq ptr %3, null
  %.val = load ptr, ptr %i.a, align 8, !tbaa !339 ; 7 uses
  br i1 %.not52, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !712
  %i.im = add i32 %i.il, 1048575
  %i.in = load i32, ptr %3, align 4               ; 2 uses
  %i.io = and i32 %i.im, 1048575
  %i.ip = and i32 %i.in, -1048576
  %i.iq = or disjoint i32 %i.ip, %i.io
  store i32 %i.iq, ptr %3, align 4
  %i.ir = load ptr, ptr %i.a, align 8, !tbaa !339
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 120
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !439
  %i.iu = ptrtoint ptr %3 to i64
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = lshr exact i64 %i.iw, 2
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = and i32 %i.in, 1072693248
  %i.ja = or i32 %i.iz, %i.iy
  br label %.thread80

bb.aw:                                            ; preds = %_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !424 ; 3 uses
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  %i.je = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 3 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !438 ; 4 uses
  %i.jg = add nsw i32 %i.jf, 1                    ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.val, i64 116 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !462 ; 4 uses
  %.not.i = icmp slt i32 %i.jf, %i.ji
  br i1 %.not.i, label %._ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit_crit_edge.i, label %bb.ay

._ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit_crit_edge.i: ; preds = %bb.ax
  %.phi.trans.insert.i54 = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %.pre.i55 = load ptr, ptr %.phi.trans.insert.i54, align 8, !tbaa !439
  br label %_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i.i = icmp eq i32 %i.ji, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI20ImFontAtlasRectEntryE14_grow_capacityEi.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jj = sdiv i32 %i.ji, 2
  %i.jk = add nsw i32 %i.jj, %i.ji
  br label %_ZNK8ImVectorI20ImFontAtlasRectEntryE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI20ImFontAtlasRectEntryE14_grow_capacityEi.exit.i.i: ; preds = %bb.az, %bb.ay
  %i.jl = phi i32 [ %i.jk, %bb.az ], [ 8, %bb.ay ]
  %i.jm = tail call noundef i32 @llvm.smax.i32(i32 %i.jl, i32 %i.jg) ; 2 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = shl nsw i64 %i.jn, 2
  %i.jp = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.jo) ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !439 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.jr, null
  br i1 %.not6.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNK8ImVectorI20ImFontAtlasRectEntryE14_grow_capacityEi.exit.i.i
  %i.js = load i32, ptr %i.je, align 8, !tbaa !463
  %i.jt = sext i32 %i.js to i64
  %i.ju = shl nsw i64 %i.jt, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jp, ptr nonnull align 4 %i.jr, i64 %i.ju, i1 false)
  %i.jv = load ptr, ptr %i.jq, align 8, !tbaa !439
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.jv)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNK8ImVectorI20ImFontAtlasRectEntryE14_grow_capacityEi.exit.i.i
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !439
  store i32 %i.jm, ptr %i.jh, align 4, !tbaa !462
  br label %_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i

_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i: ; preds = %bb.bb, %._ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit_crit_edge.i
  %i.jw = phi ptr [ %.pre.i55, %._ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit_crit_edge.i ], [ %i.jp, %bb.bb ]
  store i32 %i.jg, ptr %i.je, align 8, !tbaa !463
  %i.jx = sext i32 %i.jf to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.jx
  br label %_ZL29ImFontAtlasPackAllocRectEntryP11ImFontAtlasi.exit

bb.bc:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !439
  %i.kb = zext nneg i32 %i.jc to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.kb ; 3 uses
  %i.kd = load i32, ptr %i.kc, align 4
  %i.ke = shl i32 %i.kd, 12
  %i.kf = ashr exact i32 %i.ke, 12
  store i32 %i.kf, ptr %i.jb, align 8, !tbaa !424
  %.pre1.i = load i32, ptr %i.kc, align 4
  br label %_ZL29ImFontAtlasPackAllocRectEntryP11ImFontAtlasi.exit

_ZL29ImFontAtlasPackAllocRectEntryP11ImFontAtlasi.exit: ; preds = %_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i, %bb.bc
  %i.kg = phi i32 [ 0, %_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i ], [ %.pre1.i, %bb.bc ] ; 2 uses
  %.017.i = phi i32 [ %i.jf, %_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i ], [ %i.jc, %bb.bc ]
  %.0.i = phi ptr [ %i.jy, %_ZN8ImVectorI20ImFontAtlasRectEntryE6resizeEi.exit.i ], [ %i.kc, %bb.bc ]
  %i.kh = and i32 %i.ii, 1048575
  %i.ki = and i32 %i.kg, -1074790400
  %i.kj = or disjoint i32 %i.kh, %i.ki
  %i.kk = or disjoint i32 %i.kj, 1073741824
  store i32 %i.kk, ptr %.0.i, align 4
  %i.kl = and i32 %i.kg, 1072693248
  %i.km = or i32 %i.kl, %.017.i
  br label %.thread80

.thread80:                                        ; preds = %bb.ai, %bb.ah, %bb.ag, %_ZL29ImFontAtlasPackAllocRectEntryP11ImFontAtlasi.exit, %bb.av
  %.3 = phi i32 [ %i.ja, %bb.av ], [ %i.km, %_ZL29ImFontAtlasPackAllocRectEntryP11ImFontAtlasi.exit ], [ -1, %bb.ag ], [ -1, %bb.ah ], [ -1, %bb.ai ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK11ImFontAtlas13GetCustomRectEiP15ImFontAtlasRect(ptr noundef nonnull align 8 dereferenceable(760) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %1, 524287                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull %0), !inline_history !464
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !339
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load i32, ptr %i.g, align 8, !tbaa !438
  %.not.i = icmp slt i32 %i.b, %i.h
  br i1 %.not.i, label %bb.e, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !439
  %i.k = zext nneg i32 %i.b to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = xor i32 %i.m, %1
  %i.o = and i32 %i.n, 1072693248
  %.not16.i = icmp ne i32 %i.o, 0
  %i.p = and i32 %i.m, 1073741824
  %.not17.i = icmp eq i32 %i.p, 0
  %or.cond30 = or i1 %.not17.i, %.not16.i
  br i1 %or.cond30, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.thread, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit

_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !331  ; 2 uses
  %i.s = icmp ne ptr %i.r, null                   ; 2 uses
  %i.t = icmp ne ptr %2, null
  %or.cond.not = and i1 %i.t, %i.s
  br i1 %or.cond.not, label %bb.f, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.thread

bb.f:                                             ; preds = %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit
  %i.u = shl i32 %i.m, 12
  %i.v = ashr exact i32 %i.u, 12
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.w
  %i.y = load <4 x i16>, ptr %i.x, align 2, !tbaa !243 ; 3 uses
  store <4 x i16> %i.y, ptr %2, align 4, !tbaa !243
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.aa = shufflevector <4 x i16> %i.y, <4 x i16> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ab = uitofp <2 x i16> %i.aa to <2 x float>
  %i.ac = load <2 x float>, ptr %i.z, align 4, !tbaa !29
  %i.ad = fmul <2 x float> %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %i.ad, ptr %i.ae, align 4, !tbaa !29
  %i.af = zext <2 x i16> %i.aa to <2 x i32>
  %i.ag = shufflevector <4 x i16> %i.y, <4 x i16> poison, <2 x i32> <i32 2, i32 3>
  %i.ah = zext <2 x i16> %i.ag to <2 x i32>
  %i.ai = add nuw nsw <2 x i32> %i.ah, %i.af
  %i.aj = uitofp nneg <2 x i32> %i.ai to <2 x float>
  %i.ak = load <2 x float>, ptr %i.z, align 4, !tbaa !29
  %i.al = fmul <2 x float> %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x float> %i.al, ptr %i.am, align 4, !tbaa !29
  br label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.thread

_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.thread: ; preds = %bb.e, %bb.d, %bb.a, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit, %bb.f
  %i.an = phi i1 [ true, %bb.f ], [ %i.s, %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.e ]
  ret i1 %i.an
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @_Z22ImFontAtlasPackGetRectP11ImFontAtlasi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #26 {
bb.a:
  %i.a = and i32 %1, 524287
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !339  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !439
  %i.f = zext nneg i32 %i.a to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4
  %i.i = shl i32 %i.h, 12
  %i.j = ashr exact i32 %i.i, 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !331
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  ret ptr %i.n
}

; Function Attrs: mustprogress uwtable
define void @_ZN11ImFontAtlas16RemoveCustomRectEi(ptr noundef nonnull align 8 dereferenceable(760) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %1, 524287                       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339  ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull %0), !inline_history !464
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !339
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load i32, ptr %i.g, align 8, !tbaa !438
  %.not.i = icmp slt i32 %i.b, %i.h
  br i1 %.not.i, label %bb.e, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !439
  %i.k = zext nneg i32 %i.b to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %i.n = xor i32 %i.m, %1
  %i.o = and i32 %i.n, 1072693248
  %.not16.i = icmp ne i32 %i.o, 0
  %i.p = and i32 %i.m, 1073741824
  %.not17.i = icmp eq i32 %i.p, 0
  %or.cond.i = or i1 %.not17.i, %.not16.i
  br i1 %or.cond.i, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.thread, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit

_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !331  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit.thread, label %bb.f

bb.f:                                             ; preds = %_Z26ImFontAtlasPackGetRectSafeP11ImFontAtlasi.exit
  %i.t = shl i32 %i.m, 12
  %i.u = ashr exact i32 %i.t, 12
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.v ; 2 uses
  %i.x = and i32 %i.m, -1073741825
  store i32 %i.x, ptr %i.l, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !424
  %i.aa = and i32 %i.z, 1048575
  %i.ab = and i32 %i.m, -2147483648
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = add i32 %i.m, 1048576
  %i.ae = and i32 %i.ad, 1072693248               ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  %storemerge.v.i = select i1 %i.af, i32 1048576, i32 %i.ae
  %storemerge.i = or disjoint i32 %i.ac, %storemerge.v.i
  store i32 %storemerge.i, ptr %i.l, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !444 ; 2 uses
  store i32 %i.b, ptr %i.y, align 8, !tbaa !424
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 156 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !385
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !385
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL40ImGui_ImplStbTrueType_FontBakedLoadGlyphP11ImFontAtlasP12ImFontConfigP11ImFontBakedPvtP11ImFontGlyphPf:bb.a

bb.v:                                             ; preds = %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.i.i.i.i
  %i.ia = load i32, ptr %i.e, align 4, !tbaa !258 ; 2 uses
  %i.ib = sub nsw i32 %i.ia, %.2.us.i.i.i.i
  %i.ic = sext i32 %.397.us.i.i.i.i to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.ic
  store i32 %i.ib, ptr %i.id, align 4, !tbaa !258
  %i.ie = sext i32 %i.ia to i64
  %i.if = shl nsw i64 %i.ie, 3
  %i.ig = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.if) ; 7 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %.split.us.i.i.i.i, label %.lr.ph15.us.1.i.i.i.i

.lr.ph15.us.1.i.i.i.i:                            ; preds = %bb.v
  store i32 0, ptr %i.e, align 4, !tbaa !258
  br label %bb.w

bb.w:                                             ; preds = %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i, %.lr.ph15.us.1.i.i.i.i
  %indvars.iv24.1.i.i.i.i = phi i64 [ 0, %.lr.ph15.us.1.i.i.i.i ], [ %indvars.iv.next25.1.i.i.i.i, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i ] ; 2 uses
  %.19311.us.1.i.i.i.i = phi i32 [ %.2.us.i.i.i.i, %.lr.ph15.us.1.i.i.i.i ], [ %.2.us.1.i.i.i.i, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i ] ; 5 uses
  %.29610.us.1.i.i.i.i = phi i32 [ -1, %.lr.ph15.us.1.i.i.i.i ], [ %.397.us.1.i.i.i.i, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i ] ; 7 uses
  %i.ii = phi <2 x float> [ zeroinitializer, %.lr.ph15.us.1.i.i.i.i ], [ %i.kh, %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i ] ; 5 uses
  %i.ij = getelementptr inbounds nuw [14 x i8], ptr %.pre32.i.i, i64 %indvars.iv24.1.i.i.i.i ; 12 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  %i.il = load i8, ptr %i.ik, align 2, !tbaa !514
  switch i8 %i.il, label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i [
    i8 1, label %bb.aa
    i8 2, label %bb.z
    i8 3, label %bb.y
    i8 4, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.in = load i16, ptr %i.im, align 2, !tbaa !515
  %i.io = sitofp i16 %i.in to float
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 6
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !516
  %i.ir = sitofp i16 %i.iq to float
  %i.is = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.it = load i16, ptr %i.is, align 2, !tbaa !517
  %i.iu = sitofp i16 %i.it to float
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ij, i64 10
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !518
  %i.ix = sitofp i16 %i.iw to float
  %i.iy = load i16, ptr %i.ij, align 2, !tbaa !519
  %i.iz = sitofp i16 %i.iy to float
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ij, i64 2
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !520
  %i.jc = sitofp i16 %i.jb to float
  %i.jd = extractelement <2 x float> %i.ii, i64 0
  %i.je = extractelement <2 x float> %i.ii, i64 1
  call fastcc void @_ZL22stbtt__tesselate_cubicP12stbtt__pointPifffffffffi(ptr noundef nonnull %i.ig, ptr noundef %i.e, float noundef %i.jd, float noundef %i.je, float noundef %i.io, float noundef %i.ir, float noundef %i.iu, float noundef %i.ix, float noundef %i.iz, float noundef %i.jc, float noundef %i.el, i32 noundef 0)
  %i.jf = load <2 x i16>, ptr %i.ij, align 2, !tbaa !243
  %i.jg = sitofp <2 x i16> %i.jf to <2 x float>
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.jh = load <4 x i16>, ptr %i.ij, align 2, !tbaa !243
  %i.ji = sitofp <4 x i16> %i.jh to <4 x float>   ; 4 uses
  %i.jj = extractelement <2 x float> %i.ii, i64 0
  %i.jk = extractelement <2 x float> %i.ii, i64 1
  %i.jl = extractelement <4 x float> %i.ji, i64 0
  %i.jm = extractelement <4 x float> %i.ji, i64 1
  %i.jn = extractelement <4 x float> %i.ji, i64 2
  %i.jo = extractelement <4 x float> %i.ji, i64 3
  call fastcc void @_ZL22stbtt__tesselate_curveP12stbtt__pointPifffffffi(ptr noundef nonnull %i.ig, ptr noundef %i.e, float noundef %i.jj, float noundef %i.jk, float noundef %i.jn, float noundef %i.jo, float noundef %i.jl, float noundef %i.jm, float noundef %i.el, i32 noundef 0)
  %i.jp = load <2 x i16>, ptr %i.ij, align 2, !tbaa !243
  %i.jq = sitofp <2 x i16> %i.jp to <2 x float>
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i

bb.z:                                             ; preds = %bb.w
  %i.jr = load i32, ptr %i.e, align 4, !tbaa !258 ; 2 uses
  %i.js = add nsw i32 %i.jr, 1
  store i32 %i.js, ptr %i.e, align 4, !tbaa !258
  %i.jt = load <2 x i16>, ptr %i.ij, align 2, !tbaa !243
  %i.ju = sitofp <2 x i16> %i.jt to <2 x float>   ; 2 uses
  %i.jv = sext i32 %i.jr to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.jv
  store <2 x float> %i.ju, ptr %i.jw, align 4, !tbaa !29
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i

bb.aa:                                            ; preds = %bb.w
  %i.jx = icmp sgt i32 %.29610.us.1.i.i.i.i, -1
  %.pre32.i.i.i.i = load i32, ptr %i.e, align 4, !tbaa !258 ; 4 uses
  br i1 %i.jx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jy = sub nsw i32 %.pre32.i.i.i.i, %.19311.us.1.i.i.i.i
  %i.jz = zext nneg i32 %.29610.us.1.i.i.i.i to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.jz
  store i32 %i.jy, ptr %i.ka, align 4, !tbaa !258
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.kb = add nsw i32 %.pre32.i.i.i.i, 1
  store i32 %i.kb, ptr %i.e, align 4, !tbaa !258
  %i.kc = load <2 x i16>, ptr %i.ij, align 2, !tbaa !243
  %i.kd = sitofp <2 x i16> %i.kc to <2 x float>   ; 2 uses
  %i.ke = add nsw i32 %.29610.us.1.i.i.i.i, 1
  %i.kf = sext i32 %.pre32.i.i.i.i to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.kf
  store <2 x float> %i.kd, ptr %i.kg, align 4, !tbaa !29
  br label %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i

_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i: ; preds = %bb.ac, %bb.z, %bb.y, %bb.x, %bb.w
  %.397.us.1.i.i.i.i = phi i32 [ %.29610.us.1.i.i.i.i, %bb.w ], [ %.29610.us.1.i.i.i.i, %bb.x ], [ %i.ke, %bb.ac ], [ %.29610.us.1.i.i.i.i, %bb.y ], [ %.29610.us.1.i.i.i.i, %bb.z ] ; 2 uses
  %.2.us.1.i.i.i.i = phi i32 [ %.19311.us.1.i.i.i.i, %bb.w ], [ %.19311.us.1.i.i.i.i, %bb.x ], [ %.pre32.i.i.i.i, %bb.ac ], [ %.19311.us.1.i.i.i.i, %bb.y ], [ %.19311.us.1.i.i.i.i, %bb.z ] ; 2 uses
  %i.kh = phi <2 x float> [ %i.ii, %bb.w ], [ %i.jg, %bb.x ], [ %i.kd, %bb.ac ], [ %i.jq, %bb.y ], [ %i.ju, %bb.z ]
  %indvars.iv.next25.1.i.i.i.i = add nuw nsw i64 %indvars.iv24.1.i.i.i.i, 1 ; 2 uses
  %exitcond28.1.not.i.i.i.i = icmp eq i64 %indvars.iv.next25.1.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond28.1.not.i.i.i.i, label %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i, label %bb.w, !llvm.loop !764

.split.us.i.i.i.i:                                ; preds = %bb.v
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef null)
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.gj)
  br label %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.thread.i.i.i

_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.thread.i.i.i: ; preds = %.split.us.i.i.i.i, %bb.n, %._crit_edge.i.i.i.i, %_ZN8ImVectorIhE6resizeEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  br label %_ZL29stbtt_MakeGlyphBitmapSubpixelPK14stbtt_fontinfoPhiiiffffi.exit.i

_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i: ; preds = %_ZL16stbtt__add_pointP12stbtt__pointiff.exit.us.1.i.i.i.i
  %i.ki = load i32, ptr %i.e, align 4, !tbaa !258
  %i.kj = sub nsw i32 %i.ki, %.2.us.1.i.i.i.i
  %i.kk = sext i32 %.397.us.1.i.i.i.i to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.kk
  store i32 %i.kj, ptr %i.kl, align 4, !tbaa !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  %min.iters.check322 = icmp ult i32 %spec.select.i.i.i.i.lcssa, 8
  br i1 %min.iters.check322, label %.lr.ph.i23.i.i.i.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i
  %n.vec324 = and i64 %i.gh, 2147483640           ; 3 uses
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next330, %vector.body325 ] ; 2 uses
  %vec.phi327 = phi <4 x i32> [ zeroinitializer, %vector.ph323 ], [ %i.ko, %vector.body325 ]
  %vec.phi328 = phi <4 x i32> [ zeroinitializer, %vector.ph323 ], [ %i.kp, %vector.body325 ]
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %index326 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %wide.load = load <4 x i32>, ptr %i.km, align 4, !tbaa !258
  %wide.load329 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !258
  %i.ko = add <4 x i32> %wide.load, %vec.phi327   ; 2 uses
  %i.kp = add <4 x i32> %wide.load329, %vec.phi328 ; 2 uses
  %index.next330 = add nuw i64 %index326, 8       ; 2 uses
  %i.kq = icmp eq i64 %index.next330, %n.vec324
  br i1 %i.kq, label %middle.block331, label %vector.body325, !llvm.loop !765

middle.block331:                                  ; preds = %vector.body325
  %bin.rdx332 = add <4 x i32> %i.kp, %i.ko
  %i.kr = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx332) ; 2 uses
  %cmp.n333 = icmp eq i64 %n.vec324, %i.gh
  br i1 %cmp.n333, label %._crit_edge.i27.i.i.i, label %.lr.ph.i23.i.i.i.preheader

.lr.ph.i23.i.i.i.preheader:                       ; preds = %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i, %middle.block331
  %indvars.iv.i24.i.i.i.ph = phi i64 [ 0, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i ], [ %n.vec324, %middle.block331 ]
  %.0874.i.i.i.i.ph = phi i32 [ 0, %_ZL19stbtt_FlattenCurvesP12stbtt_vertexifPPiS1_Pv.exit.i.i.i ], [ %i.kr, %middle.block331 ]
  br label %.lr.ph.i23.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %.lr.ph.i23.i.i.i.preheader, %.lr.ph.i23.i.i.i
  %indvars.iv.i24.i.i.i = phi i64 [ %indvars.iv.next.i25.i.i.i, %.lr.ph.i23.i.i.i ], [ %indvars.iv.i24.i.i.i.ph, %.lr.ph.i23.i.i.i.preheader ] ; 2 uses
  %.0874.i.i.i.i = phi i32 [ %i.ku, %.lr.ph.i23.i.i.i ], [ %.0874.i.i.i.i.ph, %.lr.ph.i23.i.i.i.preheader ]
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv.i24.i.i.i
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !258
  %i.ku = add nsw i32 %i.kt, %.0874.i.i.i.i       ; 2 uses
  %indvars.iv.next.i25.i.i.i = add nuw nsw i64 %indvars.iv.i24.i.i.i, 1 ; 2 uses
  %exitcond.not.i26.i.i.i = icmp eq i64 %indvars.iv.next.i25.i.i.i, %i.gh
  br i1 %exitcond.not.i26.i.i.i, label %._crit_edge.i27.i.i.i, label %.lr.ph.i23.i.i.i, !llvm.loop !766

._crit_edge.i27.i.i.i:                            ; preds = %.lr.ph.i23.i.i.i, %middle.block331
  %.lcssa319 = phi i32 [ %i.kr, %middle.block331 ], [ %i.ku, %.lr.ph.i23.i.i.i ]
  %i.kv = fneg float %i.ax
  %i.kw = add nsw i32 %.lcssa319, 1
  %i.kx = sext i32 %i.kw to i64
  %i.ky = mul nsw i64 %i.kx, 20
  %i.kz = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ky) ; 9 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %_ZL16stbtt__rasterizeP13stbtt__bitmapP12stbtt__pointPiiffffiiiPv.exit.i.i.i, label %.lr.ph16.i.i.i.i.preheader

.lr.ph16.i.i.i.i.preheader:                       ; preds = %._crit_edge.i27.i.i.i
  %i.lb = insertelement <4 x float> poison, float %i.av, i64 0
  %i.lc = insertelement <4 x float> %i.lb, float %i.kv, i64 1
  %i.ld = shufflevector <4 x float> %i.lc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph16.i.i.i.i

.lr.ph16.i.i.i.i:                                 ; preds = %.lr.ph16.i.i.i.i.preheader, %._crit_edge11.i.i.i.i
  %indvars.iv27.i.i.i.i = phi i64 [ %indvars.iv.next28.i.i.i.i, %._crit_edge11.i.i.i.i ], [ 0, %.lr.ph16.i.i.i.i.preheader ] ; 2 uses
  %.08315.i.i.i.i = phi i32 [ %i.li, %._crit_edge11.i.i.i.i ], [ 0, %.lr.ph16.i.i.i.i.preheader ] ; 2 uses
  %.18813.i.i.i.i = phi i32 [ %.2.lcssa.i.i.i.i, %._crit_edge11.i.i.i.i ], [ 0, %.lr.ph16.i.i.i.i.preheader ] ; 2 uses
  %i.le = sext i32 %.08315.i.i.i.i to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.le ; 4 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv27.i.i.i.i ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !258 ; 4 uses
  %i.li = add nsw i32 %i.lh, %.08315.i.i.i.i
  %i.lj = icmp sgt i32 %i.lh, 0
  br i1 %i.lj, label %.lr.ph10.preheader.i.i.i.i, label %._crit_edge11.i.i.i.i

.lr.ph10.preheader.i.i.i.i:                       ; preds = %.lr.ph16.i.i.i.i
  %i.lk = add nsw i32 %i.lh, -1
  br label %.lr.ph10.i.i.i.i

.lr.ph10.i.i.i.i:                                 ; preds = %.lr.ph10._crit_edge.i.i.i.i, %.lr.ph10.preheader.i.i.i.i
  %i.ll = phi i32 [ %i.lh, %.lr.ph10.preheader.i.i.i.i ], [ %i.md, %.lr.ph10._crit_edge.i.i.i.i ]
  %indvars.iv24.i28.i.i.i = phi i64 [ 0, %.lr.ph10.preheader.i.i.i.i ], [ %indvars.iv.next25.i29.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 5 uses
  %.0857.i.i.i.i = phi i32 [ %i.lk, %.lr.ph10.preheader.i.i.i.i ], [ %.pre-phi.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ]
  %.0857.i.i.i.i.a = phi i32 [ %.18813.i.i.i.i, %.lr.ph10.preheader.i.i.i.i ], [ %.3.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 3 uses
  %7 = sext i32 %.0857.i.i.i.i to i64             ; 3 uses
  %8 = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %10 = load float, ptr %9, align 4, !tbaa !522   ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv24.i28.i.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !522 ; 2 uses
  %i.lp = fcmp oeq float %10, %i.lo
  br i1 %i.lp, label %.lr.ph10._crit_edge.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph10.i.i.i.i
  %i.lq = sext i32 %.0857.i.i.i.i.a to i64
  %i.lr = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.lq ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = fcmp ogt float %10, %i.lo               ; 3 uses
  %spec.store.select.i.i.i.i = zext i1 %i.lt to i32
  store i32 %spec.store.select.i.i.i.i, ptr %i.ls, align 4, !tbaa !794
  %i.lu = select i1 %i.lt, i64 %7, i64 %indvars.iv24.i28.i.i.i
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lu
  %i.lw = select i1 %i.lt, i64 %indvars.iv24.i28.i.i.i, i64 %7
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lw
  %i.ly = load <2 x float>, ptr %i.lv, align 4, !tbaa !29
  %i.lz = load <2 x float>, ptr %i.lx, align 4, !tbaa !29
  %i.ma = shufflevector <2 x float> %i.ly, <2 x float> %i.lz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ma, <4 x float> %i.ld, <4 x float> zeroinitializer)
  store <4 x float> %i.mb, ptr %i.lr, align 4, !tbaa !29
  %i.mc = add nsw i32 %.0857.i.i.i.i.a, 1
  %.pre34.i.i.i.i = load i32, ptr %i.lg, align 4, !tbaa !258
  br label %.lr.ph10._crit_edge.i.i.i.i

.lr.ph10._crit_edge.i.i.i.i:                      ; preds = %bb.ad, %.lr.ph10.i.i.i.i
  %i.md = phi i32 [ %.pre34.i.i.i.i, %bb.ad ], [ %i.ll, %.lr.ph10.i.i.i.i ] ; 2 uses
  %.3.i.i.i.i = phi i32 [ %i.mc, %bb.ad ], [ %.0857.i.i.i.i.a, %.lr.ph10.i.i.i.i ] ; 2 uses
  %.pre-phi.i.i.i.i = trunc i64 %indvars.iv24.i28.i.i.i to i32
  %indvars.iv.next25.i29.i.i.i = add nuw nsw i64 %indvars.iv24.i28.i.i.i, 1 ; 2 uses
  %i.me = sext i32 %i.md to i64
  %i.mf = icmp slt i64 %indvars.iv.next25.i29.i.i.i, %i.me
  br i1 %i.mf, label %.lr.ph10.i.i.i.i, label %._crit_edge11.i.i.i.i, !llvm.loop !767

._crit_edge11.i.i.i.i:                            ; preds = %.lr.ph10._crit_edge.i.i.i.i, %.lr.ph16.i.i.i.i
  %.2.lcssa.i.i.i.i = phi i32 [ %.18813.i.i.i.i, %.lr.ph16.i.i.i.i ], [ %.3.i.i.i.i, %.lr.ph10._crit_edge.i.i.i.i ] ; 5 uses
  %indvars.iv.next28.i.i.i.i = add nuw nsw i64 %indvars.iv27.i.i.i.i, 1 ; 2 uses
  %exitcond31.not.i.i.i.i = icmp eq i64 %indvars.iv.next28.i.i.i.i, %i.gh
  br i1 %exitcond31.not.i.i.i.i, label %._crit_edge17.i.i.i.i, label %.lr.ph16.i.i.i.i, !llvm.loop !768

._crit_edge17.i.i.i.i:                            ; preds = %._crit_edge11.i.i.i.i
  call fastcc void @_ZL27stbtt__sort_edges_quicksortP11stbtt__edgei(ptr noundef nonnull %i.kz, i32 noundef %.2.lcssa.i.i.i.i)
  %i.mg = icmp sgt i32 %.2.lcssa.i.i.i.i, 1
  br i1 %i.mg, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge17.i.i.i.i
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %.2.lcssa.i.i.i.i to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ah, %.lr.ph.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.ah ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %i.mh = getelementptr inbounds nuw [20 x i8], ptr %i.kz, i64 %indvars.iv.i.i.i.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %.sroa.4.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !29
  %i.mi = load <2 x float>, ptr %i.mh, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !795
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i
  %indvars.iv31.i.i.i.i.i.i = phi i64 [ %indvars.iv.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.next32.i.i.i.i.i.i, %bb.af ] ; 4 uses
  %i.mj = getelementptr [20 x i8], ptr %i.kz, i64 %indvars.iv31.i.i.i.i.i.i ; 3 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 -16
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !524
  %i.mm = fcmp olt float %.sroa.4.0.copyload.i.i.i.i.i.i, %i.ml
  br i1 %i.mm, label %bb.af, label %.thread.split.loop.exit.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.mn = getelementptr i8, ptr %i.mj, i64 -20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.mj, ptr noundef nonnull align 4 dereferenceable(20) %i.mn, i64 20, i1 false), !tbaa.struct !293
  %indvars.iv.next32.i.i.i.i.i.i = add nsw i64 %indvars.iv31.i.i.i.i.i.i, -1
  %i.mo = icmp sgt i64 %indvars.iv31.i.i.i.i.i.i, 1
  br i1 %i.mo, label %bb.ae, label %.thread.i.i.i.i.i.i

.thread.split.loop.exit.i.i.i.i.i.i:              ; preds = %bb.ae
  %i.mp = trunc nuw nsw i64 %indvars.iv31.i.i.i.i.i.i to i32
  br label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.af, %.thread.split.loop.exit.i.i.i.i.i.i
  %.021.lcssa.i.i.i.i.i.i = phi i32 [ %i.mp, %.thread.split.loop.exit.i.i.i.i.i.i ], [ 0, %bb.af ] ; 2 uses
  %i.mq = zext i32 %.021.lcssa.i.i.i.i.i.i to i64
  %.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i.i.i, %i.mq
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.thread.i.i.i.i.i.i
  %i.mr = sext i32 %.021.lcssa.i.i.i.i.i.i to i64
  %i.ms = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.mr ; 2 uses
  store <2 x float> %i.mi, ptr %i.ms, align 4, !tbaa !29
  %.sroa.5.0..sroa_idx26.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !795
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !769

_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i: ; preds = %bb.ah, %._crit_edge17.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8, !tbaa !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  %i.mt = icmp sgt i32 %i.cr, 64
  br i1 %i.mt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i
  %i.mu = shl nuw nsw i32 %i.cr, 1
  %i.mv = or disjoint i32 %i.mu, 1
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = shl nuw nsw i64 %i.mw, 2
  %i.my = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.mx)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i
  %.080.i.i.i.i.i = phi ptr [ %i.my, %bb.ai ], [ %i.d, %_ZL17stbtt__sort_edgesP11stbtt__edgei.exit.i.i.i.i ] ; 43 uses
  %i.mz = sext i32 %i.cr to i64                   ; 3 uses
  %i.na = getelementptr inbounds [4 x i8], ptr %.080.i.i.i.i.i, i64 %i.mz ; 9 uses
  %i.nb = add nsw i32 %i.eh, %i.cu
  %i.nc = sitofp i32 %i.nb to float
  %i.nd = fadd float %i.nc, 1.000000e+00
  %i.ne = sext i32 %.2.lcssa.i.i.i.i to i64
  %i.nf = getelementptr inbounds [20 x i8], ptr %i.kz, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  store float %i.nd, ptr %i.ng, align 4, !tbaa !524
  %i.nh = icmp sgt i32 %i.cu, 0
  br i1 %i.nh, label %.lr.ph33.i.i.i.i.i, label %_ZL20stbtt__hheap_cleanupP12stbtt__hheapPv.exit.i.i.i.i.i

.lr.ph33.i.i.i.i.i:                               ; preds = %bb.aj
  %i.ni = sitofp i32 %i.eg to float
  %i.nj = icmp ne i32 %i.eh, 0
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 4 ; 2 uses
  %i.nl = shl nsw i64 %i.mz, 2
  %i.nm = add nsw i32 %i.cr, 1
  %i.nn = sext i32 %i.nm to i64
  %i.no = shl nsw i64 %i.nn, 2
  %i.np = sitofp i32 %i.cr to float               ; 3 uses
  %i.nq = icmp sgt i32 %i.cr, 0                   ; 2 uses
  %wide.trip.count.i.i92.i.i.i.i = zext nneg i32 %i.cr to i64
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge25.i.i.i.i.i, %.lr.ph33.i.i.i.i.i
  %.0..i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.031.i.i.i.i.i = phi ptr [ %i.kz, %.lr.ph33.i.i.i.i.i ], [ %.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.07530.i.i.i.i.i = phi i32 [ %i.eh, %.lr.ph33.i.i.i.i.i ], [ %i.axs, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.07629.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %i.axt, %._crit_edge25.i.i.i.i.i ] ; 3 uses
  %.sroa.11.028.i.i.i.i.i = phi i32 [ 0, %.lr.ph33.i.i.i.i.i ], [ %.sroa.11.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.7.027.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.7.3.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %.sroa.0.026.i.i.i.i.i = phi ptr [ null, %.lr.ph33.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ] ; 2 uses
  %i.nr = sitofp i32 %.07530.i.i.i.i.i to float   ; 68 uses
  %i.ns = fadd float %i.nr, 1.000000e+00          ; 75 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i.i.i.i, i8 0, i64 %i.nl, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.na, i8 0, i64 %i.no, i1 false)
  %.not908.i.i.i.i.i = icmp eq ptr %.0..i.i.i.i.i, null
  br i1 %.not908.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader7.i.i.i.i.i:                            ; preds = %bb.am, %bb.ak
  %.sroa.7.1.lcssa.i.i.i.i.i = phi ptr [ %.sroa.7.027.i.i.i.i.i, %bb.ak ], [ %.sroa.7.2.i.i.i.i.i, %bb.am ] ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i, i64 4 ; 2 uses
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !524 ; 2 uses
  %i.nv = fcmp ugt float %i.nu, %i.ns
  br i1 %i.nv, label %._crit_edge.i.i.i.i.i, label %.lr.ph15.i.i.i.i.i

.lr.ph15.i.i.i.i.i:                               ; preds = %.preheader7.i.i.i.i.i
  %i.nw = icmp eq i32 %.07629.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.nj, %i.nw
  br label %bb.an

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak, %bb.am
  %i.nx = phi ptr [ %i.od, %bb.am ], [ %.0..i.i.i.i.i, %bb.ak ] ; 6 uses
  %.07810.i.i.i.i.i = phi ptr [ %.179.i.i.i.i.i, %bb.am ], [ %i.c, %bb.ak ] ; 2 uses
  %.sroa.7.19.i.i.i.i.i = phi ptr [ %.sroa.7.2.i.i.i.i.i, %bb.am ], [ %.sroa.7.027.i.i.i.i.i, %bb.ak ] ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 28
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !799
  %i.oa = fcmp ugt float %i.nz, %i.nr
  br i1 %i.oa, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ob = load ptr, ptr %i.nx, align 8, !tbaa !800
  store ptr %i.ob, ptr %.07810.i.i.i.i.i, align 8, !tbaa !797
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 20
  store float 0.000000e+00, ptr %i.oc, align 4, !tbaa !801
  store ptr %.sroa.7.19.i.i.i.i.i, ptr %i.nx, align 8, !tbaa !427
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i
  %.sroa.7.2.i.i.i.i.i = phi ptr [ %.sroa.7.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.nx, %bb.al ] ; 2 uses
  %.179.i.i.i.i.i = phi ptr [ %i.nx, %.lr.ph.i.i.i.i.i ], [ %.07810.i.i.i.i.i, %bb.al ] ; 2 uses
  %i.od = load ptr, ptr %.179.i.i.i.i.i, align 8, !tbaa !797 ; 2 uses
  %.not90.i.i.i.i.i = icmp eq ptr %i.od, null
  br i1 %.not90.i.i.i.i.i, label %.preheader7.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !770

bb.an:                                            ; preds = %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, %.lr.ph15.i.i.i.i.i
  %i.oe = phi float [ %i.nu, %.lr.ph15.i.i.i.i.i ], [ %i.pt, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.of = phi ptr [ %i.nt, %.lr.ph15.i.i.i.i.i ], [ %i.ps, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ]
  %.114.i.i.i.i.i = phi ptr [ %.031.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %i.pr, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 6 uses
  %.sroa.11.113.i.i.i.i.i = phi i32 [ %.sroa.11.028.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.11.4.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.7.312.i.i.i.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.7.6.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 4 uses
  %.sroa.0.111.i.i.i.i.i = phi ptr [ %.sroa.0.026.i.i.i.i.i, %.lr.ph15.i.i.i.i.i ], [ %.sroa.0.5.i.i.i.i.i, %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i ] ; 5 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.114.i.i.i.i.i, i64 12 ; 2 uses
  %i.oh = load float, ptr %i.og, align 4, !tbaa !802 ; 3 uses
  %i.oi = fcmp une float %i.oe, %i.oh
  br i1 %i.oi, label %bb.ao, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.7.312.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.oj = load ptr, ptr %.sroa.7.312.i.i.i.i.i, align 8, !tbaa !427
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.ok = icmp eq i32 %.sroa.11.113.i.i.i.i.i, 0
  br i1 %i.ok, label %bb.ar, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.aq
  %i.ol = add nsw i32 %.sroa.11.113.i.i.i.i.i, -1
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.om = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 25608) ; 3 uses
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %_ZL17stbtt__new_activeP12stbtt__hheapP11stbtt__edgeifPv.exit.thread.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.ar
  store ptr %.sroa.0.111.i.i.i.i.i, ptr %i.om, align 8, !tbaa !805
  %.pre40.pre.i.i.i.i.i = load float, ptr %i.og, align 4, !tbaa !802
end_hunk_1

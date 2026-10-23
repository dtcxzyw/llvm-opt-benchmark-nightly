Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_draw?download=true
inline.NumInlined: 1448
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 298
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 351
begin_hunk_0_@_Z25ImFontAtlasUpdateNewFrameP11ImFontAtlasib:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !271  ; 3 uses
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !272 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %.idx = shl nsw i64 %i.ab, 3                    ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %.idx
  %.not93 = icmp eq i32 %i.aa, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ad = add nsw i64 %.idx, -8                   ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.07494.prol = phi ptr [ %i.ah, %.lr.ph.prol ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ag = load ptr, ptr %.07494.prol, align 8, !tbaa !273
  store ptr null, ptr %i.ag, align 8, !tbaa !164
  %i.ah = getelementptr inbounds nuw i8, ptr %.07494.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !610

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.07494.unr = phi ptr [ %i.z, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 232 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !301 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.preheader, label %bb.o

.preheader:                                       ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 192 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !284 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.07494 = phi ptr [ %i.bg, %.lr.ph ], [ %.07494.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ar = load ptr, ptr %.07494, align 8, !tbaa !273
  store ptr null, ptr %i.ar, align 8, !tbaa !164
  %i.as = getelementptr inbounds nuw i8, ptr %.07494, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !273
  store ptr null, ptr %i.at, align 8, !tbaa !164
  %i.au = getelementptr inbounds nuw i8, ptr %.07494, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !273
  store ptr null, ptr %i.av, align 8, !tbaa !164
  %i.aw = getelementptr inbounds nuw i8, ptr %.07494, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !273
  store ptr null, ptr %i.ax, align 8, !tbaa !164
  %i.ay = getelementptr inbounds nuw i8, ptr %.07494, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !273
  store ptr null, ptr %i.az, align 8, !tbaa !164
  %i.ba = getelementptr inbounds nuw i8, ptr %.07494, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !273
  store ptr null, ptr %i.bb, align 8, !tbaa !164
  %i.bc = getelementptr inbounds nuw i8, ptr %.07494, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !273
  store ptr null, ptr %i.bd, align 8, !tbaa !164
  %i.be = getelementptr inbounds nuw i8, ptr %.07494, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !273
  store ptr null, ptr %i.bf, align 8, !tbaa !164
  %i.bg = getelementptr inbounds nuw i8, ptr %.07494, i64 64 ; 2 uses
  %.not.7 = icmp eq ptr %i.bg, %i.ac
  br i1 %.not.7, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph97, %bb.n
  %i.bh = phi i32 [ %i.an, %.lr.ph97 ], [ %i.ce, %bb.n ] ; 2 uses
  %.07196 = phi i32 [ 0, %.lr.ph97 ], [ %i.cf, %bb.n ] ; 3 uses
  %.07295 = phi i32 [ 0, %.lr.ph97 ], [ %.173, %bb.n ] ; 4 uses
  %i.bi = lshr i32 %.07196, 5
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !285 ; 2 uses
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !186
  %i.bn = and i32 %.07196, 31
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [104 x i8], ptr %i.bm, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 76
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = and i32 %i.br, 67108864
  %.not80 = icmp eq i32 %i.bs, 0
  br i1 %.not80, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bt = add nsw i32 %.07295, 1                  ; 2 uses
  %i.bu = sdiv i32 %.07295, 32
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !186
  %i.by = srem i32 %.07295, 32
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [104 x i8], ptr %i.bx, i64 %i.bz ; 4 uses
  %i.cb = icmp eq ptr %i.ca, %i.bp
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ca, ptr noundef nonnull align 8 dereferenceable(104) %i.bp, i64 104, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 84
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !302
  tail call void @_ZN12ImGuiStorage10SetVoidPtrEjPv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i32 noundef %i.cd, ptr noundef nonnull %i.ca) #35
  %.pre = load i32, ptr %i.am, align 8, !tbaa !284
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ce = phi i32 [ %i.bh, %bb.k ], [ %i.bh, %bb.l ], [ %.pre, %bb.m ] ; 3 uses
  %.173 = phi i32 [ %.07295, %bb.k ], [ %i.bt, %bb.l ], [ %i.bt, %bb.m ]
  %i.cf = add nuw nsw i32 %.07196, 1              ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %i.ce
  br i1 %i.cg, label %bb.k, label %._crit_edge98.loopexit, !llvm.loop !611

._crit_edge98.loopexit:                           ; preds = %bb.n
  %.pre106 = load i32, ptr %i.aj, align 8, !tbaa !301
  br label %._crit_edge98

._crit_edge98:                                    ; preds = %._crit_edge98.loopexit, %.preheader
  %i.ch = phi i32 [ %i.ak, %.preheader ], [ %.pre106, %._crit_edge98.loopexit ]
  %.lcssa = phi i32 [ %i.an, %.preheader ], [ %i.ce, %._crit_edge98.loopexit ]
  %i.ci = sub nsw i32 %.lcssa, %i.ch
  store i32 %i.ci, ptr %i.am, align 8, !tbaa !284
  store i32 0, ptr %i.aj, align 8, !tbaa !301
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge98, %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !613
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.p

._crit_edge104:                                   ; preds = %.thread89, %bb.o
  ret void

bb.p:                                             ; preds = %.lr.ph103, %.thread89
  %.06999 = phi i32 [ 0, %.lr.ph103 ], [ %i.ej, %.thread89 ] ; 6 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !264
  %i.co = sext i32 %.06999 to i64                 ; 3 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !116 ; 13 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 4 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !303 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 68 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !304
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %bb.r, label %_ZN8ImVectorI13ImTextureRectE6resizeEi.exit

bb.r:                                             ; preds = %bb.q
  %i.cy = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) #35 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 72 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !267 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.da, null
  br i1 %.not6.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = load i32, ptr %i.cu, align 8, !tbaa !305
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.cy, ptr nonnull align 2 %i.da, i64 %i.dd, i1 false)
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !267
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.de) #35
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !267
  store i32 0, ptr %i.cv, align 4, !tbaa !304
  %.pr.pre = load i32, ptr %i.cr, align 4, !tbaa !303
  br label %_ZN8ImVectorI13ImTextureRectE6resizeEi.exit

_ZN8ImVectorI13ImTextureRectE6resizeEi.exit:      ; preds = %bb.q, %bb.t
  %.pr = phi i32 [ 0, %bb.q ], [ %.pr.pre, %bb.t ]
  store i32 0, ptr %i.cu, align 8, !tbaa !305
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  store <4 x i16> <i16 -1, i16 -1, i16 0, i16 0>, ptr %i.df, align 8, !tbaa !136
  br label %bb.u

bb.u:                                             ; preds = %_ZN8ImVectorI13ImTextureRectE6resizeEi.exit, %bb.p
  %.pr83 = phi i32 [ %.pr, %_ZN8ImVectorI13ImTextureRectE6resizeEi.exit ], [ %i.cs, %bb.p ] ; 3 uses
  %i.dg = icmp eq i32 %.pr83, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 87
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !306, !range !189, !noundef !190 ; 2 uses
  br i1 %i.dg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %3 = trunc nuw i8 %i.di to i1
  br i1 %3, label %.thread89.thread120, label %.thread89.thread

.thread89.thread:                                 ; preds = %bb.v
  store i32 2, ptr %i.cr, align 4, !tbaa !303
  br label %.thread89

bb.w:                                             ; preds = %bb.u
  %.not81 = icmp eq i8 %i.di, 0
  %.not79 = icmp eq i32 %.pr83, 4
  %or.cond = or i1 %.not79, %.not81
  br i1 %or.cond, label %bb.x, label %.thread

.thread:                                          ; preds = %bb.w
  store i32 4, ptr %i.cr, align 4, !tbaa !303
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dj = icmp eq i32 %.pr83, 4
  br i1 %i.dj, label %bb.y, label %.thread89

bb.y:                                             ; preds = %.thread, %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cq, i64 80 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !614
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 8, !tbaa !614
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !307
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %.split, label %.thread89

.split:                                           ; preds = %bb.y
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !308
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %.thread89.thread120, label %.thread89

.thread89.thread120:                              ; preds = %bb.v, %.split
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !254 ; 2 uses
  %.not.i = icmp eq ptr %i.du, null
  br i1 %.not.i, label %_ZN13ImTextureData13DestroyPixelsEv.exit.i.i, label %bb.z

bb.z:                                             ; preds = %.thread89.thread120
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.du) #35
  br label %_ZN13ImTextureData13DestroyPixelsEv.exit.i.i

_ZN13ImTextureData13DestroyPixelsEv.exit.i.i:     ; preds = %.thread89.thread120, %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cq, i64 86
  store ptr null, ptr %i.dt, align 8, !tbaa !254
  store i8 0, ptr %i.dv, align 2, !tbaa !259
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !267 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i1.i.i, label %_Z9IM_DELETEI13ImTextureDataEvPT_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN13ImTextureData13DestroyPixelsEv.exit.i.i
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.dx) #35
  br label %_Z9IM_DELETEI13ImTextureDataEvPT_.exit

_Z9IM_DELETEI13ImTextureDataEvPT_.exit:           ; preds = %_ZN13ImTextureData13DestroyPixelsEv.exit.i.i, %bb.aa
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.cq) #35
  %i.dy = load ptr, ptr %i.cm, align 8, !tbaa !264
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.co ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.cj, align 8, !tbaa !265
  %i.ec = sext i32 %i.eb to i64
  %i.ed = xor i64 %i.co, -1
  %i.ee = add nsw i64 %i.ec, %i.ed
  %i.ef = shl nsw i64 %i.ee, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dz, ptr nonnull align 8 %i.ea, i64 %i.ef, i1 false)
  %i.eg = load i32, ptr %i.cj, align 8, !tbaa !265
  %i.eh = add nsw i32 %i.eg, -1
  store i32 %i.eh, ptr %i.cj, align 8, !tbaa !265
  %i.ei = add nsw i32 %.06999, -1
  br label %.thread89

.thread89:                                        ; preds = %bb.y, %bb.x, %.thread89.thread, %.split, %_Z9IM_DELETEI13ImTextureDataEvPT_.exit
  %.170 = phi i32 [ %i.ei, %_Z9IM_DELETEI13ImTextureDataEvPT_.exit ], [ %.06999, %bb.x ], [ %.06999, %.thread89.thread ], [ %.06999, %.split ], [ %.06999, %bb.y ]
  %i.ej = add nsw i32 %.170, 1                    ; 2 uses
  %i.ek = load i32, ptr %i.cj, align 8, !tbaa !613
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.p, label %._crit_edge104, !llvm.loop !612
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z20ImFontAtlasBuildMainP11ImFontAtlas(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct.ImFontConfig, align 8       ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !255
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !309
  %.not14 = icmp eq i32 %i.d, %i.f
  br i1 %.not14, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @_Z33ImFontAtlasTextureGetSizeEstimateP11ImFontAtlas(ptr noundef nonnull %0) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.g to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.g, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !271  ; 2 uses
  %i.k = load i32, ptr %i.h, align 8, !tbaa !272  ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx.i = shl nsw i64 %i.l, 3
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 %.idx.i
  %.not22.i = icmp eq i32 %i.k, 0
  br i1 %.not22.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !180  ; 3 uses
  %.not18.i = icmp eq ptr %i.o, null
  br i1 %.not18.i, label %_Z23ImFontAtlasBuildDestroyP11ImFontAtlas.exit, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.023.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %.023.i, align 8, !tbaa !273
  tail call void @_Z28ImFontAtlasFontDestroyOutputP11ImFontAtlasP6ImFont(ptr noundef nonnull %0, ptr noundef %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %.023.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !274  ; 2 uses
  %.not19.i = icmp eq ptr %i.s, null
  br i1 %.not19.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !277  ; 2 uses
  %.not20.i = icmp eq ptr %i.u, null
  br i1 %.not20.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.u(ptr noundef nonnull %0) #35, !inline_history !278
  %.pr.pre.i = load ptr, ptr %i.n, align 8, !tbaa !180 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_Z23ImFontAtlasBuildDestroyP11ImFontAtlas.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d
  %.pr29.i = phi ptr [ %.pr.pre.i, %bb.f ], [ %i.o, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  tail call void @_ZN18ImFontAtlasBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %.pr29.i) #35
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %.pr29.i) #35
  br label %_Z23ImFontAtlasBuildDestroyP11ImFontAtlas.exit

_Z23ImFontAtlasBuildDestroyP11ImFontAtlas.exit:   ; preds = %._crit_edge.i, %bb.f, %.thread.i
  store ptr null, ptr %i.n, align 8, !tbaa !180
  %i.v = tail call noundef ptr @_Z21ImFontAtlasTextureAddP11ImFontAtlasii(ptr noundef nonnull %0, i32 noundef %.sroa.0.0.extract.trunc, i32 noundef %.sroa.4.0.extract.trunc) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_Z23ImFontAtlasBuildDestroyP11ImFontAtlas.exit, %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !180
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !310
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig.exit, label %bb.j

_ZN11ImFontAtlas14AddFontDefaultEPK12ImFontConfig.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  store i8 1, ptr %i.ac, align 4, !tbaa !248
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float f0x7F7FFFFF, ptr %i.ae, align 4, !tbaa !250
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104
  store <2 x float> splat (float 1.000000e+00), ptr %i.af, align 8, !tbaa !31
  store i8 1, ptr %i.ad, align 2, !tbaa !249
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 1, ptr %i.ag, align 1, !tbaa !311
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 54
  store i8 1, ptr %i.ah, align 2, !tbaa !312
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  store float 1.300000e+01, ptr %i.ai, align 4, !tbaa !313
  %i.aj = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %1, i64 noundef 40, ptr noundef nonnull @.str.10) #35 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i16 133, ptr %i.ak, align 8, !tbaa !314
  %i.al = load float, ptr %i.ai, align 4, !tbaa !313 ; 2 uses
  %i.am = fdiv float %i.al, 1.300000e+01
  %i.an = fptosi float %i.am to i32
  %i.ao = sitofp i32 %i.an to float
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !315
  %i.ar = fadd float %i.aq, %i.ao
  store float %i.ar, ptr %i.ap, align 4, !tbaa !315
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !316 ; 2 uses
  %.not8.i = icmp eq ptr %i.at, null
  %spec.select.i = select i1 %.not8.i, ptr @_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges, ptr %i.at
  %i.au = call noundef ptr @_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr noundef nonnull @_ZL32proggy_clean_ttf_compressed_data, i32 poison, float noundef %i.al, ptr noundef nonnull %1, ptr noundef nonnull %spec.select.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  br label %bb.j

end_hunk_0
begin_hunk_1_@_Z27ImFontAtlasTextureBlockCopyP13ImTextureDataiiS0_iiii:bb.a
  %i.l = add nsw i32 %i.k, %4
  %i.m = load i32, ptr %i.d, align 4, !tbaa !258  ; 2 uses
  %i.n = mul nsw i32 %i.l, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 %i.o
  %i.q = add nsw i32 %.012, %2
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !254
  %i.s = load i32, ptr %i.f, align 4, !tbaa !256
  %i.t = mul nsw i32 %i.s, %i.q
  %i.u = add nsw i32 %i.t, %1
  %i.v = load i32, ptr %i.g, align 4, !tbaa !258
  %i.w = mul nsw i32 %i.u, %i.v
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.r, i64 %i.x
  %i.z = mul nsw i32 %i.m, %6
  %i.aa = sext i32 %i.z to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.y, i64 %i.aa, i1 false)
  %i.ab = add nuw nsw i32 %.012, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !16
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z34ImFontAtlasTextureBlockQueueUploadP11ImFontAtlasP13ImTextureDataiiii(ptr nofree noundef writeonly captures(none) initializes((82, 83)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = trunc i32 %2 to i16                      ; 2 uses
  %i.b = trunc i32 %3 to i16                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.e = load i16, ptr %i.d, align 4, !tbaa !645  ; 2 uses
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i16 %i.e to i32
  %i.h = load i16, ptr %i.c, align 8, !tbaa !646
  %i.i = zext i16 %i.h to i32
  %i.j = add nuw nsw i32 %i.i, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.l = and i32 %2, 65535                        ; 2 uses
  %i.m = and i32 %4, 65535                        ; 2 uses
  %i.n = add nuw nsw i32 %i.m, %i.l               ; 2 uses
  %i.o = tail call i32 @llvm.umax.i32(i32 %i.k, i32 %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 62 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !647  ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !648
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = zext i16 %i.q to i32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.u = load i16, ptr %i.t, align 2, !tbaa !648  ; 2 uses
  %i.v = zext i16 %i.u to i32
  %i.w = add nuw nsw i32 %i.v, %i.s
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.x = phi i16 [ %i.u, %bb.d ], [ %.pre, %._crit_edge ]
  %i.y = phi i32 [ %i.w, %bb.d ], [ 0, %._crit_edge ]
  %i.z = and i32 %3, 65535
  %i.aa = and i32 %5, 65535                       ; 2 uses
  %i.ab = add nuw nsw i32 %i.aa, %i.z             ; 2 uses
  %i.ac = tail call i32 @llvm.umax.i32(i32 %i.y, i32 %i.ab)
  %i.ad = load i16, ptr %i.c, align 8, !tbaa !646
  %i.ae = tail call noundef i16 @llvm.umin.i16(i16 %i.ad, i16 %i.a) ; 2 uses
  store i16 %i.ae, ptr %i.c, align 8, !tbaa !646
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.ag = tail call noundef i16 @llvm.umin.i16(i16 %i.x, i16 %i.b) ; 2 uses
  store i16 %i.ag, ptr %i.af, align 2, !tbaa !648
  %i.ah = trunc i32 %i.o to i16
  %i.ai = sub i16 %i.ah, %i.ae
  store i16 %i.ai, ptr %i.d, align 4, !tbaa !645
  %i.aj = trunc i32 %i.ac to i16
  %i.ak = sub i16 %i.aj, %i.ag
  store i16 %i.ak, ptr %i.p, align 2, !tbaa !647
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.am = load i16, ptr %i.al, align 8, !tbaa !649
  %i.an = tail call noundef i16 @llvm.umin.i16(i16 %i.am, i16 %i.a) ; 3 uses
  store i16 %i.an, ptr %i.al, align 8, !tbaa !649
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 50 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !650
  %i.aq = tail call noundef i16 @llvm.umin.i16(i16 %i.ap, i16 %i.b) ; 3 uses
  store i16 %i.aq, ptr %i.ao, align 2, !tbaa !650
  %i.ar = zext i16 %i.an to i32
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.at = load i16, ptr %i.as, align 4, !tbaa !651
  %i.au = zext i16 %i.at to i32
  %i.av = add nuw nsw i32 %i.au, %i.ar
  %i.aw = tail call i32 @llvm.umax.i32(i32 %i.av, i32 %i.n)
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = sub i16 %i.ax, %i.an
  store i16 %i.ay, ptr %i.as, align 4, !tbaa !651
  %i.az = zext i16 %i.aq to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !652
  %i.bc = zext i16 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.bc, %i.az
  %i.be = tail call i32 @llvm.umax.i32(i32 %i.bd, i32 %i.ab)
  %i.bf = trunc i32 %i.be to i16
  %i.bg = sub i16 %i.bf, %i.aq
  store i16 %i.bg, ptr %i.ba, align 2, !tbaa !652
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 0, ptr %i.bh, align 2, !tbaa !280
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !303
  switch i32 %i.bj, label %bb.k [
    i32 0, label %bb.f
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  store i32 3, ptr %i.bi, align 4, !tbaa !303
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !305 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !304
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %bb.g, label %._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i: ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !267
  br label %_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.bp = add nsw i32 %i.bl, 1
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = sdiv i32 %i.bl, 2
  %i.br = add nsw i32 %i.bq, %i.bl
  br label %_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i

_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i: ; preds = %bb.h, %bb.g
  %i.bs = phi i32 [ %i.br, %bb.h ], [ 8, %bb.g ]
  %i.bt = tail call noundef i32 @llvm.smax.i32(i32 %i.bs, i32 %i.bp) ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 3
  %i.bw = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bv) #35 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !267 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.by, null
  br i1 %.not6.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i
  %i.bz = load i32, ptr %i.bk, align 8, !tbaa !305
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bw, ptr nonnull align 2 %i.by, i64 %i.cb, i1 false)
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !267
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cc) #35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK8ImVectorI13ImTextureRectE14_grow_capacityEi.exit.i
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !267
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !304
  %.pre3.i = load i32, ptr %i.bk, align 8, !tbaa !305
  br label %_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit

_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i, %bb.j
  %i.cd = phi i32 [ %i.bl, %._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.j ]
  %i.ce = phi ptr [ %.pre.i, %._ZN8ImVectorI13ImTextureRectE7reserveEi.exit_crit_edge.i ], [ %i.bw, %bb.j ]
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cf
  %.sroa.16.0.insert.ext = zext nneg i32 %i.aa to i64
  %.sroa.16.0.insert.shift = shl nuw i64 %.sroa.16.0.insert.ext, 48
  %.sroa.13.0.insert.ext = zext nneg i32 %i.m to i64
  %.sroa.13.0.insert.shift = shl nuw nsw i64 %.sroa.13.0.insert.ext, 32
  %.sroa.13.0.insert.insert = or disjoint i64 %.sroa.16.0.insert.shift, %.sroa.13.0.insert.shift
  %i.ch = shl i32 %3, 16
  %.sroa.8.0.insert.shift = zext i32 %i.ch to i64
  %.sroa.8.0.insert.insert = or disjoint i64 %.sroa.13.0.insert.insert, %.sroa.8.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i32 %i.l to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.insert, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.cg, align 2
  %i.ci = load i32, ptr %i.bk, align 8, !tbaa !305
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.bk, align 8, !tbaa !305
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %_ZN8ImVectorI13ImTextureRectE9push_backERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11ImFontAtlas18GetTexDataAsAlpha8EPPhPiS2_S2_(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.d = load i8, ptr %i.c, align 2, !tbaa !280, !range !189, !noundef !190
  %.not.i = icmp eq i8 %i.d, 0
  %5 = icmp eq ptr %i.b, null
  %or.cond.not.i = select i1 %.not.i, i1 true, i1 %5
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !254
  %i.g = icmp ne ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %.not.i.a = icmp eq i32 %i.i, 1
  %or.cond = select i1 %i.g, i1 %.not.i.a, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.j, align 4, !tbaa !309
  tail call void @_Z20ImFontAtlasBuildMainP11ImFontAtlas(ptr noundef nonnull align 8 dereferenceable(760) %0)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !268
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.k, %bb.c ], [ %i.b, %bb.b ] ; 4 uses
  %.not28.i = icmp eq ptr %1, null
  br i1 %.not28.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !254
  store ptr %i.m, ptr %1, align 8, !tbaa !422
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not29.i = icmp eq ptr %2, null
  br i1 %.not29.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !256
  store i32 %i.o, ptr %2, align 4, !tbaa !205
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30.i = icmp eq ptr %3, null
  br i1 %.not30.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !257
  store i32 %i.q, ptr %3, align 4, !tbaa !205
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not31.i = icmp eq ptr %4, null
  br i1 %.not31.i, label %_ZL18GetTexDataAsFormatP11ImFontAtlas15ImTextureFormatPPhPiS4_S4_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !258
  store i32 %i.s, ptr %4, align 4, !tbaa !205
  br label %_ZL18GetTexDataAsFormatP11ImFontAtlas15ImTextureFormatPPhPiS4_S4_.exit

_ZL18GetTexDataAsFormatP11ImFontAtlas15ImTextureFormatPPhPiS4_S4_.exit: ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11ImFontAtlas18GetTexDataAsRGBA32EPPhPiS2_S2_(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.d = load i8, ptr %i.c, align 2, !tbaa !280, !range !189, !noundef !190
  %.not.i = icmp eq i8 %i.d, 0
  %5 = icmp eq ptr %i.b, null
  %or.cond.not.i = select i1 %.not.i, i1 true, i1 %5
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !254
  %i.g = icmp ne ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %.not.i.a = icmp eq i32 %i.i, 0
  %or.cond = select i1 %i.g, i1 %.not.i.a, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !309
  tail call void @_Z20ImFontAtlasBuildMainP11ImFontAtlas(ptr noundef nonnull align 8 dereferenceable(760) %0)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !268
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.k, %bb.c ], [ %i.b, %bb.b ] ; 4 uses
  %.not28.i = icmp eq ptr %1, null
  br i1 %.not28.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !254
  store ptr %i.m, ptr %1, align 8, !tbaa !422
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not29.i = icmp eq ptr %2, null
  br i1 %.not29.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !256
  store i32 %i.o, ptr %2, align 4, !tbaa !205
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not30.i = icmp eq ptr %3, null
  br i1 %.not30.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !257
  store i32 %i.q, ptr %3, align 4, !tbaa !205
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not31.i = icmp eq ptr %4, null
  br i1 %.not31.i, label %_ZL18GetTexDataAsFormatP11ImFontAtlas15ImTextureFormatPPhPiS4_S4_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !258
  store i32 %i.s, ptr %4, align 4, !tbaa !205
  br label %_ZL18GetTexDataAsFormatP11ImFontAtlas15ImTextureFormatPPhPiS4_S4_.exit

_ZL18GetTexDataAsFormatP11ImFontAtlas15ImTextureFormatPPhPiS4_S4_.exit: ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN11ImFontAtlas5BuildEv(ptr noundef nonnull align 8 dereferenceable(760) %0) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void @_Z20ImFontAtlasBuildMainP11ImFontAtlas(ptr noundef nonnull %0)
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN11ImFontAtlas7AddFontEPK12ImFontConfig(ptr noundef nonnull align 8 dereferenceable(760) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z20ImFontAtlasBuildInitP11ImFontAtlas(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 53
  %i.e = load i8, ptr %i.d, align 1, !tbaa !423, !range !189, !noundef !190
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 80) #35 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i8 0, i64 80, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !424
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !262  ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !262
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.j, ptr %i.l, align 8, !tbaa !181
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.n = load i32, ptr %i.m, align 4, !tbaa !425
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %i.n, ptr %i.o, align 8, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.q = load float, ptr %i.p, align 4, !tbaa !313
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store float %i.q, ptr %i.r, align 4, !tbaa !426
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.t = load float, ptr %i.s, align 4, !tbaa !427
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store float %i.t, ptr %i.u, align 4, !tbaa !654
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !272  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !279
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %._ZN8ImVectorIP6ImFontE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIP6ImFontE7reserveEi.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !271
  br label %_ZN8ImVectorIP6ImFontE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = add nsw i32 %i.w, 1
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIP6ImFontE14_grow_capacityEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = sdiv i32 %i.w, 2
  %i.ac = add nsw i32 %i.ab, %i.w
  br label %_ZNK8ImVectorIP6ImFontE14_grow_capacityEi.exit.i

_ZNK8ImVectorIP6ImFontE14_grow_capacityEi.exit.i: ; preds = %bb.f, %bb.e
  %i.ad = phi i32 [ %i.ac, %bb.f ], [ 8, %bb.e ]
  %i.ae = tail call noundef i32 @llvm.smax.i32(i32 %i.ad, i32 %i.aa) ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 3
  %i.ah = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ag) #35 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !271 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aj, null
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorIP6ImFontE14_grow_capacityEi.exit.i
  %i.ak = load i32, ptr %i.v, align 8, !tbaa !272
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ah, ptr nonnull align 8 %i.aj, i64 %i.am, i1 false)
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !271
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.an) #35
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorIP6ImFontE14_grow_capacityEi.exit.i
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !271
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !279
  %.pre3.i = load i32, ptr %i.v, align 8, !tbaa !272
  br label %_ZN8ImVectorIP6ImFontE9push_backERKS1_.exit

_ZN8ImVectorIP6ImFontE9push_backERKS1_.exit:      ; preds = %._ZN8ImVectorIP6ImFontE7reserveEi.exit_crit_edge.i, %bb.h
  %i.ao = phi i32 [ %i.w, %._ZN8ImVectorIP6ImFontE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.h ]
  %i.ap = phi ptr [ %.pre.i, %._ZN8ImVectorIP6ImFontE7reserveEi.exit_crit_edge.i ], [ %i.ah, %bb.h ]
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = ptrtoint ptr %i.g to i64
  store i64 %i.as, ptr %i.ar, align 8
  %i.at = load i32, ptr %i.v, align 8, !tbaa !272
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.v, align 8, !tbaa !272
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !271
  %i.ay = load i32, ptr %i.av, align 8, !tbaa !272
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr [8 x i8], ptr %i.ax, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !273
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN8ImVectorIP6ImFontE9push_backERKS1_.exit
  %.046 = phi ptr [ %i.bc, %bb.i ], [ %i.g, %_ZN8ImVectorIP6ImFontE9push_backERKS1_.exit ] ; 16 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !288 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !291
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.k, label %._ZN8ImVectorI12ImFontConfigE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI12ImFontConfigE7reserveEi.exit_crit_edge.i: ; preds = %bb.j
  %.phi.trans.insert.i15 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre.i16 = load ptr, ptr %.phi.trans.insert.i15, align 8, !tbaa !270
  br label %_ZN8ImVectorI12ImFontConfigE9push_backERKS0_.exit

bb.k:                                             ; preds = %bb.j
  %i.bi = add nsw i32 %i.be, 1
  %.not.i.i17 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i17, label %_ZNK8ImVectorI12ImFontConfigE14_grow_capacityEi.exit.i, label %bb.l
end_hunk_1

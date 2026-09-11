Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cdgraphics?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@cdg_decode_frame:bb.a
  %.not80 = icmp eq i8 %i.aw, 0
  br i1 %.not80, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !33
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph103, label %.loopexit

.lr.ph103:                                        ; preds = %.preheader
  %i.ba = load i8, ptr %i.a, align 16, !tbaa !32
  %i.bb = and i8 %i.ba, 15
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph103, %bb.k
  %.068102 = phi i32 [ 0, %.lr.ph103 ], [ %i.bm, %bb.k ] ; 2 uses
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !31  ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !35
  %i.bh = mul nsw i32 %i.bg, %.068102
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 %i.bi
  %i.bk = load i32, ptr %i.bc, align 8, !tbaa !36
  %i.bl = sext i32 %i.bk to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bj, i8 %i.bb, i64 %i.bl, i1 false)
  %i.bm = add nuw nsw i32 %.068102, 1             ; 2 uses
  %i.bn = load i32, ptr %i.ax, align 4, !tbaa !33
  %i.bo = icmp slt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.k, label %.loopexit, !llvm.loop !42

bb.l:                                             ; preds = %bb.i, %bb.i
  %.not79 = icmp eq i32 %i.c, 24
  br i1 %.not79, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #12
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.bp = icmp eq i8 %i.an, 30
  %i.bq = zext i1 %i.bp to i32
  call fastcc void @cdg_load_palette(ptr noundef nonnull %i.e, ptr noundef %i.a, i32 noundef %i.bq)
  br label %.loopexit

bb.o:                                             ; preds = %bb.i
  %.val = load i8, ptr %i.a, align 16, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.val84 = load i8, ptr %i.br, align 1, !tbaa !32
  tail call fastcc void @cdg_border_preset(ptr noundef nonnull %i.e, i8 %.val, i8 %.val84)
  br label %.loopexit

bb.p:                                             ; preds = %bb.i, %bb.i
  %.not77 = icmp eq i32 %i.c, 24
  br i1 %.not77, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #12
  br label %bb.z

bb.r:                                             ; preds = %bb.p
  %i.bs = icmp eq i8 %i.an, 38
  %i.bt = zext i1 %i.bs to i32
  %i.bu = call fastcc i32 @cdg_tile_block(ptr noundef nonnull %i.e, ptr noundef %i.a, i32 noundef %i.bt) ; 2 uses
  %.not78 = icmp eq i32 %i.bu, 0
  br i1 %.not78, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #12
  br label %bb.z

bb.t:                                             ; preds = %bb.i, %bb.i
  %i.bv = icmp samesign ult i32 %i.c, 11
  br i1 %i.bv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #12
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bw = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1) #12 ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = icmp eq i8 %i.an, 24
  %i.bz = zext i1 %i.by to i32
  call fastcc void @cdg_scroll(ptr noundef nonnull %i.e, ptr noundef %i.a, ptr noundef %1, i32 noundef %i.bz)
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.cb = tail call i32 @av_frame_replace(ptr noundef %i.ca, ptr noundef %1) #12 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %bb.z, label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.preheader97, %.preheader, %bb.i, %bb.w, %bb.r, %bb.j, %bb.o, %bb.n
  %i.cd = load ptr, ptr %1, align 8, !tbaa !34
  %.not81 = icmp eq ptr %i.cd, null
  br i1 %.not81, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.cf = tail call i32 @av_frame_ref(ptr noundef nonnull %1, ptr noundef %i.ce) #12 ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bytestream2_get_byte.exit, %.loopexit, %bb.x
  %storemerge = phi i32 [ 1, %.loopexit ], [ 1, %bb.x ], [ 0, %bytestream2_get_byte.exit ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !35
  %i.ch = load i32, ptr %i.b, align 8, !tbaa !44
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v, %bytestream2_init.exit, %bb.y, %bb.u, %bb.s, %bb.q, %bb.m, %bb.d, %bb.b
  %.070 = phi i32 [ -22, %bb.b ], [ -22, %bb.d ], [ %i.bw, %bb.v ], [ %i.ch, %bb.y ], [ %i.cb, %bb.w ], [ -22, %bb.m ], [ -22, %bb.q ], [ %i.bu, %bb.s ], [ -22, %bb.u ], [ %i.l, %bytestream2_init.exit ], [ %i.cf, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.070
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @cdg_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  tail call void @av_frame_free(ptr noundef %i.b) #12
  ret i32 0
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @cdg_decode_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48
  %.not10 = icmp eq i64 %i.j, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.011 = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !35
  %i.o = mul nsw i32 %i.n, %.011
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  %i.r = load i32, ptr %i.h, align 8, !tbaa !36
  %i.s = sext i32 %i.r to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 0, i64 %i.s, i1 false)
  %i.t = add nuw nsw i32 %.011, 1                 ; 2 uses
  %i.u = load i32, ptr %i.e, align 4, !tbaa !33
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge, !llvm.loop !47

bb.c:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.y, i8 0, i64 1024, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @av_frame_alloc() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @cdg_load_palette(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #6 {
bb.a:
  %3 = shl nuw nsw i32 %2, 3                      ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !32      ; 2 uses
  %i.f = shl i8 %i.e, 6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !32    ; 2 uses
  %i.i = and i8 %i.h, 48
  %i.j = or disjoint i8 %i.i, %i.f                ; 2 uses
  %i.k = lshr i8 %i.e, 2
  %i.l = and i8 %i.k, 15
  %i.m = mul nuw i8 %i.l, 17
  %i.n = lshr exact i8 %i.j, 4
  %i.o = or disjoint i8 %i.n, %i.j
  %i.p = and i8 %i.h, 15
  %narrow = mul nuw i8 %i.p, 17
  %4 = xor i32 %3, 8
  %5 = zext nneg i32 %4 to i64                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 %5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !32
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw i32 %i.s, 24
  %i.u = zext i8 %i.m to i32
  %i.v = shl nuw nsw i32 %i.u, 16
  %i.w = or disjoint i32 %i.v, %i.t
  %i.x = zext i8 %i.o to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %i.z = or disjoint i32 %i.y, %i.w
  %i.aa = zext i8 %narrow to i32
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %5
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !32  ; 2 uses
  %i.af = shl i8 %i.ae, 6
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !32  ; 2 uses
  %i.ai = and i8 %i.ah, 48
  %i.aj = or disjoint i8 %i.ai, %i.af             ; 2 uses
  %i.ak = lshr i8 %i.ae, 2
  %i.al = and i8 %i.ak, 15
  %i.am = mul nuw i8 %i.al, 17
  %i.an = lshr exact i8 %i.aj, 4
  %i.ao = or disjoint i8 %i.an, %i.aj
  %i.ap = and i8 %i.ah, 15
  %narrow.1 = mul nuw i8 %i.ap, 17
  %6 = xor i32 %3, 9
  %7 = zext nneg i32 %6 to i64                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %7
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !32
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw i32 %i.as, 24
  %i.au = zext i8 %i.am to i32
  %i.av = shl nuw nsw i32 %i.au, 16
  %i.aw = or disjoint i32 %i.av, %i.at
  %i.ax = zext i8 %i.ao to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = or disjoint i32 %i.ay, %i.aw
  %i.ba = zext i8 %narrow.1 to i32
  %i.bb = or disjoint i32 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %7
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !32  ; 2 uses
  %i.bf = shl i8 %i.be, 6
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !32  ; 2 uses
  %i.bi = and i8 %i.bh, 48
  %i.bj = or disjoint i8 %i.bi, %i.bf             ; 2 uses
  %i.bk = lshr i8 %i.be, 2
  %i.bl = and i8 %i.bk, 15
  %i.bm = mul nuw i8 %i.bl, 17
  %i.bn = lshr exact i8 %i.bj, 4
  %i.bo = or disjoint i8 %i.bn, %i.bj
  %i.bp = and i8 %i.bh, 15
  %narrow.2 = mul nuw i8 %i.bp, 17
  %8 = xor i32 %3, 10
  %9 = zext nneg i32 %8 to i64                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 %9
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !32
  %i.bs = zext i8 %i.br to i32
  %i.bt = shl nuw i32 %i.bs, 24
  %i.bu = zext i8 %i.bm to i32
  %i.bv = shl nuw nsw i32 %i.bu, 16
  %i.bw = or disjoint i32 %i.bv, %i.bt
  %i.bx = zext i8 %i.bo to i32
  %i.by = shl nuw nsw i32 %i.bx, 8
  %i.bz = or disjoint i32 %i.by, %i.bw
  %i.ca = zext i8 %narrow.2 to i32
  %i.cb = or disjoint i32 %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %9
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !32  ; 2 uses
  %i.cf = shl i8 %i.ce, 6
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !32  ; 2 uses
  %i.ci = and i8 %i.ch, 48
  %i.cj = or disjoint i8 %i.ci, %i.cf             ; 2 uses
  %i.ck = lshr i8 %i.ce, 2
  %i.cl = and i8 %i.ck, 15
  %i.cm = mul nuw i8 %i.cl, 17
  %i.cn = lshr exact i8 %i.cj, 4
  %i.co = or disjoint i8 %i.cn, %i.cj
  %i.cp = and i8 %i.ch, 15
  %narrow.3 = mul nuw i8 %i.cp, 17
  %10 = xor i32 %3, 11
  %11 = zext nneg i32 %10 to i64                  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 %11
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !32
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw i32 %i.cs, 24
  %i.cu = zext i8 %i.cm to i32
  %i.cv = shl nuw nsw i32 %i.cu, 16
  %i.cw = or disjoint i32 %i.cv, %i.ct
  %i.cx = zext i8 %i.co to i32
  %i.cy = shl nuw nsw i32 %i.cx, 8
  %i.cz = or disjoint i32 %i.cy, %i.cw
  %i.da = zext i8 %narrow.3 to i32
  %i.db = or disjoint i32 %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %11
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !35
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !32  ; 2 uses
  %i.df = shl i8 %i.de, 6
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !32  ; 2 uses
  %i.di = and i8 %i.dh, 48
  %i.dj = or disjoint i8 %i.di, %i.df             ; 2 uses
  %i.dk = lshr i8 %i.de, 2
  %i.dl = and i8 %i.dk, 15
  %i.dm = mul nuw i8 %i.dl, 17
  %i.dn = lshr exact i8 %i.dj, 4
  %i.do = or disjoint i8 %i.dn, %i.dj
  %i.dp = and i8 %i.dh, 15
  %narrow.4 = mul nuw i8 %i.dp, 17
  %12 = xor i32 %3, 12
  %13 = zext nneg i32 %12 to i64                  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 %13
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !32
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl nuw i32 %i.ds, 24
  %i.du = zext i8 %i.dm to i32
  %i.dv = shl nuw nsw i32 %i.du, 16
  %i.dw = or disjoint i32 %i.dv, %i.dt
  %i.dx = zext i8 %i.do to i32
  %i.dy = shl nuw nsw i32 %i.dx, 8
  %i.dz = or disjoint i32 %i.dy, %i.dw
  %i.ea = zext i8 %narrow.4 to i32
  %i.eb = or disjoint i32 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %13
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !32  ; 2 uses
  %i.ef = shl i8 %i.ee, 6
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !32  ; 2 uses
  %i.ei = and i8 %i.eh, 48
  %i.ej = or disjoint i8 %i.ei, %i.ef             ; 2 uses
  %i.ek = lshr i8 %i.ee, 2
  %i.el = and i8 %i.ek, 15
  %i.em = mul nuw i8 %i.el, 17
  %i.en = lshr exact i8 %i.ej, 4
  %i.eo = or disjoint i8 %i.en, %i.ej
  %i.ep = and i8 %i.eh, 15
  %narrow.5 = mul nuw i8 %i.ep, 17
  %14 = xor i32 %3, 13
  %15 = zext nneg i32 %14 to i64                  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 %15
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !32
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw i32 %i.es, 24
  %i.eu = zext i8 %i.em to i32
  %i.ev = shl nuw nsw i32 %i.eu, 16
  %i.ew = or disjoint i32 %i.ev, %i.et
  %i.ex = zext i8 %i.eo to i32
  %i.ey = shl nuw nsw i32 %i.ex, 8
  %i.ez = or disjoint i32 %i.ey, %i.ew
  %i.fa = zext i8 %narrow.5 to i32
  %i.fb = or disjoint i32 %i.ez, %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %15
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !35
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !32  ; 2 uses
  %i.ff = shl i8 %i.fe, 6
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !32  ; 2 uses
  %i.fi = and i8 %i.fh, 48
  %i.fj = or disjoint i8 %i.fi, %i.ff             ; 2 uses
  %i.fk = lshr i8 %i.fe, 2
  %i.fl = and i8 %i.fk, 15
  %i.fm = mul nuw i8 %i.fl, 17
  %i.fn = lshr exact i8 %i.fj, 4
  %i.fo = or disjoint i8 %i.fn, %i.fj
  %i.fp = and i8 %i.fh, 15
  %narrow.6 = mul nuw i8 %i.fp, 17
  %16 = xor i32 %3, 14
  %17 = zext nneg i32 %16 to i64                  ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 %17
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !32
  %i.fs = zext i8 %i.fr to i32
  %i.ft = shl nuw i32 %i.fs, 24
  %i.fu = zext i8 %i.fm to i32
  %i.fv = shl nuw nsw i32 %i.fu, 16
  %i.fw = or disjoint i32 %i.fv, %i.ft
  %i.fx = zext i8 %i.fo to i32
  %i.fy = shl nuw nsw i32 %i.fx, 8
  %i.fz = or disjoint i32 %i.fy, %i.fw
  %i.ga = zext i8 %narrow.6 to i32
  %i.gb = or disjoint i32 %i.fz, %i.ga
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %17
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !35
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !32  ; 2 uses
  %i.gf = shl i8 %i.ge, 6
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !32  ; 2 uses
  %i.gi = and i8 %i.gh, 48
  %i.gj = or disjoint i8 %i.gi, %i.gf             ; 2 uses
  %i.gk = lshr i8 %i.ge, 2
  %i.gl = and i8 %i.gk, 15
  %i.gm = mul nuw i8 %i.gl, 17
  %i.gn = lshr exact i8 %i.gj, 4
  %i.go = or disjoint i8 %i.gn, %i.gj
  %i.gp = and i8 %i.gh, 15
  %narrow.7 = mul nuw i8 %i.gp, 17
  %18 = xor i32 %3, 15
  %19 = zext nneg i32 %18 to i64                  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 %19
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !32
  %i.gs = zext i8 %i.gr to i32
  %i.gt = shl nuw i32 %i.gs, 24
  %i.gu = zext i8 %i.gm to i32
  %i.gv = shl nuw nsw i32 %i.gu, 16
  %i.gw = or disjoint i32 %i.gv, %i.gt
  %i.gx = zext i8 %i.go to i32
  %i.gy = shl nuw nsw i32 %i.gx, 8
  %i.gz = or disjoint i32 %i.gy, %i.gw
  %i.ha = zext i8 %narrow.7 to i32
  %i.hb = or disjoint i32 %i.gz, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %19
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !35
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @cdg_border_preset(ptr nofree noundef readonly captures(none) %0, i8 %.0.val, i8 %.1.val) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35
  %i.d = sext i32 %i.c to i64                     ; 29 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !34   ; 31 uses
  %i.f = and i8 %.0.val, 15                       ; 36 uses
  %i.g = and i8 %.1.val, 15
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %.preheader2.preheader, label %.loopexit

.preheader2.preheader:                            ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !54
  %i.j = sext i32 %i.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 %i.f, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.n = load i32, ptr %i.m, align 8, !tbaa !54
  %i.o = sext i32 %i.n to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 %i.f, i64 %i.o, i1 false)
  %i.p = shl nsw i64 %i.d, 1
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p
  %i.r = load ptr, ptr %0, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.t = load i32, ptr %i.s, align 8, !tbaa !54
  %i.u = sext i32 %i.t to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 %i.f, i64 %i.u, i1 false)
  %i.v = mul nsw i64 %i.d, 3
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 %i.v
  %i.x = load ptr, ptr %0, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.z = load i32, ptr %i.y, align 8, !tbaa !54
  %i.aa = sext i32 %i.z to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 %i.f, i64 %i.aa, i1 false)
  %i.ab = shl nsw i64 %i.d, 2
  %i.ac = getelementptr inbounds i8, ptr %i.e, i64 %i.ab
  %i.ad = load ptr, ptr %0, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !54
  %i.ag = sext i32 %i.af to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 %i.f, i64 %i.ag, i1 false)
  %i.ah = mul nsw i64 %i.d, 5
  %i.ai = getelementptr inbounds i8, ptr %i.e, i64 %i.ah
  %i.aj = load ptr, ptr %0, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !54
  %i.am = sext i32 %i.al to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 %i.f, i64 %i.am, i1 false)
  %i.an = mul nsw i64 %i.d, 6
  %i.ao = getelementptr inbounds i8, ptr %i.e, i64 %i.an
  %i.ap = load ptr, ptr %0, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !54
  %i.as = sext i32 %i.ar to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 %i.f, i64 %i.as, i1 false)
  %i.at = mul nsw i64 %i.d, 7
  %i.au = getelementptr inbounds i8, ptr %i.e, i64 %i.at
  %i.av = load ptr, ptr %0, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !54
  %i.ay = sext i32 %i.ax to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.au, i8 %i.f, i64 %i.ay, i1 false)
  %i.az = shl nsw i64 %i.d, 3
  %i.ba = getelementptr inbounds i8, ptr %i.e, i64 %i.az
  %i.bb = load ptr, ptr %0, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !54
  %i.be = sext i32 %i.bd to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ba, i8 %i.f, i64 %i.be, i1 false)
  %i.bf = mul nsw i64 %i.d, 9
  %i.bg = getelementptr inbounds i8, ptr %i.e, i64 %i.bf
  %i.bh = load ptr, ptr %0, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !54
  %i.bk = sext i32 %i.bj to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bg, i8 %i.f, i64 %i.bk, i1 false)
  %i.bl = mul nsw i64 %i.d, 10
  %i.bm = getelementptr inbounds i8, ptr %i.e, i64 %i.bl
  %i.bn = load ptr, ptr %0, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !54
  %i.bq = sext i32 %i.bp to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bm, i8 %i.f, i64 %i.bq, i1 false)
  %i.br = mul nsw i64 %i.d, 11
  %i.bs = getelementptr inbounds i8, ptr %i.e, i64 %i.br
  %i.bt = load ptr, ptr %0, align 8, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !54
  %i.bw = sext i32 %i.bv to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bs, i8 %i.f, i64 %i.bw, i1 false)
  %i.bx = mul nsw i64 %i.d, 204
  %i.by = getelementptr inbounds i8, ptr %i.e, i64 %i.bx
  %i.bz = load ptr, ptr %0, align 8, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 104
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !54
  %i.cc = sext i32 %i.cb to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.by, i8 %i.f, i64 %i.cc, i1 false)
  %i.cd = mul nsw i64 %i.d, 205
  %i.ce = getelementptr inbounds i8, ptr %i.e, i64 %i.cd
  %i.cf = load ptr, ptr %0, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 104
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !54
  %i.ci = sext i32 %i.ch to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ce, i8 %i.f, i64 %i.ci, i1 false)
  %i.cj = mul nsw i64 %i.d, 206
  %i.ck = getelementptr inbounds i8, ptr %i.e, i64 %i.cj
  %i.cl = load ptr, ptr %0, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 104
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !54
  %i.co = sext i32 %i.cn to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ck, i8 %i.f, i64 %i.co, i1 false)
  %i.cp = mul nsw i64 %i.d, 207
  %i.cq = getelementptr inbounds i8, ptr %i.e, i64 %i.cp
  %i.cr = load ptr, ptr %0, align 8, !tbaa !31
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !54
  %i.cu = sext i32 %i.ct to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cq, i8 %i.f, i64 %i.cu, i1 false)
  %i.cv = mul nsw i64 %i.d, 208
  %i.cw = getelementptr inbounds i8, ptr %i.e, i64 %i.cv
  %i.cx = load ptr, ptr %0, align 8, !tbaa !31
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !54
  %i.da = sext i32 %i.cz to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cw, i8 %i.f, i64 %i.da, i1 false)
  %i.db = mul nsw i64 %i.d, 209
  %i.dc = getelementptr inbounds i8, ptr %i.e, i64 %i.db
  %i.dd = load ptr, ptr %0, align 8, !tbaa !31
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 104
  %i.df = load i32, ptr %i.de, align 8, !tbaa !54
  %i.dg = sext i32 %i.df to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dc, i8 %i.f, i64 %i.dg, i1 false)
  %i.dh = mul nsw i64 %i.d, 210
  %i.di = getelementptr inbounds i8, ptr %i.e, i64 %i.dh
  %i.dj = load ptr, ptr %0, align 8, !tbaa !31
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !54
  %i.dm = sext i32 %i.dl to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.di, i8 %i.f, i64 %i.dm, i1 false)
  %i.dn = mul nsw i64 %i.d, 211
  %i.do = getelementptr inbounds i8, ptr %i.e, i64 %i.dn
  %i.dp = load ptr, ptr %0, align 8, !tbaa !31
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !54
  %i.ds = sext i32 %i.dr to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.do, i8 %i.f, i64 %i.ds, i1 false)
  %i.dt = mul nsw i64 %i.d, 212
  %i.du = getelementptr inbounds i8, ptr %i.e, i64 %i.dt
  %i.dv = load ptr, ptr %0, align 8, !tbaa !31
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 104
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !54
  %i.dy = sext i32 %i.dx to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.du, i8 %i.f, i64 %i.dy, i1 false)
  %i.dz = mul nsw i64 %i.d, 213
  %i.ea = getelementptr inbounds i8, ptr %i.e, i64 %i.dz
  %i.eb = load ptr, ptr %0, align 8, !tbaa !31
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 104
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !54
  %i.ee = sext i32 %i.ed to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ea, i8 %i.f, i64 %i.ee, i1 false)
  %i.ef = mul nsw i64 %i.d, 214
  %i.eg = getelementptr inbounds i8, ptr %i.e, i64 %i.ef
  %i.eh = load ptr, ptr %0, align 8, !tbaa !31
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 104
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !54
  %i.ek = sext i32 %i.ej to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eg, i8 %i.f, i64 %i.ek, i1 false)
  %i.el = mul nsw i64 %i.d, 215
  %i.em = getelementptr inbounds i8, ptr %i.e, i64 %i.el
  %i.en = load ptr, ptr %0, align 8, !tbaa !31
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 104
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !54
  %i.eq = sext i32 %i.ep to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.em, i8 %i.f, i64 %i.eq, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 294 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader2.preheader
  %indvars.iv = phi i64 [ 12, %.preheader2.preheader ], [ %indvars.iv.next.5, %bb.b ] ; 7 uses
  %i.es = mul nsw i64 %indvars.iv, %i.d           ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.e, i64 %i.es
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.et, i8 %i.f, i64 6, i1 false)
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 %i.es
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.eu, i8 %i.f, i64 6, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.ev = mul nsw i64 %indvars.iv.next, %i.d      ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.e, i64 %i.ev
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ew, i8 %i.f, i64 6, i1 false)
  %i.ex = getelementptr inbounds i8, ptr %i.er, i64 %i.ev
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ex, i8 %i.f, i64 6, i1 false)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %i.ey = mul nsw i64 %indvars.iv.next.1, %i.d    ; 2 uses
end_hunk_0

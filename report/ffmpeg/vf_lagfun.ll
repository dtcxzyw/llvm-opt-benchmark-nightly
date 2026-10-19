Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_lagfun?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
begin_hunk_0_@lagfun_frame16:bb.a
  %i.ad = sdiv i64 %i.ac, %i.m                    ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv86
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41 ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv86
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv86
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !41 ; 4 uses
  %i.al = mul i32 %i.ak, %i.ab
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 1
  %i.ao = getelementptr [2 x i8], ptr %i.ai, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv86
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv86
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41 ; 4 uses
  %i.at = mul i32 %i.as, %i.ab
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 1
  %i.aw = getelementptr [2 x i8], ptr %i.aq, i64 %i.av ; 3 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv86 to i32
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = load i32, ptr %i.s, align 4, !tbaa !46
  %i.ba = and i32 %i.az, %i.ay
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv86
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41
  %i.bd = sub nsw i32 %i.ae, %i.ab
  tail call void @av_image_copy_plane(ptr noundef %i.aw, i32 noundef %i.as, ptr noundef %i.ao, i32 noundef %i.ak, i32 noundef %i.bc, i32 noundef %i.bd) #6
  %.pre = load i32, ptr %i.h, align 4, !tbaa !22
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.be = icmp slt i32 %i.ab, %i.ae
  br i1 %i.be, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.bf = icmp sgt i32 %i.ag, 0
  %i.bg = sext i32 %i.ak to i64                   ; 2 uses
  %i.bh = lshr i64 %i.bg, 1
  %i.bi = sext i32 %i.ag to i64
  %i.bj = sext i32 %i.as to i64                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 1
  br i1 %i.bf, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv86
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !43
  %i.bn = mul nsw i32 %i.ag, %i.ab
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bo
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 4 uses
  %i.bq = and i64 %i.bj, -2
  %i.br = xor i64 %i.aa, -1
  %i.bs = add i64 %i.ad, %i.br
  %i.bt = and i64 %i.bs, 4294967295               ; 2 uses
  %i.bu = mul nsw i64 %i.bq, %i.bt
  %i.bv = and i64 %i.au, -2
  %i.bw = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.aq, i64 %i.bu
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bv
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.bw
  %i.bz = and i64 %i.bg, -2
  %i.ca = mul nsw i64 %i.bz, %i.bt
  %i.cb = and i64 %i.am, -2
  %i.cc = getelementptr i8, ptr %i.ai, i64 %i.ca
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.cb
  %scevgep93 = getelementptr i8, ptr %i.cd, i64 %i.bw
  %min.iters.check = icmp ult i32 %i.ag, 4
  %bound0 = icmp ult ptr %i.aw, %scevgep93
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ce = or i32 %i.ak, %i.as
  %i.cf = icmp slt i32 %i.ce, 0
  %i.cg = or i1 %found.conflict, %i.cf
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07080 = phi i32 [ %i.ct, %._crit_edge ], [ %i.ab, %.preheader.preheader ]
  %.07179 = phi ptr [ %i.cs, %._crit_edge ], [ %i.aw, %.preheader.preheader ] ; 3 uses
  %.07278 = phi ptr [ %i.cr, %._crit_edge ], [ %i.bp, %.preheader.preheader ] ; 3 uses
  %.07377 = phi ptr [ %i.cq, %._crit_edge ], [ %i.ao, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.cg
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.07377, i64 %index
  %wide.load = load <4 x i16>, ptr %i.ch, align 2, !tbaa !52, !alias.scope !88
  %i.ci = uitofp <4 x i16> %wide.load to <4 x float>
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.07278, i64 %index ; 2 uses
  %wide.load95 = load <4 x float>, ptr %i.cj, align 4, !tbaa !48
  %i.ck = fmul nsz <4 x float> %broadcast.splat, %wide.load95
  %i.cl = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ci, <4 x float> %i.ck) ; 2 uses
  store <4 x float> %i.cl, ptr %i.cj, align 4, !tbaa !48
  %i.cm = tail call <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float> %i.cl)
  %i.cn = trunc <4 x i64> %i.cm to <4 x i16>
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.07179, i64 %index
  store <4 x i16> %i.cn, ptr %i.co, align 2, !tbaa !52, !alias.scope !89, !noalias !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.07377, i64 %i.bh
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.07278, i64 %i.bi
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.07179, i64 %i.bk
  %i.ct = add nsw i32 %.07080, 1                  ; 2 uses
  %exitcond85.not = icmp eq i32 %i.ct, %i.ae
  br i1 %exitcond85.not, label %.loopexit, label %.preheader, !llvm.loop !85

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.07377, i64 %indvars.iv
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !52
  %i.cw = uitofp nsz i16 %i.cv to float
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.07278, i64 %indvars.iv ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !48
  %i.cz = fmul nsz float %i.d, %i.cy
  %i.da = tail call nsz float @llvm.maxnum.f32(float %i.cw, float %i.cz) ; 2 uses
  store float %i.da, ptr %i.cx, align 4, !tbaa !48
  %i.db = tail call i64 @llvm.lrint.i64.f32(float %i.da)
  %i.dc = trunc i64 %i.db to i16
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.07179, i64 %indvars.iv
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !86

.loopexit:                                        ; preds = %._crit_edge, %bb.d, %.preheader.lr.ph, %bb.c
  %i.de = phi i32 [ %.pre, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %.preheader.lr.ph ], [ %i.v, %._crit_edge ] ; 2 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next87, %i.df
  br i1 %i.dg, label %bb.b, label %._crit_edge83, !llvm.loop !87
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lagfun_frame32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge83

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = sext i32 %2 to i64
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = add nsw i32 %2, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.b

._crit_edge83:                                    ; preds = %.loopexit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.v = phi i32 [ %i.i, %.lr.ph ], [ %i.dc, %.loopexit ] ; 3 uses
  %indvars.iv86 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next87, %.loopexit ] ; 10 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv86
  %i.x = load i32, ptr %i.w, align 4, !tbaa !41
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = mul nsw i64 %i.y, %i.l
  %i.aa = sdiv i64 %i.z, %i.m                     ; 2 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 6 uses
  %i.ac = mul nsw i64 %i.y, %i.o
  %i.ad = sdiv i64 %i.ac, %i.m                    ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv86
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41 ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv86
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv86
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !41 ; 4 uses
  %i.al = mul i32 %i.ak, %i.ab
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = getelementptr [4 x i8], ptr %i.ai, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv86
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv86
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41 ; 4 uses
  %i.at = mul i32 %i.as, %i.ab
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = getelementptr [4 x i8], ptr %i.aq, i64 %i.av ; 4 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv86 to i32
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = load i32, ptr %i.s, align 4, !tbaa !46
  %i.ba = and i32 %i.az, %i.ay
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv86
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41
  %i.bd = sub nsw i32 %i.ae, %i.ab
  tail call void @av_image_copy_plane(ptr noundef %i.aw, i32 noundef %i.as, ptr noundef %i.ao, i32 noundef %i.ak, i32 noundef %i.bc, i32 noundef %i.bd) #6
  %.pre = load i32, ptr %i.h, align 4, !tbaa !22
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.be = icmp slt i32 %i.ab, %i.ae
  br i1 %i.be, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.bf = icmp sgt i32 %i.ag, 0
  %i.bg = sext i32 %i.ak to i64                   ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = sext i32 %i.ag to i64                   ; 2 uses
  %i.bj = sext i32 %i.as to i64                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 2
  br i1 %i.bf, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv86
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !43 ; 2 uses
  %i.bn = mul i32 %i.ag, %i.ab
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr [4 x i8], ptr %i.bm, i64 %i.bo ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 4 uses
  %i.bq = shl nuw nsw i64 %i.bi, 2
  %i.br = xor i64 %i.aa, -1
  %i.bs = add i64 %i.ad, %i.br
  %i.bt = and i64 %i.bs, 4294967295               ; 3 uses
  %i.bu = mul i64 %i.bq, %i.bt
  %i.bv = shl nsw i64 %i.bo, 2
  %i.bw = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bm, i64 %i.bu
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bv
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.bw ; 2 uses
  %i.bz = and i64 %i.bj, -4
  %i.ca = mul nsw i64 %i.bz, %i.bt
  %i.cb = and i64 %i.au, -4
  %i.cc = getelementptr i8, ptr %i.aq, i64 %i.ca
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.cb
  %scevgep93 = getelementptr i8, ptr %i.cd, i64 %i.bw ; 2 uses
  %i.ce = and i64 %i.bg, -4
  %i.cf = mul nsw i64 %i.ce, %i.bt
  %i.cg = and i64 %i.am, -4
  %i.ch = getelementptr i8, ptr %i.ai, i64 %i.cf
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.cg
  %scevgep94 = getelementptr i8, ptr %i.ci, i64 %i.bw ; 2 uses
  %min.iters.check = icmp ult i32 %i.ag, 8
  %bound0 = icmp ult ptr %i.bp, %scevgep93
  %bound1 = icmp ult ptr %i.aw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.as, 0
  %i.cj = or i1 %found.conflict, %stride.check
  %bound095 = icmp ult ptr %i.bp, %scevgep94
  %bound196 = icmp ult ptr %i.ao, %scevgep
  %found.conflict97 = and i1 %bound095, %bound196
  %stride.check98 = icmp slt i32 %i.ak, 0
  %i.ck = or i1 %found.conflict97, %stride.check98
  %conflict.rdx = or i1 %i.cj, %i.ck
  %bound099 = icmp ult ptr %i.aw, %scevgep94
  %bound1100 = icmp ult ptr %i.ao, %scevgep93
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx104 = or i1 %conflict.rdx, %found.conflict101
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07080 = phi i32 [ %i.cu, %._crit_edge ], [ %i.ab, %.preheader.preheader ]
  %.07179 = phi ptr [ %i.ct, %._crit_edge ], [ %i.aw, %.preheader.preheader ] ; 3 uses
  %.07278 = phi ptr [ %i.cs, %._crit_edge ], [ %i.bp, %.preheader.preheader ] ; 3 uses
  %.07377 = phi ptr [ %i.cr, %._crit_edge ], [ %i.ao, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx104
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.07377, i64 %index
  %wide.load = load <4 x float>, ptr %i.cl, align 4, !tbaa !48, !alias.scope !98
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.07278, i64 %index ; 2 uses
  %wide.load105 = load <4 x float>, ptr %i.cm, align 4, !tbaa !48, !alias.scope !99, !noalias !100
  %i.cn = fmul nsz <4 x float> %broadcast.splat, %wide.load105
  %i.co = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load, <4 x float> %i.cn) ; 2 uses
  store <4 x float> %i.co, ptr %i.cm, align 4, !tbaa !48, !alias.scope !99, !noalias !100
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.07179, i64 %index
  store <4 x float> %i.co, ptr %i.cp, align 4, !tbaa !48, !alias.scope !101, !noalias !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.07377, i64 %i.bh
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.07278, i64 %i.bi
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.07179, i64 %i.bk
  %i.cu = add nsw i32 %.07080, 1                  ; 2 uses
  %exitcond85.not = icmp eq i32 %i.cu, %i.ae
  br i1 %exitcond85.not, label %.loopexit, label %.preheader, !llvm.loop !95

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.07377, i64 %indvars.iv
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !48
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.07278, i64 %indvars.iv ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !48
  %i.cz = fmul nsz float %i.d, %i.cy
  %i.da = tail call nsz float @llvm.maxnum.f32(float %i.cw, float %i.cz) ; 2 uses
  store float %i.da, ptr %i.cx, align 4, !tbaa !48
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.07179, i64 %indvars.iv
  store float %i.da, ptr %i.db, align 4, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !96

.loopexit:                                        ; preds = %._crit_edge, %bb.d, %.preheader.lr.ph, %bb.c
  %i.dc = phi i32 [ %.pre, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %.preheader.lr.ph ], [ %i.v, %._crit_edge ] ; 2 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next87, %i.dd
  br i1 %i.de, label %bb.b, label %._crit_edge83, !llvm.loop !97
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lagfun_framed8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge84

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = sext i32 %2 to i64
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = add nsw i32 %2, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.b

._crit_edge84:                                    ; preds = %.loopexit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv87 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next88, %.loopexit ] ; 10 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv87
  %i.w = load i32, ptr %i.v, align 4, !tbaa !41
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = mul nsw i64 %i.x, %i.l
  %i.z = sdiv i64 %i.y, %i.m                      ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 6 uses
  %i.ab = mul nsw i64 %i.x, %i.o
  %i.ac = sdiv i64 %i.ab, %i.m                    ; 2 uses
  %i.ad = trunc i64 %i.ac to i32                  ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv87
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41 ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv87
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv87 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41 ; 2 uses
  %i.ak = mul nsw i32 %i.aj, %i.aa
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv87
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !45
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv87 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !41 ; 2 uses
  %i.ar = mul nsw i32 %i.aq, %i.aa
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.av = shl nuw i32 1, %i.au
  %i.aw = load i32, ptr %i.s, align 4, !tbaa !46
  %i.ax = and i32 %i.aw, %i.av
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv87
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !41
  %i.ba = sub nsw i32 %i.ad, %i.aa
  tail call void @av_image_copy_plane(ptr noundef %i.at, i32 noundef %i.aq, ptr noundef %i.am, i32 noundef %i.aj, i32 noundef %i.az, i32 noundef %i.ba) #6
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.bb = icmp slt i32 %i.aa, %i.ad
  br i1 %i.bb, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.bc = icmp sgt i32 %i.af, 0
  %i.bd = sext i32 %i.af to i64                   ; 2 uses
  br i1 %i.bc, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv87
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !43 ; 2 uses
  %i.bg = mul i32 %i.af, %i.aa
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %i.bf, i64 %i.bh ; 3 uses
  %wide.trip.count = zext nneg i32 %i.af to i64   ; 6 uses
  %i.bj = shl nuw nsw i64 %i.bd, 2
  %i.bk = xor i64 %i.z, -1
  %i.bl = add i64 %i.ac, %i.bk
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = mul i64 %i.bj, %i.bm
  %i.bo = add nsw i64 %i.bh, %wide.trip.count
  %i.bp = shl nsw i64 %i.bo, 2
  %i.bq = getelementptr i8, ptr %i.bf, i64 %i.bp
  %scevgep = getelementptr i8, ptr %i.bq, i64 %i.bn ; 2 uses
  %min.iters.check = icmp ult i32 %i.af, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07181 = phi i32 [ %i.cf, %._crit_edge ], [ %i.aa, %.preheader.preheader ]
  %.07280 = phi ptr [ %i.ce, %._crit_edge ], [ %i.at, %.preheader.preheader ] ; 6 uses
  %.07379 = phi ptr [ %i.cb, %._crit_edge ], [ %i.bi, %.preheader.preheader ] ; 3 uses
  %.07478 = phi ptr [ %i.ca, %._crit_edge ], [ %i.am, %.preheader.preheader ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %scevgep93 = getelementptr i8, ptr %.07280, i64 %wide.trip.count ; 2 uses
  %scevgep94 = getelementptr i8, ptr %.07478, i64 %wide.trip.count ; 2 uses
  %bound0 = icmp ult ptr %i.bi, %scevgep93
  %bound1 = icmp ult ptr %.07280, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound095 = icmp ult ptr %i.bi, %scevgep94
  %bound196 = icmp ult ptr %.07478, %scevgep
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx = or i1 %found.conflict, %found.conflict97
  %bound098 = icmp ult ptr %.07280, %scevgep94
  %bound199 = icmp ult ptr %.07478, %scevgep93
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %conflict.rdx, %found.conflict100
  br i1 %conflict.rdx101, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.07478, i64 %index ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.br, align 1, !tbaa !47, !alias.scope !110
  %i.bs = uitofp <4 x i8> %wide.load to <4 x float>
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.07379, i64 %index ; 2 uses
  %wide.load102 = load <4 x float>, ptr %i.bt, align 4, !tbaa !48, !alias.scope !111, !noalias !112
end_hunk_0
begin_hunk_1_@lagfun_framed16:bb.a
  %i.z = mul nsw i64 %i.y, %i.l
  %i.aa = sdiv i64 %i.z, %i.m                     ; 2 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 6 uses
  %i.ac = mul nsw i64 %i.y, %i.o
  %i.ad = sdiv i64 %i.ac, %i.m                    ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv87
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41 ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv87
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv87
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !41 ; 4 uses
  %i.al = mul i32 %i.ak, %i.ab
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 1
  %i.ao = getelementptr [2 x i8], ptr %i.ai, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv87
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv87
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41 ; 4 uses
  %i.at = mul i32 %i.as, %i.ab
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 1
  %i.aw = getelementptr [2 x i8], ptr %i.aq, i64 %i.av ; 3 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = load i32, ptr %i.s, align 4, !tbaa !46
  %i.ba = and i32 %i.az, %i.ay
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv87
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41
  %i.bd = sub nsw i32 %i.ae, %i.ab
  tail call void @av_image_copy_plane(ptr noundef %i.aw, i32 noundef %i.as, ptr noundef %i.ao, i32 noundef %i.ak, i32 noundef %i.bc, i32 noundef %i.bd) #6
  %.pre = load i32, ptr %i.h, align 4, !tbaa !22
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.be = icmp slt i32 %i.ab, %i.ae
  br i1 %i.be, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.bf = icmp sgt i32 %i.ag, 0
  %i.bg = sext i32 %i.ak to i64                   ; 2 uses
  %i.bh = lshr i64 %i.bg, 1
  %i.bi = sext i32 %i.ag to i64
  %i.bj = sext i32 %i.as to i64                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 1
  br i1 %i.bf, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv87
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !43
  %i.bn = mul nsw i32 %i.ag, %i.ab
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bo
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 4 uses
  %i.bq = and i64 %i.bj, -2
  %i.br = xor i64 %i.aa, -1
  %i.bs = add i64 %i.ad, %i.br
  %i.bt = and i64 %i.bs, 4294967295               ; 2 uses
  %i.bu = mul nsw i64 %i.bq, %i.bt
  %i.bv = and i64 %i.au, -2
  %i.bw = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.bx = getelementptr i8, ptr %i.aq, i64 %i.bu
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bv
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.bw
  %i.bz = and i64 %i.bg, -2
  %i.ca = mul nsw i64 %i.bz, %i.bt
  %i.cb = and i64 %i.am, -2
  %i.cc = getelementptr i8, ptr %i.ai, i64 %i.ca
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.cb
  %scevgep94 = getelementptr i8, ptr %i.cd, i64 %i.bw
  %min.iters.check = icmp ult i32 %i.ag, 4
  %bound0 = icmp ult ptr %i.aw, %scevgep94
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ce = or i32 %i.ak, %i.as
  %i.cf = icmp slt i32 %i.ce, 0
  %i.cg = or i1 %found.conflict, %i.cf
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07181 = phi i32 [ %i.cr, %._crit_edge ], [ %i.ab, %.preheader.preheader ]
  %.07280 = phi ptr [ %i.cq, %._crit_edge ], [ %i.aw, %.preheader.preheader ] ; 3 uses
  %.07379 = phi ptr [ %i.cp, %._crit_edge ], [ %i.bp, %.preheader.preheader ] ; 3 uses
  %.07478 = phi ptr [ %i.co, %._crit_edge ], [ %i.ao, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.cg
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.07478, i64 %index
  %wide.load = load <4 x i16>, ptr %i.ch, align 2, !tbaa !52, !alias.scope !121 ; 2 uses
  %i.ci = uitofp <4 x i16> %wide.load to <4 x float>
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.07379, i64 %index ; 2 uses
  %wide.load96 = load <4 x float>, ptr %i.cj, align 4, !tbaa !48
  %i.ck = fmul nsz <4 x float> %broadcast.splat, %wide.load96
  %i.cl = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ci, <4 x float> %i.ck)
  store <4 x float> %i.cl, ptr %i.cj, align 4, !tbaa !48
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.07280, i64 %index
  store <4 x i16> %wide.load, ptr %i.cm, align 2, !tbaa !52, !alias.scope !122, !noalias !121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.07478, i64 %i.bh
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.07379, i64 %i.bi
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.07280, i64 %i.bk
  %i.cr = add nsw i32 %.07181, 1                  ; 2 uses
  %exitcond86.not = icmp eq i32 %i.cr, %i.ae
  br i1 %exitcond86.not, label %.loopexit, label %.preheader, !llvm.loop !118

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.07478, i64 %indvars.iv
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !52 ; 2 uses
  %i.cu = uitofp nsz i16 %i.ct to float
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.07379, i64 %indvars.iv ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !48
  %i.cx = fmul nsz float %i.d, %i.cw
  %i.cy = tail call nsz float @llvm.maxnum.f32(float %i.cu, float %i.cx)
  store float %i.cy, ptr %i.cv, align 4, !tbaa !48
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.07280, i64 %indvars.iv
  store i16 %i.ct, ptr %i.cz, align 2, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !119

.loopexit:                                        ; preds = %._crit_edge, %bb.d, %.preheader.lr.ph, %bb.c
  %i.da = phi i32 [ %.pre, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %.preheader.lr.ph ], [ %i.v, %._crit_edge ] ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp slt i64 %indvars.iv.next88, %i.db
  br i1 %i.dc, label %bb.b, label %._crit_edge84, !llvm.loop !120
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lagfun_framed32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load float, ptr %i.c, align 8, !tbaa !44 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge84

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = sext i32 %2 to i64
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = add nsw i32 %2, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.b

._crit_edge84:                                    ; preds = %.loopexit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.v = phi i32 [ %i.i, %.lr.ph ], [ %i.dd, %.loopexit ] ; 3 uses
  %indvars.iv87 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next88, %.loopexit ] ; 10 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv87
  %i.x = load i32, ptr %i.w, align 4, !tbaa !41
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = mul nsw i64 %i.y, %i.l
  %i.aa = sdiv i64 %i.z, %i.m                     ; 2 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 6 uses
  %i.ac = mul nsw i64 %i.y, %i.o
  %i.ad = sdiv i64 %i.ac, %i.m                    ; 2 uses
  %i.ae = trunc i64 %i.ad to i32                  ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv87
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41 ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv87
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv87
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !41 ; 4 uses
  %i.al = mul i32 %i.ak, %i.ab
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = getelementptr [4 x i8], ptr %i.ai, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv87
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv87
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41 ; 4 uses
  %i.at = mul i32 %i.as, %i.ab
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = getelementptr [4 x i8], ptr %i.aq, i64 %i.av ; 4 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = load i32, ptr %i.s, align 4, !tbaa !46
  %i.ba = and i32 %i.az, %i.ay
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv87
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41
  %i.bd = sub nsw i32 %i.ae, %i.ab
  tail call void @av_image_copy_plane(ptr noundef %i.aw, i32 noundef %i.as, ptr noundef %i.ao, i32 noundef %i.ak, i32 noundef %i.bc, i32 noundef %i.bd) #6
  %.pre = load i32, ptr %i.h, align 4, !tbaa !22
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.be = icmp slt i32 %i.ab, %i.ae
  br i1 %i.be, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.bf = icmp sgt i32 %i.ag, 0
  %i.bg = sext i32 %i.ak to i64                   ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = sext i32 %i.ag to i64                   ; 2 uses
  %i.bj = sext i32 %i.as to i64                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 2
  br i1 %i.bf, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv87
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !43 ; 2 uses
  %i.bn = mul i32 %i.ag, %i.ab
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr [4 x i8], ptr %i.bm, i64 %i.bo ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 4 uses
  %i.bq = shl nuw nsw i64 %i.bi, 2
  %i.br = xor i64 %i.aa, -1
  %i.bs = add i64 %i.ad, %i.br
  %i.bt = and i64 %i.bs, 4294967295               ; 3 uses
  %i.bu = mul i64 %i.bq, %i.bt
  %i.bv = shl nsw i64 %i.bo, 2
  %i.bw = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.bx = getelementptr i8, ptr %i.bm, i64 %i.bu
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bv
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.bw ; 2 uses
  %i.bz = and i64 %i.bj, -4
  %i.ca = mul nsw i64 %i.bz, %i.bt
  %i.cb = and i64 %i.au, -4
  %i.cc = getelementptr i8, ptr %i.aq, i64 %i.ca
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.cb
  %scevgep94 = getelementptr i8, ptr %i.cd, i64 %i.bw ; 2 uses
  %i.ce = and i64 %i.bg, -4
  %i.cf = mul nsw i64 %i.ce, %i.bt
  %i.cg = and i64 %i.am, -4
  %i.ch = getelementptr i8, ptr %i.ai, i64 %i.cf
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.cg
  %scevgep95 = getelementptr i8, ptr %i.ci, i64 %i.bw ; 2 uses
  %min.iters.check = icmp ult i32 %i.ag, 8
  %bound0 = icmp ult ptr %i.bp, %scevgep94
  %bound1 = icmp ult ptr %i.aw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.as, 0
  %i.cj = or i1 %found.conflict, %stride.check
  %bound096 = icmp ult ptr %i.bp, %scevgep95
  %bound197 = icmp ult ptr %i.ao, %scevgep
  %found.conflict98 = and i1 %bound096, %bound197
  %stride.check99 = icmp slt i32 %i.ak, 0
  %i.ck = or i1 %found.conflict98, %stride.check99
  %conflict.rdx = or i1 %i.cj, %i.ck
  %bound0100 = icmp ult ptr %i.aw, %scevgep95
  %bound1101 = icmp ult ptr %i.ao, %scevgep94
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx105 = or i1 %conflict.rdx, %found.conflict102
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07181 = phi i32 [ %i.cu, %._crit_edge ], [ %i.ab, %.preheader.preheader ]
  %.07280 = phi ptr [ %i.ct, %._crit_edge ], [ %i.aw, %.preheader.preheader ] ; 3 uses
  %.07379 = phi ptr [ %i.cs, %._crit_edge ], [ %i.bp, %.preheader.preheader ] ; 3 uses
  %.07478 = phi ptr [ %i.cr, %._crit_edge ], [ %i.ao, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx105
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.07478, i64 %index
  %wide.load = load <4 x float>, ptr %i.cl, align 4, !tbaa !48, !alias.scope !131 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.07379, i64 %index ; 2 uses
  %wide.load106 = load <4 x float>, ptr %i.cm, align 4, !tbaa !48, !alias.scope !132, !noalias !133
  %i.cn = fmul nsz <4 x float> %broadcast.splat, %wide.load106
  %i.co = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load, <4 x float> %i.cn)
  store <4 x float> %i.co, ptr %i.cm, align 4, !tbaa !48, !alias.scope !132, !noalias !133
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.07280, i64 %index
  store <4 x float> %wide.load, ptr %i.cp, align 4, !tbaa !48, !alias.scope !134, !noalias !131
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.07478, i64 %i.bh
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.07379, i64 %i.bi
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.07280, i64 %i.bk
  %i.cu = add nsw i32 %.07181, 1                  ; 2 uses
  %exitcond86.not = icmp eq i32 %i.cu, %i.ae
  br i1 %exitcond86.not, label %.loopexit, label %.preheader, !llvm.loop !128

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.07478, i64 %indvars.iv ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !48
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.07379, i64 %indvars.iv ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !48
  %i.cz = fmul nsz float %i.d, %i.cy
  %i.da = tail call nsz float @llvm.maxnum.f32(float %i.cw, float %i.cz)
  store float %i.da, ptr %i.cx, align 4, !tbaa !48
  %i.db = load float, ptr %i.cv, align 4, !tbaa !48
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.07280, i64 %indvars.iv
  store float %i.db, ptr %i.dc, align 4, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !129

.loopexit:                                        ; preds = %._crit_edge, %bb.d, %.preheader.lr.ph, %bb.c
  %i.dd = phi i32 [ %.pre, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %.preheader.lr.ph ], [ %i.v, %._crit_edge ] ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next88, %i.de
  br i1 %i.df, label %bb.b, label %._crit_edge84, !llvm.loop !130
}

declare i32 @av_image_fill_linesizes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #5

declare ptr @av_default_item_name(ptr noundef) #1

declare void @av_freep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.lrint.v4i64.v4f32(<4 x float>) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"float", !5, i64 0}
!21 = !{!"LagfunContext", !10, i64 0, !20, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !5, i64 40, !5, i64 56, !5, i64 72, !5, i64 104}
!22 = !{!21, !6, i64 20}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!25 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!26 = !{!"AVRational", !6, i64 0, !6, i64 4}
!27 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!28 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!29 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!30 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!31 = !{!"AVFilterFormatsConfig", !29, i64 0, !29, i64 8, !30, i64 16, !29, i64 24, !29, i64 32, !29, i64 40}
!32 = !{!"AVFilterLink", !25, i64 0, !13, i64 8, !25, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !26, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !27, i64 72, !26, i64 96, !28, i64 104, !6, i64 112, !6, i64 116, !31, i64 120, !31, i64 168}
!33 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!32, !6, i64 40}
!36 = !{!32, !6, i64 44}
!37 = !{!"ThreadData", !24, i64 0, !24, i64 8}
!38 = !{!37, !24, i64 8}
!39 = !{!37, !24, i64 0}
!40 = !{!9, !9, i64 0}
!41 = !{!6, !6, i64 0}
!42 = !{!"p1 float", !9, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!21, !20, i64 8}
!45 = !{!12, !12, i64 0}
!46 = !{!21, !6, i64 12}
!47 = !{!5, !5, i64 0}
!48 = !{!20, !20, i64 0}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!"short", !5, i64 0}
!52 = !{!51, !51, i64 0}
!53 = distinct !{!53, !23}
!54 = !{!24, !24, i64 0}
!55 = !{!32, !25, i64 16}
!56 = !{!18, !15, i64 56}
!57 = !{!18, !6, i64 104}
!58 = distinct !{!58, !23}
!59 = !{!32, !25, i64 0}
!60 = !{!18, !15, i64 32}
!61 = !{!32, !6, i64 36}
!62 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!63 = !{!62, !6, i64 16}
!64 = !{!21, !6, i64 16}
!65 = !{!"long", !5, i64 0}
!66 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !65, i64 16, !5, i64 24, !12, i64 104}
!67 = !{!66, !5, i64 9}
!68 = !{!66, !5, i64 10}
!69 = distinct !{!69, i1 false, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !69}
!73 = distinct !{!73, !23, !49, !50}
!74 = distinct !{!74, !23}
!75 = distinct !{!75, !23, !49}
!76 = distinct !{!76, !23}
!77 = !{!70}
!78 = !{!71}
!79 = !{!72, !70}
!80 = !{!72}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !23, !49, !50}
!85 = distinct !{!85, !23}
!86 = distinct !{!86, !23, !49}
!87 = distinct !{!87, !23}
!88 = !{!82}
!89 = !{!83}
!90 = distinct !{!90, i1 false, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !90}
!94 = distinct !{!94, !23, !49, !50}
!95 = distinct !{!95, !23}
end_hunk_1

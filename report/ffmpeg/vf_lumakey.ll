Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_lumakey?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0_@do_lumakey_slice8:bb.a
  %i.af = load i32, ptr %i.p, align 8, !tbaa !39  ; 2 uses
  %i.ag = mul nsw i32 %i.af, %i.j
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !51
  %i.al = load i32, ptr %i.q, align 4, !tbaa !39  ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.j
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.ap = phi i32 [ %i.bl, %._crit_edge ], [ %i.al, %.preheader.preheader ]
  %i.aq = phi i32 [ %i.bm, %._crit_edge ], [ %i.af, %.preheader.preheader ]
  %i.ar = phi i32 [ %i.bn, %._crit_edge ], [ %i.ac, %.preheader.preheader ] ; 2 uses
  %.071 = phi i32 [ %i.bs, %._crit_edge ], [ %i.j, %.preheader.preheader ]
  %.06070 = phi ptr [ %i.bp, %._crit_edge ], [ %i.ai, %.preheader.preheader ] ; 2 uses
  %.06169 = phi ptr [ %i.br, %._crit_edge ], [ %i.ao, %.preheader.preheader ] ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.06070, i64 %indvars.iv
  %i.au = load i8, ptr %i.at, align 1, !tbaa !57
  %i.av = zext i8 %i.au to i32                    ; 6 uses
  %.not = icmp sgt i32 %i.w, %i.av                ; 2 uses
  %.not65 = icmp slt i32 %i.u, %i.av
  %or.cond = select i1 %.not, i1 true, i1 %.not65
  br i1 %or.cond, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %.lr.ph
  %i.aw = icmp slt i32 %i.z, %i.av
  %i.ax = icmp sgt i32 %i.aa, %i.av
  %or.cond67 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond67, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = add i32 %i.ab, %i.av
  %i.az = mul nsw i32 %i.ay, 255
  %i.ba = sdiv i32 %i.az, %i.s
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = xor i8 %i.bb, -1
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.bd = sub nsw i32 %i.av, %i.u
  %i.be = mul nsw i32 %i.bd, 255
  %i.bf = sdiv i32 %i.be, %i.s
  %i.bg = trunc i32 %i.bf to i8
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph, %bb.e, %bb.d
  %.sink = phi i8 [ %i.bg, %bb.e ], [ %i.bc, %bb.d ], [ 0, %.lr.ph ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.06169, i64 %indvars.iv
  store i8 %.sink, ptr %i.bh, align 1, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.y, align 8, !tbaa !50  ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !55

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load i32, ptr %i.p, align 8, !tbaa !39
  %.pre75 = load i32, ptr %i.q, align 4, !tbaa !39
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bl = phi i32 [ %.pre75, %._crit_edge.loopexit ], [ %i.ap, %.preheader ] ; 2 uses
  %i.bm = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.aq, %.preheader ] ; 2 uses
  %i.bn = phi i32 [ %i.bi, %._crit_edge.loopexit ], [ %i.ar, %.preheader ]
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr inbounds i8, ptr %.06070, i64 %i.bo
  %i.bq = sext i32 %i.bl to i64
  %i.br = getelementptr inbounds i8, ptr %.06169, i64 %i.bq
  %i.bs = add nsw i32 %.071, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bs, %i.o
  br i1 %exitcond.not, label %._crit_edge72, label %.preheader, !llvm.loop !56

._crit_edge72:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_lumakey_slice16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %2 to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = sdiv i64 %i.g, %i.h                      ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 4 uses
  %i.k = add nsw i32 %2, 1
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.e, %i.l
  %i.n = sdiv i64 %i.m, %i.h                      ; 2 uses
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !41   ; 21 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !48   ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !49   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37   ; 20 uses
  %i.x = icmp slt i32 %i.j, %i.o
  br i1 %i.x, label %.preheader.lr.ph, label %._crit_edge76.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !39   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !39 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !50 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = sub nsw i32 %i.u, %i.q                  ; 2 uses
  %i.ag = add nsw i32 %i.s, %i.q                  ; 2 uses
  %i.ah = sub i32 %i.q, %i.u                      ; 9 uses
  %i.ai = sdiv i32 %i.z, 2
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = sdiv i32 %i.ab, 2
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  br i1 %i.ae, label %.preheader.preheader, label %._crit_edge76.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51 ; 2 uses
  %i.ao = mul i32 %i.ab, %i.j
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 %i.ap  ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.as = mul i32 %i.z, %i.j
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.at  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ad to i64   ; 5 uses
  %i.av = xor i64 %i.i, -1
  %i.aw = add i64 %i.n, %i.av
  %i.ax = and i64 %i.aw, 4294967295               ; 2 uses
  %i.ay = mul nsw i64 %i.ax, %i.al
  %i.az = add i64 %i.ay, %wide.trip.count
  %i.ba = shl i64 %i.az, 1
  %i.bb = getelementptr i8, ptr %i.an, i64 %i.ba
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.ap
  %i.bc = mul nsw i64 %i.ax, %i.aj
  %i.bd = add i64 %i.bc, %wide.trip.count
  %i.be = shl i64 %i.bd, 1
  %i.bf = getelementptr i8, ptr %i.ar, i64 %i.be
  %scevgep84 = getelementptr i8, ptr %i.bf, i64 %i.at
  %min.iters.check = icmp ult i32 %i.ad, 16
  %bound0 = icmp ult ptr %i.aq, %scevgep84
  %bound1 = icmp ult ptr %i.au, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ab, -1
  %i.bg = or i1 %found.conflict, %stride.check
  %stride.check85 = icmp slt i32 %i.z, -1
  %i.bh = or i1 %i.bg, %stride.check85
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert86 = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat87 = shufflevector <8 x i32> %broadcast.splatinsert86, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat89 = shufflevector <8 x i32> %broadcast.splatinsert88, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert90 = insertelement <8 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat91 = shufflevector <8 x i32> %broadcast.splatinsert90, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert92 = insertelement <8 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat93 = shufflevector <8 x i32> %broadcast.splatinsert92, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.075 = phi i32 [ %i.ie, %._crit_edge ], [ %i.j, %.preheader.preheader ]
  %.06474 = phi ptr [ %i.ic, %._crit_edge ], [ %i.au, %.preheader.preheader ] ; 3 uses
  %.06573 = phi ptr [ %i.id, %._crit_edge ], [ %i.aq, %.preheader.preheader ] ; 10 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bh
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %pred.store.continue138
  %index = phi i64 [ %index.next, %pred.store.continue138 ], [ 0, %.preheader ] ; 10 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.06474, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bi, align 2, !tbaa !66, !alias.scope !67
  %i.bj = zext <8 x i16> %wide.load to <8 x i32>  ; 20 uses
  %i.bk = icmp sgt <8 x i32> %broadcast.splat, %i.bj ; 3 uses
  %i.bl = icmp slt <8 x i32> %broadcast.splat87, %i.bj
  %i.bm = select <8 x i1> %i.bk, <8 x i1> splat (i1 true), <8 x i1> %i.bl ; 2 uses
  %i.bn = icmp slt <8 x i32> %broadcast.splat89, %i.bj
  %i.bo = icmp sgt <8 x i32> %broadcast.splat91, %i.bj
  %i.bp = select <8 x i1> %i.bm, <8 x i1> %i.bn, <8 x i1> zeroinitializer
  %i.bq = select <8 x i1> %i.bp, <8 x i1> %i.bo, <8 x i1> zeroinitializer ; 3 uses
  %i.br = xor <8 x i1> %i.bk, splat (i1 true)
  %i.bs = select <8 x i1> %i.bq, <8 x i1> %i.br, <8 x i1> zeroinitializer ; 9 uses
  %i.bt = extractelement <8 x i1> %i.bs, i64 0
  br i1 %i.bt, label %pred.sdiv.if, label %pred.sdiv.continue

pred.sdiv.if:                                     ; preds = %vector.body
  %i.bu = extractelement <8 x i32> %i.bj, i64 0
  %i.bv = sub nsw i32 %i.bu, %i.s
  %i.bw = mul nsw i32 %i.bv, %i.w
  %i.bx = sdiv i32 %i.bw, %i.q
  %i.by = insertelement <8 x i32> poison, i32 %i.bx, i64 0
  br label %pred.sdiv.continue

pred.sdiv.continue:                               ; preds = %pred.sdiv.if, %vector.body
  %i.bz = phi <8 x i32> [ poison, %vector.body ], [ %i.by, %pred.sdiv.if ] ; 2 uses
  %i.ca = extractelement <8 x i1> %i.bs, i64 1
  br i1 %i.ca, label %pred.sdiv.if94, label %pred.sdiv.continue95

pred.sdiv.if94:                                   ; preds = %pred.sdiv.continue
  %i.cb = extractelement <8 x i32> %i.bj, i64 1
  %i.cc = sub nsw i32 %i.cb, %i.s
  %i.cd = mul nsw i32 %i.cc, %i.w
  %i.ce = sdiv i32 %i.cd, %i.q
  %i.cf = insertelement <8 x i32> %i.bz, i32 %i.ce, i64 1
  br label %pred.sdiv.continue95

pred.sdiv.continue95:                             ; preds = %pred.sdiv.if94, %pred.sdiv.continue
  %i.cg = phi <8 x i32> [ %i.bz, %pred.sdiv.continue ], [ %i.cf, %pred.sdiv.if94 ] ; 2 uses
  %i.ch = extractelement <8 x i1> %i.bs, i64 2
  br i1 %i.ch, label %pred.sdiv.if96, label %pred.sdiv.continue97

pred.sdiv.if96:                                   ; preds = %pred.sdiv.continue95
  %i.ci = extractelement <8 x i32> %i.bj, i64 2
  %i.cj = sub nsw i32 %i.ci, %i.s
  %i.ck = mul nsw i32 %i.cj, %i.w
  %i.cl = sdiv i32 %i.ck, %i.q
  %i.cm = insertelement <8 x i32> %i.cg, i32 %i.cl, i64 2
  br label %pred.sdiv.continue97

pred.sdiv.continue97:                             ; preds = %pred.sdiv.if96, %pred.sdiv.continue95
  %i.cn = phi <8 x i32> [ %i.cg, %pred.sdiv.continue95 ], [ %i.cm, %pred.sdiv.if96 ] ; 2 uses
  %i.co = extractelement <8 x i1> %i.bs, i64 3
  br i1 %i.co, label %pred.sdiv.if98, label %pred.sdiv.continue99

pred.sdiv.if98:                                   ; preds = %pred.sdiv.continue97
  %i.cp = extractelement <8 x i32> %i.bj, i64 3
  %i.cq = sub nsw i32 %i.cp, %i.s
  %i.cr = mul nsw i32 %i.cq, %i.w
  %i.cs = sdiv i32 %i.cr, %i.q
  %i.ct = insertelement <8 x i32> %i.cn, i32 %i.cs, i64 3
  br label %pred.sdiv.continue99

pred.sdiv.continue99:                             ; preds = %pred.sdiv.if98, %pred.sdiv.continue97
  %i.cu = phi <8 x i32> [ %i.cn, %pred.sdiv.continue97 ], [ %i.ct, %pred.sdiv.if98 ] ; 2 uses
  %i.cv = extractelement <8 x i1> %i.bs, i64 4
  br i1 %i.cv, label %pred.sdiv.if100, label %pred.sdiv.continue101

pred.sdiv.if100:                                  ; preds = %pred.sdiv.continue99
  %i.cw = extractelement <8 x i32> %i.bj, i64 4
  %i.cx = sub nsw i32 %i.cw, %i.s
  %i.cy = mul nsw i32 %i.cx, %i.w
  %i.cz = sdiv i32 %i.cy, %i.q
  %i.da = insertelement <8 x i32> %i.cu, i32 %i.cz, i64 4
  br label %pred.sdiv.continue101

pred.sdiv.continue101:                            ; preds = %pred.sdiv.if100, %pred.sdiv.continue99
  %i.db = phi <8 x i32> [ %i.cu, %pred.sdiv.continue99 ], [ %i.da, %pred.sdiv.if100 ] ; 2 uses
  %i.dc = extractelement <8 x i1> %i.bs, i64 5
  br i1 %i.dc, label %pred.sdiv.if102, label %pred.sdiv.continue103

pred.sdiv.if102:                                  ; preds = %pred.sdiv.continue101
  %i.dd = extractelement <8 x i32> %i.bj, i64 5
  %i.de = sub nsw i32 %i.dd, %i.s
  %i.df = mul nsw i32 %i.de, %i.w
  %i.dg = sdiv i32 %i.df, %i.q
  %i.dh = insertelement <8 x i32> %i.db, i32 %i.dg, i64 5
  br label %pred.sdiv.continue103

pred.sdiv.continue103:                            ; preds = %pred.sdiv.if102, %pred.sdiv.continue101
  %i.di = phi <8 x i32> [ %i.db, %pred.sdiv.continue101 ], [ %i.dh, %pred.sdiv.if102 ] ; 2 uses
  %i.dj = extractelement <8 x i1> %i.bs, i64 6
  br i1 %i.dj, label %pred.sdiv.if104, label %pred.sdiv.continue105

pred.sdiv.if104:                                  ; preds = %pred.sdiv.continue103
  %i.dk = extractelement <8 x i32> %i.bj, i64 6
  %i.dl = sub nsw i32 %i.dk, %i.s
  %i.dm = mul nsw i32 %i.dl, %i.w
  %i.dn = sdiv i32 %i.dm, %i.q
  %i.do = insertelement <8 x i32> %i.di, i32 %i.dn, i64 6
  br label %pred.sdiv.continue105

pred.sdiv.continue105:                            ; preds = %pred.sdiv.if104, %pred.sdiv.continue103
  %i.dp = phi <8 x i32> [ %i.di, %pred.sdiv.continue103 ], [ %i.do, %pred.sdiv.if104 ] ; 2 uses
  %i.dq = extractelement <8 x i1> %i.bs, i64 7
  br i1 %i.dq, label %pred.sdiv.if106, label %pred.sdiv.continue107

pred.sdiv.if106:                                  ; preds = %pred.sdiv.continue105
  %i.dr = extractelement <8 x i32> %i.bj, i64 7
  %i.ds = sub nsw i32 %i.dr, %i.s
  %i.dt = mul nsw i32 %i.ds, %i.w
  %i.du = sdiv i32 %i.dt, %i.q
  %i.dv = insertelement <8 x i32> %i.dp, i32 %i.du, i64 7
  br label %pred.sdiv.continue107

pred.sdiv.continue107:                            ; preds = %pred.sdiv.if106, %pred.sdiv.continue105
  %i.dw = phi <8 x i32> [ %i.dp, %pred.sdiv.continue105 ], [ %i.dv, %pred.sdiv.if106 ]
  %i.dx = trunc <8 x i32> %i.dw to <8 x i16>
  %i.dy = select <8 x i1> %i.bq, <8 x i1> %i.bk, <8 x i1> zeroinitializer ; 9 uses
  %i.dz = extractelement <8 x i1> %i.dy, i64 0
  br i1 %i.dz, label %pred.sdiv.if108, label %pred.sdiv.continue109

pred.sdiv.if108:                                  ; preds = %pred.sdiv.continue107
  %i.ea = extractelement <8 x i32> %i.bj, i64 0
  %i.eb = add i32 %i.ah, %i.ea
  %i.ec = mul nsw i32 %i.eb, %i.w
  %i.ed = sdiv i32 %i.ec, %i.q
  %i.ee = insertelement <8 x i32> poison, i32 %i.ed, i64 0
  br label %pred.sdiv.continue109

pred.sdiv.continue109:                            ; preds = %pred.sdiv.if108, %pred.sdiv.continue107
  %i.ef = phi <8 x i32> [ poison, %pred.sdiv.continue107 ], [ %i.ee, %pred.sdiv.if108 ] ; 2 uses
  %i.eg = extractelement <8 x i1> %i.dy, i64 1
  br i1 %i.eg, label %pred.sdiv.if110, label %pred.sdiv.continue111

pred.sdiv.if110:                                  ; preds = %pred.sdiv.continue109
  %i.eh = extractelement <8 x i32> %i.bj, i64 1
  %i.ei = add i32 %i.ah, %i.eh
  %i.ej = mul nsw i32 %i.ei, %i.w
  %i.ek = sdiv i32 %i.ej, %i.q
  %i.el = insertelement <8 x i32> %i.ef, i32 %i.ek, i64 1
  br label %pred.sdiv.continue111

pred.sdiv.continue111:                            ; preds = %pred.sdiv.if110, %pred.sdiv.continue109
  %i.em = phi <8 x i32> [ %i.ef, %pred.sdiv.continue109 ], [ %i.el, %pred.sdiv.if110 ] ; 2 uses
  %i.en = extractelement <8 x i1> %i.dy, i64 2
  br i1 %i.en, label %pred.sdiv.if112, label %pred.sdiv.continue113

pred.sdiv.if112:                                  ; preds = %pred.sdiv.continue111
  %i.eo = extractelement <8 x i32> %i.bj, i64 2
  %i.ep = add i32 %i.ah, %i.eo
  %i.eq = mul nsw i32 %i.ep, %i.w
  %i.er = sdiv i32 %i.eq, %i.q
  %i.es = insertelement <8 x i32> %i.em, i32 %i.er, i64 2
  br label %pred.sdiv.continue113

pred.sdiv.continue113:                            ; preds = %pred.sdiv.if112, %pred.sdiv.continue111
  %i.et = phi <8 x i32> [ %i.em, %pred.sdiv.continue111 ], [ %i.es, %pred.sdiv.if112 ] ; 2 uses
  %i.eu = extractelement <8 x i1> %i.dy, i64 3
  br i1 %i.eu, label %pred.sdiv.if114, label %pred.sdiv.continue115

pred.sdiv.if114:                                  ; preds = %pred.sdiv.continue113
  %i.ev = extractelement <8 x i32> %i.bj, i64 3
  %i.ew = add i32 %i.ah, %i.ev
  %i.ex = mul nsw i32 %i.ew, %i.w
  %i.ey = sdiv i32 %i.ex, %i.q
  %i.ez = insertelement <8 x i32> %i.et, i32 %i.ey, i64 3
  br label %pred.sdiv.continue115

pred.sdiv.continue115:                            ; preds = %pred.sdiv.if114, %pred.sdiv.continue113
  %i.fa = phi <8 x i32> [ %i.et, %pred.sdiv.continue113 ], [ %i.ez, %pred.sdiv.if114 ] ; 2 uses
  %i.fb = extractelement <8 x i1> %i.dy, i64 4
  br i1 %i.fb, label %pred.sdiv.if116, label %pred.sdiv.continue117

pred.sdiv.if116:                                  ; preds = %pred.sdiv.continue115
  %i.fc = extractelement <8 x i32> %i.bj, i64 4
  %i.fd = add i32 %i.ah, %i.fc
  %i.fe = mul nsw i32 %i.fd, %i.w
  %i.ff = sdiv i32 %i.fe, %i.q
  %i.fg = insertelement <8 x i32> %i.fa, i32 %i.ff, i64 4
  br label %pred.sdiv.continue117

pred.sdiv.continue117:                            ; preds = %pred.sdiv.if116, %pred.sdiv.continue115
  %i.fh = phi <8 x i32> [ %i.fa, %pred.sdiv.continue115 ], [ %i.fg, %pred.sdiv.if116 ] ; 2 uses
  %i.fi = extractelement <8 x i1> %i.dy, i64 5
  br i1 %i.fi, label %pred.sdiv.if118, label %pred.sdiv.continue119

pred.sdiv.if118:                                  ; preds = %pred.sdiv.continue117
  %i.fj = extractelement <8 x i32> %i.bj, i64 5
  %i.fk = add i32 %i.ah, %i.fj
  %i.fl = mul nsw i32 %i.fk, %i.w
  %i.fm = sdiv i32 %i.fl, %i.q
  %i.fn = insertelement <8 x i32> %i.fh, i32 %i.fm, i64 5
  br label %pred.sdiv.continue119

pred.sdiv.continue119:                            ; preds = %pred.sdiv.if118, %pred.sdiv.continue117
  %i.fo = phi <8 x i32> [ %i.fh, %pred.sdiv.continue117 ], [ %i.fn, %pred.sdiv.if118 ] ; 2 uses
  %i.fp = extractelement <8 x i1> %i.dy, i64 6
  br i1 %i.fp, label %pred.sdiv.if120, label %pred.sdiv.continue121

pred.sdiv.if120:                                  ; preds = %pred.sdiv.continue119
  %i.fq = extractelement <8 x i32> %i.bj, i64 6
  %i.fr = add i32 %i.ah, %i.fq
  %i.fs = mul nsw i32 %i.fr, %i.w
  %i.ft = sdiv i32 %i.fs, %i.q
  %i.fu = insertelement <8 x i32> %i.fo, i32 %i.ft, i64 6
  br label %pred.sdiv.continue121

pred.sdiv.continue121:                            ; preds = %pred.sdiv.if120, %pred.sdiv.continue119
  %i.fv = phi <8 x i32> [ %i.fo, %pred.sdiv.continue119 ], [ %i.fu, %pred.sdiv.if120 ] ; 2 uses
  %i.fw = extractelement <8 x i1> %i.dy, i64 7
  br i1 %i.fw, label %pred.sdiv.if122, label %pred.sdiv.continue123

pred.sdiv.if122:                                  ; preds = %pred.sdiv.continue121
  %i.fx = extractelement <8 x i32> %i.bj, i64 7
  %i.fy = add i32 %i.ah, %i.fx
  %i.fz = mul nsw i32 %i.fy, %i.w
  %i.ga = sdiv i32 %i.fz, %i.q
  %i.gb = insertelement <8 x i32> %i.fv, i32 %i.ga, i64 7
  br label %pred.sdiv.continue123

pred.sdiv.continue123:                            ; preds = %pred.sdiv.if122, %pred.sdiv.continue121
  %i.gc = phi <8 x i32> [ %i.fv, %pred.sdiv.continue121 ], [ %i.gb, %pred.sdiv.if122 ]
  %i.gd = sub nsw <8 x i32> %broadcast.splat93, %i.gc
  %i.ge = trunc <8 x i32> %i.gd to <8 x i16>
  %i.gf = xor <8 x i1> %i.bm, splat (i1 true)
  %i.gg = or <8 x i1> %i.bq, %i.gf                ; 8 uses
  %predphi = select <8 x i1> %i.bs, <8 x i16> %i.dx, <8 x i16> zeroinitializer
  %predphi124 = select <8 x i1> %i.dy, <8 x i16> %i.ge, <8 x i16> %predphi ; 8 uses
  %i.gh = extractelement <8 x i1> %i.gg, i64 0
  br i1 %i.gh, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %pred.sdiv.continue123
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %.06573, i64 %index
  %i.gj = extractelement <8 x i16> %predphi124, i64 0
  store i16 %i.gj, ptr %i.gi, align 2, !tbaa !66, !alias.scope !68, !noalias !67
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %pred.sdiv.continue123
  %i.gk = extractelement <8 x i1> %i.gg, i64 1
  br i1 %i.gk, label %pred.store.if125, label %pred.store.continue126

pred.store.if125:                                 ; preds = %pred.store.continue
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %.06573, i64 %index
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  %i.gn = extractelement <8 x i16> %predphi124, i64 1
  store i16 %i.gn, ptr %i.gm, align 2, !tbaa !66, !alias.scope !68, !noalias !67
  br label %pred.store.continue126

pred.store.continue126:                           ; preds = %pred.store.if125, %pred.store.continue
  %i.go = extractelement <8 x i1> %i.gg, i64 2
  br i1 %i.go, label %pred.store.if127, label %pred.store.continue128

pred.store.if127:                                 ; preds = %pred.store.continue126
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.06573, i64 %index
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = extractelement <8 x i16> %predphi124, i64 2
  store i16 %i.gr, ptr %i.gq, align 2, !tbaa !66, !alias.scope !68, !noalias !67
  br label %pred.store.continue128

pred.store.continue128:                           ; preds = %pred.store.if127, %pred.store.continue126
  %i.gs = extractelement <8 x i1> %i.gg, i64 3
  br i1 %i.gs, label %pred.store.if129, label %pred.store.continue130

pred.store.if129:                                 ; preds = %pred.store.continue128
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %.06573, i64 %index
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 6
  %i.gv = extractelement <8 x i16> %predphi124, i64 3
  store i16 %i.gv, ptr %i.gu, align 2, !tbaa !66, !alias.scope !68, !noalias !67
  br label %pred.store.continue130

pred.store.continue130:                           ; preds = %pred.store.if129, %pred.store.continue128
  %i.gw = extractelement <8 x i1> %i.gg, i64 4
  br i1 %i.gw, label %pred.store.if131, label %pred.store.continue132

pred.store.if131:                                 ; preds = %pred.store.continue130
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr %.06573, i64 %index
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = extractelement <8 x i16> %predphi124, i64 4
  store i16 %i.gz, ptr %i.gy, align 2, !tbaa !66, !alias.scope !68, !noalias !67
  br label %pred.store.continue132

pred.store.continue132:                           ; preds = %pred.store.if131, %pred.store.continue130
  %i.ha = extractelement <8 x i1> %i.gg, i64 5
  br i1 %i.ha, label %pred.store.if133, label %pred.store.continue134

pred.store.if133:                                 ; preds = %pred.store.continue132
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %.06573, i64 %index
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 10
  %i.hd = extractelement <8 x i16> %predphi124, i64 5
  store i16 %i.hd, ptr %i.hc, align 2, !tbaa !66, !alias.scope !68, !noalias !67
  br label %pred.store.continue134

pred.store.continue134:                           ; preds = %pred.store.if133, %pred.store.continue132
  %i.he = extractelement <8 x i1> %i.gg, i64 6
  br i1 %i.he, label %pred.store.if135, label %pred.store.continue136

pred.store.if135:                                 ; preds = %pred.store.continue134
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %.06573, i64 %index
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  %i.hh = extractelement <8 x i16> %predphi124, i64 6
  store i16 %i.hh, ptr %i.hg, align 2, !tbaa !66, !alias.scope !68, !noalias !67
  br label %pred.store.continue136

pred.store.continue136:                           ; preds = %pred.store.if135, %pred.store.continue134
  %i.hi = extractelement <8 x i1> %i.gg, i64 7
  br i1 %i.hi, label %pred.store.if137, label %pred.store.continue138

pred.store.if137:                                 ; preds = %pred.store.continue136
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.06573, i64 %index
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 14
  %i.hl = extractelement <8 x i16> %predphi124, i64 7
  store i16 %i.hl, ptr %i.hk, align 2, !tbaa !66, !alias.scope !68, !noalias !67
  br label %pred.store.continue138

pred.store.continue138:                           ; preds = %pred.store.if137, %pred.store.continue136
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hm = icmp eq i64 %index.next, %n.vec
  br i1 %i.hm, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %pred.store.continue138
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %.06474, i64 %indvars.iv
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !66
  %i.hp = zext i16 %i.ho to i32                   ; 6 uses
  %.not = icmp sgt i32 %i.u, %i.hp                ; 2 uses
  %.not69 = icmp slt i32 %i.s, %i.hp
  %or.cond = select i1 %.not, i1 true, i1 %.not69
  br i1 %or.cond, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %scalar.ph
  %i.hq = icmp slt i32 %i.af, %i.hp
  %i.hr = icmp sgt i32 %i.ag, %i.hp
  %or.cond71 = select i1 %i.hq, i1 %i.hr, i1 false
  br i1 %or.cond71, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.hs = add i32 %i.ah, %i.hp
  %i.ht = mul nsw i32 %i.hs, %i.w
  %i.hu = sdiv i32 %i.ht, %i.q
  %i.hv = sub nsw i32 %i.w, %i.hu
  %i.hw = trunc i32 %i.hv to i16
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.hx = sub nsw i32 %i.hp, %i.s
  %i.hy = mul nsw i32 %i.hx, %i.w
  %i.hz = sdiv i32 %i.hy, %i.q
  %i.ia = trunc i32 %i.hz to i16
  br label %.sink.split

.sink.split:                                      ; preds = %scalar.ph, %bb.e, %bb.d
  %.sink = phi i16 [ %i.ia, %bb.e ], [ %i.hw, %bb.d ], [ 0, %scalar.ph ]
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %.06573, i64 %indvars.iv
  store i16 %.sink, ptr %i.ib, align 2, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.f, %middle.block
  %i.ic = getelementptr inbounds [2 x i8], ptr %.06474, i64 %i.aj
  %i.id = getelementptr inbounds [2 x i8], ptr %.06573, i64 %i.al
  %i.ie = add nsw i32 %.075, 1                    ; 2 uses
  %exitcond78.not = icmp eq i32 %i.ie, %i.o
  br i1 %exitcond78.not, label %._crit_edge76.split, label %.preheader, !llvm.loop !64

._crit_edge76.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #1

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
end_hunk_0

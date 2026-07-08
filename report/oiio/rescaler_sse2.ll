inline.NumInlined: 18
inline.NumDeleted: 8
begin_hunk_0_@RescalerImportRowShrink_SSE2:bb.a
  %i.av = shufflevector <8 x i16> %i.at, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aw = bitcast <8 x i16> %i.av to <4 x i32>
  %i.ax = bitcast <8 x i16> %i.ar to <4 x i32>
  %i.ay = sub <4 x i32> %i.aw, %i.ax
  %i.az = lshr <2 x i64> %i.as, splat (i64 32)
  %i.ba = bitcast <8 x i16> %i.ar to <2 x i64>
  %i.bb = and <2 x i64> %i.ba, splat (i64 4294967295)
  %i.bc = mul nuw <2 x i64> %i.bb, %i.y
  %i.bd = mul nuw <2 x i64> %i.az, %i.y
  %i.be = add nuw <2 x i64> %i.bc, splat (i64 2147483648)
  %i.bf = add nuw <2 x i64> %i.bd, splat (i64 2147483648)
  %i.bg = bitcast <2 x i64> %i.be to <4 x i32>
  %i.bh = bitcast <2 x i64> %i.bf to <4 x i32>
  %i.bi = shufflevector <4 x i32> %i.bg, <4 x i32> %i.bh, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bi, <4 x i32> zeroinitializer)
  store <4 x i32> %i.ay, ptr %.06270, align 1, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %.06270, i64 16 ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.p
  br i1 %i.bl, label %bb.d, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @RescalerExportRowExpand_SSE2(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %i.i = mul i32 %i.h, %i.f                       ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.n = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.m, i64 0
  %i.o = insertelement <4 x i32> %i.n, i32 %i.m, i64 2
  %i.p = bitcast <4 x i32> %i.o to <2 x i64>      ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.preheader113, label %bb.b

.preheader113:                                    ; preds = %bb.a
  %.not72120 = icmp slt i32 %i.i, 8
  br i1 %.not72120, label %.preheader, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %.preheader113
  %i.t = zext nneg i32 %i.i to i64
  br label %.lr.ph122

.preheader.loopexit:                              ; preds = %.lr.ph122
  %i.u = and i32 %i.i, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader113
  %.0.lcssa = phi i32 [ 0, %.preheader113 ], [ %i.u, %.preheader.loopexit ] ; 4 uses
  %i.v = icmp slt i32 %.0.lcssa, %i.i
  br i1 %i.v, label %.lr.ph125.preheader, label %.loopexit

.lr.ph125.preheader:                              ; preds = %.preheader
  %i.w = zext nneg i32 %.0.lcssa to i64           ; 8 uses
  %i.x = xor i32 %.0.lcssa, -1
  %i.y = add i32 %i.i, %i.x                       ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check181 = icmp ult i32 %i.y, 15
  br i1 %min.iters.check181, label %.lr.ph125.preheader194, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph125.preheader
  %scevgep168 = getelementptr i8, ptr %i.b, i64 %i.w ; 2 uses
  %i.ab = xor i32 %.0.lcssa, -1
  %i.ac = add i32 %i.i, %i.ab
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.w
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad
  %scevgep169 = getelementptr i8, ptr %i.af, i64 1 ; 2 uses
  %i.ag = shl nuw nsw i64 %i.w, 2
  %scevgep170 = getelementptr i8, ptr %i.k, i64 %i.ag
  %i.ah = add nuw nsw i64 %i.w, %i.ad
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = getelementptr i8, ptr %i.k, i64 %i.ai
  %scevgep171 = getelementptr i8, ptr %i.aj, i64 4
  %scevgep172 = getelementptr i8, ptr %0, i64 20
  %bound0173 = icmp ult ptr %scevgep168, %scevgep171
  %bound1174 = icmp ult ptr %scevgep170, %scevgep169
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0176 = icmp ult ptr %scevgep168, %scevgep172
  %bound1177 = icmp ult ptr %i.l, %scevgep169
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %found.conflict175, %found.conflict178
  br i1 %conflict.rdx179, label %.lr.ph125.preheader194, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck167
  %n.vec184 = and i64 %i.aa, 8589934588           ; 3 uses
  %i.ak = add nuw nsw i64 %n.vec184, %i.w
  %i.al = load i32, ptr %i.l, align 8, !tbaa !25, !alias.scope !27
  %broadcast.splatinsert185 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat186 = shufflevector <4 x i32> %broadcast.splatinsert185, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.am = zext <4 x i32> %broadcast.splat186 to <4 x i64>
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph182
  %index188 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body187 ] ; 2 uses
  %i.an = add i64 %index188, %i.w                 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.an
  %wide.load189 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3, !alias.scope !30
  %i.ap = zext <4 x i32> %wide.load189 to <4 x i64>
  %i.aq = mul nuw <4 x i64> %i.am, %i.ap
  %i.ar = add nuw <4 x i64> %i.aq, splat (i64 2147483648)
  %i.as = lshr <4 x i64> %i.ar, splat (i64 32)    ; 2 uses
  %i.at = trunc nuw <4 x i64> %i.as to <4 x i32>
  %i.au = icmp sgt <4 x i32> %i.at, splat (i32 255)
  %i.av = trunc <4 x i64> %i.as to <4 x i8>
  %i.aw = select <4 x i1> %i.au, <4 x i8> splat (i8 -1), <4 x i8> %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.an
  store <4 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !17, !alias.scope !32, !noalias !34
  %index.next190 = add nuw i64 %index188, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next190, %n.vec184
  br i1 %i.ay, label %middle.block191, label %vector.body187, !llvm.loop !35

middle.block191:                                  ; preds = %vector.body187
  %cmp.n192 = icmp eq i64 %i.aa, %n.vec184
  br i1 %cmp.n192, label %.loopexit, label %.lr.ph125.preheader194

.lr.ph125.preheader194:                           ; preds = %vector.memcheck167, %.lr.ph125.preheader, %middle.block191
  %indvars.iv143.ph = phi i64 [ %i.w, %vector.memcheck167 ], [ %i.w, %.lr.ph125.preheader ], [ %i.ak, %middle.block191 ]
  br label %.lr.ph125

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %.lr.ph122
  %indvars.iv138 = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next139, %.lr.ph122 ] ; 3 uses
  %indvars.iv136 = phi i64 [ 8, %.lr.ph122.preheader ], [ %indvars.iv.next137, %.lr.ph122 ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv138 ; 2 uses
  %.val76 = load <2 x i64>, ptr %i.az, align 1, !tbaa !17 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %.val77 = load <2 x i64>, ptr %i.ba, align 1, !tbaa !17 ; 2 uses
  %i.bb = lshr <2 x i64> %.val76, splat (i64 32)
  %i.bc = lshr <2 x i64> %.val77, splat (i64 32)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv138
  %i.be = and <2 x i64> %.val76, splat (i64 4294967295)
  %i.bf = mul nuw <2 x i64> %i.be, %i.p
  %i.bg = and <2 x i64> %.val77, splat (i64 4294967295)
  %i.bh = mul nuw <2 x i64> %i.bg, %i.p
  %i.bi = mul nuw <2 x i64> %i.bb, %i.p
  %i.bj = mul nuw <2 x i64> %i.bc, %i.p
  %i.bk = add nuw <2 x i64> %i.bf, splat (i64 2147483648)
  %i.bl = add nuw <2 x i64> %i.bh, splat (i64 2147483648)
  %i.bm = add nuw <2 x i64> %i.bi, splat (i64 2147483648)
  %i.bn = add nuw <2 x i64> %i.bj, splat (i64 2147483648)
  %i.bo = lshr <2 x i64> %i.bk, splat (i64 32)
  %i.bp = lshr <2 x i64> %i.bl, splat (i64 32)
  %i.bq = and <2 x i64> %i.bm, splat (i64 -4294967296)
  %i.br = and <2 x i64> %i.bn, splat (i64 -4294967296)
  %i.bs = or disjoint <2 x i64> %i.bo, %i.bq
  %i.bt = or disjoint <2 x i64> %i.bp, %i.br
  %i.bu = bitcast <2 x i64> %i.bs to <4 x i32>
  %i.bv = bitcast <2 x i64> %i.bt to <4 x i32>
  %i.bw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bu, <4 x i32> %i.bv)
  %i.bx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bw, <8 x i16> poison)
  %i.by = bitcast <16 x i8> %i.bx to <2 x i64>
  %i.bz = extractelement <2 x i64> %i.by, i64 0
  store i64 %i.bz, ptr %i.bd, align 1, !tbaa !17
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 8 ; 2 uses
  %.not72 = icmp samesign ugt i64 %indvars.iv.next137, %i.t
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 8
  br i1 %.not72, label %.preheader.loopexit, label %.lr.ph122, !llvm.loop !38

.lr.ph125:                                        ; preds = %.lr.ph125.preheader194, %.lr.ph125
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %.lr.ph125 ], [ %indvars.iv143.ph, %.lr.ph125.preheader194 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv143
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load i32, ptr %i.l, align 8, !tbaa !25
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul nuw i64 %i.ce, %i.cc
  %i.cg = add nuw i64 %i.cf, 2147483648
  %i.ch = lshr i64 %i.cg, 32                      ; 2 uses
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = icmp sgt i32 %i.ci, 255
  %i.ck = trunc i64 %i.ch to i8
  %i.cl = select i1 %i.cj, i8 -1, i8 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv143
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !17
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.cn = trunc nuw i64 %indvars.iv.next144 to i32
  %i.co = icmp sgt i32 %i.i, %i.cn
  br i1 %i.co, label %.lr.ph125, label %.loopexit, !llvm.loop !39

bb.b:                                             ; preds = %bb.a
  %i.cp = sub nsw i32 0, %i.r
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 32
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !40
  %i.cu = sext i32 %i.ct to i64
  %i.cv = udiv i64 %i.cr, %i.cu                   ; 3 uses
  %i.cw = trunc i64 %i.cv to i32                  ; 3 uses
  %i.cx = and i64 %i.cv, 4294967295               ; 2 uses
  %i.cy = sub i32 0, %i.cw                        ; 2 uses
  %i.cz = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.cy, i64 0
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cy, i64 2
  %i.db = bitcast <4 x i32> %i.da to <2 x i64>    ; 4 uses
  %i.dc = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.cw, i64 0
  %i.dd = insertelement <4 x i32> %i.dc, i32 %i.cw, i64 2
  %i.de = bitcast <4 x i32> %i.dd to <2 x i64>    ; 4 uses
  %.not116 = icmp slt i32 %i.i, 8
  br i1 %.not116, label %.preheader114, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.df = zext nneg i32 %i.i to i64
  br label %.lr.ph

.preheader114.loopexit:                           ; preds = %.lr.ph
  %i.dg = and i32 %i.i, 2147483640
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.loopexit, %bb.b
  %.2.lcssa = phi i32 [ 0, %bb.b ], [ %i.dg, %.preheader114.loopexit ] ; 4 uses
  %i.dh = icmp slt i32 %.2.lcssa, %i.i
  br i1 %i.dh, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %.preheader114
  %1 = sub i64 0, %i.cv
  %2 = and i64 %1, 4294967295                     ; 2 uses
  %i.di = zext nneg i32 %.2.lcssa to i64          ; 8 uses
  %i.dj = xor i32 %.2.lcssa, -1
  %i.dk = add i32 %i.i, %i.dj                     ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dk, 79
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph119
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.di ; 3 uses
  %i.dn = xor i32 %.2.lcssa, -1
  %i.do = add i32 %i.i, %i.dn
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr i8, ptr %i.b, i64 %i.di
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.dp
  %scevgep149 = getelementptr i8, ptr %i.dr, i64 1 ; 3 uses
  %i.ds = shl nuw nsw i64 %i.di, 2                ; 2 uses
  %scevgep150 = getelementptr i8, ptr %i.k, i64 %i.ds
  %i.dt = add nuw nsw i64 %i.di, %i.dp
  %i.du = shl nuw nsw i64 %i.dt, 2
  %i.dv = add nuw nsw i64 %i.du, 4                ; 2 uses
  %scevgep151 = getelementptr i8, ptr %i.k, i64 %i.dv
  %scevgep152 = getelementptr i8, ptr %i.d, i64 %i.ds
  %scevgep153 = getelementptr i8, ptr %i.d, i64 %i.dv
  %scevgep154 = getelementptr i8, ptr %0, i64 20
  %bound0 = icmp ult ptr %scevgep, %scevgep151
  %bound1 = icmp ult ptr %scevgep150, %scevgep149
  %found.conflict = and i1 %bound0, %bound1
  %bound0155 = icmp ult ptr %scevgep, %scevgep153
  %bound1156 = icmp ult ptr %scevgep152, %scevgep149
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx = or i1 %found.conflict, %found.conflict157
  %bound0158 = icmp ult ptr %scevgep, %scevgep154
  %bound1159 = icmp ult ptr %i.l, %scevgep149
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx, %found.conflict160
  br i1 %conflict.rdx161, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 8589934588              ; 3 uses
  %i.dw = add nuw nsw i64 %n.vec, %i.di
  %i.dx = load i32, ptr %i.l, align 8, !tbaa !25, !alias.scope !41
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dy = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert162 = insertelement <4 x i64> poison, i64 %2, i64 0
  %broadcast.splat163 = shufflevector <4 x i64> %broadcast.splatinsert162, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert164 = insertelement <4 x i64> poison, i64 %i.cx, i64 0
  %broadcast.splat165 = shufflevector <4 x i64> %broadcast.splatinsert164, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = add i64 %index, %i.di                   ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.dz
  %wide.load = load <4 x i32>, ptr %i.ea, align 4, !tbaa !3, !alias.scope !44
  %i.eb = zext <4 x i32> %wide.load to <4 x i64>
  %i.ec = mul nuw <4 x i64> %broadcast.splat163, %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dz
  %wide.load166 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !3, !alias.scope !46
  %i.ee = zext <4 x i32> %wide.load166 to <4 x i64>
  %i.ef = mul nuw <4 x i64> %broadcast.splat165, %i.ee
  %i.eg = add nuw <4 x i64> %i.ec, splat (i64 2147483648)
  %i.eh = add <4 x i64> %i.eg, %i.ef
  %i.ei = lshr <4 x i64> %i.eh, splat (i64 32)
  %i.ej = mul nuw <4 x i64> %i.ei, %i.dy
  %i.ek = add nuw <4 x i64> %i.ej, splat (i64 2147483648)
  %i.el = lshr <4 x i64> %i.ek, splat (i64 32)    ; 2 uses
  %i.em = trunc nuw <4 x i64> %i.el to <4 x i32>
  %i.en = icmp sgt <4 x i32> %i.em, splat (i32 255)
  %i.eo = trunc <4 x i64> %i.el to <4 x i8>
  %i.ep = select <4 x i1> %i.en, <4 x i8> splat (i8 -1), <4 x i8> %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dz
  store <4 x i8> %i.ep, ptr %i.eq, align 1, !tbaa !17, !alias.scope !48, !noalias !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph119, %middle.block
  %indvars.iv133.ph = phi i64 [ %i.di, %vector.memcheck ], [ %i.di, %.lr.ph119 ], [ %i.dw, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv128 ; 2 uses
  %.val74 = load <2 x i64>, ptr %i.es, align 1, !tbaa !17 ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 16
  %.val75 = load <2 x i64>, ptr %i.et, align 1, !tbaa !17 ; 2 uses
  %i.eu = lshr <2 x i64> %.val74, splat (i64 32)
  %i.ev = lshr <2 x i64> %.val75, splat (i64 32)
  %i.ew = and <2 x i64> %.val74, splat (i64 4294967295)
  %i.ex = mul nuw <2 x i64> %i.ew, %i.db
  %i.ey = and <2 x i64> %.val75, splat (i64 4294967295)
  %i.ez = mul nuw <2 x i64> %i.ey, %i.db
  %i.fa = mul nuw <2 x i64> %i.eu, %i.db
  %i.fb = mul nuw <2 x i64> %i.ev, %i.db
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv128 ; 2 uses
  %.val = load <2 x i64>, ptr %i.fc, align 1, !tbaa !17 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 16
  %.val73 = load <2 x i64>, ptr %i.fd, align 1, !tbaa !17 ; 2 uses
  %i.fe = lshr <2 x i64> %.val, splat (i64 32)
  %i.ff = lshr <2 x i64> %.val73, splat (i64 32)
  %i.fg = and <2 x i64> %.val, splat (i64 4294967295)
  %i.fh = mul nuw <2 x i64> %i.fg, %i.de
  %i.fi = and <2 x i64> %.val73, splat (i64 4294967295)
  %i.fj = mul nuw <2 x i64> %i.fi, %i.de
  %i.fk = mul nuw <2 x i64> %i.fe, %i.de
  %i.fl = mul nuw <2 x i64> %i.ff, %i.de
  %i.fm = add <2 x i64> %i.ex, splat (i64 2147483648)
  %i.fn = add <2 x i64> %i.fm, %i.fh
  %i.fo = add <2 x i64> %i.ez, splat (i64 2147483648)
  %i.fp = add <2 x i64> %i.fo, %i.fj
  %i.fq = add <2 x i64> %i.fa, splat (i64 2147483648)
  %i.fr = add <2 x i64> %i.fq, %i.fk
  %i.fs = add <2 x i64> %i.fb, splat (i64 2147483648)
  %i.ft = add <2 x i64> %i.fs, %i.fl
  %i.fu = lshr <2 x i64> %i.fn, splat (i64 32)
  %i.fv = lshr <2 x i64> %i.fp, splat (i64 32)
  %i.fw = lshr <2 x i64> %i.fr, splat (i64 32)
  %i.fx = lshr <2 x i64> %i.ft, splat (i64 32)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv128
  %i.fz = mul nuw <2 x i64> %i.fu, %i.p
  %i.ga = mul nuw <2 x i64> %i.fv, %i.p
  %i.gb = mul nuw <2 x i64> %i.fw, %i.p
  %i.gc = mul nuw <2 x i64> %i.fx, %i.p
  %i.gd = add nuw <2 x i64> %i.fz, splat (i64 2147483648)
  %i.ge = add nuw <2 x i64> %i.ga, splat (i64 2147483648)
  %i.gf = add nuw <2 x i64> %i.gb, splat (i64 2147483648)
  %i.gg = add nuw <2 x i64> %i.gc, splat (i64 2147483648)
  %i.gh = lshr <2 x i64> %i.gd, splat (i64 32)
  %i.gi = lshr <2 x i64> %i.ge, splat (i64 32)
  %i.gj = and <2 x i64> %i.gf, splat (i64 -4294967296)
  %i.gk = and <2 x i64> %i.gg, splat (i64 -4294967296)
  %i.gl = or disjoint <2 x i64> %i.gh, %i.gj
  %i.gm = or disjoint <2 x i64> %i.gi, %i.gk
  %i.gn = bitcast <2 x i64> %i.gl to <4 x i32>
  %i.go = bitcast <2 x i64> %i.gm to <4 x i32>
  %i.gp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gn, <4 x i32> %i.go)
  %i.gq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gp, <8 x i16> poison)
  %i.gr = bitcast <16 x i8> %i.gq to <2 x i64>
  %i.gs = extractelement <2 x i64> %i.gr, i64 0
  store i64 %i.gs, ptr %i.fy, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.df
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 8
  br i1 %.not, label %.preheader114.loopexit, label %.lr.ph, !llvm.loop !52

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph ], [ %indvars.iv133.ph, %scalar.ph.preheader ] ; 4 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv133
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3
  %i.gv = zext i32 %i.gu to i64
  %i.gw = mul nuw i64 %2, %i.gv
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv133
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = zext i32 %i.gy to i64
  %i.ha = mul nuw i64 %i.cx, %i.gz
  %i.hb = add nuw i64 %i.gw, 2147483648
  %i.hc = add i64 %i.hb, %i.ha
  %i.hd = lshr i64 %i.hc, 32
  %i.he = load i32, ptr %i.l, align 8, !tbaa !25
  %i.hf = zext i32 %i.he to i64
  %i.hg = mul nuw i64 %i.hd, %i.hf
  %i.hh = add nuw i64 %i.hg, 2147483648
  %i.hi = lshr i64 %i.hh, 32                      ; 2 uses
  %i.hj = trunc nuw i64 %i.hi to i32
  %i.hk = icmp sgt i32 %i.hj, 255
  %i.hl = trunc i64 %i.hi to i8
  %i.hm = select i1 %i.hk, i8 -1, i8 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv133
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !17
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.ho = trunc nuw i64 %indvars.iv.next134 to i32
  %i.hp = icmp sgt i32 %i.i, %i.ho
  br i1 %i.hp, label %scalar.ph, label %.loopexit, !llvm.loop !53

.loopexit:                                        ; preds = %scalar.ph, %.lr.ph125, %middle.block, %middle.block191, %.preheader114, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @RescalerExportRowShrink_SSE2(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %i.i = mul i32 %i.h, %i.f                       ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !26
  %i.p = mul i32 %i.o, %i.m                       ; 2 uses
  %i.q = sub i32 0, %i.p                          ; 3 uses
  %.not = icmp eq i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !54   ; 3 uses
  %i.t = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.s, i64 0
  %i.u = insertelement <4 x i32> %i.t, i32 %i.s, i64 2
  %i.v = bitcast <4 x i32> %i.u to <2 x i64>      ; 8 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.q, i64 0
  %i.x = insertelement <4 x i32> %i.w, i32 %i.q, i64 2
  %i.y = bitcast <4 x i32> %i.x to <2 x i64>      ; 4 uses
  %.not86125 = icmp slt i32 %i.i, 8
  br i1 %.not86125, label %.preheader123, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.z = zext nneg i32 %i.i to i64
  br label %.lr.ph

.preheader123.loopexit:                           ; preds = %.lr.ph
  %i.aa = and i32 %i.i, 2147483640
  br label %.preheader123

.preheader123:                                    ; preds = %.preheader123.loopexit, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %i.aa, %.preheader123.loopexit ] ; 4 uses
  %i.ab = icmp slt i32 %.0.lcssa, %i.i
  br i1 %i.ab, label %.lr.ph128, label %.loopexit

.lr.ph128:                                        ; preds = %.preheader123
  %i.ac = zext i32 %i.q to i64                    ; 2 uses
  %i.ad = zext nneg i32 %.0.lcssa to i64          ; 8 uses
  %i.ae = xor i32 %.0.lcssa, -1
  %i.af = add i32 %i.i, %i.ae                     ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.af, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph128
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ad ; 3 uses
  %i.ai = xor i32 %.0.lcssa, -1
  %i.aj = add i32 %i.i, %i.ai
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr i8, ptr %i.b, i64 %i.ad
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  %scevgep157 = getelementptr i8, ptr %i.am, i64 1 ; 3 uses
  %i.an = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.d, i64 %i.an ; 3 uses
  %i.ao = add nuw nsw i64 %i.ad, %i.ak
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 4                ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.d, i64 %i.aq ; 3 uses
  %scevgep160 = getelementptr i8, ptr %i.k, i64 %i.an ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.k, i64 %i.aq ; 2 uses
  %scevgep162 = getelementptr i8, ptr %0, i64 24  ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep159
  %bound1 = icmp ult ptr %scevgep158, %scevgep157
  %found.conflict = and i1 %bound0, %bound1
  %bound0163 = icmp ult ptr %scevgep, %scevgep161
  %bound1164 = icmp ult ptr %scevgep160, %scevgep157
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
  %bound0166 = icmp ult ptr %scevgep, %scevgep162
  %bound1167 = icmp ult ptr %i.r, %scevgep157
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx, %found.conflict168
  %bound0170 = icmp ult ptr %scevgep158, %scevgep161
  %bound1171 = icmp ult ptr %scevgep160, %scevgep159
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %scevgep158, %scevgep162
  %bound1175 = icmp ult ptr %i.r, %scevgep159
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  br i1 %conflict.rdx177, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 8589934588              ; 3 uses
  %i.ar = add nuw nsw i64 %n.vec, %i.ad
  %i.as = load i32, ptr %i.r, align 4, !tbaa !54, !alias.scope !55
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.at = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert178 = insertelement <4 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat179 = shufflevector <4 x i64> %broadcast.splatinsert178, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add i64 %index, %i.ad                   ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.au
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !3, !alias.scope !58
  %i.aw = zext <4 x i32> %wide.load to <4 x i64>
  %i.ax = mul nuw <4 x i64> %broadcast.splat179, %i.aw
  %i.ay = lshr <4 x i64> %i.ax, splat (i64 32)
  %i.az = trunc nuw <4 x i64> %i.ay to <4 x i32>  ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.au ; 2 uses
  %wide.load180 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !3, !alias.scope !60, !noalias !62
  %i.bb = sub <4 x i32> %wide.load180, %i.az
  %i.bc = zext <4 x i32> %i.bb to <4 x i64>
  %i.bd = mul nuw <4 x i64> %i.bc, %i.at
  %i.be = add nuw <4 x i64> %i.bd, splat (i64 2147483648)
  %i.bf = lshr <4 x i64> %i.be, splat (i64 32)    ; 2 uses
  %i.bg = trunc nuw <4 x i64> %i.bf to <4 x i32>
  %i.bh = icmp sgt <4 x i32> %i.bg, splat (i32 255)
  %i.bi = trunc <4 x i64> %i.bf to <4 x i8>
  %i.bj = select <4 x i1> %i.bh, <4 x i8> splat (i8 -1), <4 x i8> %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.au
  store <4 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !17, !alias.scope !63, !noalias !65
  store <4 x i32> %i.az, ptr %i.ba, align 4, !tbaa !3, !alias.scope !60, !noalias !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph128, %middle.block
  %indvars.iv142.ph = phi i64 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph128 ], [ %i.ar, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv137 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next138, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv137 ; 3 uses
  %.val90 = load <2 x i64>, ptr %i.bm, align 1, !tbaa !17 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 16     ; 2 uses
  %.val91 = load <2 x i64>, ptr %i.bn, align 1, !tbaa !17 ; 2 uses
  %i.bo = lshr <2 x i64> %.val90, splat (i64 32)
  %i.bp = lshr <2 x i64> %.val91, splat (i64 32)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv137 ; 2 uses
  %.val88 = load <2 x i64>, ptr %i.bq, align 1, !tbaa !17 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %.val89 = load <2 x i64>, ptr %i.br, align 1, !tbaa !17 ; 2 uses
  %i.bs = lshr <2 x i64> %.val88, splat (i64 32)
  %i.bt = lshr <2 x i64> %.val89, splat (i64 32)
  %i.bu = and <2 x i64> %.val88, splat (i64 4294967295)
  %i.bv = mul nuw <2 x i64> %i.bu, %i.y
  %i.bw = and <2 x i64> %.val89, splat (i64 4294967295)
  %i.bx = mul nuw <2 x i64> %i.bw, %i.y
  %i.by = mul nuw <2 x i64> %i.bs, %i.y           ; 2 uses
  %i.bz = mul nuw <2 x i64> %i.bt, %i.y           ; 2 uses
  %i.ca = lshr <2 x i64> %i.bv, splat (i64 32)    ; 2 uses
  %i.cb = lshr <2 x i64> %i.bx, splat (i64 32)    ; 2 uses
  %i.cc = lshr <2 x i64> %i.by, splat (i64 32)
  %i.cd = lshr <2 x i64> %i.bz, splat (i64 32)
  %i.ce = sub <2 x i64> %.val90, %i.ca
  %i.cf = sub <2 x i64> %.val91, %i.cb
  %i.cg = sub nsw <2 x i64> %i.bo, %i.cc
  %i.ch = sub nsw <2 x i64> %i.bp, %i.cd
  %i.ci = and <2 x i64> %i.by, splat (i64 -4294967296)
  %i.cj = and <2 x i64> %i.bz, splat (i64 -4294967296)
end_hunk_0

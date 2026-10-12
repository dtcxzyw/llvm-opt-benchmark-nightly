Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_wave?download=true
inline.NumInlined: 32
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@LAW_Decode:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.q = load i32, ptr %i.p, align 4
  %i.r = zext i32 %i.q to i64                     ; 4 uses
  %i.s = icmp slt i64 %i.i, %i.r
  %or.cond.i = select i1 %i.o, i1 %i.s, i1 false
  br i1 %or.cond.i, label %WaveAdjustToFactValue.exit.thread, label %._crit_edge.i

WaveAdjustToFactValue.exit.thread:                ; preds = %bb.c
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.55) #7 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 -1, ptr %i.u, align 8
  br label %bb.m

._crit_edge.i:                                    ; preds = %bb.c
  %i.v = icmp sgt i64 %i.i, %i.r
  br i1 %i.v, label %WaveAdjustToFactValue.exit.thread88, label %WaveAdjustToFactValue.exit

WaveAdjustToFactValue.exit.thread88:              ; preds = %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.r, ptr %i.w, align 8
  br label %bb.d

WaveAdjustToFactValue.exit:                       ; preds = %bb.b, %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.i, ptr %i.x, align 8
  %i.y = icmp slt i64 %i.i, 0
  br i1 %i.y, label %bb.m, label %bb.d

bb.d:                                             ; preds = %._crit_edge, %WaveAdjustToFactValue.exit.thread88, %WaveAdjustToFactValue.exit
  %i.z = phi i64 [ %.pre, %._crit_edge ], [ %i.r, %WaveAdjustToFactValue.exit.thread88 ], [ %i.i, %WaveAdjustToFactValue.exit ] ; 5 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %1, align 8
  store i32 0, ptr %2, align 4
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ac = load i16, ptr %i.ab, align 4
  %i.ad = zext i16 %i.ac to i64                   ; 4 uses
  %i.ae = udiv i64 -1, %i.z
  %.not6.i = icmp ugt i64 %i.ae, %i.ad
  br i1 %.not6.i, label %bb.g, label %SafeMult.exit

SafeMult.exit:                                    ; preds = %bb.f
  %i.af = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ag = mul i64 %i.z, %i.ad                     ; 20 uses
  %.not.i76 = icmp eq i64 %i.ag, 0                ; 3 uses
  br i1 %.not.i76, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not6.i77 = icmp ult i64 %i.ag, 6148914691236517206
  br i1 %.not6.i77, label %bb.i, label %SafeMult.exit79

SafeMult.exit79:                                  ; preds = %bb.h
  %i.ah = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = shl nuw nsw i64 %i.ag, 1
  %i.aj = icmp samesign ugt i64 %i.ag, 2147483647
  br i1 %i.aj, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7
  br label %bb.m

.thread:                                          ; preds = %bb.g, %bb.i
  %i.al = phi i64 [ %i.ai, %bb.i ], [ 0, %bb.g ]  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.ap = tail call ptr @SDL_realloc_REAL(ptr noundef %i.an, i64 noundef %i.ao) #8 ; 19 uses
  %.not68 = icmp eq ptr %i.ap, null
  br i1 %.not68, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.ar = load i16, ptr %i.aq, align 2
  switch i16 %i.ar, label %bb.l [
    i16 6, label %.preheader
    i16 7, label %.preheader98
  ]

.preheader98:                                     ; preds = %bb.k
  br i1 %.not.i76, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader98
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.preheader140, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.as = mul i64 %i.z, %i.ad
  %i.at = shl i64 %i.as, 1
  %i.au = getelementptr i8, ptr %i.ap, i64 %i.at
  %i.av = getelementptr i8, ptr %i.ap, i64 %i.ag
  %bound0 = icmp ult ptr %i.ap, %i.av
  %bound1 = icmp ult ptr %i.ap, %i.au
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader140, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, -8                      ; 2 uses
  %i.aw = and i64 %i.ag, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = xor i64 %index, -1
  %i.ay = add i64 %i.ag, %i.ax                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -7
  %wide.load = load <8 x i8>, ptr %i.ba, align 1, !alias.scope !18
  %reverse = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bb = xor <8 x i8> %reverse, splat (i8 -1)    ; 2 uses
  %i.bc = and <8 x i8> %i.bb, splat (i8 15)
  %i.bd = lshr <8 x i8> %i.bb, splat (i8 4)
  %i.be = and <8 x i8> %i.bd, splat (i8 7)
  %i.bf = zext nneg <8 x i8> %i.be to <8 x i16>   ; 3 uses
  %i.bg = shl nuw nsw <8 x i16> splat (i16 8), %i.bf
  %i.bh = shl nuw nsw <8 x i16> splat (i16 128), %i.bf
  %i.bi = zext nneg <8 x i8> %i.bc to <8 x i16>
  %i.bj = add nuw nsw <8 x i16> %i.bf, splat (i16 3)
  %i.bk = shl nuw nsw <8 x i16> %i.bi, %i.bj
  %i.bl = add nuw nsw <8 x i16> %i.bk, %i.bh
  %i.bm = lshr exact <8 x i16> %i.bg, splat (i16 1)
  %i.bn = add nuw nsw <8 x i16> %i.bl, %i.bm      ; 2 uses
  %i.bo = add nsw <8 x i16> %i.bn, splat (i16 -132)
  %i.bp = icmp slt <8 x i8> %reverse, zeroinitializer
  %i.bq = sub nsw <8 x i16> splat (i16 132), %i.bn
  %i.br = select <8 x i1> %i.bp, <8 x i16> %i.bo, <8 x i16> %i.bq
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ay
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -14
  %reverse116 = shufflevector <8 x i16> %i.br, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse116, ptr %i.bt, align 2, !alias.scope !19, !noalias !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader140

.lr.ph.preheader140:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.1101.ph = phi i64 [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not.i76, label %.loopexit, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.preheader
  %min.iters.check123 = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check123, label %.lr.ph104.preheader139, label %vector.memcheck124

vector.memcheck124:                               ; preds = %.lr.ph104.preheader
  %i.bv = mul i64 %i.z, %i.ad
  %i.bw = shl i64 %i.bv, 1
  %i.bx = getelementptr i8, ptr %i.ap, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ap, i64 %i.ag
  %bound0125 = icmp ult ptr %i.ap, %i.by
  %bound1126 = icmp ult ptr %i.ap, %i.bx
  %found.conflict127 = and i1 %bound0125, %bound1126
  br i1 %found.conflict127, label %.lr.ph104.preheader139, label %vector.ph128

vector.ph128:                                     ; preds = %vector.memcheck124
  %n.vec129 = and i64 %i.ag, -8                   ; 2 uses
  %i.bz = and i64 %i.ag, 7
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next135, %vector.body130 ] ; 2 uses
  %i.ca = xor i64 %index131, -1
  %i.cb = add i64 %i.ag, %i.ca                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -7
  %wide.load132 = load <8 x i8>, ptr %i.cd, align 1, !alias.scope !20
  %reverse133 = shufflevector <8 x i8> %wide.load132, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ce = and <8 x i8> %reverse133, splat (i8 127)
  %i.cf = xor <8 x i8> %i.ce, splat (i8 85)       ; 3 uses
  %i.cg = and <8 x i8> %i.cf, splat (i8 15)       ; 2 uses
  %i.ch = lshr <8 x i8> %i.cf, splat (i8 4)       ; 2 uses
  %i.ci = zext nneg <8 x i8> %i.ch to <8 x i32>
  %i.cj = icmp eq <8 x i8> %i.ch, zeroinitializer
  %i.ck = or disjoint <8 x i8> %i.cg, splat (i8 16)
  %i.cl = select <8 x i1> %i.cj, <8 x i8> %i.cg, <8 x i8> %i.ck
  %i.cm = zext nneg <8 x i8> %i.cl to <8 x i16>
  %i.cn = shl nuw nsw <8 x i16> %i.cm, splat (i16 4)
  %i.co = or disjoint <8 x i16> %i.cn, splat (i16 8) ; 2 uses
  %i.cp = icmp samesign ugt <8 x i8> %i.cf, splat (i8 31)
  %i.cq = add nsw <8 x i32> %i.ci, splat (i32 -1)
  %i.cr = zext nneg <8 x i16> %i.co to <8 x i32>
  %i.cs = shl nuw nsw <8 x i32> %i.cr, %i.cq
  %i.ct = trunc nuw nsw <8 x i32> %i.cs to <8 x i16>
  %i.cu = select <8 x i1> %i.cp, <8 x i16> %i.ct, <8 x i16> %i.co ; 2 uses
  %i.cv = sub nsw <8 x i16> zeroinitializer, %i.cu
  %i.cw = icmp slt <8 x i8> %reverse133, zeroinitializer
  %i.cx = select <8 x i1> %i.cw, <8 x i16> %i.cu, <8 x i16> %i.cv
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.cb
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -14
  %reverse134 = shufflevector <8 x i16> %i.cx, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse134, ptr %i.cz, align 2, !alias.scope !21, !noalias !20
  %index.next135 = add nuw i64 %index131, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.da, label %middle.block136, label %vector.body130, !llvm.loop !15

middle.block136:                                  ; preds = %vector.body130
  %cmp.n137 = icmp eq i64 %i.ag, %n.vec129
  br i1 %cmp.n137, label %.loopexit, label %.lr.ph104.preheader139

.lr.ph104.preheader139:                           ; preds = %vector.memcheck124, %.lr.ph104.preheader, %middle.block136
  %.057103.ph = phi i64 [ %i.ag, %vector.memcheck124 ], [ %i.ag, %.lr.ph104.preheader ], [ %i.bz, %middle.block136 ]
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader139, %.lr.ph104
  %.057103 = phi i64 [ %i.db, %.lr.ph104 ], [ %.057103.ph, %.lr.ph104.preheader139 ]
  %i.db = add i64 %.057103, -1                    ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1             ; 2 uses
  %i.de = and i8 %i.dd, 127
  %i.df = xor i8 %i.de, 85                        ; 3 uses
  %i.dg = and i8 %i.df, 15                        ; 2 uses
  %i.dh = lshr i8 %i.df, 4                        ; 2 uses
  %i.di = zext nneg i8 %i.dh to i32
  %.not72 = icmp eq i8 %i.dh, 0
  %i.dj = or disjoint i8 %i.dg, 16
  %spec.select = select i1 %.not72, i8 %i.dg, i8 %i.dj
  %i.dk = zext nneg i8 %spec.select to i16
  %i.dl = shl nuw nsw i16 %i.dk, 4
  %i.dm = or disjoint i16 %i.dl, 8                ; 2 uses
  %i.dn = icmp samesign ugt i8 %i.df, 31
  %i.do = add nsw i32 %i.di, -1
  %i.dp = zext nneg i16 %i.dm to i32
  %i.dq = shl nuw nsw i32 %i.dp, %i.do
  %i.dr = trunc nuw nsw i32 %i.dq to i16
  %.159 = select i1 %i.dn, i16 %i.dr, i16 %i.dm   ; 2 uses
  %i.ds = sub nsw i16 0, %.159
  %.not7374 = icmp slt i8 %i.dd, 0
  %i.dt = select i1 %.not7374, i16 %.159, i16 %i.ds
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.db
  store i16 %i.dt, ptr %i.du, align 2
  %.not71 = icmp eq i64 %i.db, 0
  br i1 %.not71, label %.loopexit, label %.lr.ph104, !llvm.loop !16

.lr.ph:                                           ; preds = %.lr.ph.preheader140, %.lr.ph
  %.1101 = phi i64 [ %i.dv, %.lr.ph ], [ %.1101.ph, %.lr.ph.preheader140 ]
  %i.dv = add i64 %.1101, -1                      ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1             ; 2 uses
  %i.dy = xor i8 %i.dx, -1                        ; 2 uses
  %i.dz = and i8 %i.dy, 15
  %i.ea = lshr i8 %i.dy, 4
  %i.eb = and i8 %i.ea, 7
  %i.ec = zext nneg i8 %i.eb to i16               ; 3 uses
  %i.ed = shl nuw nsw i16 8, %i.ec
  %i.ee = shl nuw nsw i16 128, %i.ec
  %i.ef = zext nneg i8 %i.dz to i16
  %i.eg = add nuw nsw i16 %i.ec, 3
  %i.eh = shl nuw nsw i16 %i.ef, %i.eg
  %i.ei = add nuw nsw i16 %i.eh, %i.ee
  %i.ej = lshr exact i16 %i.ed, 1
  %i.ek = add nuw nsw i16 %i.ei, %i.ej            ; 2 uses
  %i.el = add nsw i16 %i.ek, -132
  %.not70 = icmp slt i8 %i.dx, 0
  %i.em = sub nsw i16 132, %i.ek
  %i.en = select i1 %.not70, i16 %i.el, i16 %i.em
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.dv
  store i16 %i.en, ptr %i.eo, align 2
  %.not69 = icmp eq i64 %i.dv, 0
  br i1 %.not69, label %.loopexit, label %.lr.ph, !llvm.loop !17

bb.l:                                             ; preds = %bb.k
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ap) #7
  %i.ep = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.73) #7
  br label %bb.m

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph104, %middle.block, %middle.block136, %.preheader98, %.preheader
  store ptr %i.ap, ptr %1, align 8
  %i.eq = trunc i64 %i.al to i32
  store i32 %i.eq, ptr %2, align 4
  br label %bb.m

bb.m:                                             ; preds = %WaveAdjustToFactValue.exit.thread, %.thread, %WaveAdjustToFactValue.exit, %.loopexit, %bb.l, %bb.j, %SafeMult.exit79, %SafeMult.exit, %bb.e
  %.0 = phi i1 [ false, %WaveAdjustToFactValue.exit ], [ true, %bb.e ], [ %i.af, %SafeMult.exit ], [ %i.ah, %SafeMult.exit79 ], [ %i.ak, %bb.j ], [ %i.ep, %bb.l ], [ true, %.loopexit ], [ false, %.thread ], [ false, %WaveAdjustToFactValue.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @MS_ADPCM_Decode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %struct.MS_ADPCM_ChannelState], align 2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %.not = icmp eq i64 %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc zeroext i1 @MS_ADPCM_CalculateSampleFrames(ptr noundef %0, i64 noundef %i.b)
  br i1 %i.f, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %1, align 8
  store i32 0, ptr %2, align 4
  br label %bb.y

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i16, ptr %i.j, align 8
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i16, ptr %i.m, align 4              ; 2 uses
  %i.o = zext i16 %i.n to i64                     ; 12 uses
  %i.p = mul nuw nsw i64 %i.o, 7                  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = shl nuw nsw i64 %i.o, 1                  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i64, ptr %i.a, align 8              ; 3 uses
  %i.z = udiv i64 -1, %i.h
  %.not6.i = icmp ugt i64 %i.z, %i.t
  br i1 %.not6.i, label %bb.f, label %SafeMult.exit

SafeMult.exit:                                    ; preds = %bb.e
  %i.aa = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7
  br label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.ab = mul i64 %i.t, %i.h                      ; 5 uses
  %i.ac = icmp ugt i64 %i.ab, 4294967295
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7
  br label %bb.y

bb.h:                                             ; preds = %bb.f
  %i.ae = lshr exact i64 %i.ab, 1
  %i.af = tail call noalias ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef %i.ab) #9 ; 9 uses
  %.not31 = icmp eq ptr %i.af, null
  br i1 %.not31, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.ag = icmp sgt i64 %i.h, 0
  %i.ah = icmp uge i64 %i.y, %i.p
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %.lr.ph, label %.loopexit108

.lr.ph:                                           ; preds = %.preheader
  %.not69.i = icmp eq i16 %i.n, 0                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ak = mul nuw nsw i64 %i.o, 3
  %i.al = mul nuw nsw i64 %i.o, 5
  %i.am = add nsw i64 %i.s, -2
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.loopexit
  %.0117 = phi i64 [ %i.y, %.lr.ph ], [ %i.ec, %.loopexit ]
  %.sroa.70.0116 = phi i64 [ 0, %.lr.ph ], [ %storemerge.i.ph, %.loopexit ] ; 3 uses
  %.sroa.41.0115 = phi i64 [ 0, %.lr.ph ], [ %i.eb, %.loopexit ] ; 2 uses
  %.sroa.22.0114 = phi i64 [ %i.h, %.lr.ph ], [ %.sroa.22.3.ph, %.loopexit ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.41.0115 ; 5 uses
  %i.ao = tail call i64 @llvm.umin.i64(i64 %.0117, i64 %i.l) ; 2 uses
  %i.ap = sub i64 %i.ae, %.sroa.70.0116
  %i.aq = mul i64 %.sroa.22.0114, %i.o
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.af) #7
  %i.as = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.74) #7
  br label %bb.y

bb.k:                                             ; preds = %bb.i
  br i1 %.not69.i, label %MS_ADPCM_DecodeBlockHeader.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.o
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.70.2 = phi i64 [ %.sroa.70.0116, %.lr.ph.i ], [ %i.bp, %bb.m ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.i
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  %i.ay = load i16, ptr %i.v, align 8
  %i.az = zext i8 %i.ax to i16
  %.not.i33 = icmp ult i16 %i.ay, %i.az
  br i1 %.not.i33, label %MS_ADPCM_DecodeBlockHeader.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = zext i8 %i.ax to i64
  %i.bb = load ptr, ptr %i.aj, align 8
  %.idx = shl nuw nsw i64 %i.ba, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx
  %i.bd = getelementptr inbounds nuw [6 x i8], ptr %3, i64 %indvars.iv.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bf = load <2 x i16>, ptr %i.bc, align 2
  store <2 x i16> %i.bf, ptr %i.be, align 2
  %i.bg = shl nuw nsw i64 %indvars.iv.i, 1        ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 1
  store i16 %i.bi, ptr %i.bd, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bg
  %i.bk = load i16, ptr %i.bj, align 1
  %i.bl = getelementptr [2 x i8], ptr %i.af, i64 %.sroa.70.2 ; 2 uses
  %i.bm = getelementptr [2 x i8], ptr %i.bl, i64 %i.o
  store i16 %i.bk, ptr %i.bm, align 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bg
  %i.bo = load i16, ptr %i.bn, align 1
  store i16 %i.bo, ptr %i.bl, align 2
  %i.bp = add i64 %.sroa.70.2, 1                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not.i, label %MS_ADPCM_DecodeBlockHeader.exit.thread, label %bb.l, !llvm.loop !22

MS_ADPCM_DecodeBlockHeader.exit.thread:           ; preds = %bb.m, %bb.k
  %i.bq = phi i64 [ %.sroa.70.0116, %bb.k ], [ %i.bp, %bb.m ]
  %i.br = add i64 %i.bq, %i.o
  %i.bs = add nsw i64 %.sroa.22.0114, -2
  br label %bb.o
end_hunk_0

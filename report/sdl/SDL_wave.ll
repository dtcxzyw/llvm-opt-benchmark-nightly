Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_wave?download=true
inline.NumInlined: 32
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@PCM_Decode:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  store i8 %i.bo, ptr %i.bt, align 1
  %i.bu = add i64 %.02956.i, -2                   ; 4 uses
  %i.bv = mul i64 %i.bu, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bv ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = getelementptr i8, ptr %i.bw, i64 1
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = getelementptr i8, ptr %i.bw, i64 2
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = shl i64 %i.bu, 2
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cc ; 4 uses
  store i8 0, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store i8 %i.bx, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i8 %i.bz, ptr %i.cf, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 %i.cb, ptr %i.cg, align 1
  %.not35.i.1 = icmp eq i64 %i.bu, 0
  br i1 %.not35.i.1, label %PCM_ConvertSint24ToSint32.exit, label %.lr.ph.i, !llvm.loop !7

.loopexit.sink.split.i:                           ; preds = %bb.j, %bb.h
  %i.ch = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7
  br label %PCM_ConvertSint24ToSint32.exit

bb.l:                                             ; preds = %bb.f, %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cj = load i16, ptr %i.ci, align 8
  %i.ck = zext i16 %i.cj to i64                   ; 2 uses
  %i.cl = udiv i64 -1, %i.z
  %.not6.i = icmp ugt i64 %i.cl, %i.ck
  br i1 %.not6.i, label %bb.m, label %SafeMult.exit

SafeMult.exit:                                    ; preds = %bb.l
  %i.cm = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7
  br label %PCM_ConvertSint24ToSint32.exit

bb.m:                                             ; preds = %bb.l
  %i.cn = mul i64 %i.z, %i.ck                     ; 2 uses
  %i.co = icmp ugt i64 %i.cn, 4294967295
  br i1 %i.co, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cp = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7
  br label %PCM_ConvertSint24ToSint32.exit

bb.o:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  store ptr %i.cr, ptr %1, align 8
  %i.cs = trunc nuw i64 %i.cn to i32
  store i32 %i.cs, ptr %2, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  br label %PCM_ConvertSint24ToSint32.exit

PCM_ConvertSint24ToSint32.exit:                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.loopexit.sink.split.i, %bb.k, %.thread.i, %WaveAdjustToFactValue.exit.thread, %WaveAdjustToFactValue.exit, %bb.o, %bb.n, %SafeMult.exit, %bb.e
  %.0 = phi i1 [ true, %bb.o ], [ true, %bb.e ], [ false, %WaveAdjustToFactValue.exit.thread ], [ %i.cm, %SafeMult.exit ], [ %i.cp, %bb.n ], [ false, %WaveAdjustToFactValue.exit ], [ false, %.thread.i ], [ true, %bb.k ], [ %i.ch, %.loopexit.sink.split.i ], [ true, %.lr.ph.i ], [ true, %.lr.ph.i.prol.loopexit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @LAW_Decode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq i64 %i.e, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i16, ptr %i.f, align 8
  %i.h = zext i16 %i.g to i64
  %i.i = udiv i64 %i.e, %i.h                      ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp eq i32 %i.k, 2
  br i1 %i.l, label %bb.c, label %WaveAdjustToFactValue.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 2
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
  br i1 %min.iters.check, label %.lr.ph.preheader137, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.as = mul i64 %i.z, %i.ad
  %i.at = shl i64 %i.as, 1
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.at
  %scevgep115 = getelementptr i8, ptr %i.ap, i64 %i.ag
  %bound0 = icmp ult ptr %i.ap, %scevgep115
  %bound1 = icmp ult ptr %i.ap, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader137, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, -8                      ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = xor i64 %index, -1
  %i.av = add i64 %i.ag, %i.au                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -7
  %wide.load = load <8 x i8>, ptr %i.ax, align 1, !alias.scope !18
  %reverse = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ay = xor <8 x i8> %reverse, splat (i8 -1)    ; 2 uses
  %i.az = and <8 x i8> %i.ay, splat (i8 15)
  %i.ba = lshr <8 x i8> %i.ay, splat (i8 4)
  %i.bb = and <8 x i8> %i.ba, splat (i8 7)
  %i.bc = zext nneg <8 x i8> %i.bb to <8 x i16>   ; 3 uses
  %i.bd = shl nuw nsw <8 x i16> splat (i16 8), %i.bc
  %i.be = shl nuw nsw <8 x i16> splat (i16 128), %i.bc
  %i.bf = zext nneg <8 x i8> %i.az to <8 x i16>
  %i.bg = add nuw nsw <8 x i16> %i.bc, splat (i16 3)
  %i.bh = shl nuw nsw <8 x i16> %i.bf, %i.bg
  %i.bi = add nuw nsw <8 x i16> %i.bh, %i.be
  %i.bj = lshr exact <8 x i16> %i.bd, splat (i16 1)
  %i.bk = add nuw nsw <8 x i16> %i.bi, %i.bj      ; 2 uses
  %i.bl = add nsw <8 x i16> %i.bk, splat (i16 -132)
  %i.bm = icmp slt <8 x i8> %reverse, zeroinitializer
  %i.bn = sub nsw <8 x i16> splat (i16 132), %i.bk
  %i.bo = select <8 x i1> %i.bm, <8 x i16> %i.bl, <8 x i16> %i.bn
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.av
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -14
  %reverse116 = shufflevector <8 x i16> %i.bo, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse116, ptr %i.bq, align 2, !alias.scope !19, !noalias !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %3 = and i64 %i.ag, 7
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader137

.lr.ph.preheader137:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.1101.ph = phi i64 [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.preheader ], [ %3, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not.i76, label %.loopexit, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.preheader
  %min.iters.check124 = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check124, label %.lr.ph104.preheader136, label %vector.memcheck117

vector.memcheck117:                               ; preds = %.lr.ph104.preheader
  %i.bs = mul i64 %i.z, %i.ad
  %i.bt = shl i64 %i.bs, 1
  %scevgep118 = getelementptr i8, ptr %i.ap, i64 %i.bt
  %scevgep119 = getelementptr i8, ptr %i.ap, i64 %i.ag
  %bound0120 = icmp ult ptr %i.ap, %scevgep119
  %bound1121 = icmp ult ptr %i.ap, %scevgep118
  %found.conflict122 = and i1 %bound0120, %bound1121
  br i1 %found.conflict122, label %.lr.ph104.preheader136, label %vector.ph125

vector.ph125:                                     ; preds = %vector.memcheck117
  %n.vec126 = and i64 %i.ag, -8                   ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next132, %vector.body127 ] ; 2 uses
  %i.bu = xor i64 %index128, -1
  %i.bv = add i64 %i.ag, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -7
  %wide.load129 = load <8 x i8>, ptr %i.bx, align 1, !alias.scope !20
  %reverse130 = shufflevector <8 x i8> %wide.load129, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.by = and <8 x i8> %reverse130, splat (i8 127)
  %i.bz = xor <8 x i8> %i.by, splat (i8 85)       ; 3 uses
  %i.ca = and <8 x i8> %i.bz, splat (i8 15)       ; 2 uses
  %i.cb = lshr <8 x i8> %i.bz, splat (i8 4)       ; 2 uses
  %i.cc = zext nneg <8 x i8> %i.cb to <8 x i32>
  %i.cd = icmp eq <8 x i8> %i.cb, zeroinitializer
  %i.ce = or disjoint <8 x i8> %i.ca, splat (i8 16)
  %i.cf = select <8 x i1> %i.cd, <8 x i8> %i.ca, <8 x i8> %i.ce
  %i.cg = zext nneg <8 x i8> %i.cf to <8 x i16>
  %i.ch = shl nuw nsw <8 x i16> %i.cg, splat (i16 4)
  %i.ci = or disjoint <8 x i16> %i.ch, splat (i16 8) ; 2 uses
  %i.cj = icmp samesign ugt <8 x i8> %i.bz, splat (i8 31)
  %i.ck = add nsw <8 x i32> %i.cc, splat (i32 -1)
  %i.cl = zext nneg <8 x i16> %i.ci to <8 x i32>
  %i.cm = shl nuw nsw <8 x i32> %i.cl, %i.ck
  %i.cn = trunc nuw nsw <8 x i32> %i.cm to <8 x i16>
  %i.co = select <8 x i1> %i.cj, <8 x i16> %i.cn, <8 x i16> %i.ci ; 2 uses
  %i.cp = sub <8 x i16> zeroinitializer, %i.co
  %i.cq = icmp slt <8 x i8> %reverse130, zeroinitializer
  %i.cr = select <8 x i1> %i.cq, <8 x i16> %i.co, <8 x i16> %i.cp
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.bv
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -14
  %reverse131 = shufflevector <8 x i16> %i.cr, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse131, ptr %i.ct, align 2, !alias.scope !21, !noalias !20
  %index.next132 = add nuw i64 %index128, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next132, %n.vec126
  br i1 %i.cu, label %middle.block133, label %vector.body127, !llvm.loop !15

middle.block133:                                  ; preds = %vector.body127
  %4 = and i64 %i.ag, 7
  %cmp.n134 = icmp eq i64 %i.ag, %n.vec126
  br i1 %cmp.n134, label %.loopexit, label %.lr.ph104.preheader136

.lr.ph104.preheader136:                           ; preds = %vector.memcheck117, %.lr.ph104.preheader, %middle.block133
  %.057103.ph = phi i64 [ %i.ag, %vector.memcheck117 ], [ %i.ag, %.lr.ph104.preheader ], [ %4, %middle.block133 ]
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader136, %.lr.ph104
  %.057103 = phi i64 [ %i.cv, %.lr.ph104 ], [ %.057103.ph, %.lr.ph104.preheader136 ]
  %i.cv = add i64 %.057103, -1                    ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1             ; 2 uses
  %i.cy = and i8 %i.cx, 127
  %i.cz = xor i8 %i.cy, 85                        ; 3 uses
  %i.da = and i8 %i.cz, 15                        ; 2 uses
  %i.db = lshr i8 %i.cz, 4                        ; 2 uses
  %i.dc = zext nneg i8 %i.db to i32
  %.not72 = icmp eq i8 %i.db, 0
  %i.dd = or disjoint i8 %i.da, 16
  %spec.select = select i1 %.not72, i8 %i.da, i8 %i.dd
  %i.de = zext nneg i8 %spec.select to i16
  %i.df = shl nuw nsw i16 %i.de, 4
  %i.dg = or disjoint i16 %i.df, 8                ; 2 uses
  %i.dh = icmp samesign ugt i8 %i.cz, 31
  %i.di = add nsw i32 %i.dc, -1
  %i.dj = zext nneg i16 %i.dg to i32
  %i.dk = shl nuw nsw i32 %i.dj, %i.di
  %i.dl = trunc nuw nsw i32 %i.dk to i16
  %.159 = select i1 %i.dh, i16 %i.dl, i16 %i.dg   ; 2 uses
  %i.dm = sub i16 0, %.159
  %.not7374 = icmp slt i8 %i.cx, 0
  %i.dn = select i1 %.not7374, i16 %.159, i16 %i.dm
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.cv
  store i16 %i.dn, ptr %i.do, align 2
  %.not71 = icmp eq i64 %i.cv, 0
  br i1 %.not71, label %.loopexit, label %.lr.ph104, !llvm.loop !16

.lr.ph:                                           ; preds = %.lr.ph.preheader137, %.lr.ph
  %.1101 = phi i64 [ %i.dp, %.lr.ph ], [ %.1101.ph, %.lr.ph.preheader137 ]
  %i.dp = add i64 %.1101, -1                      ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1             ; 2 uses
  %i.ds = xor i8 %i.dr, -1                        ; 2 uses
  %i.dt = and i8 %i.ds, 15
  %i.du = lshr i8 %i.ds, 4
  %i.dv = and i8 %i.du, 7
  %i.dw = zext nneg i8 %i.dv to i16               ; 3 uses
  %i.dx = shl nuw nsw i16 8, %i.dw
  %i.dy = shl nuw nsw i16 128, %i.dw
  %i.dz = zext nneg i8 %i.dt to i16
  %i.ea = add nuw nsw i16 %i.dw, 3
  %i.eb = shl nuw nsw i16 %i.dz, %i.ea
  %i.ec = add nuw nsw i16 %i.eb, %i.dy
  %i.ed = lshr exact i16 %i.dx, 1
  %i.ee = add nuw nsw i16 %i.ec, %i.ed            ; 2 uses
  %i.ef = add nsw i16 %i.ee, -132
  %.not70 = icmp slt i8 %i.dr, 0
  %i.eg = sub nsw i16 132, %i.ee
  %i.eh = select i1 %.not70, i16 %i.ef, i16 %i.eg
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.dp
  store i16 %i.eh, ptr %i.ei, align 2
  %.not69 = icmp eq i64 %i.dp, 0
  br i1 %.not69, label %.loopexit, label %.lr.ph, !llvm.loop !17

bb.l:                                             ; preds = %bb.k
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ap) #7
  %i.ej = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.73) #7
  br label %bb.m

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph104, %middle.block, %middle.block133, %.preheader98, %.preheader
  store ptr %i.ap, ptr %1, align 8
  %i.ek = trunc i64 %i.al to i32
  store i32 %i.ek, ptr %2, align 4
  br label %bb.m

bb.m:                                             ; preds = %WaveAdjustToFactValue.exit.thread, %.thread, %WaveAdjustToFactValue.exit, %.loopexit, %bb.l, %bb.j, %SafeMult.exit79, %SafeMult.exit, %bb.e
  %.0 = phi i1 [ false, %WaveAdjustToFactValue.exit ], [ true, %bb.e ], [ %i.af, %SafeMult.exit ], [ %i.ah, %SafeMult.exit79 ], [ %i.ak, %bb.j ], [ %i.ej, %bb.l ], [ true, %.loopexit ], [ false, %.thread ], [ false, %WaveAdjustToFactValue.exit.thread ]
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
end_hunk_0
begin_hunk_1_@MS_ADPCM_Decode:bb.a
  store i16 %.0.i.us.i, ptr %i.ck, align 2
  %i.dp = add i64 %.14161.us.i, 1                 ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.14161.us.i
  store i16 %.019.i.us.i, ptr %i.dq, align 2
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, %i.o
  br i1 %exitcond.not.i37, label %._crit_edge.us.i, label %bb.p, !llvm.loop !23

._crit_edge.us.i:                                 ; preds = %bb.t
  %i.dr = add nsw i64 %.167.us.i, -1
  %i.ds = icmp slt i64 %.167.us.i, 2
  br i1 %i.ds, label %.loopexit, label %.preheader.us.i, !llvm.loop !24

bb.u:                                             ; preds = %bb.r
  %i.dt = sub i64 %.14161.us.i, %indvars.iv.i35   ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.dv = load i32, ptr %i.du, align 4
  switch i32 %i.dv, label %bb.w [
    i32 1, label %bb.v
    i32 2, label %bb.v
    i32 3, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.af) #7
  %i.dw = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.75) #7
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.dx = mul nuw nsw i64 %i.s, %i.o
  %i.dy = urem i64 %i.dt, %i.dx
  %i.dz = sub i64 %i.dt, %i.dy
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w
  %.sroa.70.1 = phi i64 [ %i.dz, %bb.w ], [ %i.dt, %bb.u ]
  %i.ea = shl i64 %.sroa.70.1, 1
  br label %.loopexit108

.loopexit:                                        ; preds = %._crit_edge.us.i, %.preheader.lr.ph.i, %bb.o
  %.sroa.22.3.ph = phi i64 [ %.sroa.22.1101, %bb.o ], [ %i.bv, %.preheader.lr.ph.i ], [ %i.bv, %._crit_edge.us.i ] ; 2 uses
  %storemerge.i.ph = phi i64 [ %.sroa.70.3103, %bb.o ], [ %.sroa.70.3103, %.preheader.lr.ph.i ], [ %i.dp, %._crit_edge.us.i ]
  %i.eb = add i64 %i.ao, %.sroa.41.0115           ; 2 uses
  %i.ec = sub i64 %i.y, %i.eb                     ; 2 uses
  %i.ed = icmp sgt i64 %.sroa.22.3.ph, 0
  %i.ee = icmp uge i64 %i.ec, %i.p
  %i.ef = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %i.ef, label %bb.i, label %.loopexit108, !llvm.loop !25

.loopexit108:                                     ; preds = %.loopexit, %.preheader, %bb.x
  %.092 = phi i64 [ %i.ea, %bb.x ], [ %i.ab, %.preheader ], [ %i.ab, %.loopexit ]
  store ptr %i.af, ptr %1, align 8
  %i.eg = trunc i64 %.092 to i32
  store i32 %i.eg, ptr %2, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.h, %bb.b, %.loopexit108, %bb.v, %bb.n, %bb.j, %bb.g, %SafeMult.exit, %bb.d
  %.027 = phi i1 [ true, %bb.d ], [ %i.aa, %SafeMult.exit ], [ %i.ad, %bb.g ], [ %i.as, %bb.j ], [ %i.dw, %bb.v ], [ true, %.loopexit108 ], [ false, %bb.n ], [ false, %bb.b ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i1 %.027
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @IMA_ADPCM_Decode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %.not = icmp eq i64 %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc zeroext i1 @IMA_ADPCM_CalculateSampleFrames(ptr noundef %0, i64 noundef %i.b)
  br i1 %i.f, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %1, align 8
  store i32 0, ptr %2, align 4
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i16, ptr %i.j, align 4              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i16, ptr %i.l, align 8
  %i.n = zext i16 %i.m to i64
  %i.o = zext i16 %i.k to i64                     ; 15 uses
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = shl nuw nsw i64 %i.o, 1                  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = load i64, ptr %i.a, align 8              ; 3 uses
  %i.x = udiv i64 -1, %i.h
  %.not6.i = icmp ugt i64 %i.x, %i.t
  br i1 %.not6.i, label %bb.f, label %SafeMult.exit

SafeMult.exit:                                    ; preds = %bb.e
  %i.y = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7
  br label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.z = mul i64 %i.t, %i.h                       ; 5 uses
  %i.aa = icmp ugt i64 %i.z, 4294967295
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7
  br label %bb.aa

bb.h:                                             ; preds = %bb.f
  %i.ac = lshr exact i64 %i.z, 1
  %i.ad = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.z) #7 ; 13 uses
  %.not37 = icmp eq ptr %i.ad, null
  br i1 %.not37, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.o, i64 noundef 1) #9 ; 12 uses
  %.not38 = icmp eq ptr %i.ae, null
  br i1 %.not38, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.af = icmp sgt i64 %i.h, 0
  %i.ag = icmp uge i64 %i.w, %i.p
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %.not.i40 = icmp eq i16 %i.k, 0                 ; 2 uses
  %i.ai = add nsw i64 %i.s, -1
  %i.aj = add nsw i64 %i.p, -4
  %scevgep140 = getelementptr i8, ptr %i.ad, i64 %i.t
  %scevgep142 = getelementptr i8, ptr %i.ae, i64 %i.o ; 2 uses
  %i.ak = getelementptr i8, ptr %i.v, i64 %i.p
  %scevgep143 = getelementptr i8, ptr %i.ak, i64 -1
  %min.iters.check = icmp ult i16 %i.k, 9
  %i.al = and i64 %i.o, 3                         ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  %i.an = select i1 %i.am, i64 4, i64 %i.al
  %n.vec = sub nsw i64 %i.o, %i.an                ; 3 uses
  %i.ao = add nsw i64 %i.o, -1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ad) #7
  br label %bb.aa

bb.k:                                             ; preds = %.lr.ph, %bb.z
  %.0111 = phi i64 [ %i.w, %.lr.ph ], [ %i.fl, %bb.z ]
  %.sroa.68.0110 = phi i64 [ 0, %.lr.ph ], [ %.065.lcssa.i, %bb.z ] ; 7 uses
  %.sroa.40.0109 = phi i64 [ 0, %.lr.ph ], [ %i.fk, %bb.z ] ; 3 uses
  %.sroa.23.0108 = phi i64 [ %i.h, %.lr.ph ], [ %.sroa.23.2, %bb.z ] ; 2 uses
  %i.ap = getelementptr i8, ptr %i.v, i64 %.sroa.40.0109 ; 10 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %.0111, i64 %i.n) ; 2 uses
  %i.ar = sub i64 %i.ac, %.sroa.68.0110
  %i.as = mul i64 %.sroa.23.0108, %i.o
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ad) #7
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ae) #7
  %i.au = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.77) #7
  br label %bb.aa

bb.m:                                             ; preds = %bb.k
  br i1 %.not.i40, label %IMA_ADPCM_DecodeBlockHeader.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  br i1 %min.iters.check, label %.lr.ph.i.preheader154, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.av = shl i64 %.sroa.68.0110, 1               ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.av ; 2 uses
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 %i.av ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %.sroa.40.0109 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep142
  %bound1 = icmp ult ptr %i.ae, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  %bound0145 = icmp ult ptr %scevgep, %scevgep144
  %bound1146 = icmp ult ptr %i.ap, %scevgep141
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx = or i1 %found.conflict, %found.conflict147
  %bound0148 = icmp ult ptr %i.ae, %scevgep144
  %bound1149 = icmp ult ptr %i.ap, %scevgep142
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %conflict.rdx, %found.conflict150
  br i1 %conflict.rdx151, label %.lr.ph.i.preheader154, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aw = getelementptr [2 x i8], ptr %i.ad, i64 %.sroa.68.0110
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.ax = shl nuw nsw i64 %index, 2
  %i.ay = shl i64 %index, 2
  %i.az = shl i64 %index, 2
  %i.ba = shl i64 %index, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ax ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ba
  %wide.vec = load <8 x i16>, ptr %i.bb, align 1, !alias.scope !36
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bf = getelementptr [2 x i8], ptr %i.aw, i64 %index
  store <4 x i16> %strided.vec, ptr %i.bf, align 2, !alias.scope !37, !noalias !38
  %i.bg = getelementptr i8, ptr %i.bb, i64 2
  %i.bh = getelementptr i8, ptr %i.bc, i64 6
  %i.bi = getelementptr i8, ptr %i.bd, i64 10
  %i.bj = getelementptr i8, ptr %i.be, i64 14
  %i.bk = load i8, ptr %i.bg, align 1, !alias.scope !36
  %i.bl = load i8, ptr %i.bh, align 1, !alias.scope !36
  %i.bm = load i8, ptr %i.bi, align 1, !alias.scope !36
  %i.bn = load i8, ptr %i.bj, align 1, !alias.scope !36
  %i.bo = insertelement <4 x i8> poison, i8 %i.bk, i64 0
  %i.bp = insertelement <4 x i8> %i.bo, i8 %i.bl, i64 1
  %i.bq = insertelement <4 x i8> %i.bp, i8 %i.bm, i64 2
  %i.br = insertelement <4 x i8> %i.bq, i8 %i.bn, i64 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 %index
  store <4 x i8> %i.br, ptr %i.bs, align 1, !alias.scope !39, !noalias !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %.lr.ph.i.preheader154.loopexit, label %vector.body, !llvm.loop !30

.lr.ph.i.preheader154.loopexit:                   ; preds = %vector.body
  %3 = add i64 %.sroa.68.0110, %n.vec
  br label %.lr.ph.i.preheader154

.lr.ph.i.preheader154:                            ; preds = %.lr.ph.i.preheader154.loopexit, %vector.memcheck, %.lr.ph.i.preheader
  %.sroa.68.2.ph = phi i64 [ %.sroa.68.0110, %vector.memcheck ], [ %.sroa.68.0110, %.lr.ph.i.preheader ], [ %3, %.lr.ph.i.preheader154.loopexit ] ; 3 uses
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %.lr.ph.i.preheader154.loopexit ] ; 6 uses
  %i.bu = sub nsw i64 %i.o, %indvars.iv.i.ph
  %xtraiter = and i64 %i.bu, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader154
  %i.bv = shl nuw nsw i64 %indvars.iv.i.ph, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = add i64 %.sroa.68.2.ph, 1               ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.sroa.68.2.ph
  store i16 %i.bx, ptr %i.bz, align 2
  %i.ca = getelementptr i8, ptr %i.bw, i64 2
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.i.ph
  store i8 %i.cb, ptr %i.cc, align 1
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader154
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader154 ], [ %i.by, %.lr.ph.i.prol ]
  %.sroa.68.2.unr = phi i64 [ %.sroa.68.2.ph, %.lr.ph.i.preheader154 ], [ %i.by, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader154 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.cd = icmp eq i64 %indvars.iv.i.ph, %i.ao
  br i1 %i.cd, label %IMA_ADPCM_DecodeBlockHeader.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.68.2 = phi i64 [ %i.co, %.lr.ph.i ], [ %.sroa.68.2.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ce = shl nuw nsw i64 %indvars.iv.i, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ce ; 2 uses
  %i.cg = load i16, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.sroa.68.2
  store i16 %i.cg, ptr %i.ch, align 2
  %i.ci = getelementptr i8, ptr %i.cf, i64 2
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.i
  store i8 %i.cj, ptr %i.ck, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cl = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cl ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 1
  %i.co = add i64 %.sroa.68.2, 2                  ; 2 uses
  %i.cp = getelementptr [2 x i8], ptr %i.ad, i64 %.sroa.68.2
  %i.cq = getelementptr i8, ptr %i.cp, i64 2
  store i16 %i.cn, ptr %i.cq, align 2
  %i.cr = getelementptr i8, ptr %i.cm, i64 2
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.next.i
  store i8 %i.cs, ptr %i.ct, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.i.1, %i.o
  br i1 %exitcond.not.1, label %IMA_ADPCM_DecodeBlockHeader.exit, label %.lr.ph.i, !llvm.loop !31

IMA_ADPCM_DecodeBlockHeader.exit:                 ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.m
  %.sroa.68.3 = phi i64 [ %.sroa.68.0110, %bb.m ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.co, %.lr.ph.i ] ; 3 uses
  %i.cu = add nsw i64 %.sroa.23.0108, -1          ; 4 uses
  %i.cv = sub nsw i64 %i.aq, %i.p                 ; 3 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.cu) ; 2 uses
  %i.cw = add nsw i64 %spec.select.i, 7
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = mul i64 %i.cx, %i.p
  %.not103 = icmp ult i64 %i.cv, %i.cy            ; 2 uses
  br i1 %.not103, label %bb.n, label %bb.o

bb.n:                                             ; preds = %IMA_ADPCM_DecodeBlockHeader.exit
  %i.cz = udiv i64 %i.cv, %i.p
  %i.da = urem i64 %i.cv, %i.p                    ; 2 uses
  %i.db = icmp ugt i64 %i.da, %i.aj
  %i.dc = shl nuw nsw i64 %i.da, 1
  %i.dd = and i64 %i.dc, 6
  %i.de = select i1 %i.db, i64 %i.dd, i64 0
  %.164.i = add nuw nsw i64 %i.de, %i.cz
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %IMA_ADPCM_DecodeBlockHeader.exit
  %.2.i = phi i64 [ %.164.i, %bb.n ], [ %spec.select.i, %IMA_ADPCM_DecodeBlockHeader.exit ] ; 3 uses
  %i.df = icmp sgt i64 %.2.i, 0
  br i1 %i.df, label %.lr.ph87.i, label %IMA_ADPCM_DecodeBlockData.exit

.lr.ph87.i:                                       ; preds = %bb.o
  br i1 %.not.i40, label %.lr.ph87.split.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph87.i, %._crit_edge.us.i
  %.sroa.23.1 = phi i64 [ %i.ev, %._crit_edge.us.i ], [ %i.cu, %.lr.ph87.i ]
  %.385.us.i = phi i64 [ %i.ew, %._crit_edge.us.i ], [ %.2.i, %.lr.ph87.i ] ; 2 uses
  %.06584.us.i = phi i64 [ %i.eu, %._crit_edge.us.i ], [ %.sroa.68.3, %.lr.ph87.i ] ; 2 uses
  %.06683.us.i = phi i64 [ %.369.us.i, %._crit_edge.us.i ], [ %i.p, %.lr.ph87.i ]
  %i.dg = tail call i64 @llvm.umin.i64(i64 %.385.us.i, i64 8) ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %.lr.ph.us.i
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i43, %bb.u ] ; 3 uses
  %.16782.us.i = phi i64 [ %.06683.us.i, %.lr.ph.us.i ], [ %.369.us.i, %bb.u ]
  %i.dh = add i64 %indvars.iv.i42, %.06584.us.i   ; 2 uses
  %i.di = sub i64 %i.dh, %i.o
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = sext i16 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.i42 ; 2 uses
  %i.dn = getelementptr [2 x i8], ptr %i.ad, i64 %i.dh
  %.promoted = load i8, ptr %i.dm, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.p
  %i.do = phi i8 [ %.promoted, %bb.p ], [ %i.ed, %bb.t ]
  %.080.us.i = phi i32 [ %i.dl, %bb.p ], [ %.02531.i.us.i, %bb.t ]
  %.06279.us.i = phi i8 [ 0, %bb.p ], [ %.1.us.i, %bb.t ]
  %.26878.us.i = phi i64 [ %.16782.us.i, %bb.p ], [ %.369.us.i, %bb.t ] ; 3 uses
  %.07277.us.i = phi i64 [ 0, %bb.p ], [ %i.es, %bb.t ] ; 3 uses
  %i.dp = and i64 %.07277.us.i, 1
  %.not.us.i = icmp eq i64 %i.dp, 0
  br i1 %.not.us.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = lshr i8 %.06279.us.i, 4
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dr = add i64 %.26878.us.i, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.26878.us.i
  %i.dt = load i8, ptr %i.ds, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.369.us.i = phi i64 [ %.26878.us.i, %bb.r ], [ %i.dr, %bb.s ] ; 3 uses
  %.1.us.i = phi i8 [ %i.dq, %bb.r ], [ %i.dt, %bb.s ] ; 2 uses
  %i.du = and i8 %.1.us.i, 15                     ; 3 uses
  %spec.store.select.i.us.i = tail call i8 @llvm.smax.i8(i8 %i.do, i8 0)
  %i.dv = tail call i8 @llvm.umin.i8(i8 %spec.store.select.i.us.i, i8 88) ; 2 uses
  %i.dw = zext nneg i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr @__const.IMA_ADPCM_ProcessNibble.step_table, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = zext i16 %i.dy to i32                   ; 4 uses
  %i.ea = zext nneg i8 %i.du to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @__const.IMA_ADPCM_ProcessNibble.index_table_4b, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = add i8 %i.dv, %i.ec                     ; 2 uses
  store i8 %i.ed, ptr %i.dm, align 1
  %i.ee = lshr i32 %i.dz, 3
  %i.ef = zext nneg i8 %i.du to i32               ; 3 uses
  %i.eg = and i32 %i.ef, 4
  %.not.i.us.i = icmp eq i32 %i.eg, 0
  %i.eh = select i1 %.not.i.us.i, i32 0, i32 %i.dz
  %.024.i.us.i = add nuw nsw i32 %i.eh, %i.ee
  %i.ei = and i32 %i.ef, 2
  %.not28.i.us.i = icmp eq i32 %i.ei, 0
  %i.ej = lshr i32 %i.dz, 1
  %i.ek = select i1 %.not28.i.us.i, i32 0, i32 %i.ej
  %.1.i.us.i = add nuw nsw i32 %.024.i.us.i, %i.ek
  %i.el = and i32 %i.ef, 1
  %.not29.i.us.i = icmp eq i32 %i.el, 0
  %i.em = lshr i32 %i.dz, 2
  %i.en = select i1 %.not29.i.us.i, i32 0, i32 %i.em
  %.2.i.us.i = add nuw nsw i32 %.1.i.us.i, %i.en  ; 2 uses
  %.not30.i.us.i = icmp samesign ult i8 %i.du, 8
  %i.eo = sub nsw i32 0, %.2.i.us.i
  %.3.i.us.i = select i1 %.not30.i.us.i, i32 %.2.i.us.i, i32 %i.eo
  %i.ep = add nsw i32 %.3.i.us.i, %.080.us.i
  %spec.store.select1.i.us.i = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 -32768)
  %.02531.i.us.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select1.i.us.i, i32 32767) ; 2 uses
  %.025.i.us.i = trunc nsw i32 %.02531.i.us.i to i16
  %i.eq = mul nuw nsw i64 %.07277.us.i, %i.o
  %i.er = getelementptr [2 x i8], ptr %i.dn, i64 %i.eq
  store i16 %.025.i.us.i, ptr %i.er, align 2
  %i.es = add nuw nsw i64 %.07277.us.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.es, %i.dg
  br i1 %exitcond.not.i, label %bb.u, label %bb.q, !llvm.loop !32

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond94.not.i = icmp eq i64 %indvars.iv.next.i43, %i.o
  br i1 %exitcond94.not.i, label %._crit_edge.us.i, label %bb.p, !llvm.loop !33

._crit_edge.us.i:                                 ; preds = %bb.u
  %i.et = mul nuw nsw i64 %i.dg, %i.o
  %i.eu = add i64 %i.et, %.06584.us.i             ; 2 uses
  %i.ev = sub i64 %.sroa.23.1, %i.dg              ; 2 uses
  %i.ew = sub nuw nsw i64 %.385.us.i, %i.dg       ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.us.i, label %IMA_ADPCM_DecodeBlockData.exit, !llvm.loop !34

.lr.ph87.split.i:                                 ; preds = %.lr.ph87.i, %.lr.ph87.split.i
  %i.ey = phi i64 [ %i.fa, %.lr.ph87.split.i ], [ %i.cu, %.lr.ph87.i ]
  %.385.i = phi i64 [ %i.fb, %.lr.ph87.split.i ], [ %.2.i, %.lr.ph87.i ] ; 2 uses
  %i.ez = tail call i64 @llvm.umin.i64(i64 %.385.i, i64 8) ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 2 uses
  %i.fb = sub nuw nsw i64 %.385.i, %i.ez          ; 2 uses
  %i.fc = icmp sgt i64 %i.fb, 0
  br i1 %i.fc, label %.lr.ph87.split.i, label %IMA_ADPCM_DecodeBlockData.exit, !llvm.loop !34

IMA_ADPCM_DecodeBlockData.exit:                   ; preds = %._crit_edge.us.i, %.lr.ph87.split.i, %bb.o
  %.sroa.23.2 = phi i64 [ %i.cu, %bb.o ], [ %i.fa, %.lr.ph87.split.i ], [ %i.ev, %._crit_edge.us.i ] ; 2 uses
  %.065.lcssa.i = phi i64 [ %.sroa.68.3, %bb.o ], [ %.sroa.68.3, %.lr.ph87.split.i ], [ %i.eu, %._crit_edge.us.i ] ; 4 uses
  br i1 %.not103, label %bb.v, label %bb.z

bb.v:                                             ; preds = %IMA_ADPCM_DecodeBlockData.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.fe = load i32, ptr %i.fd, align 4
  switch i32 %i.fe, label %bb.x [
end_hunk_1

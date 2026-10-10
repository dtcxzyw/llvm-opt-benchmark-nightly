Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_wave?download=true
inline.NumInlined: 32
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@MS_ADPCM_Decode:bb.a
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not.i, label %MS_ADPCM_DecodeBlockHeader.exit.thread, label %bb.l, !llvm.loop !22

MS_ADPCM_DecodeBlockHeader.exit.thread:           ; preds = %bb.m, %bb.k
  %i.bq = phi i64 [ %.sroa.70.0116, %bb.k ], [ %i.bp, %bb.m ]
  %i.br = add i64 %i.bq, %i.o
  %i.bs = add nsw i64 %.sroa.22.0114, -2
  br label %bb.o

MS_ADPCM_DecodeBlockHeader.exit:                  ; preds = %bb.l
  %i.bt = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.76) #7
  br i1 %i.bt, label %bb.o, label %bb.n

bb.n:                                             ; preds = %MS_ADPCM_DecodeBlockHeader.exit
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.af) #7
  br label %bb.y

bb.o:                                             ; preds = %MS_ADPCM_DecodeBlockHeader.exit.thread, %MS_ADPCM_DecodeBlockHeader.exit
  %.sroa.70.3103 = phi i64 [ %i.br, %MS_ADPCM_DecodeBlockHeader.exit.thread ], [ %.sroa.70.2, %MS_ADPCM_DecodeBlockHeader.exit ] ; 3 uses
  %.sroa.55.0102 = phi i64 [ %i.p, %MS_ADPCM_DecodeBlockHeader.exit.thread ], [ 0, %MS_ADPCM_DecodeBlockHeader.exit ]
  %.sroa.22.1101 = phi i64 [ %i.bs, %MS_ADPCM_DecodeBlockHeader.exit.thread ], [ %.sroa.22.0114, %MS_ADPCM_DecodeBlockHeader.exit ] ; 3 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.am, i64 %.sroa.22.1101) ; 3 uses
  %i.bu = icmp slt i64 %spec.select.i, 1
  br i1 %i.bu, label %.loopexit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.o
  %i.bv = sub nsw i64 %.sroa.22.1101, %spec.select.i ; 2 uses
  br i1 %.not69.i, label %.loopexit, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %.167.us.i = phi i64 [ %i.dr, %._crit_edge.us.i ], [ %spec.select.i, %.preheader.lr.ph.i ] ; 2 uses
  %.04066.us.i = phi i64 [ %i.dp, %._crit_edge.us.i ], [ %.sroa.70.3103, %.preheader.lr.ph.i ]
  %.04265.us.i = phi i64 [ %.2.us.i, %._crit_edge.us.i ], [ %.sroa.55.0102, %.preheader.lr.ph.i ]
  %.04564.us.i = phi i16 [ %.247.us.i, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.preheader.us.i
  %indvars.iv.i35 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i36, %bb.t ] ; 3 uses
  %.14161.us.i = phi i64 [ %.04066.us.i, %.preheader.us.i ], [ %i.dp, %bb.t ] ; 5 uses
  %.14360.us.i = phi i64 [ %.04265.us.i, %.preheader.us.i ], [ %.2.us.i, %bb.t ] ; 4 uses
  %.14658.us.i = phi i16 [ %.04564.us.i, %.preheader.us.i ], [ %.247.us.i, %bb.t ] ; 2 uses
  %i.bw = and i16 %.14658.us.i, 16384
  %.not.us.i = icmp eq i16 %i.bw, 0
  br i1 %.not.us.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = shl i16 %.14658.us.i, 4
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.by = icmp ult i64 %.14360.us.i, %i.ao
  br i1 %i.by, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bz = add nuw nsw i64 %.14360.us.i, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.an, i64 %.14360.us.i
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i16
  %i.cd = or disjoint i16 %i.cc, 16384
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.247.us.i = phi i16 [ %i.bx, %bb.q ], [ %i.cd, %bb.s ] ; 3 uses
  %.2.us.i = phi i64 [ %.14360.us.i, %bb.q ], [ %i.bz, %bb.s ] ; 2 uses
  %i.ce = sub i64 %.14161.us.i, %i.o
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = sub i64 %.14161.us.i, %i.t
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = getelementptr inbounds nuw [6 x i8], ptr %3, i64 %indvars.iv.i35 ; 4 uses
  %i.cl = sext i16 %i.cg to i32
  %i.cm = sext i16 %i.cj to i32
  %i.cn = trunc i16 %.247.us.i to i8              ; 2 uses
  %i.co = lshr i8 %i.cn, 4                        ; 2 uses
  %i.cp = load i16, ptr %i.ck, align 2
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = sext i16 %i.cs to i32
  %i.cu = mul nsw i32 %i.ct, %i.cl
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = sext i16 %i.cw to i32
  %i.cy = mul nsw i32 %i.cx, %i.cm
  %i.cz = add nsw i32 %i.cy, %i.cu
  %i.da = sdiv i32 %i.cz, 256
  %i.db = zext nneg i8 %i.co to i32
  %i.dc = icmp slt i8 %i.cn, 0
  %.neg.i.us.i = select i1 %i.dc, i32 -16, i32 0
  %i.dd = or disjoint i32 %.neg.i.us.i, %i.db
  %i.de = mul nsw i32 %i.dd, %i.cq
  %i.df = add nsw i32 %i.da, %i.de
  %i.dg = tail call i32 @llvm.smax.i32(i32 %i.df, i32 -32768)
  %.01922.i.us.i = tail call i32 @llvm.smin.i32(i32 %i.dg, i32 32767)
  %.019.i.us.i = trunc nsw i32 %.01922.i.us.i to i16
  %i.dh = zext nneg i8 %i.co to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr @__const.MS_ADPCM_ProcessNibble.adaptive, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2
  %i.dk = zext i16 %i.dj to i32
  %i.dl = mul nuw i32 %i.dk, %i.cq                ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 4096
  %i.dn = lshr i32 %i.dl, 8
  %spec.store.select1.i.us.i = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 65535)
  %i.do = trunc nuw i32 %spec.store.select1.i.us.i to i16
  %.0.i.us.i = select i1 %i.dm, i16 16, i16 %i.do
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
  br i1 %i.f, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %1, align 8
  store i32 0, ptr %2, align 4
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i16, ptr %i.j, align 4              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i16, ptr %i.l, align 8
  %i.n = zext i16 %i.m to i64
  %i.o = zext i16 %i.k to i64                     ; 12 uses
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i32, ptr %i.q, align 8
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = shl nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i64, ptr %i.a, align 8              ; 3 uses
  %i.x = udiv i64 -1, %i.h
  %.not6.i = icmp ugt i64 %i.x, %i.t
  br i1 %.not6.i, label %bb.f, label %SafeMult.exit

SafeMult.exit:                                    ; preds = %bb.e
  %i.y = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7
  br label %bb.z

bb.f:                                             ; preds = %bb.e
  %i.z = mul i64 %i.t, %i.h                       ; 5 uses
  %i.aa = icmp ugt i64 %i.z, 4294967295
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.72) #7
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.ac = lshr exact i64 %i.z, 1
  %i.ad = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.z) #7 ; 9 uses
  %.not37 = icmp eq ptr %i.ad, null
  br i1 %.not37, label %bb.z, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.o, i64 noundef 1) #9 ; 7 uses
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
  %min.iters.check = icmp ult i16 %i.k, 5
  %i.ak = and i64 %i.o, 3                         ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = select i1 %i.al, i64 4, i64 %i.ak
  %n.vec = sub nsw i64 %i.o, %i.am                ; 3 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ad) #7
  br label %bb.z

bb.k:                                             ; preds = %.lr.ph, %bb.y
  %.0111 = phi i64 [ %i.w, %.lr.ph ], [ %i.er, %bb.y ]
  %.sroa.68.0110 = phi i64 [ 0, %.lr.ph ], [ %.065.lcssa.i, %bb.y ] ; 5 uses
  %.sroa.40.0109 = phi i64 [ 0, %.lr.ph ], [ %i.eq, %bb.y ] ; 2 uses
  %.sroa.23.0108 = phi i64 [ %i.h, %.lr.ph ], [ %.sroa.23.2, %bb.y ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.40.0109 ; 6 uses
  %i.ao = tail call i64 @llvm.umin.i64(i64 %.0111, i64 %i.n) ; 2 uses
  %i.ap = sub i64 %i.ac, %.sroa.68.0110
  %i.aq = mul i64 %.sroa.23.0108, %i.o
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.l, label %.lr.ph.i.preheader.a

bb.l:                                             ; preds = %bb.k
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ad) #7
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ae) #7
  %i.as = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.77) #7
  br label %bb.z

.lr.ph.i.preheader.a:                             ; preds = %bb.k
  br i1 %.not.i40, label %IMA_ADPCM_DecodeBlockHeader.exit, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.a
  br i1 %min.iters.check, label %.lr.ph.i.prol.loopexit, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.at = add i64 %.sroa.68.0110, %n.vec
  %i.au = getelementptr [2 x i8], ptr %i.ad, i64 %.sroa.68.0110
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.av = shl nuw nsw i64 %index, 2
  %i.aw = shl i64 %index, 2
  %i.ax = shl i64 %index, 2
  %i.ay = shl i64 %index, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ay
  %wide.vec = load <8 x i16>, ptr %i.az, align 1
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bd = getelementptr [2 x i8], ptr %i.au, i64 %index
  store <4 x i16> %strided.vec, ptr %i.bd, align 2
  %i.be = getelementptr i8, ptr %i.az, i64 2
  %i.bf = getelementptr i8, ptr %i.ba, i64 6
  %i.bg = getelementptr i8, ptr %i.bb, i64 10
  %i.bh = getelementptr i8, ptr %i.bc, i64 14
  %i.bi = load i8, ptr %i.be, align 1
  %i.bj = load i8, ptr %i.bf, align 1
  %i.bk = load i8, ptr %i.bg, align 1
  %i.bl = load i8, ptr %i.bh, align 1
  %i.bm = insertelement <4 x i8> poison, i8 %i.bi, i64 0
  %i.bn = insertelement <4 x i8> %i.bm, i8 %i.bj, i64 1
  %i.bo = insertelement <4 x i8> %i.bn, i8 %i.bk, i64 2
  %i.bp = insertelement <4 x i8> %i.bo, i8 %i.bl, i64 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %index
  store <4 x i8> %i.bp, ptr %i.bq, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %.lr.ph.i.prol.loopexit, label %vector.body, !llvm.loop !26

.lr.ph.i.prol.loopexit:                           ; preds = %vector.body, %vector.memcheck
  %.sroa.68.2.unr = phi i64 [ %.sroa.68.0110, %vector.memcheck ], [ %i.at, %vector.body ]
  %indvars.iv.i.unr = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.68.2 = phi i64 [ %i.bv, %.lr.ph.i ], [ %.sroa.68.2.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.bs = shl nuw nsw i64 %indvars.iv.i, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bs ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 1
  %i.bv = add i64 %.sroa.68.2, 1                  ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.sroa.68.2
  store i16 %i.bu, ptr %i.bw, align 2
  %i.bx = getelementptr i8, ptr %i.bt, i64 2
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.i
  store i8 %i.by, ptr %i.bz, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.i.1, %i.o
  br i1 %exitcond.not.1, label %IMA_ADPCM_DecodeBlockHeader.exit, label %.lr.ph.i, !llvm.loop !27

IMA_ADPCM_DecodeBlockHeader.exit:                 ; preds = %.lr.ph.i, %.lr.ph.i.preheader.a
  %.sroa.68.3 = phi i64 [ %.sroa.68.0110, %.lr.ph.i.preheader.a ], [ %i.bv, %.lr.ph.i ] ; 3 uses
  %i.ca = add nsw i64 %.sroa.23.0108, -1          ; 4 uses
  %i.cb = sub nsw i64 %i.ao, %i.p                 ; 3 uses
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %i.ai, i64 %i.ca) ; 2 uses
  %i.cc = add nsw i64 %spec.select.i, 7
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = mul i64 %i.cd, %i.p
  %.not103 = icmp ult i64 %i.cb, %i.ce            ; 2 uses
  br i1 %.not103, label %bb.m, label %bb.n

bb.m:                                             ; preds = %IMA_ADPCM_DecodeBlockHeader.exit
  %i.cf = udiv i64 %i.cb, %i.p
  %i.cg = urem i64 %i.cb, %i.p                    ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, %i.aj
  %i.ci = shl nuw nsw i64 %i.cg, 1
  %i.cj = and i64 %i.ci, 6
  %i.ck = select i1 %i.ch, i64 %i.cj, i64 0
  %.164.i = add nuw nsw i64 %i.ck, %i.cf
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %IMA_ADPCM_DecodeBlockHeader.exit
  %.2.i = phi i64 [ %.164.i, %bb.m ], [ %spec.select.i, %IMA_ADPCM_DecodeBlockHeader.exit ] ; 3 uses
  %i.cl = icmp sgt i64 %.2.i, 0
  br i1 %i.cl, label %.lr.ph87.i, label %IMA_ADPCM_DecodeBlockData.exit

.lr.ph87.i:                                       ; preds = %bb.n
  br i1 %.not.i40, label %.lr.ph87.split.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph87.i, %._crit_edge.us.i
  %.sroa.23.1 = phi i64 [ %i.eb, %._crit_edge.us.i ], [ %i.ca, %.lr.ph87.i ]
  %.385.us.i = phi i64 [ %i.ec, %._crit_edge.us.i ], [ %.2.i, %.lr.ph87.i ] ; 2 uses
  %.06584.us.i = phi i64 [ %i.ea, %._crit_edge.us.i ], [ %.sroa.68.3, %.lr.ph87.i ] ; 2 uses
  %.06683.us.i = phi i64 [ %.369.us.i, %._crit_edge.us.i ], [ %i.p, %.lr.ph87.i ]
  %i.cm = tail call i64 @llvm.umin.i64(i64 %.385.us.i, i64 8) ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %.lr.ph.us.i
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i43, %bb.t ] ; 3 uses
  %.16782.us.i = phi i64 [ %.06683.us.i, %.lr.ph.us.i ], [ %.369.us.i, %bb.t ]
  %i.cn = add i64 %indvars.iv.i42, %.06584.us.i   ; 2 uses
  %i.co = sub i64 %i.cn, %i.o
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = sext i16 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.i42 ; 2 uses
  %i.ct = getelementptr [2 x i8], ptr %i.ad, i64 %i.cn
  %.promoted = load i8, ptr %i.cs, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %bb.o
  %i.cu = phi i8 [ %.promoted, %bb.o ], [ %i.dj, %bb.s ]
  %.080.us.i = phi i32 [ %i.cr, %bb.o ], [ %.02531.i.us.i, %bb.s ]
  %.06279.us.i = phi i8 [ 0, %bb.o ], [ %.1.us.i, %bb.s ]
  %.26878.us.i = phi i64 [ %.16782.us.i, %bb.o ], [ %.369.us.i, %bb.s ] ; 3 uses
  %.07277.us.i = phi i64 [ 0, %bb.o ], [ %i.dy, %bb.s ] ; 3 uses
  %i.cv = and i64 %.07277.us.i, 1
  %.not.us.i = icmp eq i64 %i.cv, 0
  br i1 %.not.us.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = lshr i8 %.06279.us.i, 4
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cx = add i64 %.26878.us.i, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 %.26878.us.i
  %i.cz = load i8, ptr %i.cy, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.369.us.i = phi i64 [ %.26878.us.i, %bb.q ], [ %i.cx, %bb.r ] ; 3 uses
  %.1.us.i = phi i8 [ %i.cw, %bb.q ], [ %i.cz, %bb.r ] ; 2 uses
  %i.da = and i8 %.1.us.i, 15                     ; 3 uses
  %spec.store.select.i.us.i = tail call i8 @llvm.smax.i8(i8 %i.cu, i8 0)
  %i.db = tail call i8 @llvm.umin.i8(i8 %spec.store.select.i.us.i, i8 88) ; 2 uses
  %i.dc = zext nneg i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr @__const.IMA_ADPCM_ProcessNibble.step_table, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2
  %i.df = zext i16 %i.de to i32                   ; 4 uses
  %i.dg = zext nneg i8 %i.da to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @__const.IMA_ADPCM_ProcessNibble.index_table_4b, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = add i8 %i.db, %i.di                     ; 2 uses
  store i8 %i.dj, ptr %i.cs, align 1
  %i.dk = lshr i32 %i.df, 3
  %i.dl = zext nneg i8 %i.da to i32               ; 3 uses
  %i.dm = and i32 %i.dl, 4
  %.not.i.us.i = icmp eq i32 %i.dm, 0
  %i.dn = select i1 %.not.i.us.i, i32 0, i32 %i.df
  %.024.i.us.i = add nuw nsw i32 %i.dn, %i.dk
  %i.do = and i32 %i.dl, 2
  %.not28.i.us.i = icmp eq i32 %i.do, 0
  %i.dp = lshr i32 %i.df, 1
  %i.dq = select i1 %.not28.i.us.i, i32 0, i32 %i.dp
  %.1.i.us.i = add nuw nsw i32 %.024.i.us.i, %i.dq
  %i.dr = and i32 %i.dl, 1
  %.not29.i.us.i = icmp eq i32 %i.dr, 0
  %i.ds = lshr i32 %i.df, 2
  %i.dt = select i1 %.not29.i.us.i, i32 0, i32 %i.ds
  %.2.i.us.i = add nuw nsw i32 %.1.i.us.i, %i.dt  ; 2 uses
  %.not30.i.us.i = icmp samesign ult i8 %i.da, 8
  %i.du = sub nsw i32 0, %.2.i.us.i
  %.3.i.us.i = select i1 %.not30.i.us.i, i32 %.2.i.us.i, i32 %i.du
  %i.dv = add nsw i32 %.3.i.us.i, %.080.us.i
  %spec.store.select1.i.us.i = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 -32768)
  %.02531.i.us.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select1.i.us.i, i32 32767) ; 2 uses
  %.025.i.us.i = trunc nsw i32 %.02531.i.us.i to i16
  %i.dw = mul nuw nsw i64 %.07277.us.i, %i.o
  %i.dx = getelementptr [2 x i8], ptr %i.ct, i64 %i.dw
  store i16 %.025.i.us.i, ptr %i.dx, align 2
  %i.dy = add nuw nsw i64 %.07277.us.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dy, %i.cm
  br i1 %exitcond.not.i, label %bb.t, label %bb.p, !llvm.loop !28

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond94.not.i = icmp eq i64 %indvars.iv.next.i43, %i.o
  br i1 %exitcond94.not.i, label %._crit_edge.us.i, label %bb.o, !llvm.loop !29

._crit_edge.us.i:                                 ; preds = %bb.t
  %i.dz = mul nuw nsw i64 %i.cm, %i.o
  %i.ea = add i64 %i.dz, %.06584.us.i             ; 2 uses
  %i.eb = sub i64 %.sroa.23.1, %i.cm              ; 2 uses
  %i.ec = sub nuw nsw i64 %.385.us.i, %i.cm       ; 2 uses
  %i.ed = icmp sgt i64 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.us.i, label %IMA_ADPCM_DecodeBlockData.exit, !llvm.loop !30

.lr.ph87.split.i:                                 ; preds = %.lr.ph87.i, %.lr.ph87.split.i
  %i.ee = phi i64 [ %i.eg, %.lr.ph87.split.i ], [ %i.ca, %.lr.ph87.i ]
  %.385.i = phi i64 [ %i.eh, %.lr.ph87.split.i ], [ %.2.i, %.lr.ph87.i ] ; 2 uses
  %i.ef = tail call i64 @llvm.umin.i64(i64 %.385.i, i64 8) ; 2 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 2 uses
  %i.eh = sub nuw nsw i64 %.385.i, %i.ef          ; 2 uses
  %i.ei = icmp sgt i64 %i.eh, 0
  br i1 %i.ei, label %.lr.ph87.split.i, label %IMA_ADPCM_DecodeBlockData.exit, !llvm.loop !30

IMA_ADPCM_DecodeBlockData.exit:                   ; preds = %._crit_edge.us.i, %.lr.ph87.split.i, %bb.n
  %.sroa.23.2 = phi i64 [ %i.ca, %bb.n ], [ %i.eg, %.lr.ph87.split.i ], [ %i.eb, %._crit_edge.us.i ] ; 2 uses
  %.065.lcssa.i = phi i64 [ %.sroa.68.3, %bb.n ], [ %.sroa.68.3, %.lr.ph87.split.i ], [ %i.ea, %._crit_edge.us.i ] ; 4 uses
  br i1 %.not103, label %bb.u, label %bb.y

bb.u:                                             ; preds = %IMA_ADPCM_DecodeBlockData.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ek = load i32, ptr %i.ej, align 4
  switch i32 %i.ek, label %bb.w [
    i32 1, label %bb.v
    i32 2, label %bb.v
    i32 3, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ad) #7
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ae) #7
  %i.el = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.75) #7
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.em = mul nuw nsw i64 %i.s, %i.o
  %i.en = urem i64 %.065.lcssa.i, %i.em
  %i.eo = sub i64 %.065.lcssa.i, %i.en
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w
  %.sroa.68.1 = phi i64 [ %i.eo, %bb.w ], [ %.065.lcssa.i, %bb.u ]
  %i.ep = shl i64 %.sroa.68.1, 1
  br label %.loopexit

bb.y:                                             ; preds = %IMA_ADPCM_DecodeBlockData.exit
  %i.eq = add i64 %i.ao, %.sroa.40.0109           ; 2 uses
  %i.er = sub i64 %i.w, %i.eq                     ; 2 uses
  %i.es = icmp sgt i64 %.sroa.23.2, 0
  %i.et = icmp uge i64 %i.er, %i.p
  %i.eu = select i1 %i.es, i1 %i.et, i1 false
  br i1 %i.eu, label %bb.k, label %.loopexit, !llvm.loop !31

.loopexit:                                        ; preds = %bb.y, %.preheader, %bb.x
  %.098 = phi i64 [ %i.ep, %bb.x ], [ %i.z, %.preheader ], [ %i.z, %bb.y ]
  store ptr %i.ad, ptr %1, align 8
  %i.ev = trunc i64 %.098 to i32
  store i32 %i.ev, ptr %2, align 4
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ae) #7
  br label %bb.z

bb.z:                                             ; preds = %bb.h, %bb.b, %.loopexit, %bb.v, %bb.l, %bb.j, %bb.g, %SafeMult.exit, %bb.d
  %.032 = phi i1 [ true, %bb.d ], [ %i.y, %SafeMult.exit ], [ %i.ab, %bb.g ], [ %i.as, %bb.l ], [ %i.el, %bb.v ], [ true, %.loopexit ], [ false, %bb.j ], [ false, %bb.b ], [ false, %bb.h ]
  ret i1 %.032
}

declare i64 @SDL_ReadIO_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #3

declare ptr @SDL_IOFromConstMem_REAL(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_ReadU16LE_REAL(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i16 @WaveGetFormatGUIDEncoding(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 2), i64 noundef 16) #7
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 20), i64 noundef 16) #7
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 38), i64 noundef 16) #7
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 56), i64 noundef 16) #7
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 74), i64 noundef 16) #7
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 92), i64 noundef 16) #7
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ @extensible_guids, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 18), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 36), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 54), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 72), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 90), %bb.f ]
  %i.n = load i16, ptr %.lcssa, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g
  %.05 = phi i16 [ %i.n, %bb.g ], [ 0, %bb.f ]
  ret i16 %.05
}

declare i32 @SDL_memcmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @PCM_Init(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.b = load i16, ptr %i.a, align 2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 50
  %.pre = load i16, ptr %.phi.trans.insert, align 2 ; 5 uses
  switch i16 %i.b, label %._crit_edge [
    i16 1, label %bb.b
    i16 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i16 %.pre, -8            ; 3 uses
  %i.c = icmp ult i16 %switch.tableidx, 25
  br i1 %i.c, label %switch.hole_check, label %bb.c

bb.c:                                             ; preds = %switch.hole_check, %bb.b
  %i.d = zext i16 %.pre to i32
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.51, i32 noundef %i.d) #7
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i16 %.pre, 32
  br i1 %.not, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = zext i16 %.pre to i32
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.52, i32 noundef %i.f) #7
  br label %bb.m

switch.hole_check:                                ; preds = %bb.b
  %switch.maskindex = zext nneg i16 %switch.tableidx to i32
  %switch.shifted = lshr i32 16843009, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %switch.hole_check
  %i.h = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.PCM_Init, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %._crit_edge

._crit_edge:                                      ; preds = %switch.lookup, %bb.a, %bb.d
  %i.i = phi i16 [ %switch.ext, %switch.lookup ], [ 32, %bb.d ], [ %.pre, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load i16, ptr %i.j, align 4
  %i.l = zext i16 %i.k to i32
  %i.m = zext i16 %i.i to i32
  %i.n = mul nuw nsw i32 %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i16, ptr %i.o, align 4              ; 2 uses
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = shl nuw nsw i32 %i.q, 3
  %i.s = urem i32 %i.n, %i.r
  %.not23 = icmp eq i32 %i.s, 0
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.53) #7
  br label %bb.m

bb.g:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.v = load i32, ptr %i.u, align 4
  %.off = add i32 %i.v, -1
  %switch = icmp ult i32 %.off, 2
  %i.w = icmp ugt i16 %i.p, 1
  %or.cond = and i1 %i.w, %switch
  %.lhs.trunc = trunc nuw i64 %1 to i32           ; 2 uses
  br i1 %or.cond, label %bb.h, label %._crit_edge30

bb.h:                                             ; preds = %bb.g
  %i.x = urem i32 %.lhs.trunc, %i.q
  %.not24 = icmp eq i32 %i.x, 0
  br i1 %.not24, label %._crit_edge30, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.54) #7
  br label %bb.m

._crit_edge30:                                    ; preds = %bb.g, %bb.h
  %i.z = udiv i32 %.lhs.trunc, %i.q               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge30
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ah = load i32, ptr %i.ag, align 4            ; 3 uses
  %i.ai = icmp ult i32 %i.z, %i.ah
  %or.cond.i = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %or.cond.i, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %i.aj = icmp ugt i32 %i.z, %i.ah
  br i1 %i.aj, label %WaveAdjustToFactValue.exit.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %._crit_edge30
  br label %WaveAdjustToFactValue.exit.thread

WaveAdjustToFactValue.exit.thread:                ; preds = %bb.k, %._crit_edge.i
  %.0.i.ph.in = phi i32 [ %i.ah, %._crit_edge.i ], [ %i.z, %bb.k ]
  %.0.i.ph = zext i32 %.0.i.ph.in to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.0.i.ph, ptr %i.ak, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.al = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.55) #7 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 -1, ptr %i.am, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %WaveAdjustToFactValue.exit.thread, %bb.i, %bb.f, %bb.e, %bb.c
  %.0 = phi i1 [ %i.e, %bb.c ], [ %i.t, %bb.f ], [ %i.y, %bb.i ], [ %i.g, %bb.e ], [ false, %bb.l ], [ true, %WaveAdjustToFactValue.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @LAW_Init(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %.not = icmp eq i16 %i.b, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@LAW_Init:bb.a
  %i.m = urem i32 %.lhs.trunc, %.rhs.trunc
  %.not18 = icmp eq i32 %i.m, 0
  br i1 %.not18, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.54) #7
  br label %bb.k

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.o = udiv i32 %.lhs.trunc, %.rhs.trunc        ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = icmp ult i32 %i.o, %i.w
  %or.cond.i = select i1 %i.u, i1 %i.x, i1 false
  br i1 %or.cond.i, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %i.y = icmp ugt i32 %i.o, %i.w
  br i1 %i.y, label %WaveAdjustToFactValue.exit.thread, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %._crit_edge
  br label %WaveAdjustToFactValue.exit.thread

WaveAdjustToFactValue.exit.thread:                ; preds = %bb.i, %._crit_edge.i
  %.0.i.ph.in = phi i32 [ %i.w, %._crit_edge.i ], [ %i.o, %bb.i ]
  %.0.i.ph = zext i32 %.0.i.ph.in to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.0.i.ph, ptr %i.z, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.55) #7 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 -1, ptr %i.ab, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %WaveAdjustToFactValue.exit.thread, %bb.g, %bb.d, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ %i.i, %bb.d ], [ %i.n, %bb.g ], [ false, %bb.j ], [ true, %WaveAdjustToFactValue.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @MS_ADPCM_Init(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i16, ptr %i.b, align 4              ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = mul nuw nsw i64 %i.d, 7                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i16, ptr %i.f, align 4
  %i.h = zext i16 %i.g to i64                     ; 2 uses
  %i.i = sub nsw i64 %i.h, %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.k = load i16, ptr %i.j, align 2              ; 3 uses
  %i.l = zext i16 %i.k to i64
  %i.m = mul nuw nsw i64 %i.l, %i.d
  %i.n = shl nsw i64 %i.i, 3
  %i.o = udiv i64 %i.n, %i.m                      ; 2 uses
  %i.p = icmp ugt i16 %i.c, 2
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.42) #7
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i16 %i.k, 4
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = zext i16 %i.k to i32
  %i.s = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.57, i32 noundef %i.r) #7
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ugt i64 %i.e, %i.h
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.58) #7
  br label %bb.ab

bb.g:                                             ; preds = %bb.e
  %i.v = load i16, ptr %i.a, align 4
  %i.w = icmp eq i16 %i.v, -2
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.59) #7
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp ult i64 %i.z, 22
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.60) #7
  br label %bb.ab

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 18
  %i.af = load i16, ptr %i.ae, align 1
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.aj = load i16, ptr %i.ai, align 1            ; 2 uses
  %i.ak = tail call i16 @llvm.umin.i16(i16 %i.aj, i16 256) ; 2 uses
  %spec.store.select = zext nneg i16 %i.ak to i64 ; 2 uses
  %i.al = shl nuw nsw i64 %spec.store.select, 2   ; 3 uses
  %i.am = add nuw nsw i64 %i.al, 22
  %i.an = icmp ult i64 %i.z, %i.am
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.61) #7
  br label %bb.ab

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aq = load i16, ptr %i.ap, align 4
  %i.ar = zext i16 %i.aq to i64
  %i.as = add nuw nsw i64 %i.al, 4
  %i.at = icmp samesign ugt i64 %i.as, %i.ar
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.62) #7
  br label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.av = icmp ult i16 %i.aj, 7
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.63) #7
  br label %bb.ab

bb.q:                                             ; preds = %bb.o
  %i.ax = add nuw nsw i64 %i.al, 24
  %i.ay = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ax) #7 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ay, ptr %i.az, align 8
  %.not67 = icmp eq ptr %i.ay, null
  br i1 %.not67, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8
  store i16 %i.ak, ptr %i.ay, align 8
  %i.bc = shl nuw nsw i64 %spec.store.select, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.v
  %.06074 = phi i64 [ 0, %bb.r ], [ %i.bt, %bb.v ] ; 5 uses
  %i.bd = load ptr, ptr %i.ac, align 8
  %i.be = shl nuw nsw i64 %.06074, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 22
  %i.bh = load i16, ptr %i.bg, align 1            ; 2 uses
  %i.bi = zext i16 %i.bh to i32                   ; 2 uses
  %i.bj = icmp slt i16 %i.bh, 0
  %i.bk = or disjoint i32 %i.bi, -65536
  %spec.select = select i1 %i.bj, i32 %i.bk, i32 %i.bi ; 2 uses
  %i.bl = icmp samesign ult i64 %.06074, 14
  br i1 %i.bl, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @__const.MS_ADPCM_Init.presetcoeffs, i64 %.06074
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = sext i16 %i.bn to i32
  %.not68 = icmp eq i32 %spec.select, %i.bo
  br i1 %.not68, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.64) #7
  br label %bb.ab

bb.v:                                             ; preds = %bb.s, %bb.t
  %i.bq = trunc nsw i32 %spec.select to i16
  %i.br = load ptr, ptr %i.bb, align 8
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %.06074
  store i16 %i.bq, ptr %i.bs, align 2
  %i.bt = add nuw nsw i64 %.06074, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.bc
  br i1 %exitcond.not, label %bb.w, label %bb.s, !llvm.loop !32

bb.w:                                             ; preds = %bb.v
  %i.bu = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bw = trunc i64 %i.o to i32
  %i.bx = add i32 %i.bw, 2                        ; 2 uses
  store i32 %i.bx, ptr %i.ah, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.by = phi i32 [ %i.bx, %bb.x ], [ %i.bu, %bb.w ] ; 2 uses
  %i.bz = icmp eq i32 %i.by, 1
  %i.ca = add i32 %i.by, -2
  %i.cb = zext i32 %i.ca to i64
  %i.cc = icmp ult i64 %i.o, %i.cb
  %or.cond = select i1 %i.bz, i1 true, i1 %i.cc
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cd = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.65) #7
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ce = tail call fastcc zeroext i1 @MS_ADPCM_CalculateSampleFrames(ptr noundef %0, i64 noundef %1)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.u, %bb.aa, %bb.q, %bb.z, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.2 = phi i1 [ %i.q, %bb.b ], [ %i.s, %bb.d ], [ %i.u, %bb.f ], [ %i.x, %bb.h ], [ %i.ab, %bb.j ], [ %i.ao, %bb.l ], [ %i.au, %bb.n ], [ %i.aw, %bb.p ], [ %i.bp, %bb.u ], [ %i.cd, %bb.z ], [ false, %bb.q ], [ %i.ce, %bb.aa ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @IMA_ADPCM_Init(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i16, ptr %i.b, align 4
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i16, ptr %i.f, align 4              ; 2 uses
  %i.h = zext i16 %i.g to i64                     ; 2 uses
  %i.i = sub nsw i64 %i.h, %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.k = load i16, ptr %i.j, align 2              ; 3 uses
  %i.l = zext i16 %i.k to i64
  %i.m = mul nuw nsw i64 %i.l, %i.d
  %i.n = shl nsw i64 %i.i, 3
  %i.o = udiv i64 %i.n, %i.m                      ; 2 uses
  switch i16 %i.k, label %bb.c [
    i16 3, label %bb.b
    i16 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.67) #7
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.q = zext i16 %i.k to i32
  %i.r = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.68, i32 noundef %i.q) #7
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.s = icmp samesign ule i64 %i.e, %i.h
  %i.t = and i16 %i.g, 3
  %.not29 = icmp eq i16 %i.t, 0
  %or.cond = and i1 %i.s, %.not29
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.69) #7
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.v = load i16, ptr %i.a, align 4
  %i.w = icmp eq i16 %i.v, -2
  br i1 %i.w, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp ugt i64 %i.y, 19
  br i1 %i.z, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ab = load i16, ptr %i.aa, align 4
  %i.ac = icmp ugt i16 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 18
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = zext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ah, ptr %i.ai, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = trunc i64 %i.o to i32
  %i.an = add i32 %i.am, 1                        ; 2 uses
  store i32 %i.an, ptr %i.aj, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = phi i32 [ %i.an, %bb.k ], [ %i.ak, %bb.j ]
  %i.ap = add i32 %i.ao, -1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp ult i64 %i.o, %i.aq
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.70) #7
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.at = tail call fastcc zeroext i1 @IMA_ADPCM_CalculateSampleFrames(ptr noundef %0, i64 noundef %1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.e, %bb.c, %bb.b
  %.0 = phi i1 [ %i.p, %bb.b ], [ %i.r, %bb.c ], [ %i.u, %bb.e ], [ %i.as, %bb.m ], [ %i.at, %bb.n ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @MS_ADPCM_CalculateSampleFrames(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %i.d = mul nuw nsw i64 %i.c, 7                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i16, ptr %i.e, align 8
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = udiv i64 %1, %i.g                        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i64
  %i.l = mul nuw nsw i64 %i.k, %i.c
  %i.m = urem i64 %1, %i.g                        ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %.off = add i32 %i.o, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ult i64 %1, %i.d
  %i.q = icmp ne i64 %i.m, 0
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i32, ptr %i.r, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = mul nsw i64 %i.h, %i.t                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8
  br label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.w = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.66) #7
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.h, %i.z                  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  store i64 %i.aa, ptr %i.ab, align 8
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %thread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp ne i32 %i.o, 3
  %.not39 = icmp samesign ult i64 %i.m, %i.d
  %or.cond40 = select i1 %i.ac, i1 true, i1 %.not39
  br i1 %or.cond40, label %thread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = sub nuw nsw i64 %i.m, %i.d
  %.tr = trunc nuw nsw i64 %i.ad to i32
  %.lhs.trunc = shl nuw nsw i32 %.tr, 3
  %.rhs.trunc = trunc nuw i64 %i.l to i32
  %i.ae = udiv i32 %.lhs.trunc, %.rhs.trunc
  %narrow = add nuw nsw i32 %i.ae, 2
end_hunk_1
begin_hunk_2_@IMA_ADPCM_CalculateSampleFrames:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2                  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i16, ptr %i.e, align 4
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %i.h = udiv i64 %1, %i.g                        ; 2 uses
  %i.i = urem i64 %1, %i.g                        ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.off = add i32 %i.k, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, %i.d
  %i.m = icmp ne i64 %i.i, 0
  %or.cond = or i1 %i.l, %i.m
  br i1 %or.cond, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.o to i64
  %i.q = mul i64 %i.h, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8
  br label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.s = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.71) #7
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i32, ptr %i.t, align 4
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = mul i64 %i.h, %i.v                       ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  store i64 %i.w, ptr %i.x, align 8
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %thread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i32 %i.k, 3
  %i.z = add nsw i64 %i.d, -2
  %i.aa = icmp ugt i64 %i.i, %i.z
  %or.cond49 = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond49, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp samesign ugt i64 %i.i, %i.d
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = sub nuw nsw i64 %i.i, %i.d
  %.lhs.trunc = trunc nuw i64 %i.ac to i16        ; 2 uses
  %.rhs.trunc = trunc nuw i64 %i.d to i16         ; 2 uses
  %i.ad = urem i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext i16 %i.ad to i64                  ; 2 uses
  %i.ae = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext58 = zext nneg i16 %i.ae to i64
  %i.af = shl nuw nsw i64 %.zext58, 3
  %i.ag = add nsw i64 %i.d, -4
  %i.ah = icmp ult i64 %i.ag, %.zext
  %i.ai = shl nuw nsw i64 %.zext, 1
  %i.aj = and i64 %i.ai, 6
  %i.ak = select i1 %i.ah, i64 %i.aj, i64 0
  %i.al = or disjoint i64 %i.ak, %i.af
  %.0 = or disjoint i64 %i.al, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i64 [ %.0, %bb.g ], [ 1, %bb.f ]
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.1, i64 %i.v)
  %i.am = add i64 %spec.select, %i.w              ; 2 uses
  store i64 %i.am, ptr %i.x, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %.thread, %bb.h, %bb.d
  %i.an = phi i64 [ %i.w, %bb.d ], [ %i.q, %.thread ], [ %i.am, %bb.h ], [ %i.w, %bb.e ]
  %i.ao = phi ptr [ %i.x, %bb.d ], [ %i.r, %.thread ], [ %i.x, %bb.h ], [ %i.x, %bb.e ] ; 3 uses
  %.fr = freeze i64 %i.an                         ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.i, label %WaveAdjustToFactValue.exit

bb.i:                                             ; preds = %thread-pre-split
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = load i32, ptr %i.as, align 8
  %i.au = icmp eq i32 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = zext i32 %i.aw to i64                   ; 3 uses
  %i.ay = icmp slt i64 %.fr, %i.ax
  %or.cond.i = select i1 %i.au, i1 %i.ay, i1 false
  br i1 %or.cond.i, label %WaveAdjustToFactValue.exit.thread, label %._crit_edge.i

WaveAdjustToFactValue.exit.thread:                ; preds = %bb.i
  %i.az = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.55) #7 ; 0 uses
  store i64 -1, ptr %i.ao, align 8
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.i
  %i.ba = icmp sgt i64 %.fr, %i.ax
  br i1 %i.ba, label %WaveAdjustToFactValue.exit.thread53, label %WaveAdjustToFactValue.exit

WaveAdjustToFactValue.exit.thread53:              ; preds = %._crit_edge.i
  store i64 %i.ax, ptr %i.ao, align 8
  br label %bb.k

WaveAdjustToFactValue.exit:                       ; preds = %thread-pre-split, %._crit_edge.i
  store i64 %.fr, ptr %i.ao, align 8
  %i.bb = icmp slt i64 %.fr, 0
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %WaveAdjustToFactValue.exit.thread, %WaveAdjustToFactValue.exit
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %WaveAdjustToFactValue.exit, %WaveAdjustToFactValue.exit.thread53, %bb.c
  %.042 = phi i1 [ %i.s, %bb.c ], [ false, %bb.j ], [ true, %WaveAdjustToFactValue.exit ], [ true, %WaveAdjustToFactValue.exit.thread53 ]
  ret i1 %.042
}

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(1) }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.isvectorized", i32 1}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !3, !4, !5}
!12 = distinct !{!12, i1 false, !"LVerDomain"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !3, !4, !5}
!16 = distinct !{!16, !3, !4}
!17 = distinct !{!17, !3, !4}
!18 = !{!9}
!19 = !{!10}
!20 = !{!13}
!21 = !{!14}
!22 = distinct !{!22, !3}
!23 = distinct !{!23, !3}
!24 = distinct !{!24, !3}
!25 = distinct !{!25, !3}
!26 = distinct !{!26, !3, !4, !5}
!27 = distinct !{!27, !3, !5, !4}
!28 = distinct !{!28, !3}
!29 = distinct !{!29, !3}
!30 = distinct !{!30, !3}
!31 = distinct !{!31, !3}
!32 = distinct !{!32, !3}
end_hunk_2

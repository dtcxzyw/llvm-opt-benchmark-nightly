Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_wave?download=true
inline.NumInlined: 32
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@MS_ADPCM_Decode:bb.a
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
  %.0117 = phi i64 [ %i.y, %.lr.ph ], [ %i.ea, %.loopexit ]
  %.sroa.70.0116 = phi i64 [ 0, %.lr.ph ], [ %storemerge.i.ph, %.loopexit ] ; 3 uses
  %.sroa.41.0115 = phi i64 [ 0, %.lr.ph ], [ %i.dz, %.loopexit ] ; 2 uses
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
  %.167.us.i = phi i64 [ %i.dp, %._crit_edge.us.i ], [ %spec.select.i, %.preheader.lr.ph.i ] ; 2 uses
  %.04066.us.i = phi i64 [ %i.dn, %._crit_edge.us.i ], [ %.sroa.70.3103, %.preheader.lr.ph.i ]
  %.04265.us.i = phi i64 [ %.2.us.i, %._crit_edge.us.i ], [ %.sroa.55.0102, %.preheader.lr.ph.i ]
  %.04564.us.i = phi i16 [ %.247.us.i, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.preheader.us.i
  %indvars.iv.i35 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i36, %bb.t ] ; 3 uses
  %.14161.us.i = phi i64 [ %.04066.us.i, %.preheader.us.i ], [ %i.dn, %bb.t ] ; 5 uses
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
  %4 = lshr i16 %.247.us.i, 4
  %i.cn = trunc i16 %4 to i8
  %5 = and i8 %i.cn, 15                           ; 3 uses
  %i.co = load i16, ptr %i.ck, align 2
  %i.cp = zext i16 %i.co to i32                   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = sext i16 %i.cr to i32
  %i.ct = mul nsw i32 %i.cs, %i.cl
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = sext i16 %i.cv to i32
  %i.cx = mul nsw i32 %i.cw, %i.cm
  %i.cy = add nsw i32 %i.cx, %i.ct
  %i.cz = sdiv i32 %i.cy, 256
  %i.da = zext nneg i8 %5 to i32
  %6 = icmp samesign ugt i8 %5, 7
  %.neg.i.us.i = select i1 %6, i32 -16, i32 0
  %i.db = or disjoint i32 %.neg.i.us.i, %i.da
  %i.dc = mul nsw i32 %i.db, %i.cp
  %i.dd = add nsw i32 %i.cz, %i.dc
  %i.de = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 -32768)
  %.01922.i.us.i = tail call i32 @llvm.smin.i32(i32 %i.de, i32 32767)
  %.019.i.us.i = trunc nsw i32 %.01922.i.us.i to i16
  %i.df = zext nneg i8 %5 to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr @__const.MS_ADPCM_ProcessNibble.adaptive, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = zext i16 %i.dh to i32
  %i.dj = mul nuw i32 %i.di, %i.cp                ; 2 uses
  %i.dk = icmp ult i32 %i.dj, 4096
  %i.dl = lshr i32 %i.dj, 8
  %spec.store.select1.i.us.i = tail call i32 @llvm.umin.i32(i32 %i.dl, i32 65535)
  %i.dm = trunc nuw i32 %spec.store.select1.i.us.i to i16
  %.0.i.us.i = select i1 %i.dk, i16 16, i16 %i.dm
  store i16 %.0.i.us.i, ptr %i.ck, align 2
  %i.dn = add i64 %.14161.us.i, 1                 ; 3 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %.14161.us.i
  store i16 %.019.i.us.i, ptr %i.do, align 2
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, %i.o
  br i1 %exitcond.not.i37, label %._crit_edge.us.i, label %bb.p, !llvm.loop !23

._crit_edge.us.i:                                 ; preds = %bb.t
  %i.dp = add nsw i64 %.167.us.i, -1
  %i.dq = icmp slt i64 %.167.us.i, 2
  br i1 %i.dq, label %.loopexit, label %.preheader.us.i, !llvm.loop !24

bb.u:                                             ; preds = %bb.r
  %i.dr = sub i64 %.14161.us.i, %indvars.iv.i35   ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.dt = load i32, ptr %i.ds, align 4
  switch i32 %i.dt, label %bb.w [
    i32 1, label %bb.v
    i32 2, label %bb.v
    i32 3, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.af) #7
  %i.du = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.75) #7
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.dv = mul nuw nsw i64 %i.s, %i.o
  %i.dw = urem i64 %i.dr, %i.dv
  %i.dx = sub i64 %i.dr, %i.dw
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w
  %.sroa.70.1 = phi i64 [ %i.dx, %bb.w ], [ %i.dr, %bb.u ]
  %i.dy = shl i64 %.sroa.70.1, 1
  br label %.loopexit108

.loopexit:                                        ; preds = %._crit_edge.us.i, %.preheader.lr.ph.i, %bb.o
  %.sroa.22.3.ph = phi i64 [ %.sroa.22.1101, %bb.o ], [ %i.bv, %.preheader.lr.ph.i ], [ %i.bv, %._crit_edge.us.i ] ; 2 uses
  %storemerge.i.ph = phi i64 [ %.sroa.70.3103, %bb.o ], [ %.sroa.70.3103, %.preheader.lr.ph.i ], [ %i.dn, %._crit_edge.us.i ]
  %i.dz = add i64 %i.ao, %.sroa.41.0115           ; 2 uses
  %i.ea = sub i64 %i.y, %i.dz                     ; 2 uses
  %i.eb = icmp sgt i64 %.sroa.22.3.ph, 0
  %i.ec = icmp uge i64 %i.ea, %i.p
  %i.ed = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %i.ed, label %bb.i, label %.loopexit108, !llvm.loop !25

.loopexit108:                                     ; preds = %.loopexit, %.preheader, %bb.x
  %.092 = phi i64 [ %i.dy, %bb.x ], [ %i.ab, %.preheader ], [ %i.ab, %.loopexit ]
  store ptr %i.af, ptr %1, align 8
  %i.ee = trunc i64 %.092 to i32
  store i32 %i.ee, ptr %2, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.h, %bb.b, %.loopexit108, %bb.v, %bb.n, %bb.j, %bb.g, %SafeMult.exit, %bb.d
  %.027 = phi i1 [ true, %bb.d ], [ %i.aa, %SafeMult.exit ], [ %i.ad, %bb.g ], [ %i.as, %bb.j ], [ %i.du, %bb.v ], [ true, %.loopexit108 ], [ false, %bb.n ], [ false, %bb.b ], [ false, %bb.h ]
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
  %.0111 = phi i64 [ %i.w, %.lr.ph ], [ %i.fm, %bb.z ]
  %.sroa.68.0110 = phi i64 [ 0, %.lr.ph ], [ %.065.lcssa.i, %bb.z ] ; 7 uses
  %.sroa.40.0109 = phi i64 [ 0, %.lr.ph ], [ %i.fl, %bb.z ] ; 3 uses
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
end_hunk_0

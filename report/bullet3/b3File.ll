Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3File?download=true
inline.NumInlined: 245
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6bParse5bFile23resolvePointersMismatchEv:bb.a
  br i1 %.not.i.i.i, label %bb.c, label %_ZN6bParse5bFile14findLibPointerEPv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bb
  %.012.i.i.i = load i32, ptr %i.bc, align 4, !tbaa !85 ; 2 uses
  %.not1113.i.i.i = icmp eq i32 %.012.i.i.i, -1
  br i1 %.not1113.i.i.i, label %_ZN6bParse5bFile14findLibPointerEPv.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.014.i.i.i = phi i32 [ %.012.i.i.i, %.lr.ph.i.i.i ], [ %.0.i.i.i, %bb.e ]
  %i.be = sext i32 %.014.i.i.i to i64             ; 3 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !9
  %i.bh = icmp eq ptr %i.aj, %i.bg
  br i1 %i.bh, label %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.be
  %.0.i.i.i = load i32, ptr %i.bj, align 4, !tbaa !85 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %.0.i.i.i, -1
  br i1 %.not11.i.i.i, label %_ZN6bParse5bFile14findLibPointerEPv.exit.thread, label %bb.d, !llvm.loop !86

_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i: ; preds = %bb.d
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !50  ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZN6bParse5bFile14findLibPointerEPv.exit.thread, label %_ZN6bParse5bFile14findLibPointerEPv.exit

_ZN6bParse5bFile14findLibPointerEPv.exit:         ; preds = %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.be
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !87 ; 2 uses
  %.not45 = icmp eq ptr %i.bm, null
  br i1 %.not45, label %_ZN6bParse5bFile14findLibPointerEPv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6bParse5bFile14findLibPointerEPv.exit
  store ptr %i.bm, ptr %i.ai, align 8, !tbaa !169
  br label %_ZN6bParse5bFile14findLibPointerEPv.exit.thread

_ZN6bParse5bFile14findLibPointerEPv.exit.thread:  ; preds = %bb.e, %bb.c, %bb.b, %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i, %_ZN6bParse5bFile14findLibPointerEPv.exit, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !170

bb.g:                                             ; preds = %.lr.ph98, %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread
  %indvars.iv114 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next115, %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread ] ; 2 uses
  %i.bn = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv114
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !149 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !169 ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %.sroa.077.0.extract.trunc = trunc i64 %i.br to i32
  %.sroa.077.4.extract.shift = lshr i64 %i.br, 32
  %.sroa.077.4.extract.trunc = trunc nuw i64 %.sroa.077.4.extract.shift to i32
  %i.bs = add nsw i32 %.sroa.077.4.extract.trunc, %.sroa.077.0.extract.trunc ; 2 uses
  %i.bt = shl i32 %i.bs, 15
  %i.bu = xor i32 %i.bt, -1
  %i.bv = add nsw i32 %i.bs, %i.bu                ; 2 uses
  %i.bw = ashr i32 %i.bv, 10
  %i.bx = xor i32 %i.bw, %i.bv
  %i.by = mul i32 %i.bx, 9                        ; 2 uses
  %i.bz = ashr i32 %i.by, 6
  %i.ca = xor i32 %i.bz, %i.by                    ; 2 uses
  %i.cb = shl i32 %i.ca, 11
  %i.cc = xor i32 %i.cb, -1
  %i.cd = add nsw i32 %i.ca, %i.cc                ; 2 uses
  %i.ce = ashr i32 %i.cd, 16
  %i.cf = xor i32 %i.ce, %i.cd
  %i.cg = load i32, ptr %i.r, align 8, !tbaa !65
  %i.ch = add nsw i32 %i.cg, -1
  %i.ci = and i32 %i.cf, %i.ch                    ; 2 uses
  %i.cj = load i32, ptr %i.s, align 4, !tbaa !47
  %.not.i.i = icmp ult i32 %i.ci, %i.cj
  br i1 %.not.i.i, label %bb.h, label %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ck = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.cl = sext i32 %i.ci to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cl
  %.012.i.i = load i32, ptr %i.cm, align 4, !tbaa !85 ; 2 uses
  %.not1113.i.i = icmp eq i32 %.012.i.i, -1
  br i1 %.not1113.i.i, label %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.cn = load ptr, ptr %i.u, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.014.i.i = phi i32 [ %.012.i.i, %.lr.ph.i.i ], [ %.0.i.i, %bb.j ]
  %i.co = sext i32 %.014.i.i to i64               ; 3 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !9
  %i.cr = icmp eq ptr %i.bq, %i.cq
  br i1 %i.cr, label %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.co
  %.0.i.i = load i32, ptr %i.ct, align 4, !tbaa !85 ; 2 uses
  %.not11.i.i = icmp eq i32 %.0.i.i, -1
  br i1 %.not11.i.i, label %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread, label %bb.i, !llvm.loop !171

_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit: ; preds = %bb.i
  %i.cu = load ptr, ptr %i.w, align 8, !tbaa !63  ; 2 uses
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit
  %i.cv = getelementptr inbounds [24 x i8], ptr %i.cu, i64 %i.co
  %i.cw = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.cx = tail call noundef i32 @_ZN6bParse4bDNA14getPointerSizeEv(ptr noundef nonnull align 8 dereferenceable(420) %i.cw) ; 2 uses
  %i.cy = load ptr, ptr %i.y, align 8, !tbaa !74
  %i.cz = tail call noundef i32 @_ZN6bParse4bDNA14getPointerSizeEv(ptr noundef nonnull align 8 dereferenceable(420) %i.cy) ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !77
  %i.dc = load ptr, ptr %i.bp, align 8, !tbaa !169 ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64               ; 2 uses
  %.sroa.0.0.extract.trunc.i47 = trunc i64 %i.dd to i32
  %.sroa.0.4.extract.shift.i48 = lshr i64 %i.dd, 32
  %.sroa.0.4.extract.trunc.i49 = trunc nuw i64 %.sroa.0.4.extract.shift.i48 to i32
  %i.de = add nsw i32 %.sroa.0.4.extract.trunc.i49, %.sroa.0.0.extract.trunc.i47 ; 2 uses
  %i.df = shl i32 %i.de, 15
  %i.dg = xor i32 %i.df, -1
  %i.dh = add nsw i32 %i.de, %i.dg                ; 2 uses
  %i.di = ashr i32 %i.dh, 10
  %i.dj = xor i32 %i.di, %i.dh
  %i.dk = mul i32 %i.dj, 9                        ; 2 uses
  %i.dl = ashr i32 %i.dk, 6
  %i.dm = xor i32 %i.dl, %i.dk                    ; 2 uses
  %i.dn = shl i32 %i.dm, 11
  %i.do = xor i32 %i.dn, -1
  %i.dp = add nsw i32 %i.dm, %i.do                ; 2 uses
  %i.dq = ashr i32 %i.dp, 16
  %i.dr = xor i32 %i.dq, %i.dp
  %i.ds = load i32, ptr %i.z, align 8, !tbaa !52
  %i.dt = add nsw i32 %i.ds, -1
  %i.du = and i32 %i.dr, %i.dt                    ; 2 uses
  %i.dv = load i32, ptr %i.aa, align 4, !tbaa !47
  %.not.i.i.i50 = icmp ult i32 %i.du, %i.dv
  br i1 %.not.i.i.i50, label %bb.l, label %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.dw = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.dx = sext i32 %i.du to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dx
  %.012.i.i.i52 = load i32, ptr %i.dy, align 4, !tbaa !85 ; 2 uses
  %.not1113.i.i.i53 = icmp eq i32 %.012.i.i.i52, -1
  br i1 %.not1113.i.i.i53, label %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread, label %.lr.ph.i.i.i54

.lr.ph.i.i.i54:                                   ; preds = %bb.l
  %i.dz = load ptr, ptr %i.ac, align 8, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i.i54
  %.014.i.i.i55 = phi i32 [ %.012.i.i.i52, %.lr.ph.i.i.i54 ], [ %.0.i.i.i56, %bb.n ]
  %i.ea = sext i32 %.014.i.i.i55 to i64           ; 3 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !9
  %i.ed = icmp eq ptr %i.dc, %i.ec
  br i1 %i.ed, label %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i58, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ea
  %.0.i.i.i56 = load i32, ptr %i.ef, align 4, !tbaa !85 ; 2 uses
  %.not11.i.i.i57 = icmp eq i32 %.0.i.i.i56, -1
  br i1 %.not11.i.i.i57, label %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread, label %bb.m, !llvm.loop !86

_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i58: ; preds = %bb.m
  %i.eg = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %.not.i59 = icmp eq ptr %i.eg, null
  br i1 %.not.i59, label %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread, label %_ZN6bParse5bFile14findLibPointerEPv.exit60

_ZN6bParse5bFile14findLibPointerEPv.exit60:       ; preds = %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i58
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.ea
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !87 ; 2 uses
  %.not44 = icmp eq ptr %i.ei, null
  br i1 %.not44, label %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZN6bParse5bFile14findLibPointerEPv.exit60
  %i.ej = sdiv i32 %i.db, %i.cz                   ; 3 uses
  %i.ek = mul nsw i32 %i.ej, %i.cx
  %i.el = sext i32 %i.ek to i64                   ; 2 uses
  %i.em = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.el) #31 ; 4 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !19
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void %i.ep(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef nonnull %i.em)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.em, i8 0, i64 %i.el, i1 false)
  %i.eq = icmp sgt i32 %i.ej, 0
  br i1 %i.eq, label %.lr.ph96, label %._crit_edge

.lr.ph96:                                         ; preds = %bb.o
  %i.er = sext i32 %i.cz to i64
  %i.es = sext i32 %i.cx to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph96, %_ZN6bParse5bFile14findLibPointerEPv.exit75
  %indvars.iv109 = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next110, %_ZN6bParse5bFile14findLibPointerEPv.exit75 ] ; 2 uses
  %.03994 = phi ptr [ %i.ei, %.lr.ph96 ], [ %i.hb, %_ZN6bParse5bFile14findLibPointerEPv.exit75 ] ; 7 uses
  %.04093 = phi i32 [ %i.ej, %.lr.ph96 ], [ %1, %_ZN6bParse5bFile14findLibPointerEPv.exit75 ] ; 2 uses
  %1 = add nsw i32 %.04093, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store ptr null, ptr %.sroa.0, align 8
  %i.et = load ptr, ptr %i.y, align 8, !tbaa !74
  %i.eu = tail call noundef i32 @_ZN6bParse4bDNA14getPointerSizeEv(ptr noundef nonnull align 8 dereferenceable(420) %i.et) ; 5 uses
  %i.ev = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.ew = tail call noundef i32 @_ZN6bParse4bDNA14getPointerSizeEv(ptr noundef nonnull align 8 dereferenceable(420) %i.ev) ; 4 uses
  %i.ex = icmp eq i32 %i.eu, %i.ew
  br i1 %i.ex, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ey = sext i32 %i.eu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0, ptr nonnull readonly align 1 %.03994, i64 %i.ey, i1 false)
  br label %_ZN6bParse5bFile11safeSwapPtrEPcPKc.exit

bb.r:                                             ; preds = %bb.p
  %i.ez = icmp eq i32 %i.ew, 4
  %i.fa = icmp eq i32 %i.eu, 8
  %or.cond3.i = and i1 %i.fa, %i.ez
  br i1 %or.cond3.i, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.fb = load i32, ptr %.03994, align 8, !tbaa !9 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.03994, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !9
  %i.fe = icmp eq i32 %i.fb, %i.fd
  br i1 %i.fe, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.fb, ptr %.sroa.0, align 8, !tbaa !9
  br label %_ZN6bParse5bFile11safeSwapPtrEPcPKc.exit

bb.u:                                             ; preds = %bb.s
  %i.ff = load i64, ptr %.03994, align 8, !tbaa !162 ; 8 uses
  %.sroa.6.0.extract.shift.i = lshr i64 %i.ff, 8
  %.sroa.8.0.extract.shift.i = lshr i64 %i.ff, 16
  %.sroa.10.0.extract.shift.i = lshr i64 %i.ff, 24 ; 2 uses
  %.sroa.12.0.extract.shift.i = lshr i64 %i.ff, 32 ; 2 uses
  %.sroa.18.0.extract.shift.i = lshr i64 %i.ff, 56 ; 2 uses
  %i.fg = load i32, ptr %i.af, align 8, !tbaa !66
  %i.fh = and i32 %i.fg, 4
  %.not.i61 = icmp eq i32 %i.fh, 0
  br i1 %.not.i61, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.16.0.extract.shift.i = lshr i64 %i.ff, 48
  %.sroa.14.0.extract.shift.i = lshr i64 %i.ff, 40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.18.0.i = phi i64 [ 0, %bb.v ], [ %.sroa.18.0.extract.shift.i, %bb.u ]
  %.sroa.12.0.i = phi i64 [ %.sroa.10.0.extract.shift.i, %bb.v ], [ %.sroa.12.0.extract.shift.i, %bb.u ]
  %.sroa.10.0.in.i = phi i64 [ %.sroa.12.0.extract.shift.i, %bb.v ], [ %.sroa.10.0.extract.shift.i, %bb.u ]
  %.sroa.8.0.in.i = phi i64 [ %.sroa.14.0.extract.shift.i, %bb.v ], [ %.sroa.8.0.extract.shift.i, %bb.u ]
  %.sroa.6.0.in.i = phi i64 [ %.sroa.16.0.extract.shift.i, %bb.v ], [ %.sroa.6.0.extract.shift.i, %bb.u ]
  %.sroa.0.0.in.i = phi i64 [ %.sroa.18.0.extract.shift.i, %bb.v ], [ %i.ff, %bb.u ]
  %.sroa.18.0.insert.shift.i = shl nuw i64 %.sroa.18.0.i, 56
  %.sroa.12.0.insert.ext.i = shl i64 %.sroa.12.0.i, 32
  %.sroa.12.0.insert.shift.i = and i64 %.sroa.12.0.insert.ext.i, 1095216660480
  %.sroa.12.0.insert.insert.i = or disjoint i64 %.sroa.12.0.insert.shift.i, %.sroa.18.0.insert.shift.i
  %.sroa.10.0.insert.ext.i = shl nuw i64 %.sroa.10.0.in.i, 24
  %.sroa.10.0.insert.shift.i = and i64 %.sroa.10.0.insert.ext.i, 4278190080
  %.sroa.10.0.insert.insert.i = or disjoint i64 %.sroa.12.0.insert.insert.i, %.sroa.10.0.insert.shift.i
  %.sroa.8.0.insert.ext.i = shl nuw i64 %.sroa.8.0.in.i, 16
  %.sroa.8.0.insert.shift.i = and i64 %.sroa.8.0.insert.ext.i, 16711680
  %.sroa.6.0.insert.ext.i = shl nuw i64 %.sroa.6.0.in.i, 8
  %.sroa.6.0.insert.shift.i = and i64 %.sroa.6.0.insert.ext.i, 65280
  %.sroa.6.0.insert.mask.i = or disjoint i64 %.sroa.10.0.insert.insert.i, %.sroa.8.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i64 %.sroa.0.0.in.i, 248
  %.sroa.0.0.insert.mask.i = or disjoint i64 %.sroa.6.0.insert.mask.i, %.sroa.6.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.mask.i, %.sroa.0.0.insert.ext.i
  %i.fi = lshr exact i64 %.sroa.0.0.insert.insert.i, 3
  %i.fj = trunc i64 %i.fi to i32
  store i32 %i.fj, ptr %.sroa.0, align 8, !tbaa !85
  br label %_ZN6bParse5bFile11safeSwapPtrEPcPKc.exit

bb.x:                                             ; preds = %bb.r
  %i.fk = icmp eq i32 %i.ew, 8
  %i.fl = icmp eq i32 %i.eu, 4
  %or.cond5.i = and i1 %i.fl, %i.fk
  br i1 %or.cond5.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.fm = load i32, ptr %.03994, align 8, !tbaa !9 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.03994, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !9
  %i.fp = icmp eq i32 %i.fm, %i.fo
  br i1 %i.fp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.fm, ptr %.sroa.0, align 8, !tbaa !9
  store i32 0, ptr %.sroa.0.4..sroa_idx157, align 4, !tbaa !9
  br label %_ZN6bParse5bFile11safeSwapPtrEPcPKc.exit

bb.aa:                                            ; preds = %bb.y
  %i.fq = sext i32 %i.fm to i64
  %i.fr = inttoptr i64 %i.fq to ptr
  store ptr %i.fr, ptr %.sroa.0, align 8, !tbaa !162
  br label %_ZN6bParse5bFile11safeSwapPtrEPcPKc.exit

bb.ab:                                            ; preds = %bb.x
  %i.fs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.eu, i32 noundef %i.ew) ; 0 uses
  br label %_ZN6bParse5bFile11safeSwapPtrEPcPKc.exit

_ZN6bParse5bFile11safeSwapPtrEPcPKc.exit:         ; preds = %bb.q, %bb.t, %bb.w, %bb.z, %bb.aa, %bb.ab
  %i.ft = mul nsw i64 %indvars.iv109, %i.es
  %i.fu = getelementptr inbounds i8, ptr %i.em, i64 %i.ft
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load ptr, ptr %.sroa.0, align 8, !tbaa !9 ; 2 uses
  %i.fv = ptrtoint ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. to i64 ; 2 uses
  %.sroa.0.0.extract.trunc.i62 = trunc i64 %i.fv to i32
  %.sroa.0.4.extract.shift.i63 = lshr i64 %i.fv, 32
  %.sroa.0.4.extract.trunc.i64 = trunc nuw i64 %.sroa.0.4.extract.shift.i63 to i32
  %i.fw = add nsw i32 %.sroa.0.4.extract.trunc.i64, %.sroa.0.0.extract.trunc.i62 ; 2 uses
  %i.fx = shl i32 %i.fw, 15
  %i.fy = xor i32 %i.fx, -1
  %i.fz = add nsw i32 %i.fw, %i.fy                ; 2 uses
  %i.ga = ashr i32 %i.fz, 10
  %i.gb = xor i32 %i.ga, %i.fz
  %i.gc = mul i32 %i.gb, 9                        ; 2 uses
  %i.gd = ashr i32 %i.gc, 6
  %i.ge = xor i32 %i.gd, %i.gc                    ; 2 uses
  %i.gf = shl i32 %i.ge, 11
  %i.gg = xor i32 %i.gf, -1
  %i.gh = add nsw i32 %i.ge, %i.gg                ; 2 uses
  %i.gi = ashr i32 %i.gh, 16
  %i.gj = xor i32 %i.gi, %i.gh
  %i.gk = load i32, ptr %i.z, align 8, !tbaa !52
  %i.gl = add nsw i32 %i.gk, -1
  %i.gm = and i32 %i.gj, %i.gl                    ; 2 uses
  %i.gn = load i32, ptr %i.aa, align 4, !tbaa !47
  %.not.i.i.i65 = icmp ult i32 %i.gm, %i.gn
  br i1 %.not.i.i.i65, label %bb.ac, label %_ZN6bParse5bFile14findLibPointerEPv.exit75

bb.ac:                                            ; preds = %_ZN6bParse5bFile11safeSwapPtrEPcPKc.exit
  %i.go = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.gp = sext i32 %i.gm to i64
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.go, i64 %i.gp
  %.012.i.i.i67 = load i32, ptr %i.gq, align 4, !tbaa !85 ; 2 uses
  %.not1113.i.i.i68 = icmp eq i32 %.012.i.i.i67, -1
  br i1 %.not1113.i.i.i68, label %_ZN6bParse5bFile14findLibPointerEPv.exit75, label %.lr.ph.i.i.i69

.lr.ph.i.i.i69:                                   ; preds = %bb.ac
  %i.gr = load ptr, ptr %i.ac, align 8, !tbaa !54
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.lr.ph.i.i.i69
  %.014.i.i.i70 = phi i32 [ %.012.i.i.i67, %.lr.ph.i.i.i69 ], [ %.0.i.i.i71, %bb.ae ]
  %i.gs = sext i32 %.014.i.i.i70 to i64           ; 3 uses
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !9
  %i.gv = icmp eq ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., %i.gu
  br i1 %i.gv, label %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i73, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gw = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.gs
  %.0.i.i.i71 = load i32, ptr %i.gx, align 4, !tbaa !85 ; 2 uses
  %.not11.i.i.i72 = icmp eq i32 %.0.i.i.i71, -1
  br i1 %.not11.i.i.i72, label %_ZN6bParse5bFile14findLibPointerEPv.exit75, label %bb.ad, !llvm.loop !86

_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i73: ; preds = %bb.ad
  %i.gy = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %.not.i74 = icmp eq ptr %i.gy, null
  br i1 %.not.i74, label %_ZN6bParse5bFile14findLibPointerEPv.exit75, label %bb.af

bb.af:                                            ; preds = %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i73
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.gs
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !87
  br label %_ZN6bParse5bFile14findLibPointerEPv.exit75

_ZN6bParse5bFile14findLibPointerEPv.exit75:       ; preds = %bb.ae, %_ZN6bParse5bFile11safeSwapPtrEPcPKc.exit, %bb.ac, %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i73, %bb.af
  %.0.i66 = phi ptr [ %i.ha, %bb.af ], [ null, %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i73 ], [ null, %_ZN6bParse5bFile11safeSwapPtrEPcPKc.exit ], [ null, %bb.ac ], [ null, %bb.ae ]
  store ptr %.0.i66, ptr %i.fu, align 8, !tbaa !169
  %i.hb = getelementptr inbounds i8, ptr %.03994, i64 %i.er
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %2 = icmp sgt i32 %.04093, 1
  br i1 %2, label %bb.p, label %._crit_edge, !llvm.loop !172

._crit_edge:                                      ; preds = %_ZN6bParse5bFile14findLibPointerEPv.exit75, %bb.o
  store ptr %i.em, ptr %i.bp, align 8, !tbaa !169
  br label %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread

_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread: ; preds = %bb.j, %bb.n, %bb.l, %bb.k, %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i58, %bb.h, %bb.g, %_ZN6bParse5bFile14findLibPointerEPv.exit60, %._crit_edge, %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.hc = load i32, ptr %i.n, align 4, !tbaa !60
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp slt i64 %indvars.iv.next115, %i.hd
  br i1 %i.he, label %bb.g, label %._crit_edge99, !llvm.loop !173

._crit_edge99:                                    ; preds = %_ZN9b3HashMapI9b3HashPtrN6bParse9bChunkIndEE4findERKS0_.exit.thread, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN6bParse5bFile14findLibPointerEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(540) %0, ptr noundef %1) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.a to i32
  %.sroa.0.4.extract.shift = lshr i64 %i.a, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.b = add nsw i32 %.sroa.0.4.extract.trunc, %.sroa.0.0.extract.trunc ; 2 uses
  %i.c = shl i32 %i.b, 15
  %i.d = xor i32 %i.c, -1
  %i.e = add nsw i32 %i.b, %i.d                   ; 2 uses
  %i.f = ashr i32 %i.e, 10
  %i.g = xor i32 %i.f, %i.e
  %i.h = mul i32 %i.g, 9                          ; 2 uses
  %i.i = ashr i32 %i.h, 6
  %i.j = xor i32 %i.i, %i.h                       ; 2 uses
  %i.k = shl i32 %i.j, 11
  %i.l = xor i32 %i.k, -1
  %i.m = add nsw i32 %i.j, %i.l                   ; 2 uses
  %i.n = ashr i32 %i.m, 16
  %i.o = xor i32 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52
  %i.r = add nsw i32 %i.q, -1
  %i.s = and i32 %i.r, %i.o                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !47
  %.not.i.i = icmp ult i32 %i.s, %i.u
  br i1 %.not.i.i, label %bb.b, label %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.x = sext i32 %i.s to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x
  %.012.i.i = load i32, ptr %i.y, align 4, !tbaa !85 ; 2 uses
  %.not1113.i.i = icmp eq i32 %.012.i.i, -1
  br i1 %.not1113.i.i, label %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.014.i.i = phi i32 [ %.012.i.i, %.lr.ph.i.i ], [ %.0.i.i, %bb.d ]
  %i.ad = sext i32 %.014.i.i to i64               ; 3 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9
  %i.ag = icmp eq ptr %1, %i.af
  br i1 %i.ag, label %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad
  %.0.i.i = load i32, ptr %i.ah, align 4, !tbaa !85 ; 2 uses
  %.not11.i.i = icmp eq i32 %.0.i.i, -1
  br i1 %.not11.i.i, label %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.thread, label %bb.c, !llvm.loop !86

_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit: ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ad
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !87
  br label %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.thread

_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.thread: ; preds = %bb.d, %bb.b, %bb.a, %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit, %bb.e
  %.0 = phi ptr [ %i.al, %bb.e ], [ null, %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6bParse5bFile20resolvePointersChunkERKNS_9bChunkIndEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(540) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not, ptr %i.d, ptr %i.b      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !90
  %i.h = tail call noundef ptr @_ZN6bParse4bDNA9getStructEi(ptr noundef nonnull align 8 dereferenceable(420) %i.e, i32 noundef %i.g)
  %i.i = load i16, ptr %i.h, align 2, !tbaa !91
  %i.j = sext i16 %i.i to i32
  %i.k = tail call noundef signext i16 @_ZN6bParse4bDNA9getLengthEi(ptr noundef nonnull align 8 dereferenceable(420) %i.e, i32 noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75   ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.n to i32
  %.sroa.0.4.extract.shift.i = lshr i64 %i.n, 32
  %.sroa.0.4.extract.trunc.i = trunc nuw i64 %.sroa.0.4.extract.shift.i to i32
  %i.o = add nsw i32 %.sroa.0.4.extract.trunc.i, %.sroa.0.0.extract.trunc.i ; 2 uses
  %i.p = shl i32 %i.o, 15
  %i.q = xor i32 %i.p, -1
  %i.r = add nsw i32 %i.o, %i.q                   ; 2 uses
  %i.s = ashr i32 %i.r, 10
  %i.t = xor i32 %i.s, %i.r
  %i.u = mul i32 %i.t, 9                          ; 2 uses
  %i.v = ashr i32 %i.u, 6
  %i.w = xor i32 %i.v, %i.u                       ; 2 uses
  %i.x = shl i32 %i.w, 11
  %i.y = xor i32 %i.x, -1
  %i.z = add nsw i32 %i.w, %i.y                   ; 2 uses
  %i.aa = ashr i32 %i.z, 16
  %i.ab = xor i32 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.ae = add nsw i32 %i.ad, -1
  %i.af = and i32 %i.ab, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47
  %.not.i.i.i = icmp ult i32 %i.af, %i.ah
  br i1 %.not.i.i.i, label %bb.b, label %_ZN6bParse5bFile14findLibPointerEPv.exit

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46
  %i.ak = sext i32 %i.af to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ak
  %.012.i.i.i = load i32, ptr %i.al, align 4, !tbaa !85 ; 2 uses
  %.not1113.i.i.i = icmp eq i32 %.012.i.i.i, -1
  br i1 %.not1113.i.i.i, label %_ZN6bParse5bFile14findLibPointerEPv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.014.i.i.i = phi i32 [ %.012.i.i.i, %.lr.ph.i.i.i ], [ %.0.i.i.i, %bb.d ]
  %i.ap = sext i32 %.014.i.i.i to i64             ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !9
  %i.as = icmp eq ptr %i.m, %i.ar
  br i1 %i.as, label %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !46
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ap
  %.0.i.i.i = load i32, ptr %i.au, align 4, !tbaa !85 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %.0.i.i.i, -1
  br i1 %.not11.i.i.i, label %_ZN6bParse5bFile14findLibPointerEPv.exit, label %bb.c, !llvm.loop !86

_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i: ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZN6bParse5bFile14findLibPointerEPv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ap
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87
  br label %_ZN6bParse5bFile14findLibPointerEPv.exit

_ZN6bParse5bFile14findLibPointerEPv.exit:         ; preds = %bb.d, %bb.a, %bb.b, %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.ay, %bb.e ], [ null, %_ZN9b3HashMapI9b3HashPtrPN6bParse13bStructHandleEE4findERKS0_.exit.i ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !95
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6bParse5bFile14findLibPointerEPv.exit
  %i.bc = sext i16 %i.k to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_ZN6bParse5bFile14findLibPointerEPv.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.017 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %bb.f ]
  %.01316 = phi ptr [ %.0.i, %.lr.ph ], [ %i.bf, %bb.f ] ; 2 uses
  %i.bd = load i32, ptr %i.f, align 8, !tbaa !90
  %i.be = tail call noundef i32 @_ZN6bParse5bFile30resolvePointersStructRecursiveEPciii(ptr noundef nonnull align 8 dereferenceable(540) %0, ptr noundef %.01316, i32 noundef %i.bd, i32 noundef %2, i32 noundef 1) ; 0 uses
  %i.bf = getelementptr inbounds i8, ptr %.01316, i64 %i.bc
  %i.bg = add nuw nsw i32 %.017, 1                ; 2 uses
  %i.bh = load i32, ptr %i.az, align 4, !tbaa !95
  %i.bi = icmp slt i32 %i.bg, %i.bh
end_hunk_0

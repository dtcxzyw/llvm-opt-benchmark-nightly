Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv2022?download=true
inline.NumInlined: 45
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL46UConverter_toUnicode_ISO_2022_KR_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.if209, %pred.store.continue208
  %i.cm = extractelement <4 x i1> %i.bw, i64 1
  br i1 %i.cm, label %pred.store.if211, label %pred.store.continue212

pred.store.if211:                                 ; preds = %pred.store.continue210
  %i.cn = extractelement <4 x i32> %wide.load202, i64 1
  %i.co = add nsw i32 %i.cn, %i.ay
  store i32 %i.co, ptr %next.gep199, align 4, !tbaa !47
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %pred.store.if211, %pred.store.continue210
  %i.cp = extractelement <4 x i1> %i.bw, i64 2
  br i1 %i.cp, label %pred.store.if213, label %pred.store.continue214

pred.store.if213:                                 ; preds = %pred.store.continue212
  %i.cq = extractelement <4 x i32> %wide.load202, i64 2
  %i.cr = add nsw i32 %i.cq, %i.ay
  store i32 %i.cr, ptr %next.gep200, align 4, !tbaa !47
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %pred.store.continue212
  %i.cs = extractelement <4 x i1> %i.bw, i64 3
  br i1 %i.cs, label %pred.store.if215, label %pred.store.continue216

pred.store.if215:                                 ; preds = %pred.store.continue214
  %i.ct = extractelement <4 x i32> %wide.load202, i64 3
  %i.cu = add nsw i32 %i.ct, %i.ay
  store i32 %i.cu, ptr %next.gep201, align 4, !tbaa !47
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.if215, %pred.store.continue214
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %pred.store.continue216
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader218

.lr.ph.i.preheader218:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.061.i.ph = phi ptr [ %i.au, %.lr.ph.i.preheader ], [ %i.bj, %middle.block ]
  %.04860.i.ph = phi ptr [ %i.as, %.lr.ph.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader218, %bb.l
  %.061.i = phi ptr [ %i.da, %bb.l ], [ %.061.i.ph, %.lr.ph.i.preheader218 ]
  %.04860.i = phi ptr [ %i.cz, %bb.l ], [ %.04860.i.ph, %.lr.ph.i.preheader218 ] ; 3 uses
  %i.cw = load i32, ptr %.04860.i, align 4, !tbaa !47 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, -1
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.cy = add nsw i32 %i.cw, %i.ay
  store i32 %i.cy, ptr %.04860.i, align 4, !tbaa !47
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.04860.i, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %.061.i, i64 2 ; 2 uses
  %i.db = icmp ult ptr %i.da, %i.ba
  br i1 %i.db, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !108

.loopexit.i:                                      ; preds = %bb.l, %middle.block, %bb.j, %bb.i, %bb.h
  %i.dc = load ptr, ptr %i.ac, align 8, !tbaa !49
  store ptr %i.dc, ptr %i.c, align 8, !tbaa !49
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !51
  store ptr %i.de, ptr %i.e, align 8, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !58
  store ptr %i.dg, ptr %i.ar, align 8, !tbaa !58
  %i.dh = load ptr, ptr %i.u, align 8, !tbaa !53  ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !31  ; 3 uses
  %i.dk = icmp sgt i8 %i.dj, 0
  br i1 %i.dk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit.i
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 65
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 65
  %i.do = zext nneg i8 %i.dj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %i.dn, i64 %i.do, i1 false)
  %.pre64.i = load i8, ptr %i.di, align 8, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit.i
  %i.dp = phi i8 [ %.pre64.i, %bb.m ], [ %i.dj, %.loopexit.i ]
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !53  ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  store i8 %i.dp, ptr %i.dr, align 8, !tbaa !31
  %i.ds = load i32, ptr %1, align 4, !tbaa !23    ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 15
  br i1 %i.dt, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 93 ; 3 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !60  ; 3 uses
  %i.dw = icmp sgt i8 %i.dv, 0
  br i1 %i.dw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 144
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 144
  %i.dz = zext nneg i8 %i.dv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr nonnull align 8 %i.dy, i64 %i.dz, i1 false)
  %.pre65.i = load i8, ptr %i.du, align 1, !tbaa !60
  %.pre66.i = load ptr, ptr %i.j, align 8, !tbaa !53
  %.pre67.pre.i = load i32, ptr %1, align 4, !tbaa !23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre67.i = phi i32 [ %.pre67.pre.i, %bb.p ], [ 15, %bb.o ]
  %i.ea = phi ptr [ %.pre66.i, %bb.p ], [ %i.dq, %bb.o ]
  %i.eb = phi i8 [ %.pre65.i, %bb.p ], [ %i.dv, %bb.o ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 93
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !60
  store i8 0, ptr %i.du, align 1, !tbaa !60
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %_ZL19getEndOfBuffer_2022PPKcS0_a.exit.i
  %i.ed = phi i32 [ %i.ds, %bb.n ], [ %.pre67.i, %bb.q ], [ %i.x, %_ZL19getEndOfBuffer_2022PPKcS0_a.exit.i ]
  %i.ee = icmp slt i32 %i.ed, 1
  br i1 %i.ee, label %bb.s, label %_ZL50UConverter_toUnicode_ISO_2022_KR_OFFSETS_LOGIC_IBMP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.s:                                             ; preds = %bb.r
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.eg = load ptr, ptr %i.g, align 8, !tbaa !52  ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZL50UConverter_toUnicode_ISO_2022_KR_OFFSETS_LOGIC_IBMP23UConverterToUnicodeArgsP10UErrorCode.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre68.i = load ptr, ptr %i.j, align 8, !tbaa !53
  br label %._crit_edge69.i

._crit_edge69.i:                                  ; preds = %bb.b, %._crit_edge.i
  %i.ei = phi ptr [ %i.eg, %._crit_edge.i ], [ %i.h, %bb.b ]
  %i.ej = phi ptr [ %.pre68.i, %._crit_edge.i ], [ %i.k, %bb.b ]
  call fastcc void @_ZL16changeState_2022P10UConverterPPKcS2_11Variant2022P10UErrorCode(ptr noundef %i.ej, ptr noundef nonnull %i.c, ptr noundef %i.ei, i32 noundef 2, ptr noundef %1)
  br label %bb.c, !llvm.loop !109

_ZL50UConverter_toUnicode_ISO_2022_KR_OFFSETS_LOGIC_IBMP23UConverterToUnicodeArgsP10UErrorCode.exit: ; preds = %bb.c, %bb.d, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.aq

bb.t:                                             ; preds = %bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !26
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !25 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.k, i64 63
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !68  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !41
  %.not = icmp eq i32 %i.er, 0
  br i1 %.not, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.et = load i8, ptr %i.es, align 8, !tbaa !31
  %i.eu = icmp eq i8 %i.et, 1
  %i.ev = icmp ult ptr %i.d, %i.h
  %or.cond97 = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %or.cond97, label %bb.v, label %.preheader

bb.v:                                             ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !54
  %i.ey = icmp ult ptr %i.f, %i.ex
  br i1 %i.ey, label %bb.w, label %.preheader

bb.w:                                             ; preds = %bb.v
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 65
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !21
  %i.fb = zext i8 %i.fa to i16
  store i8 0, ptr %i.es, align 8, !tbaa !31
  br label %bb.ab

.preheader:                                       ; preds = %bb.v, %bb.u, %bb.an, %bb.y
  %.promoted = phi ptr [ %.promoted.pre, %bb.y ], [ %i.he, %bb.an ], [ %i.d, %bb.u ], [ %i.d, %bb.v ] ; 6 uses
  %.0.ph = phi ptr [ %.1, %bb.y ], [ %i.hw, %bb.an ], [ %i.f, %bb.u ], [ %i.f, %bb.v ] ; 10 uses
  %.promoted145 = ptrtoaddr ptr %.promoted to i64
  %i.fc = icmp ult ptr %.promoted, %i.h
  br i1 %i.fc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !54
  %i.ff = icmp ult ptr %.0.ph, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 4 uses
  br i1 %i.ff, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.fi = sub i64 %i.i, %.promoted145
  %scevgep = getelementptr i8, ptr %.promoted, i64 %i.fi
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.backedge
  %i.fj = phi ptr [ %i.fk, %.backedge ], [ %.promoted, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1 ; 9 uses
  %i.fl = load i8, ptr %i.fj, align 1, !tbaa !21  ; 4 uses
  switch i8 %i.fl, label %.split.us [
    i8 15, label %bb.x
    i8 14, label %3
    i8 27, label %.split125.us
  ]

bb.x:                                             ; preds = %.lr.ph.split.us
  store i8 0, ptr %i.fg, align 8, !tbaa !74
  %i.fm = load i8, ptr %i.fh, align 8, !tbaa !42
  %.not96.us = icmp eq i8 %i.fm, 0
  br i1 %.not96.us, label %.backedge, label %.split129.us

.split129.us:                                     ; preds = %bb.x
  store i8 0, ptr %i.fh, align 8, !tbaa !42
  store i32 18, ptr %1, align 4, !tbaa !23
  %i.fn = load ptr, ptr %i.j, align 8, !tbaa !53  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 284
  store i32 2, ptr %i.fo, align 4, !tbaa !56
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 65
  store i8 15, ptr %i.fp, align 1, !tbaa !21
  %i.fq = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  store i8 1, ptr %i.fr, align 8, !tbaa !31
  store ptr %.0.ph, ptr %i.e, align 8, !tbaa !51
  store ptr %i.fk, ptr %i.c, align 8, !tbaa !49
  br label %bb.aq

3:                                                ; preds = %.lr.ph.split.us
  store i8 1, ptr %i.fg, align 8, !tbaa !74
  store i8 1, ptr %i.fh, align 8, !tbaa !42
  br label %.backedge

.backedge:                                        ; preds = %3, %bb.x
  %exitcond.not = icmp eq ptr %i.fk, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !110

.split125.us:                                     ; preds = %.lr.ph.split.us
  store ptr %i.fj, ptr %i.b, align 8, !tbaa !50
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !53
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %.split125.us
  %i.fs = phi ptr [ %i.k, %bb.t ], [ %.pre, %.split125.us ]
  %.1 = phi ptr [ %i.f, %bb.t ], [ %.0.ph, %.split125.us ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  store i8 0, ptr %i.ft, align 8, !tbaa !42
  call fastcc void @_ZL16changeState_2022P10UConverterPPKcS2_11Variant2022P10UErrorCode(ptr noundef %i.fs, ptr noundef nonnull %i.b, ptr noundef %i.h, i32 noundef 2, ptr noundef %1)
  %i.fu = load i32, ptr %1, align 4, !tbaa !23
  %i.fv = icmp slt i32 %i.fu, 1
  %.promoted.pre = load ptr, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  br i1 %i.fv, label %.preheader, label %bb.z, !llvm.loop !110

bb.z:                                             ; preds = %bb.y
  store ptr %.1, ptr %i.e, align 8, !tbaa !51
  store ptr %.promoted.pre, ptr %i.c, align 8, !tbaa !49
  br label %bb.aq

.split.us:                                        ; preds = %.lr.ph.split.us
  store ptr %i.fk, ptr %i.b, align 8
  %i.fw = zext i8 %i.fl to i16                    ; 3 uses
  store i8 0, ptr %i.fh, align 8, !tbaa !42
  %i.fx = load i8, ptr %i.fg, align 8, !tbaa !74
  %i.fy = icmp eq i8 %i.fx, 1
  br i1 %i.fy, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %.split.us
  %i.fz = icmp ult ptr %i.fk, %i.h
  br i1 %i.fz, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %i.ga = phi ptr [ %i.fk, %bb.aa ], [ %i.d, %bb.w ] ; 5 uses
  %.085 = phi i16 [ %i.fw, %bb.aa ], [ %i.fb, %bb.w ] ; 5 uses
  %.2 = phi ptr [ %.0.ph, %bb.aa ], [ %i.f, %bb.w ] ; 4 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !21  ; 4 uses
  %i.gc = zext nneg i16 %.085 to i32              ; 2 uses
  %narrow = add nuw nsw i16 %.085, 223
  %i.gd = and i16 %narrow, 254
  %i.ge = icmp samesign ult i16 %i.gd, 94
  %i.gf = zext i8 %i.gb to i32                    ; 3 uses
  %i.gg = add i8 %i.gb, -33
  %i.gh = icmp ult i8 %i.gg, 94                   ; 2 uses
  %or.cond = select i1 %i.ge, i1 %i.gh, i1 false
  br i1 %or.cond, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 2 uses
  store ptr %i.gi, ptr %i.b, align 8, !tbaa !50
  %i.gj = trunc nuw i16 %.085 to i8
  %i.gk = xor i8 %i.gj, -128
  store i8 %i.gk, ptr %i.a, align 1, !tbaa !21
  %i.gl = or disjoint i8 %i.gb, -128
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !21
  %i.gn = call i32 @ucnv_MBCSSimpleGetNextUChar_78(ptr noundef %i.en, ptr noundef nonnull %i.a, i32 noundef 2, i8 noundef signext %i.ep)
  %i.go = shl nuw nsw i32 %i.gc, 8
  %i.gp = or disjoint i32 %i.go, %i.gf
  %i.gq = trunc nuw i32 %i.gp to i16
  br label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.gh, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gr = icmp ult i8 %i.gb, 32
  br i1 %i.gr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gs = shl nuw i32 1, %i.gf
  %i.gt = and i32 %i.gs, 134266880
  %.not94 = icmp eq i32 %i.gt, 0
  br i1 %.not94, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 2 uses
  store ptr %i.gu, ptr %i.b, align 8, !tbaa !50
  %i.gv = shl nuw nsw i32 %i.gc, 8
  %i.gw = or disjoint i32 %i.gv, %i.gf
  %i.gx = trunc nuw i32 %i.gw to i16
  br label %bb.ak

bb.ah:                                            ; preds = %bb.aa
  %i.gy = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 65
  store i8 %i.fl, ptr %i.gz, align 1, !tbaa !21
  %i.ha = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  store i8 1, ptr %i.hb, align 8, !tbaa !31
  br label %.loopexit

bb.ai:                                            ; preds = %.split.us
  %i.hc = icmp sgt i8 %i.fl, -1
  br i1 %i.hc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hd = call i32 @ucnv_MBCSSimpleGetNextUChar_78(ptr noundef %i.en, ptr noundef nonnull %i.fj, i32 noundef 1, i8 noundef signext %i.ep)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ad, %bb.af, %bb.ag, %bb.ac
  %i.he = phi ptr [ %i.gi, %bb.ac ], [ %i.ga, %bb.ad ], [ %i.ga, %bb.af ], [ %i.gu, %bb.ag ], [ %i.fk, %bb.aj ], [ %i.fk, %bb.ai ] ; 2 uses
  %.186 = phi i16 [ %i.gq, %bb.ac ], [ %.085, %bb.ad ], [ %.085, %bb.af ], [ %i.gx, %bb.ag ], [ %i.fw, %bb.aj ], [ %i.fw, %bb.ai ] ; 5 uses
  %.084 = phi i32 [ %i.gn, %bb.ac ], [ 65535, %bb.ad ], [ 65535, %bb.af ], [ 65535, %bb.ag ], [ %i.hd, %bb.aj ], [ 65535, %bb.ai ] ; 3 uses
  %.3 = phi ptr [ %.2, %bb.ac ], [ %.2, %bb.ad ], [ %.2, %bb.af ], [ %.2, %bb.ag ], [ %.0.ph, %bb.aj ], [ %.0.ph, %bb.ai ] ; 4 uses
  %i.hf = icmp slt i32 %.084, 65534
  br i1 %i.hf, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !58 ; 2 uses
  %.not95 = icmp eq ptr %i.hh, null
  br i1 %.not95, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hi = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.hj = ptrtoint ptr %i.he to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = icmp ult i16 %.186, 256
  %.neg = select i1 %i.hl, i64 4294967295, i64 4294967294
  %i.hm = add i64 %.neg, %i.hj
  %i.hn = sub i64 %i.hm, %i.hk
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.hq = ptrtoint ptr %.3 to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = ashr exact i64 %i.hs, 1
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.ht
  store i32 %i.ho, ptr %i.hu, align 4, !tbaa !47
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hv = trunc i32 %.084 to i16
  %i.hw = getelementptr inbounds nuw i8, ptr %.3, i64 2
  store i16 %i.hv, ptr %.3, align 2, !tbaa !59
  br label %.preheader, !llvm.loop !110

bb.ao:                                            ; preds = %bb.ak
  %i.hx = load ptr, ptr %i.j, align 8, !tbaa !53  ; 3 uses
  %i.hy = icmp ugt i16 %.186, 255
  br i1 %i.hy, label %bb.ap, label %_ZL17toUnicodeCallbackP10UConverterjjP10UErrorCode.exit

bb.ap:                                            ; preds = %bb.ao
  %i.hz = lshr i16 %.186, 8
  %i.ia = trunc i16 %.186 to i8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 66
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !21
  br label %_ZL17toUnicodeCallbackP10UConverterjjP10UErrorCode.exit

_ZL17toUnicodeCallbackP10UConverterjjP10UErrorCode.exit: ; preds = %bb.ao, %bb.ap
  %.sink11.in.i = phi i16 [ %i.hz, %bb.ap ], [ %.186, %bb.ao ]
  %.sink.i = phi i8 [ 2, %bb.ap ], [ 1, %bb.ao ]
  %.sink11.i = trunc nuw i16 %.sink11.in.i to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 65
  store i8 %.sink11.i, ptr %i.ic, align 1, !tbaa !21
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  store i8 %.sink.i, ptr %i.id, align 8, !tbaa !31
  %i.ie = icmp eq i32 %.084, 65534
  %..i = select i1 %i.ie, i32 10, i32 12
  store i32 %..i, ptr %1, align 4, !tbaa !23
  %.pre147 = load ptr, ptr %i.b, align 8, !tbaa !50
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  store i32 15, ptr %1, align 4, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %.preheader, %.lr.ph.split, %_ZL17toUnicodeCallbackP10UConverterjjP10UErrorCode.exit, %bb.ah
  %i.if = phi ptr [ %.pre147, %_ZL17toUnicodeCallbackP10UConverterjjP10UErrorCode.exit ], [ %i.fk, %bb.ah ], [ %.promoted, %.lr.ph.split ], [ %.promoted, %.preheader ], [ %scevgep, %.backedge ]
  %.4 = phi ptr [ %.3, %_ZL17toUnicodeCallbackP10UConverterjjP10UErrorCode.exit ], [ %.0.ph, %bb.ah ], [ %.0.ph, %.lr.ph.split ], [ %.0.ph, %.preheader ], [ %.0.ph, %.backedge ]
  store ptr %.4, ptr %i.e, align 8, !tbaa !51
  store ptr %i.if, ptr %i.c, align 8, !tbaa !49
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit, %bb.z, %.split129.us, %_ZL50UConverter_toUnicode_ISO_2022_KR_OFFSETS_LOGIC_IBMP23UConverterToUnicodeArgsP10UErrorCode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL48UConverter_fromUnicode_ISO_2022_KR_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  store ptr %i.m, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 108
  %i.s = load i32, ptr %i.r, align 4, !tbaa !20
  %i.t = icmp eq i32 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store ptr %i.v, ptr %i.n, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 84 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 84
  store i32 %i.x, ptr %i.y, align 4, !tbaa !33
  tail call void @ucnv_MBCSFromUnicodeWithOffsets_78(ptr noundef nonnull %0, ptr noundef %1)
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !26   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 84
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !33
  %i.ac = load i32, ptr %1, align 4, !tbaa !23
  %i.ad = icmp eq i32 %i.ac, 15
  br i1 %i.ad, label %bb.c, label %_ZL52UConverter_fromUnicode_ISO_2022_KR_OFFSETS_LOGIC_IBMP25UConverterFromUnicodeArgsP10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 91
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !32  ; 3 uses
  %i.ag = icmp sgt i8 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.aj = zext nneg i8 %i.af to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.ai, i64 %i.aj, i1 false)
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !26 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 91
  %.pre20.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = phi i8 [ %.pre20.i, %bb.d ], [ %i.af, %bb.c ]
  %i.al = phi ptr [ %.pre.i, %bb.d ], [ %i.z, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 91
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 91
  store i8 %i.ak, ptr %i.an, align 1, !tbaa !32
  store i8 0, ptr %i.am, align 1, !tbaa !32
  br label %_ZL52UConverter_fromUnicode_ISO_2022_KR_OFFSETS_LOGIC_IBMP25UConverterFromUnicodeArgsP10UErrorCode.exit

_ZL52UConverter_fromUnicode_ISO_2022_KR_OFFSETS_LOGIC_IBMP25UConverterFromUnicodeArgsP10UErrorCode.exit: ; preds = %bb.b, %bb.e
  store ptr %i.o, ptr %i.n, align 8, !tbaa !45
  br label %bb.ax

bb.f:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 63
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !68  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.at = load i32, ptr %i.as, align 8, !tbaa !15
  %i.au = trunc i32 %i.at to i8                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !33 ; 2 uses
  %.not = icmp ne i32 %i.aw, 0
  %i.ax = icmp ult ptr %i.i, %i.k
  %or.cond143 = select i1 %.not, i1 %i.ax, i1 false
  br i1 %or.cond143, label %bb.aj, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ay = icmp ult ptr %i.e, %i.g
  br i1 %i.ay, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  %.not47.i = icmp eq i8 %i.ar, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 288
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.an
  %.0107189 = phi i8 [ %i.au, %.lr.ph ], [ %i.db, %bb.an ] ; 6 uses
  %.0111188 = phi ptr [ %i.e, %.lr.ph ], [ %i.be, %bb.an ] ; 3 uses
  %.0153187 = phi ptr [ %i.i, %.lr.ph ], [ %.5, %bb.an ] ; 9 uses
  store i32 65535, ptr %i.c, align 4, !tbaa !47
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.bd = icmp ult ptr %.0153187, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.am

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.0111188, i64 2 ; 11 uses
  %i.bf = load i16, ptr %.0111188, align 2, !tbaa !59 ; 3 uses
  %i.bg = zext i16 %i.bf to i32                   ; 11 uses
  %i.bh = icmp ult i16 %i.bf, 32
  br i1 %i.bh, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bi = shl nuw i32 1, %i.bg
  %i.bj = and i32 %i.bi, 134266880
  %.not133 = icmp eq i32 %i.bj, 0
  br i1 %.not133, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 12, ptr %1, align 4, !tbaa !23
  %i.bk = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 84
  store i32 %i.bg, ptr %i.bl, align 4, !tbaa !33
  br label %.loopexit

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !70 ; 2 uses
  %i.bn = lshr i32 %i.bg, 10
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !67
  %i.br = zext i16 %i.bq to i32
  %i.bs = lshr i32 %i.bg, 4
  %i.bt = and i32 %i.bs, 63
  %i.bu = add nuw nsw i32 %i.bt, %i.br
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !47 ; 2 uses
  %i.by = load ptr, ptr %i.ba, align 8, !tbaa !71
  %i.bz = shl i32 %i.bx, 4
  %i.ca = and i32 %i.bz, 1048560
  %i.cb = and i32 %i.bg, 15                       ; 2 uses
  %i.cc = or disjoint i32 %i.ca, %i.cb
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !67 ; 3 uses
  %i.cg = zext i16 %i.cf to i32                   ; 2 uses
  %i.ch = icmp ult i16 %i.cf, 256
  %..i = select i1 %i.ch, i32 1, i32 2            ; 2 uses
  %i.ci = shl nuw i32 65536, %i.cb
  %i.cj = and i32 %i.bx, %i.ci
  %.not46.i = icmp eq i32 %i.cj, 0
  br i1 %.not46.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.cg, ptr %i.c, align 4, !tbaa !47
  br label %_ZL25MBCS_FROM_UCHAR32_ISO2022P20UConverterSharedDataiPjai.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ck = add i16 %i.bf, 1792
  %i.cl = icmp ult i16 %i.ck, -6400
  %or.cond51.i.not193 = and i1 %.not47.i, %i.cl
  %.old1.not.i = icmp eq i16 %i.cf, 0
  %or.cond166 = select i1 %or.cond51.i.not193, i1 true, i1 %.old1.not.i
  br i1 %or.cond166, label %bb.n, label %_ZL25MBCS_FROM_UCHAR32_ISO2022P20UConverterSharedDataiPjai.exit.thread160

_ZL25MBCS_FROM_UCHAR32_ISO2022P20UConverterSharedDataiPjai.exit.thread160: ; preds = %bb.m
  store i32 %i.cg, ptr %i.c, align 4, !tbaa !47
  br label %_ZL25MBCS_FROM_UCHAR32_ISO2022P20UConverterSharedDataiPjai.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !72 ; 2 uses
  %.not48.i = icmp eq ptr %i.cm, null
  br i1 %.not48.i, label %.thread, label %_ZL25MBCS_FROM_UCHAR32_ISO2022P20UConverterSharedDataiPjai.exit

_ZL25MBCS_FROM_UCHAR32_ISO2022P20UConverterSharedDataiPjai.exit: ; preds = %bb.n
  %i.cn = call i32 @ucnv_extSimpleMatchFromU_78(ptr noundef nonnull %i.cm, i32 noundef %i.bg, ptr noundef nonnull %i.c, i8 noundef signext %i.ar)
  %.fr = freeze i32 %i.cn
  %spec.select = call i32 @llvm.abs.i32(i32 %.fr, i1 true)
  br label %_ZL25MBCS_FROM_UCHAR32_ISO2022P20UConverterSharedDataiPjai.exit.thread

_ZL25MBCS_FROM_UCHAR32_ISO2022P20UConverterSharedDataiPjai.exit.thread: ; preds = %_ZL25MBCS_FROM_UCHAR32_ISO2022P20UConverterSharedDataiPjai.exit, %bb.l, %_ZL25MBCS_FROM_UCHAR32_ISO2022P20UConverterSharedDataiPjai.exit.thread160
  %i.co = phi i32 [ %..i, %bb.l ], [ %spec.select, %_ZL25MBCS_FROM_UCHAR32_ISO2022P20UConverterSharedDataiPjai.exit ], [ %..i, %_ZL25MBCS_FROM_UCHAR32_ISO2022P20UConverterSharedDataiPjai.exit.thread160 ] ; 3 uses
  %i.cp = add nsw i32 %i.co, -3
  %or.cond = icmp ult i32 %i.cp, -2
end_hunk_0
begin_hunk_1_@_ZL48UConverter_fromUnicode_ISO_2022_KR_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %.3156 = phi ptr [ %i.i, %bb.f ], [ %.0153187, %bb.ai ] ; 2 uses
  %.1112 = phi ptr [ %i.e, %bb.f ], [ %i.be, %bb.ai ] ; 4 uses
  %.0108 = phi i32 [ %i.aw, %bb.f ], [ %i.bg, %bb.ai ] ; 3 uses
  %.1 = phi i8 [ %i.au, %bb.f ], [ %.0107189, %bb.ai ] ; 2 uses
  %i.gl = icmp ult ptr %.1112, %i.g
  br i1 %i.gl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gm = load i16, ptr %.1112, align 2, !tbaa !59
  %i.gn = zext i16 %i.gm to i32                   ; 2 uses
  %i.go = and i32 %i.gn, 64512
  %i.gp = icmp eq i32 %i.go, 56320                ; 3 uses
  %i.gq = shl i32 %.0108, 10
  %i.gr = add i32 %i.gq, -56613888
  %i.gs = add i32 %i.gr, %i.gn
  %storemerge = select i1 %i.gp, i32 10, i32 12
  %.2113.idx = select i1 %i.gp, i64 2, i64 0
  %.2113 = getelementptr inbounds nuw i8, ptr %.1112, i64 %.2113.idx
  %.1109 = select i1 %i.gp, i32 %i.gs, i32 %.0108
  br label %bb.al

bb.al:                                            ; preds = %.loopexit167, %bb.ai, %bb.aj, %bb.ak
  %.sink = phi i32 [ 0, %bb.aj ], [ 12, %bb.ai ], [ %storemerge, %bb.ak ], [ 10, %.loopexit167 ]
  %.4157 = phi ptr [ %.3156, %bb.aj ], [ %.0153187, %bb.ai ], [ %.3156, %bb.ak ], [ %.0153187, %.loopexit167 ]
  %.3114 = phi ptr [ %.1112, %bb.aj ], [ %i.be, %bb.ai ], [ %.2113, %bb.ak ], [ %i.be, %.loopexit167 ]
  %.2110 = phi i32 [ %.0108, %bb.aj ], [ %i.bg, %bb.ai ], [ %.1109, %bb.ak ], [ %i.bg, %.loopexit167 ]
  %.2 = phi i8 [ %.1, %bb.aj ], [ %.0107189, %bb.ai ], [ %.1, %bb.ak ], [ %.0107189, %.loopexit167 ]
  store i32 %.sink, ptr %1, align 4, !tbaa !23
  %i.gt = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 84
  store i32 %.2110, ptr %i.gu, align 4, !tbaa !33
  br label %.loopexit

bb.am:                                            ; preds = %bb.g
  store i32 15, ptr %1, align 4, !tbaa !23
  br label %.loopexit

bb.an:                                            ; preds = %bb.ah, %bb.ae, %bb.af, %bb.ag, %bb.z, %bb.y, %bb.x
  %.5 = phi ptr [ %i.dr, %bb.x ], [ %i.dr, %bb.y ], [ %.2155, %bb.z ], [ %i.ez, %bb.ae ], [ %i.ez, %bb.af ], [ %i.el, %bb.ag ], [ %.2155, %bb.ah ] ; 2 uses
  %i.gv = icmp ult ptr %i.be, %i.g
  br i1 %i.gv, label %bb.g, label %.loopexit, !llvm.loop !114

.loopexit:                                        ; preds = %bb.an, %.preheader, %bb.am, %bb.al, %bb.j
  %.6 = phi ptr [ %.4157, %bb.al ], [ %.0153187, %bb.j ], [ %.0153187, %bb.am ], [ %i.i, %.preheader ], [ %.5, %bb.an ] ; 4 uses
  %.4115 = phi ptr [ %.3114, %bb.al ], [ %i.be, %bb.j ], [ %.0111188, %bb.am ], [ %i.e, %.preheader ], [ %i.be, %bb.an ] ; 3 uses
  %.3 = phi i8 [ %.2, %bb.al ], [ %.0107189, %bb.j ], [ %.0107189, %bb.am ], [ %i.au, %.preheader ], [ %i.db, %bb.an ] ; 4 uses
  %i.gw = load i32, ptr %1, align 4, !tbaa !23
  %i.gx = icmp slt i32 %i.gw, 1
  %i.gy = icmp ne i8 %.3, 0
  %or.cond5 = select i1 %i.gx, i1 %i.gy, i1 false
  br i1 %or.cond5, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %.loopexit
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ha = load i8, ptr %i.gz, align 2, !tbaa !73
  %.not140 = icmp eq i8 %i.ha, 0
  %.not141 = icmp ult ptr %.4115, %i.g
  %or.cond144 = select i1 %.not140, i1 true, i1 %.not141
  br i1 %or.cond144, label %bb.aw, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hb = load ptr, ptr %i.n, align 8, !tbaa !45  ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 84
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !33
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.hf = load ptr, ptr %i.d, align 8, !tbaa !63  ; 3 uses
  %i.hg = ptrtoint ptr %.4115 to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = lshr exact i64 %i.hi, 1                 ; 2 uses
  %i.hk = trunc i64 %i.hj to i32                  ; 3 uses
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.hm = add nsw i32 %i.hk, -1                   ; 4 uses
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %i.hn
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !59
  %i.hq = and i16 %i.hp, -1024
  %i.hr = icmp eq i16 %i.hq, -9216
  br i1 %i.hr, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.hs = icmp eq i32 %i.hm, 0
  br i1 %i.hs, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ht = add nuw i64 %i.hj, 4294967294
  %i.hu = and i64 %i.ht, 4294967295
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hf, i64 %i.hu
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !59
  %i.hx = and i16 %i.hw, -1024
  %i.hy = icmp eq i16 %i.hx, -10240
  br i1 %i.hy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hz = add nsw i32 %i.hk, -2
  br label %bb.av

bb.av:                                            ; preds = %bb.aq, %bb.ar, %bb.at, %bb.au
  %.0 = phi i32 [ %i.hz, %bb.au ], [ %i.hm, %bb.at ], [ %i.hm, %bb.ar ], [ -1, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr %.6, ptr %i.a, align 8, !tbaa !50
  call void @ucnv_fromUWriteBytes_78(ptr noundef nonnull %i.hb, ptr noundef nonnull @_ZL12SHIFT_IN_STR, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %i.k, ptr noundef nonnull %i.b, i32 noundef %.0, ptr noundef nonnull %1)
  %i.ia = load ptr, ptr %i.a, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ap, %bb.ao, %.loopexit
  %.7 = phi ptr [ %.6, %bb.ao ], [ %i.ia, %bb.av ], [ %.6, %bb.ap ], [ %.6, %.loopexit ]
  %.4 = phi i8 [ %.3, %bb.ao ], [ 0, %bb.av ], [ %.3, %bb.ap ], [ %.3, %.loopexit ]
  store ptr %.4115, ptr %i.d, align 8, !tbaa !63
  store ptr %.7, ptr %i.h, align 8, !tbaa !61
  %i.ib = sext i8 %.4 to i32
  %i.ic = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 80
  store i32 %i.ib, ptr %i.id, align 8, !tbaa !15
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZL52UConverter_fromUnicode_ISO_2022_KR_OFFSETS_LOGIC_IBMP25UConverterFromUnicodeArgsP10UErrorCode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void
}

declare void @ucnv_MBCSToUnicodeWithOffsets_78(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @ucnv_MBCSFromUnicodeWithOffsets_78(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal void @_ZL46UConverter_toUnicode_ISO_2022_CN_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 6 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 6 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13   ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 92 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !41
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !31
  %i.s = icmp eq i8 %i.r, 1
  %i.t = icmp ult ptr %i.d, %i.h
  %or.cond160 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond160, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = icmp ult ptr %i.f, %i.v
  br i1 %i.w, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 65
  %i.y = load i8, ptr %i.x, align 1, !tbaa !21
  %i.z = zext i8 %i.y to i32
  store i8 0, ptr %i.q, align 8, !tbaa !31
  br label %bb.n

.preheader:                                       ; preds = %bb.aj, %bb.ai, %bb.ac, %bb.c, %bb.b, %bb.j
  %.promoted = phi ptr [ %.promoted.pre, %bb.j ], [ %i.d, %bb.c ], [ %i.d, %bb.b ], [ %i.dh, %bb.ac ], [ %i.dh, %bb.ai ], [ %i.dh, %bb.aj ] ; 6 uses
  %.0.ph = phi ptr [ %.1, %bb.j ], [ %i.f, %bb.c ], [ %i.f, %bb.b ], [ %i.dz, %bb.ac ], [ %i.fm, %bb.ai ], [ %i.fn, %bb.aj ] ; 11 uses
  %.promoted236 = ptrtoaddr ptr %.promoted to i64
  %i.aa = icmp ult ptr %.promoted, %i.h
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.ad = icmp ult ptr %.0.ph, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 93
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 6 uses
  br i1 %i.ad, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ah = sub i64 %i.i, %.promoted236
  %scevgep = getelementptr i8, ptr %.promoted, i64 %i.ah
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.backedge
  %i.ai = phi ptr [ %i.aj, %.backedge ], [ %.promoted, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 12 uses
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !21  ; 5 uses
  switch i8 %i.ak, label %bb.l [
    i8 15, label %bb.e
    i8 14, label %2
    i8 27, label %.split.us
    i8 13, label %.thread260
    i8 10, label %.thread260
  ]

bb.e:                                             ; preds = %.lr.ph.split.us
  store i8 0, ptr %i.af, align 8, !tbaa !46
  %i.al = load i8, ptr %i.ag, align 8, !tbaa !42
  %.not152.us = icmp eq i8 %i.al, 0
  br i1 %.not152.us, label %.backedge, label %.split214.us

.split214.us:                                     ; preds = %bb.e
  store i8 0, ptr %i.ag, align 8, !tbaa !42
  store i32 18, ptr %1, align 4, !tbaa !23
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !53  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 284
  store i32 2, ptr %i.an, align 4, !tbaa !56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 65
  store i8 15, ptr %i.ao, align 1, !tbaa !21
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store i8 1, ptr %i.aq, align 8, !tbaa !31
  store ptr %.0.ph, ptr %i.e, align 8, !tbaa !51
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !49
  br label %bb.am

2:                                                ; preds = %.lr.ph.split.us
  %3 = load i8, ptr %i.ae, align 1, !tbaa !21
  %.not151 = icmp eq i8 %3, 0
  br i1 %.not151, label %.split211.us, label %4

4:                                                ; preds = %2
  store i8 1, ptr %i.af, align 8, !tbaa !46
  store i8 1, ptr %i.ag, align 8, !tbaa !42
  br label %.backedge

.backedge:                                        ; preds = %4, %bb.e
  %exitcond.not = icmp eq ptr %i.aj, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !115

.split211.us:                                     ; preds = %2
  store ptr %i.aj, ptr %i.b, align 8
  store i8 0, ptr %i.ag, align 8, !tbaa !42
  br label %select.unfold

.split.us:                                        ; preds = %.lr.ph.split.us
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !50
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.split.us
  %i.ar = phi ptr [ %i.k, %bb.a ], [ %.pre, %.split.us ] ; 2 uses
  %i.as = phi ptr [ %i.d, %bb.a ], [ %i.ai, %.split.us ]
  %.1 = phi ptr [ %i.f, %bb.a ], [ %.0.ph, %.split.us ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.au = load i8, ptr %i.at, align 8, !tbaa !31
  call fastcc void @_ZL16changeState_2022P10UConverterPPKcS2_11Variant2022P10UErrorCode(ptr noundef %i.ar, ptr noundef nonnull %i.b, ptr noundef %i.h, i32 noundef 3, ptr noundef %1)
  %i.av = load i32, ptr %i.o, align 8, !tbaa !41
  %i.aw = icmp eq i32 %i.av, 0
  %.pre239 = load i32, ptr %1, align 4, !tbaa !23 ; 2 uses
  br i1 %i.aw, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ax = icmp sgt i32 %.pre239, 0
  br i1 %i.ax, label %.thread254, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !42
  %.not149 = icmp eq i8 %i.az, 0
  br i1 %.not149, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 18, ptr %1, align 4, !tbaa !23
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !53  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 284
  store i32 2, ptr %i.bb, align 4, !tbaa !56
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.as to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = add i8 %i.au, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store i8 %i.bh, ptr %i.bi, align 8, !tbaa !31
  br label %.thread254

.thread254:                                       ; preds = %bb.i, %bb.g
  %.promoted.pre255 = load ptr, ptr %i.b, align 8, !tbaa !50
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.f
  %i.bj = icmp slt i32 %.pre239, 1
  %.promoted.pre = load ptr, ptr %i.b, align 8, !tbaa !50 ; 2 uses
  br i1 %i.bj, label %.preheader, label %bb.k, !llvm.loop !115

bb.k:                                             ; preds = %.thread254, %bb.j
  %.promoted.pre256 = phi ptr [ %.promoted.pre255, %.thread254 ], [ %.promoted.pre, %bb.j ]
  store ptr %.1, ptr %i.e, align 8, !tbaa !51
  store ptr %.promoted.pre256, ptr %i.c, align 8, !tbaa !49
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  store i8 0, ptr %i.bk, align 8, !tbaa !42
  br label %bb.am

.thread260:                                       ; preds = %.lr.ph.split.us, %.lr.ph.split.us
  store ptr %i.aj, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.n, i8 0, i64 6, i1 false)
  %i.bl = zext nneg i8 %i.ak to i32               ; 2 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !42
  br label %select.unfold

bb.l:                                             ; preds = %.lr.ph.split.us
  store ptr %i.aj, ptr %i.b, align 8
  %.pre240 = load i8, ptr %i.af, align 8, !tbaa !46
  %i.bm = icmp eq i8 %.pre240, 0
  %i.bn = zext i8 %i.ak to i32                    ; 3 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !42
  br i1 %i.bm, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = icmp ult ptr %i.aj, %i.h
  br i1 %i.bo, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m, %bb.d
  %i.bp = phi ptr [ %i.aj, %bb.m ], [ %i.d, %bb.d ] ; 5 uses
  %.0130 = phi i32 [ %i.bn, %bb.m ], [ %i.z, %bb.d ] ; 6 uses
  %.2 = phi ptr [ %.0.ph, %bb.m ], [ %i.f, %bb.d ] ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !21  ; 5 uses
  %i.br = add nuw nsw i32 %.0130, 223
  %i.bs = and i32 %i.br, 254
  %i.bt = icmp samesign ult i32 %i.bs, 94
  %i.bu = zext i8 %i.bq to i32                    ; 3 uses
  %i.bv = add i8 %i.bq, -33
  %i.bw = icmp ult i8 %i.bv, 94                   ; 2 uses
  %or.cond = select i1 %i.bt, i1 %i.bw, i1 false
  br i1 %or.cond, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  store ptr %i.bx, ptr %i.b, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !46
  %i.ca = sext i8 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.n, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !21  ; 3 uses
  %i.cd = icmp sgt i8 %i.cc, 31
  %i.ce = trunc nuw i32 %.0130 to i8              ; 2 uses
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !24
  %narrow = add nuw i8 %i.cc, 96
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.bq, ptr %i.ch, align 1, !tbaa !21
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ci = sext i8 %i.cc to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink237 = phi i8 [ %narrow, %bb.p ], [ %i.ce, %bb.q ]
  %.sink = phi i8 [ %i.ce, %bb.p ], [ %i.bq, %bb.q ]
  %.0133 = phi ptr [ %i.cg, %bb.p ], [ %i.ck, %bb.q ]
  %.0129 = phi i32 [ 3, %bb.p ], [ 2, %bb.q ]
  store i8 %.sink237, ptr %i.a, align 1, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %.sink, ptr %i.cl, align 1, !tbaa !21
  %i.cm = call i32 @ucnv_MBCSSimpleGetNextUChar_78(ptr noundef %.0133, ptr noundef nonnull %i.a, i32 noundef %.0129, i8 noundef signext 0)
  %i.cn = shl nuw nsw i32 %.0130, 8
  %i.co = or disjoint i32 %i.cn, %i.bu
  br label %bb.w

bb.s:                                             ; preds = %bb.n
  br i1 %i.bw, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = icmp ult i8 %i.bq, 32
  br i1 %i.cp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cq = shl nuw i32 1, %i.bu
  %i.cr = and i32 %i.cq, 134266880
  %.not154 = icmp eq i32 %i.cr, 0
  br i1 %.not154, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 2 uses
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !50
  %i.ct = shl nuw nsw i32 %.0130, 8
  %i.cu = or disjoint i32 %i.ct, %i.bu
  %i.cv = or disjoint i32 %i.cu, 65536
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.u, %bb.v, %bb.r
  %i.cw = phi ptr [ %i.bx, %bb.r ], [ %i.bp, %bb.s ], [ %i.bp, %bb.u ], [ %i.cs, %bb.v ] ; 2 uses
  %.1131 = phi i32 [ %i.co, %bb.r ], [ %.0130, %bb.s ], [ %.0130, %bb.u ], [ %i.cv, %bb.v ] ; 2 uses
  %.1127 = phi i32 [ %i.cm, %bb.r ], [ 65535, %bb.s ], [ 65535, %bb.u ], [ 65535, %bb.v ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !46
  %i.cz = icmp sgt i8 %i.cy, 1
  br i1 %i.cz, label %bb.x, label %select.unfold

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 97
  %i.db = load i8, ptr %i.da, align 1, !tbaa !57
  store i8 %i.db, ptr %i.cx, align 8, !tbaa !46
  br label %select.unfold

bb.y:                                             ; preds = %bb.m
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 65
  store i8 %i.ak, ptr %i.dd, align 1, !tbaa !21
  %i.de = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  store i8 1, ptr %i.df, align 8, !tbaa !31
  br label %.loopexit

bb.z:                                             ; preds = %bb.l
  %i.dg = icmp sgt i8 %i.ak, -1
  %spec.select = select i1 %i.dg, i32 %i.bn, i32 65535
  br label %select.unfold

select.unfold:                                    ; preds = %bb.z, %.thread260, %bb.w, %bb.x, %.split211.us
  %i.dh = phi ptr [ %i.cw, %bb.x ], [ %i.cw, %bb.w ], [ %i.aj, %.split211.us ], [ %i.aj, %bb.z ], [ %i.aj, %.thread260 ] ; 6 uses
  %.2132 = phi i32 [ %.1131, %bb.x ], [ %.1131, %bb.w ], [ 14, %.split211.us ], [ %i.bn, %bb.z ], [ %i.bl, %.thread260 ] ; 6 uses
  %.2128 = phi i32 [ %.1127, %bb.x ], [ %.1127, %bb.w ], [ 65535, %.split211.us ], [ %spec.select, %bb.z ], [ %i.bl, %.thread260 ] ; 8 uses
  %.3 = phi ptr [ %.2, %bb.x ], [ %.2, %bb.w ], [ %.0.ph, %.split211.us ], [ %.0.ph, %bb.z ], [ %.0.ph, %.thread260 ] ; 9 uses
  %i.di = icmp ult i32 %.2128, 65534
  br i1 %i.di, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %select.unfold
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !58 ; 2 uses
  %.not158 = icmp eq ptr %i.dk, null
  br i1 %.not158, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.dm = ptrtoint ptr %i.dh to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = icmp samesign ult i32 %.2132, 256
  %.neg159 = select i1 %i.do, i64 4294967295, i64 4294967294
  %i.dp = add i64 %.neg159, %i.dm
  %i.dq = sub i64 %i.dp, %i.dn
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.dt = ptrtoint ptr %.3 to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 1
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dw
  store i32 %i.dr, ptr %i.dx, align 4, !tbaa !47
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dy = trunc nuw i32 %.2128 to i16
  %i.dz = getelementptr inbounds nuw i8, ptr %.3, i64 2
  store i16 %i.dy, ptr %.3, align 2, !tbaa !59
  br label %.preheader, !llvm.loop !115

bb.ad:                                            ; preds = %select.unfold
  %i.ea = icmp ugt i32 %.2128, 65535
  br i1 %i.ea, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.eb = add i32 %.2128, 67043328
  %i.ec = lshr i32 %i.eb, 10
  %i.ed = trunc i32 %i.ec to i16
  %i.ee = add i16 %i.ed, -10240
  store i16 %i.ee, ptr %.3, align 2, !tbaa !59
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !58 ; 3 uses
  %.not155 = icmp eq ptr %i.eg, null
  br i1 %.not155, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !54
  %i.ek = icmp ult ptr %i.eh, %i.ej
  br i1 %i.ek, label %bb.ag, label %bb.aj

.thread:                                          ; preds = %bb.ae
  %i.el = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.em = ptrtoint ptr %i.dh to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = icmp samesign ult i32 %.2132, 256
  %.neg = select i1 %i.eo, i64 4294967295, i64 4294967294
  %i.ep = add i64 %.neg, %i.em
  %i.eq = sub i64 %i.ep, %i.en
  %i.er = trunc i64 %i.eq to i32                  ; 2 uses
  %i.es = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.et = ptrtoint ptr %.3 to i64
  %i.eu = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = ashr exact i64 %i.ev, 1
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ew
  store i32 %i.er, ptr %i.ex, align 4, !tbaa !47
  %i.ey = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !54
  %i.fb = icmp ult ptr %i.ey, %i.fa
  br i1 %i.fb, label %bb.ah, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fc = trunc i32 %.2128 to i16
  %i.fd = and i16 %i.fc, 1023
  %i.fe = or disjoint i16 %i.fd, -9216
  store i16 %i.fe, ptr %i.eh, align 2, !tbaa !59
  br label %bb.ai

bb.ah:                                            ; preds = %.thread
  %i.ff = trunc i32 %.2128 to i16
  %i.fg = and i16 %i.ff, 1023
  %i.fh = or disjoint i16 %i.fg, -9216
  store i16 %i.fh, ptr %i.ey, align 2, !tbaa !59
  %i.fi = ptrtoint ptr %i.ey to i64
  %i.fj = sub i64 %i.fi, %i.eu
  %i.fk = ashr exact i64 %i.fj, 1
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fk
  store i32 %i.er, ptr %i.fl, align 4, !tbaa !47
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.fm = getelementptr inbounds nuw i8, ptr %.3, i64 4
  br label %.preheader, !llvm.loop !115

bb.aj:                                            ; preds = %.thread, %bb.af
  %i.fn = phi ptr [ %i.ey, %.thread ], [ %i.eh, %bb.af ]
  %i.fo = trunc i32 %.2128 to i16
  %i.fp = and i16 %i.fo, 1023
  %i.fq = or disjoint i16 %i.fp, -9216
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !53  ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 144
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 93 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !60  ; 2 uses
  %i.fv = add i8 %i.fu, 1
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !60
  %i.fw = sext i8 %i.fu to i64
  %i.fx = getelementptr inbounds [2 x i8], ptr %i.fs, i64 %i.fw
  store i16 %i.fq, ptr %i.fx, align 2, !tbaa !59
  br label %.preheader, !llvm.loop !115

bb.ak:                                            ; preds = %bb.ad
  %i.fy = load ptr, ptr %i.j, align 8, !tbaa !53  ; 3 uses
  %i.fz = icmp samesign ugt i32 %.2132, 255
  br i1 %i.fz, label %bb.al, label %_ZL17toUnicodeCallbackP10UConverterjjP10UErrorCode.exit

bb.al:                                            ; preds = %bb.ak
  %i.ga = lshr i32 %.2132, 8
  %i.gb = trunc i32 %.2132 to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 66
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !21
  br label %_ZL17toUnicodeCallbackP10UConverterjjP10UErrorCode.exit

_ZL17toUnicodeCallbackP10UConverterjjP10UErrorCode.exit: ; preds = %bb.ak, %bb.al
  %.sink11.in.i = phi i32 [ %i.ga, %bb.al ], [ %.2132, %bb.ak ]
  %.sink.i = phi i8 [ 2, %bb.al ], [ 1, %bb.ak ]
  %.sink11.i = trunc i32 %.sink11.in.i to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 65
  store i8 %.sink11.i, ptr %i.gd, align 1, !tbaa !21
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  store i8 %.sink.i, ptr %i.ge, align 8, !tbaa !31
  %i.gf = icmp eq i32 %.2128, 65534
  %..i = select i1 %i.gf, i32 10, i32 12
  store i32 %..i, ptr %1, align 4, !tbaa !23
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  store i32 15, ptr %1, align 4, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %.preheader, %_ZL17toUnicodeCallbackP10UConverterjjP10UErrorCode.exit, %.lr.ph.split, %bb.y
  %i.gg = phi ptr [ %i.dh, %_ZL17toUnicodeCallbackP10UConverterjjP10UErrorCode.exit ], [ %i.aj, %bb.y ], [ %.promoted, %.lr.ph.split ], [ %.promoted, %.preheader ], [ %scevgep, %.backedge ]
  %.5 = phi ptr [ %.3, %_ZL17toUnicodeCallbackP10UConverterjjP10UErrorCode.exit ], [ %.0.ph, %bb.y ], [ %.0.ph, %.lr.ph.split ], [ %.0.ph, %.preheader ], [ %.0.ph, %.backedge ]
  store ptr %.5, ptr %i.e, align 8, !tbaa !51
  store ptr %i.gg, ptr %i.c, align 8, !tbaa !49
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %bb.k, %.split214.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL48UConverter_fromUnicode_ISO_2022_CN_OFFSETS_LOGICP25UConverterFromUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca [8 x i8], align 4                 ; 13 uses
  %i.e = alloca [3 x i8], align 1                 ; 7 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65
  store ptr %i.r, ptr %i.c, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13   ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 98 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 84 ; 8 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33   ; 2 uses
  %.not = icmp ne i32 %i.w, 0
  %i.x = icmp ult ptr %i.j, %i.l
  %or.cond217 = select i1 %.not, i1 %i.x, i1 false
  br i1 %or.cond217, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.bn, %bb.bm, %bb.bo, %bb.bj, %bb.bk, %bb.a
  %.0236 = phi ptr [ %i.ic, %bb.bo ], [ %i.gu, %bb.bj ], [ %i.gu, %bb.bk ], [ %i.he, %bb.bm ], [ %i.he, %bb.bn ], [ %i.j, %bb.a ] ; 6 uses
  %.0184 = phi ptr [ %.3187, %bb.bo ], [ %.3187, %bb.bj ], [ %.3187, %bb.bk ], [ %.3187, %bb.bm ], [ %.3187, %bb.bn ], [ %i.n, %bb.a ] ; 5 uses
  %.0166 = phi i32 [ %.7, %bb.bo ], [ %.7, %bb.bj ], [ %.7, %bb.bk ], [ %.7, %bb.bm ], [ %.7, %bb.bn ], [ 0, %bb.a ] ; 2 uses
  %.0162 = phi i32 [ %.6, %bb.bo ], [ %.6, %bb.bj ], [ %.6, %bb.bk ], [ %.6, %bb.bm ], [ %.6, %bb.bn ], [ 0, %bb.a ] ; 2 uses
  %i.y = icmp ult ptr %.0184, %i.p
  br i1 %i.y, label %bb.c, label %bb.bq

bb.c:                                             ; preds = %bb.b
  %i.z = icmp ult ptr %.0236, %i.l
  br i1 %i.z, label %bb.d, label %bb.bp

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.0184, i64 2 ; 3 uses
  %i.ab = load i16, ptr %.0184, align 2, !tbaa !59
  %i.ac = zext i16 %i.ab to i32                   ; 5 uses
  %i.ad = and i32 %i.ac, 63488
  %i.ae = icmp eq i32 %i.ad, 55296
  br i1 %i.ae, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.af = and i32 %i.ac, 1024
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1237 = phi ptr [ %i.j, %bb.a ], [ %.0236, %bb.e ] ; 3 uses
  %.1185 = phi ptr [ %i.n, %bb.a ], [ %i.aa, %bb.e ] ; 5 uses
  %.0181 = phi i32 [ %i.w, %bb.a ], [ %i.ac, %bb.e ] ; 3 uses
  %.1167 = phi i32 [ 0, %bb.a ], [ %.0166, %bb.e ]
  %.1163 = phi i32 [ 0, %bb.a ], [ %.0162, %bb.e ]
  %i.ah = icmp ult ptr %.1185, %i.p
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = load i16, ptr %.1185, align 2, !tbaa !59
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = and i32 %i.aj, 64512
  %i.al = icmp eq i32 %i.ak, 56320
  br i1 %i.al, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  store i32 12, ptr %1, align 4, !tbaa !23
  store i32 %.0181, ptr %i.v, align 4, !tbaa !33
  br label %.thread312

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.1185, i64 2
  %i.an = shl i32 %.0181, 10
  %i.ao = add i32 %i.an, -56613888
  %i.ap = add i32 %i.ao, %i.aj
  store i32 0, ptr %i.v, align 4, !tbaa !33
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  store i32 %.0181, ptr %i.v, align 4, !tbaa !33
  br label %bb.bq

bb.j:                                             ; preds = %bb.e
  store i32 12, ptr %1, align 4, !tbaa !23
  store i32 %i.ac, ptr %i.v, align 4, !tbaa !33
  br label %.thread312

bb.k:                                             ; preds = %bb.h, %bb.d
  %.2238 = phi ptr [ %.1237, %bb.h ], [ %.0236, %bb.d ] ; 8 uses
  %.3187 = phi ptr [ %i.am, %bb.h ], [ %i.aa, %bb.d ] ; 11 uses
  %.2183 = phi i32 [ %i.ap, %bb.h ], [ %i.ac, %bb.d ] ; 17 uses
  %.2168 = phi i32 [ %.1167, %bb.h ], [ %.0166, %bb.d ] ; 4 uses
  %.2164 = phi i32 [ %.1163, %bb.h ], [ %.0162, %bb.d ] ; 3 uses
  %i.aq = icmp slt i32 %.2183, 128
  br i1 %i.aq, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp slt i32 %.2183, 32
  br i1 %i.ar, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.as = shl nuw i32 1, %.2183
  %i.at = and i32 %i.as, 134266880
  %.not206 = icmp eq i32 %i.at, 0
  br i1 %.not206, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 12, ptr %1, align 4, !tbaa !23
  store i32 %.2183, ptr %i.v, align 4, !tbaa !33
  br label %.thread312

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 102 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !46
  %i.aw = icmp eq i8 %i.av, 0
  %i.ax = trunc i32 %.2183 to i8                  ; 2 uses
  br i1 %i.aw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !21
  store i8 0, ptr %i.au, align 1, !tbaa !46
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink = phi i8 [ 15, %bb.p ], [ %i.ax, %bb.o ]
  %.0173 = phi i32 [ 2, %bb.p ], [ 1, %bb.o ]     ; 2 uses
  %.3169 = phi i32 [ 0, %bb.p ], [ %.2168, %bb.o ]
  store i8 %.sink, ptr %i.d, align 4, !tbaa !21
  switch i32 %.2183, label %bb.bi [
    i32 13, label %bb.r
    i32 10, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.u, i8 0, i64 6, i1 false)
  br label %bb.bi

bb.s:                                             ; preds = %bb.k
  %i.az = icmp eq i32 %.2168, 0
  br i1 %i.az, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 99
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !21  ; 2 uses
  %spec.select = call i8 @llvm.umax.i8(i8 %i.bb, i8 1) ; 2 uses
  store i8 %spec.select, ptr %i.e, align 1, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 108
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !20
  switch i32 %i.bd, label %._crit_edge.thread [
    i32 0, label %bb.u
    i32 1, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  %i.be = icmp ult i8 %i.bb, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  br i1 %i.be, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 33, ptr %i.bf, align 1, !tbaa !21
  br label %.lr.ph

bb.w:                                             ; preds = %bb.u
  store i8 1, ptr %i.bf, align 1, !tbaa !21
  br label %.lr.ph

bb.x:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  switch i8 %spec.select, label %bb.aa [
    i8 1, label %bb.y
    i8 2, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  store i8 33, ptr %i.bg, align 1, !tbaa !21
  store i8 2, ptr %i.bh, align 1, !tbaa !21
  br label %.lr.ph
end_hunk_1

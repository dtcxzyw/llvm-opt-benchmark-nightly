Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_u16?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL28_UTF16BEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %.6225, i64 2 ; 4 uses
  %i.ev = zext i16 %i.et to i32                   ; 2 uses
  %i.ew = and i32 %i.ev, 63488
  %i.ex = icmp eq i32 %i.ew, 55296
  br i1 %i.ex, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.preheader293
  %i.ey = getelementptr inbounds nuw i8, ptr %.6214, i64 2
  store i16 %i.et, ptr %.6214, align 2, !tbaa !32
  %i.ez = getelementptr inbounds nuw i8, ptr %.6206, i64 4
  store i32 %.2180, ptr %.6206, align 4, !tbaa !34
  br label %bb.ak

bb.ah:                                            ; preds = %.preheader293
  %i.fa = and i32 %i.ev, 1024
  %i.fb = icmp eq i32 %i.fa, 0
  %i.fc = icmp ugt i32 %.5189, 1
  %or.cond5 = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond5, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.fd = load i8, ptr %i.eu, align 1, !tbaa !30
  %i.fe = zext i8 %i.fd to i16                    ; 2 uses
  %i.ff = and i16 %i.fe, 252
  %i.fg = icmp eq i16 %i.ff, 220
  br i1 %i.fg, label %bb.aj, label %.thread269

bb.aj:                                            ; preds = %bb.ai
  %i.fh = shl nuw i16 %i.fe, 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.6225, i64 3
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !30
  %i.fk = zext i8 %i.fj to i16
  %i.fl = or disjoint i16 %i.fh, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.6225, i64 4
  %i.fn = add i32 %.5189, -1
  %i.fo = getelementptr inbounds nuw i8, ptr %.6214, i64 2
  store i16 %i.et, ptr %.6214, align 2, !tbaa !32
  %i.fp = getelementptr inbounds nuw i8, ptr %.6214, i64 4
  store i16 %i.fl, ptr %i.fo, align 2, !tbaa !32
  %i.fq = getelementptr inbounds nuw i8, ptr %.6206, i64 4
  store i32 %.2180, ptr %.6206, align 4, !tbaa !34
  %i.fr = getelementptr inbounds nuw i8, ptr %.6206, i64 8
  store i32 %.2180, ptr %i.fq, align 4, !tbaa !34
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %bb.aj
  %.sink = phi i32 [ 2, %bb.ag ], [ 4, %bb.aj ]
  %.7226 = phi ptr [ %i.eu, %bb.ag ], [ %i.fm, %bb.aj ] ; 2 uses
  %.7215 = phi ptr [ %i.ey, %bb.ag ], [ %i.fp, %bb.aj ] ; 2 uses
  %.7207 = phi ptr [ %i.ez, %bb.ag ], [ %i.fr, %bb.aj ] ; 2 uses
  %.6190 = phi i32 [ %.5189, %bb.ag ], [ %i.fn, %bb.aj ]
  %i.fs = add i32 %.2180, %.sink
  %i.ft = add i32 %.6190, -1                      ; 2 uses
  %.not254 = icmp eq i32 %i.ft, 0
  br i1 %.not254, label %.thread283, label %.preheader293, !llvm.loop !39

.loopexit:                                        ; preds = %bb.ah, %bb.ac
  %.8227 = phi ptr [ %i.dr, %bb.ac ], [ %i.eu, %bb.ah ] ; 2 uses
  %.8216 = phi ptr [ %.4212, %bb.ac ], [ %.6214, %bb.ah ] ; 2 uses
  %.8 = phi ptr [ null, %bb.ac ], [ %.6206, %bb.ah ] ; 2 uses
  %.7 = phi i32 [ %.3187, %bb.ac ], [ %.5189, %bb.ah ] ; 2 uses
  %.4182 = phi i32 [ %.1179, %bb.ac ], [ %.2180, %bb.ah ]
  %.5 = phi i16 [ %i.dq, %bb.ac ], [ %i.et, %bb.ah ]
  %i.fu = icmp eq i32 %.7, 0
  br i1 %i.fu, label %.thread283, label %.thread269

.thread269:                                       ; preds = %bb.ai, %bb.ad, %.loopexit
  %.5281 = phi i16 [ %.5, %.loopexit ], [ %i.dq, %bb.ad ], [ %i.et, %bb.ai ]
  %.4182280 = phi i32 [ %.4182, %.loopexit ], [ %.1179, %bb.ad ], [ %.2180, %bb.ai ]
  %.7279 = phi i32 [ %.7, %.loopexit ], [ %.3187, %bb.ad ], [ %.5189, %bb.ai ] ; 2 uses
  %.8278 = phi ptr [ %.8, %.loopexit ], [ null, %bb.ad ], [ %.6206, %bb.ai ]
  %.8216277 = phi ptr [ %.8216, %.loopexit ], [ %.4212, %bb.ad ], [ %.6214, %bb.ai ]
  %.8227276 = phi ptr [ %.8227, %.loopexit ], [ %i.dr, %bb.ad ], [ %i.eu, %bb.ai ]
  %i.fv = shl i32 %.7279, 1
  %i.fw = add i32 %i.dg, -2
  %i.fx = add i32 %i.fw, %i.fv
  %i.fy = add i32 %.7279, %i.di
  br label %bb.al

bb.al:                                            ; preds = %.thread269, %bb.z
  %.9228 = phi ptr [ %.3222, %bb.z ], [ %.8227276, %.thread269 ] ; 7 uses
  %.9217 = phi ptr [ %.3211, %bb.z ], [ %.8216277, %.thread269 ] ; 6 uses
  %.9 = phi ptr [ %.5205, %bb.z ], [ %.8278, %.thread269 ] ; 7 uses
  %.4199 = phi i32 [ %.3198, %bb.z ], [ %i.fy, %.thread269 ] ; 3 uses
  %.2193 = phi i32 [ %.1192, %bb.z ], [ %i.fx, %.thread269 ] ; 5 uses
  %.5183 = phi i32 [ %.1179, %bb.z ], [ %.4182280, %.thread269 ]
  %.6 = phi i16 [ %.4, %bb.z ], [ %.5281, %.thread269 ] ; 5 uses
  %.not256 = icmp eq i16 %.6, 0
  br i1 %.not256, label %.thread283, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fz = lshr i16 %.6, 8
  %i.ga = trunc nuw i16 %i.fz to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.ga, ptr %i.gb, align 1, !tbaa !30
  %i.gc = trunc i16 %.6 to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 %i.gc, ptr %i.gd, align 2, !tbaa !30
  store i8 2, ptr %i.cz, align 8, !tbaa !31
  %i.ge = and i16 %.6, 1024
  %i.gf = icmp eq i16 %i.ge, 0
  br i1 %i.gf, label %bb.an, label %.thread283.sink.split

bb.an:                                            ; preds = %bb.am
  %i.gg = icmp ugt i32 %.2193, 1
  br i1 %i.gg, label %bb.ao, label %.thread283

bb.ao:                                            ; preds = %bb.an
  %i.gh = load i8, ptr %.9228, align 1, !tbaa !30
  %i.gi = zext i8 %i.gh to i16                    ; 2 uses
  %i.gj = shl nuw i16 %i.gi, 8
  %i.gk = getelementptr inbounds nuw i8, ptr %.9228, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !30
  %i.gm = zext i8 %i.gl to i16
  %i.gn = or disjoint i16 %i.gj, %i.gm
  %i.go = and i16 %i.gi, 252
  %i.gp = icmp eq i16 %i.go, 220
  br i1 %i.gp, label %bb.ap, label %.thread283.sink.split

bb.ap:                                            ; preds = %bb.ao
  %i.gq = getelementptr inbounds nuw i8, ptr %.9228, i64 2
  %i.gr = add i32 %.2193, -2
  %i.gs = getelementptr inbounds nuw i8, ptr %.9217, i64 2
  store i16 %.6, ptr %.9217, align 2, !tbaa !32
  %.not257 = icmp eq ptr %.9, null
  br i1 %.not257, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gt = getelementptr inbounds nuw i8, ptr %.9, i64 4
  store i32 %.5183, ptr %.9, align 4, !tbaa !34
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.10 = phi ptr [ %i.gt, %bb.aq ], [ null, %bb.ap ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i16 %i.gn, ptr %i.gu, align 8, !tbaa !32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 93
  store i8 1, ptr %i.gv, align 1, !tbaa !35
  store i8 0, ptr %i.cz, align 8, !tbaa !31
  br label %.thread283.sink.split

.thread283.sink.split:                            ; preds = %bb.am, %bb.ao, %bb.ar
  %.sink421 = phi i32 [ 12, %bb.ao ], [ 15, %bb.ar ], [ 12, %bb.am ]
  %.ph = phi i8 [ 2, %bb.ao ], [ 0, %bb.ar ], [ 2, %bb.am ]
  %.10229.ph = phi ptr [ %.9228, %bb.ao ], [ %i.gq, %bb.ar ], [ %.9228, %bb.am ]
  %.10218.ph = phi ptr [ %.9217, %bb.ao ], [ %i.gs, %bb.ar ], [ %.9217, %bb.am ]
  %.11.ph = phi ptr [ %.9, %bb.ao ], [ %.10, %bb.ar ], [ %.9, %bb.am ]
  %.3194.ph = phi i32 [ 1, %bb.ao ], [ %i.gr, %bb.ar ], [ %.2193, %bb.am ]
  store i32 %.sink421, ptr %1, align 4, !tbaa !16
  br label %.thread283

.thread283:                                       ; preds = %bb.ak, %bb.af, %.thread283.sink.split, %.loopexit, %bb.an, %bb.al
  %i.gw = phi i8 [ %i.da, %.loopexit ], [ %.ph, %.thread283.sink.split ], [ 2, %bb.an ], [ %i.da, %bb.af ], [ %i.da, %bb.al ], [ %i.da, %bb.ak ] ; 2 uses
  %.4199292 = phi i32 [ %i.di, %.loopexit ], [ %.4199, %.thread283.sink.split ], [ %.4199, %bb.an ], [ %i.di, %bb.af ], [ %.4199, %bb.al ], [ %i.di, %bb.ak ]
  %.10229 = phi ptr [ %.8227, %.loopexit ], [ %.10229.ph, %.thread283.sink.split ], [ %.9228, %bb.an ], [ %.5224, %bb.af ], [ %.9228, %bb.al ], [ %.7226, %bb.ak ] ; 4 uses
  %.10218 = phi ptr [ %.8216, %.loopexit ], [ %.10218.ph, %.thread283.sink.split ], [ %.9217, %bb.an ], [ %.5213, %bb.af ], [ %.9217, %bb.al ], [ %.7215, %bb.ak ]
  %.11 = phi ptr [ %.8, %.loopexit ], [ %.11.ph, %.thread283.sink.split ], [ %.9, %bb.an ], [ null, %bb.af ], [ %.9, %bb.al ], [ %.7207, %bb.ak ]
  %.3194 = phi i32 [ %i.dg, %.loopexit ], [ %.3194.ph, %.thread283.sink.split ], [ %.2193, %bb.an ], [ %i.dg, %bb.af ], [ %.2193, %bb.al ], [ %i.dg, %bb.ak ]
  %i.gx = load i32, ptr %1, align 4, !tbaa !16
  %i.gy = icmp slt i32 %i.gx, 1
  %i.gz = icmp ne i32 %.3194, 0
  %or.cond7 = and i1 %i.gz, %i.gy
  br i1 %or.cond7, label %bb.as, label %bb.av

bb.as:                                            ; preds = %.thread283
  %i.ha = icmp eq i32 %.4199292, 0
  br i1 %i.ha, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 15, ptr %1, align 4, !tbaa !16
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.hb = getelementptr inbounds nuw i8, ptr %.10229, i64 1
  %i.hc = load i8, ptr %.10229, align 1, !tbaa !30
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.he = add i8 %i.gw, 1
  store i8 %i.he, ptr %i.cz, align 8, !tbaa !31
  %i.hf = sext i8 %i.gw to i64
  %i.hg = getelementptr inbounds i8, ptr %i.hd, i64 %i.hf
  store i8 %i.hc, ptr %i.hg, align 1, !tbaa !30
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.thread283
  %.11230 = phi ptr [ %.10229, %bb.at ], [ %i.hb, %bb.au ], [ %.10229, %.thread283 ]
  store ptr %.11230, ptr %i.f, align 8, !tbaa !24
  store ptr %.10218, ptr %i.r, align 8, !tbaa !27
  store ptr %.11, ptr %i.aa, align 8, !tbaa !29
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge, %bb.d, %bb.av, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL30_UTF16BEFromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca [4 x i8], align 1                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 1
  %i.l = trunc i64 %i.k to i32                    ; 3 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !15
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @ucnv_fromUWriteBytes_78(ptr noundef nonnull %i.o, ptr noundef nonnull @_ZZL30_UTF16BEFromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCodeE3bom, i32 noundef 2, ptr noundef nonnull %i.s, ptr noundef %i.u, ptr noundef nonnull %i.v, i32 noundef -1, ptr noundef %1)
  store i32 0, ptr %i.p, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45   ; 10 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44   ; 2 uses
  %.not = icmp ult ptr %i.x, %i.z
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 15, ptr %1, align 4, !tbaa !16
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32                  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 5 uses
  store ptr %i.af, ptr %i.b, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 84 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !49 ; 4 uses
  %i.ai = trunc i32 %i.ah to i16                  ; 2 uses
  %i.aj = and i32 %i.ah, 65535
  %.not158 = icmp eq i32 %i.aj, 0
  br i1 %.not158, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i16, ptr %i.e, align 2, !tbaa !32  ; 3 uses
  %i.al = and i16 %i.ak, -1024
  %i.am = icmp eq i16 %i.al, -9216
  %i.an = icmp ugt i32 %i.ad, 3
  %or.cond = and i1 %i.an, %i.am
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ap = add i32 %i.l, -1
  %i.aq = lshr i32 %i.ah, 8
  %i.ar = trunc i32 %i.aq to i8
  store i8 %i.ar, ptr %i.x, align 1, !tbaa !30
  %i.as = trunc i32 %i.ah to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !30
  %i.au = lshr i16 %i.ak, 8
  %i.av = trunc nuw i16 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !30
  %i.ax = trunc i16 %i.ak to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store ptr %i.az, ptr %i.a, align 8, !tbaa !46
  %i.ba = add i32 %i.ad, -4
  %.not159 = icmp eq ptr %i.af, null
  br i1 %.not159, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !48
  store <4 x i32> splat (i32 -1), ptr %i.af, align 4, !tbaa !34
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %i.bc = phi ptr [ null, %bb.h ], [ %i.bb, %bb.i ]
  store i32 0, ptr %i.ag, align 4, !tbaa !49
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.bd = icmp eq i16 %i.ai, 0
  br i1 %i.bd, label %bb.k, label %.thread205

bb.k:                                             ; preds = %.thread, %bb.j
  %i.be = phi ptr [ %i.az, %.thread ], [ %i.x, %bb.j ] ; 4 uses
  %i.bf = phi ptr [ %i.bc, %.thread ], [ %i.af, %bb.j ]
  %.0127173 = phi i32 [ 1, %.thread ], [ 0, %bb.j ] ; 6 uses
  %.0132172 = phi i32 [ %i.ap, %.thread ], [ %i.l, %bb.j ] ; 2 uses
  %.0137171 = phi i32 [ %i.ba, %.thread ], [ %i.ad, %bb.j ] ; 3 uses
  %.0141170 = phi ptr [ %i.ao, %.thread ], [ %i.e, %bb.j ] ; 4 uses
  %i.bg = shl i32 %.0132172, 1                    ; 2 uses
  %i.bh = icmp ugt i32 %i.bg, %.0137171
  %i.bi = and i32 %.0137171, -2
  %spec.select = select i1 %i.bh, i32 %i.bi, i32 %i.bg ; 3 uses
  %i.bj = sub i32 %.0137171, %spec.select         ; 4 uses
  %i.bk = lshr exact i32 %spec.select, 1          ; 3 uses
  %i.bl = sub i32 %.0132172, %i.bk                ; 2 uses
  %i.bm = icmp eq ptr %i.bf, null
  %.not161247 = icmp eq i32 %spec.select, 0       ; 2 uses
  br i1 %i.bm, label %.preheader, label %.preheader231

.preheader231:                                    ; preds = %bb.k
  br i1 %.not161247, label %.thread175, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not161247, label %.thread175, label %.lr.ph250

.lr.ph250:                                        ; preds = %.preheader, %bb.p
  %i.bn = phi ptr [ %storemerge, %bb.p ], [ %i.be, %.preheader ] ; 4 uses
  %.1249 = phi i32 [ %i.cs, %bb.p ], [ %i.bk, %.preheader ] ; 5 uses
  %.1142248 = phi ptr [ %.2143, %bb.p ], [ %.0141170, %.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1142248, i64 2 ; 4 uses
  %i.bp = load i16, ptr %.1142248, align 2, !tbaa !32 ; 7 uses
  %i.bq = zext i16 %i.bp to i32                   ; 2 uses
  %i.br = and i32 %i.bq, 63488
  %i.bs = icmp eq i32 %i.br, 55296
  br i1 %i.bs, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph250
  %i.bt = lshr i16 %i.bp, 8
  %i.bu = trunc nuw i16 %i.bt to i8
  store i8 %i.bu, ptr %i.bn, align 1, !tbaa !30
  %i.bv = trunc i16 %i.bp to i8
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph250
  %i.bz = and i32 %i.bq, 1024
  %i.ca = icmp eq i32 %i.bz, 0
  %i.cb = icmp ne i32 %.1249, 1
  %or.cond3 = and i1 %i.cb, %i.ca
  br i1 %or.cond3, label %bb.n, label %.thread183

bb.n:                                             ; preds = %bb.m
  %i.cc = load i16, ptr %i.bo, align 2, !tbaa !32 ; 3 uses
  %i.cd = and i16 %i.cc, -1024
  %i.ce = icmp eq i16 %i.cd, -9216
  br i1 %i.ce, label %bb.o, label %.thread183

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.1142248, i64 4
  %i.cg = add nsw i32 %.1249, -1
  %i.ch = lshr i16 %i.bp, 8
  %i.ci = trunc nuw i16 %i.ch to i8
  store i8 %i.ci, ptr %i.bn, align 1, !tbaa !30
  %i.cj = trunc i16 %i.bp to i8
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !46  ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !30
  %i.cm = lshr i16 %i.cc, 8
  %i.cn = trunc nuw i16 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !30
  %i.cp = trunc i16 %i.cc to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !30
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %storemerge = phi ptr [ %i.by, %bb.l ], [ %i.cr, %bb.o ] ; 3 uses
  %.2143 = phi ptr [ %i.bo, %bb.l ], [ %i.cf, %bb.o ] ; 2 uses
  %.2 = phi i32 [ %.1249, %bb.l ], [ %i.cg, %bb.o ]
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !46
  %i.cs = add nsw i32 %.2, -1                     ; 2 uses
  %.not161 = icmp eq i32 %i.cs, 0
  br i1 %.not161, label %.thread175, label %.lr.ph250, !llvm.loop !50

.lr.ph:                                           ; preds = %.preheader231, %bb.u
  %i.ct = phi ptr [ %i.eh, %bb.u ], [ %i.be, %.preheader231 ] ; 4 uses
  %.3245 = phi i32 [ %i.ei, %bb.u ], [ %i.bk, %.preheader231 ] ; 5 uses
  %.1128244 = phi i32 [ %.2129, %bb.u ], [ %.0127173, %.preheader231 ] ; 7 uses
  %.3144243 = phi ptr [ %.4145, %bb.u ], [ %.0141170, %.preheader231 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.3144243, i64 2 ; 4 uses
  %i.cv = load i16, ptr %.3144243, align 2, !tbaa !32 ; 7 uses
  %i.cw = zext i16 %i.cv to i32                   ; 2 uses
  %i.cx = and i32 %i.cw, 63488
  %i.cy = icmp eq i32 %i.cx, 55296
end_hunk_0
begin_hunk_1_@_ZL30_UTF16BEFromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  store ptr %i.de, ptr %i.a, align 8, !tbaa !46
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !48  ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 %.1128244, ptr %i.df, align 4, !tbaa !34
  %i.dh = add i32 %.1128244, 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.di, ptr %i.b, align 8, !tbaa !48
  store i32 %.1128244, ptr %i.dg, align 4, !tbaa !34
  br label %bb.u

bb.r:                                             ; preds = %.lr.ph
  %i.dj = and i32 %i.cw, 1024
  %i.dk = icmp eq i32 %i.dj, 0
  %i.dl = icmp ne i32 %.3245, 1
  %or.cond5 = and i1 %i.dl, %i.dk
  br i1 %or.cond5, label %bb.s, label %.thread183

bb.s:                                             ; preds = %bb.r
  %i.dm = load i16, ptr %i.cu, align 2, !tbaa !32 ; 3 uses
  %i.dn = and i16 %i.dm, -1024
  %i.do = icmp eq i16 %i.dn, -9216
  br i1 %i.do, label %bb.t, label %.thread183

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %.3144243, i64 4
  %i.dq = add nsw i32 %.3245, -1
  %i.dr = lshr i16 %i.cv, 8
  %i.ds = trunc nuw i16 %i.dr to i8
  store i8 %i.ds, ptr %i.ct, align 1, !tbaa !30
  %i.dt = trunc i16 %i.cv to i8
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !46  ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !30
  %i.dw = lshr i16 %i.dm, 8
  %i.dx = trunc nuw i16 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !30
  %i.dz = trunc i16 %i.dm to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 3
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !30
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !46
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !48  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.ed, ptr %i.b, align 8, !tbaa !48
  %i.ee = insertelement <4 x i32> poison, i32 %.1128244, i64 0
  %i.ef = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ef, ptr %i.ec, align 4, !tbaa !34
  %i.eg = add i32 %.1128244, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.eh = phi ptr [ %i.eb, %bb.t ], [ %i.de, %bb.q ] ; 2 uses
  %.4145 = phi ptr [ %i.dp, %bb.t ], [ %i.cu, %bb.q ] ; 2 uses
  %.2129 = phi i32 [ %i.eg, %bb.t ], [ %i.dh, %bb.q ] ; 2 uses
  %.4 = phi i32 [ %i.dq, %bb.t ], [ %.3245, %bb.q ]
  %i.ei = add nsw i32 %.4, -1                     ; 2 uses
  %.not160 = icmp eq i32 %i.ei, 0
  br i1 %.not160, label %.thread175, label %.lr.ph, !llvm.loop !51

.thread175:                                       ; preds = %bb.u, %bb.p, %.preheader231, %.preheader
  %i.ej = phi ptr [ %i.be, %.preheader ], [ %storemerge, %bb.p ], [ %i.be, %.preheader231 ], [ %i.eh, %bb.u ] ; 2 uses
  %.3130181 = phi i32 [ %.0127173, %.preheader ], [ %.0127173, %bb.p ], [ %.0127173, %.preheader231 ], [ %.2129, %bb.u ] ; 2 uses
  %.5146180 = phi ptr [ %.0141170, %.preheader ], [ %.2143, %bb.p ], [ %.0141170, %.preheader231 ], [ %.4145, %bb.u ] ; 3 uses
  %i.ek = icmp ne i32 %i.bl, 0
  %i.el = icmp ne i32 %i.bj, 0
  %or.cond7 = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond7, label %bb.v, label %.thread193.thread

bb.v:                                             ; preds = %.thread175
  %i.em = getelementptr inbounds nuw i8, ptr %.5146180, i64 2 ; 2 uses
  %i.en = load i16, ptr %.5146180, align 2, !tbaa !32 ; 4 uses
  %i.eo = and i16 %i.en, -2048
  %i.ep = icmp eq i16 %i.eo, -10240
  br i1 %i.ep, label %.thread205, label %.thread193.thread222

.thread193.thread222:                             ; preds = %bb.v
  %i.eq = lshr i16 %i.en, 8
  %i.er = trunc nuw i16 %i.eq to i8
  store i8 %i.er, ptr %i.c, align 1, !tbaa !30
  %i.es = trunc i16 %i.en to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.es, ptr %i.et, align 1, !tbaa !30
  br label %bb.ac

.thread183:                                       ; preds = %bb.r, %bb.s, %bb.m, %bb.n
  %i.eu = phi ptr [ %i.bn, %bb.m ], [ %i.bn, %bb.n ], [ %i.ct, %bb.s ], [ %i.ct, %bb.r ] ; 2 uses
  %.5191 = phi i32 [ %.1249, %bb.m ], [ %.1249, %bb.n ], [ %.3245, %bb.s ], [ %.3245, %bb.r ]
  %.3124190 = phi i16 [ %i.bp, %bb.m ], [ %i.bp, %bb.n ], [ %i.cv, %bb.s ], [ %i.cv, %bb.r ] ; 2 uses
  %.3130189 = phi i32 [ %.0127173, %bb.m ], [ %.0127173, %bb.n ], [ %.1128244, %bb.s ], [ %.1128244, %bb.r ] ; 2 uses
  %.5146188 = phi ptr [ %i.bo, %bb.m ], [ %i.bo, %bb.n ], [ %i.cu, %bb.s ], [ %i.cu, %bb.r ] ; 2 uses
  %i.ev = shl nuw i32 %.5191, 1
  %i.ew = add i32 %i.ev, %i.bj                    ; 2 uses
  %.not162 = icmp eq i16 %.3124190, 0
  br i1 %.not162, label %.thread193, label %.thread205

.thread205:                                       ; preds = %bb.j, %bb.v, %.thread183
  %i.ex = phi ptr [ %i.eu, %.thread183 ], [ %i.x, %bb.j ], [ %i.ej, %bb.v ]
  %.5126215 = phi i16 [ %.3124190, %.thread183 ], [ %i.ai, %bb.j ], [ %i.en, %bb.v ] ; 6 uses
  %.4131214 = phi i32 [ %.3130189, %.thread183 ], [ 0, %bb.j ], [ %.3130181, %bb.v ]
  %.2139213 = phi i32 [ %i.ew, %.thread183 ], [ %i.ad, %bb.j ], [ %i.bj, %bb.v ]
  %.7212 = phi ptr [ %.5146188, %.thread183 ], [ %i.e, %bb.j ], [ %i.em, %bb.v ] ; 6 uses
  %i.ey = and i16 %.5126215, 1024
  %i.ez = icmp eq i16 %i.ey, 0
  br i1 %i.ez, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.thread205
  %i.fa = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.fb = icmp ult ptr %.7212, %i.fa
  br i1 %i.fb, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.fc = load i16, ptr %.7212, align 2, !tbaa !32 ; 3 uses
  %i.fd = and i16 %i.fc, -1024
  %i.fe = icmp eq i16 %i.fd, -9216
  br i1 %i.fe, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ff = getelementptr inbounds nuw i8, ptr %.7212, i64 2
  %i.fg = lshr i16 %.5126215, 8
  %i.fh = trunc nuw i16 %i.fg to i8
  store i8 %i.fh, ptr %i.c, align 1, !tbaa !30
  %i.fi = trunc i16 %.5126215 to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !30
  %i.fk = lshr i16 %i.fc, 8
  %i.fl = trunc nuw i16 %i.fk to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !30
  %i.fn = trunc i16 %i.fc to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !30
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  store i32 12, ptr %1, align 4, !tbaa !16
  br label %bb.ab

bb.aa:                                            ; preds = %.thread205
  store i32 12, ptr %1, align 4, !tbaa !16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.aa
  %.8 = phi ptr [ %i.ff, %bb.y ], [ %.7212, %bb.z ], [ %.7212, %bb.w ], [ %.7212, %bb.aa ]
  %.3135 = phi i32 [ 4, %bb.y ], [ 0, %bb.z ], [ 0, %bb.w ], [ 0, %bb.aa ]
  %.6 = phi i16 [ 0, %bb.y ], [ %.5126215, %bb.z ], [ %.5126215, %bb.w ], [ %.5126215, %bb.aa ]
  %i.fp = zext i16 %.6 to i32
  store i32 %i.fp, ptr %i.ag, align 4, !tbaa !49
  br label %.thread193

.thread193:                                       ; preds = %bb.ab, %.thread183
  %i.fq = phi ptr [ %i.ex, %bb.ab ], [ %i.eu, %.thread183 ]
  %.4131201 = phi i32 [ %.4131214, %bb.ab ], [ %.3130189, %.thread183 ]
  %.2139200 = phi i32 [ %.2139213, %bb.ab ], [ %i.ew, %.thread183 ]
  %.9 = phi ptr [ %.8, %bb.ab ], [ %.5146188, %.thread183 ] ; 2 uses
  %.4136 = phi i32 [ %.3135, %bb.ab ], [ %i.bl, %.thread183 ] ; 2 uses
  %.not163 = icmp eq i32 %.4136, 0
  br i1 %.not163, label %.thread193.thread, label %bb.ac

bb.ac:                                            ; preds = %.thread193.thread222, %.thread193
  %.4136230 = phi i32 [ 2, %.thread193.thread222 ], [ %.4136, %.thread193 ]
  %.9229 = phi ptr [ %i.em, %.thread193.thread222 ], [ %.9, %.thread193 ]
  %.4131201228 = phi i32 [ %.3130181, %.thread193.thread222 ], [ %.4131201, %.thread193 ]
  %i.fr = load ptr, ptr %i.y, align 8, !tbaa !44
  call void @ucnv_fromUWriteBytes_78(ptr noundef %i.o, ptr noundef nonnull %i.c, i32 noundef %.4136230, ptr noundef nonnull %i.a, ptr noundef %i.fr, ptr noundef nonnull %i.b, i32 noundef %.4131201228, ptr noundef %1)
  %i.fs = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = trunc i64 %i.fw to i32
  br label %.thread193.thread

.thread193.thread:                                ; preds = %.thread175, %bb.ac, %.thread193
  %i.fy = phi ptr [ %i.ft, %bb.ac ], [ %i.fq, %.thread193 ], [ %i.ej, %.thread175 ]
  %.9221 = phi ptr [ %.9229, %bb.ac ], [ %.9, %.thread193 ], [ %.5146180, %.thread175 ] ; 2 uses
  %.3140 = phi i32 [ %i.fx, %bb.ac ], [ %.2139200, %.thread193 ], [ %i.bj, %.thread175 ]
  %i.fz = load i32, ptr %1, align 4, !tbaa !16
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %.thread193.thread
  %i.gb = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.gc = icmp ult ptr %.9221, %i.gb
  %i.gd = icmp eq i32 %.3140, 0
  %or.cond9 = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond9, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 15, ptr %1, align 4, !tbaa !16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.thread193.thread
  store ptr %.9221, ptr %i.d, align 8, !tbaa !40
  store ptr %i.fy, ptr %i.w, align 8, !tbaa !45
  %i.ge = load ptr, ptr %i.b, align 8, !tbaa !48
  store ptr %i.ge, ptr %i.ae, align 8, !tbaa !47
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -9, 10559488) i32 @_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14
  %i.f = icmp slt i32 %i.e, 8
  br i1 %i.f, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 5 uses
  %.not = icmp ult ptr %i.h, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 8, ptr %1, align 4, !tbaa !16
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 4 uses
  %i.l = icmp ugt ptr %i.k, %i.j
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.n = load i8, ptr %i.h, align 1, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.n, ptr %i.o, align 1, !tbaa !30
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i8 1, ptr %i.q, align 8, !tbaa !31
  store ptr %i.m, ptr %i.g, align 8, !tbaa !24
  store i32 11, ptr %1, align 4, !tbaa !16
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.h, align 1, !tbaa !30
  %i.s = zext i8 %i.r to i32                      ; 3 uses
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !30
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w               ; 2 uses
  %i.y = and i32 %i.s, 248
  %i.z = icmp eq i32 %i.y, 216
  br i1 %i.z, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aa = and i32 %i.s, 4
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %.not58 = icmp ugt ptr %i.ac, %i.j
  br i1 %.not58, label %iter.check, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.k, align 1, !tbaa !30
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = and i32 %i.ae, 252
  %i.ag = icmp eq i32 %i.af, 220
  br i1 %i.ag, label %bb.j, label %.thread

iter.check:                                       ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 6 uses
  %i.ai = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.aj = ptrtoint ptr %i.h to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 9 uses
  %i.al = trunc i64 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %i.al, ptr %i.am, align 8, !tbaa !31
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.ak
  %min.iters.check = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = sub i64 %i.c, %i.aj
  %i.ao = add i64 %i.an, 64
  %diff.check = icmp ult i64 %i.ao, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check69 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %i.ak, 28
  %n.vec = and i64 %i.ak, -32                     ; 5 uses
  %i.aq = getelementptr i8, ptr %i.h, i64 %n.vec
  %i.ar = getelementptr i8, ptr %i.ah, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %index ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.ah, i64 %index ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !30
  %wide.load71 = load <16 x i8>, ptr %i.as, align 1, !tbaa !30
  %i.at = getelementptr i8, ptr %next.gep70, i64 16
  store <16 x i8> %wide.load, ptr %next.gep70, align 1, !tbaa !30
  store <16 x i8> %wide.load71, ptr %i.at, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.thread62, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.ak, -4                    ; 4 uses
  %i.av = getelementptr i8, ptr %i.h, i64 %n.vec73
  %i.aw = getelementptr i8, ptr %i.ah, i64 %n.vec73
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 3 uses
  %next.gep75 = getelementptr i8, ptr %i.h, i64 %index74
  %next.gep76 = getelementptr i8, ptr %i.ah, i64 %index74
  %wide.load77 = load <4 x i8>, ptr %next.gep75, align 1, !tbaa !30
  store <4 x i8> %wide.load77, ptr %next.gep76, align 1, !tbaa !30
  %index.next78 = add nuw i64 %index74, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !56

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n79 = icmp eq i64 %i.ak, %n.vec73
  br i1 %cmp.n79, label %.thread62, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.151.ph = phi ptr [ %i.h, %iter.check ], [ %i.h, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 3 uses
  %.048.ph = phi ptr [ %i.ah, %iter.check ], [ %i.ah, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ] ; 2 uses
  %.151.ph82 = ptrtoaddr ptr %.151.ph to i64      ; 2 uses
  %i.ay = sub i64 %i.ai, %.151.ph82
  %xtraiter = and i64 %i.ay, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.151.prol = phi ptr [ %i.az, %vec.epilog.scalar.ph.prol ], [ %.151.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.048.prol = phi ptr [ %i.bb, %vec.epilog.scalar.ph.prol ], [ %.048.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.151.prol, i64 1 ; 2 uses
  %i.ba = load i8, ptr %.151.prol, align 1, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %.048.prol, i64 1 ; 2 uses
  store i8 %i.ba, ptr %.048.prol, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !57

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.151.unr = phi ptr [ %.151.ph, %vec.epilog.scalar.ph.preheader ], [ %i.az, %vec.epilog.scalar.ph.prol ]
  %.048.unr = phi ptr [ %.048.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bb, %vec.epilog.scalar.ph.prol ]
  %i.bc = sub i64 %.151.ph82, %i.ai
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.thread62, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.151 = phi ptr [ %i.bz, %vec.epilog.scalar.ph ], [ %.151.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.048 = phi ptr [ %i.cb, %vec.epilog.scalar.ph ], [ %.048.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.151, i64 1
  %i.bf = load i8, ptr %.151, align 1, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.048, i64 1
  store i8 %i.bf, ptr %.048, align 1, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %.151, i64 2
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %.048, i64 2
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.151, i64 3
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %.048, i64 3
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %.151, i64 4
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %.048, i64 4
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %.151, i64 5
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %.048, i64 5
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %.151, i64 6
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %.048, i64 6
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %.151, i64 7
end_hunk_1
begin_hunk_2_@_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.cn = load i8, ptr %i.u, align 1, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !30
  store i32 12, ptr %1, align 4, !tbaa !16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread62, %.thread, %bb.f
  %.3 = phi ptr [ %i.k, %.thread ], [ %i.ac, %bb.j ], [ %i.k, %bb.f ], [ %scevgep, %.thread62 ]
  %.2 = phi i32 [ 65535, %.thread ], [ %i.cj, %bb.j ], [ %i.x, %bb.f ], [ 65535, %.thread62 ]
  store ptr %.3, ptr %i.g, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.e, %bb.c
  %.0 = phi i32 [ %.2, %bb.k ], [ 65535, %bb.c ], [ 65535, %bb.e ], [ -9, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef nonnull ptr @_ZL15_UTF16BEGetNamePK10UConverter(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = and i32 %i.b, 15
  %i.d = icmp eq i32 %i.c, 0
  %.str..str.1 = select i1 %i.d, ptr @.str, ptr @.str.1
  ret ptr %.str..str.1
}

declare void @ucnv_getNonSurrogateUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL26_UTF16ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
  %i.k = icmp ult ptr %i.d, %i.f
  br i1 %i.k, label %.lr.ph.lr.ph, label %.loopexit

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 4 uses
  %i.n = getelementptr i8, ptr %i.b, i64 48       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.0.ph133 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.1, %.outer ] ; 3 uses
  %.077.ph132 = phi i32 [ %i.j, %.lr.ph.lr.ph ], [ %.2, %.outer ]
  %.080.ph131 = phi ptr [ %i.d, %.lr.ph.lr.ph ], [ %.282, %.outer ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.077113 = phi i32 [ %.077.ph132, %.lr.ph ], [ %.3, %bb.o ] ; 3 uses
  %.080112 = phi ptr [ %.080.ph131, %.lr.ph ], [ %.383, %bb.o ] ; 11 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !16
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %.077113, label %bb.o [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 8, label %bb.m
    i32 9, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.080112, i64 1
  %i.s = load i8, ptr %.080112, align 1, !tbaa !30
  store i8 %i.s, ptr %i.l, align 1, !tbaa !30
  store i8 1, ptr %i.m, align 8, !tbaa !31
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr %.080112, align 1, !tbaa !30 ; 3 uses
  %i.u = load i8, ptr %i.l, align 1, !tbaa !30    ; 2 uses
  %i.v = icmp eq i8 %i.u, -2
  %i.w = icmp eq i8 %i.t, -1
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  %.val93 = load ptr, ptr %i.n, align 8, !tbaa !60
  %.not108 = icmp eq ptr %.val93, @_UTF16LEData_78
  br i1 %.not108, label %.thread101, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.u, -1
  %i.y = icmp eq i8 %i.t, -2
  %or.cond5 = select i1 %i.x, i1 %i.y, i1 false
  %.val94 = load ptr, ptr %i.n, align 8, !tbaa !60 ; 4 uses
  br i1 %or.cond5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq ptr %.val94, @_UTF16Data_78
  %i.aa = icmp eq ptr %.val94, @_UTF16v2Data_78
  %spec.select.i = or i1 %i.z, %i.aa
  br i1 %spec.select.i, label %bb.j, label %.thread104

bb.h:                                             ; preds = %bb.f
  %.not107 = icmp eq ptr %.val94, @_UTF16BEData_78
  br i1 %.not107, label %.thread101, label %bb.i

bb.i:                                             ; preds = %.split, %bb.h
  %.17899 = phi i32 [ 8, %.split ], [ 9, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.080112, i64 1 ; 2 uses
  store i8 0, ptr %i.m, align 8, !tbaa !31
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  br label %.outer

bb.j:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.o, align 8, !tbaa !8
  %i.ai = and i32 %i.ah, 15
  %.not = icmp eq i32 %i.ai, 1
  br i1 %.not, label %.thread101, label %.thread104

.thread104:                                       ; preds = %bb.g, %bb.j
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %.not87 = icmp eq ptr %.080112, %i.aj
  br i1 %.not87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread104
  store i8 0, ptr %i.m, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread104
  %.181 = phi ptr [ %i.aj, %bb.k ], [ %.080112, %.thread104 ]
  %i.ak = icmp eq ptr %.val94, @_UTF16LEData_78
  %.92 = select i1 %i.ak, i32 9, i32 8
  br label %.outer

.thread101:                                       ; preds = %bb.j, %bb.h, %.split
  %i.al = phi i8 [ -2, %bb.h ], [ -1, %.split ], [ %i.t, %bb.j ]
  %.17897103 = phi i32 [ 8, %bb.h ], [ 9, %.split ], [ 8, %bb.j ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 %i.al, ptr %i.am, align 2, !tbaa !30
  store i8 2, ptr %i.m, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %.080112, i64 1
  store ptr %i.an, ptr %i.c, align 8, !tbaa !24
  store i32 %.17897103, ptr %i.i, align 4, !tbaa !14
  store i32 18, ptr %1, align 4, !tbaa !16
  br label %bb.v

.outer:                                           ; preds = %bb.l, %bb.i
  %.282 = phi ptr [ %i.ab, %bb.i ], [ %.181, %bb.l ] ; 3 uses
  %.2 = phi i32 [ %.17899, %bb.i ], [ %.92, %bb.l ] ; 3 uses
  %.1 = phi i32 [ %i.ag, %bb.i ], [ %.0.ph133, %bb.l ] ; 2 uses
  store i32 %.2, ptr %i.i, align 4, !tbaa !14
  %i.ao = icmp ult ptr %.282, %i.f
  br i1 %i.ao, label %.lr.ph, label %.critedge, !llvm.loop !61

bb.m:                                             ; preds = %bb.c
  store ptr %.080112, ptr %i.c, align 8, !tbaa !24
  tail call void @_ZL28_UTF16BEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef %0, ptr noundef nonnull %1)
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !24
  br label %bb.o

bb.n:                                             ; preds = %bb.c
  store ptr %.080112, ptr %i.c, align 8, !tbaa !24
  tail call void @_ZL28_UTF16LEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef %0, ptr noundef nonnull %1)
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.n, %bb.m, %bb.d
  %.383 = phi ptr [ %.080112, %bb.c ], [ %i.r, %bb.d ], [ %i.ap, %bb.m ], [ %i.aq, %bb.n ] ; 3 uses
  %.3 = phi i32 [ %.077113, %bb.c ], [ 1, %bb.d ], [ 8, %bb.m ], [ 9, %bb.n ] ; 2 uses
  %i.ar = icmp ult ptr %.383, %i.f
  br i1 %i.ar, label %bb.b, label %.critedge, !llvm.loop !61

.critedge:                                        ; preds = %.outer, %bb.b, %bb.o
  %.0.ph.lcssa = phi i32 [ %.0.ph133, %bb.b ], [ %.0.ph133, %bb.o ], [ %.1, %.outer ] ; 3 uses
  %.080.lcssa = phi ptr [ %.080112, %bb.b ], [ %.383, %bb.o ], [ %.282, %.outer ] ; 4 uses
  %.077.lcssa = phi i32 [ %.077113, %bb.b ], [ %.3, %bb.o ], [ %.2, %.outer ] ; 4 uses
  %i.as = icmp ne ptr %i.h, null
  %i.at = icmp ne i32 %.0.ph.lcssa, 0
  %or.cond7 = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond7, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.critedge
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !29  ; 3 uses
  %i.av = icmp ult ptr %i.h, %i.au
  br i1 %i.av, label %.lr.ph138.preheader, label %.loopexit

.lr.ph138.preheader:                              ; preds = %bb.p
  %i.aw = ptrtoaddr ptr %i.au to i64
  %i.ax = ptrtoaddr ptr %i.h to i64               ; 2 uses
  %2 = add i64 %i.ax, 4
  %3 = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 %2)
  %i.ay = xor i64 %i.ax, -1
  %i.az = add i64 %3, %i.ay                       ; 2 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 28
  br i1 %min.iters.check, label %.lr.ph138.preheader183, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph138.preheader
  %n.vec = and i64 %i.bb, 9223372036854775800     ; 3 uses
  %i.bc = shl i64 %n.vec, 2
  %i.bd = getelementptr i8, ptr %i.h, i64 %i.bc
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0.ph.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.be ; 3 uses
  %i.bf = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !34
  %wide.load182 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !34
  %i.bg = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.bh = add nsw <4 x i32> %wide.load182, %broadcast.splat
  store <4 x i32> %i.bg, ptr %next.gep, align 4, !tbaa !34
  store <4 x i32> %i.bh, ptr %i.bf, align 4, !tbaa !34
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph138.preheader183

.lr.ph138.preheader183:                           ; preds = %.lr.ph138.preheader, %middle.block
  %.079137.ph = phi ptr [ %i.h, %.lr.ph138.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader183, %.lr.ph138
  %.079137 = phi ptr [ %i.bj, %.lr.ph138 ], [ %.079137.ph, %.lr.ph138.preheader183 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.079137, i64 4 ; 2 uses
  %i.bk = load i32, ptr %.079137, align 4, !tbaa !34
  %i.bl = add nsw i32 %i.bk, %.0.ph.lcssa
  store i32 %i.bl, ptr %.079137, align 4, !tbaa !34
  %i.bm = icmp ult ptr %i.bj, %i.au
  br i1 %i.bm, label %.lr.ph138, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %.lr.ph138, %middle.block, %bb.a, %bb.p, %.critedge
  %.077.lcssa159 = phi i32 [ %i.j, %bb.a ], [ %.077.lcssa, %.critedge ], [ %.077.lcssa, %bb.p ], [ %.077.lcssa, %middle.block ], [ %.077.lcssa, %.lr.ph138 ] ; 2 uses
  %.080.lcssa158 = phi ptr [ %i.d, %bb.a ], [ %.080.lcssa, %.critedge ], [ %.080.lcssa, %bb.p ], [ %.080.lcssa, %middle.block ], [ %.080.lcssa, %.lr.ph138 ] ; 2 uses
  store ptr %.080.lcssa158, ptr %i.c, align 8, !tbaa !24
  %i.bn = icmp eq ptr %.080.lcssa158, %i.f
  br i1 %i.bn, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.loopexit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !64
  %.not86 = icmp eq i8 %i.bp, 0
  br i1 %.not86, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i32 %.077.lcssa159, label %bb.u [
    i32 9, label %bb.t
    i32 8, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  tail call void @_ZL28_UTF16BEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @_ZL28_UTF16LEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.q, %.loopexit
  store i32 %.077.lcssa159, ptr %i.i, align 4, !tbaa !14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread101
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL28_UTF16LEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = icmp slt i32 %i.d, 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZL26_UTF16ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 4 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !26
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.aw, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %.not = icmp ult ptr %i.s, %i.u
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %1, align 4, !tbaa !16
  br label %bb.aw

bb.g:                                             ; preds = %bb.e
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 1
  %i.z = trunc i64 %i.y to i32                    ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  %.not249 = icmp eq i32 %i.ad, 0
  br i1 %.not249, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 1, ptr %i.ag, align 8, !tbaa !31
  store i32 0, ptr %i.ac, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.not250 = icmp eq i8 %.pre, 0
  br i1 %.not250, label %bb.z, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.aj = phi ptr [ %i.ah, %.thread ], [ %i.ai, %bb.h ] ; 3 uses
  %i.ak = phi i8 [ 1, %.thread ], [ %.pre, %bb.h ]
  %i.al = sext i8 %i.ak to i32                    ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 3 uses
  %i.an = sub nsw i32 4, %i.al                    ; 2 uses
  %i.ao = trunc i64 %i.j to i32
  %i.ap = add i32 %i.al, %i.ao
  %i.aq = add i32 %i.ap, -4
  %i.ar = trunc i64 %i.k to i32
  %i.as = sub i32 %i.aq, %i.ar                    ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.y, %bb.i
  %.0219 = phi ptr [ %i.g, %bb.i ], [ %i.at, %bb.y ] ; 4 uses
  %.0191 = phi i32 [ %i.m, %bb.i ], [ %i.az, %bb.y ]
  %.0184 = phi i32 [ %i.al, %bb.i ], [ %i.av, %bb.y ] ; 2 uses
  %.0178 = phi i32 [ 0, %bb.i ], [ %i.ay, %bb.y ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0219, i64 1 ; 3 uses
  %i.au = load i8, ptr %.0219, align 1, !tbaa !30
  %i.av = add i32 %.0184, 1                       ; 3 uses
  %i.aw = zext i32 %.0184 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aw
  store i8 %i.au, ptr %i.ax, align 1, !tbaa !30
  %i.ay = add i32 %.0178, 1                       ; 3 uses
  %i.az = add i32 %.0191, -1                      ; 4 uses
  switch i32 %i.av, label %bb.y [
    i32 2, label %bb.k
    i32 4, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.ba = load i16, ptr %i.am, align 1            ; 3 uses
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = and i32 %i.bb, 63488
  %i.bd = icmp eq i32 %i.bc, 55296
  br i1 %i.bd, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.ba, ptr %i.s, align 2, !tbaa !32
  %.not252 = icmp eq ptr %i.ab, null
  br i1 %.not252, label %bb.n, label %bb.m
end_hunk_2
begin_hunk_3_@_ZL28_UTF16LEToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %.4182 = phi i32 [ %.1179, %bb.ac ], [ %.2180, %bb.ah ]
  %.5 = phi i16 [ %i.cz, %bb.ac ], [ %i.dw, %bb.ah ]
  %i.ex = icmp eq i32 %.7, 0
  br i1 %i.ex, label %.thread283, label %.thread269

.thread269:                                       ; preds = %bb.ai, %bb.ad, %.loopexit
  %.5281 = phi i16 [ %.5, %.loopexit ], [ %i.cz, %bb.ad ], [ %i.dw, %bb.ai ]
  %.4182280 = phi i32 [ %.4182, %.loopexit ], [ %.1179, %bb.ad ], [ %.2180, %bb.ai ]
  %.7279 = phi i32 [ %.7, %.loopexit ], [ %.3187, %bb.ad ], [ %.5189, %bb.ai ] ; 2 uses
  %.8278 = phi ptr [ %.8, %.loopexit ], [ null, %bb.ad ], [ %.6206, %bb.ai ]
  %.8216277 = phi ptr [ %.8216, %.loopexit ], [ %.4212, %bb.ad ], [ %.6214, %bb.ai ]
  %.8227276 = phi ptr [ %.8227, %.loopexit ], [ %i.da, %bb.ad ], [ %i.dx, %bb.ai ]
  %i.ey = shl i32 %.7279, 1
  %i.ez = add i32 %i.cv, -2
  %i.fa = add i32 %i.ez, %i.ey
  %i.fb = add i32 %.7279, %i.cx
  br label %bb.al

bb.al:                                            ; preds = %.thread269, %bb.z
  %.9228 = phi ptr [ %.3222, %bb.z ], [ %.8227276, %.thread269 ] ; 7 uses
  %.9217 = phi ptr [ %.3211, %bb.z ], [ %.8216277, %.thread269 ] ; 6 uses
  %.9 = phi ptr [ %.5205, %bb.z ], [ %.8278, %.thread269 ] ; 7 uses
  %.4199 = phi i32 [ %.3198, %bb.z ], [ %i.fb, %.thread269 ] ; 3 uses
  %.2193 = phi i32 [ %.1192, %bb.z ], [ %i.fa, %.thread269 ] ; 5 uses
  %.5183 = phi i32 [ %.1179, %bb.z ], [ %.4182280, %.thread269 ]
  %.6 = phi i16 [ %.4, %bb.z ], [ %.5281, %.thread269 ] ; 4 uses
  %.not256 = icmp eq i16 %.6, 0
  br i1 %.not256, label %.thread283, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i16 %.6, ptr %i.fc, align 1
  store i8 2, ptr %i.co, align 8, !tbaa !31
  %i.fd = and i16 %.6, 1024
  %i.fe = icmp eq i16 %i.fd, 0
  br i1 %i.fe, label %bb.an, label %.thread283.sink.split

bb.an:                                            ; preds = %bb.am
  %i.ff = icmp ugt i32 %.2193, 1
  br i1 %i.ff, label %bb.ao, label %.thread283

bb.ao:                                            ; preds = %bb.an
  %i.fg = getelementptr inbounds nuw i8, ptr %.9228, i64 1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !30
  %i.fi = zext i8 %i.fh to i16                    ; 2 uses
  %i.fj = shl nuw i16 %i.fi, 8
  %i.fk = load i8, ptr %.9228, align 1, !tbaa !30
  %i.fl = zext i8 %i.fk to i16
  %i.fm = or disjoint i16 %i.fj, %i.fl
  %i.fn = and i16 %i.fi, 252
  %i.fo = icmp eq i16 %i.fn, 220
  br i1 %i.fo, label %bb.ap, label %.thread283.sink.split

bb.ap:                                            ; preds = %bb.ao
  %i.fp = getelementptr inbounds nuw i8, ptr %.9228, i64 2
  %i.fq = add i32 %.2193, -2
  %i.fr = getelementptr inbounds nuw i8, ptr %.9217, i64 2
  store i16 %.6, ptr %.9217, align 2, !tbaa !32
  %.not257 = icmp eq ptr %.9, null
  br i1 %.not257, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %.9, i64 4
  store i32 %.5183, ptr %.9, align 4, !tbaa !34
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.10 = phi ptr [ %i.fs, %bb.aq ], [ null, %bb.ap ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i16 %i.fm, ptr %i.ft, align 8, !tbaa !32
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 93
  store i8 1, ptr %i.fu, align 1, !tbaa !35
  store i8 0, ptr %i.co, align 8, !tbaa !31
  br label %.thread283.sink.split

.thread283.sink.split:                            ; preds = %bb.am, %bb.ao, %bb.ar
  %.sink421 = phi i32 [ 12, %bb.ao ], [ 15, %bb.ar ], [ 12, %bb.am ]
  %.ph = phi i8 [ 2, %bb.ao ], [ 0, %bb.ar ], [ 2, %bb.am ]
  %.10229.ph = phi ptr [ %.9228, %bb.ao ], [ %i.fp, %bb.ar ], [ %.9228, %bb.am ]
  %.10218.ph = phi ptr [ %.9217, %bb.ao ], [ %i.fr, %bb.ar ], [ %.9217, %bb.am ]
  %.11.ph = phi ptr [ %.9, %bb.ao ], [ %.10, %bb.ar ], [ %.9, %bb.am ]
  %.3194.ph = phi i32 [ 1, %bb.ao ], [ %i.fq, %bb.ar ], [ %.2193, %bb.am ]
  store i32 %.sink421, ptr %1, align 4, !tbaa !16
  br label %.thread283

.thread283:                                       ; preds = %bb.ak, %bb.af, %.thread283.sink.split, %.loopexit, %bb.an, %bb.al
  %i.fv = phi i8 [ %i.cp, %.loopexit ], [ %.ph, %.thread283.sink.split ], [ 2, %bb.an ], [ %i.cp, %bb.af ], [ %i.cp, %bb.al ], [ %i.cp, %bb.ak ] ; 2 uses
  %.4199292 = phi i32 [ %i.cx, %.loopexit ], [ %.4199, %.thread283.sink.split ], [ %.4199, %bb.an ], [ %i.cx, %bb.af ], [ %.4199, %bb.al ], [ %i.cx, %bb.ak ]
  %.10229 = phi ptr [ %.8227, %.loopexit ], [ %.10229.ph, %.thread283.sink.split ], [ %.9228, %bb.an ], [ %.5224, %bb.af ], [ %.9228, %bb.al ], [ %.7226, %bb.ak ] ; 4 uses
  %.10218 = phi ptr [ %.8216, %.loopexit ], [ %.10218.ph, %.thread283.sink.split ], [ %.9217, %bb.an ], [ %.5213, %bb.af ], [ %.9217, %bb.al ], [ %.7215, %bb.ak ]
  %.11 = phi ptr [ %.8, %.loopexit ], [ %.11.ph, %.thread283.sink.split ], [ %.9, %bb.an ], [ null, %bb.af ], [ %.9, %bb.al ], [ %.7207, %bb.ak ]
  %.3194 = phi i32 [ %i.cv, %.loopexit ], [ %.3194.ph, %.thread283.sink.split ], [ %.2193, %bb.an ], [ %i.cv, %bb.af ], [ %.2193, %bb.al ], [ %i.cv, %bb.ak ]
  %i.fw = load i32, ptr %1, align 4, !tbaa !16
  %i.fx = icmp slt i32 %i.fw, 1
  %i.fy = icmp ne i32 %.3194, 0
  %or.cond7 = and i1 %i.fy, %i.fx
  br i1 %or.cond7, label %bb.as, label %bb.av

bb.as:                                            ; preds = %.thread283
  %i.fz = icmp eq i32 %.4199292, 0
  br i1 %i.fz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 15, ptr %1, align 4, !tbaa !16
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ga = getelementptr inbounds nuw i8, ptr %.10229, i64 1
  %i.gb = load i8, ptr %.10229, align 1, !tbaa !30
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.gd = add i8 %i.fv, 1
  store i8 %i.gd, ptr %i.co, align 8, !tbaa !31
  %i.ge = sext i8 %i.fv to i64
  %i.gf = getelementptr inbounds i8, ptr %i.gc, i64 %i.ge
  store i8 %i.gb, ptr %i.gf, align 1, !tbaa !30
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.thread283
  %.11230 = phi ptr [ %.10229, %bb.at ], [ %i.ga, %bb.au ], [ %.10229, %.thread283 ]
  store ptr %.11230, ptr %i.f, align 8, !tbaa !24
  store ptr %.10218, ptr %i.r, align 8, !tbaa !27
  store ptr %.11, ptr %i.aa, align 8, !tbaa !29
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge, %bb.d, %bb.av, %bb.f, %bb.b
  ret void
}

declare void @ucnv_fromUWriteBytes_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL12_UTF16LEOpenP10UConverterP18UConverterLoadArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = and i32 %i.b, 14
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 1                          ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 3
  %spec.select.i = xor i32 %i.f, 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %spec.select.i, ptr %i.g, align 4, !tbaa !14
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZL13_UTF16LEResetP10UConverter21UConverterResetChoice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.h, align 8, !tbaa !15
  br label %_ZL13_UTF16LEResetP10UConverter21UConverterResetChoice.exit

bb.d:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !16
  br label %_ZL13_UTF16LEResetP10UConverter21UConverterResetChoice.exit

_ZL13_UTF16LEResetP10UConverter21UConverterResetChoice.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL13_UTF16LEResetP10UConverter21UConverterResetChoice(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp slt i32 %1, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = and i32 %i.c, 15                         ; 2 uses
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.d, 0
  %spec.select = select i1 %i.e, i32 8, i32 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %spec.select, ptr %i.f, align 4, !tbaa !14
  %.not = icmp ne i32 %1, 1
  %i.g = and i32 %i.c, 15
  %i.h = icmp eq i32 %i.g, 1
  %or.cond = select i1 %.not, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

.thread:                                          ; preds = %bb.a
  %.old7 = icmp eq i32 %i.d, 1
  br i1 %.old7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.i, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL30_UTF16LEFromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca [4 x i8], align 2                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 1
  %i.l = trunc i64 %i.k to i32                    ; 3 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !15
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @ucnv_fromUWriteBytes_78(ptr noundef nonnull %i.o, ptr noundef nonnull @_ZZL30_UTF16LEFromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCodeE3bom, i32 noundef 2, ptr noundef nonnull %i.s, ptr noundef %i.u, ptr noundef nonnull %i.v, i32 noundef -1, ptr noundef %1)
  store i32 0, ptr %i.p, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45   ; 10 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44   ; 2 uses
  %.not = icmp ult ptr %i.x, %i.z
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 15, ptr %1, align 4, !tbaa !16
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32                  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 5 uses
  store ptr %i.af, ptr %i.b, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 84 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !49 ; 4 uses
  %i.ai = trunc i32 %i.ah to i16                  ; 2 uses
  %i.aj = and i32 %i.ah, 65535
  %.not158 = icmp eq i32 %i.aj, 0
  br i1 %.not158, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i16, ptr %i.e, align 2, !tbaa !32  ; 3 uses
  %i.al = and i16 %i.ak, -1024
  %i.am = icmp eq i16 %i.al, -9216
  %i.an = icmp ugt i32 %i.ad, 3
  %or.cond = and i1 %i.an, %i.am
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ap = add i32 %i.l, -1
  %i.aq = trunc i32 %i.ah to i8
  store i8 %i.aq, ptr %i.x, align 1, !tbaa !30
  %i.ar = lshr i32 %i.ah, 8
  %i.as = trunc i32 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !30
  %i.au = trunc i16 %i.ak to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !30
  %i.aw = lshr i16 %i.ak, 8
  %i.ax = trunc nuw i16 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store ptr %i.az, ptr %i.a, align 8, !tbaa !46
  %i.ba = add i32 %i.ad, -4
  %.not159 = icmp eq ptr %i.af, null
  br i1 %.not159, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !48
  store <4 x i32> splat (i32 -1), ptr %i.af, align 4, !tbaa !34
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  %i.bc = phi ptr [ null, %bb.h ], [ %i.bb, %bb.i ]
  store i32 0, ptr %i.ag, align 4, !tbaa !49
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.bd = icmp eq i16 %i.ai, 0
  br i1 %i.bd, label %bb.k, label %.thread205

bb.k:                                             ; preds = %.thread, %bb.j
  %i.be = phi ptr [ %i.az, %.thread ], [ %i.x, %bb.j ] ; 4 uses
  %i.bf = phi ptr [ %i.bc, %.thread ], [ %i.af, %bb.j ]
  %.0128173 = phi i32 [ 1, %.thread ], [ 0, %bb.j ] ; 6 uses
  %.0133172 = phi i32 [ %i.ap, %.thread ], [ %i.l, %bb.j ] ; 2 uses
  %.0138171 = phi i32 [ %i.ba, %.thread ], [ %i.ad, %bb.j ] ; 3 uses
  %.0142170 = phi ptr [ %i.ao, %.thread ], [ %i.e, %bb.j ] ; 4 uses
  %i.bg = shl i32 %.0133172, 1                    ; 2 uses
  %i.bh = icmp ugt i32 %i.bg, %.0138171
  %i.bi = and i32 %.0138171, -2
  %spec.select = select i1 %i.bh, i32 %i.bi, i32 %i.bg ; 3 uses
  %i.bj = sub i32 %.0138171, %spec.select         ; 4 uses
  %i.bk = lshr exact i32 %spec.select, 1          ; 3 uses
  %i.bl = sub i32 %.0133172, %i.bk                ; 2 uses
  %i.bm = icmp eq ptr %i.bf, null
  %.not161247 = icmp eq i32 %spec.select, 0       ; 2 uses
  br i1 %i.bm, label %.preheader, label %.preheader231

.preheader231:                                    ; preds = %bb.k
  br i1 %.not161247, label %.thread175, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not161247, label %.thread175, label %.lr.ph250

.lr.ph250:                                        ; preds = %.preheader, %bb.p
  %i.bn = phi ptr [ %storemerge, %bb.p ], [ %i.be, %.preheader ] ; 4 uses
  %.1249 = phi i32 [ %i.cs, %bb.p ], [ %i.bk, %.preheader ] ; 5 uses
  %.1143248 = phi ptr [ %.2144, %bb.p ], [ %.0142170, %.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1143248, i64 2 ; 4 uses
  %i.bp = load i16, ptr %.1143248, align 2, !tbaa !32 ; 7 uses
  %i.bq = zext i16 %i.bp to i32                   ; 2 uses
  %i.br = and i32 %i.bq, 63488
  %i.bs = icmp eq i32 %i.br, 55296
  br i1 %i.bs, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph250
  %i.bt = trunc i16 %i.bp to i8
  store i8 %i.bt, ptr %i.bn, align 1, !tbaa !30
  %i.bu = lshr i16 %i.bp, 8
  %i.bv = trunc nuw i16 %i.bu to i8
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph250
  %i.bz = and i32 %i.bq, 1024
  %i.ca = icmp eq i32 %i.bz, 0
  %i.cb = icmp ne i32 %.1249, 1
  %or.cond3 = and i1 %i.cb, %i.ca
  br i1 %or.cond3, label %bb.n, label %.thread183

bb.n:                                             ; preds = %bb.m
  %i.cc = load i16, ptr %i.bo, align 2, !tbaa !32 ; 3 uses
  %i.cd = and i16 %i.cc, -1024
  %i.ce = icmp eq i16 %i.cd, -9216
  br i1 %i.ce, label %bb.o, label %.thread183

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.1143248, i64 4
  %i.cg = add nsw i32 %.1249, -1
  %i.ch = trunc i16 %i.bp to i8
  store i8 %i.ch, ptr %i.bn, align 1, !tbaa !30
  %i.ci = lshr i16 %i.bp, 8
  %i.cj = trunc nuw i16 %i.ci to i8
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !46  ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !30
  %i.cm = trunc i16 %i.cc to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !30
  %i.co = lshr i16 %i.cc, 8
  %i.cp = trunc nuw i16 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !30
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %storemerge = phi ptr [ %i.by, %bb.l ], [ %i.cr, %bb.o ] ; 3 uses
  %.2144 = phi ptr [ %i.bo, %bb.l ], [ %i.cf, %bb.o ] ; 2 uses
  %.2 = phi i32 [ %.1249, %bb.l ], [ %i.cg, %bb.o ]
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !46
  %i.cs = add nsw i32 %.2, -1                     ; 2 uses
  %.not161 = icmp eq i32 %i.cs, 0
  br i1 %.not161, label %.thread175, label %.lr.ph250, !llvm.loop !68

.lr.ph:                                           ; preds = %.preheader231, %bb.u
  %i.ct = phi ptr [ %i.eh, %bb.u ], [ %i.be, %.preheader231 ] ; 4 uses
  %.3245 = phi i32 [ %i.ei, %bb.u ], [ %i.bk, %.preheader231 ] ; 5 uses
  %.1129244 = phi i32 [ %.2130, %bb.u ], [ %.0128173, %.preheader231 ] ; 7 uses
  %.3145243 = phi ptr [ %.4146, %bb.u ], [ %.0142170, %.preheader231 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.3145243, i64 2 ; 4 uses
  %i.cv = load i16, ptr %.3145243, align 2, !tbaa !32 ; 7 uses
  %i.cw = zext i16 %i.cv to i32                   ; 2 uses
  %i.cx = and i32 %i.cw, 63488
  %i.cy = icmp eq i32 %i.cx, 55296
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.cz = trunc i16 %i.cv to i8
  store i8 %i.cz, ptr %i.ct, align 1, !tbaa !30
  %i.da = lshr i16 %i.cv, 8
  %i.db = trunc nuw i16 %i.da to i8
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !30
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 2 ; 2 uses
  store ptr %i.de, ptr %i.a, align 8, !tbaa !46
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !48  ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 %.1129244, ptr %i.df, align 4, !tbaa !34
  %i.dh = add i32 %.1129244, 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.di, ptr %i.b, align 8, !tbaa !48
  store i32 %.1129244, ptr %i.dg, align 4, !tbaa !34
  br label %bb.u

bb.r:                                             ; preds = %.lr.ph
  %i.dj = and i32 %i.cw, 1024
  %i.dk = icmp eq i32 %i.dj, 0
  %i.dl = icmp ne i32 %.3245, 1
  %or.cond5 = and i1 %i.dl, %i.dk
  br i1 %or.cond5, label %bb.s, label %.thread183

bb.s:                                             ; preds = %bb.r
  %i.dm = load i16, ptr %i.cu, align 2, !tbaa !32 ; 3 uses
  %i.dn = and i16 %i.dm, -1024
  %i.do = icmp eq i16 %i.dn, -9216
  br i1 %i.do, label %bb.t, label %.thread183

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %.3145243, i64 4
  %i.dq = add nsw i32 %.3245, -1
  %i.dr = trunc i16 %i.cv to i8
  store i8 %i.dr, ptr %i.ct, align 1, !tbaa !30
  %i.ds = lshr i16 %i.cv, 8
  %i.dt = trunc nuw i16 %i.ds to i8
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !46  ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !30
  %i.dw = trunc i16 %i.dm to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !30
  %i.dy = lshr i16 %i.dm, 8
  %i.dz = trunc nuw i16 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 3
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !30
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !46
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !48  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.ed, ptr %i.b, align 8, !tbaa !48
  %i.ee = insertelement <4 x i32> poison, i32 %.1129244, i64 0
  %i.ef = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ef, ptr %i.ec, align 4, !tbaa !34
  %i.eg = add i32 %.1129244, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %i.eh = phi ptr [ %i.eb, %bb.t ], [ %i.de, %bb.q ] ; 2 uses
  %.4146 = phi ptr [ %i.dp, %bb.t ], [ %i.cu, %bb.q ] ; 2 uses
  %.2130 = phi i32 [ %i.eg, %bb.t ], [ %i.dh, %bb.q ] ; 2 uses
  %.4 = phi i32 [ %i.dq, %bb.t ], [ %.3245, %bb.q ]
  %i.ei = add nsw i32 %.4, -1                     ; 2 uses
  %.not160 = icmp eq i32 %i.ei, 0
  br i1 %.not160, label %.thread175, label %.lr.ph, !llvm.loop !69

.thread175:                                       ; preds = %bb.u, %bb.p, %.preheader231, %.preheader
  %i.ej = phi ptr [ %i.be, %.preheader ], [ %storemerge, %bb.p ], [ %i.be, %.preheader231 ], [ %i.eh, %bb.u ] ; 2 uses
  %.3131181 = phi i32 [ %.0128173, %.preheader ], [ %.0128173, %bb.p ], [ %.0128173, %.preheader231 ], [ %.2130, %bb.u ] ; 2 uses
  %.5147180 = phi ptr [ %.0142170, %.preheader ], [ %.2144, %bb.p ], [ %.0142170, %.preheader231 ], [ %.4146, %bb.u ] ; 3 uses
  %i.ek = icmp ne i32 %i.bl, 0
  %i.el = icmp ne i32 %i.bj, 0
  %or.cond7 = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond7, label %bb.v, label %.thread193.thread

bb.v:                                             ; preds = %.thread175
  %i.em = getelementptr inbounds nuw i8, ptr %.5147180, i64 2 ; 2 uses
  %i.en = load i16, ptr %.5147180, align 2, !tbaa !32 ; 3 uses
  %i.eo = and i16 %i.en, -2048
  %i.ep = icmp eq i16 %i.eo, -10240
  br i1 %i.ep, label %.thread205, label %.thread193.thread222

.thread193.thread222:                             ; preds = %bb.v
  store i16 %i.en, ptr %i.c, align 2
  br label %bb.ac

.thread183:                                       ; preds = %bb.r, %bb.s, %bb.m, %bb.n
  %i.eq = phi ptr [ %i.bn, %bb.m ], [ %i.bn, %bb.n ], [ %i.ct, %bb.s ], [ %i.ct, %bb.r ] ; 2 uses
  %.5191 = phi i32 [ %.1249, %bb.m ], [ %.1249, %bb.n ], [ %.3245, %bb.s ], [ %.3245, %bb.r ]
  %.3125190 = phi i16 [ %i.bp, %bb.m ], [ %i.bp, %bb.n ], [ %i.cv, %bb.s ], [ %i.cv, %bb.r ] ; 2 uses
  %.3131189 = phi i32 [ %.0128173, %bb.m ], [ %.0128173, %bb.n ], [ %.1129244, %bb.s ], [ %.1129244, %bb.r ] ; 2 uses
  %.5147188 = phi ptr [ %i.bo, %bb.m ], [ %i.bo, %bb.n ], [ %i.cu, %bb.s ], [ %i.cu, %bb.r ] ; 2 uses
  %i.er = shl nuw i32 %.5191, 1
  %i.es = add i32 %i.er, %i.bj                    ; 2 uses
  %.not162 = icmp eq i16 %.3125190, 0
  br i1 %.not162, label %.thread193, label %.thread205

.thread205:                                       ; preds = %bb.j, %bb.v, %.thread183
  %i.et = phi ptr [ %i.eq, %.thread183 ], [ %i.x, %bb.j ], [ %i.ej, %bb.v ]
  %.5127215 = phi i16 [ %.3125190, %.thread183 ], [ %i.ai, %bb.j ], [ %i.en, %bb.v ] ; 5 uses
  %.4132214 = phi i32 [ %.3131189, %.thread183 ], [ 0, %bb.j ], [ %.3131181, %bb.v ]
  %.2140213 = phi i32 [ %i.es, %.thread183 ], [ %i.ad, %bb.j ], [ %i.bj, %bb.v ]
  %.7212 = phi ptr [ %.5147188, %.thread183 ], [ %i.e, %bb.j ], [ %i.em, %bb.v ] ; 6 uses
  %i.eu = and i16 %.5127215, 1024
  %i.ev = icmp eq i16 %i.eu, 0
  br i1 %i.ev, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.thread205
  %i.ew = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.ex = icmp ult ptr %.7212, %i.ew
  br i1 %i.ex, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ey = load i16, ptr %.7212, align 2, !tbaa !32 ; 2 uses
  %i.ez = and i16 %i.ey, -1024
  %i.fa = icmp eq i16 %i.ez, -9216
  br i1 %i.fa, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw i8, ptr %.7212, i64 2
  store i16 %.5127215, ptr %i.c, align 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.ey, ptr %i.fc, align 2
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  store i32 12, ptr %1, align 4, !tbaa !16
  br label %bb.ab

bb.aa:                                            ; preds = %.thread205
  store i32 12, ptr %1, align 4, !tbaa !16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.aa
  %.8 = phi ptr [ %i.fb, %bb.y ], [ %.7212, %bb.z ], [ %.7212, %bb.w ], [ %.7212, %bb.aa ]
  %.3136 = phi i32 [ 4, %bb.y ], [ 0, %bb.z ], [ 0, %bb.w ], [ 0, %bb.aa ]
  %.6 = phi i16 [ 0, %bb.y ], [ %.5127215, %bb.z ], [ %.5127215, %bb.w ], [ %.5127215, %bb.aa ]
  %i.fd = zext i16 %.6 to i32
  store i32 %i.fd, ptr %i.ag, align 4, !tbaa !49
  br label %.thread193

.thread193:                                       ; preds = %bb.ab, %.thread183
  %i.fe = phi ptr [ %i.et, %bb.ab ], [ %i.eq, %.thread183 ]
  %.4132201 = phi i32 [ %.4132214, %bb.ab ], [ %.3131189, %.thread183 ]
  %.2140200 = phi i32 [ %.2140213, %bb.ab ], [ %i.es, %.thread183 ]
  %.9 = phi ptr [ %.8, %bb.ab ], [ %.5147188, %.thread183 ] ; 2 uses
  %.4137 = phi i32 [ %.3136, %bb.ab ], [ %i.bl, %.thread183 ] ; 2 uses
  %.not163 = icmp eq i32 %.4137, 0
  br i1 %.not163, label %.thread193.thread, label %bb.ac

bb.ac:                                            ; preds = %.thread193.thread222, %.thread193
  %.4137230 = phi i32 [ 2, %.thread193.thread222 ], [ %.4137, %.thread193 ]
  %.9229 = phi ptr [ %i.em, %.thread193.thread222 ], [ %.9, %.thread193 ]
  %.4132201228 = phi i32 [ %.3131181, %.thread193.thread222 ], [ %.4132201, %.thread193 ]
  %i.ff = load ptr, ptr %i.y, align 8, !tbaa !44
  call void @ucnv_fromUWriteBytes_78(ptr noundef %i.o, ptr noundef nonnull %i.c, i32 noundef %.4137230, ptr noundef nonnull %i.a, ptr noundef %i.ff, ptr noundef nonnull %i.b, i32 noundef %.4132201228, ptr noundef %1)
  %i.fg = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = trunc i64 %i.fk to i32
  br label %.thread193.thread

.thread193.thread:                                ; preds = %.thread175, %bb.ac, %.thread193
  %i.fm = phi ptr [ %i.fh, %bb.ac ], [ %i.fe, %.thread193 ], [ %i.ej, %.thread175 ]
  %.9221 = phi ptr [ %.9229, %bb.ac ], [ %.9, %.thread193 ], [ %.5147180, %.thread175 ] ; 2 uses
  %.3141 = phi i32 [ %i.fl, %bb.ac ], [ %.2140200, %.thread193 ], [ %i.bj, %.thread175 ]
  %i.fn = load i32, ptr %1, align 4, !tbaa !16
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %.thread193.thread
  %i.fp = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.fq = icmp ult ptr %.9221, %i.fp
  %i.fr = icmp eq i32 %.3141, 0
  %or.cond9 = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %or.cond9, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 15, ptr %1, align 4, !tbaa !16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.thread193.thread
  store ptr %.9221, ptr %i.d, align 8, !tbaa !40
  store ptr %i.fm, ptr %i.w, align 8, !tbaa !45
  %i.fs = load ptr, ptr %i.b, align 8, !tbaa !48
  store ptr %i.fs, ptr %i.ae, align 8, !tbaa !47
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 -9, 10559488) i32 @_ZL20_UTF16LEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14
  %i.f = icmp slt i32 %i.e, 8
  br i1 %i.f, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 5 uses
  %.not = icmp ult ptr %i.h, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 8, ptr %1, align 4, !tbaa !16
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 4 uses
  %i.l = icmp ugt ptr %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.h, align 1, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.n, ptr %i.o, align 1, !tbaa !30
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i8 1, ptr %i.q, align 8, !tbaa !31
  store ptr %i.m, ptr %i.g, align 8, !tbaa !24
  store i32 11, ptr %1, align 4, !tbaa !16
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.m, align 1, !tbaa !30
  %i.s = zext i8 %i.r to i32                      ; 3 uses
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = load i8, ptr %i.h, align 1, !tbaa !30
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = and i32 %i.s, 248
  %i.y = icmp eq i32 %i.x, 216
  br i1 %i.y, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.z = and i32 %i.s, 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %.not58 = icmp ugt ptr %i.ab, %i.j
  br i1 %.not58, label %iter.check, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !30
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = and i32 %i.ae, 252
  %i.ag = icmp eq i32 %i.af, 220
  br i1 %i.ag, label %bb.j, label %.thread

iter.check:                                       ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 6 uses
  %i.ai = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.aj = ptrtoint ptr %i.h to i64                ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 9 uses
  %i.al = trunc i64 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %i.al, ptr %i.am, align 8, !tbaa !31
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.ak
  %min.iters.check = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = sub i64 %i.c, %i.aj
  %i.ao = add i64 %i.an, 64
  %diff.check = icmp ult i64 %i.ao, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check69 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %i.ak, 28
  %n.vec = and i64 %i.ak, -32                     ; 5 uses
  %i.aq = getelementptr i8, ptr %i.h, i64 %n.vec
  %i.ar = getelementptr i8, ptr %i.ah, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %index ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.ah, i64 %index ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !30
  %wide.load71 = load <16 x i8>, ptr %i.as, align 1, !tbaa !30
  %i.at = getelementptr i8, ptr %next.gep70, i64 16
  store <16 x i8> %wide.load, ptr %next.gep70, align 1, !tbaa !30
  store <16 x i8> %wide.load71, ptr %i.at, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.thread62, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec73 = and i64 %i.ak, -4                    ; 4 uses
  %i.av = getelementptr i8, ptr %i.h, i64 %n.vec73
  %i.aw = getelementptr i8, ptr %i.ah, i64 %n.vec73
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index74 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 3 uses
  %next.gep75 = getelementptr i8, ptr %i.h, i64 %index74
  %next.gep76 = getelementptr i8, ptr %i.ah, i64 %index74
  %wide.load77 = load <4 x i8>, ptr %next.gep75, align 1, !tbaa !30
  store <4 x i8> %wide.load77, ptr %next.gep76, align 1, !tbaa !30
  %index.next78 = add nuw i64 %index74, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n79 = icmp eq i64 %i.ak, %n.vec73
  br i1 %cmp.n79, label %.thread62, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.151.ph = phi ptr [ %i.h, %iter.check ], [ %i.h, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 3 uses
  %.048.ph = phi ptr [ %i.ah, %iter.check ], [ %i.ah, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ] ; 2 uses
  %.151.ph82 = ptrtoaddr ptr %.151.ph to i64      ; 2 uses
  %i.ay = sub i64 %i.ai, %.151.ph82
  %xtraiter = and i64 %i.ay, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.151.prol = phi ptr [ %i.az, %vec.epilog.scalar.ph.prol ], [ %.151.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.048.prol = phi ptr [ %i.bb, %vec.epilog.scalar.ph.prol ], [ %.048.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.151.prol, i64 1 ; 2 uses
  %i.ba = load i8, ptr %.151.prol, align 1, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %.048.prol, i64 1 ; 2 uses
  store i8 %i.ba, ptr %.048.prol, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !72

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.151.unr = phi ptr [ %.151.ph, %vec.epilog.scalar.ph.preheader ], [ %i.az, %vec.epilog.scalar.ph.prol ]
  %.048.unr = phi ptr [ %.048.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bb, %vec.epilog.scalar.ph.prol ]
  %i.bc = sub i64 %.151.ph82, %i.ai
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %.thread62, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.151 = phi ptr [ %i.bz, %vec.epilog.scalar.ph ], [ %.151.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.048 = phi ptr [ %i.cb, %vec.epilog.scalar.ph ], [ %.048.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.151, i64 1
  %i.bf = load i8, ptr %.151, align 1, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %.048, i64 1
  store i8 %i.bf, ptr %.048, align 1, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %.151, i64 2
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %.048, i64 2
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.151, i64 3
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %.048, i64 3
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %.151, i64 4
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %.048, i64 4
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %.151, i64 5
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %.048, i64 5
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %.151, i64 6
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %.048, i64 6
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %.151, i64 7
end_hunk_3
begin_hunk_4_@_ZL18_UTF16GetNextUCharP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %.not58.i10 = icmp ugt ptr %i.dj, %i.cr
  br i1 %.not58.i10, label %iter.check, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !30
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %i.dn = and i32 %i.dm, 252
  %i.do = icmp eq i32 %i.dn, 220
  br i1 %i.do, label %bb.t, label %.thread.i9

iter.check:                                       ; preds = %bb.r
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 6 uses
  %i.dq = ptrtoint ptr %i.cr to i64               ; 3 uses
  %i.dr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 9 uses
  %i.dt = trunc i64 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %i.dt, ptr %i.du, align 8, !tbaa !31
  %min.iters.check = icmp ult i64 %i.ds, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dv = sub i64 %i.c, %i.dr
  %i.dw = add i64 %i.dv, 64
  %diff.check = icmp ult i64 %i.dw, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check24 = icmp ult i64 %i.ds, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dx = and i64 %i.ds, 28
  %n.vec = and i64 %i.ds, -32                     ; 5 uses
  %i.dy = getelementptr i8, ptr %i.cp, i64 %n.vec
  %i.dz = getelementptr i8, ptr %i.dp, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.cp, i64 %index ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.dp, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !30
  %wide.load26 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !30
  %i.eb = getelementptr i8, ptr %next.gep25, i64 16
  store <16 x i8> %wide.load, ptr %next.gep25, align 1, !tbaa !30
  store <16 x i8> %wide.load26, ptr %i.eb, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ds, %n.vec
  br i1 %cmp.n, label %.thread62.i15, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dx, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec28 = and i64 %i.ds, -4                    ; 4 uses
  %i.ed = getelementptr i8, ptr %i.cp, i64 %n.vec28
  %i.ee = getelementptr i8, ptr %i.dp, i64 %n.vec28
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %next.gep30 = getelementptr i8, ptr %i.cp, i64 %index29
  %next.gep31 = getelementptr i8, ptr %i.dp, i64 %index29
  %wide.load32 = load <4 x i8>, ptr %next.gep30, align 1, !tbaa !30
  store <4 x i8> %wide.load32, ptr %next.gep31, align 1, !tbaa !30
  %index.next33 = add nuw i64 %index29, 4         ; 2 uses
  %i.ef = icmp eq i64 %index.next33, %n.vec28
  br i1 %i.ef, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %i.ds, %n.vec28
  br i1 %cmp.n34, label %.thread62.i15, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.151.i12.ph = phi ptr [ %i.cp, %iter.check ], [ %i.cp, %vector.memcheck ], [ %i.dy, %vec.epilog.iter.check ], [ %i.ed, %vec.epilog.middle.block ] ; 3 uses
  %.048.i13.ph = phi ptr [ %i.dp, %iter.check ], [ %i.dp, %vector.memcheck ], [ %i.dz, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ] ; 2 uses
  %.151.i12.ph71 = ptrtoaddr ptr %.151.i12.ph to i64 ; 2 uses
  %i.eg = sub i64 %i.dq, %.151.i12.ph71
  %xtraiter = and i64 %i.eg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.151.i12.prol = phi ptr [ %i.eh, %vec.epilog.scalar.ph.prol ], [ %.151.i12.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.048.i13.prol = phi ptr [ %i.ej, %vec.epilog.scalar.ph.prol ], [ %.048.i13.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.151.i12.prol, i64 1 ; 2 uses
  %i.ei = load i8, ptr %.151.i12.prol, align 1, !tbaa !30
  %i.ej = getelementptr inbounds nuw i8, ptr %.048.i13.prol, i64 1 ; 2 uses
  store i8 %i.ei, ptr %.048.i13.prol, align 1, !tbaa !30
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !83

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.151.i12.unr = phi ptr [ %.151.i12.ph, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %.048.i13.unr = phi ptr [ %.048.i13.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ej, %vec.epilog.scalar.ph.prol ]
  %i.ek = sub i64 %.151.i12.ph71, %i.dq
  %i.el = icmp ugt i64 %i.ek, -8
  br i1 %i.el, label %.thread62.i15, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.151.i12 = phi ptr [ %i.fh, %vec.epilog.scalar.ph ], [ %.151.i12.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.048.i13 = phi ptr [ %i.fj, %vec.epilog.scalar.ph ], [ %.048.i13.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.151.i12, i64 1
  %i.en = load i8, ptr %.151.i12, align 1, !tbaa !30
  %i.eo = getelementptr inbounds nuw i8, ptr %.048.i13, i64 1
  store i8 %i.en, ptr %.048.i13, align 1, !tbaa !30
  %i.ep = getelementptr inbounds nuw i8, ptr %.151.i12, i64 2
  %i.eq = load i8, ptr %i.em, align 1, !tbaa !30
  %i.er = getelementptr inbounds nuw i8, ptr %.048.i13, i64 2
  store i8 %i.eq, ptr %i.eo, align 1, !tbaa !30
  %i.es = getelementptr inbounds nuw i8, ptr %.151.i12, i64 3
  %i.et = load i8, ptr %i.ep, align 1, !tbaa !30
  %i.eu = getelementptr inbounds nuw i8, ptr %.048.i13, i64 3
  store i8 %i.et, ptr %i.er, align 1, !tbaa !30
  %i.ev = getelementptr inbounds nuw i8, ptr %.151.i12, i64 4
  %i.ew = load i8, ptr %i.es, align 1, !tbaa !30
  %i.ex = getelementptr inbounds nuw i8, ptr %.048.i13, i64 4
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !30
  %i.ey = getelementptr inbounds nuw i8, ptr %.151.i12, i64 5
  %i.ez = load i8, ptr %i.ev, align 1, !tbaa !30
  %i.fa = getelementptr inbounds nuw i8, ptr %.048.i13, i64 5
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !30
  %i.fb = getelementptr inbounds nuw i8, ptr %.151.i12, i64 6
  %i.fc = load i8, ptr %i.ey, align 1, !tbaa !30
  %i.fd = getelementptr inbounds nuw i8, ptr %.048.i13, i64 6
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !30
  %i.fe = getelementptr inbounds nuw i8, ptr %.151.i12, i64 7
  %i.ff = load i8, ptr %i.fb, align 1, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %.048.i13, i64 7
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !30
  %i.fh = getelementptr inbounds nuw i8, ptr %.151.i12, i64 8 ; 2 uses
  %i.fi = load i8, ptr %i.fe, align 1, !tbaa !30
  %i.fj = getelementptr inbounds nuw i8, ptr %.048.i13, i64 8
  store i8 %i.fi, ptr %i.fg, align 1, !tbaa !30
  %exitcond.not.i14.7 = icmp eq ptr %i.fh, %i.cr
  br i1 %exitcond.not.i14.7, label %.thread62.i15, label %vec.epilog.scalar.ph, !llvm.loop !84

.thread62.i15:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %scevgep.i11 = getelementptr i8, ptr %i.cp, i64 %i.ds
  store i32 11, ptr %1, align 4, !tbaa !16
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fk = shl nuw nsw i32 %i.dm, 8
  %i.fl = load i8, ptr %i.cs, align 1, !tbaa !30
  %i.fm = zext i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fk, %i.fm
  %i.fo = shl nuw nsw i32 %i.de, 10
  %i.fp = add nsw i32 %i.fo, -56613888
  %i.fq = add nuw nsw i32 %i.fp, %i.fn
  br label %bb.u

.thread.i9:                                       ; preds = %bb.s, %bb.q
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 2, ptr %i.fs, align 8, !tbaa !31
  %i.ft = load i8, ptr %i.cp, align 1, !tbaa !30
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !30
  %i.fu = load i8, ptr %i.cu, align 1, !tbaa !30
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 %i.fu, ptr %i.fv, align 2, !tbaa !30
  store i32 12, ptr %1, align 4, !tbaa !16
  br label %bb.u

bb.u:                                             ; preds = %.thread.i9, %bb.t, %.thread62.i15, %bb.p
  %.3.i7 = phi ptr [ %i.cs, %.thread.i9 ], [ %i.dj, %bb.t ], [ %i.cs, %bb.p ], [ %scevgep.i11, %.thread62.i15 ]
  %.2.i8 = phi i32 [ 65535, %.thread.i9 ], [ %i.fq, %bb.t ], [ %i.de, %bb.p ], [ 65535, %.thread62.i15 ]
  store ptr %.3.i7, ptr %i.co, align 8, !tbaa !24
  br label %_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit

_ZL20_UTF16BEGetNextUCharP23UConverterToUnicodeArgsP10UErrorCode.exit: ; preds = %bb.u, %bb.o, %bb.m, %bb.k, %bb.e, %bb.c, %bb.a
  %.0 = phi i32 [ 65535, %bb.e ], [ -9, %bb.a ], [ %.2.i, %bb.k ], [ 65535, %bb.c ], [ %.2.i8, %bb.u ], [ 65535, %bb.m ], [ 65535, %bb.o ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef nonnull ptr @_ZL13_UTF16GetNamePK10UConverter(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = and i32 %i.b, 15                         ; 2 uses
  %switch.selectcmp = icmp eq i32 %i.c, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.5, ptr @.str.6
  %switch.selectcmp4 = icmp eq i32 %i.c, 0
  %switch.select5 = select i1 %switch.selectcmp4, ptr @.str.4, ptr %switch.select
  ret ptr %switch.select5
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 56}
!9 = !{!"_ZTS10UConverter", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !12, i64 48, !5, i64 56, !6, i64 60, !6, i64 61, !6, i64 62, !6, i64 63, !6, i64 64, !6, i64 65, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !6, i64 93, !6, i64 94, !6, i64 95, !6, i64 96, !6, i64 104, !6, i64 136, !6, i64 140, !6, i64 144, !5, i64 208, !6, i64 212, !6, i64 250, !6, i64 281, !6, i64 282, !6, i64 283, !13, i64 284}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 _ZTS20UConverterSharedData", !10, i64 0}
!13 = !{!"_ZTS24UConverterCallbackReason", !6, i64 0}
!14 = !{!9, !5, i64 76}
!15 = !{!9, !5, i64 80}
!16 = !{!17, !17, i64 0}
!17 = !{!"_ZTS10UErrorCode", !6, i64 0}
!18 = !{!19, !21, i64 8}
!19 = !{!"_ZTS23UConverterToUnicodeArgs", !20, i64 0, !6, i64 2, !21, i64 8, !11, i64 16, !11, i64 24, !22, i64 32, !22, i64 40, !23, i64 48}
!20 = !{!"short", !6, i64 0}
!21 = !{!"p1 _ZTS10UConverter", !10, i64 0}
!22 = !{!"p1 char16_t", !10, i64 0}
!23 = !{!"p1 int", !10, i64 0}
!24 = !{!19, !11, i64 16}
!25 = !{!19, !11, i64 24}
!26 = !{!9, !5, i64 72}
!27 = !{!19, !22, i64 32}
!28 = !{!19, !22, i64 40}
!29 = !{!19, !23, i64 48}
!30 = !{!6, !6, i64 0}
!31 = !{!9, !6, i64 64}
!32 = !{!33, !33, i64 0}
!33 = !{!"char16_t", !6, i64 0}
!34 = !{!5, !5, i64 0}
!35 = !{!9, !6, i64 93}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = !{!41, !22, i64 16}
!41 = !{!"_ZTS25UConverterFromUnicodeArgs", !20, i64 0, !6, i64 2, !21, i64 8, !22, i64 16, !22, i64 24, !11, i64 32, !11, i64 40, !23, i64 48}
!42 = !{!41, !22, i64 24}
!43 = !{!41, !21, i64 8}
!44 = !{!41, !11, i64 40}
!45 = !{!41, !11, i64 32}
!46 = !{!11, !11, i64 0}
!47 = !{!41, !23, i64 48}
!48 = !{!23, !23, i64 0}
!49 = !{!9, !5, i64 84}
!50 = distinct !{!50, !37}
!51 = distinct !{!51, !37}
!52 = distinct !{!52, !37, !53, !54}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!"branch_weights", i32 4, i32 28}
!56 = distinct !{!56, !37, !53, !54}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !37, !53}
!60 = !{!9, !12, i64 48}
!61 = distinct !{!61, !37}
!62 = distinct !{!62, !37, !53, !54}
!63 = distinct !{!63, !37, !54, !53}
!64 = !{!19, !6, i64 2}
!65 = distinct !{!65, !37}
!66 = distinct !{!66, !37}
!67 = distinct !{!67, !37}
!68 = distinct !{!68, !37}
!69 = distinct !{!69, !37}
!70 = distinct !{!70, !37, !53, !54}
!71 = distinct !{!71, !37, !53, !54}
!72 = distinct !{!72, !58}
!73 = distinct !{!73, !37, !53}
!74 = !{!75, !6, i64 8}
!75 = !{!"_ZTS18UConverterLoadArgs", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 9, !20, i64 10, !5, i64 12, !11, i64 16, !11, i64 24, !11, i64 32}
!76 = !{!9, !11, i64 40}
!77 = distinct !{!77, !37, !53, !54}
!78 = distinct !{!78, !37, !53, !54}
!79 = distinct !{!79, !58}
!80 = distinct !{!80, !37, !53}
!81 = distinct !{!81, !37, !53, !54}
!82 = distinct !{!82, !37, !53, !54}
!83 = distinct !{!83, !58}
!84 = distinct !{!84, !37, !53}
end_hunk_4

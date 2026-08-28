Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1479
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 354
begin_hunk_0_@_ZL31stbtt_GetGlyphBitmapBoxSubpixelPK14stbtt_fontinfoiffffPiS2_S2_S2_:bb.a
  %.not.i.i = icmp eq i32 %i.c, 0                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = select i1 %.not.i.i, i32 0, i32 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, i32 0, i32 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %.not.i.i, i32 0, i32 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %.not.i.i, i32 0, i32 %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !714
  %.not.i40.i = icmp slt i32 %1, %i.q
  br i1 %.not.i40.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.s = load i32, ptr %i.r, align 4, !tbaa !718  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %i.s, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !704
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !697  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !702
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nsw i32 %1, 1
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 4 uses
  %.val28.i.i = load i8, ptr %i.af, align 1, !tbaa !31
  %i.ag = getelementptr i8, ptr %i.af, i64 1
  %.val29.i.i = load i8, ptr %i.ag, align 1, !tbaa !31
  %i.ah = zext i8 %.val28.i.i to i32
  %i.ai = zext i8 %.val29.i.i to i32
  %i.aj = shl nuw nsw i32 %i.ah, 9
  %i.ak = shl nuw nsw i32 %i.ai, 1
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %.val.i.i = load i8, ptr %i.am, align 1, !tbaa !31
  %i.an = getelementptr i8, ptr %i.af, i64 3
  %.val27.i.i = load i8, ptr %i.an, align 1, !tbaa !31
  %i.ao = zext i8 %.val.i.i to i32
  %i.ap = zext i8 %.val27.i.i to i32
  %i.aq = shl nuw nsw i32 %i.ao, 9
  %i.ar = shl nuw nsw i32 %i.ap, 1
  %i.as = or disjoint i32 %i.ar, %i.aq
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.at = shl nsw i32 %1, 2
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.az = load i32, ptr %i.ay, align 1
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i = phi i32 [ %i.ba, %bb.g ], [ %i.as, %bb.f ]
  %.pn.i.i = phi i32 [ %i.ax, %bb.g ], [ %i.al, %bb.f ] ; 2 uses
  %.023.i.i = add i32 %.pn.i.i, %i.w              ; 2 uses
  %i.bb = icmp eq i32 %.pn.i.i, %.sink.i.i
  %i.bc = icmp slt i32 %.023.i.i, 0
  %or.cond.i = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = zext nneg i32 %.023.i.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %.val38.i = load i8, ptr %i.bf, align 1, !tbaa !31
  %i.bg = getelementptr i8, ptr %i.be, i64 3
  %.val39.i = load i8, ptr %i.bg, align 1, !tbaa !31
  %i.bh = zext i8 %.val38.i to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = zext i8 %.val39.i to i16
  %i.bk = or disjoint i16 %i.bi, %i.bj
  %i.bl = sext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %.val36.i = load i8, ptr %i.bm, align 1, !tbaa !31
  %i.bn = getelementptr i8, ptr %i.be, i64 5
  %.val37.i = load i8, ptr %i.bn, align 1, !tbaa !31
  %i.bo = zext i8 %.val36.i to i16
  %i.bp = shl nuw i16 %i.bo, 8
  %i.bq = zext i8 %.val37.i to i16
  %i.br = or disjoint i16 %i.bp, %i.bq
  %i.bs = sext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  %.val34.i = load i8, ptr %i.bt, align 1, !tbaa !31
  %i.bu = getelementptr i8, ptr %i.be, i64 7
  %.val35.i = load i8, ptr %i.bu, align 1, !tbaa !31
  %i.bv = zext i8 %.val34.i to i16
  %i.bw = shl nuw i16 %i.bv, 8
  %i.bx = zext i8 %.val35.i to i16
  %i.by = or disjoint i16 %i.bw, %i.bx
  %i.bz = sext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.val.i = load i8, ptr %i.ca, align 1, !tbaa !31
  %i.cb = getelementptr i8, ptr %i.be, i64 9
  %.val33.i = load i8, ptr %i.cb, align 1, !tbaa !31
  %i.cc = zext i8 %.val.i to i16
  %i.cd = shl nuw i16 %i.cc, 8
  %i.ce = zext i8 %.val33.i to i16
  %i.cf = or disjoint i16 %i.cd, %i.ce
  %i.cg = sext i16 %i.cf to i32
  br label %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit

bb.j:                                             ; preds = %bb.h, %bb.c, %bb.d
  store i32 0, ptr %4, align 4, !tbaa !280
  store i32 0, ptr %5, align 4, !tbaa !280
  %.not31 = icmp eq ptr %6, null
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %6, align 4, !tbaa !280
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not32 = icmp eq ptr %7, null
  br i1 %.not32, label %bb.p, label %.sink.split

_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit: ; preds = %bb.i, %bb.b
  %.041 = phi i32 [ %i.bl, %bb.i ], [ %i.f, %bb.b ]
  %.040 = phi i32 [ %i.bs, %bb.i ], [ %i.i, %bb.b ]
  %.039 = phi i32 [ %i.bz, %bb.i ], [ %i.l, %bb.b ]
  %.0 = phi i32 [ %i.cg, %bb.i ], [ %i.o, %bb.b ]
  %i.ch = sub nsw i32 0, %.0
  %i.ci = insertelement <2 x i32> poison, i32 %i.ch, i64 0
  %i.cj = insertelement <2 x i32> %i.ci, i32 %.041, i64 1
  %i.ck = sitofp <2 x i32> %i.cj to <2 x float>
  %i.cl = insertelement <2 x float> poison, float %3, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %2, i64 1
  %i.cn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cm, <2 x float> zeroinitializer) ; 3 uses
  %i.co = fptosi <2 x float> %i.cn to <2 x i32>   ; 2 uses
  %i.cp = sitofp <2 x i32> %i.co to <2 x float>
  %i.cq = fcmp une <2 x float> %i.cn, %i.cp
  %i.cr = fcmp ult <2 x float> %i.cn, zeroinitializer
  %i.cs = and <2 x i1> %i.cr, %i.cq
  %i.ct = sext <2 x i1> %i.cs to <2 x i32>
  %i.cu = add nsw <2 x i32> %i.ct, %i.co
  %i.cv = sitofp <2 x i32> %i.cu to <2 x float>
  %i.cw = fptosi <2 x float> %i.cv to <2 x i32>   ; 2 uses
  %i.cx = extractelement <2 x i32> %i.cw, i64 1
  store i32 %i.cx, ptr %4, align 4, !tbaa !280
  %i.cy = extractelement <2 x i32> %i.cw, i64 0
  store i32 %i.cy, ptr %5, align 4, !tbaa !280
  %.not33 = icmp eq ptr %6, null
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit
  %i.cz = sitofp i32 %.039 to float
  %i.da = call float @llvm.fmuladd.f32(float %i.cz, float %2, float 0.000000e+00)
  %i.db = call float @llvm.ceil.f32(float %i.da)
  %i.dc = fptosi float %i.db to i32
  store i32 %i.dc, ptr %6, align 4, !tbaa !280
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZL17stbtt_GetGlyphBoxPK14stbtt_fontinfoiPiS2_S2_S2_.exit
  %.not34 = icmp eq ptr %7, null
  br i1 %.not34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dd = sub nsw i32 0, %.040
  %i.de = sitofp i32 %i.dd to float
  %i.df = call float @llvm.fmuladd.f32(float %i.de, float %3, float 0.000000e+00)
  %i.dg = call float @llvm.ceil.f32(float %i.df)
  %i.dh = fptosi float %i.dg to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.o
  %.sink = phi i32 [ %i.dh, %bb.o ], [ 0, %bb.l ]
  store i32 %.sink, ptr %7, align 4, !tbaa !280
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n, %bb.l
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull %2) unnamed_addr #21 {
bb.a:
  %i.a = alloca [48 x float], align 16            ; 47 uses
  %3 = alloca [10 x %struct.stbtt__buf], align 16 ; 4 uses
  %4 = alloca %struct.stbtt__buf, align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.073.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !525
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.065.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !525
  %.sroa.266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.266.0.copyload = load i64, ptr %.sroa.266.0..sroa_idx, align 8
  %i.e = tail call fastcc { ptr, i64 } @_ZL20stbtt__cff_index_get10stbtt__bufi(ptr %.sroa.065.0.copyload, i64 %.sroa.266.0.copyload, i32 noundef %1) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 3 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !525
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 %i.g, ptr %.sroa.468.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32                ; 2 uses
  %i.l = icmp slt i32 %i.i, %i.k
  br i1 %i.l, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph, label %.critedge

_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph:     ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.gep72 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 30 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 12 uses
  %.phi.trans.insert.i309 = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 18 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  %.sroa.gep.sroa.gep434 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.gep437.sroa.gep440 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.gep437.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit

_ZL15stbtt__buf_get8P10stbtt__buf.exit:           ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph, %.thread
  %.sroa.5.sroa.0.0 = phi i64 [ %i.c, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.sroa.5.sroa.0.2, %.thread ] ; 27 uses
  %i.ak = phi i32 [ %i.k, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %i.vz, %.thread ] ; 9 uses
  %i.al = phi i32 [ %i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %i.vy, %.thread ] ; 6 uses
  %.0234373 = phi i32 [ 1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.1235347, %.thread ] ; 22 uses
  %.0236372 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.2238346, %.thread ] ; 26 uses
  %.0239371 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.1240345, %.thread ] ; 28 uses
  %.0242368 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %i.vx, %.thread ] ; 45 uses
  %.sroa.073.0367 = phi ptr [ %.sroa.073.0.copyload, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.sroa.073.3344, %.thread ] ; 27 uses
  %.0253366 = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.lr.ph ], [ %.2255343, %.thread ] ; 26 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !712   ; 6 uses
  %i.an = add nsw i32 %i.al, 1                    ; 7 uses
  store i32 %i.an, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !710
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !31  ; 6 uses
  switch i8 %i.aq, label %bb.eo [
    i8 19, label %bb.b
    i8 20, label %bb.b
    i8 1, label %bb.e
    i8 3, label %bb.e
    i8 18, label %bb.e
    i8 23, label %bb.e
    i8 21, label %bb.f
    i8 4, label %bb.h
    i8 22, label %bb.j
    i8 5, label %bb.l
    i8 7, label %bb.z
    i8 6, label %bb.aa
    i8 31, label %bb.bf
    i8 30, label %bb.bg
    i8 8, label %bb.bp
    i8 24, label %bb.bq
    i8 25, label %bb.cf
    i8 26, label %bb.cu
    i8 27, label %bb.cu
    i8 10, label %bb.cw
    i8 29, label %bb.dh
    i8 11, label %bb.do
    i8 14, label %bb.dq
    i8 12, label %bb.ef
  ]

bb.b:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %.not274 = icmp eq i32 %.0234373, 0
  br i1 %.not274, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = sdiv i32 %.0242368, 2
  %i.as = add nsw i32 %.0236372, %i.ar
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1237 = phi i32 [ %i.as, %bb.c ], [ %.0236372, %bb.b ] ; 2 uses
  %i.at = add nsw i32 %.1237, 7
  %i.au = sdiv i32 %i.at, 8
  %i.av = add nsw i32 %i.au, %i.an                ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  %i.ax = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ak)
  %..i.i = select i1 %i.aw, i32 %i.ak, i32 %i.ax
  store i32 %..i.i, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !710
  br label %.thread

bb.e:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit, %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.ay = sdiv i32 %.0242368, 2
  %i.az = add nsw i32 %.0236372, %i.ay
  br label %.thread

bb.f:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.ba = icmp slt i32 %.0242368, 2
  br i1 %i.ba, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = zext nneg i32 %.0242368 to i64
  %i.bc = getelementptr [4 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !8
  %i.bf = getelementptr i8, ptr %i.bc, i64 -4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !8
  tail call fastcc void @_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff(ptr noundef %2, float noundef %i.be, float noundef %i.bg)
  br label %.thread

bb.h:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.bh = icmp slt i32 %.0242368, 1
  br i1 %i.bh, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = zext nneg i32 %.0242368 to i64
  %i.bj = getelementptr [4 x i8], ptr %i.a, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !8
  tail call fastcc void @_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.bl)
  br label %.thread

bb.j:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.bm = icmp slt i32 %.0242368, 1
  br i1 %i.bm, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = zext nneg i32 %.0242368 to i64
  %i.bo = getelementptr [4 x i8], ptr %i.a, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 -4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !8
  tail call fastcc void @_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff(ptr noundef %2, float noundef %i.bq, float noundef 0.000000e+00)
  br label %.thread

bb.l:                                             ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.br = icmp slt i32 %.0242368, 2
  br i1 %i.br, label %.critedge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.l
  %i.bs = zext nneg i32 %.0242368 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit
  %indvars.iv429 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next430, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv429
  %i.bu = load <2 x float>, ptr %i.bt, align 8, !tbaa !8
  %i.bv = load <2 x float>, ptr %i.ac, align 8, !tbaa !8
  %i.bw = fadd <2 x float> %i.bu, %i.bv           ; 2 uses
  store <2 x float> %i.bw, ptr %i.ac, align 8, !tbaa !8
  %i.bx = fptosi <2 x float> %i.bw to <2 x i32>   ; 3 uses
  %i.by = load i32, ptr %2, align 8, !tbaa !849
  %.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i, label %bb.y, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bz = load i32, ptr %i.ae, align 4, !tbaa !851
  %i.ca = extractelement <2 x i32> %i.bx, i64 0   ; 4 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = load i32, ptr %i.af, align 4, !tbaa !852
  %.not.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %i.ca, ptr %i.ae, align 4, !tbaa !851
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cd = load i32, ptr %i.ag, align 4, !tbaa !853
  %i.ce = extractelement <2 x i32> %i.bx, i64 1   ; 4 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = load i32, ptr %i.af, align 4, !tbaa !852
  %.not20.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not20.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.ce, ptr %i.ag, align 4, !tbaa !853
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ch = load i32, ptr %i.ah, align 8, !tbaa !854
  %i.ci = icmp sgt i32 %i.ch, %i.ca
  br i1 %i.ci, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = load i32, ptr %i.af, align 4, !tbaa !852
  %.not21.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not21.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.ca, ptr %i.ah, align 8, !tbaa !854
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ck = load i32, ptr %i.ai, align 8, !tbaa !855
  %i.cl = icmp sgt i32 %i.ck, %i.ce
  br i1 %i.cl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = load i32, ptr %i.af, align 4, !tbaa !852
  %.not22.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not22.i.i.i, label %bb.x, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.ce, ptr %i.ai, align 8, !tbaa !855
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i: ; preds = %bb.x, %bb.w
  store i32 1, ptr %i.af, align 4, !tbaa !852
  %.pre.i = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !856
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit

bb.y:                                             ; preds = %.preheader
  %i.cn = load ptr, ptr %i.aj, align 8, !tbaa !857
  %i.co = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !856 ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [14 x i8], ptr %i.cn, i64 %i.cp ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i8 2, ptr %i.cr, align 2, !tbaa !725
  %i.cs = trunc <2 x i32> %i.bx to <2 x i16>
  store <2 x i16> %i.cs, ptr %i.cq, align 2, !tbaa !240
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i64 0, ptr %i.ct, align 2
  br label %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit

end_hunk_0
begin_hunk_1_@_ZL21stbtt__run_charstringPK14stbtt_fontinfoiP12stbtt__csctx:bb.a
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 4
  %i.mh = add nuw nsw i64 %indvars.iv414, 7
  %i.mi = icmp samesign ult i64 %i.mh, %i.lo
  %indvars.iv.next413 = add nuw nsw i64 %indvars.iv412, 4
  br i1 %i.mi, label %.lr.ph.split.us, label %.thread, !llvm.loop !864

.lr.ph.split:                                     ; preds = %.lr.ph.split.peel.next, %.lr.ph.split
  %indvars.iv406 = phi i64 [ %indvars.iv.next407.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next407, %.lr.ph.split ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.peel, %.lr.ph.split.peel.next ], [ %indvars.iv.next, %.lr.ph.split ] ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv406 ; 3 uses
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !8
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !8
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef 0.000000e+00, float noundef %i.mk, float noundef %i.mm, float noundef %i.mo, float noundef 0.000000e+00, float noundef %i.mq)
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 4
  %i.mr = add nuw nsw i64 %indvars.iv406, 7
  %i.ms = icmp samesign ult i64 %i.mr, %i.lo
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  br i1 %i.ms, label %.lr.ph.split, label %.thread, !llvm.loop !865

bb.cw:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %.not = icmp eq i32 %.0253366, 0
  br i1 %.not, label %bb.cx, label %bb.dh

bb.cx:                                            ; preds = %bb.cw
  %i.mt = load i32, ptr %i.x, align 4, !tbaa !866 ; 13 uses
  %.not266 = icmp eq i32 %i.mt, 0
  br i1 %.not266, label %bb.dh, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.0.0.copyload53.i = load ptr, ptr %i.y, align 8, !tbaa !525 ; 9 uses
  %i.mu = tail call i32 @llvm.smin.i32(i32 %i.mt, i32 0) ; 2 uses
  %.not.i.i312 = icmp sgt i32 %i.mt, 0
  br i1 %.not.i.i312, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i:         ; preds = %bb.cy
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !31
  switch i8 %i.mx, label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit [
    i8 0, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i
    i8 3, label %.preheader.preheader.i
  ]

.preheader.preheader.i:                           ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %.not.i.i.not.i = icmp eq i32 %i.mt, 1
  br i1 %.not.i.i.not.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i, label %bb.da

_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i:  ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, %bb.cy
  %.sroa.9.168.i = phi i32 [ 1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ %i.mu, %bb.cy ]
  %i.my = add nsw i32 %.sroa.9.168.i, %1          ; 2 uses
  %i.mz = icmp slt i32 %i.my, 0
  %i.na = tail call i32 @llvm.smin.i32(i32 %i.my, i32 %i.mt)
  %..i.i.i = select i1 %i.mz, i32 %i.mt, i32 %i.na ; 2 uses
  %.not.i26.i = icmp slt i32 %..i.i.i, %i.mt
  br i1 %.not.i26.i, label %bb.cz, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i

bb.cz:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i
  %i.nb = sext i32 %..i.i.i to i64
  %i.nc = getelementptr inbounds i8, ptr %.sroa.0.0.copyload53.i, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !31
  %i.ne = zext i8 %i.nd to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i

bb.da:                                            ; preds = %.preheader.preheader.i
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 1
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !31
  %i.nh = zext i8 %i.ng to i32
  %i.ni = shl nuw nsw i32 %i.nh, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i:       ; preds = %bb.da, %.preheader.preheader.i
  %.sroa.9.3.i = phi i32 [ 2, %bb.da ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %.0.i.i.i = phi i32 [ %i.ni, %bb.da ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.not.i.i.1.i = icmp samesign ult i32 %.sroa.9.3.i, %i.mt
  br i1 %.not.i.i.1.i, label %bb.db, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i

bb.db:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %i.nj = add nuw nsw i32 %.sroa.9.3.i, 1
  %i.nk = zext nneg i32 %.sroa.9.3.i to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !31
  %i.nn = zext i8 %i.nm to i32
  %i.no = or disjoint i32 %.0.i.i.i, %i.nn
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i:     ; preds = %bb.db, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %.sroa.9.3.1.i = phi i32 [ %i.nj, %bb.db ], [ %.sroa.9.3.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 4 uses
  %.0.i.i.1.i = phi i32 [ %i.no, %bb.db ], [ %.0.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 2 uses
  %.not.i.i32.i = icmp samesign ult i32 %.sroa.9.3.1.i, %i.mt
  br i1 %.not.i.i32.i, label %bb.dc, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i

bb.dc:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i
  %i.np = add nuw nsw i32 %.sroa.9.3.1.i, 1
  %i.nq = zext nneg i32 %.sroa.9.3.1.i to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !31
  %i.nt = zext i8 %i.ns to i32
  %i.nu = shl nuw nsw i32 %i.nt, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i:     ; preds = %bb.dc, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i
  %.sroa.9.5.i = phi i32 [ %i.np, %bb.dc ], [ %.sroa.9.3.1.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i ] ; 4 uses
  %.0.i.i34.i = phi i32 [ %i.nu, %bb.dc ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i ] ; 2 uses
  %.not.i.i32.1.i = icmp samesign ult i32 %.sroa.9.5.i, %i.mt
  br i1 %.not.i.i32.1.i, label %bb.dd, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i

bb.dd:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i
  %i.nv = add nuw nsw i32 %.sroa.9.5.i, 1
  %i.nw = zext nneg i32 %.sroa.9.5.i to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload53.i, i64 %i.nw
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !31
  %i.nz = zext i8 %i.ny to i32
  %i.oa = or disjoint i32 %.0.i.i34.i, %i.nz
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i:   ; preds = %bb.dd, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i
  %.sroa.9.5.1.i = phi i32 [ %i.nv, %bb.dd ], [ %.sroa.9.5.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i ]
  %.0.i.i34.1.i = phi i32 [ %i.oa, %bb.dd ], [ %.0.i.i34.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.i ]
  %.not78.i = icmp eq i32 %.0.i.i.1.i, 0
  br i1 %.not78.i, label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit, label %.lr.ph.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i:       ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.1.i
  %i.ob = add nuw nsw i32 %.02171.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ob, %.0.i.i.1.i
  br i1 %exitcond.not.i, label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit, label %.lr.ph.i, !llvm.loop !867

.lr.ph.i:                                         ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i
  %.072.i = phi i32 [ %.0.i.i45.1.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i ], [ %.0.i.i34.1.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i ]
  %.02171.i = phi i32 [ %i.ob, %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i ]
  %.sroa.9.070.i = phi i32 [ %.sroa.9.8.1.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i ], [ %.sroa.9.5.1.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i ] ; 4 uses
  %.not.i37.i = icmp slt i32 %.sroa.9.070.i, %i.mt
  br i1 %.not.i37.i, label %bb.de, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i

bb.de:                                            ; preds = %.lr.ph.i
  %i.oc = add nsw i32 %.sroa.9.070.i, 1
  %i.od = sext i32 %.sroa.9.070.i to i64
  %i.oe = getelementptr inbounds i8, ptr %.sroa.0.0.copyload53.i, i64 %i.od
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !31
  %i.og = zext i8 %i.of to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i:       ; preds = %bb.de, %.lr.ph.i
  %.sroa.9.6.i = phi i32 [ %i.oc, %bb.de ], [ %.sroa.9.070.i, %.lr.ph.i ] ; 4 uses
  %.0.i38.i = phi i32 [ %i.og, %bb.de ], [ 0, %.lr.ph.i ]
  %.not.i.i43.i = icmp slt i32 %.sroa.9.6.i, %i.mt
  br i1 %.not.i.i43.i, label %bb.df, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i

bb.df:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i
  %i.oh = add nsw i32 %.sroa.9.6.i, 1
  %i.oi = sext i32 %.sroa.9.6.i to i64
  %i.oj = getelementptr inbounds i8, ptr %.sroa.0.0.copyload53.i, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !31
  %i.ol = zext i8 %i.ok to i32
  %i.om = shl nuw nsw i32 %i.ol, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i:     ; preds = %bb.df, %_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i
  %.sroa.9.8.i = phi i32 [ %i.oh, %bb.df ], [ %.sroa.9.6.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i ] ; 4 uses
  %.0.i.i45.i = phi i32 [ %i.om, %bb.df ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit39.i ] ; 2 uses
  %.not.i.i43.1.i = icmp slt i32 %.sroa.9.8.i, %i.mt
  br i1 %.not.i.i43.1.i, label %bb.dg, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.1.i

bb.dg:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i
  %i.on = add nsw i32 %.sroa.9.8.i, 1
  %i.oo = sext i32 %.sroa.9.8.i to i64
  %i.op = getelementptr inbounds i8, ptr %.sroa.0.0.copyload53.i, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !31
  %i.or = zext i8 %i.oq to i32
  %i.os = or disjoint i32 %.0.i.i45.i, %i.or
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.1.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.1.i:   ; preds = %bb.dg, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i
  %.sroa.9.8.1.i = phi i32 [ %i.on, %bb.dg ], [ %.sroa.9.8.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i ]
  %.0.i.i45.1.i = phi i32 [ %i.os, %bb.dg ], [ %.0.i.i45.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.i ] ; 2 uses
  %.not.i313 = icmp sge i32 %1, %.072.i
  %i.ot = icmp slt i32 %1, %.0.i.i45.1.i
  %or.cond.i = and i1 %.not.i313, %i.ot
  br i1 %or.cond.i, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i:       ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.1.i, %bb.cz, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i
  %.022.i = phi i32 [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.thread.i ], [ %i.ne, %bb.cz ], [ %.0.i38.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i44.1.i ]
  %.sroa.03.0.copyload.i = load ptr, ptr %i.z, align 8, !tbaa !525
  %.sroa.24.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8, !tbaa !525
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ou = tail call fastcc { ptr, i64 } @_ZL20stbtt__cff_index_get10stbtt__bufi(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef %.022.i) ; 2 uses
  %i.ov = extractvalue { ptr, i64 } %i.ou, 0
  %i.ow = extractvalue { ptr, i64 } %i.ou, 1
  %i.ox = tail call fastcc { ptr, i64 } @_ZL16stbtt__get_subrs10stbtt__bufS_(ptr %.sroa.03.0.copyload.i, i64 %.sroa.24.0.copyload.i, ptr %i.ov, i64 %i.ow)
  br label %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit

_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit: ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i
  %.pn.i = phi { ptr, i64 } [ %i.ox, %_ZL15stbtt__buf_get8P10stbtt__buf.exit28.i ], [ zeroinitializer, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ zeroinitializer, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i33.1.i ], [ zeroinitializer, %_ZL14stbtt__buf_getP10stbtt__bufi.exit36.i ] ; 2 uses
  %i.oy = extractvalue { ptr, i64 } %.pn.i, 0
  %i.oz = extractvalue { ptr, i64 } %.pn.i, 1
  br label %bb.dh

bb.dh:                                            ; preds = %bb.cx, %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit, %bb.cw, %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %.sroa.5.sroa.0.1 = phi i64 [ %.sroa.5.sroa.0.0, %bb.cx ], [ %i.oz, %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit ], [ %.sroa.5.sroa.0.0, %bb.cw ], [ %.sroa.5.sroa.0.0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ] ; 2 uses
  %.1254 = phi i32 [ 1, %bb.cx ], [ 1, %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit ], [ 1, %bb.cw ], [ %.0253366, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ]
  %.sroa.073.2 = phi ptr [ %.sroa.073.0367, %bb.cx ], [ %i.oy, %_ZL26stbtt__cid_get_glyph_subrsPK14stbtt_fontinfoi.exit ], [ %.sroa.073.0367, %bb.cw ], [ %.sroa.073.0367, %_ZL15stbtt__buf_get8P10stbtt__buf.exit ] ; 2 uses
  %i.pa = icmp slt i32 %.0242368, 1
  br i1 %i.pa, label %.critedge, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.pb = add nsw i32 %.0242368, -1               ; 2 uses
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pc
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !8
  %i.pf = fptosi float %i.pe to i32
  %i.pg = icmp sgt i32 %.0239371, 9
  br i1 %i.pg, label %.critedge, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ph = add nsw i32 %.0239371, 1
  %i.pi = sext i32 %.0239371 to i64
  %i.pj = getelementptr inbounds [16 x i8], ptr %3, i64 %i.pi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pj, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !709
  %i.pk = icmp eq i8 %i.aq, 10
  br i1 %i.pk, label %.cont, label %.else

.else:                                            ; preds = %bb.dj
  %.sroa.0.0.copyload.else.val = load ptr, ptr %i.ab, align 8, !tbaa !525
  %.sroa.sel.sroa.speculate.load..else = load i64, ptr %.sroa.gep72, align 8
  br label %.cont

.cont:                                            ; preds = %bb.dj, %.else
  %.sroa.sel.sroa.speculated = phi i64 [ %.sroa.5.sroa.0.1, %bb.dj ], [ %.sroa.sel.sroa.speculate.load..else, %.else ] ; 2 uses
  %.sroa.0.0.copyload = phi ptr [ %.sroa.073.2, %bb.dj ], [ %.sroa.0.0.copyload.else.val, %.else ] ; 3 uses
  %.sroa.9.8.extract.shift.i = lshr i64 %.sroa.sel.sroa.speculated, 32
  %.sroa.9.8.extract.trunc.i = trunc nuw i64 %.sroa.9.8.extract.shift.i to i32 ; 3 uses
  %i.pl = tail call i32 @llvm.smin.i32(i32 %.sroa.9.8.extract.trunc.i, i32 0) ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %.sroa.9.8.extract.trunc.i, 0
  br i1 %.not.i.i.i.i, label %bb.dk, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i

bb.dk:                                            ; preds = %.cont
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !31
  %i.pp = zext i8 %i.po to i32
  %i.pq = shl nuw nsw i32 %i.pp, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i:     ; preds = %bb.dk, %.cont
  %.sroa.4.0.i = phi i32 [ 1, %bb.dk ], [ %i.pl, %.cont ] ; 4 uses
  %.0.i.i.i.i = phi i32 [ %i.pq, %bb.dk ], [ 0, %.cont ] ; 2 uses
  %.not.i.i.1.i.i = icmp slt i32 %.sroa.4.0.i, %.sroa.9.8.extract.trunc.i
  br i1 %.not.i.i.1.i.i, label %bb.dl, label %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i

bb.dl:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i
  %i.pr = add nsw i32 %.sroa.4.0.i, 1
  %i.ps = sext i32 %.sroa.4.0.i to i64
  %i.pt = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !31
  %i.pv = zext i8 %i.pu to i32
  %i.pw = or disjoint i32 %.0.i.i.i.i, %i.pv
  br label %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i

_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i:  ; preds = %bb.dl, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i
  %.sroa.4.1.i = phi i32 [ %i.pr, %bb.dl ], [ %.sroa.4.0.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i ]
  %.0.i.i.1.i.i = phi i32 [ %i.pw, %bb.dl ], [ %.0.i.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i ] ; 3 uses
  %i.px = icmp samesign ugt i32 %.0.i.i.1.i.i, 33899
  %i.py = icmp samesign ugt i32 %.0.i.i.1.i.i, 1239
  %spec.select.i = select i1 %i.py, i32 1131, i32 107
  %.0.i314 = select i1 %i.px, i32 32768, i32 %spec.select.i
  %i.pz = add nsw i32 %.0.i314, %i.pf             ; 3 uses
  %i.qa = icmp sgt i32 %i.pz, -1
  %.not.i315 = icmp slt i32 %i.pz, %.0.i.i.1.i.i
  %or.cond.i316 = and i1 %i.qa, %.not.i315
  br i1 %or.cond.i316, label %bb.dm, label %_ZL15stbtt__get_subr10stbtt__bufi.exit

bb.dm:                                            ; preds = %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i
  %.sroa.9.8.insert.shift.i = and i64 %.sroa.sel.sroa.speculated, -4294967296
  %.sroa.4.8.insert.ext.i = zext i32 %.sroa.4.1.i to i64
  %.sroa.4.8.insert.insert.i = or disjoint i64 %.sroa.9.8.insert.shift.i, %.sroa.4.8.insert.ext.i
  %i.qb = tail call fastcc { ptr, i64 } @_ZL20stbtt__cff_index_get10stbtt__bufi(ptr readonly %.sroa.0.0.copyload, i64 %.sroa.4.8.insert.insert.i, i32 noundef %i.pz)
  br label %_ZL15stbtt__get_subr10stbtt__bufi.exit

_ZL15stbtt__get_subr10stbtt__bufi.exit:           ; preds = %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i, %bb.dm
  %.pn.i317 = phi { ptr, i64 } [ %i.qb, %bb.dm ], [ zeroinitializer, %_ZL22stbtt__cff_index_countP10stbtt__buf.exit.i ] ; 2 uses
  %i.qc = extractvalue { ptr, i64 } %.pn.i317, 0
  %i.qd = extractvalue { ptr, i64 } %.pn.i317, 1  ; 2 uses
  store ptr %i.qc, ptr %4, align 8, !tbaa !525
  store i64 %i.qd, ptr %.sroa.468.0..sroa_idx, align 8
  %i.qe = icmp ult i64 %i.qd, 4294967296
  br i1 %i.qe, label %.critedge, label %bb.dn

bb.dn:                                            ; preds = %_ZL15stbtt__get_subr10stbtt__bufi.exit
  store i32 0, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !710
  br label %.thread

bb.do:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.qf = icmp slt i32 %.0239371, 1
  br i1 %i.qf, label %.critedge, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.qg = add nsw i32 %.0239371, -1               ; 2 uses
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.qh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %i.qi, i64 16, i1 false), !tbaa.struct !709
  br label %.thread

bb.dq:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.qj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qk = load float, ptr %i.ac, align 8, !tbaa !868
  %i.ql = load <2 x float>, ptr %i.qj, align 8, !tbaa !8 ; 3 uses
  %i.qm = extractelement <2 x float> %i.ql, i64 0
  %i.qn = fcmp une float %i.qm, %i.qk
  br i1 %i.qn, label %._crit_edge.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qo = load float, ptr %i.ad, align 4, !tbaa !869
  %i.qp = extractelement <2 x float> %i.ql, i64 1
  %i.qq = fcmp une float %i.qp, %i.qo
  br i1 %i.qq, label %._crit_edge.i, label %.critedge

._crit_edge.i:                                    ; preds = %bb.dr, %bb.dq
  %i.qr = fptosi <2 x float> %i.ql to <2 x i32>   ; 3 uses
  %i.qs = load i32, ptr %2, align 8, !tbaa !849
  %.not.i.i320 = icmp eq i32 %i.qs, 0
  br i1 %.not.i.i320, label %bb.ee, label %bb.ds

bb.ds:                                            ; preds = %._crit_edge.i
  %i.qt = load i32, ptr %i.ae, align 4, !tbaa !851
  %i.qu = extractelement <2 x i32> %i.qr, i64 0   ; 4 uses
  %i.qv = icmp slt i32 %i.qt, %i.qu
  br i1 %i.qv, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qw = load i32, ptr %i.af, align 4, !tbaa !852
  %.not.i.i.i321 = icmp eq i32 %i.qw, 0
  br i1 %.not.i.i.i321, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt, %bb.ds
  store i32 %i.qu, ptr %i.ae, align 4, !tbaa !851
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.qx = load i32, ptr %i.ag, align 4, !tbaa !853
  %i.qy = extractelement <2 x i32> %i.qr, i64 1   ; 4 uses
  %i.qz = icmp slt i32 %i.qx, %i.qy
  br i1 %i.qz, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ra = load i32, ptr %i.af, align 4, !tbaa !852
  %.not20.i.i.i322 = icmp eq i32 %i.ra, 0
  br i1 %.not20.i.i.i322, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  store i32 %i.qy, ptr %i.ag, align 4, !tbaa !853
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.rb = load i32, ptr %i.ah, align 8, !tbaa !854
  %i.rc = icmp sgt i32 %i.rb, %i.qu
  br i1 %i.rc, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rd = load i32, ptr %i.af, align 4, !tbaa !852
  %.not21.i.i.i323 = icmp eq i32 %i.rd, 0
  br i1 %.not21.i.i.i323, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  store i32 %i.qu, ptr %i.ah, align 8, !tbaa !854
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.re = load i32, ptr %i.ai, align 8, !tbaa !855
  %i.rf = icmp sgt i32 %i.re, %i.qy
  br i1 %i.rf, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.rg = load i32, ptr %i.af, align 4, !tbaa !852
  %.not22.i.i.i324 = icmp eq i32 %i.rg, 0
  br i1 %.not22.i.i.i324, label %bb.ed, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i325

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  store i32 %i.qy, ptr %i.ai, align 8, !tbaa !855
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i325

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i325: ; preds = %bb.ed, %bb.ec
  store i32 1, ptr %i.af, align 4, !tbaa !852
  %.pre8.i = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !856
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i

bb.ee:                                            ; preds = %._crit_edge.i
  %i.rh = load ptr, ptr %i.aj, align 8, !tbaa !857
  %i.ri = load i32, ptr %.phi.trans.insert.i309, align 8, !tbaa !856 ; 2 uses
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [14 x i8], ptr %i.rh, i64 %i.rj ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 12
  store i8 2, ptr %i.rl, align 2, !tbaa !725
  %i.rm = trunc <2 x i32> %i.qr to <2 x i16>
  store <2 x i16> %i.rm, ptr %i.rk, align 2, !tbaa !240
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  store i64 0, ptr %i.rn, align 2
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i: ; preds = %bb.ee, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i325
  %i.ro = phi i32 [ %.pre8.i, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i325 ], [ %i.ri, %bb.ee ]
  %i.rp = add nsw i32 %i.ro, 1
  store i32 %i.rp, ptr %.phi.trans.insert.i309, align 8, !tbaa !856
  br label %.critedge

bb.ef:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %.not.i326 = icmp slt i32 %i.an, %i.ak
  br i1 %.not.i326, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit328, label %.critedge

_ZL15stbtt__buf_get8P10stbtt__buf.exit328:        ; preds = %bb.ef
  %i.rq = add nsw i32 %i.al, 2
  store i32 %i.rq, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !710
  %i.rr = sext i32 %i.an to i64
  %i.rs = getelementptr inbounds i8, ptr %i.am, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !31
  switch i8 %i.rt, label %.critedge [
    i8 34, label %bb.eg
    i8 35, label %bb.ei
    i8 36, label %bb.ek
    i8 37, label %bb.em
  ]

bb.eg:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit328
  %i.ru = icmp slt i32 %.0242368, 7
  br i1 %i.ru, label %.critedge, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.rv = load float, ptr %i.a, align 16, !tbaa !8
  %i.rw = load float, ptr %i.m, align 4, !tbaa !8
  %i.rx = load float, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.ry = load float, ptr %i.o, align 4, !tbaa !8
  %i.rz = load float, ptr %i.p, align 16, !tbaa !8
  %i.sa = load float, ptr %i.q, align 4, !tbaa !8
  %i.sb = load float, ptr %i.r, align 8, !tbaa !8
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.rv, float noundef 0.000000e+00, float noundef %i.rw, float noundef %i.rx, float noundef %i.ry, float noundef 0.000000e+00)
  %i.sc = fneg float %i.rx
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.rz, float noundef 0.000000e+00, float noundef %i.sa, float noundef %i.sc, float noundef %i.sb, float noundef 0.000000e+00)
  br label %.thread

bb.ei:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit328
  %i.sd = icmp slt i32 %.0242368, 13
  br i1 %i.sd, label %.critedge, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.se = load float, ptr %i.a, align 16, !tbaa !8
  %i.sf = load float, ptr %i.m, align 4, !tbaa !8
  %i.sg = load float, ptr %i.n, align 8, !tbaa !8
  %i.sh = load float, ptr %i.o, align 4, !tbaa !8
  %i.si = load float, ptr %i.p, align 16, !tbaa !8
  %i.sj = load float, ptr %i.q, align 4, !tbaa !8
  %i.sk = load float, ptr %i.r, align 8, !tbaa !8
  %i.sl = load float, ptr %i.s, align 4, !tbaa !8
  %i.sm = load float, ptr %i.t, align 16, !tbaa !8
  %i.sn = load float, ptr %i.u, align 4, !tbaa !8
  %i.so = load float, ptr %i.v, align 8, !tbaa !8
  %i.sp = load float, ptr %i.w, align 4, !tbaa !8
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.se, float noundef %i.sf, float noundef %i.sg, float noundef %i.sh, float noundef %i.si, float noundef %i.sj)
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.sk, float noundef %i.sl, float noundef %i.sm, float noundef %i.sn, float noundef %i.so, float noundef %i.sp)
  br label %.thread

bb.ek:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit328
  %i.sq = icmp slt i32 %.0242368, 9
  br i1 %i.sq, label %.critedge, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.sr = load float, ptr %i.a, align 16, !tbaa !8
  %i.ss = load float, ptr %i.m, align 4, !tbaa !8 ; 2 uses
  %i.st = load float, ptr %i.n, align 8, !tbaa !8
  %i.su = load float, ptr %i.o, align 4, !tbaa !8 ; 2 uses
  %i.sv = load float, ptr %i.p, align 16, !tbaa !8
  %i.sw = load float, ptr %i.q, align 4, !tbaa !8
  %i.sx = load float, ptr %i.r, align 8, !tbaa !8
  %i.sy = load float, ptr %i.s, align 4, !tbaa !8 ; 2 uses
  %i.sz = load float, ptr %i.t, align 16, !tbaa !8
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.sr, float noundef %i.ss, float noundef %i.st, float noundef %i.su, float noundef %i.sv, float noundef 0.000000e+00)
  %i.ta = fadd float %i.ss, %i.su
  %i.tb = fadd float %i.ta, %i.sy
  %i.tc = fneg float %i.tb
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.sw, float noundef 0.000000e+00, float noundef %i.sx, float noundef %i.sy, float noundef %i.sz, float noundef %i.tc)
  br label %.thread

bb.em:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit328
  %i.td = icmp slt i32 %.0242368, 11
  br i1 %i.td, label %.critedge, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.te = load float, ptr %i.v, align 8, !tbaa !8 ; 2 uses
  %i.tf = load <2 x float>, ptr %i.a, align 16, !tbaa !8 ; 3 uses
  %i.tg = load <2 x float>, ptr %i.n, align 8, !tbaa !8 ; 3 uses
  %i.th = load <2 x float>, ptr %i.p, align 16, !tbaa !8 ; 3 uses
  %i.ti = load <2 x float>, ptr %i.r, align 8, !tbaa !8 ; 3 uses
  %i.tj = load <2 x float>, ptr %i.t, align 16, !tbaa !8 ; 3 uses
  %i.tk = fadd <2 x float> %i.tf, %i.tg
  %i.tl = fadd <2 x float> %i.tk, %i.th
  %i.tm = fadd <2 x float> %i.tl, %i.ti
  %i.tn = fadd <2 x float> %i.tm, %i.tj           ; 2 uses
  %i.to = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.tn) ; 2 uses
  %i.tp = extractelement <2 x float> %i.to, i64 0
  %i.tq = extractelement <2 x float> %i.to, i64 1
  %i.tr = fcmp ogt float %i.tp, %i.tq             ; 2 uses
  %i.ts = fneg <2 x float> %i.tn                  ; 2 uses
  %i.tt = extractelement <2 x float> %i.ts, i64 0
  %.0232 = select i1 %i.tr, float %i.te, float %i.tt
  %i.tu = extractelement <2 x float> %i.ts, i64 1
  %.0 = select i1 %i.tr, float %i.tu, float %i.te
  %i.tv = extractelement <2 x float> %i.tf, i64 0
  %i.tw = extractelement <2 x float> %i.tf, i64 1
  %i.tx = extractelement <2 x float> %i.tg, i64 0
  %i.ty = extractelement <2 x float> %i.tg, i64 1
  %i.tz = extractelement <2 x float> %i.th, i64 0
  %i.ua = extractelement <2 x float> %i.th, i64 1
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.tv, float noundef %i.tw, float noundef %i.tx, float noundef %i.ty, float noundef %i.tz, float noundef %i.ua)
  %i.ub = extractelement <2 x float> %i.ti, i64 0
  %i.uc = extractelement <2 x float> %i.ti, i64 1
  %i.ud = extractelement <2 x float> %i.tj, i64 0
  %i.ue = extractelement <2 x float> %i.tj, i64 1
  tail call fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr noundef %2, float noundef %i.ub, float noundef %i.uc, float noundef %i.ud, float noundef %i.ue, float noundef %.0232, float noundef %.0)
  br label %.thread

bb.eo:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit
  %i.uf = icmp ne i8 %i.aq, 28
  %i.ug = icmp ult i8 %i.aq, 32
  %or.cond3 = and i1 %i.ug, %i.uf
  br i1 %or.cond3, label %.critedge, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.uh = icmp eq i8 %i.aq, -1
  br i1 %i.uh, label %bb.eq, label %bb.ev

bb.eq:                                            ; preds = %bb.ep
  %.not.i.i330 = icmp slt i32 %i.an, %i.ak
  br i1 %.not.i.i330, label %bb.er, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331

bb.er:                                            ; preds = %bb.eq
  %i.ui = add nsw i32 %i.al, 2
  %i.uj = sext i32 %i.an to i64
  %i.uk = getelementptr inbounds i8, ptr %i.am, i64 %i.uj
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !31
  %i.um = zext i8 %i.ul to i32
  %i.un = shl nuw nsw i32 %i.um, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331:      ; preds = %bb.er, %bb.eq
  %i.uo = phi i32 [ %i.ui, %bb.er ], [ %i.an, %bb.eq ] ; 4 uses
  %.0.i.i = phi i32 [ %i.un, %bb.er ], [ 0, %bb.eq ] ; 2 uses
  %.not.i.i330.1 = icmp slt i32 %i.uo, %i.ak
  br i1 %.not.i.i330.1, label %bb.es, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.1

bb.es:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331
  %i.up = add nsw i32 %i.uo, 1
  %i.uq = sext i32 %i.uo to i64
  %i.ur = getelementptr inbounds i8, ptr %i.am, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !31
  %i.ut = zext i8 %i.us to i32
  %i.uu = or disjoint i32 %.0.i.i, %i.ut
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.1:    ; preds = %bb.es, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331
  %i.uv = phi i32 [ %i.up, %bb.es ], [ %i.uo, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331 ] ; 4 uses
  %.0.i.i.1 = phi i32 [ %i.uu, %bb.es ], [ %.0.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331 ]
  %i.uw = shl nuw nsw i32 %.0.i.i.1, 8            ; 2 uses
  %.not.i.i330.2 = icmp slt i32 %i.uv, %i.ak
  br i1 %.not.i.i330.2, label %bb.et, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.2

bb.et:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.1
  %i.ux = add nsw i32 %i.uv, 1
  %i.uy = sext i32 %i.uv to i64
  %i.uz = getelementptr inbounds i8, ptr %i.am, i64 %i.uy
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !31
  %i.vb = zext i8 %i.va to i32
  %i.vc = or disjoint i32 %i.uw, %i.vb
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.2

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.2:    ; preds = %bb.et, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.1
  %i.vd = phi i32 [ %i.ux, %bb.et ], [ %i.uv, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.1 ] ; 4 uses
  %.0.i.i.2 = phi i32 [ %i.vc, %bb.et ], [ %i.uw, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.1 ]
  %i.ve = shl nuw i32 %.0.i.i.2, 8                ; 2 uses
  %.not.i.i330.3 = icmp slt i32 %i.vd, %i.ak
  br i1 %.not.i.i330.3, label %bb.eu, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.3

bb.eu:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.2
  %i.vf = add nsw i32 %i.vd, 1
  %i.vg = sext i32 %i.vd to i64
  %i.vh = getelementptr inbounds i8, ptr %i.am, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !31
  %i.vj = zext i8 %i.vi to i32
  %i.vk = or disjoint i32 %i.ve, %i.vj
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.3

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.3:    ; preds = %bb.eu, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.2
  %i.vl = phi i32 [ %i.vf, %bb.eu ], [ %i.vd, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.2 ]
  %.0.i.i.3 = phi i32 [ %i.vk, %bb.eu ], [ %i.ve, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.2 ]
  store i32 %i.vl, ptr %.sroa.468.0..sroa_idx, align 8
  %i.vm = sitofp i32 %.0.i.i.3 to float
  %i.vn = fmul nnan float %i.vm, f0x37800000
  br label %bb.ew

bb.ev:                                            ; preds = %bb.ep
  %i.vo = icmp slt i32 %i.al, 0
  %i.vp = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %i.ak)
  %..i.i334 = select i1 %i.vo, i32 %i.ak, i32 %i.vp
  store i32 %..i.i334, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !710
  %i.vq = call fastcc noundef i32 @_ZL14stbtt__cff_intP10stbtt__buf(ptr noundef %4)
  %i.vr = trunc i32 %i.vq to i16
  %i.vs = sitofp i16 %i.vr to float
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.3
  %.2251 = phi float [ %i.vn, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i331.3 ], [ %i.vs, %bb.ev ]
  %i.vt = icmp sgt i32 %.0242368, 47
  br i1 %i.vt, label %.critedge, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.vu = add nsw i32 %.0242368, 1
  %i.vv = sext i32 %.0242368 to i64
  %i.vw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.vv
  store float %.2251, ptr %i.vw, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %.lr.ph.split, %.lr.ph.split.us, %.preheader348, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit, %.lr.ph.split.preheader, %.lr.ph.split.us.preheader, %bb.cv, %bb.en, %bb.el, %bb.ej, %bb.eh, %bb.ct, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit302, %bb.bh, %bb.bl, %bb.ab, %bb.aq, %bb.k, %bb.i, %bb.g, %bb.e, %bb.d, %bb.ex, %bb.dp, %bb.dn
  %.sroa.5.sroa.0.2 = phi i64 [ %.sroa.5.sroa.0.0, %bb.ex ], [ %.sroa.5.sroa.0.0, %bb.d ], [ %.sroa.5.sroa.0.0, %bb.e ], [ %.sroa.5.sroa.0.0, %bb.g ], [ %.sroa.5.sroa.0.0, %bb.i ], [ %.sroa.5.sroa.0.0, %bb.k ], [ %.sroa.5.sroa.0.0, %bb.en ], [ %.sroa.5.sroa.0.0, %bb.ab ], [ %.sroa.5.sroa.0.0, %bb.aq ], [ %.sroa.5.sroa.0.0, %bb.bh ], [ %.sroa.5.sroa.0.0, %bb.bl ], [ %.sroa.5.sroa.0.0, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.sroa.5.sroa.0.0, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit302 ], [ %.sroa.5.sroa.0.0, %bb.ct ], [ %.sroa.5.sroa.0.0, %.preheader348 ], [ %.sroa.5.sroa.0.0, %.lr.ph.split.us.preheader ], [ %.sroa.5.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.5.sroa.0.0, %.lr.ph.split.preheader ], [ %.sroa.5.sroa.0.0, %bb.cv ], [ %.sroa.5.sroa.0.1, %bb.dn ], [ %.sroa.5.sroa.0.0, %bb.dp ], [ %.sroa.5.sroa.0.0, %bb.eh ], [ %.sroa.5.sroa.0.0, %bb.ej ], [ %.sroa.5.sroa.0.0, %bb.el ], [ %.sroa.5.sroa.0.0, %.lr.ph.split ]
  %.1235347 = phi i32 [ %.0234373, %bb.ex ], [ 0, %bb.d ], [ %.0234373, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ], [ %.0234373, %bb.en ], [ %.0234373, %bb.ab ], [ %.0234373, %bb.aq ], [ %.0234373, %bb.bh ], [ %.0234373, %bb.bl ], [ %.0234373, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.0234373, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit302 ], [ %.0234373, %bb.ct ], [ %.0234373, %.preheader348 ], [ %.0234373, %.lr.ph.split.us.preheader ], [ %.0234373, %.lr.ph.split.us ], [ %.0234373, %.lr.ph.split.preheader ], [ %.0234373, %bb.cv ], [ %.0234373, %bb.dn ], [ %.0234373, %bb.dp ], [ %.0234373, %bb.eh ], [ %.0234373, %bb.ej ], [ %.0234373, %bb.el ], [ %.0234373, %.lr.ph.split ]
  %.2238346 = phi i32 [ %.0236372, %bb.ex ], [ %.1237, %bb.d ], [ %i.az, %bb.e ], [ %.0236372, %bb.g ], [ %.0236372, %bb.i ], [ %.0236372, %bb.k ], [ %.0236372, %bb.en ], [ %.0236372, %bb.ab ], [ %.0236372, %bb.aq ], [ %.0236372, %bb.bh ], [ %.0236372, %bb.bl ], [ %.0236372, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.0236372, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit302 ], [ %.0236372, %bb.ct ], [ %.0236372, %.preheader348 ], [ %.0236372, %.lr.ph.split.us.preheader ], [ %.0236372, %.lr.ph.split.us ], [ %.0236372, %.lr.ph.split.preheader ], [ %.0236372, %bb.cv ], [ %.0236372, %bb.dn ], [ %.0236372, %bb.dp ], [ %.0236372, %bb.eh ], [ %.0236372, %bb.ej ], [ %.0236372, %bb.el ], [ %.0236372, %.lr.ph.split ]
  %.1240345 = phi i32 [ %.0239371, %bb.ex ], [ %.0239371, %bb.d ], [ %.0239371, %bb.e ], [ %.0239371, %bb.g ], [ %.0239371, %bb.i ], [ %.0239371, %bb.k ], [ %.0239371, %bb.en ], [ %.0239371, %bb.ab ], [ %.0239371, %bb.aq ], [ %.0239371, %bb.bh ], [ %.0239371, %bb.bl ], [ %.0239371, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.0239371, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit302 ], [ %.0239371, %bb.ct ], [ %.0239371, %.preheader348 ], [ %.0239371, %.lr.ph.split.us.preheader ], [ %.0239371, %.lr.ph.split.us ], [ %.0239371, %.lr.ph.split.preheader ], [ %.0239371, %bb.cv ], [ %i.ph, %bb.dn ], [ %i.qg, %bb.dp ], [ %.0239371, %bb.eh ], [ %.0239371, %bb.ej ], [ %.0239371, %bb.el ], [ %.0239371, %.lr.ph.split ]
  %.sroa.073.3344 = phi ptr [ %.sroa.073.0367, %bb.ex ], [ %.sroa.073.0367, %bb.d ], [ %.sroa.073.0367, %bb.e ], [ %.sroa.073.0367, %bb.g ], [ %.sroa.073.0367, %bb.i ], [ %.sroa.073.0367, %bb.k ], [ %.sroa.073.0367, %bb.en ], [ %.sroa.073.0367, %bb.ab ], [ %.sroa.073.0367, %bb.aq ], [ %.sroa.073.0367, %bb.bh ], [ %.sroa.073.0367, %bb.bl ], [ %.sroa.073.0367, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.sroa.073.0367, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit302 ], [ %.sroa.073.0367, %bb.ct ], [ %.sroa.073.0367, %.preheader348 ], [ %.sroa.073.0367, %.lr.ph.split.us.preheader ], [ %.sroa.073.0367, %.lr.ph.split.us ], [ %.sroa.073.0367, %.lr.ph.split.preheader ], [ %.sroa.073.0367, %bb.cv ], [ %.sroa.073.2, %bb.dn ], [ %.sroa.073.0367, %bb.dp ], [ %.sroa.073.0367, %bb.eh ], [ %.sroa.073.0367, %bb.ej ], [ %.sroa.073.0367, %bb.el ], [ %.sroa.073.0367, %.lr.ph.split ]
  %.2255343 = phi i32 [ %.0253366, %bb.ex ], [ %.0253366, %bb.d ], [ %.0253366, %bb.e ], [ %.0253366, %bb.g ], [ %.0253366, %bb.i ], [ %.0253366, %bb.k ], [ %.0253366, %bb.en ], [ %.0253366, %bb.ab ], [ %.0253366, %bb.aq ], [ %.0253366, %bb.bh ], [ %.0253366, %bb.bl ], [ %.0253366, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ %.0253366, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit302 ], [ %.0253366, %bb.ct ], [ %.0253366, %.preheader348 ], [ %.0253366, %.lr.ph.split.us.preheader ], [ %.0253366, %.lr.ph.split.us ], [ %.0253366, %.lr.ph.split.preheader ], [ %.0253366, %bb.cv ], [ %.1254, %bb.dn ], [ %.0253366, %bb.dp ], [ %.0253366, %bb.eh ], [ %.0253366, %bb.ej ], [ %.0253366, %bb.el ], [ %.0253366, %.lr.ph.split ]
  %i.vx = phi i32 [ %i.vu, %bb.ex ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.en ], [ 0, %bb.ab ], [ 0, %bb.aq ], [ 0, %bb.bh ], [ 0, %bb.bl ], [ 0, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit ], [ 0, %_ZL21stbtt__csctx_rline_toP12stbtt__csctxff.exit302 ], [ 0, %bb.ct ], [ 0, %.preheader348 ], [ 0, %.lr.ph.split.us.preheader ], [ 0, %.lr.ph.split.us ], [ 0, %.lr.ph.split.preheader ], [ 0, %bb.cv ], [ %i.pb, %bb.dn ], [ %.0242368, %bb.dp ], [ 0, %bb.eh ], [ 0, %bb.ej ], [ 0, %bb.el ], [ 0, %.lr.ph.split ]
  %i.vy = load i32, ptr %.sroa.468.0..sroa_idx, align 8, !tbaa !710 ; 2 uses
  %i.vz = load i32, ptr %i.h, align 4, !tbaa !711 ; 2 uses
  %i.wa = icmp slt i32 %i.vy, %i.vz
  br i1 %i.wa, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit, label %.critedge, !llvm.loop !870

.critedge:                                        ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.z, %bb.aa, %bb.bf, %bb.bg, %bb.bp, %bb.bq, %._crit_edge361, %bb.cf, %._crit_edge, %bb.cu, %bb.dh, %bb.di, %_ZL15stbtt__get_subr10stbtt__bufi.exit, %bb.do, %bb.eo, %bb.ew, %.thread, %bb.ei, %bb.eg, %_ZL15stbtt__buf_get8P10stbtt__buf.exit328, %bb.ek, %bb.em, %bb.ef, %bb.a, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i, %bb.dr
  %.3 = phi i32 [ 1, %bb.dr ], [ 1, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i ], [ 0, %bb.a ], [ 0, %bb.ef ], [ 0, %bb.em ], [ 0, %bb.ek ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit328 ], [ 0, %bb.eg ], [ 0, %bb.ei ], [ 0, %.thread ], [ 0, %bb.ew ], [ 0, %bb.eo ], [ 0, %bb.do ], [ 0, %_ZL15stbtt__get_subr10stbtt__bufi.exit ], [ 0, %bb.di ], [ 0, %bb.dh ], [ 0, %bb.cu ], [ 0, %._crit_edge ], [ 0, %bb.cf ], [ 0, %._crit_edge361 ], [ 0, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bg ], [ 0, %bb.bf ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !868 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load <2 x float>, ptr %i.a, align 8, !tbaa !8 ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = fcmp une float %i.e, %i.c
  br i1 %i.f, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !869 ; 2 uses
  %i.i = extractelement <2 x float> %i.d, i64 1
  %i.j = fcmp une float %i.i, %i.h
  br i1 %i.j, label %._crit_edge.i, label %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.k = fptosi <2 x float> %i.d to <2 x i32>     ; 3 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !849
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !851
  %i.o = extractelement <2 x i32> %i.k, i64 0     ; 4 uses
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !852
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %i.o, ptr %i.m, align 4, !tbaa !851
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !853
  %i.u = extractelement <2 x i32> %i.k, i64 1     ; 4 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !852
  %.not20.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not20.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 %i.u, ptr %i.s, align 4, !tbaa !853
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !854
  %i.aa = icmp sgt i32 %i.z, %i.o
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !852
  %.not21.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not21.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.o, ptr %i.y, align 8, !tbaa !854
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !855
  %i.af = icmp sgt i32 %i.ae, %i.u
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !852
  %.not22.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not22.i.i.i, label %bb.n, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %i.u, ptr %i.ad, align 8, !tbaa !855
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i: ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !852
  %.phi.trans.insert7.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre8.i = load i32, ptr %.phi.trans.insert7.i, align 8, !tbaa !856
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !857
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !856 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [14 x i8], ptr %i.ak, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i8 2, ptr %i.ap, align 2, !tbaa !725
  %i.aq = trunc <2 x i32> %i.k to <2 x i16>
  store <2 x i16> %i.aq, ptr %i.ao, align 2, !tbaa !240
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i64 0, ptr %i.ar, align 2
  %.pre.pre = load float, ptr %i.b, align 8, !tbaa !868
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i: ; preds = %bb.o, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i
  %.pre = phi float [ %i.c, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %.pre.pre, %bb.o ]
  %i.as = phi i32 [ %.pre8.i, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %i.am, %bb.o ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = add nsw i32 %i.as, 1
  store i32 %i.au, ptr %i.at, align 8, !tbaa !856
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre13 = load float, ptr %.phi.trans.insert, align 4, !tbaa !869
  br label %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit

_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit: ; preds = %bb.b, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i
  %i.av = phi float [ %i.h, %bb.b ], [ %.pre13, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i ]
  %i.aw = phi float [ %i.c, %bb.b ], [ %.pre, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i ]
  %i.ax = fadd float %1, %i.aw                    ; 3 uses
  store float %i.ax, ptr %i.b, align 8, !tbaa !868
  store float %i.ax, ptr %i.a, align 8, !tbaa !871
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.az = fadd float %2, %i.av                    ; 3 uses
  store float %i.az, ptr %i.ay, align 4, !tbaa !869
  store float %i.az, ptr %.phi.trans.insert.i, align 4, !tbaa !872
  %i.ba = fptosi float %i.ax to i32               ; 5 uses
  %i.bb = fptosi float %i.az to i32               ; 5 uses
  %i.bc = load i32, ptr %0, align 8, !tbaa !849
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !851
  %i.bf = icmp slt i32 %i.be, %i.ba
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !852
  %.not.i.i12 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i12, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !851
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !853
  %i.bk = icmp slt i32 %i.bj, %i.bb
  br i1 %i.bk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !852
  %.not20.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not20.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !853
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !854
  %i.bp = icmp sgt i32 %i.bo, %i.ba
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !852
  %.not21.i.i = icmp eq i32 %i.br, 0
  br i1 %.not21.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.ba, ptr %i.bn, align 8, !tbaa !854
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !855
  %i.bu = icmp sgt i32 %i.bt, %i.bb
  br i1 %i.bu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
end_hunk_1

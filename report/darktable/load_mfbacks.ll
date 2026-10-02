Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/load_mfbacks?download=true
inline.NumInlined: 98
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN6LibRaw20phase_one_flat_fieldEii:bb.a

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv195.epil = phi i64 [ %indvars.iv195.epil.init, %.epil.preheader ], [ %indvars.iv.next196.epil, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.ku = trunc i64 %indvars.iv195.epil to i32
  %i.kv = or disjoint i32 %i.ku, 1
  %i.kw = mul i32 %i.kv, %i.s
  %i.kx = add i32 %i.kw, %.2109167
  %i.ky = zext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !81
  %i.lb = trunc nuw i64 %indvars.iv195.epil to i32
  %i.lc = mul i32 %i.s, %i.lb
  %i.ld = add i32 %i.lc, %.2109167
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.le ; 2 uses
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !81
  %i.lh = fadd reassoc nsz arcp contract afn float %i.lg, %i.la
  store float %i.lh, ptr %i.lf, align 4, !tbaa !81
  %indvars.iv.next196.epil = add nuw nsw i64 %indvars.iv195.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge166, label %bb.l, !llvm.loop !138

._crit_edge166:                                   ; preds = %bb.l, %._crit_edge166.unr-lcssa
  %i.li = add nuw nsw i32 %.2109167, 1            ; 2 uses
  %i.lj = icmp samesign ult i32 %i.li, %i.s
  br i1 %i.lj, label %.preheader, label %._crit_edge168.split, !llvm.loop !139

._crit_edge168.split:                             ; preds = %._crit_edge166, %.preheader133
  %i.lk = add nuw nsw i32 %.0105170, 1            ; 3 uses
  %i.ll = load i16, ptr %i.aa, align 8, !tbaa !75
  %i.lm = zext i16 %i.ll to i32
  %i.ln = icmp ult i32 %i.lk, %i.lm
  %i.lo = icmp ult i32 %i.lk, %i.dz
  %or.cond119 = and i1 %i.ln, %i.lo
  br i1 %or.cond119, label %.lr.ph172, label %.critedge, !llvm.loop !140

.critedge:                                        ; preds = %._crit_edge168.split, %.lr.ph172, %bb.h, %._crit_edge141
  %i.lp = add nuw nsw i32 %.0110174, 1            ; 2 uses
  %i.lq = icmp samesign ult i32 %i.lp, %i.v
  br i1 %i.lq, label %bb.c, label %._crit_edge177, !llvm.loop !141

._crit_edge177:                                   ; preds = %.critedge, %bb.b
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.y)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %._crit_edge177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #7

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #7

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef range(i32 -100010, 1) i32 @_ZN6LibRaw17phase_one_correctEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x [2 x [16 x i16]]], align 16  ; 70 uses
  %i.b = alloca [19 x i32], align 16              ; 14 uses
  %i.c = alloca [19 x i32], align 16              ; 16 uses
  %i.d = alloca [2 x [2 x float]], align 16       ; 9 uses
  %i.e = alloca [2 x [2 x [7 x i16]]], align 16   ; 33 uses
  %i.f = alloca [9 x i32], align 16               ; 10 uses
  %i.g = alloca [9 x i32], align 16               ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 381808
  %i.j = load i32, ptr %i.i, align 8, !tbaa !166
  %.not = icmp eq i32 %i.j, 0
  %indvars.iv1019.sroa.gep1717 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %indvars.iv993.sroa.gep1718 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br i1 %.not, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !88   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 381768 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !167
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef %i.n, i32 noundef 0), !call_target !99 ; 0 uses
  %i.s = tail call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  store i16 %i.s, ptr %i.k, align 8, !tbaa !100
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !88   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 6, i32 noundef 1), !call_target !99 ; 0 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !88   ; 2 uses
  %i.z = load i64, ptr %i.m, align 8, !tbaa !167
  %i.aa = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nsw i64 %i.z, %i.ab
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.ac, i32 noundef 0), !call_target !99 ; 0 uses
  %i.ah = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.ai = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 0 uses
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !88  ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !90
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %.preheader536 unwind label %bb.m, !call_target !170

.preheader536:                                    ; preds = %bb.b
  %i.ao = shl nsw i64 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 153484
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 15 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 153508
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 153492 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 25 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 17 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 153500 ; 11 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 70
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 74
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 78
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 82
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 86
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 90
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 94
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 102
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 110
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 114
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 118
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 122
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 126
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 30
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 34
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 38
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 42
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 46
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 50
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 54
  %.not35815011511 = icmp eq i32 %i.ah, 0
  br i1 %.not35815011511, label %.outer543._crit_edge, label %.lr.ph1502

.lr.ph1502:                                       ; preds = %.preheader536, %.outer543
  %.in1542 = phi i32 [ %i.fb, %.outer543 ], [ %i.ah, %.preheader536 ]
  %.0296.ph1518 = phi i32 [ %.3299, %.outer543 ], [ 0, %.preheader536 ] ; 16 uses
  %.0300.ph1517 = phi i32 [ %.2302, %.outer543 ], [ 0, %.preheader536 ] ; 17 uses
  %.0305.ph1516 = phi i64 [ %.2307, %.outer543 ], [ 0, %.preheader536 ] ; 22 uses
  %.0308.ph1515 = phi i32 [ %.2310, %.outer543 ], [ 2147483647, %.preheader536 ] ; 22 uses
  %.sroa.24.0.ph1514 = phi ptr [ %.sroa.24.6, %.outer543 ], [ null, %.preheader536 ] ; 36 uses
  %.sroa.17.0.ph1513 = phi ptr [ %.sroa.17.4, %.outer543 ], [ null, %.preheader536 ] ; 22 uses
  %.sroa.0.0.ph1512 = phi ptr [ %.sroa.0.6, %.outer543 ], [ null, %.preheader536 ] ; 36 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.l
  %.not358 = icmp eq i32 %i.fb, 0
  br i1 %.not358, label %.outer543._crit_edge, label %bb.d, !llvm.loop !144

bb.d:                                             ; preds = %.lr.ph1502, %bb.c
  %.in1543 = phi i32 [ %.in1542, %.lr.ph1502 ], [ %i.fb, %bb.c ]
  %i.fb = add i32 %.in1543, -1                    ; 4 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.e unwind label %.loopexit.split-lp472.loopexit

bb.e:                                             ; preds = %bb.d
  %i.fc = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.f unwind label %.loopexit.split-lp472.loopexit ; 5 uses

bb.f:                                             ; preds = %bb.e
  %i.fd = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.g unwind label %.loopexit.split-lp472.loopexit ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.fe = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.h unwind label %.loopexit.split-lp472.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ff = load ptr, ptr %i.h, align 8, !tbaa !88  ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !90
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = invoke noundef i64 %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.ff)
          to label %bb.i unwind label %.loopexit.split-lp472.loopexit, !call_target !171 ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.fk = load ptr, ptr %i.h, align 8, !tbaa !88  ; 2 uses
  %i.fl = load i64, ptr %i.m, align 8, !tbaa !167
  %i.fm = zext i32 %i.fe to i64
  %i.fn = add nsw i64 %i.fl, %i.fm
  %i.fo = load ptr, ptr %i.fk, align 8, !tbaa !90
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = invoke noundef i32 %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, i64 noundef %i.fn, i32 noundef 0)
          to label %bb.j unwind label %.loopexit.split-lp472.loopexit, !call_target !99 ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.fs = load ptr, ptr %i.h, align 8, !tbaa !88  ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !90
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 80
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = invoke noundef i32 %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %i.fs)
          to label %bb.k unwind label %.loopexit.split-lp472.loopexit, !call_target !174

bb.k:                                             ; preds = %bb.j
  %.not362 = icmp eq i32 %i.fw, 0
  %i.fx = load ptr, ptr %i.h, align 8, !tbaa !88  ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !90 ; 2 uses
  br i1 %.not362, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = invoke noundef i32 %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, i64 noundef %i.fj, i32 noundef 0)
          to label %bb.c unwind label %.loopexit.split-lp472.loopexit, !llvm.loop !144, !call_target !99 ; 0 uses

bb.m:                                             ; preds = %bb.if, %bb.b
  %.sroa.0.1 = phi ptr [ %.sroa.0.71186, %bb.if ], [ null, %bb.b ]
  %.sroa.24.1 = phi ptr [ %.sroa.24.71187, %bb.if ], [ null, %bb.b ]
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ii

.loopexit471:                                     ; preds = %.preheader470.8, %.preheader470.7, %.preheader470.6, %.preheader470.5, %.preheader470.4, %.preheader470.3, %.preheader470.2, %.preheader470.1, %.preheader470.preheader
  %lpad.loopexit473 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp472.thread

.loopexit.split-lp472.loopexit:                   ; preds = %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %lpad.loopexit537 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp472.thread

.loopexit.split-lp472.loopexit.split-lp:          ; preds = %bb.hf, %bb.hb
  %lpad.loopexit.split-lp538 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp472.thread

bb.n:                                             ; preds = %bb.k
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = invoke noundef i64 %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
          to label %bb.o unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !call_target !171

bb.o:                                             ; preds = %bb.n
  %i.gg = icmp slt i32 %i.fd, 0
  br i1 %i.gg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gh = icmp samesign ugt i32 %i.fd, 8
  %i.gi = zext nneg i32 %i.fd to i64
  %i.gj = add nsw i64 %i.gf, %i.gi
  %i.gk = icmp sgt i64 %i.gj, %i.ao
  %or.cond = select i1 %i.gh, i1 %i.gk, i1 false
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.gl = load ptr, ptr %i.h, align 8, !tbaa !88  ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !90
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = invoke noundef i32 %i.go(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, i64 noundef %i.fj, i32 noundef 0)
          to label %.outer543 unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !llvm.loop !144, !call_target !99 ; 0 uses

.loopexit513.loopexit:                            ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %lpad.loopexit518 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp472.thread

.loopexit513.loopexit.split-lp:                   ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit.split-lp519 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp472.thread

.loopexit.split-lp514.loopexit:                   ; preds = %bb.ap
  %lpad.loopexit522 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp472.thread

.loopexit.split-lp514.loopexit.split-lp.loopexit: ; preds = %.preheader526.7, %.preheader526.6, %.preheader526.5, %.preheader526.4, %.preheader526.3, %.preheader526.2, %.preheader526.1, %.preheader526.preheader
  %lpad.loopexit527 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp472.thread

.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.preheader532.3, %.preheader532.2, %.preheader532.1, %.preheader532.preheader
  %lpad.loopexit533 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp472.thread

.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.invoke, %bb.n, %bb.q, %bb.ao, %bb.au, %bb.av, %bb.ax, %.thread438
  %.sroa.0.2.ph.ph.ph.ph.ph = phi ptr [ %.sroa.0.0.ph1512, %.invoke ], [ %.sroa.0.5, %.thread438 ], [ %.sroa.0.0.ph1512, %bb.ao ], [ %.sroa.0.0.ph1512, %bb.q ], [ %.sroa.0.0.ph1512, %bb.ax ], [ %.sroa.0.0.ph1512, %bb.n ], [ %.sroa.0.0.ph1512, %bb.au ], [ %.sroa.0.0.ph1512, %bb.av ]
  %.sroa.24.2.ph.ph.ph.ph.ph = phi ptr [ %.sroa.24.0.ph1514, %.invoke ], [ %.sroa.24.5, %.thread438 ], [ %.sroa.24.0.ph1514, %bb.ao ], [ %.sroa.24.0.ph1514, %bb.q ], [ %.sroa.24.0.ph1514, %bb.ax ], [ %.sroa.24.0.ph1514, %bb.n ], [ %.sroa.24.0.ph1514, %bb.au ], [ %.sroa.24.0.ph1514, %bb.av ]
  %lpad.loopexit540 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp472.thread

.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab
  %lpad.loopexit.split-lp541 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp472.thread

bb.r:                                             ; preds = %bb.p
  switch i32 %i.fc, label %bb.az [
    i32 1024, label %.preheader512
    i32 1049, label %bb.ao
    i32 1050, label %.preheader532.preheader
    i32 1025, label %.invoke
    i32 1046, label %bb.as
    i32 1040, label %bb.as
    i32 1035, label %bb.at
    i32 1042, label %bb.au
  ]

end_hunk_0
begin_hunk_1_@_ZN6LibRaw17phase_one_correctEv:bb.a
  %i.xd = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.cx unwind label %bb.dn     ; 2 uses

bb.cx:                                            ; preds = %.preheader495.1.1
  %i.xe = trunc i32 %i.xd to i16
  store i16 %i.xe, ptr %i.de, align 16, !tbaa !78
  %i.xf = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.cy unwind label %bb.dn     ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %i.xg = trunc i32 %i.xf to i16
  store i16 %i.xg, ptr %i.df, align 2, !tbaa !78
  %i.xh = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.cz unwind label %bb.dn     ; 2 uses

bb.cz:                                            ; preds = %bb.cy
  %i.xi = trunc i32 %i.xh to i16
  store i16 %i.xi, ptr %i.dg, align 4, !tbaa !78
  %i.xj = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.da unwind label %bb.dn     ; 2 uses

bb.da:                                            ; preds = %bb.cz
  %i.xk = trunc i32 %i.xj to i16
  store i16 %i.xk, ptr %i.dh, align 2, !tbaa !78
  %i.xl = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.db unwind label %bb.dn     ; 2 uses

bb.db:                                            ; preds = %bb.da
  %i.xm = trunc i32 %i.xl to i16
  store i16 %i.xm, ptr %i.di, align 8, !tbaa !78
  %i.xn = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dc unwind label %bb.dn     ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.xo = trunc i32 %i.xn to i16
  store i16 %i.xo, ptr %i.dj, align 2, !tbaa !78
  %i.xp = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dd unwind label %bb.dn     ; 2 uses

bb.dd:                                            ; preds = %bb.dc
  %i.xq = trunc i32 %i.xp to i16
  store i16 %i.xq, ptr %i.dk, align 4, !tbaa !78
  %i.xr = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.de unwind label %bb.dn     ; 2 uses

bb.de:                                            ; preds = %bb.dd
  %i.xs = trunc i32 %i.xr to i16
  store i16 %i.xs, ptr %i.dl, align 2, !tbaa !78
  %i.xt = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.df unwind label %bb.dn     ; 2 uses

bb.df:                                            ; preds = %bb.de
  %i.xu = trunc i32 %i.xt to i16
  store i16 %i.xu, ptr %i.dm, align 16, !tbaa !78
  %i.xv = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dg unwind label %bb.dn     ; 2 uses

bb.dg:                                            ; preds = %bb.df
  %i.xw = trunc i32 %i.xv to i16
  store i16 %i.xw, ptr %i.dn, align 2, !tbaa !78
  %i.xx = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dh unwind label %bb.dn     ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %i.xy = trunc i32 %i.xx to i16
  store i16 %i.xy, ptr %i.do, align 4, !tbaa !78
  %i.xz = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.di unwind label %bb.dn     ; 2 uses

bb.di:                                            ; preds = %bb.dh
  %i.ya = trunc i32 %i.xz to i16
  store i16 %i.ya, ptr %i.dp, align 2, !tbaa !78
  %i.yb = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dj unwind label %bb.dn     ; 2 uses

bb.dj:                                            ; preds = %bb.di
  %i.yc = trunc i32 %i.yb to i16
  store i16 %i.yc, ptr %i.dq, align 8, !tbaa !78
  %i.yd = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dk unwind label %bb.dn     ; 2 uses

bb.dk:                                            ; preds = %bb.dj
  %i.ye = trunc i32 %i.yd to i16
  store i16 %i.ye, ptr %i.dr, align 2, !tbaa !78
  %i.yf = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dl unwind label %bb.dn     ; 2 uses

bb.dl:                                            ; preds = %bb.dk
  %i.yg = trunc i32 %i.yf to i16
  store i16 %i.yg, ptr %i.ds, align 4, !tbaa !78
  %i.yh = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.dm unwind label %bb.dn     ; 2 uses

bb.dm:                                            ; preds = %bb.dl
  %i.yi = trunc i32 %i.yh to i16                  ; 2 uses
  store i16 %i.yi, ptr %i.dt, align 2, !tbaa !78
  %i.yj = icmp eq i16 %i.yi, 0
  %spec.select384.1.1 = or i1 %i.yj, %spec.select384.1963
  br i1 %spec.select384.1.1, label %.thread, label %.preheader500.preheader, !llvm.loop !144

bb.dn:                                            ; preds = %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %.preheader495.1.1, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %.preheader501.1, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %.preheader495.1, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %.preheader501
  %i.yk = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ec

.preheader500.preheader:                          ; preds = %bb.dm
  %i.yl = insertelement <8 x i32> poison, i32 %i.ti, i64 0
  %i.ym = insertelement <8 x i32> %i.yl, i32 %i.tk, i64 1
  %i.yn = insertelement <8 x i32> %i.ym, i32 %i.tm, i64 2
  %i.yo = insertelement <8 x i32> %i.yn, i32 %i.to, i64 3
  %i.yp = insertelement <8 x i32> %i.yo, i32 %i.tq, i64 4
  %i.yq = insertelement <8 x i32> %i.yp, i32 %i.ts, i64 5
  %i.yr = insertelement <8 x i32> %i.yq, i32 %i.tu, i64 6
  %i.ys = insertelement <8 x i32> %i.yr, i32 %i.tw, i64 7
  %i.yt = and <8 x i32> %i.ys, splat (i32 65535)
  %i.yu = insertelement <8 x i32> poison, i32 %i.up, i64 0
  %i.yv = insertelement <8 x i32> %i.yu, i32 %i.ur, i64 1
  %i.yw = insertelement <8 x i32> %i.yv, i32 %i.ut, i64 2
  %i.yx = insertelement <8 x i32> %i.yw, i32 %i.uv, i64 3
  %i.yy = insertelement <8 x i32> %i.yx, i32 %i.ux, i64 4
  %i.yz = insertelement <8 x i32> %i.yy, i32 %i.uz, i64 5
  %i.za = insertelement <8 x i32> %i.yz, i32 %i.vb, i64 6
  %i.zb = insertelement <8 x i32> %i.za, i32 %i.vd, i64 7
  %i.zc = and <8 x i32> %i.zb, splat (i32 65535)
  %i.zd = insertelement <8 x i32> poison, i32 %i.vw, i64 0
  %i.ze = insertelement <8 x i32> %i.zd, i32 %i.vy, i64 1
  %i.zf = insertelement <8 x i32> %i.ze, i32 %i.wa, i64 2
  %i.zg = insertelement <8 x i32> %i.zf, i32 %i.wc, i64 3
  %i.zh = insertelement <8 x i32> %i.zg, i32 %i.we, i64 4
  %i.zi = insertelement <8 x i32> %i.zh, i32 %i.wg, i64 5
  %i.zj = insertelement <8 x i32> %i.zi, i32 %i.wi, i64 6
  %i.zk = insertelement <8 x i32> %i.zj, i32 %i.wk, i64 7
  %i.zl = and <8 x i32> %i.zk, splat (i32 65535)
  %i.zm = insertelement <8 x i32> poison, i32 %i.xd, i64 0
  %i.zn = insertelement <8 x i32> %i.zm, i32 %i.xf, i64 1
  %i.zo = insertelement <8 x i32> %i.zn, i32 %i.xh, i64 2
  %i.zp = insertelement <8 x i32> %i.zo, i32 %i.xj, i64 3
  %i.zq = insertelement <8 x i32> %i.zp, i32 %i.xl, i64 4
  %i.zr = insertelement <8 x i32> %i.zq, i32 %i.xn, i64 5
  %i.zs = insertelement <8 x i32> %i.zr, i32 %i.xp, i64 6
  %i.zt = insertelement <8 x i32> %i.zs, i32 %i.xr, i64 7
  %i.zu = and <8 x i32> %i.zt, splat (i32 65535)
  %i.zv = add nuw nsw <8 x i32> %i.yt, %i.zc
  %i.zw = add nuw nsw <8 x i32> %i.zv, %i.zl
  %i.zx = add nuw nsw <8 x i32> %i.zw, %i.zu
  %i.zy = add nuw nsw <8 x i32> %i.zx, splat (i32 2)
  %i.zz = lshr <8 x i32> %i.zy, splat (i32 2)     ; 3 uses
  %i.aaa = insertelement <8 x i32> poison, i32 %i.ty, i64 0
  %i.aab = insertelement <8 x i32> %i.aaa, i32 %i.ua, i64 1
  %i.aac = insertelement <8 x i32> %i.aab, i32 %i.uc, i64 2
  %i.aad = insertelement <8 x i32> %i.aac, i32 %i.ue, i64 3
  %i.aae = insertelement <8 x i32> %i.aad, i32 %i.ug, i64 4
  %i.aaf = insertelement <8 x i32> %i.aae, i32 %i.ui, i64 5
  %i.aag = insertelement <8 x i32> %i.aaf, i32 %i.uk, i64 6
  %i.aah = insertelement <8 x i32> %i.aag, i32 %i.um, i64 7
  %i.aai = and <8 x i32> %i.aah, splat (i32 65535)
  %i.aaj = insertelement <8 x i32> poison, i32 %i.vf, i64 0
  %i.aak = insertelement <8 x i32> %i.aaj, i32 %i.vh, i64 1
  %i.aal = insertelement <8 x i32> %i.aak, i32 %i.vj, i64 2
  %i.aam = insertelement <8 x i32> %i.aal, i32 %i.vl, i64 3
  %i.aan = insertelement <8 x i32> %i.aam, i32 %i.vn, i64 4
  %i.aao = insertelement <8 x i32> %i.aan, i32 %i.vp, i64 5
  %i.aap = insertelement <8 x i32> %i.aao, i32 %i.vr, i64 6
  %i.aaq = insertelement <8 x i32> %i.aap, i32 %i.vt, i64 7
  %i.aar = and <8 x i32> %i.aaq, splat (i32 65535)
  %i.aas = insertelement <8 x i32> poison, i32 %i.wm, i64 0
  %i.aat = insertelement <8 x i32> %i.aas, i32 %i.wo, i64 1
  %i.aau = insertelement <8 x i32> %i.aat, i32 %i.wq, i64 2
  %i.aav = insertelement <8 x i32> %i.aau, i32 %i.ws, i64 3
  %i.aaw = insertelement <8 x i32> %i.aav, i32 %i.wu, i64 4
  %i.aax = insertelement <8 x i32> %i.aaw, i32 %i.ww, i64 5
  %i.aay = insertelement <8 x i32> %i.aax, i32 %i.wy, i64 6
  %i.aaz = insertelement <8 x i32> %i.aay, i32 %i.xa, i64 7
  %i.aba = and <8 x i32> %i.aaz, splat (i32 65535)
  %i.abb = insertelement <8 x i32> poison, i32 %i.xt, i64 0
  %i.abc = insertelement <8 x i32> %i.abb, i32 %i.xv, i64 1
  %i.abd = insertelement <8 x i32> %i.abc, i32 %i.xx, i64 2
  %i.abe = insertelement <8 x i32> %i.abd, i32 %i.xz, i64 3
  %i.abf = insertelement <8 x i32> %i.abe, i32 %i.yb, i64 4
  %i.abg = insertelement <8 x i32> %i.abf, i32 %i.yd, i64 5
  %i.abh = insertelement <8 x i32> %i.abg, i32 %i.yf, i64 6
  %i.abi = insertelement <8 x i32> %i.abh, i32 %i.yh, i64 7
  %i.abj = and <8 x i32> %i.abi, splat (i32 65535)
  %i.abk = add nuw nsw <8 x i32> %i.aai, %i.aar
  %i.abl = add nuw nsw <8 x i32> %i.abk, %i.aba
  %i.abm = add nuw nsw <8 x i32> %i.abl, %i.abj
  %i.abn = add nuw nsw <8 x i32> %i.abm, splat (i32 2)
  %i.abo = lshr <8 x i32> %i.abn, splat (i32 2)   ; 3 uses
  %i.abp = extractelement <8 x i32> %i.abo, i64 7 ; 2 uses
  %i.abq = mul nuw i32 %i.abp, 65535              ; 2 uses
  %i.abr = shufflevector <8 x i32> %i.zz, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, <8 x i32> <i32 8, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.abs = shufflevector <8 x i32> %i.zz, <8 x i32> %i.abo, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  br label %.preheader499

.thread:                                          ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.outer543

.preheader499:                                    ; preds = %.split715.us.1, %.preheader500.preheader
  %.not363 = phi i1 [ true, %.preheader500.preheader ], [ false, %.split715.us.1 ] ; 4 uses
  %indvars.iv993.sroa.phi = phi ptr [ %i.a, %.preheader500.preheader ], [ %indvars.iv993.sroa.gep1718, %.split715.us.1 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.abt = load <8 x i16>, ptr %indvars.iv993.sroa.phi, align 16, !tbaa !78
  %i.abu = zext <8 x i16> %i.abt to <8 x i32>
  store <8 x i32> %i.abu, ptr %i.du, align 4, !tbaa !12
  %1 = getelementptr inbounds nuw i8, ptr %indvars.iv993.sroa.phi, i64 16
  store <8 x i32> %i.abs, ptr %i.dw, align 16, !tbaa !12
  %i.abv = getelementptr inbounds nuw i8, ptr %indvars.iv993.sroa.phi, i64 30
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !78
  %2 = load <8 x i16>, ptr %1, align 16, !tbaa !78
  %i.abx = zext i16 %i.abw to i32
  %3 = zext <8 x i16> %2 to <8 x i32>
  store <8 x i32> %3, ptr %i.dx, align 4, !tbaa !12
  store i32 %i.abp, ptr %i.dz, align 16, !tbaa !12
  store <8 x i32> %i.abr, ptr %i.c, align 16, !tbaa !12
  store i32 0, ptr %i.b, align 16, !tbaa !12
  %i.aby = udiv i32 %i.abq, %i.abx                ; 2 uses
  store i32 %i.aby, ptr %i.ba, align 4, !tbaa !12
  store i32 %i.aby, ptr %i.bb, align 4, !tbaa !12
  store i32 65535, ptr %i.bc, align 8, !tbaa !12
  store i32 65535, ptr %i.bd, align 8, !tbaa !12
  invoke void @_ZN6LibRaw12cubic_splineEPKiS1_i(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 19)
          to label %bb.do unwind label %.loopexit.split-lp490

bb.do:                                            ; preds = %.preheader499
  br i1 %.not363, label %.split713.us.preheader, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.abz = load i32, ptr %i.az, align 4, !tbaa !178
  br label %.split713.us.preheader

.split713.us.preheader:                           ; preds = %bb.dp, %bb.do
  %.1326.us.ph = phi i32 [ 0, %bb.do ], [ %i.abz, %bb.dp ]
  br label %.split713.us

.split713.us:                                     ; preds = %.split713.us.preheader, %.split708.us.us
  %.1326.us = phi i32 [ %i.aej, %.split708.us.us ], [ %.1326.us.ph, %.split713.us.preheader ] ; 7 uses
  br i1 %.not363, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %.split713.us
  %i.aca = load i16, ptr %i.as, align 8, !tbaa !75
  %i.acb = zext i16 %i.aca to i32
  br label %bb.ds

bb.dr:                                            ; preds = %.split713.us
  %i.acc = load i32, ptr %i.az, align 4, !tbaa !178
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.acd = phi i32 [ %i.acb, %bb.dq ], [ %i.acc, %bb.dr ]
  %i.ace = icmp ult i32 %.1326.us, %i.acd
  br i1 %i.ace, label %bb.dt, label %.split715.us

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.split.us.us unwind label %.loopexit489.split.us

.split.us.us:                                     ; preds = %bb.dt
  %i.acf = load i32, ptr %i.at, align 4, !tbaa !176 ; 4 uses
  %.not790 = icmp eq i32 %i.acf, 0
  br i1 %.not790, label %.split708.us.us, label %.lr.ph712.us

bb.du:                                            ; preds = %bb.du, %.lr.ph712.us.new
  %storemerge365.us711.us = phi i32 [ 0, %.lr.ph712.us.new ], [ %i.adx, %bb.du ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph712.us.new ], [ %niter.next.3, %bb.du ]
  %i.acg = load i16, ptr %i.au, align 2, !tbaa !76
  %i.ach = zext i16 %i.acg to i32
  %i.aci = mul i32 %.1326.us, %i.ach
  %i.acj = add i32 %i.aci, %storemerge365.us711.us
  %i.ack = zext i32 %i.acj to i64
  %i.acl = getelementptr inbounds nuw [2 x i8], ptr %i.aek, i64 %i.ack ; 2 uses
  %i.acm = load i16, ptr %i.acl, align 2, !tbaa !78
  %i.acn = zext i16 %i.acm to i64
  %i.aco = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.acn
  %i.acp = load i16, ptr %i.aco, align 2, !tbaa !78
  store i16 %i.acp, ptr %i.acl, align 2, !tbaa !78
  %i.acq = or disjoint i32 %storemerge365.us711.us, 1
  %i.acr = load i16, ptr %i.au, align 2, !tbaa !76
  %i.acs = zext i16 %i.acr to i32
  %i.act = mul i32 %.1326.us, %i.acs
  %i.acu = add i32 %i.act, %i.acq
  %i.acv = zext i32 %i.acu to i64
  %i.acw = getelementptr inbounds nuw [2 x i8], ptr %i.aek, i64 %i.acv ; 2 uses
  %i.acx = load i16, ptr %i.acw, align 2, !tbaa !78
  %i.acy = zext i16 %i.acx to i64
  %i.acz = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.acy
  %i.ada = load i16, ptr %i.acz, align 2, !tbaa !78
  store i16 %i.ada, ptr %i.acw, align 2, !tbaa !78
  %i.adb = or disjoint i32 %storemerge365.us711.us, 2
  %i.adc = load i16, ptr %i.au, align 2, !tbaa !76
  %i.add = zext i16 %i.adc to i32
  %i.ade = mul i32 %.1326.us, %i.add
  %i.adf = add i32 %i.ade, %i.adb
  %i.adg = zext i32 %i.adf to i64
  %i.adh = getelementptr inbounds nuw [2 x i8], ptr %i.aek, i64 %i.adg ; 2 uses
  %i.adi = load i16, ptr %i.adh, align 2, !tbaa !78
  %i.adj = zext i16 %i.adi to i64
  %i.adk = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.adj
  %i.adl = load i16, ptr %i.adk, align 2, !tbaa !78
  store i16 %i.adl, ptr %i.adh, align 2, !tbaa !78
  %i.adm = or disjoint i32 %storemerge365.us711.us, 3
  %i.adn = load i16, ptr %i.au, align 2, !tbaa !76
  %i.ado = zext i16 %i.adn to i32
  %i.adp = mul i32 %.1326.us, %i.ado
  %i.adq = add i32 %i.adp, %i.adm
  %i.adr = zext i32 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %i.aek, i64 %i.adr ; 2 uses
  %i.adt = load i16, ptr %i.ads, align 2, !tbaa !78
  %i.adu = zext i16 %i.adt to i64
  %i.adv = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.adu
  %i.adw = load i16, ptr %i.adv, align 2, !tbaa !78
  store i16 %i.adw, ptr %i.ads, align 2, !tbaa !78
  %i.adx = add nuw i32 %storemerge365.us711.us, 4 ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split708.us.us.loopexit.unr-lcssa, label %bb.du, !llvm.loop !150

.split708.us.us.loopexit.unr-lcssa:               ; preds = %bb.du
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split708.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split708.us.us.loopexit.unr-lcssa, %.lr.ph712.us
  %storemerge365.us711.us.epil.init = phi i32 [ 0, %.lr.ph712.us ], [ %i.adx, %.split708.us.us.loopexit.unr-lcssa ]
  %lcmp.mod1700 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1700)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dv, %.epil.preheader
  %storemerge365.us711.us.epil = phi i32 [ %storemerge365.us711.us.epil.init, %.epil.preheader ], [ %i.aei, %bb.dv ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.dv ]
  %i.ady = load i16, ptr %i.au, align 2, !tbaa !76
  %i.adz = zext i16 %i.ady to i32
  %i.aea = mul i32 %.1326.us, %i.adz
  %i.aeb = add i32 %i.aea, %storemerge365.us711.us.epil
  %i.aec = zext i32 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw [2 x i8], ptr %i.aek, i64 %i.aec ; 2 uses
  %i.aee = load i16, ptr %i.aed, align 2, !tbaa !78
  %i.aef = zext i16 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.aef
  %i.aeh = load i16, ptr %i.aeg, align 2, !tbaa !78
  store i16 %i.aeh, ptr %i.aed, align 2, !tbaa !78
  %i.aei = add nuw i32 %storemerge365.us711.us.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split708.us.us, label %bb.dv, !llvm.loop !151

.split708.us.us:                                  ; preds = %.split708.us.us.loopexit.unr-lcssa, %bb.dv, %.split.us.us
  %i.aej = add nuw i32 %.1326.us, 1
  br label %.split713.us, !llvm.loop !152

.lr.ph712.us:                                     ; preds = %.split.us.us
  %i.aek = load ptr, ptr %i.av, align 8, !tbaa !77 ; 5 uses
  %xtraiter = and i32 %i.acf, 3                   ; 3 uses
  %i.ael = icmp ult i32 %i.acf, 4
  br i1 %i.ael, label %.epil.preheader, label %.lr.ph712.us.new

.lr.ph712.us.new:                                 ; preds = %.lr.ph712.us
  %unroll_iter = and i32 %i.acf, -4
  br label %bb.du

.loopexit489.split.us:                            ; preds = %bb.dt
  %lpad.loopexit990 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit489

.loopexit489.split:                               ; preds = %bb.dz
  %lpad.loopexit.split-lp987 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit489

.loopexit.split-lp490:                            ; preds = %.split715.us, %.preheader499
  %lpad.loopexit.split-lp492 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit489

.loopexit489:                                     ; preds = %.loopexit489.split, %.loopexit489.split.us, %.loopexit.split-lp490
  %lpad.phi493 = phi { ptr, i32 } [ %lpad.loopexit.split-lp492, %.loopexit.split-lp490 ], [ %lpad.loopexit.split-lp987, %.loopexit489.split ], [ %lpad.loopexit990, %.loopexit489.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.ec

.split715.us:                                     ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.aem = getelementptr inbounds nuw i8, ptr %indvars.iv993.sroa.phi, i64 32
  %4 = load <8 x i16>, ptr %i.aem, align 16, !tbaa !78
  %5 = zext <8 x i16> %4 to <8 x i32>
  store <8 x i32> %5, ptr %i.du, align 4, !tbaa !12
  store <8 x i32> %i.zz, ptr %i.dv, align 4, !tbaa !12
  %6 = getelementptr inbounds nuw i8, ptr %indvars.iv993.sroa.phi, i64 48
  %i.aen = getelementptr inbounds nuw i8, ptr %indvars.iv993.sroa.phi, i64 62
  %i.aeo = load i16, ptr %i.aen, align 2, !tbaa !78
  %7 = load <8 x i16>, ptr %6, align 16, !tbaa !78
  %8 = zext i16 %i.aeo to i32
  %9 = zext <8 x i16> %7 to <8 x i32>
  store <8 x i32> %9, ptr %i.dx, align 4, !tbaa !12
  store <8 x i32> %i.abo, ptr %i.dy, align 4, !tbaa !12
  store i32 0, ptr %i.c, align 16, !tbaa !12
  store i32 0, ptr %i.b, align 16, !tbaa !12
  %i.aep = udiv i32 %i.abq, %8                    ; 2 uses
  store i32 %i.aep, ptr %i.ba, align 4, !tbaa !12
  store i32 %i.aep, ptr %i.bb, align 4, !tbaa !12
  store i32 65535, ptr %i.bc, align 8, !tbaa !12
  store i32 65535, ptr %i.bd, align 8, !tbaa !12
  invoke void @_ZN6LibRaw12cubic_splineEPKiS1_i(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 19)
          to label %bb.dw unwind label %.loopexit.split-lp490

bb.dw:                                            ; preds = %.split715.us
  br i1 %.not363, label %.split713.1.preheader, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.aeq = load i32, ptr %i.az, align 4, !tbaa !178
  br label %.split713.1.preheader

.split713.1.preheader:                            ; preds = %bb.dw, %bb.dx
  %.1326.1.ph = phi i32 [ 0, %bb.dw ], [ %i.aeq, %bb.dx ]
  br label %.split713.1

.split713.1:                                      ; preds = %.split713.1.preheader, %.split708.1
  %.1326.1 = phi i32 [ %i.afp, %.split708.1 ], [ %.1326.1.ph, %.split713.1.preheader ] ; 4 uses
  br i1 %.not363, label %bb.dy, label %.thread1178

bb.dy:                                            ; preds = %.split713.1
  %i.aer = load i32, ptr %i.az, align 4, !tbaa !178
  %i.aes = icmp ult i32 %.1326.1, %i.aer
  br i1 %i.aes, label %bb.dz, label %.split715.us.1

.thread1178:                                      ; preds = %.split713.1
  %i.aet = load i16, ptr %i.as, align 8, !tbaa !75
  %i.aeu = zext i16 %i.aet to i32
  %i.aev = icmp ult i32 %.1326.1, %i.aeu
  br i1 %i.aev, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %.thread1178, %bb.dy
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.split.1 unwind label %.loopexit489.split

.split.1:                                         ; preds = %bb.dz
  %i.aew = load i32, ptr %i.at, align 4, !tbaa !176 ; 2 uses
  %i.aex = load i16, ptr %i.au, align 2, !tbaa !76 ; 2 uses
  %i.aey = zext i16 %i.aex to i32
  %i.aez = icmp ult i32 %i.aew, %i.aey
  br i1 %i.aez, label %.lr.ph710.1, label %.split708.1

.lr.ph710.1:                                      ; preds = %.split.1
  %i.afa = load ptr, ptr %i.av, align 8, !tbaa !77
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ea, %.lr.ph710.1
  %i.afb = phi i16 [ %i.aex, %.lr.ph710.1 ], [ %i.afm, %bb.ea ]
  %storemerge365709.1 = phi i32 [ %i.aew, %.lr.ph710.1 ], [ %i.afl, %bb.ea ] ; 2 uses
  %i.afc = zext i16 %i.afb to i32
  %i.afd = mul i32 %.1326.1, %i.afc
  %i.afe = add i32 %i.afd, %storemerge365709.1
  %i.aff = zext i32 %i.afe to i64
  %i.afg = getelementptr inbounds nuw [2 x i8], ptr %i.afa, i64 %i.aff ; 2 uses
  %i.afh = load i16, ptr %i.afg, align 2, !tbaa !78
  %i.afi = zext i16 %i.afh to i64
  %i.afj = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.afi
  %i.afk = load i16, ptr %i.afj, align 2, !tbaa !78
  store i16 %i.afk, ptr %i.afg, align 2, !tbaa !78
  %i.afl = add nuw nsw i32 %storemerge365709.1, 1 ; 2 uses
  %i.afm = load i16, ptr %i.au, align 2, !tbaa !76 ; 2 uses
  %i.afn = zext i16 %i.afm to i32
  %i.afo = icmp samesign ult i32 %i.afl, %i.afn
  br i1 %i.afo, label %bb.ea, label %.split708.1, !llvm.loop !150

.split708.1:                                      ; preds = %bb.ea, %.split.1
  %i.afp = add nuw i32 %.1326.1, 1
  br label %.split713.1, !llvm.loop !152

.split715.us.1:                                   ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.preheader499

bb.eb:                                            ; preds = %.thread1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.thread438

bb.ec:                                            ; preds = %.loopexit489, %bb.dn
  %.pn = phi { ptr, i32 } [ %i.yk, %bb.dn ], [ %lpad.phi493, %.loopexit489 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit.split-lp472.thread

bb.ed:                                            ; preds = %bb.az
  %i.afq = icmp ne i32 %i.fc, 1054
  %i.afr = icmp ne i32 %.0300.ph1517, 0           ; 2 uses
  %or.cond7 = select i1 %i.afq, i1 true, i1 %i.afr
  br i1 %or.cond7, label %bb.fa, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN6LibRaw17phase_one_correctEv.qmult, i64 16, i1 false)
  %i.afs = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ef unwind label %.loopexit.split-lp506 ; 0 uses

bb.ef:                                            ; preds = %bb.ee
  %i.aft = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.eg unwind label %.loopexit.split-lp506 ; 0 uses

bb.eg:                                            ; preds = %bb.ef
  %i.afu = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.eh unwind label %.loopexit.split-lp506 ; 0 uses

bb.eh:                                            ; preds = %bb.eg
  %i.afv = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ei unwind label %.loopexit.split-lp506 ; 0 uses

bb.ei:                                            ; preds = %bb.eh
  %i.afw = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %bb.ej unwind label %.loopexit.split-lp506

bb.ej:                                            ; preds = %bb.ei
  %i.afx = fptrunc reassoc nsz arcp contract afn double %i.afw to float
  %i.afy = fadd reassoc nsz arcp contract afn float %i.afx, 1.000000e+00
  store float %i.afy, ptr %i.d, align 16, !tbaa !81
  %i.afz = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ek unwind label %.loopexit.split-lp506 ; 0 uses

bb.ek:                                            ; preds = %bb.ej
  %i.aga = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.el unwind label %.loopexit.split-lp506 ; 0 uses

bb.el:                                            ; preds = %bb.ek
  %i.agb = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.em unwind label %.loopexit.split-lp506 ; 0 uses

bb.em:                                            ; preds = %bb.el
  %i.agc = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.en unwind label %.loopexit.split-lp506 ; 0 uses

bb.en:                                            ; preds = %bb.em
  %i.agd = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.eo unwind label %.loopexit.split-lp506 ; 0 uses

bb.eo:                                            ; preds = %bb.en
  %i.age = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %bb.ep unwind label %.loopexit.split-lp506

bb.ep:                                            ; preds = %bb.eo
  %i.agf = fptrunc reassoc nsz arcp contract afn double %i.age to float
  %i.agg = fadd reassoc nsz arcp contract afn float %i.agf, 1.000000e+00
  store float %i.agg, ptr %i.be, align 4, !tbaa !81
  %i.agh = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.eq unwind label %.loopexit.split-lp506 ; 0 uses

bb.eq:                                            ; preds = %bb.ep
  %i.agi = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.er unwind label %.loopexit.split-lp506 ; 0 uses

bb.er:                                            ; preds = %bb.eq
  %i.agj = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.es unwind label %.loopexit.split-lp506 ; 0 uses

bb.es:                                            ; preds = %bb.er
  %i.agk = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %bb.et unwind label %.loopexit.split-lp506

bb.et:                                            ; preds = %bb.es
  %i.agl = fptrunc reassoc nsz arcp contract afn double %i.agk to float
  %i.agm = fadd reassoc nsz arcp contract afn float %i.agl, 1.000000e+00
  store float %i.agm, ptr %i.bf, align 8, !tbaa !81
  %i.agn = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.eu unwind label %.loopexit.split-lp506 ; 0 uses

bb.eu:                                            ; preds = %bb.et
  %i.ago = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ev unwind label %.loopexit.split-lp506 ; 0 uses

bb.ev:                                            ; preds = %bb.eu
  %i.agp = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.ew unwind label %.loopexit.split-lp506 ; 0 uses

bb.ew:                                            ; preds = %bb.ev
  %i.agq = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %bb.ex unwind label %.loopexit.split-lp506

bb.ex:                                            ; preds = %bb.ew
  %i.agr = fptrunc reassoc nsz arcp contract afn double %i.agq to float
  %i.ags = fadd reassoc nsz arcp contract afn float %i.agr, 1.000000e+00
  store float %i.ags, ptr %i.bg, align 4, !tbaa !81
  %i.agt = load i16, ptr %i.as, align 8, !tbaa !75
  %.not791 = icmp eq i16 %i.agt, 0
  br i1 %.not791, label %._crit_edge726, label %.lr.ph725

.lr.ph725:                                        ; preds = %bb.ex, %._crit_edge722
  %.2327723 = phi i32 [ %i.aht, %._crit_edge722 ], [ 0, %bb.ex ] ; 3 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader498 unwind label %.loopexit505

.preheader498:                                    ; preds = %.lr.ph725
  %i.agu = load i16, ptr %i.au, align 2, !tbaa !76 ; 2 uses
  %.not792 = icmp eq i16 %i.agu, 0
  br i1 %.not792, label %._crit_edge722, label %.lr.ph721

.lr.ph721:                                        ; preds = %.preheader498
  %i.agv = zext i16 %i.agu to i32
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/raw2image?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6LibRaw15raw2image_startEv:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p, %bb.n
  %i.ba = phi i16 [ 0, %bb.n ], [ 1, %bb.o ], [ %i.az, %bb.q ], [ 1, %bb.p ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 381668
  store i16 %i.ba, ptr %i.bb, align 4, !tbaa !75
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !76
  %i.be = zext i16 %i.bd to i32
  %i.bf = zext nneg i16 %i.ba to i32              ; 4 uses
  %i.bg = add nuw nsw i32 %i.be, %i.bf
  %i.bh = lshr i32 %i.bg, %i.bf
  %i.bi = trunc i32 %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %i.bi, ptr %i.bj, align 4, !tbaa !77
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !78
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bm, %i.bf
  %i.bo = lshr i32 %i.bn, %i.bf
  %i.bp = trunc i32 %i.bo to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !79
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6LibRaw9raw2imageEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.libraw_decoder_info_t, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5592 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !80
  %i.d = and i32 %i.c, 268435448
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 193776 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %.not = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 193800 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not114 = icmp eq ptr %i.j, null
  %or.cond = select i1 %.not, i1 %.not114, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 193792 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not115 = icmp eq ptr %i.l, null
  %or.cond137 = select i1 %or.cond, i1 %.not115, i1 false
  br i1 %or.cond137, label %bb.bo, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6LibRaw15raw2image_startEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.m = load ptr, ptr %0, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.d unwind label %bb.l, !call_target !89

bb.d:                                             ; preds = %bb.c
  %.not116 = icmp eq i32 %i.p, 0
  br i1 %.not116, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !90
  %.not117 = icmp eq ptr %i.q, null
  br i1 %.not117, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5596
  %i.s = load i32, ptr %i.r, align 4, !tbaa !91
  %i.t = and i32 %i.s, 8388608
  %.not118 = icmp eq i32 %i.t, 0
  br i1 %.not118, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  invoke void @_ZN6LibRaw29phase_one_allocate_tempbufferEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.w = invoke noundef i32 @_ZN6LibRaw24phase_one_subtract_blackEPtS0_(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.u, ptr noundef %i.v)
          to label %bb.i unwind label %bb.m       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %.thread141

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5504
  %i.z = load i32, ptr %i.y, align 8, !tbaa !92
  %.not119 = icmp eq i32 %i.z, 0
  br i1 %.not119, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = invoke noundef i32 @_ZN6LibRaw17phase_one_correctEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.n unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %bb.g, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.az

bb.m:                                             ; preds = %.thread141, %bb.k, %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.az

bb.n:                                             ; preds = %bb.k
  %.not120 = icmp eq i32 %i.aa, 0
  br i1 %.not120, label %.critedge, label %.thread141

.thread141:                                       ; preds = %bb.i, %bb.n
  %.086144 = phi i32 [ %i.aa, %bb.n ], [ %i.w, %bb.i ]
  invoke void @_ZN6LibRaw25phase_one_free_tempbufferEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bo unwind label %bb.m

.critedge:                                        ; preds = %bb.j, %bb.n, %bb.f, %bb.d
  %.093 = phi i1 [ true, %bb.n ], [ false, %bb.f ], [ false, %bb.d ], [ true, %bb.j ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !93 ; 2 uses
  %.not121 = icmp eq i32 %i.ae, 0
  %i.af = icmp eq i32 %i.ae, 9
  %i.ag = select i1 %i.af, i32 6, i32 2
  %i.ah = select i1 %.not121, i32 0, i32 %i.ag    ; 4 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !94  ; 2 uses
  %.not122 = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !77
  %i.al = zext i16 %i.ak to i32
  %i.am = add nuw nsw i32 %i.ah, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !79
  %i.ap = zext i16 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.ah, %i.ap
  %i.ar = mul nuw nsw i32 %i.aq, %i.am
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  br i1 %.not122, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noundef ptr @_ZN6LibRaw7reallocEPvm(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.ai, i64 noundef %i.at)
          to label %bb.p unwind label %bb.q       ; 2 uses

bb.p:                                             ; preds = %bb.o
  store ptr %i.au, ptr %i.a, align 8, !tbaa !94
  %i.av = load i16, ptr %i.aj, align 4, !tbaa !77
  %i.aw = zext i16 %i.av to i32
  %i.ax = add nuw nsw i32 %i.ah, %i.aw
  %i.ay = load i16, ptr %i.an, align 2, !tbaa !79
  %i.az = zext i16 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.ah, %i.az
  %i.bb = mul nuw nsw i32 %i.ba, %i.ax
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.au, i8 0, i64 %i.bd, i1 false)
  br label %bb.t

bb.q:                                             ; preds = %bb.r, %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.az

bb.r:                                             ; preds = %.critedge
  %i.bf = invoke noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.as, i64 noundef 8)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !94
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.bg = load ptr, ptr %0, align 8, !tbaa !83
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1)
          to label %bb.u unwind label %bb.ae, !call_target !100 ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.bm = load i16, ptr %i.bl, align 4, !tbaa !76 ; 2 uses
  %i.bn = zext i16 %i.bm to i32                   ; 3 uses
  %i.bo = load i16, ptr %i.bk, align 8, !tbaa !108 ; 4 uses
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !109 ; 3 uses
  %i.bs = zext i16 %i.br to i32                   ; 2 uses
  %i.bt = sub nsw i32 %i.bp, %i.bs                ; 3 uses
  %2 = icmp sle i32 %i.bt, %i.bn
  %i.bu = icmp slt i32 %i.bt, 0
  %3 = and i1 %2, %i.bu
  %. = call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.bn)
  %spec.select = select i1 %3, i32 0, i32 %.      ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 8 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !78
  %i.bx = zext i16 %i.bw to i32                   ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 4 uses
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !110
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 16 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !111
  %i.cd = zext i16 %i.cc to i32
  %i.ce = sub nsw i32 %i.ca, %i.cd                ; 3 uses
  %4 = icmp sle i32 %i.ce, %i.bx
  %i.cf = icmp slt i32 %i.ce, 0
  %5 = and i1 %4, %i.cf
  %.138 = call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.bx)
  %i.cg = select i1 %5, i32 0, i32 %.138          ; 7 uses
  %i.ch = load i32, ptr %i.ad, align 8, !tbaa !93 ; 3 uses
  %.not123 = icmp eq i32 %i.ch, 0
  br i1 %.not123, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !112
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.w, label %bb.am

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !81  ; 3 uses
  %.not124 = icmp eq ptr %i.cl, null
  br i1 %.not124, label %bb.am, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 381670 ; 3 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !113 ; 5 uses
  %.not127 = icmp eq i16 %i.cn, 0
  br i1 %.not127, label %.preheader150, label %.preheader153

.preheader153:                                    ; preds = %bb.x
  %i.co = shl nuw nsw i32 %i.bs, 1
  %i.cp = icmp samesign ult i32 %i.co, %i.bp
  br i1 %i.cp, label %.preheader152.lr.ph, label %.loopexit

.preheader152.lr.ph:                              ; preds = %.preheader153
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 381828
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !114
  %.fr = freeze i32 %i.cr
  %.not134 = icmp eq i32 %.fr, 0                  ; 2 uses
  %i.cs = zext i1 %.not134 to i32                 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  br i1 %.not134, label %.preheader152.us, label %.preheader152

.preheader152.us:                                 ; preds = %.preheader152.lr.ph, %._crit_edge.split.us.us
  %i.cw = phi i16 [ %i.fe, %._crit_edge.split.us.us ], [ %i.br, %.preheader152.lr.ph ]
  %i.cx = phi i16 [ %i.ff, %._crit_edge.split.us.us ], [ %i.bo, %.preheader152.lr.ph ]
  %i.cy = phi i16 [ %i.fg, %._crit_edge.split.us.us ], [ %i.cn, %.preheader152.lr.ph ] ; 2 uses
  %i.cz = phi i16 [ %i.fh, %._crit_edge.split.us.us ], [ %i.cn, %.preheader152.lr.ph ] ; 2 uses
  %.082156.us = phi i32 [ %i.fi, %._crit_edge.split.us.us ], [ 0, %.preheader152.lr.ph ] ; 4 uses
  %.not169 = icmp eq i16 %i.cz, 0
  br i1 %.not169, label %._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.preheader152.us
  %i.da = zext i16 %i.cz to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.lr.ph.us
  %i.db = phi i16 [ %i.cy, %.lr.ph.us ], [ %i.fa, %bb.ac ] ; 3 uses
  %i.dc = phi i32 [ %i.da, %.lr.ph.us ], [ %i.fb, %bb.ac ]
  %.081155.us.us = phi i32 [ 0, %.lr.ph.us ], [ %i.dh, %bb.ac ] ; 3 uses
  %i.dd = lshr i32 %.081155.us.us, 1
  %i.de = xor i32 %i.dd, -1
  %i.df = add nsw i32 %.082156.us, %i.de
  %i.dg = add i32 %i.df, %i.dc                    ; 3 uses
  %i.dh = add nuw nsw i32 %.081155.us.us, 1       ; 3 uses
  %i.di = lshr i32 %i.dh, 1
  %i.dj = add nuw nsw i32 %i.di, %.082156.us      ; 3 uses
  %i.dk = load i16, ptr %i.bl, align 4, !tbaa !76
  %i.dl = zext i16 %i.dk to i32
  %i.dm = icmp ult i32 %i.dg, %i.dl
  br i1 %i.dm, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.dn = load i16, ptr %i.bv, align 2, !tbaa !78
  %i.do = zext i16 %i.dn to i32
  %i.dp = icmp samesign ult i32 %i.dj, %i.do
  br i1 %i.dp, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dq = load i16, ptr %i.cb, align 2, !tbaa !111
  %i.dr = zext i16 %i.dq to i32
  %i.ds = add nuw nsw i32 %.081155.us.us, %i.dr   ; 2 uses
  %i.dt = load i16, ptr %i.by, align 2, !tbaa !110
  %i.du = zext i16 %i.dt to i32
  %i.dv = icmp samesign ult i32 %i.ds, %i.du
  br i1 %i.dv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dw = load i16, ptr %i.bq, align 8, !tbaa !109
  %i.dx = zext i16 %i.dw to i32
  %i.dy = add nuw nsw i32 %.082156.us, %i.dx
  %i.dz = load i32, ptr %i.ct, align 8, !tbaa !115
  %i.ea = mul i32 %i.dy, %i.dz
  %i.eb = lshr i32 %i.ea, 1
  %i.ec = add nuw i32 %i.eb, %i.ds
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !116
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.eh = load i16, ptr %i.cu, align 4, !tbaa !75
  %i.ei = zext i16 %i.eh to i32                   ; 2 uses
  %i.ej = lshr i32 %i.dg, %i.ei
  %i.ek = load i16, ptr %i.cv, align 2, !tbaa !79
  %i.el = zext i16 %i.ek to i32
  %i.em = mul nuw i32 %i.ej, %i.el
  %i.en = lshr i32 %i.dj, %i.ei
  %i.eo = add nuw i32 %i.em, %i.en
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ep
  %i.er = shl nuw nsw i32 %i.dg, 1
  %i.es = and i32 %i.er, 14
  %i.et = and i32 %i.dj, 1
  %i.eu = or disjoint i32 %i.es, %i.et
  %i.ev = shl nuw nsw i32 %i.eu, 1
  %i.ew = lshr i32 %i.ch, %i.ev
  %i.ex = and i32 %i.ew, 3
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.ey
  store i16 %i.ef, ptr %i.ez, align 2, !tbaa !116
  %.pre183.a = load i16, ptr %i.cm, align 2, !tbaa !113
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.fa = phi i16 [ %.pre183.a, %bb.ab ], [ %i.db, %bb.aa ], [ %i.db, %bb.z ], [ %i.db, %bb.y ] ; 4 uses
  %i.fb = zext i16 %i.fa to i32                   ; 2 uses
  %i.fc = shl nuw nsw i32 %i.fb, %i.cs
  %i.fd = icmp samesign ult i32 %i.dh, %i.fc
  br i1 %i.fd, label %bb.y, label %._crit_edge.split.us.us.loopexit, !llvm.loop !128

._crit_edge.split.us.us.loopexit:                 ; preds = %bb.ac
  %.pre184.a = load i16, ptr %i.bk, align 8, !tbaa !108
  %.pre185 = load i16, ptr %i.bq, align 8, !tbaa !109
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %.preheader152.us
  %i.fe = phi i16 [ %.pre185, %._crit_edge.split.us.us.loopexit ], [ %i.cw, %.preheader152.us ] ; 2 uses
  %i.ff = phi i16 [ %.pre184.a, %._crit_edge.split.us.us.loopexit ], [ %i.cx, %.preheader152.us ] ; 2 uses
  %i.fg = phi i16 [ %i.fa, %._crit_edge.split.us.us.loopexit ], [ %i.cy, %.preheader152.us ]
  %i.fh = phi i16 [ %i.fa, %._crit_edge.split.us.us.loopexit ], [ 0, %.preheader152.us ]
  %i.fi = add nuw nsw i32 %.082156.us, 1          ; 2 uses
  %i.fj = zext i16 %i.ff to i32
  %i.fk = zext i16 %i.fe to i32
  %i.fl = shl nuw nsw i32 %i.fk, 1
  %i.fm = sub nsw i32 %i.fj, %i.fl
  %i.fn = icmp slt i32 %i.fi, %i.fm
  br i1 %i.fn, label %.preheader152.us, label %.loopexit, !llvm.loop !129

.preheader150:                                    ; preds = %bb.x
  %i.fo = icmp sgt i32 %spec.select, 0
  br i1 %i.fo, label %.preheader149.lr.ph, label %.loopexit

.preheader149.lr.ph:                              ; preds = %.preheader150
  %i.fp = icmp sgt i32 %i.cg, 0
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 30
  br i1 %i.fp, label %.preheader149.a, label %.loopexit

.preheader152:                                    ; preds = %.preheader152.lr.ph, %._crit_edge.split
  %i.ft = phi i16 [ %i.id, %._crit_edge.split ], [ %i.br, %.preheader152.lr.ph ]
  %i.fu = phi i16 [ %i.ie, %._crit_edge.split ], [ %i.bo, %.preheader152.lr.ph ]
  %i.fv = phi i16 [ %i.if, %._crit_edge.split ], [ %i.cn, %.preheader152.lr.ph ] ; 2 uses
  %i.fw = phi i16 [ %i.ig, %._crit_edge.split ], [ %i.cn, %.preheader152.lr.ph ] ; 2 uses
  %.082156 = phi i32 [ %.pre-phi, %._crit_edge.split ], [ 0, %.preheader152.lr.ph ] ; 4 uses
  %.not168 = icmp eq i16 %i.fw, 0
  br i1 %.not168, label %.preheader152.._crit_edge.split_crit_edge, label %.lr.ph

.preheader152.._crit_edge.split_crit_edge:        ; preds = %.preheader152
  %.pre186 = add nuw nsw i32 %.082156, 1
  br label %._crit_edge.split

.lr.ph:                                           ; preds = %.preheader152
  %i.fx = zext i16 %i.fw to i32
  %i.fy = lshr i32 %.082156, 1
  %i.fz = add nuw nsw i32 %.082156, 1             ; 2 uses
  %i.ga = lshr i32 %i.fz, 1
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.ai
  %i.gb = phi i16 [ %i.fv, %.lr.ph ], [ %i.hy, %bb.ai ] ; 3 uses
  %i.gc = phi i32 [ %i.fx, %.lr.ph ], [ %i.ia, %bb.ai ]
  %.081155 = phi i32 [ 0, %.lr.ph ], [ %i.hz, %bb.ai ] ; 4 uses
  %i.gd = xor i32 %.081155, -1
  %i.ge = add nsw i32 %i.fy, %i.gd
  %i.gf = add i32 %i.ge, %i.gc                    ; 3 uses
  %i.gg = add nuw nsw i32 %.081155, %i.ga         ; 3 uses
  %i.gh = load i16, ptr %i.bl, align 4, !tbaa !76
  %i.gi = zext i16 %i.gh to i32
  %i.gj = icmp ult i32 %i.gf, %i.gi
  br i1 %i.gj, label %bb.af, label %bb.ai

bb.ae:                                            ; preds = %bb.t
  %i.gk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.ay

bb.af:                                            ; preds = %bb.ad
  %i.gl = load i16, ptr %i.bv, align 2, !tbaa !78
  %i.gm = zext i16 %i.gl to i32
  %i.gn = icmp samesign ult i32 %i.gg, %i.gm
  br i1 %i.gn, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.go = load i16, ptr %i.cb, align 2, !tbaa !111
end_hunk_0
begin_hunk_1_@_ZN6LibRaw12raw2image_exEi:bb.a
  %i.bj = phi <2 x i32> [ %i.ao, %._crit_edge245 ], [ %i.ao, %bb.r ], [ %i.ao, %bb.s ], [ %i.bd, %bb.q ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bl = load <2 x i16>, ptr %i.bk, align 4, !tbaa !116
  %i.bm = zext <2 x i16> %i.bl to <2 x i32>
  %i.bn = sub nsw <2 x i32> %i.bm, %i.bi
  %i.bo = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bj, <2 x i32> %i.bn) ; 3 uses
  %i.bp = icmp slt <2 x i32> %i.bo, splat (i32 1)
  %i.bq = bitcast <2 x i1> %i.bp to i2
  %.not281 = icmp eq i2 %i.bq, 0
  br i1 %.not281, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = tail call ptr @__cxa_allocate_exception(i64 4) #12 ; 2 uses
  store i32 7, ptr %i.br, align 16, !tbaa !121
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
          to label %bb.ca unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.bn

bb.w:                                             ; preds = %bb.t
  %i.bt = trunc <2 x i32> %i.bi to <2 x i16>
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bv = load <2 x i16>, ptr %i.bu, align 8, !tbaa !116
  %i.bw = add <2 x i16> %i.bv, %i.bt
  store <2 x i16> %i.bw, ptr %i.bu, align 8, !tbaa !116
  %i.bx = trunc <2 x i32> %i.bo to <2 x i16>
  store <2 x i16> %i.bx, ptr %i.bk, align 4, !tbaa !116
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.bz = load i16, ptr %i.by, align 4, !tbaa !75
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cc = insertelement <2 x i32> poison, i32 %i.ca, i64 0
  %i.cd = shufflevector <2 x i32> %i.cc, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ce = add nuw nsw <2 x i32> %i.bo, %i.cd
  %i.cf = lshr <2 x i32> %i.ce, %i.cd
  %i.cg = trunc <2 x i32> %i.cf to <2 x i16>
  store <2 x i16> %i.cg, ptr %i.cb, align 4, !tbaa !116
  %i.ch = icmp ugt i32 %i.bh, 999
  %or.cond273 = select i1 %.not163, i1 %i.ch, i1 false
  br i1 %or.cond273, label %.preheader210.a, label %bb.x

.preheader210.a:                                  ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.cj = extractelement <2 x i32> %i.bi, i64 0
  %i.ck = shl nuw i32 %i.cj, 1
  %i.cl = shufflevector <2 x i32> %i.bi, <2 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.cm = and <16 x i32> %i.cl, splat (i32 1)
  %i.cn = insertelement <2 x i32> poison, i32 %i.ck, i64 0 ; 4 uses
  %i.co = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cp = add <4 x i32> %i.co, <i32 4, i32 4, i32 6, i32 6>
  %i.cq = add <4 x i32> %i.co, <i32 12, i32 12, i32 14, i32 14>
  %i.cr = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cs = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ct = shufflevector <16 x i32> %i.cr, <16 x i32> %i.cs, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x i32> %i.cq, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cv = shufflevector <16 x i32> %i.ct, <16 x i32> %i.cu, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19>
  %i.cw = add <2 x i32> %i.cn, <i32 2, i32 poison>
  %i.cx = shufflevector <2 x i32> %i.cw, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cy = shufflevector <16 x i32> %i.cv, <16 x i32> %i.cx, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 poison, i32 poison, i32 12, i32 13, i32 14, i32 15>
  %i.cz = add <2 x i32> %i.cn, <i32 10, i32 poison>
  %i.da = shufflevector <2 x i32> %i.cz, <2 x i32> poison, <16 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.db = shufflevector <16 x i32> %i.cy, <16 x i32> %i.da, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.dc = and <16 x i32> %i.db, splat (i32 14)
  %i.dd = or disjoint <16 x i32> %i.cm, %i.dc
  %i.de = shl nuw nsw <16 x i32> %i.dd, splat (i32 1)
  %i.df = xor <16 x i32> %i.de, <i32 2, i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2, i32 16, i32 18, i32 0, i32 2, i32 0, i32 2, i32 0, i32 2>
  %i.dg = insertelement <16 x i32> poison, i32 %i.bh, i64 0
  %i.dh = shufflevector <16 x i32> %i.dg, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.di = lshr <16 x i32> %i.dh, %i.df
  %i.dj = shl <16 x i32> %i.di, <i32 2, i32 0, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.dk = and <16 x i32> %i.dj, <i32 12, i32 3, i32 48, i32 192, i32 768, i32 3072, i32 12288, i32 49152, i32 196608, i32 786432, i32 3145728, i32 12582912, i32 50331648, i32 201326592, i32 805306368, i32 -1>
  %i.dl = tail call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %i.dk)
  store i32 %i.dl, ptr %i.ci, align 8, !tbaa !93
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader210.a, %bb.o, %.critedge
  %i.dm = phi i1 [ false, %.critedge ], [ false, %bb.o ], [ true, %.preheader210.a ], [ true, %bb.w ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !93 ; 2 uses
  %.not168 = icmp eq i32 %i.do, 0
  %i.dp = icmp eq i32 %i.do, 9
  %i.dq = select i1 %i.dp, i32 6, i32 2
  %i.dr = select i1 %.not168, i32 0, i32 %i.dq    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !79
  %i.dv = zext i16 %i.du to i32
  %i.dw = add nuw nsw i32 %i.dr, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.dy = load i16, ptr %i.dx, align 4, !tbaa !77
  %i.dz = zext i16 %i.dy to i32
  %i.ea = add nuw nsw i32 %i.dr, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 381670 ; 4 uses
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !113
  %i.ed = icmp ne i16 %i.ec, 0
  %or.cond4 = and i1 %i.dm, %i.ed
  br i1 %or.cond4, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !78
  %i.eg = zext i16 %i.ef to i32
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 381828
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !114 ; 2 uses
  %.not169 = icmp eq i32 %i.ei, 0
  %i.ej = zext i1 %.not169 to i32
  %i.ek = lshr i32 %i.eg, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.em = load i16, ptr %i.el, align 4, !tbaa !76
  %i.en = zext i16 %i.em to i32
  %i.eo = lshr i32 %i.en, %i.ei
  %i.ep = add nuw nsw i32 %i.eo, %i.ek
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.er = load i16, ptr %i.eq, align 4, !tbaa !75
  %i.es = zext i16 %i.er to i32                   ; 3 uses
  %i.et = add nuw nsw i32 %i.ep, %i.es            ; 2 uses
  %i.eu = add nsw i32 %i.et, -1
  %i.ev = ashr i32 %i.eu, %i.es
  %i.ew = lshr i32 %i.et, %i.es
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0119 = phi i32 [ %i.ew, %bb.y ], [ %i.dw, %bb.x ] ; 2 uses
  %.0118 = phi i32 [ %i.ev, %bb.y ], [ %i.ea, %bb.x ]
  %i.ex = mul nsw i32 %.0118, %.0119
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !94  ; 2 uses
  %.not170 = icmp eq ptr %i.ey, null
  %i.ez = sext i32 %i.ex to i64                   ; 2 uses
  br i1 %.not170, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = shl nsw i64 %i.ez, 3                    ; 2 uses
  %i.fb = invoke noundef ptr @_ZN6LibRaw7reallocEPvm(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.ey, i64 noundef %i.fa)
          to label %bb.ab unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.fb, ptr %i.c, align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.fb, i8 0, i64 %i.fa, i1 false)
  br label %bb.af

bb.ac:                                            ; preds = %bb.ad, %bb.aa
  %i.fc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.bn

bb.ad:                                            ; preds = %bb.z
  %i.fd = invoke noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ez, i64 noundef 8)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.fd, ptr %i.c, align 8, !tbaa !94
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.fe = load ptr, ptr %0, align 8, !tbaa !83
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = invoke noundef i32 %i.fg(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %2)
          to label %bb.ag unwind label %bb.ai, !call_target !100 ; 0 uses

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i16 0, ptr %i.b, align 2, !tbaa !116
  %.not171 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not171, label %.loopexit209, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN6LibRaw9adjust_blEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader208 unwind label %bb.aj

.preheader208:                                    ; preds = %bb.ah
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.fj = load <4 x i32>, ptr %i.fi, align 8, !tbaa !144
  %i.fk = trunc <4 x i32> %i.fj to <4 x i16>
  store <4 x i16> %i.fk, ptr %i.a, align 8, !tbaa !116
  br label %.loopexit209

bb.ai:                                            ; preds = %bb.af
  %i.fl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.bm

bb.aj:                                            ; preds = %bb.ah
  %i.fm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI17LibRaw_exceptions
  br label %bb.bl

.loopexit209:                                     ; preds = %.preheader208, %bb.ag
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.fo = load i16, ptr %i.fn, align 4, !tbaa !76 ; 4 uses
  %i.fp = zext i16 %i.fo to i32                   ; 3 uses
  %i.fq = load i16, ptr %i.ds, align 8, !tbaa !108 ; 3 uses
  %i.fr = zext i16 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.ft = load i16, ptr %i.fs, align 8, !tbaa !109 ; 2 uses
  %i.fu = zext i16 %i.ft to i32
  %i.fv = sub nsw i32 %i.fr, %i.fu                ; 3 uses
  %3 = icmp sle i32 %i.fv, %i.fp
  %i.fw = icmp slt i32 %i.fv, 0
  %4 = and i1 %3, %i.fw
  %.194 = call i32 @llvm.smin.i32(i32 %i.fv, i32 %i.fp)
  %spec.select202 = select i1 %4, i32 0, i32 %.194 ; 8 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 8 uses
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !78 ; 3 uses
  %i.fz = zext i16 %i.fy to i32                   ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !110
  %i.gc = zext i16 %i.gb to i32
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 14 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !111
  %i.gf = zext i16 %i.ge to i32
  %i.gg = sub nsw i32 %i.gc, %i.gf                ; 3 uses
  %5 = icmp sle i32 %i.gg, %i.fz
  %i.gh = icmp slt i32 %i.gg, 0
  %6 = and i1 %5, %i.gh
  %.195 = call i32 @llvm.smin.i32(i32 %i.gg, i32 %i.fz)
  %i.gi = select i1 %6, i32 0, i32 %.195          ; 5 uses
  %i.gj = load i32, ptr %i.dn, align 8, !tbaa !93 ; 2 uses
  %.not172 = icmp eq i32 %i.gj, 0
  br i1 %.not172, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit209
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !112
  %i.gm = icmp eq i32 %i.gl, 1
  br i1 %i.gm, label %bb.al, label %bb.ay

bb.al:                                            ; preds = %bb.ak, %.loopexit209
  %i.gn = load ptr, ptr %i.i, align 8, !tbaa !81  ; 2 uses
  %.not173 = icmp eq ptr %i.gn, null
  br i1 %.not173, label %bb.ay, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.go = load i16, ptr %i.eb, align 2, !tbaa !113
  %.not178 = icmp ne i16 %i.go, 0                 ; 2 uses
  %brmerge.not = and i1 %.not178, %i.dm
  br i1 %brmerge.not, label %bb.an, label %.invoke

bb.an:                                            ; preds = %bb.am
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 381828
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !114 ; 2 uses
  %.not179 = icmp eq i32 %i.gq, 0                 ; 3 uses
  %i.gr = zext i1 %.not179 to i16
  %i.gs = lshr i16 %i.fy, %i.gr                   ; 2 uses
  store i16 %i.gs, ptr %i.eb, align 2, !tbaa !113
  %i.gt = lshr i32 %i.fp, %i.gq
  %.not225 = icmp eq i16 %i.fo, 0
  br i1 %.not225, label %._crit_edge217, label %.preheader207.lr.ph

.preheader207.lr.ph:                              ; preds = %bb.an
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 381668
  br label %.preheader207.a

.preheader207.a:                                  ; preds = %.preheader207.lr.ph, %._crit_edge
  %i.gw = phi i16 [ %i.fo, %.preheader207.lr.ph ], [ %i.ji, %._crit_edge ]
  %i.gx = phi i16 [ %i.fy, %.preheader207.lr.ph ], [ %i.jj, %._crit_edge ]
  %.0110216 = phi i32 [ 0, %.preheader207.lr.ph ], [ %.pre-phi253, %._crit_edge ] ; 8 uses
  %.not226 = icmp eq i16 %i.gx, 0
  br i1 %.not226, label %.preheader207.._crit_edge_crit_edge, label %.lr.ph

.preheader207.._crit_edge_crit_edge:              ; preds = %.preheader207.a
  %.pre252.a = add nuw nsw i32 %.0110216, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader207.a
  %i.gy = lshr i32 %.0110216, 1                   ; 2 uses
  %i.gz = add nuw nsw i32 %.0110216, 1            ; 2 uses
  %i.ha = lshr i32 %i.gz, 1                       ; 2 uses
  %i.hb = load i32, ptr %i.gu, align 8, !tbaa !115
  %i.hc = load ptr, ptr %i.c, align 8, !tbaa !94
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph, %bb.aw
  %.0109215 = phi i32 [ 0, %.lr.ph ], [ %i.je, %bb.aw ] ; 10 uses
  %i.hd = load i16, ptr %i.eb, align 2, !tbaa !113 ; 2 uses
  %i.he = zext i16 %i.hd to i32
  br i1 %.not179, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hf = xor i32 %.0109215, -1
  %i.hg = add nsw i32 %i.gy, %i.hf
  %i.hh = add nuw nsw i32 %.0109215, %i.ha
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.hi = lshr i32 %.0109215, 1
  %i.hj = xor i32 %i.hi, -1
  %i.hk = add nsw i32 %.0110216, %i.hj
  %i.hl = add nuw nsw i32 %.0109215, 1
  %i.hm = lshr i32 %i.hl, 1
  %i.hn = add nuw nsw i32 %i.hm, %.0110216
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn279 = phi i32 [ %i.hg, %bb.ap ], [ %i.hk, %bb.aq ]
  %.0107 = phi i32 [ %i.hh, %bb.ap ], [ %i.hn, %bb.aq ]
  %.0108 = add i32 %.pn279, %i.he
  %i.ho = load i16, ptr %i.fs, align 8, !tbaa !109
  %i.hp = zext i16 %i.ho to i32
  %i.hq = add nuw nsw i32 %.0110216, %i.hp
  %i.hr = mul i32 %i.hq, %i.hb
  %i.hs = lshr i32 %i.hr, 1
  %i.ht = load i16, ptr %i.gd, align 2, !tbaa !111
  %i.hu = zext i16 %i.ht to i32
  %i.hv = add nuw nsw i32 %.0109215, %i.hu
  %i.hw = add nuw i32 %i.hv, %i.hs
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.hx
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !116 ; 2 uses
  br i1 %.not179, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ia = xor i32 %.0109215, -1
  %i.ib = add nsw i32 %i.gy, %i.ia
  br label %_ZN6LibRaw3FCFEii.exit

bb.at:                                            ; preds = %bb.ar
  %i.ic = lshr i32 %.0109215, 1
  %i.id = xor i32 %i.ic, -1
  %i.ie = add nsw i32 %.0110216, %i.id
  %.pre249.a = add nuw nsw i32 %.0109215, 1
  %.pre250.a = lshr i32 %.pre249.a, 1
  br label %_ZN6LibRaw3FCFEii.exit

_ZN6LibRaw3FCFEii.exit:                           ; preds = %bb.as, %bb.at
  %.pre-phi251 = phi i32 [ %i.ha, %bb.as ], [ %.pre250.a, %bb.at ]
  %.sink13.i = phi i32 [ %i.ib, %bb.as ], [ %i.ie, %bb.at ]
  %.sink11.i = phi i32 [ %.0109215, %bb.as ], [ %.0110216, %bb.at ]
  %i.if = zext i16 %i.hd to i32
  %i.ig = add i32 %.sink13.i, %i.if
  %i.ih = add nuw i32 %.pre-phi251, %.sink11.i
  %i.ii = shl i32 %i.ig, 1
  %i.ij = and i32 %i.ii, 14
  %i.ik = and i32 %i.ih, 1
  %i.il = or disjoint i32 %i.ik, %i.ij
  %i.im = shl nuw nsw i32 %i.il, 1
  %i.in = lshr i32 %i.gj, %i.im
  %i.io = and i32 %i.in, 3
  %i.ip = zext nneg i32 %i.io to i64              ; 2 uses
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ip
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !116 ; 2 uses
  %i.is = icmp ugt i16 %i.hz, %i.ir
  br i1 %i.is, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %_ZN6LibRaw3FCFEii.exit
  %narrow = sub nuw i16 %i.hz, %i.ir              ; 4 uses
  %i.it = load i16, ptr %i.b, align 2, !tbaa !116
  %i.iu = icmp ult i16 %i.it, %narrow
  br i1 %i.iu, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i16 %narrow, ptr %i.b, align 2, !tbaa !116
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN6LibRaw3FCFEii.exit, %bb.au, %bb.av
  %.0106 = phi i16 [ %narrow, %bb.av ], [ %narrow, %bb.au ], [ 0, %_ZN6LibRaw3FCFEii.exit ]
  %i.iv = load i16, ptr %i.gv, align 4, !tbaa !75
  %i.iw = zext i16 %i.iv to i32                   ; 2 uses
  %i.ix = ashr i32 %.0108, %i.iw
  %i.iy = mul nsw i32 %i.ix, %.0119
  %i.iz = ashr i32 %.0107, %i.iw
  %i.ja = add nsw i32 %i.iy, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.jb
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.jc, i64 %i.ip
  store i16 %.0106, ptr %i.jd, align 2, !tbaa !116
  %i.je = add nuw nsw i32 %.0109215, 1            ; 2 uses
  %i.jf = load i16, ptr %i.fx, align 2, !tbaa !78 ; 2 uses
  %i.jg = zext i16 %i.jf to i32
  %i.jh = icmp samesign ult i32 %i.je, %i.jg
  br i1 %i.jh, label %bb.ao, label %._crit_edge.loopexit, !llvm.loop !139

._crit_edge.loopexit:                             ; preds = %bb.aw
  %.pre246 = load i16, ptr %i.fn, align 4, !tbaa !76
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader207.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi253 = phi i32 [ %.pre252.a, %.preheader207.._crit_edge_crit_edge ], [ %i.gz, %._crit_edge.loopexit ] ; 2 uses
  %i.ji = phi i16 [ %i.gw, %.preheader207.._crit_edge_crit_edge ], [ %.pre246, %._crit_edge.loopexit ] ; 2 uses
  %i.jj = phi i16 [ 0, %.preheader207.._crit_edge_crit_edge ], [ %i.jf, %._crit_edge.loopexit ]
  %i.jk = zext i16 %i.ji to i32
  %i.jl = icmp samesign ult i32 %.pre-phi253, %i.jk
  br i1 %i.jl, label %.preheader207.a, label %._crit_edge217.loopexit, !llvm.loop !140

._crit_edge217.loopexit:                          ; preds = %._crit_edge
  %.pre247 = load i16, ptr %i.fs, align 8, !tbaa !109
  %.pre248 = load i16, ptr %i.ds, align 8, !tbaa !108
  br label %._crit_edge217

._crit_edge217:                                   ; preds = %._crit_edge217.loopexit, %bb.an
  %i.jm = phi i16 [ %.pre248, %._crit_edge217.loopexit ], [ %i.fq, %bb.an ]
  %i.jn = phi i16 [ %.pre247, %._crit_edge217.loopexit ], [ %i.ft, %bb.an ]
  %i.jo = trunc nuw i32 %i.gt to i16
  %i.jp = add i16 %i.gs, %i.jo                    ; 3 uses
  %i.jq = add i16 %i.jp, -1                       ; 2 uses
  store i16 %i.jq, ptr %i.fn, align 4, !tbaa !76
  store i16 %i.jp, ptr %i.fx, align 2, !tbaa !78
  %i.jr = zext i16 %i.jq to i32
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 381668
  %i.jt = load i16, ptr %i.js, align 4, !tbaa !75
  %i.ju = zext i16 %i.jt to i32                   ; 4 uses
  %i.jv = add nuw nsw i32 %i.ju, %i.jr
  %i.jw = lshr i32 %i.jv, %i.ju
  %i.jx = trunc i32 %i.jw to i16
  store i16 %i.jx, ptr %i.dx, align 4, !tbaa !77
  %i.jy = zext i16 %i.jp to i32
  %i.jz = add nuw nsw i32 %i.ju, %i.jy
  %i.ka = lshr i32 %i.jz, %i.ju
  %i.kb = trunc i32 %i.ka to i16
  store i16 %i.kb, ptr %i.dt, align 2, !tbaa !79
  %i.kc = shl i16 %i.jn, 1
  %i.kd = sub i16 %i.jm, %i.kc
  store i16 %i.kd, ptr %i.ds, align 8, !tbaa !108
  br label %.loopexit

bb.ax:                                            ; preds = %.invoke, %bb.bh, %bb.be, %bb.bd
end_hunk_1

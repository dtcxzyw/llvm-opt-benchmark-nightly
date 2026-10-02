Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/time_zone_info?download=true
inline.NumInlined: 1282
inline.NumDeleted: 547
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo4LoadEPNS2_14ZoneInfoSourceE:bb.a
  %.08.val.2.i26.i = load i8, ptr %i.aw, align 1, !tbaa !38
  %i.ax = zext i8 %.08.val.2.i26.i to i64
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 43
  %.08.val.3.i27.i = load i8, ptr %i.az, align 1, !tbaa !38
  %i.ba = zext i8 %.08.val.3.i27.i to i64
  %i.bb = or disjoint i64 %i.av, %i.as
  %i.bc = or disjoint i64 %i.bb, %i.ay
  %i.bd = or disjoint i64 %i.bc, %i.ba            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !79
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.08.val.i29.i = load i8, ptr %i.bf, align 1, !tbaa !38 ; 2 uses
  %i.bg = icmp slt i8 %.08.val.i29.i, 0
  br i1 %i.bg, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = zext nneg i8 %.08.val.i29.i to i64
  %i.bi = shl nuw nsw i64 %i.bh, 24
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 29
  %.08.val.1.i30.i = load i8, ptr %i.bj, align 1, !tbaa !38
  %i.bk = zext i8 %.08.val.1.i30.i to i64
  %i.bl = shl nuw nsw i64 %i.bk, 16
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 30
  %.08.val.2.i31.i = load i8, ptr %i.bm, align 1, !tbaa !38
  %i.bn = zext i8 %.08.val.2.i31.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 31
  %.08.val.3.i32.i = load i8, ptr %i.bp, align 1, !tbaa !38
  %i.bq = zext i8 %.08.val.3.i32.i to i64
  %i.br = or disjoint i64 %i.bl, %i.bi
  %i.bs = or disjoint i64 %i.br, %i.bo
  %i.bt = or disjoint i64 %i.bs, %i.bq            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !80
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.08.val.i34.i = load i8, ptr %i.bv, align 1, !tbaa !38 ; 2 uses
  %i.bw = icmp slt i8 %.08.val.i34.i, 0
  br i1 %i.bw, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = zext nneg i8 %.08.val.i34.i to i64
  %i.by = shl nuw nsw i64 %i.bx, 24
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 25
  %.08.val.1.i35.i = load i8, ptr %i.bz, align 1, !tbaa !38
  %i.ca = zext i8 %.08.val.1.i35.i to i64
  %i.cb = shl nuw nsw i64 %i.ca, 16
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 26
  %.08.val.2.i36.i = load i8, ptr %i.cc, align 1, !tbaa !38
  %i.cd = zext i8 %.08.val.2.i36.i to i64
  %i.ce = shl nuw nsw i64 %i.cd, 8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 27
  %.08.val.3.i37.i = load i8, ptr %i.cf, align 1, !tbaa !38
  %i.cg = zext i8 %.08.val.3.i37.i to i64
  %i.ch = or disjoint i64 %i.cb, %i.by
  %i.ci = or disjoint i64 %i.ch, %i.ce
  %i.cj = or disjoint i64 %i.ci, %i.cg            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !81
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.08.val.i39.i = load i8, ptr %i.cl, align 1, !tbaa !38 ; 2 uses
  %i.cm = icmp slt i8 %.08.val.i39.i, 0
  br i1 %i.cm, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = zext nneg i8 %.08.val.i39.i to i64
  %i.co = shl nuw nsw i64 %i.cn, 24
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 21
  %.08.val.1.i40.i = load i8, ptr %i.cp, align 1, !tbaa !38
  %i.cq = zext i8 %.08.val.1.i40.i to i64
  %i.cr = shl nuw nsw i64 %i.cq, 16
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 22
  %.08.val.2.i41.i = load i8, ptr %i.cs, align 1, !tbaa !38
  %i.ct = zext i8 %.08.val.2.i41.i to i64
  %i.cu = shl nuw nsw i64 %i.ct, 8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 23
  %.08.val.3.i42.i = load i8, ptr %i.cv, align 1, !tbaa !38
  %i.cw = zext i8 %.08.val.3.i42.i to i64
  %i.cx = or disjoint i64 %i.cr, %i.co
  %i.cy = or disjoint i64 %i.cx, %i.cu
  %i.cz = or disjoint i64 %i.cy, %i.cw            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !82
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !38
  %.not148 = icmp eq i8 %i.dc, 0                  ; 3 uses
  br i1 %.not148, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dd = mul nuw nsw i64 %i.y, 5
  %i.de = mul nuw nsw i64 %i.an, 6
  %i.df = add nuw nsw i64 %i.de, %i.dd
  %i.dg = add nuw nsw i64 %i.df, %i.bd
  %i.dh = shl nuw nsw i64 %i.bt, 3
  %i.di = add nuw nsw i64 %i.dg, %i.dh
  %i.dj = add nuw nsw i64 %i.di, %i.cj
  %i.dk = add nuw nsw i64 %i.dj, %i.cz
  %i.dl = load ptr, ptr %1, align 8, !tbaa !75
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call noundef i32 %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.dk)
  %.not149 = icmp eq i32 %i.do, 0
  br i1 %.not149, label %bb.k, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.dp = load ptr, ptr %1, align 8, !tbaa !75
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = call noundef i64 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2, i64 noundef 44)
  %.not150 = icmp eq i64 %i.ds, 44
  br i1 %.not150, label %bb.l, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.dt = load i32, ptr %2, align 1
  %i.du = icmp ne i32 %i.dt, 1718180436           ; 2 uses
  %i.dv = zext i1 %i.du to i32                    ; 0 uses
  %i.dw = load i8, ptr %i.db, align 1
  %i.dx = icmp eq i8 %i.dw, 0
  %or.cond191 = select i1 %i.du, i1 true, i1 %i.dx
  br i1 %or.cond191, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 1 dereferenceable(44) %2)
  br i1 %i.dy, label %._crit_edge286, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

._crit_edge286:                                   ; preds = %bb.m
  %.pre = load i64, ptr %i.ao, align 8, !tbaa !78
  %.pre287 = load i64, ptr %i.bu, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge286, %bb.i
  %i.dz = phi i64 [ %i.bt, %bb.i ], [ %.pre287, %._crit_edge286 ]
  %i.ea = phi i64 [ %i.an, %bb.i ], [ %.pre, %._crit_edge286 ] ; 10 uses
  %.0114 = phi i64 [ 4, %bb.i ], [ 8, %._crit_edge286 ] ; 3 uses
  %i.eb = icmp ne i64 %i.ea, 0
  %.not153 = icmp eq i64 %i.dz, 0
  %or.cond193 = select i1 %i.eb, i1 %.not153, i1 false
  br i1 %or.cond193, label %bb.o, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ec = load i64, ptr %i.ck, align 8, !tbaa !81 ; 3 uses
  %.not154 = icmp eq i64 %i.ec, 0
  %.not155 = icmp eq i64 %i.ec, %i.ea
  %or.cond180 = or i1 %.not154, %.not155
  br i1 %or.cond180, label %bb.p, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ed = load i64, ptr %i.da, align 8, !tbaa !82 ; 3 uses
  %.not156 = icmp eq i64 %i.ed, 0
  %.not157 = icmp eq i64 %i.ed, %i.ea
  %or.cond181 = or i1 %.not156, %.not157
  br i1 %or.cond181, label %bb.q, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ee = or disjoint i64 %.0114, 1
  %i.ef = load i64, ptr %3, align 8, !tbaa !77    ; 7 uses
  %i.eg = mul i64 %i.ef, %i.ee
  %i.eh = mul i64 %i.ea, 6
  %i.ei = load i64, ptr %i.be, align 8, !tbaa !79 ; 4 uses
  %i.ej = add i64 %i.ec, %i.eh
  %i.ek = add i64 %i.ej, %i.ed
  %i.el = add i64 %i.ek, %i.eg
  %i.em = add i64 %i.el, %i.ei                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt6vectorIcSaIcEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.em, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.en = load ptr, ptr %4, align 8, !tbaa !84
  %i.eo = load ptr, ptr %1, align 8, !tbaa !75
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke noundef i64 %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.en, i64 noundef %i.em)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %.not158 = icmp eq i64 %i.er, %i.em
  br i1 %.not158, label %bb.t, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13shrink_to_fitEv.exit

bb.s:                                             ; preds = %bb.q
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.t:                                             ; preds = %bb.r
  %i.et = load ptr, ptr %4, align 8, !tbaa !84    ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.ev = add i64 %i.ef, 2
  invoke void @_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i64 noundef %i.ev)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i64 noundef %i.ef)
          to label %.preheader238 unwind label %bb.y

.preheader238:                                    ; preds = %bb.u
  %.not159245.not = icmp eq i64 %i.ef, 0
  br i1 %.not159245.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader238
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !57 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %.08.val.i.peel = load i8, ptr %i.et, align 1, !tbaa !38 ; 2 uses
  %13 = zext i8 %.08.val.i.peel to i64            ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %i.et, i64 2 ; 2 uses
  %.08.val.1.i.peel = load i8, ptr %12, align 1, !tbaa !38
  %15 = zext i8 %.08.val.1.i.peel to i64          ; 2 uses
  br i1 %.not148, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.ex = shl nuw nsw i64 %13, 16
  %i.ey = shl nuw nsw i64 %15, 8
  %i.ez = or disjoint i64 %i.ey, %i.ex
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 3
  %.08.val.2.i197.peel = load i8, ptr %14, align 1, !tbaa !38
  %i.fb = zext i8 %.08.val.2.i197.peel to i64
  %i.fc = or disjoint i64 %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 7
  %i.fe = load i32, ptr %i.fa, align 1
  %i.ff = call i32 @llvm.bswap.i32(i32 %i.fe)
  %i.fg = zext i32 %i.ff to i64
  %i.fh = shl nuw i64 %i.fc, 40
  %i.fi = shl nuw nsw i64 %i.fg, 8
  %i.fj = or disjoint i64 %i.fh, %i.fi
  %.08.val.7.i.peel = load i8, ptr %i.fd, align 1, !tbaa !38
  %i.fk = zext i8 %.08.val.7.i.peel to i64
  %i.fl = or disjoint i64 %i.fj, %i.fk
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %16 = getelementptr inbounds nuw i8, ptr %i.et, i64 3
  %.08.val.2.i.peel = load i8, ptr %14, align 1, !tbaa !38
  %17 = zext i8 %.08.val.2.i.peel to i64
  %18 = shl nuw nsw i64 %13, 24
  %19 = shl nuw nsw i64 %15, 16
  %20 = shl nuw nsw i64 %17, 8
  %.08.val.3.i.peel = load i8, ptr %16, align 1, !tbaa !38
  %i.fm = zext i8 %.08.val.3.i.peel to i64
  %21 = or disjoint i64 %19, %18
  %22 = or disjoint i64 %21, %20
  %i.fn = or disjoint i64 %22, %i.fm              ; 2 uses
  %23 = or disjoint i64 %i.fn, -4294967296
  %24 = icmp slt i8 %.08.val.i.peel, 0
  %.09.i.peel = select i1 %24, i64 %23, i64 %i.fn
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.fo = phi i64 [ %.09.i.peel, %bb.w ], [ %i.fl, %bb.v ]
  store i64 %i.fo, ptr %i.ew, align 8, !tbaa !58
  %i.fp = getelementptr inbounds nuw i8, ptr %i.et, i64 %.0114 ; 2 uses
  %.not159.peel = icmp eq i64 %i.ef, 1
  br i1 %.not159.peel, label %.lr.ph252, label %.peel.next

.lr.ph252:                                        ; preds = %bb.ac, %bb.x
  %.0132.lcssa.ph = phi ptr [ %i.fp, %bb.x ], [ %i.go, %bb.ac ]
  %i.fq = load ptr, ptr %i.eu, align 8, !tbaa !57
  br label %bb.ad

bb.y:                                             ; preds = %bb.u, %bb.t
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.peel.next:                                       ; preds = %bb.x, %bb.ac
  %.0131247 = phi i64 [ %i.gp, %bb.ac ], [ 1, %bb.x ] ; 2 uses
  %.0132246 = phi ptr [ %i.go, %bb.ac ], [ %i.fp, %bb.x ] ; 7 uses
  %25 = getelementptr inbounds nuw i8, ptr %.0132246, i64 1
  %.08.val.i = load i8, ptr %.0132246, align 1, !tbaa !38 ; 2 uses
  %26 = zext i8 %.08.val.i to i64                 ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %.0132246, i64 2 ; 2 uses
  %.08.val.1.i = load i8, ptr %25, align 1, !tbaa !38
  %28 = zext i8 %.08.val.1.i to i64               ; 2 uses
  br i1 %.not148, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.peel.next
  %29 = getelementptr inbounds nuw i8, ptr %.0132246, i64 3
  %.08.val.2.i = load i8, ptr %27, align 1, !tbaa !38
  %30 = zext i8 %.08.val.2.i to i64
  %31 = shl nuw nsw i64 %26, 24
  %32 = shl nuw nsw i64 %28, 16
  %33 = shl nuw nsw i64 %30, 8
  %.08.val.3.i = load i8, ptr %29, align 1, !tbaa !38
  %i.fs = zext i8 %.08.val.3.i to i64
  %34 = or disjoint i64 %32, %31
  %35 = or disjoint i64 %34, %33
  %i.ft = or disjoint i64 %35, %i.fs              ; 2 uses
  %36 = or disjoint i64 %i.ft, -4294967296
  %37 = icmp slt i8 %.08.val.i, 0
  %.09.i = select i1 %37, i64 %36, i64 %i.ft
  br label %bb.ab

bb.aa:                                            ; preds = %.peel.next
  %i.fu = shl nuw nsw i64 %26, 16
  %i.fv = shl nuw nsw i64 %28, 8
  %i.fw = or disjoint i64 %i.fv, %i.fu
  %i.fx = getelementptr inbounds nuw i8, ptr %.0132246, i64 3
  %.08.val.2.i197 = load i8, ptr %27, align 1, !tbaa !38
  %i.fy = zext i8 %.08.val.2.i197 to i64
  %i.fz = or disjoint i64 %i.fw, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %.0132246, i64 7
  %i.gb = load i32, ptr %i.fx, align 1
  %i.gc = call i32 @llvm.bswap.i32(i32 %i.gb)
  %i.gd = zext i32 %i.gc to i64
  %i.ge = shl nuw i64 %i.fz, 40
  %i.gf = shl nuw nsw i64 %i.gd, 8
  %i.gg = or disjoint i64 %i.ge, %i.gf
  %.08.val.7.i = load i8, ptr %i.ga, align 1, !tbaa !38
  %i.gh = zext i8 %.08.val.7.i to i64
  %i.gi = or disjoint i64 %i.gg, %i.gh
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.gj = phi i64 [ %.09.i, %bb.z ], [ %i.gi, %bb.aa ] ; 2 uses
  %i.gk = getelementptr [48 x i8], ptr %i.ew, i64 %.0131247 ; 2 uses
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !58
  %i.gl = getelementptr i8, ptr %i.gk, i64 -48
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !58
  %i.gn = icmp slt i64 %i.gm, %i.gj
  br i1 %i.gn, label %bb.ac, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13shrink_to_fitEv.exit

bb.ac:                                            ; preds = %bb.ab
  %i.go = getelementptr inbounds nuw i8, ptr %.0132246, i64 %.0114 ; 2 uses
  %i.gp = add nuw i64 %.0131247, 1                ; 2 uses
  %.not159 = icmp eq i64 %i.gp, %i.ef
  br i1 %.not159, label %.lr.ph252, label %.peel.next, !llvm.loop !157

bb.ad:                                            ; preds = %.lr.ph252, %bb.ae
  %.0128251 = phi i64 [ 0, %.lr.ph252 ], [ %i.gv, %bb.ae ] ; 2 uses
  %.0129250 = phi i1 [ false, %.lr.ph252 ], [ %spec.select, %bb.ae ]
  %.2134249 = phi ptr [ %.0132.lcssa.ph, %.lr.ph252 ], [ %i.gt, %bb.ae ] ; 2 uses
  %.2134.val = load i8, ptr %.2134249, align 1, !tbaa !38 ; 3 uses
  %i.gq = getelementptr inbounds nuw [48 x i8], ptr %i.fq, i64 %.0128251
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i8 %.2134.val, ptr %i.gr, align 8, !tbaa !55
  %i.gs = zext i8 %.2134.val to i64
  %.not162 = icmp ugt i64 %i.ea, %i.gs
  br i1 %.not162, label %bb.ae, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13shrink_to_fitEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.gt = getelementptr inbounds nuw i8, ptr %.2134249, i64 1 ; 2 uses
  %i.gu = icmp eq i8 %.2134.val, 0
  %spec.select = select i1 %i.gu, i1 true, i1 %.0129250 ; 2 uses
  %i.gv = add nuw i64 %.0128251, 1                ; 2 uses
  %.not161 = icmp eq i64 %i.gv, %i.ef
  br i1 %.not161, label %._crit_edge, label %bb.ad, !llvm.loop !158

._crit_edge:                                      ; preds = %bb.ae, %.preheader238
  %.2134.lcssa = phi ptr [ %i.et, %.preheader238 ], [ %i.gt, %bb.ae ]
  %.0129.lcssa = phi i1 [ false, %.preheader238 ], [ %spec.select, %bb.ae ]
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.gx = add i64 %i.ea, 2
  invoke void @_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz14TransitionTypeESaIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gw, i64 noundef %i.gx)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz14TransitionTypeESaIS4_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gw, i64 noundef %i.ea)
          to label %.preheader unwind label %bb.ag

.preheader:                                       ; preds = %bb.af
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !22 ; 4 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ap, %bb.be, %.critedge10.thread, %bb.af, %._crit_edge
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ah:                                            ; preds = %.preheader, %bb.aj
  %.0127256 = phi i64 [ 0, %.preheader ], [ %i.hm, %bb.aj ] ; 2 uses
  %.4136255 = phi ptr [ %.2134.lcssa, %.preheader ], [ %i.hl, %bb.aj ] ; 4 uses
  %i.ha = load i32, ptr %.4136255, align 1
  %i.hb = call i32 @llvm.bswap.i32(i32 %i.ha)     ; 2 uses
  %i.hc = getelementptr inbounds nuw [48 x i8], ptr %i.gy, i64 %.0127256 ; 3 uses
  store i32 %i.hb, ptr %i.hc, align 8, !tbaa !29
  %i.hd = add i32 %i.hb, -86400
  %or.cond229 = icmp ult i32 %i.hd, -172799
  br i1 %or.cond229, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13shrink_to_fitEv.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.he = getelementptr inbounds nuw i8, ptr %.4136255, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %.4136255, i64 5
  %.val194 = load i8, ptr %i.he, align 1, !tbaa !38
  %i.hg = icmp ne i8 %.val194, 0
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.hi = zext i1 %i.hg to i8
  store i8 %i.hi, ptr %i.hh, align 8, !tbaa !30
  %.val = load i8, ptr %i.hf, align 1, !tbaa !38  ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 41
  store i8 %.val, ptr %i.hj, align 1, !tbaa !28
  %i.hk = zext i8 %.val to i64
  %.not164 = icmp ugt i64 %i.ei, %i.hk
  br i1 %.not164, label %bb.aj, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13shrink_to_fitEv.exit

bb.aj:                                            ; preds = %bb.ai
  %i.hl = getelementptr inbounds nuw i8, ptr %.4136255, i64 6 ; 2 uses
  %i.hm = add i64 %.0127256, 1                    ; 2 uses
  %.not163 = icmp eq i64 %i.hm, %i.ea
  br i1 %.not163, label %bb.ak, label %bb.ah, !llvm.loop !159

bb.ak:                                            ; preds = %bb.aj
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i8 0, ptr %i.hn, align 8, !tbaa !73
  br i1 %.0129.lcssa, label %bb.al, label %.critedge10.thread

bb.al:                                            ; preds = %bb.ak
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !30, !range !31, !noundef !32
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.hr = load ptr, ptr %i.eu, align 8, !tbaa !57
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load i8, ptr %i.hs, align 8, !tbaa !55  ; 2 uses
  %.not165257 = icmp eq i8 %i.ht, 0
  br i1 %.not165257, label %.critedge, label %.lr.ph260.preheader

.lr.ph260.preheader:                              ; preds = %bb.am
  %i.hu = zext i8 %i.ht to i64
  br label %.lr.ph260

.lr.ph260:                                        ; preds = %.lr.ph260.preheader, %bb.an
  %indvars.iv = phi i64 [ %i.hu, %.lr.ph260.preheader ], [ %indvars.iv.next, %bb.an ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [48 x i8], ptr %i.gy, i64 %indvars.iv
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  %i.hx = load i8, ptr %i.hw, align 8, !tbaa !30, !range !31, !noundef !32
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.an, label %.critedge.loopexit.split.loop.exit

bb.an:                                            ; preds = %.lr.ph260
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.hz = and i64 %indvars.iv.next, 255
  %.not165 = icmp eq i64 %i.hz, 0
  br i1 %.not165, label %.critedge, label %.lr.ph260, !llvm.loop !160

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph260
  %i.ia = trunc nuw i64 %indvars.iv to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.an, %.critedge.loopexit.split.loop.exit, %bb.am, %bb.al
  %.1125 = phi i8 [ 0, %bb.al ], [ 0, %bb.am ], [ %i.ia, %.critedge.loopexit.split.loop.exit ], [ 0, %bb.an ] ; 2 uses
  %i.ib = zext i8 %.1125 to i64                   ; 2 uses
  %.not166264 = icmp eq i64 %i.ea, %i.ib
  br i1 %.not166264, label %.critedge10.thread, label %.lr.ph266

.lr.ph266:                                        ; preds = %.critedge, %bb.ao
  %i.ic = phi i64 [ %i.ii, %bb.ao ], [ %i.ib, %.critedge ]
  %.2126265 = phi i8 [ %i.ih, %bb.ao ], [ %.1125, %.critedge ] ; 2 uses
  %i.id = getelementptr inbounds nuw [48 x i8], ptr %i.gy, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 40
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !30, !range !31, !noundef !32
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.ao, label %.critedge10

bb.ao:                                            ; preds = %.lr.ph266
  %i.ih = add i8 %.2126265, 1                     ; 2 uses
  %i.ii = zext i8 %i.ih to i64                    ; 2 uses
  %.not166 = icmp eq i64 %i.ea, %i.ii
  br i1 %.not166, label %.critedge10.thread, label %.lr.ph266, !llvm.loop !161

.critedge10:                                      ; preds = %.lr.ph266
  store i8 %.2126265, ptr %i.hn, align 8, !tbaa !73
  br label %.critedge10.thread

.critedge10.thread:                               ; preds = %bb.ao, %.critedge, %.critedge10, %bb.ak
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ik = add i64 %i.ei, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 noundef %i.ik)
          to label %bb.ap unwind label %bb.ag

bb.ap:                                            ; preds = %.critedge10.thread
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.im = load i64, ptr %i.il, align 8, !tbaa !18
  %i.in = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 noundef 0, i64 noundef %i.im, ptr noundef nonnull %i.hl, i64 noundef %i.ei)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.ag ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.ap
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.ip, align 8, !tbaa !18
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !23
  store i8 0, ptr %i.iq, align 1, !tbaa !38
  %i.ir = load i8, ptr %i.db, align 1, !tbaa !38
  %.not168 = icmp eq i8 %i.ir, 0
  br i1 %.not168, label %.critedge185, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.is = load ptr, ptr %1, align 8, !tbaa !75
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = invoke noundef i64 %i.iu(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.ar unwind label %bb.as, !inline_history !162

bb.ar:                                            ; preds = %bb.aq
  %i.iw = icmp eq i64 %i.iv, 1
  %i.ix = load i8, ptr %i.c, align 1
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFSt10unique_ptrIN4absl12lts_2026052613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEZNS4_12TimeZoneInfo4LoadESG_E3$_0E9_M_invokeERKSt9_Any_dataSG_":bb.a
  %.not.i.i.i.i = icmp eq i8 %i.r, 47
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i.i.i.i
  %i.s = call ptr @getenv(ptr noundef nonnull @.str.12) #24, !noalias !296 ; 3 uses
  %.not17.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not17.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.s, align 1, !tbaa !38, !noalias !296
  %.not18.i.i.i.i = icmp eq i8 %i.t, 0
  %spec.select.i.i.i.i = select i1 %.not18.i.i.i.i, ptr @.str.11, ptr %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.014.i.i.i.i = phi ptr [ @.str.11, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 2 uses
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.014.i.i.i.i) #24, !noalias !296 ; 2 uses
  %i.v = icmp ugt i64 %i.u, 4611686018427387903
  br i1 %i.v, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc.i.i.i.i unwind label %bb.h, !noalias !296

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i: ; preds = %bb.e
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %.014.i.i.i.i, i64 noundef %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i unwind label %bb.h, !noalias !296 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i
  %i.x = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !296 ; 4 uses
  %i.y = add i64 %i.x, 1                          ; 3 uses
  %i.z = load ptr, ptr %10, align 8, !tbaa !23, !noalias !296 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.m
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.ab = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.i.i.i
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !296
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ad = phi i64 [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ]
  %i.ae = icmp ugt i64 %i.y, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.x, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc22.i.i.i.i unwind label %bb.h, !noalias !296

.noexc22.i.i.i.i:                                 ; preds = %bb.g
  %.pre.i.i.i.i.i.i = load ptr, ptr %10, align 8, !tbaa !23, !noalias !296
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i: ; preds = %.noexc22.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %i.af = phi ptr [ %.pre.i.i.i.i.i.i, %.noexc22.i.i.i.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i8 47, ptr %i.ag, align 1, !tbaa !38, !noalias !296
  store i64 %i.y, ptr %i.n, align 8, !tbaa !18, !noalias !296
  %i.ah = load ptr, ptr %10, align 8, !tbaa !23, !noalias !296
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i8 0, ptr %i.ai, align 1, !tbaa !38, !noalias !296
  %.pre.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !18, !noalias !296
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i.i.i, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i, %bb.b
  %i.ak = phi i64 [ %.pre.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.al = icmp ugt i64 %.0.i.i.i.i.i, %i.ak
  br i1 %i.al, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i64 noundef %.0.i.i.i.i.i, i64 noundef %i.ak) #25
          to label %.noexc24.i.i.i.i unwind label %bb.m, !noalias !296

.noexc24.i.i.i.i:                                 ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %i.am = sub nuw i64 %i.ak, %.0.i.i.i.i.i        ; 2 uses
  %i.an = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !296
  %i.ao = sub i64 4611686018427387903, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.am
  br i1 %i.ap, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
          to label %.noexc25.i.i.i.i unwind label %bb.m, !noalias !296

.noexc25.i.i.i.i:                                 ; preds = %bb.k
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
  %i.aq = load ptr, ptr %2, align 8, !tbaa !23, !noalias !296
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.0.i.i.i.i.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ar, i64 noundef %i.am)
          to label %bb.l unwind label %bb.m, !noalias !296 ; 0 uses

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i
  %i.at = load ptr, ptr %10, align 8, !tbaa !23, !noalias !296
  %i.au = call noalias ptr @fopen(ptr noundef readonly %i.at, ptr noundef nonnull @.str.13), !noalias !297 ; 3 uses
  %.not.i27.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i27.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i, label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i.i, %bb.k, %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i unwind label %bb.o, !noalias !296 ; 5 uses

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i: ; preds = %bb.n
  %i.ax = ptrtoint ptr %i.au to i64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %i.aw, align 8, !tbaa !75, !noalias !296
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.ay, align 8, !tbaa !92, !noalias !296
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !101, !noalias !296
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i64 -1, ptr %i.ba, align 8, !tbaa !112, !noalias !296
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = call noundef i32 @fclose(ptr noundef nonnull %i.au), !noalias !296 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i, %bb.l
  %storemerge.i.i.i.i = phi ptr [ %i.aw, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit.i.i.i.i ], [ null, %bb.l ] ; 2 uses
  store ptr %storemerge.i.i.i.i, ptr %0, align 8, !tbaa !94, !alias.scope !296
  %i.bd = load ptr, ptr %10, align 8, !tbaa !23, !noalias !296 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.m
  br i1 %i.be, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i
  %i.bf = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !296
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #27, !noalias !296
  br label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i: ; preds = %bb.o, %bb.m, %bb.h
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.av, %bb.m ], [ %i.bb, %bb.o ]
  %i.bh = load ptr, ptr %10, align 8, !tbaa !23, !noalias !296 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.m
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i
  %i.bj = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !296
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #27, !noalias !296
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i

common.resume.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i.i.i.i, %bb.ag, %.thread.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i ], [ %.pn33.pn.pn.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i.i.i.i ], [ %i.el, %.thread.i.i.i.i ], [ %i.eo, %bb.ag ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit30.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !296
  br label %common.resume.i.i.i

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit32.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !296
  %.not.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i, label %bb.p, label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2026052613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.p:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !299
  %i.bl = load i64, ptr %i.h, align 8, !tbaa !18, !noalias !300 ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i22.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i.i.i: ; preds = %bb.p
  %spec.select.i.i.i13.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 5)
  %i.bn = load ptr, ptr %2, align 8, !tbaa !23, !noalias !300
  %bcmp144.i.i.i.i = call i32 @bcmp(ptr %i.bn, ptr nonnull @.str.10, i64 %spec.select.i.i.i13.i.i.i), !noalias !300
  %.not.i.i14.i.i.i = icmp eq i32 %bcmp144.i.i.i.i, 0
  br i1 %.not.i.i14.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i22.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i15.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i22.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i.i.i, %bb.p
  %.inv.i23.i.i.i = icmp ult i64 %i.bl, 5
  %i.bo = select i1 %.inv.i23.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i15.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i15.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i22.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i.i.i
  %.0.i.i16.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i12.i.i.i ], [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i22.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i15.i.i.i
  %.049.idx154.i.i.i.i = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i15.i.i.i ], [ %.049.add.i.i.i.i, %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.thread.i.i.i.i ] ; 2 uses
  %.049.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr @constinit.19, i64 %.049.idx154.i.i.i.i
  %i.bu = load ptr, ptr %.049.ptr.i.i.i.i, align 8, !tbaa !301, !noalias !300
  %i.bv = call noalias ptr @fopen(ptr noundef readonly %i.bu, ptr noundef nonnull @.str.13), !noalias !302 ; 9 uses
  %.not.i65.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i65.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.thread.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24, !noalias !300
  %i.bw = call i64 @fread(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef 24, ptr noundef nonnull %i.bv), !noalias !300
  %.not54.i.i.i.i = icmp eq i64 %i.bw, 24
  br i1 %.not54.i.i.i.i, label %bb.s, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bx = load i32, ptr %i.f, align 16
  %i.by = xor i32 %i.bx, 1633974900
  %i.bz = getelementptr i8, ptr %i.f, i64 4
  %i.ca = load i16, ptr %i.bz, align 4
  %i.cb = zext i16 %i.ca to i32
  %i.cc = xor i32 %i.cb, 24948
  %i.cd = or i32 %i.by, %i.cc
  %i.ce = icmp ne i32 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %.not55.i.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not55.i.i.i.i, label %bb.t, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.cg = load i8, ptr %i.bp, align 1, !tbaa !38, !noalias !300
  %.08.val.i.i.i.i.i = load i8, ptr %i.bq, align 4, !tbaa !38, !noalias !300
  %i.ch = load i32, ptr %i.bq, align 4, !tbaa !38, !noalias !300
  %i.ci = call i32 @llvm.bswap.i32(i32 %i.ch)
  %i.cj = zext i32 %i.ci to i64                   ; 4 uses
  %i.ck = or disjoint i64 %i.cj, -4294967296
  %11 = icmp slt i8 %.08.val.i.i.i.i.i, 0         ; 2 uses
  %.09.i.i.i.i.i = select i1 %11, i64 %i.ck, i64 %i.cj
  %.08.val.i66.i.i.i.i = load i8, ptr %i.br, align 16, !tbaa !38, !noalias !300
  %i.cl = load i32, ptr %i.br, align 16, !tbaa !38, !noalias !300
  %i.cm = call i32 @llvm.bswap.i32(i32 %i.cl)
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = or disjoint i64 %i.cn, -4294967296
  %12 = icmp slt i8 %.08.val.i66.i.i.i.i, 0
  %.09.i70.i.i.i.i = select i1 %12, i64 %i.co, i64 %i.cn ; 3 uses
  %i.cp = icmp slt i64 %.09.i70.i.i.i.i, %.09.i.i.i.i.i
  %or.cond.i.i.i.i = or i1 %11, %i.cp
  br i1 %or.cond.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = call i32 @fseek(ptr noundef nonnull %i.bv, i64 noundef %i.cj, i32 noundef 0), !noalias !300
  %.not56.i.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not56.i.i.i.i, label %bb.v, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.i.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24, !noalias !300
  %i.cr = sub nsw i64 %.09.i70.i.i.i.i, %i.cj     ; 3 uses
  %i.cs = udiv i64 %i.cr, 52                      ; 2 uses
  %i.ct = mul nuw i64 %i.cs, 52
  %.not57.i.i.i.i = icmp ne i64 %i.ct, %i.cr
  %.not58147.i.i.i.i = icmp ult i64 %i.cr, 52
  %or.cond170.i.i.i.i = or i1 %.not58147.i.i.i.i, %.not57.i.i.i.i
  br i1 %or.cond170.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i

bb.w:                                             ; preds = %bb.y
  %i.cu = add nuw nsw i64 %.0148.i.i.i.i, 1       ; 2 uses
  %.not58.i.i.i.i = icmp eq i64 %i.cu, %i.cs
  br i1 %.not58.i.i.i.i, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.sink.split.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !282

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %.0148.i.i.i.i = phi i64 [ %i.cu, %bb.w ], [ 0, %bb.v ]
  %i.cv = call i64 @fread(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef 52, ptr noundef nonnull %i.bv), !noalias !300
  %.not59.i.i.i.i = icmp eq i64 %i.cv, 52
  br i1 %.not59.i.i.i.i, label %bb.x, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.sink.split.i.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %.08.val.i71.i.i.i.i = load i8, ptr %i.bs, align 8, !tbaa !38, !noalias !300
  %i.cw = load i32, ptr %i.bs, align 8, !tbaa !38, !noalias !300
  %i.cx = call i32 @llvm.bswap.i32(i32 %i.cw)
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = or disjoint i64 %i.cy, -4294967296
  %13 = icmp slt i8 %.08.val.i71.i.i.i.i, 0
  %.09.i75.i.i.i.i = select i1 %13, i64 %i.cz, i64 %i.cy
  %14 = add nsw i64 %.09.i75.i.i.i.i, %.09.i70.i.i.i.i ; 2 uses
  %.08.val.i76.i.i.i.i = load i8, ptr %i.bt, align 4, !tbaa !38, !noalias !300
  %i.da = load i32, ptr %i.bt, align 4, !tbaa !38, !noalias !300
  %i.db = call i32 @llvm.bswap.i32(i32 %i.da)
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = or disjoint i64 %i.dc, -4294967296
  %15 = icmp slt i8 %.08.val.i76.i.i.i.i, 0
  %.09.i80.i.i.i.i = select i1 %15, i64 %i.dd, i64 %i.dc ; 2 uses
  %i.de = or i64 %.09.i80.i.i.i.i, %14
  %or.cond.not.i.i.i.i = icmp sgt i64 %i.de, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.y, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.sink.split.i.i.i.i

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.bs, align 8, !tbaa !38, !noalias !300
  %i.df = load ptr, ptr %2, align 8, !tbaa !23, !noalias !300
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.0.i.i16.i.i.i
  %i.dh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dg, ptr noundef nonnull dereferenceable(1) %i.g) #29, !noalias !300
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y
  %i.dj = call i32 @fseek(ptr noundef nonnull %i.bv, i64 noundef %14, i32 noundef 0), !noalias !300
  %.not60.i.i.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not60.i.i.i.i, label %bb.aa, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.sink.split.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dk = icmp eq i8 %i.cg, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.dm = select i1 %i.dk, ptr %i.dl, ptr @.str.21 ; 3 uses
  %i.dn = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %bb.ab unwind label %bb.ag, !noalias !300 ; 9 uses

bb.ab:                                            ; preds = %bb.aa
  %i.do = ptrtoint ptr %i.bv to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.dp, ptr %9, align 8, !tbaa !52, !noalias !300
  %i.dq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dm) #24, !noalias !300 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !300
  store i64 %i.dq, ptr %i.e, align 8, !tbaa !62, !noalias !300
  %i.dr = icmp ugt i64 %i.dq, 15
  br i1 %i.dr, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.ab
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i21.i.i.i unwind label %.thread.i.i.i.i, !noalias !300 ; 2 uses

.noexc.i21.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i
  store ptr %i.ds, ptr %9, align 8, !tbaa !23, !noalias !300
  %i.dt = load i64, ptr %i.e, align 8, !tbaa !62, !noalias !300
  store i64 %i.dt, ptr %i.dp, align 8, !tbaa !38, !noalias !300
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i21.i.i.i, %bb.ab
  %i.du = phi ptr [ %i.ds, %.noexc.i21.i.i.i ], [ %i.dp, %bb.ab ] ; 2 uses
  switch i64 %i.dq, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dv = load i8, ptr %i.dm, align 1, !tbaa !38, !noalias !300
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !38, !noalias !300
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr nonnull align 1 %i.dm, i64 %i.dq, i1 false), !noalias !300
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i.i.i.i
  %i.dw = load i64, ptr %i.e, align 8, !tbaa !62, !noalias !300 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !18, !noalias !300
  %i.dy = load ptr, ptr %9, align 8, !tbaa !23, !noalias !300
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store i8 0, ptr %i.dz, align 1, !tbaa !38, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !300
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i64 ptrtoint (ptr @fclose to i64), ptr %i.ea, align 8, !tbaa !92, !noalias !300
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i64 %i.do, ptr %i.eb, align 8, !tbaa !101, !noalias !300
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i64 %.09.i80.i.i.i.i, ptr %i.ec, align 8, !tbaa !112, !noalias !300
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, i64 16), ptr %i.dn, align 8, !tbaa !75, !noalias !300
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 48 ; 3 uses
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !52, !noalias !300
  %i.ef = load ptr, ptr %9, align 8, !tbaa !23, !noalias !300 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dp
  br i1 %i.eg, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.eh = load i64, ptr %i.dx, align 8, !tbaa !18, !noalias !300 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  %i.ej = add nuw nsw i64 %i.eh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull align 8 dereferenceable(1) %i.dp, i64 %i.ej, i1 false), !noalias !300
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i.i: ; preds = %bb.ae
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !23, !noalias !300
  %i.ek = load i64, ptr %i.dp, align 8, !tbaa !38, !noalias !300
  store i64 %i.ek, ptr %i.ee, align 8, !tbaa !38, !noalias !300
  %.pre.i20.i.i.i = load i64, ptr %i.dx, align 8, !tbaa !18, !noalias !300
  br label %bb.ah

.thread.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  %i.em = call noundef i32 @fclose(ptr noundef nonnull %i.bv), !noalias !300 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 64) #27, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !300
  br label %common.resume.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.sink.split.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i, %bb.w, %bb.z, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !300
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.sink.split.i.i.i.i, %bb.u, %bb.t, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !300
  %i.en = call noundef i32 @fclose(ptr noundef nonnull %i.bv), !noalias !300 ; 0 uses
  br label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.thread.i.i.i.i

_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.thread.i.i.i.i: ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.i.i.i.i, %bb.q
  %.049.add.i.i.i.i = add nuw nsw i64 %.049.idx154.i.i.i.i, 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq i64 %.049.add.i.i.i.i, 24
  br i1 %.not.i17.i.i.i, label %bb.ai, label %bb.q

bb.ag:                                            ; preds = %bb.aa
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !300
  %i.ep = call noundef i32 @fclose(ptr noundef nonnull %i.bv), !noalias !300 ; 0 uses
  br label %common.resume.i.i.i

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i.i, %bb.af
  %i.eq = phi i64 [ %i.eh, %bb.af ], [ %.pre.i20.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !18, !noalias !300
  store ptr %i.dn, ptr %0, align 8, !tbaa !94, !alias.scope !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !299
  br label %"_ZSt10__invoke_rISt10unique_ptrIN4absl12lts_2026052613time_internal4cctz14ZoneInfoSourceESt14default_deleteIS5_EERZNS4_12TimeZoneInfo4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0JSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit"

bb.ai:                                            ; preds = %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit86.thread.i.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !304, !alias.scope !300
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !299
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !299
  %i.es = load i64, ptr %i.h, align 8, !tbaa !18, !noalias !306 ; 4 uses
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i45.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i.i.i: ; preds = %bb.ai
  %spec.select.i.i.i28.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.es, i64 5)
  %i.eu = load ptr, ptr %2, align 8, !tbaa !23, !noalias !306
  %bcmp.i29.i.i.i = call i32 @bcmp(ptr %i.eu, ptr nonnull @.str.10, i64 %spec.select.i.i.i28.i.i.i), !noalias !306
  %.not.i.i30.i.i.i = icmp eq i32 %bcmp.i29.i.i.i, 0
  br i1 %.not.i.i30.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i45.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i31.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i45.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i.i.i, %bb.ai
  %.inv.i46.i.i.i = icmp ult i64 %i.es, 5
  %i.ev = select i1 %.inv.i46.i.i.i, i64 0, i64 5
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i31.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i31.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i45.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i.i.i
  %.0.i.i32.i.i.i = phi i64 [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i.i.i ], [ %i.ev, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i45.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @constinit.27, i64 32, i1 false), !tbaa.struct !307, !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24, !noalias !306
  store ptr @.str.21, ptr %i.d, align 8, !tbaa !301, !noalias !306
  %.not.i33.i.i.i = icmp eq i64 %.0.i.i32.i.i.i, %i.es
  br i1 %.not.i33.i.i.i, label %.lr.ph.i34.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i31.i.i.i
  %i.ew = load ptr, ptr %2, align 8, !tbaa !23, !noalias !306
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.0.i.i32.i.i.i
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !38, !noalias !306
  %i.ez = icmp eq i8 %i.ey, 47                    ; 2 uses
  %i.fa = select i1 %i.ez, ptr %i.d, ptr %i.c
  %i.fb = select i1 %i.ez, i64 8, i64 32
  br label %.lr.ph.i34.i.i.i

.lr.ph.i34.i.i.i:                                 ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i31.i.i.i
  %.sroa.6.0.copyload.i.i.i.i = phi i64 [ 32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i31.i.i.i ], [ %i.fb, %bb.aj ]
  %.sroa.0101.0.copyload.i.i.i.i = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.i31.i.i.i ], [ %i.fa, %bb.aj ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.copyload.i.i.i.i, i64 %.sroa.6.0.copyload.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92.i.i.i.i, %.lr.ph.i34.i.i.i
  %.027131.i.i.i.i = phi ptr [ %.sroa.0101.0.copyload.i.i.i.i, %.lr.ph.i34.i.i.i ], [ %i.ku, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i92.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !306
  %i.fh = load ptr, ptr %.027131.i.i.i.i, align 8, !tbaa !301, !noalias !306 ; 4 uses
  store ptr %i.fd, ptr %3, align 8, !tbaa !52, !noalias !306
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %.noexc.i44.i.i.i, label %bb.al

.noexc.i44.i.i.i:                                 ; preds = %bb.ak
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.22) #25, !noalias !306
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.fj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fh) #24, !noalias !306 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !306
  store i64 %i.fj, ptr %i.b, align 8, !tbaa !62, !noalias !306
  %i.fk = icmp ugt i64 %i.fj, 15
  br i1 %i.fk, label %.noexc.i.i43.i.i.i, label %._crit_edge.i.i.i35.i.i.i

.noexc.i.i43.i.i.i:                               ; preds = %bb.al
  %i.fl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0), !noalias !306 ; 2 uses
  store ptr %i.fl, ptr %3, align 8, !tbaa !23, !noalias !306
  %i.fm = load i64, ptr %i.b, align 8, !tbaa !62, !noalias !306
  store i64 %i.fm, ptr %i.fd, align 8, !tbaa !38, !noalias !306
  br label %._crit_edge.i.i.i35.i.i.i

._crit_edge.i.i.i35.i.i.i:                        ; preds = %.noexc.i.i43.i.i.i, %bb.al
end_hunk_1
begin_hunk_2_@_ZNK4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSource7VersionB5cxx11Ev:bb.a
  store i8 %i.k, ptr %i.j, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !18
  %i.n = load ptr, ptr %0, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !38
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull %i.h)
          to label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit unwind label %bb.c, !inline_history !113 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28, !inline_history !113
  unreachable

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  tail call void @_ZN4absl12lts_2026052613time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(32) %0) #24, !inline_history !113
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !38
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27, !inline_history !333
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE, i64 16), ptr %0, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull %i.h)
          to label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit unwind label %bb.c, !inline_history !334 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28, !inline_history !334
  unreachable

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSourceD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
  tail call void @_ZN4absl12lts_2026052613time_internal4cctz14ZoneInfoSourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %0) #24, !inline_history !334
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_121FuchsiaZoneInfoSource7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !52
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.f, ptr %i.a, align 8, !tbaa !62
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !23
  %i.i = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.i, ptr %i.c, align 8, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !38
  store i8 %i.k, ptr %i.j, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !18
  %i.n = load ptr, ptr %0, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.sadd.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v6i64(<6 x i64>) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = distinct !{null, null}
!3 = distinct !{!3, !33}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !9, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!"p1 _ZTSN4absl12lts_2026052613time_internal4cctz14TransitionTypeE", !13, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz14TransitionTypeESaIS4_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 8}
!22 = !{!20, !19, i64 0}
!23 = !{!17, !14, i64 0}
!24 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz6detail6fieldsE", !16, i64 0, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12}
!25 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS3_10second_tagEEE", !24, i64 0}
!26 = !{!"bool", !9, i64 0}
!27 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz14TransitionTypeE", !10, i64 0, !25, i64 8, !25, i64 24, !26, i64 40, !9, i64 41}
!28 = !{!27, !9, i64 41}
!29 = !{!27, !10, i64 0}
!30 = !{!27, !26, i64 40}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!20, !19, i64 16}
!35 = !{!24, !16, i64 0}
!36 = !{!24, !9, i64 8}
!37 = !{!24, !9, i64 9}
!38 = !{!9, !9, i64 0}
!39 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz10TimeZoneIfE"}
!40 = !{!"p1 _ZTSN4absl12lts_2026052613time_internal4cctz10TransitionE", !13, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE", !43, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz14TransitionTypeESaIS4_EE12_Vector_implE", !20, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIN4absl12lts_2026052613time_internal4cctz14TransitionTypeESaIS4_EE", !45, i64 0}
!47 = !{!"_ZTSSt6vectorIN4absl12lts_2026052613time_internal4cctz14TransitionTypeESaIS4_EE", !46, i64 0}
!48 = !{!"_ZTSSt13__atomic_baseImE", !16, i64 0}
!49 = !{!"_ZTSSt6atomicImE", !48, i64 0}
!50 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz12TimeZoneInfoE", !39, i64 0, !44, i64 8, !47, i64 32, !9, i64 56, !17, i64 64, !17, i64 96, !17, i64 128, !26, i64 160, !16, i64 168, !49, i64 176, !49, i64 184}
!51 = !{!50, !26, i64 160}
!52 = !{!15, !14, i64 0}
!53 = !{!40, !40, i64 0}
!54 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz10TransitionE", !16, i64 0, !9, i64 8, !25, i64 16, !25, i64 32}
!55 = !{!54, !9, i64 8}
!56 = !{!41, !40, i64 8}
!57 = !{!41, !40, i64 0}
!58 = !{!54, !16, i64 0}
!59 = !{!25, !16, i64 0}
!60 = !{!50, !16, i64 168}
!61 = !{!41, !40, i64 16}
!62 = !{!16, !16, i64 0}
!63 = !{i64 0, i64 8, !62, i64 8, i64 1, !38, i64 16, i64 8, !62, i64 24, i64 1, !38, i64 25, i64 1, !38, i64 26, i64 1, !38, i64 27, i64 1, !38, i64 28, i64 1, !38, i64 32, i64 8, !62, i64 40, i64 1, !38, i64 41, i64 1, !38, i64 42, i64 1, !38, i64 43, i64 1, !38, i64 44, i64 1, !38}
!64 = !{!10, !10, i64 0}
!65 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz9time_zone15absolute_lookupE", !25, i64 0, !10, i64 16, !26, i64 20, !14, i64 24}
!66 = !{!65, !10, i64 16}
!67 = !{!65, !26, i64 20}
!68 = !{!65, !14, i64 24}
!69 = !{!25, !9, i64 8}
!70 = !{!25, !9, i64 9}
!71 = !{!19, !19, i64 0}
!72 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !16, i64 0}
!73 = !{!50, !9, i64 56}
!74 = !{!"vtable pointer", !8, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16HeaderE", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!77 = !{!76, !16, i64 0}
!78 = !{!76, !16, i64 8}
!79 = !{!76, !16, i64 16}
!80 = !{!76, !16, i64 24}
!81 = !{!76, !16, i64 32}
!82 = !{!76, !16, i64 40}
!83 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!84 = !{!83, !14, i64 0}
!85 = !{i64 0, i64 8, !62, i64 8, i64 1, !38, i64 9, i64 1, !38, i64 10, i64 1, !38, i64 11, i64 1, !38, i64 12, i64 1, !38}
!86 = !{!83, !14, i64 16}
!87 = !{!26, !26, i64 0}
!88 = !{i64 0, i64 4, !64, i64 8, i64 8, !62, i64 16, i64 1, !38, i64 17, i64 1, !38, i64 18, i64 1, !38, i64 19, i64 1, !38, i64 20, i64 1, !38, i64 24, i64 8, !62, i64 32, i64 1, !38, i64 33, i64 1, !38, i64 34, i64 1, !38, i64 35, i64 1, !38, i64 36, i64 1, !38, i64 40, i64 1, !87, i64 41, i64 1, !38}
!89 = !{!25, !9, i64 10}
!90 = !{!25, !9, i64 11}
!91 = !{!25, !9, i64 12}
!92 = !{!13, !13, i64 0}
!93 = !{!"p1 _ZTSN4absl12lts_2026052613time_internal4cctz14ZoneInfoSourceE", !13, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!"p1 _ZTSN4absl12lts_2026052613time_internal4cctz12TimeZoneInfoE", !13, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!98 = !{!"_ZTSSt6locale", !97, i64 0}
!99 = !{!24, !9, i64 11}
!100 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!101 = !{!100, !100, i64 0}
!102 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz14ZoneInfoSourceE"}
!103 = !{!"_ZTSSt10_Head_baseILm1EPFiP8_IO_FILEELb0EE", !13, i64 0}
!104 = !{!"_ZTSSt11_Tuple_implILm1EJPFiP8_IO_FILEEEE", !103, i64 0}
!105 = !{!"_ZTSSt10_Head_baseILm0EP8_IO_FILELb0EE", !100, i64 0}
!106 = !{!"_ZTSSt11_Tuple_implILm0EJP8_IO_FILEPFiS1_EEE", !104, i64 0, !105, i64 8}
!107 = !{!"_ZTSSt5tupleIJP8_IO_FILEPFiS1_EEE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_implI8_IO_FILEPFiPS0_EE", !107, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_dataI8_IO_FILEPFiPS0_ELb1ELb1EE", !108, i64 0}
!110 = !{!"_ZTSSt10unique_ptrI8_IO_FILEPFiPS0_EE", !109, i64 0}
!111 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceE", !102, i64 0, !110, i64 8, !16, i64 24}
!112 = !{!111, !16, i64 24}
!113 = !{ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_118FileZoneInfoSourceD2Ev}
!114 = distinct !{!114, !33}
!115 = distinct !{!115, i1 false, !"_ZSt19__relocate_object_aIN4absl12lts_2026052613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_"}
!116 = distinct !{!116, !115, !"_ZSt19__relocate_object_aIN4absl12lts_2026052613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!117 = distinct !{!117, !115, !"_ZSt19__relocate_object_aIN4absl12lts_2026052613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!118 = distinct !{!118, i1 false, !"_ZSt19__relocate_object_aIN4absl12lts_2026052613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_"}
!119 = distinct !{!119, !118, !"_ZSt19__relocate_object_aIN4absl12lts_2026052613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!120 = distinct !{!120, !118, !"_ZSt19__relocate_object_aIN4absl12lts_2026052613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!121 = distinct !{!121, !33}
!122 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz15PosixTransition10DateFormatE", !9, i64 0}
!123 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz15PosixTransition4DateE", !122, i64 0, !9, i64 8}
!124 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz15PosixTransition4TimeE", !16, i64 0}
!125 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz15PosixTransitionE", !123, i64 0, !124, i64 16}
!126 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz13PosixTimeZoneE", !17, i64 0, !16, i64 32, !17, i64 40, !16, i64 72, !125, i64 80, !125, i64 104}
!127 = !{!126, !16, i64 32}
!128 = !{!126, !16, i64 72}
!129 = !{!126, !122, i64 80}
!130 = !{!126, !16, i64 120}
!131 = !{!24, !9, i64 12}
!132 = !{!125, !122, i64 0}
!133 = !{!"short", !9, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!125, !16, i64 16}
!136 = !{!117, !116}
!137 = !{!120, !119}
!138 = distinct !{!138, i1 false, !"_ZSt19__relocate_object_aIN4absl12lts_2026052613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_"}
!139 = distinct !{!139, !138, !"_ZSt19__relocate_object_aIN4absl12lts_2026052613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!140 = distinct !{!140, !138, !"_ZSt19__relocate_object_aIN4absl12lts_2026052613time_internal4cctz10TransitionES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!141 = !{!140, !139}
!142 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz6detail7weekdayE", !9, i64 0}
!143 = !{!142, !142, i64 0}
!144 = distinct !{!144, i1 false, !"_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!145 = distinct !{!145, !144, !"_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!146 = distinct !{!146, i1 false, !"_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!147 = distinct !{!147, !146, !"_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!148 = distinct !{!148, i1 false, !"_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE"}
!149 = distinct !{!149, !148, !"_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneInfo9LocalTimeElRKNS2_14TransitionTypeE: argument 0"}
!150 = !{!72, !16, i64 0}
!151 = !{!145}
!152 = !{!147}
!153 = !{!"long long", !9, i64 0}
!154 = !{!153, !153, i64 0}
!155 = !{!149}
!156 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!157 = distinct !{!157, !33, !164}
!158 = distinct !{!158, !33}
!159 = distinct !{!159, !33}
!160 = distinct !{!160, !33}
end_hunk_2

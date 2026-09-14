Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/time_zone_info?download=true
inline.NumInlined: 1282
inline.NumDeleted: 547
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo4LoadEPNS2_14ZoneInfoSourceE:bb.a
  %i.t = shl nuw nsw i64 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 35
  %.08.val.3.i.i = load i8, ptr %i.u, align 1, !tbaa !38
  %i.v = zext i8 %.08.val.3.i.i to i64
  %i.w = or disjoint i64 %i.q, %i.n
  %i.x = or disjoint i64 %i.w, %i.t
  %i.y = or disjoint i64 %i.x, %i.v               ; 2 uses
  store i64 %i.y, ptr %3, align 8, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.08.val.i19.i = load i8, ptr %i.z, align 1, !tbaa !38 ; 2 uses
  %i.aa = icmp slt i8 %.08.val.i19.i, 0
  br i1 %i.aa, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = zext nneg i8 %.08.val.i19.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 37
  %.08.val.1.i20.i = load i8, ptr %i.ad, align 1, !tbaa !38
  %i.ae = zext i8 %.08.val.1.i20.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 38
  %.08.val.2.i21.i = load i8, ptr %i.ag, align 1, !tbaa !38
  %i.ah = zext i8 %.08.val.2.i21.i to i64
  %i.ai = shl nuw nsw i64 %i.ah, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 39
  %.08.val.3.i22.i = load i8, ptr %i.aj, align 1, !tbaa !38
  %i.ak = zext i8 %.08.val.3.i22.i to i64
  %i.al = or disjoint i64 %i.af, %i.ac
  %i.am = or disjoint i64 %i.al, %i.ai
  %i.an = or disjoint i64 %i.am, %i.ak            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !78
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.08.val.i24.i = load i8, ptr %i.ap, align 1, !tbaa !38 ; 2 uses
  %i.aq = icmp slt i8 %.08.val.i24.i, 0
  br i1 %i.aq, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = zext nneg i8 %.08.val.i24.i to i64
  %i.as = shl nuw nsw i64 %i.ar, 24
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 41
  %.08.val.1.i25.i = load i8, ptr %i.at, align 1, !tbaa !38
  %i.au = zext i8 %.08.val.1.i25.i to i64
  %i.av = shl nuw nsw i64 %i.au, 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 42
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
  %.not159245 = icmp eq i64 %i.ef, 0
  br i1 %.not159245, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader238
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !57 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %.08.val.i.peel = load i8, ptr %i.et, align 1, !tbaa !38 ; 2 uses
  %i.ey = zext i8 %.08.val.i.peel to i64          ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 2 ; 2 uses
  %.08.val.1.i.peel = load i8, ptr %i.ex, align 1, !tbaa !38
  %i.fa = zext i8 %.08.val.1.i.peel to i64        ; 2 uses
  br i1 %.not148, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.fb = shl nuw nsw i64 %i.ey, 16
  %i.fc = shl nuw nsw i64 %i.fa, 8
  %i.fd = or disjoint i64 %i.fc, %i.fb
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 3
  %.08.val.2.i197.peel = load i8, ptr %i.ez, align 1, !tbaa !38
  %i.ff = zext i8 %.08.val.2.i197.peel to i64
  %i.fg = or disjoint i64 %i.fd, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 7
  %i.fi = load i32, ptr %i.fe, align 1
  %i.fj = call i32 @llvm.bswap.i32(i32 %i.fi)
  %i.fk = zext i32 %i.fj to i64
  %i.fl = shl nuw i64 %i.fg, 40
  %i.fm = shl nuw nsw i64 %i.fk, 8
  %i.fn = or disjoint i64 %i.fl, %i.fm
  %.08.val.7.i.peel = load i8, ptr %i.fh, align 1, !tbaa !38
  %i.fo = zext i8 %.08.val.7.i.peel to i64
  %i.fp = or disjoint i64 %i.fn, %i.fo
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %i.fq = getelementptr inbounds nuw i8, ptr %i.et, i64 3
  %.08.val.2.i.peel = load i8, ptr %i.ez, align 1, !tbaa !38
  %i.fr = zext i8 %.08.val.2.i.peel to i64
  %i.fs = shl nuw nsw i64 %i.ey, 24
  %i.ft = shl nuw nsw i64 %i.fa, 16
  %i.fu = shl nuw nsw i64 %i.fr, 8
  %.08.val.3.i.peel = load i8, ptr %i.fq, align 1, !tbaa !38
  %i.fv = zext i8 %.08.val.3.i.peel to i64
  %i.fw = or disjoint i64 %i.ft, %i.fs
  %i.fx = or disjoint i64 %i.fw, %i.fu
  %i.fy = or disjoint i64 %i.fx, %i.fv            ; 2 uses
  %i.fz = or disjoint i64 %i.fy, -4294967296
  %i.ga = icmp slt i8 %.08.val.i.peel, 0
  %.09.i.peel = select i1 %i.ga, i64 %i.fz, i64 %i.fy
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.gb = phi i64 [ %.09.i.peel, %bb.w ], [ %i.fp, %bb.v ]
  store i64 %i.gb, ptr %i.ew, align 8, !tbaa !58
  %i.gc = getelementptr inbounds nuw i8, ptr %i.et, i64 %.0114 ; 2 uses
  %.not159.peel = icmp eq i64 %i.ef, 1
  br i1 %.not159.peel, label %.lr.ph252, label %.peel.next

.lr.ph252:                                        ; preds = %bb.ac, %bb.x
  %.0132.lcssa.ph = phi ptr [ %i.gc, %bb.x ], [ %i.ho, %bb.ac ]
  %i.gd = load ptr, ptr %i.eu, align 8, !tbaa !57
  br label %bb.ad

bb.y:                                             ; preds = %bb.u, %bb.t
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.peel.next:                                       ; preds = %bb.x, %bb.ac
  %.0131247 = phi i64 [ %i.hp, %bb.ac ], [ 1, %bb.x ] ; 2 uses
  %.0132246 = phi ptr [ %i.ho, %bb.ac ], [ %i.gc, %bb.x ] ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0132246, i64 1
  %.08.val.i = load i8, ptr %.0132246, align 1, !tbaa !38 ; 2 uses
  %i.gg = zext i8 %.08.val.i to i64               ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0132246, i64 2 ; 2 uses
  %.08.val.1.i = load i8, ptr %i.gf, align 1, !tbaa !38
  %i.gi = zext i8 %.08.val.1.i to i64             ; 2 uses
  br i1 %.not148, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.peel.next
  %i.gj = getelementptr inbounds nuw i8, ptr %.0132246, i64 3
  %.08.val.2.i = load i8, ptr %i.gh, align 1, !tbaa !38
  %i.gk = zext i8 %.08.val.2.i to i64
  %i.gl = shl nuw nsw i64 %i.gg, 24
  %i.gm = shl nuw nsw i64 %i.gi, 16
  %i.gn = shl nuw nsw i64 %i.gk, 8
  %.08.val.3.i = load i8, ptr %i.gj, align 1, !tbaa !38
  %i.go = zext i8 %.08.val.3.i to i64
  %i.gp = or disjoint i64 %i.gm, %i.gl
  %i.gq = or disjoint i64 %i.gp, %i.gn
  %i.gr = or disjoint i64 %i.gq, %i.go            ; 2 uses
  %i.gs = or disjoint i64 %i.gr, -4294967296
  %i.gt = icmp slt i8 %.08.val.i, 0
  %.09.i = select i1 %i.gt, i64 %i.gs, i64 %i.gr
  br label %bb.ab

bb.aa:                                            ; preds = %.peel.next
  %i.gu = shl nuw nsw i64 %i.gg, 16
  %i.gv = shl nuw nsw i64 %i.gi, 8
  %i.gw = or disjoint i64 %i.gv, %i.gu
  %i.gx = getelementptr inbounds nuw i8, ptr %.0132246, i64 3
  %.08.val.2.i197 = load i8, ptr %i.gh, align 1, !tbaa !38
  %i.gy = zext i8 %.08.val.2.i197 to i64
  %i.gz = or disjoint i64 %i.gw, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %.0132246, i64 7
  %i.hb = load i32, ptr %i.gx, align 1
  %i.hc = call i32 @llvm.bswap.i32(i32 %i.hb)
  %i.hd = zext i32 %i.hc to i64
  %i.he = shl nuw i64 %i.gz, 40
  %i.hf = shl nuw nsw i64 %i.hd, 8
  %i.hg = or disjoint i64 %i.he, %i.hf
  %.08.val.7.i = load i8, ptr %i.ha, align 1, !tbaa !38
  %i.hh = zext i8 %.08.val.7.i to i64
  %i.hi = or disjoint i64 %i.hg, %i.hh
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.hj = phi i64 [ %.09.i, %bb.z ], [ %i.hi, %bb.aa ] ; 2 uses
  %i.hk = getelementptr [48 x i8], ptr %i.ew, i64 %.0131247 ; 2 uses
  store i64 %i.hj, ptr %i.hk, align 8, !tbaa !58
  %i.hl = getelementptr i8, ptr %i.hk, i64 -48
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !58
  %i.hn = icmp slt i64 %i.hm, %i.hj
  br i1 %i.hn, label %bb.ac, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13shrink_to_fitEv.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ho = getelementptr inbounds nuw i8, ptr %.0132246, i64 %.0114 ; 2 uses
  %i.hp = add nuw i64 %.0131247, 1                ; 2 uses
  %.not159 = icmp eq i64 %i.hp, %i.ef
  br i1 %.not159, label %.lr.ph252, label %.peel.next, !llvm.loop !161

bb.ad:                                            ; preds = %.lr.ph252, %bb.ae
  %.0128251 = phi i64 [ 0, %.lr.ph252 ], [ %i.hv, %bb.ae ] ; 2 uses
  %.0129250 = phi i1 [ false, %.lr.ph252 ], [ %spec.select, %bb.ae ]
  %.2134249 = phi ptr [ %.0132.lcssa.ph, %.lr.ph252 ], [ %i.ht, %bb.ae ] ; 2 uses
  %.2134.val = load i8, ptr %.2134249, align 1, !tbaa !38 ; 3 uses
  %i.hq = getelementptr inbounds nuw [48 x i8], ptr %i.gd, i64 %.0128251
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store i8 %.2134.val, ptr %i.hr, align 8, !tbaa !55
  %i.hs = zext i8 %.2134.val to i64
  %.not162 = icmp ugt i64 %i.ea, %i.hs
  br i1 %.not162, label %bb.ae, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13shrink_to_fitEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ht = getelementptr inbounds nuw i8, ptr %.2134249, i64 1 ; 2 uses
  %i.hu = icmp eq i8 %.2134.val, 0
  %spec.select = select i1 %i.hu, i1 true, i1 %.0129250 ; 2 uses
  %i.hv = add nuw i64 %.0128251, 1                ; 2 uses
  %.not161 = icmp eq i64 %i.hv, %i.ef
  br i1 %.not161, label %._crit_edge, label %bb.ad, !llvm.loop !162

._crit_edge:                                      ; preds = %bb.ae, %.preheader238
  %.2134.lcssa = phi ptr [ %i.et, %.preheader238 ], [ %i.ht, %bb.ae ]
  %.0129.lcssa = phi i1 [ false, %.preheader238 ], [ %spec.select, %bb.ae ]
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.hx = add i64 %i.ea, 2
  invoke void @_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz14TransitionTypeESaIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, i64 noundef %i.hx)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz14TransitionTypeESaIS4_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, i64 noundef %i.ea)
          to label %.preheader unwind label %bb.ag

.preheader:                                       ; preds = %bb.af
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !22 ; 4 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ap, %bb.be, %.critedge10.thread, %bb.af, %._crit_edge
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ah:                                            ; preds = %.preheader, %bb.aj
  %.0127256 = phi i64 [ 0, %.preheader ], [ %i.im, %bb.aj ] ; 2 uses
  %.4136255 = phi ptr [ %.2134.lcssa, %.preheader ], [ %i.il, %bb.aj ] ; 4 uses
  %i.ia = load i32, ptr %.4136255, align 1
  %i.ib = call i32 @llvm.bswap.i32(i32 %i.ia)     ; 2 uses
  %i.ic = getelementptr inbounds nuw [48 x i8], ptr %i.hy, i64 %.0127256 ; 3 uses
  store i32 %i.ib, ptr %i.ic, align 8, !tbaa !29
  %i.id = add i32 %i.ib, -86400
  %or.cond229 = icmp ult i32 %i.id, -172799
  br i1 %or.cond229, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13shrink_to_fitEv.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ie = getelementptr inbounds nuw i8, ptr %.4136255, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.4136255, i64 5
  %.val194 = load i8, ptr %i.ie, align 1, !tbaa !38
  %i.ig = icmp ne i8 %.val194, 0
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ii = zext i1 %i.ig to i8
  store i8 %i.ii, ptr %i.ih, align 8, !tbaa !30
  %.val = load i8, ptr %i.if, align 1, !tbaa !38  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 41
  store i8 %.val, ptr %i.ij, align 1, !tbaa !28
  %i.ik = zext i8 %.val to i64
  %.not164 = icmp ugt i64 %i.ei, %i.ik
  br i1 %.not164, label %bb.aj, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13shrink_to_fitEv.exit

bb.aj:                                            ; preds = %bb.ai
  %i.il = getelementptr inbounds nuw i8, ptr %.4136255, i64 6 ; 2 uses
  %i.im = add i64 %.0127256, 1                    ; 2 uses
  %.not163 = icmp eq i64 %i.im, %i.ea
  br i1 %.not163, label %bb.ak, label %bb.ah, !llvm.loop !163

bb.ak:                                            ; preds = %bb.aj
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i8 0, ptr %i.in, align 8, !tbaa !73
  br i1 %.0129.lcssa, label %bb.al, label %.critedge10.thread

bb.al:                                            ; preds = %bb.ak
  %i.io = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !30, !range !31, !noundef !32
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.ir = load ptr, ptr %i.eu, align 8, !tbaa !57
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i8, ptr %i.is, align 8, !tbaa !55  ; 2 uses
  %.not165257 = icmp eq i8 %i.it, 0
  br i1 %.not165257, label %.critedge, label %.lr.ph260.preheader

.lr.ph260.preheader:                              ; preds = %bb.am
  %i.iu = zext i8 %i.it to i64
  br label %.lr.ph260

.lr.ph260:                                        ; preds = %.lr.ph260.preheader, %bb.an
  %indvars.iv = phi i64 [ %i.iu, %.lr.ph260.preheader ], [ %indvars.iv.next, %bb.an ] ; 3 uses
  %i.iv = getelementptr inbounds nuw [48 x i8], ptr %i.hy, i64 %indvars.iv
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.ix = load i8, ptr %i.iw, align 8, !tbaa !30, !range !31, !noundef !32
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.an, label %.critedge.loopexit.split.loop.exit

bb.an:                                            ; preds = %.lr.ph260
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.iz = and i64 %indvars.iv.next, 255
  %.not165 = icmp eq i64 %i.iz, 0
  br i1 %.not165, label %.critedge, label %.lr.ph260, !llvm.loop !164

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph260
  %i.ja = trunc nuw i64 %indvars.iv to i8
  br label %.critedge

.critedge:                                        ; preds = %bb.an, %.critedge.loopexit.split.loop.exit, %bb.am, %bb.al
  %.1125 = phi i8 [ 0, %bb.al ], [ 0, %bb.am ], [ %i.ja, %.critedge.loopexit.split.loop.exit ], [ 0, %bb.an ] ; 2 uses
  %i.jb = zext i8 %.1125 to i64                   ; 2 uses
  %.not166264 = icmp eq i64 %i.ea, %i.jb
  br i1 %.not166264, label %.critedge10.thread, label %.lr.ph266

.lr.ph266:                                        ; preds = %.critedge, %bb.ao
  %i.jc = phi i64 [ %i.ji, %bb.ao ], [ %i.jb, %.critedge ]
  %.2126265 = phi i8 [ %i.jh, %bb.ao ], [ %.1125, %.critedge ] ; 2 uses
  %i.jd = getelementptr inbounds nuw [48 x i8], ptr %i.hy, i64 %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  %i.jf = load i8, ptr %i.je, align 8, !tbaa !30, !range !31, !noundef !32
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %bb.ao, label %.critedge10

bb.ao:                                            ; preds = %.lr.ph266
  %i.jh = add i8 %.2126265, 1                     ; 2 uses
  %i.ji = zext i8 %i.jh to i64                    ; 2 uses
  %.not166 = icmp eq i64 %i.ea, %i.ji
  br i1 %.not166, label %.critedge10.thread, label %.lr.ph266, !llvm.loop !165

.critedge10:                                      ; preds = %.lr.ph266
  store i8 %.2126265, ptr %i.in, align 8, !tbaa !73
  br label %.critedge10.thread

.critedge10.thread:                               ; preds = %bb.ao, %.critedge, %.critedge10, %bb.ak
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.jk = add i64 %i.ei, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.jj, i64 noundef %i.jk)
          to label %bb.ap unwind label %bb.ag

bb.ap:                                            ; preds = %.critedge10.thread
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !18
  %i.jn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.jj, i64 noundef 0, i64 noundef %i.jm, ptr noundef nonnull %i.il, i64 noundef %i.ei)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.ag ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.ap
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.jp, align 8, !tbaa !18
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !23
  store i8 0, ptr %i.jq, align 1, !tbaa !38
  %i.jr = load i8, ptr %i.db, align 1, !tbaa !38
  %.not168 = icmp eq i8 %i.jr, 0
  br i1 %.not168, label %.critedge185, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.js = load ptr, ptr %1, align 8, !tbaa !75
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8
  %i.jv = invoke noundef i64 %i.ju(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %bb.ar unwind label %bb.as, !inline_history !166

bb.ar:                                            ; preds = %bb.aq
  %i.jw = icmp eq i64 %i.jv, 1
  %i.jx = load i8, ptr %i.c, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %.not169232 = icmp eq i8 %i.jx, 10
  %.not169 = select i1 %i.jw, i1 %.not169232, i1 false
  br i1 %.not169, label %bb.at, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13shrink_to_fitEv.exit

bb.as:                                            ; preds = %bb.aq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.jz = load ptr, ptr %1, align 8, !tbaa !75
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = invoke noundef i64 %i.kb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %"_ZZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo4LoadEPNS2_14ZoneInfoSourceEENK3$_0clES5_.exit204" unwind label %.loopexit.split-lp, !inline_history !166

"_ZZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo4LoadEPNS2_14ZoneInfoSourceEENK3$_0clES5_.exit204": ; preds = %bb.at
  %i.kd = icmp eq i64 %i.kc, 1
  %i.ke = load i8, ptr %i.b, align 1
  %i.kf = zext i8 %i.ke to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %spec.select325 = select i1 %i.kd, i32 %i.kf, i32 -1
  br label %select.unfold

select.unfold:                                    ; preds = %"_ZZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo4LoadEPNS2_14ZoneInfoSourceEENK3$_0clES5_.exit205", %"_ZZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo4LoadEPNS2_14ZoneInfoSourceEENK3$_0clES5_.exit204"
  %.0123 = phi i32 [ %spec.select325, %"_ZZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo4LoadEPNS2_14ZoneInfoSourceEENK3$_0clES5_.exit204" ], [ %.0123.be, %"_ZZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo4LoadEPNS2_14ZoneInfoSourceEENK3$_0clES5_.exit205" ] ; 2 uses
  switch i32 %.0123, label %bb.au [
    i32 10, label %.critedge185
    i32 -1, label %_ZNSt6vectorIN4absl12lts_2026052613time_internal4cctz10TransitionESaIS4_EE13shrink_to_fitEv.exit
  ]

.loopexit:                                        ; preds = %bb.au, %bb.av
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.au:                                            ; preds = %select.unfold
  %i.kg = trunc nuw i32 %.0123 to i8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(32) %i.jo, i8 noundef signext %i.kg)
          to label %bb.av unwind label %.loopexit

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.kh = load ptr, ptr %1, align 8, !tbaa !75
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = invoke noundef i64 %i.kj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %"_ZZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo4LoadEPNS2_14ZoneInfoSourceEENK3$_0clES5_.exit205" unwind label %.loopexit, !inline_history !166

"_ZZN4absl12lts_2026052613time_internal4cctz12TimeZoneInfo4LoadEPNS2_14ZoneInfoSourceEENK3$_0clES5_.exit205": ; preds = %bb.av
  %i.kl = icmp eq i64 %i.kk, 1
  %i.km = load i8, ptr %i.a, align 1
  %i.kn = zext i8 %i.km to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.0123.be = select i1 %i.kl, i32 %i.kn, i32 -1
  br label %select.unfold

.critedge185:                                     ; preds = %select.unfold, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !18
  %i.kr = icmp eq i64 %i.kq, 0
  br i1 %i.kr, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %.critedge185
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ks = load ptr, ptr %1, align 8, !tbaa !75
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8
  invoke void %i.ku(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.kv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ko, ptr noundef nonnull align 8 dereferenceable(32) %6) #24 ; 0 uses
  %i.kw = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ax
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !38
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.la) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.lb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.bp

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.critedge185
  %i.lc = load ptr, ptr %i.eu, align 8, !tbaa !53 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !53
end_hunk_0

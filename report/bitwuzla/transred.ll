Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/transred?download=true
inline.NumInlined: 219
inline.NumDeleted: 118
begin_hunk_0_@_ZN7CaDiCaL8Internal8transredEv:bb.a
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !175
  %i.n = icmp eq i32 %i.l, 1
  br i1 %i.n, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !176
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !195  ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  br i1 %.not3.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.j, align 8, !tbaa !196  ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.j, align 8, !tbaa !196
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3804
  %i.v = load i32, ptr %i.u, align 4, !tbaa !197
  store i32 %i.v, ptr %i.j, align 8, !tbaa !196
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !199
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !22
  br i1 %i.z, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.g, align 8, !tbaa !174
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !200
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4224
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !201
  %.not173 = icmp eq i64 %i.ad, 0
  br i1 %.not173, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3620 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !202
  %.not.i223 = icmp eq i32 %i.af, 0
  br i1 %.not.i223, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.k, %bb.l
  %i.ai = phi double [ %i.ag, %bb.k ], [ %i.ah, %bb.l ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 14 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !203 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 3608
  %i.am = load i32, ptr %i.al, align 8, !tbaa !204 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !205, !range !172, !noundef !173
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !206, !range !172, !noundef !173
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.au = load i8, ptr %i.at, align 4, !tbaa !207, !range !172, !noundef !173
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.o, label %.thread527

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 6800
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !208
  %.not174 = icmp sgt i32 %i.ax, %i.am
  br i1 %.not174, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 6768
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ak, ptr noundef nonnull align 8 dereferenceable(36) %i.ay, double noundef %i.ai)
  %.pre = load i8, ptr %i.at, align 4, !tbaa !207, !range !172
  %.pre456.pre = load ptr, ptr %i.aj, align 8, !tbaa !203 ; 2 uses
  %i.az = trunc nuw i8 %.pre to i1
  br i1 %i.az, label %.thread, label %.thread527

.thread527:                                       ; preds = %bb.n, %bb.p
  %.pre456529 = phi ptr [ %.pre456.pre, %bb.p ], [ %i.ak, %bb.n ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre456529, i64 7040
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !209
  %.not175 = icmp sgt i32 %i.bb, %i.am
  br i1 %.not175, label %.thread, label %bb.q

bb.q:                                             ; preds = %.thread527
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre456529, i64 7008
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %.pre456529, ptr noundef nonnull align 8 dereferenceable(36) %i.bc, double noundef %i.ai)
  %.pre455 = load ptr, ptr %i.aj, align 8, !tbaa !203
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.q, %.thread527, %bb.p
  %i.bd = phi ptr [ %.pre455, %bb.q ], [ %.pre456529, %.thread527 ], [ %.pre456.pre, %bb.p ], [ %i.ak, %bb.o ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6720
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !210
  %.not176 = icmp sgt i32 %i.bf, %i.am
  br i1 %.not176, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 6688
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bd, ptr noundef nonnull align 8 dereferenceable(36) %i.bg, double noundef %i.ai)
  %.pre457.pre = load ptr, ptr %i.aj, align 8, !tbaa !203
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread
  %.pre457 = phi ptr [ %.pre457.pre, %bb.r ], [ %i.bd, %.thread ]
  %i.bh = load i32, ptr %0, align 8, !tbaa !211
  %i.bi = and i32 %i.bh, -257
  store i32 %i.bi, ptr %0, align 8, !tbaa !211
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.bj = phi ptr [ %.pre457, %bb.s ], [ %i.ak, %bb.m ], [ %i.ak, %_ZN7CaDiCaL8Internal4timeEv.exit ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 6880
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !212
  %.not177 = icmp sgt i32 %i.bl, %i.am
  br i1 %.not177, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 6848
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bj, ptr noundef nonnull align 8 dereferenceable(36) %i.bm, double noundef %i.ai)
  %.pre458 = load ptr, ptr %i.aj, align 8, !tbaa !203
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = phi ptr [ %.pre458, %bb.u ], [ %i.bj, %bb.t ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 7000
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !213
  %.not178 = icmp sgt i32 %i.bp, %i.am
  br i1 %.not178, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 6968
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bn, ptr noundef nonnull align 8 dereferenceable(36) %i.bq, double noundef %i.ai)
  %.pre459 = load ptr, ptr %i.aj, align 8, !tbaa !203
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.br = phi ptr [ %.pre459, %bb.w ], [ %i.bn, %bb.v ] ; 2 uses
  %i.bs = load i32, ptr %0, align 8, !tbaa !211
  %i.bt = or i32 %i.bs, 4608
  store i32 %i.bt, ptr %0, align 8, !tbaa !211
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5128 ; 4 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !214
  %i.bw = add nsw i64 %i.bv, 1                    ; 2 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !214
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3968 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !215
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2968 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !216
  %i.cb = sub nsw i64 %i.by, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3848
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !217
  %i.ce = sitofp i32 %i.cd to double
  %i.cf = fmul nnan double %i.ce, 1.000000e-03
  %i.cg = sitofp i64 %i.cb to double
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = fptosi double %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3844
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !218
  %i.cl = sext i32 %i.ck to i64
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.ci, i64 %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 3840
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !219
  %i.co = sext i32 %i.cn to i64
  %.1117 = tail call i64 @llvm.smin.i64(i64 %spec.select, i64 %i.co) ; 2 uses
  %.not179 = icmp eq ptr %i.br, null
  br i1 %.not179, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.br, ptr noundef nonnull @.str, i64 noundef %i.bw, ptr noundef nonnull @.str.1, i64 noundef %.1117)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !220 ; 7 uses
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !220 ; 4 uses
  %.not318386 = icmp eq ptr %i.cs, %i.cr
  br i1 %.not318386, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.ac
  %.sroa.0288.0387 = phi ptr [ %i.db, %bb.ac ], [ %i.cs, %bb.z ] ; 3 uses
  %i.ct = load ptr, ptr %.sroa.0288.0387, align 8, !tbaa !221 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i32, ptr %i.cu, align 8            ; 3 uses
  %i.cw = and i32 %i.cv, 16
  %.not180 = icmp eq i32 %i.cw, 0
  br i1 %.not180, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !14
  %.not181 = icmp eq i32 %i.cy, 2
  br i1 %.not181, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cz = and i32 %i.cv, 2112
  %or.cond216 = icmp ne i32 %i.cz, 2112
  %i.da = and i32 %i.cv, 4096
  %.not184 = icmp eq i32 %i.da, 0
  %or.cond313 = and i1 %or.cond216, %.not184
  br i1 %or.cond313, label %._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.aa, %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0288.0387, i64 8 ; 3 uses
  %.not318 = icmp eq ptr %i.db, %i.cr
  br i1 %.not318, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.ac, %bb.ab, %bb.z
  %.sroa.0288.0.lcssa = phi ptr [ %i.cs, %bb.z ], [ %.sroa.0288.0387, %bb.ab ], [ %i.db, %bb.ac ] ; 2 uses
  %i.dc = icmp eq ptr %.sroa.0288.0.lcssa, %i.cr
  br i1 %i.dc, label %bb.ad, label %._crit_edge394

bb.ad:                                            ; preds = %._crit_edge
  %i.dd = load ptr, ptr %i.aj, align 8, !tbaa !203 ; 2 uses
  %.not185 = icmp eq ptr %i.dd, null
  br i1 %.not185, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = load i64, ptr %i.bu, align 8, !tbaa !214
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.dd, ptr noundef nonnull @.str, i64 noundef %i.de, ptr noundef nonnull @.str.2)
  %.pre460 = load ptr, ptr %i.cp, align 8, !tbaa !220
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.df = phi ptr [ %.pre460, %bb.ae ], [ %i.cs, %bb.ad ] ; 3 uses
  %.not319390 = icmp eq ptr %i.df, %i.cr
  br i1 %.not319390, label %._crit_edge394, label %.lr.ph393

.lr.ph393:                                        ; preds = %bb.af, %bb.ah
  %.sroa.0288.1391 = phi ptr [ %i.dl, %bb.ah ], [ %i.df, %bb.af ] ; 2 uses
  %i.dg = load ptr, ptr %.sroa.0288.1391, align 8, !tbaa !221
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8            ; 2 uses
  %i.dj = and i32 %i.di, 4096
  %.not215 = icmp eq i32 %i.dj, 0
  br i1 %.not215, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph393
  %i.dk = and i32 %i.di, -4097
  store i32 %i.dk, ptr %i.dh, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph393
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0288.1391, i64 8 ; 2 uses
  %.not319 = icmp eq ptr %i.dl, %i.cr
  br i1 %.not319, label %._crit_edge394.loopexit, label %.lr.ph393, !llvm.loop !24

._crit_edge394.loopexit:                          ; preds = %bb.ah
  %.pre461 = load ptr, ptr %i.cp, align 8, !tbaa !220
  br label %._crit_edge394

._crit_edge394:                                   ; preds = %bb.af, %._crit_edge394.loopexit, %._crit_edge
  %.sroa.0288.2 = phi ptr [ %.sroa.0288.0.lcssa, %._crit_edge ], [ %.pre461, %._crit_edge394.loopexit ], [ %i.df, %bb.af ] ; 2 uses
  tail call void @_ZN7CaDiCaL8Internal12sort_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.dm = load i8, ptr %i.d, align 4, !tbaa !171, !range !172, !noundef !173
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = icmp eq ptr %.sroa.0288.2, %i.cr
  %or.cond315.not405 = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond315.not405, label %.critedge, label %.lr.ph411

.lr.ph411:                                        ; preds = %._crit_edge394
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 3804
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 9 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 9 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 5264 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 5288 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 5136 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph411, %bb.dd
  %.0149409 = phi i64 [ 0, %.lr.ph411 ], [ %.3152, %bb.dd ] ; 12 uses
  %.0153408 = phi i64 [ 0, %.lr.ph411 ], [ %.3156, %bb.dd ] ; 11 uses
  %.0157407 = phi i64 [ 0, %.lr.ph411 ], [ %.3160, %bb.dd ] ; 11 uses
  %.sroa.0288.3406 = phi ptr [ %.sroa.0288.2, %.lr.ph411 ], [ %i.ex, %bb.dd ] ; 2 uses
  %i.eh = load volatile i8, ptr %i.g, align 8, !tbaa !174, !range !172, !noundef !173
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ej = load i32, ptr %i.k, align 4, !tbaa !175 ; 3 uses
  %.not.i224 = icmp eq i32 %i.ej, 0
  br i1 %.not.i224, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ek = add nsw i32 %i.ej, -1
  store i32 %i.ek, ptr %i.k, align 4, !tbaa !175
  %i.el = icmp eq i32 %i.ej, 1
  br i1 %i.el, label %.sink.split.i228, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.em = load ptr, ptr %i.o, align 8, !tbaa !176
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 360
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !195 ; 3 uses
  %.not3.i225 = icmp eq ptr %i.eo, null
  br i1 %.not3.i225, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit229, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ep = load i32, ptr %i.j, align 8, !tbaa !196 ; 2 uses
  %i.eq = add nsw i32 %i.ep, -1
  store i32 %i.eq, ptr %i.j, align 8, !tbaa !196
  %.not4.i226 = icmp eq i32 %i.ep, 0
  br i1 %.not4.i226, label %bb.an, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit229

bb.an:                                            ; preds = %bb.am
  %i.er = load i32, ptr %i.dp, align 4, !tbaa !197
  store i32 %i.er, ptr %i.j, align 8, !tbaa !196
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !199
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = invoke noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %.noexc unwind label %.loopexit328, !inline_history !22

.noexc:                                           ; preds = %bb.an
  br i1 %i.ev, label %.sink.split.i228, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit229

.sink.split.i228:                                 ; preds = %.noexc, %bb.ak
  store volatile i8 1, ptr %i.g, align 8, !tbaa !174
  br label %.critedge

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit229: ; preds = %.noexc, %bb.am, %bb.al
  %i.ew = icmp slt i64 %.0157407, %.1117
  br i1 %i.ew, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit229
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0288.3406, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %.sroa.0288.3406, align 8, !tbaa !221 ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 8            ; 4 uses
  %i.fb = and i32 %i.fa, 16
  %.not186 = icmp eq i32 %i.fb, 0
  br i1 %.not186, label %bb.ap, label %bb.dd, !llvm.loop !25

.loopexit328:                                     ; preds = %bb.an
  %lpad.loopexit330 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

.loopexit.split-lp329:                            ; preds = %bb.dj, %bb.eb
  %lpad.loopexit.split-lp331 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ap:                                            ; preds = %bb.ao
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !14
  %.not187 = icmp eq i32 %i.fd, 2
  br i1 %.not187, label %bb.aq, label %bb.dd, !llvm.loop !25

bb.aq:                                            ; preds = %bb.ap
  %i.fe = and i32 %i.fa, 2112
  %or.cond219 = icmp ne i32 %i.fe, 2112
  %i.ff = and i32 %i.fa, 4096
  %.not190 = icmp eq i32 %i.ff, 0
  %or.cond316 = and i1 %or.cond219, %.not190
  br i1 %or.cond316, label %bb.ar, label %bb.dd, !llvm.loop !25

bb.ar:                                            ; preds = %bb.aq
  %i.fg = or disjoint i32 %i.fa, 4096
  store i32 %i.fg, ptr %i.ez, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !14 ; 4 uses
  %i.fj = sub nsw i32 0, %i.fi                    ; 3 uses
  store i32 %i.fj, ptr %i.a, align 4, !tbaa !14
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 28
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !14 ; 5 uses
  %i.fm = load ptr, ptr %i.dq, align 8, !tbaa !223 ; 2 uses
  %i.fn = sext i32 %i.fj to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !224
  %.not191 = icmp eq i8 %i.fp, 0
  br i1 %.not191, label %bb.as, label %bb.dc, !llvm.loop !25

bb.as:                                            ; preds = %bb.ar
  %i.fq = sext i32 %i.fl to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fm, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !224
  %.not192 = icmp eq i8 %i.fs, 0
  br i1 %.not192, label %bb.at, label %bb.dc, !llvm.loop !25

bb.at:                                            ; preds = %bb.as
  %i.ft = call noundef i32 @llvm.abs.i32(i32 %i.fi, i1 true)
  %i.fu = call noundef i32 @llvm.fshl.i32(i32 %i.ft, i32 %i.fi, i32 1)
  %i.fv = zext i32 %i.fu to i64
  %i.fw = load ptr, ptr %i.dr, align 8, !tbaa !225 ; 2 uses
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %i.fv ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !228
  %i.ga = load ptr, ptr %i.fx, align 8, !tbaa !229
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = call noundef i32 @llvm.abs.i32(i32 %i.fl, i1 true)
  %i.gf = call noundef i32 @llvm.fshl.i32(i32 %i.ge, i32 %i.fl, i32 1)
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %i.gg ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !228
  %i.gk = load ptr, ptr %i.gh, align 8, !tbaa !229
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = icmp ult i64 %i.gd, %i.gn
  br i1 %i.go, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gp = sub nsw i32 0, %i.fl                    ; 2 uses
  store i32 %i.gp, ptr %i.a, align 4, !tbaa !14
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gq = phi i32 [ %i.gp, %bb.au ], [ %i.fj, %bb.at ] ; 2 uses
  %.0134 = phi i32 [ %i.fi, %bb.au ], [ %i.fl, %bb.at ]
  %i.gr = load i32, ptr %i.ez, align 8
  %i.gs = and i32 %i.gr, 2048
  %.not193 = icmp ne i32 %i.gs, 0
  %i.gt = call i8 @llvm.scmp.i8.i32(i32 %i.gq, i32 0)
  %i.gu = call noundef i32 @llvm.abs.i32(i32 %i.gq, i1 true)
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = load ptr, ptr %i.ds, align 8, !tbaa !230
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gv
  store i8 %i.gt, ptr %i.gx, align 1, !tbaa !224
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.gy = load ptr, ptr %i.dt, align 8, !tbaa !15 ; 2 uses
  %i.gz = load ptr, ptr %1, align 8, !tbaa !16    ; 3 uses
  %.not650 = icmp eq ptr %i.gy, %i.gz
  br i1 %.not650, label %.critedge3, label %.lr.ph645

bb.ax:                                            ; preds = %.critedge7
  %i.ha = ptrtoint ptr %i.ll to i64
  %i.hb = ptrtoint ptr %i.lm to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = ashr exact i64 %i.hc, 2
  %i.he = icmp ult i64 %i.hg, %i.hd
end_hunk_0

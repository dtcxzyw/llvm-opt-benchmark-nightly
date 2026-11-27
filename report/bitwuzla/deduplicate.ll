Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/deduplicate?download=true
inline.NumInlined: 249
inline.NumDeleted: 142
begin_hunk_0_@_ZN7CaDiCaL8Internal41mark_duplicated_binary_clauses_as_garbageEv:bb.a
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !196
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !17
  br i1 %i.y, label %.sink.split.i, label %bb.i

.sink.split.i:                                    ; preds = %bb.h, %bb.e
  store volatile i8 1, ptr %i.f, align 8, !tbaa !171
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3620 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !197
  %.not.i138 = icmp eq i32 %i.aa, 0
  br i1 %.not.i138, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.j, %bb.k
  %i.ad = phi double [ %i.ab, %bb.j ], [ %i.ac, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 10 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !198 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3608
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !199 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !200, !range !169, !noundef !170
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.s, label %bb.l

bb.l:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.am = load i8, ptr %i.al, align 1, !tbaa !201, !range !169, !noundef !170
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !202, !range !169, !noundef !170
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.n, label %.thread396

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 6800
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !203
  %.not106 = icmp sgt i32 %i.as, %i.ah
  br i1 %.not106, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 6768
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.af, ptr noundef nonnull align 8 dereferenceable(36) %i.at, double noundef %i.ad)
  %.pre = load i8, ptr %i.ao, align 4, !tbaa !202, !range !169
  %.pre368.pre = load ptr, ptr %i.ae, align 8, !tbaa !198 ; 2 uses
  %i.au = trunc nuw i8 %.pre to i1
  br i1 %i.au, label %.thread, label %.thread396

.thread396:                                       ; preds = %bb.m, %bb.o
  %.pre368398 = phi ptr [ %.pre368.pre, %bb.o ], [ %i.af, %bb.m ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre368398, i64 7040
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !204
  %.not107 = icmp sgt i32 %i.aw, %i.ah
  br i1 %.not107, label %.thread, label %bb.p

bb.p:                                             ; preds = %.thread396
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre368398, i64 7008
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %.pre368398, ptr noundef nonnull align 8 dereferenceable(36) %i.ax, double noundef %i.ad)
  %.pre367.a = load ptr, ptr %i.ae, align 8, !tbaa !198
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.p, %.thread396, %bb.o
  %i.ay = phi ptr [ %.pre367.a, %bb.p ], [ %.pre368398, %.thread396 ], [ %.pre368.pre, %bb.o ], [ %i.af, %bb.n ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 6720
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !205
  %.not108 = icmp sgt i32 %i.ba, %i.ah
  br i1 %.not108, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 6688
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ay, ptr noundef nonnull align 8 dereferenceable(36) %i.bb, double noundef %i.ad)
  %.pre369.pre = load ptr, ptr %i.ae, align 8, !tbaa !198
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  %.pre369.a = phi ptr [ %.pre369.pre, %bb.q ], [ %i.ay, %.thread ]
  %i.bc = load i32, ptr %0, align 8, !tbaa !206
  %i.bd = and i32 %i.bc, -257
  store i32 %i.bd, ptr %0, align 8, !tbaa !206
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.be = phi ptr [ %.pre369.a, %bb.r ], [ %i.af, %bb.l ], [ %i.af, %_ZN7CaDiCaL8Internal4timeEv.exit ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6880
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !207
  %.not109 = icmp sgt i32 %i.bg, %i.ah
  br i1 %.not109, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 6848
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.be, ptr noundef nonnull align 8 dereferenceable(36) %i.bh, double noundef %i.ad)
  %.pre370 = load ptr, ptr %i.ae, align 8, !tbaa !198
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bi = phi ptr [ %.pre370, %bb.t ], [ %i.be, %bb.s ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6520
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !208
  %.not110 = icmp sgt i32 %i.bk, %i.ah
  br i1 %.not110, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 6488
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bi, ptr noundef nonnull align 8 dereferenceable(36) %i.bl, double noundef %i.ad)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bm = load i32, ptr %0, align 8, !tbaa !206
  %i.bn = or i32 %i.bm, 528
  store i32 %i.bn, ptr %0, align 8, !tbaa !206
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !209
  %i.bq = add nsw i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !209
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 7272
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !210, !nonnull !170, !align !211
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !10 ; 2 uses
  %.not225341 = icmp eq i32 %i.bt, 0
  br i1 %.not225341, label %._crit_edge, label %.lr.ph348

.lr.ph348:                                        ; preds = %bb.w
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4744 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 5264 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph348, %bb.bp
  %.0347 = phi i64 [ 0, %.lr.ph348 ], [ %.6.ph, %bb.bp ] ; 3 uses
  %.068346 = phi i64 [ 0, %.lr.ph348 ], [ %.674.ph, %bb.bp ] ; 3 uses
  %.sroa.0206.0345 = phi ptr [ null, %.lr.ph348 ], [ %.sroa.0206.5.ph, %bb.bp ] ; 3 uses
  %.sroa.10.0344 = phi ptr [ null, %.lr.ph348 ], [ %.sroa.10.5.ph, %bb.bp ] ; 2 uses
  %.sroa.16.0343 = phi ptr [ null, %.lr.ph348 ], [ %.sroa.16.5.ph, %bb.bp ] ; 2 uses
  %.sroa.0203.0342 = phi i32 [ 1, %.lr.ph348 ], [ %i.hr, %bb.bp ] ; 4 uses
  %i.cd = load i8, ptr %i.c, align 4, !tbaa !168, !range !169, !noundef !170
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.0203.0342, i1 true)
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = load ptr, ptr %i.bu, align 8, !tbaa !212
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cg
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = and i32 %i.cj, 117440512
  %i.cl = icmp eq i32 %i.ck, 16777216
  br i1 %i.cl, label %.preheader, label %bb.bp

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  br i1 %.not111, label %bb.bp, label %bb.bl

.preheader:                                       ; preds = %bb.y, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %.1340 = phi i64 [ %.2.lcssa, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.0347, %bb.y ] ; 2 uses
  %.169339 = phi i64 [ %.270.lcssa, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.068346, %bb.y ] ; 2 uses
  %.099338 = phi i32 [ %i.hf, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ -1, %bb.y ] ; 3 uses
  %.sroa.0206.1337 = phi ptr [ %.sroa.0206.2.lcssa, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.0206.0345, %bb.y ] ; 2 uses
  %.sroa.10.1336 = phi ptr [ %spec.select, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.10.0344, %bb.y ] ; 2 uses
  %.sroa.16.1335 = phi ptr [ %.sroa.16.2.lcssa, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.sroa.16.0343, %bb.y ] ; 2 uses
  %i.cm = mul nsw i32 %.099338, %.sroa.0203.0342  ; 3 uses
  %i.cn = tail call noundef i32 @llvm.abs.i32(i32 %i.cm, i1 true)
  %i.co = tail call noundef i32 @llvm.fshl.i32(i32 %i.cn, i32 %i.cm, i32 1)
  %i.cp = zext i32 %i.co to i64
  %i.cq = load ptr, ptr %i.bv, align 8, !tbaa !213
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.cp ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !214 ; 4 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !214 ; 4 uses
  %.not356 = icmp eq ptr %i.cu, %i.ct
  br i1 %.not356, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.2325 = phi i64 [ %.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.1340, %.preheader ] ; 7 uses
  %.270324 = phi i64 [ %.573, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.169339, %.preheader ] ; 7 uses
  %.sroa.0206.2323 = phi ptr [ %.sroa.0206.4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.0206.1337, %.preheader ] ; 11 uses
  %.sroa.10.2322 = phi ptr [ %.sroa.10.4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.10.1336, %.preheader ] ; 9 uses
  %.sroa.16.2321 = phi ptr [ %.sroa.16.4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.16.1335, %.preheader ] ; 7 uses
  %.sroa.0189.0320 = phi ptr [ %i.gv, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.cu, %.preheader ] ; 2 uses
  %.sroa.0192.0319 = phi ptr [ %.sroa.0192.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.cu, %.preheader ] ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0192.0319, i64 16 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0192.0319, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0189.0320, i64 16, i1 false), !tbaa.struct !13
  %.sroa.0184.0.copyload = load ptr, ptr %.sroa.0192.0319, align 8, !tbaa !12 ; 6 uses
  %.sroa.6.0..sroa.0183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0192.0319, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa.0183.0..sroa_idx, align 8, !tbaa !10 ; 7 uses
  %.sroa.7.0..sroa.0183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0192.0319, i64 12
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa.0183.0..sroa_idx, align 4, !tbaa !10
  %i.cw = icmp eq i32 %.sroa.7.0.copyload, 2
  br i1 %i.cw, label %bb.aa, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.aa:                                            ; preds = %.lr.ph
  %i.cx = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.6.0.copyload, i1 true)
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = load ptr, ptr %i.bw, align 8, !tbaa !215
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !216 ; 2 uses
  %i.dc = icmp slt i32 %.sroa.6.0.copyload, 0
  %i.dd = sub i8 0, %i.db
  %spec.select.i = select i1 %i.dc, i8 %i.dd, i8 %i.db ; 2 uses
  %i.de = icmp sgt i8 %spec.select.i, 0
  br i1 %i.de, label %bb.ab, label %bb.al

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0184.0.copyload, i64 8
  %i.dg = load i32, ptr %i.df, align 8            ; 2 uses
  %i.dh = and i32 %i.dg, 16
  %.not115 = icmp eq i32 %i.dh, 0
  br i1 %.not115, label %bb.ac, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ac:                                            ; preds = %bb.ab
  %i.di = and i32 %i.dg, 2048
  %.not116 = icmp eq i32 %i.di, 0
  br i1 %.not116, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load ptr, ptr %i.cr, align 8, !tbaa !214
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %bb.ad
  %.sroa.0174.0 = phi ptr [ %i.dj, %bb.ad ], [ %i.dt, %bb.ah ] ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0174.0, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !218
  %i.dm = icmp eq i32 %i.dl, 2
  br i1 %i.dm, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0174.0, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !219
  %.not117 = icmp eq i32 %i.do, %.sroa.6.0.copyload
  br i1 %.not117, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dp = load ptr, ptr %.sroa.0174.0, align 8, !tbaa !220 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = and i32 %i.dr, 16
  %.not118 = icmp eq i32 %i.ds, 0
  br i1 %.not118, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0174.0, i64 16
  br label %bb.ae, !llvm.loop !18

bb.ai:                                            ; preds = %bb.ag
  store ptr %.sroa.0184.0.copyload, ptr %.sroa.0174.0, align 8, !tbaa !12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ac, %bb.ai
  %.398 = phi ptr [ %.sroa.0184.0.copyload, %bb.ac ], [ %i.dp, %bb.ai ]
  %i.du = load <2 x i64>, ptr %i.cb, align 8, !tbaa !221
  %i.dv = add nsw <2 x i64> %i.du, splat (i64 1)
  store <2 x i64> %i.dv, ptr %i.cb, align 8, !tbaa !221
  invoke void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %.398)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.dw = add nsw i64 %.2325, 1
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.al:                                            ; preds = %bb.aa
  %i.dx = icmp slt i8 %spec.select.i, 0
  br i1 %i.dx, label %bb.am, label %bb.ba

bb.am:                                            ; preds = %bb.al
  %i.dy = load i8, ptr %i.bx, align 8, !tbaa !222, !range !169, !noundef !170
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.an, label %_ZNSt6vectorImSaImEE9push_backERKm.exit150

bb.an:                                            ; preds = %bb.am
  %i.ea = load ptr, ptr %i.bz, align 8, !tbaa !223 ; 4 uses
  %i.eb = load ptr, ptr %i.ca, align 8, !tbaa !224 ; 2 uses
  %.not.i139 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not.i139, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ec = load i64, ptr %.sroa.0184.0.copyload, align 8, !tbaa !221
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !221
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  store ptr %i.ed, ptr %i.bz, align 8, !tbaa !223
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.ap:                                            ; preds = %bb.an
  %i.ee = load ptr, ptr %i.by, align 8, !tbaa !225 ; 4 uses
  %i.ef = ptrtoint ptr %i.ea to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 5 uses
  %i.ei = icmp eq i64 %i.eh, 9223372036854775800
  br i1 %i.ei, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ap
  %i.ej = ashr exact i64 %i.eh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ej, i64 1)
  %i.ek = add nsw i64 %.sroa.speculated.i.i.i, %i.ej ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.ej
  %i.em = tail call i64 @llvm.umin.i64(i64 %i.ek, i64 1152921504606846975)
  %i.en = select i1 %i.el, i64 1152921504606846975, i64 %i.em ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.en, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.eo = shl nuw nsw i64 %i.en, 3
  %i.ep = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #10
          to label %.noexc140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc140:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %i.eh ; 2 uses
  %i.er = load i64, ptr %.sroa.0184.0.copyload, align 8, !tbaa !221
  store i64 %i.er, ptr %i.eq, align 8, !tbaa !221
  %i.es = icmp sgt i64 %i.eh, 0
  br i1 %i.es, label %bb.aq, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.aq:                                            ; preds = %.noexc140
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ep, ptr align 8 %i.ee, i64 %i.eh, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.aq, %.noexc140
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ee) #11
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.ar, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ep, ptr %i.by, align 8, !tbaa !225
  store ptr %i.et, ptr %i.bz, align 8, !tbaa !223
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.en ; 2 uses
  store ptr %i.eu, ptr %i.ca, align 8, !tbaa !224
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.ao
  %i.ev = phi ptr [ %i.eu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.eb, %bb.ao ] ; 2 uses
  %i.ew = phi ptr [ %i.et, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ed, %bb.ao ] ; 3 uses
  %i.ex = load ptr, ptr %i.cr, align 8, !tbaa !214
  %i.ey = sub nsw i32 0, %.sroa.6.0.copyload
  br label %bb.as

bb.as:                                            ; preds = %bb.az, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.sroa.0170.0 = phi ptr [ %i.ex, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.fy, %bb.az ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0170.0, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !218
  %i.fb = icmp eq i32 %i.fa, 2
  br i1 %i.fb, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0170.0, i64 8
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !219
  %.not114 = icmp eq i32 %i.fd, %i.ey
  br i1 %.not114, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.fe = load ptr, ptr %.sroa.0170.0, align 8, !tbaa !220 ; 2 uses
  %.not.i141 = icmp eq ptr %i.ew, %i.ev
  br i1 %.not.i141, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !221
  store i64 %i.ff, ptr %i.ew, align 8, !tbaa !221
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.fg, ptr %i.bz, align 8, !tbaa !223
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit150

bb.aw:                                            ; preds = %bb.au
  %i.fh = load ptr, ptr %i.by, align 8, !tbaa !225 ; 4 uses
  %i.fi = ptrtoint ptr %i.ev to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 5 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775800
  br i1 %i.fl, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i142

.invoke:                                          ; preds = %bb.bd, %bb.aw, %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i142: ; preds = %bb.aw
  %i.fm = ashr exact i64 %i.fk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i143 = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i143, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 1152921504606846975)
  %i.fq = select i1 %i.fo, i64 1152921504606846975, i64 %i.fp ; 3 uses
  %.not.i.i.i144 = icmp ne i64 %i.fq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i144)
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #10
          to label %.noexc149 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc149:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i142
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.fk ; 2 uses
  %i.fu = load i64, ptr %i.fe, align 8, !tbaa !221
  store i64 %i.fu, ptr %i.ft, align 8, !tbaa !221
  %i.fv = icmp sgt i64 %i.fk, 0
  br i1 %i.fv, label %bb.ax, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i145

bb.ax:                                            ; preds = %.noexc149
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr align 8 %i.fh, i64 %i.fk, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i145

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i145: ; preds = %bb.ax, %.noexc149
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.not.i17.i.i146 = icmp eq ptr %i.fh, null
  br i1 %.not.i17.i.i146, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i147, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i145
  tail call void @_ZdlPv(ptr noundef nonnull %i.fh) #11
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i147

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i147: ; preds = %bb.ay, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i145
  store ptr %i.fs, ptr %i.by, align 8, !tbaa !225
  store ptr %i.fw, ptr %i.bz, align 8, !tbaa !223
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.fx, ptr %i.ca, align 8, !tbaa !224
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit150

bb.az:                                            ; preds = %bb.at, %bb.as
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0170.0, i64 16
  br label %bb.as, !llvm.loop !19

_ZNSt6vectorImSaImEE9push_backERKm.exit150:       ; preds = %bb.av, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i147, %bb.am
  %i.fz = load ptr, ptr %i.cr, align 8, !tbaa !214
  %i.ga = add nsw i64 %.270324, 1
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ba:                                            ; preds = %bb.al
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0184.0.copyload, i64 8
  %i.gc = load i32, ptr %i.gb, align 8
  %i.gd = and i32 %i.gc, 16
  %.not113 = icmp eq i32 %i.gd, 0
  br i1 %.not113, label %bb.bb, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ge = tail call i8 @llvm.scmp.i8.i32(i32 %.sroa.6.0.copyload, i32 0)
  store i8 %i.ge, ptr %i.da, align 1, !tbaa !216
  %.not.i151 = icmp eq ptr %.sroa.10.2322, %.sroa.16.2321
  br i1 %.not.i151, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 %.sroa.6.0.copyload, ptr %.sroa.10.2322, align 4, !tbaa !10
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.10.2322, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.bd:                                            ; preds = %bb.bb
  %i.gg = ptrtoint ptr %.sroa.10.2322 to i64
  %i.gh = ptrtoint ptr %.sroa.0206.2323 to i64
  %i.gi = sub i64 %i.gg, %i.gh                    ; 5 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775804
  br i1 %i.gj, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bd
  %i.gk = ashr exact i64 %i.gi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i152 = tail call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i152, %i.gk ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gk
  %i.gn = tail call i64 @llvm.umin.i64(i64 %i.gl, i64 2305843009213693951)
  %i.go = select i1 %i.gm, i64 2305843009213693951, i64 %i.gn ; 3 uses
  %.not.i.i.i153 = icmp ne i64 %i.go, 0
  tail call void @llvm.assume(i1 %.not.i.i.i153)
  %i.gp = shl nuw nsw i64 %i.go, 2
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #10
          to label %.noexc156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc156:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gi ; 2 uses
  store i32 %.sroa.6.0.copyload, ptr %i.gr, align 4, !tbaa !10
  %i.gs = icmp sgt i64 %i.gi, 0
  br i1 %i.gs, label %bb.be, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.be:                                            ; preds = %.noexc156
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gq, ptr align 4 %.sroa.0206.2323, i64 %i.gi, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.be, %.noexc156
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %.not.i17.i.i154 = icmp eq ptr %.sroa.0206.2323, null
  br i1 %.not.i17.i.i154, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0206.2323) #11
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.bf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.go
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.ab, %bb.ba, %_ZNSt6vectorImSaImEE9push_backERKm.exit150, %bb.ak, %bb.bc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %.lr.ph
  %.sroa.0192.2 = phi ptr [ %i.cv, %.lr.ph ], [ %.sroa.0192.0319, %bb.ak ], [ %i.cv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.fz, %_ZNSt6vectorImSaImEE9push_backERKm.exit150 ], [ %i.cv, %bb.ba ], [ %i.cv, %bb.bc ], [ %.sroa.0192.0319, %bb.ab ] ; 2 uses
  %.sroa.16.4 = phi ptr [ %.sroa.16.2321, %.lr.ph ], [ %.sroa.16.2321, %bb.ak ], [ %i.gu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.16.2321, %_ZNSt6vectorImSaImEE9push_backERKm.exit150 ], [ %.sroa.16.2321, %bb.ba ], [ %.sroa.16.2321, %bb.bc ], [ %.sroa.16.2321, %bb.ab ] ; 2 uses
  %.sroa.10.4 = phi ptr [ %.sroa.10.2322, %.lr.ph ], [ %.sroa.10.2322, %bb.ak ], [ %i.gt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.10.2322, %_ZNSt6vectorImSaImEE9push_backERKm.exit150 ], [ %.sroa.10.2322, %bb.ba ], [ %i.gf, %bb.bc ], [ %.sroa.10.2322, %bb.ab ] ; 2 uses
  %.sroa.0206.4 = phi ptr [ %.sroa.0206.2323, %.lr.ph ], [ %.sroa.0206.2323, %bb.ak ], [ %i.gq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0206.2323, %_ZNSt6vectorImSaImEE9push_backERKm.exit150 ], [ %.sroa.0206.2323, %bb.ba ], [ %.sroa.0206.2323, %bb.bc ], [ %.sroa.0206.2323, %bb.ab ] ; 2 uses
  %.4104 = phi i32 [ 0, %.lr.ph ], [ 0, %bb.ak ], [ 0, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.cm, %_ZNSt6vectorImSaImEE9push_backERKm.exit150 ], [ 0, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.ab ] ; 2 uses
  %.573 = phi i64 [ %.270324, %.lr.ph ], [ %.270324, %bb.ak ], [ %.270324, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ga, %_ZNSt6vectorImSaImEE9push_backERKm.exit150 ], [ %.270324, %bb.ba ], [ %.270324, %bb.bc ], [ %.270324, %bb.ab ] ; 2 uses
  %.5 = phi i64 [ %.2325, %.lr.ph ], [ %i.dw, %bb.ak ], [ %.2325, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.2325, %_ZNSt6vectorImSaImEE9push_backERKm.exit150 ], [ %.2325, %bb.ba ], [ %.2325, %bb.bc ], [ %.2325, %bb.ab ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0189.0320, i64 16 ; 2 uses
  %.not112 = icmp eq i32 %.4104, 0
  %i.gw = icmp ne ptr %i.gv, %i.ct
  %or.cond = select i1 %.not112, i1 %i.gw, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !20

.critedge.loopexit:                               ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre371.a = load ptr, ptr %i.cr, align 8, !tbaa !214
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %i.gx = phi ptr [ %i.cu, %.preheader ], [ %.pre371.a, %.critedge.loopexit ] ; 5 uses
  %.sroa.0192.0.lcssa = phi ptr [ %i.ct, %.preheader ], [ %.sroa.0192.2, %.critedge.loopexit ] ; 3 uses
  %.sroa.16.2.lcssa = phi ptr [ %.sroa.16.1335, %.preheader ], [ %.sroa.16.4, %.critedge.loopexit ] ; 4 uses
  %.sroa.10.2.lcssa = phi ptr [ %.sroa.10.1336, %.preheader ], [ %.sroa.10.4, %.critedge.loopexit ] ; 3 uses
  %.sroa.0206.2.lcssa = phi ptr [ %.sroa.0206.1337, %.preheader ], [ %.sroa.0206.4, %.critedge.loopexit ] ; 8 uses
  %.1101.lcssa = phi i32 [ 0, %.preheader ], [ %.4104, %.critedge.loopexit ] ; 2 uses
  %.270.lcssa = phi i64 [ %.169339, %.preheader ], [ %.573, %.critedge.loopexit ] ; 4 uses
  %.2.lcssa = phi i64 [ %.1340, %.preheader ], [ %.5, %.critedge.loopexit ] ; 4 uses
  %i.gy = icmp eq ptr %.sroa.0192.0.lcssa, %i.gx
  br i1 %i.gy, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %.critedge
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !16
  %.not.i157 = icmp eq ptr %i.ha, %i.gx
  br i1 %.not.i157, label %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not.i.i.i.i = icmp eq ptr %i.gx, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @_ZdlPv(ptr noundef nonnull %i.gx) #11
  br label %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit

bb.bj:                                            ; preds = %.critedge
  %.not226 = icmp eq ptr %.sroa.0192.0.lcssa, %i.ct
  br i1 %.not226, label %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hb = ptrtoint ptr %.sroa.0192.0.lcssa to i64
  %i.hc = ptrtoint ptr %i.gx to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = ashr exact i64 %i.hd, 4
  invoke void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 noundef %i.he)
          to label %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit.split-lp:    ; preds = %bb.bk, %bb.bl, %bb.bm, %bb.bo
  %lpad.loopexit.split-lp422 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i142, %bb.aj, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit: ; preds = %bb.bk, %bb.bi, %bb.bh, %bb.bg, %bb.bj
  %.not227332 = icmp eq ptr %.sroa.0206.2.lcssa, %.sroa.10.2.lcssa
  br i1 %.not227332, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph334

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %.lr.ph334, %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit
  %spec.select = phi ptr [ %.sroa.10.2.lcssa, %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit ], [ %.sroa.0206.2.lcssa, %.lr.ph334 ] ; 4 uses
  %i.hf = add nsw i32 %.099338, 2
  %.not111 = icmp eq i32 %.1101.lcssa, 0          ; 2 uses
  %i.hg = icmp slt i32 %.099338, 0
  %i.hh = and i1 %.not111, %i.hg
  br i1 %i.hh, label %.preheader, label %bb.z, !llvm.loop !21

.lr.ph334:                                        ; preds = %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit, %.lr.ph334
  %.sroa.0165.0333 = phi ptr [ %i.hn, %.lr.ph334 ], [ %.sroa.0206.2.lcssa, %_ZN7CaDiCaL12erase_vectorINS_5WatchEEEvRSt6vectorIT_SaIS3_EE.exit ] ; 2 uses
  %i.hi = load i32, ptr %.sroa.0165.0333, align 4, !tbaa !10
  %i.hj = tail call noundef i32 @llvm.abs.i32(i32 %i.hi, i1 true)
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = load ptr, ptr %i.bw, align 8, !tbaa !215
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hk
  store i8 0, ptr %i.hm, align 1, !tbaa !216
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0165.0333, i64 4 ; 2 uses
  %.not227 = icmp eq ptr %i.hn, %.sroa.10.2.lcssa
  br i1 %.not227, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph334

bb.bl:                                            ; preds = %bb.z
  %i.ho = load <2 x i64>, ptr %i.cc, align 8, !tbaa !221
  %i.hp = add nsw <2 x i64> %i.ho, splat (i64 1)
  store <2 x i64> %i.hp, ptr %i.cc, align 8, !tbaa !221
  invoke void @_ZN7CaDiCaL8Internal11assign_unitEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.1101.lcssa)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

bb.bm:                                            ; preds = %bb.bl
  %i.hq = invoke noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.hq, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

bb.bp:                                            ; preds = %bb.y, %bb.bn, %bb.bo, %bb.z
  %.sroa.16.5.ph = phi ptr [ %.sroa.16.0343, %bb.y ], [ %.sroa.16.2.lcssa, %bb.bo ], [ %.sroa.16.2.lcssa, %bb.bn ], [ %.sroa.16.2.lcssa, %bb.z ]
  %.sroa.10.5.ph = phi ptr [ %.sroa.10.0344, %bb.y ], [ %spec.select, %bb.bo ], [ %spec.select, %bb.bn ], [ %spec.select, %bb.z ]
  %.sroa.0206.5.ph = phi ptr [ %.sroa.0206.0345, %bb.y ], [ %.sroa.0206.2.lcssa, %bb.bo ], [ %.sroa.0206.2.lcssa, %bb.bn ], [ %.sroa.0206.2.lcssa, %bb.z ] ; 2 uses
  %.674.ph = phi i64 [ %.068346, %bb.y ], [ %.270.lcssa, %bb.bo ], [ %.270.lcssa, %bb.bn ], [ %.270.lcssa, %bb.z ] ; 2 uses
  %.6.ph = phi i64 [ %.0347, %bb.y ], [ %.2.lcssa, %bb.bo ], [ %.2.lcssa, %bb.bn ], [ %.2.lcssa, %bb.z ] ; 2 uses
  %i.hr = add i32 %.sroa.0203.0342, 1
  %.not225 = icmp eq i32 %.sroa.0203.0342, %i.bt
  br i1 %.not225, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.bp, %bb.x, %bb.w
  %.sroa.0206.0.lcssa = phi ptr [ null, %bb.w ], [ %.sroa.0206.0345, %bb.x ], [ %.sroa.0206.5.ph, %bb.bp ] ; 3 uses
  %.068.lcssa = phi i64 [ 0, %bb.w ], [ %.068346, %bb.x ], [ %.674.ph, %bb.bp ]
  %.0.lcssa = phi i64 [ 0, %bb.w ], [ %.0347, %bb.x ], [ %.6.ph, %bb.bp ]
  %i.hs = load i32, ptr %i.z, align 4, !tbaa !197
  %.not.i158 = icmp eq i32 %i.hs, 0
  br i1 %.not.i158, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge
  %i.ht = invoke noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %_ZN7CaDiCaL8Internal4timeEv.exit161 unwind label %bb.bt

bb.br:                                            ; preds = %._crit_edge
  %i.hu = invoke noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %_ZN7CaDiCaL8Internal4timeEv.exit161 unwind label %bb.bt

_ZN7CaDiCaL8Internal4timeEv.exit161:              ; preds = %bb.bq, %bb.br
  %i.hv = phi double [ %i.ht, %bb.bq ], [ %i.hu, %bb.br ] ; 5 uses
  %i.hw = load ptr, ptr %i.ae, align 8, !tbaa !198 ; 5 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 3608
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !199 ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 6520
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !208
  %.not127 = icmp sgt i32 %i.ia, %i.hy
  br i1 %.not127, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit161
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 6488
  invoke void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.hw, ptr noundef nonnull align 8 dereferenceable(36) %i.ib, double noundef %i.hv)
          to label %._crit_edge372 unwind label %bb.bt

._crit_edge372:                                   ; preds = %bb.bs
  %.pre373.a = load ptr, ptr %i.ae, align 8, !tbaa !198
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br, %bb.bq, %bb.cf, %bb.ce, %bb.cc, %bb.bz, %bb.bv, %bb.bs
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bu:                                            ; preds = %._crit_edge372, %_ZN7CaDiCaL8Internal4timeEv.exit161
  %i.id = phi ptr [ %.pre373.a, %._crit_edge372 ], [ %i.hw, %_ZN7CaDiCaL8Internal4timeEv.exit161 ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 6880
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !207
  %.not128 = icmp sgt i32 %i.if, %i.hy
  br i1 %.not128, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 6848
  invoke void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.id, ptr noundef nonnull align 8 dereferenceable(36) %i.ig, double noundef %i.hv)
          to label %bb.bw unwind label %bb.bt

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ih = load i32, ptr %0, align 8, !tbaa !206
  %i.ii = and i32 %i.ih, -529
  store i32 %i.ii, ptr %0, align 8, !tbaa !206
  %i.ij = load i8, ptr %i.ai, align 8, !tbaa !200, !range !169, !noundef !170
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.cf, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
end_hunk_0

inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@_Z13contextModel2v:bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ13contextModel2vE2cm) #38
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @level, align 4, !tbaa !4
  %i.e = shl i32 2097152, %i.d
  invoke void @_ZN10ContextMapC2Eii(ptr noundef nonnull align 8 dereferenceable(140) @_ZZ13contextModel2vE2cm, i32 noundef %i.e, i32 noundef 9)
          to label %bb.d unwind label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN10ContextMapD2Ev, ptr nonnull @_ZZ13contextModel2vE2cm, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ13contextModel2vE2cm) #38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = load atomic i8, ptr @_ZGVZ13contextModel2vE4rcm7 acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.i, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ13contextModel2vE4rcm7) #38
  %.not62 = icmp eq i32 %i.i, 0
  br i1 %.not62, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr @level, align 4, !tbaa !4
  %i.k = shl i32 65536, %i.j
  invoke void @_ZN13RunContextMapC2Ei(ptr noundef nonnull align 8 dereferenceable(40) @_ZZ13contextModel2vE4rcm7, i32 noundef %i.k)
          to label %bb.h unwind label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN13RunContextMapD2Ev, ptr nonnull @_ZZ13contextModel2vE4rcm7, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ13contextModel2vE4rcm7) #38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.m = load atomic i8, ptr @_ZGVZ13contextModel2vE4rcm9 acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.m, !prof !119

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ13contextModel2vE4rcm9) #38
  %.not63 = icmp eq i32 %i.o, 0
  br i1 %.not63, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load i32, ptr @level, align 4, !tbaa !4
  %i.q = shl i32 65536, %i.p
  invoke void @_ZN13RunContextMapC2Ei(ptr noundef nonnull align 8 dereferenceable(40) @_ZZ13contextModel2vE4rcm9, i32 noundef %i.q)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.r = tail call i32 @__cxa_atexit(ptr nonnull @_ZN13RunContextMapD2Ev, ptr nonnull @_ZZ13contextModel2vE4rcm9, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ13contextModel2vE4rcm9) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i
  %i.s = load atomic i8, ptr @_ZGVZ13contextModel2vE5rcm10 acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.q, !prof !119

bb.n:                                             ; preds = %bb.m
  %i.u = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ13contextModel2vE5rcm10) #38
  %.not64 = icmp eq i32 %i.u, 0
  br i1 %.not64, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr @level, align 4, !tbaa !4
  %i.w = shl i32 65536, %i.v
  invoke void @_ZN13RunContextMapC2Ei(ptr noundef nonnull align 8 dereferenceable(40) @_ZZ13contextModel2vE5rcm10, i32 noundef %i.w)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN13RunContextMapD2Ev, ptr nonnull @_ZZ13contextModel2vE5rcm10, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ13contextModel2vE5rcm10) #38
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.m
  %i.y = load atomic i8, ptr @_ZGVZ13contextModel2vE1m acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.r, label %bb.u, !prof !119

bb.r:                                             ; preds = %bb.q
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ13contextModel2vE1m) #38
  %.not65 = icmp eq i32 %i.aa, 0
  br i1 %.not65, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5MixerC2Eiiii(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m, i32 noundef 800, i32 noundef 3088, i32 noundef 7, i32 noundef 128)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5MixerD2Ev, ptr nonnull @_ZZ13contextModel2vE1m, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ13contextModel2vE1m) #38
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.ac = load i32, ptr @bpos, align 4, !tbaa !4
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.ae = load i32, ptr @_ZZ13contextModel2vE4size, align 4, !tbaa !4 ; 2 uses
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr @_ZZ13contextModel2vE4size, align 4, !tbaa !4
  %i.ag = icmp eq i32 %i.ae, 0
  br i1 %i.ag, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.v
  %i.ah = load i32, ptr @pos, align 4, !tbaa !4
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = load i32, ptr @buf, align 8, !tbaa !22
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = and i32 %i.ak, %i.ai
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  %i.aq = zext i8 %i.ap to i32
  store i32 %i.aq, ptr @_ZZ13contextModel2vE8filetype, align 4, !tbaa !226
  br label %bb.ae

bb.w:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.x:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.y:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.z:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.aa:                                            ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ab:                                            ; preds = %bb.v
  %i.aw = icmp eq i32 %i.af, -5
  br i1 %i.aw, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ax = load i32, ptr @pos, align 4, !tbaa !4   ; 4 uses
  %i.ay = add nsw i32 %i.ax, -4
  %i.az = load i32, ptr @buf, align 8, !tbaa !22
  %i.ba = add nsw i32 %i.az, -1                   ; 4 uses
  %i.bb = and i32 %i.ba, %i.ay
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24 ; 4 uses
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !11
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw i32 %i.bg, 24
  %i.bi = add nsw i32 %i.ax, -3
  %i.bj = and i32 %i.ba, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %i.bc, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 16
  %i.bp = or disjoint i32 %i.bo, %i.bh
  %i.bq = add nsw i32 %i.ax, -2
  %i.br = and i32 %i.ba, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bc, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = or disjoint i32 %i.bp, %i.bw
  %i.by = add nsw i32 %i.ax, -1
  %i.bz = and i32 %i.ba, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %i.bc, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = zext i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.bx, %i.cd            ; 2 uses
  store i32 %i.ce, ptr @_ZZ13contextModel2vE4size, align 4, !tbaa !4
  %i.cf = load i32, ptr @_ZZ13contextModel2vE8filetype, align 4, !tbaa !226
  %i.cg = icmp eq i32 %i.cf, 8
  br i1 %i.cg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ch = add nsw i32 %i.ce, 8
  store i32 %i.ch, ptr @_ZZ13contextModel2vE4size, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %.thread, %bb.ab, %bb.ad, %bb.ac, %bb.u
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  %.pre93 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 32), align 8 ; 6 uses
  br i1 %i.cj, label %.lr.ph.i, label %_ZN5Mixer6updateEv.exit

.lr.ph.i:                                         ; preds = %bb.ae
  %i.ck = load i32, ptr @y, align 4, !tbaa !4
  %i.cl = shl i32 %i.ck, 12                       ; 2 uses
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 120), align 8, !tbaa !66
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 80), align 8
  %i.co = load i32, ptr @_ZZ13contextModel2vE1m, align 8
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 56), align 8 ; 2 uses
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 96), align 8
  %.fr8.i = freeze i32 %i.cq                      ; 2 uses
  %i.cr = icmp sgt i32 %.fr8.i, 0
  %i.cs = add i32 %.fr8.i, 7                      ; 2 uses
  %i.ct = and i32 %i.cs, -8
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 4 uses
  br i1 %i.cr, label %.lr.ph.split.us.preheader.i, label %_ZN5Mixer6updateEv.exit

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.ci to i64
  %i.cu = shl nuw nsw i64 %wide.trip.count.i.i, 1 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cp, i64 %i.cu
  %scevgep121 = getelementptr i8, ptr %.pre93, i64 %i.cu
  %min.iters.check = icmp slt i32 %i.cs, 8
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_Z5trainPsS_ii.exit.us.i, %.lr.ph.split.us.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next.i, %_Z5trainPsS_ii.exit.us.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4  ; 2 uses
  %.not.us.i = icmp eq i32 %i.cl, %i.cw
  br i1 %.not.us.i, label %_Z5trainPsS_ii.exit.us.i, label %.lr.ph.preheader.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %.lr.ph.split.us.i
  %i.cx = sub nsw i32 %i.cl, %i.cw
  %i.cy = mul nsw i32 %i.cx, 7                    ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = mul nsw i32 %i.da, %i.co
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.dc ; 3 uses
  br i1 %min.iters.check, label %.lr.ph.i.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.us.i
  %i.de = shl nsw i64 %i.dc, 1
  %scevgep120 = getelementptr i8, ptr %scevgep, i64 %i.de
  %bound0 = icmp ult ptr %i.dd, %scevgep121
  %bound1 = icmp ult ptr %.pre93, %scevgep120
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.cy, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.df, align 2, !tbaa !33, !alias.scope !228, !noalias !231
  %i.dg = sext <8 x i16> %wide.load to <8 x i32>
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.pre93, i64 %index
  %wide.load122 = load <8 x i16>, ptr %i.dh, align 2, !tbaa !33, !alias.scope !231
  %i.di = sext <8 x i16> %wide.load122 to <8 x i32>
  %i.dj = mul nsw <8 x i32> %broadcast.splat, %i.di
  %i.dk = ashr <8 x i32> %i.dj, splat (i32 15)
  %i.dl = add nsw <8 x i32> %i.dk, splat (i32 1)
  %i.dm = ashr <8 x i32> %i.dl, splat (i32 1)
  %i.dn = add nsw <8 x i32> %i.dm, %i.dg
  %i.do = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dn, <8 x i32> splat (i32 -32768))
  %i.dp = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.do, <8 x i32> splat (i32 32767))
  %i.dq = trunc nsw <8 x i32> %i.dp to <8 x i16>
  store <8 x i16> %i.dq, ptr %i.df, align 2, !tbaa !33, !alias.scope !228, !noalias !231
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_Z5trainPsS_ii.exit.us.i, label %.lr.ph.i.us.i.preheader

.lr.ph.i.us.i.preheader:                          ; preds = %vector.memcheck, %.lr.ph.preheader.i.us.i, %middle.block
  %indvars.iv.i.us.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.us.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.us.i.preheader, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %.lr.ph.i.us.i ], [ %indvars.iv.i.us.i.ph, %.lr.ph.i.us.i.preheader ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %indvars.iv.i.us.i ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !33
  %i.du = sext i16 %i.dt to i32
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %.pre93, i64 %indvars.iv.i.us.i
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !33
  %i.dx = sext i16 %i.dw to i32
  %i.dy = mul nsw i32 %i.cy, %i.dx
  %i.dz = ashr i32 %i.dy, 15
  %i.ea = add nsw i32 %i.dz, 1
  %i.eb = ashr i32 %i.ea, 1
  %i.ec = add nsw i32 %i.eb, %i.du
  %spec.store.select.i.us.i = tail call i32 @llvm.smax.i32(i32 %i.ec, i32 -32768)
  %spec.store.select1.i.us.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i.us.i, i32 32767)
  %i.ed = trunc nsw i32 %spec.store.select1.i.us.i to i16
  store i16 %i.ed, ptr %i.ds, align 2, !tbaa !33
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_Z5trainPsS_ii.exit.us.i, label %.lr.ph.i.us.i, !llvm.loop !234

_Z5trainPsS_ii.exit.us.i:                         ; preds = %.lr.ph.i.us.i, %middle.block, %.lr.ph.split.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5Mixer6updateEv.exit.loopexit, label %.lr.ph.split.us.i, !llvm.loop !173

_ZN5Mixer6updateEv.exit.loopexit:                 ; preds = %_Z5trainPsS_ii.exit.us.i
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 32), align 8, !tbaa !64
  br label %_ZN5Mixer6updateEv.exit

_ZN5Mixer6updateEv.exit:                          ; preds = %_ZN5Mixer6updateEv.exit.loopexit, %bb.ae, %.lr.ph.i
  %0 = phi ptr [ %.pre, %_ZN5Mixer6updateEv.exit.loopexit ], [ %.pre93, %bb.ae ], [ %.pre93, %.lr.ph.i ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 96), align 8, !tbaa !69
  store i16 256, ptr %0, align 2, !tbaa !33
  %i.ee = tail call noundef i32 @_Z10matchModelR5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m)
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
  %i.eg = and i32 %i.ee, 65535
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !11
  %i.ek = zext i8 %i.ej to i32                    ; 2 uses
  %i.el = tail call noundef i32 @_Z8wavModelR5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m) ; 3 uses
  %i.em = load i32, ptr @_ZZ13contextModel2vE8filetype, align 4, !tbaa !226 ; 2 uses
  %i.en = icmp eq i32 %i.em, 1
  br i1 %i.en, label %bb.af, label %.thread83

bb.af:                                            ; preds = %_ZN5Mixer6updateEv.exit
  %i.eo = tail call noundef i32 @_Z9jpegModelR5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m) ; 2 uses
  %.not67 = icmp eq i32 %i.eo, 0
  br i1 %.not67, label %..thread83_crit_edge, label %bb.ag

..thread83_crit_edge:                             ; preds = %bb.af
  %.pre94 = load i32, ptr @_ZZ13contextModel2vE8filetype, align 4, !tbaa !226
  br label %.thread83

bb.ag:                                            ; preds = %bb.af
  %i.ep = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.eq = add nsw i32 %i.ep, 1
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 80), align 8, !tbaa !66 ; 3 uses
  %i.eu = sext i32 %i.er to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.eu
  store i32 %i.eq, ptr %i.ev, align 4, !tbaa !4
  %i.ew = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.ex = add nsw i32 %i.ew, 8                    ; 2 uses
  store i32 %i.ex, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.ey = add nsw i32 %i.eo, -1
  %i.ez = add nsw i32 %i.ey, %i.ex
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.fb = add nsw i32 %i.fa, 1
  store i32 %i.fb, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.fc = sext i32 %i.fa to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.fc
  store i32 %i.ez, ptr %i.fd, align 4, !tbaa !4
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.ff = add nsw i32 %i.fe, 257                  ; 2 uses
  store i32 %i.ff, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.fg = load i32, ptr @pos, align 4, !tbaa !4
  %i.fh = add nsw i32 %i.fg, -1
  %i.fi = load i32, ptr @buf, align 8, !tbaa !22
  %i.fj = add nsw i32 %i.fi, -1
  %i.fk = and i32 %i.fj, %i.fh
  %i.fl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24
  %i.fm = sext i32 %i.fk to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !11
  %i.fp = zext i8 %i.fo to i32
  %i.fq = add nsw i32 %i.ff, %i.fp
  br label %.sink.split

.thread83:                                        ; preds = %..thread83_crit_edge, %_ZN5Mixer6updateEv.exit
  %i.fr = phi i32 [ %.pre94, %..thread83_crit_edge ], [ %i.em, %_ZN5Mixer6updateEv.exit ] ; 2 uses
  %i.fs = and i32 %i.fr, -2
  %or.cond = icmp eq i32 %i.fs, 4
  br i1 %or.cond, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %.thread83
  %i.ft = tail call noundef i32 @_Z8bmpModelR5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m) ; 2 uses
  %i.fu = icmp slt i32 %i.ft, 1
  br i1 %i.fu, label %.thread85, label %bb.ai

.thread85:                                        ; preds = %bb.ah
  %.pr = load i32, ptr @_ZZ13contextModel2vE8filetype, align 4, !tbaa !226
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fv = load i32, ptr @_ZZ13contextModel2vE3col, align 4, !tbaa !4 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  %i.fx = icmp sgt i32 %i.fv, 22
  %spec.store.select = select i1 %i.fx, i32 0, i32 %i.fw ; 2 uses
  store i32 %spec.store.select, ptr @_ZZ13contextModel2vE3col, align 4
  %i.fy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.fz = add nsw i32 %i.fy, 2
  %i.ga = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.gb = add nsw i32 %i.ga, 1
  store i32 %i.gb, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 80), align 8, !tbaa !66 ; 4 uses
  %i.gd = sext i32 %i.ga to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gd
  store i32 %i.fz, ptr %i.ge, align 4, !tbaa !4
  %i.gf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.gg = add nsw i32 %i.gf, 8                    ; 2 uses
  store i32 %i.gg, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.gh = add nsw i32 %i.gg, %spec.store.select
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.gj = add nsw i32 %i.gi, 1
  store i32 %i.gj, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.gk = sext i32 %i.gi to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gk
  store i32 %i.gh, ptr %i.gl, align 4, !tbaa !4
  %i.gm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.gn = add nsw i32 %i.gm, 24                   ; 2 uses
  store i32 %i.gn, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.go = load i32, ptr @pos, align 4, !tbaa !4   ; 2 uses
  %i.gp = sub nsw i32 %i.go, %i.ft
  %i.gq = load i32, ptr @buf, align 8, !tbaa !22
  %i.gr = add nsw i32 %i.gq, -1                   ; 2 uses
  %i.gs = and i32 %i.gr, %i.gp
  %i.gt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24 ; 2 uses
  %i.gu = sext i32 %i.gs to i64
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !11
  %i.gx = zext i8 %i.gw to i32
  %i.gy = add nsw i32 %i.go, -3
  %i.gz = and i32 %i.gr, %i.gy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds i8, ptr %i.gt, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !11
  %i.hd = zext i8 %i.hc to i32
  %i.he = add nuw nsw i32 %i.hd, %i.gx
  %i.hf = lshr i32 %i.he, 4
  %i.hg = add nsw i32 %i.hf, %i.gn
  %i.hh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.hi = add nsw i32 %i.hh, 1
  store i32 %i.hi, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.hj = sext i32 %i.hh to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.hj
  store i32 %i.hg, ptr %i.hk, align 4, !tbaa !4
  %i.hl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.hm = add nsw i32 %i.hl, 32                   ; 2 uses
  store i32 %i.hm, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.hn = load i32, ptr @c0, align 4, !tbaa !4
  %i.ho = add nsw i32 %i.hn, %i.hm
  br label %.sink.split

bb.aj:                                            ; preds = %.thread85, %.thread83
  %i.hp = phi i32 [ %.pr, %.thread85 ], [ %i.fr, %.thread83 ] ; 2 uses
  %i.hq = icmp eq i32 %i.hp, 6
  br i1 %i.hq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hr = tail call noundef i32 @_Z8pgmModelR5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m)
  %.not68 = icmp eq i32 %i.hr, 0
  br i1 %.not68, label %._crit_edge, label %bb.bq

._crit_edge:                                      ; preds = %bb.ak
  %.pre95 = load i32, ptr @_ZZ13contextModel2vE8filetype, align 4, !tbaa !226
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge, %bb.aj
  %i.hs = phi i32 [ %.pre95, %._crit_edge ], [ %i.hp, %bb.aj ] ; 2 uses
  %i.ht = icmp eq i32 %i.hs, 3
  br i1 %i.ht, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hu = tail call noundef i32 @_Z9bmpModel8R5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m)
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %bb.bq, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.am
  %.pr87 = load i32, ptr @_ZZ13contextModel2vE8filetype, align 4, !tbaa !226
  br label %bb.an

bb.an:                                            ; preds = %thread-pre-split, %bb.al
  %i.hw = phi i32 [ %.pr87, %thread-pre-split ], [ %i.hs, %bb.al ]
  %i.hx = icmp eq i32 %i.hw, 7
  br i1 %i.hx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hy = tail call noundef i32 @_Z9rgbModel8R5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m)
  %.not69 = icmp eq i32 %i.hy, 0
  br i1 %.not69, label %bb.ap, label %bb.bq

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hz = icmp sgt i32 %i.el, 0
  br i1 %i.hz, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ia = and i32 %i.el, 255                      ; 3 uses
  %i.ib = lshr i32 %i.el, 8
  %i.ic = mul nuw nsw i32 %i.ib, %i.ia            ; 3 uses
  %i.id = load i32, ptr @_ZZ13contextModel2vE3col_0, align 4, !tbaa !4
  %i.ie = add nsw i32 %i.id, 1                    ; 2 uses
  %.not71 = icmp slt i32 %i.ie, %i.ic
  %spec.store.select3 = select i1 %.not71, i32 %i.ie, i32 0 ; 3 uses
  store i32 %spec.store.select3, ptr @_ZZ13contextModel2vE3col_0, align 4
  %.not72 = icmp eq i32 %i.ic, %i.ia
  %.pre97 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68 ; 2 uses
  br i1 %.not72, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.if = add nsw i32 %.pre97, %spec.store.select3
  %i.ig = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.ii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 80), align 8, !tbaa !66
  %i.ij = sext i32 %i.ig to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.ij
  store i32 %i.if, ptr %i.ik, align 4, !tbaa !4
  %i.il = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.im = add nsw i32 %i.il, %i.ic                ; 2 uses
  store i32 %i.im, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
end_hunk_0

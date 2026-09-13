Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/IsoGainMapMetadata?download=true
inline.NumInlined: 4289
inline.NumDeleted: 1160
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN3tev18IsoGainMapMetadataC2ENSt3__14spanIKhLm18446744073709551615EEE:bb.a
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt16invalid_argument, i64 16), ptr %i.ad, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #31
          to label %bb.cq unwind label %bb.o

bb.m:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

bb.n:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.l
  %.0102 = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ak = load i8, ptr %5, align 8
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !73
  %i.ao = load i64, ptr %5, align 8
  %i.ap = and i64 %i.ao, -2
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ap) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0102, label %bb.p, label %bb.co

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %.0102, label %bb.p, label %bb.co

bb.p:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn303 = phi { ptr, i32 } [ %i.ai, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.aj, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.aj, %.split ]
  call void @__cxa_free_exception(ptr %i.ad) #30
  br label %bb.co

bb.q:                                             ; preds = %bb.i
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc116 unwind label %bb.ab

.noexc116:                                        ; preds = %bb.q
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !86
  invoke void @_ZN4tlog6Logger3logIJRKhEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, i32 noundef 4, ptr nonnull @.str.12, i64 36, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN4tlog5debugIJRKhEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit unwind label %bb.ab

_ZN4tlog5debugIJRKhEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit: ; preds = %.noexc116
  %.lobit = and i8 %i.z, 1
  store i8 %.lobit, ptr %i.l, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.as = lshr i8 %.0.copyload.i.i, 2
  %.lobit107 = and i8 %i.as, 1
  store i8 %.lobit107, ptr %i.c, align 1, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.at = lshr i8 %.0.copyload.i.i, 3
  %.lobit108 = and i8 %i.at, 1
  store i8 %.lobit108, ptr %i.d, align 1, !tbaa !75
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc118 unwind label %bb.ac

.noexc118:                                        ; preds = %_ZN4tlog5debugIJRKhEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !86
  invoke void @_ZN4tlog6Logger3logIJRbRKbS4_EEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i32 noundef 4, ptr nonnull @.str.13, i64 91, ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %_ZN4tlog5debugIJRbRKbS3_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit unwind label %bb.ac

_ZN4tlog5debugIJRbRKbS3_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit: ; preds = %.noexc118
  %i.aw = load i8, ptr %i.d, align 1, !tbaa !75, !range !109, !noundef !110
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = add i64 %i.t, 5                         ; 3 uses
  %i.az = icmp ult i64 %.sroa.27.0, %i.ay         ; 2 uses
  br i1 %i.ax, label %bb.r, label %bb.au

bb.r:                                             ; preds = %_ZN4tlog5debugIJRbRKbS3_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit
  br i1 %i.az, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ba = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull @.str.94)
          to label %.invoke466 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ba) #30
  br label %.body160

bb.u:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.u
  %.0.copyload.i.i120 = load i32, ptr %i.bc, align 1
  %i.bd = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i120)
  %i.be = uitofp i32 %i.bd to double              ; 8 uses
  %i.bf = add i64 %i.t, 9                         ; 2 uses
  %i.bg = icmp ult i64 %.sroa.27.0, %i.bf
  br i1 %i.bg, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bh = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull @.str.94)
          to label %.invoke466 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bh) #30
  br label %.body160

bb.x:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.ay
  %.0.copyload.i.i124 = load i32, ptr %i.bj, align 1
  %i.bk = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i124)
  %i.bl = uitofp i32 %i.bk to double
  %i.bm = fdiv double %i.bl, %i.be
  %i.bn = fptrunc double %i.bm to float
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 84
  store float %i.bn, ptr %i.bo, align 4, !tbaa !313
  %i.bp = add i64 %i.t, 13                        ; 7 uses
  %i.bq = icmp ult i64 %.sroa.27.0, %i.bp
  br i1 %i.bq, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.br = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull @.str.94)
          to label %.invoke466 unwind label %bb.z

.invoke466:                                       ; preds = %bb.y, %bb.v, %bb.s
  %.sink472 = phi ptr [ %i.bh, %bb.v ], [ %i.ba, %bb.s ], [ %i.br, %bb.y ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt16invalid_argument, i64 16), ptr %.sink472, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %.sink472, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #31
          to label %.cont467 unwind label %bb.ad

.cont467:                                         ; preds = %.invoke466
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.br) #30
  br label %.body160

bb.aa:                                            ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.bf
  %.0.copyload.i.i129 = load i32, ptr %i.bt, align 1
  %i.bu = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i129)
  %i.bv = uitofp i32 %i.bu to double
  %i.bw = fdiv double %i.bv, %i.be
  %i.bx = fptrunc double %i.bw to float
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.bx, ptr %i.by, align 8, !tbaa !111
  %i.bz = load i8, ptr %i.b, align 1, !tbaa !73   ; 3 uses
  %.not328 = icmp eq i8 %i.bz, 0
  br i1 %.not328, label %.lr.ph327.preheader, label %.lr.ph324.preheader

.lr.ph324.preheader:                              ; preds = %bb.aa
  %wide.trip.count435 = zext i8 %i.bz to i64      ; 4 uses
  %i.ca = zext i64 %.sroa.27.0 to i128
  %i.cb = add nuw nsw i128 %i.ca, 1               ; 5 uses
  %i.cc = add i64 %i.t, 33
  %i.cd = zext i64 %i.cc to i128                  ; 2 uses
  %i.ce = call i128 @llvm.umax.i128(i128 %i.cb, i128 %i.cd)
  %i.cf = add nuw nsw i128 %i.ce, 19
  %i.cg = sub nsw i128 %i.cf, %i.cd
  %i.ch = udiv i128 %i.cg, 20
  %i.ci = add i64 %i.t, 29
  %i.cj = zext i64 %i.ci to i128                  ; 2 uses
  %i.ck = call i128 @llvm.umax.i128(i128 %i.cb, i128 %i.cj)
  %i.cl = add nuw nsw i128 %i.ck, 19
  %i.cm = sub nsw i128 %i.cl, %i.cj
  %i.cn = udiv i128 %i.cm, 20
  %i.co = add i64 %i.t, 25
  %i.cp = zext i64 %i.co to i128                  ; 2 uses
  %i.cq = call i128 @llvm.umax.i128(i128 %i.cb, i128 %i.cp)
  %i.cr = add nuw nsw i128 %i.cq, 19
  %i.cs = sub nsw i128 %i.cr, %i.cp
  %i.ct = udiv i128 %i.cs, 20
  %i.cu = add i64 %i.t, 21
  %i.cv = zext i64 %i.cu to i128                  ; 2 uses
  %i.cw = call i128 @llvm.umax.i128(i128 %i.cb, i128 %i.cv)
  %i.cx = add nuw nsw i128 %i.cw, 19
  %i.cy = sub nsw i128 %i.cx, %i.cv
  %i.cz = udiv i128 %i.cy, 20
  %i.da = add i64 %i.t, 17
  %i.db = zext i64 %i.da to i128                  ; 2 uses
  %i.dc = call i128 @llvm.umax.i128(i128 %i.cb, i128 %i.db)
  %i.dd = add nuw nsw i128 %i.dc, 19
  %i.de = sub nsw i128 %i.dd, %i.db
  %i.df = udiv i128 %i.de, 20
  %i.dg = add nsw i64 %wide.trip.count435, -1
  %i.dh = zext nneg i64 %i.dg to i128
  %i.di = call i128 @llvm.umin.i128(i128 %i.ch, i128 %i.cn)
  %i.dj = call i128 @llvm.umin.i128(i128 %i.di, i128 %i.ct)
  %i.dk = call i128 @llvm.umin.i128(i128 %i.dj, i128 %i.cz)
  %i.dl = call i128 @llvm.umin.i128(i128 %i.dk, i128 %i.df)
  %i.dm = call i128 @llvm.umin.i128(i128 %i.dl, i128 %i.dh)
  %i.dn = trunc nuw nsw i128 %i.dm to i64         ; 2 uses
  %min.iters.check549 = icmp samesign ult i64 %i.dn, 18
  br i1 %min.iters.check549, label %.lr.ph324.preheader569, label %vector.scevcheck517

.lr.ph324.preheader569:                           ; preds = %vector.body552, %vector.memcheck531, %vector.scevcheck517, %.lr.ph324.preheader
  %indvars.iv432.ph = phi i64 [ 0, %vector.memcheck531 ], [ 0, %vector.scevcheck517 ], [ 0, %.lr.ph324.preheader ], [ %n.vec551, %vector.body552 ]
  %.ph = phi i64 [ %i.bp, %vector.memcheck531 ], [ %i.bp, %vector.scevcheck517 ], [ %i.bp, %.lr.ph324.preheader ], [ %i.gr, %vector.body552 ]
  br label %.lr.ph324

vector.scevcheck517:                              ; preds = %.lr.ph324.preheader
  %i.do = zext i64 %.sroa.27.0 to i128
  %i.dp = add nuw nsw i128 %i.do, 1               ; 5 uses
  %i.dq = add i64 %i.t, 33
  %i.dr = zext i64 %i.dq to i128                  ; 2 uses
  %umax518 = call i128 @llvm.umax.i128(i128 %i.dp, i128 %i.dr)
  %i.ds = add nuw nsw i128 %umax518, 19
  %i.dt = sub nsw i128 %i.ds, %i.dr
  %i.du = udiv i128 %i.dt, 20
  %i.dv = add i64 %i.t, 29
  %i.dw = zext i64 %i.dv to i128                  ; 2 uses
  %umax519 = call i128 @llvm.umax.i128(i128 %i.dp, i128 %i.dw)
  %i.dx = add nuw nsw i128 %umax519, 19
  %i.dy = sub nsw i128 %i.dx, %i.dw
  %i.dz = udiv i128 %i.dy, 20
  %umin520 = call i128 @llvm.umin.i128(i128 %i.du, i128 %i.dz)
  %i.ea = add i64 %i.t, 25
  %i.eb = zext i64 %i.ea to i128                  ; 2 uses
  %umax521 = call i128 @llvm.umax.i128(i128 %i.dp, i128 %i.eb)
  %i.ec = add nuw nsw i128 %umax521, 19
  %i.ed = sub nsw i128 %i.ec, %i.eb
  %i.ee = udiv i128 %i.ed, 20
  %umin522 = call i128 @llvm.umin.i128(i128 %umin520, i128 %i.ee)
  %i.ef = add i64 %i.t, 21
  %i.eg = zext i64 %i.ef to i128                  ; 2 uses
  %umax523 = call i128 @llvm.umax.i128(i128 %i.dp, i128 %i.eg)
  %i.eh = add nuw nsw i128 %umax523, 19
  %i.ei = sub nsw i128 %i.eh, %i.eg
  %i.ej = udiv i128 %i.ei, 20
  %umin524 = call i128 @llvm.umin.i128(i128 %umin522, i128 %i.ej)
  %i.ek = add i64 %i.t, 17
  %i.el = zext i64 %i.ek to i128                  ; 2 uses
  %umax525 = call i128 @llvm.umax.i128(i128 %i.dp, i128 %i.el)
  %i.em = add nuw nsw i128 %umax525, 19
  %i.en = sub nsw i128 %i.em, %i.el
  %i.eo = udiv i128 %i.en, 20
  %umin526 = call i128 @llvm.umin.i128(i128 %umin524, i128 %i.eo)
  %i.ep = add nsw i64 %wide.trip.count435, -1
  %i.eq = zext nneg i64 %i.ep to i128
  %umin527 = call i128 @llvm.umin.i128(i128 %umin526, i128 %i.eq)
  %i.er = trunc nuw nsw i128 %umin527 to i64
  %mul528 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.er, i64 20) ; 2 uses
  %mul.result529 = extractvalue { i64, i1 } %mul528, 0 ; 5 uses
  %mul.overflow530 = extractvalue { i64, i1 } %mul528, 1
  %i.es = sub i64 -18, %i.t
  %i.et = icmp ult i64 %i.es, %mul.result529
  %i.eu = sub i64 -22, %i.t
  %i.ev = icmp ult i64 %i.eu, %mul.result529
  %i.ew = sub i64 -26, %i.t
  %i.ex = icmp ult i64 %i.ew, %mul.result529
  %i.ey = or i1 %i.ex, %mul.overflow530
  %i.ez = sub i64 -30, %i.t
  %i.fa = icmp ult i64 %i.ez, %mul.result529
  %i.fb = sub i64 -34, %i.t
  %i.fc = icmp ult i64 %i.fb, %mul.result529
  %i.fd = or i1 %i.ev, %i.et
  %i.fe = or i1 %i.fd, %i.ey
  %i.ff = or i1 %i.fa, %i.fe
  %i.fg = or i1 %i.fc, %i.ff
  br i1 %i.fg, label %.lr.ph324.preheader569, label %vector.memcheck531

vector.memcheck531:                               ; preds = %vector.scevcheck517
  %i.fh = zext i64 %.sroa.27.0 to i128
  %i.fi = add nuw nsw i128 %i.fh, 1               ; 5 uses
  %i.fj = add i64 %i.t, 33
  %i.fk = zext i64 %i.fj to i128                  ; 2 uses
  %umax532 = call i128 @llvm.umax.i128(i128 %i.fi, i128 %i.fk)
  %i.fl = add nuw nsw i128 %umax532, 19
  %i.fm = sub nsw i128 %i.fl, %i.fk
  %i.fn = udiv i128 %i.fm, 20
  %i.fo = add i64 %i.t, 29
  %i.fp = zext i64 %i.fo to i128                  ; 2 uses
  %umax533 = call i128 @llvm.umax.i128(i128 %i.fi, i128 %i.fp)
  %i.fq = add nuw nsw i128 %umax533, 19
  %i.fr = sub nsw i128 %i.fq, %i.fp
  %i.fs = udiv i128 %i.fr, 20
  %umin534 = call i128 @llvm.umin.i128(i128 %i.fn, i128 %i.fs)
  %i.ft = add i64 %i.t, 25
  %i.fu = zext i64 %i.ft to i128                  ; 2 uses
  %umax535 = call i128 @llvm.umax.i128(i128 %i.fi, i128 %i.fu)
  %i.fv = add nuw nsw i128 %umax535, 19
  %i.fw = sub nsw i128 %i.fv, %i.fu
  %i.fx = udiv i128 %i.fw, 20
  %umin536 = call i128 @llvm.umin.i128(i128 %umin534, i128 %i.fx)
  %i.fy = add i64 %i.t, 21
  %i.fz = zext i64 %i.fy to i128                  ; 2 uses
  %umax537 = call i128 @llvm.umax.i128(i128 %i.fi, i128 %i.fz)
  %i.ga = add nuw nsw i128 %umax537, 19
  %i.gb = sub nsw i128 %i.ga, %i.fz
  %i.gc = udiv i128 %i.gb, 20
  %umin538 = call i128 @llvm.umin.i128(i128 %umin536, i128 %i.gc)
  %i.gd = add i64 %i.t, 17
  %i.ge = zext i64 %i.gd to i128                  ; 2 uses
  %umax539 = call i128 @llvm.umax.i128(i128 %i.fi, i128 %i.ge)
  %i.gf = add nuw nsw i128 %umax539, 19
  %i.gg = sub nsw i128 %i.gf, %i.ge
  %i.gh = udiv i128 %i.gg, 20
  %umin540 = call i128 @llvm.umin.i128(i128 %umin538, i128 %i.gh)
  %i.gi = add nsw i64 %wide.trip.count435, -1
  %i.gj = zext nneg i64 %i.gi to i128
  %umin541 = call i128 @llvm.umin.i128(i128 %umin540, i128 %i.gj)
  %i.gk = trunc nuw nsw i128 %umin541 to i64      ; 2 uses
  %i.gl = shl i64 %i.gk, 2
  %i.gm = getelementptr i8, ptr %0, i64 %i.gl
  %scevgep542 = getelementptr i8, ptr %i.gm, i64 76
  %scevgep543 = getelementptr i8, ptr %.sroa.0.0, i64 %i.bp
  %i.gn = mul i64 %i.gk, 20
  %i.go = getelementptr i8, ptr %.sroa.0.0, i64 %i.t
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.gn
  %scevgep544 = getelementptr i8, ptr %i.gp, i64 33
  %bound0545 = icmp ult ptr %i.g, %scevgep544
  %bound1546 = icmp ult ptr %scevgep543, %scevgep542
  %found.conflict547 = and i1 %bound0545, %bound1546
  br i1 %found.conflict547, label %.lr.ph324.preheader569, label %vector.ph550

vector.ph550:                                     ; preds = %vector.memcheck531
  %n.vec551 = and i64 %i.dn, 9223372036854775806  ; 3 uses
  %i.gq = mul i64 %n.vec551, 20
  %i.gr = add i64 %i.bp, %i.gq
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.be, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %vector.body552

vector.body552:                                   ; preds = %vector.body552, %vector.ph550
  %index553 = phi i64 [ 0, %vector.ph550 ], [ %index.next554, %vector.body552 ] ; 7 uses
  %i.gs = mul i64 %index553, 20
  %i.gt = add i64 %i.bp, %i.gs                    ; 10 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.gt
  %i.gv = getelementptr i8, ptr %.sroa.0.0, i64 %i.gt
  %i.gw = getelementptr i8, ptr %i.gv, i64 20
  %i.gx = load i32, ptr %i.gu, align 1, !alias.scope !314
  %i.gy = load i32, ptr %i.gw, align 1, !alias.scope !314
  %i.gz = insertelement <2 x i32> poison, i32 %i.gx, i64 0
  %i.ha = insertelement <2 x i32> %i.gz, i32 %i.gy, i64 1
  %i.hb = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.ha)
  %i.hc = sitofp <2 x i32> %i.hb to <2 x double>
  %i.hd = fdiv <2 x double> %i.hc, %broadcast.splat
  %i.he = fptrunc <2 x double> %i.hd to <2 x float>
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index553
  store <2 x float> %i.he, ptr %i.hf, align 8, !tbaa !52, !alias.scope !315, !noalias !314
  %i.hg = getelementptr i8, ptr %.sroa.0.0, i64 %i.gt
  %i.hh = getelementptr i8, ptr %i.hg, i64 4
  %i.hi = getelementptr i8, ptr %.sroa.0.0, i64 %i.gt
  %i.hj = getelementptr i8, ptr %i.hi, i64 24
  %i.hk = load i32, ptr %i.hh, align 1, !alias.scope !314
  %i.hl = load i32, ptr %i.hj, align 1, !alias.scope !314
  %i.hm = insertelement <2 x i32> poison, i32 %i.hk, i64 0
  %i.hn = insertelement <2 x i32> %i.hm, i32 %i.hl, i64 1
  %i.ho = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.hn)
  %i.hp = sitofp <2 x i32> %i.ho to <2 x double>
  %i.hq = fdiv <2 x double> %i.hp, %broadcast.splat
  %i.hr = fptrunc <2 x double> %i.hq to <2 x float>
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index553
  store <2 x float> %i.hr, ptr %i.hs, align 4, !tbaa !52, !alias.scope !315, !noalias !314
  %i.ht = getelementptr i8, ptr %.sroa.0.0, i64 %i.gt
  %i.hu = getelementptr i8, ptr %i.ht, i64 8
  %i.hv = getelementptr i8, ptr %.sroa.0.0, i64 %i.gt
  %i.hw = getelementptr i8, ptr %i.hv, i64 28
  %i.hx = load i32, ptr %i.hu, align 1, !alias.scope !314
  %i.hy = load i32, ptr %i.hw, align 1, !alias.scope !314
  %i.hz = insertelement <2 x i32> poison, i32 %i.hx, i64 0
  %i.ia = insertelement <2 x i32> %i.hz, i32 %i.hy, i64 1
  %i.ib = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.ia)
  %i.ic = uitofp <2 x i32> %i.ib to <2 x double>
  %i.id = fdiv <2 x double> %i.ic, %broadcast.splat
  %i.ie = fptrunc <2 x double> %i.id to <2 x float>
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index553
  store <2 x float> %i.ie, ptr %i.if, align 8, !tbaa !52, !alias.scope !315, !noalias !314
  %i.ig = getelementptr i8, ptr %.sroa.0.0, i64 %i.gt
  %i.ih = getelementptr i8, ptr %i.ig, i64 12
  %i.ii = getelementptr i8, ptr %.sroa.0.0, i64 %i.gt
  %i.ij = getelementptr i8, ptr %i.ii, i64 32
  %i.ik = load i32, ptr %i.ih, align 1, !alias.scope !314
  %i.il = load i32, ptr %i.ij, align 1, !alias.scope !314
  %i.im = insertelement <2 x i32> poison, i32 %i.ik, i64 0
  %i.in = insertelement <2 x i32> %i.im, i32 %i.il, i64 1
  %i.io = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.in)
  %i.ip = sitofp <2 x i32> %i.io to <2 x double>
  %i.iq = fdiv <2 x double> %i.ip, %broadcast.splat
  %i.ir = fptrunc <2 x double> %i.iq to <2 x float>
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index553
  store <2 x float> %i.ir, ptr %i.is, align 4, !tbaa !52, !alias.scope !315, !noalias !314
  %i.it = getelementptr i8, ptr %.sroa.0.0, i64 %i.gt
  %i.iu = getelementptr i8, ptr %i.it, i64 16
  %i.iv = getelementptr i8, ptr %.sroa.0.0, i64 %i.gt
  %i.iw = getelementptr i8, ptr %i.iv, i64 36
  %i.ix = load i32, ptr %i.iu, align 1, !alias.scope !314
  %i.iy = load i32, ptr %i.iw, align 1, !alias.scope !314
  %i.iz = insertelement <2 x i32> poison, i32 %i.ix, i64 0
  %i.ja = insertelement <2 x i32> %i.iz, i32 %i.iy, i64 1
  %i.jb = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.ja)
  %i.jc = sitofp <2 x i32> %i.jb to <2 x double>
  %i.jd = fdiv <2 x double> %i.jc, %broadcast.splat
  %i.je = fptrunc <2 x double> %i.jd to <2 x float>
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index553
  store <2 x float> %i.je, ptr %i.jf, align 8, !tbaa !52, !alias.scope !315, !noalias !314
  %index.next554 = add nuw i64 %index553, 2       ; 2 uses
  %i.jg = icmp eq i64 %index.next554, %n.vec551
  br i1 %i.jg, label %.lr.ph324.preheader569, label %vector.body552, !llvm.loop !304

bb.ab:                                            ; preds = %.noexc116, %bb.q
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.ac:                                            ; preds = %.invoke, %.noexc118, %_ZN4tlog5debugIJRKhEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS6_.exit
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body160

bb.ad:                                            ; preds = %.invoke466
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.body160

.lr.ph324:                                        ; preds = %.lr.ph324.preheader569, %bb.as
  %indvars.iv432 = phi i64 [ %indvars.iv.next433, %bb.as ], [ %indvars.iv432.ph, %.lr.ph324.preheader569 ] ; 6 uses
  %i.jk = phi i64 [ %i.kz, %bb.as ], [ %.ph, %.lr.ph324.preheader569 ] ; 6 uses
  %i.jl = add i64 %i.jk, 4                        ; 2 uses
  %i.jm = icmp ult i64 %.sroa.27.0, %i.jl
  br i1 %i.jm, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.lr.ph324
  %i.jn = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull @.str.94)
          to label %.invoke468 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jn) #30
  br label %.body160

bb.ag:                                            ; preds = %.lr.ph324
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.jk
  %.0.copyload.i.i134 = load i32, ptr %i.jp, align 1
  %i.jq = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i134)
  %i.jr = sitofp i32 %i.jq to double
  %i.js = fdiv double %i.jr, %i.be
  %i.jt = fptrunc double %i.js to float
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv432
  store float %i.jt, ptr %i.ju, align 4, !tbaa !52
  %i.jv = add i64 %i.jk, 8                        ; 2 uses
  %i.jw = icmp ult i64 %.sroa.27.0, %i.jv
  br i1 %i.jw, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.jx = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, ptr noundef nonnull @.str.94)
          to label %.invoke468 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jx) #30
  br label %.body160

bb.aj:                                            ; preds = %bb.ag
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.jl
  %.0.copyload.i.i138 = load i32, ptr %i.jz, align 1
  %i.ka = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i138)
  %i.kb = sitofp i32 %i.ka to double
  %i.kc = fdiv double %i.kb, %i.be
  %i.kd = fptrunc double %i.kc to float
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv432
  store float %i.kd, ptr %i.ke, align 4, !tbaa !52
  %i.kf = add i64 %i.jk, 12                       ; 2 uses
  %i.kg = icmp ult i64 %.sroa.27.0, %i.kf
  br i1 %i.kg, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.kh = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kh, ptr noundef nonnull @.str.94)
          to label %.invoke468 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kh) #30
  br label %.body160

bb.am:                                            ; preds = %bb.aj
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.jv
  %.0.copyload.i.i143 = load i32, ptr %i.kj, align 1
  %i.kk = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i143)
  %i.kl = uitofp i32 %i.kk to double
  %i.km = fdiv double %i.kl, %i.be
  %i.kn = fptrunc double %i.km to float
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv432
  store float %i.kn, ptr %i.ko, align 4, !tbaa !52
  %i.kp = add i64 %i.jk, 16                       ; 2 uses
  %i.kq = icmp ult i64 %.sroa.27.0, %i.kp
  br i1 %i.kq, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.kr = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kr, ptr noundef nonnull @.str.94)
          to label %.invoke468 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kr) #30
  br label %.body160

bb.ap:                                            ; preds = %bb.am
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.kf
  %.0.copyload.i.i148 = load i32, ptr %i.kt, align 1
  %i.ku = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i148)
  %i.kv = sitofp i32 %i.ku to double
  %i.kw = fdiv double %i.kv, %i.be
  %i.kx = fptrunc double %i.kw to float
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv432
  store float %i.kx, ptr %i.ky, align 4, !tbaa !52
  %i.kz = add i64 %i.jk, 20                       ; 2 uses
  %i.la = icmp ult i64 %.sroa.27.0, %i.kz
  br i1 %i.la, label %bb.aq, label %bb.as
end_hunk_0
begin_hunk_1_@_ZN3tev18IsoGainMapMetadataC2ENSt3__14spanIKhLm18446744073709551615EEE:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt16invalid_argument, i64 16), ptr %.sink473, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %.sink473, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #31
          to label %.cont469 unwind label %bb.at

.cont469:                                         ; preds = %.invoke468
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lb) #30
  br label %.body160

bb.as:                                            ; preds = %bb.ap
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.kp
  %.0.copyload.i.i153 = load i32, ptr %i.ld, align 1
  %i.le = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i153)
  %i.lf = sitofp i32 %i.le to double
  %i.lg = fdiv double %i.lf, %i.be
  %i.lh = fptrunc double %i.lg to float
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv432
  store float %i.lh, ptr %i.li, align 4, !tbaa !52
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 2 uses
  %exitcond436.not = icmp eq i64 %indvars.iv.next433, %wide.trip.count435
  br i1 %exitcond436.not, label %.loopexit, label %.lr.ph324, !llvm.loop !305

bb.at:                                            ; preds = %.invoke468
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body160

bb.au:                                            ; preds = %_ZN4tlog5debugIJRbRKbS3_EEEvN3fmt3v127fstringIJDpT_EE1tEDpOS7_.exit
  br i1 %i.az, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.lk = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lk, ptr noundef nonnull @.str.94)
          to label %.invoke unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lk) #30
  br label %.body160

bb.ax:                                            ; preds = %bb.au
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.u
  %.0.copyload.i.i158 = load i32, ptr %i.lm, align 1
  %i.ln = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i158)
  %i.lo = uitofp i32 %i.ln to float               ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store float %i.lo, ptr %i.lp, align 4, !tbaa !313
  %i.lq = add i64 %i.t, 9                         ; 2 uses
  %i.lr = icmp ult i64 %.sroa.27.0, %i.lq
  br i1 %i.lr, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ls = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, ptr noundef nonnull @.str.94)
          to label %.invoke unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ls) #30
  br label %.body160

bb.ba:                                            ; preds = %bb.ax
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.ay
  %.0.copyload.i.i163 = load i32, ptr %i.lu, align 1
  %i.lv = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i163)
  %i.lw = uitofp i32 %i.lv to double
  %i.lx = fpext float %i.lo to double
  %i.ly = fdiv double %i.lx, %i.lw
  %i.lz = fptrunc double %i.ly to float
  store float %i.lz, ptr %i.lp, align 4, !tbaa !313
  %i.ma = add i64 %i.t, 13                        ; 2 uses
  %i.mb = icmp ult i64 %.sroa.27.0, %i.ma
  br i1 %i.mb, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.mc = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.mc, ptr noundef nonnull @.str.94)
          to label %.invoke unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.mc) #30
  br label %.body160

bb.bd:                                            ; preds = %bb.ba
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.lq
  %.0.copyload.i.i168 = load i32, ptr %i.me, align 1
  %i.mf = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i168)
  %i.mg = uitofp i32 %i.mf to float               ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store float %i.mg, ptr %i.mh, align 8, !tbaa !111
  %i.mi = add i64 %i.t, 17                        ; 7 uses
  %i.mj = icmp ult i64 %.sroa.27.0, %i.mi
  br i1 %i.mj, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.mk = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.mk, ptr noundef nonnull @.str.94)
          to label %.invoke unwind label %bb.bf

.invoke:                                          ; preds = %bb.be, %bb.bb, %bb.ay, %bb.av
  %.sink = phi ptr [ %i.mc, %bb.bb ], [ %i.lk, %bb.av ], [ %i.ls, %bb.ay ], [ %i.mk, %bb.be ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt16invalid_argument, i64 16), ptr %.sink, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %.sink, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #31
          to label %.cont unwind label %bb.ac

.cont:                                            ; preds = %.invoke
  unreachable

bb.bf:                                            ; preds = %bb.be
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.mk) #30
  br label %.body160

bb.bg:                                            ; preds = %bb.bd
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.ma
  %.0.copyload.i.i173 = load i32, ptr %i.mm, align 1
  %i.mn = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i173)
  %i.mo = uitofp i32 %i.mn to double
  %i.mp = fpext float %i.mg to double
  %i.mq = fdiv double %i.mp, %i.mo
  %i.mr = fptrunc double %i.mq to float
  store float %i.mr, ptr %i.mh, align 8, !tbaa !111
  %i.ms = load i8, ptr %i.b, align 1, !tbaa !73   ; 3 uses
  %.not = icmp eq i8 %i.ms, 0
  br i1 %.not, label %.lr.ph327.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bg
  %wide.trip.count = zext i8 %i.ms to i64         ; 4 uses
  %i.mt = zext i64 %.sroa.27.0 to i128
  %i.mu = add nuw nsw i128 %i.mt, 1               ; 10 uses
  %i.mv = add i64 %i.t, 57
  %i.mw = zext i64 %i.mv to i128                  ; 2 uses
  %i.mx = call i128 @llvm.umax.i128(i128 %i.mu, i128 %i.mw)
  %i.my = add nuw nsw i128 %i.mx, 39
  %i.mz = sub nsw i128 %i.my, %i.mw
  %i.na = udiv i128 %i.mz, 40
  %i.nb = add i64 %i.t, 53
  %i.nc = zext i64 %i.nb to i128                  ; 2 uses
  %i.nd = call i128 @llvm.umax.i128(i128 %i.mu, i128 %i.nc)
  %i.ne = add nuw nsw i128 %i.nd, 39
  %i.nf = sub nsw i128 %i.ne, %i.nc
  %i.ng = udiv i128 %i.nf, 40
  %i.nh = add i64 %i.t, 49
  %i.ni = zext i64 %i.nh to i128                  ; 2 uses
  %i.nj = call i128 @llvm.umax.i128(i128 %i.mu, i128 %i.ni)
  %i.nk = add nuw nsw i128 %i.nj, 39
  %i.nl = sub nsw i128 %i.nk, %i.ni
  %i.nm = udiv i128 %i.nl, 40
  %i.nn = add i64 %i.t, 45
  %i.no = zext i64 %i.nn to i128                  ; 2 uses
  %i.np = call i128 @llvm.umax.i128(i128 %i.mu, i128 %i.no)
  %i.nq = add nuw nsw i128 %i.np, 39
  %i.nr = sub nsw i128 %i.nq, %i.no
  %i.ns = udiv i128 %i.nr, 40
  %i.nt = add i64 %i.t, 41
  %i.nu = zext i64 %i.nt to i128                  ; 2 uses
  %i.nv = call i128 @llvm.umax.i128(i128 %i.mu, i128 %i.nu)
  %i.nw = add nuw nsw i128 %i.nv, 39
  %i.nx = sub nsw i128 %i.nw, %i.nu
  %i.ny = udiv i128 %i.nx, 40
  %i.nz = add i64 %i.t, 37
  %i.oa = zext i64 %i.nz to i128                  ; 2 uses
  %i.ob = call i128 @llvm.umax.i128(i128 %i.mu, i128 %i.oa)
  %i.oc = add nuw nsw i128 %i.ob, 39
  %i.od = sub nsw i128 %i.oc, %i.oa
  %i.oe = udiv i128 %i.od, 40
  %i.of = add i64 %i.t, 33
  %i.og = zext i64 %i.of to i128                  ; 2 uses
  %i.oh = call i128 @llvm.umax.i128(i128 %i.mu, i128 %i.og)
  %i.oi = add nuw nsw i128 %i.oh, 39
  %i.oj = sub nsw i128 %i.oi, %i.og
  %i.ok = udiv i128 %i.oj, 40
  %i.ol = add i64 %i.t, 29
  %i.om = zext i64 %i.ol to i128                  ; 2 uses
  %i.on = call i128 @llvm.umax.i128(i128 %i.mu, i128 %i.om)
  %i.oo = add nuw nsw i128 %i.on, 39
  %i.op = sub nsw i128 %i.oo, %i.om
  %i.oq = udiv i128 %i.op, 40
  %i.or = add i64 %i.t, 25
  %i.os = zext i64 %i.or to i128                  ; 2 uses
  %i.ot = call i128 @llvm.umax.i128(i128 %i.mu, i128 %i.os)
  %i.ou = add nuw nsw i128 %i.ot, 39
  %i.ov = sub nsw i128 %i.ou, %i.os
  %i.ow = udiv i128 %i.ov, 40
  %i.ox = add i64 %i.t, 21
  %i.oy = zext i64 %i.ox to i128                  ; 2 uses
  %i.oz = call i128 @llvm.umax.i128(i128 %i.mu, i128 %i.oy)
  %i.pa = add nuw nsw i128 %i.oz, 39
  %i.pb = sub nsw i128 %i.pa, %i.oy
  %i.pc = udiv i128 %i.pb, 40
  %i.pd = add nsw i64 %wide.trip.count, -1
  %i.pe = zext nneg i64 %i.pd to i128
  %i.pf = call i128 @llvm.umin.i128(i128 %i.na, i128 %i.ng)
  %i.pg = call i128 @llvm.umin.i128(i128 %i.pf, i128 %i.nm)
  %i.ph = call i128 @llvm.umin.i128(i128 %i.pg, i128 %i.ns)
  %i.pi = call i128 @llvm.umin.i128(i128 %i.ph, i128 %i.ny)
  %i.pj = call i128 @llvm.umin.i128(i128 %i.pi, i128 %i.oe)
  %i.pk = call i128 @llvm.umin.i128(i128 %i.pj, i128 %i.ok)
  %i.pl = call i128 @llvm.umin.i128(i128 %i.pk, i128 %i.oq)
  %i.pm = call i128 @llvm.umin.i128(i128 %i.pl, i128 %i.ow)
  %i.pn = call i128 @llvm.umin.i128(i128 %i.pm, i128 %i.pc)
  %i.po = call i128 @llvm.umin.i128(i128 %i.pn, i128 %i.pe)
  %i.pp = trunc nuw nsw i128 %i.po to i64         ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.pp, 48
  br i1 %min.iters.check, label %.lr.ph.preheader570, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.pq = zext i64 %.sroa.27.0 to i128
  %i.pr = add nuw nsw i128 %i.pq, 1               ; 10 uses
  %i.ps = add i64 %i.t, 57
  %i.pt = zext i64 %i.ps to i128                  ; 2 uses
  %umax = call i128 @llvm.umax.i128(i128 %i.pr, i128 %i.pt)
  %i.pu = add nuw nsw i128 %umax, 39
  %i.pv = sub nsw i128 %i.pu, %i.pt
  %i.pw = udiv i128 %i.pv, 40
  %i.px = add i64 %i.t, 53
  %i.py = zext i64 %i.px to i128                  ; 2 uses
  %umax476 = call i128 @llvm.umax.i128(i128 %i.pr, i128 %i.py)
  %i.pz = add nuw nsw i128 %umax476, 39
  %i.qa = sub nsw i128 %i.pz, %i.py
  %i.qb = udiv i128 %i.qa, 40
  %umin = call i128 @llvm.umin.i128(i128 %i.pw, i128 %i.qb)
  %i.qc = add i64 %i.t, 49
  %i.qd = zext i64 %i.qc to i128                  ; 2 uses
  %umax477 = call i128 @llvm.umax.i128(i128 %i.pr, i128 %i.qd)
  %i.qe = add nuw nsw i128 %umax477, 39
  %i.qf = sub nsw i128 %i.qe, %i.qd
  %i.qg = udiv i128 %i.qf, 40
  %umin478 = call i128 @llvm.umin.i128(i128 %umin, i128 %i.qg)
  %i.qh = add i64 %i.t, 45
  %i.qi = zext i64 %i.qh to i128                  ; 2 uses
  %umax479 = call i128 @llvm.umax.i128(i128 %i.pr, i128 %i.qi)
  %i.qj = add nuw nsw i128 %umax479, 39
  %i.qk = sub nsw i128 %i.qj, %i.qi
  %i.ql = udiv i128 %i.qk, 40
  %umin480 = call i128 @llvm.umin.i128(i128 %umin478, i128 %i.ql)
  %i.qm = add i64 %i.t, 41
  %i.qn = zext i64 %i.qm to i128                  ; 2 uses
  %umax481 = call i128 @llvm.umax.i128(i128 %i.pr, i128 %i.qn)
  %i.qo = add nuw nsw i128 %umax481, 39
  %i.qp = sub nsw i128 %i.qo, %i.qn
  %i.qq = udiv i128 %i.qp, 40
  %umin482 = call i128 @llvm.umin.i128(i128 %umin480, i128 %i.qq)
  %i.qr = add i64 %i.t, 37
  %i.qs = zext i64 %i.qr to i128                  ; 2 uses
  %umax483 = call i128 @llvm.umax.i128(i128 %i.pr, i128 %i.qs)
  %i.qt = add nuw nsw i128 %umax483, 39
  %i.qu = sub nsw i128 %i.qt, %i.qs
  %i.qv = udiv i128 %i.qu, 40
  %umin484 = call i128 @llvm.umin.i128(i128 %umin482, i128 %i.qv)
  %i.qw = add i64 %i.t, 33
  %i.qx = zext i64 %i.qw to i128                  ; 2 uses
  %umax485 = call i128 @llvm.umax.i128(i128 %i.pr, i128 %i.qx)
  %i.qy = add nuw nsw i128 %umax485, 39
  %i.qz = sub nsw i128 %i.qy, %i.qx
  %i.ra = udiv i128 %i.qz, 40
  %umin486 = call i128 @llvm.umin.i128(i128 %umin484, i128 %i.ra)
  %i.rb = add i64 %i.t, 29
  %i.rc = zext i64 %i.rb to i128                  ; 2 uses
  %umax487 = call i128 @llvm.umax.i128(i128 %i.pr, i128 %i.rc)
  %i.rd = add nuw nsw i128 %umax487, 39
  %i.re = sub nsw i128 %i.rd, %i.rc
  %i.rf = udiv i128 %i.re, 40
  %umin488 = call i128 @llvm.umin.i128(i128 %umin486, i128 %i.rf)
  %i.rg = add i64 %i.t, 25
  %i.rh = zext i64 %i.rg to i128                  ; 2 uses
  %umax489 = call i128 @llvm.umax.i128(i128 %i.pr, i128 %i.rh)
  %i.ri = add nuw nsw i128 %umax489, 39
  %i.rj = sub nsw i128 %i.ri, %i.rh
  %i.rk = udiv i128 %i.rj, 40
  %umin490 = call i128 @llvm.umin.i128(i128 %umin488, i128 %i.rk)
  %i.rl = add i64 %i.t, 21
  %i.rm = zext i64 %i.rl to i128                  ; 2 uses
  %umax491 = call i128 @llvm.umax.i128(i128 %i.pr, i128 %i.rm)
  %i.rn = add nuw nsw i128 %umax491, 39
  %i.ro = sub nsw i128 %i.rn, %i.rm
  %i.rp = udiv i128 %i.ro, 40
  %umin492 = call i128 @llvm.umin.i128(i128 %umin490, i128 %i.rp)
  %i.rq = add nsw i64 %wide.trip.count, -1
  %i.rr = zext nneg i64 %i.rq to i128
  %umin493 = call i128 @llvm.umin.i128(i128 %umin492, i128 %i.rr)
  %i.rs = trunc nuw nsw i128 %umin493 to i64
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.rs, i64 40) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 10 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.rt = sub i64 -22, %i.t
  %i.ru = icmp ult i64 %i.rt, %mul.result
  %i.rv = sub i64 -26, %i.t
  %i.rw = icmp ult i64 %i.rv, %mul.result
  %i.rx = sub i64 -30, %i.t
  %i.ry = icmp ult i64 %i.rx, %mul.result
  %i.rz = sub i64 -34, %i.t
  %i.sa = icmp ult i64 %i.rz, %mul.result
  %i.sb = sub i64 -38, %i.t
  %i.sc = icmp ult i64 %i.sb, %mul.result
  %i.sd = sub i64 -42, %i.t
  %i.se = icmp ult i64 %i.sd, %mul.result
  %i.sf = sub i64 -46, %i.t
  %i.sg = icmp ult i64 %i.sf, %mul.result
  %i.sh = sub i64 -50, %i.t
  %i.si = icmp ult i64 %i.sh, %mul.result
  %i.sj = sub i64 -54, %i.t
  %i.sk = icmp ult i64 %i.sj, %mul.result
  %i.sl = sub i64 -58, %i.t
  %i.sm = icmp ult i64 %i.sl, %mul.result
  %op.rdx = or i1 %mul.overflow, %i.rw
  %op.rdx560 = or i1 %i.ru, %i.ry
  %op.rdx561 = or i1 %i.sa, %i.sc
  %op.rdx562 = or i1 %i.se, %i.sg
  %op.rdx563 = or i1 %i.si, %i.sk
  %op.rdx564 = or i1 %op.rdx, %op.rdx560
  %op.rdx565 = or i1 %op.rdx561, %op.rdx562
  %op.rdx566 = or i1 %op.rdx563, %i.sm
  %op.rdx567 = or i1 %op.rdx564, %op.rdx565
  %op.rdx568 = or i1 %op.rdx567, %op.rdx566
  br i1 %op.rdx568, label %.lr.ph.preheader570, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.sn = zext i64 %.sroa.27.0 to i128
  %i.so = add nuw nsw i128 %i.sn, 1               ; 10 uses
  %i.sp = add i64 %i.t, 57
  %i.sq = zext i64 %i.sp to i128                  ; 2 uses
  %umax494 = call i128 @llvm.umax.i128(i128 %i.so, i128 %i.sq)
  %i.sr = add nuw nsw i128 %umax494, 39
  %i.ss = sub nsw i128 %i.sr, %i.sq
  %i.st = udiv i128 %i.ss, 40
  %i.su = add i64 %i.t, 53
  %i.sv = zext i64 %i.su to i128                  ; 2 uses
  %umax495 = call i128 @llvm.umax.i128(i128 %i.so, i128 %i.sv)
  %i.sw = add nuw nsw i128 %umax495, 39
  %i.sx = sub nsw i128 %i.sw, %i.sv
  %i.sy = udiv i128 %i.sx, 40
  %umin496 = call i128 @llvm.umin.i128(i128 %i.st, i128 %i.sy)
  %i.sz = add i64 %i.t, 49
  %i.ta = zext i64 %i.sz to i128                  ; 2 uses
  %umax497 = call i128 @llvm.umax.i128(i128 %i.so, i128 %i.ta)
  %i.tb = add nuw nsw i128 %umax497, 39
  %i.tc = sub nsw i128 %i.tb, %i.ta
  %i.td = udiv i128 %i.tc, 40
  %umin498 = call i128 @llvm.umin.i128(i128 %umin496, i128 %i.td)
  %i.te = add i64 %i.t, 45
  %i.tf = zext i64 %i.te to i128                  ; 2 uses
  %umax499 = call i128 @llvm.umax.i128(i128 %i.so, i128 %i.tf)
  %i.tg = add nuw nsw i128 %umax499, 39
  %i.th = sub nsw i128 %i.tg, %i.tf
  %i.ti = udiv i128 %i.th, 40
  %umin500 = call i128 @llvm.umin.i128(i128 %umin498, i128 %i.ti)
  %i.tj = add i64 %i.t, 41
  %i.tk = zext i64 %i.tj to i128                  ; 2 uses
  %umax501 = call i128 @llvm.umax.i128(i128 %i.so, i128 %i.tk)
  %i.tl = add nuw nsw i128 %umax501, 39
  %i.tm = sub nsw i128 %i.tl, %i.tk
  %i.tn = udiv i128 %i.tm, 40
  %umin502 = call i128 @llvm.umin.i128(i128 %umin500, i128 %i.tn)
  %i.to = add i64 %i.t, 37
  %i.tp = zext i64 %i.to to i128                  ; 2 uses
  %umax503 = call i128 @llvm.umax.i128(i128 %i.so, i128 %i.tp)
  %i.tq = add nuw nsw i128 %umax503, 39
  %i.tr = sub nsw i128 %i.tq, %i.tp
  %i.ts = udiv i128 %i.tr, 40
  %umin504 = call i128 @llvm.umin.i128(i128 %umin502, i128 %i.ts)
  %i.tt = add i64 %i.t, 33
  %i.tu = zext i64 %i.tt to i128                  ; 2 uses
  %umax505 = call i128 @llvm.umax.i128(i128 %i.so, i128 %i.tu)
  %i.tv = add nuw nsw i128 %umax505, 39
  %i.tw = sub nsw i128 %i.tv, %i.tu
  %i.tx = udiv i128 %i.tw, 40
  %umin506 = call i128 @llvm.umin.i128(i128 %umin504, i128 %i.tx)
  %i.ty = add i64 %i.t, 29
  %i.tz = zext i64 %i.ty to i128                  ; 2 uses
  %umax507 = call i128 @llvm.umax.i128(i128 %i.so, i128 %i.tz)
  %i.ua = add nuw nsw i128 %umax507, 39
  %i.ub = sub nsw i128 %i.ua, %i.tz
  %i.uc = udiv i128 %i.ub, 40
  %umin508 = call i128 @llvm.umin.i128(i128 %umin506, i128 %i.uc)
  %i.ud = add i64 %i.t, 25
  %i.ue = zext i64 %i.ud to i128                  ; 2 uses
  %umax509 = call i128 @llvm.umax.i128(i128 %i.so, i128 %i.ue)
  %i.uf = add nuw nsw i128 %umax509, 39
  %i.ug = sub nsw i128 %i.uf, %i.ue
  %i.uh = udiv i128 %i.ug, 40
  %umin510 = call i128 @llvm.umin.i128(i128 %umin508, i128 %i.uh)
  %i.ui = add i64 %i.t, 21
  %i.uj = zext i64 %i.ui to i128                  ; 2 uses
  %umax511 = call i128 @llvm.umax.i128(i128 %i.so, i128 %i.uj)
  %i.uk = add nuw nsw i128 %umax511, 39
  %i.ul = sub nsw i128 %i.uk, %i.uj
  %i.um = udiv i128 %i.ul, 40
  %umin512 = call i128 @llvm.umin.i128(i128 %umin510, i128 %i.um)
  %i.un = add nsw i64 %wide.trip.count, -1
  %i.uo = zext nneg i64 %i.un to i128
  %umin513 = call i128 @llvm.umin.i128(i128 %umin512, i128 %i.uo)
  %i.up = trunc nuw nsw i128 %umin513 to i64      ; 2 uses
  %i.uq = shl i64 %i.up, 2
  %i.ur = getelementptr i8, ptr %0, i64 %i.uq
  %scevgep = getelementptr i8, ptr %i.ur, i64 76
  %scevgep514 = getelementptr i8, ptr %.sroa.0.0, i64 %i.mi
  %i.us = mul i64 %i.up, 40
  %i.ut = getelementptr i8, ptr %.sroa.0.0, i64 %i.t
  %i.uu = getelementptr i8, ptr %i.ut, i64 %i.us
  %scevgep515 = getelementptr i8, ptr %i.uu, i64 57
  %bound0 = icmp ult ptr %i.g, %scevgep515
  %bound1 = icmp ult ptr %scevgep514, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader570, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.pp, 9223372036854775806     ; 3 uses
  %i.uv = mul i64 %n.vec, 40
  %i.uw = add i64 %i.mi, %i.uv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.ux = mul i64 %index, 40
  %i.uy = add i64 %i.mi, %i.ux                    ; 20 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.uy
  %i.va = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.vb = getelementptr i8, ptr %i.va, i64 40
  %i.vc = load i32, ptr %i.uz, align 1, !alias.scope !316
  %i.vd = load i32, ptr %i.vb, align 1, !alias.scope !316
  %i.ve = insertelement <2 x i32> poison, i32 %i.vc, i64 0
  %i.vf = insertelement <2 x i32> %i.ve, i32 %i.vd, i64 1
  %i.vg = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.vf)
  %i.vh = sitofp <2 x i32> %i.vg to <2 x float>   ; 2 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  store <2 x float> %i.vh, ptr %i.vi, align 8, !tbaa !52, !alias.scope !317, !noalias !316
  %i.vj = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.vk = getelementptr i8, ptr %i.vj, i64 4
  %i.vl = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.vm = getelementptr i8, ptr %i.vl, i64 44
  %i.vn = load i32, ptr %i.vk, align 1, !alias.scope !316
  %i.vo = load i32, ptr %i.vm, align 1, !alias.scope !316
  %i.vp = insertelement <2 x i32> poison, i32 %i.vn, i64 0
  %i.vq = insertelement <2 x i32> %i.vp, i32 %i.vo, i64 1
  %i.vr = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.vq)
  %i.vs = uitofp <2 x i32> %i.vr to <2 x double>
  %i.vt = fpext <2 x float> %i.vh to <2 x double>
  %i.vu = fdiv <2 x double> %i.vt, %i.vs
  %i.vv = fptrunc <2 x double> %i.vu to <2 x float>
  store <2 x float> %i.vv, ptr %i.vi, align 8, !tbaa !52, !alias.scope !317, !noalias !316
  %i.vw = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.vx = getelementptr i8, ptr %i.vw, i64 8
  %i.vy = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.vz = getelementptr i8, ptr %i.vy, i64 48
  %i.wa = load i32, ptr %i.vx, align 1, !alias.scope !316
  %i.wb = load i32, ptr %i.vz, align 1, !alias.scope !316
  %i.wc = insertelement <2 x i32> poison, i32 %i.wa, i64 0
  %i.wd = insertelement <2 x i32> %i.wc, i32 %i.wb, i64 1
  %i.we = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.wd)
  %i.wf = sitofp <2 x i32> %i.we to <2 x float>   ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  store <2 x float> %i.wf, ptr %i.wg, align 4, !tbaa !52, !alias.scope !317, !noalias !316
  %i.wh = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.wi = getelementptr i8, ptr %i.wh, i64 12
  %i.wj = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.wk = getelementptr i8, ptr %i.wj, i64 52
  %i.wl = load i32, ptr %i.wi, align 1, !alias.scope !316
  %i.wm = load i32, ptr %i.wk, align 1, !alias.scope !316
  %i.wn = insertelement <2 x i32> poison, i32 %i.wl, i64 0
  %i.wo = insertelement <2 x i32> %i.wn, i32 %i.wm, i64 1
  %i.wp = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.wo)
  %i.wq = uitofp <2 x i32> %i.wp to <2 x double>
  %i.wr = fpext <2 x float> %i.wf to <2 x double>
  %i.ws = fdiv <2 x double> %i.wr, %i.wq
  %i.wt = fptrunc <2 x double> %i.ws to <2 x float>
  store <2 x float> %i.wt, ptr %i.wg, align 4, !tbaa !52, !alias.scope !317, !noalias !316
  %i.wu = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.wv = getelementptr i8, ptr %i.wu, i64 16
  %i.ww = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.wx = getelementptr i8, ptr %i.ww, i64 56
  %i.wy = load i32, ptr %i.wv, align 1, !alias.scope !316
  %i.wz = load i32, ptr %i.wx, align 1, !alias.scope !316
  %i.xa = insertelement <2 x i32> poison, i32 %i.wy, i64 0
  %i.xb = insertelement <2 x i32> %i.xa, i32 %i.wz, i64 1
  %i.xc = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.xb)
  %i.xd = uitofp <2 x i32> %i.xc to <2 x float>   ; 2 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  store <2 x float> %i.xd, ptr %i.xe, align 8, !tbaa !52, !alias.scope !317, !noalias !316
  %i.xf = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.xg = getelementptr i8, ptr %i.xf, i64 20
  %i.xh = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.xi = getelementptr i8, ptr %i.xh, i64 60
  %i.xj = load i32, ptr %i.xg, align 1, !alias.scope !316
  %i.xk = load i32, ptr %i.xi, align 1, !alias.scope !316
  %i.xl = insertelement <2 x i32> poison, i32 %i.xj, i64 0
  %i.xm = insertelement <2 x i32> %i.xl, i32 %i.xk, i64 1
  %i.xn = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.xm)
  %i.xo = uitofp <2 x i32> %i.xn to <2 x double>
  %i.xp = fpext <2 x float> %i.xd to <2 x double>
  %i.xq = fdiv <2 x double> %i.xp, %i.xo
  %i.xr = fptrunc <2 x double> %i.xq to <2 x float>
  store <2 x float> %i.xr, ptr %i.xe, align 8, !tbaa !52, !alias.scope !317, !noalias !316
  %i.xs = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.xt = getelementptr i8, ptr %i.xs, i64 24
  %i.xu = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.xv = getelementptr i8, ptr %i.xu, i64 64
  %i.xw = load i32, ptr %i.xt, align 1, !alias.scope !316
  %i.xx = load i32, ptr %i.xv, align 1, !alias.scope !316
  %i.xy = insertelement <2 x i32> poison, i32 %i.xw, i64 0
  %i.xz = insertelement <2 x i32> %i.xy, i32 %i.xx, i64 1
  %i.ya = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.xz)
  %i.yb = sitofp <2 x i32> %i.ya to <2 x float>   ; 2 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  store <2 x float> %i.yb, ptr %i.yc, align 4, !tbaa !52, !alias.scope !317, !noalias !316
  %i.yd = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.ye = getelementptr i8, ptr %i.yd, i64 28
  %i.yf = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.yg = getelementptr i8, ptr %i.yf, i64 68
  %i.yh = load i32, ptr %i.ye, align 1, !alias.scope !316
  %i.yi = load i32, ptr %i.yg, align 1, !alias.scope !316
  %i.yj = insertelement <2 x i32> poison, i32 %i.yh, i64 0
  %i.yk = insertelement <2 x i32> %i.yj, i32 %i.yi, i64 1
  %i.yl = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.yk)
  %i.ym = uitofp <2 x i32> %i.yl to <2 x double>
  %i.yn = fpext <2 x float> %i.yb to <2 x double>
  %i.yo = fdiv <2 x double> %i.yn, %i.ym
  %i.yp = fptrunc <2 x double> %i.yo to <2 x float>
  store <2 x float> %i.yp, ptr %i.yc, align 4, !tbaa !52, !alias.scope !317, !noalias !316
  %i.yq = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.yr = getelementptr i8, ptr %i.yq, i64 32
  %i.ys = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.yt = getelementptr i8, ptr %i.ys, i64 72
  %i.yu = load i32, ptr %i.yr, align 1, !alias.scope !316
  %i.yv = load i32, ptr %i.yt, align 1, !alias.scope !316
  %i.yw = insertelement <2 x i32> poison, i32 %i.yu, i64 0
  %i.yx = insertelement <2 x i32> %i.yw, i32 %i.yv, i64 1
  %i.yy = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.yx)
  %i.yz = sitofp <2 x i32> %i.yy to <2 x float>   ; 2 uses
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  store <2 x float> %i.yz, ptr %i.za, align 8, !tbaa !52, !alias.scope !317, !noalias !316
  %i.zb = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.zc = getelementptr i8, ptr %i.zb, i64 36
  %i.zd = getelementptr i8, ptr %.sroa.0.0, i64 %i.uy
  %i.ze = getelementptr i8, ptr %i.zd, i64 76
  %i.zf = load i32, ptr %i.zc, align 1, !alias.scope !316
  %i.zg = load i32, ptr %i.ze, align 1, !alias.scope !316
  %i.zh = insertelement <2 x i32> poison, i32 %i.zf, i64 0
  %i.zi = insertelement <2 x i32> %i.zh, i32 %i.zg, i64 1
  %i.zj = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.zi)
  %i.zk = uitofp <2 x i32> %i.zj to <2 x double>
  %i.zl = fpext <2 x float> %i.yz to <2 x double>
  %i.zm = fdiv <2 x double> %i.zl, %i.zk
  %i.zn = fptrunc <2 x double> %i.zm to <2 x float>
  store <2 x float> %i.zn, ptr %i.za, align 8, !tbaa !52, !alias.scope !317, !noalias !316
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.zo = icmp eq i64 %index.next, %n.vec
  br i1 %i.zo, label %.lr.ph.preheader570, label %vector.body, !llvm.loop !309

.lr.ph.preheader570:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  %.ph571 = phi i64 [ %i.mi, %vector.memcheck ], [ %i.mi, %vector.scevcheck ], [ %i.mi, %.lr.ph.preheader ], [ %i.uw, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader570, %bb.ck
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ck ], [ %indvars.iv.ph, %.lr.ph.preheader570 ] ; 6 uses
  %i.zp = phi i64 [ %i.acs, %bb.ck ], [ %.ph571, %.lr.ph.preheader570 ] ; 11 uses
  %i.zq = add i64 %i.zp, 4                        ; 2 uses
  %i.zr = icmp ult i64 %.sroa.27.0, %i.zq
  br i1 %i.zr, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %.lr.ph
  %i.zs = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.zs, ptr noundef nonnull @.str.94)
          to label %.invoke470 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.zt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.zs) #30
  br label %.body160

bb.bj:                                            ; preds = %.lr.ph
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.zp
  %.0.copyload.i.i178 = load i32, ptr %i.zu, align 1
  %i.zv = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i178)
  %i.zw = sitofp i32 %i.zv to float               ; 2 uses
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  store float %i.zw, ptr %i.zx, align 4, !tbaa !52
  %i.zy = add i64 %i.zp, 8                        ; 2 uses
  %i.zz = icmp ult i64 %.sroa.27.0, %i.zy
  br i1 %i.zz, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.aaa = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aaa, ptr noundef nonnull @.str.94)
          to label %.invoke470 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.aab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aaa) #30
  br label %.body160

bb.bm:                                            ; preds = %bb.bj
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %i.zq
  %.0.copyload.i.i183 = load i32, ptr %i.aac, align 1
  %i.aad = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i183)
  %i.aae = uitofp i32 %i.aad to double
  %i.aaf = fpext float %i.zw to double
  %i.aag = fdiv double %i.aaf, %i.aae
  %i.aah = fptrunc double %i.aag to float
  store float %i.aah, ptr %i.zx, align 4, !tbaa !52
  %i.aai = add i64 %i.zp, 12                      ; 2 uses
  %i.aaj = icmp ult i64 %.sroa.27.0, %i.aai
  br i1 %i.aaj, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %i.agi = load ptr, ptr %3, align 8, !tbaa !89
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 %indvars.iv
  store i8 %i.agh, ptr %i.agj, align 1, !tbaa !73
  %i.agk = load i64, ptr %i.c, align 8, !tbaa !206 ; 7 uses
  %.not14.i.i443 = icmp eq i64 %i.agk, 0
  br i1 %.not14.i.i443, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456, label %.lr.ph.i.i444

.lr.ph.i.i444:                                    ; preds = %bb.dv
  %i.agl = load ptr, ptr %5, align 8, !tbaa !201  ; 4 uses
  %xtraiter1690 = and i64 %i.agk, 1
  %i.agm = icmp eq i64 %i.agk, 1
  br i1 %i.agm, label %.epil.preheader1689, label %.lr.ph.i.i444.new

.lr.ph.i.i444.new:                                ; preds = %.lr.ph.i.i444
  %unroll_iter1694 = and i64 %i.agk, -2
  br label %bb.dw

._crit_edge.i.i448.unr-lcssa:                     ; preds = %bb.dw
  %lcmp.mod1691.not = icmp eq i64 %xtraiter1690, 0
  br i1 %lcmp.mod1691.not, label %._crit_edge.i.i448, label %.epil.preheader1689

.epil.preheader1689:                              ; preds = %._crit_edge.i.i448.unr-lcssa, %.lr.ph.i.i444
  %.013.i.i445.epil.init = phi i64 [ 0, %.lr.ph.i.i444 ], [ %i.ahk, %._crit_edge.i.i448.unr-lcssa ]
  %.01112.i.i446.epil.init = phi i64 [ 0, %.lr.ph.i.i444 ], [ %i.ahj, %._crit_edge.i.i448.unr-lcssa ]
  %lcmp.mod1693 = trunc i64 %i.agk to i1
  call void @llvm.assume(i1 %lcmp.mod1693)
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %.013.i.i445.epil.init ; 2 uses
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !119
  %i.agp = zext i32 %i.ago to i64
  %i.agq = mul nuw nsw i64 %i.agp, 10
  %i.agr = add nuw nsw i64 %i.agq, %.01112.i.i446.epil.init ; 2 uses
  %i.ags = trunc i64 %i.agr to i32
  store i32 %i.ags, ptr %i.agn, align 4, !tbaa !119
  %i.agt = lshr i64 %i.agr, 32
  br label %._crit_edge.i.i448

._crit_edge.i.i448:                               ; preds = %._crit_edge.i.i448.unr-lcssa, %.epil.preheader1689
  %.lcssa1647 = phi i64 [ %i.ahj, %._crit_edge.i.i448.unr-lcssa ], [ %i.agt, %.epil.preheader1689 ] ; 2 uses
  %i.agu = trunc nuw nsw i64 %.lcssa1647 to i32
  %.not.i.i449 = icmp eq i64 %.lcssa1647, 0
  br i1 %.not.i.i449, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456, label %bb.dx

bb.dw:                                            ; preds = %bb.dw, %.lr.ph.i.i444.new
  %.013.i.i445 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %i.ahk, %bb.dw ] ; 3 uses
  %.01112.i.i446 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %i.ahj, %bb.dw ]
  %niter1695 = phi i64 [ 0, %.lr.ph.i.i444.new ], [ %niter1695.next.1, %bb.dw ]
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %.013.i.i445 ; 2 uses
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !119
  %i.agx = zext i32 %i.agw to i64
  %i.agy = mul nuw nsw i64 %i.agx, 10
  %i.agz = add nuw nsw i64 %i.agy, %.01112.i.i446 ; 2 uses
  %i.aha = trunc i64 %i.agz to i32
  store i32 %i.aha, ptr %i.agv, align 4, !tbaa !119
  %i.ahb = lshr i64 %i.agz, 32
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %.013.i.i445
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 4 ; 2 uses
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !119
  %i.ahf = zext i32 %i.ahe to i64
  %i.ahg = mul nuw nsw i64 %i.ahf, 10
  %i.ahh = add nuw nsw i64 %i.ahg, %i.ahb         ; 2 uses
  %i.ahi = trunc i64 %i.ahh to i32
  store i32 %i.ahi, ptr %i.ahd, align 4, !tbaa !119
  %i.ahj = lshr i64 %i.ahh, 32                    ; 3 uses
  %i.ahk = add nuw i64 %.013.i.i445, 2            ; 2 uses
  %niter1695.next.1 = add nuw i64 %niter1695, 2   ; 2 uses
  %niter1695.ncmp.1 = icmp eq i64 %niter1695.next.1, %unroll_iter1694
  br i1 %niter1695.ncmp.1, label %._crit_edge.i.i448.unr-lcssa, label %bb.dw, !llvm.loop !24

bb.dx:                                            ; preds = %._crit_edge.i.i448
  %i.ahl = add i64 %i.agk, 1                      ; 3 uses
  %i.ahm = load i64, ptr %i.a, align 8, !tbaa !202
  %i.ahn = icmp ugt i64 %i.ahl, %i.ahm
  br i1 %i.ahn, label %bb.dy, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450

bb.dy:                                            ; preds = %bb.dx
  %i.aho = load ptr, ptr %i.b, align 8, !tbaa !200
  invoke void %i.aho(ptr noundef nonnull align 8 dereferenceable(164) %5, i64 noundef %i.ahl)
          to label %.noexc455 unwind label %bb.dz, !inline_history !627

.noexc455:                                        ; preds = %bb.dy
  %.pre.i.i.i452 = load i64, ptr %i.c, align 8, !tbaa !206 ; 2 uses
  %.pre2.i.i.i453 = add i64 %.pre.i.i.i452, 1
  %.pre.i454 = load ptr, ptr %5, align 8, !tbaa !201
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450: ; preds = %.noexc455, %bb.dx
  %i.ahp = phi ptr [ %i.agl, %bb.dx ], [ %.pre.i454, %.noexc455 ]
  %.pre-phi.i.i.i451 = phi i64 [ %i.ahl, %bb.dx ], [ %.pre2.i.i.i453, %.noexc455 ]
  %i.ahq = phi i64 [ %i.agk, %bb.dx ], [ %.pre.i.i.i452, %.noexc455 ]
  store i64 %.pre-phi.i.i.i451, ptr %i.c, align 8, !tbaa !206
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.ahq
  store i32 %i.agu, ptr %i.ahr, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456

_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit456:    ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i450, %._crit_edge.i.i448, %bb.dv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !631

bb.dz:                                            ; preds = %bb.dy, %.lr.ph
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ea:                                            ; preds = %._crit_edge
  %i.aht = load i64, ptr %i.c, align 8, !tbaa !206
  %i.ahu = trunc i64 %i.aht to i32
  %i.ahv = load i32, ptr %i.e, align 8, !tbaa !205 ; 3 uses
  %i.ahw = add nsw i32 %i.ahv, %i.ahu             ; 3 uses
  %i.ahx = load i64, ptr %i.h, align 8, !tbaa !206 ; 2 uses
  %i.ahy = trunc i64 %i.ahx to i32
  %i.ahz = load i32, ptr %i.j, align 8, !tbaa !205 ; 3 uses
  %i.aia = add nsw i32 %i.ahz, %i.ahy             ; 3 uses
  %i.aib = add nsw i32 %i.ahw, 1
  %i.aic = icmp slt i32 %i.aib, %i.aia
  br i1 %i.aic, label %.thread552, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aid = icmp sgt i32 %i.ahw, %i.aia
  br i1 %i.aid, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aie = call noundef i32 @llvm.smin.i32(i32 %i.ahv, i32 %i.ahz) ; 2 uses
  %.not.not.not53.i457 = icmp sgt i32 %i.aia, %i.aie
  br i1 %.not.not.not53.i457, label %.lr.ph.i459, label %bb.ei

.lr.ph.i459:                                      ; preds = %bb.ec
  %i.aif = load ptr, ptr %5, align 8
  %i.aig = load ptr, ptr %6, align 8
  %i.aih = sext i32 %i.ahz to i64                 ; 3 uses
  %sext.i460 = shl i64 %i.ahx, 32
  %i.aii = ashr exact i64 %sext.i460, 32
  %i.aij = add nsw i64 %i.aii, %i.aih
  %i.aik = sext i32 %i.ahw to i64
  %i.ail = sext i32 %i.ahv to i64                 ; 2 uses
  %i.aim = sext i32 %i.aie to i64
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eh, %.lr.ph.i459
  %indvars.iv.i461 = phi i64 [ %i.aij, %.lr.ph.i459 ], [ %indvars.iv.next.i463, %bb.eh ] ; 4 uses
  %.03254.i462 = phi i64 [ 0, %.lr.ph.i459 ], [ %i.ajd, %bb.eh ] ; 2 uses
  %indvars.iv.next.i463 = add nsw i64 %indvars.iv.i461, -1 ; 4 uses
  %.not.i.i464 = icmp sgt i64 %indvars.iv.i461, %i.ail
  %i.ain = icmp sle i64 %indvars.iv.i461, %i.aik
  %or.cond.i465 = and i1 %.not.i.i464, %i.ain
  br i1 %or.cond.i465, label %bb.ee, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469

bb.ee:                                            ; preds = %bb.ed
  %i.aio = sub nsw i64 %indvars.iv.next.i463, %i.ail
  %i.aip = getelementptr inbounds [4 x i8], ptr %i.aif, i64 %i.aio
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !119
  %i.air = zext i32 %i.aiq to i64
  %i.ais = shl nuw nsw i64 %i.air, 1
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469: ; preds = %bb.ed, %bb.ee
  %i.ait = phi i64 [ %i.ais, %bb.ee ], [ 0, %bb.ed ] ; 3 uses
  %.not.i45.i470 = icmp sgt i64 %indvars.iv.i461, %i.aih
  br i1 %.not.i45.i470, label %bb.ef, label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471

bb.ef:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469
  %i.aiu = sub nsw i64 %indvars.iv.next.i463, %i.aih
  %i.aiv = getelementptr inbounds [4 x i8], ptr %i.aig, i64 %i.aiu
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !119
  %i.aix = zext i32 %i.aiw to i64
  %i.aiy = or disjoint i64 %.03254.i462, %i.aix
  br label %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471

_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471: ; preds = %bb.ef, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469
  %i.aiz = phi i64 [ %i.aiy, %bb.ef ], [ %.03254.i462, %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit44.i469 ] ; 3 uses
  %i.aja = icmp ugt i64 %i.ait, %i.aiz
  br i1 %i.aja, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474, label %bb.eg

bb.eg:                                            ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471
  %i.ajb = sub nuw nsw i64 %i.aiz, %i.ait         ; 2 uses
  %i.ajc = icmp ugt i64 %i.ajb, 1
  br i1 %i.ajc, label %.thread552, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ajd = shl nuw nsw i64 %i.ajb, 32
  %.not.not.not.i472 = icmp sgt i64 %indvars.iv.next.i463, %i.aim
  br i1 %.not.not.not.i472, label %bb.ed, label %.thread.loopexit.i473, !llvm.loop !626

.thread.loopexit.i473:                            ; preds = %bb.eh
  %i.aje = icmp ne i64 %i.aiz, %i.ait
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ec, %.thread.loopexit.i473
  %.4.i458.ph = phi i1 [ false, %bb.ec ], [ %i.aje, %.thread.loopexit.i473 ]
  %i.ajf = and i32 %i.age, 1
  %.not100 = icmp eq i32 %i.ajf, 0
  %or.cond115 = or i1 %.not100, %.4.i458.ph
  br i1 %or.cond115, label %.thread552, label %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474

_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474: ; preds = %_ZNK3fmt3v126detail6bigint9get_bigitEi.exit46.i471, %bb.eb, %bb.ei
  %i.ajg = icmp eq i32 %i.age, 9
  br i1 %i.ajg, label %bb.ej, label %bb.es

bb.ej:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474
  %i.ajh = load ptr, ptr %3, align 8, !tbaa !89
  %9 = zext nneg i32 %i.acl to i64
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %9
  store i8 58, ptr %i.aji, align 1, !tbaa !73
  br i1 %.not619, label %.critedge, label %.lr.ph617

.lr.ph617:                                        ; preds = %bb.ej, %bb.el
  %indvars.iv666 = phi i64 [ %indvars.iv.next667, %bb.el ], [ %i.afv, %bb.ej ] ; 3 uses
  %indvars.iv.next667 = add nsw i64 %indvars.iv666, -1 ; 2 uses
  %i.ajj = load ptr, ptr %3, align 8, !tbaa !89
  %i.ajk = and i64 %indvars.iv.next667, 4294967295
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajj, i64 %i.ajk ; 2 uses
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !73
  %i.ajn = icmp eq i8 %i.ajm, 58
  br i1 %i.ajn, label %bb.el, label %.critedge

.critedge:                                        ; preds = %.lr.ph617, %bb.el, %bb.ej
  %i.ajo = load ptr, ptr %3, align 8, !tbaa !89   ; 2 uses
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !73
  %i.ajq = icmp eq i8 %i.ajp, 58
  br i1 %i.ajq, label %bb.em, label %.loopexit

bb.ek:                                            ; preds = %._crit_edge
  %i.ajr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.el:                                            ; preds = %.lr.ph617
  store i8 48, ptr %i.ajl, align 1, !tbaa !73
  %i.ajs = load ptr, ptr %3, align 8, !tbaa !89
  %i.ajt = getelementptr i8, ptr %i.ajs, i64 %indvars.iv666
  %i.aju = getelementptr i8, ptr %i.ajt, i64 -2   ; 2 uses
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !73
  %i.ajw = add i8 %i.ajv, 1
  store i8 %i.ajw, ptr %i.aju, align 1, !tbaa !73
  %i.ajx = trunc nuw i64 %indvars.iv666 to i32
  %i.ajy = icmp sgt i32 %i.ajx, 2
  br i1 %i.ajy, label %.lr.ph617, label %.critedge, !llvm.loop !632

bb.em:                                            ; preds = %.critedge
  store i8 49, ptr %i.ajo, align 1, !tbaa !73
  %i.ajz = and i32 %1, 4
  %.not101 = icmp eq i32 %i.ajz, 0
  br i1 %.not101, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.aka = load i64, ptr %i.agd, align 8, !tbaa !99 ; 2 uses
  %i.akb = add i64 %i.aka, 1                      ; 3 uses
  %i.akc = load i64, ptr %i.afw, align 8, !tbaa !90
  %i.akd = icmp ugt i64 %i.akb, %i.akc
  br i1 %i.akd, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.ake = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !88
  invoke void %i.akf(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.akb)
          to label %.noexc478 unwind label %bb.eq, !inline_history !630

.noexc478:                                        ; preds = %bb.eo
  %.pre.i476 = load i64, ptr %i.agd, align 8, !tbaa !99 ; 2 uses
  %.pre2.i477 = add i64 %.pre.i476, 1
  br label %bb.ep

bb.ep:                                            ; preds = %.noexc478, %bb.en
  %.pre-phi.i475 = phi i64 [ %i.akb, %bb.en ], [ %.pre2.i477, %.noexc478 ]
  %i.akg = phi i64 [ %i.aka, %bb.en ], [ %.pre.i476, %.noexc478 ]
  %i.akh = load ptr, ptr %3, align 8, !tbaa !89
  store i64 %.pre-phi.i475, ptr %i.agd, align 8, !tbaa !99
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 %i.akg
  store i8 48, ptr %i.aki, align 1, !tbaa !73
  br label %.loopexit

bb.eq:                                            ; preds = %bb.eo
  %i.akj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.er:                                            ; preds = %bb.em
  %i.akk = load i32, ptr %4, align 4, !tbaa !119
  %i.akl = add nsw i32 %i.akk, 1
  store i32 %i.akl, ptr %4, align 4, !tbaa !119
  br label %.loopexit

bb.es:                                            ; preds = %_ZN3fmt3v126detail11add_compareERKNS1_6bigintES4_S4_.exit474
  %i.akm = add nsw i32 %i.age, 1
  br label %.thread552

.thread552:                                       ; preds = %bb.eg, %bb.ea, %bb.es, %bb.ei
  %.076 = phi i32 [ %i.akm, %bb.es ], [ %i.age, %bb.ei ], [ %i.age, %bb.ea ], [ %i.age, %bb.eg ]
  %i.akn = trunc i32 %.076 to i8
  %i.ako = add i8 %i.akn, 48
  %i.akp = load ptr, ptr %3, align 8, !tbaa !89
  %10 = zext nneg i32 %i.acl to i64
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 %10
  store i8 %i.ako, ptr %i.akq, align 1, !tbaa !73
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.thread552, %bb.ep, %bb.er, %.critedge, %bb.ds
  %i.akr = load ptr, ptr %8, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.akr, %i.s
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail6bigintD2Ev.exit, label %bb.et

bb.et:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.akr) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit

_ZN3fmt3v126detail6bigintD2Ev.exit:               ; preds = %.loopexit, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.aks = load ptr, ptr %7, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i480 = icmp eq ptr %i.aks, %i.n
  br i1 %.not.i.i.i480, label %_ZN3fmt3v126detail6bigintD2Ev.exit481, label %bb.eu

bb.eu:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit
  call void @free(ptr noundef %i.aks) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit481

_ZN3fmt3v126detail6bigintD2Ev.exit481:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.akt = load ptr, ptr %6, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i482 = icmp eq ptr %i.akt, %i.i
  br i1 %.not.i.i.i482, label %_ZN3fmt3v126detail6bigintD2Ev.exit483, label %bb.ev

bb.ev:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit481
  call void @free(ptr noundef %i.akt) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit483

_ZN3fmt3v126detail6bigintD2Ev.exit483:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit481, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.aku = load ptr, ptr %5, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i484 = icmp eq ptr %i.aku, %i.d
  br i1 %.not.i.i.i484, label %_ZN3fmt3v126detail6bigintD2Ev.exit485, label %bb.ew

bb.ew:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit483
  call void @free(ptr noundef %i.aku) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit485

_ZN3fmt3v126detail6bigintD2Ev.exit485:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit483, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

.body:                                            ; preds = %.loopexit566, %.loopexit.split-lp, %bb.bm, %bb.bq, %bb.dq, %bb.dz, %bb.ci, %bb.ch, %bb.eq, %bb.ek
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %i.akj, %bb.eq ], [ %i.sv, %bb.bm ], [ %i.afj, %bb.dq ], [ %i.ahs, %bb.dz ], [ %i.tc, %bb.bq ], [ %i.wo, %bb.ch ], [ %i.wp, %bb.ci ], [ %i.ajr, %bb.ek ], [ %lpad.loopexit, %.loopexit566 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.akv = load ptr, ptr %8, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i486 = icmp eq ptr %i.akv, %i.s
  br i1 %.not.i.i.i486, label %_ZN3fmt3v126detail6bigintD2Ev.exit487, label %bb.ex

bb.ex:                                            ; preds = %.body
  call void @free(ptr noundef %i.akv) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit487

_ZN3fmt3v126detail6bigintD2Ev.exit487:            ; preds = %bb.ex, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.akw = load ptr, ptr %7, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i488 = icmp eq ptr %i.akw, %i.n
  br i1 %.not.i.i.i488, label %_ZN3fmt3v126detail6bigintD2Ev.exit489, label %bb.ey

bb.ey:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit487
  call void @free(ptr noundef %i.akw) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit489

_ZN3fmt3v126detail6bigintD2Ev.exit489:            ; preds = %bb.ey, %_ZN3fmt3v126detail6bigintD2Ev.exit487
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.akx = load ptr, ptr %6, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %i.akx, %i.i
  br i1 %.not.i.i.i490, label %_ZN3fmt3v126detail6bigintD2Ev.exit491, label %bb.ez

bb.ez:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit489
  call void @free(ptr noundef %i.akx) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit491

_ZN3fmt3v126detail6bigintD2Ev.exit491:            ; preds = %bb.ez, %_ZN3fmt3v126detail6bigintD2Ev.exit489
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.aky = load ptr, ptr %5, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i492 = icmp eq ptr %i.aky, %i.d
  br i1 %.not.i.i.i492, label %_ZN3fmt3v126detail6bigintD2Ev.exit493, label %bb.fa

bb.fa:                                            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit491
  call void @free(ptr noundef %i.aky) #30
  br label %_ZN3fmt3v126detail6bigintD2Ev.exit493

_ZN3fmt3v126detail6bigintD2Ev.exit493:            ; preds = %_ZN3fmt3v126detail6bigintD2Ev.exit491, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %.pn105.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(164) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !201
  store i32 1, ptr %i.b, align 4, !tbaa !119
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !202
  %.not8.i.i.not = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.not, label %bb.c, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !200
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef 1), !inline_history !636
  %.pre.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !202
  %i.g = icmp ne i64 %.pre.i.i.i.i, 0
  %i.h = zext i1 %i.g to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit:          ; preds = %bb.b, %bb.c
  %i.i = phi i64 [ 1, %bb.b ], [ %i.h, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !206
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.k, align 8, !tbaa !205
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.m = lshr exact i32 -2147483648, %i.l
  %i.n = load ptr, ptr %0, align 8, !tbaa !201
  store i32 5, ptr %i.n, align 4, !tbaa !119
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !202
  %.not8.i.i14.not = icmp eq i64 %i.p, 0
  br i1 %.not8.i.i14.not, label %bb.e, label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !200
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef 1), !inline_history !636
  %.pre.i.i.i.i15 = load i64, ptr %i.o, align 8, !tbaa !202
  %i.s = icmp ne i64 %.pre.i.i.i.i15, 0
  %i.t = zext i1 %i.s to i64
  br label %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16

_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16:        ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ 1, %bb.d ], [ %i.t, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !206
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !205
  %.019 = ashr i32 %i.m, 1                        ; 2 uses
  %.not20 = icmp eq i32 %.019, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.021 = phi i32 [ %.019, %.lr.ph ], [ %.0, %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit ] ; 2 uses
  tail call void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(164) %0)
  %i.y = and i32 %.021, %1
  %.not10 = icmp eq i32 %i.y, 0
  br i1 %.not10, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.v, align 8, !tbaa !206  ; 7 uses
  %.not14.i.i = icmp eq i64 %i.z, 0
  br i1 %.not14.i.i, label %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !tbaa !201   ; 4 uses
  %xtraiter = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.z, -2
  br label %bb.h

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.013.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %._crit_edge.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ay, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod41 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.013.i.i.epil.init ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !119
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, 5
  %i.ag = add nuw nsw i64 %i.af, %.01112.i.i.epil.init ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !119
  %i.ai = lshr i64 %i.ag, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa39 = phi i64 [ %i.ay, %._crit_edge.i.i.unr-lcssa ], [ %i.ai, %.epil.preheader ] ; 2 uses
  %i.aj = trunc nuw nsw i64 %.lcssa39 to i32
  %.not.i.i17 = icmp eq i64 %.lcssa39, 0
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail6bigint12assign_pow10Ei:bb.a
._crit_edge.loopexit:                             ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !205
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.bh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16 ]
  %i.bi = sdiv i32 %1, 32
  %i.bj = add nsw i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.w, align 8, !tbaa !205
  %i.bk = srem i32 %1, 32                         ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !206 ; 7 uses
  %.not19.i = icmp eq i64 %i.bm, 0
  br i1 %.not19.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr %0, align 8, !tbaa !201   ; 3 uses
  %i.bo = sub nsw i32 32, %i.bk                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bm, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert34 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat35 = shufflevector <4 x i32> %broadcast.splatinsert34, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !119 ; 2 uses
  %wide.load36 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !119 ; 2 uses
  %i.br = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bs = lshr <4 x i32> %wide.load36, %broadcast.splat ; 3 uses
  %i.bt = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.br, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bu = shufflevector <4 x i32> %i.br, <4 x i32> %i.bs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bv = shl <4 x i32> %wide.load, %broadcast.splat35
  %i.bw = shl <4 x i32> %wide.load36, %broadcast.splat35
  %i.bx = add <4 x i32> %i.bv, %i.bt
  %i.by = add <4 x i32> %i.bw, %i.bu
  store <4 x i32> %i.bx, ptr %i.bp, align 4, !tbaa !119
  store <4 x i32> %i.by, ptr %i.bq, align 4, !tbaa !119
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !639

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.bs, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01418.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.017.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cc, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i = phi i64 [ %i.cf, %scalar.ph ], [ %.01418.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.cc, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.01418.i ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !119 ; 2 uses
  %i.cc = lshr i32 %i.cb, %i.bo                   ; 2 uses
  %i.cd = shl i32 %i.cb, %i.bk
  %i.ce = add i32 %i.cd, %.017.i
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !119
  %i.cf = add nuw i64 %.01418.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !640

bb.l:                                             ; preds = %._crit_edge.i
  %i.cg = add i64 %i.bm, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.o, align 8, !tbaa !202
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !200
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.cg), !inline_history !641
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !206 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !201
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i: ; preds = %bb.m, %bb.l
  %i.cl = phi ptr [ %i.bn, %bb.l ], [ %.pre23, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %i.cg, %bb.l ], [ %.pre2.i.i, %bb.m ]
  %i.cm = phi i64 [ %i.bm, %bb.l ], [ %.pre.i.i, %bb.m ]
  store i64 %.pre-phi.i.i, ptr %i.v, align 8, !tbaa !206
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %.lcssa, ptr %i.cn, align 4, !tbaa !119
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.k, %._crit_edge, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(164) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !206  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !205  ; 4 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !206  ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !205  ; 3 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %sext.i = shl i64 %i.b, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.r = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.s = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.r)
  %.not35.not.i91 = icmp sgt i64 %i.q, %i.r
  br i1 %.not35.not.i91, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.r
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !25

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %bb.c ]
  %indvars.iv45.i92 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i93, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i92, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !119  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next46.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !119  ; 2 uses
  %.not37.i = icmp eq i32 %i.u, %i.w
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv45.i.lcssa = phi i64 [ %i.s, %bb.c ], [ %indvars.iv.next46.i, %bb.d ]
  %or.cond.not = icmp slt i64 %smin, %indvars.iv45.i.lcssa
  br i1 %or.cond.not, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %select.unfold

.loopexit.i:                                      ; preds = %.lr.ph
  %i.x = icmp ugt i32 %i.u, %i.w
  br i1 %i.x, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

select.unfold:                                    ; preds = %.loopexit.i, %bb.b, %._crit_edge
  %i.y = sub nsw i32 %i.e, %i.k                   ; 4 uses
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.aa = add nsw i32 %i.y, %i.c
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !202 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.f, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !200
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.ab), !inline_history !642
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !202
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ai = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ah) ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !206
  %i.aj = icmp sgt i32 %i.c, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !201 ; 13 uses
  br i1 %i.aj, label %.lr.ph.i, label %.lr.ph.preheader.i.i

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ak = add nsw i32 %i.c, -1                    ; 2 uses
  %i.al = add nuw i32 %i.y, %i.ak
  %i.am = sext i32 %i.al to i64                   ; 5 uses
  %i.an = zext nneg i32 %i.ak to i64              ; 5 uses
  %i.ao = and i64 %i.b, 2147483647                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ao, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ap = sub nsw i64 %i.an, %i.am
  %i.aq = shl nsw i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aq, -1
  %diff.check = icmp ult i64 %i.ar, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.as = sub nsw i64 %i.an, %n.vec
  %i.at = sub nsw i64 %i.am, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = sub i64 %i.an, %index
  %i.av = sub i64 %i.am, %index
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !119
  %wide.load106 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !119
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28
  store <4 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !119
  store <4 x i32> %wide.load106, ptr %i.bb, align 4, !tbaa !119
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !643

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i ], [ %i.as, %middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i ], [ %i.at, %middle.block ] ; 2 uses
  %i.bd = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %scalar.ph.prol ], [ %indvars.iv18.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !119
  %i.bg = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !119
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !644

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph.prol ]
  %i.bh = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bh, label %.lr.ph.preheader.i.i, label %scalar.ph

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bi = xor i32 %i.k, -1
  %i.bj = add i32 %i.e, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.pre.i, i8 0, i64 %i.bm, i1 false), !tbaa !119
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !205
  %i.bo = sub nsw i32 %i.bn, %i.y                 ; 2 uses
  store i32 %i.bo, ptr %i.d, align 8, !tbaa !205
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !206
  br label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !119
  %i.br = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !119
  %i.bs = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !119
  %i.bv = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !119
  %i.bx = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !119
  %i.ca = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !119
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !119
  %i.ce = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cf = getelementptr i8, ptr %i.ce, i64 -12
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !119
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %.lr.ph.preheader.i.i, label %scalar.ph, !llvm.loop !645

_ZN3fmt3v126detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %.lr.ph.preheader.i.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %.lr.ph.preheader.i.i ]
  %i.cg = phi i32 [ %i.e, %select.unfold ], [ %i.bo, %.lr.ph.preheader.i.i ]
  %i.ch = phi i64 [ %i.b, %select.unfold ], [ %i.ai, %.lr.ph.preheader.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31: ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit
  %i.ck = phi i32 [ %i.cg, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ex, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.cl = phi i64 [ %.pre, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ez, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 5 uses
  %i.cm = phi i64 [ %i.ch, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.eu, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ev, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.cn = trunc i64 %i.cm to i32
  %.not21.i = icmp eq i64 %i.cl, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.co = load i32, ptr %i.j, align 8, !tbaa !205
  %i.cp = sub i32 %i.co, %i.ck
  %i.cq = load ptr, ptr %1, align 8, !tbaa !201   ; 3 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !201   ; 4 uses
  %i.cs = sext i32 %i.cp to i64                   ; 2 uses
  %xtraiter121 = and i64 %i.cl, 1
  %i.ct = icmp eq i64 %i.cl, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.cl, -2
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.cs, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ea, %._crit_edge.i.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dz, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod125 = trunc i64 %i.cl to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i.epil.init
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !119
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !119
  %i.cy = zext i32 %i.cx to i64
  %i.cz = zext i32 %i.cv to i64
  %i.da = add nuw nsw i64 %.01822.i.epil.init, %i.cz
  %i.db = sub nsw i64 %i.cy, %i.da                ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  store i32 %i.dc, ptr %i.cw, align 4, !tbaa !119
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.dx, %._crit_edge.i.unr-lcssa ], [ %i.db, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.dd = icmp sgt i64 %.lcssa, -1
  br i1 %i.dd, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.cs, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.024.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ea, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dz, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !119
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !119
  %i.di = zext i32 %i.dh to i64
  %i.dj = zext i32 %i.df to i64
  %i.dk = add nuw nsw i64 %.01822.i, %i.dj
  %i.dl = sub nsw i64 %i.di, %i.dk                ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.dg, align 4, !tbaa !119
  %i.dn = lshr i64 %i.dl, 63
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !119
  %i.dr = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv.i15
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !119
  %i.du = zext i32 %i.dt to i64
  %i.dv = zext i32 %i.dq to i64
  %i.dw = add nuw nsw i64 %i.dn, %i.dv
  %i.dx = sub nsw i64 %i.du, %i.dw                ; 3 uses
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !119
  %i.dz = lshr i64 %i.dx, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
end_hunk_3

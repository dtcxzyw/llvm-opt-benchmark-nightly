inline.NumInlined: 79
inline.NumDeleted: 46
begin_hunk_0_@main:bb.a
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %bb.aq
  %.not195 = phi i1 [ true, %bb.aq ], [ false, %.outer.outer.backedge ]
  %.0162.ph.ph = phi i32 [ 0, %bb.aq ], [ %.0162.ph, %.outer.outer.backedge ]
  %.0154.ph.ph = phi i32 [ 255, %bb.aq ], [ %.0154.ph, %.outer.outer.backedge ]
  %.0148.ph.ph = phi i32 [ 0, %bb.aq ], [ %.0148.ph, %.outer.outer.backedge ]
  %.0147.ph.ph = phi i32 [ 0, %bb.aq ], [ %i.ek, %.outer.outer.backedge ]
  %.0143.ph.ph = phi i8 [ 0, %bb.aq ], [ %.0143.ph, %.outer.outer.backedge ]
  %.0137.ph.ph = phi i8 [ 0, %bb.aq ], [ %.0137.ph, %.outer.outer.backedge ]
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.bw
  %.0162.ph = phi i32 [ %.4166, %bb.bw ], [ %.0162.ph.ph, %.outer.outer ] ; 4 uses
  %.0154.ph = phi i32 [ %.5159, %bb.bw ], [ %.0154.ph.ph, %.outer.outer ] ; 4 uses
  %.0148.ph = phi i32 [ %.3151, %bb.bw ], [ %.0148.ph.ph, %.outer.outer ] ; 3 uses
  %.0147.ph = phi i32 [ %i.ek, %bb.bw ], [ %.0147.ph.ph, %.outer.outer ]
  %.0143.ph = phi i8 [ %.1144, %bb.bw ], [ %.0143.ph.ph, %.outer.outer ] ; 3 uses
  %.0137.ph = phi i8 [ %.3140, %bb.bw ], [ %.0137.ph.ph, %.outer.outer ] ; 3 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.outer, %bb.aw
  %.0147 = phi i32 [ %i.ek, %bb.aw ], [ %.0147.ph, %.outer ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.de = invoke ptr @ucbuf_readline(ptr noundef %i.bw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bs)
          to label %.noexc unwind label %.loopexit.split-lp281 ; 6 uses

.noexc:                                           ; preds = %bb.ar
  %i.df = icmp ne ptr %i.de, null
  %i.dg = load i32, ptr %i.bs, align 8            ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 1
  %or.cond276 = select i1 %i.df, i1 %i.dh, i1 false
  br i1 %or.cond276, label %bb.as, label %bb.ca

bb.as:                                            ; preds = %.noexc
  %i.di = load i32, ptr %i.a, align 4, !tbaa !26
  %i.dj = invoke ptr @u_memchr_78(ptr noundef nonnull %i.de, i16 noundef zeroext 35, i32 noundef %i.di)
          to label %.noexc240 unwind label %.loopexit.split-lp281 ; 2 uses

.noexc240:                                        ; preds = %bb.as
  %.not24.i = icmp eq ptr %i.dj, null
  br i1 %.not24.i, label %thread-pre-split.i, label %bb.at

bb.at:                                            ; preds = %.noexc240
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.de to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = lshr exact i64 %i.dm, 1
  %i.do = trunc i64 %i.dn to i32                  ; 2 uses
  store i32 %i.do, ptr %i.a, align 4, !tbaa !26
  br label %.critedge.i

thread-pre-split.i:                               ; preds = %.noexc240
  %.pr.i = load i32, ptr %i.a, align 4, !tbaa !26 ; 3 uses
  %i.dp = icmp sgt i32 %.pr.i, 0
  br i1 %i.dp, label %.lr.ph.preheader.i, label %.critedge4.i

.lr.ph.preheader.i:                               ; preds = %thread-pre-split.i
  %i.dq = zext nneg i32 %.pr.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.dq, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.critedge2.i ] ; 4 uses
  %i.dr = getelementptr [2 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.ds = getelementptr i8, ptr %i.dr, i64 -2
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !34
  switch i16 %i.dt, label %.critedge.i.loopexit [
    i16 13, label %.critedge2.i
    i16 10, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next.i to i32
  store i32 %indvars, ptr %i.a, align 4, !tbaa !26
  %i.du = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.du, label %.lr.ph.i, label %.critedge4.i, !llvm.loop !36

.critedge.i.loopexit:                             ; preds = %.lr.ph.i
  %indvars454 = trunc i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.at
  %.pr26.i = phi i32 [ %i.do, %bb.at ], [ %indvars454, %.critedge.i.loopexit ] ; 3 uses
  %i.dv = icmp sgt i32 %.pr26.i, 0
  br i1 %i.dv, label %.lr.ph28.i, label %.critedge4.i

.lr.ph28.i:                                       ; preds = %.critedge.i, %bb.au
  %i.dw = phi i32 [ %i.ed, %bb.au ], [ %.pr26.i, %.critedge.i ]
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr [2 x i8], ptr %i.de, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 -2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !34
  %i.eb = zext i16 %i.ea to i32
  %i.ec = invoke signext i8 @u_isspace_78(i32 noundef %i.eb)
          to label %.noexc241 unwind label %.loopexit280

.noexc241:                                        ; preds = %.lr.ph28.i
  %.not25.i = icmp eq i8 %i.ec, 0
  %.pre.pre.i = load i32, ptr %i.a, align 4, !tbaa !26 ; 3 uses
  br i1 %.not25.i, label %.critedge4.i, label %bb.au

bb.au:                                            ; preds = %.noexc241
  %i.ed = add nsw i32 %.pre.pre.i, -1             ; 3 uses
  store i32 %i.ed, ptr %i.a, align 4, !tbaa !26
  %i.ee = icmp sgt i32 %.pre.pre.i, 1
  br i1 %i.ee, label %.lr.ph28.i, label %.critedge4.i, !llvm.loop !38

.critedge4.i:                                     ; preds = %.critedge2.i, %bb.au, %.noexc241, %.critedge.i, %thread-pre-split.i
  %i.ef = phi i32 [ %.pre.pre.i, %.noexc241 ], [ %.pr26.i, %.critedge.i ], [ %.pr.i, %thread-pre-split.i ], [ %i.ed, %bb.au ], [ 0, %.critedge2.i ]
  store ptr %i.de, ptr %2, align 8, !tbaa !39
  %i.eg = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 noundef signext 0, ptr noundef nonnull align 8 %2, i32 noundef %i.ef)
          to label %bb.aw unwind label %bb.av     ; 0 uses

bb.av:                                            ; preds = %.critedge4.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = load ptr, ptr %2, align 8, !tbaa !39
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ei) #16, !srcloc !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.body242

bb.aw:                                            ; preds = %.critedge4.i
  %i.ej = load ptr, ptr %2, align 8, !tbaa !39
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ej) #16, !srcloc !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ek = add nsw i32 %.0147, 1                   ; 7 uses
  %i.el = load i16, ptr %i.cz, align 8, !tbaa !33 ; 4 uses
  %i.em = icmp ugt i16 %i.el, 31
  br i1 %i.em, label %.preheader279, label %bb.ar, !llvm.loop !43

.preheader279:                                    ; preds = %bb.aw
  %i.en = icmp slt i16 %i.el, 0
  %i.eo = ashr i16 %i.el, 5
  %i.ep = sext i16 %i.eo to i32
  %i.eq = load i32, ptr %i.db, align 4
  %i.er = select i1 %i.en, i32 %i.eq, i32 %i.ep
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %_ZNK6icu_7813UnicodeStringixEi.exit, label %.critedge.thread

.loopexit280:                                     ; preds = %.lr.ph28.i
  %lpad.loopexit282 = landingpad { ptr, i32 }
          cleanup
  br label %.body242

.loopexit.split-lp281:                            ; preds = %bb.ar, %bb.as
  %lpad.loopexit.split-lp283 = landingpad { ptr, i32 }
          cleanup
  br label %.body242

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %.preheader279, %bb.ay
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ay ], [ 0, %.preheader279 ] ; 4 uses
  %i.et = phi i16 [ %i.fc, %bb.ay ], [ %i.el, %.preheader279 ]
  %.0177368 = phi i32 [ %i.fb, %bb.ay ], [ 0, %.preheader279 ]
  %i.eu = and i16 %i.et, 2
  %.not.i.i.i = icmp eq i16 %i.eu, 0
  %i.ev = load ptr, ptr %i.dd, align 8
  %i.ew = select i1 %.not.i.i.i, ptr %i.ev, ptr %i.dc
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %indvars.iv
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !34
  %i.ez = zext i16 %i.ey to i32
  %i.fa = invoke signext i8 @u_isspace_78(i32 noundef %i.ez)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %.not213 = icmp eq i8 %i.fa, 0
  br i1 %.not213, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fb = add nuw nsw i32 %.0177368, 1            ; 2 uses
  %i.fc = load i16, ptr %i.cz, align 8, !tbaa !33 ; 3 uses
  %i.fd = icmp slt i16 %i.fc, 0
  %i.fe = ashr i16 %i.fc, 5
  %i.ff = sext i16 %i.fe to i32
  %i.fg = load i32, ptr %i.db, align 4
  %i.fh = select i1 %i.fd, i32 %i.fg, i32 %i.ff
  %i.fi = sext i32 %i.fh to i64
  %i.fj = icmp slt i64 %indvars.iv.next, %i.fi
  br i1 %i.fj, label %_ZNK6icu_7813UnicodeStringixEi.exit, label %.preheader, !llvm.loop !44

bb.az:                                            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body242

.critedge:                                        ; preds = %bb.ax
  %i.fl = trunc nuw nsw i64 %indvars.iv to i32
  %i.fm = icmp eq i64 %indvars.iv, 0
  br i1 %i.fm, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.ay, %.critedge
  %.0177.lcssa479 = phi i32 [ %i.fl, %.critedge ], [ %i.fb, %bb.ay ] ; 11 uses
  %i.fn = load i16, ptr %i.cz, align 8, !tbaa !33 ; 3 uses
  %i.fo = icmp slt i16 %i.fn, 0
  %i.fp = ashr i16 %i.fn, 5
  %i.fq = sext i16 %i.fp to i32
  %i.fr = load i32, ptr %i.db, align 4
  %i.fs = select i1 %i.fo, i32 %i.fr, i32 %i.fq
  %i.ft = icmp slt i32 %.0177.lcssa479, %i.fs
  br i1 %i.ft, label %.lr.ph.preheader, label %.critedge3

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.fu = zext nneg i32 %.0177.lcssa479 to i64
  br label %bb.ba

.critedge.thread:                                 ; preds = %.preheader279, %.critedge
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.fw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fv, ptr noundef nonnull @.str.14, i32 noundef %i.ek) #14 ; 0 uses
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %.critedge.thread, %bb.bo, %.thread262
  br label %.outer.outer, !llvm.loop !43

bb.ba:                                            ; preds = %.lr.ph.preheader, %bb.bc
  %indvars.iv455 = phi i64 [ %i.fu, %.lr.ph.preheader ], [ %indvars.iv.next456, %bb.bc ] ; 3 uses
  %9 = phi i16 [ %i.fn, %.lr.ph.preheader ], [ %i.ge, %bb.bc ]
  %.0178371 = phi i32 [ %.0177.lcssa479, %.lr.ph.preheader ], [ %i.gd, %bb.bc ]
  %i.fx = and i16 %9, 2
  %.not.i.i.i245 = icmp eq i16 %i.fx, 0
  %i.fy = load ptr, ptr %i.dd, align 8
  %i.fz = select i1 %.not.i.i.i245, ptr %i.fy, ptr %i.dc
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %indvars.iv455
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !34
  %i.gc = zext i16 %i.gb to i32
  %10 = invoke signext i8 @u_isspace_78(i32 noundef %i.gc)
          to label %bb.bb unwind label %.loopexit

bb.bb:                                            ; preds = %bb.ba
  %.not214 = icmp eq i8 %10, 0
  br i1 %.not214, label %.critedge3.loopexit.split.loop.exit567, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %i.gd = add nuw nsw i32 %.0178371, 1            ; 2 uses
  %i.ge = load i16, ptr %i.cz, align 8, !tbaa !33 ; 3 uses
  %i.gf = icmp slt i16 %i.ge, 0
  %i.gg = ashr i16 %i.ge, 5
  %i.gh = sext i16 %i.gg to i32
  %i.gi = load i32, ptr %i.db, align 4
  %i.gj = select i1 %i.gf, i32 %i.gi, i32 %i.gh
  %i.gk = trunc nuw i64 %indvars.iv.next456 to i32
  %i.gl = icmp sgt i32 %i.gj, %i.gk
  br i1 %i.gl, label %bb.ba, label %.critedge3, !llvm.loop !45

.loopexit:                                        ; preds = %bb.ba
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body242

.loopexit.split-lp:                               ; preds = %bb.bx, %bb.by
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body242

.critedge3.loopexit.split.loop.exit567:           ; preds = %bb.bb
  %i.gm = trunc nuw nsw i64 %indvars.iv455 to i32
  br label %.critedge3

.critedge3:                                       ; preds = %bb.bc, %.critedge3.loopexit.split.loop.exit567, %.preheader
  %.0178.lcssa = phi i32 [ %.0177.lcssa479, %.preheader ], [ %i.gm, %.critedge3.loopexit.split.loop.exit567 ], [ %i.gd, %bb.bc ] ; 3 uses
  %i.gn = icmp samesign ult i32 %.0177.lcssa479, %.0178.lcssa
  br i1 %i.gn, label %bb.bd, label %bb.bq

bb.bd:                                            ; preds = %.critedge3
  %i.go = load i16, ptr %i.cz, align 8, !tbaa !33 ; 2 uses
  %i.gp = icmp slt i16 %i.go, 0
  %i.gq = ashr i16 %i.go, 5
  %i.gr = sext i16 %i.gq to i32
  %i.gs = load i32, ptr %i.db, align 4
  %i.gt = select i1 %i.gp, i32 %i.gs, i32 %i.gr
  %i.gu = sub nsw i32 %i.gt, %.0178.lcssa         ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 15
  br i1 %i.gv, label %.thread262, label %bb.be

.thread262:                                       ; preds = %bb.bd
  %i.gw = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gw, ptr noundef nonnull @.str.15, i32 noundef %i.ek) #14 ; 0 uses
  br label %.outer.outer.backedge

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.gy = invoke noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef %.0178.lcssa, i32 noundef %i.gu, ptr noundef nonnull %i.c, i32 noundef 16, i32 noundef 0)
          to label %bb.bf unwind label %bb.bi     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.gz = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 0) #16 ; 2 uses
  %i.ha = load ptr, ptr %i.d, align 8, !tbaa !9   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.c
  br i1 %i.hb, label %bb.bo, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hc = load i8, ptr %i.ha, align 1, !tbaa !33
  %.not217 = icmp eq i8 %i.hc, 0
  br i1 %.not217, label %bb.bh, label %bb.bo

bb.bh:                                            ; preds = %bb.bg
  %i.hd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #19
  %i.he = trunc i64 %i.hd to i32
  %i.hf = icmp ne i32 %i.gu, %i.he
  %i.hg = icmp ugt i64 %i.gz, 4294967295
  %or.cond5 = select i1 %i.hf, i1 true, i1 %i.hg
  br i1 %or.cond5, label %bb.bo, label %bb.bj

bb.bi:                                            ; preds = %bb.be
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %.0177.lcssa479)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.hi = trunc nuw i64 %i.gz to i32
  invoke void @_ZN8DataDict7addWordERKN6icu_7813UnicodeStringEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %i.hi, ptr noundef nonnull align 4 dereferenceable(4) %i.bs)
          to label %.thread269 unwind label %bb.bm

.thread269:                                       ; preds = %bb.bk
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %spec.select = call i32 @llvm.smin.i32(i32 %.0177.lcssa479, i32 %.0154.ph)
  %.1163 = call i32 @llvm.smax.i32(i32 %.0177.lcssa479, i32 %.0162.ph)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.bw

bb.bl:                                            ; preds = %bb.bj
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #16
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn218 = phi { ptr, i32 } [ %i.hk, %bb.bm ], [ %i.hj, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bf, %bb.bg, %bb.bh
  %i.hl = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.hm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hl, ptr noundef nonnull @.str.16, i32 noundef %i.ek) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.outer.outer.backedge

bb.bp:                                            ; preds = %bb.bn, %bb.bi
  %.pn218.pn = phi { ptr, i32 } [ %.pn218, %bb.bn ], [ %i.hh, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.body242

bb.bq:                                            ; preds = %.critedge3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %.0177.lcssa479)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN8DataDict7addWordERKN6icu_7813UnicodeStringEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.bs)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %bb.br
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %spec.select234 = call i32 @llvm.smin.i32(i32 %.0177.lcssa479, i32 %.0154.ph)
  %spec.select235 = call i32 @llvm.smax.i32(i32 %.0177.lcssa479, i32 %.0162.ph)
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bq
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #16
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn215 = phi { ptr, i32 } [ %i.ho, %bb.bu ], [ %i.hn, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.body242

bb.bw:                                            ; preds = %bb.bs, %.thread269
  %.4166 = phi i32 [ %.1163, %.thread269 ], [ %spec.select235, %bb.bs ]
  %.5159 = phi i32 [ %spec.select, %.thread269 ], [ %spec.select234, %bb.bs ]
  %.1144 = phi i8 [ %.0143.ph, %.thread269 ], [ 1, %bb.bs ]
  %.3140 = phi i8 [ 1, %.thread269 ], [ %.0137.ph, %bb.bs ]
  %.3151 = add nsw i32 %.0148.ph, 1
  %i.hp = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.hq = icmp slt i32 %i.hp, 1
  br i1 %i.hq, label %.outer, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hr = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.hs = invoke noundef ptr @_ZNK6icu_789ErrorCode9errorNameEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.by unwind label %.loopexit.split-lp

bb.by:                                            ; preds = %bb.bx
  %i.ht = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hr, ptr noundef nonnull @.str.17, ptr noundef %i.hs, i32 noundef %i.ek) #14 ; 0 uses
  %i.hu = invoke noundef i32 @_ZN6icu_789ErrorCode5resetEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.bz unwind label %.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  call void @exit(i32 noundef %i.hu) #17
  unreachable

bb.ca:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %.not189, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %.0147, i32 noundef %.0148.ph, i32 noundef %.0154.ph, i32 noundef %.0162.ph) ; 0 uses
  %.pre = load i32, ptr %i.bs, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.hw = phi i32 [ %.pre, %bb.cb ], [ %i.dg, %bb.ca ]
  %i.hx = icmp sgt i32 %i.hw, 0
  %or.cond278 = select i1 %.not195, i1 true, i1 %i.hx
  br i1 %or.cond278, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i32 1, ptr %i.bs, align 8, !tbaa !19
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.hy = icmp ne i8 %.0137.ph, 0                 ; 3 uses
  %i.hz = icmp ne i8 %.0143.ph, 0
  %or.cond7 = select i1 %i.hy, i1 %i.hz, i1 false
  br i1 %or.cond7, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ia = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ib = call i64 @fwrite(ptr nonnull @.str.19, i64 58, i64 1, ptr %i.ia) #18 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
end_hunk_0

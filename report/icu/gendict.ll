Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/gendict?download=true
inline.NumInlined: 79
inline.NumDeleted: 46
begin_hunk_0_@main:bb.a
  %i.aw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 194), align 2, !tbaa !14
  %.not187 = icmp eq i8 %i.aw, 0
  %spec.store.select = select i1 %.not187, ptr null, ptr @.str.2
  %i.ax = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 234), align 2, !tbaa !14
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 274), align 2, !tbaa !14 ; 5 uses
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bb = tail call i64 @fwrite(ptr nonnull @.str.3, i64 53, i64 1, ptr %i.ba) #18 ; 0 uses
  %i.bc = load ptr, ptr @stderr, align 8
  %i.bd = load ptr, ptr @_ZL8progName, align 8, !tbaa !9
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.50, ptr noundef %i.bd) #14 ; 0 uses
  %i.bf = load ptr, ptr @stderr, align 8
  %i.bg = tail call ptr @u_getDataDirectory_78()
  %i.bh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.51, ptr noundef %i.bg) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i8 %i.ay to i32
  %i.bj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 314), align 2, !tbaa !14
  %.not188 = icmp eq i8 %i.ay, %i.bj
  br i1 %.not188, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bl = tail call i64 @fwrite(ptr nonnull @.str.4, i64 96, i64 1, ptr %i.bk) #18 ; 0 uses
  %i.bm = load ptr, ptr @stderr, align 8
  %i.bn = load ptr, ptr @_ZL8progName, align 8, !tbaa !9
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str.50, ptr noundef %i.bn) #14 ; 0 uses
  %i.bp = load ptr, ptr @stderr, align 8
  %i.bq = tail call ptr @u_getDataDirectory_78()
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.51, ptr noundef %i.bq) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 20 uses
  store i32 0, ptr %i.bs, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7816IcuToolErrorCodeE, i64 16), ptr %3, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @.str.5, ptr %i.bt, align 8, !tbaa !24
  %i.bu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 354), align 2, !tbaa !14
  %.not189 = icmp eq i8 %i.ae, 0                  ; 7 uses
  br i1 %.not189, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %i.as) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr @.str.7, ptr %i.b, align 8, !tbaa !9
  %i.bw = invoke ptr @ucbuf_open(ptr noundef %i.as, ptr noundef nonnull %i.b, i8 noundef signext 1, i8 noundef signext 0, ptr noundef nonnull %i.bs)
          to label %bb.p unwind label %bb.t       ; 5 uses

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.by = icmp slt i32 %i.bx, 1
  br i1 %i.by, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ca = invoke noundef ptr @_ZNK6icu_789ErrorCode9errorNameEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.8, ptr noundef %i.ca) #14 ; 0 uses
  %i.cc = invoke noundef i32 @_ZN6icu_789ErrorCode5resetEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @exit(i32 noundef %i.cc) #17
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_788internal16LocalOpenPointerI8UCHARBUFXadL_Z11ucbuf_closeEEED2Ev.exit256

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.v:                                             ; preds = %bb.p
  br i1 %.not189, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not191 = icmp eq i8 %i.ay, 0
  %i.cf = select i1 %.not191, ptr @.str.11, ptr @.str.10
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %i.cf) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 20, i1 false)
  %i.cj = load i32, ptr @_ZN6icu_7814DictionaryData14TRANSFORM_NONEE, align 4, !tbaa !26
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !27
  %.not.i = icmp eq i8 %i.ay, 0                   ; 6 uses
  br i1 %.not.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 56) #16 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6icu_7816BytesTrieBuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 4 dereferenceable(4) %i.bs)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  store ptr %i.ck, ptr %4, align 8, !tbaa !31
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ac:                                            ; preds = %bb.x
  %i.cn = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 112) #16 ; 4 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN6icu_7817UCharsTrieBuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.cn, ptr noundef nonnull align 4 dereferenceable(4) %i.bs)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !32
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ab
  %.sink.i = phi ptr [ %i.cn, %bb.af ], [ %i.ck, %bb.ab ]
  %.pn.i = phi { ptr, i32 } [ %i.cp, %bb.af ], [ %i.cm, %bb.ab ]
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %.sink.i) #16
  br label %.body

bb.ah:                                            ; preds = %bb.aa, %bb.ae
  %i.cq = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.cr = icmp slt i32 %i.cq, 1
  br i1 %i.cr, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cs = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ct = invoke noundef ptr @_ZNK6icu_789ErrorCode9errorNameEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cs, ptr noundef nonnull @.str.12, ptr noundef %i.ct) #14 ; 0 uses
  %i.cv = invoke noundef i32 @_ZN6icu_789ErrorCode5resetEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @exit(i32 noundef %i.cv) #17
  unreachable

bb.al:                                            ; preds = %bb.an, %bb.aj, %bb.ai
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.am:                                            ; preds = %bb.ah
  %i.cx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 314), align 2, !tbaa !14
  %.not193 = icmp eq i8 %i.cx, 0
  br i1 %.not193, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 288), align 16, !tbaa !18
  invoke void @_ZN8DataDict12setTransformEPKc(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.cy)
          to label %bb.ao unwind label %bb.al

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !22
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i16 2, ptr %i.cz, align 8, !tbaa !33
  br i1 %.not189, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.da = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.13) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.bv, %bb.aq
  %.0150.ph.ph = phi i8 [ %.3153, %bb.bv ], [ 0, %bb.aq ] ; 2 uses
  %.0146.ph.ph = phi i8 [ %.1147, %bb.bv ], [ 0, %bb.aq ] ; 2 uses
  %.0154.ph.ph = phi i32 [ %i.ek, %bb.bv ], [ 0, %bb.aq ]
  %.0148.ph.ph = phi i32 [ %.3151, %bb.bv ], [ 0, %bb.aq ] ; 2 uses
  %.0147.ph.ph = phi i32 [ %.5137, %bb.bv ], [ 255, %bb.aq ] ; 3 uses
  %.0126.ph.ph = phi i32 [ %.4130, %bb.bv ], [ 0, %bb.aq ] ; 3 uses
  %.0137.ph.ph = phi i8 [ %.0137.ph, %bb.bv ], [ 1, %bb.aq ]
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.outer.outer
  %.0147.ph = phi i32 [ %.0154.ph.ph, %.outer.outer ], [ %i.ek, %.outer.backedge ]
  %.0137.ph = phi i8 [ %.0137.ph.ph, %.outer.outer ], [ 0, %.outer.backedge ] ; 2 uses
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
  br i1 %or.cond276, label %bb.as, label %bb.bz

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
  %.0177.lcssa477 = phi i32 [ %i.fl, %.critedge ], [ %i.fb, %bb.ay ] ; 11 uses
  %i.fn = load i16, ptr %i.cz, align 8, !tbaa !33 ; 3 uses
  %i.fo = icmp slt i16 %i.fn, 0
  %i.fp = ashr i16 %i.fn, 5
  %i.fq = sext i16 %i.fp to i32
  %i.fr = load i32, ptr %i.db, align 4
  %i.fs = select i1 %i.fo, i32 %i.fr, i32 %i.fq
  %i.ft = icmp slt i32 %.0177.lcssa477, %i.fs
  br i1 %i.ft, label %_ZNK6icu_7813UnicodeStringixEi.exit246.preheader, label %.critedge3

_ZNK6icu_7813UnicodeStringixEi.exit246.preheader: ; preds = %.preheader
  %i.fu = zext nneg i32 %.0177.lcssa477 to i64
  br label %_ZNK6icu_7813UnicodeStringixEi.exit246

.critedge.thread:                                 ; preds = %.preheader279, %.critedge
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.fw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fv, ptr noundef nonnull @.str.14, i32 noundef %i.ek) #14 ; 0 uses
  br label %.outer.backedge

_ZNK6icu_7813UnicodeStringixEi.exit246:           ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit246.preheader, %bb.bb
  %indvars.iv455 = phi i64 [ %i.fu, %_ZNK6icu_7813UnicodeStringixEi.exit246.preheader ], [ %indvars.iv.next456, %bb.bb ] ; 3 uses
  %i.fx = phi i16 [ %i.fn, %_ZNK6icu_7813UnicodeStringixEi.exit246.preheader ], [ %i.gg, %bb.bb ]
  %.0178371 = phi i32 [ %.0177.lcssa477, %_ZNK6icu_7813UnicodeStringixEi.exit246.preheader ], [ %i.gf, %bb.bb ]
  %i.fy = and i16 %i.fx, 2
  %.not.i.i.i245 = icmp eq i16 %i.fy, 0
  %i.fz = load ptr, ptr %i.dd, align 8
  %i.ga = select i1 %.not.i.i.i245, ptr %i.fz, ptr %i.dc
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv455
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !34
  %i.gd = zext i16 %i.gc to i32
  %i.ge = invoke signext i8 @u_isspace_78(i32 noundef %i.gd)
          to label %bb.ba unwind label %.loopexit

bb.ba:                                            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit246
  %.not214 = icmp eq i8 %i.ge, 0
  br i1 %.not214, label %.critedge3.loopexit.split.loop.exit565, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %i.gf = add nuw nsw i32 %.0178371, 1            ; 2 uses
  %i.gg = load i16, ptr %i.cz, align 8, !tbaa !33 ; 3 uses
  %i.gh = icmp slt i16 %i.gg, 0
  %i.gi = ashr i16 %i.gg, 5
  %i.gj = sext i16 %i.gi to i32
  %i.gk = load i32, ptr %i.db, align 4
  %i.gl = select i1 %i.gh, i32 %i.gk, i32 %i.gj
  %i.gm = trunc nuw i64 %indvars.iv.next456 to i32
  %i.gn = icmp sgt i32 %i.gl, %i.gm
  br i1 %i.gn, label %_ZNK6icu_7813UnicodeStringixEi.exit246, label %.critedge3, !llvm.loop !45

.loopexit:                                        ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit246
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body242

.loopexit.split-lp:                               ; preds = %bb.bw, %bb.bx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body242

.critedge3.loopexit.split.loop.exit565:           ; preds = %bb.ba
  %i.go = trunc nuw nsw i64 %indvars.iv455 to i32
  br label %.critedge3

.critedge3:                                       ; preds = %bb.bb, %.critedge3.loopexit.split.loop.exit565, %.preheader
  %.0178.lcssa = phi i32 [ %.0177.lcssa477, %.preheader ], [ %i.go, %.critedge3.loopexit.split.loop.exit565 ], [ %i.gf, %bb.bb ] ; 3 uses
  %i.gp = icmp samesign ult i32 %.0177.lcssa477, %.0178.lcssa
  br i1 %i.gp, label %bb.bc, label %bb.bp

bb.bc:                                            ; preds = %.critedge3
  %i.gq = load i16, ptr %i.cz, align 8, !tbaa !33 ; 2 uses
  %i.gr = icmp slt i16 %i.gq, 0
  %i.gs = ashr i16 %i.gq, 5
  %i.gt = sext i16 %i.gs to i32
  %i.gu = load i32, ptr %i.db, align 4
  %i.gv = select i1 %i.gr, i32 %i.gu, i32 %i.gt
  %i.gw = sub nsw i32 %i.gv, %.0178.lcssa         ; 3 uses
  %i.gx = icmp sgt i32 %i.gw, 15
  br i1 %i.gx, label %.thread262, label %bb.bd

.thread262:                                       ; preds = %bb.bc
  %i.gy = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gy, ptr noundef nonnull @.str.15, i32 noundef %i.ek) #14 ; 0 uses
  br label %.outer.backedge

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ha = invoke noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef %.0178.lcssa, i32 noundef %i.gw, ptr noundef nonnull %i.c, i32 noundef 16, i32 noundef 0)
          to label %bb.be unwind label %bb.bh     ; 0 uses

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.hb = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 0) #16 ; 2 uses
  %i.hc = load ptr, ptr %i.d, align 8, !tbaa !9   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.c
  br i1 %i.hd, label %bb.bn, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.he = load i8, ptr %i.hc, align 1, !tbaa !33
  %.not217 = icmp eq i8 %i.he, 0
  br i1 %.not217, label %bb.bg, label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  %i.hf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #19
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = icmp ne i32 %i.gw, %i.hg
  %i.hi = icmp ugt i64 %i.hb, 4294967295
  %or.cond5 = select i1 %i.hh, i1 true, i1 %i.hi
  br i1 %or.cond5, label %bb.bn, label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %.0177.lcssa477)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hk = trunc nuw i64 %i.hb to i32
  invoke void @_ZN8DataDict7addWordERKN6icu_7813UnicodeStringEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %i.hk, ptr noundef nonnull align 4 dereferenceable(4) %i.bs)
          to label %.thread269 unwind label %bb.bl

.thread269:                                       ; preds = %bb.bj
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %spec.select = call i32 @llvm.smin.i32(i32 %.0177.lcssa477, i32 %.0147.ph.ph)
  %.1163 = call i32 @llvm.smax.i32(i32 %.0177.lcssa477, i32 %.0126.ph.ph)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.bv

bb.bk:                                            ; preds = %bb.bi
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn218 = phi { ptr, i32 } [ %i.hm, %bb.bl ], [ %i.hl, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.bo

bb.bn:                                            ; preds = %bb.be, %bb.bf, %bb.bg
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ho = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hn, ptr noundef nonnull @.str.16, i32 noundef %i.ek) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bn, %.thread262, %.critedge.thread
  br label %.outer, !llvm.loop !43

bb.bo:                                            ; preds = %bb.bm, %bb.bh
  %.pn218.pn = phi { ptr, i32 } [ %.pn218, %bb.bm ], [ %i.hj, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %.body242

bb.bp:                                            ; preds = %.critedge3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %.0177.lcssa477)
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN8DataDict7addWordERKN6icu_7813UnicodeStringEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.bs)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %spec.select234 = call i32 @llvm.smin.i32(i32 %.0177.lcssa477, i32 %.0147.ph.ph)
  %spec.select235 = call i32 @llvm.smax.i32(i32 %.0177.lcssa477, i32 %.0126.ph.ph)
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bp
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bq
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #16
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn215 = phi { ptr, i32 } [ %i.hq, %bb.bt ], [ %i.hp, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.body242

bb.bv:                                            ; preds = %bb.br, %.thread269
  %.3153 = phi i8 [ 1, %.thread269 ], [ %.0150.ph.ph, %bb.br ]
  %.1147 = phi i8 [ %.0146.ph.ph, %.thread269 ], [ 1, %bb.br ]
  %.5137 = phi i32 [ %spec.select, %.thread269 ], [ %spec.select234, %bb.br ]
  %.4130 = phi i32 [ %.1163, %.thread269 ], [ %spec.select235, %bb.br ]
  %.3151 = add nuw nsw i32 %.0148.ph.ph, 1
  %i.hr = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.hs = icmp slt i32 %i.hr, 1
  br i1 %i.hs, label %.outer.outer, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ht = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.hu = invoke noundef ptr @_ZNK6icu_789ErrorCode9errorNameEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.bx unwind label %.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  %i.hv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ht, ptr noundef nonnull @.str.17, ptr noundef %i.hu, i32 noundef %i.ek) #14 ; 0 uses
  %i.hw = invoke noundef i32 @_ZN6icu_789ErrorCode5resetEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.by unwind label %.loopexit.split-lp

bb.by:                                            ; preds = %bb.bx
  call void @exit(i32 noundef %i.hw) #17
  unreachable

bb.bz:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %.not189, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %.0147, i32 noundef %.0148.ph.ph, i32 noundef %.0147.ph.ph, i32 noundef %.0126.ph.ph) ; 0 uses
  %.pre = load i32, ptr %i.bs, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.hy = phi i32 [ %.pre, %bb.ca ], [ %i.dg, %bb.bz ]
  %.not195 = icmp ne i8 %.0137.ph, 0
  %i.hz = icmp sgt i32 %i.hy, 0
  %or.cond278 = select i1 %.not195, i1 true, i1 %i.hz
  br i1 %or.cond278, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 1, ptr %i.bs, align 8, !tbaa !19
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.ia = icmp ne i8 %.0150.ph.ph, 0              ; 3 uses
  %i.ib = icmp ne i8 %.0146.ph.ph, 0
  %or.cond7 = select i1 %i.ia, i1 %i.ib, i1 false
  br i1 %or.cond7, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ic = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.id = call i64 @fwrite(ptr nonnull @.str.19, i64 58, i64 1, ptr %i.ic) #18 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  br i1 %.not189, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ie = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.bi) ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8, !tbaa !22
  %i.if = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i16 2, ptr %i.if, align 8, !tbaa !33
  br i1 %.not.i, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ig = load ptr, ptr %4, align 8, !tbaa !31
  %i.ih = invoke { ptr, i32 } @_ZN6icu_7816BytesTrieBuilder16buildStringPieceE22UStringTrieBuildOptionR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56) %i.ig, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.bs)
          to label %_ZN8DataDict14serializeBytesER10UErrorCode.exit unwind label %bb.cj ; 2 uses

_ZN8DataDict14serializeBytesER10UErrorCode.exit:  ; preds = %bb.ci
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ih, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ih, 1
  br label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ck:                                            ; preds = %bb.ch
  %i.ij = load ptr, ptr %i.ch, align 8, !tbaa !32
  %i.ik = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7817UCharsTrieBuilder18buildUnicodeStringE22UStringTrieBuildOptionRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.ij, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.bs)
          to label %bb.cl unwind label %bb.cp     ; 0 uses

bb.cl:                                            ; preds = %bb.ck
  %i.il = load i16, ptr %i.if, align 8, !tbaa !33 ; 4 uses
  %i.im = icmp slt i16 %i.il, 0
  %i.in = ashr i16 %i.il, 5
  %i.io = sext i16 %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = select i1 %i.im, i32 %i.iq, i32 %i.io
  %i.is = shl nsw i32 %i.ir, 1                    ; 3 uses
  %i.it = and i16 %i.il, 17
  %.not.i249 = icmp eq i16 %i.it, 0
  br i1 %.not.i249, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.iu = and i16 %i.il, 2
  %.not2.i = icmp eq i16 %i.iu, 0
  br i1 %.not2.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 10
  br label %bb.cq

bb.co:                                            ; preds = %bb.cm
  %i.iw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !33
  br label %bb.cq

bb.cp:                                            ; preds = %.noexc251, %bb.ec, %bb.ck, %bb.cs, %bb.cr
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.cq:                                            ; preds = %_ZN8DataDict14serializeBytesER10UErrorCode.exit, %bb.cl, %bb.cn, %bb.co
  %.0170 = phi i32 [ %.fca.1.extract, %_ZN8DataDict14serializeBytesER10UErrorCode.exit ], [ %i.is, %bb.cl ], [ %i.is, %bb.cn ], [ %i.is, %bb.co ] ; 4 uses
  %.0169 = phi ptr [ %.fca.0.extract, %_ZN8DataDict14serializeBytesER10UErrorCode.exit ], [ null, %bb.cl ], [ %i.iv, %bb.cn ], [ %i.ix, %bb.co ] ; 2 uses
  %i.iz = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.ja = icmp slt i32 %i.iz, 1
  br i1 %i.ja, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jb = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.jc = invoke noundef ptr @_ZNK6icu_789ErrorCode9errorNameEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.cs unwind label %bb.cp

bb.cs:                                            ; preds = %bb.cr
  %i.jd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jb, ptr noundef nonnull @.str.21, ptr noundef %i.jc) #14 ; 0 uses
  %i.je = invoke noundef i32 @_ZN6icu_789ErrorCode5resetEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.ct unwind label %bb.cp

bb.ct:                                            ; preds = %bb.cs
  call void @exit(i32 noundef %i.je) #17
  unreachable

bb.cu:                                            ; preds = %bb.cq
  br i1 %.not189, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.jf = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.22) ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.not199 = icmp eq i8 %i.bu, 0
  br i1 %.not199, label %bb.de, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jg = call noalias ptr @fopen(ptr noundef %i.aq, ptr noundef nonnull @.str.23) ; 7 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.cy, label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.ji = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.jj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ji, ptr noundef nonnull @.str.24, ptr noundef %i.aq) #14 ; 0 uses
  %i.jk = invoke noundef i32 @_ZN6icu_789ErrorCode5resetEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void @exit(i32 noundef %i.jk) #17
  unreachable

bb.da:                                            ; preds = %bb.cy
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.db:                                            ; preds = %bb.cx
  %i.jm = select i1 %.not.i, ptr @.str.27, ptr @.str.26
  %i.jn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.jg, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.jm) #16 ; 0 uses
  %i.jo = select i1 %i.ia, ptr @.str.29, ptr @.str.30
  %i.jp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.jg, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.jo) #16 ; 0 uses
  %i.jq = load i32, ptr %i.ci, align 4, !tbaa !27
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !46
  %i.jt = or i32 %i.js, %i.jq                     ; 2 uses
  %i.ju = load i32, ptr @_ZN6icu_7814DictionaryData19TRANSFORM_TYPE_MASKE, align 4, !tbaa !26
  %i.jv = and i32 %i.jt, %i.ju
  %i.jw = load i32, ptr @_ZN6icu_7814DictionaryData21TRANSFORM_TYPE_OFFSETE, align 4, !tbaa !26
  %i.jx = icmp eq i32 %i.jv, %i.jw
  %i.jy = load i32, ptr @_ZN6icu_7814DictionaryData21TRANSFORM_OFFSET_MASKE, align 4, !tbaa !26
  %i.jz = and i32 %i.jy, %i.jt
  %i.ka = select i1 %i.jx, ptr @.str.32, ptr @.str.33
  %i.kb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.jg, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.ka) #16 ; 0 uses
  %i.kc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.jg, ptr noundef nonnull @.str.34, i32 noundef %i.jz) #16 ; 0 uses
  %i.kd = select i1 %.not.i, i32 16, i32 8
  %i.ke = sdiv i32 %.0170, 2
  %i.kf = select i1 %.not.i, i32 %i.ke, i32 %.0170
  invoke void @usrc_writeArray(ptr noundef nonnull %i.jg, ptr noundef nonnull @.str.35, ptr noundef %.0169, i32 noundef %i.kd, i32 noundef %i.kf, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37)
          to label %bb.dc unwind label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.kg = call i32 @fclose(ptr noundef nonnull %i.jg) ; 0 uses
  br label %bb.eb

bb.dd:                                            ; preds = %bb.db
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.de:                                            ; preds = %bb.cw
  %i.ki = invoke ptr @udata_create(ptr noundef null, ptr noundef null, ptr noundef %i.aq, ptr noundef nonnull @_ZL8dataInfo, ptr noundef %spec.store.select, ptr noundef nonnull %i.bs)
          to label %bb.df unwind label %bb.dj     ; 3 uses

bb.df:                                            ; preds = %bb.de
  %i.kj = load i32, ptr %i.bs, align 8, !tbaa !19
  %i.kk = icmp slt i32 %i.kj, 1
  br i1 %i.kk, label %bb.dk, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kl = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.km = invoke noundef ptr @_ZNK6icu_789ErrorCode9errorNameEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.dh unwind label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %i.kn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kl, ptr noundef nonnull @.str.38, ptr noundef %i.aq, ptr noundef %i.km) #14 ; 0 uses
  %i.ko = invoke noundef i32 @_ZN6icu_789ErrorCode5resetEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void @exit(i32 noundef %i.ko) #17
  unreachable

bb.dj:                                            ; preds = %bb.dh, %bb.dg, %bb.de
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.dk:                                            ; preds = %bb.df
  br i1 %.not189, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.kq = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.39) ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull align 16 dereferenceable(32) @__const.main.indexes, i64 32, i1 false)
  %i.kr = add nsw i32 %.0170, 32                  ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !26
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unistr_case?download=true
inline.NumInlined: 51
inline.NumDeleted: 30
begin_hunk_0_@_ZN6icu_7813UnicodeString7caseMapEijPNS_13BreakIteratorEPFiijS2_PDsiPKDsiPNS_5EditsER10UErrorCodeE:bb.a
_ZNK6icu_7813UnicodeString16isBufferWritableEv.exit.thread99: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.r, align 8, !tbaa !8
  br label %bb.d

_ZNK6icu_7813UnicodeString16isBufferWritableEv.exit: ; preds = %bb.c
  %i.s = tail call noundef i32 @_ZNK6icu_7813UnicodeString8refCountEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.not = icmp eq i32 %i.s, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.t, align 8, !tbaa !8
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString16isBufferWritableEv.exit.thread99, %_ZNK6icu_7813UnicodeString16isBufferWritableEv.exit
  %i.u = icmp slt i32 %i.n, 55
  br i1 %i.u, label %bb.f, label %bb.w

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString16isBufferWritableEv.exit.thread, %_ZNK6icu_7813UnicodeString16isBufferWritableEv.exit
  %i.v = icmp slt i32 %i.n, 27
  br i1 %i.v, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not6997 = phi i1 [ true, %bb.e ], [ false, %bb.d ]
  %i.w = load i16, ptr %i.e, align 8, !tbaa !8
  %i.x = and i16 %i.w, 2
  %.not.i89 = icmp eq i16 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %.not.i89, ptr %i.aa, ptr %i.y ; 2 uses
  %i.ac = invoke ptr @u_memcpy_78(ptr noundef nonnull %i.a, ptr noundef %i.ab, i32 noundef %i.n)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %bb.f
  br i1 %.not6997, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i16, ptr %i.e, align 8, !tbaa !8
  %i.ae = and i16 %i.ad, 2
  %.not.i90 = icmp eq i16 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = select i1 %.not.i90, i32 %i.ag, i32 27
  br label %bb.l

bb.i:                                             ; preds = %bb.v, %bb.p, %bb.n, %bb.j, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.j:                                             ; preds = %bb.g
  %i.aj = invoke noundef signext i8 @_ZN6icu_7813UnicodeString18cloneArrayIfNeededEiiaPPia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 27, i32 noundef 27, i8 noundef signext 0, ptr noundef null, i8 noundef signext 0)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %.not76 = icmp eq i8 %i.aj, 0
  br i1 %.not76, label %.critedge87, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.056 = phi ptr [ %i.ab, %bb.h ], [ %i.y, %bb.k ]
  %.050 = phi i32 [ %i.ah, %bb.h ], [ 27, %bb.k ]
  %.not77 = icmp eq ptr %3, null
  br i1 %.not77, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.a, ptr %6, align 8, !tbaa !19
  %i.ak = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 noundef signext 0, ptr noundef nonnull align 8 %6, i32 noundef %i.n)
          to label %bb.n unwind label %bb.o       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %6, align 8, !tbaa !19
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.al) #6, !srcloc !20
  %i.am = load ptr, ptr %3, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.p unwind label %bb.i

bb.o:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %6, align 8, !tbaa !19
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.aq) #6, !srcloc !20
  br label %bb.ay

bb.p:                                             ; preds = %bb.n, %bb.l
  %i.ar = invoke noundef i32 %4(i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %.056, i32 noundef %.050, ptr noundef nonnull %i.a, i32 noundef %i.n, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.q unwind label %bb.i       ; 4 uses

bb.q:                                             ; preds = %bb.p
  %i.as = load i32, ptr %i.b, align 4, !tbaa !10  ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = icmp slt i32 %i.ar, 1024
  %i.av = load i16, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = and i16 %i.av, 31
  %.tr.i.i = trunc i32 %i.ar to i16
  %i.ax = shl i16 %.tr.i.i, 5
  %i.ay = or disjoint i16 %i.aw, %i.ax
  store i16 %i.ay, ptr %i.e, align 8, !tbaa !8
  br label %.critedge87

bb.t:                                             ; preds = %bb.r
  %i.az = or i16 %i.av, -32
  store i16 %i.az, ptr %i.e, align 8, !tbaa !8
  store i32 %i.ar, ptr %i.l, align 4, !tbaa !8
  br label %.critedge87

bb.u:                                             ; preds = %bb.q
  %i.ba = icmp eq i32 %i.as, 15
  br i1 %i.ba, label %bb.an, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %.critedge87 unwind label %bb.i

bb.w:                                             ; preds = %bb.e, %bb.d
  %i.bb = load i16, ptr %i.e, align 8, !tbaa !8
  %i.bc = and i16 %i.bb, 2
  %.not.i91 = icmp eq i16 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = select i1 %.not.i91, ptr %i.bf, ptr %i.bd ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 28
  store ptr %i.bh, ptr %7, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 100, ptr %i.bi, align 8, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %.not70 = icmp eq ptr %3, null
  br i1 %.not70, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.bg, ptr %8, align 8, !tbaa !19
  %i.bk = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 noundef signext 0, ptr noundef nonnull align 8 %8, i32 noundef %i.n)
          to label %bb.y unwind label %bb.aa      ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bl = load ptr, ptr %8, align 8, !tbaa !19
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bl) #6, !srcloc !20
  %i.bm = load ptr, ptr %3, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %.invoke, %bb.ae, %bb.ab, %bb.y
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aa:                                            ; preds = %bb.x
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %8, align 8, !tbaa !19
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.br) #6, !srcloc !20
  br label %bb.am

bb.ab:                                            ; preds = %bb.y, %bb.w
  %i.bs = or i32 %2, 16384
  %i.bt = invoke noundef i32 %4(i32 noundef %1, i32 noundef %i.bs, ptr noundef %3, ptr noundef nonnull %i.c, i32 noundef 200, ptr noundef %i.bg, i32 noundef %i.n, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.ac unwind label %bb.z      ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bu = load i32, ptr %i.b, align 4, !tbaa !10  ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !25 ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bz = add nuw nsw i32 %i.bx, %i.n             ; 2 uses
  %i.ca = invoke noundef signext i8 @_ZN6icu_7813UnicodeString18cloneArrayIfNeededEiiaPPia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.bz, i32 noundef %i.bz, i8 noundef signext 1, ptr noundef null, i8 noundef signext 0)
          to label %bb.af unwind label %bb.z

bb.af:                                            ; preds = %bb.ae
  %.not72 = icmp eq i8 %i.ca, 0
  br i1 %.not72, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %i.cb = load ptr, ptr %7, align 8, !tbaa !23, !noalias !26
  %i.cc = load i32, ptr %i.bj, align 4, !tbaa !27, !noalias !26
  invoke void @_ZN6icu_785Edits8IteratorC1EPKtiaa(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.cb, i32 noundef %i.cc, i8 noundef signext 1, i8 noundef signext 1)
          to label %_ZNK6icu_785Edits24getCoarseChangesIteratorEv.exit.preheader unwind label %.loopexit.split-lp

_ZNK6icu_785Edits24getCoarseChangesIteratorEv.exit.preheader: ; preds = %bb.ag
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 28
  br label %_ZNK6icu_785Edits24getCoarseChangesIteratorEv.exit

_ZNK6icu_785Edits24getCoarseChangesIteratorEv.exit: ; preds = %_ZNK6icu_785Edits24getCoarseChangesIteratorEv.exit.preheader, %bb.aj
  %i.ci = load i8, ptr %i.cd, align 4, !tbaa !29
  %i.cj = invoke noundef signext i8 @_ZN6icu_785Edits8Iterator4nextEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 noundef signext %i.ci, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN6icu_785Edits8Iterator4nextER10UErrorCode.exit unwind label %.loopexit

_ZN6icu_785Edits8Iterator4nextER10UErrorCode.exit: ; preds = %_ZNK6icu_785Edits24getCoarseChangesIteratorEv.exit
  %.not73 = icmp eq i8 %i.cj, 0
  br i1 %.not73, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_ZN6icu_785Edits8Iterator4nextER10UErrorCode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  %i.ck = load i32, ptr %i.b, align 4, !tbaa !10
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %.critedge, label %.invoke

.loopexit:                                        ; preds = %bb.aj, %_ZNK6icu_785Edits24getCoarseChangesIteratorEv.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %bb.am

bb.aj:                                            ; preds = %_ZN6icu_785Edits8Iterator4nextER10UErrorCode.exit
  %i.cm = load i32, ptr %i.ce, align 8, !tbaa !30
  %i.cn = load i32, ptr %i.cf, align 8, !tbaa !31
  %i.co = load i32, ptr %i.cg, align 4, !tbaa !32
  %i.cp = load i32, ptr %i.ch, align 4, !tbaa !33
  %i.cq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.cm, i32 noundef %i.cn, ptr noundef nonnull %i.c, i32 noundef %i.co, i32 noundef %i.cp)
          to label %_ZNK6icu_785Edits24getCoarseChangesIteratorEv.exit unwind label %.loopexit, !llvm.loop !13 ; 0 uses

bb.ak:                                            ; preds = %bb.ac
  %i.cr = icmp eq i32 %i.bu, 15
  br i1 %i.cr, label %bb.al, label %.invoke

bb.al:                                            ; preds = %bb.ak
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !25
  %i.cu = add nsw i32 %i.ct, %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @_ZN6icu_785EditsD1Ev(ptr noundef nonnull align 8 dead_on_return(228) dereferenceable(232) %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.an

.invoke:                                          ; preds = %bb.ak, %bb.ah
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %.critedge unwind label %bb.z

bb.am:                                            ; preds = %bb.ai, %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ai ], [ %i.bp, %bb.z ], [ %i.bq, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @_ZN6icu_785EditsD1Ev(ptr noundef nonnull align 8 dead_on_return(228) dereferenceable(232) %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.ay

bb.an:                                            ; preds = %bb.u, %bb.al
  %.060 = phi ptr [ %i.bg, %bb.al ], [ %i.a, %bb.u ]
  %.259 = phi i32 [ %i.cu, %bb.al ], [ %i.ar, %bb.u ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store ptr null, ptr %i.d, align 8, !tbaa !36
  %i.cv = invoke noundef signext i8 @_ZN6icu_7813UnicodeString18cloneArrayIfNeededEiiaPPia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.259, i32 noundef %.259, i8 noundef signext 0, ptr noundef nonnull %i.d, i8 noundef signext 1)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.not81 = icmp eq i8 %i.cv, 0
  br i1 %.not81, label %_ZN6icu_7813UnicodeString9setLengthEi.exit95, label %bb.aq

bb.ap:                                            ; preds = %bb.ax, %bb.as, %bb.aq, %bb.an
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.ay

bb.aq:                                            ; preds = %bb.ao
  store i32 0, ptr %i.b, align 4, !tbaa !10
  %i.cx = load i16, ptr %i.e, align 8, !tbaa !8
  %i.cy = and i16 %i.cx, 2
  %.not.i92 = icmp eq i16 %i.cy, 0                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = select i1 %.not.i92, ptr %i.db, ptr %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = select i1 %.not.i92, i32 %i.de, i32 27
  %i.dg = invoke noundef i32 %4(i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %i.dc, i32 noundef %i.df, ptr noundef %.060, i32 noundef %i.n, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.ar unwind label %bb.ap     ; 3 uses

bb.ar:                                            ; preds = %bb.aq
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %.not82 = icmp eq ptr %i.dh, null
  br i1 %.not82, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @uprv_free_78(ptr noundef nonnull %i.dh)
          to label %bb.at unwind label %bb.ap

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.di = load i32, ptr %i.b, align 4, !tbaa !10
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dk = icmp slt i32 %i.dg, 1024
  %i.dl = load i16, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  br i1 %i.dk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dm = and i16 %i.dl, 31
  %.tr.i.i94 = trunc i32 %i.dg to i16
  %i.dn = shl i16 %.tr.i.i94, 5
  %i.do = or disjoint i16 %i.dm, %i.dn
  store i16 %i.do, ptr %i.e, align 8, !tbaa !8
  br label %_ZN6icu_7813UnicodeString9setLengthEi.exit95

bb.aw:                                            ; preds = %bb.au
  %i.dp = or i16 %i.dl, -32
  store i16 %i.dp, ptr %i.e, align 8, !tbaa !8
  store i32 %i.dg, ptr %i.l, align 4, !tbaa !8
  br label %_ZN6icu_7813UnicodeString9setLengthEi.exit95

bb.ax:                                            ; preds = %bb.at
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN6icu_7813UnicodeString9setLengthEi.exit95 unwind label %bb.ap

_ZN6icu_7813UnicodeString9setLengthEi.exit95:     ; preds = %bb.aw, %bb.av, %bb.ax, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %.critedge87

.critedge:                                        ; preds = %.invoke, %bb.ah, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @_ZN6icu_785EditsD1Ev(ptr noundef nonnull align 8 dead_on_return(228) dereferenceable(232) %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %.critedge87

.critedge87:                                      ; preds = %bb.t, %bb.s, %bb.k, %bb.v, %.critedge, %_ZN6icu_7813UnicodeString9setLengthEi.exit95
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.az

bb.ay:                                            ; preds = %bb.i, %bb.o, %bb.ap, %bb.am
  %.pn84 = phi { ptr, i32 } [ %i.cw, %bb.ap ], [ %.pn, %bb.am ], [ %i.ai, %bb.i ], [ %i.ap, %bb.o ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  resume { ptr, i32 } %.pn84

bb.az:                                            ; preds = %bb.a, %.critedge87
  ret ptr %0
}

declare i32 @__gxx_personality_v0(...)

declare ptr @u_memcpy_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef signext i8 @_ZN6icu_7813UnicodeString18cloneArrayIfNeededEiiaPPia(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i8 noundef signext, ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_785EditsD1Ev(ptr noundef nonnull align 8 dead_on_return(228) dereferenceable(232)) unnamed_addr #3

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8foldCaseEj(ptr noundef nonnull returned align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7caseMapEijPNS_13BreakIteratorEPFiijS2_PDsiPKDsiPNS_5EditsER10UErrorCodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 1, i32 noundef %1, ptr noundef null, ptr noundef nonnull @ustrcase_internalFold_78) ; 0 uses
  ret ptr %0
}

declare i32 @ustrcase_internalFold_78(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: mustprogress uwtable
define noundef i32 @uhash_hashCaselessUnicodeString_78(ptr %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.b = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7caseMapEijPNS_13BreakIteratorEPFiijS2_PDsiPKDsiPNS_5EditsER10UErrorCodeE(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef nonnull @ustrcase_internalFold_78)
          to label %_ZN6icu_7813UnicodeString8foldCaseEj.exit unwind label %bb.c ; 0 uses

_ZN6icu_7813UnicodeString8foldCaseEj.exit:        ; preds = %bb.b
  %i.c = invoke noundef i32 @_ZNK6icu_7813UnicodeString10doHashCodeEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZNK6icu_7813UnicodeString8hashCodeEv.exit unwind label %bb.c

_ZNK6icu_7813UnicodeString8hashCodeEv.exit:       ; preds = %_ZN6icu_7813UnicodeString8foldCaseEj.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.d

bb.c:                                             ; preds = %_ZN6icu_7813UnicodeString8foldCaseEj.exit, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a, %_ZNK6icu_7813UnicodeString8hashCodeEv.exit
  %.0 = phi i32 [ %i.c, %_ZNK6icu_7813UnicodeString8hashCodeEv.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define signext range(i8 0, 2) i8 @uhash_compareCaselessUnicodeString_78(ptr %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !8    ; 5 uses
  %i.g = icmp slt i16 %i.f, 0
  %i.h = ashr i16 %i.f, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.g, i32 %i.k, i32 %i.i       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i16, ptr %i.m, align 8, !tbaa !8    ; 4 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.o, i32 %i.s, i32 %i.q       ; 4 uses
  %i.u = and i16 %i.n, 1
  %.not.i = icmp eq i16 %i.u, 0
  br i1 %.not.i, label %.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = trunc i16 %i.f to i8
  %i.w = and i8 %i.v, 1
  br label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.x = and i16 %i.f, 1
  %.not.i8.i = icmp eq i16 %i.x, 0
  br i1 %.not.i8.i, label %.sink.split.i.i.i, label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit

.sink.split.i.i.i:                                ; preds = %.sink.split.i.i
  %i.y = and i16 %i.n, 2
  %.not.i.i = icmp eq i16 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ac = select i1 %.not.i.i, ptr %i.aa, ptr %i.ab ; 2 uses
  %i.ad = icmp slt i32 %i.t, 0
  %spec.select14.i = tail call i32 @llvm.smin.i32(i32 %i.t, i32 0) ; 2 uses
  %i.ae = sub nsw i32 %i.t, %spec.select14.i
  %spec.select15.i = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.ae)
  %spec.select38.i.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 0)
  %.0.i.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0) ; 2 uses
  %i.af = icmp eq ptr %i.ac, null                 ; 2 uses
  %i.ag = or i1 %i.ad, %i.af
  %spec.select32.i.i = select i1 %i.ag, i32 0, i32 %spec.select15.i ; 3 uses
  %i.ah = and i16 %i.f, 2
  %.not.i.i.i = icmp eq i16 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = select i1 %.not.i.i.i, ptr %i.ak, ptr %i.ai
  %i.am = sext i32 %spec.select38.i.i to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = sext i32 %spec.select14.i to i64
  %i.ap = select i1 %i.af, i64 0, i64 %i.ao       ; 2 uses
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ap ; 3 uses
  %.not29.i.i = icmp eq ptr %i.an, %i.aq
  br i1 %.not29.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.sink.split.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.ar = call i32 @u_strcmpFold_78(ptr noundef %i.an, i32 noundef %.0.i.i, ptr noundef %i.aq, i32 noundef %spec.select32.i.i, i32 noundef 65536, ptr noundef nonnull %i.a)
  %.not31.i.i = icmp eq i32 %i.ar, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %.not31.i.i, label %bb.i, label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit

bb.f:                                             ; preds = %.sink.split.i.i.i
  %i.as = icmp slt i32 %spec.select32.i.i, 0
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aq, i64 %i.ap
  %i.au = tail call i32 @u_strlen_78(ptr noundef %i.at)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.122.i.i = phi i32 [ %i.au, %bb.g ], [ %spec.select32.i.i, %bb.f ]
  %.not30.i.i = icmp eq i32 %.0.i.i, %.122.i.i
  br i1 %.not30.i.i, label %bb.i, label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit

bb.i:                                             ; preds = %bb.h, %bb.e
  br label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit

_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit: ; preds = %bb.i, %bb.e, %.sink.split.i.i, %bb.d, %bb.h, %bb.b, %bb.a
  %.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.a ], [ %i.w, %bb.d ], [ 0, %.sink.split.i.i ], [ 1, %bb.i ], [ 0, %bb.e ], [ 0, %bb.h ]
  ret i8 %.0
}

declare noundef i32 @_ZNK6icu_7813UnicodeString8refCountEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN6icu_785Edits8IteratorC1EPKtiaa(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, i8 noundef signext, i8 noundef signext) unnamed_addr #2

declare noundef signext i8 @_ZN6icu_785Edits8Iterator4nextEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_7813UnicodeString10doHashCodeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"_ZTS10UErrorCode", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, i1 false, !"_ZNK6icu_785Edits24getCoarseChangesIteratorEv"}
!12 = distinct !{!12, !11, !"_ZNK6icu_785Edits24getCoarseChangesIteratorEv: argument 0"}
!13 = distinct !{!13, !34}
!14 = !{!"vtable pointer", !3, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!"p1 char16_t", !16, i64 0}
!18 = !{!"_ZTSN6icu_7814ConstChar16PtrE", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{i64 2148934679}
!21 = !{!"p1 short", !16, i64 0}
!22 = !{!"_ZTSN6icu_785EditsE", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !9, i64 24, !4, i64 28}
!23 = !{!22, !21, i64 0}
!24 = !{!22, !5, i64 8}
!25 = !{!22, !5, i64 16}
!26 = !{!12}
!27 = !{!22, !5, i64 12}
!28 = !{!"_ZTSN6icu_785Edits8IteratorE", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !4, i64 20, !4, i64 21, !4, i64 22, !4, i64 23, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40}
!29 = !{!28, !4, i64 20}
!30 = !{!28, !5, i64 40}
!31 = !{!28, !5, i64 24}
!32 = !{!28, !5, i64 36}
!33 = !{!28, !5, i64 28}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"p1 int", !16, i64 0}
!36 = !{!35, !35, i64 0}
end_hunk_0

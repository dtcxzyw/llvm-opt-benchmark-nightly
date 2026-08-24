Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/n2builder?download=true
inline.NumInlined: 194
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6icu_7822Normalizer2DataBuilder11processDataEv:bb.a
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 468 ; 4 uses
  store i32 1114112, ptr %i.hs, align 4, !tbaa !57
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 4 uses
  store i32 1114112, ptr %i.ht, align 8, !tbaa !57
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 508 ; 4 uses
  store i32 1114112, ptr %i.hu, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i32 0, ptr %i.hv, align 8, !tbaa !74
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7816IcuToolErrorCodeE, i64 16), ptr %5, align 8, !tbaa !35
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.14, ptr %i.hw, align 8, !tbaa !76
  %i.hx = invoke ptr @umutablecptrie_open_78(i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.hv)
          to label %bb.ad unwind label %bb.aj     ; 7 uses

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNK6icu_789ErrorCode13assertSuccessEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.hy, align 8, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812Norm16WriterE, i64 16), ptr %6, align 8, !tbaa !35
  %i.hz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %i.hz, align 8, !tbaa !91
  %i.ia = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.hx, ptr %i.ia, align 8, !tbaa !93
  invoke void @_ZN6icu_785Norms10enumRangesERNS0_10EnumeratorE(ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6icu_7822Normalizer2DataBuilder13setHangulDataEP14UMutableCPTrie(ptr noundef nonnull align 8 dereferenceable(868) %1, ptr noundef %i.hx)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ib = invoke i32 @umutablecptrie_getRange_78(ptr noundef %i.hx, i32 noundef 55296, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b)
          to label %bb.ah unwind label %bb.al     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.ic = load i32, ptr %i.b, align 4, !tbaa !57  ; 2 uses
  %i.id = icmp ne i32 %i.ic, 1
  %i.ie = icmp slt i32 %i.ib, 57343
  %or.cond = select i1 %i.id, i1 true, i1 %i.ie
  br i1 %or.cond, label %bb.ai, label %.preheader

bb.ai:                                            ; preds = %bb.ah
  %i.if = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.ig = zext i32 %i.ic to i64
  %i.ih = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.if, ptr noundef nonnull @.str.15, i32 noundef %i.ib, i64 noundef %i.ig) #19 ; 0 uses
  call void @exit(i32 noundef 5) #20
  unreachable

bb.aj:                                            ; preds = %bb.ad, %bb.ac
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ak:                                            ; preds = %bb.af, %bb.ae
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.al:                                            ; preds = %bb.ag
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit

.preheader:                                       ; preds = %bb.ah, %.preheader.backedge
  %.069 = phi i32 [ %.170, %.preheader.backedge ], [ 0, %bb.ah ] ; 2 uses
  %.067 = phi i32 [ %.067.be, %.preheader.backedge ], [ 0, %bb.ah ]
  %.065 = phi i32 [ %.166, %.preheader.backedge ], [ 0, %bb.ah ]
  %.064 = phi i32 [ %.064.be, %.preheader.backedge ], [ 65536, %bb.ah ] ; 5 uses
  %i.il = icmp sgt i32 %.064, %.069
  br i1 %i.il, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %.preheader
  %i.im = invoke i32 @umutablecptrie_getRange_78(ptr noundef %i.hx, i32 noundef %.064, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b)
          to label %bb.an unwind label %bb.ap     ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.in = icmp slt i32 %i.im, 0
  br i1 %i.in, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.io = load i32, ptr %i.hs, align 4, !tbaa !57 ; 2 uses
  %i.ip = icmp sgt i32 %i.io, 65535
  br i1 %i.ip, label %bb.ay, label %bb.az

bb.ap:                                            ; preds = %bb.am
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit

bb.aq:                                            ; preds = %bb.an, %.preheader
  %.170 = phi i32 [ %i.im, %bb.an ], [ %.069, %.preheader ] ; 4 uses
  %i.ir = and i32 %.064, 1023
  %i.is = icmp eq i32 %i.ir, 0                    ; 2 uses
  %i.it = load i32, ptr %i.b, align 4, !tbaa !57  ; 4 uses
  %spec.select = call i32 @llvm.umax.i32(i32 %i.it, i32 %.067)
  %.2 = select i1 %i.is, i32 %i.it, i32 %spec.select ; 2 uses
  %i.iu = select i1 %i.is, i32 -1, i32 %.065
  %.166 = and i32 %i.it, %i.iu                    ; 2 uses
  %i.iv = or i32 %.064, 1023                      ; 2 uses
  %.not104 = icmp sgt i32 %i.iv, %.170
  br i1 %.not104, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iw = load i32, ptr %i.em, align 4, !tbaa !57
  %spec.select129 = call i32 @llvm.umin.i32(i32 %.2, i32 %i.iw)
  %i.ix = and i32 %spec.select129, -2
  %i.iy = and i32 %.166, 1
  %i.iz = or disjoint i32 %i.ix, %i.iy            ; 4 uses
  %.not106 = icmp eq i32 %i.iz, 1
  br i1 %.not106, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ja = lshr i32 %.064, 10
  %i.jb = add nuw nsw i32 %i.ja, 55232
  %i.jc = and i32 %i.jb, 65535
  invoke void @umutablecptrie_set_78(ptr noundef %i.hx, i32 noundef %i.jc, i32 noundef %i.iz, ptr noundef nonnull %i.hv)
          to label %._crit_edge unwind label %bb.at

._crit_edge:                                      ; preds = %bb.as
  %.pre = load i32, ptr %i.b, align 4, !tbaa !57
  br label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit

bb.au:                                            ; preds = %._crit_edge, %bb.ar
  %i.je = phi i32 [ %.pre, %._crit_edge ], [ %i.it, %bb.ar ]
  %i.jf = icmp eq i32 %i.je, 1
  br i1 %i.jf, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jg = add nuw nsw i32 %.170, 1
  %i.jh = and i32 %i.jg, 2147482624
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.av, %bb.aw, %bb.ax
  %.067.be = phi i32 [ %.2, %bb.ax ], [ %i.iz, %bb.av ], [ %i.iz, %bb.aw ]
  %.064.be = phi i32 [ %i.jj, %bb.ax ], [ %i.jh, %bb.av ], [ %i.ji, %bb.aw ]
  br label %.preheader, !llvm.loop !95

bb.aw:                                            ; preds = %bb.au
  %i.ji = add nuw nsw i32 %i.iv, 1
  br label %.preheader.backedge

bb.ax:                                            ; preds = %bb.aq
  %i.jj = add nuw nsw i32 %.170, 1
  br label %.preheader.backedge

bb.ay:                                            ; preds = %bb.ao
  %i.jk = lshr i32 %i.io, 10
  %i.jl = add nuw nsw i32 %i.jk, 55232
  %i.jm = and i32 %i.jl, 65535
  store i32 %i.jm, ptr %i.hs, align 4, !tbaa !57
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ao
  %i.jn = load i32, ptr %i.ht, align 8, !tbaa !57 ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, 65535
  br i1 %i.jo, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jp = lshr i32 %i.jn, 10
  %i.jq = add nuw nsw i32 %i.jp, 55232
  %i.jr = and i32 %i.jq, 65535
  store i32 %i.jr, ptr %i.ht, align 8, !tbaa !57
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.js = load i32, ptr %i.hu, align 4, !tbaa !57 ; 2 uses
  %i.jt = icmp sgt i32 %i.js, 65535
  br i1 %i.jt, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ju = lshr i32 %i.js, 10
  %i.jv = add nuw nsw i32 %i.ju, 55232
  %i.jw = and i32 %i.jv, 65535
  store i32 %i.jw, ptr %i.hu, align 4, !tbaa !57
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jx = invoke ptr @umutablecptrie_buildImmutable_78(ptr noundef %i.hx, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.hv)
          to label %bb.be unwind label %bb.bj     ; 5 uses

bb.be:                                            ; preds = %bb.bd
  store ptr %i.jx, ptr %0, align 8, !tbaa !96
  %i.jy = invoke i32 @ucptrie_toBinary_78(ptr noundef %i.jx, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.hv)
          to label %bb.bf unwind label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 4 uses
  store i32 %i.jy, ptr %i.jz, align 8, !tbaa !34
  %i.ka = load i32, ptr %i.hv, align 8, !tbaa !74
  %.not108 = icmp eq i32 %i.ka, 15
  br i1 %.not108, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kb = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.kc = invoke noundef ptr @_ZNK6icu_789ErrorCode9errorNameEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.kd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kb, ptr noundef nonnull @.str.16, ptr noundef %i.kc) #19 ; 0 uses
  %i.ke = invoke noundef i32 @_ZN6icu_789ErrorCode5resetEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  call void @exit(i32 noundef %i.ke) #22
  unreachable

bb.bj:                                            ; preds = %bb.bd
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit

bb.bk:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bh, %bb.bg, %bb.be
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bl:                                            ; preds = %bb.bf
  invoke void @umutablecptrie_close_78(ptr noundef %i.hx)
          to label %bb.bm unwind label %bb.bk

bb.bm:                                            ; preds = %bb.bl
  %i.kh = invoke noundef i32 @_ZN6icu_789ErrorCode5resetEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %bb.bn unwind label %bb.bk     ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.ki = load i32, ptr %i.jz, align 8, !tbaa !34
  %i.kj = sext i32 %i.ki to i64
  %i.kk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kj) #23
          to label %bb.bo unwind label %bb.bk     ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !33
  %7 = load i32, ptr %i.jz, align 8, !tbaa !34
  %i.km = invoke i32 @ucptrie_toBinary_78(ptr noundef %i.jx, ptr noundef nonnull %i.kk, i32 noundef %7, ptr noundef nonnull %i.hv)
          to label %bb.bp unwind label %bb.bk     ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZNK6icu_789ErrorCode13assertSuccessEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %bb.bq unwind label %bb.bk

bb.bq:                                            ; preds = %bb.bp
  store i32 88, ptr %i.ah, align 4, !tbaa !57
  %i.kn = load i32, ptr %i.jz, align 8, !tbaa !34 ; 2 uses
  %i.ko = add nsw i32 %i.kn, 88                   ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 440
  store i32 %i.ko, ptr %i.kp, align 8, !tbaa !57
  %i.kq = load i16, ptr %i.y, align 8, !tbaa !37  ; 2 uses
  %i.kr = icmp slt i16 %i.kq, 0
  %i.ks = ashr i16 %i.kq, 5
  %i.kt = sext i16 %i.ks to i32
  %i.ku = load i32, ptr %i.ad, align 4
  %i.kv = select i1 %i.kr, i32 %i.ku, i32 %i.kt
  %i.kw = shl nsw i32 %i.kv, 1
  %i.kx = add nsw i32 %i.kw, %i.ko                ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 444
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !57
  %i.kz = add i32 %i.kx, 256                      ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.lb = insertelement <4 x i32> poison, i32 %i.kz, i64 0
  %i.lc = shufflevector <4 x i32> %i.lb, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.lc, ptr %i.la, align 8, !tbaa !57
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 464
  store i32 %i.kz, ptr %i.ld, align 8, !tbaa !57
  %i.le = load i8, ptr @_ZN6icu_789beVerboseE, align 1, !tbaa !37
  %.not109 = icmp eq i8 %i.le, 0
  br i1 %.not109, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lf = sext i32 %i.kn to i64
  %i.lg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i64 noundef %i.lf) ; 0 uses
  %i.lh = load i16, ptr %i.y, align 8, !tbaa !37  ; 2 uses
  %i.li = icmp slt i16 %i.lh, 0
  %i.lj = ashr i16 %i.lh, 5
  %i.lk = sext i16 %i.lj to i32
  %i.ll = load i32, ptr %i.ad, align 4
  %i.lm = select i1 %i.li, i32 %i.ll, i32 %i.lk
  %i.ln = sext i32 %i.lm to i64
  %i.lo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %i.ln) ; 0 uses
  %i.lp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef 256) ; 0 uses
  %i.lq = sext i32 %i.kz to i64
  %i.lr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i64 noundef %i.lq) ; 0 uses
  %i.ls = load i32, ptr %i.hs, align 4, !tbaa !57
  %i.lt = sext i32 %i.ls to i64
  %i.lu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.lt) ; 0 uses
  %i.lv = load i32, ptr %i.ht, align 8, !tbaa !57
  %i.lw = sext i32 %i.lv to i64
  %i.lx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i64 noundef %i.lw) ; 0 uses
  %i.ly = load i32, ptr %i.hu, align 4, !tbaa !57
  %i.lz = sext i32 %i.ly to i64
  %i.ma = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i64 noundef %i.lz) ; 0 uses
  %i.mb = load i32, ptr %i.ai, align 4, !tbaa !57
  %i.mc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.mb) ; 0 uses
  %i.md = load i32, ptr %i.ba, align 4, !tbaa !57
  %i.me = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %i.md) ; 0 uses
  %i.mf = load i32, ptr %i.bs, align 8, !tbaa !57
  %i.mg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.mf) ; 0 uses
  %i.mh = load i32, ptr %i.ck, align 8, !tbaa !57
  %i.mi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.mh) ; 0 uses
  %i.mj = load i32, ptr %i.dc, align 4, !tbaa !57
  %i.mk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %i.mj) ; 0 uses
  %i.ml = load i32, ptr %i.du, align 8, !tbaa !57
  %i.mm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.ml) ; 0 uses
  %i.mn = load i32, ptr %i.em, align 4, !tbaa !57
  %i.mo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.mn) ; 0 uses
  %i.mp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.hn) ; 0 uses
  %i.mq = load i32, ptr %i.fs, align 4, !tbaa !57
  %i.mr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %i.mq) ; 0 uses
  %i.ms = load i32, ptr %i.gd, align 8, !tbaa !57
  %i.mt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %i.ms) ; 0 uses
  %i.mu = load i32, ptr %i.gt, align 8, !tbaa !57
  %i.mv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %i.mu) ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 3 uses
  %rhsv = load i32, ptr %i.mw, align 8
  %.not153 = icmp eq i32 %rhsv, 0
  br i1 %.not153, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  invoke void @u_versionFromString_78(ptr noundef nonnull %i.mw, ptr noundef nonnull @.str.35)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  %i.my = load i32, ptr %i.mw, align 8
  store i32 %i.my, ptr getelementptr inbounds nuw (i8, ptr @_ZL8dataInfo, i64 16), align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @_ZN6icu_785Norms10EnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN6icu_789ExtraDataD2Ev(ptr noundef nonnull align 8 dead_on_return(1016) dereferenceable(1016) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN6icu_785Norms10EnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN6icu_785Norms10EnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.bw:                                            ; preds = %bb.bu, %bb.bk
  %.pn113 = phi { ptr, i32 } [ %i.kg, %bb.bk ], [ %i.mx, %bb.bu ] ; 2 uses
  %.not.i = icmp eq ptr %i.jx, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  invoke void @ucptrie_close_78(ptr noundef nonnull %i.jx)
          to label %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  %i.na = extractvalue { ptr, i32 } %i.mz, 0
  call void @__clang_call_terminate(ptr %i.na) #22
  unreachable

_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit: ; preds = %bb.bx, %bb.bw, %bb.at, %bb.ap, %bb.bj, %bb.al
  %.pn113.pn.pn.pn = phi { ptr, i32 } [ %i.ik, %bb.al ], [ %i.iq, %bb.ap ], [ %i.jd, %bb.at ], [ %i.kf, %bb.bj ], [ %.pn113, %bb.bw ], [ %.pn113, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit, %bb.ak
  %.pn113.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn.pn, %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit ], [ %i.ij, %bb.ak ]
  call void @_ZN6icu_785Norms10EnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.aj
  %.pn113.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn.pn.pn, %bb.bz ], [ %i.ii, %bb.aj ]
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.z, %bb.y
  %.pn113.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hk, %bb.y ], [ %i.hl, %bb.z ], [ %.pn113.pn.pn.pn.pn.pn, %bb.ca ]
  call void @_ZN6icu_789ExtraDataD2Ev(ptr noundef nonnull align 8 dead_on_return(1016) dereferenceable(1016) %4) #18
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.x
  %.pn113.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cb ], [ %i.hj, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.cd

bb.cd:                                            ; preds = %bb.h, %bb.j, %bb.cc, %bb.g
  %.pn125.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.u, %bb.j ], [ %.pn113.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cc ], [ %i.r, %bb.h ]
  call void @_ZN6icu_785Norms10EnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.f
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn125.pn, %bb.cd ], [ %i.p, %bb.f ]
  call void @_ZN6icu_785Norms10EnumeratorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn125.pn.pn
}

declare void @_ZN6icu_785Norms10enumRangesERNS0_10EnumeratorE(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN6icu_789ExtraDataC1ERNS_5NormsEa(ptr noundef nonnull align 8 dereferenceable(1016), ptr noundef nonnull align 8 dereferenceable(424), i8 noundef signext) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare ptr @umutablecptrie_open_78(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @umutablecptrie_getRange_78(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @umutablecptrie_buildImmutable_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ucptrie_toBinary_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6icu_789ErrorCode9errorNameEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

declare noundef i32 @_ZN6icu_789ErrorCode5resetEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

declare void @umutablecptrie_close_78(ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0

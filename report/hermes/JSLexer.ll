Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSLexer?download=true
inline.NumInlined: 2539
inline.NumDeleted: 512
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN6hermes6parser7JSLexer10scanStringILb0EEEvv:bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %i.am, i64 2 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !66
  %i.dw = and i8 %i.dv, -8
  %or.cond = icmp eq i8 %i.dw, 48
  br i1 %or.cond, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.du, ptr %i.m, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  store ptr %i.k, ptr %i.l, align 8, !tbaa !18
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 0) #18
  %i.dx = load ptr, ptr %i.l, align 8, !tbaa !18  ; 2 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = sub i64 %i.dy, %i.ag                    ; 4 uses
  %i.ea = load i32, ptr %i.w, align 4, !tbaa !148
  %i.eb = zext i32 %i.ea to i64
  %i.ec = load i32, ptr %i.r, align 8, !tbaa !132 ; 2 uses
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = sub nsw i64 %i.eb, %i.ed
  %i.ef = icmp ugt i64 %i.dz, %i.ee
  br i1 %i.ef, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eg = add i64 %i.dz, %i.ed
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.x, i64 noundef %i.eg, i64 noundef 1) #18
  %.pre7.pre.i.i.i = load i32, ptr %i.r, align 8, !tbaa !132
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pre7.i.i.i = phi i32 [ %.pre7.pre.i.i.i, %bb.x ], [ %i.ec, %bb.w ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.dx
  br i1 %.not.i.i.i.i, label %_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = load ptr, ptr %i.q, align 8, !tbaa !131
  %i.ei = zext i32 %.pre7.i.i.i to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr nonnull align 1 %i.k, i64 %i.dz, i1 false)
  %.pre.i.i.i = load i32, ptr %i.r, align 8, !tbaa !132
  br label %_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit

_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit: ; preds = %bb.y, %bb.z
  %i.ek = phi i32 [ %.pre7.i.i.i, %bb.y ], [ %.pre.i.i.i, %bb.z ]
  %i.el = trunc i64 %i.dz to i32
  %i.em = add i32 %i.ek, %i.el
  store i32 %i.em, ptr %i.r, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  br label %bb.by

bb.aa:                                            ; preds = %bb.v, %bb.c, %bb.c, %bb.c
  %i.en = load i8, ptr %i.ac, align 8, !tbaa !171, !range !59, !noundef !51
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.ab, label %.lr.ph.i

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i8 1, ptr %i.ai, align 1, !tbaa !68
  store ptr @.str.54, ptr %3, align 8, !tbaa !66
  store i8 3, ptr %i.ah, align 8, !tbaa !71
  %i.ep = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ep, i32 noundef 0, ptr nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 1) #18
  %i.eq = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 316
  %i.es = load i8, ptr %i.er, align 4, !tbaa !72, !range !59, !noundef !51
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.i, label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.thread.i

_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.thread.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.pre122 = load ptr, ptr %i.m, align 8, !tbaa !19
  br label %.lr.ph.i

_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.i: ; preds = %bb.ab
  %i.eu = load ptr, ptr %i.u, align 8, !tbaa !67
  store ptr %i.eu, ptr %i.m, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit

.lr.ph.i:                                         ; preds = %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.thread.i, %bb.aa
  %i.ev = phi ptr [ %.pre122, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.thread.i ], [ %i.an, %bb.aa ] ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1 ; 3 uses
  store ptr %i.ew, ptr %i.m, align 8, !tbaa !19
  %i.ex = load i8, ptr %i.ev, align 1, !tbaa !66
  %.09.i = add i8 %i.ex, -48                      ; 2 uses
  %i.ey = load i8, ptr %i.ew, align 1, !tbaa !66
  %i.ez = and i8 %i.ey, -8
  %or.cond.i = icmp eq i8 %i.ez, 48
  br i1 %or.cond.i, label %.lr.ph.i.1, label %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit.loopexit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.fa = shl i8 %.09.i, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 2 ; 3 uses
  store ptr %i.fb, ptr %i.m, align 8, !tbaa !19
  %i.fc = load i8, ptr %i.ew, align 1, !tbaa !66
  %i.fd = add i8 %i.fa, -48
  %.0.i = add i8 %i.fd, %i.fc                     ; 2 uses
  %i.fe = load i8, ptr %i.fb, align 1, !tbaa !66
  %i.ff = and i8 %i.fe, -8
  %or.cond.i.1 = icmp eq i8 %i.ff, 48
  br i1 %or.cond.i.1, label %bb.ac, label %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit.loopexit

bb.ac:                                            ; preds = %.lr.ph.i.1
  %i.fg = shl i8 %.0.i, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 3
  store ptr %i.fh, ptr %i.m, align 8, !tbaa !19
  %i.fi = load i8, ptr %i.fb, align 1, !tbaa !66
  %i.fj = add i8 %i.fg, -48
  %.0.i.1 = add i8 %i.fj, %i.fi
  br label %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit.loopexit

_ZN6hermes6parser7JSLexer12consumeOctalEj.exit.loopexit: ; preds = %bb.ac, %.lr.ph.i.1, %.lr.ph.i
  %.04.i.ph = phi i8 [ %.0.i.1, %bb.ac ], [ %.09.i, %.lr.ph.i ], [ %.0.i, %.lr.ph.i.1 ]
  %i.fk = zext i8 %.04.i.ph to i32
  br label %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit

_ZN6hermes6parser7JSLexer12consumeOctalEj.exit:   ; preds = %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit.loopexit, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.i
  %.04.i = phi i32 [ 0, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.i ], [ %i.fk, %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  store ptr %i.i, ptr %i.j, align 8, !tbaa !18
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %.04.i) #18
  %i.fl = load ptr, ptr %i.j, align 8, !tbaa !18  ; 2 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %i.aj                    ; 4 uses
  %i.fo = load i32, ptr %i.w, align 4, !tbaa !148
  %i.fp = zext i32 %i.fo to i64
  %i.fq = load i32, ptr %i.r, align 8, !tbaa !132 ; 2 uses
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %i.fs = sub nsw i64 %i.fp, %i.fr
  %i.ft = icmp ugt i64 %i.fn, %i.fs
  br i1 %i.ft, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit
  %i.fu = add i64 %i.fn, %i.fr
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.x, i64 noundef %i.fu, i64 noundef 1) #18
  %.pre7.pre.i.i.i38 = load i32, ptr %i.r, align 8, !tbaa !132
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit
  %.pre7.i.i.i35 = phi i32 [ %.pre7.pre.i.i.i38, %bb.ad ], [ %i.fq, %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit ] ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.i, %i.fl
  br i1 %.not.i.i.i.i36, label %_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit39, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fv = load ptr, ptr %i.q, align 8, !tbaa !131
  %i.fw = zext i32 %.pre7.i.i.i35 to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fx, ptr nonnull align 1 %i.i, i64 %i.fn, i1 false)
  %.pre.i.i.i37 = load i32, ptr %i.r, align 8, !tbaa !132
  br label %_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit39

_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit39: ; preds = %bb.ae, %bb.af
  %i.fy = phi i32 [ %.pre7.i.i.i35, %bb.ae ], [ %.pre.i.i.i37, %bb.af ]
  %i.fz = trunc i64 %i.fn to i32
  %i.ga = add i32 %i.fy, %i.fz
  store i32 %i.ga, ptr %i.r, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %bb.by

bb.ag:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.gb = load i8, ptr %i.ac, align 8, !tbaa !171, !range !59, !noundef !51
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.ah, label %.lr.ph.i41

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i8 1, ptr %i.ae, align 1, !tbaa !68
  store ptr @.str.54, ptr %2, align 8, !tbaa !66
  store i8 3, ptr %i.ad, align 8, !tbaa !71
  %i.gd = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.gd, i32 noundef 0, ptr nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 1) #18
  %i.ge = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 316
  %i.gg = load i8, ptr %i.gf, align 4, !tbaa !72, !range !59, !noundef !51
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.i48, label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.thread.i47

_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.thread.i47: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !19
  br label %.lr.ph.i41

_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.i48: ; preds = %bb.ah
  %i.gi = load ptr, ptr %i.u, align 8, !tbaa !67
  store ptr %i.gi, ptr %i.m, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit49

.lr.ph.i41:                                       ; preds = %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.thread.i47, %bb.ag
  %i.gj = phi ptr [ %.pre, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.thread.i47 ], [ %i.an, %bb.ag ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1 ; 3 uses
  store ptr %i.gk, ptr %i.m, align 8, !tbaa !19
  %i.gl = load i8, ptr %i.gj, align 1, !tbaa !66
  %.09.i40 = add i8 %i.gl, -48                    ; 2 uses
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !66
  %i.gn = and i8 %i.gm, -8
  %or.cond.i43 = icmp eq i8 %i.gn, 48
  br i1 %or.cond.i43, label %bb.ai, label %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit49

bb.ai:                                            ; preds = %.lr.ph.i41
  %i.go = shl i8 %.09.i40, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  store ptr %i.gp, ptr %i.m, align 8, !tbaa !19
  %i.gq = load i8, ptr %i.gk, align 1, !tbaa !66
  %i.gr = add i8 %i.go, -48
  %.0.i45 = add i8 %i.gr, %i.gq
  br label %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit49, !llvm.loop !272

_ZN6hermes6parser7JSLexer12consumeOctalEj.exit49: ; preds = %.lr.ph.i41, %bb.ai, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.i48
  %.04.i44 = phi i8 [ 0, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit.i48 ], [ %.09.i40, %.lr.ph.i41 ], [ %.0.i45, %bb.ai ]
  %10 = zext i8 %.04.i44 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store ptr %i.g, ptr %i.h, align 8, !tbaa !18
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %10) #18
  %i.gs = load ptr, ptr %i.h, align 8, !tbaa !18  ; 2 uses
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 %i.gt, %i.af                    ; 4 uses
  %i.gv = load i32, ptr %i.w, align 4, !tbaa !148
  %i.gw = zext i32 %i.gv to i64
  %i.gx = load i32, ptr %i.r, align 8, !tbaa !132 ; 2 uses
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  %i.gz = sub nsw i64 %i.gw, %i.gy
  %i.ha = icmp ugt i64 %i.gu, %i.gz
  br i1 %i.ha, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit49
  %i.hb = add i64 %i.gu, %i.gy
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.x, i64 noundef %i.hb, i64 noundef 1) #18
  %.pre7.pre.i.i.i53 = load i32, ptr %i.r, align 8, !tbaa !132
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit49
  %.pre7.i.i.i50 = phi i32 [ %.pre7.pre.i.i.i53, %bb.aj ], [ %i.gx, %_ZN6hermes6parser7JSLexer12consumeOctalEj.exit49 ] ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.g, %i.gs
  br i1 %.not.i.i.i.i51, label %_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit54, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hc = load ptr, ptr %i.q, align 8, !tbaa !131
  %i.hd = zext i32 %.pre7.i.i.i50 to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.he, ptr nonnull align 1 %i.g, i64 %i.gu, i1 false)
  %.pre.i.i.i52 = load i32, ptr %i.r, align 8, !tbaa !132
  br label %_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit54

_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit54: ; preds = %bb.ak, %bb.al
  %i.hf = phi i32 [ %.pre7.i.i.i50, %bb.ak ], [ %.pre.i.i.i52, %bb.al ]
  %i.hg = trunc i64 %i.gu to i32
  %i.hh = add i32 %i.hf, %i.hg
  store i32 %i.hh, ptr %i.r, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %bb.by

bb.am:                                            ; preds = %bb.c
  %i.hi = getelementptr inbounds nuw i8, ptr %i.am, i64 2 ; 3 uses
  store ptr %i.hi, ptr %i.m, align 8, !tbaa !19
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !66  ; 2 uses
  %i.hk = sext i8 %i.hj to i32                    ; 2 uses
  %i.hl = add i8 %i.hj, -48
  %or.cond.i56 = icmp ult i8 %i.hl, 10
  br i1 %or.cond.i56, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.hm = add nsw i32 %i.hk, -48
  br label %.critedge.i

bb.ao:                                            ; preds = %bb.am
  %i.hn = or i32 %i.hk, 32                        ; 2 uses
  %i.ho = add nsw i32 %i.hn, -97
  %or.cond4.i = icmp ult i32 %i.ho, 6
  br i1 %or.cond4.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hp = add nsw i32 %i.hn, -87
  br label %.critedge.i

bb.aq:                                            ; preds = %bb.as, %bb.ao
  %.lcssa = phi ptr [ %i.hi, %bb.ao ], [ %i.hw, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store i8 1, ptr %i.aa, align 1, !tbaa !68
  store ptr @.str.55, ptr %1, align 8, !tbaa !66
  store i8 3, ptr %i.z, align 8, !tbaa !71
  %i.hq = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.hq, i32 noundef 0, ptr nonnull %.lcssa, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef 1) #18
  %i.hr = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 316
  %i.ht = load i8, ptr %i.hs, align 4, !tbaa !72, !range !59, !noundef !51
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %bb.ar, label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.hv = load ptr, ptr %i.u, align 8, !tbaa !67
  store ptr %i.hv, ptr %i.m, align 8, !tbaa !19
  br label %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.thread

_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.thread: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.av

.critedge.i:                                      ; preds = %bb.ap, %bb.an
  %.018.i = phi i32 [ %i.hm, %bb.an ], [ %i.hp, %bb.ap ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.am, i64 3 ; 3 uses
  store ptr %i.hw, ptr %i.m, align 8, !tbaa !19
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !66  ; 2 uses
  %i.hy = sext i8 %i.hx to i32                    ; 2 uses
  %i.hz = add i8 %i.hx, -48
  %or.cond.i56.1 = icmp ult i8 %i.hz, 10
  br i1 %or.cond.i56.1, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.critedge.i
  %i.ia = or i32 %i.hy, 32                        ; 2 uses
  %i.ib = add nsw i32 %i.ia, -97
  %or.cond4.i.1 = icmp ult i32 %i.ib, 6
  br i1 %or.cond4.i.1, label %bb.at, label %bb.aq

bb.at:                                            ; preds = %bb.as
  %i.ic = add nsw i32 %i.ia, -87
  br label %.critedge.i.1

bb.au:                                            ; preds = %.critedge.i
  %i.id = add nsw i32 %i.hy, -48
  br label %.critedge.i.1

.critedge.i.1:                                    ; preds = %bb.au, %bb.at
  %.018.i.1 = phi i32 [ %i.id, %bb.au ], [ %i.ic, %bb.at ]
  %i.ie = shl nuw nsw i32 %.018.i, 4
  %i.if = add nuw nsw i32 %.018.i.1, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.ig, ptr %i.m, align 8, !tbaa !19
  br label %bb.av

bb.av:                                            ; preds = %.critedge.i.1, %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.thread
  %.sink.i.i = phi i32 [ 0, %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.thread ], [ %i.if, %.critedge.i.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store ptr %i.e, ptr %i.f, align 8, !tbaa !18
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %.sink.i.i) #18
  %i.ih = load ptr, ptr %i.f, align 8, !tbaa !18  ; 2 uses
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = sub i64 %i.ii, %i.ab                    ; 4 uses
  %i.ik = load i32, ptr %i.w, align 4, !tbaa !148
  %i.il = zext i32 %i.ik to i64
  %i.im = load i32, ptr %i.r, align 8, !tbaa !132 ; 2 uses
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %i.io = sub nsw i64 %i.il, %i.in
  %i.ip = icmp ugt i64 %i.ij, %i.io
  br i1 %i.ip, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.iq = add i64 %i.ij, %i.in
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.x, i64 noundef %i.iq, i64 noundef 1) #18
  %.pre7.pre.i.i.i62 = load i32, ptr %i.r, align 8, !tbaa !132
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.pre7.i.i.i59 = phi i32 [ %.pre7.pre.i.i.i62, %bb.aw ], [ %i.im, %bb.av ] ; 2 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.e, %i.ih
  br i1 %.not.i.i.i.i60, label %_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit63, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ir = load ptr, ptr %i.q, align 8, !tbaa !131
  %i.is = zext i32 %.pre7.i.i.i59 to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.is
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.it, ptr nonnull align 1 %i.e, i64 %i.ij, i1 false)
  %.pre.i.i.i61 = load i32, ptr %i.r, align 8, !tbaa !132
  br label %_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit63

_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj.exit63: ; preds = %bb.ax, %bb.ay
  %i.iu = phi i32 [ %.pre7.i.i.i59, %bb.ax ], [ %.pre.i.i.i61, %bb.ay ]
  %i.iv = trunc i64 %i.ij to i32
  %i.iw = add i32 %i.iu, %i.iv
  store i32 %i.iw, ptr %i.r, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.by

bb.az:                                            ; preds = %bb.c
  store ptr %i.am, ptr %i.m, align 8, !tbaa !19
  %i.ix = call noundef i32 @_ZN6hermes6parser7JSLexer20consumeUnicodeEscapeEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store ptr %i.c, ptr %i.d, align 8, !tbaa !18
  %i.iy = icmp ult i32 %i.ix, 65536
  br i1 %i.iy, label %bb.bb, label %bb.ba, !prof !149

bb.ba:                                            ; preds = %bb.az
  %i.iz = add i32 %i.ix, 983040
  %i.ja = lshr i32 %i.iz, 10
  %i.jb = and i32 %i.ja, 1023
  %i.jc = or disjoint i32 %i.jb, 55296
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.jc) #18
  %i.jd = and i32 %i.ix, 1023
  %i.je = or disjoint i32 %i.jd, 56320
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sink.i.i64 = phi i32 [ %i.je, %bb.ba ], [ %i.ix, %bb.az ]
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %.sink.i.i64) #18
  %i.jf = load ptr, ptr %i.d, align 8, !tbaa !18  ; 2 uses
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = sub i64 %i.jg, %i.y                     ; 4 uses
  %i.ji = load i32, ptr %i.w, align 4, !tbaa !148
  %i.jj = zext i32 %i.ji to i64
  %i.jk = load i32, ptr %i.r, align 8, !tbaa !132 ; 2 uses
  %i.jl = zext i32 %i.jk to i64                   ; 2 uses
  %i.jm = sub nsw i64 %i.jj, %i.jl
  %i.jn = icmp ugt i64 %i.jh, %i.jm
  br i1 %i.jn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.jo = add i64 %i.jh, %i.jl
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.x, i64 noundef %i.jo, i64 noundef 1) #18
  %.pre7.pre.i.i.i68 = load i32, ptr %i.r, align 8, !tbaa !132
  br label %bb.bd
end_hunk_0

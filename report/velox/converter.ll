inline.NumInlined: 5381
inline.NumDeleted: 1762
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN5arrow4json15BinaryConverterINS_10BinaryTypeEE7ConvertERKSt10shared_ptrINS_5ArrayEEPS6_:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !190
  call void @_ZN5arrow15MakeArrayOfNullERKSt10shared_ptrINS_8DataTypeEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.l, ptr noundef %i.n)
  invoke void @_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE5ValueIS3_vEENS_6StatusEPT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %3)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %5, align 8, !tbaa !159
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !249

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !39
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #23, !inline_history !250
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #23, !inline_history !250
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !44

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !159
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !251

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ar

bb.k:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.as

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !190 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !278
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.al, align 8, !tbaa !290
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !291
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ao, align 8, !tbaa !292
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.aq, align 8, !tbaa !293
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i8 0, i64 80, i1 false)
  store ptr %i.aj, ptr %i.as, align 8, !tbaa !291
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.at, align 8, !tbaa !292
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.av, align 8, !tbaa !293
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.aj, ptr %i.ax, align 8, !tbaa !291
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 224 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ay, align 8, !tbaa !292
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 232 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ba, align 8, !tbaa !293
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow13BinaryBuilderE, i64 16), ptr %6, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !200
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !203
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !231
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(256) %6, i64 noundef %i.bg)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.n

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  %i.bh = load ptr, ptr %7, align 8, !tbaa !159, !noalias !1933 ; 2 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !159, !alias.scope !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit48, label %.critedge

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit48:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc unwind label %.loopexit.split-lp95

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !200, !noalias !1936
  %i.bm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc52 unwind label %.loopexit.split-lp95

.noexc52:                                         ; preds = %.noexc
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !200, !noalias !1936 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !203, !noalias !1936 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !231, !noalias !1936 ; 3 uses
  %.not2.i = icmp sgt i64 %i.br, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit59

.lr.ph.i:                                         ; preds = %.noexc52
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 3 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !305, !noalias !1936 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !307, !noalias !1936 ; 3 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !43, !noalias !1936
  %i.cc = trunc i64 %i.by to i8
  %i.cd = and i8 %i.cc, 7
  %i.ce = lshr i8 %i.cb, %i.cd
  %i.cf = trunc i8 %i.ce to i1
  br i1 %i.cf, label %_ZN5arrow6StatusD2Ev.exit26.us.peel.i, label %_ZN5arrow6StatusD2Ev.exit30.us.peel.i

_ZN5arrow6StatusD2Ev.exit26.us.peel.i:            ; preds = %.lr.ph.split.us.i
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !308, !noalias !1936
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3, !noalias !1936
  %i.ci = sext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !313, !noalias !1936
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ci ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !1936
  %i.cm = getelementptr i8, ptr %i.ck, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3, !noalias !1936
  %i.co = sub nsw i32 %i.cn, %i.cl
  %i.cp = sext i32 %i.co to i64
  br label %_ZN5arrow6StatusD2Ev.exit30.us.peel.i

_ZN5arrow6StatusD2Ev.exit30.us.peel.i:            ; preds = %_ZN5arrow6StatusD2Ev.exit26.us.peel.i, %.lr.ph.split.us.i
  %.0 = phi i64 [ %i.cp, %_ZN5arrow6StatusD2Ev.exit26.us.peel.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %.not.us.peel.i.not = icmp eq i64 %i.br, 1
  br i1 %.not.us.peel.i.not, label %_ZN5arrow6StatusD2Ev.exit59, label %.peel.next.i

.peel.next.i:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit30.us.peel.i, %_ZN5arrow6StatusD2Ev.exit30.us.i
  %.1 = phi i64 [ %.2, %_ZN5arrow6StatusD2Ev.exit30.us.i ], [ %.0, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ] ; 2 uses
  %.0183.us.i = phi i64 [ %i.dk, %_ZN5arrow6StatusD2Ev.exit30.us.i ], [ 1, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ] ; 3 uses
  %i.cq = add nsw i64 %.0183.us.i, %i.by          ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !43, !noalias !1936
  %i.cu = trunc i64 %i.cq to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = lshr i8 %i.ct, %i.cv
  %i.cx = trunc i8 %i.cw to i1
  br i1 %i.cx, label %_ZN5arrow6StatusD2Ev.exit26.us.i, label %_ZN5arrow6StatusD2Ev.exit30.us.i

_ZN5arrow6StatusD2Ev.exit26.us.i:                 ; preds = %.peel.next.i
  %i.cy = load ptr, ptr %i.bt, align 8, !tbaa !308, !noalias !1936
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.0183.us.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3, !noalias !1936
  %i.db = sext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.bu, align 8, !tbaa !313, !noalias !1936
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.db ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3, !noalias !1936
  %i.df = getelementptr i8, ptr %i.dd, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3, !noalias !1936
  %i.dh = sub nsw i32 %i.dg, %i.de
  %i.di = sext i32 %i.dh to i64
  %i.dj = add i64 %.1, %i.di
  br label %_ZN5arrow6StatusD2Ev.exit30.us.i

_ZN5arrow6StatusD2Ev.exit30.us.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit26.us.i, %.peel.next.i
  %.2 = phi i64 [ %i.dj, %_ZN5arrow6StatusD2Ev.exit26.us.i ], [ %.1, %.peel.next.i ] ; 2 uses
  %i.dk = add nuw nsw i64 %.0183.us.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.br
  br i1 %exitcond.not, label %_ZN5arrow6StatusD2Ev.exit59, label %.peel.next.i, !llvm.loop !1939

.lr.ph.splitthread-pre-split.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit30.i
  %.pr.i51 = load ptr, ptr %i.bs, align 8, !tbaa !305, !noalias !1936
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %.3 = phi i64 [ %.4, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.dl = phi ptr [ %.pr.i51, %.lr.ph.splitthread-pre-split.i ], [ null, %.lr.ph.i ] ; 2 uses
  %i.dm = phi ptr [ %i.ev, %.lr.ph.splitthread-pre-split.i ], [ %i.bp, %.lr.ph.i ] ; 6 uses
  %.0183.i = phi i64 [ %i.eu, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %.not.i.i49 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !307, !noalias !1936
  %i.dp = add nsw i64 %i.do, %.0183.i             ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !43, !noalias !1936
  %i.dt = trunc i64 %i.dp to i8
  %i.du = and i8 %i.dt, 7
  %i.dv = lshr i8 %i.ds, %i.du
  %i.dw = trunc i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow6StatusD2Ev.exit26.i, label %_ZN5arrow6StatusD2Ev.exit30.i

bb.p:                                             ; preds = %.lr.ph.split.i
  %i.dx = load ptr, ptr %i.dm, align 8, !tbaa !10, !noalias !1936
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !15, !noalias !1936
  switch i32 %i.dz, label %bb.s [
    i32 27, label %_ZNK5arrow5Array7IsValidEl.exit.i
    i32 28, label %bb.q
    i32 38, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ea = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i64 noundef %.0183.i)
          to label %.noexc53 unwind label %.loopexit94

.noexc53:                                         ; preds = %bb.q
  br i1 %i.ea, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

bb.r:                                             ; preds = %bb.p
  %i.eb = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i64 noundef %.0183.i)
          to label %.noexc54 unwind label %.loopexit94

.noexc54:                                         ; preds = %bb.r
  br i1 %i.eb, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

bb.s:                                             ; preds = %bb.p
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.ed = load atomic i64, ptr %i.ec seq_cst, align 8, !noalias !1936
  %i.ee = load ptr, ptr %i.bo, align 8, !tbaa !203, !noalias !1936
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !231, !noalias !1936
  %.not1.i = icmp eq i64 %i.ed, %i.eg
  br i1 %.not1.i, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

_ZNK5arrow5Array7IsValidEl.exit.i:                ; preds = %bb.p
  %i.eh = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i64 noundef %.0183.i)
          to label %.noexc55 unwind label %.loopexit94

.noexc55:                                         ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i
  br i1 %i.eh, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

_ZN5arrow6StatusD2Ev.exit26.i:                    ; preds = %.noexc55, %bb.s, %.noexc54, %.noexc53, %bb.o
  %i.ei = load ptr, ptr %i.bt, align 8, !tbaa !308, !noalias !1936
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.0183.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !1936
  %i.el = sext i32 %i.ek to i64
  %i.em = load ptr, ptr %i.bu, align 8, !tbaa !313, !noalias !1936
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.el ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3, !noalias !1936
  %i.ep = getelementptr i8, ptr %i.en, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !1936
  %i.er = sub nsw i32 %i.eq, %i.eo
  %i.es = sext i32 %i.er to i64
  %i.et = add i64 %.3, %i.es
  br label %_ZN5arrow6StatusD2Ev.exit30.i

_ZN5arrow6StatusD2Ev.exit30.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit26.i, %.noexc55, %bb.s, %.noexc54, %.noexc53, %bb.o
  %.4 = phi i64 [ %.3, %bb.s ], [ %i.et, %_ZN5arrow6StatusD2Ev.exit26.i ], [ %.3, %.noexc55 ], [ %.3, %.noexc53 ], [ %.3, %.noexc54 ], [ %.3, %bb.o ] ; 2 uses
  %i.eu = add nuw nsw i64 %.0183.i, 1             ; 2 uses
  %i.ev = load ptr, ptr %i.bo, align 8, !tbaa !203, !noalias !1936 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !231, !noalias !1936
  %.not.i50 = icmp slt i64 %i.eu, %i.ex
  br i1 %.not.i50, label %.lr.ph.splitthread-pre-split.i, label %_ZN5arrow6StatusD2Ev.exit59, !llvm.loop !1941

.loopexit94:                                      ; preds = %bb.q, %bb.r, %_ZNK5arrow5Array7IsValidEl.exit.i
  %lpad.loopexit96 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp95:                             ; preds = %_ZN5arrow6StatusD2Ev.exit48, %.noexc
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit59:                      ; preds = %_ZN5arrow6StatusD2Ev.exit30.us.i, %_ZN5arrow6StatusD2Ev.exit30.i, %.noexc52, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i
  %.5 = phi i64 [ 0, %.noexc52 ], [ %.4, %_ZN5arrow6StatusD2Ev.exit30.i ], [ %.0, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ], [ %.2, %_ZN5arrow6StatusD2Ev.exit30.us.i ] ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !159, !alias.scope !1943
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !1946
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !1949
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 240 ; 7 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !323, !noalias !1949
  %i.fa = add nsw i64 %i.ez, %.5                  ; 3 uses
  store i64 %i.fa, ptr %i.a, align 8, !tbaa !168, !noalias !1949
  %i.fb = icmp sgt i64 %i.fa, 2147483646
  br i1 %i.fb, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit6.thread.i, !prof !44

_ZN5arrow6StatusD2Ev.exit6.thread.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !1949
  store ptr null, ptr %8, align 8, !tbaa !159, !alias.scope !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1946
  br label %bb.t

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !1949
  store i64 2147483646, ptr %i.b, align 8, !tbaa !168, !noalias !1949
  invoke void @_ZN5arrow6Status13CapacityErrorIJRA32_KclRA14_S2_RlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 1 dereferenceable(32) @.str.15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.16, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc62 unwind label %bb.v

.noexc62:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !1949
  %.pr.i60 = load ptr, ptr %4, align 8, !tbaa !159, !noalias !1955 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !1949
  call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  store ptr %.pr.i60, ptr %8, align 8, !tbaa !159, !alias.scope !1955
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1946
  %i.fc = icmp eq ptr %.pr.i60, null
  br i1 %i.fc, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, label %_ZN5arrow6StatusD2Ev.exit65.thread93

_ZN5arrow6StatusD2Ev.exit65.thread93:             ; preds = %.noexc62
  store ptr %.pr.i60, ptr %0, align 8, !tbaa !159, !alias.scope !1958
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit._crit_edge.i:           ; preds = %.noexc62
  %.pre.i61 = load i64, ptr %i.ey, align 8, !tbaa !323, !noalias !1961
  %.pre8.i = add nsw i64 %.pre.i61, %.5
  br label %bb.t

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, %_ZN5arrow6StatusD2Ev.exit6.thread.i
  %.pre-phi.i = phi i64 [ %.pre8.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i ], [ %i.fa, %_ZN5arrow6StatusD2Ev.exit6.thread.i ] ; 2 uses
  %i.fd = load i64, ptr %i.az, align 8, !tbaa !499, !noalias !1961 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %.pre-phi.i, %i.fd
  br i1 %.not.i.i.i, label %bb.u, label %_ZN5arrow6StatusD2Ev.exit65.thread

_ZN5arrow6StatusD2Ev.exit65.thread:               ; preds = %bb.t
  store ptr null, ptr %0, align 8, !tbaa !159, !alias.scope !1966
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN5arrow6StatusD2Ev.exit67

bb.u:                                             ; preds = %bb.t
  %i.fe = shl nsw i64 %i.fd, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %.pre-phi.i, i64 %i.fe)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i64 noundef %.sroa.speculated.i.i.i.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit65 unwind label %bb.v

_ZN5arrow6StatusD2Ev.exit65:                      ; preds = %bb.u
  %.pr = load ptr, ptr %8, align 8, !tbaa !159, !noalias !1968 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  store ptr %.pr, ptr %0, align 8, !tbaa !159, !alias.scope !1968
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ff = icmp eq ptr %.pr, null
  br i1 %i.ff, label %_ZN5arrow6StatusD2Ev.exit67, label %.critedge

bb.v:                                             ; preds = %bb.u, %_ZN5arrow6StatusD2Ev.exit.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit67:                      ; preds = %_ZN5arrow6StatusD2Ev.exit65, %_ZN5arrow6StatusD2Ev.exit65.thread
  %i.fh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc74 unwind label %.loopexit.split-lp

.noexc74:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit67
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !200, !noalias !1970 ; 2 uses
  %i.fj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %.noexc74
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !200, !noalias !1970 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !203, !noalias !1970 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !231, !noalias !1970
  %.not4.i = icmp sgt i64 %i.fo, 0
  br i1 %.not4.i, label %.lr.ph.i68, label %_ZN5arrow6StatusD2Ev.exit82

.lr.ph.i68:                                       ; preds = %.noexc75
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
end_hunk_0
begin_hunk_1_@_ZN5arrow4json15BinaryConverterINS_10StringTypeEE7ConvertERKSt10shared_ptrINS_5ArrayEEPS6_:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !190
  call void @_ZN5arrow15MakeArrayOfNullERKSt10shared_ptrINS_8DataTypeEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.l, ptr noundef %i.n)
  invoke void @_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE5ValueIS3_vEENS_6StatusEPT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %3)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %5, align 8, !tbaa !159
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !249

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !39
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #23, !inline_history !250
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #23, !inline_history !250
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !44

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !159
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !251

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ar

bb.k:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.as

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !190 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !278
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.al, align 8, !tbaa !290
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !291
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ao, align 8, !tbaa !292
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.aq, align 8, !tbaa !293
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i8 0, i64 80, i1 false)
  store ptr %i.aj, ptr %i.as, align 8, !tbaa !291
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.at, align 8, !tbaa !292
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.av, align 8, !tbaa !293
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.aj, ptr %i.ax, align 8, !tbaa !291
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 224 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ay, align 8, !tbaa !292
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 232 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ba, align 8, !tbaa !293
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow13StringBuilderE, i64 16), ptr %6, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !200
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !203
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !231
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(256) %6, i64 noundef %i.bg)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.n

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %i.bh = load ptr, ptr %7, align 8, !tbaa !159, !noalias !2103 ; 2 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !159, !alias.scope !2103
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit48, label %.critedge

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit48:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc unwind label %.loopexit.split-lp95

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !200, !noalias !2106
  %i.bm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc52 unwind label %.loopexit.split-lp95

.noexc52:                                         ; preds = %.noexc
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !200, !noalias !2106 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !203, !noalias !2106 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !231, !noalias !2106 ; 3 uses
  %.not2.i = icmp sgt i64 %i.br, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit59

.lr.ph.i:                                         ; preds = %.noexc52
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 3 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !305, !noalias !2106 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !307, !noalias !2106 ; 3 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !43, !noalias !2106
  %i.cc = trunc i64 %i.by to i8
  %i.cd = and i8 %i.cc, 7
  %i.ce = lshr i8 %i.cb, %i.cd
  %i.cf = trunc i8 %i.ce to i1
  br i1 %i.cf, label %_ZN5arrow6StatusD2Ev.exit26.us.peel.i, label %_ZN5arrow6StatusD2Ev.exit30.us.peel.i

_ZN5arrow6StatusD2Ev.exit26.us.peel.i:            ; preds = %.lr.ph.split.us.i
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !308, !noalias !2106
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3, !noalias !2106
  %i.ci = sext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !313, !noalias !2106
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ci ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !2106
  %i.cm = getelementptr i8, ptr %i.ck, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3, !noalias !2106
  %i.co = sub nsw i32 %i.cn, %i.cl
  %i.cp = sext i32 %i.co to i64
  br label %_ZN5arrow6StatusD2Ev.exit30.us.peel.i

_ZN5arrow6StatusD2Ev.exit30.us.peel.i:            ; preds = %_ZN5arrow6StatusD2Ev.exit26.us.peel.i, %.lr.ph.split.us.i
  %.0 = phi i64 [ %i.cp, %_ZN5arrow6StatusD2Ev.exit26.us.peel.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %.not.us.peel.i.not = icmp eq i64 %i.br, 1
  br i1 %.not.us.peel.i.not, label %_ZN5arrow6StatusD2Ev.exit59, label %.peel.next.i

.peel.next.i:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit30.us.peel.i, %_ZN5arrow6StatusD2Ev.exit30.us.i
  %.1 = phi i64 [ %.2, %_ZN5arrow6StatusD2Ev.exit30.us.i ], [ %.0, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ] ; 2 uses
  %.0183.us.i = phi i64 [ %i.dk, %_ZN5arrow6StatusD2Ev.exit30.us.i ], [ 1, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ] ; 3 uses
  %i.cq = add nsw i64 %.0183.us.i, %i.by          ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !43, !noalias !2106
  %i.cu = trunc i64 %i.cq to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = lshr i8 %i.ct, %i.cv
  %i.cx = trunc i8 %i.cw to i1
  br i1 %i.cx, label %_ZN5arrow6StatusD2Ev.exit26.us.i, label %_ZN5arrow6StatusD2Ev.exit30.us.i

_ZN5arrow6StatusD2Ev.exit26.us.i:                 ; preds = %.peel.next.i
  %i.cy = load ptr, ptr %i.bt, align 8, !tbaa !308, !noalias !2106
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.0183.us.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3, !noalias !2106
  %i.db = sext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.bu, align 8, !tbaa !313, !noalias !2106
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.db ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3, !noalias !2106
  %i.df = getelementptr i8, ptr %i.dd, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3, !noalias !2106
  %i.dh = sub nsw i32 %i.dg, %i.de
  %i.di = sext i32 %i.dh to i64
  %i.dj = add i64 %.1, %i.di
  br label %_ZN5arrow6StatusD2Ev.exit30.us.i

_ZN5arrow6StatusD2Ev.exit30.us.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit26.us.i, %.peel.next.i
  %.2 = phi i64 [ %i.dj, %_ZN5arrow6StatusD2Ev.exit26.us.i ], [ %.1, %.peel.next.i ] ; 2 uses
  %i.dk = add nuw nsw i64 %.0183.us.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.br
  br i1 %exitcond.not, label %_ZN5arrow6StatusD2Ev.exit59, label %.peel.next.i, !llvm.loop !2109

.lr.ph.splitthread-pre-split.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit30.i
  %.pr.i51 = load ptr, ptr %i.bs, align 8, !tbaa !305, !noalias !2106
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %.3 = phi i64 [ %.4, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.dl = phi ptr [ %.pr.i51, %.lr.ph.splitthread-pre-split.i ], [ null, %.lr.ph.i ] ; 2 uses
  %i.dm = phi ptr [ %i.ev, %.lr.ph.splitthread-pre-split.i ], [ %i.bp, %.lr.ph.i ] ; 6 uses
  %.0183.i = phi i64 [ %i.eu, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %.not.i.i49 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !307, !noalias !2106
  %i.dp = add nsw i64 %i.do, %.0183.i             ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !43, !noalias !2106
  %i.dt = trunc i64 %i.dp to i8
  %i.du = and i8 %i.dt, 7
  %i.dv = lshr i8 %i.ds, %i.du
  %i.dw = trunc i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow6StatusD2Ev.exit26.i, label %_ZN5arrow6StatusD2Ev.exit30.i

bb.p:                                             ; preds = %.lr.ph.split.i
  %i.dx = load ptr, ptr %i.dm, align 8, !tbaa !10, !noalias !2106
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !15, !noalias !2106
  switch i32 %i.dz, label %bb.s [
    i32 27, label %_ZNK5arrow5Array7IsValidEl.exit.i
    i32 28, label %bb.q
    i32 38, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ea = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i64 noundef %.0183.i)
          to label %.noexc53 unwind label %.loopexit94

.noexc53:                                         ; preds = %bb.q
  br i1 %i.ea, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

bb.r:                                             ; preds = %bb.p
  %i.eb = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i64 noundef %.0183.i)
          to label %.noexc54 unwind label %.loopexit94

.noexc54:                                         ; preds = %bb.r
  br i1 %i.eb, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

bb.s:                                             ; preds = %bb.p
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.ed = load atomic i64, ptr %i.ec seq_cst, align 8, !noalias !2106
  %i.ee = load ptr, ptr %i.bo, align 8, !tbaa !203, !noalias !2106
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !231, !noalias !2106
  %.not1.i = icmp eq i64 %i.ed, %i.eg
  br i1 %.not1.i, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

_ZNK5arrow5Array7IsValidEl.exit.i:                ; preds = %bb.p
  %i.eh = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i64 noundef %.0183.i)
          to label %.noexc55 unwind label %.loopexit94

.noexc55:                                         ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i
  br i1 %i.eh, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

_ZN5arrow6StatusD2Ev.exit26.i:                    ; preds = %.noexc55, %bb.s, %.noexc54, %.noexc53, %bb.o
  %i.ei = load ptr, ptr %i.bt, align 8, !tbaa !308, !noalias !2106
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.0183.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !2106
  %i.el = sext i32 %i.ek to i64
  %i.em = load ptr, ptr %i.bu, align 8, !tbaa !313, !noalias !2106
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.el ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3, !noalias !2106
  %i.ep = getelementptr i8, ptr %i.en, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !2106
  %i.er = sub nsw i32 %i.eq, %i.eo
  %i.es = sext i32 %i.er to i64
  %i.et = add i64 %.3, %i.es
  br label %_ZN5arrow6StatusD2Ev.exit30.i

_ZN5arrow6StatusD2Ev.exit30.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit26.i, %.noexc55, %bb.s, %.noexc54, %.noexc53, %bb.o
  %.4 = phi i64 [ %.3, %bb.s ], [ %i.et, %_ZN5arrow6StatusD2Ev.exit26.i ], [ %.3, %.noexc55 ], [ %.3, %.noexc53 ], [ %.3, %.noexc54 ], [ %.3, %bb.o ] ; 2 uses
  %i.eu = add nuw nsw i64 %.0183.i, 1             ; 2 uses
  %i.ev = load ptr, ptr %i.bo, align 8, !tbaa !203, !noalias !2106 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !231, !noalias !2106
  %.not.i50 = icmp slt i64 %i.eu, %i.ex
  br i1 %.not.i50, label %.lr.ph.splitthread-pre-split.i, label %_ZN5arrow6StatusD2Ev.exit59, !llvm.loop !2110

.loopexit94:                                      ; preds = %bb.q, %bb.r, %_ZNK5arrow5Array7IsValidEl.exit.i
  %lpad.loopexit96 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp95:                             ; preds = %_ZN5arrow6StatusD2Ev.exit48, %.noexc
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit59:                      ; preds = %_ZN5arrow6StatusD2Ev.exit30.us.i, %_ZN5arrow6StatusD2Ev.exit30.i, %.noexc52, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i
  %.5 = phi i64 [ 0, %.noexc52 ], [ %.4, %_ZN5arrow6StatusD2Ev.exit30.i ], [ %.0, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ], [ %.2, %_ZN5arrow6StatusD2Ev.exit30.us.i ] ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !159, !alias.scope !2111
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !2114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !2117
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 240 ; 7 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !323, !noalias !2117
  %i.fa = add nsw i64 %i.ez, %.5                  ; 3 uses
  store i64 %i.fa, ptr %i.a, align 8, !tbaa !168, !noalias !2117
  %i.fb = icmp sgt i64 %i.fa, 2147483646
  br i1 %i.fb, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit6.thread.i, !prof !44

_ZN5arrow6StatusD2Ev.exit6.thread.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !2117
  store ptr null, ptr %8, align 8, !tbaa !159, !alias.scope !2120
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2114
  br label %bb.t

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !2117
  store i64 2147483646, ptr %i.b, align 8, !tbaa !168, !noalias !2117
  invoke void @_ZN5arrow6Status13CapacityErrorIJRA32_KclRA14_S2_RlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 1 dereferenceable(32) @.str.15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.16, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc62 unwind label %bb.v

.noexc62:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !2117
  %.pr.i60 = load ptr, ptr %4, align 8, !tbaa !159, !noalias !2123 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !2117
  call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  store ptr %.pr.i60, ptr %8, align 8, !tbaa !159, !alias.scope !2123
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2114
  %i.fc = icmp eq ptr %.pr.i60, null
  br i1 %i.fc, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, label %_ZN5arrow6StatusD2Ev.exit65.thread93

_ZN5arrow6StatusD2Ev.exit65.thread93:             ; preds = %.noexc62
  store ptr %.pr.i60, ptr %0, align 8, !tbaa !159, !alias.scope !2126
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit._crit_edge.i:           ; preds = %.noexc62
  %.pre.i61 = load i64, ptr %i.ey, align 8, !tbaa !323, !noalias !2129
  %.pre8.i = add nsw i64 %.pre.i61, %.5
  br label %bb.t

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, %_ZN5arrow6StatusD2Ev.exit6.thread.i
  %.pre-phi.i = phi i64 [ %.pre8.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i ], [ %i.fa, %_ZN5arrow6StatusD2Ev.exit6.thread.i ] ; 2 uses
  %i.fd = load i64, ptr %i.az, align 8, !tbaa !499, !noalias !2129 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %.pre-phi.i, %i.fd
  br i1 %.not.i.i.i, label %bb.u, label %_ZN5arrow6StatusD2Ev.exit65.thread

_ZN5arrow6StatusD2Ev.exit65.thread:               ; preds = %bb.t
  store ptr null, ptr %0, align 8, !tbaa !159, !alias.scope !2134
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN5arrow6StatusD2Ev.exit67

bb.u:                                             ; preds = %bb.t
  %i.fe = shl nsw i64 %i.fd, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %.pre-phi.i, i64 %i.fe)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i64 noundef %.sroa.speculated.i.i.i.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit65 unwind label %bb.v

_ZN5arrow6StatusD2Ev.exit65:                      ; preds = %bb.u
  %.pr = load ptr, ptr %8, align 8, !tbaa !159, !noalias !2136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  store ptr %.pr, ptr %0, align 8, !tbaa !159, !alias.scope !2136
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ff = icmp eq ptr %.pr, null
  br i1 %i.ff, label %_ZN5arrow6StatusD2Ev.exit67, label %.critedge

bb.v:                                             ; preds = %bb.u, %_ZN5arrow6StatusD2Ev.exit.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit67:                      ; preds = %_ZN5arrow6StatusD2Ev.exit65, %_ZN5arrow6StatusD2Ev.exit65.thread
  %i.fh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc74 unwind label %.loopexit.split-lp

.noexc74:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit67
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !200, !noalias !2138 ; 2 uses
  %i.fj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %.noexc74
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !200, !noalias !2138 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !203, !noalias !2138 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !231, !noalias !2138
  %.not4.i = icmp sgt i64 %i.fo, 0
  br i1 %.not4.i, label %.lr.ph.i68, label %_ZN5arrow6StatusD2Ev.exit82

.lr.ph.i68:                                       ; preds = %.noexc75
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
end_hunk_1
begin_hunk_2_@_ZN5arrow4json15BinaryConverterINS_15LargeBinaryTypeEE7ConvertERKSt10shared_ptrINS_5ArrayEEPS6_:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !190
  call void @_ZN5arrow15MakeArrayOfNullERKSt10shared_ptrINS_8DataTypeEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.l, ptr noundef %i.n)
  invoke void @_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE5ValueIS3_vEENS_6StatusEPT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %3)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %5, align 8, !tbaa !159
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !249

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !39
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #23, !inline_history !250
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #23, !inline_history !250
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !44

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !159
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !251

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ar

bb.k:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.as

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !190 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !278
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.al, align 8, !tbaa !290
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !291
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ao, align 8, !tbaa !292
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.aq, align 8, !tbaa !293
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i8 0, i64 80, i1 false)
  store ptr %i.aj, ptr %i.as, align 8, !tbaa !291
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.at, align 8, !tbaa !292
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.av, align 8, !tbaa !293
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.aj, ptr %i.ax, align 8, !tbaa !291
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 224 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ay, align 8, !tbaa !292
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 232 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ba, align 8, !tbaa !293
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow18LargeBinaryBuilderE, i64 16), ptr %6, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !200
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !203
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !231
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(256) %6, i64 noundef %i.bg)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.n

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  %i.bh = load ptr, ptr %7, align 8, !tbaa !159, !noalias !2153 ; 2 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !159, !alias.scope !2153
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit48, label %.critedge

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit48:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc unwind label %.loopexit.split-lp95

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !200, !noalias !2156
  %i.bm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc52 unwind label %.loopexit.split-lp95

.noexc52:                                         ; preds = %.noexc
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !200, !noalias !2156 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !203, !noalias !2156 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !231, !noalias !2156 ; 3 uses
  %.not2.i = icmp sgt i64 %i.br, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit59

.lr.ph.i:                                         ; preds = %.noexc52
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 3 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !305, !noalias !2156 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !307, !noalias !2156 ; 3 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !43, !noalias !2156
  %i.cc = trunc i64 %i.by to i8
  %i.cd = and i8 %i.cc, 7
  %i.ce = lshr i8 %i.cb, %i.cd
  %i.cf = trunc i8 %i.ce to i1
  br i1 %i.cf, label %_ZN5arrow6StatusD2Ev.exit26.us.peel.i, label %_ZN5arrow6StatusD2Ev.exit30.us.peel.i

_ZN5arrow6StatusD2Ev.exit26.us.peel.i:            ; preds = %.lr.ph.split.us.i
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !308, !noalias !2156
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3, !noalias !2156
  %i.ci = sext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !313, !noalias !2156
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ci ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !2156
  %i.cm = getelementptr i8, ptr %i.ck, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3, !noalias !2156
  %i.co = sub nsw i32 %i.cn, %i.cl
  %i.cp = sext i32 %i.co to i64
  br label %_ZN5arrow6StatusD2Ev.exit30.us.peel.i

_ZN5arrow6StatusD2Ev.exit30.us.peel.i:            ; preds = %_ZN5arrow6StatusD2Ev.exit26.us.peel.i, %.lr.ph.split.us.i
  %.0 = phi i64 [ %i.cp, %_ZN5arrow6StatusD2Ev.exit26.us.peel.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %.not.us.peel.i.not = icmp eq i64 %i.br, 1
  br i1 %.not.us.peel.i.not, label %_ZN5arrow6StatusD2Ev.exit59, label %.peel.next.i

.peel.next.i:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit30.us.peel.i, %_ZN5arrow6StatusD2Ev.exit30.us.i
  %.1 = phi i64 [ %.2, %_ZN5arrow6StatusD2Ev.exit30.us.i ], [ %.0, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ] ; 2 uses
  %.0183.us.i = phi i64 [ %i.dk, %_ZN5arrow6StatusD2Ev.exit30.us.i ], [ 1, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ] ; 3 uses
  %i.cq = add nsw i64 %.0183.us.i, %i.by          ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !43, !noalias !2156
  %i.cu = trunc i64 %i.cq to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = lshr i8 %i.ct, %i.cv
  %i.cx = trunc i8 %i.cw to i1
  br i1 %i.cx, label %_ZN5arrow6StatusD2Ev.exit26.us.i, label %_ZN5arrow6StatusD2Ev.exit30.us.i

_ZN5arrow6StatusD2Ev.exit26.us.i:                 ; preds = %.peel.next.i
  %i.cy = load ptr, ptr %i.bt, align 8, !tbaa !308, !noalias !2156
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.0183.us.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3, !noalias !2156
  %i.db = sext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.bu, align 8, !tbaa !313, !noalias !2156
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.db ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3, !noalias !2156
  %i.df = getelementptr i8, ptr %i.dd, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3, !noalias !2156
  %i.dh = sub nsw i32 %i.dg, %i.de
  %i.di = sext i32 %i.dh to i64
  %i.dj = add i64 %.1, %i.di
  br label %_ZN5arrow6StatusD2Ev.exit30.us.i

_ZN5arrow6StatusD2Ev.exit30.us.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit26.us.i, %.peel.next.i
  %.2 = phi i64 [ %i.dj, %_ZN5arrow6StatusD2Ev.exit26.us.i ], [ %.1, %.peel.next.i ] ; 2 uses
  %i.dk = add nuw nsw i64 %.0183.us.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.br
  br i1 %exitcond.not, label %_ZN5arrow6StatusD2Ev.exit59, label %.peel.next.i, !llvm.loop !2159

.lr.ph.splitthread-pre-split.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit30.i
  %.pr.i51 = load ptr, ptr %i.bs, align 8, !tbaa !305, !noalias !2156
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %.3 = phi i64 [ %.4, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.dl = phi ptr [ %.pr.i51, %.lr.ph.splitthread-pre-split.i ], [ null, %.lr.ph.i ] ; 2 uses
  %i.dm = phi ptr [ %i.ev, %.lr.ph.splitthread-pre-split.i ], [ %i.bp, %.lr.ph.i ] ; 6 uses
  %.0183.i = phi i64 [ %i.eu, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %.not.i.i49 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !307, !noalias !2156
  %i.dp = add nsw i64 %i.do, %.0183.i             ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !43, !noalias !2156
  %i.dt = trunc i64 %i.dp to i8
  %i.du = and i8 %i.dt, 7
  %i.dv = lshr i8 %i.ds, %i.du
  %i.dw = trunc i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow6StatusD2Ev.exit26.i, label %_ZN5arrow6StatusD2Ev.exit30.i

bb.p:                                             ; preds = %.lr.ph.split.i
  %i.dx = load ptr, ptr %i.dm, align 8, !tbaa !10, !noalias !2156
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !15, !noalias !2156
  switch i32 %i.dz, label %bb.s [
    i32 27, label %_ZNK5arrow5Array7IsValidEl.exit.i
    i32 28, label %bb.q
    i32 38, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ea = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i64 noundef %.0183.i)
          to label %.noexc53 unwind label %.loopexit94

.noexc53:                                         ; preds = %bb.q
  br i1 %i.ea, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

bb.r:                                             ; preds = %bb.p
  %i.eb = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i64 noundef %.0183.i)
          to label %.noexc54 unwind label %.loopexit94

.noexc54:                                         ; preds = %bb.r
  br i1 %i.eb, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

bb.s:                                             ; preds = %bb.p
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.ed = load atomic i64, ptr %i.ec seq_cst, align 8, !noalias !2156
  %i.ee = load ptr, ptr %i.bo, align 8, !tbaa !203, !noalias !2156
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !231, !noalias !2156
  %.not1.i = icmp eq i64 %i.ed, %i.eg
  br i1 %.not1.i, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

_ZNK5arrow5Array7IsValidEl.exit.i:                ; preds = %bb.p
  %i.eh = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i64 noundef %.0183.i)
          to label %.noexc55 unwind label %.loopexit94

.noexc55:                                         ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i
  br i1 %i.eh, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

_ZN5arrow6StatusD2Ev.exit26.i:                    ; preds = %.noexc55, %bb.s, %.noexc54, %.noexc53, %bb.o
  %i.ei = load ptr, ptr %i.bt, align 8, !tbaa !308, !noalias !2156
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.0183.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !2156
  %i.el = sext i32 %i.ek to i64
  %i.em = load ptr, ptr %i.bu, align 8, !tbaa !313, !noalias !2156
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.el ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3, !noalias !2156
  %i.ep = getelementptr i8, ptr %i.en, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !2156
  %i.er = sub nsw i32 %i.eq, %i.eo
  %i.es = sext i32 %i.er to i64
  %i.et = add i64 %.3, %i.es
  br label %_ZN5arrow6StatusD2Ev.exit30.i

_ZN5arrow6StatusD2Ev.exit30.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit26.i, %.noexc55, %bb.s, %.noexc54, %.noexc53, %bb.o
  %.4 = phi i64 [ %.3, %bb.s ], [ %i.et, %_ZN5arrow6StatusD2Ev.exit26.i ], [ %.3, %.noexc55 ], [ %.3, %.noexc53 ], [ %.3, %.noexc54 ], [ %.3, %bb.o ] ; 2 uses
  %i.eu = add nuw nsw i64 %.0183.i, 1             ; 2 uses
  %i.ev = load ptr, ptr %i.bo, align 8, !tbaa !203, !noalias !2156 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !231, !noalias !2156
  %.not.i50 = icmp slt i64 %i.eu, %i.ex
  br i1 %.not.i50, label %.lr.ph.splitthread-pre-split.i, label %_ZN5arrow6StatusD2Ev.exit59, !llvm.loop !2160

.loopexit94:                                      ; preds = %bb.q, %bb.r, %_ZNK5arrow5Array7IsValidEl.exit.i
  %lpad.loopexit96 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp95:                             ; preds = %_ZN5arrow6StatusD2Ev.exit48, %.noexc
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit59:                      ; preds = %_ZN5arrow6StatusD2Ev.exit30.us.i, %_ZN5arrow6StatusD2Ev.exit30.i, %.noexc52, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i
  %.5 = phi i64 [ 0, %.noexc52 ], [ %.4, %_ZN5arrow6StatusD2Ev.exit30.i ], [ %.0, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ], [ %.2, %_ZN5arrow6StatusD2Ev.exit30.us.i ] ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !159, !alias.scope !2161
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !2164)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !2164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !2167
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 240 ; 7 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !323, !noalias !2167
  %i.fa = add nsw i64 %i.ez, %.5                  ; 3 uses
  store i64 %i.fa, ptr %i.a, align 8, !tbaa !168, !noalias !2167
  %i.fb = icmp eq i64 %i.fa, 9223372036854775807
  br i1 %i.fb, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit6.thread.i, !prof !44

_ZN5arrow6StatusD2Ev.exit6.thread.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !2167
  store ptr null, ptr %8, align 8, !tbaa !159, !alias.scope !2170
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2164
  br label %bb.t

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !2167
  store i64 9223372036854775806, ptr %i.b, align 8, !tbaa !168, !noalias !2167
  invoke void @_ZN5arrow6Status13CapacityErrorIJRA32_KclRA14_S2_RlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 1 dereferenceable(32) @.str.15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.16, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc62 unwind label %bb.v

.noexc62:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !2167
  %.pr.i60 = load ptr, ptr %4, align 8, !tbaa !159, !noalias !2173 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !2167
  call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  store ptr %.pr.i60, ptr %8, align 8, !tbaa !159, !alias.scope !2173
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2164
  %i.fc = icmp eq ptr %.pr.i60, null
  br i1 %i.fc, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, label %_ZN5arrow6StatusD2Ev.exit65.thread93

_ZN5arrow6StatusD2Ev.exit65.thread93:             ; preds = %.noexc62
  store ptr %.pr.i60, ptr %0, align 8, !tbaa !159, !alias.scope !2176
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit._crit_edge.i:           ; preds = %.noexc62
  %.pre.i61 = load i64, ptr %i.ey, align 8, !tbaa !323, !noalias !2179
  %.pre8.i = add nsw i64 %.pre.i61, %.5
  br label %bb.t

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, %_ZN5arrow6StatusD2Ev.exit6.thread.i
  %.pre-phi.i = phi i64 [ %.pre8.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i ], [ %i.fa, %_ZN5arrow6StatusD2Ev.exit6.thread.i ] ; 2 uses
  %i.fd = load i64, ptr %i.az, align 8, !tbaa !499, !noalias !2179 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %.pre-phi.i, %i.fd
  br i1 %.not.i.i.i, label %bb.u, label %_ZN5arrow6StatusD2Ev.exit65.thread

_ZN5arrow6StatusD2Ev.exit65.thread:               ; preds = %bb.t
  store ptr null, ptr %0, align 8, !tbaa !159, !alias.scope !2184
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN5arrow6StatusD2Ev.exit67

bb.u:                                             ; preds = %bb.t
  %i.fe = shl nsw i64 %i.fd, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %.pre-phi.i, i64 %i.fe)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i64 noundef %.sroa.speculated.i.i.i.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit65 unwind label %bb.v

_ZN5arrow6StatusD2Ev.exit65:                      ; preds = %bb.u
  %.pr = load ptr, ptr %8, align 8, !tbaa !159, !noalias !2186 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2186)
  store ptr %.pr, ptr %0, align 8, !tbaa !159, !alias.scope !2186
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ff = icmp eq ptr %.pr, null
  br i1 %i.ff, label %_ZN5arrow6StatusD2Ev.exit67, label %.critedge

bb.v:                                             ; preds = %bb.u, %_ZN5arrow6StatusD2Ev.exit.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit67:                      ; preds = %_ZN5arrow6StatusD2Ev.exit65, %_ZN5arrow6StatusD2Ev.exit65.thread
  %i.fh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc74 unwind label %.loopexit.split-lp

.noexc74:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit67
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !200, !noalias !2188 ; 2 uses
  %i.fj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %.noexc74
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !200, !noalias !2188 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !203, !noalias !2188 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !231, !noalias !2188
  %.not4.i = icmp sgt i64 %i.fo, 0
  br i1 %.not4.i, label %.lr.ph.i68, label %_ZN5arrow6StatusD2Ev.exit82

.lr.ph.i68:                                       ; preds = %.noexc75
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
end_hunk_2
begin_hunk_3_@_ZN5arrow4json15BinaryConverterINS_15LargeStringTypeEE7ConvertERKSt10shared_ptrINS_5ArrayEEPS6_:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !190
  call void @_ZN5arrow15MakeArrayOfNullERKSt10shared_ptrINS_8DataTypeEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.l, ptr noundef %i.n)
  invoke void @_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE5ValueIS3_vEENS_6StatusEPT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %3)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %5, align 8, !tbaa !159
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !249

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !39
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #23, !inline_history !250
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #23, !inline_history !250
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !44

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !159
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !251

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ar

bb.k:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.as

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !190 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !278
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 64, ptr %i.al, align 8, !tbaa !290
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !291
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ao, align 8, !tbaa !292
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.aq, align 8, !tbaa !293
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i8 0, i64 80, i1 false)
  store ptr %i.aj, ptr %i.as, align 8, !tbaa !291
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.at, align 8, !tbaa !292
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.av, align 8, !tbaa !293
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.aj, ptr %i.ax, align 8, !tbaa !291
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 224 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ay, align 8, !tbaa !292
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 232 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store i64 64, ptr %i.ba, align 8, !tbaa !293
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow18LargeStringBuilderE, i64 16), ptr %6, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !200
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !203
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !231
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(256) %6, i64 noundef %i.bg)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.n

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  %i.bh = load ptr, ptr %7, align 8, !tbaa !159, !noalias !2318 ; 2 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !159, !alias.scope !2318
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit48, label %.critedge

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit48:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc unwind label %.loopexit.split-lp95

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !200, !noalias !2321
  %i.bm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc52 unwind label %.loopexit.split-lp95

.noexc52:                                         ; preds = %.noexc
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !200, !noalias !2321 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !203, !noalias !2321 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !231, !noalias !2321 ; 3 uses
  %.not2.i = icmp sgt i64 %i.br, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit59

.lr.ph.i:                                         ; preds = %.noexc52
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 3 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !305, !noalias !2321 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !307, !noalias !2321 ; 3 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !43, !noalias !2321
  %i.cc = trunc i64 %i.by to i8
  %i.cd = and i8 %i.cc, 7
  %i.ce = lshr i8 %i.cb, %i.cd
  %i.cf = trunc i8 %i.ce to i1
  br i1 %i.cf, label %_ZN5arrow6StatusD2Ev.exit26.us.peel.i, label %_ZN5arrow6StatusD2Ev.exit30.us.peel.i

_ZN5arrow6StatusD2Ev.exit26.us.peel.i:            ; preds = %.lr.ph.split.us.i
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !308, !noalias !2321
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3, !noalias !2321
  %i.ci = sext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !313, !noalias !2321
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ci ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !2321
  %i.cm = getelementptr i8, ptr %i.ck, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3, !noalias !2321
  %i.co = sub nsw i32 %i.cn, %i.cl
  %i.cp = sext i32 %i.co to i64
  br label %_ZN5arrow6StatusD2Ev.exit30.us.peel.i

_ZN5arrow6StatusD2Ev.exit30.us.peel.i:            ; preds = %_ZN5arrow6StatusD2Ev.exit26.us.peel.i, %.lr.ph.split.us.i
  %.0 = phi i64 [ %i.cp, %_ZN5arrow6StatusD2Ev.exit26.us.peel.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %.not.us.peel.i.not = icmp eq i64 %i.br, 1
  br i1 %.not.us.peel.i.not, label %_ZN5arrow6StatusD2Ev.exit59, label %.peel.next.i

.peel.next.i:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit30.us.peel.i, %_ZN5arrow6StatusD2Ev.exit30.us.i
  %.1 = phi i64 [ %.2, %_ZN5arrow6StatusD2Ev.exit30.us.i ], [ %.0, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ] ; 2 uses
  %.0183.us.i = phi i64 [ %i.dk, %_ZN5arrow6StatusD2Ev.exit30.us.i ], [ 1, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ] ; 3 uses
  %i.cq = add nsw i64 %.0183.us.i, %i.by          ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !43, !noalias !2321
  %i.cu = trunc i64 %i.cq to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = lshr i8 %i.ct, %i.cv
  %i.cx = trunc i8 %i.cw to i1
  br i1 %i.cx, label %_ZN5arrow6StatusD2Ev.exit26.us.i, label %_ZN5arrow6StatusD2Ev.exit30.us.i

_ZN5arrow6StatusD2Ev.exit26.us.i:                 ; preds = %.peel.next.i
  %i.cy = load ptr, ptr %i.bt, align 8, !tbaa !308, !noalias !2321
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.0183.us.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3, !noalias !2321
  %i.db = sext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.bu, align 8, !tbaa !313, !noalias !2321
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.db ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3, !noalias !2321
  %i.df = getelementptr i8, ptr %i.dd, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3, !noalias !2321
  %i.dh = sub nsw i32 %i.dg, %i.de
  %i.di = sext i32 %i.dh to i64
  %i.dj = add i64 %.1, %i.di
  br label %_ZN5arrow6StatusD2Ev.exit30.us.i

_ZN5arrow6StatusD2Ev.exit30.us.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit26.us.i, %.peel.next.i
  %.2 = phi i64 [ %i.dj, %_ZN5arrow6StatusD2Ev.exit26.us.i ], [ %.1, %.peel.next.i ] ; 2 uses
  %i.dk = add nuw nsw i64 %.0183.us.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.br
  br i1 %exitcond.not, label %_ZN5arrow6StatusD2Ev.exit59, label %.peel.next.i, !llvm.loop !2324

.lr.ph.splitthread-pre-split.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit30.i
  %.pr.i51 = load ptr, ptr %i.bs, align 8, !tbaa !305, !noalias !2321
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %.3 = phi i64 [ %.4, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.dl = phi ptr [ %.pr.i51, %.lr.ph.splitthread-pre-split.i ], [ null, %.lr.ph.i ] ; 2 uses
  %i.dm = phi ptr [ %i.ev, %.lr.ph.splitthread-pre-split.i ], [ %i.bp, %.lr.ph.i ] ; 6 uses
  %.0183.i = phi i64 [ %i.eu, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %.not.i.i49 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !307, !noalias !2321
  %i.dp = add nsw i64 %i.do, %.0183.i             ; 2 uses
  %i.dq = lshr i64 %i.dp, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !43, !noalias !2321
  %i.dt = trunc i64 %i.dp to i8
  %i.du = and i8 %i.dt, 7
  %i.dv = lshr i8 %i.ds, %i.du
  %i.dw = trunc i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5arrow6StatusD2Ev.exit26.i, label %_ZN5arrow6StatusD2Ev.exit30.i

bb.p:                                             ; preds = %.lr.ph.split.i
  %i.dx = load ptr, ptr %i.dm, align 8, !tbaa !10, !noalias !2321
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !15, !noalias !2321
  switch i32 %i.dz, label %bb.s [
    i32 27, label %_ZNK5arrow5Array7IsValidEl.exit.i
    i32 28, label %bb.q
    i32 38, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ea = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i64 noundef %.0183.i)
          to label %.noexc53 unwind label %.loopexit94

.noexc53:                                         ; preds = %bb.q
  br i1 %i.ea, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

bb.r:                                             ; preds = %bb.p
  %i.eb = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i64 noundef %.0183.i)
          to label %.noexc54 unwind label %.loopexit94

.noexc54:                                         ; preds = %bb.r
  br i1 %i.eb, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

bb.s:                                             ; preds = %bb.p
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.ed = load atomic i64, ptr %i.ec seq_cst, align 8, !noalias !2321
  %i.ee = load ptr, ptr %i.bo, align 8, !tbaa !203, !noalias !2321
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !231, !noalias !2321
  %.not1.i = icmp eq i64 %i.ed, %i.eg
  br i1 %.not1.i, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

_ZNK5arrow5Array7IsValidEl.exit.i:                ; preds = %bb.p
  %i.eh = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.dm, i64 noundef %.0183.i)
          to label %.noexc55 unwind label %.loopexit94

.noexc55:                                         ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i
  br i1 %i.eh, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

_ZN5arrow6StatusD2Ev.exit26.i:                    ; preds = %.noexc55, %bb.s, %.noexc54, %.noexc53, %bb.o
  %i.ei = load ptr, ptr %i.bt, align 8, !tbaa !308, !noalias !2321
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.0183.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !2321
  %i.el = sext i32 %i.ek to i64
  %i.em = load ptr, ptr %i.bu, align 8, !tbaa !313, !noalias !2321
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.el ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3, !noalias !2321
  %i.ep = getelementptr i8, ptr %i.en, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3, !noalias !2321
  %i.er = sub nsw i32 %i.eq, %i.eo
  %i.es = sext i32 %i.er to i64
  %i.et = add i64 %.3, %i.es
  br label %_ZN5arrow6StatusD2Ev.exit30.i

_ZN5arrow6StatusD2Ev.exit30.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit26.i, %.noexc55, %bb.s, %.noexc54, %.noexc53, %bb.o
  %.4 = phi i64 [ %.3, %bb.s ], [ %i.et, %_ZN5arrow6StatusD2Ev.exit26.i ], [ %.3, %.noexc55 ], [ %.3, %.noexc53 ], [ %.3, %.noexc54 ], [ %.3, %bb.o ] ; 2 uses
  %i.eu = add nuw nsw i64 %.0183.i, 1             ; 2 uses
  %i.ev = load ptr, ptr %i.bo, align 8, !tbaa !203, !noalias !2321 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !231, !noalias !2321
  %.not.i50 = icmp slt i64 %i.eu, %i.ex
  br i1 %.not.i50, label %.lr.ph.splitthread-pre-split.i, label %_ZN5arrow6StatusD2Ev.exit59, !llvm.loop !2325

.loopexit94:                                      ; preds = %bb.q, %bb.r, %_ZNK5arrow5Array7IsValidEl.exit.i
  %lpad.loopexit96 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp95:                             ; preds = %_ZN5arrow6StatusD2Ev.exit48, %.noexc
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit59:                      ; preds = %_ZN5arrow6StatusD2Ev.exit30.us.i, %_ZN5arrow6StatusD2Ev.exit30.i, %.noexc52, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i
  %.5 = phi i64 [ 0, %.noexc52 ], [ %.4, %_ZN5arrow6StatusD2Ev.exit30.i ], [ %.0, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ], [ %.2, %_ZN5arrow6StatusD2Ev.exit30.us.i ] ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !159, !alias.scope !2326
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !2329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !2332
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 240 ; 7 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !323, !noalias !2332
  %i.fa = add nsw i64 %i.ez, %.5                  ; 3 uses
  store i64 %i.fa, ptr %i.a, align 8, !tbaa !168, !noalias !2332
  %i.fb = icmp eq i64 %i.fa, 9223372036854775807
  br i1 %i.fb, label %_ZN5arrow6StatusD2Ev.exit.i, label %_ZN5arrow6StatusD2Ev.exit6.thread.i, !prof !44

_ZN5arrow6StatusD2Ev.exit6.thread.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !2332
  store ptr null, ptr %8, align 8, !tbaa !159, !alias.scope !2335
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2329
  br label %bb.t

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !2332
  store i64 9223372036854775806, ptr %i.b, align 8, !tbaa !168, !noalias !2332
  invoke void @_ZN5arrow6Status13CapacityErrorIJRA32_KclRA14_S2_RlEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 1 dereferenceable(32) @.str.15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(14) @.str.16, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc62 unwind label %bb.v

.noexc62:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !2332
  %.pr.i60 = load ptr, ptr %4, align 8, !tbaa !159, !noalias !2338 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !2332
  call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  store ptr %.pr.i60, ptr %8, align 8, !tbaa !159, !alias.scope !2338
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2329
  %i.fc = icmp eq ptr %.pr.i60, null
  br i1 %i.fc, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, label %_ZN5arrow6StatusD2Ev.exit65.thread93

_ZN5arrow6StatusD2Ev.exit65.thread93:             ; preds = %.noexc62
  store ptr %.pr.i60, ptr %0, align 8, !tbaa !159, !alias.scope !2341
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit._crit_edge.i:           ; preds = %.noexc62
  %.pre.i61 = load i64, ptr %i.ey, align 8, !tbaa !323, !noalias !2344
  %.pre8.i = add nsw i64 %.pre.i61, %.5
  br label %bb.t

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i, %_ZN5arrow6StatusD2Ev.exit6.thread.i
  %.pre-phi.i = phi i64 [ %.pre8.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i ], [ %i.fa, %_ZN5arrow6StatusD2Ev.exit6.thread.i ] ; 2 uses
  %i.fd = load i64, ptr %i.az, align 8, !tbaa !499, !noalias !2344 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %.pre-phi.i, %i.fd
  br i1 %.not.i.i.i, label %bb.u, label %_ZN5arrow6StatusD2Ev.exit65.thread

_ZN5arrow6StatusD2Ev.exit65.thread:               ; preds = %bb.t
  store ptr null, ptr %0, align 8, !tbaa !159, !alias.scope !2349
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN5arrow6StatusD2Ev.exit67

bb.u:                                             ; preds = %bb.t
  %i.fe = shl nsw i64 %i.fd, 1
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %.pre-phi.i, i64 %i.fe)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i64 noundef %.sroa.speculated.i.i.i.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit65 unwind label %bb.v

_ZN5arrow6StatusD2Ev.exit65:                      ; preds = %bb.u
  %.pr = load ptr, ptr %8, align 8, !tbaa !159, !noalias !2351 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  store ptr %.pr, ptr %0, align 8, !tbaa !159, !alias.scope !2351
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ff = icmp eq ptr %.pr, null
  br i1 %i.ff, label %_ZN5arrow6StatusD2Ev.exit67, label %.critedge

bb.v:                                             ; preds = %bb.u, %_ZN5arrow6StatusD2Ev.exit.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.aq

_ZN5arrow6StatusD2Ev.exit67:                      ; preds = %_ZN5arrow6StatusD2Ev.exit65, %_ZN5arrow6StatusD2Ev.exit65.thread
  %i.fh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc74 unwind label %.loopexit.split-lp

.noexc74:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit67
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !200, !noalias !2353 ; 2 uses
  %i.fj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %.noexc74
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !200, !noalias !2353 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !203, !noalias !2353 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !231, !noalias !2353
  %.not4.i = icmp sgt i64 %i.fo, 0
  br i1 %.not4.i, label %.lr.ph.i68, label %_ZN5arrow6StatusD2Ev.exit82

.lr.ph.i68:                                       ; preds = %.noexc75
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
end_hunk_3
begin_hunk_4_@_ZN5arrow4json15BinaryConverterINS_14BinaryViewTypeEED0Ev:bb.a
  br i1 %i.q, label %bb.g, label %_ZN5arrow4json9ConverterD2Ev.exit, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !199
  br label %_ZN5arrow4json9ConverterD2Ev.exit

_ZN5arrow4json9ConverterD2Ev.exit:                ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4json15BinaryConverterINS_14BinaryViewTypeEE7ConvertERKSt10shared_ptrINS_5ArrayEEPS6_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.02.i.i.i.i.i.i.i = alloca %struct.anon.470, align 8 ; 7 uses
  %4 = alloca %"class.arrow::Result", align 8     ; 10 uses
  %5 = alloca %"class.arrow::BinaryViewBuilder", align 8 ; 20 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !200    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !203  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !231
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !190
  call void @_ZN5arrow15MakeArrayOfNullERKSt10shared_ptrINS_8DataTypeEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef %i.j, ptr noundef %i.l)
  invoke void @_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE5ValueIS3_vEENS_6StatusEPT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %3)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %4, align 8, !tbaa !159
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !249

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.q, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !39
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #23, !inline_history !250
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #23, !inline_history !250
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.h ], [ %i.ad, %bb.i ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !44

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !159
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !251

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ag

bb.k:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ah

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !190
  call void @_ZN5arrow17BinaryViewBuilderC1ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(272) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ai = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !200
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !203
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !231
  invoke void @_ZN5arrow17BinaryViewBuilder6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(272) %5, i64 noundef %i.an)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.n

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !2368)
  %i.ao = load ptr, ptr %6, align 8, !tbaa !159, !noalias !2368 ; 2 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !159, !alias.scope !2368
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit48, label %.critedge

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.af

_ZN5arrow6StatusD2Ev.exit48:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp87

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !200, !noalias !2371
  %i.at = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc52 unwind label %.loopexit.split-lp87

.noexc52:                                         ; preds = %.noexc
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !200, !noalias !2371 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !203, !noalias !2371 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !231, !noalias !2371 ; 3 uses
  %.not2.i = icmp sgt i64 %i.ay, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit59

.lr.ph.i:                                         ; preds = %.noexc52
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !305, !noalias !2371 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !307, !noalias !2371 ; 3 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !43, !noalias !2371
  %i.bj = trunc i64 %i.bf to i8
  %i.bk = and i8 %i.bj, 7
  %i.bl = lshr i8 %i.bi, %i.bk
  %i.bm = trunc i8 %i.bl to i1
  br i1 %i.bm, label %_ZN5arrow6StatusD2Ev.exit26.us.peel.i, label %_ZN5arrow6StatusD2Ev.exit30.us.peel.i

_ZN5arrow6StatusD2Ev.exit26.us.peel.i:            ; preds = %.lr.ph.split.us.i
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !308, !noalias !2371
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3, !noalias !2371
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load ptr, ptr %i.bb, align 8, !tbaa !313, !noalias !2371
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bp ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3, !noalias !2371
  %i.bt = getelementptr i8, ptr %i.br, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !2371
  %i.bv = sub nsw i32 %i.bu, %i.bs
  %i.bw = sext i32 %i.bv to i64
  br label %_ZN5arrow6StatusD2Ev.exit30.us.peel.i

_ZN5arrow6StatusD2Ev.exit30.us.peel.i:            ; preds = %_ZN5arrow6StatusD2Ev.exit26.us.peel.i, %.lr.ph.split.us.i
  %.0 = phi i64 [ %i.bw, %_ZN5arrow6StatusD2Ev.exit26.us.peel.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %.not.us.peel.i.not = icmp eq i64 %i.ay, 1
  br i1 %.not.us.peel.i.not, label %_ZN5arrow6StatusD2Ev.exit59, label %.peel.next.i

.peel.next.i:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit30.us.peel.i, %_ZN5arrow6StatusD2Ev.exit30.us.i
  %.1 = phi i64 [ %.2, %_ZN5arrow6StatusD2Ev.exit30.us.i ], [ %.0, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ] ; 2 uses
  %.0183.us.i = phi i64 [ %i.cr, %_ZN5arrow6StatusD2Ev.exit30.us.i ], [ 1, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ] ; 3 uses
  %i.bx = add nsw i64 %.0183.us.i, %i.bf          ; 2 uses
  %i.by = lshr i64 %i.bx, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !43, !noalias !2371
  %i.cb = trunc i64 %i.bx to i8
  %i.cc = and i8 %i.cb, 7
  %i.cd = lshr i8 %i.ca, %i.cc
  %i.ce = trunc i8 %i.cd to i1
  br i1 %i.ce, label %_ZN5arrow6StatusD2Ev.exit26.us.i, label %_ZN5arrow6StatusD2Ev.exit30.us.i

_ZN5arrow6StatusD2Ev.exit26.us.i:                 ; preds = %.peel.next.i
  %i.cf = load ptr, ptr %i.ba, align 8, !tbaa !308, !noalias !2371
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.0183.us.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3, !noalias !2371
  %i.ci = sext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !313, !noalias !2371
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ci ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !2371
  %i.cm = getelementptr i8, ptr %i.ck, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3, !noalias !2371
  %i.co = sub nsw i32 %i.cn, %i.cl
  %i.cp = sext i32 %i.co to i64
  %i.cq = add i64 %.1, %i.cp
  br label %_ZN5arrow6StatusD2Ev.exit30.us.i

_ZN5arrow6StatusD2Ev.exit30.us.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit26.us.i, %.peel.next.i
  %.2 = phi i64 [ %i.cq, %_ZN5arrow6StatusD2Ev.exit26.us.i ], [ %.1, %.peel.next.i ] ; 2 uses
  %i.cr = add nuw nsw i64 %.0183.us.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %i.ay
  br i1 %exitcond.not, label %_ZN5arrow6StatusD2Ev.exit59, label %.peel.next.i, !llvm.loop !2374

.lr.ph.splitthread-pre-split.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit30.i
  %.pr.i51 = load ptr, ptr %i.az, align 8, !tbaa !305, !noalias !2371
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %.3 = phi i64 [ %.4, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.cs = phi ptr [ %.pr.i51, %.lr.ph.splitthread-pre-split.i ], [ null, %.lr.ph.i ] ; 2 uses
  %i.ct = phi ptr [ %i.ec, %.lr.ph.splitthread-pre-split.i ], [ %i.aw, %.lr.ph.i ] ; 6 uses
  %.0183.i = phi i64 [ %i.eb, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %.not.i.i49 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !307, !noalias !2371
  %i.cw = add nsw i64 %i.cv, %.0183.i             ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !43, !noalias !2371
  %i.da = trunc i64 %i.cw to i8
  %i.db = and i8 %i.da, 7
  %i.dc = lshr i8 %i.cz, %i.db
  %i.dd = trunc i8 %i.dc to i1
  br i1 %i.dd, label %_ZN5arrow6StatusD2Ev.exit26.i, label %_ZN5arrow6StatusD2Ev.exit30.i

bb.p:                                             ; preds = %.lr.ph.split.i
  %i.de = load ptr, ptr %i.ct, align 8, !tbaa !10, !noalias !2371
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !15, !noalias !2371
  switch i32 %i.dg, label %bb.s [
    i32 27, label %_ZNK5arrow5Array7IsValidEl.exit.i
    i32 28, label %bb.q
    i32 38, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dh = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ct, i64 noundef %.0183.i)
          to label %.noexc53 unwind label %.loopexit86

.noexc53:                                         ; preds = %bb.q
  br i1 %i.dh, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

bb.r:                                             ; preds = %bb.p
  %i.di = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ct, i64 noundef %.0183.i)
          to label %.noexc54 unwind label %.loopexit86

.noexc54:                                         ; preds = %bb.r
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

bb.s:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.dk = load atomic i64, ptr %i.dj seq_cst, align 8, !noalias !2371
  %i.dl = load ptr, ptr %i.av, align 8, !tbaa !203, !noalias !2371
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !231, !noalias !2371
  %.not1.i = icmp eq i64 %i.dk, %i.dn
  br i1 %.not1.i, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

_ZNK5arrow5Array7IsValidEl.exit.i:                ; preds = %bb.p
  %i.do = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ct, i64 noundef %.0183.i)
          to label %.noexc55 unwind label %.loopexit86

.noexc55:                                         ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i
  br i1 %i.do, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

_ZN5arrow6StatusD2Ev.exit26.i:                    ; preds = %.noexc55, %bb.s, %.noexc54, %.noexc53, %bb.o
  %i.dp = load ptr, ptr %i.ba, align 8, !tbaa !308, !noalias !2371
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.0183.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3, !noalias !2371
  %i.ds = sext i32 %i.dr to i64
  %i.dt = load ptr, ptr %i.bb, align 8, !tbaa !313, !noalias !2371
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.ds ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3, !noalias !2371
  %i.dw = getelementptr i8, ptr %i.du, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3, !noalias !2371
  %i.dy = sub nsw i32 %i.dx, %i.dv
  %i.dz = sext i32 %i.dy to i64
  %i.ea = add i64 %.3, %i.dz
  br label %_ZN5arrow6StatusD2Ev.exit30.i

_ZN5arrow6StatusD2Ev.exit30.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit26.i, %.noexc55, %bb.s, %.noexc54, %.noexc53, %bb.o
  %.4 = phi i64 [ %.3, %bb.s ], [ %i.ea, %_ZN5arrow6StatusD2Ev.exit26.i ], [ %.3, %.noexc55 ], [ %.3, %.noexc53 ], [ %.3, %.noexc54 ], [ %.3, %bb.o ] ; 2 uses
  %i.eb = add nuw nsw i64 %.0183.i, 1             ; 2 uses
  %i.ec = load ptr, ptr %i.av, align 8, !tbaa !203, !noalias !2371 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !231, !noalias !2371
  %.not.i50 = icmp slt i64 %i.eb, %i.ee
  br i1 %.not.i50, label %.lr.ph.splitthread-pre-split.i, label %_ZN5arrow6StatusD2Ev.exit59, !llvm.loop !2375

.loopexit86:                                      ; preds = %bb.q, %bb.r, %_ZNK5arrow5Array7IsValidEl.exit.i
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp87:                             ; preds = %_ZN5arrow6StatusD2Ev.exit48, %.noexc
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZN5arrow6StatusD2Ev.exit59:                      ; preds = %_ZN5arrow6StatusD2Ev.exit30.us.i, %_ZN5arrow6StatusD2Ev.exit30.i, %.noexc52, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i
  %.5 = phi i64 [ 0, %.noexc52 ], [ %.4, %_ZN5arrow6StatusD2Ev.exit30.i ], [ %.0, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ], [ %.2, %_ZN5arrow6StatusD2Ev.exit30.us.i ]
  store ptr null, ptr %0, align 8, !tbaa !159, !alias.scope !2376
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZN5arrow17BinaryViewBuilder11ReserveDataEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(272) %5, i64 noundef %.5)
          to label %_ZN5arrow6StatusD2Ev.exit61 unwind label %bb.t

_ZN5arrow6StatusD2Ev.exit61:                      ; preds = %_ZN5arrow6StatusD2Ev.exit59
  call void @llvm.experimental.noalias.scope.decl(metadata !2379)
  %i.ef = load ptr, ptr %7, align 8, !tbaa !159, !noalias !2379 ; 2 uses
  store ptr %i.ef, ptr %0, align 8, !tbaa !159, !alias.scope !2379
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %_ZN5arrow6StatusD2Ev.exit63, label %.critedge

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit59
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.af

_ZN5arrow6StatusD2Ev.exit63:                      ; preds = %_ZN5arrow6StatusD2Ev.exit61
  %i.ei = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc70 unwind label %.loopexit.split-lp

.noexc70:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit63
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !200, !noalias !2382 ; 2 uses
  %i.ek = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc71 unwind label %.loopexit.split-lp

.noexc71:                                         ; preds = %.noexc70
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !200, !noalias !2382 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !203, !noalias !2382 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !231, !noalias !2382
  %.not5.i = icmp sgt i64 %i.ep, 0
  br i1 %.not5.i, label %.lr.ph.i64, label %_ZN5arrow6StatusD2Ev.exit78

.lr.ph.i64:                                       ; preds = %.noexc71
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 232
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 248 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 256 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %.sroa.02.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx107 = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i.i, i64 4
  %.sroa.02.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i.i, i64 4
  %.sroa.02.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.ad, %.lr.ph.i64
  %i.ff = phi ptr [ %i.en, %.lr.ph.i64 ], [ %i.is, %bb.ad ] ; 6 uses
  %.0186.i = phi i64 [ 0, %.lr.ph.i64 ], [ %i.ir, %bb.ad ] ; 6 uses
  %i.fg = load ptr, ptr %i.eq, align 8, !tbaa !305, !noalias !2382 ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i65, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !307, !noalias !2382
  %i.fj = add nsw i64 %i.fi, %.0186.i             ; 2 uses
  %i.fk = lshr i64 %i.fj, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !43, !noalias !2382
  %i.fn = trunc i64 %i.fj to i8
  %i.fo = and i8 %i.fn, 7
  %i.fp = lshr i8 %i.fm, %i.fo
  %i.fq = trunc i8 %i.fp to i1
  br i1 %i.fq, label %bb.aa, label %_ZN5arrow6StatusD2Ev.exit30.i66

bb.w:                                             ; preds = %bb.u
  %i.fr = load ptr, ptr %i.ff, align 8, !tbaa !10, !noalias !2382
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !15, !noalias !2382
  switch i32 %i.ft, label %bb.z [
    i32 27, label %_ZNK5arrow5Array7IsValidEl.exit.i69
    i32 28, label %bb.x
    i32 38, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.fu = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ff, i64 noundef %.0186.i)
          to label %.noexc72 unwind label %.loopexit

.noexc72:                                         ; preds = %bb.x
  br i1 %i.fu, label %_ZN5arrow6StatusD2Ev.exit30.i66, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.fv = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ff, i64 noundef %.0186.i)
end_hunk_4
begin_hunk_5_@_ZN5arrow4json15BinaryConverterINS_14StringViewTypeEED0Ev:bb.a

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !199
  br label %_ZN5arrow4json9ConverterD2Ev.exit

_ZN5arrow4json9ConverterD2Ev.exit:                ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4json15BinaryConverterINS_14StringViewTypeEE7ConvertERKSt10shared_ptrINS_5ArrayEEPS6_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.02.i.i.i.i.i.i.i = alloca %struct.anon.470, align 8 ; 7 uses
  %4 = alloca %"class.arrow::Result", align 8     ; 10 uses
  %5 = alloca %"class.arrow::StringViewBuilder", align 8 ; 21 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !200    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !203  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !231
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !190
  call void @_ZN5arrow15MakeArrayOfNullERKSt10shared_ptrINS_8DataTypeEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef %i.j, ptr noundef %i.l)
  invoke void @_ZNO5arrow6ResultISt10shared_ptrINS_5ArrayEEE5ValueIS3_vEENS_6StatusEPT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %3)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %4, align 8, !tbaa !159
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !249

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.q, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !39
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #23, !inline_history !250
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #23, !inline_history !250
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.h ], [ %i.ad, %bb.i ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !44

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !159
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !251

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ag

bb.k:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.ah

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !190
  call void @_ZN5arrow17BinaryViewBuilderC2ERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(272) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %i.ah)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17StringViewBuilderE, i64 16), ptr %5, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ai = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !200
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !203
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !231
  invoke void @_ZN5arrow17BinaryViewBuilder6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(272) %5, i64 noundef %i.an)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.n

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  %i.ao = load ptr, ptr %6, align 8, !tbaa !159, !noalias !2417 ; 2 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !159, !alias.scope !2417
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit48, label %.critedge

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.af

_ZN5arrow6StatusD2Ev.exit48:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp87

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !200, !noalias !2420
  %i.at = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc52 unwind label %.loopexit.split-lp87

.noexc52:                                         ; preds = %.noexc
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !200, !noalias !2420 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !203, !noalias !2420 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !231, !noalias !2420 ; 3 uses
  %.not2.i = icmp sgt i64 %i.ay, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_ZN5arrow6StatusD2Ev.exit59

.lr.ph.i:                                         ; preds = %.noexc52
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !305, !noalias !2420 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !307, !noalias !2420 ; 3 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !43, !noalias !2420
  %i.bj = trunc i64 %i.bf to i8
  %i.bk = and i8 %i.bj, 7
  %i.bl = lshr i8 %i.bi, %i.bk
  %i.bm = trunc i8 %i.bl to i1
  br i1 %i.bm, label %_ZN5arrow6StatusD2Ev.exit26.us.peel.i, label %_ZN5arrow6StatusD2Ev.exit30.us.peel.i

_ZN5arrow6StatusD2Ev.exit26.us.peel.i:            ; preds = %.lr.ph.split.us.i
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !308, !noalias !2420
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3, !noalias !2420
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load ptr, ptr %i.bb, align 8, !tbaa !313, !noalias !2420
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bp ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3, !noalias !2420
  %i.bt = getelementptr i8, ptr %i.br, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3, !noalias !2420
  %i.bv = sub nsw i32 %i.bu, %i.bs
  %i.bw = sext i32 %i.bv to i64
  br label %_ZN5arrow6StatusD2Ev.exit30.us.peel.i

_ZN5arrow6StatusD2Ev.exit30.us.peel.i:            ; preds = %_ZN5arrow6StatusD2Ev.exit26.us.peel.i, %.lr.ph.split.us.i
  %.0 = phi i64 [ %i.bw, %_ZN5arrow6StatusD2Ev.exit26.us.peel.i ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %.not.us.peel.i.not = icmp eq i64 %i.ay, 1
  br i1 %.not.us.peel.i.not, label %_ZN5arrow6StatusD2Ev.exit59, label %.peel.next.i

.peel.next.i:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit30.us.peel.i, %_ZN5arrow6StatusD2Ev.exit30.us.i
  %.1 = phi i64 [ %.2, %_ZN5arrow6StatusD2Ev.exit30.us.i ], [ %.0, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ] ; 2 uses
  %.0183.us.i = phi i64 [ %i.cr, %_ZN5arrow6StatusD2Ev.exit30.us.i ], [ 1, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ] ; 3 uses
  %i.bx = add nsw i64 %.0183.us.i, %i.bf          ; 2 uses
  %i.by = lshr i64 %i.bx, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !43, !noalias !2420
  %i.cb = trunc i64 %i.bx to i8
  %i.cc = and i8 %i.cb, 7
  %i.cd = lshr i8 %i.ca, %i.cc
  %i.ce = trunc i8 %i.cd to i1
  br i1 %i.ce, label %_ZN5arrow6StatusD2Ev.exit26.us.i, label %_ZN5arrow6StatusD2Ev.exit30.us.i

_ZN5arrow6StatusD2Ev.exit26.us.i:                 ; preds = %.peel.next.i
  %i.cf = load ptr, ptr %i.ba, align 8, !tbaa !308, !noalias !2420
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.0183.us.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3, !noalias !2420
  %i.ci = sext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !313, !noalias !2420
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ci ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !2420
  %i.cm = getelementptr i8, ptr %i.ck, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3, !noalias !2420
  %i.co = sub nsw i32 %i.cn, %i.cl
  %i.cp = sext i32 %i.co to i64
  %i.cq = add i64 %.1, %i.cp
  br label %_ZN5arrow6StatusD2Ev.exit30.us.i

_ZN5arrow6StatusD2Ev.exit30.us.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit26.us.i, %.peel.next.i
  %.2 = phi i64 [ %i.cq, %_ZN5arrow6StatusD2Ev.exit26.us.i ], [ %.1, %.peel.next.i ] ; 2 uses
  %i.cr = add nuw nsw i64 %.0183.us.i, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %i.ay
  br i1 %exitcond.not, label %_ZN5arrow6StatusD2Ev.exit59, label %.peel.next.i, !llvm.loop !2423

.lr.ph.splitthread-pre-split.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit30.i
  %.pr.i51 = load ptr, ptr %i.az, align 8, !tbaa !305, !noalias !2420
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %.3 = phi i64 [ %.4, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %i.cs = phi ptr [ %.pr.i51, %.lr.ph.splitthread-pre-split.i ], [ null, %.lr.ph.i ] ; 2 uses
  %i.ct = phi ptr [ %i.ec, %.lr.ph.splitthread-pre-split.i ], [ %i.aw, %.lr.ph.i ] ; 6 uses
  %.0183.i = phi i64 [ %i.eb, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 6 uses
  %.not.i.i49 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !307, !noalias !2420
  %i.cw = add nsw i64 %i.cv, %.0183.i             ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !43, !noalias !2420
  %i.da = trunc i64 %i.cw to i8
  %i.db = and i8 %i.da, 7
  %i.dc = lshr i8 %i.cz, %i.db
  %i.dd = trunc i8 %i.dc to i1
  br i1 %i.dd, label %_ZN5arrow6StatusD2Ev.exit26.i, label %_ZN5arrow6StatusD2Ev.exit30.i

bb.p:                                             ; preds = %.lr.ph.split.i
  %i.de = load ptr, ptr %i.ct, align 8, !tbaa !10, !noalias !2420
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !15, !noalias !2420
  switch i32 %i.dg, label %bb.s [
    i32 27, label %_ZNK5arrow5Array7IsValidEl.exit.i
    i32 28, label %bb.q
    i32 38, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.dh = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ct, i64 noundef %.0183.i)
          to label %.noexc53 unwind label %.loopexit86

.noexc53:                                         ; preds = %bb.q
  br i1 %i.dh, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

bb.r:                                             ; preds = %bb.p
  %i.di = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ct, i64 noundef %.0183.i)
          to label %.noexc54 unwind label %.loopexit86

.noexc54:                                         ; preds = %bb.r
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

bb.s:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.dk = load atomic i64, ptr %i.dj seq_cst, align 8, !noalias !2420
  %i.dl = load ptr, ptr %i.av, align 8, !tbaa !203, !noalias !2420
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !231, !noalias !2420
  %.not1.i = icmp eq i64 %i.dk, %i.dn
  br i1 %.not1.i, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

_ZNK5arrow5Array7IsValidEl.exit.i:                ; preds = %bb.p
  %i.do = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ct, i64 noundef %.0183.i)
          to label %.noexc55 unwind label %.loopexit86

.noexc55:                                         ; preds = %_ZNK5arrow5Array7IsValidEl.exit.i
  br i1 %i.do, label %_ZN5arrow6StatusD2Ev.exit30.i, label %_ZN5arrow6StatusD2Ev.exit26.i

_ZN5arrow6StatusD2Ev.exit26.i:                    ; preds = %.noexc55, %bb.s, %.noexc54, %.noexc53, %bb.o
  %i.dp = load ptr, ptr %i.ba, align 8, !tbaa !308, !noalias !2420
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.0183.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3, !noalias !2420
  %i.ds = sext i32 %i.dr to i64
  %i.dt = load ptr, ptr %i.bb, align 8, !tbaa !313, !noalias !2420
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.ds ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3, !noalias !2420
  %i.dw = getelementptr i8, ptr %i.du, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3, !noalias !2420
  %i.dy = sub nsw i32 %i.dx, %i.dv
  %i.dz = sext i32 %i.dy to i64
  %i.ea = add i64 %.3, %i.dz
  br label %_ZN5arrow6StatusD2Ev.exit30.i

_ZN5arrow6StatusD2Ev.exit30.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit26.i, %.noexc55, %bb.s, %.noexc54, %.noexc53, %bb.o
  %.4 = phi i64 [ %.3, %bb.s ], [ %i.ea, %_ZN5arrow6StatusD2Ev.exit26.i ], [ %.3, %.noexc55 ], [ %.3, %.noexc53 ], [ %.3, %.noexc54 ], [ %.3, %bb.o ] ; 2 uses
  %i.eb = add nuw nsw i64 %.0183.i, 1             ; 2 uses
  %i.ec = load ptr, ptr %i.av, align 8, !tbaa !203, !noalias !2420 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !231, !noalias !2420
  %.not.i50 = icmp slt i64 %i.eb, %i.ee
  br i1 %.not.i50, label %.lr.ph.splitthread-pre-split.i, label %_ZN5arrow6StatusD2Ev.exit59, !llvm.loop !2424

.loopexit86:                                      ; preds = %bb.q, %bb.r, %_ZNK5arrow5Array7IsValidEl.exit.i
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp87:                             ; preds = %_ZN5arrow6StatusD2Ev.exit48, %.noexc
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZN5arrow6StatusD2Ev.exit59:                      ; preds = %_ZN5arrow6StatusD2Ev.exit30.us.i, %_ZN5arrow6StatusD2Ev.exit30.i, %.noexc52, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i
  %.5 = phi i64 [ 0, %.noexc52 ], [ %.4, %_ZN5arrow6StatusD2Ev.exit30.i ], [ %.0, %_ZN5arrow6StatusD2Ev.exit30.us.peel.i ], [ %.2, %_ZN5arrow6StatusD2Ev.exit30.us.i ]
  store ptr null, ptr %0, align 8, !tbaa !159, !alias.scope !2425
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZN5arrow17BinaryViewBuilder11ReserveDataEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(272) %5, i64 noundef %.5)
          to label %_ZN5arrow6StatusD2Ev.exit61 unwind label %bb.t

_ZN5arrow6StatusD2Ev.exit61:                      ; preds = %_ZN5arrow6StatusD2Ev.exit59
  call void @llvm.experimental.noalias.scope.decl(metadata !2428)
  %i.ef = load ptr, ptr %7, align 8, !tbaa !159, !noalias !2428 ; 2 uses
  store ptr %i.ef, ptr %0, align 8, !tbaa !159, !alias.scope !2428
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %_ZN5arrow6StatusD2Ev.exit63, label %.critedge

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit59
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.af

_ZN5arrow6StatusD2Ev.exit63:                      ; preds = %_ZN5arrow6StatusD2Ev.exit61
  %i.ei = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc70 unwind label %.loopexit.split-lp

.noexc70:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit63
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !200, !noalias !2431 ; 2 uses
  %i.ek = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.noexc71 unwind label %.loopexit.split-lp

.noexc71:                                         ; preds = %.noexc70
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !200, !noalias !2431 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !203, !noalias !2431 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !231, !noalias !2431
  %.not5.i = icmp sgt i64 %i.ep, 0
  br i1 %.not5.i, label %.lr.ph.i64, label %_ZN5arrow6StatusD2Ev.exit78

.lr.ph.i64:                                       ; preds = %.noexc71
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 232
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 248 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 256 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %.sroa.02.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx107 = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i.i, i64 4
  %.sroa.02.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.i.4.i.i.i.i.4.i.i.i.i.4.i.i.i.4.i.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i.i, i64 4
  %.sroa.02.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.02.i.i.i.i.i.i.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.ad, %.lr.ph.i64
  %i.ff = phi ptr [ %i.en, %.lr.ph.i64 ], [ %i.is, %bb.ad ] ; 6 uses
  %.0186.i = phi i64 [ 0, %.lr.ph.i64 ], [ %i.ir, %bb.ad ] ; 6 uses
  %i.fg = load ptr, ptr %i.eq, align 8, !tbaa !305, !noalias !2431 ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i65, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !307, !noalias !2431
  %i.fj = add nsw i64 %i.fi, %.0186.i             ; 2 uses
  %i.fk = lshr i64 %i.fj, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !43, !noalias !2431
  %i.fn = trunc i64 %i.fj to i8
  %i.fo = and i8 %i.fn, 7
  %i.fp = lshr i8 %i.fm, %i.fo
  %i.fq = trunc i8 %i.fp to i1
  br i1 %i.fq, label %bb.aa, label %_ZN5arrow6StatusD2Ev.exit30.i66

bb.w:                                             ; preds = %bb.u
  %i.fr = load ptr, ptr %i.ff, align 8, !tbaa !10, !noalias !2431
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !15, !noalias !2431
  switch i32 %i.ft, label %bb.z [
    i32 27, label %_ZNK5arrow5Array7IsValidEl.exit.i69
    i32 28, label %bb.x
    i32 38, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.fu = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ff, i64 noundef %.0186.i)
          to label %.noexc72 unwind label %.loopexit

.noexc72:                                         ; preds = %bb.x
  br i1 %i.fu, label %_ZN5arrow6StatusD2Ev.exit30.i66, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.fv = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.ff, i64 noundef %.0186.i)
end_hunk_5

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Extract?download=true
inline.NumInlined: 200
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z18DecompressArchivesP7CCodecsRK13CRecordVectorIiER13CObjectVectorI11CStringBaseIwEES9_RKN9NWildcard11CCensorNodeERK15CExtractOptionsP15IOpenCallbackUIP18IExtractCallbackUIRS7_R15CDecompressStat:bb.a
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.ka
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %bb.au
  %.pn.i306 = phi ptr [ %i.kb, %bb.au ], [ %.0.i307, %bb.aw ]
  %.0.i307 = getelementptr inbounds i8, ptr %.pn.i306, i64 -4 ; 4 uses
  %i.kc = load i32, ptr %.0.i307, align 4, !tbaa !25
  %i.kd = icmp eq i32 %i.kc, 46
  br i1 %i.kd, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit309, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ke = icmp eq ptr %.0.i307, %i.jz
  br i1 %i.ke, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit309.thread, label %bb.av, !llvm.loop !73

_ZNK11CStringBaseIwE11ReverseFindEw.exit309:      ; preds = %bb.av
  %i.kf = ptrtoint ptr %.0.i307 to i64
  %i.kg = ptrtoint ptr %i.jz to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = lshr exact i64 %i.kh, 2
  %i.kj = trunc i64 %i.ki to i32                  ; 2 uses
  %i.kk = icmp sgt i32 %i.kj, -1
  br i1 %i.kk, label %bb.ax, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit309.thread

bb.ax:                                            ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit309
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  %i.kl = add nuw nsw i32 %i.kj, 1                ; 2 uses
  %i.km = sub nsw i32 %i.jx, %i.kl
  invoke void @_ZNK11CStringBaseIwE3MidEii(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %22, i32 noundef %i.kl, i32 noundef %i.km)
          to label %_ZNK11CStringBaseIwE3MidEi.exit311 unwind label %bb.bh

_ZNK11CStringBaseIwE3MidEi.exit311:               ; preds = %bb.ax
  %i.kn = invoke noundef i32 @_ZNK7CCodecs22FindFormatForExtensionERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %24)
          to label %bb.ay unwind label %bb.bi     ; 2 uses

bb.ay:                                            ; preds = %_ZNK11CStringBaseIwE3MidEi.exit311
  %i.ko = load ptr, ptr %24, align 8, !tbaa !23   ; 2 uses
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %_ZN11CStringBaseIwED2Ev.exit312, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZdaPv(ptr noundef nonnull %i.ko) #16
  br label %_ZN11CStringBaseIwED2Ev.exit312

_ZN11CStringBaseIwED2Ev.exit312:                  ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  %i.kq = icmp sgt i32 %i.kn, -1
  br i1 %i.kq, label %bb.ba, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit309.thread

bb.ba:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit312
  %i.kr = load ptr, ptr %22, align 8, !tbaa !23
  %i.ks = invoke noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %i.kr, ptr noundef nonnull @.str.3)
          to label %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit unwind label %bb.bk

_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit:     ; preds = %bb.ba
  %.not247 = icmp eq i32 %i.ks, 0
  br i1 %.not247, label %_ZNK11CStringBaseIwE11ReverseFindEw.exit309.thread, label %bb.bb

bb.bb:                                            ; preds = %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.bc unwind label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  %i.kt = load ptr, ptr %i.dd, align 8, !tbaa !32
  %i.ku = load i32, ptr %i.db, align 4, !tbaa !34
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.kv
  store i32 %i.kn, ptr %i.kw, align 4, !tbaa !8
  %i.kx = load i32, ptr %i.db, align 4, !tbaa !34
  %i.ky = add nsw i32 %i.kx, 1
  store i32 %i.ky, ptr %i.db, align 4, !tbaa !34
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %_ZN13CRecordVectorIiE3AddEi.exit316 unwind label %bb.bk

_ZN13CRecordVectorIiE3AddEi.exit316:              ; preds = %bb.bc
  %i.kz = load ptr, ptr %i.dd, align 8, !tbaa !32
  %i.la = load i32, ptr %i.db, align 4, !tbaa !34
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.lb
  store i32 %i.hw, ptr %i.lc, align 4, !tbaa !8
  %i.ld = load i32, ptr %i.db, align 4, !tbaa !34
  %i.le = add nsw i32 %i.ld, 1
  store i32 %i.le, ptr %i.db, align 4, !tbaa !34
  br label %_ZNK11CStringBaseIwE11ReverseFindEw.exit309.thread

bb.bd:                                            ; preds = %bb.ak
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit320

bb.be:                                            ; preds = %bb.ao
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit317

bb.bf:                                            ; preds = %bb.ap
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.li = load ptr, ptr %23, align 8, !tbaa !23   ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %_ZN11CStringBaseIwED2Ev.exit317, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZdaPv(ptr noundef nonnull %i.li) #16
  br label %_ZN11CStringBaseIwED2Ev.exit317

_ZN11CStringBaseIwED2Ev.exit317:                  ; preds = %bb.bg, %bb.bf, %bb.be
  %.pn = phi { ptr, i32 } [ %i.lg, %bb.be ], [ %i.lh, %bb.bf ], [ %i.lh, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  br label %bb.bm

bb.bh:                                            ; preds = %bb.ax
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit318

bb.bi:                                            ; preds = %_ZNK11CStringBaseIwE3MidEi.exit311
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lm = load ptr, ptr %24, align 8, !tbaa !23   ; 2 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %_ZN11CStringBaseIwED2Ev.exit318, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZdaPv(ptr noundef nonnull %i.lm) #16
  br label %_ZN11CStringBaseIwED2Ev.exit318

_ZN11CStringBaseIwED2Ev.exit318:                  ; preds = %bb.bj, %bb.bi, %bb.bh
  %.pn245 = phi { ptr, i32 } [ %i.lk, %bb.bh ], [ %i.ll, %bb.bi ], [ %i.ll, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.am, %_ZNK11CStringBaseIwE3MidEi.exit
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

_ZNK11CStringBaseIwE11ReverseFindEw.exit309.thread: ; preds = %bb.aw, %_ZN11CStringBaseIwED2Ev.exit, %_ZN13CRecordVectorIiE3AddEi.exit316, %_ZN11CStringBaseIwED2Ev.exit312, %_ZNK11CStringBaseIwE13CompareNoCaseEPKw.exit, %_ZNK11CStringBaseIwE11ReverseFindEw.exit309, %bb.an, %bb.al
  %i.lp = load ptr, ptr %22, align 8, !tbaa !23   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %_ZN11CStringBaseIwED2Ev.exit319, label %bb.bl

bb.bl:                                            ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit309.thread
  call void @_ZdaPv(ptr noundef nonnull %i.lp) #16
  br label %_ZN11CStringBaseIwED2Ev.exit319

_ZN11CStringBaseIwED2Ev.exit319:                  ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit309.thread, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  br label %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread

bb.bm:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit318, %bb.bk, %_ZN11CStringBaseIwED2Ev.exit317
  %.pn248.pn = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIwED2Ev.exit317 ], [ %.pn245, %_ZN11CStringBaseIwED2Ev.exit318 ], [ %i.lo, %bb.bk ] ; 2 uses
  %i.lr = load ptr, ptr %22, align 8, !tbaa !23   ; 2 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %_ZN11CStringBaseIwED2Ev.exit320, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZdaPv(ptr noundef nonnull %i.lr) #16
  br label %_ZN11CStringBaseIwED2Ev.exit320

_ZN11CStringBaseIwED2Ev.exit320:                  ; preds = %bb.bn, %bb.bm, %bb.bd
  %.pn248.pn.pn = phi { ptr, i32 } [ %i.lf, %bb.bd ], [ %.pn248.pn, %bb.bm ], [ %.pn248.pn, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  br label %.body

_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread:  ; preds = %bb.aj, %bb.ag, %_ZNK11CStringBaseIwE11ReverseFindEw.exit, %_ZN11CStringBaseIwED2Ev.exit319, %_ZN13CRecordVectorIiEC2ERKS0_.exit
  %i.lt = load i8, ptr %5, align 8, !tbaa !103, !range !104, !noundef !105
  %i.lu = trunc nuw i8 %i.lt to i1
  %i.lv = invoke noundef i32 @_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI(ptr noundef nonnull align 8 dereferenceable(73) %20, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %21, i1 noundef zeroext %i.lu, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull %6)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bo:                                            ; preds = %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread
  %i.lw = icmp eq i32 %i.lv, -2147467260
  br i1 %i.lw, label %bb.fh, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lx = load ptr, ptr %6, align 8, !tbaa !14
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = invoke noundef zeroext i1 %i.lz(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  %i.mb = load ptr, ptr %i.er, align 8, !tbaa !23
  %i.mc = load ptr, ptr %7, align 8, !tbaa !14
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 96
  %i.me = load ptr, ptr %i.md, align 8
  %i.mf = invoke noundef i32 %i.me(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.mb, i32 noundef %i.lv, i1 noundef zeroext %i.ma)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.br:                                            ; preds = %bb.bq
  %.not253 = icmp eq i32 %i.mf, 0                 ; 2 uses
  %.2208.. = select i1 %.not253, i32 %.2208., i32 %i.mf
  br i1 %.not253, label %bb.bs, label %bb.fh

bb.bs:                                            ; preds = %bb.br
  %.not254 = icmp eq i32 %i.lv, 0
  br i1 %.not254, label %bb.bt, label %bb.fh

bb.bt:                                            ; preds = %bb.bs
  %i.mg = load i8, ptr %5, align 8, !tbaa !103, !range !104, !noundef !105
  %26 = trunc nuw i8 %i.mg to i1
  %i.mh = load i32, ptr %i.dh, align 4            ; 2 uses
  %27 = icmp slt i32 %i.mh, 1
  %or.cond492.not = select i1 %26, i1 true, i1 %27
  br i1 %or.cond492.not, label %.loopexit384, label %.lr.ph472

.lr.ph472:                                        ; preds = %bb.bt, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread
  %indvars.iv515 = phi i64 [ %indvars.iv.next516, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread ], [ 0, %bb.bt ] ; 2 uses
  %.1189470 = phi i32 [ %.2190, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread ], [ %.0188486, %bb.bt ] ; 3 uses
  %.2197469 = phi i64 [ %.3198, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread ], [ %.1196485, %bb.bt ] ; 4 uses
  %i.mi = load ptr, ptr %i.di, align 8, !tbaa !32
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %indvars.iv515
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !33 ; 2 uses
  %i.ml = load i32, ptr %i.dj, align 4, !tbaa !34 ; 2 uses
  %.not24.i = icmp eq i32 %i.ml, 0
  br i1 %.not24.i, label %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph472, %.noexc323
  %.01426.i = phi i32 [ %.1.i321, %.noexc323 ], [ %i.ml, %.lr.ph472 ] ; 2 uses
  %.01525.i = phi i32 [ %.116.i, %.noexc323 ], [ 0, %.lr.ph472 ] ; 2 uses
  %i.mm = add nsw i32 %.01525.i, %.01426.i        ; 2 uses
  %i.mn = sdiv i32 %i.mm, 2                       ; 7 uses
  %i.mo = load ptr, ptr %i.dk, align 8, !tbaa !32
  %i.mp = sext i32 %i.mn to i64                   ; 2 uses
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.mp
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !33 ; 2 uses
  %i.ms = load ptr, ptr %i.mk, align 8, !tbaa !23
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !23
  %i.mu = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.ms, ptr noundef %i.mt)
          to label %.noexc322 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc322:                                        ; preds = %.lr.ph.i
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit, label %bb.bu

bb.bu:                                            ; preds = %.noexc322
  %i.mw = load ptr, ptr %i.mk, align 8, !tbaa !23
  %i.mx = load ptr, ptr %i.mr, align 8, !tbaa !23
  %i.my = invoke noundef i32 @_Z15MyStringComparePKwS0_(ptr noundef %i.mw, ptr noundef %i.mx)
          to label %.noexc323 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc323:                                        ; preds = %bb.bu
  %i.mz = icmp slt i32 %i.my, 0                   ; 2 uses
  %i.na = add nsw i32 %i.mn, 1
  %.116.i = select i1 %i.mz, i32 %.01525.i, i32 %i.na ; 2 uses
  %.1.i321 = select i1 %i.mz, i32 %i.mn, i32 %.01426.i ; 2 uses
  %.not.i = icmp eq i32 %.116.i, %.1.i321
  br i1 %.not.i, label %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread, label %.lr.ph.i, !llvm.loop !79

_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit: ; preds = %.noexc322
  %i.nb = icmp sgt i32 %i.mm, -2
  %i.nc = icmp slt i64 %indvars.iv521, %i.mp
  %or.cond = and i1 %i.nb, %i.nc
  br i1 %or.cond, label %bb.bv, label %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread

bb.bv:                                            ; preds = %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit
  %i.nd = load ptr, ptr %2, align 8, !tbaa !14
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8
  invoke void %i.nf(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.mn, i32 noundef 1)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %bb.bv
  %i.ng = load ptr, ptr %3, align 8, !tbaa !14
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8
  invoke void %i.ni(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.mn, i32 noundef 1)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  %i.nj = load ptr, ptr %i.dl, align 8, !tbaa !32
  %i.nk = zext nneg i32 %i.mn to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.nk
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !111
  invoke void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef %i.mn, i32 noundef 1)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.by:                                            ; preds = %bb.bx
  %i.nn = sub i64 %.2197469, %i.nm
  %i.no = load i32, ptr %i.g, align 4, !tbaa !34
  br label %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread

_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread: ; preds = %.noexc323, %.lr.ph472, %bb.by, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit
  %.3198 = phi i64 [ %i.nn, %bb.by ], [ %.2197469, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit ], [ %.2197469, %.lr.ph472 ], [ %.2197469, %.noexc323 ] ; 2 uses
  %.2190 = phi i32 [ %i.no, %bb.by ], [ %.1189470, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit ], [ %.1189470, %.lr.ph472 ], [ %.1189470, %.noexc323 ] ; 2 uses
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1 ; 2 uses
  %i.np = load i32, ptr %i.dh, align 4, !tbaa !34 ; 2 uses
  %i.nq = sext i32 %i.np to i64
  %i.nr = icmp slt i64 %indvars.iv.next516, %i.nq
  br i1 %i.nr, label %.lr.ph472, label %.loopexit384, !llvm.loop !80

.loopexit384:                                     ; preds = %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread, %bb.bt
  %i.ns = phi i32 [ %i.mh, %bb.bt ], [ %i.np, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread ]
  %.4199 = phi i64 [ %.1196485, %bb.bt ], [ %.3198, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread ] ; 2 uses
  %.3191 = phi i32 [ %.0188486, %bb.bt ], [ %.2190, %_ZNK13CObjectVectorI11CStringBaseIwEE12FindInSortedERKS1_.exit.thread ] ; 2 uses
  %.not255 = icmp eq i32 %i.ns, 0
  br i1 %.not255, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %.loopexit384
  %i.nt = load i64, ptr %i.cw, align 8, !tbaa !115
  %i.nu = add i64 %i.nt, %.4199                   ; 3 uses
  %i.nv = load ptr, ptr %7, align 8, !tbaa !14
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 40
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = invoke noundef i32 %i.nx(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.nu)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  %.not256 = icmp eq i32 %i.ny, 0
  br i1 %.not256, label %bb.cb, label %bb.fh

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu, %.lr.ph.i, %bb.af, %.noexc.i, %bb.ae, %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread, %bb.bq, %bb.bp, %bb.bz
  %lpad.loopexit.split-lp764 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cb:                                            ; preds = %bb.ca, %.loopexit384
  %.5200 = phi i64 [ %i.nu, %bb.ca ], [ %.4199, %.loopexit384 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %i.nz = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %.noexc335 unwind label %bb.ce ; 9 uses

.noexc335:                                        ; preds = %bb.cb
  %i.oa = ptrtoaddr ptr %i.nz to i64
  %i.ob = load i32, ptr %i.dn, align 4, !tbaa !21
  %i.oc = icmp sgt i32 %i.ob, 0
  %.pre1.i = load i32, ptr %i.dm, align 8, !tbaa !22 ; 5 uses
  br i1 %i.oc, label %.preheader.i.i325, label %bb.cc

.preheader.i.i325:                                ; preds = %.noexc335
  %i.od = icmp sgt i32 %.pre1.i, 0
  %.pre.i.i326 = load ptr, ptr %25, align 8, !tbaa !23 ; 9 uses
  br i1 %i.od, label %.lr.ph.i.i330, label %._crit_edge.i.i327

.lr.ph.i.i330:                                    ; preds = %.preheader.i.i325
  %.pre.i.i326705 = ptrtoaddr ptr %.pre.i.i326 to i64
  %wide.trip.count.i.i331 = zext nneg i32 %.pre1.i to i64 ; 5 uses
  %min.iters.check708 = icmp ult i32 %.pre1.i, 8
  %i.oe = sub i64 %.pre.i.i326705, %i.oa
  %diff.check706 = icmp ugt i64 %i.oe, -32
  %or.cond752 = select i1 %min.iters.check708, i1 true, i1 %diff.check706
  br i1 %or.cond752, label %scalar.ph707.preheader, label %vector.ph709

vector.ph709:                                     ; preds = %.lr.ph.i.i330
  %n.vec710 = and i64 %wide.trip.count.i.i331, 2147483640 ; 3 uses
  br label %vector.body711

vector.body711:                                   ; preds = %vector.body711, %vector.ph709
  %index712 = phi i64 [ 0, %vector.ph709 ], [ %index.next715, %vector.body711 ] ; 3 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i326, i64 %index712 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %wide.load713 = load <4 x i32>, ptr %i.of, align 4, !tbaa !25
  %wide.load714 = load <4 x i32>, ptr %i.og, align 4, !tbaa !25
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %index712 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  store <4 x i32> %wide.load713, ptr %i.oh, align 4, !tbaa !25
  store <4 x i32> %wide.load714, ptr %i.oi, align 4, !tbaa !25
  %index.next715 = add nuw i64 %index712, 8       ; 2 uses
  %i.oj = icmp eq i64 %index.next715, %n.vec710
  br i1 %i.oj, label %middle.block716, label %vector.body711, !llvm.loop !81

middle.block716:                                  ; preds = %vector.body711
  %cmp.n717 = icmp eq i64 %n.vec710, %wide.trip.count.i.i331
  br i1 %cmp.n717, label %._crit_edge.thread.i.i328, label %scalar.ph707.preheader

scalar.ph707.preheader:                           ; preds = %.lr.ph.i.i330, %middle.block716
  %indvars.iv.i.i332.ph = phi i64 [ 0, %.lr.ph.i.i330 ], [ %n.vec710, %middle.block716 ] ; 3 uses
  %xtraiter803 = and i64 %wide.trip.count.i.i331, 3 ; 2 uses
  %lcmp.mod804.not = icmp eq i64 %xtraiter803, 0
  br i1 %lcmp.mod804.not, label %scalar.ph707.prol.loopexit, label %scalar.ph707.prol

scalar.ph707.prol:                                ; preds = %scalar.ph707.preheader, %scalar.ph707.prol
  %indvars.iv.i.i332.prol = phi i64 [ %indvars.iv.next.i.i333.prol, %scalar.ph707.prol ], [ %indvars.iv.i.i332.ph, %scalar.ph707.preheader ] ; 3 uses
  %prol.iter805 = phi i64 [ %prol.iter805.next, %scalar.ph707.prol ], [ 0, %scalar.ph707.preheader ]
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i326, i64 %indvars.iv.i.i332.prol
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !25
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.i.i332.prol
  store i32 %i.ol, ptr %i.om, align 4, !tbaa !25
  %indvars.iv.next.i.i333.prol = add nuw nsw i64 %indvars.iv.i.i332.prol, 1 ; 2 uses
  %prol.iter805.next = add i64 %prol.iter805, 1   ; 2 uses
  %prol.iter805.cmp.not = icmp eq i64 %prol.iter805.next, %xtraiter803
  br i1 %prol.iter805.cmp.not, label %scalar.ph707.prol.loopexit, label %scalar.ph707.prol, !llvm.loop !82

scalar.ph707.prol.loopexit:                       ; preds = %scalar.ph707.prol, %scalar.ph707.preheader
  %indvars.iv.i.i332.unr = phi i64 [ %indvars.iv.i.i332.ph, %scalar.ph707.preheader ], [ %indvars.iv.next.i.i333.prol, %scalar.ph707.prol ]
  %i.on = sub nsw i64 %indvars.iv.i.i332.ph, %wide.trip.count.i.i331
  %i.oo = icmp ugt i64 %i.on, -4
  br i1 %i.oo, label %._crit_edge.thread.i.i328, label %scalar.ph707

._crit_edge.i.i327:                               ; preds = %.preheader.i.i325
  %i.op = icmp eq ptr %.pre.i.i326, null
  br i1 %i.op, label %bb.cc, label %._crit_edge.thread.i.i328

scalar.ph707:                                     ; preds = %scalar.ph707.prol.loopexit, %scalar.ph707
  %indvars.iv.i.i332 = phi i64 [ %indvars.iv.next.i.i333.3, %scalar.ph707 ], [ %indvars.iv.i.i332.unr, %scalar.ph707.prol.loopexit ] ; 6 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i326, i64 %indvars.iv.i.i332
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !25
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.i.i332
  store i32 %i.or, ptr %i.os, align 4, !tbaa !25
  %indvars.iv.next.i.i333 = add nuw nsw i64 %indvars.iv.i.i332, 1 ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i326, i64 %indvars.iv.next.i.i333
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !25
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.next.i.i333
  store i32 %i.ou, ptr %i.ov, align 4, !tbaa !25
  %indvars.iv.next.i.i333.1 = add nuw nsw i64 %indvars.iv.i.i332, 2 ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i326, i64 %indvars.iv.next.i.i333.1
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !25
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.next.i.i333.1
  store i32 %i.ox, ptr %i.oy, align 4, !tbaa !25
  %indvars.iv.next.i.i333.2 = add nuw nsw i64 %indvars.iv.i.i332, 3 ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i326, i64 %indvars.iv.next.i.i333.2
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !25
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv.next.i.i333.2
  store i32 %i.pa, ptr %i.pb, align 4, !tbaa !25
  %indvars.iv.next.i.i333.3 = add nuw nsw i64 %indvars.iv.i.i332, 4 ; 2 uses
  %exitcond.not.i.i334.3 = icmp eq i64 %indvars.iv.next.i.i333.3, %wide.trip.count.i.i331
  br i1 %exitcond.not.i.i334.3, label %._crit_edge.thread.i.i328, label %scalar.ph707, !llvm.loop !83

._crit_edge.thread.i.i328:                        ; preds = %scalar.ph707.prol.loopexit, %scalar.ph707, %middle.block716, %._crit_edge.i.i327
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i326) #16
  %.pre.i329 = load i32, ptr %i.dm, align 8, !tbaa !22
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.thread.i.i328, %._crit_edge.i.i327, %.noexc335
  %i.pc = phi i32 [ %.pre1.i, %.noexc335 ], [ %.pre1.i, %._crit_edge.i.i327 ], [ %.pre.i329, %._crit_edge.thread.i.i328 ]
  store ptr %i.nz, ptr %25, align 8, !tbaa !23
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.pd
  store i32 0, ptr %i.pe, align 4, !tbaa !25
  store i32 4, ptr %i.dn, align 4, !tbaa !21
  %i.pf = load ptr, ptr %6, align 8, !tbaa !14
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 32
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = invoke noundef i32 %i.ph(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.cd unwind label %.loopexit.split-lp380.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %.not257 = icmp eq i32 %i.pi, 0
  br i1 %.not257, label %bb.cf, label %.thread369

bb.ce:                                            ; preds = %bb.cb
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit355

bb.cf:                                            ; preds = %bb.cd
  %i.pk = load i32, ptr %i.dm, align 8, !tbaa !22
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pm = load ptr, ptr %7, align 8, !tbaa !14
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 120
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = invoke noundef i32 %i.po(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.ch unwind label %.loopexit.split-lp380.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %.not258 = icmp eq i32 %i.pp, 0
  br i1 %.not258, label %bb.ci, label %.thread369

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  %i.pq = load i32, ptr %i.do, align 4, !tbaa !34 ; 3 uses
  %.not260475 = icmp sgt i32 %i.pq, 0
  br i1 %.not260475, label %.lr.ph478, label %.._crit_edge479_crit_edge

.._crit_edge479_crit_edge:                        ; preds = %bb.ci
  %.pre526 = sext i32 %i.pq to i64
  br label %._crit_edge479

.lr.ph478:                                        ; preds = %bb.ci, %.thread
  %i.pr = phi i32 [ %i.qe, %.thread ], [ %i.pq, %bb.ci ]
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %.thread ], [ 0, %bb.ci ] ; 2 uses
  %i.ps = load ptr, ptr %i.dp, align 8, !tbaa !32
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv518
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !33 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 72
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !22
  %i.px = icmp eq i32 %i.pw, 0
  br i1 %i.px, label %.thread, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph478
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 64
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !23
  %i.qa = load ptr, ptr %7, align 8, !tbaa !14
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 72
  %i.qc = load ptr, ptr %i.qb, align 8
  %i.qd = invoke noundef i32 %i.qc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.pz)
          to label %bb.ck unwind label %.loopexit.split-lp380.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp380.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cj, %bb.cc, %bb.cg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body351

bb.ck:                                            ; preds = %bb.cj
  %.not259 = icmp eq i32 %i.qd, 0
  br i1 %.not259, label %..thread_crit_edge, label %.thread369

..thread_crit_edge:                               ; preds = %bb.ck
  %.pre525 = load i32, ptr %i.do, align 4, !tbaa !34
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %.lr.ph478
  %i.qe = phi i32 [ %.pre525, %..thread_crit_edge ], [ %i.pr, %.lr.ph478 ] ; 2 uses
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %i.qf = sext i32 %i.qe to i64                   ; 2 uses
  %.not260 = icmp slt i64 %indvars.iv.next519, %i.qf
  br i1 %.not260, label %.lr.ph478, label %._crit_edge479, !llvm.loop !84

._crit_edge479:                                   ; preds = %.thread, %.._crit_edge479_crit_edge
  %.pre-phi = phi i64 [ %.pre526, %.._crit_edge479_crit_edge ], [ %i.qf, %.thread ]
  %i.qg = load ptr, ptr %i.dp, align 8, !tbaa !32
  %i.qh = getelementptr [8 x i8], ptr %i.qg, i64 %.pre-phi
  %i.qi = getelementptr i8, ptr %i.qh, i64 -8
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !33 ; 6 uses
  %i.qk = load i8, ptr %5, align 8, !tbaa !103, !range !104, !noundef !105
  %28 = trunc nuw i8 %i.qk to i1                  ; 2 uses
  %29 = load i8, ptr %i.dq, align 4, !range !104
  %30 = xor i8 %29, 1
  %31 = select i1 %28, i8 0, i8 %30
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 56
  store i8 %31, ptr %i.ql, align 8, !tbaa !119
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 48
  %i.qn = load i64, ptr %i.dr, align 8, !tbaa !8
  store i64 %i.qn, ptr %i.qm, align 8, !tbaa !8
  %i.qo = load i64, ptr %19, align 8, !tbaa !107
  %i.qp = load i64, ptr %i.cw, align 8, !tbaa !115
  %i.qq = add i64 %i.qp, %i.qo
  %i.qr = load ptr, ptr %i.qj, align 8, !tbaa !60 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.dt, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %10, align 8, !tbaa !14
  br i1 %28, label %bb.dg, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !14
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 56
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = invoke noundef i32 %i.qu(ptr noundef nonnull align 8 dereferenceable(8) %i.qr, ptr noundef nonnull %i.a)
          to label %bb.cm unwind label %bb.de     ; 2 uses

bb.cm:                                            ; preds = %bb.cl
  %.not.i336 = icmp eq i32 %i.qv, 0
  br i1 %.not.i336, label %.preheader.i, label %.thread225.i

.preheader.i:                                     ; preds = %bb.cm
  %i.qw = load i32, ptr %i.a, align 4, !tbaa !8
  %.not236.i = icmp eq i32 %i.qw, 0
  br i1 %.not236.i, label %._crit_edge.i, label %.lr.ph.i337

.lr.ph.i337:                                      ; preds = %.preheader.i, %_ZN11CStringBaseIwED2Ev.exit.jt4.i
  %.067234.i = phi i32 [ %i.su, %_ZN11CStringBaseIwED2Ev.exit.jt4.i ], [ 0, %.preheader.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.qx = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #15
          to label %.noexc.i338 unwind label %bb.cp ; 9 uses

.noexc.i338:                                      ; preds = %.lr.ph.i337
  %i.qy = ptrtoaddr ptr %i.qx to i64
  %i.qz = load i32, ptr %i.dv, align 4, !tbaa !21
  %i.ra = icmp sgt i32 %i.qz, 0
  %.pre1.i.i339 = load i32, ptr %i.du, align 8, !tbaa !22 ; 5 uses
  br i1 %i.ra, label %.preheader.i.i.i341, label %bb.cn

.preheader.i.i.i341:                              ; preds = %.noexc.i338
  %i.rb = icmp sgt i32 %.pre1.i.i339, 0
  %.pre.i.i.i342 = load ptr, ptr %11, align 8, !tbaa !23 ; 9 uses
  br i1 %i.rb, label %.lr.ph.i.i.i346, label %._crit_edge.i.i.i343

.lr.ph.i.i.i346:                                  ; preds = %.preheader.i.i.i341
  %.pre.i.i.i342690 = ptrtoaddr ptr %.pre.i.i.i342 to i64
  %wide.trip.count.i.i.i347 = zext nneg i32 %.pre1.i.i339 to i64 ; 5 uses
  %min.iters.check693 = icmp ult i32 %.pre1.i.i339, 8
  %i.rc = sub i64 %.pre.i.i.i342690, %i.qy
  %diff.check691 = icmp ugt i64 %i.rc, -32
  %or.cond753 = select i1 %min.iters.check693, i1 true, i1 %diff.check691
  br i1 %or.cond753, label %scalar.ph692.preheader, label %vector.ph694

vector.ph694:                                     ; preds = %.lr.ph.i.i.i346
  %n.vec695 = and i64 %wide.trip.count.i.i.i347, 2147483640 ; 3 uses
  br label %vector.body696

vector.body696:                                   ; preds = %vector.body696, %vector.ph694
  %index697 = phi i64 [ 0, %vector.ph694 ], [ %index.next700, %vector.body696 ] ; 3 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i342, i64 %index697 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %wide.load698 = load <4 x i32>, ptr %i.rd, align 4, !tbaa !25
  %wide.load699 = load <4 x i32>, ptr %i.re, align 4, !tbaa !25
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %index697 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store <4 x i32> %wide.load698, ptr %i.rf, align 4, !tbaa !25
  store <4 x i32> %wide.load699, ptr %i.rg, align 4, !tbaa !25
  %index.next700 = add nuw i64 %index697, 8       ; 2 uses
  %i.rh = icmp eq i64 %index.next700, %n.vec695
  br i1 %i.rh, label %middle.block701, label %vector.body696, !llvm.loop !85

middle.block701:                                  ; preds = %vector.body696
  %cmp.n702 = icmp eq i64 %n.vec695, %wide.trip.count.i.i.i347
  br i1 %cmp.n702, label %._crit_edge.thread.i.i.i344, label %scalar.ph692.preheader

scalar.ph692.preheader:                           ; preds = %.lr.ph.i.i.i346, %middle.block701
  %indvars.iv.i.i.i348.ph = phi i64 [ 0, %.lr.ph.i.i.i346 ], [ %n.vec695, %middle.block701 ] ; 3 uses
  %xtraiter806 = and i64 %wide.trip.count.i.i.i347, 3 ; 2 uses
  %lcmp.mod807.not = icmp eq i64 %xtraiter806, 0
  br i1 %lcmp.mod807.not, label %scalar.ph692.prol.loopexit, label %scalar.ph692.prol

scalar.ph692.prol:                                ; preds = %scalar.ph692.preheader, %scalar.ph692.prol
  %indvars.iv.i.i.i348.prol = phi i64 [ %indvars.iv.next.i.i.i349.prol, %scalar.ph692.prol ], [ %indvars.iv.i.i.i348.ph, %scalar.ph692.preheader ] ; 3 uses
  %prol.iter808 = phi i64 [ %prol.iter808.next, %scalar.ph692.prol ], [ 0, %scalar.ph692.preheader ]
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i342, i64 %indvars.iv.i.i.i348.prol
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !25
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.i.i.i348.prol
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !25
  %indvars.iv.next.i.i.i349.prol = add nuw nsw i64 %indvars.iv.i.i.i348.prol, 1 ; 2 uses
  %prol.iter808.next = add i64 %prol.iter808, 1   ; 2 uses
  %prol.iter808.cmp.not = icmp eq i64 %prol.iter808.next, %xtraiter806
  br i1 %prol.iter808.cmp.not, label %scalar.ph692.prol.loopexit, label %scalar.ph692.prol, !llvm.loop !86

scalar.ph692.prol.loopexit:                       ; preds = %scalar.ph692.prol, %scalar.ph692.preheader
  %indvars.iv.i.i.i348.unr = phi i64 [ %indvars.iv.i.i.i348.ph, %scalar.ph692.preheader ], [ %indvars.iv.next.i.i.i349.prol, %scalar.ph692.prol ]
  %i.rl = sub nsw i64 %indvars.iv.i.i.i348.ph, %wide.trip.count.i.i.i347
  %i.rm = icmp ugt i64 %i.rl, -4
  br i1 %i.rm, label %._crit_edge.thread.i.i.i344, label %scalar.ph692

._crit_edge.i.i.i343:                             ; preds = %.preheader.i.i.i341
  %i.rn = icmp eq ptr %.pre.i.i.i342, null
  br i1 %i.rn, label %bb.cn, label %._crit_edge.thread.i.i.i344

scalar.ph692:                                     ; preds = %scalar.ph692.prol.loopexit, %scalar.ph692
  %indvars.iv.i.i.i348 = phi i64 [ %indvars.iv.next.i.i.i349.3, %scalar.ph692 ], [ %indvars.iv.i.i.i348.unr, %scalar.ph692.prol.loopexit ] ; 6 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i342, i64 %indvars.iv.i.i.i348
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !25
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.i.i.i348
  store i32 %i.rp, ptr %i.rq, align 4, !tbaa !25
  %indvars.iv.next.i.i.i349 = add nuw nsw i64 %indvars.iv.i.i.i348, 1 ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i342, i64 %indvars.iv.next.i.i.i349
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !25
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next.i.i.i349
  store i32 %i.rs, ptr %i.rt, align 4, !tbaa !25
  %indvars.iv.next.i.i.i349.1 = add nuw nsw i64 %indvars.iv.i.i.i348, 2 ; 2 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i342, i64 %indvars.iv.next.i.i.i349.1
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !25
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next.i.i.i349.1
  store i32 %i.rv, ptr %i.rw, align 4, !tbaa !25
  %indvars.iv.next.i.i.i349.2 = add nuw nsw i64 %indvars.iv.i.i.i348, 3 ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i342, i64 %indvars.iv.next.i.i.i349.2
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !25
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next.i.i.i349.2
  store i32 %i.ry, ptr %i.rz, align 4, !tbaa !25
  %indvars.iv.next.i.i.i349.3 = add nuw nsw i64 %indvars.iv.i.i.i348, 4 ; 2 uses
  %exitcond.not.i.i.i350.3 = icmp eq i64 %indvars.iv.next.i.i.i349.3, %wide.trip.count.i.i.i347
  br i1 %exitcond.not.i.i.i350.3, label %._crit_edge.thread.i.i.i344, label %scalar.ph692, !llvm.loop !87

._crit_edge.thread.i.i.i344:                      ; preds = %scalar.ph692.prol.loopexit, %scalar.ph692, %middle.block701, %._crit_edge.i.i.i343
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i342) #16
  %.pre.i.i345 = load i32, ptr %i.du, align 8, !tbaa !22
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.thread.i.i.i344, %._crit_edge.i.i.i343, %.noexc.i338
  %i.sa = phi i32 [ %.pre1.i.i339, %.noexc.i338 ], [ %.pre1.i.i339, %._crit_edge.i.i.i343 ], [ %.pre.i.i345, %._crit_edge.thread.i.i.i344 ]
  store ptr %i.qx, ptr %11, align 8, !tbaa !23
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.qx, i64 %i.sb
  store i32 0, ptr %i.sc, align 4, !tbaa !25
  store i32 4, ptr %i.dv, align 4, !tbaa !21
  %i.sd = invoke noundef i32 @_ZNK4CArc11GetItemPathEjR11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(80) %i.qj, i32 noundef %.067234.i, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.co unwind label %bb.cq     ; 2 uses

bb.co:                                            ; preds = %bb.cn
  %.not104.i = icmp eq i32 %i.sd, 0
  br i1 %.not104.i, label %bb.cr, label %.loopexit.i

bb.cp:                                            ; preds = %.lr.ph.i337
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit125.i

bb.cq:                                            ; preds = %bb.cn
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cr:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.sg = invoke noundef i32 @_Z19IsArchiveItemFolderP10IInArchivejRb(ptr noundef nonnull %i.qr, i32 noundef %.067234.i, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.cs unwind label %bb.cv     ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %.not105.i = icmp eq i32 %i.sg, 0
  br i1 %.not105.i, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.sh = load i8, ptr %i.b, align 1, !tbaa !120, !range !104, !noundef !105
  %32 = trunc nuw i8 %i.sh to i1
  %33 = xor i1 %32, true
  %i.si = invoke noundef zeroext i1 @_ZNK9NWildcard11CCensorNode9CheckPathERK11CStringBaseIwEb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(16) %11, i1 noundef zeroext %33)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.si, label %bb.cw, label %bb.cy

bb.cv:                                            ; preds = %bb.cw, %bb.ct, %bb.cr
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.db

bb.cw:                                            ; preds = %bb.cu
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN13CRecordVectorIjE3AddEj.exit.i unwind label %bb.cv

_ZN13CRecordVectorIjE3AddEj.exit.i:               ; preds = %bb.cw
  %i.sk = load ptr, ptr %i.dw, align 8, !tbaa !32
  %i.sl = load i32, ptr %i.dx, align 4, !tbaa !34
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.sk, i64 %i.sm
  store i32 %.067234.i, ptr %i.sn, align 4, !tbaa !8
  %i.so = load i32, ptr %i.dx, align 4, !tbaa !34
  %i.sp = add nsw i32 %i.so, 1
  store i32 %i.sp, ptr %i.dx, align 4, !tbaa !34
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.co, %bb.cx
  %.494.jt1.i = phi i32 [ %i.sg, %bb.cx ], [ %i.sd, %bb.co ]
  %i.sq = load ptr, ptr %11, align 8, !tbaa !23   ; 2 uses
  %i.sr = icmp eq ptr %i.sq, null
  br i1 %i.sr, label %.thread372, label %bb.cz

bb.cy:                                            ; preds = %_ZN13CRecordVectorIjE3AddEj.exit.i, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ss = load ptr, ptr %11, align 8, !tbaa !23   ; 2 uses
  %i.st = icmp eq ptr %i.ss, null
  br i1 %i.st, label %_ZN11CStringBaseIwED2Ev.exit.jt4.i, label %bb.da

bb.cz:                                            ; preds = %.loopexit.i
  call void @_ZdaPv(ptr noundef nonnull %i.sq) #16
  br label %.thread372

bb.da:                                            ; preds = %bb.cy
  call void @_ZdaPv(ptr noundef nonnull %i.ss) #16
  br label %_ZN11CStringBaseIwED2Ev.exit.jt4.i

.thread372:                                       ; preds = %.loopexit.i, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %.thread369

_ZN11CStringBaseIwED2Ev.exit.jt4.i:               ; preds = %bb.da, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.su = add nuw i32 %.067234.i, 1               ; 2 uses
  %i.sv = load i32, ptr %i.a, align 4, !tbaa !8
  %i.sw = icmp ult i32 %i.su, %i.sv
  br i1 %i.sw, label %.lr.ph.i337, label %._crit_edge.i, !llvm.loop !88

bb.db:                                            ; preds = %bb.cv, %bb.cq
  %.pn.pn.i = phi { ptr, i32 } [ %i.sj, %bb.cv ], [ %i.sf, %bb.cq ] ; 2 uses
  %i.sx = load ptr, ptr %11, align 8, !tbaa !23   ; 2 uses
  %i.sy = icmp eq ptr %i.sx, null
  br i1 %i.sy, label %_ZN11CStringBaseIwED2Ev.exit125.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @_ZdaPv(ptr noundef nonnull %i.sx) #16
  br label %_ZN11CStringBaseIwED2Ev.exit125.i

_ZN11CStringBaseIwED2Ev.exit125.i:                ; preds = %bb.dc, %bb.db, %bb.cp
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.se, %bb.cp ], [ %.pn.pn.i, %bb.db ], [ %.pn.pn.i, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.df

._crit_edge.i:                                    ; preds = %_ZN11CStringBaseIwED2Ev.exit.jt4.i, %.preheader.i
  %i.sz = load i32, ptr %i.dx, align 4, !tbaa !34
  %i.ta = icmp eq i32 %i.sz, 0
  br i1 %i.ta, label %bb.dd, label %.thread229.i

.thread229.i:                                     ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.dg

bb.dd:                                            ; preds = %._crit_edge.i
  %i.tb = load ptr, ptr %7, align 8, !tbaa !14
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 104
  %i.td = load ptr, ptr %i.tc, align 8
  %i.te = invoke noundef i32 %i.td(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.thread225.i unwind label %bb.de ; 0 uses

bb.de:                                            ; preds = %bb.dd, %bb.cl
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

.thread225.i:                                     ; preds = %bb.dd, %bb.cm
  %.696.ph.i = phi i32 [ 0, %bb.dd ], [ %i.qv, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.fe

bb.df:                                            ; preds = %bb.de, %_ZN11CStringBaseIwED2Ev.exit125.i
  %.pn109.i = phi { ptr, i32 } [ %i.tf, %bb.de ], [ %.pn.pn.pn.i, %_ZN11CStringBaseIwED2Ev.exit125.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.fd

bb.dg:                                            ; preds = %.thread229.i, %._crit_edge479
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.dz, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI11CStringBaseIwEE, i64 16), ptr %12, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.tg = load i32, ptr %i.ed, align 8, !tbaa !22 ; 2 uses
  %i.th = add nsw i32 %i.tg, 1                    ; 3 uses
  %i.ti = icmp eq i32 %i.th, 0
  br i1 %i.ti, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.tj = zext nneg i32 %i.th to i64
  %i.tk = icmp slt i32 %i.tg, -1
  %i.tl = shl nuw nsw i64 %i.tj, 2
  %i.tm = select i1 %i.tk, i64 -1, i64 %i.tl
  %i.tn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.tm) #15
          to label %.noexc136.i unwind label %bb.ds ; 10 uses

.noexc136.i:                                      ; preds = %bb.dh
  %i.to = ptrtoaddr ptr %i.tn to i64
  %i.tp = load i32, ptr %i.ec, align 4, !tbaa !21
  %i.tq = icmp sgt i32 %i.tp, 0
  %.pre4.i.i = load i32, ptr %i.eb, align 8, !tbaa !22 ; 5 uses
  br i1 %i.tq, label %.preheader.i.i126.i, label %bb.di

.preheader.i.i126.i:                              ; preds = %.noexc136.i
  %i.tr = icmp sgt i32 %.pre4.i.i, 0
  %.pre.i.i127.i = load ptr, ptr %13, align 8, !tbaa !23 ; 9 uses
  br i1 %i.tr, label %.lr.ph.i.i131.i, label %._crit_edge.i.i128.i

.lr.ph.i.i131.i:                                  ; preds = %.preheader.i.i126.i
  %.pre.i.i127.i675 = ptrtoaddr ptr %.pre.i.i127.i to i64
  %wide.trip.count.i.i132.i = zext nneg i32 %.pre4.i.i to i64 ; 5 uses
  %min.iters.check678 = icmp ult i32 %.pre4.i.i, 8
  %i.ts = sub i64 %.pre.i.i127.i675, %i.to
  %diff.check676 = icmp ugt i64 %i.ts, -32
  %or.cond754 = select i1 %min.iters.check678, i1 true, i1 %diff.check676
  br i1 %or.cond754, label %scalar.ph677.preheader, label %vector.ph679

vector.ph679:                                     ; preds = %.lr.ph.i.i131.i
  %n.vec680 = and i64 %wide.trip.count.i.i132.i, 2147483640 ; 3 uses
  br label %vector.body681

vector.body681:                                   ; preds = %vector.body681, %vector.ph679
  %index682 = phi i64 [ 0, %vector.ph679 ], [ %index.next685, %vector.body681 ] ; 3 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i127.i, i64 %index682 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %wide.load683 = load <4 x i32>, ptr %i.tt, align 4, !tbaa !25
  %wide.load684 = load <4 x i32>, ptr %i.tu, align 4, !tbaa !25
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %index682 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  store <4 x i32> %wide.load683, ptr %i.tv, align 4, !tbaa !25
  store <4 x i32> %wide.load684, ptr %i.tw, align 4, !tbaa !25
  %index.next685 = add nuw i64 %index682, 8       ; 2 uses
  %i.tx = icmp eq i64 %index.next685, %n.vec680
  br i1 %i.tx, label %middle.block686, label %vector.body681, !llvm.loop !89

middle.block686:                                  ; preds = %vector.body681
  %cmp.n687 = icmp eq i64 %n.vec680, %wide.trip.count.i.i132.i
  br i1 %cmp.n687, label %._crit_edge.thread.i.i129.i, label %scalar.ph677.preheader

scalar.ph677.preheader:                           ; preds = %.lr.ph.i.i131.i, %middle.block686
  %indvars.iv.i.i133.i.ph = phi i64 [ 0, %.lr.ph.i.i131.i ], [ %n.vec680, %middle.block686 ] ; 3 uses
  %xtraiter809 = and i64 %wide.trip.count.i.i132.i, 3 ; 2 uses
  %lcmp.mod810.not = icmp eq i64 %xtraiter809, 0
  br i1 %lcmp.mod810.not, label %scalar.ph677.prol.loopexit, label %scalar.ph677.prol

scalar.ph677.prol:                                ; preds = %scalar.ph677.preheader, %scalar.ph677.prol
  %indvars.iv.i.i133.i.prol = phi i64 [ %indvars.iv.next.i.i134.i.prol, %scalar.ph677.prol ], [ %indvars.iv.i.i133.i.ph, %scalar.ph677.preheader ] ; 3 uses
  %prol.iter811 = phi i64 [ %prol.iter811.next, %scalar.ph677.prol ], [ 0, %scalar.ph677.preheader ]
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i127.i, i64 %indvars.iv.i.i133.i.prol
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !25
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %indvars.iv.i.i133.i.prol
  store i32 %i.tz, ptr %i.ua, align 4, !tbaa !25
  %indvars.iv.next.i.i134.i.prol = add nuw nsw i64 %indvars.iv.i.i133.i.prol, 1 ; 2 uses
  %prol.iter811.next = add i64 %prol.iter811, 1   ; 2 uses
  %prol.iter811.cmp.not = icmp eq i64 %prol.iter811.next, %xtraiter809
  br i1 %prol.iter811.cmp.not, label %scalar.ph677.prol.loopexit, label %scalar.ph677.prol, !llvm.loop !90

scalar.ph677.prol.loopexit:                       ; preds = %scalar.ph677.prol, %scalar.ph677.preheader
  %indvars.iv.i.i133.i.unr = phi i64 [ %indvars.iv.i.i133.i.ph, %scalar.ph677.preheader ], [ %indvars.iv.next.i.i134.i.prol, %scalar.ph677.prol ]
  %i.ub = sub nsw i64 %indvars.iv.i.i133.i.ph, %wide.trip.count.i.i132.i
  %i.uc = icmp ugt i64 %i.ub, -4
  br i1 %i.uc, label %._crit_edge.thread.i.i129.i, label %scalar.ph677

._crit_edge.i.i128.i:                             ; preds = %.preheader.i.i126.i
  %i.ud = icmp eq ptr %.pre.i.i127.i, null
  br i1 %i.ud, label %bb.di, label %._crit_edge.thread.i.i129.i
end_hunk_0

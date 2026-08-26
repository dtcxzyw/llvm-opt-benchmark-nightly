Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64InstPrinter?download=true
inline.NumInlined: 1980
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN4llvm18AArch64InstPrinter9printInstEPKNS_6MCInstEmNS_9StringRefERKNS_15MCSubtargetInfoERNS_11raw_ostreamE:bb.a
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %3, i64 %4) #22
  br label %bb.de

bb.bg:                                            ; preds = %.critedge357
  br i1 %.not.i388, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hm = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 noundef zeroext 9) #22
  br label %_ZN4llvm11raw_ostreamlsEc.exit412

bb.bi:                                            ; preds = %bb.bg
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  store ptr %i.hn, ptr %i.eb, align 8, !tbaa !27
  store i8 9, ptr %i.ec, align 1, !tbaa !32
  br label %_ZN4llvm11raw_ostreamlsEc.exit412

_ZN4llvm11raw_ostreamlsEc.exit412:                ; preds = %bb.bh, %bb.bi
  %.0.i411 = phi ptr [ %i.hm, %bb.bh ], [ %6, %bb.bi ] ; 4 uses
  %.str.92..str.93 = select i1 %or.cond9, ptr @.str.92, ptr @.str.93 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i411, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !22
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i411, i64 32 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !27 ; 2 uses
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = icmp ult i64 %i.hu, 4
  br i1 %i.hv, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit412
  %i.hw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i411, ptr noundef nonnull %.str.92..str.93, i64 noundef 4) #22 ; 2 uses
  %.phi.trans.insert477 = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %.pre478 = load ptr, ptr %.phi.trans.insert477, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit415

bb.bk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit412
  %i.hx = load i32, ptr %.str.92..str.93, align 1
  store i32 %i.hx, ptr %i.hr, align 1
  %i.hy = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4 ; 2 uses
  store ptr %i.hz, ptr %i.hq, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit415

_ZN4llvm11raw_ostreamlsEPKc.exit415:              ; preds = %bb.bj, %bb.bk
  %i.ia = phi ptr [ %.pre478, %bb.bj ], [ %i.hz, %bb.bk ] ; 3 uses
  %.0.i.i414 = phi ptr [ %i.hw, %bb.bj ], [ %.0.i411, %bb.bk ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i.i414, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !22
  %.not.i416 = icmp ult ptr %i.ia, %i.ic
  br i1 %.not.i416, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit415
  %i.id = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i414, i8 noundef zeroext 9) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit418

bb.bm:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit415
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i.i414, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 1
  store ptr %i.if, ptr %i.ie, align 8, !tbaa !27
  store i8 9, ptr %i.ia, align 1, !tbaa !32
  br label %_ZN4llvm11raw_ostreamlsEc.exit418

_ZN4llvm11raw_ostreamlsEc.exit418:                ; preds = %bb.bl, %bb.bm
  %i.ig = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !32
  %i.ii = load ptr, ptr %0, align 8, !tbaa !20
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8
  tail call void %i.ik(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.ih) #22
  %i.il = load ptr, ptr %i.ed, align 8, !tbaa !22
  %i.im = load ptr, ptr %i.eb, align 8, !tbaa !27 ; 2 uses
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = icmp ult i64 %i.ip, 2
  br i1 %i.iq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit418
  %i.ir = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit421

bb.bo:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit418
  store i16 8236, ptr %i.im, align 1
  %i.is = load ptr, ptr %i.eb, align 8, !tbaa !27
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 2
  store ptr %i.it, ptr %i.eb, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit421

_ZN4llvm11raw_ostreamlsEPKc.exit421:              ; preds = %bb.bn, %bb.bo
  %i.iu = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !32
  %i.iw = load ptr, ptr %0, align 8, !tbaa !20
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8
  tail call void %i.iy(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.iv) #22
  %i.iz = load ptr, ptr %i.ed, align 8, !tbaa !22
  %i.ja = load ptr, ptr %i.eb, align 8, !tbaa !27 ; 2 uses
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = icmp ult i64 %i.jd, 2
  br i1 %i.je, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit421
  %i.jf = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit424

bb.bq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit421
  store i16 8236, ptr %i.ja, align 1
  %i.jg = load ptr, ptr %i.eb, align 8, !tbaa !27
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  store ptr %i.jh, ptr %i.eb, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit424

_ZN4llvm11raw_ostreamlsEPKc.exit424:              ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %10, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !48, !nonnull !46, !align !47 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !22
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 32 ; 3 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !27 ; 2 uses
  %i.jo = icmp eq ptr %i.jl, %i.jn
  br i1 %i.jo, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit424
  %i.jp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.jj, ptr noundef nonnull @.str.89, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit426

bb.bs:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit424
  store i8 35, ptr %i.jn, align 1
  %i.jq = load ptr, ptr %i.jm, align 8, !tbaa !27
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  store ptr %i.jr, ptr %i.jm, align 8, !tbaa !27
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit426

_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit426: ; preds = %bb.br, %bb.bs
  %i.js = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.jt = load ptr, ptr %i.ji, align 8, !tbaa !48, !nonnull !46, !align !47
  %i.ju = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.jt, i64 noundef %i.js) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.jv = load ptr, ptr %i.ed, align 8, !tbaa !22
  %i.jw = load ptr, ptr %i.eb, align 8, !tbaa !27 ; 2 uses
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = icmp ult i64 %i.jz, 2
  br i1 %i.ka, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit426
  %i.kb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit429

bb.bu:                                            ; preds = %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit426
  store i16 8236, ptr %i.jw, align 1
  %i.kc = load ptr, ptr %i.eb, align 8, !tbaa !27
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  store ptr %i.kd, ptr %i.eb, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit429

_ZN4llvm11raw_ostreamlsEPKc.exit429:              ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %11, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.ke = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !48, !nonnull !46, !align !47 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !22
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 32 ; 3 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !27 ; 2 uses
  %i.kk = icmp eq ptr %i.kh, %i.kj
  br i1 %i.kk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit429
  %i.kl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.kf, ptr noundef nonnull @.str.89, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit431

bb.bw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit429
  store i8 35, ptr %i.kj, align 1
  %i.km = load ptr, ptr %i.ki, align 8, !tbaa !27
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 1
  store ptr %i.kn, ptr %i.ki, align 8, !tbaa !27
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit431

_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit431: ; preds = %bb.bv, %bb.bw
  %i.ko = load i64, ptr %i.dy, align 8, !tbaa !32
  %i.kp = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.kq = add i64 %i.ko, 1
  %i.kr = sub i64 %i.kq, %i.kp
  %i.ks = load ptr, ptr %i.ke, align 8, !tbaa !48, !nonnull !46, !align !47
  %i.kt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.ks, i64 noundef %i.kr) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %3, i64 %4) #22
  br label %bb.de

bb.bx:                                            ; preds = %bb.j
  %i.ku = icmp eq i32 %i.b, 2099                  ; 4 uses
  %or.cond29 = icmp eq i32 %i.j, 2098
  br i1 %or.cond29, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !28 ; 6 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 56
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !32 ; 3 uses
  %i.kz = trunc i64 %i.ky to i32                  ; 5 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 72
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !32 ; 4 uses
  %i.lc = trunc i64 %i.lb to i32                  ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kw, i64 40 ; 3 uses
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !32
  switch i32 %i.le, label %.critedge [
    i32 12, label %bb.bz
    i32 14, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by, %bb.by
  %i.lf = icmp eq i32 %i.kz, 0
  %i.lg = icmp slt i32 %i.lc, %i.kz
  %or.cond364 = or i1 %i.lf, %i.lg
  br i1 %or.cond364, label %bb.ca, label %.critedge

bb.ca:                                            ; preds = %bb.bz
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 272
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !74
  %i.lj = and i64 %i.li, 512
  %.not469 = icmp eq i64 %i.lj, 0
  br i1 %.not469, label %.critedge, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lk = select i1 %i.ku, i32 64, i32 32
  %i.ll = sub nsw i32 %i.lk, %i.kz                ; 2 uses
  %21 = srem i32 %i.ll, 64
  %i.lm = srem i32 %i.ll, 32
  %22 = select i1 %i.ku, i32 %21, i32 %i.lm
  %i.ln = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.94) ; 0 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !32
  %i.lq = load ptr, ptr %0, align 8, !tbaa !20
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  %i.ls = load ptr, ptr %i.lr, align 8
  tail call void %i.ls(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.lp) #22
  %i.lt = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %12, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.lu = call noundef nonnull align 8 dereferenceable(18) ptr @_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(18) %12, ptr noundef nonnull align 1 dereferenceable(2) @.str.89)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !48, !nonnull !46, !align !47
  %i.lx = sext i32 %22 to i64
  %i.ly = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.lw, i64 noundef %i.lx) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.lz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %13, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.ma = call noundef nonnull align 8 dereferenceable(18) ptr @_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(18) %13, ptr noundef nonnull align 1 dereferenceable(2) @.str.89)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !48, !nonnull !46, !align !47
  %i.md = shl i64 %i.lb, 32
  %sext470 = add i64 %i.md, 4294967296
  %i.me = ashr exact i64 %sext470, 32
  %i.mf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.mc, i64 noundef %i.me) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %3, i64 %4) #22
  br label %bb.de

.critedge:                                        ; preds = %bb.by, %bb.bz, %bb.ca
  %i.mg = icmp slt i32 %i.lc, %i.kz
  br i1 %i.mg, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.critedge
  %i.mh = select i1 %i.ku, i32 64, i32 32
  %i.mi = sub nsw i32 %i.mh, %i.kz                ; 2 uses
  %23 = srem i32 %i.mi, 64
  %i.mj = srem i32 %i.mi, 32
  %24 = select i1 %i.ku, i32 %23, i32 %i.mj
  %i.mk = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.95) ; 0 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !32
  %i.mn = load ptr, ptr %0, align 8, !tbaa !20
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 40
  %i.mp = load ptr, ptr %i.mo, align 8
  tail call void %i.mp(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.mm) #22
  %i.mq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  %i.mr = load i32, ptr %i.ld, align 8, !tbaa !32
  %i.ms = load ptr, ptr %0, align 8, !tbaa !20
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 40
  %i.mu = load ptr, ptr %i.mt, align 8
  tail call void %i.mu(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.mr) #22
  %i.mv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %14, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.mw = call noundef nonnull align 8 dereferenceable(18) ptr @_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(18) %14, ptr noundef nonnull align 1 dereferenceable(2) @.str.89)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !48, !nonnull !46, !align !47
  %i.mz = sext i32 %24 to i64
  %i.na = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.my, i64 noundef %i.mz) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.nb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.nc = call noundef nonnull align 8 dereferenceable(18) ptr @_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(18) %15, ptr noundef nonnull align 1 dereferenceable(2) @.str.89)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !48, !nonnull !46, !align !47
  %i.nf = shl i64 %i.lb, 32
  %sext472 = add i64 %i.nf, 4294967296
  %i.ng = ashr exact i64 %sext472, 32
  %i.nh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.ne, i64 noundef %i.ng) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %3, i64 %4) #22
  br label %bb.de

bb.cd:                                            ; preds = %.critedge
  %reass.sub = sub i64 %i.lb, %i.ky
  %i.ni = add i64 %reass.sub, 1
  %i.nj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.96) ; 0 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !32
  %i.nm = load ptr, ptr %0, align 8, !tbaa !20
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 40
  %i.no = load ptr, ptr %i.nn, align 8
  tail call void %i.no(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.nl) #22
  %i.np = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  %i.nq = load i32, ptr %i.ld, align 8, !tbaa !32
  %i.nr = load ptr, ptr %0, align 8, !tbaa !20
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 40
  %i.nt = load ptr, ptr %i.ns, align 8
  tail call void %i.nt(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.nq) #22
  %i.nu = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %16, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.nv = call noundef nonnull align 8 dereferenceable(18) ptr @_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(18) %16, ptr noundef nonnull align 1 dereferenceable(2) @.str.89)
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !48, !nonnull !46, !align !47
  %sext471 = shl i64 %i.ky, 32
  %i.ny = ashr exact i64 %sext471, 32
  %i.nz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.nx, i64 noundef %i.ny) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.oa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %17, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.ob = call noundef nonnull align 8 dereferenceable(18) ptr @_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(18) %17, ptr noundef nonnull align 1 dereferenceable(2) @.str.89)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !48, !nonnull !46, !align !47
  %i.oe = and i64 %i.ni, 4294967295
  %i.of = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.od, i64 noundef %i.oe) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %3, i64 %4) #22
  br label %bb.de

bb.ce:                                            ; preds = %bb.bx
  %.not468 = icmp eq i32 %i.b, 5551               ; 2 uses
  %or.cond31 = icmp eq i32 %i.j, 5550             ; 2 uses
  %.not = icmp eq i32 %i.b, 5537                  ; 2 uses
  switch i32 %i.b, label %bb.ch [
    i32 5551, label %bb.cf
    i32 5550, label %bb.cf
    i32 5537, label %bb.cf
    i32 5536, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.ce, %bb.ce, %bb.ce
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !28
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.oj = load i8, ptr %i.oi, align 8, !tbaa !29
  %i.ok = icmp eq i8 %i.oj, 5
  br i1 %i.ok, label %bb.cg, label %.thread460

bb.cg:                                            ; preds = %bb.cf
  %.str.97..str.98 = select i1 %or.cond31, ptr @.str.97, ptr @.str.98
  %i.ol = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %.str.97..str.98) ; 0 uses
  %i.om = load ptr, ptr %i.og, align 8, !tbaa !28
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !32
  %i.op = load ptr, ptr %0, align 8, !tbaa !20
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 40
  %i.or = load ptr, ptr %i.oq, align 8
  tail call void %i.or(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.oo) #22
  %i.os = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %18, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.ot = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.89) ; 0 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !33, !nonnull !46, !align !47
  %i.ow = load ptr, ptr %i.a, align 8, !tbaa !322
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !28
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !32
  call void @_ZNK4llvm9MCAsmInfo9printExprERNS_11raw_ostreamERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(448) %i.ov, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.pa) #22
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.de

bb.ch:                                            ; preds = %bb.ce
  %or.cond39 = icmp eq i32 %i.j, 5534
  br i1 %or.cond39, label %bb.ci, label %.thread460

bb.ci:                                            ; preds = %bb.ch
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !28
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 32
  %i.pe = load i8, ptr %i.pd, align 8, !tbaa !29
  %i.pf = icmp eq i8 %i.pe, 5
  br i1 %i.pf, label %bb.cj, label %.thread462

.thread462:                                       ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr %6, ptr %20, align 8, !tbaa !324
  %i.pg = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %0, ptr %i.pg, align 8, !tbaa !325
  %i.ph = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.a, ptr %i.ph, align 8, !tbaa !330
  br label %.critedge368

bb.cj:                                            ; preds = %bb.ci
  %i.pi = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.99) ; 0 uses
  %i.pj = load ptr, ptr %i.pb, align 8, !tbaa !28
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !32
  %i.pm = load ptr, ptr %0, align 8, !tbaa !20
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 40
  %i.po = load ptr, ptr %i.pn, align 8
  tail call void %i.po(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.pl) #22
  %i.pp = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %19, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.pq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.89) ; 0 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !33, !nonnull !46, !align !47
  %i.pt = load ptr, ptr %i.a, align 8, !tbaa !322
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !28
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 40
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !32
  call void @_ZNK4llvm9MCAsmInfo9printExprERNS_11raw_ostreamERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(448) %i.ps, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.px) #22
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.de

.thread460:                                       ; preds = %bb.cf, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr %6, ptr %20, align 8, !tbaa !324
  %i.py = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %0, ptr %i.py, align 8, !tbaa !325
  %i.pz = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.a, ptr %i.pz, align 8, !tbaa !330
  br i1 %or.cond31, label %bb.ck, label %.critedge366

bb.ck:                                            ; preds = %.thread460
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !28 ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qd = load i8, ptr %i.qc, align 8, !tbaa !29
  %i.qe = icmp eq i8 %i.qd, 2
  br i1 %i.qe, label %bb.cl, label %.critedge368

bb.cl:                                            ; preds = %bb.ck
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 32
  %i.qg = load i8, ptr %i.qf, align 8, !tbaa !29
  %i.qh = icmp eq i8 %i.qg, 2
  br i1 %i.qh, label %bb.cm, label %.critedge368

bb.cm:                                            ; preds = %bb.cl
  %i.qi = select i1 %.not468, i32 64, i32 32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qb, i64 40
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !32
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !32
  %i.qn = and i64 %i.qk, 4294967295               ; 3 uses
  %i.qo = shl i64 %i.qm, %i.qn                    ; 3 uses
  %i.qp = and i64 %i.qo, 4294967295
  %spec.select.i = select i1 %.not468, i64 %i.qo, i64 %i.qp ; 2 uses
  %i.qq = icmp eq i64 %spec.select.i, 0
  %i.qr = icmp ne i64 %i.qn, 0
  %or.cond.i = and i1 %i.qr, %i.qq
  br i1 %or.cond.i, label %.critedge368, label %_ZN4llvm10AArch64_AML14isMOVZMovAliasEmii.exit

_ZN4llvm10AArch64_AML14isMOVZMovAliasEmii.exit:   ; preds = %bb.cm
  %i.qs = shl i64 65535, %i.qn
  %i.qt = xor i64 %i.qs, -1
  %i.qu = and i64 %spec.select.i, %i.qt
  %i.qv = icmp eq i64 %i.qu, 0
  br i1 %i.qv, label %bb.cn, label %.critedge368

bb.cn:                                            ; preds = %_ZN4llvm10AArch64_AML14isMOVZMovAliasEmii.exit
  call fastcc void @"_ZZN4llvm18AArch64InstPrinter9printInstEPKNS_6MCInstEmNS_9StringRefERKNS_15MCSubtargetInfoERNS_11raw_ostreamEENK3$_0clEmi"(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %i.qo, i32 noundef %i.qi)
  br label %.critedge49

.critedge366:                                     ; preds = %.thread460
  %or.cond43 = icmp eq i32 %i.j, 5536
end_hunk_0

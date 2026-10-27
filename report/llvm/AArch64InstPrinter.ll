Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64InstPrinter?download=true
inline.NumInlined: 1980
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN4llvm18AArch64InstPrinter9printInstEPKNS_6MCInstEmNS_9StringRefERKNS_15MCSubtargetInfoERNS_11raw_ostreamE:bb.a
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  store ptr %i.jf, ptr %i.dz, align 8, !tbaa !32
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit424

_ZN4llvm11raw_ostreamlsEPKc.exit424:              ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %10, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !55, !nonnull !51, !align !52 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !31
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 32 ; 3 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !32 ; 2 uses
  %i.jm = icmp eq ptr %i.jj, %i.jl
  br i1 %i.jm, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit424
  %i.jn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.jh, ptr noundef nonnull @.str.89, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit426

bb.bs:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit424
  store i8 35, ptr %i.jl, align 1
  %i.jo = load ptr, ptr %i.jk, align 8, !tbaa !32
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  store ptr %i.jp, ptr %i.jk, align 8, !tbaa !32
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit426

_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit426: ; preds = %bb.br, %bb.bs
  %i.jq = load i64, ptr %i.dv, align 8, !tbaa !37
  %i.jr = load ptr, ptr %i.jg, align 8, !tbaa !55, !nonnull !51, !align !52
  %i.js = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.jr, i64 noundef %i.jq) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.jt = load ptr, ptr %i.eb, align 8, !tbaa !31
  %i.ju = load ptr, ptr %i.dz, align 8, !tbaa !32 ; 2 uses
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = icmp ult i64 %i.jx, 2
  br i1 %i.jy, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit426
  %i.jz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit429

bb.bu:                                            ; preds = %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit426
  store i16 8236, ptr %i.ju, align 1
  %i.ka = load ptr, ptr %i.dz, align 8, !tbaa !32
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  store ptr %i.kb, ptr %i.dz, align 8, !tbaa !32
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit429

_ZN4llvm11raw_ostreamlsEPKc.exit429:              ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %11, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.kc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !55, !nonnull !51, !align !52 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !31
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 32 ; 3 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !32 ; 2 uses
  %i.ki = icmp eq ptr %i.kf, %i.kh
  br i1 %i.ki, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit429
  %i.kj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.kd, ptr noundef nonnull @.str.89, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit431

bb.bw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit429
  store i8 35, ptr %i.kh, align 1
  %i.kk = load ptr, ptr %i.kg, align 8, !tbaa !32
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  store ptr %i.kl, ptr %i.kg, align 8, !tbaa !32
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit431

_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit431: ; preds = %bb.bv, %bb.bw
  %i.km = load i64, ptr %i.dw, align 8, !tbaa !37
  %i.kn = load i64, ptr %i.dv, align 8, !tbaa !37
  %i.ko = add i64 %i.km, 1
  %i.kp = sub i64 %i.ko, %i.kn
  %i.kq = load ptr, ptr %i.kc, align 8, !tbaa !55, !nonnull !51, !align !52
  %i.kr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.kq, i64 noundef %i.kp) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %3, i64 %4) #22
  br label %bb.de

bb.bx:                                            ; preds = %bb.j
  %i.ks = icmp eq i32 %i.b, 2099                  ; 2 uses
  %or.cond29 = icmp eq i32 %i.j, 2098
  br i1 %or.cond29, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !33 ; 6 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 56
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !37 ; 3 uses
  %i.kx = trunc i64 %i.kw to i32                  ; 5 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 72
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !37 ; 4 uses
  %i.la = trunc i64 %i.kz to i32                  ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ku, i64 40 ; 3 uses
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !37
  switch i32 %i.lc, label %.critedge [
    i32 12, label %bb.bz
    i32 14, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by, %bb.by
  %i.ld = icmp eq i32 %i.kx, 0
  %i.le = icmp slt i32 %i.la, %i.kx
  %or.cond364 = or i1 %i.ld, %i.le
  br i1 %or.cond364, label %bb.ca, label %.critedge

bb.ca:                                            ; preds = %bb.bz
  %i.lf = getelementptr inbounds nuw i8, ptr %5, i64 272
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !73
  %i.lh = and i64 %i.lg, 512
  %.not469 = icmp eq i64 %i.lh, 0
  br i1 %.not469, label %.critedge, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.li = select i1 %i.ks, i32 64, i32 32         ; 2 uses
  %i.lj = sub nsw i32 %i.li, %i.kx
  %i.lk = srem i32 %i.lj, %i.li
  %i.ll = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.94) ; 0 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !37
  %i.lo = load ptr, ptr %0, align 8, !tbaa !26
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  %i.lq = load ptr, ptr %i.lp, align 8
  tail call void %i.lq(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.ln) #22
  %i.lr = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %12, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.ls = call noundef nonnull align 8 dereferenceable(18) ptr @_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(18) %12, ptr noundef nonnull align 1 dereferenceable(2) @.str.89)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !55, !nonnull !51, !align !52
  %i.lv = sext i32 %i.lk to i64
  %i.lw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.lu, i64 noundef %i.lv) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.lx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %13, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.ly = call noundef nonnull align 8 dereferenceable(18) ptr @_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(18) %13, ptr noundef nonnull align 1 dereferenceable(2) @.str.89)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !55, !nonnull !51, !align !52
  %i.mb = shl i64 %i.kz, 32
  %sext470 = add i64 %i.mb, 4294967296
  %i.mc = ashr exact i64 %sext470, 32
  %i.md = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.ma, i64 noundef %i.mc) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %3, i64 %4) #22
  br label %bb.de

.critedge:                                        ; preds = %bb.by, %bb.bz, %bb.ca
  %i.me = icmp slt i32 %i.la, %i.kx
  br i1 %i.me, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.critedge
  %i.mf = select i1 %i.ks, i32 64, i32 32         ; 2 uses
  %i.mg = sub nsw i32 %i.mf, %i.kx
  %i.mh = srem i32 %i.mg, %i.mf
  %i.mi = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.95) ; 0 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !37
  %i.ml = load ptr, ptr %0, align 8, !tbaa !26
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 40
  %i.mn = load ptr, ptr %i.mm, align 8
  tail call void %i.mn(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.mk) #22
  %i.mo = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  %i.mp = load i32, ptr %i.lb, align 8, !tbaa !37
  %i.mq = load ptr, ptr %0, align 8, !tbaa !26
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 40
  %i.ms = load ptr, ptr %i.mr, align 8
  tail call void %i.ms(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.mp) #22
  %i.mt = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %14, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.mu = call noundef nonnull align 8 dereferenceable(18) ptr @_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(18) %14, ptr noundef nonnull align 1 dereferenceable(2) @.str.89)
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !55, !nonnull !51, !align !52
  %i.mx = sext i32 %i.mh to i64
  %i.my = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.mw, i64 noundef %i.mx) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.mz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %15, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.na = call noundef nonnull align 8 dereferenceable(18) ptr @_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(18) %15, ptr noundef nonnull align 1 dereferenceable(2) @.str.89)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !55, !nonnull !51, !align !52
  %i.nd = shl i64 %i.kz, 32
  %sext472 = add i64 %i.nd, 4294967296
  %i.ne = ashr exact i64 %sext472, 32
  %i.nf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.nc, i64 noundef %i.ne) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %3, i64 %4) #22
  br label %bb.de

bb.cd:                                            ; preds = %.critedge
  %reass.sub = sub i64 %i.kz, %i.kw
  %i.ng = add i64 %reass.sub, 1
  %i.nh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.96) ; 0 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !37
  %i.nk = load ptr, ptr %0, align 8, !tbaa !26
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 40
  %i.nm = load ptr, ptr %i.nl, align 8
  tail call void %i.nm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.nj) #22
  %i.nn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  %i.no = load i32, ptr %i.lb, align 8, !tbaa !37
  %i.np = load ptr, ptr %0, align 8, !tbaa !26
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 40
  %i.nr = load ptr, ptr %i.nq, align 8
  tail call void %i.nr(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.no) #22
  %i.ns = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %16, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.nt = call noundef nonnull align 8 dereferenceable(18) ptr @_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(18) %16, ptr noundef nonnull align 1 dereferenceable(2) @.str.89)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !55, !nonnull !51, !align !52
  %sext471 = shl i64 %i.kw, 32
  %i.nw = ashr exact i64 %sext471, 32
  %i.nx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.nv, i64 noundef %i.nw) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.ny = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %17, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.nz = call noundef nonnull align 8 dereferenceable(18) ptr @_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(18) %17, ptr noundef nonnull align 1 dereferenceable(2) @.str.89)
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !55, !nonnull !51, !align !52
  %i.oc = and i64 %i.ng, 4294967295
  %i.od = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.ob, i64 noundef %i.oc) #22 ; 0 uses
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
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !33
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oh = load i8, ptr %i.og, align 8, !tbaa !36
  %i.oi = icmp eq i8 %i.oh, 5
  br i1 %i.oi, label %bb.cg, label %.thread460

bb.cg:                                            ; preds = %bb.cf
  %.str.97..str.98 = select i1 %or.cond31, ptr @.str.97, ptr @.str.98
  %i.oj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %.str.97..str.98) ; 0 uses
  %i.ok = load ptr, ptr %i.oe, align 8, !tbaa !33
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !37
  %i.on = load ptr, ptr %0, align 8, !tbaa !26
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  %i.op = load ptr, ptr %i.oo, align 8
  tail call void %i.op(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.om) #22
  %i.oq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %18, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.or = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.89) ; 0 uses
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.ou = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !33
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !37
  call void @_ZNK4llvm9MCAsmInfo9printExprERNS_11raw_ostreamERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(448) %i.ot, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.oy) #22
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.de

bb.ch:                                            ; preds = %bb.ce
  %or.cond39 = icmp eq i32 %i.j, 5534
  br i1 %or.cond39, label %bb.ci, label %.thread460

bb.ci:                                            ; preds = %bb.ch
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !33
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.pc = load i8, ptr %i.pb, align 8, !tbaa !36
  %i.pd = icmp eq i8 %i.pc, 5
  br i1 %i.pd, label %bb.cj, label %.thread462

.thread462:                                       ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr %6, ptr %20, align 8, !tbaa !358
  %i.pe = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %0, ptr %i.pe, align 8, !tbaa !122
  %i.pf = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.a, ptr %i.pf, align 8, !tbaa !359
  br label %.critedge368

bb.cj:                                            ; preds = %bb.ci
  %i.pg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.99) ; 0 uses
  %i.ph = load ptr, ptr %i.oz, align 8, !tbaa !33
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !37
  %i.pk = load ptr, ptr %0, align 8, !tbaa !26
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 40
  %i.pm = load ptr, ptr %i.pl, align 8
  tail call void %i.pm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 %i.pj) #22
  %i.pn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %19, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 0) #22
  %i.po = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.89) ; 0 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.pr = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !33
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 40
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !37
  call void @_ZNK4llvm9MCAsmInfo9printExprERNS_11raw_ostreamERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(448) %i.pq, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.pv) #22
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.de

.thread460:                                       ; preds = %bb.cf, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr %6, ptr %20, align 8, !tbaa !358
  %i.pw = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %0, ptr %i.pw, align 8, !tbaa !122
  %i.px = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.a, ptr %i.px, align 8, !tbaa !359
  br i1 %or.cond31, label %bb.ck, label %.critedge366

bb.ck:                                            ; preds = %.thread460
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !33 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qb = load i8, ptr %i.qa, align 8, !tbaa !36
  %i.qc = icmp eq i8 %i.qb, 2
  br i1 %i.qc, label %bb.cl, label %.critedge368

bb.cl:                                            ; preds = %bb.ck
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 32
  %i.qe = load i8, ptr %i.qd, align 8, !tbaa !36
  %i.qf = icmp eq i8 %i.qe, 2
  br i1 %i.qf, label %bb.cm, label %.critedge368

bb.cm:                                            ; preds = %bb.cl
  %i.qg = select i1 %.not468, i32 64, i32 32
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 40
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !37
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !37
  %i.ql = and i64 %i.qi, 4294967295               ; 3 uses
  %i.qm = shl i64 %i.qk, %i.ql                    ; 3 uses
  %i.qn = and i64 %i.qm, 4294967295
  %spec.select.i = select i1 %.not468, i64 %i.qm, i64 %i.qn ; 2 uses
  %i.qo = icmp eq i64 %spec.select.i, 0
  %i.qp = icmp ne i64 %i.ql, 0
  %or.cond.i = and i1 %i.qp, %i.qo
  br i1 %or.cond.i, label %.critedge368, label %_ZN4llvm10AArch64_AML14isMOVZMovAliasEmii.exit

_ZN4llvm10AArch64_AML14isMOVZMovAliasEmii.exit:   ; preds = %bb.cm
  %i.qq = shl i64 65535, %i.ql
  %i.qr = xor i64 %i.qq, -1
  %i.qs = and i64 %spec.select.i, %i.qr
  %i.qt = icmp eq i64 %i.qs, 0
  br i1 %i.qt, label %bb.cn, label %.critedge368

bb.cn:                                            ; preds = %_ZN4llvm10AArch64_AML14isMOVZMovAliasEmii.exit
  call fastcc void @"_ZZN4llvm18AArch64InstPrinter9printInstEPKNS_6MCInstEmNS_9StringRefERKNS_15MCSubtargetInfoERNS_11raw_ostreamEENK3$_0clEmi"(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %i.qm, i32 noundef %i.qg)
  br label %.critedge49

.critedge366:                                     ; preds = %.thread460
  %or.cond43 = icmp eq i32 %i.j, 5536
  br i1 %or.cond43, label %bb.co, label %.critedge368

bb.co:                                            ; preds = %.critedge366
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !33 ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.qx = load i8, ptr %i.qw, align 8, !tbaa !36
  %i.qy = icmp eq i8 %i.qx, 2
  br i1 %i.qy, label %bb.cp, label %.critedge368

bb.cp:                                            ; preds = %bb.co
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.ra = load i8, ptr %i.qz, align 8, !tbaa !36
  %i.rb = icmp eq i8 %i.ra, 2
  br i1 %i.rb, label %bb.cq, label %.critedge368

bb.cq:                                            ; preds = %bb.cp
  %i.rc = select i1 %.not, i32 64, i32 32
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qv, i64 40
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !37 ; 2 uses
  %i.rf = trunc i64 %i.re to i32                  ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qv, i64 24
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !37
  %i.ri = and i64 %i.re, 4294967295
  %i.rj = shl i64 %i.rh, %i.ri
  %i.rk = xor i64 %i.rj, -1                       ; 3 uses
  br i1 %.not, label %.split, label %bb.cr

.split:                                           ; preds = %bb.cq
  %i.rl = call fastcc noundef zeroext i1 @_ZN4llvm10AArch64_AML14isMOVNMovAliasEmii(i64 noundef %i.rk, i32 noundef %i.rf, i32 noundef 64)
  br i1 %i.rl, label %bb.cs, label %.critedge370.thread

bb.cr:                                            ; preds = %bb.cq
  %i.rm = and i64 %i.rk, 4294967295               ; 2 uses
  %i.rn = call fastcc noundef zeroext i1 @_ZN4llvm10AArch64_AML14isMOVNMovAliasEmii(i64 noundef %i.rm, i32 noundef %i.rf, i32 noundef 32)
  br i1 %i.rn, label %bb.cs, label %.critedge370.thread

bb.cs:                                            ; preds = %.split, %bb.cr
  %.0339465 = phi i64 [ %i.rk, %.split ], [ %i.rm, %bb.cr ]
  call fastcc void @"_ZZN4llvm18AArch64InstPrinter9printInstEPKNS_6MCInstEmNS_9StringRefERKNS_15MCSubtargetInfoERNS_11raw_ostreamEENK3$_0clEmi"(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %.0339465, i32 noundef %i.rc)
  br label %.critedge49

.critedge368:                                     ; preds = %bb.cm, %bb.ck, %bb.cl, %_ZN4llvm10AArch64_AML14isMOVZMovAliasEmii.exit, %.thread462, %.critedge366, %bb.cp, %bb.co
  %i.ro = icmp eq i32 %i.b, 5644
  switch i32 %i.b, label %.critedge370.thread [
    i32 5644, label %bb.ct
    i32 5642, label %bb.ct
    i32 1338, label %bb.cx
  ]

bb.ct:                                            ; preds = %.critedge368, %.critedge368
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !33 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !37
  switch i32 %i.rs, label %.critedge370.thread [
    i32 14, label %bb.cu
    i32 12, label %bb.cu
  ]

bb.cu:                                            ; preds = %bb.ct, %bb.ct
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  %i.ru = load i8, ptr %i.rt, align 8, !tbaa !36
  %i.rv = icmp eq i8 %i.ru, 2
  br i1 %i.rv, label %bb.cv, label %.critedge370.thread

bb.cv:                                            ; preds = %bb.cu
  %i.rw = select i1 %i.ro, i32 64, i32 32         ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rq, i64 40
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !37
  %i.rz = call fastcc noundef i64 @_ZN4llvm10AArch64_AML22decodeLogicalImmediateEmj(i64 noundef %i.ry, i32 noundef %i.rw) ; 2 uses
  %i.sa = call fastcc noundef zeroext i1 @_ZN4llvm10AArch64_AML17isAnyMOVWMovAliasEmi(i64 noundef %i.rz, i32 noundef %i.rw)
  br i1 %i.sa, label %.critedge370.thread, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call fastcc void @"_ZZN4llvm18AArch64InstPrinter9printInstEPKNS_6MCInstEmNS_9StringRefERKNS_15MCSubtargetInfoERNS_11raw_ostreamEENK3$_0clEmi"(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %i.rz, i32 noundef %i.rw)
  br label %.critedge49

bb.cx:                                            ; preds = %.critedge368
  %i.sb = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !32 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !31
  %.not.i433 = icmp ult ptr %i.sc, %i.se
  br i1 %.not.i433, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.sf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 noundef zeroext 9) #22
  br label %_ZN4llvm11raw_ostreamlsEc.exit435

bb.cz:                                            ; preds = %bb.cx
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  store ptr %i.sg, ptr %i.sb, align 8, !tbaa !32
  store i8 9, ptr %i.sc, align 1, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEc.exit435

_ZN4llvm11raw_ostreamlsEc.exit435:                ; preds = %bb.cy, %bb.cz
  %.0.i434 = phi ptr [ %i.sf, %bb.cy ], [ %6, %bb.cz ]
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.sj, align 8, !tbaa !77
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.si, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !73
  %i.sk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i434, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  %i.sl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.sk, ptr noundef nonnull @.str.100)
  %i.sm = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !33
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !37
  %i.sr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.sl, i64 noundef %i.sq) #22 ; 0 uses
  call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %3, i64 %4) #22
  br label %.critedge49

.critedge370.thread:                              ; preds = %.critedge368, %bb.ct, %bb.cr, %.split, %bb.cu, %bb.cv
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.st = load i8, ptr %i.ss, align 2, !tbaa !113, !range !66, !noundef !51
  %i.su = trunc nuw i8 %i.st to i1
  br i1 %i.su, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.critedge370.thread
  %i.sv = load ptr, ptr %0, align 8, !tbaa !26
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 56
  %i.sx = load ptr, ptr %i.sw, align 8
  %i.sy = call noundef zeroext i1 %i.sx(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(320) %5, ptr noundef nonnull align 8 dereferenceable(48) %6) #22
  br i1 %i.sy, label %bb.dc, label %._crit_edge

._crit_edge:                                      ; preds = %bb.da
  %.pre485 = load ptr, ptr %i.a, align 8, !tbaa !117
  br label %bb.db

bb.db:                                            ; preds = %._crit_edge, %.critedge370.thread
  %i.sz = phi ptr [ %.pre485, %._crit_edge ], [ %1, %.critedge370.thread ]
  %i.ta = load ptr, ptr %0, align 8, !tbaa !26
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 48
  %i.tc = load ptr, ptr %i.tb, align 8
  call void %i.tc(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.sz, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(320) %5, ptr noundef nonnull align 8 dereferenceable(48) %6) #22
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %3, i64 %4) #22
  %i.td = call fastcc noundef zeroext i1 @_ZN4llvmL26atomicBarrierDroppedOnZeroEj(i32 noundef %i.b)
  br i1 %i.td, label %bb.dd, label %.critedge49

bb.dd:                                            ; preds = %bb.dc
  %i.te = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !33
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !37
  switch i32 %i.ti, label %.critedge49 [
    i32 14, label %.critedge51
    i32 12, label %.critedge51
  ]

.critedge51:                                      ; preds = %bb.dd, %bb.dd
  call void @_ZN4llvm13MCInstPrinter15printAnnotationERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nonnull @.str.101, i64 51) #22
  br label %.critedge49

.critedge49:                                      ; preds = %bb.dd, %bb.dc, %bb.cw, %bb.cs, %bb.cn, %.critedge51, %_ZN4llvm11raw_ostreamlsEc.exit435
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.de

bb.de:                                            ; preds = %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit, %_ZN4llvm11raw_ostreamlsEc.exit375, %bb.cb, %bb.cc, %bb.cd, %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit409, %_ZN4llvm13MCInstPrinter10WithMarkuplsIA2_cEERS1_RKT_.exit431, %bb.i, %.critedge49, %bb.cj, %bb.cg, %bb.h, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm18AArch64InstPrinter13printSysAliasEPKNS_6MCInstERKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.llvm::FeatureBitset", align 16 ; 9 uses
  %5 = alloca %"class.llvm::FeatureBitset", align 16 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.llvm::FeatureBitset", align 16 ; 9 uses
  %7 = alloca %"class.llvm::FeatureBitset", align 16 ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.llvm::FeatureBitset", align 16 ; 9 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.llvm::FeatureBitset", align 16 ; 9 uses
  %10 = alloca %"class.llvm::FeatureBitset", align 16 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %23 = alloca %"class.std::allocator", align 1   ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %27 = alloca %"class.std::allocator", align 1   ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %30 = alloca %"class.std::allocator", align 1   ; 3 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37
  %i.l = trunc i64 %i.k to i32                    ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !37
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !37
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = shl i32 %i.o, 3
  %i.t = shl i32 %i.l, 7
  %i.u = shl i32 %i.i, 11
  %i.v = or i32 %i.t, %i.u
  %i.w = or i32 %i.v, %i.s
  %i.x = or i32 %i.w, %i.r
  %i.y = trunc i32 %i.x to i16                    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.z, ptr %11, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !60
  store i8 0, ptr %i.z, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 12 uses
  store ptr %i.ab, ptr %12, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 14 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !60
  store i8 0, ptr %i.ab, align 8, !tbaa !37
  %i.ad = icmp eq i32 %i.l, 7
  br i1 %i.ad, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  switch i32 %i.o, label %.thread [
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 5, label %bb.h
    i32 4, label %bb.k
    i32 6, label %bb.k
    i32 10, label %bb.k
    i32 11, label %bb.k
    i32 12, label %bb.k
    i32 13, label %bb.k
    i32 14, label %bb.k
    i32 8, label %bb.x
    i32 9, label %bb.x
    i32 15, label %bb.ak
  ]

bb.c:                                             ; preds = %bb.b
  %cond = icmp eq i32 %i.i, 0
  br i1 %cond, label %bb.h, label %.thread

bb.d:                                             ; preds = %bb.b
  %.not382 = icmp eq i32 %i.i, 3
  br i1 %.not382, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !73
  %i.ag = and i64 %i.af, 4096
  %.not383 = icmp eq i64 %i.ag, 0
  br i1 %.not383, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp eq i32 %i.r, 6
  %i.ai = select i1 %i.ah, i32 205, i32 147       ; 2 uses
  %i.aj = and i32 %i.ai, 31
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw nsw i64 1, %i.ak
  %i.am = lshr i32 %i.ai, 6
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !73
  %i.aq = and i64 %i.ap, %i.al
  %.not384 = icmp eq i64 %i.aq, 0
  br i1 %.not384, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %switch.tableidx = add i32 %i.r, -4             ; 2 uses
  %i.ar = icmp ult i32 %switch.tableidx, 4
  br i1 %i.ar, label %switch.lookup, label %.thread

switch.lookup:                                    ; preds = %bb.g
  %i.as = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvm18AArch64InstPrinter13printSysAliasEPKNS_6MCInstERKNS_15MCSubtargetInfoERNS_11raw_ostreamE, i64 %i.as
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.at = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %switch.load) ; 0 uses
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.111) ; 0 uses
  br label %.thread354

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.av = call noundef ptr @_ZN4llvm9AArch64IC18lookupICByEncodingEt(i16 noundef zeroext %i.y) #22 ; 4 uses
  %.not180 = icmp eq ptr %i.av, null
  br i1 %.not180, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.ax = load <2 x i64>, ptr %i.aw, align 8
  %.sroa.0297.sroa.0.0.copyload = load i64, ptr %i.aw, align 8
  %.sroa.0297.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ay = load <2 x i64>, ptr %.sroa.0297.sroa.3.0..sroa_idx, align 8
  %.sroa.0297.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.az = load <2 x i64>, ptr %.sroa.0297.sroa.5.0..sroa_idx, align 8
  %i.ba = and i64 %.sroa.0297.sroa.0.0.copyload, 4096
  %.not.i = icmp eq i64 %i.ba, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  br i1 %.not.i, label %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit, label %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit.thread

_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.j

_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit: ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 48, i1 false), !tbaa.struct !79
  %i.bc = load <2 x i64>, ptr %10, align 16, !tbaa !73, !alias.scope !378
  %i.bd = and <2 x i64> %i.bc, %i.ax
  store <2 x i64> %i.bd, ptr %10, align 16, !tbaa !73, !alias.scope !378
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bf = load <2 x i64>, ptr %i.be, align 16, !tbaa !73, !alias.scope !378
  %i.bg = and <2 x i64> %i.bf, %i.ay
  store <2 x i64> %i.bg, ptr %i.be, align 16, !tbaa !73, !alias.scope !378
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bh, align 16, !tbaa !73, !alias.scope !378
  %i.bj = and <2 x i64> %i.bi, %i.az
  store <2 x i64> %i.bj, ptr %i.bh, align 16, !tbaa !73, !alias.scope !378
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 48)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br i1 %.not9.i.i.i.i.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit.thread, %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !380, !range !66, !noundef !51
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.112) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %.sroa.062.0.copyload = load i32, ptr %i.av, align 8, !tbaa !24
  %i.bn = call { ptr, i64 } @_ZN4llvm9AArch64IC8getICStrENS_11StringTable6OffsetE(i32 %.sroa.062.0.copyload) #22 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0
  store ptr %i.bo, ptr %14, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bq = extractvalue { ptr, i64 } %i.bn, 1
  store i64 %i.bq, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %i.br = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13) #22 ; 0 uses
  %i.bs = load ptr, ptr %13, align 8, !tbaa !64   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !37
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #23
end_hunk_0

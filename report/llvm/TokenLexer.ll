Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TokenLexer?download=true
begin_hunk_0_@_ZN5clang10TokenLexer23ExpandFunctionArgumentsEv:bb.a
  %i.it = or i16 %i.is, 2
  store i16 %i.it, ptr %i.ir, align 2, !tbaa !28
  %i.iu = load i8, ptr %i.v, align 8
  %i.iv = and i8 %i.iu, -5
  store i8 %i.iv, ptr %i.v, align 8
  br label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

bb.ba:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit178
  %.not = xor i1 %i.gz, true
  %or.cond = or i1 %i.gr, %.not
  br i1 %or.cond, label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iw = load ptr, ptr %1, align 8, !tbaa !364
  %i.ix = load i32, ptr %i.b, align 8, !tbaa !365
  %i.iy = zext i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %i.iw, i64 %i.iy
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -6 ; 2 uses
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !28
  %i.jc = and i16 %i.jb, -3
  store i16 %i.jc, ptr %i.ja, align 2, !tbaa !28
  br label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

bb.bc:                                            ; preds = %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit176
  %.pre262 = load ptr, ptr %i.w, align 8, !tbaa !17 ; 3 uses
  br i1 %i.gz, label %.thread212, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jd = getelementptr inbounds nuw i8, ptr %.pre262, i64 4
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !388, !range !395, !noundef !19
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.be, label %_ZN5clang10TokenLexer28MaybeRemoveCommaBeforeVaArgsERN4llvm15SmallVectorImplINS_5TokenEEEbPNS_9MacroInfoEjRNS_12PreprocessorE.exit.thread

bb.be:                                            ; preds = %bb.bd
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hp, i64 36
  %i.jh = load i16, ptr %i.jg, align 4
  %i.ji = and i16 %i.jh, 12
  %.not25.i = icmp ne i16 %i.ji, 0
  %i.jj = add i32 %i.ht, -1
  %.not.i179 = icmp eq i32 %i.jj, %i.id
  %or.cond303 = and i1 %.not25.i, %.not.i179
  br i1 %or.cond303, label %bb.bf, label %_ZN5clang10TokenLexer28MaybeRemoveCommaBeforeVaArgsERN4llvm15SmallVectorImplINS_5TokenEEEbPNS_9MacroInfoEjRNS_12PreprocessorE.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.jk = load ptr, ptr %i.d, align 8, !tbaa !18, !nonnull !19, !align !20
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.jk, i64 64
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !396
  %.pre26.i = load i64, ptr %.pre.i, align 8      ; 2 uses
  %i.jl = and i64 %.pre26.i, 32
  %.not20.i.not = icmp eq i64 %i.jl, 0
  br i1 %.not20.i.not, label %_ZN5clang10TokenLexer28MaybeRemoveCommaBeforeVaArgsERN4llvm15SmallVectorImplINS_5TokenEEEbPNS_9MacroInfoEjRNS_12PreprocessorE.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.bf
  %i.jm = and i64 %.pre26.i, 68719476737
  %or.cond.i181 = icmp eq i64 %i.jm, 1
  %i.jn = icmp eq i32 %i.ht, 1
  %or.cond24.i = and i1 %i.jn, %or.cond.i181
  %brmerge = or i1 %.not.i168, %or.cond24.i
  br i1 %brmerge, label %_ZN5clang10TokenLexer28MaybeRemoveCommaBeforeVaArgsERN4llvm15SmallVectorImplINS_5TokenEEEbPNS_9MacroInfoEjRNS_12PreprocessorE.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i
  %i.jo = load ptr, ptr %1, align 8, !tbaa !364   ; 3 uses
  %i.jp = zext i32 %i.gk to i64
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %i.js = load i16, ptr %i.jr, align 8, !tbaa !378
  %i.jt = icmp eq i16 %i.js, 67
  br i1 %i.jt, label %bb.bh, label %_ZN5clang10TokenLexer28MaybeRemoveCommaBeforeVaArgsERN4llvm15SmallVectorImplINS_5TokenEEEbPNS_9MacroInfoEjRNS_12PreprocessorE.exit.thread

bb.bh:                                            ; preds = %bb.bg
  %i.ju = add i32 %i.gk, -1                       ; 3 uses
  store i32 %i.ju, ptr %i.b, align 8, !tbaa !365
  %.not.i23.i = icmp eq i32 %i.ju, 0
  br i1 %.not.i23.i, label %_ZN5clang10TokenLexer28MaybeRemoveCommaBeforeVaArgsERN4llvm15SmallVectorImplINS_5TokenEEEbPNS_9MacroInfoEjRNS_12PreprocessorE.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %i.jw = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %i.jv
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 -8
  %i.jy = load i16, ptr %i.jx, align 8, !tbaa !378
  %i.jz = icmp eq i16 %i.jy, 69
  br i1 %i.jz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ka = add i32 %i.gk, -2                       ; 2 uses
  store i32 %i.ka, ptr %i.b, align 8, !tbaa !365
  %.pre28.i = zext i32 %i.ka to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pre-phi.i = phi i64 [ %.pre28.i, %bb.bj ], [ %i.jv, %bb.bi ]
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %.pre-phi.i
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 -6 ; 2 uses
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !28
  %i.ke = or i16 %i.kd, 512
  store i16 %i.ke, ptr %i.kc, align 2, !tbaa !28
  br label %_ZN5clang10TokenLexer28MaybeRemoveCommaBeforeVaArgsERN4llvm15SmallVectorImplINS_5TokenEEEbPNS_9MacroInfoEjRNS_12PreprocessorE.exit

_ZN5clang10TokenLexer28MaybeRemoveCommaBeforeVaArgsERN4llvm15SmallVectorImplINS_5TokenEEEbPNS_9MacroInfoEjRNS_12PreprocessorE.exit: ; preds = %bb.bh, %bb.bk
  %i.kf = load i8, ptr %i.v, align 8
  %i.kg = and i8 %i.kf, -5
  store i8 %i.kg, ptr %i.v, align 8
  br label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

_ZN5clang10TokenLexer28MaybeRemoveCommaBeforeVaArgsERN4llvm15SmallVectorImplINS_5TokenEEEbPNS_9MacroInfoEjRNS_12PreprocessorE.exit.thread: ; preds = %._crit_edge.i, %bb.bg, %bb.bf, %bb.be, %bb.bd
  br i1 %i.hi, label %.thread212, label %bb.bl

bb.bl:                                            ; preds = %_ZN5clang10TokenLexer28MaybeRemoveCommaBeforeVaArgsERN4llvm15SmallVectorImplINS_5TokenEEEbPNS_9MacroInfoEjRNS_12PreprocessorE.exit.thread
  %i.kh = call noundef ptr @_ZNK5clang9MacroArgs16getUnexpArgumentEj(ptr noundef nonnull align 8 dereferenceable(48) %.pre262, i32 noundef %i.id) #17 ; 2 uses
  %i.ki = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.kj = load ptr, ptr %i.d, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.kk = call noundef zeroext i1 @_ZNK5clang9MacroArgs20ArgNeedsPreexpansionEPKNS_5TokenERNS_12PreprocessorE(ptr noundef nonnull align 8 dereferenceable(48) %i.ki, ptr noundef %i.kh, ptr noundef nonnull align 8 dereferenceable(3344) %i.kj) #17
  br i1 %i.kk, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kl = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.km = load ptr, ptr %i.d, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.kn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang9MacroArgs17getPreExpArgumentEjRNS_12PreprocessorE(ptr noundef nonnull align 8 dereferenceable(48) %i.kl, i32 noundef %i.id, ptr noundef nonnull align 8 dereferenceable(3344) %i.km) #17
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !397
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %.0133.a = phi ptr [ %i.ko, %bb.bm ], [ %i.kh, %bb.bl ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0133.a, i64 16
  %i.kq = load i16, ptr %i.kp, align 8, !tbaa !378
  %.not221 = icmp eq i16 %i.kq, 1
  br i1 %.not221, label %bb.bx, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kr = load i32, ptr %i.b, align 8, !tbaa !365 ; 2 uses
  %i.ks = zext i32 %i.kr to i64                   ; 3 uses
  %i.kt = call noundef i32 @_ZN5clang9MacroArgs12getArgLengthEPKNS_5TokenE(ptr noundef nonnull %.0133.a) #17 ; 4 uses
  %i.ku = zext i32 %i.kt to i64                   ; 2 uses
  %.idx = mul nuw nsw i64 %i.ku, 24
  %i.kv = load i32, ptr %i.b, align 8, !tbaa !365 ; 2 uses
  %i.kw = zext i32 %i.kv to i64
  %i.kx = add nuw nsw i64 %i.kw, %i.ku            ; 2 uses
  %i.ky = load i32, ptr %i.c, align 4, !tbaa !366
  %i.kz = zext i32 %i.ky to i64
  %i.la = icmp samesign ugt i64 %i.kx, %i.kz
  br i1 %i.la, label %bb.bp, label %_ZN4llvm15SmallVectorImplIN5clang5TokenEE7reserveEm.exit.i

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef %i.kx, i64 noundef 24) #17
  %.pre8.pre.i = load i32, ptr %i.b, align 8, !tbaa !365
  br label %_ZN4llvm15SmallVectorImplIN5clang5TokenEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN5clang5TokenEE7reserveEm.exit.i: ; preds = %bb.bp, %bb.bo
  %.pre8.i = phi i32 [ %i.kv, %bb.bo ], [ %.pre8.pre.i, %bb.bp ] ; 2 uses
  %.not.i.i183 = icmp eq i32 %i.kt, 0
  br i1 %.not.i.i183, label %_ZN4llvm15SmallVectorImplIN5clang5TokenEE6appendIPKS2_vEEvT_S7_.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang5TokenEE7reserveEm.exit.i
  %i.lb = load ptr, ptr %1, align 8, !tbaa !364
  %i.lc = zext i32 %.pre8.i to i64
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %i.lb, i64 %i.lc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ld, ptr nonnull align 8 %.0133.a, i64 %.idx, i1 false)
  %.pre.i184 = load i32, ptr %i.b, align 8, !tbaa !365
  br label %_ZN4llvm15SmallVectorImplIN5clang5TokenEE6appendIPKS2_vEEvT_S7_.exit

_ZN4llvm15SmallVectorImplIN5clang5TokenEE6appendIPKS2_vEEvT_S7_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN5clang5TokenEE7reserveEm.exit.i, %bb.bq
  %i.le = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIN5clang5TokenEE7reserveEm.exit.i ], [ %.pre.i184, %bb.bq ]
  %i.lf = add i32 %i.le, %i.kt                    ; 3 uses
  store i32 %i.lf, ptr %i.b, align 8, !tbaa !365
  %i.lg = load ptr, ptr %i.d, align 8, !tbaa !18, !nonnull !19, !align !20
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !396, !nonnull !19, !align !20
  %i.lj = load i64, ptr %i.li, align 8
  %i.lk = and i64 %i.lj, 32
  %i.ll = icmp ne i64 %i.lk, 0
  %i.lm = icmp eq i32 %i.kt, 1
  %or.cond5 = and i1 %i.lm, %i.ll
  %.pre260 = load ptr, ptr %1, align 8, !tbaa !364 ; 4 uses
  %i.ln = zext i32 %i.lf to i64                   ; 3 uses
  br i1 %or.cond5, label %bb.br, label %_ZN4llvm10drop_beginIRNS_11SmallVectorIN5clang5TokenELj128EEEEEDaOT_m.exit

bb.br:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang5TokenEE6appendIPKS2_vEEvT_S7_.exit
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %.pre260, i64 %i.ln ; 2 uses
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 -8
  %i.lq = load i16, ptr %i.lp, align 8, !tbaa !378
  %i.lr = icmp eq i16 %i.lq, 67
  br i1 %i.lr, label %bb.bs, label %_ZN4llvm10drop_beginIRNS_11SmallVectorIN5clang5TokenELj128EEEEEDaOT_m.exit

bb.bs:                                            ; preds = %bb.br
  %i.ls = getelementptr inbounds i8, ptr %i.lo, i64 -6 ; 2 uses
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !28
  %i.lu = or i16 %i.lt, 128
  store i16 %i.lu, ptr %i.ls, align 2, !tbaa !28
  br label %_ZN4llvm10drop_beginIRNS_11SmallVectorIN5clang5TokenELj128EEEEEDaOT_m.exit

_ZN4llvm10drop_beginIRNS_11SmallVectorIN5clang5TokenELj128EEEEEDaOT_m.exit: ; preds = %_ZN4llvm15SmallVectorImplIN5clang5TokenEE6appendIPKS2_vEEvT_S7_.exit, %bb.bs, %bb.br
  %i.lv = getelementptr inbounds nuw [24 x i8], ptr %.pre260, i64 %i.ks ; 11 uses
  %i.lw = getelementptr inbounds nuw [24 x i8], ptr %.pre260, i64 %i.ln ; 2 uses
  %.not149240 = icmp eq i32 %i.kr, %i.lf
  br i1 %.not149240, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm10drop_beginIRNS_11SmallVectorIN5clang5TokenELj128EEEEEDaOT_m.exit
  %i.lx = mul nuw nsw i64 %i.ln, 24
  %i.ly = mul nsw i64 %i.ks, -24
  %i.lz = add nsw i64 %i.lx, -24
  %i.ma = add nsw i64 %i.lz, %i.ly                ; 2 uses
  %i.mb = udiv i64 %i.ma, 24
  %i.mc = add nuw nsw i64 %i.mb, 1                ; 2 uses
  %min.iters.check329 = icmp ult i64 %i.ma, 168
  br i1 %min.iters.check329, label %.lr.ph.preheader363, label %vector.ph330

vector.ph330:                                     ; preds = %.lr.ph.preheader
  %n.vec331 = and i64 %i.mc, 2305843009213693944  ; 3 uses
  %i.md = mul i64 %n.vec331, 24
  %i.me = getelementptr i8, ptr %i.lv, i64 %i.md
  br label %vector.body332

vector.body332:                                   ; preds = %pred.store.continue357, %vector.ph330
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next358, %pred.store.continue357 ] ; 2 uses
  %i.mf = mul i64 %index333, 24                   ; 8 uses
  %next.gep334 = getelementptr i8, ptr %i.lv, i64 %i.mf
  %i.mg = getelementptr i8, ptr %i.lv, i64 %i.mf
  %i.mh = getelementptr i8, ptr %i.lv, i64 %i.mf
  %i.mi = getelementptr i8, ptr %i.lv, i64 %i.mf
  %i.mj = getelementptr i8, ptr %i.lv, i64 %i.mf
  %i.mk = getelementptr i8, ptr %i.lv, i64 %i.mf
  %i.ml = getelementptr i8, ptr %i.lv, i64 %i.mf
  %i.mm = getelementptr i8, ptr %i.lv, i64 %i.mf
  %i.mn = getelementptr inbounds nuw i8, ptr %next.gep334, i64 16 ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mg, i64 40     ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mh, i64 64     ; 2 uses
  %i.mq = getelementptr i8, ptr %i.mi, i64 88     ; 2 uses
  %i.mr = getelementptr i8, ptr %i.mj, i64 112    ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mk, i64 136    ; 2 uses
  %i.mt = getelementptr i8, ptr %i.ml, i64 160    ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mm, i64 184    ; 2 uses
  %i.mv = load i16, ptr %i.mn, align 8, !tbaa !378
  %i.mw = load i16, ptr %i.mo, align 8, !tbaa !378
  %i.mx = load i16, ptr %i.mp, align 8, !tbaa !378
  %i.my = load i16, ptr %i.mq, align 8, !tbaa !378
  %i.mz = load i16, ptr %i.mr, align 8, !tbaa !378
  %i.na = load i16, ptr %i.ms, align 8, !tbaa !378
  %i.nb = load i16, ptr %i.mt, align 8, !tbaa !378
  %i.nc = load i16, ptr %i.mu, align 8, !tbaa !378
  %i.nd = insertelement <8 x i16> poison, i16 %i.mv, i64 0
  %i.ne = insertelement <8 x i16> %i.nd, i16 %i.mw, i64 1
  %i.nf = insertelement <8 x i16> %i.ne, i16 %i.mx, i64 2
  %i.ng = insertelement <8 x i16> %i.nf, i16 %i.my, i64 3
  %i.nh = insertelement <8 x i16> %i.ng, i16 %i.mz, i64 4
  %i.ni = insertelement <8 x i16> %i.nh, i16 %i.na, i64 5
  %i.nj = insertelement <8 x i16> %i.ni, i16 %i.nb, i64 6
  %i.nk = insertelement <8 x i16> %i.nj, i16 %i.nc, i64 7
  %i.nl = icmp eq <8 x i16> %i.nk, splat (i16 69) ; 8 uses
  %i.nm = extractelement <8 x i1> %i.nl, i64 0
  br i1 %i.nm, label %pred.store.if342, label %pred.store.continue343

pred.store.if342:                                 ; preds = %vector.body332
  store i16 0, ptr %i.mn, align 8, !tbaa !378
  br label %pred.store.continue343

pred.store.continue343:                           ; preds = %pred.store.if342, %vector.body332
  %i.nn = extractelement <8 x i1> %i.nl, i64 1
  br i1 %i.nn, label %pred.store.if344, label %pred.store.continue345

pred.store.if344:                                 ; preds = %pred.store.continue343
  store i16 0, ptr %i.mo, align 8, !tbaa !378
  br label %pred.store.continue345

pred.store.continue345:                           ; preds = %pred.store.if344, %pred.store.continue343
  %i.no = extractelement <8 x i1> %i.nl, i64 2
  br i1 %i.no, label %pred.store.if346, label %pred.store.continue347

pred.store.if346:                                 ; preds = %pred.store.continue345
  store i16 0, ptr %i.mp, align 8, !tbaa !378
  br label %pred.store.continue347

pred.store.continue347:                           ; preds = %pred.store.if346, %pred.store.continue345
  %i.np = extractelement <8 x i1> %i.nl, i64 3
  br i1 %i.np, label %pred.store.if348, label %pred.store.continue349

pred.store.if348:                                 ; preds = %pred.store.continue347
  store i16 0, ptr %i.mq, align 8, !tbaa !378
  br label %pred.store.continue349

pred.store.continue349:                           ; preds = %pred.store.if348, %pred.store.continue347
  %i.nq = extractelement <8 x i1> %i.nl, i64 4
  br i1 %i.nq, label %pred.store.if350, label %pred.store.continue351

pred.store.if350:                                 ; preds = %pred.store.continue349
  store i16 0, ptr %i.mr, align 8, !tbaa !378
  br label %pred.store.continue351

pred.store.continue351:                           ; preds = %pred.store.if350, %pred.store.continue349
  %i.nr = extractelement <8 x i1> %i.nl, i64 5
  br i1 %i.nr, label %pred.store.if352, label %pred.store.continue353

pred.store.if352:                                 ; preds = %pred.store.continue351
  store i16 0, ptr %i.ms, align 8, !tbaa !378
  br label %pred.store.continue353

pred.store.continue353:                           ; preds = %pred.store.if352, %pred.store.continue351
  %i.ns = extractelement <8 x i1> %i.nl, i64 6
  br i1 %i.ns, label %pred.store.if354, label %pred.store.continue355

pred.store.if354:                                 ; preds = %pred.store.continue353
  store i16 0, ptr %i.mt, align 8, !tbaa !378
  br label %pred.store.continue355

pred.store.continue355:                           ; preds = %pred.store.if354, %pred.store.continue353
  %i.nt = extractelement <8 x i1> %i.nl, i64 7
  br i1 %i.nt, label %pred.store.if356, label %pred.store.continue357

pred.store.if356:                                 ; preds = %pred.store.continue355
  store i16 0, ptr %i.mu, align 8, !tbaa !378
  br label %pred.store.continue357

pred.store.continue357:                           ; preds = %pred.store.if356, %pred.store.continue355
  %index.next358 = add nuw i64 %index333, 8       ; 2 uses
  %i.nu = icmp eq i64 %index.next358, %n.vec331
  br i1 %i.nu, label %middle.block359, label %vector.body332, !llvm.loop !399

middle.block359:                                  ; preds = %pred.store.continue357
  %cmp.n360 = icmp eq i64 %i.mc, %n.vec331
  br i1 %cmp.n360, label %._crit_edge, label %.lr.ph.preheader363

.lr.ph.preheader363:                              ; preds = %.lr.ph.preheader, %middle.block359
  %.0134241.ph = phi ptr [ %i.lv, %.lr.ph.preheader ], [ %i.me, %middle.block359 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.bu, %middle.block359, %_ZN4llvm10drop_beginIRNS_11SmallVectorIN5clang5TokenELj128EEEEEDaOT_m.exit
  %i.nv = load i32, ptr %i.ab, align 8, !tbaa !375
  %.not223 = icmp eq i32 %i.nv, 0
  br i1 %.not223, label %bb.bw, label %bb.bv

.lr.ph:                                           ; preds = %.lr.ph.preheader363, %bb.bu
  %.0134241 = phi ptr [ %i.nz, %bb.bu ], [ %.0134241.ph, %.lr.ph.preheader363 ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.0134241, i64 16 ; 2 uses
  %i.nx = load i16, ptr %i.nw, align 8, !tbaa !378
  %i.ny = icmp eq i16 %i.nx, 69
  br i1 %i.ny, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph
  store i16 0, ptr %i.nw, align 8, !tbaa !378
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph
  %i.nz = getelementptr inbounds nuw i8, ptr %.0134241, i64 24 ; 2 uses
  %.not149 = icmp eq ptr %i.nz, %i.lw
  br i1 %.not149, label %._crit_edge, label %.lr.ph, !llvm.loop !402

bb.bv:                                            ; preds = %._crit_edge
  %i.oa = load i32, ptr %i.ah, align 8, !tbaa !23
  call void @_ZN5clang10TokenLexer26updateLocForMacroArgTokensENS_14SourceLocationEPNS_5TokenES3_(ptr noundef nonnull align 8 dereferenceable(65) %0, i32 %i.oa, ptr noundef %i.lv, ptr noundef %i.lw)
  %.pre261 = load ptr, ptr %1, align 8, !tbaa !364
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge
  %i.ob = phi ptr [ %.pre261, %bb.bv ], [ %.pre260, %._crit_edge ]
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %i.ob, i64 %i.ks
  %i.od = load i8, ptr %i.v, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 18 ; 2 uses
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !28
  %i.og = and i16 %i.of, -4
  %i.oh = lshr i8 %i.od, 1
  %i.oi = and i8 %i.oh, 2
  %masksel = zext nneg i8 %i.oi to i16
  %.sink.i = or disjoint i16 %i.og, %masksel
  store i16 %.sink.i, ptr %i.oe, align 2, !tbaa !28
  %i.oj = load i8, ptr %i.v, align 8
  %i.ok = and i8 %i.oj, -5
  store i8 %i.ok, ptr %i.v, align 8
  br label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

bb.bx:                                            ; preds = %bb.bn
  br i1 %i.gr, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ol = load i8, ptr %i.n, align 8
  %i.om = or i8 %i.ol, 8
  store i8 %i.om, ptr %i.n, align 8
  br label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

bb.bz:                                            ; preds = %bb.bx
  %i.on = load i32, ptr %i.g, align 8
  %i.oo = icmp eq i32 %i.on, 1
  %or.cond215 = select i1 %i.hj, i1 %i.oo, i1 false
  br i1 %or.cond215, label %bb.ca, label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

bb.ca:                                            ; preds = %bb.bz
  %i.op = load i8, ptr %i.n, align 8
  %i.oq = or i8 %i.op, 16
  store i8 %i.oq, ptr %i.n, align 8
  br label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

.thread212:                                       ; preds = %bb.bc, %_ZN5clang10TokenLexer28MaybeRemoveCommaBeforeVaArgsERN4llvm15SmallVectorImplINS_5TokenEEEbPNS_9MacroInfoEjRNS_12PreprocessorE.exit.thread
  %i.or = call noundef ptr @_ZNK5clang9MacroArgs16getUnexpArgumentEj(ptr noundef nonnull align 8 dereferenceable(48) %.pre262, i32 noundef %i.id) #17 ; 2 uses
  %i.os = call noundef i32 @_ZN5clang9MacroArgs12getArgLengthEPKNS_5TokenE(ptr noundef %i.or) #17 ; 3 uses
  %.not150 = icmp eq i32 %i.os, 0
  br i1 %.not150, label %bb.cq, label %bb.cb

bb.cb:                                            ; preds = %.thread212
  %.pre264 = load i32, ptr %i.b, align 8, !tbaa !365 ; 7 uses
  %i.ot = icmp ugt i32 %.pre264, 1
  %or.cond304 = select i1 %i.gr, i1 %i.ot, i1 false
  br i1 %or.cond304, label %bb.cc, label %bb.ci

end_hunk_0

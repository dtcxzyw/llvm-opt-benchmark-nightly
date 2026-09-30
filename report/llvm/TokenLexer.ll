Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TokenLexer?download=true
inline.NumInlined: 1027
inline.NumDeleted: 481
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang10TokenLexer23ExpandFunctionArgumentsEv:bb.a
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5clang22VAOptDefinitionContext15sawOpeningParenENS_14SourceLocationE.exit
  %i.cb = load i32, ptr %i.g, align 8, !tbaa !362
  %i.cc = add i32 %i.cb, -1                       ; 2 uses
  store i32 %i.cc, ptr %i.g, align 8, !tbaa !362
  %.not.i158 = icmp eq i32 %i.cc, 0
  br i1 %.not.i158, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5clang22VAOptDefinitionContext15sawOpeningParenENS_14SourceLocationE.exit
  br i1 %.sroa.4210.0248, label %bb.p, label %.split

.split:                                           ; preds = %bb.o
  %i.cd = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.ce = load ptr, ptr %0, align 8, !tbaa !22
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !20, !align !21
  %i.cg = call noundef zeroext i1 @_ZN5clang9MacroArgs27invokedWithVariadicArgumentEPKNS_9MacroInfoERNS_12PreprocessorE(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(3344) %i.cf) #17
  br i1 %i.cg, label %bb.ah, label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

bb.p:                                             ; preds = %bb.o
  br i1 %.sroa.0209.0247, label %bb.ah, label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

bb.q:                                             ; preds = %bb.n
  %i.ch = load i8, ptr %i.n, align 8              ; 6 uses
  %i.ci = and i8 %i.ch, 6
  %.not232 = icmp eq i8 %i.ci, 0
  br i1 %.not232, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = load i32, ptr %i.bx, align 8, !tbaa !27
  call void @_ZN5clang10TokenLexer22stringifyVAOPTContentsERN4llvm15SmallVectorImplINS_5TokenEEERKNS_21VAOptExpansionContextENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(89) %2, i32 %i.cj)
  %.pre259 = load i8, ptr %i.n, align 8
  br label %bb.ag

bb.s:                                             ; preds = %bb.q
  %i.ck = load i32, ptr %i.b, align 8, !tbaa !362 ; 4 uses
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = load i32, ptr %i.m, align 4, !tbaa !372 ; 2 uses
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = icmp eq i32 %i.ck, %i.cm
  br i1 %i.co, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %.not155 = icmp eq i32 %i.ck, 0
  br i1 %.not155, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = load ptr, ptr %1, align 8, !tbaa !361
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.cl
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -8
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !373
  %i.ct = icmp eq i16 %i.cs, 69
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cu = add i32 %i.ck, -1
  store i32 %i.cu, ptr %i.b, align 8, !tbaa !362
  br label %bb.ag

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.cv = add i32 %.0129249, 1                    ; 3 uses
  %.not156 = icmp eq i32 %i.cv, %i.t
  br i1 %.not156, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !373
  %i.da = icmp eq i16 %i.cz, 69
  %spec.select = select i1 %i.da, i32 %i.cv, i32 %.0129249
  br label %bb.ag

bb.y:                                             ; preds = %bb.s
  %i.db = and i8 %i.ch, 8
  %.not233 = icmp eq i8 %i.db, 0
  br i1 %.not233, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = load ptr, ptr %1, align 8, !tbaa !361
  %.idx235 = mul nuw nsw i64 %i.cn, 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx235 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -24 ; 2 uses
  %.idx234236 = sub nsw i64 %i.cl, %i.cn          ; 3 uses
  %i.df = icmp sgt i64 %.idx234236, 1
  br i1 %i.df, label %bb.aa, label %bb.ab, !prof !374

bb.aa:                                            ; preds = %bb.z
  %gepdiff = mul nuw nsw i64 %.idx234236, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull align 8 %i.dd, i64 %gepdiff, i1 false)
  br label %_ZN4llvm15SmallVectorImplIN5clang5TokenEE5eraseEPKS2_.exit

bb.ab:                                            ; preds = %bb.z
  %i.dg = icmp eq i64 %.idx234236, 1
  br i1 %i.dg, label %bb.ac, label %_ZN4llvm15SmallVectorImplIN5clang5TokenEE5eraseEPKS2_.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.de, ptr noundef nonnull align 8 dereferenceable(20) %i.dd, i64 20, i1 false), !tbaa.struct !378
  br label %_ZN4llvm15SmallVectorImplIN5clang5TokenEE5eraseEPKS2_.exit

_ZN4llvm15SmallVectorImplIN5clang5TokenEE5eraseEPKS2_.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.dh = load i32, ptr %i.b, align 8, !tbaa !362
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr %i.b, align 8, !tbaa !362
  %.pre258 = load i8, ptr %i.n, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm15SmallVectorImplIN5clang5TokenEE5eraseEPKS2_.exit, %bb.y
  %i.dj = phi i8 [ %.pre258, %_ZN4llvm15SmallVectorImplIN5clang5TokenEE5eraseEPKS2_.exit ], [ %i.ch, %bb.y ] ; 4 uses
  %i.dk = and i8 %i.dj, 16
  %.not237 = icmp eq i8 %i.dk, 0
  br i1 %.not237, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = add i32 %.0129249, 1                    ; 3 uses
  %.not154 = icmp eq i32 %i.dl, %i.t
  br i1 %.not154, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.dn = zext i32 %i.dl to i64
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load i16, ptr %i.dp, align 8, !tbaa !373
  %i.dr = icmp eq i16 %i.dq, 69
  %spec.select157 = select i1 %i.dr, i32 %i.dl, i32 %.0129249
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.x, %bb.w, %bb.v, %bb.ae, %bb.ad, %bb.r
  %i.ds = phi i8 [ %.pre259, %bb.r ], [ %i.ch, %bb.v ], [ %i.dj, %bb.ad ], [ %i.dj, %bb.ae ], [ %i.ch, %bb.w ], [ %i.ch, %bb.x ], [ %i.dj, %bb.af ]
  %.1130 = phi i32 [ %.0129249, %bb.r ], [ %.0129249, %bb.v ], [ %.0129249, %bb.ad ], [ %.0129249, %bb.ae ], [ %.0129249, %bb.w ], [ %spec.select, %bb.x ], [ %spec.select157, %bb.af ]
  store i32 0, ptr %i.l, align 8, !tbaa !28
  store i32 -1, ptr %i.m, align 4, !tbaa !372
  %i.dt = and i8 %i.ds, -32
  store i8 %i.dt, ptr %i.n, align 8
  br label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

bb.ah:                                            ; preds = %.split, %bb.p, %_ZNK5clang22VAOptDefinitionContext12isVAOptTokenERKNS_5TokenE.exit.thread
  %.sroa.0209.2 = phi i1 [ true, %bb.p ], [ %.sroa.0209.0247, %_ZNK5clang22VAOptDefinitionContext12isVAOptTokenERKNS_5TokenE.exit.thread ], [ true, %.split ] ; 14 uses
  %.sroa.4210.2 = phi i1 [ true, %bb.p ], [ %.sroa.4210.0248, %_ZNK5clang22VAOptDefinitionContext12isVAOptTokenERKNS_5TokenE.exit.thread ], [ true, %.split ] ; 14 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dv = load i16, ptr %i.du, align 8, !tbaa !373 ; 4 uses
  %i.dw = icmp eq i16 %i.dv, 70                   ; 2 uses
  switch i16 %i.dv, label %bb.ap [
    i16 70, label %bb.ai
    i16 68, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.dx = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.dy = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.dz = add i32 %.0129249, 1                    ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.ea ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !373 ; 2 uses
  %i.ee = add i16 %i.ed, -7
  %i.ef = icmp ult i16 %i.ee, 13
  %i.eg = icmp eq i16 %i.ed, 1
  %or.cond.i = or i1 %i.eg, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  %.0.i = select i1 %or.cond.i, ptr null, ptr %i.ei
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !433 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.em = load i32, ptr %i.el, align 8, !tbaa !360 ; 2 uses
  %i.en = zext i32 %i.em to i64
  %.idx.i = shl nuw nsw i64 %i.en, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.em, 0
  br i1 %.not13.i, label %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai, %bb.aj
  %.0814.i = phi ptr [ %i.er, %bb.aj ], [ %i.ek, %bb.ai ] ; 3 uses
  %i.ep = load ptr, ptr %.0814.i, align 8, !tbaa !434
  %i.eq = icmp eq ptr %i.ep, %.0.i
  br i1 %i.eq, label %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i
  %i.er = getelementptr inbounds nuw i8, ptr %.0814.i, i64 8 ; 2 uses
  %.not.i159 = icmp eq ptr %i.er, %i.eo
  br i1 %.not.i159, label %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit.thread, label %.lr.ph.i, !llvm.loop !421

_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit: ; preds = %.lr.ph.i
  %i.es = ptrtoint ptr %.0814.i to i64
  %i.et = ptrtoint ptr %i.ek to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = lshr exact i64 %i.eu, 3
  %i.ew = trunc i64 %i.ev to i32                  ; 2 uses
  %i.ex = icmp eq i32 %i.ew, -1
  br i1 %i.ex, label %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit.thread, label %bb.ak

_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit.thread: ; preds = %bb.aj, %bb.ai, %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit
  %i.ey = load i8, ptr %i.v, align 8
  %i.ez = load i8, ptr %i.n, align 8
  %i.fa = and i8 %i.ez, -8
  %i.fb = lshr i8 %i.ey, 2
  %.lobit = and i8 %i.fb, 1
  %i.fc = select i1 %i.dw, i8 4, i8 2
  %i.fd = or disjoint i8 %.lobit, %i.fc
  %i.fe = or disjoint i8 %i.fd, %i.fa
  store i8 %i.fe, ptr %i.n, align 8
  br label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

bb.ak:                                            ; preds = %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit
  %i.ff = load i32, ptr %i.ah, align 8, !tbaa !27
  %.sroa.0.0.copyload.i = load i32, ptr %i.x, align 8, !tbaa !28
  %i.fg = load i32, ptr %i.y, align 4, !tbaa !359
  %i.fh = and i32 %i.ff, 2147483647               ; 3 uses
  %i.fi = and i32 %.sroa.0.0.copyload.i, 2147483647 ; 5 uses
  %.not.i.i160 = icmp samesign uge i32 %i.fh, %i.fi
  %i.fj = add i32 %i.fi, %i.fg                    ; 2 uses
  %i.fk = icmp ult i32 %i.fh, %i.fj
  %or.cond.i.i161 = and i1 %.not.i.i160, %i.fk
  %i.fl = sub nuw nsw i32 %i.fh, %i.fi
  %spec.select.i162 = select i1 %or.cond.i.i161, i32 %i.fl, i32 0
  %i.fm = load i32, ptr %i.z, align 8, !tbaa !370 ; 2 uses
  %i.fn = add i32 %spec.select.i162, %i.fm
  %i.fo = load i32, ptr %i.eb, align 8, !tbaa !27
  %i.fp = and i32 %i.fo, 2147483647               ; 3 uses
  %.not.i.i164 = icmp samesign uge i32 %i.fp, %i.fi
  %i.fq = icmp ult i32 %i.fp, %i.fj
  %or.cond.i.i165 = and i1 %.not.i.i164, %i.fq
  %i.fr = sub nuw nsw i32 %i.fp, %i.fi
  %spec.select.i166 = select i1 %or.cond.i.i165, i32 %i.fr, i32 0
  %i.fs = add i32 %spec.select.i166, %i.fm
  %i.ft = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.fu = call noundef ptr @_ZNK5clang9MacroArgs16getUnexpArgumentEj(ptr noundef nonnull align 8 dereferenceable(48) %i.ft, i32 noundef %i.ew) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.fv = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !20, !align !21
  call void @_ZN5clang9MacroArgs17StringifyArgumentEPKNS_5TokenERNS_12PreprocessorEbNS_14SourceLocationES6_(ptr dead_on_unwind nonnull writable sret(%"class.clang::Token") align 8 %3, ptr noundef %i.fu, ptr noundef nonnull align 8 dereferenceable(3344) %i.fv, i1 noundef zeroext %i.dw, i32 %i.fn, i32 %i.fs) #17
  %i.fw = load i16, ptr %i.aa, align 2, !tbaa !29 ; 2 uses
  %i.fx = or i16 %i.fw, 256
  store i16 %i.fx, ptr %i.aa, align 2, !tbaa !29
  %i.fy = load i8, ptr %i.v, align 8
  %i.fz = and i8 %i.fy, 4
  %.not153 = icmp eq i8 %i.fz, 0
  br i1 %.not153, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ga = or i16 %i.fw, 258
  store i16 %i.ga, ptr %i.aa, align 2, !tbaa !29
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.gb = load i32, ptr %i.b, align 8, !tbaa !362 ; 2 uses
  %i.gc = load i32, ptr %i.c, align 4, !tbaa !363
  %.not.i167 = icmp ult i32 %i.gb, %i.gc
  br i1 %.not.i167, label %bb.ao, label %bb.an, !prof !374

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(20) %3)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit

bb.ao:                                            ; preds = %bb.am
  %i.gd = zext i32 %i.gb to i64
  %i.ge = load ptr, ptr %1, align 8, !tbaa !361
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %i.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gf, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.gg = load i32, ptr %i.b, align 8, !tbaa !362
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.b, align 8, !tbaa !362
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit: ; preds = %bb.an, %bb.ao
  %i.gi = load i8, ptr %i.v, align 8
  %i.gj = and i8 %i.gi, -5
  store i8 %i.gj, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

bb.ap:                                            ; preds = %bb.ah
  %i.gk = load i32, ptr %i.b, align 8, !tbaa !362 ; 7 uses
  %.not.i168 = icmp eq i32 %i.gk, 0               ; 2 uses
  br i1 %.not.i168, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gl = load ptr, ptr %1, align 8, !tbaa !361
  %i.gm = zext i32 %i.gk to i64
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %i.gm
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -8
  %i.gp = load i16, ptr %i.go, align 8, !tbaa !373
  %i.gq = icmp eq i16 %i.gp, 69
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gr = phi i1 [ false, %bb.ap ], [ %i.gq, %bb.aq ] ; 6 uses
  br i1 %.not146, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gs = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.gt = add i32 %.0129249, -1
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i16, ptr %i.gw, align 8, !tbaa !373
  %i.gy = icmp eq i16 %i.gx, 69
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gz = phi i1 [ false, %bb.ar ], [ %i.gy, %bb.as ] ; 2 uses
  %i.ha = add i32 %.0129249, 1                    ; 3 uses
  %.not147 = icmp eq i32 %i.ha, %i.t
  br i1 %.not147, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hb = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.hc = zext i32 %i.ha to i64
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load i16, ptr %i.he, align 8, !tbaa !373 ; 2 uses
  %i.hg = icmp eq i16 %i.hf, 69
  %i.hh = icmp eq i16 %i.hf, 23
  br label %.thread

.thread:                                          ; preds = %bb.at, %bb.au
  %i.hi = phi i1 [ %i.hg, %bb.au ], [ false, %bb.at ] ; 2 uses
  %i.hj = phi i1 [ %i.hh, %bb.au ], [ false, %bb.at ] ; 2 uses
  %i.hk = add i16 %i.dv, -7
  %i.hl = icmp ult i16 %i.hk, 13
  %i.hm = icmp eq i16 %i.dv, 1
  %or.cond.i169 = or i1 %i.hm, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  %.not148220 = icmp eq ptr %i.ho, null
  %.not148 = select i1 %or.cond.i169, i1 true, i1 %.not148220
  br i1 %.not148, label %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit176.thread, label %bb.av

bb.av:                                            ; preds = %.thread
  %i.hp = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !433 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !360 ; 4 uses
  %i.hu = zext i32 %i.ht to i64
  %.idx.i171 = shl nuw nsw i64 %i.hu, 3
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx.i171
  %.not13.i172 = icmp eq i32 %i.ht, 0
  br i1 %.not13.i172, label %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit176.thread, label %.lr.ph.i173

.lr.ph.i173:                                      ; preds = %bb.av, %bb.aw
  %.0814.i174 = phi ptr [ %i.hy, %bb.aw ], [ %i.hr, %bb.av ] ; 3 uses
  %i.hw = load ptr, ptr %.0814.i174, align 8, !tbaa !434
  %i.hx = icmp eq ptr %i.hw, %i.ho
  br i1 %i.hx, label %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit176, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i173
  %i.hy = getelementptr inbounds nuw i8, ptr %.0814.i174, i64 8 ; 2 uses
  %.not.i175 = icmp eq ptr %i.hy, %i.hv
  br i1 %.not.i175, label %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit176.thread, label %.lr.ph.i173, !llvm.loop !421

_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit176: ; preds = %.lr.ph.i173
  %i.hz = ptrtoint ptr %.0814.i174 to i64
  %i.ia = ptrtoint ptr %i.hr to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = lshr exact i64 %i.ib, 3
  %i.id = trunc i64 %i.ic to i32                  ; 7 uses
  %i.ie = icmp eq i32 %i.id, -1
  br i1 %i.ie, label %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit176.thread, label %bb.bc

_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit176.thread: ; preds = %bb.aw, %bb.av, %.thread, %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit176
  %i.if = load i32, ptr %i.c, align 4, !tbaa !363
  %.not.i177 = icmp ult i32 %i.gk, %i.if
  br i1 %.not.i177, label %bb.ay, label %bb.ax, !prof !374

bb.ax:                                            ; preds = %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit176.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.ah)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit178

bb.ay:                                            ; preds = %_ZNK5clang9MacroInfo15getParameterNumEPKNS_14IdentifierInfoE.exit176.thread
  %i.ig = zext i32 %i.gk to i64
  %i.ih = load ptr, ptr %1, align 8, !tbaa !361
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %i.ih, i64 %i.ig
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.ij = load i32, ptr %i.b, align 8, !tbaa !362
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.b, align 8, !tbaa !362
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit178

_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit178: ; preds = %bb.ax, %bb.ay
  %i.il = load i8, ptr %i.v, align 8
  %i.im = and i8 %i.il, 4
  %.not152 = icmp eq i8 %i.im, 0
  br i1 %.not152, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit178
  %i.in = load ptr, ptr %1, align 8, !tbaa !361
  %i.io = load i32, ptr %i.b, align 8, !tbaa !362
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.in, i64 %i.ip
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 -6 ; 2 uses
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !29
  %i.it = or i16 %i.is, 2
  store i16 %i.it, ptr %i.ir, align 2, !tbaa !29
  %i.iu = load i8, ptr %i.v, align 8
  %i.iv = and i8 %i.iu, -5
  store i8 %i.iv, ptr %i.v, align 8
  br label %_ZN5clang21VAOptExpansionContext26hasPlaceholderBeforeRParenEv.exit

bb.ba:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit178
end_hunk_0

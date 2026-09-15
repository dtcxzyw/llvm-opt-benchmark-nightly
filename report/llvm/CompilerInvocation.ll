Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CompilerInvocation?download=true
inline.NumInlined: 19714
inline.NumDeleted: 4740
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5clang22CompilerInvocationBase16GenerateLangArgsERKNS_11LangOptionsEN4llvm12function_refIFvRKNS4_5TwineEEEERKNS4_6TripleENS_9InputKindE:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %337, i64 12
  store i32 4, ptr %i.cj, align 4, !tbaa !136, !alias.scope !2170
  call void @_ZN5clang21serializeSanitizerSetENS_12SanitizerSetERN4llvm15SmallVectorImplINS1_9StringRefEEE(i64 %.sroa.01594.0.copyload, i64 %.sroa.21595.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %337) #26
  %i.ck = load ptr, ptr %337, align 8, !tbaa !134 ; 3 uses
  %i.cl = load i32, ptr %i.ci, align 8, !tbaa !135 ; 2 uses
  %i.cm = zext i32 %i.cl to i64
  %.idx6369 = shl nuw nsw i64 %i.cm, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx6369
  %.not26476363 = icmp eq i32 %i.cl, 0
  br i1 %.not26476363, label %._crit_edge6366, label %.lr.ph6365

.lr.ph6365:                                       ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit
  %i.co = getelementptr inbounds nuw i8, ptr %338, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %338, i64 33
  %i.cq = getelementptr inbounds nuw i8, ptr %338, i64 8
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph6361, %bb.l
  %.06359 = phi ptr [ %i.bx, %.lr.ph6361 ], [ %i.cr, %bb.l ] ; 3 uses
  %.sroa.01602.0.copyload = load ptr, ptr %.06359, align 8, !tbaa !282
  %.sroa.41603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.06359, i64 8
  %.sroa.41603.0.copyload = load i64, ptr %.sroa.41603.0..sroa_idx, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %336) #26
  store i8 5, ptr %i.cb, align 8, !tbaa !387
  store i8 1, ptr %i.cc, align 1, !tbaa !388
  store ptr %.sroa.01602.0.copyload, ptr %336, align 8, !tbaa !92
  store i64 %.sroa.41603.0.copyload, ptr %i.cd, align 8, !tbaa !92
  call fastcc void @_ZL11GenerateArgN4llvm12function_refIFvRKNS_5TwineEEEENS_3opt12OptSpecifierES3_(ptr %1, i64 %2, i32 1940, ptr noundef nonnull align 8 dereferenceable(34) %336)
  call void @llvm.lifetime.end.p0(ptr nonnull %336) #26
  %i.cr = getelementptr inbounds nuw i8, ptr %.06359, i64 16 ; 2 uses
  %.not2646 = icmp eq ptr %i.cr, %i.ca
  br i1 %.not2646, label %._crit_edge6362.loopexit, label %bb.l

._crit_edge6366.loopexit:                         ; preds = %bb.n
  %.pre6569.a = load ptr, ptr %337, align 8, !tbaa !134
  br label %._crit_edge6366

._crit_edge6366:                                  ; preds = %._crit_edge6366.loopexit, %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit
  %i.cs = phi ptr [ %.pre6569.a, %._crit_edge6366.loopexit ], [ %i.ck, %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit ] ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ch
  br i1 %i.ct, label %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit2816, label %bb.m

bb.m:                                             ; preds = %._crit_edge6366
  call void @free(ptr noundef %i.cs) #26
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit2816

_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit2816: ; preds = %._crit_edge6366, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %337) #26
  br label %bb.alo

bb.n:                                             ; preds = %.lr.ph6365, %bb.n
  %.021266364 = phi ptr [ %i.ck, %.lr.ph6365 ], [ %i.cu, %bb.n ] ; 3 uses
  %.sroa.01588.0.copyload = load ptr, ptr %.021266364, align 8, !tbaa !282
  %.sroa.41589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.021266364, i64 8
  %.sroa.41589.0.copyload = load i64, ptr %.sroa.41589.0..sroa_idx, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %338) #26
  store i8 5, ptr %i.co, align 8, !tbaa !387
  store i8 1, ptr %i.cp, align 1, !tbaa !388
  store ptr %.sroa.01588.0.copyload, ptr %338, align 8, !tbaa !92
  store i64 %.sroa.41589.0.copyload, ptr %i.cq, align 8, !tbaa !92
  call fastcc void @_ZL11GenerateArgN4llvm12function_refIFvRKNS_5TwineEEEENS_3opt12OptSpecifierES3_(ptr %1, i64 %2, i32 1909, ptr noundef nonnull align 8 dereferenceable(34) %338)
  call void @llvm.lifetime.end.p0(ptr nonnull %338) #26
  %i.cu = getelementptr inbounds nuw i8, ptr %.021266364, i64 16 ; 2 uses
  %.not2647 = icmp eq ptr %i.cu, %i.cn
  br i1 %.not2647, label %._crit_edge6366.loopexit, label %bb.n

bb.o:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !551 ; 2 uses
  %switch.tableidx = add i32 %i.cw, -29           ; 2 uses
  %i.cx = icmp ult i32 %switch.tableidx, 8
  br i1 %i.cx, label %switch.lookup, label %bb.p

switch.lookup:                                    ; preds = %bb.o
  %i.cy = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5clang22CompilerInvocationBase16GenerateLangArgsERKNS_11LangOptionsEN4llvm12function_refIFvRKNS4_5TwineEEEERKNS4_6TripleENS_9InputKindE, i64 %i.cy
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %switch.lookup
  %.sroa.05519.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 3518, %bb.o ]
  %i.cz = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5clang12LangStandard22getLangStandardForKindENS0_4KindE(i32 noundef %i.cw) #26
  %.sroa.05515.0.copyload = load ptr, ptr %i.cz, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %339) #26
  %i.da = getelementptr inbounds nuw i8, ptr %339, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %339, i64 33
  store i8 1, ptr %i.db, align 1, !tbaa !388
  %i.dc = load i8, ptr %.sroa.05515.0.copyload, align 1, !tbaa !92
  %.not.i = icmp eq i8 %i.dc, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %.sroa.05515.0.copyload, ptr %339, align 8, !tbaa !92
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.p, %bb.q
  %storemerge.i = phi i8 [ 3, %bb.q ], [ 1, %bb.p ]
  store i8 %storemerge.i, ptr %i.da, align 8, !tbaa !387
  call fastcc void @_ZL11GenerateArgN4llvm12function_refIFvRKNS_5TwineEEEENS_3opt12OptSpecifierES3_(ptr %1, i64 %2, i32 %.sroa.05519.0, ptr noundef nonnull align 8 dereferenceable(34) %339)
  call void @llvm.lifetime.end.p0(ptr nonnull %339) #26
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 15 uses
  %i.de = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.df = and i64 %i.de, 128
  %.not = icmp eq i64 %i.df, 0
  br i1 %.not, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm5TwineC2EPKc.exit
  %i.dg = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.dh = tail call { ptr, ptr } @_ZNK4llvm3opt8OptTable9getOptionENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(216) %i.dg, i32 927) #26 ; 2 uses
  %i.di = extractvalue { ptr, ptr } %i.dh, 0
  %i.dj = extractvalue { ptr, ptr } %i.dh, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %331) #26
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !360
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dn = add i32 %i.dl, -1
  %i.do = zext i32 %i.dn to i64
  %i.dp = load ptr, ptr %i.dm, align 8, !tbaa !363
  %i.dq = getelementptr inbounds nuw [88 x i8], ptr %i.dp, i64 %i.do
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !383
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %.sroa.0.0.copyload.i.i.i.i2817 = load i32, ptr %i.dt, align 4, !tbaa !251
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !384 ; 2 uses
  %i.dv = zext i32 %.sroa.0.0.copyload.i.i.i.i2817 to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dv ; 2 uses
  %.not.i.i.i.i.i.i2818 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i2818, label %_ZL11GenerateArgN4llvm12function_refIFvRKNS_5TwineEEEENS_3opt12OptSpecifierE.exit2820, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dx = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #26
  br label %_ZL11GenerateArgN4llvm12function_refIFvRKNS_5TwineEEEENS_3opt12OptSpecifierE.exit2820

_ZL11GenerateArgN4llvm12function_refIFvRKNS_5TwineEEEENS_3opt12OptSpecifierE.exit2820: ; preds = %bb.r, %bb.s
  %.sroa.0.0.i.i.i.i.i.i2819 = phi i64 [ %i.dx, %bb.s ], [ 0, %bb.r ]
  %i.dy = getelementptr inbounds nuw i8, ptr %331, i64 32
  store i8 5, ptr %i.dy, align 8, !tbaa !387
  %i.dz = getelementptr inbounds nuw i8, ptr %331, i64 33
  store i8 1, ptr %i.dz, align 1, !tbaa !388
  store ptr %i.dw, ptr %331, align 8, !tbaa !92
  %i.ea = getelementptr inbounds nuw i8, ptr %331, i64 8
  store i64 %.sroa.0.0.i.i.i.i.i.i2819, ptr %i.ea, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %331) #26, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %331) #26
  %.pre = load i64, ptr %i.dd, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZL11GenerateArgN4llvm12function_refIFvRKNS_5TwineEEEENS_3opt12OptSpecifierE.exit2820, %_ZN4llvm5TwineC2EPKc.exit
  %i.eb = phi i64 [ %.pre, %_ZL11GenerateArgN4llvm12function_refIFvRKNS_5TwineEEEENS_3opt12OptSpecifierE.exit2820 ], [ %i.de, %_ZN4llvm5TwineC2EPKc.exit ]
  %i.ec = and i64 %i.eb, 256
  %.not2275 = icmp eq i64 %i.ec, 0
  br i1 %.not2275, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.ee = call { ptr, ptr } @_ZNK4llvm3opt8OptTable9getOptionENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(216) %i.ed, i32 610) #26 ; 2 uses
  %i.ef = extractvalue { ptr, ptr } %i.ee, 0
  %i.eg = extractvalue { ptr, ptr } %i.ee, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %330) #26
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !360
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ek = add i32 %i.ei, -1
  %i.el = zext i32 %i.ek to i64
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !363
  %i.en = getelementptr inbounds nuw [88 x i8], ptr %i.em, i64 %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !383
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %.sroa.0.0.copyload.i.i.i.i2821 = load i32, ptr %i.eq, align 4, !tbaa !251
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !384 ; 2 uses
  %i.es = zext i32 %.sroa.0.0.copyload.i.i.i.i2821 to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.es ; 2 uses
  %.not.i.i.i.i.i.i2822 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i.i2822, label %_ZL11GenerateArgN4llvm12function_refIFvRKNS_5TwineEEEENS_3opt12OptSpecifierE.exit2824, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.et) #26
  br label %_ZL11GenerateArgN4llvm12function_refIFvRKNS_5TwineEEEENS_3opt12OptSpecifierE.exit2824

_ZL11GenerateArgN4llvm12function_refIFvRKNS_5TwineEEEENS_3opt12OptSpecifierE.exit2824: ; preds = %bb.u, %bb.v
  %.sroa.0.0.i.i.i.i.i.i2823 = phi i64 [ %i.eu, %bb.v ], [ 0, %bb.u ]
  %i.ev = getelementptr inbounds nuw i8, ptr %330, i64 32
  store i8 5, ptr %i.ev, align 8, !tbaa !387
  %i.ew = getelementptr inbounds nuw i8, ptr %330, i64 33
  store i8 1, ptr %i.ew, align 1, !tbaa !388
  store ptr %i.et, ptr %330, align 8, !tbaa !92
  %i.ex = getelementptr inbounds nuw i8, ptr %330, i64 8
  store i64 %.sroa.0.0.i.i.i.i.i.i2823, ptr %i.ex, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %330) #26, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %330) #26
  br label %bb.w

bb.w:                                             ; preds = %_ZL11GenerateArgN4llvm12function_refIFvRKNS_5TwineEEEENS_3opt12OptSpecifierE.exit2824, %bb.t
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = load i64, ptr %0, align 8
  %i.fb = and i64 %i.fa, 131072                   ; 2 uses
  %i.fc = and i64 %i.ez, 17179869184              ; 2 uses
  %i.fd = or disjoint i64 %i.fc, %i.fb
  %or.cond6276 = icmp eq i64 %i.fd, 0
  br i1 %or.cond6276, label %bb.x, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit"

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %329) #26
  %i.fe = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !383
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !384 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 66558 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i, label %_ZL16lookupStrInTablej.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fi) #26
  br label %_ZL16lookupStrInTablej.exit.i

_ZL16lookupStrInTablej.exit.i:                    ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.fj, %bb.y ], [ 0, %bb.x ]
  %i.fk = getelementptr inbounds nuw i8, ptr %329, i64 32
  store i8 5, ptr %i.fk, align 8, !tbaa !387
  %i.fl = getelementptr inbounds nuw i8, ptr %329, i64 33
  store i8 1, ptr %i.fl, align 1, !tbaa !388
  store ptr %i.fi, ptr %329, align 8, !tbaa !92
  %i.fm = getelementptr inbounds nuw i8, ptr %329, i64 8
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.fm, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %329) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %329) #26
  %.pre6427 = load i64, ptr %i.ey, align 8
  %.pre6428 = load i64, ptr %0, align 8
  %.pre6570.a = and i64 %.pre6428, 131072
  %.pre6571.a = and i64 %.pre6427, 17179869184
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit": ; preds = %_ZL16lookupStrInTablej.exit.i, %bb.w
  %.pre-phi6572 = phi i64 [ %.pre6571.a, %_ZL16lookupStrInTablej.exit.i ], [ %i.fc, %bb.w ]
  %.pre-phi = phi i64 [ %.pre6570.a, %_ZL16lookupStrInTablej.exit.i ], [ %i.fb, %bb.w ]
  %.not2278 = icmp ne i64 %.pre-phi, 0
  %409 = icmp ne i64 %.pre-phi6572, 0
  %or.cond6221 = and i1 %409, %.not2278
  br i1 %or.cond6221, label %bb.z, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2828"

bb.z:                                             ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %328) #26
  %i.fn = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !383
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !384 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 66378 ; 2 uses
  %.not.i.i.i.i2825 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i2825, label %_ZL16lookupStrInTablej.exit.i2826, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fr) #26
  br label %_ZL16lookupStrInTablej.exit.i2826

_ZL16lookupStrInTablej.exit.i2826:                ; preds = %bb.aa, %bb.z
  %.sroa.0.0.i.i.i.i2827 = phi i64 [ %i.fs, %bb.aa ], [ 0, %bb.z ]
  %i.ft = getelementptr inbounds nuw i8, ptr %328, i64 32
  store i8 5, ptr %i.ft, align 8, !tbaa !387
  %i.fu = getelementptr inbounds nuw i8, ptr %328, i64 33
  store i8 1, ptr %i.fu, align 1, !tbaa !388
  store ptr %i.fr, ptr %328, align 8, !tbaa !92
  %i.fv = getelementptr inbounds nuw i8, ptr %328, i64 8
  store i64 %.sroa.0.0.i.i.i.i2827, ptr %i.fv, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %328) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %328) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2828"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2828": ; preds = %_ZL16lookupStrInTablej.exit.i2826, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit"
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 19 uses
  %i.fx = load i64, ptr %i.fw, align 8            ; 3 uses
  %i.fy = lshr i64 %i.fx, 39
  %i.fz = trunc nuw nsw i64 %i.fy to i32
  %i.ga = and i32 %i.fz, 1                        ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.gc = load i64, ptr %i.gb, align 8            ; 2 uses
  %i.gd = and i64 %i.gc, 137438953472
  %.not2280 = icmp eq i64 %i.gd, 0
  br i1 %.not2280, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2828"
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = and i64 %i.gf, 4611686018427387904
  %.not2281 = icmp eq i64 %i.gg, 0
  br i1 %.not2281, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = icmp ult i32 %i.gj, 121
  %i.gl = zext i1 %i.gk to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2828"
  %i.gm = phi i32 [ 1, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2828" ], [ 0, %bb.ab ], [ %i.gl, %bb.ac ]
  %.not2282 = icmp ne i32 %i.ga, %i.gm
  %i.gn = and i64 %i.fx, 549755813888
  %i.go = icmp ne i64 %i.gn, 0
  %or.cond6223 = select i1 %.not2282, i1 %i.go, i1 false
  br i1 %or.cond6223, label %bb.ae, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2832"

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %327) #26
  %i.gp = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !383
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !384 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 34679 ; 2 uses
  %.not.i.i.i.i2829 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i2829, label %_ZL16lookupStrInTablej.exit.i2830, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gt) #26
  br label %_ZL16lookupStrInTablej.exit.i2830

_ZL16lookupStrInTablej.exit.i2830:                ; preds = %bb.af, %bb.ae
  %.sroa.0.0.i.i.i.i2831 = phi i64 [ %i.gu, %bb.af ], [ 0, %bb.ae ]
  %i.gv = getelementptr inbounds nuw i8, ptr %327, i64 32
  store i8 5, ptr %i.gv, align 8, !tbaa !387
  %i.gw = getelementptr inbounds nuw i8, ptr %327, i64 33
  store i8 1, ptr %i.gw, align 1, !tbaa !388
  store ptr %i.gt, ptr %327, align 8, !tbaa !92
  %i.gx = getelementptr inbounds nuw i8, ptr %327, i64 8
  store i64 %.sroa.0.0.i.i.i.i2831, ptr %i.gx, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %327) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %327) #26
  %.pre6429 = load i64, ptr %i.fw, align 8        ; 2 uses
  %.pre6430 = load i64, ptr %i.gb, align 8
  %.pre6573.a = lshr i64 %.pre6429, 39
  %.pre6575 = trunc nuw nsw i64 %.pre6573.a to i32
  %.pre6577 = and i32 %.pre6575, 1
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2832"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2832": ; preds = %_ZL16lookupStrInTablej.exit.i2830, %bb.ad
  %.pre-phi6578 = phi i32 [ %.pre6577, %_ZL16lookupStrInTablej.exit.i2830 ], [ %i.ga, %bb.ad ]
  %i.gy = phi i64 [ %.pre6430, %_ZL16lookupStrInTablej.exit.i2830 ], [ %i.gc, %bb.ad ]
  %i.gz = phi i64 [ %.pre6429, %_ZL16lookupStrInTablej.exit.i2830 ], [ %i.fx, %bb.ad ]
  %i.ha = and i64 %i.gy, 137438953472
  %.not2283 = icmp eq i64 %i.ha, 0
  br i1 %.not2283, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2832"
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = and i64 %i.hc, 4611686018427387904
  %.not2284 = icmp eq i64 %i.hd, 0
  br i1 %.not2284, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = icmp ult i32 %i.hg, 121
  %i.hi = zext i1 %i.hh to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2832"
  %i.hj = phi i32 [ 1, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2832" ], [ 0, %bb.ag ], [ %i.hi, %bb.ah ]
  %.not2285 = icmp ne i32 %.pre-phi6578, %i.hj
  %i.hk = and i64 %i.gz, 549755813888
  %i.hl = icmp eq i64 %i.hk, 0
  %or.cond6278 = select i1 %.not2285, i1 %i.hl, i1 false
  br i1 %or.cond6278, label %bb.aj, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2836"

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %326) #26
  %i.hm = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !383
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !384 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 27293 ; 2 uses
  %.not.i.i.i.i2833 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i2833, label %_ZL16lookupStrInTablej.exit.i2834, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hq) #26
  br label %_ZL16lookupStrInTablej.exit.i2834

_ZL16lookupStrInTablej.exit.i2834:                ; preds = %bb.ak, %bb.aj
  %.sroa.0.0.i.i.i.i2835 = phi i64 [ %i.hr, %bb.ak ], [ 0, %bb.aj ]
  %i.hs = getelementptr inbounds nuw i8, ptr %326, i64 32
  store i8 5, ptr %i.hs, align 8, !tbaa !387
  %i.ht = getelementptr inbounds nuw i8, ptr %326, i64 33
  store i8 1, ptr %i.ht, align 1, !tbaa !388
  store ptr %i.hq, ptr %326, align 8, !tbaa !92
  %i.hu = getelementptr inbounds nuw i8, ptr %326, i64 8
  store i64 %.sroa.0.0.i.i.i.i2835, ptr %i.hu, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %326) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %326) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2836"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2836": ; preds = %_ZL16lookupStrInTablej.exit.i2834, %bb.ai
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  %i.hw = load i64, ptr %i.hv, align 8
  %i.hx = lshr i64 %i.hw, 45
  %i.hy = trunc nuw nsw i64 %i.hx to i32
  %i.hz = and i32 %i.hy, 7                        ; 2 uses
  %.not2286 = icmp eq i32 %i.hz, 0
  br i1 %.not2286, label %bb.am, label %.lr.ph.i.i4721

.lr.ph.i.i4721:                                   ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2836", %.lr.ph.i.i4721
  %indvars.iv.i15.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i4721 ], [ 0, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2836" ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i15.i, 1 ; 3 uses
  %.not.i.i4722 = icmp ne i64 %indvars.iv.next.i.i, 4
  call void @llvm.assume(i1 %.not.i.i4722)
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr @_ZL26complex_range_EQValueTable, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !392, !noalias !2171
  %i.id = icmp eq i32 %i.hz, %i.ic
  br i1 %i.id, label %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i, label %.lr.ph.i.i4721

_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i: ; preds = %.lr.ph.i.i4721
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ia, align 8, !tbaa !282 ; 2 uses
  %i.ie = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !383
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !384 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 3981 ; 2 uses
  %.not.i.i.i.i4723 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i4723, label %_ZL16lookupStrInTablej.exit.i4724, label %bb.al

bb.al:                                            ; preds = %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i
  %i.ij = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ii) #26
  br label %_ZL16lookupStrInTablej.exit.i4724

_ZL16lookupStrInTablej.exit.i4724:                ; preds = %bb.al, %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i
  %.sroa.0.0.i.i.i.i4725 = phi i64 [ %i.ij, %bb.al ], [ 0, %_ZL21findValueTableByValueRK20SimpleEnumValueTablej.exit.i ]
  %i.ik = load i8, ptr %.sroa.0.0.copyload.i, align 1, !tbaa !92
  %.not.i.i.i4726 = icmp eq i8 %i.ik, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  br i1 %.not.i.i.i4726, label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit, label %_ZN4llvm5TwineC2EPKc.exit.i.thread.i

_ZN4llvm5TwineC2EPKc.exit.i.thread.i:             ; preds = %_ZL16lookupStrInTablej.exit.i4724
  %i.il = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %.sroa.0.0.copyload.i, ptr %i.il, align 8, !alias.scope !2172
  br label %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit

_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit: ; preds = %_ZL16lookupStrInTablej.exit.i4724, %_ZN4llvm5TwineC2EPKc.exit.i.thread.i
  %.sink = phi i8 [ 3, %_ZN4llvm5TwineC2EPKc.exit.i.thread.i ], [ 1, %_ZL16lookupStrInTablej.exit.i4724 ]
  store ptr %i.ii, ptr %33, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %.sroa.0.0.i.i.i.i4725, ptr %i.im, align 8, !tbaa !92
  %i.in = getelementptr inbounds nuw i8, ptr %33, i64 32
  store i8 5, ptr %i.in, align 8, !tbaa !393
  %i.io = getelementptr inbounds nuw i8, ptr %33, i64 33
  store i8 %.sink, ptr %i.io, align 1, !tbaa !393
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %33) #26, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  br label %bb.am

bb.am:                                            ; preds = %_ZL25denormalizeSimpleEnumImplN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjj.exit, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit2836"
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 38 uses
  %i.iq = load i64, ptr %i.ip, align 8            ; 2 uses
  %i.ir = and i64 %i.iq, 18014398509481984
  %.not2287 = icmp eq i64 %i.ir, 0
  br i1 %.not2287, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %325) #26
  %i.is = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !383
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !384 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 3395 ; 2 uses
  %.not.i.i.i.i2837 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i2837, label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit, label %bb.ao

end_hunk_0
begin_hunk_1_@_ZN5clang22CompilerInvocationBase16GenerateLangArgsERKNS_11LangOptionsEN4llvm12function_refIFvRKNS4_5TwineEEEERKNS4_6TripleENS_9InputKindE:bb.a
  br i1 %.not.i.i.i.i3227, label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3235, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.amf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ame) #26
  br label %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3235

_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3235: ; preds = %bb.gv, %bb.gw
  %.sroa.0.0.i.i.i.i3229 = phi i64 [ %i.amf, %bb.gw ], [ 0, %bb.gv ]
  %i.amg = inttoptr i64 %i.alz to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %272) #26
  store ptr %i.ame, ptr %272, align 8, !alias.scope !2190
  %.sroa.23.0..sroa_idx.i.i.i.i.i3233 = getelementptr inbounds nuw i8, ptr %272, i64 8
  store i64 %.sroa.0.0.i.i.i.i3229, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i3233, align 8, !tbaa !92, !alias.scope !2190
  %i.amh = getelementptr inbounds nuw i8, ptr %272, i64 16
  store ptr %i.amg, ptr %i.amh, align 8, !alias.scope !2190
  %i.ami = getelementptr inbounds nuw i8, ptr %272, i64 32
  store i8 5, ptr %i.ami, align 8, !tbaa !387, !alias.scope !2190
  %i.amj = getelementptr inbounds nuw i8, ptr %272, i64 33
  store i8 9, ptr %i.amj, align 1, !tbaa !388, !alias.scope !2190
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %272) #26, !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %272) #26
  br label %bb.gx

bb.gx:                                            ; preds = %_ZL17denormalizeStringIjEvN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjT_.exit3235, %bb.gu
  %i.amk = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aml = load i64, ptr %i.amk, align 8
  %i.amm = and i64 %i.aml, 1
  %or.cond6227.not = icmp eq i64 %i.amm, 0
  br i1 %or.cond6227.not, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3243", label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %271) #26
  %i.amn = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !383
  %i.amq = load ptr, ptr %i.amp, align 8, !tbaa !384 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 13600 ; 2 uses
  %.not.i.i.i.i3236 = icmp eq ptr %i.amq, null
  br i1 %.not.i.i.i.i3236, label %_ZL16lookupStrInTablej.exit.i3237, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ams = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.amr) #26
  br label %_ZL16lookupStrInTablej.exit.i3237

_ZL16lookupStrInTablej.exit.i3237:                ; preds = %bb.gz, %bb.gy
  %.sroa.0.0.i.i.i.i3238 = phi i64 [ %i.ams, %bb.gz ], [ 0, %bb.gy ]
  %i.amt = getelementptr inbounds nuw i8, ptr %271, i64 32
  store i8 5, ptr %i.amt, align 8, !tbaa !387
  %i.amu = getelementptr inbounds nuw i8, ptr %271, i64 33
  store i8 1, ptr %i.amu, align 1, !tbaa !388
  store ptr %i.amr, ptr %271, align 8, !tbaa !92
  %i.amv = getelementptr inbounds nuw i8, ptr %271, i64 8
  store i64 %.sroa.0.0.i.i.i.i3238, ptr %i.amv, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %271) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %271) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3243"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3243": ; preds = %bb.gx, %_ZL16lookupStrInTablej.exit.i3237
  %i.amw = load i64, ptr %i.sp, align 8           ; 2 uses
  %i.amx = and i64 %i.amw, 35184372088832
  %.not2345 = icmp eq i64 %i.amx, 0
  br i1 %.not2345, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3243"
  call void @llvm.lifetime.start.p0(ptr nonnull %270) #26
  %i.amy = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !383
  %i.anb = load ptr, ptr %i.ana, align 8, !tbaa !384 ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 10186 ; 2 uses
  %.not.i.i.i.i3244 = icmp eq ptr %i.anb, null
  br i1 %.not.i.i.i.i3244, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3247", label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.and = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.anc) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3247"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3247": ; preds = %bb.ha, %bb.hb
  %.sroa.0.0.i.i.i.i3246 = phi i64 [ %i.and, %bb.hb ], [ 0, %bb.ha ]
  %i.ane = getelementptr inbounds nuw i8, ptr %270, i64 32
  store i8 5, ptr %i.ane, align 8, !tbaa !387
  %i.anf = getelementptr inbounds nuw i8, ptr %270, i64 33
  store i8 1, ptr %i.anf, align 1, !tbaa !388
  store ptr %i.anc, ptr %270, align 8, !tbaa !92
  %i.ang = getelementptr inbounds nuw i8, ptr %270, i64 8
  store i64 %.sroa.0.0.i.i.i.i3246, ptr %i.ang, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %270) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %270) #26
  %.pre6452 = load i64, ptr %i.sp, align 8
  br label %bb.hc

bb.hc:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3247", %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3243"
  %i.anh = phi i64 [ %.pre6452, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3247" ], [ %i.amw, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3243" ]
  %i.ani = and i64 %i.anh, 70368744177664
  %.not2346 = icmp eq i64 %i.ani, 0
  br i1 %.not2346, label %bb.hf, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %269) #26
  %i.anj = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 8
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !383
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !384 ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 7913 ; 2 uses
  %.not.i.i.i.i3248 = icmp eq ptr %i.anm, null
  br i1 %.not.i.i.i.i3248, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3251", label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ano = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ann) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3251"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3251": ; preds = %bb.hd, %bb.he
  %.sroa.0.0.i.i.i.i3250 = phi i64 [ %i.ano, %bb.he ], [ 0, %bb.hd ]
  %i.anp = getelementptr inbounds nuw i8, ptr %269, i64 32
  store i8 5, ptr %i.anp, align 8, !tbaa !387
  %i.anq = getelementptr inbounds nuw i8, ptr %269, i64 33
  store i8 1, ptr %i.anq, align 1, !tbaa !388
  store ptr %i.ann, ptr %269, align 8, !tbaa !92
  %i.anr = getelementptr inbounds nuw i8, ptr %269, i64 8
  store i64 %.sroa.0.0.i.i.i.i3250, ptr %i.anr, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %269) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %269) #26
  br label %bb.hf

bb.hf:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3251", %bb.hc
  %i.ans = load i64, ptr %i.ur, align 8           ; 2 uses
  %i.ant = lshr i64 %i.ans, 42
  %i.anu = trunc nuw nsw i64 %i.ant to i32
  %i.anv = load i64, ptr %0, align 8              ; 2 uses
  %i.anw = trunc i64 %i.anv to i32
  %i.anx = lshr i32 %i.anw, 16
  %i.any = xor i32 %i.anx, %i.anu
  %.not2347 = trunc i32 %i.any to i1
  %i.anz = and i64 %i.ans, 4398046511104
  %i.aoa = icmp eq i64 %i.anz, 0
  %or.cond6280 = and i1 %i.aoa, %.not2347
  br i1 %or.cond6280, label %bb.hg, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3255"

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %268) #26
  %i.aob = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 8
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !383
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !384 ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 22127 ; 2 uses
  %.not.i.i.i.i3252 = icmp eq ptr %i.aoe, null
  br i1 %.not.i.i.i.i3252, label %_ZL16lookupStrInTablej.exit.i3253, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aog = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aof) #26
  br label %_ZL16lookupStrInTablej.exit.i3253

_ZL16lookupStrInTablej.exit.i3253:                ; preds = %bb.hh, %bb.hg
  %.sroa.0.0.i.i.i.i3254 = phi i64 [ %i.aog, %bb.hh ], [ 0, %bb.hg ]
  %i.aoh = getelementptr inbounds nuw i8, ptr %268, i64 32
  store i8 5, ptr %i.aoh, align 8, !tbaa !387
  %i.aoi = getelementptr inbounds nuw i8, ptr %268, i64 33
  store i8 1, ptr %i.aoi, align 1, !tbaa !388
  store ptr %i.aof, ptr %268, align 8, !tbaa !92
  %i.aoj = getelementptr inbounds nuw i8, ptr %268, i64 8
  store i64 %.sroa.0.0.i.i.i.i3254, ptr %i.aoj, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %268) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %268) #26
  %.pre6453 = load i64, ptr %0, align 8
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3255"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3255": ; preds = %_ZL16lookupStrInTablej.exit.i3253, %bb.hf
  %i.aok = phi i64 [ %.pre6453, %_ZL16lookupStrInTablej.exit.i3253 ], [ %i.anv, %bb.hf ] ; 2 uses
  %i.aol = and i64 %i.aok, 51539607552
  %or.cond6231 = icmp eq i64 %i.aol, 51539607552
  br i1 %or.cond6231, label %bb.hi, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3259"

bb.hi:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3255"
  call void @llvm.lifetime.start.p0(ptr nonnull %267) #26
  %i.aom = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !383
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !384 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 12186 ; 2 uses
  %.not.i.i.i.i3256 = icmp eq ptr %i.aop, null
  br i1 %.not.i.i.i.i3256, label %_ZL16lookupStrInTablej.exit.i3257, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aor = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aoq) #26
  br label %_ZL16lookupStrInTablej.exit.i3257

_ZL16lookupStrInTablej.exit.i3257:                ; preds = %bb.hj, %bb.hi
  %.sroa.0.0.i.i.i.i3258 = phi i64 [ %i.aor, %bb.hj ], [ 0, %bb.hi ]
  %i.aos = getelementptr inbounds nuw i8, ptr %267, i64 32
  store i8 5, ptr %i.aos, align 8, !tbaa !387
  %i.aot = getelementptr inbounds nuw i8, ptr %267, i64 33
  store i8 1, ptr %i.aot, align 1, !tbaa !388
  store ptr %i.aoq, ptr %267, align 8, !tbaa !92
  %i.aou = getelementptr inbounds nuw i8, ptr %267, i64 8
  store i64 %.sroa.0.0.i.i.i.i3258, ptr %i.aou, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %267) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %267) #26
  %.pre6454 = load i64, ptr %0, align 8
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3259"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3259": ; preds = %_ZL16lookupStrInTablej.exit.i3257, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3255"
  %i.aov = phi i64 [ %.pre6454, %_ZL16lookupStrInTablej.exit.i3257 ], [ %i.aok, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3255" ]
  %i.aow = and i64 %i.aov, 51539607552
  %or.cond6281 = icmp eq i64 %i.aow, 0
  br i1 %or.cond6281, label %bb.hk, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3263"

bb.hk:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3259"
  call void @llvm.lifetime.start.p0(ptr nonnull %266) #26
  %i.aox = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 8
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !383
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !384 ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 23048 ; 2 uses
  %.not.i.i.i.i3260 = icmp eq ptr %i.apa, null
  br i1 %.not.i.i.i.i3260, label %_ZL16lookupStrInTablej.exit.i3261, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.apc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.apb) #26
  br label %_ZL16lookupStrInTablej.exit.i3261

_ZL16lookupStrInTablej.exit.i3261:                ; preds = %bb.hl, %bb.hk
  %.sroa.0.0.i.i.i.i3262 = phi i64 [ %i.apc, %bb.hl ], [ 0, %bb.hk ]
  %i.apd = getelementptr inbounds nuw i8, ptr %266, i64 32
  store i8 5, ptr %i.apd, align 8, !tbaa !387
  %i.ape = getelementptr inbounds nuw i8, ptr %266, i64 33
  store i8 1, ptr %i.ape, align 1, !tbaa !388
  store ptr %i.apb, ptr %266, align 8, !tbaa !92
  %i.apf = getelementptr inbounds nuw i8, ptr %266, i64 8
  store i64 %.sroa.0.0.i.i.i.i3262, ptr %i.apf, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %266) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %266) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3263"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3263": ; preds = %_ZL16lookupStrInTablej.exit.i3261, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3259"
  %i.apg = load i64, ptr %i.ip, align 8
  %i.aph = and i64 %i.apg, 17179869184
  %.not2352.not = icmp eq i64 %i.aph, 0
  br i1 %.not2352.not, label %bb.hm, label %bb.ho

bb.hm:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3263"
  call void @llvm.lifetime.start.p0(ptr nonnull %265) #26
  %i.api = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 8
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !383
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !384 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 23235 ; 2 uses
  %.not.i.i.i.i3264 = icmp eq ptr %i.apl, null
  br i1 %.not.i.i.i.i3264, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3267", label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.apn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.apm) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3267"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3267": ; preds = %bb.hm, %bb.hn
  %.sroa.0.0.i.i.i.i3266 = phi i64 [ %i.apn, %bb.hn ], [ 0, %bb.hm ]
  %i.apo = getelementptr inbounds nuw i8, ptr %265, i64 32
  store i8 5, ptr %i.apo, align 8, !tbaa !387
  %i.app = getelementptr inbounds nuw i8, ptr %265, i64 33
  store i8 1, ptr %i.app, align 1, !tbaa !388
  store ptr %i.apm, ptr %265, align 8, !tbaa !92
  %i.apq = getelementptr inbounds nuw i8, ptr %265, i64 8
  store i64 %.sroa.0.0.i.i.i.i3266, ptr %i.apq, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %265) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %265) #26
  br label %bb.ho

bb.ho:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3267", %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3263"
  %i.apr = load i64, ptr %i.ur, align 8
  %i.aps = and i64 %i.apr, 274877906944
  %.not2353 = icmp eq i64 %i.aps, 0
  br i1 %.not2353, label %bb.hr, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %264) #26
  %i.apt = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 8
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !383
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !384 ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 12799 ; 2 uses
  %.not.i.i.i.i3268 = icmp eq ptr %i.apw, null
  br i1 %.not.i.i.i.i3268, label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3271, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.apy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.apx) #26
  br label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3271

_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3271: ; preds = %bb.hp, %bb.hq
  %.sroa.0.0.i.i.i.i3270 = phi i64 [ %i.apy, %bb.hq ], [ 0, %bb.hp ]
  %i.apz = getelementptr inbounds nuw i8, ptr %264, i64 32
  store i8 5, ptr %i.apz, align 8, !tbaa !387
  %i.aqa = getelementptr inbounds nuw i8, ptr %264, i64 33
  store i8 1, ptr %i.aqa, align 1, !tbaa !388
  store ptr %i.apx, ptr %264, align 8, !tbaa !92
  %i.aqb = getelementptr inbounds nuw i8, ptr %264, i64 8
  store i64 %.sroa.0.0.i.i.i.i3270, ptr %i.aqb, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %264) #26, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %264) #26
  br label %bb.hr

bb.hr:                                            ; preds = %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3271, %bb.ho
  %i.aqc = load i64, ptr %i.sp, align 8           ; 2 uses
  %i.aqd = and i64 %i.aqc, 8796093022208
  %.not2354 = icmp eq i64 %i.aqd, 0
  br i1 %.not2354, label %bb.hu, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %263) #26
  %i.aqe = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !383
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !384 ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 13050 ; 2 uses
  %.not.i.i.i.i3272 = icmp eq ptr %i.aqh, null
  br i1 %.not.i.i.i.i3272, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3275", label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.aqj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aqi) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3275"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3275": ; preds = %bb.hs, %bb.ht
  %.sroa.0.0.i.i.i.i3274 = phi i64 [ %i.aqj, %bb.ht ], [ 0, %bb.hs ]
  %i.aqk = getelementptr inbounds nuw i8, ptr %263, i64 32
  store i8 5, ptr %i.aqk, align 8, !tbaa !387
  %i.aql = getelementptr inbounds nuw i8, ptr %263, i64 33
  store i8 1, ptr %i.aql, align 1, !tbaa !388
  store ptr %i.aqi, ptr %263, align 8, !tbaa !92
  %i.aqm = getelementptr inbounds nuw i8, ptr %263, i64 8
  store i64 %.sroa.0.0.i.i.i.i3274, ptr %i.aqm, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %263) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %263) #26
  %.pre6455 = load i64, ptr %i.sp, align 8
  br label %bb.hu

bb.hu:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3275", %bb.hr
  %i.aqn = phi i64 [ %.pre6455, %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3275" ], [ %i.aqc, %bb.hr ] ; 2 uses
  %i.aqo = and i64 %i.aqn, 140737488355328
  %.not2355 = icmp eq i64 %i.aqo, 0
  br i1 %.not2355, label %bb.hx, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %262) #26
  %i.aqp = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !383
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !384 ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16886 ; 2 uses
  %.not.i.i.i.i3276 = icmp eq ptr %i.aqs, null
  br i1 %.not.i.i.i.i3276, label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3279, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.aqu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aqt) #26
  br label %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3279

_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3279: ; preds = %bb.hv, %bb.hw
  %.sroa.0.0.i.i.i.i3278 = phi i64 [ %i.aqu, %bb.hw ], [ 0, %bb.hv ]
  %i.aqv = getelementptr inbounds nuw i8, ptr %262, i64 32
  store i8 5, ptr %i.aqv, align 8, !tbaa !387
  %i.aqw = getelementptr inbounds nuw i8, ptr %262, i64 33
  store i8 1, ptr %i.aqw, align 1, !tbaa !388
  store ptr %i.aqt, ptr %262, align 8, !tbaa !92
  %i.aqx = getelementptr inbounds nuw i8, ptr %262, i64 8
  store i64 %.sroa.0.0.i.i.i.i3278, ptr %i.aqx, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %262) #26, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %262) #26
  %.pre6456 = load i64, ptr %i.sp, align 8
  br label %bb.hx

bb.hx:                                            ; preds = %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3279, %bb.hu
  %i.aqy = phi i64 [ %.pre6456, %_ZL21denormalizeSimpleFlagN4llvm12function_refIFvRKNS_5TwineEEEEjNS_3opt6Option11OptionClassEjz.exit3279 ], [ %i.aqn, %bb.hu ]
  %i.aqz = and i64 %i.aqy, 562949953421312
  %.not2356 = icmp eq i64 %i.aqz, 0
  br i1 %.not2356, label %bb.ia, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.lifetime.start.p0(ptr nonnull %261) #26
  %i.ara = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN5clang17getDriverOptTableEv() #26
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !383
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !384 ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 7795 ; 2 uses
  %.not.i.i.i.i3280 = icmp eq ptr %i.ard, null
  br i1 %.not.i.i.i.i3280, label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3283", label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.arf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.are) #26
  br label %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3283"

"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3283": ; preds = %bb.hy, %bb.hz
  %.sroa.0.0.i.i.i.i3282 = phi i64 [ %i.arf, %bb.hz ], [ 0, %bb.hy ]
  %i.arg = getelementptr inbounds nuw i8, ptr %261, i64 32
  store i8 5, ptr %i.arg, align 8, !tbaa !387
  %i.arh = getelementptr inbounds nuw i8, ptr %261, i64 33
  store i8 1, ptr %i.arh, align 1, !tbaa !388
  store ptr %i.are, ptr %261, align 8, !tbaa !92
  %i.ari = getelementptr inbounds nuw i8, ptr %261, i64 8
  store i64 %.sroa.0.0.i.i.i.i3282, ptr %i.ari, align 8, !tbaa !92
  call void %1(i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(34) %261) #26, !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %261) #26
  br label %bb.ia

bb.ia:                                            ; preds = %"_ZZL29makeBooleanOptionDenormalizerbENK3$_0clEN4llvm12function_refIFvRKNS0_5TwineEEEEjNS0_3opt6Option11OptionClassEjb.exit3283", %bb.hx
  %i.arj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 19 uses
end_hunk_1

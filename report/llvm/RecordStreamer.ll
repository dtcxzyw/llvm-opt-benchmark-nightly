Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RecordStreamer?download=true
inline.NumInlined: 658
inline.NumDeleted: 411
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm14RecordStreamer21flushSymverDirectivesEv:bb.a

bb.p:                                             ; preds = %_ZN4llvm7ManglerD2Ev.exit
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !36 ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %.idx.i = shl nuw nsw i64 %i.dg, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %.pre13.i, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.df, 0
  br i1 %.not11.i, label %_ZN4llvm9StringMapIPKNS_11GlobalValueENS_15MallocAllocatorEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %bb.r
  %.012.i = phi ptr [ %i.dl, %bb.r ], [ %.pre13.i, %bb.p ] ; 2 uses
  %i.di = load ptr, ptr %.012.i, align 8, !tbaa !21 ; 3 uses
  %.not10.i = icmp eq ptr %i.di, null
  br i1 %.not10.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !15
  %i.dk = add i64 %i.dj, 17
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 noundef %i.dk, i64 noundef 8) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.dl, %i.dh
  br i1 %.not.i, label %.loopexit.loopexit.i, label %.lr.ph.i

.loopexit.loopexit.i:                             ; preds = %bb.r
  %.pre.i65 = load ptr, ptr %1, align 8, !tbaa !19
  br label %_ZN4llvm9StringMapIPKNS_11GlobalValueENS_15MallocAllocatorEED2Ev.exit

_ZN4llvm9StringMapIPKNS_11GlobalValueENS_15MallocAllocatorEED2Ev.exit: ; preds = %_ZN4llvm7ManglerD2Ev.exit, %bb.p, %.loopexit.loopexit.i
  %i.dm = phi ptr [ %.pre.i65, %.loopexit.loopexit.i ], [ %.pre13.i, %bb.p ], [ %.pre13.i, %_ZN4llvm7ManglerD2Ev.exit ]
  call void @free(ptr noundef %i.dm) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

bb.s:                                             ; preds = %.lr.ph159, %._crit_edge
  %.0157 = phi ptr [ %i.ae, %.lr.ph159 ], [ %i.fz, %._crit_edge ] ; 4 uses
  %i.dn = load ptr, ptr %.0157, align 8, !tbaa !49 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = and i32 %i.dp, 4
  %.not.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i, label %_ZNK4llvm8MCSymbol7getNameEv.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !12 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !15
  br label %_ZNK4llvm8MCSymbol7getNameEv.exit.i

_ZNK4llvm8MCSymbol7getNameEv.exit.i:              ; preds = %bb.t, %bb.s
  %.sroa.0.0.i.i = phi ptr [ %i.dt, %bb.t ], [ null, %bb.s ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ %i.du, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.dv = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #16
  %i.dw = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.aj, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i, i32 noundef %i.dv) #16 ; 2 uses
  %i.dx = icmp eq i32 %i.dw, -1
  %i.dy = load ptr, ptr %i.aj, align 8, !tbaa !19
  br i1 %i.dx, label %.thread, label %_ZN4llvm9StringMapINS_14RecordStreamer5StateENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZN4llvm9StringMapINS_14RecordStreamer5StateENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit.i
  %i.dz = sext i32 %i.dw to i64                   ; 2 uses
  %.pre.i66 = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !36
  %.pre4.i = zext i32 %.pre.i66 to i64
  %i.ea = icmp eq i64 %i.dz, %.pre4.i
  br i1 %i.ea, label %.thread, label %_ZN4llvm14RecordStreamer14getSymbolStateEPKNS_8MCSymbolE.exit

_ZN4llvm14RecordStreamer14getSymbolStateEPKNS_8MCSymbolE.exit: ; preds = %_ZN4llvm9StringMapINS_14RecordStreamer5StateENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !21
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !25 ; 3 uses
  %switch.tableidx = add i32 %i.ee, -1            ; 3 uses
  %i.ef = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 45, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ef, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.thread

.thread:                                          ; preds = %_ZN4llvm14RecordStreamer14getSymbolStateEPKNS_8MCSymbolE.exit, %_ZN4llvm9StringMapINS_14RecordStreamer5StateENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZNK4llvm8MCSymbol7getNameEv.exit.i
  %.0.i125.ph = phi i32 [ %i.ee, %_ZN4llvm14RecordStreamer14getSymbolStateEPKNS_8MCSymbolE.exit ], [ 0, %_ZN4llvm9StringMapINS_14RecordStreamer5StateENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i ], [ 0, %_ZNK4llvm8MCSymbol7getNameEv.exit.i ]
  %.off128 = add i32 %.0.i125.ph, -2
  %switch129 = icmp ult i32 %.off128, 3
  br label %bb.u

switch.lookup:                                    ; preds = %_ZN4llvm14RecordStreamer14getSymbolStateEPKNS_8MCSymbolE.exit
  %i.eg = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm14RecordStreamer21flushSymverDirectivesEv, i64 %i.eg
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %.off = add nsw i32 %i.ee, -2
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %.thread134, label %bb.u

bb.u:                                             ; preds = %.thread, %switch.lookup
  %spec.select133.in = phi i1 [ %switch129, %.thread ], [ false, %switch.lookup ] ; 3 uses
  %.053132 = phi i32 [ 0, %.thread ], [ %switch.ext, %switch.lookup ] ; 3 uses
  %i.eh = phi i1 [ true, %.thread ], [ false, %switch.lookup ]
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !146, !nonnull !147, !align !148
  %i.ej = load i32, ptr %i.do, align 8
  %i.ek = and i32 %i.ej, 4
  %.not.i67 = icmp eq i32 %i.ek, 0
  br i1 %.not.i67, label %_ZNK4llvm8MCSymbol7getNameEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !12 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !15
  br label %_ZNK4llvm8MCSymbol7getNameEv.exit

_ZNK4llvm8MCSymbol7getNameEv.exit:                ; preds = %bb.u, %bb.v
  %.sroa.0.0.i = phi ptr [ %i.en, %bb.v ], [ null, %bb.u ]
  %.sroa.4.0.i = phi i64 [ %i.eo, %bb.v ], [ 0, %bb.u ]
  %i.ep = call noundef ptr @_ZNK4llvm6Module13getNamedValueENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %i.ei, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #16 ; 2 uses
  %.not61 = icmp eq ptr %i.ep, null
  br i1 %.not61, label %bb.w, label %.thread137

bb.w:                                             ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit
  %i.eq = load i32, ptr %i.do, align 8
  %i.er = and i32 %i.eq, 4
  %.not.i68 = icmp eq i32 %i.er, 0
  br i1 %.not.i68, label %_ZNK4llvm8MCSymbol7getNameEv.exit73, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.es = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !12 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !15
  br label %_ZNK4llvm8MCSymbol7getNameEv.exit73

_ZNK4llvm8MCSymbol7getNameEv.exit73:              ; preds = %bb.w, %bb.x
  %.sroa.0.0.i69 = phi ptr [ %i.eu, %bb.x ], [ null, %bb.w ] ; 2 uses
  %.sroa.4.0.i70 = phi i64 [ %i.ev, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.ew = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.0.0.i69, i64 %.sroa.4.0.i70) #16
  %i.ex = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr %.sroa.0.0.i69, i64 %.sroa.4.0.i70, i32 noundef %i.ew) #16 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, -1
  %i.ez = sext i32 %i.ex to i64                   ; 2 uses
  %i.fa = load i32, ptr %i.ak, align 8
  %i.fb = zext i32 %i.fa to i64
  %.not149150 = icmp eq i64 %i.ez, %i.fb
  %.not149 = select i1 %i.ey, i1 true, i1 %.not149150
  br i1 %.not149, label %.thread134, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit73
  %i.fc = load ptr, ptr %1, align 8, !tbaa !19
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.ez
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !21
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !151 ; 2 uses
  %.not62 = icmp eq ptr %i.fg, null
  br i1 %.not62, label %.thread134, label %.thread137

.thread137:                                       ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit, %bb.y
  %.158140 = phi ptr [ %i.fg, %bb.y ], [ %i.ep, %_ZNK4llvm8MCSymbol7getNameEv.exit ] ; 3 uses
  br i1 %i.eh, label %bb.z, label %_ZNK4llvm11GlobalValue15isWeakForLinkerEv.exit

bb.z:                                             ; preds = %.thread137
  %i.fh = getelementptr inbounds nuw i8, ptr %.158140, i64 32
  %i.fi = load i32, ptr %i.fh, align 8
  %i.fj = and i32 %i.fi, 15                       ; 3 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_ZNK4llvm11GlobalValue15isWeakForLinkerEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fl = add nsw i32 %i.fj, -7
  %spec.select.i.i = icmp ult i32 %i.fl, 2
  br i1 %spec.select.i.i, label %_ZNK4llvm11GlobalValue15isWeakForLinkerEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %switch.tableidx192 = add nsw i32 %i.fj, -2     ; 2 uses
  %i.fm = icmp ult i32 %switch.tableidx192, 9
  br i1 %i.fm, label %switch.lookup193, label %_ZNK4llvm11GlobalValue15isWeakForLinkerEv.exit

switch.lookup193:                                 ; preds = %bb.ab
  %i.fn = zext nneg i32 %switch.tableidx192 to i64
  %switch.gep194 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm14RecordStreamer21flushSymverDirectivesEv.1, i64 %i.fn
  %switch.load195 = load i8, ptr %switch.gep194, align 1
  %switch.ext196 = zext i8 %switch.load195 to i32
  br label %_ZNK4llvm11GlobalValue15isWeakForLinkerEv.exit

_ZNK4llvm11GlobalValue15isWeakForLinkerEv.exit:   ; preds = %switch.lookup193, %bb.ab, %bb.aa, %bb.z, %.thread137
  %.1 = phi i32 [ %.053132, %.thread137 ], [ 9, %bb.z ], [ 17, %bb.aa ], [ %switch.ext196, %switch.lookup193 ], [ 0, %bb.ab ] ; 3 uses
  br i1 %spec.select133.in, label %.thread134, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4llvm11GlobalValue15isWeakForLinkerEv.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %.158140, i64 32
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = and i32 %i.fp, 15
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %.thread134, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fs = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %.158140) #16
  %i.ft = xor i1 %i.fs, true
  br label %.thread134

.thread134:                                       ; preds = %bb.ad, %bb.ac, %_ZNK4llvm8MCSymbol7getNameEv.exit73, %bb.y, %_ZNK4llvm11GlobalValue15isWeakForLinkerEv.exit, %switch.lookup
  %.256 = phi i1 [ true, %switch.lookup ], [ %spec.select133.in, %bb.y ], [ true, %_ZNK4llvm11GlobalValue15isWeakForLinkerEv.exit ], [ %spec.select133.in, %_ZNK4llvm8MCSymbol7getNameEv.exit73 ], [ %i.ft, %bb.ad ], [ false, %bb.ac ] ; 2 uses
  %.3 = phi i32 [ %switch.ext, %switch.lookup ], [ %.053132, %bb.y ], [ %.1, %_ZNK4llvm11GlobalValue15isWeakForLinkerEv.exit ], [ %.053132, %_ZNK4llvm8MCSymbol7getNameEv.exit73 ], [ %.1, %bb.ad ], [ %.1, %bb.ac ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0157, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !59 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0157, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !59 ; 2 uses
  %.not151154 = icmp eq ptr %i.fv, %i.fx
  br i1 %.not151154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread134
  %i.fy = select i1 %.256, ptr @.str.2, ptr @.str.1
  %.not63 = icmp eq i32 %.3, 0
  br label %bb.ae

._crit_edge:                                      ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, %.thread134
  %i.fz = getelementptr inbounds nuw i8, ptr %.0157, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.fz, %i.ai
  br i1 %.not, label %._crit_edge160, label %bb.s

bb.ae:                                            ; preds = %.lr.ph, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit
  %.sroa.094.0155 = phi ptr [ %i.fv, %.lr.ph ], [ %i.hx, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.094.0155, i64 16, i1 false), !tbaa.struct !55
  %i.ga = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str, i64 3, i64 noundef 0) #16, !noalias !160 ; 3 uses
  %i.gb = icmp eq i64 %i.ga, -1
  br i1 %i.gb, label %_ZNK4llvm9StringRef5splitES0_.exit.thread, label %_ZNK4llvm9StringRef5splitES0_.exit

_ZNK4llvm9StringRef5splitES0_.exit.thread:        ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %i.am, ptr %6, align 8, !tbaa !96
  store i64 0, ptr %i.an, align 8, !tbaa !97
  store i64 128, ptr %i.ao, align 8, !tbaa !98
  %.sroa.0.0.copyload.pre = load ptr, ptr %5, align 8, !tbaa !52
  %.sroa.2.0.copyload.pre = load i64, ptr %i.al, align 8, !tbaa !53
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread

_ZNK4llvm9StringRef5splitES0_.exit:               ; preds = %bb.ae
  %i.gc = load i64, ptr %i.al, align 8, !tbaa !162, !noalias !160 ; 6 uses
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.ga, i64 %i.gc)
  %i.gd = load ptr, ptr %5, align 8, !tbaa !163, !noalias !160 ; 4 uses
  %i.ge = add i64 %i.ga, 3                        ; 2 uses
  %.sroa.speculated4.i.i = call i64 @llvm.umin.i64(i64 %i.gc, i64 %i.ge) ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sroa.speculated4.i.i ; 2 uses
  %i.gg = sub nuw i64 %i.gc, %.sroa.speculated4.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %i.am, ptr %6, align 8, !tbaa !96
  store i64 0, ptr %i.an, align 8, !tbaa !97
  store i64 128, ptr %i.ao, align 8, !tbaa !98
  %.not152 = icmp ugt i64 %i.gc, %i.ge
  br i1 %.not152, label %_ZNK4llvm9StringRef11starts_withES0_.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %_ZNK4llvm9StringRef5splitES0_.exit
  %lhsc = load i8, ptr %i.gf, align 1
  %i.gh = icmp eq i8 %lhsc, 64
  br i1 %i.gh, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i8 5, ptr %i.ap, align 8, !tbaa !166, !alias.scope !167
  store i8 3, ptr %i.aq, align 1, !tbaa !168, !alias.scope !167
  store ptr %i.gd, ptr %8, align 8, !tbaa !22, !alias.scope !167
  store i64 %.sroa.speculated.i.i, ptr %i.ar, align 8, !tbaa !22, !alias.scope !167
  store ptr %i.fy, ptr %i.as, align 8, !tbaa !22, !alias.scope !167
  store ptr %8, ptr %7, align 8, !alias.scope !169
  store ptr %i.gf, ptr %i.at, align 8, !alias.scope !169
  store i64 %i.gg, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !22, !alias.scope !169
  store i8 2, ptr %i.au, align 8, !tbaa !166, !alias.scope !169
  store i8 5, ptr %i.av, align 1, !tbaa !168, !alias.scope !169
  call void @_ZNK4llvm5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef nonnull align 8 dereferenceable(24) %6) #16
  %i.gi = load ptr, ptr %6, align 8, !tbaa !96    ; 2 uses
  %i.gj = load i64, ptr %i.an, align 8, !tbaa !97 ; 2 uses
  store ptr %i.gi, ptr %5, align 8, !tbaa !52
  store i64 %i.gj, ptr %i.al, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef5splitES0_.exit.thread, %_ZN4llvmplERKNS_5TwineES2_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZNK4llvm9StringRef5splitES0_.exit
  %.sroa.2.0.copyload = phi i64 [ %.sroa.2.0.copyload.pre, %_ZNK4llvm9StringRef5splitES0_.exit.thread ], [ %i.gj, %_ZN4llvmplERKNS_5TwineES2_.exit ], [ %i.gc, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ %i.gc, %_ZNK4llvm9StringRef5splitES0_.exit ]
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload.pre, %_ZNK4llvm9StringRef5splitES0_.exit.thread ], [ %i.gi, %_ZN4llvmplERKNS_5TwineES2_.exit ], [ %i.gd, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ %i.gd, %_ZNK4llvm9StringRef5splitES0_.exit ]
  %i.gk = load ptr, ptr %i.aw, align 8, !tbaa !170, !nonnull !147, !align !148
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i8 5, ptr %i.ax, align 8, !tbaa !166
  store i8 1, ptr %i.ay, align 1, !tbaa !168
  store ptr %.sroa.0.0.copyload, ptr %9, align 8, !tbaa !22
  store i64 %.sroa.2.0.copyload, ptr %i.az, align 8, !tbaa !22
  %i.gl = call noundef ptr @_ZN4llvm9MCContext17getOrCreateSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.gk, ptr noundef nonnull align 8 dereferenceable(34) %9) #16 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.gm = load ptr, ptr %i.aw, align 8, !tbaa !170, !nonnull !147, !align !148
  %i.gn = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.dn, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.gm, ptr null) #16
  br i1 %.256, label %bb.af, label %_ZN4llvm14RecordStreamer11markDefinedERKNS_8MCSymbolE.exit

bb.af:                                            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gp = load i32, ptr %i.go, align 8
  %i.gq = and i32 %i.gp, 4
  %.not.i.i83 = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i83, label %_ZNK4llvm8MCSymbol7getNameEv.exit.i84, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 -8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !12 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !15
  br label %_ZNK4llvm8MCSymbol7getNameEv.exit.i84

_ZNK4llvm8MCSymbol7getNameEv.exit.i84:            ; preds = %bb.ag, %bb.af
  %.sroa.0.0.i.i85 = phi ptr [ %i.gt, %bb.ag ], [ null, %bb.af ] ; 3 uses
  %.sroa.4.0.i.i86 = phi i64 [ %i.gu, %bb.ag ], [ 0, %bb.af ] ; 7 uses
  %i.gv = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.0.0.i.i85, i64 %.sroa.4.0.i.i86) #16
  %i.gw = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.aj, ptr %.sroa.0.0.i.i85, i64 %.sroa.4.0.i.i86, i32 noundef %i.gv) #16 ; 2 uses
  %i.gx = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.gy = zext i32 %i.gw to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gy ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i, label %bb.ah, label %_ZN4llvm9StringMapINS_14RecordStreamer5StateENS_15MallocAllocatorEEixENS_9StringRefE.exit.i

bb.ah:                                            ; preds = %_ZNK4llvm8MCSymbol7getNameEv.exit.i84
  %i.hb = add i64 %.sroa.4.0.i.i86, 17
  %i.hc = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.hb, i64 noundef 8) #16 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.i.i86, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm14StringMapEntryINS_14RecordStreamer5StateEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hd, ptr align 1 %.sroa.0.0.i.i85, i64 %.sroa.4.0.i.i86, i1 false)
  br label %_ZN4llvm14StringMapEntryINS_14RecordStreamer5StateEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i.i

_ZN4llvm14StringMapEntryINS_14RecordStreamer5StateEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.sroa.4.0.i.i86
  store i8 0, ptr %i.he, align 1, !tbaa !22
  store i64 %.sroa.4.0.i.i86, ptr %i.hc, align 8, !tbaa !15
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i32 0, ptr %i.hf, align 8, !tbaa !25
  store ptr %i.hc, ptr %i.gz, align 8, !tbaa !21
  %i.hg = load i32, ptr %i.ba, align 4, !tbaa !26
  %i.hh = add i32 %i.hg, 1
  store i32 %i.hh, ptr %i.ba, align 4, !tbaa !26
  %i.hi = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.aj, i32 noundef %i.gw) #16
  %i.hj = load ptr, ptr %i.aj, align 8, !tbaa !19
  %i.hk = zext i32 %i.hi to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hk
  %.pre.i.i = load ptr, ptr %i.hl, align 8, !tbaa !21
  br label %_ZN4llvm9StringMapINS_14RecordStreamer5StateENS_15MallocAllocatorEEixENS_9StringRefE.exit.i

_ZN4llvm9StringMapINS_14RecordStreamer5StateENS_15MallocAllocatorEEixENS_9StringRefE.exit.i: ; preds = %_ZN4llvm14StringMapEntryINS_14RecordStreamer5StateEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i.i, %_ZNK4llvm8MCSymbol7getNameEv.exit.i84
  %i.hm = phi ptr [ %.pre.i.i, %_ZN4llvm14StringMapEntryINS_14RecordStreamer5StateEE6createINS_15MallocAllocatorEJEEEPS3_NS_9StringRefERT_DpOT0_.exit.i.i.i.i ], [ %i.ha, %_ZNK4llvm8MCSymbol7getNameEv.exit.i84 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !27 ; 3 uses
  %i.hp = icmp ult i32 %i.ho, 7
  %switch.maskindex199 = trunc i32 %i.ho to i8
  %switch.shifted200 = lshr i8 111, %switch.maskindex199
  %switch.lobit201 = trunc i8 %switch.shifted200 to i1
  %or.cond205 = select i1 %i.hp, i1 %switch.lobit201, i1 false
  br i1 %or.cond205, label %switch.lookup198, label %_ZN4llvm14RecordStreamer11markDefinedERKNS_8MCSymbolE.exit

switch.lookup198:                                 ; preds = %_ZN4llvm9StringMapINS_14RecordStreamer5StateENS_15MallocAllocatorEEixENS_9StringRefE.exit.i
  %i.hq = zext nneg i32 %i.ho to i64
  %switch.gep202 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvm14RecordStreamer21flushSymverDirectivesEv.2, i64 %i.hq
  %switch.load203 = load i8, ptr %switch.gep202, align 1
  %switch.ext204 = zext i8 %switch.load203 to i32
  store i32 %switch.ext204, ptr %i.hn, align 4, !tbaa !27
  br label %_ZN4llvm14RecordStreamer11markDefinedERKNS_8MCSymbolE.exit

_ZN4llvm14RecordStreamer11markDefinedERKNS_8MCSymbolE.exit: ; preds = %_ZN4llvm9StringMapINS_14RecordStreamer5StateENS_15MallocAllocatorEEixENS_9StringRefE.exit.i, %switch.lookup198, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  call void @_ZN4llvm10MCStreamer14emitAssignmentEPNS_8MCSymbolEPKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %i.gl, ptr noundef %i.gn) #16
  br i1 %.not63, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm14RecordStreamer11markDefinedERKNS_8MCSymbolE.exit
  %i.hr = load ptr, ptr %0, align 8, !tbaa !29
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 288
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = call noundef zeroext i1 %i.ht(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef %i.gl, i32 noundef %.3) #16 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN4llvm14RecordStreamer11markDefinedERKNS_8MCSymbolE.exit
  %i.hv = load ptr, ptr %6, align 8, !tbaa !96    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.am
  br i1 %i.hw, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef %i.hv) #16
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.094.0155, i64 16 ; 2 uses
  %.not151 = icmp eq ptr %i.hx, %i.fx
  br i1 %.not151, label %._crit_edge, label %bb.ae
}

declare void @_ZNK4llvm6Module13global_valuesEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.264") align 8, ptr noundef nonnull align 8 dereferenceable(1288)) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZNK4llvm7Mangler17getNameWithPrefixERNS_15SmallVectorImplIcEEPKNS_11GlobalValueEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

end_hunk_0

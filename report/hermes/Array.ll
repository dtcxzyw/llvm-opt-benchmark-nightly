Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Array?download=true
inline.NumInlined: 3514
inline.NumDeleted: 769
begin_hunk_0_@_ZN6hermes2vm20arrayPrototypeSpliceEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a

_ZN6hermes2vm11TwineChar16C2EPKc.exit218:         ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.ch, align 8, !tbaa !69
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 33, ptr %i.ci, align 8, !tbaa !70
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.cj, align 8, !tbaa !71
  store ptr @.str.4, ptr %5, align 8, !tbaa !72
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.ck, align 8, !tbaa !73
  %i.cl = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.bk

.thread478:                                       ; preds = %.thread, %bb.q
  %.0193477480 = phi i64 [ %.0193, %bb.q ], [ 0, %.thread ] ; 5 uses
  %i.cm = phi double [ %i.bw, %bb.q ], [ 0.000000e+00, %.thread ] ; 8 uses
  %i.cn = trunc nuw nsw i64 %.0193477480 to i32   ; 3 uses
  %i.co = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.cn, i32 noundef %i.cn) #9 ; 7 uses
  %.not403 = icmp eq ptr %i.co, inttoptr (i64 -1 to ptr)
  br i1 %.not403, label %bb.bk, label %bb.r, !prof !32

bb.r:                                             ; preds = %.thread478
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !42  ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 192 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !51 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 200
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !52 ; 2 uses
  %i.cu = icmp ult ptr %i.cr, %i.ct
  br i1 %i.cu, label %bb.s, label %bb.t, !prof !53

bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !51
  store i64 -1688849860263936, ptr %i.cr, align 8, !tbaa !54
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.t:                                             ; preds = %bb.r
  %i.cw = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cp, i64 -1688849860263936) #9
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre427 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !51
  %.phi.trans.insert428 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre429 = load ptr, ptr %.phi.trans.insert428, align 8, !tbaa !52
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.s, %bb.t
  %i.cx = phi ptr [ %i.ct, %bb.s ], [ %.pre429, %bb.t ]
  %i.cy = phi ptr [ %i.cv, %bb.s ], [ %.pre427, %bb.t ] ; 4 uses
  %i.cz = phi ptr [ %i.cp, %bb.s ], [ %.pre, %bb.t ] ; 3 uses
  %.0.i.i.i.i.i.i219 = phi ptr [ %i.cr, %bb.s ], [ %i.cw, %bb.t ] ; 9 uses
  %i.da = icmp ult ptr %i.cy, %i.cx
  br i1 %i.da, label %bb.u, label %bb.v, !prof !53

bb.u:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 192
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !51
  store i64 -1688849860263936, ptr %i.cy, align 8, !tbaa !54
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit221

bb.v:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.dd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cz, i64 -1688849860263936) #9
  %.pre430 = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit221

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit221: ; preds = %bb.u, %bb.v
  %i.de = phi ptr [ %i.cz, %bb.u ], [ %.pre430, %bb.v ] ; 4 uses
  %.0.i.i.i.i.i.i220 = phi ptr [ %i.cy, %bb.u ], [ %i.dd, %bb.v ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 192 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !51 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 200
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !52
  %i.dj = icmp ult ptr %i.dg, %i.di
  br i1 %i.dj, label %bb.w, label %bb.x, !prof !53

bb.w:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit221
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %i.dk, ptr %i.df, align 8, !tbaa !51
  store i64 -1266636858327041, ptr %i.dg, align 8, !tbaa !54
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.x:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit221
  %i.dl = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.de, i64 -1266636858327041) #9
  %.pre431 = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.w, %bb.x
  %i.dm = phi ptr [ %i.de, %bb.w ], [ %.pre431, %bb.x ] ; 4 uses
  %.0.i.i.i.i.i.i222 = phi ptr [ %i.dg, %bb.w ], [ %i.dl, %bb.x ]
  store ptr %.0.i.i.i.i.i.i222, ptr %6, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 192 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !51 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 200
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !52 ; 2 uses
  %i.dr = icmp ult ptr %i.do, %i.dq
  br i1 %i.dr, label %bb.y, label %bb.z, !prof !53

bb.y:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !51
  store i64 -281474976710656, ptr %i.do, align 8, !tbaa !54
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.z:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.dt = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dm, i64 -281474976710656) #9
  %.pre432 = load ptr, ptr %i.b, align 8, !tbaa !42 ; 3 uses
  %.phi.trans.insert433 = getelementptr inbounds nuw i8, ptr %.pre432, i64 192
  %.pre434 = load ptr, ptr %.phi.trans.insert433, align 8, !tbaa !51
  %.phi.trans.insert435 = getelementptr inbounds nuw i8, ptr %.pre432, i64 200
  %.pre436 = load ptr, ptr %.phi.trans.insert435, align 8, !tbaa !52
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.y, %bb.z
  %i.du = phi ptr [ %i.dq, %bb.y ], [ %.pre436, %bb.z ] ; 2 uses
  %i.dv = phi ptr [ %i.ds, %bb.y ], [ %.pre434, %bb.z ] ; 4 uses
  %i.dw = phi ptr [ %i.dm, %bb.y ], [ %.pre432, %bb.z ] ; 3 uses
  %.0.i.i.i.i.i.i223 = phi ptr [ %i.do, %bb.y ], [ %i.dt, %bb.z ]
  store ptr %.0.i.i.i.i.i.i223, ptr %7, align 8, !tbaa !91
  %i.dx = icmp ult ptr %i.dv, %i.du
  br i1 %i.dx, label %bb.aa, label %bb.ab, !prof !53

bb.aa:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 192
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  store ptr %i.dz, ptr %i.dy, align 8, !tbaa !51
  store i64 -1688849860263936, ptr %i.dv, align 8, !tbaa !54
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit225

bb.ab:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ea = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dw, i64 -1688849860263936) #9
  %.pre437 = load ptr, ptr %i.b, align 8, !tbaa !42 ; 3 uses
  %.phi.trans.insert438 = getelementptr inbounds nuw i8, ptr %.pre437, i64 192
  %.pre439 = load ptr, ptr %.phi.trans.insert438, align 8, !tbaa !51
  %.phi.trans.insert440 = getelementptr inbounds nuw i8, ptr %.pre437, i64 200
  %.pre441 = load ptr, ptr %.phi.trans.insert440, align 8, !tbaa !52
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit225

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit225: ; preds = %bb.aa, %bb.ab
  %i.eb = phi ptr [ %i.du, %bb.aa ], [ %.pre441, %bb.ab ] ; 2 uses
  %i.ec = phi ptr [ %i.dz, %bb.aa ], [ %.pre439, %bb.ab ] ; 4 uses
  %i.ed = phi ptr [ %i.dw, %bb.aa ], [ %.pre437, %bb.ab ] ; 3 uses
  %.0.i.i.i.i.i.i224 = phi ptr [ %i.dv, %bb.aa ], [ %i.ea, %bb.ab ] ; 6 uses
  %i.ee = icmp ult ptr %i.ec, %i.eb
  br i1 %i.ee, label %bb.ac, label %bb.ad, !prof !53

bb.ac:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit225
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 192
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !51
  store i64 -1688849860263936, ptr %i.ec, align 8, !tbaa !54
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit227

bb.ad:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit225
  %i.eh = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ed, i64 -1688849860263936) #9
  %.pre442 = load ptr, ptr %i.b, align 8, !tbaa !42 ; 3 uses
  %.phi.trans.insert443 = getelementptr inbounds nuw i8, ptr %.pre442, i64 192
  %.pre444 = load ptr, ptr %.phi.trans.insert443, align 8, !tbaa !51
  %.phi.trans.insert445 = getelementptr inbounds nuw i8, ptr %.pre442, i64 200
  %.pre446 = load ptr, ptr %.phi.trans.insert445, align 8, !tbaa !52
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit227

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit227: ; preds = %bb.ac, %bb.ad
  %i.ei = phi ptr [ %i.eb, %bb.ac ], [ %.pre446, %bb.ad ]
  %i.ej = phi ptr [ %i.eg, %bb.ac ], [ %.pre444, %bb.ad ] ; 4 uses
  %i.ek = phi ptr [ %i.ed, %bb.ac ], [ %.pre442, %bb.ad ] ; 2 uses
  %.0.i.i.i.i.i.i226 = phi ptr [ %i.ec, %bb.ac ], [ %i.eh, %bb.ad ] ; 4 uses
  %i.el = icmp ult ptr %i.ej, %i.ei
  br i1 %i.el, label %bb.ae, label %bb.af, !prof !53

bb.ae:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit227
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 192
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.en, ptr %i.em, align 8, !tbaa !51
  store i64 -1688849860263936, ptr %i.ej, align 8, !tbaa !54
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit229

bb.af:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit227
  %i.eo = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ek, i64 -1688849860263936) #9
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit229

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit229: ; preds = %bb.ae, %bb.af
  %.0.i.i.i.i.i.i228 = phi ptr [ %i.ej, %bb.ae ], [ %i.eo, %bb.af ] ; 4 uses
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !51  ; 5 uses
  %i.eq = load i32, ptr %i.k, align 8, !tbaa !60  ; 10 uses
  %.not414.not = icmp eq i64 %.0193477480, 0
  br i1 %.not414.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit229
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.es = zext i32 %i.eq to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.aj
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aj ] ; 2 uses
  %i.et = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.eu = uitofp i32 %i.et to double
  %i.ev = fadd double %i.bf, %i.eu
  store double %i.ev, ptr %.0.i.i.i.i.i.i219, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store i32 0, ptr %8, align 8, !tbaa !72
  store i32 -1, ptr %i.er, align 4, !tbaa !115
  %i.ew = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i219, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %8) #9 ; 0 uses
  %.sroa.089.0.copyload = load ptr, ptr %7, align 8
  %.sroa.088.0.copyload = load i64, ptr %8, align 8
  %i.ex = call { i32, i64 } @_ZN6hermes2vm8JSObject28getComputedPropertyValue_RJSENS0_6HandleIS1_EERNS0_7RuntimeES3_RNS0_13MutableHandleINS0_8SymbolIDEEENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.089.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %.sroa.088.0.copyload, ptr nonnull %.0.i.i.i.i.i.i219) #9 ; 2 uses
  %i.ey = extractvalue { i32, i64 } %i.ex, 0
  %i.ez = extractvalue { i32, i64 } %i.ex, 1      ; 2 uses
  %i.fa = icmp eq i32 %i.ey, 0
  br i1 %i.fa, label %bb.ak, label %bb.ah, !prof !32

bb.ah:                                            ; preds = %bb.ag
  %.mask.i = and i64 %i.ez, -140737488355328
  %i.fb = icmp eq i64 %.mask.i, -1970324836974592
  br i1 %i.fb, label %bb.aj, label %bb.ai, !prof !32

bb.ai:                                            ; preds = %bb.ah
  store i64 %i.ez, ptr %.0.i.i.i.i.i.i224, align 8, !tbaa !35
  %i.fc = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.co, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.et, ptr nonnull %.0.i.i.i.i.i.i224) #9 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.es
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !61
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 128
  store i32 %i.eq, ptr %i.k, align 8, !tbaa !60
  store ptr %i.fg, ptr %i.j, align 8, !tbaa !52
  store ptr %i.ep, ptr %i.i, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %.not = icmp ugt i64 %.0193477480, %indvars.iv.next
  br i1 %.not, label %bb.ag, label %.critedge, !llvm.loop !273

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %.loopexit

.critedge:                                        ; preds = %bb.aj, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit229
  %i.fh = uitofp nneg i32 %i.cn to double         ; 2 uses
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 192 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !51 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 200
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !52
  %i.fn = icmp ult ptr %i.fk, %i.fm
  br i1 %i.fn, label %bb.al, label %bb.am, !prof !53

bb.al:                                            ; preds = %.critedge
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fo, ptr %i.fj, align 8, !tbaa !51
  store double %i.fh, ptr %i.fk, align 8, !tbaa !54
  br label %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit

bb.am:                                            ; preds = %.critedge
  %i.fp = bitcast double %i.fh to i64
  %i.fq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.fi, i64 %i.fp) #9
  br label %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit

_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit: ; preds = %bb.al, %bb.am
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.fk, %bb.al ], [ %i.fq, %bb.am ]
  %i.fr = call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %i.co, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i, ptr %i.co, i32 0) #9
  %.mask = and i32 %i.fr, 255
  %i.fs = icmp eq i32 %.mask, 0
  br i1 %i.fs, label %.loopexit, label %bb.an, !prof !32

bb.an:                                            ; preds = %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 192 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !51 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 200
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !52
  %i.fy = icmp ult ptr %i.fv, %i.fx
  br i1 %i.fy, label %bb.ao, label %bb.ap, !prof !53

bb.ao:                                            ; preds = %bb.an
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fz, ptr %i.fu, align 8, !tbaa !51
  store double %i.cm, ptr %i.fv, align 8, !tbaa !54
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.ap:                                            ; preds = %bb.an
  %i.ga = bitcast double %i.cm to i64
  %i.gb = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ft, i64 %i.ga) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.ao, %bb.ap
  %.0.i.i.i.i.i.i231 = phi ptr [ %i.fv, %bb.ao ], [ %i.gb, %bb.ap ]
  %i.gc = call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %i.co, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i231, ptr %i.co, i32 1) #9
  %.mask404 = and i32 %i.gc, 255
  %i.gd = icmp eq i32 %.mask404, 0
  br i1 %i.gd, label %.loopexit, label %bb.aq, !prof !32

bb.aq:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.ge = load i32, ptr %i.aq, align 8, !tbaa !113
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %i.ge, i32 2) ; 4 uses
  %i.gf = zext i32 %spec.select to i64            ; 2 uses
  %i.gg = icmp samesign ugt i64 %.0193477480, %i.gf
  br i1 %i.gg, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %bb.aq
  %i.gh = fsub double %i.ap, %i.cm                ; 2 uses
  %i.gi = fcmp uge double %i.bf, %i.gh
  %.pre447 = uitofp i32 %spec.select to double    ; 2 uses
  br i1 %i.gi, label %.critedge205, label %.lr.ph419

.lr.ph419:                                        ; preds = %.preheader
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.gk = zext i32 %i.eq to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph419, %bb.av
  %.0196418 = phi double [ %i.bf, %.lr.ph419 ], [ %i.hf, %bb.av ] ; 3 uses
  %i.gl = fadd double %.0196418, %i.cm            ; 2 uses
  %i.gm = fcmp uno double %i.gl, 0.000000e+00
  %i.gn = bitcast double %i.gl to i64
  %spec.select.i = select i1 %i.gm, i64 9221120237041090560, i64 %i.gn, !prof !32
  store i64 %spec.select.i, ptr %.0.i.i.i.i.i.i219, align 8, !tbaa !35
  %i.go = fadd double %.0196418, %.pre447         ; 2 uses
  %i.gp = fcmp uno double %i.go, 0.000000e+00
  %i.gq = bitcast double %i.go to i64
  %spec.select.i232 = select i1 %i.gp, i64 9221120237041090560, i64 %i.gq, !prof !32
  store i64 %spec.select.i232, ptr %.0.i.i.i.i.i.i220, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  store i32 0, ptr %9, align 8, !tbaa !72
  store i32 -1, ptr %i.gj, align 4, !tbaa !115
  %i.gr = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i219, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %9) #9 ; 0 uses
  %.sroa.062.0.copyload = load ptr, ptr %7, align 8
  %.sroa.061.0.copyload = load i64, ptr %9, align 8
  %i.gs = call { i32, i64 } @_ZN6hermes2vm8JSObject28getComputedPropertyValue_RJSENS0_6HandleIS1_EERNS0_7RuntimeES3_RNS0_13MutableHandleINS0_8SymbolIDEEENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.062.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %.sroa.061.0.copyload, ptr nonnull %.0.i.i.i.i.i.i219) #9 ; 2 uses
  %i.gt = extractvalue { i32, i64 } %i.gs, 0
  %i.gu = extractvalue { i32, i64 } %i.gs, 1      ; 2 uses
  %i.gv = icmp eq i32 %i.gt, 0
  br i1 %i.gv, label %.critedge203, label %bb.as, !prof !32

bb.as:                                            ; preds = %bb.ar
  %.mask.i233 = and i64 %i.gu, -140737488355328
  %i.gw = icmp eq i64 %.mask.i233, -1970324836974592
  br i1 %i.gw, label %bb.au, label %bb.at, !prof !32

bb.at:                                            ; preds = %bb.as
  store i64 %i.gu, ptr %.0.i.i.i.i.i.i224, align 8, !tbaa !35
  %i.gx = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i220, ptr nonnull %.0.i.i.i.i.i.i224, ptr %.0.i.i.i.i.i.i, i32 1) #9
  %.mask407 = and i32 %i.gx, 255
  %i.gy = icmp eq i32 %.mask407, 0
  br i1 %i.gy, label %.critedge203, label %bb.av, !prof !32

bb.au:                                            ; preds = %bb.as
  %i.gz = call i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i220, i32 1) #9
  %.mask408 = and i32 %i.gz, 255
  %i.ha = icmp eq i32 %.mask408, 0
  br i1 %i.ha, label %.critedge203, label %bb.av, !prof !32

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hb = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gk
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !61
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 128
  store i32 %i.eq, ptr %i.k, align 8, !tbaa !60
  store ptr %i.he, ptr %i.j, align 8, !tbaa !52
  store ptr %i.ep, ptr %i.i, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %i.hf = fadd double %.0196418, 1.000000e+00     ; 2 uses
  %i.hg = fcmp uge double %i.hf, %i.gh
  br i1 %i.hg, label %.critedge205, label %bb.ar, !llvm.loop !274

.critedge203:                                     ; preds = %bb.au, %bb.at, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %.loopexit

.critedge205:                                     ; preds = %bb.av, %.preheader
  %i.hh = fadd double %i.ap, -1.000000e+00        ; 2 uses
  store double %i.hh, ptr %.0.i.i.i.i.i.i226, align 8, !tbaa !35
  %i.hi = fsub double %i.ap, %i.cm
  %i.hj = fadd double %i.hi, %.pre447
  %i.hk = fadd double %i.hj, -1.000000e+00        ; 2 uses
  %i.hl = fcmp olt double %i.hk, %i.hh
  br i1 %i.hl, label %.lr.ph420, label %.critedge209

.lr.ph420:                                        ; preds = %.critedge205
  %i.hm = zext i32 %i.eq to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph420, %bb.ax
  %i.hn = call i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i226, i32 1) #9
  %.mask411 = and i32 %i.hn, 255
  %i.ho = icmp eq i32 %.mask411, 0
  br i1 %i.ho, label %.loopexit, label %bb.ax, !prof !32

bb.ax:                                            ; preds = %bb.aw
  %i.hp = load double, ptr %.0.i.i.i.i.i.i226, align 8, !tbaa !35
  %i.hq = fadd double %i.hp, -1.000000e+00        ; 2 uses
  %i.hr = fcmp uno double %i.hq, 0.000000e+00
  %i.hs = bitcast double %i.hq to i64
  %spec.select.i258 = select i1 %i.hr, i64 9221120237041090560, i64 %i.hs, !prof !32 ; 2 uses
  store i64 %spec.select.i258, ptr %.0.i.i.i.i.i.i226, align 8, !tbaa !35
  %i.ht = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hm
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !61
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 128
  store i32 %i.eq, ptr %i.k, align 8, !tbaa !60
  store ptr %i.hw, ptr %i.j, align 8, !tbaa !52
  store ptr %i.ep, ptr %i.i, align 8, !tbaa !51
  %i.hx = bitcast i64 %spec.select.i258 to double
  %i.hy = fcmp olt double %i.hk, %i.hx
  br i1 %i.hy, label %bb.aw, label %.critedge209, !llvm.loop !275

bb.ay:                                            ; preds = %bb.aq
  %i.hz = icmp samesign ult i64 %.0193477480, %i.gf
  br i1 %i.hz, label %bb.az, label %.critedge209

bb.az:                                            ; preds = %bb.ay
  %i.ia = fsub double %i.ap, %i.cm                ; 2 uses
  %i.ib = fcmp ule double %i.ia, %i.bf
  br i1 %i.ib, label %.critedge209, label %.lr.ph417

.lr.ph417:                                        ; preds = %bb.az
  %i.ic = uitofp i32 %spec.select to double
  %i.id = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ie = zext i32 %i.eq to i64
  %i.if = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %i.ic, i64 1
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph417, %bb.be
  %.0197416 = phi double [ %i.ia, %.lr.ph417 ], [ %i.je, %bb.be ] ; 2 uses
  %i.ih = insertelement <2 x double> poison, double %.0197416, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = fadd <2 x double> %i.ii, %i.ig
  %i.ik = fadd <2 x double> %i.ij, splat (double -1.000000e+00) ; 2 uses
  %i.il = fcmp uno <2 x double> %i.ik, zeroinitializer
  %i.im = bitcast <2 x double> %i.ik to <2 x i64>
end_hunk_0

inline.NumInlined: 7007
inline.NumDeleted: 1773
begin_hunk_0_@_ZN2v88internal7Genesis17InitializeConsoleENS0_12DirectHandleINS0_8JSObjectEEE:bb.a
  %.not.i.i = icmp eq i32 %i.as, 0
  %i.at = load atomic volatile i32, ptr %i.ao monotonic, align 4
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 31                        ; 4 uses
  %i.aw = add i64 %i.am, 23
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i64, ptr %i.ax acquire, align 8 ; 4 uses
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %_ZN2v88internal6HandleINS0_14JSGlobalObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ba = add nsw i64 %i.ay, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i64, ptr %i.bb monotonic, align 8
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2
  %i.bg = icmp eq i16 %i.bf, 284
  br i1 %i.bg, label %bb.d, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i64 %i.ay, ptr %2, align 8
  %i.bh = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %_ZN2v88internal6HandleINS0_14JSGlobalObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.bi = icmp ne i64 %i.ay, 0
  br label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i

_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, %bb.d
  %.0.i.i.i73 = phi i1 [ %i.bh, %bb.d ], [ %i.bi, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i ]
  %i.bj = add nsw i8 %i.av, -3
  %i.bk = icmp ult i8 %i.bj, 4
  br i1 %i.bk, label %_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i
  %i.bl = add nsw i8 %i.av, -16
  %i.bm = icmp ult i8 %i.bl, 6
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = icmp samesign ult i8 %i.av, 19
  %i.bo = select i1 %i.bn, i32 228, i32 226
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %switch.tableidx = add nsw i8 %i.av, -2         ; 3 uses
  %i.bp = icmp ult i8 %switch.tableidx, 24
  br i1 %i.bp, label %switch.hole_check, label %bb.h

bb.h:                                             ; preds = %switch.hole_check, %bb.g
  %i.bq = select i1 %.not.i.i, i32 215, i32 219
  br label %bb.i

switch.hole_check:                                ; preds = %bb.g
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 15744993, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.br = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal12_GLOBAL__N_134CreateSharedFunctionInfoForBuiltinEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS0_7BuiltinEiNS0_14AdaptArgumentsE, i64 %i.br
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.i

bb.i:                                             ; preds = %switch.lookup, %bb.h, %bb.f
  %.011.i.i.i = phi i32 [ %i.bo, %bb.f ], [ %i.bq, %bb.h ], [ %switch.ext, %switch.lookup ]
  %i.bs = xor i1 %.0.i.i.i73, true
  %i.bt = zext i1 %i.bs to i32
  %i.bu = add nuw nsw i32 %.011.i.i.i, %i.bt
  %i.bv = shl nuw nsw i32 %i.bu, 14
  %i.bw = add nsw i32 %i.bv, -3522560
  br label %_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit

_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i, %bb.i
  %.0.i1.i.i = phi i32 [ %i.bw, %bb.i ], [ 245760, %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i ]
  %i.bx = load atomic volatile i32, ptr %i.ao monotonic, align 4
  %i.by = and i32 %i.bx, -507905
  %i.bz = or i32 %i.by, %.0.i1.i.i
  store atomic volatile i32 %i.bz, ptr %i.ao monotonic, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ca = load ptr, ptr %0, align 8
  call void @_ZN2v88internal7Factory17JSFunctionBuilderC1EPNS0_7IsolateENS0_12DirectHandleINS0_18SharedFunctionInfoEEENS5_INS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ca, ptr nonnull %i.al, ptr nonnull %.0.i.i.i) #24
  %i.cb = call ptr @_ZN2v88internal7Factory17JSFunctionBuilder5BuildEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.cc = load ptr, ptr %0, align 8               ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 344
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cd, align 8
  %i.ce = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load atomic volatile i64, ptr %i.cf monotonic, align 8
  %i.ch = add i64 %i.cg, 31
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = add i64 %i.cj, 1375
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = load atomic volatile i64, ptr %i.cl monotonic, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 560 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 568
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = icmp eq ptr %i.co, %i.cq
  br i1 %i.cr, label %bb.j, label %bb.k, !prof !5

bb.j:                                             ; preds = %_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit
  %i.cs = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %i.cc) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit
  %.0.i.i.i74 = phi ptr [ %i.cs, %bb.j ], [ %i.co, %_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit ] ; 3 uses
  %i.ct = ptrtoint ptr %.0.i.i.i74 to i64
  %i.cu = add i64 %i.ct, 8
  %i.cv = inttoptr i64 %i.cu to ptr
  store ptr %i.cv, ptr %i.cn, align 8
  store i64 %i.cm, ptr %.0.i.i.i74, align 8
  %i.cw = call ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr nonnull %.0.i.i.i74, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  %i.cx = load ptr, ptr %0, align 8
  call void @_ZN2v88internal10JSFunction12SetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEE(ptr noundef %i.cx, ptr %i.cb, ptr %i.cw) #24
  %i.cy = call ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr %i.cb, i8 noundef zeroext 1, i8 noundef zeroext 0) #24 ; 26 uses
  %i.cz = load ptr, ptr %0, align 8
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef %i.cz, ptr %1, ptr nonnull %i.j, ptr %i.cy, i32 noundef 2) #24
  %i.da = load ptr, ptr %0, align 8
  call void @_ZN2v88internal8JSObject11AddPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr noundef %i.da, ptr nonnull %.0.i.i, ptr nonnull %i.j, ptr %i.cy, i32 noundef 2) #24
  %i.db = load ptr, ptr %0, align 8
  %i.dc = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.db, ptr %i.cy, ptr noundef nonnull @.str.488, i32 noundef 291, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dd = load ptr, ptr %0, align 8
  %i.de = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.dd, ptr %i.cy, ptr noundef nonnull @.str.489, i32 noundef 292, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.df = load ptr, ptr %0, align 8
  %i.dg = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.df, ptr %i.cy, ptr noundef nonnull @.str.490, i32 noundef 293, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dh = load ptr, ptr %0, align 8
  %i.di = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.dh, ptr %i.cy, ptr noundef nonnull @.str.300, i32 noundef 294, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dj = load ptr, ptr %0, align 8
  %i.dk = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.dj, ptr %i.cy, ptr noundef nonnull @.str.491, i32 noundef 295, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dl = load ptr, ptr %0, align 8
  %i.dm = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.dl, ptr %i.cy, ptr noundef nonnull @.str.492, i32 noundef 296, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dn = load ptr, ptr %0, align 8
  %i.do = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.dn, ptr %i.cy, ptr noundef nonnull @.str.493, i32 noundef 297, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dp = load ptr, ptr %0, align 8
  %i.dq = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.dp, ptr %i.cy, ptr noundef nonnull @.str.494, i32 noundef 298, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dr = load ptr, ptr %0, align 8
  %i.ds = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.dr, ptr %i.cy, ptr noundef nonnull @.str.495, i32 noundef 299, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dt = load ptr, ptr %0, align 8
  %i.du = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.dt, ptr %i.cy, ptr noundef nonnull @.str.496, i32 noundef 300, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dv = load ptr, ptr %0, align 8
  %i.dw = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.dv, ptr %i.cy, ptr noundef nonnull @.str.497, i32 noundef 301, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dx = load ptr, ptr %0, align 8
  %i.dy = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.dx, ptr %i.cy, ptr noundef nonnull @.str.498, i32 noundef 302, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.dz = load ptr, ptr %0, align 8
  %i.ea = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.dz, ptr %i.cy, ptr noundef nonnull @.str.425, i32 noundef 303, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eb = load ptr, ptr %0, align 8
  %i.ec = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.eb, ptr %i.cy, ptr noundef nonnull @.str.499, i32 noundef 304, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ed = load ptr, ptr %0, align 8
  %i.ee = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.ed, ptr %i.cy, ptr noundef nonnull @.str.500, i32 noundef 305, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ef = load ptr, ptr %0, align 8
  %i.eg = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.ef, ptr %i.cy, ptr noundef nonnull @.str.501, i32 noundef 962, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.eh = load ptr, ptr %0, align 8
  %i.ei = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.eh, ptr %i.cy, ptr noundef nonnull @.str.502, i32 noundef 307, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ej = load ptr, ptr %0, align 8
  %i.ek = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.ej, ptr %i.cy, ptr noundef nonnull @.str.503, i32 noundef 308, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.el = load ptr, ptr %0, align 8
  %i.em = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.el, ptr %i.cy, ptr noundef nonnull @.str.504, i32 noundef 309, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.en = load ptr, ptr %0, align 8
  %i.eo = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.en, ptr %i.cy, ptr noundef nonnull @.str.505, i32 noundef 310, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ep = load ptr, ptr %0, align 8
  %i.eq = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.ep, ptr %i.cy, ptr noundef nonnull @.str.506, i32 noundef 311, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.er = load ptr, ptr %0, align 8
  %i.es = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.er, ptr %i.cy, ptr noundef nonnull @.str.507, i32 noundef 312, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.et = load ptr, ptr %0, align 8
  %i.eu = call ptr @_ZN2v88internal21SimpleInstallFunctionEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEPKcNS0_7BuiltinEiNS0_14AdaptArgumentsENS0_18PropertyAttributesE(ptr noundef %i.et, ptr %i.cy, ptr noundef nonnull @.str.508, i32 noundef 313, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ev = load ptr, ptr %0, align 8               ; 2 uses
  %i.ew = call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ev, ptr nonnull @.str.509, i64 7) #24
  call fastcc void @_ZN2v88internal12_GLOBAL__N_118InstallToStringTagEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS4_INS0_6StringEEE(ptr noundef nonnull %i.ev, ptr %i.cy, ptr %i.ew)
  store ptr %i.c, ptr %i.b, align 8
  %i.ex = load i32, ptr %i.f, align 8
  %i.ey = add nsw i32 %i.ex, -1
  store i32 %i.ey, ptr %i.f, align 8
  %i.ez = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.ez, %i.e
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #24
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.l, %bb.k
  ret void
}

declare ptr @_ZN2v88internal7Factory31NewSharedFunctionInfoForBuiltinENS0_17MaybeDirectHandleINS0_6StringEEENS0_7BuiltinEiNS0_14AdaptArgumentsENS0_12FunctionKindE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKc(ptr noundef %0, ptr %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27
  %i.b = tail call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2, i64 %i.a) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.pre.pre.i = load i64, ptr %i.b, align 8
  %i.c = add i64 %.pre.pre.i, -1
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 11
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i16, ptr %i.g monotonic, align 2
  %i.i = icmp eq i16 %i.h, 128
  br i1 %i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i:    ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = trunc i32 %i.k to i1
  br i1 %i.l, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i
  %i.m = phi i32 [ 3, %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i.i ], [ 0, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i.i ]
  store i32 %i.m, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = ptrtoint ptr %1 to i64
  store i64 %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 -1, i64 16, i1 false)
  %i.z = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.aa = add i64 %i.z, 11
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i16, ptr %i.ab monotonic, align 2
  %i.ad = and i16 %i.ac, -96
  %.not.i21.i.i.i = icmp eq i16 %i.ad, 32
  br i1 %.not.i21.i.i.i, label %bb.b, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

bb.b:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !29, !noundef !30
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.ah = load i8, ptr %i.ag, align 8, !range !29
  %i.ai = trunc nuw i8 %i.ah to i1
  %not..i.i.i23.i.i.i = xor i1 %i.af, true
  %i.aj = select i1 %not..i.i.i23.i.i.i, i1 true, i1 %i.ai
  br i1 %i.aj, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.al = load i8, ptr %i.ak, align 8, !range !29, !noundef !30
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i: ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.ao = load ptr, ptr %i.an, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i, %bb.b
  %.pn.i.i26.i.i.i = phi ptr [ %i.ao, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i.i ], [ %0, %bb.b ]
  %.in.i.i27.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i.i, i64 58464
  %i.ap = load ptr, ptr %.in.i.i27.i.i.i, align 8
  %i.aq = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %i.b) #24
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i: ; preds = %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i
  %.sroa.05.0.i22.i.i.i = phi ptr [ %i.aq, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i.i ], [ %i.b, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i.i ]
  store ptr %.sroa.05.0.i22.i.i.i, ptr %i.s, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #24
  %i.ar = load i32, ptr %i.n, align 4
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.as = load ptr, ptr %i.r, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 648
  br label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEESG_NS1_13ConfigurationE.exit.i
  %i.au = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_14LookupIteratorEb(ptr noundef nonnull %3, i1 noundef zeroext false) #24
  br label %_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit

_ZN2v88internal10JSReceiver11GetPropertyEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEE.exit: ; preds = %bb.e, %bb.f
  %.sroa.07.0.i = phi ptr [ %i.au, %bb.f ], [ %i.at, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret ptr %.sroa.07.0.i
}

declare void @_ZN2v88internal8JSObject18MakePrototypesFastENS0_12DirectHandleINS0_6ObjectEEENS0_12WhereToStartEPNS0_7IsolateE(ptr, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_129CreateSharedObjectConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS4_INS0_3MapEEENS0_7BuiltinEiNS0_14AdaptArgumentsE(ptr noundef nonnull %0, ptr %1, ptr nofree readonly captures(none) %2, i32 noundef range(i32 732, 743) %3) unnamed_addr #7 {
bb.a:
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.637", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::Factory::JSFunctionBuilder", align 8 ; 5 uses
  %i.a = tail call ptr @_ZN2v88internal7Factory31NewSharedFunctionInfoForBuiltinENS0_17MaybeDirectHandleINS0_6StringEEENS0_7BuiltinEiNS0_14AdaptArgumentsENS0_12FunctionKindE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i32 noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0) #24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, 55
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.f = or i32 %i.e, 64
  store atomic volatile i32 %i.f, ptr %i.d monotonic, align 4
  %i.g = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.h = and i32 %i.g, 64
  %.not.i.i = icmp eq i32 %i.h, 0
  %i.i = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.j = trunc i32 %i.i to i8
  %i.k = and i8 %i.j, 31                          ; 4 uses
  %i.l = add i64 %i.b, 23
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m acquire, align 8 ; 4 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i: ; preds = %bb.a
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = icmp eq i16 %i.u, 284
  br i1 %i.v, label %bb.b, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 %i.n, ptr %4, align 8
  %i.w = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i.i, %bb.a
  %i.x = icmp ne i64 %i.n, 0
  br label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i

_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i: ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i, %bb.b
  %.0.i.i.i23 = phi i1 [ %i.w, %bb.b ], [ %i.x, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.thread.i.i.i ]
  %i.y = add nsw i8 %i.k, -3
  %i.z = icmp ult i8 %i.y, 4
  br i1 %i.z, label %_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i
  %i.aa = add nsw i8 %i.k, -16
  %i.ab = icmp ult i8 %i.aa, 6
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp samesign ult i8 %i.k, 19
  %i.ad = select i1 %i.ac, i32 228, i32 226
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %switch.tableidx = add nsw i8 %i.k, -2          ; 3 uses
  %i.ae = icmp ult i8 %switch.tableidx, 24
  br i1 %i.ae, label %switch.hole_check, label %bb.f

bb.f:                                             ; preds = %switch.hole_check, %bb.e
  %i.af = select i1 %.not.i.i, i32 215, i32 219
  br label %bb.g

switch.hole_check:                                ; preds = %bb.e
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 15744993, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ag = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal12_GLOBAL__N_134CreateSharedFunctionInfoForBuiltinEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEENS0_7BuiltinEiNS0_14AdaptArgumentsE, i64 %i.ag
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.g

bb.g:                                             ; preds = %switch.lookup, %bb.f, %bb.d
  %.011.i.i.i = phi i32 [ %i.ad, %bb.d ], [ %i.af, %bb.f ], [ %switch.ext, %switch.lookup ]
  %i.ah = xor i1 %.0.i.i.i23, true
  %i.ai = zext i1 %i.ah to i32
  %i.aj = add nuw nsw i32 %.011.i.i.i, %i.ai
  %i.ak = shl nuw nsw i32 %i.aj, 14
  %i.al = add nsw i32 %i.ak, -3522560
  br label %_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit

_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i, %bb.g
  %.0.i1.i.i = phi i32 [ %i.al, %bb.g ], [ 245760, %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i.i ]
  %i.am = load atomic volatile i32, ptr %i.d monotonic, align 4
  %i.an = and i32 %i.am, -507905
  %i.ao = or i32 %i.an, %.0.i1.i.i
  store atomic volatile i32 %i.ao, ptr %i.d monotonic, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ap, align 8
  %i.aq = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = add i64 %i.as, 31
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 8 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.h, label %_ZN2v88internal7Isolate14native_contextEv.exit, !prof !5

bb.h:                                             ; preds = %_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit
  %i.bb = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %0) #24
  br label %_ZN2v88internal7Isolate14native_contextEv.exit

_ZN2v88internal7Isolate14native_contextEv.exit:   ; preds = %_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit, %bb.h
  %.0.i.i.i24 = phi ptr [ %i.bb, %bb.h ], [ %i.ax, %_ZN2v88internal18SharedFunctionInfo17set_language_modeENS0_12LanguageModeE.exit ] ; 3 uses
  %i.bc = ptrtoint ptr %.0.i.i.i24 to i64
  %i.bd = add i64 %i.bc, 8
  %i.be = inttoptr i64 %i.bd to ptr
  store ptr %i.be, ptr %i.aw, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal7Genesis21ConfigureGlobalObjectENS_5LocalINS_14ObjectTemplateEEE:bb.a
  br i1 %.not38.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ct = and i64 %i.ck, -262144
  %i.cu = inttoptr i64 %i.ct to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.cu, align 262144
  %i.cv = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not39.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ce, i64 noundef %i.cl, i64 %i.ck) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  br i1 %.not.i.i.i, label %_ZN2v88internal7Context20set_array_buffer_mapENS0_6TaggedINS0_3MapEEE.exit, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ce, i64 %i.cl, i64 %i.ck) #24
  br label %_ZN2v88internal7Context20set_array_buffer_mapENS0_6TaggedINS0_3MapEEE.exit

_ZN2v88internal7Context20set_array_buffer_mapENS0_6TaggedINS0_3MapEEE.exit: ; preds = %bb.o, %bb.n, %.critedge, %.critedge26, %.critedge24
  %.4 = phi i1 [ false, %.critedge24 ], [ false, %.critedge26 ], [ true, %.critedge ], [ true, %bb.n ], [ true, %bb.o ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal7Genesis18ConfigureApiObjectENS0_12DirectHandleINS0_8JSObjectEEENS2_INS0_18ObjectTemplateInfoEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr %1, ptr %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.735", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @_ZN2v88internal10ApiNatives17InstantiateObjectEPNS0_7IsolateENS0_12DirectHandleINS0_18ObjectTemplateInfoEEENS4_INS0_10JSReceiverEEE(ptr noundef %i.a, ptr %2, ptr null) #24 ; 2 uses
  %i.c = icmp ne ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 656
  %i.g = load i64, ptr %i.f, align 8
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.g
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal7Isolate9exceptionEv.exit, !prof !5

bb.b:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.600) #25
  unreachable

_ZN2v88internal7Isolate9exceptionEv.exit:         ; preds = %_ZNK2v88internal11MaybeHandleINS0_8JSObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 560 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit
  %i.m = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.d) #24
  br label %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal7Isolate9exceptionEv.exit, %bb.c
  %.0.i.i = phi ptr [ %i.m, %bb.c ], [ %i.i, %_ZN2v88internal7Isolate9exceptionEv.exit ] ; 3 uses
  %i.n = ptrtoint ptr %.0.i.i to i64
  %i.o = add i64 %i.n, 8
  %i.p = inttoptr i64 %i.o to ptr
  store ptr %i.p, ptr %i.h, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %.0.i.i, align 8
  %i.q = tail call ptr @_ZN2v88internal10ErrorUtils8ToStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS1_21ToStringMessageSourceE(ptr noundef nonnull %i.d, ptr nonnull %.0.i.i, i32 noundef 1) #24 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.587) #25
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %_ZN2v88internal6HandleINS0_6ObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.s = load i64, ptr %i.q, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  call void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.735") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef null) #24
  %i.v = load ptr, ptr %3, align 8
  call void (ptr, ...) @_ZN2v84base2OS10PrintErrorEPKcz(ptr noundef nonnull @.str.580, ptr noundef %i.v) #24
  %i.w = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.w) #29
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.x = load ptr, ptr %0, align 8                ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 656
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 368
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i11 = icmp eq ptr %i.ac, null
  br i1 %.not.i11, label %_ZN2v88internal7Isolate15clear_exceptionEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  call void @_ZN2v88TryCatch5ResetEv(ptr noundef nonnull align 8 dereferenceable(41) %i.ac) #24
  br label %_ZN2v88internal7Isolate15clear_exceptionEv.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal7Genesis14TransferObjectENS0_12DirectHandleINS0_8JSObjectEEES4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.b, ptr %1)
  br label %_ZN2v88internal7Isolate15clear_exceptionEv.exit

_ZN2v88internal7Isolate15clear_exceptionEv.exit:  ; preds = %bb.e, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.f
  ret i1 %i.c
}

declare ptr @_ZN2v88internal10ApiNatives17InstantiateObjectEPNS0_7IsolateENS0_12DirectHandleINS0_18ObjectTemplateInfoEEENS4_INS0_10JSReceiverEEE(ptr noundef, ptr, ptr) local_unnamed_addr #4

declare ptr @_ZN2v88internal10ErrorUtils8ToStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS1_21ToStringMessageSourceE(ptr noundef, ptr, i32 noundef) local_unnamed_addr #4

declare void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.735") align 8, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Genesis14TransferObjectENS0_12DirectHandleINS0_8JSObjectEEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr %1, ptr %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  tail call void @_ZN2v88internal7Genesis23TransferNamedPropertiesENS0_12DirectHandleINS0_8JSObjectEEES4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2)
  tail call void @_ZN2v88internal7Genesis25TransferIndexedPropertiesENS0_12DirectHandleINS0_8JSObjectEEES4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2)
  %i.i = load i64, ptr %1, align 8
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 23
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 560 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 568
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.v = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.p) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.v, %bb.b ], [ %i.r, %bb.a ] ; 3 uses
  %i.w = ptrtoint ptr %.0.i.i to i64
  %i.x = add i64 %i.w, 8
  %i.y = inttoptr i64 %i.x to ptr
  store ptr %i.y, ptr %i.q, align 8
  store i64 %i.o, ptr %.0.i.i, align 8
  %i.z = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal8JSObject17ForceSetPrototypeEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_5UnionIJNS0_10JSReceiverENS0_4NullEEEEEE(ptr noundef %i.z, ptr %2, ptr nonnull %.0.i.i) #24
  store ptr %i.c, ptr %i.b, align 8
  %i.aa = load i32, ptr %i.f, align 8
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.f, align 8
  %i.ac = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.ac, %i.e
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #24
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internalL21PropertyAlreadyExistsEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS3_INS0_4NameEEE(ptr noundef %0, ptr %1, ptr %2) unnamed_addr #3 {
_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.pre = load i64, ptr %2, align 8
  %i.a = add i64 %.pre, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %3, i8 0, i64 9, i1 false)
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = ptrtoint ptr %1 to i64
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 -1, i64 16, i1 false)
  %i.r = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = and i16 %i.u, -96
  %.not.i21.i.i = icmp eq i16 %i.v, 32
  br i1 %.not.i21.i.i, label %bb.a, label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

bb.a:                                             ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !29, !noundef !30
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.z = load i8, ptr %i.y, align 8, !range !29
  %i.aa = trunc nuw i8 %i.z to i1
  %not..i.i.i23.i.i = xor i1 %i.x, true
  %i.ab = select i1 %not..i.i.i23.i.i, i1 true, i1 %i.aa
  br i1 %i.ab, label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.ad = load i8, ptr %i.ac, align 8, !range !29, !noundef !30
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i: ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.ag = load ptr, ptr %i.af, align 8
  br label %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i

_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i: ; preds = %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i, %bb.a
  %.pn.i.i26.i.i = phi ptr [ %i.ag, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i24.i.i ], [ %0, %bb.a ]
  %.in.i.i27.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i26.i.i, i64 58464
  %i.ah = load ptr, ptr %.in.i.i27.i.i, align 8
  %i.ai = tail call ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2) #24
  br label %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit

_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit: ; preds = %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i
  %.sroa.05.0.i22.i.i = phi ptr [ %i.ai, %_ZNK2v88internal7Isolate12string_tableEv.exit.i25.i.i ], [ %2, %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i ]
  store ptr %.sroa.05.0.i22.i.i, ptr %i.k, align 8
  call void @_ZN2v88internal14LookupIterator5StartILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(88) %3) #24
  %i.aj = load i32, ptr %i.g, align 4             ; 2 uses
  %.not = icmp eq i32 %i.aj, 3
  br i1 %.not, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.601) #25
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEENS1_13ConfigurationE.exit
  %i.ak = icmp ne i32 %i.aj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret i1 %i.ak
}

declare ptr @_ZN2v88internal8JSObject14FastPropertyAtEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_14RepresentationENS0_10FieldIndexE(ptr noundef, ptr, i8, i64) local_unnamed_addr #4

declare void @_ZN2v88internal8JSObject21SetNormalizedPropertyENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEENS0_15PropertyDetailsE(ptr, ptr, ptr, i32) local_unnamed_addr #4

declare ptr @_ZN2v88internal18BaseNameDictionaryINS0_16GlobalDictionaryENS0_21GlobalDictionaryShapeEE16IterationIndicesEPNS0_7IsolateENS0_12DirectHandleIS2_EE(ptr noundef, ptr) local_unnamed_addr #4

declare ptr @_ZN2v88internal18BaseNameDictionaryINS0_14NameDictionaryENS0_19NameDictionaryShapeEE16IterationIndicesEPNS0_7IsolateENS0_12DirectHandleIS2_EE(ptr noundef, ptr) local_unnamed_addr #4

declare ptr @_ZN2v88internal7Factory14CopyFixedArrayENS0_6HandleINS0_10FixedArrayEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7GenesisC2EPNS0_7IsolateENS0_17MaybeDirectHandleINS0_13JSGlobalProxyEEENS_5LocalINS_14ObjectTemplateEEEmNS0_33DeserializeEmbedderFieldsCallbackEPNS_14MicrotaskQueueE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 48)) %0, ptr noundef %1, ptr %2, ptr %3, i64 noundef %4, ptr nofree noundef readonly byval(%"struct.v8::internal::DeserializeEmbedderFieldsCallback") align 8 captures(none) %5, ptr noundef %6) unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::SaveContext", align 8 ; 4 uses
  %8 = alloca %"class.v8::base::TimeDelta", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.601", align 8 ; 4 uses
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 58632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  store ptr %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8
  store i64 0, ptr %i.a, align 8
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN2v88internal11SaveContextC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %1) #24
  %.not190 = icmp eq ptr %2, null
  br i1 %.not190, label %_ZNK2v88internal11MaybeHandleINS0_13JSGlobalProxyEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZNK2v88internal11MaybeHandleINS0_13JSGlobalProxyEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_13JSGlobalProxyEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_13JSGlobalProxyEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 55464
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = add i64 %i.k, -55464
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 9688
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = shl i64 %4, 32
  %sext = add i64 %i.s, -4294967296
  %i.t = ashr exact i64 %sext, 29
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32
  br label %bb.e

bb.c:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_13JSGlobalProxyEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %i.y = icmp eq ptr %3, null
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = call noundef i32 @_ZNK2v814ObjectTemplate18InternalFieldCountEv(ptr noundef nonnull align 1 dereferenceable(1) %3) #24
  %i.aa = shl nsw i32 %i.z, 3
  %i.ab = add nsw i32 %i.aa, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.x, %bb.b ], [ %i.ab, %bb.d ], [ 32, %bb.c ]
  %i.ac = call ptr @_ZN2v88internal7Factory29NewUninitializedJSGlobalProxyEi(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.0) #24
  br label %_ZNK2v88internal11MaybeHandleINS0_13JSGlobalProxyEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_13JSGlobalProxyEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %bb.a, %bb.e
  %.sroa.0142.0 = phi ptr [ %i.ac, %bb.e ], [ %2, %bb.a ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 59474
  %i.ae = load i8, ptr %i.ad, align 2, !range !29, !noundef !30
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_7ContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.f:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_13JSGlobalProxyEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread
  %i.ag = call ptr @_ZN2v88internal8Snapshot22NewContextFromSnapshotEPNS0_7IsolateENS0_12DirectHandleINS0_13JSGlobalProxyEEEmNS0_33DeserializeEmbedderFieldsCallbackE(ptr noundef nonnull %1, ptr %.sroa.0142.0, i64 noundef %4, ptr noundef nonnull byval(%"struct.v8::internal::DeserializeEmbedderFieldsCallback") align 8 %5) #24 ; 3 uses
  %.not191 = icmp eq ptr %i.ag, null
  br i1 %.not191, label %_ZNK2v88internal11MaybeHandleINS0_7ContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZNK2v88internal11MaybeHandleINS0_7ContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread187

_ZNK2v88internal11MaybeHandleINS0_7ContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread187: ; preds = %bb.f
  store ptr %i.ag, ptr %i.b, align 8
  br label %bb.g

_ZNK2v88internal11MaybeHandleINS0_7ContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.f, %_ZNK2v88internal11MaybeHandleINS0_13JSGlobalProxyEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread
  %.sroa.0.0.copyload.i74.pr = load ptr, ptr %i.b, align 8 ; 2 uses
  %i.ah = icmp eq ptr %.sroa.0.0.copyload.i74.pr, null
  br i1 %i.ah, label %bb.o, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_7ContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread187, %_ZNK2v88internal11MaybeHandleINS0_7ContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.0.0.copyload.i74189 = phi ptr [ %i.ag, %_ZNK2v88internal11MaybeHandleINS0_7ContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread187 ], [ %.sroa.0.0.copyload.i74.pr, %_ZNK2v88internal11MaybeHandleINS0_7ContextEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ]
  %i.ai = load i64, ptr %.sroa.0.0.copyload.i74189, align 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 57104 ; 2 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 5 uses
  %i.al = add i64 %i.ai, 2415                     ; 3 uses
  %i.am = inttoptr i64 %i.al to ptr
  store atomic volatile i64 %i.ak, ptr %i.am monotonic, align 8
  %i.an = trunc i64 %i.ak to i1
  br i1 %i.an, label %bb.h, label %_ZN2v88internalL26AddToWeakNativeContextListEPNS0_7IsolateENS0_6TaggedINS0_7ContextEEE.exit

bb.h:                                             ; preds = %bb.g
  %i.ao = and i64 %i.ai, -262144
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 262144       ; 2 uses
  %i.ar = and i64 %i.aq, 32
  %.not.i.i.i = icmp eq i64 %i.ar, 0
  %i.as = and i64 %i.aq, 25
  %.not38.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not38.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.at = and i64 %i.ak, -262144
  %i.au = inttoptr i64 %i.at to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.au, align 262144
  %i.av = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not39.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ai, i64 noundef %i.al, i64 %i.ak) #24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i.i.i, label %_ZN2v88internalL26AddToWeakNativeContextListEPNS0_7IsolateENS0_6TaggedINS0_7ContextEEE.exit, label %bb.l, !prof !8

end_hunk_1

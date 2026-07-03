inline.NumInlined: 1883
inline.NumDeleted: 548
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6Assimp3FBX12MeshGeometry23ReadVertexDataMaterialsERSt6vectorIiSaIiEERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_:bb.a
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %._crit_edge.i.i29
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %6, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ap
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.e
  %i.ba = load i64, ptr %i.ap, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  resume { ptr, i32 } %i.ax

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  switch i64 %i.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.be = load ptr, ptr %3, align 8               ; 2 uses
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = xor i32 %i.bf, 1399614529
  %i.bh = getelementptr i8, ptr %i.be, i64 3
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = xor i32 %i.bi, 1701667155
  %i.bk = or i32 %i.bg, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bo = load ptr, ptr %1, align 8               ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bs = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.bs, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.bu = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.bu, ptr %i.d, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA34_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(34) @.str.48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bv = ptrtoint ptr %i.bq to i64
  %i.bw = ptrtoint ptr %i.bo to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ugt i64 %i.bx, 4
  br i1 %i.by, label %bb.j, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.bz, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.cb = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.cb, ptr %i.c, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA73_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(73) @.str.49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit: ; preds = %bb.j, %bb.k
  %i.cc = load ptr, ptr %1, align 8               ; 6 uses
  %i.cd = load ptr, ptr %i.bp, align 8
  %.not.i.i = icmp eq ptr %i.cd, %i.cc
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit
  store ptr %i.cc, ptr %i.bp, align 8
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit, %bb.i
  %i.ce = phi ptr [ %i.cc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.cc, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit ], [ %i.bo, %bb.i ] ; 5 uses
  %i.cf = phi ptr [ %i.cc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.cc, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit ], [ %i.bq, %bb.i ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.cg, align 8
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 12                ; 4 uses
  %i.co = ptrtoint ptr %i.cf to i64
  %i.cp = ptrtoint ptr %i.ce to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2                 ; 3 uses
  %i.cs = icmp ugt i64 %i.cn, %i.cr
  br i1 %i.cs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ct = sub nuw nsw i64 %i.cn, %i.cr
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ct)
  %.pre59 = load ptr, ptr %1, align 8
  %.pre60 = load ptr, ptr %i.bp, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.cu = icmp ult i64 %i.cn, %i.cr
  br i1 %i.cu, label %bb.n, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cn ; 3 uses
  %.not.i.i42 = icmp eq ptr %i.cf, %i.cv
  br i1 %.not.i.i42, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43:      ; preds = %bb.n
  store ptr %i.cv, ptr %i.bp, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43
  %i.cw = phi ptr [ %.pre60, %bb.l ], [ %i.cf, %bb.m ], [ %i.cf, %bb.n ], [ %i.cv, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43 ] ; 3 uses
  %i.cx = phi ptr [ %.pre59, %bb.l ], [ %i.ce, %bb.m ], [ %i.ce, %bb.n ], [ %i.ce, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43 ] ; 6 uses
  %.not.i.i44.not = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i44.not, label %bb.o, label %_ZNSt6vectorIiSaIiEE2atEm.exit

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.88, i64 noundef 0, i64 noundef 0) #26
  unreachable

_ZNSt6vectorIiSaIiEE2atEm.exit:                   ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = load i32, ptr %i.cx, align 4            ; 2 uses
  %i.db = add i64 %i.cz, -4
  %i.dc = sub i64 %i.db, %i.cy                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dc, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i45.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit
  %n.vec = and i64 %i.de, 9223372036854775800     ; 3 uses
  %i.df = shl i64 %n.vec, 2
  %i.dg = getelementptr i8, ptr %i.cx, i64 %i.df
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cx, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.di, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %.lr.ph.i.i.i.i45.preheader

.lr.ph.i.i.i.i45.preheader:                       ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.cx, %_ZNSt6vectorIiSaIiEE2atEm.exit ], [ %i.dg, %middle.block ]
  br label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph.i.i.i.i45.preheader, %.lr.ph.i.i.i.i45
  %.06.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i45 ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i45.preheader ] ; 2 uses
  store i32 %i.da, ptr %.06.i.i.i.i, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.dk, %i.cw
  br i1 %.not.i.i.i.i46, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %.lr.ph.i.i.i.i45, !llvm.loop !68

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48: ; preds = %bb.f
  %i.dl = load ptr, ptr %3, align 8               ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 1
  %i.dn = xor i64 %i.dm, 8027518367442172226
  %i.do = getelementptr i8, ptr %i.dl, i64 8
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i64
  %i.dr = xor i64 %i.dq, 110
  %i.ds = or i64 %i.dn, %i.dr
  %i.dt = icmp ne i64 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %7 = icmp eq i32 %i.du, 0
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = load i64, ptr %8, align 8
  %i.dv = icmp eq i64 %9, 13
  %or.cond = select i1 %7, i1 %i.dv, i1 false
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  %i.dw = load ptr, ptr %4, align 8               ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 1
  %i.dy = xor i64 %i.dx, 4931252993067871817
  %i.dz = getelementptr i8, ptr %i.dw, i64 5
  %i.ea = load i64, ptr %i.dz, align 1
  %i.eb = xor i64 %i.ea, 8386658473160765268
  %i.ec = or i64 %i.dy, %i.eb
  %i.ed = icmp ne i64 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8            ; 4 uses
  %i.ei = load ptr, ptr %1, align 8               ; 2 uses
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64               ; 4 uses
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 2                 ; 3 uses
  %i.en = icmp ugt i64 %i.n, %i.em
  br i1 %i.en, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread
  %i.eo = sub nuw nsw i64 %i.n, %i.em
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.eo)
  %.pre = load ptr, ptr %i.eg, align 8
  %.pre58 = load ptr, ptr %1, align 8
  %.pre61 = ptrtoint ptr %.pre58 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit53

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread
  %i.ep = icmp ult i64 %i.n, %i.em
  br i1 %i.ep, label %bb.r, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit53

bb.r:                                             ; preds = %bb.q
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.m ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.eh, %i.eq
  br i1 %.not.i.i51, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit53, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52:      ; preds = %bb.r
  store ptr %i.eq, ptr %i.eg, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit53

_ZNSt6vectorIiSaIiEE6resizeEm.exit53:             ; preds = %bb.p, %bb.q, %bb.r, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52
  %.pre-phi = phi i64 [ %.pre61, %bb.p ], [ %i.ek, %bb.q ], [ %i.ek, %bb.r ], [ %i.ek, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52 ]
  %i.er = phi ptr [ %.pre, %bb.p ], [ %i.eh, %bb.q ], [ %i.eh, %bb.r ], [ %i.eq, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52 ]
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = sub i64 %i.es, %.pre-phi
  %i.eu = ashr exact i64 %i.et, 2                 ; 2 uses
  %.not28 = icmp eq i64 %i.eu, %i.n
  br i1 %.not28, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 %i.eu, ptr %i.f, align 8
  %i.ev = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.ev, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA56_KcmRA12_S4_RKmEEEvDpOT_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ex = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.ex, ptr %i.b, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA56_S2_mRA12_S2_RKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(56) @.str.52, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(12) @.str.53, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA56_KcmRA12_S4_RKmEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA56_KcmRA12_S4_RKmEEEvDpOT_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  %i.ey = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.ey, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56
  %i.ez = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.fa = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.fa, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA61_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_SD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(61) @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit: ; preds = %.lr.ph.i.i.i.i45, %middle.block, %bb.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56, %bb.h, %bb.g, %_ZNSt6vectorIiSaIiEE6resizeEm.exit53, %bb.a, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA56_KcmRA12_S4_RKmEEEvDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12MeshGeometry21ReadVertexDataNormalsERSt6vectorI10aiVector3tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 976
  tail call void @_ZN6Assimp3FBX22ResolveVertexDataArrayI10aiVector3tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12MeshGeometry22ReadVertexDataTangentsERSt6vectorI10aiVector3tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8
  store i64 8319395793466188116, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.c, align 8
  %i.d = invoke { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc18 unwind label %bb.a   ; 2 uses

.noexc18:                                         ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %5, align 8                ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc18
  %i.g = load i64, ptr %i.a, align 8
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.i, ptr %6, align 8
  store i64 8319395793466188116, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.k, align 8
  %i.l = invoke { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc29 unwind label %bb.b   ; 2 uses

.noexc29:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = load ptr, ptr %6, align 8                ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %.noexc29
  %i.o = load i64, ptr %i.i, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %.noexc29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.q = extractvalue { ptr, ptr } %i.l, 0
  %i.r = extractvalue { ptr, ptr } %i.l, 1
  %.not4.i.i.i23 = icmp eq ptr %i.q, %i.r
  %.str.62..str.61 = select i1 %.not4.i.i.i23, ptr @.str.62, ptr @.str.61
  %i.s = extractvalue { ptr, ptr } %i.d, 0
  %i.t = extractvalue { ptr, ptr } %i.d, 1
  %.not4.i.i.i = icmp eq ptr %i.s, %i.t
  %i.u = select i1 %.not4.i.i.i, ptr @.str.43, ptr @.str.42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 976
  call void @_ZN6Assimp3FBX22ResolveVertexDataArrayI10aiVector3tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.u, ptr noundef nonnull %.str.62..str.61, i64 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af)
  ret void

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %5, align 8               ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.a
  %i.aj = load i64, ptr %i.a, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %6, align 8               ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.i
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.b
  %i.ao = load i64, ptr %i.i, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn14.pn = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ]
  resume { ptr, i32 } %.pn14.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12MeshGeometry23ReadVertexDataBinormalsERSt6vectorI10aiVector3tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.44, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 9, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 25
  store i8 0, ptr %i.c, align 1
  %i.d = invoke { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc18 unwind label %bb.a   ; 2 uses

.noexc18:                                         ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %5, align 8                ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc18
  %i.g = load i64, ptr %i.a, align 8
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.i, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.i, ptr noundef nonnull align 1 dereferenceable(9) @.str.44, i64 9, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.k, align 1
  %i.l = invoke { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc29 unwind label %bb.b   ; 2 uses

.noexc29:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = load ptr, ptr %6, align 8                ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %.noexc29
  %i.o = load i64, ptr %i.i, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

end_hunk_0

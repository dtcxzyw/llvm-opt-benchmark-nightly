Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSArray?download=true
inline.NumInlined: 1072
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE:bb.a
_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit: ; preds = %bb.u, %bb.v
  %.0.i.i.i.i.i.i = phi ptr [ %i.cl, %bb.u ], [ %i.cq, %bb.v ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i125 = load i64, ptr %3, align 8, !tbaa !46
  %i.cr = tail call i32 @_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE(i64 %.sroa.0.0.copyload.i.i.i125, ptr noundef nonnull align 8 dereferenceable(9816) %1) ; 2 uses
  %.sroa.0.0.copyload.i.i126 = load i64, ptr %0, align 8, !tbaa !46
  %i.cs = and i64 %.sroa.0.0.copyload.i.i126, 281474976710655
  %i.ct = inttoptr i64 %i.cs to ptr               ; 3 uses
  %.sroa.0.0.copyload.i.i127 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !46 ; 2 uses
  %i.cu = and i64 %.sroa.0.0.copyload.i.i127, 281474976710655 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 28 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !72 ; 2 uses
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = and i64 %i.cz, 562949949227008
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = icmp eq ptr %i.cy, %i.db
  br i1 %i.dc, label %_ZN6hermes2vm9ArrayImpl17setIndexedStorageERNS0_11PointerBaseEPNS0_18SegmentedArrayBaseINS0_13HermesValue32EEERNS0_7HadesGCE.exit, label %bb.w, !prof !40

bb.w:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit
  %i.dd = inttoptr i64 %i.cu to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %i.cw, ptr noundef %i.dd) #13
  %.sroa.0.0.copyload.i.i128.pre = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !46
  %.pre = load ptr, ptr %i.cx, align 8, !tbaa !72
  %.pre203 = and i64 %.sroa.0.0.copyload.i.i128.pre, 281474976710655
  br label %_ZN6hermes2vm9ArrayImpl17setIndexedStorageERNS0_11PointerBaseEPNS0_18SegmentedArrayBaseINS0_13HermesValue32EEERNS0_7HadesGCE.exit

_ZN6hermes2vm9ArrayImpl17setIndexedStorageERNS0_11PointerBaseEPNS0_18SegmentedArrayBaseINS0_13HermesValue32EEERNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit, %bb.w
  %.pre-phi204 = phi i64 [ %i.cu, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit ], [ %.pre203, %bb.w ]
  %i.de = phi ptr [ %i.cy, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit ], [ %.pre, %bb.w ]
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cu, 0
  %i.df = sub i64 %.sroa.0.0.copyload.i.i127, %i.cc
  %i.dg = trunc i64 %i.df to i32
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 0, i32 %i.dg
  store i32 %.sroa.0.0.i.i.i.i.i.i, ptr %i.cw, align 4, !tbaa !6
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  store i32 %2, ptr %i.dh, align 4, !tbaa !36
  %i.di = add i32 %2, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !37
  %i.dk = inttoptr i64 %.pre-phi204 to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = and i64 %i.dm, 562949949227008
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = icmp eq ptr %i.de, %i.do
  br i1 %i.dp, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit132, label %bb.x, !prof !40

bb.x:                                             ; preds = %_ZN6hermes2vm9ArrayImpl17setIndexedStorageERNS0_11PointerBaseEPNS0_18SegmentedArrayBaseINS0_13HermesValue32EEERNS0_7HadesGCE.exit
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.cv, ptr noundef nonnull align 4 dereferenceable(4) %i.dl, i32 %i.cr) #13
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit132

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit132: ; preds = %_ZN6hermes2vm9ArrayImpl17setIndexedStorageERNS0_11PointerBaseEPNS0_18SegmentedArrayBaseINS0_13HermesValue32EEERNS0_7HadesGCE.exit, %bb.x
  store i32 %i.cr, ptr %i.dl, align 4, !tbaa !39
  br label %bb.au

bb.y:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i.i.i133 = load i64, ptr %3, align 8, !tbaa !46
  %i.dq = tail call i32 @_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE(i64 %.sroa.0.0.copyload.i.i.i133, ptr noundef nonnull align 8 dereferenceable(9816) %1)
  %.sroa.0.0.copyload.i.i134 = load i64, ptr %0, align 8, !tbaa !46
  %i.dr = and i64 %.sroa.0.0.copyload.i.i134, 281474976710655
  %i.ds = inttoptr i64 %i.dr to ptr               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 28 ; 2 uses
  %.sroa.0.0.copyload.i.i.i135 = load i32, ptr %i.dt, align 4, !tbaa !6 ; 2 uses
  %i.du = zext i32 %.sroa.0.0.copyload.i.i.i135 to i64
  %i.dv = add i64 %i.du, %i.cc                    ; 2 uses
  %i.dw = inttoptr i64 %i.dv to ptr               ; 3 uses
  br i1 %i.k, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = sub i32 %2, %i.d                        ; 3 uses
  %i.dy = tail call noundef i32 @_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE8capacityEv(ptr noundef nonnull align 4 dereferenceable(8) %i.dw) #13
  %i.dz = icmp ult i32 %i.dx, %i.dy
  br i1 %i.dz, label %.critedge, label %._crit_edge

._crit_edge:                                      ; preds = %bb.z
  %.sroa.0.0.copyload.i.i.i137.pre = load i32, ptr %i.dt, align 4, !tbaa !6 ; 2 uses
  %.pre205 = zext i32 %.sroa.0.0.copyload.i.i.i137.pre to i64
  %.pre207 = add i64 %.pre205, %i.cc
  br label %bb.aa

.critedge:                                        ; preds = %bb.z
  %i.ea = add i32 %2, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !37
  %i.ec = add nuw i32 %i.dx, 1
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7RuntimeEj(ptr noundef nonnull %i.dw, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ec) #13
  tail call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_(ptr noundef nonnull align 4 dereferenceable(8) %i.dw, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.dx, i32 %i.dq)
  br label %bb.au

bb.aa:                                            ; preds = %._crit_edge, %bb.y
  %.pre-phi208 = phi i64 [ %.pre207, %._crit_edge ], [ %i.dv, %bb.y ]
  %.sroa.0.0.copyload.i.i.i137 = phi i32 [ %.sroa.0.0.copyload.i.i.i137.pre, %._crit_edge ], [ %.sroa.0.0.copyload.i.i.i135, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %.not.i.i.i.i.i138 = icmp eq i32 %.sroa.0.0.copyload.i.i.i137, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.ed = or i64 %.pre-phi208, -281474976710656
  %i.ee = select i1 %.not.i.i.i.i.i138, i64 -281474976710656, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !57, !noalias !124 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 192 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !67, !noalias !124 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 200
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !68, !noalias !124
  %i.el = icmp ult ptr %i.ei, %i.ek
  br i1 %i.el, label %bb.ab, label %bb.ac, !prof !40

bb.ab:                                            ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.em, ptr %i.eh, align 8, !tbaa !67, !noalias !124
  store i64 %i.ee, ptr %i.ei, align 8, !tbaa !46, !noalias !124
  br label %_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_13MutableHandleIT_EEPS7_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.en = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.eg, i64 %i.ee) #13, !noalias !124
  br label %_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_13MutableHandleIT_EEPS7_.exit

_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_13MutableHandleIT_EEPS7_.exit: ; preds = %bb.ab, %bb.ac
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ei, %bb.ab ], [ %i.en, %bb.ac ] ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i, ptr %4, align 8, !tbaa !74, !alias.scope !124
  %i.eo = icmp eq i32 %i.f, %i.d
  br i1 %i.eo, label %bb.ad, label %bb.ag, !prof !44

bb.ad:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_13MutableHandleIT_EEPS7_.exit
  %i.ep = call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.at, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload.i.i.i139 = load i64, ptr %3, align 8, !tbaa !46
  %i.er = call i32 @_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE(i64 %.sroa.0.0.copyload.i.i.i139, ptr noundef nonnull align 8 dereferenceable(9816) %1) ; 2 uses
  %i.es = load ptr, ptr %4, align 8, !tbaa !74
  %.sroa.0.0.copyload.i.i140 = load i64, ptr %i.es, align 8, !tbaa !46
  %i.et = and i64 %.sroa.0.0.copyload.i.i140, 281474976710655
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !72
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = and i64 %i.ey, 562949949227008
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = icmp eq ptr %i.ex, %i.fa
  br i1 %i.fb, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit144, label %bb.af, !prof !40

bb.af:                                            ; preds = %bb.ae
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.fc, ptr noundef nonnull align 4 dereferenceable(4) %i.ev, i32 %i.er) #13
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit144

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit144: ; preds = %bb.ae, %bb.af
  store i32 %i.er, ptr %i.ev, align 4, !tbaa !39
  %.sroa.0.0.copyload.i.i145 = load i64, ptr %0, align 8, !tbaa !46
  %i.fd = and i64 %.sroa.0.0.copyload.i.i145, 281474976710655
  %i.fe = inttoptr i64 %i.fd to ptr               ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  store i32 %2, ptr %i.ff, align 4, !tbaa !36
  %i.fg = add i32 %2, 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !37
  br label %bb.ar

bb.ag:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_18SegmentedArrayBaseINS0_13HermesValue32EEEEENS0_13MutableHandleIT_EEPS7_.exit
  %i.fi = icmp ugt i32 %2, %i.f
  %i.fj = sub nuw i32 %2, %i.f
  %i.fk = icmp ugt i32 %i.fj, 1048576
  %or.cond = select i1 %i.fi, i1 %i.fk, i1 false, !prof !78
  %.not197 = xor i1 %i.j, true
  %i.fl = sub i32 %i.d, %2                        ; 2 uses
  %i.fm = icmp ugt i32 %i.fl, 1048576
  %i.fn = and i1 %i.fm, %.not197
  %i.fo = select i1 %or.cond, i1 true, i1 %i.fn, !prof !78
  br i1 %i.fo, label %bb.ah, label %bb.ak, !prof !44

bb.ah:                                            ; preds = %bb.ag
  %i.fp = uitofp i32 %2 to double                 ; 2 uses
  %i.fq = load ptr, ptr %i.ef, align 8, !tbaa !57 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 192 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !67 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 200
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !68
  %i.fv = icmp ult ptr %i.fs, %i.fu
  br i1 %i.fv, label %bb.ai, label %bb.aj, !prof !40

bb.ai:                                            ; preds = %bb.ah
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.fw, ptr %i.fr, align 8, !tbaa !67
  store double %i.fp, ptr %i.fs, align 8, !tbaa !46
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.aj:                                            ; preds = %bb.ah
  %i.fx = bitcast double %i.fp to i64
  %i.fy = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.fq, i64 %i.fx) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.ai, %bb.aj
  %.0.i.i.i.i.i.i146 = phi ptr [ %i.fs, %bb.ai ], [ %i.fy, %bb.aj ]
  %i.fz = tail call ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i146) #13
  %.sroa.0.0.copyload.i.i.i147 = load i64, ptr %i.fz, align 8, !tbaa !46
  %i.ga = trunc i64 %.sroa.0.0.copyload.i.i.i147 to i32
  %i.gb = tail call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.ga, i16 14, ptr nonnull %3) #13
  %5 = icmp ne i32 %i.gb, 0
  %6 = zext i1 %5 to i32
  %7 = or disjoint i32 %6, 256
  br label %bb.at

bb.ak:                                            ; preds = %bb.ag
  br i1 %i.k, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = sub i32 %2, %i.d                        ; 2 uses
  %i.gd = add i32 %i.gc, 1
  %i.ge = call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6resizeERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.gd) #13
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.0.0.copyload.i.i.i148 = load i64, ptr %3, align 8, !tbaa !46
  %i.gg = call i32 @_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE(i64 %.sroa.0.0.copyload.i.i.i148, ptr noundef nonnull align 8 dereferenceable(9816) %1)
  %.sroa.0.0.copyload.i.i149 = load i64, ptr %0, align 8, !tbaa !46
  %i.gh = and i64 %.sroa.0.0.copyload.i.i149, 281474976710655
  %i.gi = inttoptr i64 %i.gh to ptr               ; 2 uses
  %i.gj = add i32 %2, 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !37
  %i.gl = load ptr, ptr %4, align 8, !tbaa !74
  %.sroa.0.0.copyload.i.i150 = load i64, ptr %i.gl, align 8, !tbaa !46
  %i.gm = and i64 %.sroa.0.0.copyload.i.i150, 281474976710655
  %i.gn = inttoptr i64 %i.gm to ptr
  call void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_(ptr noundef nonnull align 4 dereferenceable(8) %i.gn, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.gc, i32 %i.gg)
  br label %bb.ar

bb.an:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload.i.i151 = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !46
  %i.go = and i64 %.sroa.0.0.copyload.i.i151, 281474976710655
  %i.gp = inttoptr i64 %i.go to ptr               ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load atomic i32, ptr %i.gq monotonic, align 4 ; 3 uses
  %i.gs = icmp ult i32 %i.gr, 4097
  br i1 %i.gs, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, label %bb.ao, !prof !40

bb.ao:                                            ; preds = %bb.an
  %i.gt = add i32 %i.gr, -4097                    ; 2 uses
  %i.gu = shl i32 %i.gt, 10
  %i.gv = add i32 %i.gu, 4096
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 16392
  %i.gx = zext i32 %i.gt to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !39 ; 2 uses
  %.not.i.i.i.i.i.i152 = icmp eq i32 %i.gz, 0
  %i.ha = zext i32 %i.gz to i64
  %i.hb = add i64 %i.ha, %i.cc
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = select i1 %.not.i.i.i.i.i.i152, ptr null, ptr %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hf = load atomic i32, ptr %i.he monotonic, align 4
  %i.hg = add i32 %i.gv, %i.hf
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit: ; preds = %bb.an, %bb.ao
  %.0.i = phi i32 [ %i.hg, %bb.ao ], [ %i.gr, %bb.an ]
  %i.hh = add i32 %i.fl, %.0.i
  %i.hi = call noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE10resizeLeftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.hh) #13
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit
  %.sroa.0.0.copyload.i.i.i153 = load i64, ptr %3, align 8, !tbaa !46
  %i.hk = call i32 @_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE(i64 %.sroa.0.0.copyload.i.i.i153, ptr noundef nonnull align 8 dereferenceable(9816) %1) ; 2 uses
  %.sroa.0.0.copyload.i.i154 = load i64, ptr %0, align 8, !tbaa !46
  %i.hl = and i64 %.sroa.0.0.copyload.i.i154, 281474976710655
  %i.hm = inttoptr i64 %i.hl to ptr               ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 20
  store i32 %2, ptr %i.hn, align 4, !tbaa !36
  %i.ho = load ptr, ptr %4, align 8, !tbaa !74
  %.sroa.0.0.copyload.i.i155 = load i64, ptr %i.ho, align 8, !tbaa !46
  %i.hp = and i64 %.sroa.0.0.copyload.i.i155, 281474976710655
  %i.hq = inttoptr i64 %i.hp to ptr
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !72
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = and i64 %i.hu, 562949949227008
  %i.hw = inttoptr i64 %i.hv to ptr
  %i.hx = icmp eq ptr %i.ht, %i.hw
  br i1 %i.hx, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit159, label %bb.aq, !prof !40

bb.aq:                                            ; preds = %bb.ap
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.hy, ptr noundef nonnull align 4 dereferenceable(4) %i.hr, i32 %i.hk) #13
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit159

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit159: ; preds = %bb.ap, %bb.aq
  store i32 %i.hk, ptr %i.hr, align 4, !tbaa !39
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit159, %bb.am, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit144
  %.0 = phi ptr [ %i.fe, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit144 ], [ %i.gi, %bb.am ], [ %i.hm, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit159 ]
  %i.hz = load ptr, ptr %4, align 8, !tbaa !74
  %.sroa.0.0.copyload.i.i160 = load i64, ptr %i.hz, align 8, !tbaa !46 ; 2 uses
  %i.ia = and i64 %.sroa.0.0.copyload.i.i160, 281474976710655 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0, i64 28 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !72
  %i.ie = ptrtoint ptr %i.ib to i64
  %i.if = and i64 %i.ie, -4194304
  %i.ig = inttoptr i64 %i.if to ptr
  %i.ih = icmp eq ptr %i.id, %i.ig
  br i1 %i.ih, label %_ZN6hermes2vm9ArrayImpl17setIndexedStorageERNS0_11PointerBaseEPNS0_18SegmentedArrayBaseINS0_13HermesValue32EEERNS0_7HadesGCE.exit163, label %bb.as, !prof !40

bb.as:                                            ; preds = %bb.ar
  %i.ii = inttoptr i64 %i.ia to ptr
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ij, ptr noundef nonnull align 4 dereferenceable(4) %i.ib, ptr noundef %i.ii) #13
  br label %_ZN6hermes2vm9ArrayImpl17setIndexedStorageERNS0_11PointerBaseEPNS0_18SegmentedArrayBaseINS0_13HermesValue32EEERNS0_7HadesGCE.exit163

_ZN6hermes2vm9ArrayImpl17setIndexedStorageERNS0_11PointerBaseEPNS0_18SegmentedArrayBaseINS0_13HermesValue32EEERNS0_7HadesGCE.exit163: ; preds = %bb.ar, %bb.as
  %.not.i.i.i.i.i.i161 = icmp eq i64 %i.ia, 0
  %i.ik = sub i64 %.sroa.0.0.copyload.i.i160, %i.cc
  %i.il = trunc i64 %i.ik to i32
  %.sroa.0.0.i.i.i.i.i.i162 = select i1 %.not.i.i.i.i.i.i161, i32 0, i32 %i.il
  store i32 %.sroa.0.0.i.i.i.i.i.i162, ptr %i.ib, align 4, !tbaa !6
  br label %bb.at

bb.at:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit, %bb.al, %bb.ad, %_ZN6hermes2vm9ArrayImpl17setIndexedStorageERNS0_11PointerBaseEPNS0_18SegmentedArrayBaseINS0_13HermesValue32EEERNS0_7HadesGCE.exit163
  %.sroa.0182.2 = phi i32 [ %7, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ 257, %_ZN6hermes2vm9ArrayImpl17setIndexedStorageERNS0_11PointerBaseEPNS0_18SegmentedArrayBaseINS0_13HermesValue32EEERNS0_7HadesGCE.exit163 ], [ 256, %bb.ad ], [ 256, %bb.al ], [ 256, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE4sizeERNS0_11PointerBaseE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.au

bb.au:                                            ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit132, %bb.s, %bb.a, %.critedge, %bb.at, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit
  %.sroa.0182.3 = phi i32 [ 257, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit ], [ 1, %bb.a ], [ %.sroa.0182.2, %bb.at ], [ 257, %.critedge ], [ 257, %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_.exit132 ], [ 0, %bb.s ]
  ret i32 %.sroa.0182.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE(i64 %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #5 comdat align 2 !guid !125 {
bb.a:
  %i.a = ashr i64 %0, 47
  switch i64 %i.a, label %bb.i [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit
    i64 -12, label %bb.b
    i64 -11, label %bb.c
    i64 -10, label %bb.d
    i64 -9, label %bb.e
    i64 -6, label %bb.f
    i64 -5, label %bb.f
    i64 -4, label %bb.g
    i64 -3, label %bb.g
    i64 -2, label %bb.h
    i64 -1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.d:                                             ; preds = %bb.a
  %i.b = trunc i64 %0 to i1
  %i.c = select i1 %i.b, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.e:                                             ; preds = %bb.a
  %i.d = trunc i64 %0 to i32
  %i.e = shl i32 %i.d, 3
  %i.f = or disjoint i32 %i.e, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub i64 %0, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = or i32 %i.i, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %0, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = or i32 %i.m, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 %0, %i.o
  %i.q = trunc i64 %i.p to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.i:                                             ; preds = %bb.a
  %i.r = bitcast i64 %0 to double
  %i.s = fptosi double %i.r to i32
  %i.t = shl i32 %i.s, 3                          ; 2 uses
  %i.u = ashr exact i32 %i.t, 3
  %i.v = sitofp i32 %i.u to double
  %i.w = bitcast double %i.v to i64
  %i.x = icmp eq i64 %0, %i.w
  br i1 %i.x, label %bb.j, label %bb.k, !prof !40

bb.j:                                             ; preds = %bb.i
  %i.y = or disjoint i32 %i.t, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !77
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.ab, %i.ad
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.l, label %bb.m, !prof !44

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.af = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ae, i32 noundef 16) #13
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i

bb.m:                                             ; preds = %bb.k
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !76
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i: ; preds = %bb.m, %bb.l
  %i.ag = phi ptr [ %i.af, %bb.l ], [ %i.aa, %bb.m ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %0, ptr %i.ah, align 8, !tbaa !43
  store i32 402653200, ptr %i.ag, align 8, !tbaa !52
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = or i32 %i.al, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i, %bb.j, %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.04.0 = phi i32 [ 7, %bb.a ], [ %i.q, %bb.h ], [ 14, %bb.b ], [ 15, %bb.c ], [ %i.c, %bb.d ], [ %i.f, %bb.e ], [ %i.j, %bb.f ], [ %i.n, %bb.g ], [ %i.y, %bb.j ], [ %i.am, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i ]
  ret i32 %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvRNS0_7RuntimeEjS2_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, i32 %3) local_unnamed_addr #0 comdat align 2 !guid !126 {
bb.a:
  %i.a = icmp ult i32 %2, 4096
  br i1 %i.a, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %2, -4096
  %i.c = lshr i32 %i.b, 10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16392
  %i.e = zext nneg i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = ptrtoint ptr %1 to i64
  %i.i = zext i32 %i.g to i64
  %i.j = add i64 %i.i, %i.h
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = and i32 %2, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit: ; preds = %bb.a, %bb.b
  %.sink6.i.i = phi ptr [ %i.k, %bb.b ], [ %0, %bb.a ]
  %.sink5.i.i = phi i32 [ %i.l, %bb.b ], [ %2, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sink6.i.i, i64 8
  %i.n = zext nneg i32 %.sink5.i.i to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = and i64 %i.r, -4194304
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = icmp eq ptr %i.q, %i.t
  br i1 %i.u, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit, label %bb.c, !prof !40

bb.c:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.o, i32 %3) #13
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit, %bb.c
  store i32 %3, ptr %i.o, align 4, !tbaa !39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

declare noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr) local_unnamed_addr #1

declare noundef i32 @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE10resizeLeftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm9ArrayImpl21_deleteOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEj(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #0 align 2 !guid !127 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !46
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 2 uses
  %.not = icmp ult i32 %2, %i.d
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37
  %i.g = icmp ult i32 %2, %i.f
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.h, align 4, !tbaa !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.i = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.j = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.k = add i64 %i.j, %i.i
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = select i1 %.not.i.i.i.i.i, ptr null, ptr %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 2
  %.not21 = icmp eq i32 %i.p, 0
  %.pre = sub nuw i32 %2, %i.d                    ; 8 uses
  br i1 %.not21, label %.critedge, label %bb.d, !prof !40

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ult i32 %.pre, 4096
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm7JSArray24createNoAllocPropStorageERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEEjj:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  %i.au = ptrtoint ptr %i.aj to i64
  %i.av = sub i64 %i.au, %i.m
  %i.aw = trunc i64 %i.av to i32
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 0, i32 %i.aw
  store i32 %.sroa.0.0.i.i.i.i.i.i, ptr %i.am, align 4, !tbaa !6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_7JSArrayEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit
  %i.ax = uitofp i32 %4 to double                 ; 2 uses
  %i.ay = shl i32 %4, 3                           ; 2 uses
  %i.az = ashr exact i32 %i.ay, 3
  %i.ba = bitcast double %i.ax to i64
  %i.bb = sitofp i32 %i.az to double
  %i.bc = bitcast double %i.bb to i64
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.l, label %bb.m, !prof !40

bb.l:                                             ; preds = %bb.k
  %i.be = or disjoint i32 %i.ay, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !77
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.bg, %i.bh
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.n, label %bb.o, !prof !44

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.bj = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bi, i32 noundef 16) #13
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i

bb.o:                                             ; preds = %bb.m
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !76
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i: ; preds = %bb.o, %bb.n
  %i.bk = phi ptr [ %i.bj, %bb.n ], [ %i.bf, %bb.o ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store double %i.ax, ptr %i.bl, align 8, !tbaa !43
  store i32 402653200, ptr %i.bk, align 8, !tbaa !52
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bm, %i.m
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = or i32 %i.bo, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit: ; preds = %bb.l, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i
  %.sroa.0.0.i = phi i32 [ %i.be, %bb.l ], [ %i.bp, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i16 = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !46
  %i.bq = and i64 %.sroa.0.0.copyload.i.i16, 281474976710655
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !72
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = and i64 %i.bv, 562949949227008
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = icmp eq ptr %i.bu, %i.bx
  br i1 %i.by, label %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit, label %bb.p, !prof !40

bb.p:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.bz, ptr noundef nonnull align 4 dereferenceable(4) %i.bs, i32 %.sroa.0.0.i) #13
  br label %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit

_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit: ; preds = %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit, %bb.p
  store i32 %.sroa.0.0.i, ptr %i.bs, align 4, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %bb.g, %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.023.1 = phi ptr [ %.0.i.i.i.i.i.i.i, %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ inttoptr (i64 -1 to ptr), %bb.g ]
  ret ptr %.sroa.023.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE(double noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #5 comdat align 2 !guid !135 {
bb.a:
  %i.a = fptosi double %0 to i32
  %i.b = shl i32 %i.a, 3                          ; 2 uses
  %i.c = ashr exact i32 %i.b, 3
  %i.d = bitcast double %0 to i64
  %i.e = sitofp i32 %i.c to double
  %i.f = bitcast double %i.e to i64
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.h = or disjoint i32 %i.b, 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.k, %i.m
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.o = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.n, i32 noundef 16) #13
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit

bb.e:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.i, align 8, !tbaa !76
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit: ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store double %0, ptr %i.q, align 8, !tbaa !43
  store i32 402653200, ptr %i.p, align 8, !tbaa !52
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = or i32 %i.u, 3
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit, %bb.b
  %.sroa.0.0 = phi i32 [ %i.h, %bb.b ], [ %i.v, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm7JSArray25createAndAllocPropStorageERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 !guid !136 {
bb.a:
  %i.a = tail call ptr @_ZN6hermes2vm7JSArray24createNoAllocPropStorageERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, i32 noundef %3, i32 noundef %4) ; 3 uses
  %.not = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !46
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !145  ; 2 uses
  %i.f = icmp ult i32 %i.e, 6
  br i1 %i.f, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %i.e, -5                         ; 2 uses
  %i.h = tail call { i32, i64 } @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.g, i32 noundef %i.g) ; 2 uses
  %i.i = extractvalue { i32, i64 } %i.h, 0
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN6hermes2vm8JSObject19allocatePropStorageENS0_6HandleIS1_EERNS0_7RuntimeEj.exit, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i32, i64 } %i.h, 1        ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !46
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = and i64 %i.q, 562949949227008
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = icmp eq ptr %i.p, %i.s
  br i1 %i.t, label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.u = and i64 %i.k, 281474976710655
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.w = inttoptr i64 %i.u to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef %i.w) #13
  br label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i: ; preds = %bb.e, %bb.d
  %i.x = ptrtoint ptr %0 to i64
  %i.y = sub i64 %i.k, %i.x
  %i.z = trunc i64 %i.y to i32
  store i32 %i.z, ptr %i.n, align 4, !tbaa !6
  br label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit

_ZN6hermes2vm8JSObject19allocatePropStorageENS0_6HandleIS1_EERNS0_7RuntimeEj.exit: ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #14
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit: ; preds = %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !guid !146 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.c = tail call ptr @_ZN6hermes2vm7JSArray24createNoAllocPropStorageERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %1, i32 noundef %2)
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 512) i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, i32 %3) local_unnamed_addr #0 align 2 !guid !147 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  %i.c = bitcast i64 %i.a to double               ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.d, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.d = fptoui double %i.c to i64                ; 2 uses
  %i.e = shl i64 %i.d, 1
  %i.f = ashr exact i64 %i.e, 1
  %i.g = sitofp i64 %i.f to double
  %i.h = fcmp une double %i.c, %i.g
  %i.i = trunc i64 %i.d to i32
  br i1 %i.h, label %bb.c, label %_ZN6hermes16truncateToUInt32Ed.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.c) #13
  br label %_ZN6hermes16truncateToUInt32Ed.exit

bb.d:                                             ; preds = %bb.a
  %i.k = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #13 ; 2 uses
  %i.l = extractvalue { i32, i64 } %i.k, 0
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge, label %bb.e, !prof !44

bb.e:                                             ; preds = %bb.d
  %i.n = extractvalue { i32, i64 } %i.k, 1
  %i.o = bitcast i64 %i.n to double               ; 4 uses
  %i.p = fptoui double %i.o to i64                ; 2 uses
  %i.q = shl i64 %i.p, 1
  %i.r = ashr exact i64 %i.q, 1
  %i.s = sitofp i64 %i.r to double
  %i.t = fcmp une double %i.o, %i.s
  %i.u = trunc i64 %i.p to i32
  br i1 %i.t, label %bb.f, label %_ZN6hermes16truncateToUInt32Ed.exit19

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.o) #13
  br label %_ZN6hermes16truncateToUInt32Ed.exit19

_ZN6hermes16truncateToUInt32Ed.exit19:            ; preds = %bb.e, %bb.f
  %.1.i.i17 = phi i32 [ %i.u, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.w = load i64, ptr %2, align 8, !tbaa !97
  %.mask.i = and i64 %i.w, -281474976710656
  %i.x = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.x, label %_ZN6hermes16truncateToUInt32Ed.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes16truncateToUInt32Ed.exit19
  %i.y = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #13 ; 2 uses
  %i.z = extractvalue { i32, i64 } %i.y, 0
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.critedge, label %bb.h, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.ab = extractvalue { i32, i64 } %i.y, 1
  %i.ac = bitcast i64 %i.ab to double
  br label %_ZN6hermes16truncateToUInt32Ed.exit

_ZN6hermes16truncateToUInt32Ed.exit:              ; preds = %bb.h, %_ZN6hermes16truncateToUInt32Ed.exit19, %bb.c, %bb.b
  %.2 = phi double [ %i.c, %bb.c ], [ %i.ac, %bb.h ], [ %i.c, %bb.b ], [ %i.o, %_ZN6hermes16truncateToUInt32Ed.exit19 ]
  %.1 = phi i32 [ %i.j, %bb.c ], [ %.1.i.i17, %bb.h ], [ %i.i, %bb.b ], [ %.1.i.i17, %_ZN6hermes16truncateToUInt32Ed.exit19 ] ; 2 uses
  %i.ad = uitofp i32 %.1 to double
  %i.ae = fcmp une double %.2, %i.ad
  br i1 %i.ae, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes16truncateToUInt32Ed.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 20, ptr %i.ag, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ah, align 8, !tbaa !51
  store ptr @.str.2, ptr %4, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ai, align 8, !tbaa !53
  %i.aj = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.critedge

bb.i:                                             ; preds = %_ZN6hermes16truncateToUInt32Ed.exit
  %i.ak = tail call i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.1, i32 %3) ; 2 uses
  %5 = and i32 %i.ak, 256
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.g, %bb.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.028.sroa.0.1 = phi i32 [ %i.aj, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.ak, %bb.i ], [ 0, %bb.g ], [ 0, %bb.d ]
  %.sroa.028.1 = phi i32 [ 0, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %5, %bb.i ], [ 0, %bb.g ], [ 0, %bb.d ]
  %.sroa.028.sroa.0.0.insert.ext = and i32 %.sroa.028.sroa.0.1, 255
  %.sroa.028.sroa.0.0.insert.insert = or disjoint i32 %.sroa.028.1, %.sroa.028.sroa.0.0.insert.ext
  ret i32 %.sroa.028.sroa.0.0.insert.insert
}

declare { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 258) i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, i32 %3) local_unnamed_addr #0 align 2 !guid !152 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %4 = alloca %"class.llvh::SmallVector.184", align 8 ; 9 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %6 = alloca %class.anon, align 8                ; 7 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %11 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !46
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 4, !tbaa !6 ; 3 uses
  %i.e = and i32 %.sroa.0.0.copyload.i.i, 7
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.g = ashr i32 %.sroa.0.0.copyload.i.i, 3
  %i.h = sitofp i32 %i.g to double
  br label %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = and i32 %.sroa.0.0.copyload.i.i, -8
  %i.j = ptrtoint ptr %1 to i64
  %i.k = zext i32 %i.i to i64
  %i.l = add i64 %i.k, %i.j
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !43
  br label %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit

_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi double [ %i.h, %bb.b ], [ %i.o, %bb.c ]
  %i.p = fptoui double %.0.i.i to i32             ; 2 uses
  %.not = icmp ult i32 %2, %i.p
  br i1 %.not, label %bb.j, label %bb.d, !prof !44

bb.d:                                             ; preds = %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit
  %i.q = uitofp i32 %2 to double                  ; 2 uses
  %i.r = shl i32 %2, 3                            ; 2 uses
  %i.s = ashr exact i32 %i.r, 3
  %i.t = bitcast double %i.q to i64
  %i.u = sitofp i32 %i.s to double
  %i.v = bitcast double %i.u to i64
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.f, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.x = or disjoint i32 %i.r, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !77
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.aa, %i.ac
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ae = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ad, i32 noundef 16) #13
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !76
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i: ; preds = %bb.h, %bb.g
  %i.af = phi ptr [ %i.ae, %bb.g ], [ %i.z, %bb.h ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store double %i.q, ptr %i.ag, align 8, !tbaa !43
  store i32 402653200, ptr %i.af, align 8, !tbaa !52
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = or i32 %i.ak, 3
  %.sroa.0.0.copyload.i.i.i35.pre = load i64, ptr %0, align 8, !tbaa !46
  %.pre100 = and i64 %.sroa.0.0.copyload.i.i.i35.pre, 281474976710655
  %.pre102 = inttoptr i64 %.pre100 to ptr
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit: ; preds = %bb.e, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i
  %.pre-phi103 = phi ptr [ %i.c, %bb.e ], [ %.pre102, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i ]
  %.sroa.0.0.i = phi i32 [ %i.x, %bb.e ], [ %i.al, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre-phi103, i64 32 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !72
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = and i64 %i.ap, 562949949227008
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = icmp eq ptr %i.ao, %i.ar
  br i1 %i.as, label %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit, label %bb.i, !prof !40

bb.i:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.am, i32 %.sroa.0.0.i) #13
  br label %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit

_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit: ; preds = %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit, %bb.i
  store i32 %.sroa.0.0.i, ptr %i.am, align 4, !tbaa !39
  br label %bb.x

bb.j:                                             ; preds = %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 %2, ptr %i.a, align 4, !tbaa !6
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 2
  %.not31 = icmp eq i32 %i.aw, 0
  br i1 %.not31, label %..loopexit_crit_edge, label %bb.k, !prof !40

..loopexit_crit_edge:                             ; preds = %bb.j
  %.pre104 = ptrtoint ptr %1 to i64
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i32, ptr %.sroa_idx, align 4
  %.sroa.speculated61 = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 %2) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.az, i32 %i.p) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bb = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.bc = icmp ugt i32 %.sroa.speculated, %.sroa.speculated61
  br i1 %i.bc, label %.lr.ph120.preheader, label %.loopexit

.lr.ph120.preheader:                              ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.ba, align 4, !tbaa !6
  %i.bd = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.be = add i64 %i.bd, %i.bb
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16392
  br label %.lr.ph120

bb.l:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl8unsafeAtERNS0_7RuntimeEj.exit
  %i.bh = icmp ugt i32 %i.bi, %.sroa.speculated61
  br i1 %i.bh, label %.lr.ph120, label %.loopexit, !llvm.loop !148

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %bb.l
  %.029118 = phi i32 [ %i.bi, %bb.l ], [ %.sroa.speculated, %.lr.ph120.preheader ] ; 3 uses
  %i.bi = add i32 %.029118, -1                    ; 3 uses
  %i.bj = sub nuw i32 %i.bi, %i.ay                ; 4 uses
  %i.bk = icmp ult i32 %i.bj, 4096
  br i1 %i.bk, label %_ZNK6hermes2vm9ArrayImpl8unsafeAtERNS0_7RuntimeEj.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph120
  %i.bl = add i32 %i.bj, -4096
  %i.bm = lshr i32 %i.bl, 10
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !39
  %i.bq = zext i32 %i.bp to i64
  %i.br = add i64 %i.bq, %i.bb
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = and i32 %i.bj, 1023
  br label %_ZNK6hermes2vm9ArrayImpl8unsafeAtERNS0_7RuntimeEj.exit

_ZNK6hermes2vm9ArrayImpl8unsafeAtERNS0_7RuntimeEj.exit: ; preds = %.lr.ph120, %bb.m
  %.sink8.i.i = phi ptr [ %i.bs, %bb.m ], [ %i.bf, %.lr.ph120 ]
  %.sink7.i.i = phi i32 [ %i.bt, %bb.m ], [ %i.bj, %.lr.ph120 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sink8.i.i, i64 8
  %i.bv = zext nneg i32 %.sink7.i.i to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bv
  %.sroa.0.0.i.i = load i32, ptr %i.bw, align 4, !tbaa !6
  %i.bx = icmp eq i32 %.sroa.0.0.i.i, 7
  br i1 %i.bx, label %bb.l, label %bb.n, !llvm.loop !148

bb.n:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl8unsafeAtERNS0_7RuntimeEj.exit
  store i32 %.029118, ptr %i.a, align 4, !tbaa !6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %..loopexit_crit_edge, %bb.n
  %.pre-phi105 = phi i64 [ %.pre104, %..loopexit_crit_edge ], [ %i.bb, %bb.n ], [ %i.bb, %bb.k ], [ %i.bb, %bb.l ]
  %i.by = phi i32 [ %2, %..loopexit_crit_edge ], [ %.029118, %bb.n ], [ %2, %bb.k ], [ %2, %bb.l ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %.sroa.0.0.copyload.i.i40 = load i32, ptr %i.bz, align 4, !tbaa !6
  %i.ca = zext i32 %.sroa.0.0.copyload.i.i40 to i64
  %i.cb = add i64 %.pre-phi105, %i.ca
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  %i.ce = load i8, ptr %i.cd, align 2
  %i.cf = and i8 %i.ce, 4
  %.not86 = icmp eq i8 %i.cf, 0
  br i1 %.not86, label %bb.s, label %bb.o, !prof !40

bb.o:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.cg, ptr %4, align 8, !tbaa !98
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.ch, align 8, !tbaa !99
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 8, ptr %i.ci, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %1, ptr %5, align 8, !tbaa !153
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !57
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !154
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !98
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 4, ptr %i.cq, align 4, !tbaa !100
  store ptr %i.cn, ptr %i.co, align 8
  store i32 1, ptr %i.cp, align 8, !tbaa !99
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.cn, ptr %i.cr, align 8, !tbaa !67
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %i.cm, ptr %i.cs, align 8, !tbaa !68
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 3 uses
  store i32 0, ptr %i.ct, align 8, !tbaa !101
  store ptr %5, ptr %i.ck, align 8, !tbaa !57
  %i.cu = call ptr @_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr %1, ptr %6, align 8, !tbaa !155
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.a, ptr %i.cv, align 8, !tbaa !156
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.cw, align 8, !tbaa !157
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %i.cx, align 8, !tbaa !158
  call fastcc void @"_ZN6hermes2vm11HiddenClass15forEachPropertyIZNS0_7JSArray9setLengthENS0_6HandleIS3_EERNS0_7RuntimeEjNS0_11PropOpFlagsEE3$_0EEvNS4_IS1_EES7_RKT_"(ptr %i.cu, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.cy = load ptr, ptr %4, align 8, !tbaa !98, !noalias !159 ; 2 uses
  %i.cz = load i32, ptr %i.ch, align 8, !tbaa !99, !noalias !159 ; 2 uses
  %.not8789 = icmp eq i32 %i.cz, 0
  br i1 %.not8789, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.da = zext i32 %i.cz to i64
  %.idx = shl nuw nsw i64 %i.da, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx
  %.pre93 = load i32, ptr %i.a, align 4, !tbaa !6
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.r, %bb.o
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.dc = load ptr, ptr %4, align 8, !tbaa !98    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cg
  br i1 %i.dd, label %_ZN4llvh11SmallVectorISt4pairIjN6hermes2vm8SymbolIDEELj8EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.dc) #13
  br label %_ZN4llvh11SmallVectorISt4pairIjN6hermes2vm8SymbolIDEELj8EED2Ev.exit

_ZN4llvh11SmallVectorISt4pairIjN6hermes2vm8SymbolIDEELj8EED2Ev.exit: ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.pre94 = load i32, ptr %i.a, align 4, !tbaa !6
  %.sroa.0.0.copyload.i.i43.pre = load i64, ptr %0, align 8, !tbaa !46
  %.pre97 = and i64 %.sroa.0.0.copyload.i.i43.pre, 281474976710655
  %.pre98 = inttoptr i64 %.pre97 to ptr
  br label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %i.de = phi i32 [ %i.dq, %bb.r ], [ %.pre93, %.lr.ph.preheader ] ; 2 uses
  %.sroa.052.090 = phi ptr [ %i.df, %bb.r ], [ %i.db, %.lr.ph.preheader ] ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.052.090, i64 -8 ; 3 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !161
  %.not34 = icmp ult i32 %i.dg, %i.de
  br i1 %.not34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.dh = load ptr, ptr %i.cr, align 8, !tbaa !67
  %i.di = load i32, ptr %i.ct, align 8, !tbaa !101 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.052.090, i64 -4
  %.sroa.02.0.copyload = load i32, ptr %i.dj, align 4, !tbaa !6
  %i.dk = call i32 @_ZN6hermes2vm8JSObject11deleteNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %.sroa.02.0.copyload, i32 0) #13 ; 0 uses
  %i.dl = zext i32 %i.di to i64
  %i.dm = load ptr, ptr %i.cm, align 8, !tbaa !98
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dl
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !105
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 128
  store i32 %i.di, ptr %i.ct, align 8, !tbaa !101
  store ptr %i.dp, ptr %i.cs, align 8, !tbaa !68
  store ptr %i.dh, ptr %i.cr, align 8, !tbaa !67
  %.pre = load i32, ptr %i.a, align 4, !tbaa !6
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %i.dq = phi i32 [ %i.de, %.lr.ph ], [ %.pre, %bb.q ]
  %.not87 = icmp eq ptr %i.df, %i.cy
  br i1 %.not87, label %._crit_edge, label %.lr.ph, !llvm.loop !151

bb.s:                                             ; preds = %_ZN4llvh11SmallVectorISt4pairIjN6hermes2vm8SymbolIDEELj8EED2Ev.exit, %.loopexit
  %.pre-phi99 = phi ptr [ %.pre98, %_ZN4llvh11SmallVectorISt4pairIjN6hermes2vm8SymbolIDEELj8EED2Ev.exit ], [ %i.c, %.loopexit ]
  %i.dr = phi i32 [ %.pre94, %_ZN4llvh11SmallVectorISt4pairIjN6hermes2vm8SymbolIDEELj8EED2Ev.exit ], [ %i.by, %.loopexit ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre-phi99, i64 24
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !37
  %i.du = icmp ult i32 %i.dr, %i.dt
  br i1 %i.du, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.dv = call noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.dr)
  %.not32 = icmp eq i32 %i.dv, 0
  br i1 %.not32, label %bb.w, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.t
  %.pre96 = load i32, ptr %i.a, align 4, !tbaa !6
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.s
  %i.dw = phi i32 [ %.pre96, %..critedge_crit_edge ], [ %i.dr, %bb.s ]
  %i.dx = uitofp i32 %i.dw to double
  %i.dy = call i32 @_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE(double noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(9816) %1) ; 2 uses
  %.sroa.0.0.copyload.i.i.i44 = load i64, ptr %0, align 8, !tbaa !46
  %i.dz = and i64 %.sroa.0.0.copyload.i.i.i44, 281474976710655
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !72
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = and i64 %i.ee, 562949949227008
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = icmp eq ptr %i.ed, %i.eg
  br i1 %i.eh, label %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit45, label %bb.u, !prof !40

bb.u:                                             ; preds = %.critedge
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 856
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ei, ptr noundef nonnull align 4 dereferenceable(4) %i.eb, i32 %i.dy) #13
  br label %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit45

_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit45: ; preds = %.critedge, %bb.u
  store i32 %i.dy, ptr %i.eb, align 4, !tbaa !39
  %i.ej = load i32, ptr %i.a, align 4, !tbaa !6   ; 2 uses
  %.not33 = icmp eq i32 %i.ej, %2
  br i1 %.not33, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit45
  %i.ek = trunc i32 %3 to i1
  br i1 %i.ek, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.w

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 1, ptr %i.el, align 8, !tbaa !49
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 24, ptr %i.em, align 8, !tbaa !50
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.en, align 8, !tbaa !51
  store ptr @.str.3, ptr %9, align 8, !tbaa !52
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %i.eo, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.ep = add i32 %i.ej, -1                       ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 7, ptr %i.eq, align 8, !tbaa !53
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.er, align 8, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.es, align 8, !tbaa !51
  %i.et = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.8, i32 noundef %i.ep) #13
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !50
  store i32 %i.ep, ptr %10, align 8, !tbaa !52
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 1, ptr %i.ew, align 8, !tbaa !49
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 1, ptr %i.ex, align 8, !tbaa !50
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.ey, align 8, !tbaa !51
  store ptr @.str.4, ptr %11, align 8, !tbaa !52
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 3, ptr %i.ez, align 8, !tbaa !53
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %11)
  %i.fa = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %12 = and i32 %i.fa, 255
  br label %bb.w

bb.w:                                             ; preds = %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit45, %bb.v, %bb.t, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.080.0 = phi i32 [ 0, %bb.t ], [ 1, %bb.v ], [ %12, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 257, %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit
  %.sroa.080.1 = phi i32 [ %.sroa.080.0, %bb.w ], [ 257, %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit ]
  ret i32 %.sroa.080.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZN6hermes2vm11HiddenClass15forEachPropertyIZNS0_7JSArray9setLengthENS0_6HandleIS3_EERNS0_7RuntimeEjNS0_11PropOpFlagsEE3$_0EEvNS4_IS1_EES7_RKT_"(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 align 2 !guid !163 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !46
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 4, !tbaa !106
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm11HiddenClass28initializeMissingPropertyMapENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13
  %.sroa.0.0.copyload.i.i5.pre = load i64, ptr %0, align 8, !tbaa !46
  %.pre11 = and i64 %.sroa.0.0.copyload.i.i5.pre, 281474976710655
  %.pre12 = inttoptr i64 %.pre11 to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi13 = phi ptr [ %.pre12, %bb.b ], [ %i.b, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.pre-phi13, i64 16
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.e, align 4, !tbaa !6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, 0
  %i.f = ptrtoint ptr %1 to i64
  %i.g = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.h = add i64 %i.g, %i.f
  %i.i = or i64 %i.h, -281474976710656
  %i.j = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.m, align 8, !tbaa !67
  store i64 %i.j, ptr %i.n, align 8, !tbaa !46
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.s = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.l, i64 %i.j) #13 ; 2 uses
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !57  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre9 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !67
  %.sroa.0.0.copyload.i.i.i6.pre = load i64, ptr %i.s, align 8, !tbaa !46
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit

_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i.i6 = phi i64 [ %i.j, %bb.d ], [ %.sroa.0.0.copyload.i.i.i6.pre, %bb.e ]
  %i.t = phi ptr [ %i.r, %bb.d ], [ %.pre9, %bb.e ] ; 2 uses
  %i.u = phi ptr [ %i.l, %bb.d ], [ %.pre, %bb.e ] ; 6 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.s, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 208 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !101  ; 4 uses
  %i.y = and i64 %.sroa.0.0.copyload.i.i.i6, 281474976710655
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4 ; 2 uses
  %.not18.i = icmp eq i32 %i.ab, 0
  br i1 %.not18.i, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %.pre.i = zext i32 %i.x to i64
  br label %"_ZN6hermes2vm15DictPropertyMap15forEachPropertyIZNS0_7JSArray9setLengthENS0_6HandleIS3_EERNS0_7RuntimeEjNS0_11PropOpFlagsEE3$_0EEvNS4_IS1_EES7_RKT_.exit"

.lr.ph.i:                                         ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.ag = zext i32 %i.x to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.ai = zext i32 %i.ab to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %.sroa.0.0.copyload.i.i11.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !46
  %i.aj = and i64 %.sroa.0.0.copyload.i.i11.i, 281474976710655
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %indvars.iv.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !164 ; 3 uses
  %i.ao = icmp ult i32 %i.an, 536870910
  br i1 %i.ao, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.sroa.0.0.copyload.i = load i64, ptr %i.ap, align 4
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !166, !nonnull !23, !align !167 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 192 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 208 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !101 ; 2 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !168, !nonnull !23, !align !167 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 9240
  %i.ax = tail call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.aw, ptr noundef nonnull align 8 dereferenceable(9816) %i.av, i32 %i.an) #13 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  %i.ba = tail call i64 @_ZN6hermes2vm12toArrayIndexENS0_10StringViewE(ptr %i.ay, i64 %i.az) #13 ; 3 uses
  %i.bb = and i64 %i.ba, 4294967296
  %.not14.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not14.i.i, label %"_ZZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsEENK3$_0clENS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %i.ba to i32 ; 2 uses
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !169, !nonnull !23, !align !170 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !6
  %i.be = icmp ugt i32 %i.bd, %.sroa.04.0.extract.trunc.i.i
  br i1 %i.be, label %"_ZZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsEENK3$_0clENS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = and i64 %.sroa.0.0.copyload.i, 8
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = add i32 %.sroa.04.0.extract.trunc.i.i, 1
  store i32 %i.bg, ptr %i.bc, align 4, !tbaa !6
  br label %"_ZZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsEENK3$_0clENS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i"

bb.k:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !171, !nonnull !23, !align !167 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !99 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !100
  %.not.i.i.i = icmp ult i32 %i.bj, %i.bl
  br i1 %.not.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIjN6hermes2vm8SymbolIDEELb1EE9push_backERKS5_.exit.i.i, label %bb.l, !prof !40

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull %i.bm, i64 noundef 0, i64 noundef 8) #13
  %.pre.i.i.i = load i32, ptr %i.bi, align 8, !tbaa !99
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIjN6hermes2vm8SymbolIDEELb1EE9push_backERKS5_.exit.i.i

_ZN4llvh23SmallVectorTemplateBaseISt4pairIjN6hermes2vm8SymbolIDEELb1EE9push_backERKS5_.exit.i.i: ; preds = %bb.l, %bb.k
  %i.bn = phi i32 [ %.pre.i.i.i, %bb.l ], [ %i.bj, %bb.k ]
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !98
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp
  %.sroa.4.0.insert.ext.i.i = zext nneg i32 %i.an to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = and i64 %i.ba, 4294967295
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, %.sroa.4.0.insert.shift.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bq, align 1
  %i.br = load i32, ptr %i.bi, align 8, !tbaa !99
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bi, align 8, !tbaa !99
  br label %"_ZZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsEENK3$_0clENS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i"

"_ZZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsEENK3$_0clENS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i": ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIjN6hermes2vm8SymbolIDEELb1EE9push_backERKS5_.exit.i.i, %bb.j, %bb.h, %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 144
  %i.bu = zext i32 %i.au to i64
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !98
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !105
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 128
  store i32 %i.au, ptr %i.at, align 8, !tbaa !101
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !68
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !67
  %i.ca = load ptr, ptr %i.af, align 8, !tbaa !98
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ag
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !105
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  store i32 %i.x, ptr %i.w, align 8, !tbaa !101
  store ptr %i.cd, ptr %i.ah, align 8, !tbaa !68
  store ptr %i.t, ptr %i.v, align 8, !tbaa !67
  br label %bb.m

bb.m:                                             ; preds = %"_ZZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsEENK3$_0clENS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i", %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.ai
  br i1 %.not.i, label %"_ZN6hermes2vm15DictPropertyMap15forEachPropertyIZNS0_7JSArray9setLengthENS0_6HandleIS3_EERNS0_7RuntimeEjNS0_11PropOpFlagsEE3$_0EEvNS4_IS1_EES7_RKT_.exit", label %bb.f, !llvm.loop !162

"_ZN6hermes2vm15DictPropertyMap15forEachPropertyIZNS0_7JSArray9setLengthENS0_6HandleIS3_EERNS0_7RuntimeEjNS0_11PropOpFlagsEE3$_0EEvNS4_IS1_EES7_RKT_.exit": ; preds = %bb.m, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.ag, %bb.m ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !98
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.pre-phi.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !105
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
end_hunk_1

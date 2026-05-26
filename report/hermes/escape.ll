inline.NumInlined: 629
inline.NumDeleted: 306
begin_hunk_0_@_ZN6hermes2vmL6encodeERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEEPFbDsE:bb.a
  store i16 %i.ca, ptr %i.ci, align 1
  %i.cj = load i32, ptr %i.g, align 8, !tbaa !34
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.g, align 8, !tbaa !34
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit87

bb.ag:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  %i.cl = and i16 %i.ca, -1024
  %or.cond = icmp eq i16 %i.cl, -9216
  br i1 %or.cond, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.ah

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.cm, align 8, !tbaa !51
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 25, ptr %i.cn, align 8, !tbaa !54
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.co, align 8, !tbaa !55
  store ptr @.str.2, ptr %5, align 8, !tbaa !44
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.cp, align 8, !tbaa !56
  %i.cq = call noundef i32 @_ZN6hermes2vm7Runtime13raiseURIErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %5) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.cr = add i16 %i.ca, 9216
  %or.cond6 = icmp ult i16 %i.cr, -1024
  br i1 %or.cond6, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not.i.i65, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.097.0, i64 1 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, %.sroa.0.0.i55
  br i1 %i.ct, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit70, label %.thread149

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit: ; preds = %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.12.0, i64 2 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, %.sroa.3.0.i54
  br i1 %i.cv, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit70, label %bb.ak

_ZN6hermes2vm11TwineChar16C2EPKc.exit70:          ; preds = %bb.aj, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.cw, align 8, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 25, ptr %i.cx, align 8, !tbaa !54
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.cy, align 8, !tbaa !55
  store ptr @.str.2, ptr %6, align 8, !tbaa !44
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.cz, align 8, !tbaa !56
  %i.da = call noundef i32 @_ZN6hermes2vm7Runtime13raiseURIErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %6) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.critedge

.thread149:                                       ; preds = %bb.aj
  %i.db = load i8, ptr %i.cs, align 1, !tbaa !44
  %i.dc = sext i8 %i.db to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit72

bb.ak:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit
  %i.dd = load i16, ptr %i.cu, align 2, !tbaa !45
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit72

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit72: ; preds = %.thread149, %bb.ak
  %.sroa.12.4141146155 = phi ptr [ %.sroa.12.0, %.thread149 ], [ %i.cu, %bb.ak ]
  %.sroa.097.4138148154 = phi ptr [ %i.cs, %.thread149 ], [ null, %bb.ak ]
  %i.de = phi i16 [ %i.dc, %.thread149 ], [ %i.dd, %bb.ak ] ; 2 uses
  %i.df = and i16 %i.de, -1024
  %or.cond8 = icmp eq i16 %i.df, -9216
  br i1 %or.cond8, label %.thread157, label %bb.al

bb.al:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.dg, align 8, !tbaa !51
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 25, ptr %i.dh, align 8, !tbaa !54
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.di, align 8, !tbaa !55
  store ptr @.str.2, ptr %7, align 8, !tbaa !44
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.dj, align 8, !tbaa !56
  %i.dk = call noundef i32 @_ZN6hermes2vm7Runtime13raiseURIErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %7) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %.critedge

.thread157:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit72
  %i.dl = zext i16 %i.de to i32
  %i.dm = shl nuw nsw i32 %i.cb, 10
  %i.dn = add nsw i32 %i.dm, -56613888
  %i.do = add nuw nsw i32 %i.dn, %i.dl
  br label %bb.am

bb.am:                                            ; preds = %.thread157, %bb.ah
  %.sroa.097.1 = phi ptr [ %.sroa.097.0, %bb.ah ], [ %.sroa.097.4138148154, %.thread157 ]
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %bb.ah ], [ %.sroa.12.4141146155, %.thread157 ]
  %.242 = phi i32 [ %i.cb, %bb.ah ], [ %i.do, %.thread157 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr %i.a, ptr %i.b, align 8, !tbaa !57
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %.242) #10
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.bw                    ; 2 uses
  %i.ds = and i64 %i.dr, 4294967295
  %.not169 = icmp eq i64 %i.ds, 0
  br i1 %.not169, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.am
  %wide.trip.count = and i64 %i.dr, 4294967295
  %.pre = load i32, ptr %i.g, align 8, !tbaa !34
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit85
  %i.dt = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.fb, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit85 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit85 ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !44  ; 2 uses
  %i.dw = load i32, ptr %i.h, align 4, !tbaa !35
  %.not.i75 = icmp ult i32 %i.dt, %i.dw
  br i1 %.not.i75, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit77, label %bb.an, !prof !26

bb.an:                                            ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.f, i64 noundef 0, i64 noundef 2) #10
  %.pre.i76 = load i32, ptr %i.g, align 8, !tbaa !34
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit77

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit77: ; preds = %.lr.ph, %bb.an
  %i.dx = phi i32 [ %.pre.i76, %bb.an ], [ %i.dt, %.lr.ph ]
  %i.dy = load ptr, ptr %4, align 8, !tbaa !33
  %i.dz = zext i32 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %i.dz
  store i16 37, ptr %i.ea, align 1
  %i.eb = load i32, ptr %i.g, align 8, !tbaa !34
  %i.ec = add i32 %i.eb, 1                        ; 3 uses
  store i32 %i.ec, ptr %i.g, align 8, !tbaa !34
  %i.ed = zext i8 %i.dv to i32                    ; 2 uses
  %i.ee = lshr i32 %i.ed, 4
  %i.ef = icmp ult i8 %i.dv, -96
  %i.eg = trunc nuw nsw i32 %i.ee to i16          ; 2 uses
  %i.eh = or disjoint i16 %i.eg, 48
  %i.ei = add nuw nsw i16 %i.eg, 55
  %.0.i78 = select i1 %i.ef, i16 %i.eh, i16 %i.ei
  %i.ej = load i32, ptr %i.h, align 4, !tbaa !35
  %.not.i79 = icmp ult i32 %i.ec, %i.ej
  br i1 %.not.i79, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit81, label %bb.ao, !prof !26

bb.ao:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit77
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.f, i64 noundef 0, i64 noundef 2) #10
  %.pre.i80 = load i32, ptr %i.g, align 8, !tbaa !34
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit81

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit81: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit77, %bb.ao
  %i.ek = phi i32 [ %.pre.i80, %bb.ao ], [ %i.ec, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit77 ]
  %i.el = load ptr, ptr %4, align 8, !tbaa !33
  %i.em = zext i32 %i.ek to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.el, i64 %i.em
  store i16 %.0.i78, ptr %i.en, align 1
  %i.eo = load i32, ptr %i.g, align 8, !tbaa !34
  %i.ep = add i32 %i.eo, 1                        ; 3 uses
  store i32 %i.ep, ptr %i.g, align 8, !tbaa !34
  %i.eq = and i32 %i.ed, 15                       ; 2 uses
  %i.er = icmp samesign ult i32 %i.eq, 10
  %i.es = trunc nuw nsw i32 %i.eq to i16          ; 2 uses
  %i.et = or disjoint i16 %i.es, 48
  %i.eu = add nuw nsw i16 %i.es, 55
  %.0.i82 = select i1 %i.er, i16 %i.et, i16 %i.eu
  %i.ev = load i32, ptr %i.h, align 4, !tbaa !35
  %.not.i83 = icmp ult i32 %i.ep, %i.ev
  br i1 %.not.i83, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit85, label %bb.ap, !prof !26

bb.ap:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit81
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.f, i64 noundef 0, i64 noundef 2) #10
  %.pre.i84 = load i32, ptr %i.g, align 8, !tbaa !34
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit85

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit85: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit81, %bb.ap
  %i.ew = phi i32 [ %.pre.i84, %bb.ap ], [ %i.ep, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit81 ]
  %i.ex = load ptr, ptr %4, align 8, !tbaa !33
  %i.ey = zext i32 %i.ew to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %i.ey
  store i16 %.0.i82, ptr %i.ez, align 1
  %i.fa = load i32, ptr %i.g, align 8, !tbaa !34
  %i.fb = add i32 %i.fa, 1                        ; 2 uses
  store i32 %i.fb, ptr %i.g, align 8, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit85, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit87

_ZN6hermes2vm10StringView14const_iteratorppEv.exit87: ; preds = %._crit_edge, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %.sroa.097.3 = phi ptr [ %.sroa.097.0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit ], [ %.sroa.097.1, %._crit_edge ] ; 2 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit ], [ %.sroa.12.1, %._crit_edge ]
  %.not.i86 = icmp eq ptr %.sroa.097.3, null      ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.097.3, i64 1
  %.sroa.12.5.idx = select i1 %.not.i86, i64 2, i64 0
  %.sroa.12.5 = getelementptr inbounds nuw i8, ptr %.sroa.12.3, i64 %.sroa.12.5.idx
  %.sroa.097.0.be = select i1 %.not.i86, ptr null, ptr %i.fc
  br label %bb.ac, !llvm.loop !59

.critedge48:                                      ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread
  %i.fd = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.fe = load i32, ptr %i.g, align 8, !tbaa !34  ; 2 uses
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %.not.i88 = icmp ult i32 %i.fe, 65536
  br i1 %.not.i88, label %bb.aq, label %bb.ar, !prof !26

bb.aq:                                            ; preds = %.critedge48
  %i.fg = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.fd, i64 %i.ff) #10
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.ar:                                            ; preds = %.critedge48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.168") align 8 %3, ptr %i.fd, i64 %i.ff)
  %i.fh = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %i.fi = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ar
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !44
  %i.fm = shl i64 %i.fl, 1
  %i.fn = add i64 %i.fm, 2
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fn) #11
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.fg, %bb.aq ], [ %i.fh, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ] ; 2 uses
  %i.fo = extractvalue { i32, i64 } %.pn.i, 0
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %.critedge, label %bb.as, !prof !12

bb.as:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %i.fq = extractvalue { i32, i64 } %.pn.i, 1
  %i.fr = and i64 %i.fq, 281474976710655
  %i.fs = or disjoint i64 %i.fr, -844424930131968 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !13 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 192 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !16 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 200
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !25
  %i.fz = icmp ult ptr %i.fw, %i.fy
  br i1 %i.fz, label %bb.at, label %bb.au, !prof !26

bb.at:                                            ; preds = %bb.as
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.ga, ptr %i.fv, align 8, !tbaa !16
  store i64 %i.fs, ptr %i.fw, align 8, !tbaa !27
  br label %.critedge

bb.au:                                            ; preds = %bb.as
  %i.gb = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.fu, i64 %i.fs) #10
  br label %.critedge

.critedge:                                        ; preds = %bb.al, %_ZN6hermes2vm11TwineChar16C2EPKc.exit70, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, %bb.at, %bb.au, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.0120.7 = phi ptr [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.gb, %bb.au ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ %i.fw, %bb.at ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm11TwineChar16C2EPKc.exit70 ], [ inttoptr (i64 -1 to ptr), %bb.al ]
  %i.gc = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.f
  br i1 %i.gd, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.gc) #10
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit:          ; preds = %.critedge, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret ptr %.sroa.0120.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN6hermes2vmL15unescapedURISetEDs(i16 noundef zeroext %0) #3 {
bb.a:
  switch i16 %0, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.thread.i [
    i16 59, label %_ZN6hermes2vmL11uriReservedEDs.exit.thread
    i16 47, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.i
    i16 63, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.i
    i16 58, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.i
    i16 64, label %_ZN6hermes2vmL11uriReservedEDs.exit.thread
    i16 38, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.fold.split.i
    i16 61, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.fold.split.i
    i16 43, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.fold.split.i
    i16 36, label %_ZN6hermes2vmL11uriReservedEDs.exit.thread
    i16 44, label %_ZN6hermes2vmL11uriReservedEDs.exit.thread
    i16 45, label %_ZN6hermes2vmL12uriUnescapedEDs.exit
    i16 95, label %_ZN6hermes2vmL12uriUnescapedEDs.exit
    i16 46, label %_ZN6hermes2vmL12uriUnescapedEDs.exit
    i16 33, label %_ZN6hermes2vmL12uriUnescapedEDs.exit
    i16 126, label %_ZN6hermes2vmL12uriUnescapedEDs.exit
    i16 42, label %_ZN6hermes2vmL12uriUnescapedEDs.exit
    i16 39, label %_ZN6hermes2vmL12uriUnescapedEDs.exit
    i16 40, label %_ZN6hermes2vmL12uriUnescapedEDs.exit
    i16 41, label %_ZN6hermes2vmL12uriUnescapedEDs.exit
  ]

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.fold.split.i: ; preds = %bb.a
  br label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.i

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.i: ; preds = %bb.a, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.fold.split.i
  %.02946.i.i.i.lcssa16.i = phi ptr [ @.str.3, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @.str.3, i64 8), %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.fold.split.i ]
  %i.a = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.lcssa16.i, i64 2
  br label %_ZN6hermes2vmL11uriReservedEDs.exit

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.fold.split.i: ; preds = %bb.a
  br label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.i

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.i: ; preds = %bb.a, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.fold.split.i
  %.02946.i.i.i.lcssa17.i = phi ptr [ @.str.3, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @.str.3, i64 8), %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.fold.split.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.lcssa17.i, i64 4
  br label %_ZN6hermes2vmL11uriReservedEDs.exit

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.fold.split.i: ; preds = %bb.a
  br label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.i

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.i: ; preds = %bb.a, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.fold.split.i
  %.02946.i.i.i.lcssa18.i = phi ptr [ @.str.3, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @.str.3, i64 8), %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.fold.split.i ]
  %i.c = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.lcssa18.i, i64 6
  br label %_ZN6hermes2vmL11uriReservedEDs.exit

_ZN6hermes2vmL11uriReservedEDs.exit:              ; preds = %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.i, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.i, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.i
  %.028.i.i.i.i = phi ptr [ %i.b, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.i ], [ %i.a, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.i ], [ %i.c, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.i ]
  %.not = icmp eq ptr %.028.i.i.i.i, getelementptr inbounds nuw (i8, ptr @.str.3, i64 20)
  br i1 %.not, label %_ZN6hermes2vmL11uriReservedEDs.exit.thread4, label %_ZN6hermes2vmL11uriReservedEDs.exit.thread

_ZN6hermes2vmL11uriReservedEDs.exit.thread4:      ; preds = %_ZN6hermes2vmL11uriReservedEDs.exit
  %switch.tableidx = add i16 %0, -39              ; 2 uses
  %i.d = icmp ult i16 %switch.tableidx, 8
  %switch.maskindex = trunc i16 %switch.tableidx to i8
  %switch.shifted = lshr i8 -49, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.d, i1 %switch.lobit, i1 false
  %i.e = add i16 %0, -48
  %or.cond.i = icmp ult i16 %i.e, 10
  %or.cond6 = or i1 %or.cond, %or.cond.i
  br i1 %or.cond6, label %_ZN6hermes2vmL12uriUnescapedEDs.exit, label %bb.b

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.thread.i:     ; preds = %bb.a
  %.old = add i16 %0, -48
  %or.cond.i.old = icmp ult i16 %.old, 10
  br i1 %or.cond.i.old, label %_ZN6hermes2vmL12uriUnescapedEDs.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes2vmL11uriReservedEDs.exit.thread4, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.thread.i
  %i.f = or i16 %0, 32
  %i.g = add i16 %i.f, -97
  %i.h = icmp ult i16 %i.g, 26
  br label %_ZN6hermes2vmL12uriUnescapedEDs.exit

_ZN6hermes2vmL12uriUnescapedEDs.exit:             ; preds = %_ZN6hermes2vmL11uriReservedEDs.exit.thread4, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.thread.i, %bb.b
  %.0.i = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ], [ true, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.thread.i ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %_ZN6hermes2vmL11uriReservedEDs.exit.thread4 ]
  %i.i = icmp eq i16 %0, 35
  %spec.select = or i1 %i.i, %.0.i
  br label %_ZN6hermes2vmL11uriReservedEDs.exit.thread

_ZN6hermes2vmL11uriReservedEDs.exit.thread:       ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %_ZN6hermes2vmL12uriUnescapedEDs.exit, %_ZN6hermes2vmL11uriReservedEDs.exit
  %i.j = phi i1 [ %spec.select, %_ZN6hermes2vmL12uriUnescapedEDs.exit ], [ true, %_ZN6hermes2vmL11uriReservedEDs.exit ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18encodeURIComponentEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10 ; 2 uses
  %.not9 = icmp eq ptr %i.e, inttoptr (i64 -1 to ptr)
  br i1 %.not9, label %bb.f, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = or i64 %i.f, -844424930131968            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !16
  store i64 %i.g, ptr %i.k, align 8, !tbaa !27
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN6hermes2vmL6decodeERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEEPFbDsE:bb.a
  %i.kf = getelementptr inbounds nuw i8, ptr %spec.select441.1, i64 2 ; 2 uses
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !44
  %i.kh = sext i8 %i.kg to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit165.2

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit157.2: ; preds = %.lr.ph.2
  %i.ki = getelementptr inbounds nuw i8, ptr %spec.select442.1, i64 2 ; 2 uses
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !45
  %.not62.2 = icmp eq i16 %i.kj, 37
  br i1 %.not62.2, label %bb.aw, label %.critedge9

bb.aw:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit157.2
  %.sroa.3.0.i160.2 = getelementptr inbounds nuw i8, ptr %spec.select442.1, i64 4 ; 2 uses
  %i.kk = load i16, ptr %.sroa.3.0.i160.2, align 2, !tbaa !45
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit165.2

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit165.2: ; preds = %bb.aw, %.thread380.2
  %.sroa.0.0.i161398.2 = phi ptr [ %i.kf, %.thread380.2 ], [ null, %bb.aw ]
  %.sroa.3.0.i160395.2 = phi ptr [ %spec.select442.1, %.thread380.2 ], [ %.sroa.3.0.i160.2, %bb.aw ]
  %.sroa.27.10366374391.2 = phi ptr [ %spec.select442.1, %.thread380.2 ], [ %i.ki, %bb.aw ] ; 2 uses
  %.sroa.0241.10363377389.2 = phi ptr [ %i.kd, %.thread380.2 ], [ null, %bb.aw ] ; 2 uses
  %i.kl = phi i16 [ %i.kh, %.thread380.2 ], [ %i.kk, %bb.aw ] ; 2 uses
  %i.km = add i16 %i.kl, -48
  %or.cond.i166.2 = icmp ult i16 %i.km, 10
  %i.kn = or i16 %i.kl, 32
  %i.ko = add i16 %i.kn, -97
  %i.kp = icmp ult i16 %i.ko, 6
  %i.kq = or i1 %or.cond.i166.2, %i.kp
  br i1 %i.kq, label %bb.ax, label %.critedge9

bb.ax:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit165.2
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0241.10363377389.2, i64 2 ; 3 uses
  %.sroa.3.0.idx.i168.2 = select i1 %.not.i155.2, i64 2, i64 0
  %.sroa.3.0.i169.2 = getelementptr inbounds nuw [2 x i8], ptr %.sroa.27.10366374391.2, i64 %.sroa.3.0.idx.i168.2 ; 2 uses
  br i1 %.not.i155.2, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit174.2, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit174.thread.2

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit174.thread.2: ; preds = %bb.ax
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !44
  %i.kt = sext i8 %i.ks to i16                    ; 2 uses
  %i.ku = add nsw i16 %i.kt, -58
  %or.cond.i175506.2 = icmp ult i16 %i.ku, -10
  %i.kv = or i16 %i.kt, 32
  %i.kw = add nsw i16 %i.kv, -103
  %i.kx = icmp ult i16 %i.kw, -6
  %.not450507.2 = and i1 %or.cond.i175506.2, %i.kx
  br i1 %.not450507.2, label %.critedge9, label %.thread508.2

.thread508.2:                                     ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit174.thread.2
  %i.ky = load i8, ptr %.sroa.0.0.i161398.2, align 1, !tbaa !44
  %i.kz = sext i8 %i.ky to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit185.2

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit174.2: ; preds = %bb.ax
  %i.la = load i16, ptr %.sroa.3.0.i169.2, align 2, !tbaa !45 ; 2 uses
  %i.lb = add i16 %i.la, -58
  %or.cond.i175.2 = icmp ult i16 %i.lb, -10
  %i.lc = or i16 %i.la, 32
  %i.ld = add i16 %i.lc, -103
  %i.le = icmp ult i16 %i.ld, -6
  %.not450.2 = and i1 %or.cond.i175.2, %i.le
  br i1 %.not450.2, label %.critedge9, label %bb.ay

bb.ay:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit174.2
  %i.lf = load i16, ptr %.sroa.3.0.i160395.2, align 2, !tbaa !45
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit185.2

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit185.2: ; preds = %bb.ay, %.thread508.2
  %i.lg = phi i16 [ %i.kz, %.thread508.2 ], [ %i.lf, %bb.ay ] ; 3 uses
  %i.lh = add i16 %i.lg, -48
  %or.cond.i186.2 = icmp ult i16 %i.lh, 10        ; 2 uses
  %i.li = or i16 %i.lg, 32
  %.sink10.i187.2 = select i1 %or.cond.i186.2, i16 %i.lg, i16 %i.li
  %.sink9.i188.2 = select i1 %or.cond.i186.2, i32 -48, i32 -87
  %i.lj = zext i16 %.sink10.i187.2 to i32
  %i.lk = add nsw i32 %.sink9.i188.2, %i.lj
  %i.ll = shl nsw i32 %i.lk, 4
  br i1 %.not.i155.2, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit185.2
  %i.lm = load i8, ptr %i.kr, align 1, !tbaa !44
  %i.ln = sext i8 %i.lm to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit196.2

bb.ba:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit185.2
  %i.lo = load i16, ptr %.sroa.3.0.i169.2, align 2, !tbaa !45
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit196.2

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit196.2: ; preds = %bb.ba, %bb.az
  %i.lp = phi i16 [ %i.ln, %bb.az ], [ %i.lo, %bb.ba ] ; 3 uses
  %i.lq = add i16 %i.lp, -48
  %or.cond.i197.2 = icmp ult i16 %i.lq, 10        ; 2 uses
  %i.lr = or i16 %i.lp, 32
  %.sink10.i198.2 = select i1 %or.cond.i197.2, i16 %i.lp, i16 %i.lr
  %.sink9.i199.2 = select i1 %or.cond.i197.2, i32 -48, i32 -87
  %i.ls = zext i16 %.sink10.i198.2 to i32
  %i.lt = add nsw i32 %.sink9.i199.2, %i.ls
  %i.lu = or i32 %i.lt, %i.ll                     ; 2 uses
  %i.lv = and i32 %i.lu, 192
  %.not63.2 = icmp eq i32 %i.lv, 128
  br i1 %.not63.2, label %_ZN6hermes2vm10StringView14const_iteratorpLEl.exit203.2, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit201

_ZN6hermes2vm10StringView14const_iteratorpLEl.exit203.2: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit196.2
  %i.lw = trunc i32 %i.lu to i8
  %spec.select441.2 = select i1 %.not.i155.2, ptr %.sroa.0241.10363377389.2, ptr %i.kr
  %spec.select442.idx.2 = select i1 %.not.i155.2, i64 4, i64 0
  %spec.select442.2 = getelementptr inbounds nuw i8, ptr %.sroa.27.10366374391.2, i64 %spec.select442.idx.2
  store i8 %i.lw, ptr %i.ce, align 1, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN6hermes2vm10StringView14const_iteratorpLEl.exit203.2, %_ZN6hermes2vm10StringView14const_iteratorpLEl.exit203.1, %_ZN6hermes2vm10StringView14const_iteratorpLEl.exit203
  %spec.select441.lcssa = phi ptr [ %spec.select441, %_ZN6hermes2vm10StringView14const_iteratorpLEl.exit203 ], [ %spec.select441.1, %_ZN6hermes2vm10StringView14const_iteratorpLEl.exit203.1 ], [ %spec.select441.2, %_ZN6hermes2vm10StringView14const_iteratorpLEl.exit203.2 ] ; 3 uses
  %spec.select442.lcssa = phi ptr [ %spec.select442, %_ZN6hermes2vm10StringView14const_iteratorpLEl.exit203 ], [ %spec.select442.1, %_ZN6hermes2vm10StringView14const_iteratorpLEl.exit203.1 ], [ %spec.select442.2, %_ZN6hermes2vm10StringView14const_iteratorpLEl.exit203.2 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store ptr %i.b, ptr %i.d, align 8, !tbaa !57
  %i.lx = getelementptr inbounds nuw i8, ptr %i.b, i64 %wide.trip.count
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store ptr %i.c, ptr %i.e, align 8, !tbaa !61
  %i.ly = call noundef i32 @_ZN4llvh18ConvertUTF8toUTF32EPPKhS1_PPjS3_NS_15ConversionFlagsE(ptr noundef nonnull %i.d, ptr noundef nonnull %i.lx, ptr noundef nonnull %i.e, ptr noundef nonnull %i.cb, i32 noundef 0) #10
  %.not65 = icmp eq i32 %i.ly, 0
  br i1 %.not65, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.lz = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.lz, align 8, !tbaa !51
  %i.ma = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 25, ptr %i.ma, align 8, !tbaa !54
  %i.mb = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.mb, align 8, !tbaa !55
  store ptr @.str.5, ptr %10, align 8, !tbaa !44
  %i.mc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.mc, align 8, !tbaa !56
  %i.md = call noundef i32 @_ZN6hermes2vm7Runtime13raiseURIErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %10) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.bh

bb.bc:                                            ; preds = %._crit_edge
  %i.me = load i32, ptr %i.c, align 4, !tbaa !3   ; 4 uses
  %i.mf = icmp ult i32 %i.me, 65536
  br i1 %i.mf, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.mg = trunc nuw i32 %i.me to i16              ; 2 uses
  store i16 %i.mg, ptr %i.a, align 2, !tbaa !45
  %i.mh = call noundef zeroext i1 %2(i16 noundef zeroext %i.mg) #10, !callees !60
  br i1 %i.mh, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
  br label %.thread419

bb.bf:                                            ; preds = %bb.bd
  %i.mi = load ptr, ptr %4, align 8, !tbaa !33
  %i.mj = load i32, ptr %i.l, align 8, !tbaa !34
  %i.mk = zext i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %i.mk
  %.not.i206 = icmp eq ptr %spec.select441.lcssa, null ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %spec.select441.lcssa, i64 1
  %.sroa.3.0.idx.i207 = zext i1 %.not.i206 to i64
  %.sroa.3.0.i208 = getelementptr inbounds nuw [2 x i8], ptr %spec.select442.lcssa, i64 %.sroa.3.0.idx.i207
  %.sroa.0.0.i209 = select i1 %.not.i206, ptr null, ptr %i.mm
  %i.mn = call noundef ptr @_ZN4llvh15SmallVectorImplIDsE6insertIN6hermes2vm10StringView14const_iteratorEvEEPDsS7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ml, ptr %.sroa.0241.0, ptr %.sroa.27.0, ptr %.sroa.0.0.i209, ptr %.sroa.3.0.i208) ; 0 uses
  br label %.thread419

bb.bg:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.mo = trunc i32 %i.me to i16
  %i.mp = and i16 %i.mo, 1023
  %i.mq = or disjoint i16 %i.mp, -9216
  store i16 %i.mq, ptr %i.f, align 2, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.mr = add i32 %i.me, 983040
  %i.ms = lshr i32 %i.mr, 10
  %i.mt = trunc i32 %i.ms to i16
  %i.mu = and i16 %i.mt, 1023
  %i.mv = or disjoint i16 %i.mu, -10240
  store i16 %i.mv, ptr %i.g, align 2, !tbaa !45
  call void @_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 2 dereferenceable(2) %i.g)
  call void @_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 2 dereferenceable(2) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %.thread419

.thread412:                                       ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit154, %_ZN6hermes2vm11TwineChar16C2EPKc.exit201, %.critedge9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.bh

.thread419:                                       ; preds = %bb.be, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit213

_ZN6hermes2vm10StringView14const_iteratorppEv.exit213: ; preds = %.thread419, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit135, %bb.al, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %.sroa.0241.7 = phi ptr [ %.sroa.0241.0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit ], [ %spec.select441.lcssa, %.thread419 ], [ %spec.select, %bb.al ], [ %spec.select, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit135 ] ; 2 uses
  %.sroa.27.7 = phi ptr [ %.sroa.27.0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit ], [ %spec.select442.lcssa, %.thread419 ], [ %spec.select440, %bb.al ], [ %spec.select440, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit135 ]
  %.not.i212 = icmp eq ptr %.sroa.0241.7, null    ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0241.7, i64 1
  %.sroa.27.8.idx = select i1 %.not.i212, i64 2, i64 0
  %.sroa.27.8 = getelementptr inbounds nuw i8, ptr %.sroa.27.7, i64 %.sroa.27.8.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.sroa.0241.0.be = select i1 %.not.i212, ptr null, ptr %i.mw
  br label %bb.ac, !llvm.loop !63

bb.bh:                                            ; preds = %.critedge, %.thread412, %bb.bb, %.critedge6.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.bi:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread
  %i.mx = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.my = load i32, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.mz = zext i32 %i.my to i64                   ; 2 uses
  %.not.i214 = icmp ult i32 %i.my, 65536
  br i1 %.not.i214, label %bb.bj, label %bb.bk, !prof !26

bb.bj:                                            ; preds = %bb.bi
  %i.na = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.mx, i64 %i.mz) #10
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.168") align 8 %3, ptr %i.mx, i64 %i.mz)
  %i.nb = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %i.nc = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ne = icmp eq ptr %i.nc, %i.nd
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bk
  %i.nf = load i64, ptr %i.nd, align 8, !tbaa !44
  %i.ng = shl i64 %i.nf, 1
  %i.nh = add i64 %i.ng, 2
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nh) #11
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.na, %bb.bj ], [ %i.nb, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ]
  %i.ni = extractvalue { i32, i64 } %.pn.i, 1
  %i.nj = and i64 %i.ni, 281474976710655
  %i.nk = or disjoint i64 %i.nj, -844424930131968 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !13 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 192 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !16 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 200
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !25
  %i.nr = icmp ult ptr %i.no, %i.nq
  br i1 %i.nr, label %bb.bl, label %bb.bm, !prof !26

bb.bl:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.ns, ptr %i.nn, align 8, !tbaa !16
  store i64 %i.nk, ptr %i.no, align 8, !tbaa !27
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.bm:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %i.nt = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.nm, i64 %i.nk) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.bm, %bb.bl, %bb.bh
  %.sroa.0290.10 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.bh ], [ %i.no, %bb.bl ], [ %i.nt, %bb.bm ]
  %i.nu = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.k
  br i1 %i.nv, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  call void @free(ptr noundef %i.nu) #10
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit:          ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret ptr %.sroa.0290.10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN6hermes2vmL14reservedURISetEDs(i16 noundef zeroext %0) #3 {
bb.a:
  switch i16 %0, label %bb.b [
    i16 59, label %_ZN6hermes2vmL11uriReservedEDs.exit
    i16 47, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.i
    i16 63, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.i
    i16 58, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.i
    i16 64, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.fold.split.i
    i16 38, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.fold.split.i
    i16 61, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.fold.split.i
    i16 43, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.fold.split.i
    i16 36, label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.fold.split20.i
    i16 44, label %switch.edge.i
  ]

switch.edge.i:                                    ; preds = %bb.a
  br label %_ZN6hermes2vmL11uriReservedEDs.exit

bb.b:                                             ; preds = %bb.a
  br label %_ZN6hermes2vmL11uriReservedEDs.exit

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.fold.split.i: ; preds = %bb.a
  br label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.i

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.i: ; preds = %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.fold.split.i, %bb.a
  %.02946.i.i.i.lcssa16.i = phi ptr [ @.str.3, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @.str.3, i64 8), %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.fold.split.i ]
  %i.a = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.lcssa16.i, i64 2
  br label %_ZN6hermes2vmL11uriReservedEDs.exit

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.fold.split.i: ; preds = %bb.a
  br label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.i

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.i: ; preds = %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.fold.split.i, %bb.a
  %.02946.i.i.i.lcssa17.i = phi ptr [ @.str.3, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @.str.3, i64 8), %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.fold.split.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.lcssa17.i, i64 4
  br label %_ZN6hermes2vmL11uriReservedEDs.exit

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.fold.split.i: ; preds = %bb.a
  br label %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.i

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.i: ; preds = %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.fold.split.i, %bb.a
  %.02946.i.i.i.lcssa18.i = phi ptr [ @.str.3, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @.str.3, i64 8), %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.fold.split.i ]
  %i.c = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.lcssa18.i, i64 6
  br label %_ZN6hermes2vmL11uriReservedEDs.exit

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.fold.split.i: ; preds = %bb.a
  br label %_ZN6hermes2vmL11uriReservedEDs.exit

_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.fold.split20.i: ; preds = %bb.a
  br label %_ZN6hermes2vmL11uriReservedEDs.exit

_ZN6hermes2vmL11uriReservedEDs.exit:              ; preds = %bb.a, %switch.edge.i, %bb.b, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.i, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.i, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.i, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.fold.split.i, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.fold.split20.i
  %.028.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.3, i64 8), %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @.str.3, i64 20), %bb.b ], [ %i.c, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit12.i ], [ %i.a, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit8.i ], [ %i.b, %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.loopexit.split.loop.exit10.i ], [ @.str.3, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @.str.3, i64 16), %_ZSt4findIPKDsDsET_S2_S2_RKT0_.exit.fold.split20.i ], [ getelementptr inbounds nuw (i8, ptr @.str.3, i64 18), %switch.edge.i ]
  %i.d = icmp ne ptr %.028.i.i.i.i, getelementptr inbounds nuw (i8, ptr @.str.3, i64 20)
  %i.e = icmp eq i16 %0, 35
  %i.f = or i1 %i.e, %i.d
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18decodeURIComponentEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10 ; 2 uses
  %.not10 = icmp eq ptr %i.e, inttoptr (i64 -1 to ptr)
  br i1 %.not10, label %bb.f, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = or i64 %i.f, -844424930131968            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !16
  store i64 %i.g, ptr %i.k, align 8, !tbaa !27
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.i, i64 %i.g) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ]
  %i.q = tail call fastcc ptr @_ZN6hermes2vmL6decodeERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEEPFbDsE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, ptr noundef nonnull @"_ZZN6hermes2vm18decodeURIComponentEPvRNS0_7RuntimeENS0_10NativeArgsEEN3$_08__invokeEDs") ; 2 uses
  %.not11 = icmp eq ptr %i.q, inttoptr (i64 -1 to ptr)
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.a
  %.sroa.09.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ]
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %.sroa.0.0.copyload.i, %bb.e ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.09.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.168") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_1

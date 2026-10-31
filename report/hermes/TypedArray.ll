Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/TypedArray?download=true
inline.NumInlined: 3640
inline.NumDeleted: 1030
begin_hunk_0_@_ZN6hermes2vm33typedArrayPrototypeToLocaleStringEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 192 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !51 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 200
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !52
  %i.dl = icmp ult ptr %i.di, %i.dk
  br i1 %i.dl, label %bb.v, label %bb.w, !prof !53

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dm, ptr %i.dh, align 8, !tbaa !51
  store i64 %i.df, ptr %i.di, align 8, !tbaa !23
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dn = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dg, i64 %i.df) #10
  br label %bb.x

.critedge:                                        ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.do, align 8, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 29, ptr %i.dp, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.dq, align 8, !tbaa !14
  store ptr @.str.17, ptr %5, align 8, !tbaa !15
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.dr, align 8, !tbaa !16
  %i.ds = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.critedge68

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i83 = phi ptr [ %i.di, %bb.v ], [ %i.dn, %bb.w ] ; 2 uses
  %i.dt = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.065148, ptr %.0.i.i.i.i.i.i83) #10 ; 0 uses
  %.sroa.0.0.copyload.i.i84 = load i64, ptr %.0.i.i.i.i.i.i83, align 8, !tbaa !23
  %i.du = and i64 %.sroa.0.0.copyload.i.i84, 281474976710655
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !328
  %i.dy = and i32 %i.dx, 2147483647
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = add i64 %.sroa.0126.0146, %i.dz         ; 3 uses
  %i.eb = lshr i64 %i.ea, 32
  %i.ec = trunc nuw i64 %i.eb to i32
  %i.ed = or i32 %.sroa.6128.0147, %i.ec          ; 2 uses
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.aw
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !60
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 128
  store i32 %i.av, ptr %i.k, align 8, !tbaa !59
  store ptr %i.eh, ptr %i.j, align 8, !tbaa !52
  store ptr %i.au, ptr %i.i, align 8, !tbaa !51
  %i.ei = add nuw i32 %.065148, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ei, %i.ae
  br i1 %exitcond.not, label %.critedge70, label %bb.j, !llvm.loop !563

.critedge70:                                      ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %.not.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i, label %bb.y, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %.critedge70
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10, !noalias !575
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.ej, align 8, !tbaa !12, !noalias !575
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 27, ptr %i.ek, align 8, !tbaa !13, !noalias !575
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.el, align 8, !tbaa !14, !noalias !575
  store ptr @.str.21, ptr %3, align 8, !tbaa !15, !noalias !575
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.em, align 8, !tbaa !16, !noalias !575
  %i.en = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #10, !noalias !575 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10, !noalias !575
  br label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread

bb.y:                                             ; preds = %.critedge70
  %i.eo = trunc i64 %i.ea to i32                  ; 3 uses
  %i.ep = icmp ugt i32 %i.eo, 65535
  br i1 %i.ep, label %bb.aa, label %bb.z, !prof !64

bb.z:                                             ; preds = %bb.y
  %i.eq = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.eo) #10, !noalias !575
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.er = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.eo) #10, !noalias !575
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i: ; preds = %bb.aa, %bb.z
  %.pn.i.i = phi { i32, i64 } [ %i.er, %bb.aa ], [ %i.eq, %bb.z ] ; 2 uses
  %i.es = extractvalue { i32, i64 } %.pn.i.i, 0
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread, label %bb.ab, !prof !64

bb.ab:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i
  %i.eu = extractvalue { i32, i64 } %.pn.i.i, 1
  %i.ev = and i64 %i.eu, 281474976710655
  %i.ew = or disjoint i64 %i.ev, -844424930131968 ; 2 uses
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !42, !noalias !575 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 192 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !51, !noalias !575 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 200
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !52, !noalias !575
  %i.fc = icmp ult ptr %i.ez, %i.fb
  br i1 %i.fc, label %bb.ac, label %bb.ad, !prof !53

bb.ac:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.fd, ptr %i.ey, align 8, !tbaa !51, !noalias !575
  store i64 %i.ew, ptr %i.ez, align 8, !tbaa !23, !noalias !575
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.fe = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ex, i64 %i.ew) #10, !noalias !575
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ez, %bb.ac ], [ %i.fe, %bb.ad ]
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.ff, align 8, !tbaa !332, !alias.scope !575
  %i.fg = ptrtoint ptr %.0.i.i.i.i.i.i.i.i to i64
  store i64 %i.fg, ptr %6, align 8, !alias.scope !575
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.fh, align 8, !alias.scope !575
  %.sroa.63.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %.sroa.63.8..sroa_idx.i, align 8, !alias.scope !575
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 192 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !51 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 200
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !52
  %i.fn = icmp ult ptr %i.fk, %i.fm
  br i1 %i.fn, label %bb.af, label %bb.ag, !prof !53

bb.af:                                            ; preds = %bb.ae
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fo, ptr %i.fj, align 8, !tbaa !51
  store i64 -844424930131968, ptr %i.fk, align 8, !tbaa !23
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fp = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.fi, i64 -844424930131968) #10
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.af, %bb.ag
  %.0.i.i.i.i.i.i85 = phi ptr [ %i.fk, %bb.af ], [ %i.fp, %bb.ag ] ; 4 uses
  %.sroa.0.0.copyload.i.i86 = load i64, ptr %i.al, align 8, !tbaa !23
  %i.fq = and i64 %.sroa.0.0.copyload.i.i86, 281474976710655
  %i.fr = inttoptr i64 %i.fq to ptr               ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 20
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !323
  %.not.i87 = icmp eq i32 %i.ft, 0
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = icmp ne i32 %i.fv, 0
  %or.cond.i = select i1 %.not.i87, i1 %i.fw, i1 false
  br i1 %or.cond.i, label %bb.ah, label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit_crit_edge

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit_crit_edge: ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %.pre = ptrtoint ptr %1 to i64
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit

bb.ah:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.fx, align 4, !tbaa !8
  %i.fy = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.fz = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.ga = add i64 %i.fz, %i.fy
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.sroa.0.0.i.i = load i32, ptr %i.gc, align 4, !tbaa !8
  %i.gd = and i32 %.sroa.0.0.i.i, -8
  %i.ge = zext i32 %i.gd to i64
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit: ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit_crit_edge, %bb.ah
  %.pre-phi = phi i64 [ %.pre, %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit_crit_edge ], [ %i.fy, %bb.ah ] ; 4 uses
  %.sroa.0.0.i88 = phi i64 [ 0, %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit_crit_edge ], [ %i.ge, %bb.ah ]
  %i.gf = add i64 %.sroa.0.0.i88, %.pre-phi       ; 2 uses
  %i.gg = or i64 %i.gf, -844424930131968
  store i64 %i.gg, ptr %.0.i.i.i.i.i.i85, align 8, !tbaa !22
  %i.gh = and i64 %i.gf, 281474976710655
  %i.gi = inttoptr i64 %i.gh to ptr
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !328
  %i.gl = and i32 %i.gk, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %.0.i.i.i.i.i.i85, i32 noundef %i.gl)
  %.not150 = icmp eq i32 %i.ae, 1
  br i1 %.not150, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.gm = icmp sgt i64 %i.ai, 0
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.go = icmp sgt i64 %i.ai, 1
  %i.gp = icmp eq i64 %i.ai, 1
  %i.gq = trunc i64 %i.ai to i32
  %scevgep176 = getelementptr i8, ptr %i.ah, i64 %i.ai
  %min.iters.check = icmp ult i64 %i.ai, 4
  %min.iters.check177 = icmp ult i64 %i.ai, 16
  %i.gr = and i64 %i.ai, 12
  %n.vec = and i64 %i.ai, 9223372036854775792     ; 5 uses
  %i.gs = and i64 %i.ai, 15
  %i.gt = shl nuw i64 %n.vec, 1
  %i.gu = getelementptr i8, ptr %i.ah, i64 %n.vec
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.gr, 0
  %n.vec180 = and i64 %i.ai, 9223372036854775804  ; 4 uses
  %i.gv = and i64 %i.ai, 3
  %i.gw = shl nuw i64 %n.vec180, 1
  %i.gx = getelementptr i8, ptr %i.ah, i64 %n.vec180
  %cmp.n186 = icmp eq i64 %i.ai, %n.vec180
  br label %bb.ai

._crit_edge:                                      ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit97, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.gy = load i64, ptr %6, align 8, !tbaa !60
  %i.gz = inttoptr i64 %i.gy to ptr
  %.sroa.0.0.copyload.i.i.i89 = load i64, ptr %i.gz, align 8, !tbaa !23
  %i.ha = and i64 %.sroa.0.0.copyload.i.i.i89, 281474976710655
  %i.hb = or disjoint i64 %i.ha, -844424930131968
  br label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread

bb.ai:                                            ; preds = %.lr.ph, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit97
  %.064149 = phi i32 [ 1, %.lr.ph ], [ %i.kd, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit97 ] ; 4 uses
  %i.hc = load ptr, ptr %6, align 8, !tbaa !337
  %.sroa.0.0.copyload.i.i.i90 = load i64, ptr %i.hc, align 8, !tbaa !23
  %i.hd = and i64 %.sroa.0.0.copyload.i.i.i90, 281474976710655
  %i.he = inttoptr i64 %i.hd to ptr               ; 7 uses
  %i.hf = load i32, ptr %i.he, align 4            ; 4 uses
  %i.hg = and i32 %i.hf, 16777216
  %i.hh = icmp eq i32 %i.hg, 0
  %i.hi = icmp ugt i32 %i.hf, 150994943           ; 2 uses
  br i1 %i.hh, label %bb.aj, label %bb.ar, !prof !53

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.hi, label %bb.ak, label %bb.al, !prof !64

bb.ak:                                            ; preds = %bb.aj
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !338
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.al:                                            ; preds = %bb.aj
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.hf, 234881024
  %i.hl = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.hl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.an:                                            ; preds = %bb.al
  %i.hn = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i: ; preds = %bb.an, %bb.am, %bb.ak
  %.0.i.i = phi ptr [ %i.hk, %bb.ak ], [ %i.hm, %bb.am ], [ %i.hn, %bb.an ]
  %i.ho = load i32, ptr %i.gn, align 8, !tbaa !342
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.hp ; 2 uses
  br i1 %i.go, label %bb.ao, label %bb.ap, !prof !53

bb.ao:                                            ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.hq, ptr align 1 %i.ah, i64 %i.ai, i1 false)
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

bb.ap:                                            ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i
  br i1 %i.gp, label %bb.aq, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

bb.aq:                                            ; preds = %bb.ap
  %i.hr = load i8, ptr %i.ah, align 1, !tbaa !15
  store i8 %i.hr, ptr %i.hq, align 1, !tbaa !15
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

bb.ar:                                            ; preds = %bb.ai
  br i1 %i.hi, label %bb.as, label %bb.at, !prof !64

bb.as:                                            ; preds = %bb.ar
  %i.hs = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !346
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

bb.at:                                            ; preds = %bb.ar
  %.mask.i.i.i.i.i.i.i.i3.i = and i32 %i.hf, 251658240
  %i.hu = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3.i, 117440512
  br i1 %i.hu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hv = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

bb.av:                                            ; preds = %bb.at
  %i.hw = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i: ; preds = %bb.av, %bb.au, %bb.as
  %.0.i4.i = phi ptr [ %i.ht, %bb.as ], [ %i.hv, %bb.au ], [ %i.hw, %bb.av ] ; 2 uses
  br i1 %i.gm, label %iter.check, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

iter.check:                                       ; preds = %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i
  %i.hx = load i32, ptr %i.gn, align 8, !tbaa !342
  %i.hy = zext i32 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr [2 x i8], ptr %.0.i4.i, i64 %i.hy ; 7 uses
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %7 = add nuw i64 %i.ai, %i.hy
  %i.ia = shl i64 %7, 1
  %scevgep175 = getelementptr i8, ptr %.0.i4.i, i64 %i.ia
  %bound0 = icmp ult ptr %i.hz, %scevgep176
  %bound1 = icmp ult ptr %i.ah, %scevgep175
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check177, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ib = getelementptr i8, ptr %i.hz, i64 %i.gt
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ic = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.hz, i64 %i.ic ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.ah, i64 %index ; 2 uses
  %i.id = getelementptr i8, ptr %next.gep178, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep178, align 1, !tbaa !15, !alias.scope !576
  %wide.load179 = load <8 x i8>, ptr %i.id, align 1, !tbaa !15, !alias.scope !576
  %i.ie = sext <8 x i8> %wide.load to <8 x i16>
  %i.if = sext <8 x i8> %wide.load179 to <8 x i16>
  %i.ig = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.ie, ptr %next.gep, align 2, !tbaa !348, !alias.scope !577, !noalias !576
  store <8 x i16> %i.if, ptr %i.ig, align 2, !tbaa !348, !alias.scope !577, !noalias !576
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !569

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !318

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ii = getelementptr i8, ptr %i.hz, i64 %i.gw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index181 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next185, %vec.epilog.vector.body ] ; 3 uses
  %i.ij = shl i64 %index181, 1
  %next.gep182 = getelementptr i8, ptr %i.hz, i64 %i.ij
  %next.gep183 = getelementptr i8, ptr %i.ah, i64 %index181
  %wide.load184 = load <4 x i8>, ptr %next.gep183, align 1, !tbaa !15, !alias.scope !576
  %i.ik = sext <4 x i8> %wide.load184 to <4 x i16>
  store <4 x i16> %i.ik, ptr %next.gep182, align 2, !tbaa !348, !alias.scope !577, !noalias !576
  %index.next185 = add nuw i64 %index181, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next185, %n.vec180
  br i1 %i.il, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !570

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n186, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.ai, %iter.check ], [ %i.ai, %vector.memcheck ], [ %i.gs, %vec.epilog.iter.check ], [ %i.gv, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %i.hz, %iter.check ], [ %i.hz, %vector.memcheck ], [ %i.ib, %vec.epilog.iter.check ], [ %i.ii, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %iter.check ], [ %i.ah, %vector.memcheck ], [ %i.gu, %vec.epilog.iter.check ], [ %i.gx, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.im = load i8, ptr %.0910.i.i.i.i.i.i, align 1, !tbaa !15
  %i.in = sext i8 %i.im to i16
  store i16 %i.in, ptr %.0811.i.i.i.i.i.i, align 2, !tbaa !348
  %i.io = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 1
  %i.ip = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 2
  %i.iq = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ir = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ir, label %.lr.ph.i.i.i.i.i.i, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit, !llvm.loop !571

_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.ao, %bb.ap, %bb.aq, %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i
  %i.is = load i32, ptr %i.gn, align 8, !tbaa !342
  %i.it = add i32 %i.is, %i.gq
  store i32 %i.it, ptr %i.gn, align 8, !tbaa !342
  %.sroa.0.0.copyload.i.i91 = load i64, ptr %i.al, align 8, !tbaa !23
  %i.iu = and i64 %.sroa.0.0.copyload.i.i91, 281474976710655
  %i.iv = inttoptr i64 %i.iu to ptr               ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 20
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !323 ; 2 uses
  %.not.i92 = icmp uge i32 %.064149, %i.ix
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = icmp ult i32 %.064149, %i.iz
  %or.cond.i93 = select i1 %.not.i92, i1 %i.ja, i1 false
  br i1 %or.cond.i93, label %bb.aw, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit97

bb.aw:                                            ; preds = %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 28
  %.sroa.0.0.copyload.i.i.i.i95 = load i32, ptr %i.jb, align 4, !tbaa !8
  %i.jc = zext i32 %.sroa.0.0.copyload.i.i.i.i95 to i64
  %i.jd = add i64 %.pre-phi, %i.jc
  %i.je = inttoptr i64 %i.jd to ptr               ; 2 uses
  %i.jf = sub nuw i32 %.064149, %i.ix             ; 4 uses
  %i.jg = icmp ult i32 %i.jf, 4096
  br i1 %i.jg, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jh = add i32 %i.jf, -4096
  %i.ji = lshr i32 %i.jh, 10
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 16392
  %i.jk = zext nneg i32 %i.ji to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !325
  %i.jn = zext i32 %i.jm to i64
  %i.jo = add i64 %.pre-phi, %i.jn
  %i.jp = inttoptr i64 %i.jo to ptr
  %i.jq = and i32 %i.jf, 1023
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i: ; preds = %bb.ax, %bb.aw
  %.sink8.i.i = phi ptr [ %i.jp, %bb.ax ], [ %i.je, %bb.aw ]
  %.sink7.i.i = phi i32 [ %i.jq, %bb.ax ], [ %i.jf, %bb.aw ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.sink8.i.i, i64 8
  %i.js = zext nneg i32 %.sink7.i.i to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.js
  %.sroa.0.0.i.i96 = load i32, ptr %i.jt, align 4, !tbaa !8
  %i.ju = and i32 %.sroa.0.0.i.i96, -8
  %i.jv = zext i32 %i.ju to i64
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit97

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit97: ; preds = %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i
  %.sroa.0.0.i94 = phi i64 [ %i.jv, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i ], [ 0, %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit ]
  %i.jw = add i64 %.sroa.0.0.i94, %.pre-phi       ; 2 uses
  %i.jx = or i64 %i.jw, -844424930131968
  store i64 %i.jx, ptr %.0.i.i.i.i.i.i85, align 8, !tbaa !22
  %i.jy = and i64 %i.jw, 281474976710655
  %i.jz = inttoptr i64 %i.jy to ptr
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !328
  %i.kc = and i32 %i.kb, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %.0.i.i.i.i.i.i85, i32 noundef %i.kc)
  %i.kd = add nuw i32 %.064149, 1                 ; 2 uses
  %exitcond152.not = icmp eq i32 %i.kd, %i.ae
  br i1 %exitcond152.not, label %._crit_edge, label %bb.ai, !llvm.loop !572

_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %._crit_edge
  %.sroa.0133.4 = phi i32 [ 1, %._crit_edge ], [ 0, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ 0, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i ]
  %.sroa.11.0 = phi i64 [ %i.hb, %._crit_edge ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ undef, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.critedge68

.critedge68:                                      ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit, %bb.q, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit82, %bb.j, %bb.e, %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread, %.critedge, %bb.f, %bb.a
  %.sroa.0133.8 = phi i32 [ 0, %bb.a ], [ 1, %bb.e ], [ 0, %bb.f ], [ %.sroa.0133.4, %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread ], [ %i.ds, %.critedge ], [ 0, %bb.j ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit82 ], [ 0, %bb.q ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ]
  %.sroa.11.4 = phi i64 [ undef, %bb.a ], [ %.sroa.0.0.copyload.i, %bb.e ], [ undef, %bb.f ], [ %.sroa.11.0, %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread ], [ undef, %.critedge ], [ undef, %bb.j ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit82 ], [ undef, %bb.q ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0133.8, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.11.4, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { ptr, i64 } @_ZN6hermes2vm14createASCIIRefEPKc(ptr noundef) local_unnamed_addr #1

declare { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall0ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEEb(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !337
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !23
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = and i32 %i.d, 16777216
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp ugt i32 %i.d, 150994943             ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.j, !prof !53

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d, !prof !64

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !338
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.d, 234881024
  %i.j = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.i, %bb.c ], [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !342
  %i.o = zext i32 %i.n to i64
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/String?download=true
inline.NumInlined: 2420
inline.NumDeleted: 745
begin_hunk_0_@_ZN6hermes2vm25stringPrototypeReplaceAllEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit153

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit153: ; preds = %bb.at, %bb.au
  %.0.i.i.i.i.i.i152 = phi ptr [ %i.fm, %bb.at ], [ %i.fr, %bb.au ] ; 6 uses
  %i.fs = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #13 ; 2 uses
  %.not307.a = icmp eq ptr %i.fs, inttoptr (i64 -1 to ptr)
  br i1 %.not307.a, label %.critedge111, label %bb.av, !prof !8

bb.av:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit153
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = or i64 %i.ft, -844424930131968          ; 2 uses
  %i.fv = load ptr, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 192 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !22 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 200
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !23
  %i.ga = icmp ult ptr %i.fx, %i.fz
  br i1 %i.ga, label %bb.aw, label %bb.ax, !prof !24

bb.aw:                                            ; preds = %bb.av
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.gb, ptr %i.fw, align 8, !tbaa !22
  store i64 %i.fu, ptr %i.fx, align 8, !tbaa !26
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit155

bb.ax:                                            ; preds = %bb.av
  %i.gc = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.fv, i64 %i.fu) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit155

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit155: ; preds = %bb.aw, %bb.ax
  %.0.i.i.i.i.i.i154 = phi ptr [ %i.fx, %bb.aw ], [ %i.gc, %bb.ax ] ; 5 uses
  %.sroa.0.0.copyload.i.i156 = load i64, ptr %.sroa.02.0.i119, align 8, !tbaa !26 ; 2 uses
  %i.gd = icmp ugt i64 %.sroa.0.0.copyload.i.i156, -844424930131969
  br i1 %i.gd, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit155
  %i.ge = and i64 %.sroa.0.0.copyload.i.i156, 281474976710655
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = add i32 %i.gg, -1140850688
  %i.gi = icmp ult i32 %i.gh, 150994944
  %spec.select.i = select i1 %i.gi, ptr %.sroa.02.0.i119, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit155, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i157 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit155 ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.gj = load i64, ptr %.sroa.0.0.i157, align 8, !tbaa !31 ; 2 uses
  %i.gk = icmp ugt i64 %i.gj, -844424930131969
  %i.gl = and i64 %i.gj, 281474976710655
  %i.gm = icmp ne i64 %i.gl, 0
  %i.gn = and i1 %i.gk, %i.gm                     ; 2 uses
  %i.go = load ptr, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 192 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !22 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 200
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !23
  %i.gt = icmp ult ptr %i.gq, %i.gs
  br i1 %i.gt, label %bb.ay, label %bb.az, !prof !24

bb.ay:                                            ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.gu, ptr %i.gp, align 8, !tbaa !22
  store i64 -844424930131968, ptr %i.gq, align 8, !tbaa !26
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.az:                                            ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.gv = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.go, i64 -844424930131968) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.ay, %bb.az
  %.0.i.i.i.i.i.i158 = phi ptr [ %i.gq, %bb.ay ], [ %i.gv, %bb.az ] ; 2 uses
  br i1 %i.gn, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.gw = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i119) #13 ; 2 uses
  %.not308 = icmp eq ptr %i.gw, inttoptr (i64 -1 to ptr)
  br i1 %.not308, label %.critedge111, label %bb.bb, !prof !8

bb.bb:                                            ; preds = %bb.ba
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = or i64 %i.gx, -844424930131968
  store i64 %i.gy, ptr %.0.i.i.i.i.i.i158, align 8, !tbaa !31
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %.sroa.0.0.copyload.i.i159 = load i64, ptr %.0.i.i.i.i.i.i154, align 8, !tbaa !26
  %i.gz = and i64 %.sroa.0.0.copyload.i.i159, 281474976710655
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !51
  %i.hd = and i32 %i.hc, 2147483647               ; 3 uses
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.hd, i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.he, ptr %8, align 8, !tbaa !42
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i32 0, ptr %i.hf, align 8, !tbaa !44
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 8, ptr %i.hg, align 4, !tbaa !43
  %i.hh = load ptr, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 192 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !22 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 200
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !23
  %i.hm = icmp ult ptr %i.hj, %i.hl
  br i1 %i.hm, label %bb.bd, label %bb.be, !prof !24

bb.bd:                                            ; preds = %bb.bc
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr %i.hn, ptr %i.hi, align 8, !tbaa !22
  store double 0.000000e+00, ptr %i.hj, align 8, !tbaa !26
  br label %_ZN6hermes2vmL13stringIndexOfERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_j.exit

bb.be:                                            ; preds = %bb.bc
  %i.ho = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.hh, i64 0) #13
  br label %_ZN6hermes2vmL13stringIndexOfERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_j.exit

_ZN6hermes2vmL13stringIndexOfERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_j.exit: ; preds = %bb.bd, %bb.be
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.hj, %bb.bd ], [ %i.ho, %bb.be ]
  %i.hp = call fastcc { i32, i64 } @_ZN6hermes2vmL21stringDirectedIndexOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_S5_bb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i152, ptr nonnull %.0.i.i.i.i.i.i154, ptr %.0.i.i.i.i.i.i.i, i1 noundef zeroext false, i1 noundef zeroext false)
  %.0.in.in315 = extractvalue { i32, i64 } %i.hp, 1
  %.0.in316 = bitcast i64 %.0.in.in315 to double
  %.0317 = fptosi double %.0.in316 to i32         ; 2 uses
  %.not318 = icmp eq i32 %.0317, -1
  br i1 %.not318, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vmL13stringIndexOfERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_j.exit, %_ZN6hermes2vmL13stringIndexOfERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_j.exit162
  %.0319 = phi i32 [ %.0, %_ZN6hermes2vmL13stringIndexOfERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_j.exit162 ], [ %.0317, %_ZN6hermes2vmL13stringIndexOfERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_j.exit ] ; 2 uses
  %i.hq = load ptr, ptr %i.b, align 8, !tbaa !12  ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 192 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !22
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 208 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !45 ; 2 uses
  %i.hv = load i32, ptr %i.hf, align 8, !tbaa !44 ; 2 uses
  %i.hw = load i32, ptr %i.hg, align 4, !tbaa !43
  %.not.i160 = icmp ult i32 %i.hv, %i.hw
  br i1 %.not.i160, label %_ZN4llvh23SmallVectorTemplateBaseIiLb1EE9push_backERKi.exit, label %bb.bf, !prof !24

bb.bf:                                            ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.he, i64 noundef 0, i64 noundef 4) #13
  %.pre.i = load i32, ptr %i.hf, align 8, !tbaa !44
  br label %_ZN4llvh23SmallVectorTemplateBaseIiLb1EE9push_backERKi.exit

_ZN4llvh23SmallVectorTemplateBaseIiLb1EE9push_backERKi.exit: ; preds = %.lr.ph, %bb.bf
  %i.hx = phi i32 [ %.pre.i, %bb.bf ], [ %i.hv, %.lr.ph ]
  %i.hy = load ptr, ptr %8, align 8, !tbaa !42
  %i.hz = zext i32 %i.hx to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hz
  store i32 %.0319, ptr %i.ia, align 1
  %i.ib = load i32, ptr %i.hf, align 8, !tbaa !44
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr %i.hf, align 8, !tbaa !44
  %i.id = add i32 %.0319, %.sroa.speculated
  %i.ie = uitofp i32 %i.id to double              ; 2 uses
  %i.if = load ptr, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 192 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !22 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 200
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !23
  %i.ik = icmp ult ptr %i.ih, %i.ij
  br i1 %i.ik, label %bb.bg, label %bb.bh, !prof !24

bb.bg:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIiLb1EE9push_backERKi.exit
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store ptr %i.il, ptr %i.ig, align 8, !tbaa !22
  store double %i.ie, ptr %i.ih, align 8, !tbaa !26
  br label %_ZN6hermes2vmL13stringIndexOfERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_j.exit162

bb.bh:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIiLb1EE9push_backERKi.exit
  %i.im = bitcast double %i.ie to i64
  %i.in = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.if, i64 %i.im) #13
  br label %_ZN6hermes2vmL13stringIndexOfERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_j.exit162

_ZN6hermes2vmL13stringIndexOfERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_j.exit162: ; preds = %bb.bg, %bb.bh
  %.0.i.i.i.i.i.i.i161 = phi ptr [ %i.ih, %bb.bg ], [ %i.in, %bb.bh ]
  %i.io = call fastcc { i32, i64 } @_ZN6hermes2vmL21stringDirectedIndexOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_S5_bb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i152, ptr nonnull %.0.i.i.i.i.i.i154, ptr %.0.i.i.i.i.i.i.i161, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hq, i64 144
  %i.iq = zext i32 %i.hu to i64
  %i.ir = load ptr, ptr %i.ip, align 8, !tbaa !42
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.iq
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !63
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 128
  store i32 %i.hu, ptr %i.ht, align 8, !tbaa !45
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hq, i64 200
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !23
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !22
  %.0.in.in = extractvalue { i32, i64 } %i.io, 1
  %.0.in = bitcast i64 %.0.in.in to double
  %.0 = fptosi double %.0.in to i32               ; 2 uses
  %.not = icmp eq i32 %.0, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !254

._crit_edge:                                      ; preds = %_ZN6hermes2vmL13stringIndexOfERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_j.exit162, %_ZN6hermes2vmL13stringIndexOfERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_j.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.iw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.iw, ptr %9, align 8, !tbaa !42
  %i.ix = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 0, ptr %i.ix, align 8, !tbaa !44
  %i.iy = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 32, ptr %i.iy, align 4, !tbaa !43
  %i.iz = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i152) #13 ; 2 uses
  %13 = extractvalue { ptr, i64 } %i.iz, 0        ; 3 uses
  %i.ja = extractvalue { ptr, i64 } %i.iz, 1      ; 3 uses
  %i.jb = load ptr, ptr %i.b, align 8, !tbaa !12  ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 192 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !22 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 200
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !23 ; 2 uses
  %i.jg = icmp ult ptr %i.jd, %i.jf
  br i1 %i.jg, label %bb.bi, label %bb.bj, !prof !24

bb.bi:                                            ; preds = %._crit_edge
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  store ptr %i.jh, ptr %i.jc, align 8, !tbaa !22
  store i64 -844424930131968, ptr %i.jd, align 8, !tbaa !26
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit165

bb.bj:                                            ; preds = %._crit_edge
  %i.ji = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.jb, i64 -844424930131968) #13
  %.pre369.a = load ptr, ptr %i.b, align 8, !tbaa !12 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre369.a, i64 192
  %.pre370 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !22
  %.phi.trans.insert371 = getelementptr inbounds nuw i8, ptr %.pre369.a, i64 200
  %.pre372 = load ptr, ptr %.phi.trans.insert371, align 8, !tbaa !23
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit165

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit165: ; preds = %bb.bi, %bb.bj
  %i.jj = phi ptr [ %i.jf, %bb.bi ], [ %.pre372, %bb.bj ]
  %i.jk = phi ptr [ %i.jh, %bb.bi ], [ %.pre370, %bb.bj ] ; 4 uses
  %i.jl = phi ptr [ %i.jb, %bb.bi ], [ %.pre369.a, %bb.bj ] ; 2 uses
  %.0.i.i.i.i.i.i164 = phi ptr [ %i.jd, %bb.bi ], [ %i.ji, %bb.bj ] ; 4 uses
  %i.jm = icmp ult ptr %i.jk, %i.jj
  br i1 %i.jm, label %bb.bk, label %bb.bl, !prof !24

bb.bk:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit165
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 192
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store ptr %i.jo, ptr %i.jn, align 8, !tbaa !22
  store i64 -1688849860263936, ptr %i.jk, align 8, !tbaa !26
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.bl:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit165
  %i.jp = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.jl, i64 -1688849860263936) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.bk, %bb.bl
  %.0.i.i.i.i.i.i166 = phi ptr [ %i.jk, %bb.bk ], [ %i.jp, %bb.bl ] ; 2 uses
  %i.jq = load i32, ptr %i.hf, align 8, !tbaa !44 ; 2 uses
  %.not109320.not = icmp eq i32 %i.jq, 0
  br i1 %.not109320.not, label %._crit_edge324, label %.lr.ph323

.lr.ph323:                                        ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.2.8.extract.trunc.i = trunc i64 %i.ja to i32 ; 3 uses
  %i.jr = and i32 %.sroa.2.8.extract.trunc.i, -1073741824 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.jt = ptrtoint ptr %.0.i.i.i.i.i.i158 to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %wide.trip.count366 = zext i32 %i.jq to i64     ; 2 uses
  br i1 %i.gn, label %.lr.ph323.split.us, label %.lr.ph323.split

.lr.ph323.split.us:                               ; preds = %.lr.ph323, %.thread292.us
  %indvars.iv363 = phi i64 [ %indvars.iv.next364, %.thread292.us ], [ 0, %.lr.ph323 ] ; 2 uses
  %.0105322.us = phi i32 [ %i.ku, %.thread292.us ], [ 0, %.lr.ph323 ] ; 2 uses
  %i.jv = load ptr, ptr %i.b, align 8, !tbaa !12  ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 192 ; 4 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !22 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 208 ; 4 uses
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !45 ; 4 uses
  %i.ka = load ptr, ptr %8, align 8, !tbaa !42
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv363
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !7  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.kd = sub i32 %i.kc, %.0105322.us
  %i.ke = add i32 %.0105322.us, %.sroa.2.8.extract.trunc.i
  %i.kf = and i32 %i.ke, 1073741823
  %i.kg = or disjoint i32 %i.kf, %i.jr
  %.sroa.2.8.insert.ext.i.us = zext i32 %i.kg to i64
  %.sroa.2.12.insert.ext.i.us = zext i32 %i.kd to i64
  %.sroa.2.12.insert.shift.i.us = shl nuw i64 %.sroa.2.12.insert.ext.i.us, 32
  %.sroa.2.12.insert.insert.i.us = or disjoint i64 %.sroa.2.12.insert.shift.i.us, %.sroa.2.8.insert.ext.i.us
  store ptr %13, ptr %10, align 8
  store i64 %.sroa.2.12.insert.insert.i.us, ptr %i.js, align 8
  %.sroa.0.0.copyload.i171.us = load i64, ptr %.0.i.i.i.i.i.i154, align 8, !tbaa !26
  %i.kh = uitofp i32 %i.kc to double
  %i.ki = bitcast double %i.kh to i64
  %.sroa.0.0.copyload.i172.us = load i64, ptr %.0.i.i.i.i.i.i152, align 8, !tbaa !26
  %i.kj = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr nonnull %.sroa.0.0.i157, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, i64 %.sroa.0.0.copyload.i171.us, i64 %i.ki, i64 %.sroa.0.0.copyload.i172.us, i1 noundef zeroext false) #13 ; 2 uses
  %i.kk = extractvalue { i32, i64 } %i.kj, 0
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %.thread299, label %bb.bm, !prof !8

bb.bm:                                            ; preds = %.lr.ph323.split.us
  %i.km = extractvalue { i32, i64 } %i.kj, 1
  store i64 %i.km, ptr %.0.i.i.i.i.i.i166, align 8, !tbaa !31
  %i.kn = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i166) #13 ; 2 uses
  %.not309.us = icmp eq ptr %i.kn, inttoptr (i64 -1 to ptr)
  br i1 %.not309.us, label %.thread299, label %.thread292.us, !prof !8

.thread292.us:                                    ; preds = %bb.bm
  %i.ko = ptrtoint ptr %i.kn to i64
  %storemerge.us = or i64 %i.ko, -844424930131968
  store i64 %storemerge.us, ptr %.0.i.i.i.i.i.i164, align 8, !tbaa !31
  %i.kp = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.kq = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i164) #13 ; 2 uses
  %i.kr = extractvalue { ptr, i64 } %i.kq, 0
  store ptr %i.kr, ptr %11, align 8
  %i.ks = extractvalue { ptr, i64 } %i.kq, 1
  store i64 %i.ks, ptr %i.ju, align 8
  %i.kt = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.ku = add i32 %i.kc, %i.hd                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jv, i64 144
  %i.kw = zext i32 %i.jz to i64
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !42
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kw
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !63
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 128
  store i32 %i.jz, ptr %i.jy, align 8, !tbaa !45
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jv, i64 200
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !23
  store ptr %i.jx, ptr %i.jw, align 8, !tbaa !22
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 2 uses
  %exitcond367.not = icmp eq i64 %indvars.iv.next364, %wide.trip.count366
  br i1 %exitcond367.not, label %._crit_edge324, label %.lr.ph323.split.us, !llvm.loop !255

.lr.ph323.split:                                  ; preds = %.lr.ph323, %bb.bn
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bn ], [ 0, %.lr.ph323 ] ; 2 uses
  %.0105322 = phi i32 [ %i.ly, %bb.bn ], [ 0, %.lr.ph323 ] ; 2 uses
  %i.lc = load ptr, ptr %i.b, align 8, !tbaa !12  ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 192 ; 3 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !22 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 208 ; 3 uses
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !45 ; 3 uses
  %i.lh = load ptr, ptr %8, align 8, !tbaa !42
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !7  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  %i.lk = sub i32 %i.lj, %.0105322
  %i.ll = add i32 %.0105322, %.sroa.2.8.extract.trunc.i
  %i.lm = and i32 %i.ll, 1073741823
  %i.ln = or disjoint i32 %i.lm, %i.jr
  %.sroa.2.8.insert.ext.i = zext i32 %i.ln to i64
  %.sroa.2.12.insert.ext.i = zext i32 %i.lk to i64
  %.sroa.2.12.insert.shift.i = shl nuw i64 %.sroa.2.12.insert.ext.i, 32
  %.sroa.2.12.insert.insert.i = or disjoint i64 %.sroa.2.12.insert.shift.i, %.sroa.2.8.insert.ext.i
  store ptr %13, ptr %10, align 8
  store i64 %.sroa.2.12.insert.insert.i, ptr %i.js, align 8
  %i.lo = call { i32, i64 } @_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i154, ptr %.0.i.i.i.i.i.i152, i32 noundef %i.lj, ptr nonnull @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, ptr nonnull @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, i64 %i.jt) #13 ; 2 uses
  %i.lp = extractvalue { i32, i64 } %i.lo, 0
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %.thread299, label %bb.bn, !prof !8

bb.bn:                                            ; preds = %.lr.ph323.split
  %i.lr = extractvalue { i32, i64 } %i.lo, 1
  %i.ls = and i64 %i.lr, 281474976710655
  %storemerge = or disjoint i64 %i.ls, -844424930131968
  store i64 %storemerge, ptr %.0.i.i.i.i.i.i164, align 8, !tbaa !31
  %i.lt = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.lu = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i164) #13 ; 2 uses
  %i.lv = extractvalue { ptr, i64 } %i.lu, 0
  store ptr %i.lv, ptr %11, align 8
  %i.lw = extractvalue { ptr, i64 } %i.lu, 1
  store i64 %i.lw, ptr %i.ju, align 8
  %i.lx = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.ly = add i32 %i.lj, %i.hd                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lc, i64 144
  %i.ma = zext i32 %i.lg to i64
  %i.mb = load ptr, ptr %i.lz, align 8, !tbaa !42
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.ma
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !63
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 128
  store i32 %i.lg, ptr %i.lf, align 8, !tbaa !45
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lc, i64 200
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !23
  store ptr %i.le, ptr %i.ld, align 8, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count366
  br i1 %exitcond.not, label %._crit_edge324, label %.lr.ph323.split, !llvm.loop !255

.thread299:                                       ; preds = %.lr.ph323.split, %.lr.ph323.split.us, %bb.bm
  %.us-phi = phi ptr [ %i.jv, %.lr.ph323.split.us ], [ %i.jv, %bb.bm ], [ %i.lc, %.lr.ph323.split ] ; 2 uses
  %.us-phi325.a = phi ptr [ %i.jw, %.lr.ph323.split.us ], [ %i.jw, %bb.bm ], [ %i.ld, %.lr.ph323.split ]
  %.us-phi326.a = phi ptr [ %i.jx, %.lr.ph323.split.us ], [ %i.jx, %bb.bm ], [ %i.le, %.lr.ph323.split ]
  %.us-phi327.a = phi ptr [ %i.jy, %.lr.ph323.split.us ], [ %i.jy, %bb.bm ], [ %i.lf, %.lr.ph323.split ]
  %.us-phi328 = phi i32 [ %i.jz, %.lr.ph323.split.us ], [ %i.jz, %bb.bm ], [ %i.lg, %.lr.ph323.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.mg = getelementptr inbounds nuw i8, ptr %.us-phi, i64 144
  %i.mh = zext i32 %.us-phi328 to i64
  %i.mi = load ptr, ptr %i.mg, align 8, !tbaa !42
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.mh
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !63
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 128
  store i32 %.us-phi328, ptr %.us-phi327.a, align 8, !tbaa !45
  %i.mm = getelementptr inbounds nuw i8, ptr %.us-phi, i64 200
  store ptr %i.ml, ptr %i.mm, align 8, !tbaa !23
  store ptr %.us-phi326.a, ptr %.us-phi325.a, align 8, !tbaa !22
  br label %bb.bs

._crit_edge324:                                   ; preds = %bb.bn, %.thread292.us, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.0105.lcssa = phi i32 [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %i.ku, %.thread292.us ], [ %i.ly, %bb.bn ] ; 3 uses
  %.sroa.0.0.copyload.i.i179 = load i64, ptr %.0.i.i.i.i.i.i152, align 8, !tbaa !26
  %i.mn = and i64 %.sroa.0.0.copyload.i.i179, 281474976710655
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !51
  %i.mr = and i32 %i.mq, 2147483647
  %i.ms = icmp ult i32 %.0105.lcssa, %i.mr
  br i1 %i.ms, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %._crit_edge324
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %.sroa.5198.12.extract.shift = lshr i64 %i.ja, 32
  %.sroa.5198.12.extract.trunc = trunc nuw i64 %.sroa.5198.12.extract.shift to i32
  %i.mt = sub i32 %.sroa.5198.12.extract.trunc, %.0105.lcssa
  %.sroa.2.8.extract.trunc.i.i = trunc i64 %i.ja to i32 ; 2 uses
  %i.mu = add i32 %.0105.lcssa, %.sroa.2.8.extract.trunc.i.i
  %i.mv = and i32 %i.mu, 1073741823
  %i.mw = and i32 %.sroa.2.8.extract.trunc.i.i, -1073741824
  %i.mx = or disjoint i32 %i.mv, %i.mw
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.mx to i64
  %.sroa.2.12.insert.ext.i.i = zext i32 %i.mt to i64
  %.sroa.2.12.insert.shift.i.i = shl nuw i64 %.sroa.2.12.insert.ext.i.i, 32
  %.sroa.2.12.insert.insert.i.i = or disjoint i64 %.sroa.2.12.insert.shift.i.i, %.sroa.2.8.insert.ext.i.i
  store ptr %13, ptr %12, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.2.12.insert.insert.i.i, ptr %i.my, align 8
  %i.mz = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge324
  %i.na = load ptr, ptr %9, align 8, !tbaa !42    ; 2 uses
  %i.nb = load i32, ptr %i.ix, align 8, !tbaa !44 ; 2 uses
  %i.nc = zext i32 %i.nb to i64                   ; 2 uses
  %.not.i182 = icmp ult i32 %i.nb, 65536
  br i1 %.not.i182, label %bb.bq, label %bb.br, !prof !24

bb.bq:                                            ; preds = %bb.bp
  %i.nd = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.na, i64 %i.nc) #13
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.209") align 8 %3, ptr %i.na, i64 %i.nc)
  %i.ne = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %i.nf = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.nh = icmp eq ptr %i.nf, %i.ng
  br i1 %i.nh, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.br
  %i.ni = load i64, ptr %i.ng, align 8, !tbaa !38
  %i.nj = shl i64 %i.ni, 1
  %i.nk = add i64 %i.nj, 2
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.nk) #15
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.nd, %bb.bq ], [ %i.ne, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ] ; 2 uses
  %i.nl = extractvalue { i32, i64 } %.pn.i, 0
  %i.nm = extractvalue { i32, i64 } %.pn.i, 1
  br label %bb.bs

bb.bs:                                            ; preds = %.thread299, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.sroa.0271.9 = phi i32 [ 0, %.thread299 ], [ %i.nl, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ]
  %.sroa.16.0 = phi i64 [ undef, %.thread299 ], [ %i.nm, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ]
  %i.nn = load ptr, ptr %9, align 8, !tbaa !42    ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.iw
  br i1 %i.no, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @free(ptr noundef %i.nn) #13
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit:          ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.np = load ptr, ptr %8, align 8, !tbaa !42    ; 2 uses
  %i.nq = icmp eq ptr %i.np, %i.he
  br i1 %i.nq, label %_ZN4llvh11SmallVectorIiLj8EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit
  call void @free(ptr noundef %i.np) #13
  br label %_ZN4llvh11SmallVectorIiLj8EED2Ev.exit

_ZN4llvh11SmallVectorIiLj8EED2Ev.exit:            ; preds = %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %.critedge111

.critedge111:                                     ; preds = %bb.ba, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit153, %_ZN4llvh11SmallVectorIiLj8EED2Ev.exit, %bb.ar, %bb.d, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit124, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit124.thread, %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.0271.16 = phi i32 [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 0, %bb.d ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit ], [ 0, %bb.ar ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit153 ], [ %.sroa.0271.9, %_ZN4llvh11SmallVectorIiLj8EED2Ev.exit ], [ %i.eh, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit124.thread ], [ 0, %bb.b ], [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit124 ], [ %i.ff, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit ], [ 0, %bb.ba ]
  %.sroa.16.6 = phi i64 [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ undef, %bb.d ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit ], [ undef, %bb.ar ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit153 ], [ %.sroa.16.0, %_ZN4llvh11SmallVectorIiLj8EED2Ev.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit124.thread ], [ undef, %bb.b ], [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit124 ], [ %i.fg, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit ], [ undef, %bb.ba ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0271.16, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.16.6, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm20stringPrototypeMatchEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !32, !noalias !259 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %.mask.i.i = and i64 %i.b, -140737488355328
  switch i64 %.mask.i.i, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread [
    i64 -1688849860263936, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
    i64 -1548112371908608, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  ], !prof !46

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 29, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !37
  store ptr @.str.20, ptr %3, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.f, align 8, !tbaa !39
  %i.g = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.critedge, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge, !prof !47

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge: ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.pre = load ptr, ptr %2, align 8
  br label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge, %bb.a
  %i.i = phi ptr [ %.pre, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !29
  %.not = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.l ; 4 uses
  %i.m = load i64, ptr %.sroa.02.0.i, align 8, !tbaa !31
  %.mask.i = and i64 %i.m, -140737488355328
  switch i64 %.mask.i, label %bb.b [
    i64 -1688849860263936, label %bb.i
    i64 -1548112371908608, label %bb.i
  ]

bb.b:                                             ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.d, !prof !24

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.p, align 8, !tbaa !22
  store i64 -1266637126761931, ptr %i.q, align 8, !tbaa !26
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit

bb.d:                                             ; preds = %bb.b
  %i.v = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.o, i64 -1266637126761931) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.v, %bb.d ]
  %i.w = call { i32, i64 } @_ZN6hermes2vm9getMethodERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, ptr %.0.i.i.i.i.i.i) #13 ; 2 uses
  %i.x = extractvalue { i32, i64 } %i.w, 0
  %i.y = extractvalue { i32, i64 } %i.w, 1        ; 2 uses
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %.critedge, label %bb.e, !prof !8

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit
  %.mask.i25 = and i64 %i.y, -140737488355328
  %i.aa = icmp eq i64 %.mask.i25, -1688849860263936
  br i1 %i.aa, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = or i64 %i.y, -281474976710656           ; 2 uses
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !12  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 192 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !22
  store i64 %i.ab, ptr %i.ae, align 8, !tbaa !26
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ac, i64 %i.ab) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8CallableEEENS0_6HandleIT_EEONS0_12PseudoHandleINS0_11HermesValueEEE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i26 = phi ptr [ %i.ae, %bb.g ], [ %i.aj, %bb.h ]
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.a, align 8, !tbaa !26
  %i.ak = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr %.0.i.i.i.i.i.i26, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, i64 %.sroa.0.0.copyload.i27, i1 noundef zeroext false) #13 ; 2 uses
  %i.al = extractvalue { i32, i64 } %i.ak, 0
  %i.am = extractvalue { i32, i64 } %i.ak, 1
  br label %.critedge

bb.i:                                             ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %bb.e
  %i.an = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a) #13 ; 2 uses
  %.not65 = icmp eq ptr %i.an, inttoptr (i64 -1 to ptr)
  br i1 %.not65, label %.critedge, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = or i64 %i.ao, -844424930131968          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !12 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 200
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !23
end_hunk_0
begin_hunk_1_@_ZNK6hermes2vm10StringView6equalsIcEEbRKN4llvh8ArrayRefIT_EE:bb.a

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %i.n, align 8, !tbaa !26
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i.sink.i = phi ptr [ %i.e, %bb.b ], [ %i.k, %bb.d ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.r, %bb.h ]
  %i.s = and i32 %i.b, 1073741823
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !326  ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !81
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !26
  %.not.i6 = icmp eq i64 %.sroa.22.0.copyload, %i.x
  br i1 %.not.i6, label %bb.i, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

bb.i:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit
  %.not.not.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.not.i.i.i.i.i, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.u, ptr %.sroa.01.0.copyload, i64 %i.x)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

bb.k:                                             ; preds = %bb.a
  %.not.i7 = icmp samesign ult i32 %i.b, 1073741824
  %i.y = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  br i1 %.not.i7, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i.i8 = load i64, ptr %i.y, align 8, !tbaa !26
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i8, 281474976710655
  %i.aa = inttoptr i64 %i.z to ptr                ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, 150994943
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !8

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

bb.n:                                             ; preds = %bb.l
  %.mask.i.i.i.i.i.i.i.i.i9 = and i32 %i.ab, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i9, label %bb.q [
    i32 117440512, label %bb.o
    i32 50331648, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0.0.copyload.i.i.i2.i11 = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.ai = and i64 %.sroa.0.0.copyload.i.i.i2.i11, 281474976710655
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !59
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit: ; preds = %bb.k, %bb.m, %bb.o, %bb.p, %bb.q
  %.0.i.sink.i10 = phi ptr [ %i.y, %bb.k ], [ %i.ae, %bb.m ], [ %i.af, %bb.o ], [ %i.ag, %bb.p ], [ %i.al, %bb.q ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !326 ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !26
  %.not.i12 = icmp eq i64 %.sroa.2.0.copyload, %i.ao
  br i1 %.not.i12, label %bb.r, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit

bb.r:                                             ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit
  %i.ap = and i32 %i.b, 1073741823
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i10, i64 %i.aq ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ao, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i
  %.not9.i.i.i.i.i14 = icmp eq i32 %i.an, 0
  br i1 %.not9.i.i.i.i.i14, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.r
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !81
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader
  %.011.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.at = load i16, ptr %.0810.i.i.i.i.i, align 2, !tbaa !61
  %i.au = zext i16 %i.at to i32
  %i.av = load i8, ptr %.011.i.i.i.i.i, align 1, !tbaa !38
  %i.aw = sext i8 %i.av to i32
  %i.ax = icmp eq i32 %i.au, %i.aw                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 2 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i = icmp ne ptr %i.ay, %i.as
  %or.cond.not = select i1 %i.ax, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit, !llvm.loop !324

_ZN6hermes2vm15stringRefEqualsIccEEbN4llvh8ArrayRefIT_EENS3_IT0_EE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.r, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit, %bb.j, %bb.i, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit
  %.0 = phi i1 [ true, %bb.i ], [ false, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit ], [ %.not9.i.i.i.i.i, %bb.j ], [ false, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit ], [ true, %bb.r ], [ %i.ax, %.lr.ph.i.i.i.i.i ]
  ret i1 %.0
}

declare void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #2

declare void @_ZN6hermes16platform_unicode9normalizeERN4llvh15SmallVectorImplIDsEENS0_17NormalizationFormE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm16JSStringIterator6createERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8isRegExpERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm9getMethodERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm12regExpCreateERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i64, i1 noundef zeroext) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i64, i64, i1 noundef zeroext) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, i32 noundef, ptr, ptr, i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive11sliceEqualsEjjPKS1_(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm12toUInt32_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, i32 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = uitofp i32 %2 to double                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !22
  store double %i.a, ptr %i.e, align 8, !tbaa !26
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = bitcast double %i.a to i64
  %i.k = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.c, i64 %i.j) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.k, %bb.c ]
  %i.l = tail call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i, ptr %0, i32 0) #13
  %.sroa.07.0.insert.ext.i = and i32 %i.l, 65535
  ret i32 %.sroa.07.0.insert.ext.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, 8589934592) i64 @_ZN6hermes2vmL10splitMatchERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEEjS5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i32 noundef %2, ptr %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.hermes::vm::StringView::const_iterator", align 8 ; 5 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %3, align 8, !tbaa !26
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = and i32 %i.d, 2147483647
  %.sroa.0.0.copyload.i.i11 = load i64, ptr %1, align 8, !tbaa !26
  %i.f = and i64 %.sroa.0.0.copyload.i.i11, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !51
  %i.j = and i32 %i.i, 2147483647                 ; 2 uses
  %i.k = add i32 %i.e, %2                         ; 2 uses
  %i.l = icmp ugt i32 %i.k, %i.j
  br i1 %i.l, label %bb.ce, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %2, %i.j
  br i1 %i.m, label %bb.ce, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1) #13 ; 2 uses
  %5 = extractvalue { ptr, i64 } %i.n, 0          ; 15 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 1        ; 2 uses
  %i.p = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %3) #13 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 7 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 8 uses
  %.sroa.4137.12.extract.shift = lshr i64 %i.o, 32
  %.sroa.4137.12.extract.trunc = trunc nuw i64 %.sroa.4137.12.extract.shift to i32
  %i.s = sub i32 %.sroa.4137.12.extract.trunc, %2
  %.sroa.2.8.extract.trunc.i.i = trunc i64 %i.o to i32 ; 9 uses
  %i.t = add i32 %2, %.sroa.2.8.extract.trunc.i.i
  %i.u = and i32 %i.t, 1073741823                 ; 10 uses
  %i.v = and i32 %.sroa.2.8.extract.trunc.i.i, -1073741824
  %i.w = or disjoint i32 %i.u, %i.v
  %.sroa.2.12.insert.ext.i.i = zext i32 %i.s to i64 ; 4 uses
  %i.x = icmp slt i32 %.sroa.2.8.extract.trunc.i.i, 0 ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %.sroa.2.8.extract.trunc.i.i, 1073741824
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %5, align 8, !tbaa !26
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.aa = inttoptr i64 %i.z to ptr                ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, 150994943
  br i1 %i.ac, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !55
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.ab, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.j [
    i32 134217728, label %bb.h
    i32 67108864, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %bb.r

bb.j:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.ai = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55
  br label %bb.r

bb.k:                                             ; preds = %bb.c
  %.not.i1.i = icmp samesign ult i32 %.sroa.2.8.extract.trunc.i.i, 1073741824
  br i1 %.not.i1.i, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %5, align 8, !tbaa !26
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr               ; 8 uses
  %i.ao = load i32, ptr %i.an, align 4            ; 3 uses
  %i.ap = icmp ugt i32 %i.ao, 150994943
  br i1 %i.ap, label %bb.y, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.ao, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.p [
    i32 117440512, label %bb.n
    i32 50331648, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %bb.z

bb.p:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.as, align 8, !tbaa !26
  %i.at = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !59
  br label %bb.z

bb.q:                                             ; preds = %bb.d
  %i.ax = zext nneg i32 %i.u to i64               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 %i.ax
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26

bb.r:                                             ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  %.0.i.sink.i.i.ph = phi ptr [ %i.al, %bb.j ], [ %i.ag, %bb.i ], [ %i.af, %bb.h ], [ %i.ae, %bb.f ]
  %i.az = zext nneg i32 %i.u to i64               ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.ph, i64 %i.az ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i24 = load i64, ptr %5, align 8, !tbaa !26
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i.i.i24, 281474976710655
  %i.bc = inttoptr i64 %i.bb to ptr               ; 5 uses
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = icmp ugt i32 %i.bd, 150994943
  br i1 %i.be, label %bb.s, label %bb.t, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !55
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26

bb.t:                                             ; preds = %bb.r
  %.mask.i.i.i.i.i.i.i.i.i.i25 = and i32 %i.bd, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i25, label %bb.w [
    i32 134217728, label %bb.u
    i32 67108864, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26

bb.v:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26

bb.w:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i28 = load i64, ptr %i.bj, align 8, !tbaa !26
  %i.bk = and i64 %.sroa.0.0.copyload.i.i.i2.i.i28, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !55
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26: ; preds = %bb.q, %bb.w, %bb.v, %bb.u, %bb.s
  %i.bo = phi ptr [ %i.ay, %bb.q ], [ %i.ba, %bb.s ], [ %i.ba, %bb.u ], [ %i.ba, %bb.v ], [ %i.ba, %bb.w ]
  %i.bp = phi i64 [ %i.ax, %bb.q ], [ %i.az, %bb.s ], [ %i.az, %bb.u ], [ %i.az, %bb.v ], [ %i.az, %bb.w ]
  %.0.i.sink.i.i27 = phi ptr [ %5, %bb.q ], [ %i.bg, %bb.s ], [ %i.bh, %bb.u ], [ %i.bi, %bb.v ], [ %i.bn, %bb.w ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i27, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sroa.2.12.insert.ext.i.i
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.x:                                             ; preds = %bb.k
  %i.bs = zext nneg i32 %i.w to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.bs
  %.pre = zext nneg i32 %i.u to i64
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16

bb.y:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !59 ; 2 uses
  %i.bw = zext nneg i32 %i.u to i64               ; 2 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.bw
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16

bb.z:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.0.i.sink.i4.i.ph.ph = phi ptr [ %i.aq, %bb.n ], [ %i.ar, %bb.o ], [ %i.aw, %bb.p ]
  %i.by = zext nneg i32 %i.u to i64               ; 4 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.ph.ph, i64 %i.by ; 3 uses
  %.mask.i.i.i.i.i.i.i.i.i3.i15 = and i32 %i.ao, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i15, label %bb.ac [
    i32 117440512, label %bb.aa
    i32 50331648, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16

bb.ab:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16

bb.ac:                                            ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i22 = load i64, ptr %i.cc, align 8, !tbaa !26
  %i.cd = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i22, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !59
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16: ; preds = %bb.x, %bb.ac, %bb.ab, %bb.aa, %bb.y
  %.pre-phi172 = phi i64 [ %.pre, %bb.x ], [ %i.by, %bb.ac ], [ %i.by, %bb.ab ], [ %i.by, %bb.aa ], [ %i.bw, %bb.y ]
  %i.ch = phi ptr [ %i.bt, %bb.x ], [ %i.bz, %bb.ac ], [ %i.bz, %bb.ab ], [ %i.bz, %bb.aa ], [ %i.bx, %bb.y ]
  %.0.i.sink.i4.i17 = phi ptr [ %5, %bb.x ], [ %i.cg, %bb.ac ], [ %i.cb, %bb.ab ], [ %i.ca, %bb.aa ], [ %i.bv, %bb.y ]
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i17, i64 %.pre-phi172
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %.sroa.2.12.insert.ext.i.i
  br label %_ZNK6hermes2vm10StringView3endEv.exit

_ZNK6hermes2vm10StringView3endEv.exit:            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16
  %.sroa.0.0.i152 = phi ptr [ %i.bo, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16 ]
  %.sroa.3.0.i150 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26 ], [ %i.ch, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16 ]
  %.sroa.3.0.i18 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26 ], [ %i.cj, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16 ]
  %.sroa.0.0.i19 = phi ptr [ %i.br, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i26 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i16 ]
  %.sroa.7.8.extract.trunc = trunc i64 %i.r to i32 ; 3 uses
  %i.ck = icmp slt i32 %.sroa.7.8.extract.trunc, 0
  br i1 %i.ck, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %_ZNK6hermes2vm10StringView3endEv.exit
  %i.cl = and i32 %.sroa.7.8.extract.trunc, 1073741824
  %.not.i.i39 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i39, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload.i.i.i.i.i40 = load i64, ptr %i.q, align 8, !tbaa !26
  %i.cm = and i64 %.sroa.0.0.copyload.i.i.i.i.i40, 281474976710655
  %i.cn = inttoptr i64 %i.cm to ptr               ; 5 uses
end_hunk_1

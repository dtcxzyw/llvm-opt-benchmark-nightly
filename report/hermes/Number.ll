Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Number?download=true
inline.NumInlined: 587
inline.NumDeleted: 219
begin_hunk_0_@_ZN6hermes2vm22numberPrototypeToFixedEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  store double %.1, ptr %i.bd, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.k:                                             ; preds = %bb.i
  %i.bi = bitcast double %.1 to i64
  %i.bj = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bb, i64 %i.bi) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.j ], [ %i.bj, %bb.k ]
  %i.bk = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #12 ; 2 uses
  %.not71 = icmp eq ptr %i.bk, inttoptr (i64 -1 to ptr)
  br i1 %.not71, label %bb.ag, label %bb.l, !prof !30

bb.l:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = or i64 %i.bl, -844424930131968
  br label %bb.ag

bb.m:                                             ; preds = %bb.h
  %i.bn = fcmp olt double %.1, 0.000000e+00       ; 2 uses
  %i.bo = fneg double %.1
  %.2 = select i1 %i.bn, double %i.bo, double %.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bp, ptr %7, align 8, !tbaa !51
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 10 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !52
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 32, ptr %i.br, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.bs = call ptr @dtoa_alloc_init(ptr noundef nonnull align 8 dereferenceable(1208) %8, i32 noundef 1200) #12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 1200 ; 3 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !56
  %i.bu = call ptr @dtoa_fixedpoint(ptr noundef %i.bs, double noundef %.2, i32 noundef 3, i32 noundef %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12 ; 4 uses
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !58  ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 4 uses
  %i.bz = load i32, ptr %i.br, align 4, !tbaa !53
  %i.ca = zext i32 %i.bz to i64
  %i.cb = load i32, ptr %i.bq, align 8, !tbaa !52 ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = sub nsw i64 %i.ca, %i.cc
  %i.ce = icmp ugt i64 %i.by, %i.cd
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = add i64 %i.by, %i.cc
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %i.bp, i64 noundef %i.cf, i64 noundef 1) #12
  %.pre7.pre.i.i = load i32, ptr %i.bq, align 8, !tbaa !52
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre7.i.i = phi i32 [ %.pre7.pre.i.i, %bb.n ], [ %i.cb, %bb.m ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i.i, label %_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr %7, align 8, !tbaa !51
  %i.ch = zext i32 %.pre7.i.i to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.bu, i64 %i.by, i1 false)
  %.pre.i.i = load i32, ptr %i.bq, align 8, !tbaa !52
  br label %_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_.exit

_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_.exit: ; preds = %bb.o, %bb.p
  %i.cj = phi i32 [ %.pre7.i.i, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.ck = trunc i64 %i.by to i32
  %i.cl = add i32 %i.cj, %i.ck
  store i32 %i.cl, ptr %i.bq, align 8, !tbaa !52
  %i.cm = load ptr, ptr %i.bt, align 8, !tbaa !56
  call void @g_freedtoa(ptr noundef %i.cm, ptr noundef %i.bu) #12
  %i.cn = load ptr, ptr %i.bt, align 8, !tbaa !56
  call void @dtoa_alloc_done(ptr noundef %i.cn) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.co = load i32, ptr %i.a, align 4, !tbaa !6
  %i.cp = add nsw i32 %i.co, %i.x
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = load i32, ptr %i.bq, align 8, !tbaa !52 ; 2 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cq
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_.exit, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %i.cu = phi i32 [ %i.db, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ %i.cr, %_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_.exit ] ; 2 uses
  %i.cv = load i32, ptr %i.br, align 4, !tbaa !53
  %.not.i = icmp ult i32 %i.cu, %i.cv
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.q, !prof !22

bb.q:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.bp, i64 noundef 0, i64 noundef 1) #12
  %.pre.i = load i32, ptr %i.bq, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %.lr.ph, %bb.q
  %i.cw = phi i32 [ %.pre.i, %bb.q ], [ %i.cu, %.lr.ph ]
  %i.cx = load ptr, ptr %7, align 8, !tbaa !51
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy
  store i8 48, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.bq, align 8, !tbaa !52
  %i.db = add i32 %i.da, 1                        ; 3 uses
  store i32 %i.db, ptr %i.bq, align 8, !tbaa !52
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.cq
  br i1 %i.dd, label %.lr.ph, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, %_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_.exit
  %.lcssa72 = phi i64 [ %i.cs, %_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_.exit ], [ %i.dc, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.de, i8 0, i64 32, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.df, ptr %9, align 8, !tbaa !51
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 9 uses
  store i32 0, ptr %i.dg, align 8, !tbaa !52
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  store i32 32, ptr %i.dh, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.di = load ptr, ptr %7, align 8, !tbaa !51
  store ptr %i.di, ptr %4, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.lcssa72, ptr %i.dj, align 8
  %i.dk = call noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef signext 48, i64 noundef 0) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.dl = icmp eq i64 %i.dk, -1
  br i1 %i.dl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %._crit_edge
  %i.dm = load i32, ptr %i.dg, align 8, !tbaa !52 ; 2 uses
  %i.dn = load i32, ptr %i.dh, align 4, !tbaa !53
  %.not.i50 = icmp ult i32 %i.dm, %i.dn
  br i1 %.not.i50, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52, label %bb.s, !prof !22

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.df, i64 noundef 0, i64 noundef 1) #12
  %.pre.i51 = load i32, ptr %i.dg, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52: ; preds = %bb.r, %bb.s
  %i.do = phi i32 [ %.pre.i51, %bb.s ], [ %i.dm, %bb.r ]
  %i.dp = load ptr, ptr %9, align 8, !tbaa !51
  %i.dq = zext i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dq
  store i8 48, ptr %i.dr, align 1
  %i.ds = load i32, ptr %i.dg, align 8, !tbaa !52
  %i.dt = add i32 %i.ds, 1
  br label %bb.x

bb.t:                                             ; preds = %._crit_edge
  %i.du = load ptr, ptr %7, align 8, !tbaa !51
  %i.dv = load i32, ptr %i.bq, align 8, !tbaa !52 ; 3 uses
  %i.dw = zext i32 %i.dv to i64                   ; 3 uses
  %i.dx = load i32, ptr %i.dh, align 4, !tbaa !53
  %i.dy = zext i32 %i.dx to i64
  %i.dz = load i32, ptr %i.dg, align 8, !tbaa !52 ; 2 uses
  %i.ea = zext i32 %i.dz to i64                   ; 2 uses
  %i.eb = sub nsw i64 %i.dy, %i.ea
  %i.ec = icmp ult i64 %i.eb, %i.dw
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ed = add nuw nsw i64 %i.ea, %i.dw
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %i.df, i64 noundef %i.ed, i64 noundef 1) #12
  %.pre7.pre.i.i56 = load i32, ptr %i.dg, align 8, !tbaa !52
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre7.i.i53 = phi i32 [ %.pre7.pre.i.i56, %bb.u ], [ %i.dz, %bb.t ] ; 2 uses
  %.not.i.i.i54 = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i.i54, label %_ZN4llvh11SmallStringILj32EE6appendERKNS_15SmallVectorImplIcEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = load ptr, ptr %9, align 8, !tbaa !51
  %i.ef = zext i32 %.pre7.i.i53 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eg, ptr align 1 %i.du, i64 %i.dw, i1 false)
  %.pre.i.i55 = load i32, ptr %i.dg, align 8, !tbaa !52
  br label %_ZN4llvh11SmallStringILj32EE6appendERKNS_15SmallVectorImplIcEE.exit

_ZN4llvh11SmallStringILj32EE6appendERKNS_15SmallVectorImplIcEE.exit: ; preds = %bb.v, %bb.w
  %i.eh = phi i32 [ %.pre7.i.i53, %bb.v ], [ %.pre.i.i55, %bb.w ]
  %i.ei = add i32 %i.eh, %i.dv
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvh11SmallStringILj32EE6appendERKNS_15SmallVectorImplIcEE.exit, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52
  %i.ej = phi i32 [ %i.ei, %_ZN4llvh11SmallStringILj32EE6appendERKNS_15SmallVectorImplIcEE.exit ], [ %i.dt, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit52 ] ; 4 uses
  store i32 %i.ej, ptr %i.dg, align 8, !tbaa !52
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not45 = icmp sgt i32 %i.ej, %i.x
  br i1 %.not45, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.y
  %i.ek = add nuw nsw i32 %i.x, 1                 ; 3 uses
  %i.el = sub nsw i32 %i.ek, %i.ej                ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph74, label %.loopexit

.lr.ph74:                                         ; preds = %.preheader, %.lr.ph74
  %.073 = phi i32 [ %i.ep, %.lr.ph74 ], [ 0, %.preheader ]
  %i.en = load ptr, ptr %9, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i8 48, ptr %i.d, align 1, !tbaa !49
  %i.eo = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.en, ptr noundef nonnull align 1 dereferenceable(1) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.ep = add nuw nsw i32 %.073, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ep, %i.el
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph74, !llvm.loop !90

.loopexit:                                        ; preds = %.lr.ph74, %.preheader, %bb.y
  %.037 = phi i32 [ %i.ej, %bb.y ], [ %i.ek, %.preheader ], [ %i.ek, %.lr.ph74 ]
  %i.eq = load ptr, ptr %9, align 8, !tbaa !51
  %i.er = sub nsw i32 %.037, %i.x
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %i.eq, i64 %i.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i8 46, ptr %i.e, align 1, !tbaa !49
  %i.eu = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.et, ptr noundef nonnull align 1 dereferenceable(1) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %bb.x
  br i1 %i.bn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ev = load ptr, ptr %9, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i8 45, ptr %i.f, align 1, !tbaa !49
  %i.ew = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.ev, ptr noundef nonnull align 1 dereferenceable(1) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ex = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.ey = load i32, ptr %i.dg, align 8, !tbaa !52 ; 2 uses
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %.not.i57 = icmp ult i32 %i.ey, 65536
  br i1 %.not.i57, label %bb.ac, label %bb.ad, !prof !22

bb.ac:                                            ; preds = %bb.ab
  %i.fa = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.ex, i64 %i.ez) #12
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr %i.ex, i64 %i.ez)
  %i.fb = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %i.fc = load ptr, ptr %3, align 8, !tbaa !62    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !49
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit: ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.fa, %bb.ac ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.fh = extractvalue { i32, i64 } %.pn.i, 0
  %i.fi = extractvalue { i32, i64 } %.pn.i, 1
  %i.fj = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.df
  br i1 %i.fk, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  call void @free(ptr noundef %i.fj) #12
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit:           ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.fl = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.bp
  br i1 %i.fm, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit58, label %bb.af

bb.af:                                            ; preds = %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit
  call void @free(ptr noundef %i.fl) #12
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit58

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit58:         ; preds = %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.l, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.e, %bb.a, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit58, %bb.g
  %.sroa.067.2 = phi i32 [ %i.aq, %bb.e ], [ %i.w, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.g ], [ %i.fh, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit58 ], [ 0, %bb.a ], [ 1, %bb.l ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.sroa.8.1 = phi i64 [ undef, %bb.e ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.ax, %bb.g ], [ %i.fi, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit58 ], [ undef, %bb.a ], [ %i.bm, %bb.l ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.067.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm28numberPrototypeToExponentialEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.llvh::SmallString", align 8 ; 21 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %class.DtoaAllocator, align 8       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %9 = alloca %"class.llvh::format_object", align 8 ; 6 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !31, !noalias !102 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  %i.h = icmp ult i64 %i.g, -1970324836974592
  %i.i = bitcast i64 %i.g to double
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp samesign ugt i64 %i.g, -844424930131969
  br i1 %i.j, label %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.k = and i64 %i.g, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i32, ptr %i.l, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.m, -16777216
  %i.n = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 939524096
  %spec.select.i = select i1 %i.n, ptr %i.f, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i ]
  %i.o = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !26 ; 2 uses
  %i.p = icmp ugt i64 %i.o, -844424930131969
  %i.q = and i64 %i.o, 281474976710655            ; 2 uses
  %i.r = icmp ne i64 %i.q, 0
  %i.s = and i1 %i.p, %i.r
  br i1 %i.s, label %.thread, label %bb.c, !prof !22

bb.c:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 59, ptr %i.u, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !48
  store ptr @.str.6, ptr %4, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !50
  %i.x = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.z

.thread:                                          ; preds = %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.y = inttoptr i64 %i.q to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.1.pre = load double, ptr %i.z, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.thread
  %.1 = phi double [ %.1.pre, %.thread ], [ %i.i, %bb.a ] ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !29
  %.not73 = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.sroa.02.0.i = select i1 %.not73, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.ac
  %i.ad = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #12 ; 2 uses
  %i.ae = extractvalue { i32, i64 } %i.ad, 0
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.z, label %bb.e, !prof !30

bb.e:                                             ; preds = %bb.d
  %i.ag = extractvalue { i32, i64 } %i.ad, 1
  %i.ah = bitcast i64 %i.ag to double             ; 3 uses
  %i.ai = fcmp uno double %.1, 0.000000e+00
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.ak = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.aj, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 38) #12
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = or i64 %i.al, -844424930131968
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  %i.an = fcmp oeq double %.1, +inf
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 9240
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm28numberPrototypeToExponentialEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  %i.eg = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.bo
  br i1 %i.eh, label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit
  call void @free(ptr noundef %i.eg) #12
  br label %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit

_ZN4llvh11SmallVectorIcLj32EED2Ev.exit:           ; preds = %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit45, %bb.j, %bb.h, %bb.f, %bb.d, %bb.c
  %.sroa.065.2 = phi i32 [ %i.x, %bb.c ], [ 1, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit ], [ 1, %bb.f ], [ 1, %bb.h ], [ 1, %bb.j ], [ %i.bj, %_ZN6hermes2vm11TwineChar16C2EPKc.exit45 ], [ 0, %bb.d ]
  %.sroa.8.1 = phi i64 [ undef, %bb.c ], [ %i.ee, %_ZN4llvh11SmallVectorIcLj32EED2Ev.exit ], [ %i.am, %bb.f ], [ %i.ar, %bb.h ], [ %i.aw, %bb.j ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit45 ], [ undef, %bb.d ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.065.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm26numberPrototypeToPrecisionEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.llvh::SmallString", align 8 ; 29 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %class.DtoaAllocator, align 8       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 9 uses
  %8 = alloca %"class.llvh::format_object", align 8 ; 6 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.llvh::SmallString", align 8 ; 17 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !31, !noalias !114 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 4 uses
  %i.l = icmp ult i64 %i.k, -1970324836974592
  %i.m = bitcast i64 %i.k to double
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp samesign ugt i64 %i.k, -844424930131969
  br i1 %i.n, label %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.o = and i64 %i.k, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i32, ptr %i.p, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.q, -16777216
  %i.r = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 939524096
  %spec.select.i = select i1 %i.r, ptr %i.j, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSNumberEEEbNS0_11HermesValueE.exit.i ]
  %i.s = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !26 ; 2 uses
  %i.t = icmp ugt i64 %i.s, -844424930131969
  %i.u = and i64 %i.s, 281474976710655            ; 2 uses
  %i.v = icmp ne i64 %i.u, 0
  %i.w = and i1 %i.t, %i.v
  br i1 %i.w, label %.thread, label %bb.c, !prof !22

bb.c:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.x, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 57, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !48
  store ptr @.str.10, ptr %3, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.aa, align 8, !tbaa !50
  %i.ab = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.at

.thread:                                          ; preds = %_ZN6hermes2vm6HandleINS0_8JSNumberEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.ac = inttoptr i64 %i.u to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.1.pre = load double, ptr %i.ad, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.thread
  %.1 = phi double [ %.1.pre, %.thread ], [ %i.m, %bb.a ] ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !29
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.d
  %i.ag = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ag, align 8, !tbaa !24
  %.mask.i = and i64 %.sroa.0.0.copyload.i, -140737488355328
  %i.ah = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.ah, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %bb.h

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.d, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.ai = fcmp uno double %.1, 0.000000e+00
  %i.aj = bitcast double %.1 to i64
  %spec.select.i75 = select i1 %i.ai, i64 9221120237041090560, i64 %i.aj, !prof !30 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !10 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 192 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !20 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.aq = icmp ult ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !20
  store i64 %spec.select.i75, ptr %i.an, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.f:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.as = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.al, i64 %spec.select.i75) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i.i.i = phi ptr [ %i.an, %bb.e ], [ %i.as, %bb.f ]
  %i.at = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #12 ; 2 uses
  %.not125 = icmp eq ptr %i.at, inttoptr (i64 -1 to ptr)
  br i1 %.not125, label %bb.at, label %bb.g, !prof !30

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = or i64 %i.au, -844424930131968
  br label %bb.at

bb.h:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.aw = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.ag) #12 ; 2 uses
  %i.ax = extractvalue { i32, i64 } %i.aw, 0
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.at, label %bb.i, !prof !30

bb.i:                                             ; preds = %bb.h
  %i.az = extractvalue { i32, i64 } %i.aw, 1
  %i.ba = bitcast i64 %i.az to double             ; 3 uses
  %i.bb = fcmp uno double %.1, 0.000000e+00
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.bd = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.bc, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 38) #12
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = or i64 %i.be, -844424930131968
  br label %bb.at

bb.k:                                             ; preds = %bb.i
  %i.bg = fcmp oeq double %.1, +inf
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.bi = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.bh, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 40) #12
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = or i64 %i.bj, -844424930131968
  br label %bb.at

bb.m:                                             ; preds = %bb.k
  %i.bl = fcmp oeq double %.1, -inf
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.bn = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.bm, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 42) #12
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = or i64 %i.bo, -844424930131968
  br label %bb.at

bb.o:                                             ; preds = %bb.m
  %i.bq = fcmp olt double %i.ba, 1.000000e+00
  %i.br = fcmp ogt double %i.ba, 1.000000e+02
  %or.cond = or i1 %i.bq, %i.br
  br i1 %or.cond, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit77, label %bb.p

_ZN6hermes2vm11TwineChar16C2EPKc.exit77:          ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bs, align 8, !tbaa !46
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 46, ptr %i.bt, align 8, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bu, align 8, !tbaa !48
  store ptr @.str.11, ptr %4, align 8, !tbaa !49
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bv, align 8, !tbaa !50
  %i.bw = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.at

bb.p:                                             ; preds = %bb.o
  %i.bx = fptosi double %i.ba to i32              ; 8 uses
  %i.by = fcmp olt double %.1, 0.000000e+00       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i8 0, i64 32, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.ca, ptr %5, align 8, !tbaa !51
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  store i32 0, ptr %i.cb, align 8, !tbaa !52
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 32, ptr %i.cc, align 4, !tbaa !53
  %i.cd = fcmp oeq double %.1, 0.000000e+00
  br i1 %i.cd, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.p
  %i.ce = icmp sgt i32 %i.bx, 0
  br i1 %i.ce, label %.lr.ph130, label %.thread122

.lr.ph130:                                        ; preds = %.preheader, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %i.cf = phi i32 [ %i.cm, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ 0, %.preheader ] ; 2 uses
  %.068129 = phi i32 [ %i.cn, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ 0, %.preheader ]
  %i.cg = load i32, ptr %i.cc, align 4, !tbaa !53
  %.not.i = icmp ult i32 %i.cf, %i.cg
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.q, !prof !22

bb.q:                                             ; preds = %.lr.ph130
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.ca, i64 noundef 0, i64 noundef 1) #12
  %.pre.i = load i32, ptr %i.cb, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %.lr.ph130, %bb.q
  %i.ch = phi i32 [ %.pre.i, %bb.q ], [ %i.cf, %.lr.ph130 ]
  %i.ci = load ptr, ptr %5, align 8, !tbaa !51
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  store i8 48, ptr %i.ck, align 1
  %i.cl = load i32, ptr %i.cb, align 8, !tbaa !52
  %i.cm = add i32 %i.cl, 1                        ; 3 uses
  store i32 %i.cm, ptr %i.cb, align 8, !tbaa !52
  %i.cn = add nuw nsw i32 %.068129, 1             ; 2 uses
  %exitcond132.not = icmp eq i32 %i.cn, %i.bx
  br i1 %exitcond132.not, label %.thread119, label %.lr.ph130, !llvm.loop !109

bb.r:                                             ; preds = %bb.p
  %i.co = fneg double %.1
  %.2 = select i1 %i.by, double %i.co, double %.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.cp = call ptr @dtoa_alloc_init(ptr noundef nonnull align 8 dereferenceable(1208) %6, i32 noundef 1200) #12 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 1200 ; 3 uses
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !56
  %i.cr = call ptr @dtoa_fixedpoint(ptr noundef %i.cp, double noundef %.2, i32 noundef 2, i32 noundef %i.bx, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !58
  call void @_ZN4llvh11SmallStringILj32EE6appendIPcEEvT_S4_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.cr, ptr noundef %i.cs)
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !56
  call void @g_freedtoa(ptr noundef %i.ct, ptr noundef %i.cr) #12
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !56
  call void @dtoa_alloc_done(ptr noundef %i.cu) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.cv = load i32, ptr %i.cb, align 8, !tbaa !52 ; 3 uses
  %i.cw = icmp ult i32 %i.cv, %i.bx
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.r, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80
  %i.cx = phi i32 [ %i.de, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80 ], [ %i.cv, %bb.r ] ; 2 uses
  %i.cy = load i32, ptr %i.cc, align 4, !tbaa !53
  %.not.i78 = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i78, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80, label %bb.s, !prof !22

bb.s:                                             ; preds = %.lr.ph
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.ca, i64 noundef 0, i64 noundef 1) #12
  %.pre.i79 = load i32, ptr %i.cb, align 8, !tbaa !52
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80: ; preds = %.lr.ph, %bb.s
  %i.cz = phi i32 [ %.pre.i79, %bb.s ], [ %i.cx, %.lr.ph ]
  %i.da = load ptr, ptr %5, align 8, !tbaa !51
  %i.db = zext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  store i8 48, ptr %i.dc, align 1
  %i.dd = load i32, ptr %i.cb, align 8, !tbaa !52
  %i.de = add i32 %i.dd, 1                        ; 4 uses
  store i32 %i.de, ptr %i.cb, align 8, !tbaa !52
  %i.df = icmp ult i32 %i.de, %i.bx
  br i1 %i.df, label %.lr.ph, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80, %bb.r
  %.lcssa = phi i32 [ %i.cv, %bb.r ], [ %i.de, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit80 ] ; 2 uses
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !6   ; 8 uses
  %i.dh = add nsw i32 %i.dg, -1                   ; 3 uses
  %i.di = icmp slt i32 %i.dg, -5
  %.not.not = icmp sgt i32 %i.dg, %i.bx
  %or.cond72 = select i1 %i.di, i1 true, i1 %.not.not
  br i1 %or.cond72, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %._crit_edge
  %i.dj = icmp ugt i32 %.lcssa, 1
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dk = load ptr, ptr %5, align 8, !tbaa !51
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i8 46, ptr %i.d, align 1, !tbaa !49
  %i.dm = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.dl, ptr noundef nonnull align 1 dereferenceable(1) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dn = icmp eq i32 %i.dh, 0
  br i1 %i.dn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvh11SmallStringILj32EE6appendENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull @.str.8, i64 3)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 1, ptr %i.do, align 8, !tbaa !65
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %7, align 8, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %5, ptr %i.dq, align 8, !tbaa !69
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef null, i64 noundef 0, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.9, ptr %i.dr, align 8, !tbaa !71, !alias.scope !115
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh13format_objectIJiEEE, i64 16), ptr %8, align 8, !tbaa !67, !alias.scope !115
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.dh, ptr %i.ds, align 8, !tbaa !73, !alias.scope !115
  %i.dt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsERKNS_18format_object_baseE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.by, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.du = load ptr, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i8 45, ptr %i.e, align 1, !tbaa !49
  %i.dv = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.du, ptr noundef nonnull align 1 dereferenceable(1) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.z, %bb.y
  %i.dw = load ptr, ptr %5, align 8, !tbaa !51
  %i.dx = load i32, ptr %i.cb, align 8, !tbaa !52
  %i.dy = zext i32 %i.dx to i64
  %i.dz = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.dw, i64 %i.dy) ; 2 uses
  %i.ea = extractvalue { i32, i64 } %i.dz, 0
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.aa, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit, !prof !30

bb.aa:                                            ; preds = %.critedge
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #14
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit81

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ec = icmp eq i32 %i.dg, %i.bx
  br i1 %i.ec, label %bb.ac, label %bb.ag

.thread119:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %i.ed = icmp eq i32 %i.bx, 1
  br i1 %i.ed, label %bb.ac, label %.thread122

bb.ac:                                            ; preds = %.thread119, %bb.ab
  %i.ee = phi i32 [ %i.cm, %.thread119 ], [ %.lcssa, %bb.ab ]
  %.pre135 = load ptr, ptr %5, align 8, !tbaa !51 ; 2 uses
  br i1 %i.by, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i8 45, ptr %i.f, align 1, !tbaa !49
  %i.ef = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %.pre135, ptr noundef nonnull align 1 dereferenceable(1) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  %.pre134 = load ptr, ptr %5, align 8, !tbaa !51
  %.pre136 = load i32, ptr %i.cb, align 8, !tbaa !52
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.eg = phi i32 [ %.pre136, %bb.ad ], [ %i.ee, %bb.ac ]
  %i.eh = phi ptr [ %.pre134, %bb.ad ], [ %.pre135, %bb.ac ]
  %i.ei = zext i32 %i.eg to i64
  %i.ej = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.eh, i64 %i.ei) ; 2 uses
  %i.ek = extractvalue { i32, i64 } %i.ej, 0
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.af, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit81, !prof !30

bb.af:                                            ; preds = %bb.ae
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #14
  unreachable

bb.ag:                                            ; preds = %bb.ab
  %i.em = icmp sgt i32 %i.dg, 0
  br i1 %i.em, label %.thread122, label %bb.ak

.thread122:                                       ; preds = %.preheader, %.thread119, %bb.ag
  %.0114121124 = phi i32 [ %i.dh, %bb.ag ], [ 0, %.thread119 ], [ 0, %.preheader ]
  %i.en = load ptr, ptr %5, align 8, !tbaa !51
  %i.eo = zext nneg i32 %.0114121124 to i64
  %i.ep = getelementptr i8, ptr %i.en, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i8 46, ptr %i.g, align 1, !tbaa !49
  %i.er = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.eq, ptr noundef nonnull align 1 dereferenceable(1) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br i1 %i.by, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread122
  %i.es = load ptr, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store i8 45, ptr %i.h, align 1, !tbaa !49
  %i.et = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertEPcOc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.es, ptr noundef nonnull align 1 dereferenceable(1) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread122
  %i.eu = load ptr, ptr %5, align 8, !tbaa !51
  %i.ev = load i32, ptr %i.cb, align 8, !tbaa !52
  %i.ew = zext i32 %i.ev to i64
  %i.ex = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.eu, i64 %i.ew) ; 2 uses
  %i.ey = extractvalue { i32, i64 } %i.ex, 0
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.aj, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureINS0_11HermesValueEEET_NS0_10CallResultIS4_Xsr6detail23GetCallResultSpecializeIS4_EE5valueEEE.exit81, !prof !30

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #14
  unreachable

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @_ZN4llvh11SmallStringILj32EEC2ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr nonnull @.str.12, i64 2)
  %i.fa = sub nsw i32 2, %i.dg
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = load i32, ptr %i.cb, align 8, !tbaa !52
  %i.fd = zext i32 %i.fc to i64
  %i.fe = add nuw nsw i64 %i.fd, %i.fb            ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !53
  %i.fh = zext i32 %i.fg to i64
  %i.fi = icmp samesign ugt i64 %i.fe, %i.fh
  br i1 %i.fi, label %bb.al, label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

bb.al:                                            ; preds = %bb.ak
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.fj, i64 noundef %i.fe, i64 noundef 1) #12
  br label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

_ZN4llvh15SmallVectorImplIcE7reserveEm.exit:      ; preds = %bb.ak, %bb.al
  %i.fk = sub nsw i32 0, %i.dg
  %i.fl = icmp slt i32 %i.dg, 0
  br i1 %i.fl, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre = load i32, ptr %i.fm, align 8, !tbaa !52
  br label %bb.am

._crit_edge128:                                   ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit85, %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  call void @_ZN4llvh11SmallStringILj32EE6appendERKNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br i1 %i.by, label %bb.ao, label %bb.ap

bb.am:                                            ; preds = %.lr.ph127, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit85
  %i.fo = phi i32 [ %.pre, %.lr.ph127 ], [ %i.fv, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit85 ] ; 2 uses
  %.066126 = phi i32 [ 0, %.lr.ph127 ], [ %i.fw, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit85 ]
  %i.fp = load i32, ptr %i.ff, align 4, !tbaa !53
  %.not.i83 = icmp ult i32 %i.fo, %i.fp
  br i1 %.not.i83, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit85, label %bb.an, !prof !22

end_hunk_1

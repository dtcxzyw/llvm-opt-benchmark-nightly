Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebuf?download=true
inline.NumInlined: 16785
inline.NumDeleted: 5500
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IffEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation:bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IffEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val6, i64 80, i1 false), !tbaa.struct !844
  store ptr %i.a, ptr %0, align 8, !tbaa !171
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IffEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !171 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IffEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 80) #42
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IffEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IffEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IfhEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.177", align 8 ; 51 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !171   ; 9 uses
  %i.a = load <4 x i32>, ptr %1, align 4, !tbaa !83
  %.sroa.023.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !83
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i32>, ptr %.sroa.525.0..sroa_idx.i.i, align 4, !tbaa !83
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.727.0.copyload.i.i = load i32, ptr %.sroa.727.0..sroa_idx.i.i, align 4, !tbaa !83 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.828.0.copyload.i.i = load i32, ptr %.sroa.828.0..sroa_idx.i.i, align 4, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3171 ; 2 uses
  %i.e = sub nsw i32 %.sroa.828.0.copyload.i.i, %.sroa.727.0.copyload.i.i
  %.fr17.i.i.i = freeze i32 %i.e                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.f = load ptr, ptr %.val, align 8, !tbaa !3172, !nonnull !210, !align !429
  store ptr %i.f, ptr %2, align 8, !tbaa !324
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  store ptr null, ptr %i.h, align 8, !tbaa !325
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  store ptr null, ptr %i.i, align 8, !tbaa !326
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store i32 0, ptr %i.g, align 8
  store i32 1, ptr %i.j, align 8, !tbaa !327
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 4 uses
  store i8 0, ptr %i.k, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 0, i1 zeroext poison)
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.023.0.copyload.i.i, -2147483648 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load <2 x i32>, ptr %i.m, align 4
  %i.o = load <4 x i32>, ptr %i.l, align 4
  %i.p = select i1 %.not.i.i.i.i.i, <4 x i32> %i.o, <4 x i32> %i.a ; 3 uses
  %i.q = select i1 %.not.i.i.i.i.i, <2 x i32> %i.n, <2 x i32> %i.b ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  store <2 x i32> %i.q, ptr %i.v, align 4, !tbaa !83
  %i.x = extractelement <4 x i32> %i.p, i64 0
  %i.y = extractelement <4 x i32> %i.p, i64 2
  %i.z = extractelement <2 x i32> %i.q, i64 0
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z)
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !338 ; 3 uses
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !339
  %i.ac = icmp eq i32 %i.aa, %i.ab
  %.pre.i.i.i.i.i = load i32, ptr %i.t, align 4, !tbaa !340 ; 2 uses
  br i1 %i.ac, label %._crit_edge.i.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %.pre15.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !337
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !341
  %i.ae = icmp eq i32 %.pre.i.i.i.i.i, %i.ad
  %.pre16.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !337 ; 2 uses
  %i.af = load i32, ptr %i.v, align 4
  %i.ag = icmp eq i32 %i.af, %.pre16.i.i.i.i.i
  %or.cond.i.i.i = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %i.ah = phi i32 [ %.pre15.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre16.i.i.i.i.i, %bb.b ]
  store i8 0, ptr %i.g, align 8, !tbaa !342
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.aa, ptr %i.ai, align 4, !tbaa !343
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.pre.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !344
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.au = icmp sgt i32 %.fr17.i.i.i, 0
  br i1 %i.au, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.be = sext i32 %.sroa.727.0.copyload.i.i to i64 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr17.i.i.i to i64 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bo = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.bo
  %min.iters.check = icmp ult i32 %.fr17.i.i.i, 8
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i
  %i.bp = load i8, ptr %i.g, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.d, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %.pre.i.i.i = load i32, ptr %i.am, align 8, !tbaa !344
  %.pre21.i.i.i = load i32, ptr %i.al, align 4, !tbaa !343
  %.pre33.i.i = load i32, ptr %i.an, align 4, !tbaa !345
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %i.br = load i32, ptr %i.al, align 4, !tbaa !343 ; 2 uses
  %i.bs = load i32, ptr %i.r, align 4, !tbaa !338
  %i.bt = icmp eq i32 %i.br, %i.bs
  %.pre20.i.i.i = load i32, ptr %i.am, align 8, !tbaa !344 ; 2 uses
  %i.bu = load i32, ptr %i.t, align 4
  %i.bv = icmp eq i32 %.pre20.i.i.i, %i.bu
  %or.cond25.i.i.i = select i1 %i.bt, i1 %i.bv, i1 false
  %.pre34.i.i = load i32, ptr %i.an, align 4, !tbaa !345 ; 2 uses
  %i.bw = load i32, ptr %i.w, align 8
  %i.bx = icmp eq i32 %.pre34.i.i, %i.bw
  %or.cond.i.i = select i1 %or.cond25.i.i.i, i1 %i.bx, i1 false
  br i1 %or.cond.i.i, label %.split.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i: ; preds = %bb.d, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i
  %i.by = phi i32 [ %.pre33.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre34.i.i, %bb.d ] ; 5 uses
  %i.bz = phi i32 [ %.pre21.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %i.br, %bb.d ] ; 2 uses
  %i.ca = phi i32 [ %.pre.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre20.i.i.i, %bb.d ] ; 4 uses
  %i.cb = load i32, ptr %i.ap, align 8, !tbaa !3173
  %i.cc = sub nsw i32 %i.by, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = load i64, ptr %i.aq, align 8, !tbaa !3174
  %i.cf = mul nsw i64 %i.ce, %i.cd                ; 2 uses
  %i.cg = load i32, ptr %i.ar, align 8, !tbaa !3175
  %i.ch = sub nsw i32 %i.ca, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = load i64, ptr %i.as, align 8, !tbaa !3176
  %i.ck = mul nsw i64 %i.cj, %i.ci                ; 2 uses
  %i.cl = load i32, ptr %i.ao, align 8, !tbaa !3177
  %i.cm = sub nsw i32 %i.bz, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = load i64, ptr %i.at, align 8, !tbaa !3178
  %i.cp = mul nsw i64 %i.co, %i.cn                ; 2 uses
  %i.cq = getelementptr i8, ptr %i.d, i64 %i.cf
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.ck
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cp  ; 7 uses
  %i.ct = load ptr, ptr %i.i, align 8, !tbaa !326 ; 4 uses
  %invariant.gep.i.i.i = getelementptr i8, ptr %i.ct, i64 %i.be ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i
  %i.cu = getelementptr i8, ptr %scevgep, i64 %i.cp
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.ck
  %scevgep11 = getelementptr i8, ptr %i.cv, i64 %i.cf
  %i.cw = getelementptr i8, ptr %i.ct, i64 %i.be
  %scevgep12 = getelementptr i8, ptr %i.cw, i64 %wide.trip.count.i.i.i
  %bound0 = icmp ult ptr %i.cs, %scevgep12
  %bound1 = icmp ult ptr %invariant.gep.i.i.i, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cx = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %index ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  %wide.load = load <4 x i8>, ptr %i.cx, align 1, !tbaa !172, !alias.scope !3179
  %wide.load13 = load <4 x i8>, ptr %i.cy, align 1, !tbaa !172, !alias.scope !3179
  %i.cz = uitofp <4 x i8> %wide.load to <4 x float>
  %i.da = uitofp <4 x i8> %wide.load13 to <4 x float>
  %i.db = fmul nnan <4 x float> %i.cz, splat (float f0x3B808081)
  %i.dc = fmul nnan <4 x float> %i.da, splat (float f0x3B808081)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <4 x float> %i.db, ptr %i.dd, align 4, !tbaa !329, !alias.scope !3180, !noalias !3179
  store <4 x float> %i.dc, ptr %i.de, align 4, !tbaa !329, !alias.scope !3180, !noalias !3179
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !3167

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.i.i.prol = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.dg = load i8, ptr %gep.i.i.i.prol, align 1, !tbaa !172
  %i.dh = uitofp i8 %i.dg to float
  %i.di = fmul nnan float %i.dh, f0x3B808081
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i.i.i.prol
  store float %i.di, ptr %i.dj, align 4, !tbaa !329
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !3168

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.dk = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %._crit_edge.us.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.dm = load i8, ptr %gep.i.i.i, align 1, !tbaa !172
  %i.dn = uitofp i8 %i.dm to float
  %i.do = fmul nnan float %i.dn, f0x3B808081
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i.i.i
  store float %i.do, ptr %i.dp, align 4, !tbaa !329
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %gep.i.i.i.1 = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.dq = load i8, ptr %gep.i.i.i.1, align 1, !tbaa !172
  %i.dr = uitofp i8 %i.dq to float
  %i.ds = fmul nnan float %i.dr, f0x3B808081
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i
  store float %i.ds, ptr %i.dt, align 4, !tbaa !329
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %gep.i.i.i.2 = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.du = load i8, ptr %gep.i.i.i.2, align 1, !tbaa !172
  %i.dv = uitofp i8 %i.du to float
  %i.dw = fmul nnan float %i.dv, f0x3B808081
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i.1
  store float %i.dw, ptr %i.dx, align 4, !tbaa !329
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %gep.i.i.i.3 = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.dy = load i8, ptr %gep.i.i.i.3, align 1, !tbaa !172
  %i.dz = uitofp i8 %i.dy to float
  %i.ea = fmul nnan float %i.dz, f0x3B808081
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.i.2
  store float %i.ea, ptr %i.eb, align 4, !tbaa !329
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.us.i.i.i, label %scalar.ph, !llvm.loop !3169

._crit_edge.us.i.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ec = add nsw i32 %i.bz, 1                    ; 7 uses
  store i32 %i.ec, ptr %i.al, align 4, !tbaa !343
  %i.ed = load i32, ptr %i.s, align 8, !tbaa !339
  %i.ee = icmp slt i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.e, label %bb.l

bb.e:                                             ; preds = %._crit_edge.us.i.i.i
  %i.ef = load i8, ptr %i.bf, align 1, !tbaa !346, !range !209, !noundef !210
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.f, label %._crit_edge.i8.i.i

bb.f:                                             ; preds = %bb.e
  %i.eh = load i8, ptr %i.bg, align 1, !tbaa !347, !range !209, !noundef !210
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ej = load i64, ptr %i.bi, align 8, !tbaa !348
  %i.ek = getelementptr inbounds i8, ptr %i.ct, i64 %i.ej
  store ptr %i.ek, ptr %i.i, align 8, !tbaa !326
  %i.el = load i32, ptr %i.bj, align 8, !tbaa !349
  %.not.i.i13.i.i = icmp slt i32 %i.ec, %i.el
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.h, !prof !212

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.us.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.em = load i8, ptr %i.bh, align 2, !tbaa !350, !range !209, !noundef !210
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eo = load i64, ptr %i.bi, align 8, !tbaa !348
  %i.ep = getelementptr inbounds i8, ptr %i.ct, i64 %i.eo
  store ptr %i.ep, ptr %i.i, align 8, !tbaa !326
  %i.eq = load i32, ptr %i.bj, align 8, !tbaa !349
  %i.er = icmp slt i32 %i.ec, %i.eq               ; 3 uses
  %i.es = load i32, ptr %i.bk, align 4
  %i.et = icmp sge i32 %i.ec, %i.es
  %not..i.i11.i.i = xor i1 %i.er, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.et, !prof !351
  %i.eu = load ptr, ptr %i.h, align 8
  %i.ev = icmp eq ptr %i.eu, null
  %i.ew = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.ev, !prof !351
  br i1 %i.ew, label %bb.k, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, !prof !189

bb.k:                                             ; preds = %bb.j
  %i.ex = load ptr, ptr %2, align 8, !tbaa !324
  %i.ey = load i32, ptr %i.j, align 8, !tbaa !327
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !229
  %i.fb = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.fa, i32 noundef %i.ec, i32 noundef %i.ca, i32 noundef %i.by, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.k, i1 noundef zeroext %i.er, i32 noundef %i.ey)
          to label %.noexc15.i.i unwind label %.split16.us.i.i.i

.noexc15.i.i:                                     ; preds = %bb.k
  %i.fc = zext i1 %i.er to i8
  store ptr %i.fb, ptr %i.i, align 8, !tbaa !326
  store i8 %i.fc, ptr %i.bf, align 1, !tbaa !346
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

bb.l:                                             ; preds = %._crit_edge.us.i.i.i
  %i.fd = load i32, ptr %i.r, align 4, !tbaa !338 ; 3 uses
  store i32 %i.fd, ptr %i.al, align 4, !tbaa !343
  %i.fe = add nsw i32 %i.ca, 1                    ; 3 uses
  store i32 %i.fe, ptr %i.am, align 8, !tbaa !344
  %i.ff = load i32, ptr %i.u, align 8, !tbaa !341
  %.not.i6.i.i = icmp slt i32 %i.fe, %i.ff
  br i1 %.not.i6.i.i, label %._crit_edge.i8.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fg = load i32, ptr %i.t, align 4, !tbaa !340 ; 2 uses
  store i32 %i.fg, ptr %i.am, align 8, !tbaa !344
  %i.fh = add nsw i32 %i.by, 1                    ; 3 uses
  store i32 %i.fh, ptr %i.an, align 4, !tbaa !345
  %i.fi = load i32, ptr %i.w, align 8, !tbaa !337
  %.not1.i7.i.i = icmp slt i32 %i.fh, %i.fi
  br i1 %.not1.i7.i.i, label %._crit_edge.i8.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.g, align 8, !tbaa !342
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

._crit_edge.i8.i.i:                               ; preds = %bb.m, %bb.l, %bb.e
  %i.fj = phi i32 [ %i.by, %bb.l ], [ %i.fh, %bb.m ], [ %i.by, %bb.e ]
  %i.fk = phi i32 [ %i.fe, %bb.l ], [ %i.fg, %bb.m ], [ %i.ca, %bb.e ]
  %i.fl = phi i32 [ %i.fd, %bb.l ], [ %i.fd, %bb.m ], [ %i.ec, %bb.e ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fl, i32 noundef %i.fk, i32 noundef %i.fj)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge: ; preds = %._crit_edge.i8.i.i, %bb.n, %.noexc15.i.i, %bb.j, %bb.i, %bb.h, %bb.g
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

.split16.us.i.i.i:                                ; preds = %._crit_edge.i8.i.i, %bb.k, %bb.h
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i
  %i.fn = phi i32 [ %.pre.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i ], [ %i.aa, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i ] ; 4 uses
  %i.fo = load i8, ptr %i.g, align 8, !tbaa !342, !range !209, !noundef !210
  %i.fp = icmp eq i8 %i.fo, 0
  %.pre.i.i = load i32, ptr %i.al, align 4, !tbaa !343 ; 2 uses
  %i.fq = icmp eq i32 %.pre.i.i, %i.fn
  %or.cond44.i.i = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %or.cond44.i.i, label %bb.o, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i
  %i.fr = load i32, ptr %i.am, align 8, !tbaa !344
  %i.fs = load i32, ptr %i.t, align 4, !tbaa !340
  %i.ft = icmp eq i32 %i.fr, %i.fs
  br i1 %i.ft, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IftEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation:bb.a
  store ptr %.val, ptr %0, align 8, !tbaa !171
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IftEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val6, i64 80, i1 false), !tbaa.struct !844
  store ptr %i.a, ptr %0, align 8, !tbaa !171
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IftEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !171 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IftEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 80) #42
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IftEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IftEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IhfEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.595", align 8 ; 51 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !171   ; 9 uses
  %i.a = load <4 x i32>, ptr %1, align 4, !tbaa !83
  %.sroa.023.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !83
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i32>, ptr %.sroa.525.0..sroa_idx.i.i, align 4, !tbaa !83
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.727.0.copyload.i.i = load i32, ptr %.sroa.727.0..sroa_idx.i.i, align 4, !tbaa !83 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.828.0.copyload.i.i = load i32, ptr %.sroa.828.0..sroa_idx.i.i, align 4, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3211 ; 2 uses
  %i.e = sub nsw i32 %.sroa.828.0.copyload.i.i, %.sroa.727.0.copyload.i.i
  %.fr17.i.i.i = freeze i32 %i.e                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.f = load ptr, ptr %.val, align 8, !tbaa !3212, !nonnull !210, !align !429
  store ptr %i.f, ptr %2, align 8, !tbaa !324
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  store ptr null, ptr %i.h, align 8, !tbaa !325
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 12 uses
  store ptr null, ptr %i.i, align 8, !tbaa !326
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store i32 0, ptr %i.g, align 8
  store i32 1, ptr %i.j, align 8, !tbaa !327
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 4 uses
  store i8 0, ptr %i.k, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 0, i1 zeroext poison)
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.023.0.copyload.i.i, -2147483648 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load <2 x i32>, ptr %i.m, align 4
  %i.o = load <4 x i32>, ptr %i.l, align 4
  %i.p = select i1 %.not.i.i.i.i.i, <4 x i32> %i.o, <4 x i32> %i.a ; 3 uses
  %i.q = select i1 %.not.i.i.i.i.i, <2 x i32> %i.n, <2 x i32> %i.b ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  store <2 x i32> %i.q, ptr %i.v, align 4, !tbaa !83
  %i.x = extractelement <4 x i32> %i.p, i64 0
  %i.y = extractelement <4 x i32> %i.p, i64 2
  %i.z = extractelement <2 x i32> %i.q, i64 0
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z)
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !338 ; 3 uses
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !339
  %i.ac = icmp eq i32 %i.aa, %i.ab
  %.pre.i.i.i.i.i = load i32, ptr %i.t, align 4, !tbaa !340 ; 2 uses
  br i1 %i.ac, label %._crit_edge.i.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %.pre15.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !337
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !341
  %i.ae = icmp eq i32 %.pre.i.i.i.i.i, %i.ad
  %.pre16.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !337 ; 2 uses
  %i.af = load i32, ptr %i.v, align 4
  %i.ag = icmp eq i32 %i.af, %.pre16.i.i.i.i.i
  %or.cond.i.i.i = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %i.ah = phi i32 [ %.pre15.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre16.i.i.i.i.i, %bb.b ]
  store i8 0, ptr %i.g, align 8, !tbaa !342
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.aa, ptr %i.ai, align 4, !tbaa !343
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.pre.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !344
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 13 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 11 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.au = icmp sgt i32 %.fr17.i.i.i, 0
  br i1 %i.au, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.be = sext i32 %.sroa.727.0.copyload.i.i to i64 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr17.i.i.i to i64 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %scevgep = getelementptr i8, ptr %i.d, i64 %wide.trip.count.i.i.i
  %i.bo = add nsw i64 %i.be, %wide.trip.count.i.i.i
  %i.bp = shl nsw i64 %i.bo, 2
  %min.iters.check = icmp ult i32 %.fr17.i.i.i, 4
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i
  %i.bq = load i8, ptr %i.g, align 8, !tbaa !342, !range !209, !noundef !210
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.d, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %.pre.i.i.i = load i32, ptr %i.am, align 8, !tbaa !344
  %.pre21.i.i.i = load i32, ptr %i.al, align 4, !tbaa !343
  %.pre33.i.i = load i32, ptr %i.an, align 4, !tbaa !345
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %i.bs = load i32, ptr %i.al, align 4, !tbaa !343 ; 2 uses
  %i.bt = load i32, ptr %i.r, align 4, !tbaa !338
  %i.bu = icmp eq i32 %i.bs, %i.bt
  %.pre20.i.i.i = load i32, ptr %i.am, align 8, !tbaa !344 ; 2 uses
  %i.bv = load i32, ptr %i.t, align 4
  %i.bw = icmp eq i32 %.pre20.i.i.i, %i.bv
  %or.cond26.i.i.i = select i1 %i.bu, i1 %i.bw, i1 false
  %.pre34.i.i = load i32, ptr %i.an, align 4, !tbaa !345 ; 2 uses
  %i.bx = load i32, ptr %i.w, align 8
  %i.by = icmp eq i32 %.pre34.i.i, %i.bx
  %or.cond.i.i = select i1 %or.cond26.i.i.i, i1 %i.by, i1 false
  br i1 %or.cond.i.i, label %.split.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i: ; preds = %bb.d, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i
  %i.bz = phi i32 [ %.pre33.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre34.i.i, %bb.d ]
  %i.ca = phi i32 [ %.pre21.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %i.bs, %bb.d ]
  %i.cb = phi i32 [ %.pre.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre20.i.i.i, %bb.d ]
  %i.cc = load i32, ptr %i.ap, align 8, !tbaa !3213
  %i.cd = sub nsw i32 %i.bz, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = load i64, ptr %i.aq, align 8, !tbaa !3214
  %i.cg = mul nsw i64 %i.cf, %i.ce                ; 2 uses
  %i.ch = load i32, ptr %i.ar, align 8, !tbaa !3215
  %i.ci = sub nsw i32 %i.cb, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i64, ptr %i.as, align 8, !tbaa !3216
  %i.cl = mul nsw i64 %i.ck, %i.cj                ; 2 uses
  %i.cm = load i32, ptr %i.ao, align 8, !tbaa !3217
  %i.cn = sub nsw i32 %i.ca, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = load i64, ptr %i.at, align 8, !tbaa !3218
  %i.cq = mul nsw i64 %i.cp, %i.co                ; 2 uses
  %i.cr = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cl
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cq  ; 3 uses
  %.pre22.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !326 ; 2 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %.pre22.i.i.i, i64 %i.be ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i
  %i.cu = getelementptr i8, ptr %scevgep, i64 %i.cq
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.cl
  %scevgep11 = getelementptr i8, ptr %i.cv, i64 %i.cg
  %scevgep12 = getelementptr i8, ptr %.pre22.i.i.i, i64 %i.bp
  %bound0 = icmp ult ptr %i.ct, %scevgep12
  %bound1 = icmp ult ptr %invariant.gep.i.i.i, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cw = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index
  %wide.load = load <4 x float>, ptr %i.cw, align 4, !tbaa !329, !alias.scope !3219
  %i.cx = fmul <4 x float> %wide.load, splat (float 2.550000e+02) ; 2 uses
  %i.cy = fcmp olt <4 x float> %i.cx, zeroinitializer
  %i.cz = select <4 x i1> %i.cy, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.da = fadd <4 x float> %i.cx, %i.cz           ; 2 uses
  %i.db = fcmp oge <4 x float> %i.da, zeroinitializer
  %i.dc = select <4 x i1> %i.db, <4 x float> %i.da, <4 x float> zeroinitializer ; 2 uses
  %i.dd = fcmp ogt <4 x float> %i.dc, splat (float 2.550000e+02)
  %i.de = select <4 x i1> %i.dd, <4 x float> splat (float 2.550000e+02), <4 x float> %i.dc
  %i.df = fptoui <4 x float> %i.de to <4 x i8>
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 %index
  store <4 x i8> %i.df, ptr %i.dg, align 1, !tbaa !172, !alias.scope !3220, !noalias !3219
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !3208

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.di = load float, ptr %gep.i.i.i, align 4, !tbaa !329
  %i.dj = fmul float %i.di, 2.550000e+02          ; 2 uses
  %i.dk = fcmp olt float %i.dj, 0.000000e+00
  %i.dl = select i1 %i.dk, float -5.000000e-01, float 5.000000e-01
  %i.dm = fadd float %i.dj, %i.dl                 ; 2 uses
  %.inv.i.i.i.i.us.i.i.i = fcmp oge float %i.dm, 0.000000e+00
  %.0.i.i.i.i.i.us.i.i.i = select i1 %.inv.i.i.i.i.us.i.i.i, float %i.dm, float 0.000000e+00 ; 2 uses
  %i.dn = fcmp ogt float %.0.i.i.i.i.i.us.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.us.i.i.i = select i1 %i.dn, float 2.550000e+02, float %.0.i.i.i.i.i.us.i.i.i
  %i.do = fptoui float %.1.i.i.i.i.i.us.i.i.i to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv.i.i.i
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !172
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.us.i.i.i, label %scalar.ph, !llvm.loop !3209

._crit_edge.us.i.i.i:                             ; preds = %scalar.ph, %middle.block
  %i.dq = load i32, ptr %i.al, align 4, !tbaa !343
  %i.dr = add nsw i32 %i.dq, 1                    ; 7 uses
  store i32 %i.dr, ptr %i.al, align 4, !tbaa !343
  %i.ds = load i32, ptr %i.s, align 8, !tbaa !339
  %i.dt = icmp slt i32 %i.dr, %i.ds
  br i1 %i.dt, label %bb.e, label %bb.l

bb.e:                                             ; preds = %._crit_edge.us.i.i.i
  %i.du = load i8, ptr %i.bf, align 1, !tbaa !346, !range !209, !noundef !210
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.f, label %._crit_edge.i8.i.i

._crit_edge.i8.i.i:                               ; preds = %bb.e
  %.pre.i10.i.i = load i32, ptr %i.am, align 8, !tbaa !344
  %.pre35.i.i = load i32, ptr %i.an, align 4, !tbaa !345
  br label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.dw = load i8, ptr %i.bg, align 1, !tbaa !347, !range !209, !noundef !210
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.dy = load i64, ptr %i.bi, align 8, !tbaa !348
  %i.dz = load ptr, ptr %i.i, align 8, !tbaa !326
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %i.dy
  store ptr %i.ea, ptr %i.i, align 8, !tbaa !326
  %i.eb = load i32, ptr %i.bj, align 8, !tbaa !349
  %.not.i.i13.i.i = icmp slt i32 %i.dr, %i.eb
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.h, !prof !212

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.us.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.ec = load i8, ptr %i.bh, align 2, !tbaa !350, !range !209, !noundef !210
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ee = load i64, ptr %i.bi, align 8, !tbaa !348
  %i.ef = load ptr, ptr %i.i, align 8, !tbaa !326
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.ee
  store ptr %i.eg, ptr %i.i, align 8, !tbaa !326
  %i.eh = load i32, ptr %i.bj, align 8, !tbaa !349
  %i.ei = icmp slt i32 %i.dr, %i.eh               ; 3 uses
  %i.ej = load i32, ptr %i.bk, align 4
  %i.ek = icmp sge i32 %i.dr, %i.ej
  %not..i.i11.i.i = xor i1 %i.ei, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.ek, !prof !351
  %i.el = load ptr, ptr %i.h, align 8
  %i.em = icmp eq ptr %i.el, null
  %i.en = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.em, !prof !351
  br i1 %i.en, label %bb.k, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, !prof !189

bb.k:                                             ; preds = %bb.j
  %i.eo = load ptr, ptr %2, align 8, !tbaa !324
  %i.ep = load i32, ptr %i.am, align 8, !tbaa !344
  %i.eq = load i32, ptr %i.an, align 4, !tbaa !345
  %i.er = load i32, ptr %i.j, align 8, !tbaa !327
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !229
  %i.eu = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.et, i32 noundef %i.dr, i32 noundef %i.ep, i32 noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.k, i1 noundef zeroext %i.ei, i32 noundef %i.er)
          to label %.noexc15.i.i unwind label %.split16.us.i.i.i

.noexc15.i.i:                                     ; preds = %bb.k
  %i.ev = zext i1 %i.ei to i8
  store ptr %i.eu, ptr %i.i, align 8, !tbaa !326
  store i8 %i.ev, ptr %i.bf, align 1, !tbaa !346
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

bb.l:                                             ; preds = %._crit_edge.us.i.i.i
  %i.ew = load i32, ptr %i.r, align 4, !tbaa !338 ; 3 uses
  store i32 %i.ew, ptr %i.al, align 4, !tbaa !343
  %i.ex = load i32, ptr %i.am, align 8, !tbaa !344
  %i.ey = add nsw i32 %i.ex, 1                    ; 3 uses
  store i32 %i.ey, ptr %i.am, align 8, !tbaa !344
  %i.ez = load i32, ptr %i.u, align 8, !tbaa !341
  %.not.i6.i.i = icmp slt i32 %i.ey, %i.ez
  %.pre36.i.i = load i32, ptr %i.an, align 4, !tbaa !345 ; 2 uses
  br i1 %.not.i6.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fa = load i32, ptr %i.t, align 4, !tbaa !340 ; 2 uses
  store i32 %i.fa, ptr %i.am, align 8, !tbaa !344
  %i.fb = add nsw i32 %.pre36.i.i, 1              ; 3 uses
  store i32 %i.fb, ptr %i.an, align 4, !tbaa !345
  %i.fc = load i32, ptr %i.w, align 8, !tbaa !337
  %.not1.i7.i.i = icmp slt i32 %i.fb, %i.fc
  br i1 %.not1.i7.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.g, align 8, !tbaa !342
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

bb.o:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i8.i.i
  %i.fd = phi i32 [ %.pre36.i.i, %bb.l ], [ %i.fb, %bb.m ], [ %.pre35.i.i, %._crit_edge.i8.i.i ]
  %i.fe = phi i32 [ %i.ey, %bb.l ], [ %i.fa, %bb.m ], [ %.pre.i10.i.i, %._crit_edge.i8.i.i ]
  %i.ff = phi i32 [ %i.ew, %bb.l ], [ %i.ew, %bb.m ], [ %i.dr, %._crit_edge.i8.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.ff, i32 noundef %i.fe, i32 noundef %i.fd)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge: ; preds = %bb.o, %bb.n, %.noexc15.i.i, %bb.j, %bb.i, %bb.h, %bb.g
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

.split16.us.i.i.i:                                ; preds = %bb.o, %bb.k, %bb.h
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i
  %i.fh = phi i32 [ %.pre.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i ], [ %i.aa, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i ] ; 4 uses
  %i.fi = load i8, ptr %i.g, align 8, !tbaa !342, !range !209, !noundef !210
  %i.fj = icmp eq i8 %i.fi, 0
  %.pre.i.i = load i32, ptr %i.al, align 4, !tbaa !343 ; 2 uses
  %i.fk = icmp eq i32 %.pre.i.i, %i.fh
  %or.cond46.i.i = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond46.i.i, label %bb.p, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i
  %i.fl = load i32, ptr %i.am, align 8, !tbaa !344
  %i.fm = load i32, ptr %i.t, align 4, !tbaa !340
  %i.fn = icmp eq i32 %i.fl, %i.fm
  br i1 %i.fn, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.p
  %i.fo = load i32, ptr %i.an, align 4, !tbaa !345
  %i.fp = load i32, ptr %i.w, align 8, !tbaa !337
  %i.fq = icmp eq i32 %i.fo, %i.fp
  br i1 %i.fq, label %.split.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.p, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIfhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i
  %i.fr = add nsw i32 %.pre.i.i, 1                ; 7 uses
  store i32 %i.fr, ptr %i.al, align 4, !tbaa !343
  %i.fs = load i32, ptr %i.s, align 8, !tbaa !339
  %i.ft = icmp slt i32 %i.fr, %i.fs
  br i1 %i.ft, label %bb.q, label %bb.x

bb.q:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.fu = load i8, ptr %i.av, align 1, !tbaa !346, !range !209, !noundef !210
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.r, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.q
  %.pre.i2.i.i = load i32, ptr %i.am, align 8, !tbaa !344
  %.pre31.i.i = load i32, ptr %i.an, align 4, !tbaa !345
  br label %bb.aa
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IhhEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation:bb.a
  store ptr %.val, ptr %0, align 8, !tbaa !171
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val6, i64 80, i1 false), !tbaa.struct !844
  store ptr %i.a, ptr %0, align 8, !tbaa !171
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !171 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 80) #42
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IhN9Imath_3_14halfEEEbRKNS1_8ImageBufES9_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.600", align 8 ; 51 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !171   ; 9 uses
  %i.a = load <4 x i32>, ptr %1, align 4, !tbaa !83
  %.sroa.023.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !83
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i32>, ptr %.sroa.525.0..sroa_idx.i.i, align 4, !tbaa !83
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.727.0.copyload.i.i = load i32, ptr %.sroa.727.0..sroa_idx.i.i, align 4, !tbaa !83 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.828.0.copyload.i.i = load i32, ptr %.sroa.828.0..sroa_idx.i.i, align 4, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3242 ; 3 uses
  %i.e = sub nsw i32 %.sroa.828.0.copyload.i.i, %.sroa.727.0.copyload.i.i
  %.fr17.i.i.i = freeze i32 %i.e                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.f = load ptr, ptr %.val, align 8, !tbaa !3243, !nonnull !210, !align !429
  store ptr %i.f, ptr %2, align 8, !tbaa !324
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  store ptr null, ptr %i.h, align 8, !tbaa !325
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 12 uses
  store ptr null, ptr %i.i, align 8, !tbaa !326
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store i32 0, ptr %i.g, align 8
  store i32 1, ptr %i.j, align 8, !tbaa !327
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 4 uses
  store i8 0, ptr %i.k, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 0, i1 zeroext poison)
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.023.0.copyload.i.i, -2147483648 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load <2 x i32>, ptr %i.m, align 4
  %i.o = load <4 x i32>, ptr %i.l, align 4
  %i.p = select i1 %.not.i.i.i.i.i, <4 x i32> %i.o, <4 x i32> %i.a ; 3 uses
  %i.q = select i1 %.not.i.i.i.i.i, <2 x i32> %i.n, <2 x i32> %i.b ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  store <2 x i32> %i.q, ptr %i.v, align 4, !tbaa !83
  %i.x = extractelement <4 x i32> %i.p, i64 0
  %i.y = extractelement <4 x i32> %i.p, i64 2
  %i.z = extractelement <2 x i32> %i.q, i64 0
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z)
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !338 ; 3 uses
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !339
  %i.ac = icmp eq i32 %i.aa, %i.ab
  %.pre.i.i.i.i.i = load i32, ptr %i.t, align 4, !tbaa !340 ; 2 uses
  br i1 %i.ac, label %._crit_edge.i.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %.pre15.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !337
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !341
  %i.ae = icmp eq i32 %.pre.i.i.i.i.i, %i.ad
  %.pre16.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !337 ; 2 uses
  %i.af = load i32, ptr %i.v, align 4
  %i.ag = icmp eq i32 %i.af, %.pre16.i.i.i.i.i
  %or.cond.i.i.i = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %i.ah = phi i32 [ %.pre15.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre16.i.i.i.i.i, %bb.b ]
  store i8 0, ptr %i.g, align 8, !tbaa !342
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.aa, ptr %i.ai, align 4, !tbaa !343
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.pre.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !344
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 13 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 11 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.au = icmp sgt i32 %.fr17.i.i.i, 0
  br i1 %i.au, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.be = sext i32 %.sroa.727.0.copyload.i.i to i64 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr17.i.i.i to i64 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %scevgep12 = getelementptr i8, ptr %i.d, i64 %wide.trip.count.i.i.i
  %i.bo = add nsw i64 %i.be, %wide.trip.count.i.i.i
  %i.bp = shl nsw i64 %i.bo, 1
  %min.iters.check = icmp ult i32 %.fr17.i.i.i, 8
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i
  %i.bq = load i8, ptr %i.g, align 8, !tbaa !342, !range !209, !noundef !210
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.d, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %.pre.i.i.i = load i32, ptr %i.am, align 8, !tbaa !344
  %.pre21.i.i.i = load i32, ptr %i.al, align 4, !tbaa !343
  %.pre33.i.i = load i32, ptr %i.an, align 4, !tbaa !345
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %i.bs = load i32, ptr %i.al, align 4, !tbaa !343 ; 2 uses
  %i.bt = load i32, ptr %i.r, align 4, !tbaa !338
  %i.bu = icmp eq i32 %i.bs, %i.bt
  %.pre20.i.i.i = load i32, ptr %i.am, align 8, !tbaa !344 ; 2 uses
  %i.bv = load i32, ptr %i.t, align 4
  %i.bw = icmp eq i32 %.pre20.i.i.i, %i.bv
  %or.cond28.i.i.i = select i1 %i.bu, i1 %i.bw, i1 false
  %.pre34.i.i = load i32, ptr %i.an, align 4, !tbaa !345 ; 2 uses
  %i.bx = load i32, ptr %i.w, align 8
  %i.by = icmp eq i32 %.pre34.i.i, %i.bx
  %or.cond.i.i = select i1 %or.cond28.i.i.i, i1 %i.by, i1 false
  br i1 %or.cond.i.i, label %.split.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i: ; preds = %bb.d, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i
  %i.bz = phi i32 [ %.pre33.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre34.i.i, %bb.d ]
  %i.ca = phi i32 [ %.pre21.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %i.bs, %bb.d ]
  %i.cb = phi i32 [ %.pre.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre20.i.i.i, %bb.d ]
  %i.cc = load i32, ptr %i.ap, align 8, !tbaa !3244
  %i.cd = sub i32 %i.bz, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = load i64, ptr %i.aq, align 8, !tbaa !3245
  %i.cg = mul i64 %i.cf, %i.ce                    ; 2 uses
  %i.ch = load i32, ptr %i.ar, align 8, !tbaa !3246
  %i.ci = sub i32 %i.cb, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i64, ptr %i.as, align 8, !tbaa !3247
  %i.cl = mul i64 %i.ck, %i.cj                    ; 2 uses
  %i.cm = load i32, ptr %i.ao, align 8, !tbaa !3248
  %i.cn = sub i32 %i.ca, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = load i64, ptr %i.at, align 8, !tbaa !3249
  %i.cq = mul i64 %i.cp, %i.co                    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cl
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cq  ; 2 uses
  %.pre22.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !326 ; 2 uses
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %.pre22.i.i.i, i64 %i.be ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i
  %i.cu = add i64 %i.cq, %i.cl
  %i.cv = add i64 %i.cu, %i.cg                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.cv
  %scevgep13 = getelementptr i8, ptr %scevgep12, i64 %i.cv
  %scevgep14 = getelementptr i8, ptr %.pre22.i.i.i, i64 %i.bp
  %bound0 = icmp ult ptr %scevgep, %scevgep14
  %bound1 = icmp ult ptr %invariant.gep.i.i.i, %scevgep13
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cw = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cw, align 2, !tbaa !331, !alias.scope !3250 ; 2 uses
  %i.cx = zext <8 x i16> %wide.load to <8 x i32>
  %i.cy = shl nuw nsw <8 x i32> %i.cx, splat (i32 13)
  %i.cz = and <8 x i32> %i.cy, splat (i32 268427264) ; 6 uses
  %i.da = sext <8 x i16> %wide.load to <8 x i32>
  %i.db = and <8 x i32> %i.da, splat (i32 -2147483648) ; 3 uses
  %i.dc = icmp samesign ugt <8 x i32> %i.cz, splat (i32 8388607)
  %i.dd = icmp eq <8 x i32> %i.cz, zeroinitializer
  %i.de = tail call range(i32 4, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.cz, i1 true)
  %i.df = add nsw <8 x i32> %i.de, splat (i32 -8) ; 2 uses
  %i.dg = shl <8 x i32> %i.cz, %i.df
  %i.dh = or <8 x i32> %i.db, %i.dg
  %i.di = or <8 x i32> %i.dh, splat (i32 947912704)
  %i.dj = shl nuw nsw <8 x i32> %i.df, splat (i32 23)
  %i.dk = sub nuw <8 x i32> %i.di, %i.dj
  %i.dl = or disjoint <8 x i32> %i.cz, %i.db      ; 2 uses
  %i.dm = icmp samesign ugt <8 x i32> %i.cz, splat (i32 260046847)
  %i.dn = or <8 x i32> %i.dl, splat (i32 2139095040)
  %i.do = add nuw nsw <8 x i32> %i.dl, splat (i32 939524096)
  %predphi = select <8 x i1> %i.dm, <8 x i32> %i.dn, <8 x i32> %i.do
  %predphi15 = select <8 x i1> %i.dc, <8 x i32> %predphi, <8 x i32> %i.dk
  %predphi16 = select <8 x i1> %i.dd, <8 x i32> %i.db, <8 x i32> %predphi15
  %i.dp = bitcast <8 x i32> %predphi16 to <8 x float>
  %i.dq = fmul <8 x float> %i.dp, splat (float 2.550000e+02) ; 2 uses
  %i.dr = fcmp olt <8 x float> %i.dq, zeroinitializer
  %i.ds = select <8 x i1> %i.dr, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01)
  %i.dt = fadd <8 x float> %i.dq, %i.ds           ; 2 uses
  %i.du = fcmp oge <8 x float> %i.dt, zeroinitializer
  %i.dv = select <8 x i1> %i.du, <8 x float> %i.dt, <8 x float> zeroinitializer ; 2 uses
  %i.dw = fcmp ogt <8 x float> %i.dv, splat (float 2.550000e+02)
  %i.dx = select <8 x i1> %i.dw, <8 x float> splat (float 2.550000e+02), <8 x float> %i.dv
  %i.dy = fptoui <8 x float> %i.dx to <8 x i8>
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ct, i64 %index
  store <8 x i8> %i.dy, ptr %i.dz, align 1, !tbaa !172, !alias.scope !3251, !noalias !3250
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !3239

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.j
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.j ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.eb = load i16, ptr %gep.i.i.i, align 2, !tbaa !331 ; 2 uses
  %i.ec = zext i16 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 13
  %i.ee = and i32 %i.ed, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.us.i.i.i = sext i16 %i.eb to i32
  %i.ef = and i32 %.signext.i.i.i.i.i.i.us.i.i.i, -2147483648 ; 3 uses
  %i.eg = icmp samesign ugt i32 %i.ee, 8388607
  br i1 %i.eg, label %bb.g, label %bb.e, !prof !212

bb.e:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i.i.us.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i.i.i.i.us.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eh = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ee, i1 true)
  %i.ei = add nsw i32 %i.eh, -8                   ; 2 uses
  %i.ej = shl i32 %i.ee, %i.ei
  %i.ek = or i32 %i.ef, %i.ej
  %i.el = or i32 %i.ek, 947912704
  %i.em = shl nuw nsw i32 %i.ei, 23
  %i.en = sub nuw i32 %i.el, %i.em
  br label %bb.j

bb.g:                                             ; preds = %scalar.ph
  %i.eo = or disjoint i32 %i.ee, %i.ef            ; 2 uses
  %i.ep = icmp samesign ult i32 %i.ee, 260046848
  br i1 %i.ep, label %bb.i, label %bb.h, !prof !212

bb.h:                                             ; preds = %bb.g
  %i.eq = or i32 %i.eo, 2139095040
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.er = add nuw nsw i32 %i.eo, 939524096
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.us.i.i.i = phi i32 [ %i.er, %bb.i ], [ %i.eq, %bb.h ], [ %i.en, %bb.f ], [ %i.ef, %bb.e ]
  %i.es = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.us.i.i.i to float
  %i.et = fmul float %i.es, 2.550000e+02          ; 2 uses
  %i.eu = fcmp olt float %i.et, 0.000000e+00
  %i.ev = select i1 %i.eu, float -5.000000e-01, float 5.000000e-01
  %i.ew = fadd float %i.et, %i.ev                 ; 2 uses
  %.inv.i.i.i.i.us.i.i.i = fcmp oge float %i.ew, 0.000000e+00
  %.0.i.i.i.i.i.us.i.i.i = select i1 %.inv.i.i.i.i.us.i.i.i, float %i.ew, float 0.000000e+00 ; 2 uses
  %i.ex = fcmp ogt float %.0.i.i.i.i.i.us.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.us.i.i.i = select i1 %i.ex, float 2.550000e+02, float %.0.i.i.i.i.i.us.i.i.i
  %i.ey = fptoui float %.1.i.i.i.i.i.us.i.i.i to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv.i.i.i
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !172
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.us.i.i.i, label %scalar.ph, !llvm.loop !3240

._crit_edge.us.i.i.i:                             ; preds = %bb.j, %middle.block
  %i.fa = load i32, ptr %i.al, align 4, !tbaa !343
  %i.fb = add nsw i32 %i.fa, 1                    ; 7 uses
  store i32 %i.fb, ptr %i.al, align 4, !tbaa !343
  %i.fc = load i32, ptr %i.s, align 8, !tbaa !339
  %i.fd = icmp slt i32 %i.fb, %i.fc
  br i1 %i.fd, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge.us.i.i.i
  %i.fe = load i8, ptr %i.bf, align 1, !tbaa !346, !range !209, !noundef !210
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.l, label %._crit_edge.i8.i.i

._crit_edge.i8.i.i:                               ; preds = %bb.k
  %.pre.i10.i.i = load i32, ptr %i.am, align 8, !tbaa !344
  %.pre35.i.i = load i32, ptr %i.an, align 4, !tbaa !345
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.fg = load i8, ptr %i.bg, align 1, !tbaa !347, !range !209, !noundef !210
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fi = load i64, ptr %i.bi, align 8, !tbaa !348
  %i.fj = load ptr, ptr %i.i, align 8, !tbaa !326
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.fi
  store ptr %i.fk, ptr %i.i, align 8, !tbaa !326
  %i.fl = load i32, ptr %i.bj, align 8, !tbaa !349
  %.not.i.i13.i.i = icmp slt i32 %i.fb, %i.fl
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.n, !prof !212

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.us.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.fm = load i8, ptr %i.bh, align 2, !tbaa !350, !range !209, !noundef !210
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fo = load i64, ptr %i.bi, align 8, !tbaa !348
  %i.fp = load ptr, ptr %i.i, align 8, !tbaa !326
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fo
  store ptr %i.fq, ptr %i.i, align 8, !tbaa !326
  %i.fr = load i32, ptr %i.bj, align 8, !tbaa !349
  %i.fs = icmp slt i32 %i.fb, %i.fr               ; 3 uses
  %i.ft = load i32, ptr %i.bk, align 4
  %i.fu = icmp sge i32 %i.fb, %i.ft
  %not..i.i11.i.i = xor i1 %i.fs, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.fu, !prof !351
  %i.fv = load ptr, ptr %i.h, align 8
  %i.fw = icmp eq ptr %i.fv, null
  %i.fx = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.fw, !prof !351
  br i1 %i.fx, label %bb.q, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, !prof !189

bb.q:                                             ; preds = %bb.p
  %i.fy = load ptr, ptr %2, align 8, !tbaa !324
  %i.fz = load i32, ptr %i.am, align 8, !tbaa !344
  %i.ga = load i32, ptr %i.an, align 4, !tbaa !345
  %i.gb = load i32, ptr %i.j, align 8, !tbaa !327
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !229
  %i.ge = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.gd, i32 noundef %i.fb, i32 noundef %i.fz, i32 noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.k, i1 noundef zeroext %i.fs, i32 noundef %i.gb)
          to label %.noexc15.i.i unwind label %.split16.us.i.i.i

.noexc15.i.i:                                     ; preds = %bb.q
  %i.gf = zext i1 %i.fs to i8
  store ptr %i.ge, ptr %i.i, align 8, !tbaa !326
  store i8 %i.gf, ptr %i.bf, align 1, !tbaa !346
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

bb.r:                                             ; preds = %._crit_edge.us.i.i.i
  %i.gg = load i32, ptr %i.r, align 4, !tbaa !338 ; 3 uses
  store i32 %i.gg, ptr %i.al, align 4, !tbaa !343
  %i.gh = load i32, ptr %i.am, align 8, !tbaa !344
  %i.gi = add nsw i32 %i.gh, 1                    ; 3 uses
  store i32 %i.gi, ptr %i.am, align 8, !tbaa !344
  %i.gj = load i32, ptr %i.u, align 8, !tbaa !341
  %.not.i6.i.i = icmp slt i32 %i.gi, %i.gj
  %.pre36.i.i = load i32, ptr %i.an, align 4, !tbaa !345 ; 2 uses
  br i1 %.not.i6.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gk = load i32, ptr %i.t, align 4, !tbaa !340 ; 2 uses
  store i32 %i.gk, ptr %i.am, align 8, !tbaa !344
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IhN9Imath_3_14halfEEEbRKNS1_8ImageBufES9_S2_S2_PvllliEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation:bb.a
bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val6, i64 80, i1 false), !tbaa.struct !844
  store ptr %i.a, ptr %0, align 8, !tbaa !171
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhN9Imath_3_14halfEEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !171 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhN9Imath_3_14halfEEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 80) #42
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhN9Imath_3_14halfEEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhN9Imath_3_14halfEEEbRKNS2_8ImageBufES8_NS2_3ROIES9_PvllliEUlS9_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IhtEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.604", align 8 ; 51 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !171   ; 9 uses
  %i.a = load <4 x i32>, ptr %1, align 4, !tbaa !83
  %.sroa.023.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !83
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i32>, ptr %.sroa.525.0..sroa_idx.i.i, align 4, !tbaa !83
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.727.0.copyload.i.i = load i32, ptr %.sroa.727.0..sroa_idx.i.i, align 4, !tbaa !83 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.828.0.copyload.i.i = load i32, ptr %.sroa.828.0..sroa_idx.i.i, align 4, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3259 ; 2 uses
  %i.e = sub nsw i32 %.sroa.828.0.copyload.i.i, %.sroa.727.0.copyload.i.i
  %.fr17.i.i.i = freeze i32 %i.e                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.f = load ptr, ptr %.val, align 8, !tbaa !3260, !nonnull !210, !align !429
  store ptr %i.f, ptr %2, align 8, !tbaa !324
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  store ptr null, ptr %i.h, align 8, !tbaa !325
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 12 uses
  store ptr null, ptr %i.i, align 8, !tbaa !326
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store i32 0, ptr %i.g, align 8
  store i32 1, ptr %i.j, align 8, !tbaa !327
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 4 uses
  store i8 0, ptr %i.k, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 0, i1 zeroext poison)
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.023.0.copyload.i.i, -2147483648 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load <2 x i32>, ptr %i.m, align 4
  %i.o = load <4 x i32>, ptr %i.l, align 4
  %i.p = select i1 %.not.i.i.i.i.i, <4 x i32> %i.o, <4 x i32> %i.a ; 3 uses
  %i.q = select i1 %.not.i.i.i.i.i, <2 x i32> %i.n, <2 x i32> %i.b ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  store <2 x i32> %i.q, ptr %i.v, align 4, !tbaa !83
  %i.x = extractelement <4 x i32> %i.p, i64 0
  %i.y = extractelement <4 x i32> %i.p, i64 2
  %i.z = extractelement <2 x i32> %i.q, i64 0
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z)
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !338 ; 3 uses
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !339
  %i.ac = icmp eq i32 %i.aa, %i.ab
  %.pre.i.i.i.i.i = load i32, ptr %i.t, align 4, !tbaa !340 ; 2 uses
  br i1 %i.ac, label %._crit_edge.i.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %.pre15.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !337
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !341
  %i.ae = icmp eq i32 %.pre.i.i.i.i.i, %i.ad
  %.pre16.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !337 ; 2 uses
  %i.af = load i32, ptr %i.v, align 4
  %i.ag = icmp eq i32 %i.af, %.pre16.i.i.i.i.i
  %or.cond.i.i.i = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %i.ah = phi i32 [ %.pre15.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre16.i.i.i.i.i, %bb.b ]
  store i8 0, ptr %i.g, align 8, !tbaa !342
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.aa, ptr %i.ai, align 4, !tbaa !343
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.pre.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !344
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 13 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 11 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.au = icmp sgt i32 %.fr17.i.i.i, 0
  br i1 %i.au, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.be = sext i32 %.sroa.727.0.copyload.i.i to i64 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr17.i.i.i to i64 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %scevgep = getelementptr i8, ptr %i.d, i64 %wide.trip.count.i.i.i
  %i.bo = add nsw i64 %i.be, %wide.trip.count.i.i.i
  %i.bp = shl nsw i64 %i.bo, 1
  %min.iters.check = icmp ult i32 %.fr17.i.i.i, 8
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bq = add nsw i64 %wide.trip.count.i.i.i, -1
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i
  %i.br = load i8, ptr %i.g, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.d, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %.pre.i.i.i = load i32, ptr %i.am, align 8, !tbaa !344
  %.pre21.i.i.i = load i32, ptr %i.al, align 4, !tbaa !343
  %.pre33.i.i = load i32, ptr %i.an, align 4, !tbaa !345
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %i.bt = load i32, ptr %i.al, align 4, !tbaa !343 ; 2 uses
  %i.bu = load i32, ptr %i.r, align 4, !tbaa !338
  %i.bv = icmp eq i32 %i.bt, %i.bu
  %.pre20.i.i.i = load i32, ptr %i.am, align 8, !tbaa !344 ; 2 uses
  %i.bw = load i32, ptr %i.t, align 4
  %i.bx = icmp eq i32 %.pre20.i.i.i, %i.bw
  %or.cond26.i.i.i = select i1 %i.bv, i1 %i.bx, i1 false
  %.pre34.i.i = load i32, ptr %i.an, align 4, !tbaa !345 ; 2 uses
  %i.by = load i32, ptr %i.w, align 8
  %i.bz = icmp eq i32 %.pre34.i.i, %i.by
  %or.cond.i.i = select i1 %or.cond26.i.i.i, i1 %i.bz, i1 false
  br i1 %or.cond.i.i, label %.split.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i: ; preds = %bb.d, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i
  %i.ca = phi i32 [ %.pre33.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre34.i.i, %bb.d ]
  %i.cb = phi i32 [ %.pre21.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %i.bt, %bb.d ]
  %i.cc = phi i32 [ %.pre.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre20.i.i.i, %bb.d ]
  %i.cd = load i32, ptr %i.ap, align 8, !tbaa !3261
  %i.ce = sub nsw i32 %i.ca, %i.cd
  %i.cf = sext i32 %i.ce to i64
  %i.cg = load i64, ptr %i.aq, align 8, !tbaa !3262
  %i.ch = mul nsw i64 %i.cg, %i.cf                ; 2 uses
  %i.ci = load i32, ptr %i.ar, align 8, !tbaa !3263
  %i.cj = sub nsw i32 %i.cc, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = load i64, ptr %i.as, align 8, !tbaa !3264
  %i.cm = mul nsw i64 %i.cl, %i.ck                ; 2 uses
  %i.cn = load i32, ptr %i.ao, align 8, !tbaa !3265
  %i.co = sub nsw i32 %i.cb, %i.cn
  %i.cp = sext i32 %i.co to i64
  %i.cq = load i64, ptr %i.at, align 8, !tbaa !3266
  %i.cr = mul nsw i64 %i.cq, %i.cp                ; 2 uses
  %i.cs = getelementptr i8, ptr %i.d, i64 %i.ch
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cm
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.cr  ; 5 uses
  %.pre22.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !326 ; 2 uses
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %.pre22.i.i.i, i64 %i.be ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i
  %i.cv = getelementptr i8, ptr %scevgep, i64 %i.cr
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cm
  %scevgep11 = getelementptr i8, ptr %i.cw, i64 %i.ch
  %scevgep12 = getelementptr i8, ptr %.pre22.i.i.i, i64 %i.bp
  %bound0 = icmp ult ptr %i.cu, %scevgep12
  %bound1 = icmp ult ptr %invariant.gep.i.i.i, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cx = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cx, align 2, !tbaa !332, !alias.scope !3267
  %i.cy = uitofp <8 x i16> %wide.load to <8 x float>
  %i.cz = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cy, <8 x float> splat (float f0x3B7F00FF), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.da = fcmp ogt <8 x float> %i.cz, splat (float 2.550000e+02)
  %i.db = select <8 x i1> %i.da, <8 x float> splat (float 2.550000e+02), <8 x float> %i.cz
  %i.dc = fptoui <8 x float> %i.db to <8 x i8>
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 %index
  store <8 x i8> %i.dc, ptr %i.dd, align 1, !tbaa !172, !alias.scope !3268, !noalias !3267
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !3256

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.i.i.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.ph
  %i.df = load i16, ptr %gep.i.i.i.prol, align 2, !tbaa !332
  %i.dg = uitofp i16 %i.df to float
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float f0x3B7F00FF, float 5.000000e-01) ; 2 uses
  %i.di = fcmp ogt float %i.dh, 2.550000e+02
  %.1.i.i.i.i.i.us.i.i.i.prol = select i1 %i.di, float 2.550000e+02, float %i.dh
  %i.dj = fptoui float %.1.i.i.i.i.i.us.i.i.i.prol to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv.i.i.i.ph
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !172
  %indvars.iv.next.i.i.i.prol = or disjoint i64 %indvars.iv.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.dl = icmp eq i64 %indvars.iv.i.i.i.ph, %i.bq
  br i1 %i.dl, label %._crit_edge.us.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %gep.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.dm = load i16, ptr %gep.i.i.i, align 2, !tbaa !332
  %i.dn = uitofp i16 %i.dm to float
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dn, float f0x3B7F00FF, float 5.000000e-01) ; 2 uses
  %i.dp = fcmp ogt float %i.do, 2.550000e+02
  %.1.i.i.i.i.i.us.i.i.i = select i1 %i.dp, float 2.550000e+02, float %i.do
  %i.dq = fptoui float %.1.i.i.i.i.i.us.i.i.i to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv.i.i.i
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !172
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %gep.i.i.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ds = load i16, ptr %gep.i.i.i.1, align 2, !tbaa !332
  %i.dt = uitofp i16 %i.ds to float
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float f0x3B7F00FF, float 5.000000e-01) ; 2 uses
  %i.dv = fcmp ogt float %i.du, 2.550000e+02
  %.1.i.i.i.i.i.us.i.i.i.1 = select i1 %i.dv, float 2.550000e+02, float %i.du
  %i.dw = fptoui float %.1.i.i.i.i.i.us.i.i.i.1 to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv.next.i.i.i
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !172
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.us.i.i.i, label %scalar.ph, !llvm.loop !3257

._crit_edge.us.i.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dy = load i32, ptr %i.al, align 4, !tbaa !343
  %i.dz = add nsw i32 %i.dy, 1                    ; 7 uses
  store i32 %i.dz, ptr %i.al, align 4, !tbaa !343
  %i.ea = load i32, ptr %i.s, align 8, !tbaa !339
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.e, label %bb.l

bb.e:                                             ; preds = %._crit_edge.us.i.i.i
  %i.ec = load i8, ptr %i.bf, align 1, !tbaa !346, !range !209, !noundef !210
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.f, label %._crit_edge.i8.i.i

._crit_edge.i8.i.i:                               ; preds = %bb.e
  %.pre.i10.i.i = load i32, ptr %i.am, align 8, !tbaa !344
  %.pre35.i.i = load i32, ptr %i.an, align 4, !tbaa !345
  br label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.ee = load i8, ptr %i.bg, align 1, !tbaa !347, !range !209, !noundef !210
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.eg = load i64, ptr %i.bi, align 8, !tbaa !348
  %i.eh = load ptr, ptr %i.i, align 8, !tbaa !326
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.eg
  store ptr %i.ei, ptr %i.i, align 8, !tbaa !326
  %i.ej = load i32, ptr %i.bj, align 8, !tbaa !349
  %.not.i.i13.i.i = icmp slt i32 %i.dz, %i.ej
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.h, !prof !212

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.us.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.ek = load i8, ptr %i.bh, align 2, !tbaa !350, !range !209, !noundef !210
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.em = load i64, ptr %i.bi, align 8, !tbaa !348
  %i.en = load ptr, ptr %i.i, align 8, !tbaa !326
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.em
  store ptr %i.eo, ptr %i.i, align 8, !tbaa !326
  %i.ep = load i32, ptr %i.bj, align 8, !tbaa !349
  %i.eq = icmp slt i32 %i.dz, %i.ep               ; 3 uses
  %i.er = load i32, ptr %i.bk, align 4
  %i.es = icmp sge i32 %i.dz, %i.er
  %not..i.i11.i.i = xor i1 %i.eq, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.es, !prof !351
  %i.et = load ptr, ptr %i.h, align 8
  %i.eu = icmp eq ptr %i.et, null
  %i.ev = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.eu, !prof !351
  br i1 %i.ev, label %bb.k, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, !prof !189

bb.k:                                             ; preds = %bb.j
  %i.ew = load ptr, ptr %2, align 8, !tbaa !324
  %i.ex = load i32, ptr %i.am, align 8, !tbaa !344
  %i.ey = load i32, ptr %i.an, align 4, !tbaa !345
  %i.ez = load i32, ptr %i.j, align 8, !tbaa !327
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !229
  %i.fc = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.fb, i32 noundef %i.dz, i32 noundef %i.ex, i32 noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.k, i1 noundef zeroext %i.eq, i32 noundef %i.ez)
          to label %.noexc15.i.i unwind label %.split16.us.i.i.i

.noexc15.i.i:                                     ; preds = %bb.k
  %i.fd = zext i1 %i.eq to i8
  store ptr %i.fc, ptr %i.i, align 8, !tbaa !326
  store i8 %i.fd, ptr %i.bf, align 1, !tbaa !346
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

bb.l:                                             ; preds = %._crit_edge.us.i.i.i
  %i.fe = load i32, ptr %i.r, align 4, !tbaa !338 ; 3 uses
  store i32 %i.fe, ptr %i.al, align 4, !tbaa !343
  %i.ff = load i32, ptr %i.am, align 8, !tbaa !344
  %i.fg = add nsw i32 %i.ff, 1                    ; 3 uses
  store i32 %i.fg, ptr %i.am, align 8, !tbaa !344
  %i.fh = load i32, ptr %i.u, align 8, !tbaa !341
  %.not.i6.i.i = icmp slt i32 %i.fg, %i.fh
  %.pre36.i.i = load i32, ptr %i.an, align 4, !tbaa !345 ; 2 uses
  br i1 %.not.i6.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fi = load i32, ptr %i.t, align 4, !tbaa !340 ; 2 uses
  store i32 %i.fi, ptr %i.am, align 8, !tbaa !344
  %i.fj = add nsw i32 %.pre36.i.i, 1              ; 3 uses
  store i32 %i.fj, ptr %i.an, align 4, !tbaa !345
  %i.fk = load i32, ptr %i.w, align 8, !tbaa !337
  %.not1.i7.i.i = icmp slt i32 %i.fj, %i.fk
  br i1 %.not1.i7.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.g, align 8, !tbaa !342
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

bb.o:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i8.i.i
  %i.fl = phi i32 [ %.pre36.i.i, %bb.l ], [ %i.fj, %bb.m ], [ %.pre35.i.i, %._crit_edge.i8.i.i ]
  %i.fm = phi i32 [ %i.fg, %bb.l ], [ %i.fi, %bb.m ], [ %.pre.i10.i.i, %._crit_edge.i8.i.i ]
  %i.fn = phi i32 [ %i.fe, %bb.l ], [ %i.fe, %bb.m ], [ %i.dz, %._crit_edge.i8.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fn, i32 noundef %i.fm, i32 noundef %i.fl)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge: ; preds = %bb.o, %bb.n, %.noexc15.i.i, %bb.j, %bb.i, %bb.h, %bb.g
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

.split16.us.i.i.i:                                ; preds = %bb.o, %bb.k, %bb.h
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i
  %i.fp = phi i32 [ %.pre.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i ], [ %i.aa, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i ] ; 4 uses
  %i.fq = load i8, ptr %i.g, align 8, !tbaa !342, !range !209, !noundef !210
  %i.fr = icmp eq i8 %i.fq, 0
  %.pre.i.i = load i32, ptr %i.al, align 4, !tbaa !343 ; 2 uses
  %i.fs = icmp eq i32 %.pre.i.i, %i.fp
  %or.cond46.i.i = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %or.cond46.i.i, label %bb.p, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIthEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i
  %i.ft = load i32, ptr %i.am, align 8, !tbaa !344
  %i.fu = load i32, ptr %i.t, align 4, !tbaa !340
  %i.fv = icmp eq i32 %i.ft, %i.fu
  br i1 %i.fv, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.p
  %i.fw = load i32, ptr %i.an, align 4, !tbaa !345
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_ItfEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation:bb.a

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val6, i64 80, i1 false), !tbaa.struct !844
  store ptr %i.a, ptr %0, align 8, !tbaa !171
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_ItfEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !171 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_ItfEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 80) #42
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_ItfEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_ItfEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IthEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.625", align 8 ; 51 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !171   ; 9 uses
  %i.a = load <4 x i32>, ptr %1, align 4, !tbaa !83
  %.sroa.023.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !83
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i32>, ptr %.sroa.525.0..sroa_idx.i.i, align 4, !tbaa !83
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.727.0.copyload.i.i = load i32, ptr %.sroa.727.0..sroa_idx.i.i, align 4, !tbaa !83 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.828.0.copyload.i.i = load i32, ptr %.sroa.828.0..sroa_idx.i.i, align 4, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3335 ; 2 uses
  %i.e = sub nsw i32 %.sroa.828.0.copyload.i.i, %.sroa.727.0.copyload.i.i
  %.fr17.i.i.i = freeze i32 %i.e                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.f = load ptr, ptr %.val, align 8, !tbaa !3336, !nonnull !210, !align !429
  store ptr %i.f, ptr %2, align 8, !tbaa !324
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  store ptr null, ptr %i.h, align 8, !tbaa !325
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  store ptr null, ptr %i.i, align 8, !tbaa !326
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store i32 0, ptr %i.g, align 8
  store i32 1, ptr %i.j, align 8, !tbaa !327
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 4 uses
  store i8 0, ptr %i.k, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 0, i1 zeroext poison)
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.023.0.copyload.i.i, -2147483648 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load <2 x i32>, ptr %i.m, align 4
  %i.o = load <4 x i32>, ptr %i.l, align 4
  %i.p = select i1 %.not.i.i.i.i.i, <4 x i32> %i.o, <4 x i32> %i.a ; 3 uses
  %i.q = select i1 %.not.i.i.i.i.i, <2 x i32> %i.n, <2 x i32> %i.b ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  store <2 x i32> %i.q, ptr %i.v, align 4, !tbaa !83
  %i.x = extractelement <4 x i32> %i.p, i64 0
  %i.y = extractelement <4 x i32> %i.p, i64 2
  %i.z = extractelement <2 x i32> %i.q, i64 0
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z)
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !338 ; 3 uses
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !339
  %i.ac = icmp eq i32 %i.aa, %i.ab
  %.pre.i.i.i.i.i = load i32, ptr %i.t, align 4, !tbaa !340 ; 2 uses
  br i1 %i.ac, label %._crit_edge.i.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %.pre15.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !337
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !341
  %i.ae = icmp eq i32 %.pre.i.i.i.i.i, %i.ad
  %.pre16.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !337 ; 2 uses
  %i.af = load i32, ptr %i.v, align 4
  %i.ag = icmp eq i32 %i.af, %.pre16.i.i.i.i.i
  %or.cond.i.i.i = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %i.ah = phi i32 [ %.pre15.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre16.i.i.i.i.i, %bb.b ]
  store i8 0, ptr %i.g, align 8, !tbaa !342
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.aa, ptr %i.ai, align 4, !tbaa !343
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.pre.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !344
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.au = icmp sgt i32 %.fr17.i.i.i, 0
  br i1 %i.au, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.be = sext i32 %.sroa.727.0.copyload.i.i to i64 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr17.i.i.i to i64 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bo = shl nuw nsw i64 %wide.trip.count.i.i.i, 1
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.bo
  %min.iters.check = icmp ult i32 %.fr17.i.i.i, 8
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bp = add nsw i64 %wide.trip.count.i.i.i, -1
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i
  %i.bq = load i8, ptr %i.g, align 8, !tbaa !342, !range !209, !noundef !210
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.d, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %.pre.i.i.i = load i32, ptr %i.am, align 8, !tbaa !344
  %.pre21.i.i.i = load i32, ptr %i.al, align 4, !tbaa !343
  %.pre33.i.i = load i32, ptr %i.an, align 4, !tbaa !345
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %i.bs = load i32, ptr %i.al, align 4, !tbaa !343 ; 2 uses
  %i.bt = load i32, ptr %i.r, align 4, !tbaa !338
  %i.bu = icmp eq i32 %i.bs, %i.bt
  %.pre20.i.i.i = load i32, ptr %i.am, align 8, !tbaa !344 ; 2 uses
  %i.bv = load i32, ptr %i.t, align 4
  %i.bw = icmp eq i32 %.pre20.i.i.i, %i.bv
  %or.cond25.i.i.i = select i1 %i.bu, i1 %i.bw, i1 false
  %.pre34.i.i = load i32, ptr %i.an, align 4, !tbaa !345 ; 2 uses
  %i.bx = load i32, ptr %i.w, align 8
  %i.by = icmp eq i32 %.pre34.i.i, %i.bx
  %or.cond.i.i = select i1 %or.cond25.i.i.i, i1 %i.by, i1 false
  br i1 %or.cond.i.i, label %.split.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i: ; preds = %bb.d, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i
  %i.bz = phi i32 [ %.pre33.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre34.i.i, %bb.d ] ; 5 uses
  %i.ca = phi i32 [ %.pre21.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %i.bs, %bb.d ] ; 2 uses
  %i.cb = phi i32 [ %.pre.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre20.i.i.i, %bb.d ] ; 4 uses
  %i.cc = load i32, ptr %i.ap, align 8, !tbaa !3337
  %i.cd = sub nsw i32 %i.bz, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = load i64, ptr %i.aq, align 8, !tbaa !3338
  %i.cg = mul nsw i64 %i.cf, %i.ce                ; 2 uses
  %i.ch = load i32, ptr %i.ar, align 8, !tbaa !3339
  %i.ci = sub nsw i32 %i.cb, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i64, ptr %i.as, align 8, !tbaa !3340
  %i.cl = mul nsw i64 %i.ck, %i.cj                ; 2 uses
  %i.cm = load i32, ptr %i.ao, align 8, !tbaa !3341
  %i.cn = sub nsw i32 %i.ca, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = load i64, ptr %i.at, align 8, !tbaa !3342
  %i.cq = mul nsw i64 %i.cp, %i.co                ; 2 uses
  %i.cr = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cl
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cq  ; 5 uses
  %i.cu = load ptr, ptr %i.i, align 8, !tbaa !326 ; 4 uses
  %invariant.gep.i.i.i = getelementptr i8, ptr %i.cu, i64 %i.be ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i
  %i.cv = getelementptr i8, ptr %scevgep, i64 %i.cq
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cl
  %scevgep11 = getelementptr i8, ptr %i.cw, i64 %i.cg
  %i.cx = getelementptr i8, ptr %i.cu, i64 %i.be
  %scevgep12 = getelementptr i8, ptr %i.cx, i64 %wide.trip.count.i.i.i
  %bound0 = icmp ult ptr %i.ct, %scevgep12
  %bound1 = icmp ult ptr %invariant.gep.i.i.i, %scevgep11
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cy = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %index
  %wide.load = load <8 x i8>, ptr %i.cy, align 1, !tbaa !172, !alias.scope !3343
  %i.cz = uitofp <8 x i8> %wide.load to <8 x float>
  %i.da = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cz, <8 x float> splat (float 2.570000e+02), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.db = fcmp ogt <8 x float> %i.da, splat (float 6.553500e+04)
  %i.dc = select <8 x i1> %i.db, <8 x float> splat (float 6.553500e+04), <8 x float> %i.da
  %i.dd = fptoui <8 x float> %i.dc to <8 x i16>
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %index
  store <8 x i16> %i.dd, ptr %i.de, align 2, !tbaa !332, !alias.scope !3344, !noalias !3343
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !3332

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.i.i.i.prol = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i.ph
  %i.dg = load i8, ptr %gep.i.i.i.prol, align 1, !tbaa !172
  %i.dh = uitofp i8 %i.dg to float
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float 2.570000e+02, float 5.000000e-01) ; 2 uses
  %i.dj = fcmp ogt float %i.di, 6.553500e+04
  %.1.i.i.i.i.i.us.i.i.i.prol = select i1 %i.dj, float 6.553500e+04, float %i.di
  %i.dk = fptoui float %.1.i.i.i.i.i.us.i.i.i.prol to i16
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i.ph
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !332
  %indvars.iv.next.i.i.i.prol = or disjoint i64 %indvars.iv.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.dm = icmp eq i64 %indvars.iv.i.i.i.ph, %i.bp
  br i1 %i.dm, label %._crit_edge.us.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %gep.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.dn = load i8, ptr %gep.i.i.i, align 1, !tbaa !172
  %i.do = uitofp i8 %i.dn to float
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float 2.570000e+02, float 5.000000e-01) ; 2 uses
  %i.dq = fcmp ogt float %i.dp, 6.553500e+04
  %.1.i.i.i.i.i.us.i.i.i = select i1 %i.dq, float 6.553500e+04, float %i.dp
  %i.dr = fptoui float %.1.i.i.i.i.i.us.i.i.i to i16
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !332
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %gep.i.i.i.1 = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.dt = load i8, ptr %gep.i.i.i.1, align 1, !tbaa !172
  %i.du = uitofp i8 %i.dt to float
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float 2.570000e+02, float 5.000000e-01) ; 2 uses
  %i.dw = fcmp ogt float %i.dv, 6.553500e+04
  %.1.i.i.i.i.i.us.i.i.i.1 = select i1 %i.dw, float 6.553500e+04, float %i.dv
  %i.dx = fptoui float %.1.i.i.i.i.i.us.i.i.i.1 to i16
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.i
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !332
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.us.i.i.i, label %scalar.ph, !llvm.loop !3333

._crit_edge.us.i.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dz = add nsw i32 %i.ca, 1                    ; 7 uses
  store i32 %i.dz, ptr %i.al, align 4, !tbaa !343
  %i.ea = load i32, ptr %i.s, align 8, !tbaa !339
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.e, label %bb.l

bb.e:                                             ; preds = %._crit_edge.us.i.i.i
  %i.ec = load i8, ptr %i.bf, align 1, !tbaa !346, !range !209, !noundef !210
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.f, label %._crit_edge.i8.i.i

bb.f:                                             ; preds = %bb.e
  %i.ee = load i8, ptr %i.bg, align 1, !tbaa !347, !range !209, !noundef !210
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.eg = load i64, ptr %i.bi, align 8, !tbaa !348
  %i.eh = getelementptr inbounds i8, ptr %i.cu, i64 %i.eg
  store ptr %i.eh, ptr %i.i, align 8, !tbaa !326
  %i.ei = load i32, ptr %i.bj, align 8, !tbaa !349
  %.not.i.i13.i.i = icmp slt i32 %i.dz, %i.ei
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.h, !prof !212

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.us.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.ej = load i8, ptr %i.bh, align 2, !tbaa !350, !range !209, !noundef !210
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.el = load i64, ptr %i.bi, align 8, !tbaa !348
  %i.em = getelementptr inbounds i8, ptr %i.cu, i64 %i.el
  store ptr %i.em, ptr %i.i, align 8, !tbaa !326
  %i.en = load i32, ptr %i.bj, align 8, !tbaa !349
  %i.eo = icmp slt i32 %i.dz, %i.en               ; 3 uses
  %i.ep = load i32, ptr %i.bk, align 4
  %i.eq = icmp sge i32 %i.dz, %i.ep
  %not..i.i11.i.i = xor i1 %i.eo, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.eq, !prof !351
  %i.er = load ptr, ptr %i.h, align 8
  %i.es = icmp eq ptr %i.er, null
  %i.et = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.es, !prof !351
  br i1 %i.et, label %bb.k, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, !prof !189

bb.k:                                             ; preds = %bb.j
  %i.eu = load ptr, ptr %2, align 8, !tbaa !324
  %i.ev = load i32, ptr %i.j, align 8, !tbaa !327
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !229
  %i.ey = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.ex, i32 noundef %i.dz, i32 noundef %i.cb, i32 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.k, i1 noundef zeroext %i.eo, i32 noundef %i.ev)
          to label %.noexc15.i.i unwind label %.split16.us.i.i.i

.noexc15.i.i:                                     ; preds = %bb.k
  %i.ez = zext i1 %i.eo to i8
  store ptr %i.ey, ptr %i.i, align 8, !tbaa !326
  store i8 %i.ez, ptr %i.bf, align 1, !tbaa !346
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

bb.l:                                             ; preds = %._crit_edge.us.i.i.i
  %i.fa = load i32, ptr %i.r, align 4, !tbaa !338 ; 3 uses
  store i32 %i.fa, ptr %i.al, align 4, !tbaa !343
  %i.fb = add nsw i32 %i.cb, 1                    ; 3 uses
  store i32 %i.fb, ptr %i.am, align 8, !tbaa !344
  %i.fc = load i32, ptr %i.u, align 8, !tbaa !341
  %.not.i6.i.i = icmp slt i32 %i.fb, %i.fc
  br i1 %.not.i6.i.i, label %._crit_edge.i8.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fd = load i32, ptr %i.t, align 4, !tbaa !340 ; 2 uses
  store i32 %i.fd, ptr %i.am, align 8, !tbaa !344
  %i.fe = add nsw i32 %i.bz, 1                    ; 3 uses
  store i32 %i.fe, ptr %i.an, align 4, !tbaa !345
  %i.ff = load i32, ptr %i.w, align 8, !tbaa !337
  %.not1.i7.i.i = icmp slt i32 %i.fe, %i.ff
  br i1 %.not1.i7.i.i, label %._crit_edge.i8.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.g, align 8, !tbaa !342
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

._crit_edge.i8.i.i:                               ; preds = %bb.m, %bb.l, %bb.e
  %i.fg = phi i32 [ %i.bz, %bb.l ], [ %i.fe, %bb.m ], [ %i.bz, %bb.e ]
  %i.fh = phi i32 [ %i.fb, %bb.l ], [ %i.fd, %bb.m ], [ %i.cb, %bb.e ]
  %i.fi = phi i32 [ %i.fa, %bb.l ], [ %i.fa, %bb.m ], [ %i.dz, %bb.e ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fi, i32 noundef %i.fh, i32 noundef %i.fg)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge: ; preds = %._crit_edge.i8.i.i, %bb.n, %.noexc15.i.i, %bb.j, %bb.i, %bb.h, %bb.g
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

.split16.us.i.i.i:                                ; preds = %._crit_edge.i8.i.i, %bb.k, %bb.h
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i
  %i.fk = phi i32 [ %.pre.i, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i ], [ %i.aa, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i ] ; 4 uses
  %i.fl = load i8, ptr %i.g, align 8, !tbaa !342, !range !209, !noundef !210
  %i.fm = icmp eq i8 %i.fl, 0
  %.pre.i.i = load i32, ptr %i.al, align 4, !tbaa !343 ; 2 uses
  %i.fn = icmp eq i32 %.pre.i.i, %i.fk
  %or.cond44.i.i = select i1 %i.fm, i1 %i.fn, i1 false
  br i1 %or.cond44.i.i, label %bb.o, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i
  %i.fo = load i32, ptr %i.am, align 8, !tbaa !344
  %i.fp = load i32, ptr %i.t, align 4, !tbaa !340
  %i.fq = icmp eq i32 %i.fo, %i.fp
  br i1 %i.fq, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.o
  %i.fr = load i32, ptr %i.an, align 4, !tbaa !345
  %i.fs = load i32, ptr %i.w, align 8, !tbaa !337
  %i.ft = icmp eq i32 %i.fr, %i.fs
  br i1 %i.ft, label %.split.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.o, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhtEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i
  %i.fu = add nsw i32 %.pre.i.i, 1                ; 7 uses
  store i32 %i.fu, ptr %i.al, align 4, !tbaa !343
  %i.fv = load i32, ptr %i.s, align 8, !tbaa !339
  %i.fw = icmp slt i32 %i.fu, %i.fv
  br i1 %i.fw, label %bb.p, label %bb.w

end_hunk_4

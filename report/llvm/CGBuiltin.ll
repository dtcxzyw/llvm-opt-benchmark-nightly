Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGBuiltin?download=true
inline.NumInlined: 8121
inline.NumDeleted: 3091
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL39EmitCheckedUnsignedMultiplySignedResultRN5clang7CodeGen15CodeGenFunctionEPKNS_4ExprEN12_GLOBAL__N_118WidthAndSignednessES5_S7_S5_NS_8QualTypeES7_:bb.a

_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit: ; preds = %_ZN4llvm5APInt17getSignedMaxValueEj.exit, %bb.d
  %.1.i = phi ptr [ %i.as, %bb.d ], [ %i.aq, %_ZN4llvm5APInt17getSignedMaxValueEj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.az, align 8, !tbaa !1050
  %i.ba = and i64 %.sroa.0.0.copyload.i, -16
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !1072
  %i.bd = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bc) #22 ; 2 uses
  %i.be = and i64 %i.bd, 4
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %bb.e, label %_ZNK5clang8QualType19isVolatileQualifiedEv.exit

bb.e:                                             ; preds = %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit
  %i.bf = and i64 %i.bd, -16
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.0.copyload.i.i.i.i.i1.i = load i64, ptr %i.bh, align 8
  %i.bi = and i64 %.0.copyload.i.i.i.i.i1.i, 4
  %i.bj = icmp ne i64 %i.bi, 0
  br label %_ZNK5clang8QualType19isVolatileQualifiedEv.exit

_ZNK5clang8QualType19isVolatileQualifiedEv.exit:  ; preds = %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit, %bb.e
  %i.bk = phi i1 [ true, %_ZN4llvm13IRBuilderBase8CreateOrEPNS_5ValueES2_RKNS_5TwineEb.exit ], [ %i.bj, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @_ZN5clang7CodeGen15CodeGenFunction24EmitPointerWithAlignmentEPKNS_4ExprEPNS0_14LValueBaseInfoEPNS0_14TBAAAccessInfoENS0_14KnownNonNull_tE(ptr dead_on_unwind nonnull writable sret(%"class.clang::CodeGen::Address") align 8 %11, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, i32 noundef 0) #22
  %i.bl = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction12EmitToMemoryEPN4llvm5ValueENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull %i.d, i64 %5) #22
  %.sroa.027.0.copyload = load i64, ptr %11, align 8, !tbaa !1050
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !1046
  %i.bm = and i64 %.sroa.027.0.copyload, -8
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.3.0.copyload, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i16
  %i.bq = sub nsw i16 63, %i.bp
  %.sroa.02.0.insert.ext.i = and i16 %i.bq, 255
  %.sroa.02.0.insert.insert.i = or disjoint i16 %.sroa.02.0.insert.ext.i, 256
  %i.br = call noundef ptr @_ZN4llvm13IRBuilderBase18CreateAlignedStoreEPNS_5ValueES2_NS_10MaybeAlignEb(ptr noundef nonnull align 8 dereferenceable(128) %i.ag, ptr noundef %i.bl, ptr noundef %i.bn, i16 %.sroa.02.0.insert.insert.i, i1 noundef zeroext %i.bk) ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bt, align 8, !alias.scope !2737
  %i.bu = load i8, ptr %i.bs, align 8, !alias.scope !2737
  %i.bv = and i8 %i.bu, -8
  store ptr %.1.i, ptr %0, align 8, !tbaa !1050, !alias.scope !2737
  store i8 %i.bv, ptr %i.bs, align 8, !alias.scope !2737
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.bw = load i32, ptr %i.e, align 8, !tbaa !1098
  %i.bx = icmp ugt i32 %i.bw, 64
  br i1 %i.bx, label %bb.f, label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %_ZNK5clang8QualType19isVolatileQualifiedEv.exit
  %i.by = load ptr, ptr %8, align 8, !tbaa !1050  ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN4llvm5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.by) #25
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK5clang8QualType19isVolatileQualifiedEv.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i64 0, 8589934592) i64 @_ZL23EncompassingIntegerTypeN4llvm8ArrayRefIN12_GLOBAL__N_118WidthAndSignednessEEE(ptr nofree readonly captures(address) %0, i64 %1) unnamed_addr #10 {
bb.a:
  %.idx = shl i64 %1, 3                           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %.not32 = icmp eq i64 %1, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add i64 %.idx, -8                        ; 2 uses
  %i.c = lshr exact i64 %i.b, 3
  %i.d = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.b, 24
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, 4611686018427387900
  br label %.lr.ph

.lr.ph38.unr-lcssa:                               ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph38, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph38.unr-lcssa, %.lr.ph.preheader
  %.02234.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cp, %.lr.ph38.unr-lcssa ]
  %.02333.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.cq, %.lr.ph38.unr-lcssa ]
  %lcmp.mod85 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod85)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.02234.epil = phi i1 [ %i.j, %.lr.ph.epil ], [ %.02234.epil.init, %.lr.ph.epil.preheader ]
  %.02333.epil = phi ptr [ %i.k, %.lr.ph.epil ], [ %.02333.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.02333.epil, i64 4
  %i.g = load i8, ptr %i.f, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.h = zext i1 %.02234.epil to i8
  %i.i = or i8 %i.g, %i.h
  %i.j = icmp ne i8 %i.i, 0                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02333.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph38, label %.lr.ph.epil, !llvm.loop !2738

.lr.ph38:                                         ; preds = %.lr.ph.epil, %.lr.ph38.unr-lcssa
  %.lcssa83 = phi i1 [ %i.cp, %.lr.ph38.unr-lcssa ], [ %i.j, %.lr.ph.epil ]
  %i.l = add i64 %.idx, -8                        ; 3 uses
  %min.iters.check53 = icmp ult i64 %i.l, 64      ; 2 uses
  br i1 %.lcssa83, label %.lr.ph38.split.us.preheader, label %.lr.ph38.split.preheader

.lr.ph38.split.preheader:                         ; preds = %.lr.ph38
  br i1 %min.iters.check53, label %.lr.ph38.split.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph38.split.preheader
  %i.m = lshr exact i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = and i64 %i.n, 7                          ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 8, i64 %i.o
  %n.vec = sub nsw i64 %i.n, %i.q                 ; 2 uses
  %i.r = shl i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi48 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.t = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.t
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %next.gep49 = getelementptr i8, ptr %i.u, i64 32
  %wide.vec = load <8 x i32>, ptr %next.gep, align 4, !tbaa !2745
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec50 = load <8 x i32>, ptr %next.gep49, align 4, !tbaa !2745
  %strided.vec51 = shufflevector <8 x i32> %wide.vec50, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.v = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %strided.vec) ; 2 uses
  %i.w = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi48, <4 x i32> %strided.vec51) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !2739

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.v, <4 x i32> %i.w)
  %i.y = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax)
  br label %.lr.ph38.split.preheader79

.lr.ph38.split.preheader79:                       ; preds = %.lr.ph38.split.preheader, %middle.block
  %.037.ph = phi ptr [ %0, %.lr.ph38.split.preheader ], [ %i.s, %middle.block ]
  %.02136.ph = phi i32 [ 0, %.lr.ph38.split.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph38.split

.lr.ph38.split.us.preheader:                      ; preds = %.lr.ph38
  br i1 %min.iters.check53, label %.lr.ph38.split.us.preheader77, label %vector.ph54

vector.ph54:                                      ; preds = %.lr.ph38.split.us.preheader
  %i.z = lshr exact i64 %i.l, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %i.ab = and i64 %i.aa, 7                        ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 8, i64 %i.ab
  %n.vec55 = sub nsw i64 %i.aa, %i.ad             ; 2 uses
  %i.ae = shl i64 %n.vec55, 3
  %i.af = getelementptr i8, ptr %0, i64 %i.ae
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph54
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next72, %vector.body56 ] ; 2 uses
  %vec.phi58 = phi <4 x i32> [ zeroinitializer, %vector.ph54 ], [ %i.br, %vector.body56 ]
  %vec.phi59 = phi <4 x i32> [ zeroinitializer, %vector.ph54 ], [ %i.bs, %vector.body56 ]
  %i.ag = shl i64 %index57, 3                     ; 8 uses
  %next.gep60 = getelementptr i8, ptr %0, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 %i.ag
  %i.ai = getelementptr i8, ptr %0, i64 %i.ag
  %i.aj = getelementptr i8, ptr %0, i64 %i.ag
  %i.ak = getelementptr i8, ptr %0, i64 %i.ag     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ak, i64 32
  %i.al = getelementptr i8, ptr %0, i64 %i.ag
  %i.am = getelementptr i8, ptr %0, i64 %i.ag
  %i.an = getelementptr i8, ptr %0, i64 %i.ag
  %wide.vec68 = load <8 x i32>, ptr %next.gep60, align 4, !tbaa !2745
  %strided.vec69 = shufflevector <8 x i32> %wide.vec68, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec70 = load <8 x i32>, ptr %next.gep64, align 4, !tbaa !2745
  %strided.vec71 = shufflevector <8 x i32> %wide.vec70, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ao = getelementptr i8, ptr %i.ah, i64 12
  %i.ap = getelementptr i8, ptr %i.ai, i64 20
  %i.aq = getelementptr i8, ptr %i.aj, i64 28
  %i.ar = getelementptr i8, ptr %i.ak, i64 36
  %i.as = getelementptr i8, ptr %i.al, i64 44
  %i.at = getelementptr i8, ptr %i.am, i64 52
  %i.au = getelementptr i8, ptr %i.an, i64 60
  %i.av = load <16 x i8>, ptr %next.gep60, align 4
  %i.aw = shufflevector <16 x i8> %i.av, <16 x i8> poison, <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>
  %i.ax = load i8, ptr %i.ao, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.ay = load i8, ptr %i.ap, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.az = load i8, ptr %i.aq, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.ba = insertelement <4 x i8> %i.aw, i8 %i.ax, i64 1
  %i.bb = insertelement <4 x i8> %i.ba, i8 %i.ay, i64 2
  %i.bc = insertelement <4 x i8> %i.bb, i8 %i.az, i64 3
  %i.bd = load i8, ptr %i.ar, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.be = load i8, ptr %i.as, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.bf = load i8, ptr %i.at, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.bg = load i8, ptr %i.au, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.bh = insertelement <4 x i8> poison, i8 %i.bd, i64 0
  %i.bi = insertelement <4 x i8> %i.bh, i8 %i.be, i64 1
  %i.bj = insertelement <4 x i8> %i.bi, i8 %i.bf, i64 2
  %i.bk = insertelement <4 x i8> %i.bj, i8 %i.bg, i64 3
  %i.bl = xor <4 x i8> %i.bc, splat (i8 1)
  %i.bm = xor <4 x i8> %i.bk, splat (i8 1)
  %i.bn = zext nneg <4 x i8> %i.bl to <4 x i32>
  %i.bo = zext nneg <4 x i8> %i.bm to <4 x i32>
  %i.bp = add <4 x i32> %strided.vec69, %i.bn
  %i.bq = add <4 x i32> %strided.vec71, %i.bo
  %i.br = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi58, <4 x i32> %i.bp) ; 2 uses
  %i.bs = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi59, <4 x i32> %i.bq) ; 2 uses
  %index.next72 = add nuw i64 %index57, 8         ; 2 uses
  %i.bt = icmp eq i64 %index.next72, %n.vec55
  br i1 %i.bt, label %middle.block73, label %vector.body56, !llvm.loop !2740

middle.block73:                                   ; preds = %vector.body56
  %rdx.minmax74 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.br, <4 x i32> %i.bs)
  %i.bu = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax74)
  br label %.lr.ph38.split.us.preheader77

.lr.ph38.split.us.preheader77:                    ; preds = %.lr.ph38.split.us.preheader, %middle.block73
  %.037.us.ph = phi ptr [ %0, %.lr.ph38.split.us.preheader ], [ %i.af, %middle.block73 ]
  %.02136.us.ph = phi i32 [ 0, %.lr.ph38.split.us.preheader ], [ %i.bu, %middle.block73 ]
  br label %.lr.ph38.split.us

.lr.ph38.split.us:                                ; preds = %.lr.ph38.split.us.preheader77, %.lr.ph38.split.us
  %.037.us = phi ptr [ %i.cb, %.lr.ph38.split.us ], [ %.037.us.ph, %.lr.ph38.split.us.preheader77 ] ; 3 uses
  %.02136.us = phi i32 [ %spec.select.us, %.lr.ph38.split.us ], [ %.02136.us.ph, %.lr.ph38.split.us.preheader77 ]
  %i.bv = load i32, ptr %.037.us, align 4, !tbaa !2745
  %i.bw = getelementptr inbounds nuw i8, ptr %.037.us, i64 4
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.by = xor i8 %i.bx, 1
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = add i32 %i.bv, %i.bz
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %.02136.us, i32 %i.ca) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.037.us, i64 8 ; 2 uses
  %.not25.us = icmp eq ptr %i.cb, %i.a
  br i1 %.not25.us, label %._crit_edge, label %.lr.ph38.split.us, !llvm.loop !2741

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02234 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cp, %.lr.ph ]
  %.02333 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.cq, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.02333, i64 4
  %i.cd = load i8, ptr %i.cc, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.ce = zext i1 %.02234 to i8
  %i.cf = or i8 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.02333, i64 12
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.ci = or i8 %i.ch, %i.cf
  %i.cj = getelementptr inbounds nuw i8, ptr %.02333, i64 20
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.cl = or i8 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %.02333, i64 28
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !2744, !range !1068, !noundef !274
  %i.co = or i8 %i.cn, %i.cl
  %i.cp = icmp ne i8 %i.co, 0                     ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02333, i64 32 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph38.unr-lcssa, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38.split, %.lr.ph38.split.us, %bb.a
  %.021.lcssa45 = phi i32 [ 0, %bb.a ], [ %spec.select.us, %.lr.ph38.split.us ], [ %spec.select, %.lr.ph38.split ]
  %i.cr = phi i64 [ 0, %bb.a ], [ 4294967296, %.lr.ph38.split.us ], [ 0, %.lr.ph38.split ]
  %.sroa.0.0.insert.ext = zext i32 %.021.lcssa45 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.cr, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph38.split:                                   ; preds = %.lr.ph38.split.preheader79, %.lr.ph38.split
  %.037 = phi ptr [ %i.ct, %.lr.ph38.split ], [ %.037.ph, %.lr.ph38.split.preheader79 ] ; 2 uses
  %.02136 = phi i32 [ %spec.select, %.lr.ph38.split ], [ %.02136.ph, %.lr.ph38.split.preheader79 ]
  %i.cs = load i32, ptr %.037, align 4, !tbaa !2745
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.02136, i32 %i.cs) ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.037, i64 8 ; 2 uses
  %.not25 = icmp eq ptr %i.ct, %i.a
  br i1 %.not25, label %._crit_edge, label %.lr.ph38.split, !llvm.loop !2742
}

declare void @_ZN5clang7CodeGen15CodeGenFunction10EmitLValueEPKNS_4ExprENS0_14KnownNonNull_tE(ptr dead_on_unwind writable sret(%"class.clang::CodeGen::LValue") align 8, ptr noundef nonnull align 8 dereferenceable(6288), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK5clang7CodeGen6LValue10getPointerERNS0_15CodeGenFunctionE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(6288)) local_unnamed_addr #3

declare noundef ptr @_ZN5clang7CodeGen13CodeGenModule16GetFunctionStartEPKNS_9ValueDeclE(ptr noundef nonnull align 8 dereferenceable(4008), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK5clang4Expr27getAsBuiltinConstantDeclRefERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #3

declare void @_ZN5clang7CodeGen15CodeGenFunction24EmitBuiltinNewDeleteCallEPKNS_17FunctionProtoTypeEPKNS_8CallExprEb(ptr dead_on_unwind writable sret(%"class.clang::CodeGen::RValue") align 8, ptr noundef nonnull align 8 dereferenceable(6288), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen15CodeGenFunction20EmitBuiltinIsAlignedEPKNS_8CallExprE(ptr dead_on_unwind noalias nofree writable sret(%"class.clang::CodeGen::RValue") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"struct.(anonymous namespace)::BuiltinAlignArgs", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call fastcc void @_ZN12_GLOBAL__N_116BuiltinAlignArgsC2EPKN5clang8CallExprERNS1_7CodeGen15CodeGenFunctionE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(6288) %1)
  %i.a = load ptr, ptr %4, align 8, !tbaa !1344   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1345
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 255
  %i.g = icmp eq i32 %i.f, 15
  br i1 %i.g, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1346 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !1103
  store ptr @.str.173, ptr %5, align 8, !tbaa !1050
  store i8 3, ptr %i.k, align 8, !tbaa !1104
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1054 ; 4 uses
  %i.o = icmp eq ptr %i.n, %i.j
  br i1 %i.o, label %_ZN4llvm13IRBuilderBase22CreateBitOrPointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8              ; 3 uses
  %i.r = and i32 %i.q, 254
  %spec.select.i.i.i.i = icmp eq i32 %i.r, 18     ; 2 uses
  br i1 %spec.select.i.i.i.i, label %bb.d, label %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1065
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i

_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i:      ; preds = %bb.d, %bb.c
  %i.v = phi i32 [ %.pre.i.i, %bb.d ], [ %i.q, %bb.c ]
  %i.w = and i32 %i.v, 255
  %i.x = icmp eq i32 %i.w, 15
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load i32, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i32 %i.z, 254
  %spec.select.i.i.i19.i = icmp eq i32 %i.aa, 18
  br i1 %spec.select.i.i.i19.i, label %bb.f, label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1065
  %.phi.trans.insert.i20.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.pre.i21.i = load i32, ptr %.phi.trans.insert.i20.i, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i

_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i:      ; preds = %bb.f, %bb.e
  %i.ae = phi i32 [ %.pre.i21.i, %bb.f ], [ %i.z, %bb.e ]
  %i.af = and i32 %i.ae, 255
  %i.ag = icmp eq i32 %i.af, 12
  br i1 %i.ag, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i, %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i
  br i1 %spec.select.i.i.i.i, label %bb.h, label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit25.i

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1120
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1065
  %.phi.trans.insert.i23.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.pre.i24.i = load i32, ptr %.phi.trans.insert.i23.i, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit25.i

_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit25.i:    ; preds = %bb.h, %bb.g
  %i.ak = phi i32 [ %.pre.i24.i, %bb.h ], [ %i.q, %bb.g ]
  %i.al = and i32 %i.ak, 255
  %i.am = icmp eq i32 %i.al, 12
  br i1 %i.am, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit25.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ao = load i32, ptr %i.an, align 8            ; 2 uses
  %i.ap = and i32 %i.ao, 254
  %spec.select.i.i.i26.i = icmp eq i32 %i.ap, 18
  br i1 %spec.select.i.i.i26.i, label %bb.j, label %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit29.i

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1065
  %.phi.trans.insert.i27.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.pre.i28.i = load i32, ptr %.phi.trans.insert.i27.i, align 8
  br label %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit29.i

_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit29.i:    ; preds = %bb.j, %bb.i
  %i.at = phi i32 [ %.pre.i28.i, %bb.j ], [ %i.ao, %bb.i ]
end_hunk_0

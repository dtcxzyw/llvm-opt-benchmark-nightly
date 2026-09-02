Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/type_checker?download=true
inline.NumInlined: 2044
inline.NumDeleted: 550
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4lean12type_checker15reduce_recursorERKNS_4exprEbb:bb.a
_ZN4lean9some_exprERKNS_4exprE.exit:              ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #17, !inline_history !175
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17, !noalias !222
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w, %bb.v
  %.pn.pn.i = phi { ptr, i32 } [ %i.bf, %bb.w ], [ %i.be, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #17, !noalias !222
  br label %bb.aj

bb.ad:                                            ; preds = %bb.o, %_ZN4lean9some_exprERKNS_4exprE.exit
  %i.bn = phi i1 [ false, %bb.o ], [ true, %_ZN4lean9some_exprERKNS_4exprE.exit ]
  %i.bo = load ptr, ptr %31, align 8, !tbaa !16   ; 4 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = and i64 %i.bp, 1
  %.not.i.i.i14 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i14, label %bb.ae, label %_ZN4lean10object_refD2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.br = load i32, ptr %i.bo, align 4, !tbaa !18 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !19

bb.af:                                            ; preds = %bb.ae
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %i.bo, align 4, !tbaa !18
  br label %_ZN4lean10object_refD2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i.i.i15 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i.i15, label %_ZN4lean10object_refD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bo)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #19
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.ad, %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17, !noalias !222
  %.pre = load i64, ptr %i.x, align 8, !tbaa !78
  br label %bb.al

bb.aj:                                            ; preds = %bb.ac, %bb.q
  %.pn29.i = phi { ptr, i32 } [ %i.aq, %bb.q ], [ %.pn.pn.i, %bb.ac ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #17, !inline_history !175
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.p
  %.pn29.pn.i = phi { ptr, i32 } [ %.pn29.i, %bb.aj ], [ %i.ap, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17, !noalias !222
  br label %bb.as

bb.al:                                            ; preds = %bb.g, %_ZN4lean10object_refD2Ev.exit
  %i.bw = phi i1 [ false, %bb.g ], [ %i.bn, %_ZN4lean10object_refD2Ev.exit ]
  %i.bx = phi i64 [ %i.aa, %bb.g ], [ %.pre, %_ZN4lean10object_refD2Ev.exit ] ; 2 uses
  %i.by = load ptr, ptr %30, align 8, !tbaa !77   ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.bx, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i.i.i
  %.not4.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not4.i.i.i.i, label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ci, %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i ], [ %i.by, %bb.al ] ; 2 uses
  %i.ca = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !16 ; 4 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = and i64 %i.cb, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.am, label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !18 ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %bb.an, label %bb.ao, !prof !19

bb.an:                                            ; preds = %bb.am
  %i.cf = add nsw i32 %i.cd, -1
  store i32 %i.cf, ptr %i.ca, align 4, !tbaa !18
  br label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ca)
          to label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #19
  unreachable

_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i: ; preds = %bb.ap, %bb.ao, %bb.an, %.lr.ph.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.ci, %i.bz
  br i1 %.not.i.i.i.i13, label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i
  %.pre.i.i = load ptr, ptr %30, align 8, !tbaa !77
  br label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i

_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i: ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i, %bb.al
  %i.cj = phi ptr [ %.pre.i.i, %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.by, %bb.al ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cj, %i.w
  br i1 %.not.i.i.i, label %"_ZN4lean15quot_reduce_recIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_0EENS_8optionalIS2_EES4_RKT_.exit", label %bb.ar

bb.ar:                                            ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i
  %i.ck = load i64, ptr %i.y, align 8, !tbaa !79
  %i.cl = shl i64 %i.ck, 3
  call void @_ZdaPvm(ptr noundef %i.cj, i64 noundef %i.cl) #17
  br label %"_ZN4lean15quot_reduce_recIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_0EENS_8optionalIS2_EES4_RKT_.exit"

common.resume:                                    ; preds = %bb.kl, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %.pn32.i, %bb.as ], [ %.pn58.pn.pn.i, %bb.kl ]
  resume { ptr, i32 } %common.resume.op

bb.as:                                            ; preds = %bb.ak, %bb.h
  %.pn32.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn29.pn.i, %bb.ak ]
  call void @_ZN4lean6bufferINS_4exprELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %30) #17, !inline_history !175
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17, !noalias !222
  br label %common.resume

"_ZN4lean15quot_reduce_recIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_0EENS_8optionalIS2_EES4_RKT_.exit": ; preds = %bb.ar, %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17, !noalias !222
  br i1 %i.bw, label %bb.kt, label %"_ZN4lean15quot_reduce_recIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_0EENS_8optionalIS2_EES4_RKT_.exit.thread"

"_ZN4lean15quot_reduce_recIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_0EENS_8optionalIS2_EES4_RKT_.exit.thread.sink.split": ; preds = %bb.d, %bb.b
  store i8 0, ptr %0, align 8, !tbaa !54
  br label %"_ZN4lean15quot_reduce_recIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_0EENS_8optionalIS2_EES4_RKT_.exit.thread"

"_ZN4lean15quot_reduce_recIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_0EENS_8optionalIS2_EES4_RKT_.exit.thread": ; preds = %"_ZN4lean15quot_reduce_recIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_0EENS_8optionalIS2_EES4_RKT_.exit.thread.sink.split", %"_ZN4lean15quot_reduce_recIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_0EENS_8optionalIS2_EES4_RKT_.exit", %bb.a
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !45  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17
  store ptr %i.a, ptr %34, align 8, !tbaa !226
  %i.cn = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %1, ptr %i.cn, align 8, !tbaa !94
  %i.co = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %i.b, ptr %i.co, align 8, !tbaa !226
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean10get_app_fnERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !227, !inline_history !185 ; 4 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !16, !noalias !227
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %.val.i.i.i.i.i100 = load i32, ptr %i.cr, align 4, !noalias !227
  %.mask.i.i101 = and i32 %.val.i.i.i.i.i100, -16777216
  %i.cs = icmp eq i32 %.mask.i.i101, 67108864
  br i1 %i.cs, label %bb.au, label %bb.at

bb.at:                                            ; preds = %"_ZN4lean15quot_reduce_recIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_0EENS_8optionalIS2_EES4_RKT_.exit.thread"
  store i8 0, ptr %0, align 8, !tbaa !54, !alias.scope !228
  br label %"_ZN4lean20inductive_reduce_recIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_1ZNS1_15reduce_recursorES4_bbE3$_2ZNS1_15reduce_recursorES4_bbE3$_3EENS_8optionalIS2_EERKNS_11environmentES4_RKT_RKT0_RKT1_.exit"

bb.au:                                            ; preds = %"_ZN4lean15quot_reduce_recIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_0EENS_8optionalIS2_EES4_RKT_.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17, !noalias !227
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !16, !noalias !227
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @_ZNK4lean11environment4findERKNS_4nameE(ptr dead_on_unwind nonnull writable sret(%"class.lean::optional.48") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.cu), !noalias !227, !inline_history !185
  %i.cv = load i8, ptr %16, align 8, !tbaa !96, !range !55, !noalias !227, !noundef !56 ; 2 uses
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !16, !noalias !227
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  %.val.i.i.i98 = load i32, ptr %i.cz, align 4, !noalias !227
  %.mask.i99 = and i32 %.val.i.i.i98, -16777216
  %i.da = icmp eq i32 %.mask.i99, 117440512
  br i1 %i.da, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  store i8 0, ptr %0, align 8, !tbaa !54, !alias.scope !229
  br label %bb.km

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17, !noalias !227
  %i.db = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  store ptr %i.db, ptr %17, align 8, !tbaa !77, !noalias !227
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 0, ptr %i.dc, align 8, !tbaa !78, !noalias !227
  %i.dd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store i64 16, ptr %i.dd, align 8, !tbaa !79, !noalias !227
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean12get_app_argsERKNS_4exprERNS_6bufferIS0_Lm16EEE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(152) %17)
          to label %bb.ay unwind label %bb.ba, !noalias !227, !inline_history !185 ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.df = load ptr, ptr %i.cx, align 8, !tbaa !16, !noalias !227
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 8 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !16, !noalias !227
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load <4 x ptr>, ptr %i.di, align 8, !tbaa !16, !noalias !227
  %i.dk = ptrtoint <4 x ptr> %i.dj to <4 x i64>
  %i.dl = lshr <4 x i64> %i.dk, splat (i64 1)
  %i.dm = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.dl) ; 3 uses
  %35 = trunc i64 %i.dm to i32
  %i.dn = and i64 %i.dm, 4294967295               ; 3 uses
  %i.do = load i64, ptr %i.dc, align 8, !tbaa !78 ; 2 uses
  %.not.i8 = icmp ugt i64 %i.do, %i.dn
  br i1 %.not.i8, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i8 0, ptr %0, align 8, !tbaa !54, !alias.scope !230
  br label %bb.ke

bb.ba:                                            ; preds = %bb.ax
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kl

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17, !noalias !227
  %i.dq = load ptr, ptr %17, align 8, !tbaa !77, !noalias !227
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dn
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !16, !noalias !227 ; 5 uses
  store ptr %i.ds, ptr %18, align 8, !tbaa !16, !noalias !227
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = and i64 %i.dt, 1
  %.not.i.i.i.i95 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i95, label %bb.bc, label %_ZN4lean4exprC2ERKS0_.exit

bb.bc:                                            ; preds = %bb.bb
  %.val.i.i.i.i.i96 = load i32, ptr %i.ds, align 4, !tbaa !18, !noalias !227 ; 3 uses
  %i.dv = icmp sgt i32 %.val.i.i.i.i.i96, 0
  br i1 %i.dv, label %bb.bd, label %bb.be, !prof !19

bb.bd:                                            ; preds = %bb.bc
  %i.dw = add nuw i32 %.val.i.i.i.i.i96, 1
  store i32 %i.dw, ptr %i.ds, align 4, !tbaa !18, !noalias !227
  br label %_ZN4lean4exprC2ERKS0_.exit

bb.be:                                            ; preds = %bb.bc
  %.not.i.i.i.i.i97 = icmp eq i32 %.val.i.i.i.i.i96, 0
  br i1 %.not.i.i.i.i.i97, label %_ZN4lean4exprC2ERKS0_.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dx = atomicrmw sub ptr %i.ds, i32 1 monotonic, align 4, !noalias !227 ; 0 uses
  br label %_ZN4lean4exprC2ERKS0_.exit

_ZN4lean4exprC2ERKS0_.exit:                       ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb
  %i.dy = invoke noundef zeroext i1 @_ZNK4lean12recursor_val4is_kEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %bb.bg unwind label %bb.eq, !noalias !227, !inline_history !185

bb.bg:                                            ; preds = %_ZN4lean4exprC2ERKS0_.exit
  br i1 %i.dy, label %bb.bh, label %bb.es

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17, !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17, !noalias !231
  invoke void @_ZN4lean12type_checker15infer_type_coreERKNS_4exprEb(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %18, i1 noundef zeroext true)
          to label %.noexc94 unwind label %bb.er, !inline_history !194

.noexc94:                                         ; preds = %bb.bh
  %i.dz = load i8, ptr %i.a, align 1, !tbaa !87, !range !55, !noalias !232, !noundef !56
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.noexc94
  %i.eb = load i8, ptr %i.b, align 1, !tbaa !87, !range !55, !noalias !232, !noundef !56
  %i.ec = trunc nuw i8 %i.eb to i1
  invoke void @_ZN4lean12type_checker9whnf_coreERKNS_4exprEbb(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i1 noundef zeroext true, i1 noundef zeroext %i.ec)
          to label %"_ZZN4lean12type_checker15reduce_recursorERKNS_4exprEbbENK3$_1clES3_.exit.i" unwind label %bb.bx, !noalias !231, !inline_history !197

bb.bj:                                            ; preds = %.noexc94
  invoke void @_ZN4lean12type_checker4whnfERKNS_4exprE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %"_ZZN4lean12type_checker15reduce_recursorERKNS_4exprEbbENK3$_1clES3_.exit.i" unwind label %bb.bx, !noalias !231, !inline_history !197

"_ZZN4lean12type_checker15reduce_recursorERKNS_4exprEbbENK3$_1clES3_.exit.i": ; preds = %bb.bj, %bb.bi
  %i.ed = load ptr, ptr %12, align 8, !tbaa !16, !noalias !231 ; 4 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i.i.i.i85 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i.i85, label %bb.bk, label %_ZN4lean10object_refD2Ev.exit.i

bb.bk:                                            ; preds = %"_ZZN4lean12type_checker15reduce_recursorERKNS_4exprEbbENK3$_1clES3_.exit.i"
  %i.eg = load i32, ptr %i.ed, align 4, !tbaa !18, !noalias !231 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %bb.bl, label %bb.bm, !prof !19

bb.bl:                                            ; preds = %bb.bk
  %i.ei = add nsw i32 %i.eg, -1
  store i32 %i.ei, ptr %i.ed, align 4, !tbaa !18, !noalias !231
  br label %_ZN4lean10object_refD2Ev.exit.i

bb.bm:                                            ; preds = %bb.bk
  %.not.i.i.i.i.i93 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i.i.i93, label %_ZN4lean10object_refD2Ev.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ed)
          to label %_ZN4lean10object_refD2Ev.exit.i unwind label %bb.bo, !noalias !231, !inline_history !198

bb.bo:                                            ; preds = %bb.bn
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #19, !noalias !231, !inline_history !198
  unreachable

_ZN4lean10object_refD2Ev.exit.i:                  ; preds = %bb.bn, %bb.bm, %bb.bl, %"_ZZN4lean12type_checker15reduce_recursorERKNS_4exprEbbENK3$_1clES3_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17, !noalias !231
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean10get_app_fnERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bp unwind label %bb.by, !noalias !231, !inline_history !198

bb.bp:                                            ; preds = %_ZN4lean10object_refD2Ev.exit.i
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !16, !noalias !231 ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 4
  %.val.i.i.i.i.i.i = load i32, ptr %i.en, align 4, !noalias !231
  %.mask.i.i.i = and i32 %.val.i.i.i.i.i.i, -16777216
  %i.eo = icmp eq i32 %.mask.i.i.i, 67108864
  br i1 %i.eo, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4lean12recursor_val16get_major_inductEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %bb.br unwind label %bb.by, !noalias !231, !inline_history !198

bb.br:                                            ; preds = %bb.bq
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !16, !noalias !231
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !16, !noalias !231
  %i.et = invoke zeroext i8 @lean_name_eq(ptr noundef %i.er, ptr noundef %i.es)
          to label %_ZN4leanneERKNS_4nameES2_.exit.i unwind label %bb.by, !noalias !231, !inline_history !198

_ZN4leanneERKNS_4nameES2_.exit.i:                 ; preds = %bb.br
  %.not.i.i = icmp eq i8 %i.et, 0
  br i1 %.not.i.i, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %_ZN4leanneERKNS_4nameES2_.exit.i, %bb.bp
  %i.eu = load ptr, ptr %18, align 8, !tbaa !16, !noalias !231 ; 8 uses
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = and i64 %i.ev, 1
  %.not.i.i.i.i41.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i.i.i41.i, label %bb.bt, label %_ZN4lean4exprC2ERKS0_.exit.i

bb.bt:                                            ; preds = %bb.bs
  %.val.i.i.i.i.i42.i = load i32, ptr %i.eu, align 4, !tbaa !18, !noalias !231 ; 3 uses
  %i.ex = icmp sgt i32 %.val.i.i.i.i.i42.i, 0
  br i1 %i.ex, label %bb.bu, label %bb.bv, !prof !19

bb.bu:                                            ; preds = %bb.bt
  %i.ey = add nuw i32 %.val.i.i.i.i.i42.i, 1
  store i32 %i.ey, ptr %i.eu, align 4, !tbaa !18, !noalias !231
  br label %_ZN4lean4exprC2ERKS0_.exit.i

bb.bv:                                            ; preds = %bb.bt
  %.not.i.i.i.i.i.i86 = icmp eq i32 %.val.i.i.i.i.i42.i, 0
  br i1 %.not.i.i.i.i.i.i86, label %_ZN4lean4exprC2ERKS0_.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ez = atomicrmw sub ptr %i.eu, i32 1 monotonic, align 4, !noalias !231 ; 0 uses
  br label %_ZN4lean4exprC2ERKS0_.exit.i

bb.bx:                                            ; preds = %bb.bj, %bb.bi
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #17, !noalias !231, !inline_history !198
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17, !noalias !231
  br label %bb.ej

bb.by:                                            ; preds = %bb.br, %bb.bq, %_ZN4lean10object_refD2Ev.exit.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.bz:                                            ; preds = %_ZN4leanneERKNS_4nameES2_.exit.i
  %i.fc = load ptr, ptr %11, align 8, !tbaa !16, !noalias !231 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 4
  %.val.i.i.i = load i32, ptr %i.fd, align 4, !noalias !231
  %i.fe = lshr i32 %.val.i.i.i, 13
  %i.ff = and i32 %i.fe, 2040
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fh = zext nneg i32 %i.ff to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !49, !noalias !231
  %i.fk = and i64 %i.fj, 2199023255552
  %.not110 = icmp eq i64 %i.fk, 0
  br i1 %.not110, label %bb.cv, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17, !noalias !231
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  store ptr %i.fl, ptr %13, align 8, !tbaa !77, !noalias !231
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i64 0, ptr %i.fm, align 8, !tbaa !78, !noalias !231
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store i64 16, ptr %i.fn, align 8, !tbaa !79, !noalias !231
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean12get_app_argsERKNS_4exprERNS_6bufferIS0_Lm16EEE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(152) %13)
          to label %bb.cb unwind label %bb.cd, !noalias !231, !inline_history !198 ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  %i.fp = load ptr, ptr %i.dg, align 8, !tbaa !16, !noalias !231
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !16, !noalias !231
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = lshr i64 %i.fs, 1                       ; 2 uses
  %i.fu = load i64, ptr %i.fm, align 8, !tbaa !78, !noalias !231 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4lean12type_checker15reduce_recursorERKNS_4exprEbb:bb.a

bb.if:                                            ; preds = %bb.ie
  %i.pn = add nsw i32 %i.pl, -1
  store i32 %i.pn, ptr %i.pi, align 4, !tbaa !18, !noalias !227
  br label %_ZN4lean10object_refD2Ev.exit196

bb.ig:                                            ; preds = %bb.ie
  %.not.i.i.i.i.i193 = icmp eq i32 %i.pl, 0
  br i1 %.not.i.i.i.i.i193, label %_ZN4lean10object_refD2Ev.exit196, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.pi)
          to label %_ZN4lean10object_refD2Ev.exit196 unwind label %bb.ii, !noalias !227

bb.ii:                                            ; preds = %bb.ih
  %i.po = landingpad { ptr, i32 }
          catch ptr null
  %i.pp = extractvalue { ptr, i32 } %i.po, 0
  call void @__clang_call_terminate(ptr %i.pp) #19, !noalias !227
  unreachable

_ZN4lean10object_refD2Ev.exit196:                 ; preds = %bb.ih, %bb.ig, %bb.if, %"_ZN4lean23to_cnstr_when_structureIZNS_12type_checker15reduce_recursorERKNS_4exprEbbE3$_1ZNS1_15reduce_recursorES4_bbE3$_2EES2_RKNS_11environmentERKNS_4nameES4_RKT_RKT0_.exit"
  %i.pq = load ptr, ptr %23, align 8, !tbaa !16, !noalias !227
  store ptr %i.pq, ptr %18, align 8, !tbaa !16, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17, !noalias !227
  br label %bb.ik

bb.ij:                                            ; preds = %bb.gb, %bb.fq, %bb.fp, %_ZN4lean13is_string_litERKNS_4exprE.exit.thread
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.body191:                                         ; preds = %bb.id, %bb.ij
  %eh.lpad-body = phi { ptr, i32 } [ %i.pr, %bb.ij ], [ %.pn28.pn.i, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17, !noalias !227
  br label %.body

bb.ik:                                            ; preds = %_ZN4lean10object_refD2Ev.exit196, %bb.fl, %_ZN4lean10object_refD2Ev.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17, !noalias !227
  invoke void @_ZN4lean16get_rec_rule_forERKNS_12recursor_valERKNS_4exprE(ptr dead_on_unwind nonnull writable sret(%"class.lean::optional.73") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.il unwind label %bb.im, !noalias !227, !inline_history !185

bb.il:                                            ; preds = %bb.ik
  %i.ps = load i8, ptr %24, align 8, !tbaa !98, !range !55, !noalias !227, !noundef !56
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %bb.in, label %.thread

.thread:                                          ; preds = %bb.il
  store i8 0, ptr %0, align 8, !tbaa !54, !alias.scope !238
  br label %_ZN4lean8optionalINS_13recursor_ruleEED2Ev.exit

bb.im:                                            ; preds = %bb.ik
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

bb.in:                                            ; preds = %bb.il
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17, !noalias !227
  %i.pv = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  store ptr %i.pv, ptr %25, align 8, !tbaa !77, !noalias !227
  %i.pw = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 4 uses
  store i64 0, ptr %i.pw, align 8, !tbaa !78, !noalias !227
  %i.px = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store i64 16, ptr %i.px, align 8, !tbaa !79, !noalias !227
  %i.py = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean12get_app_argsERKNS_4exprERNS_6bufferIS0_Lm16EEE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(152) %25)
          to label %bb.io unwind label %bb.iq, !noalias !227, !inline_history !185 ; 0 uses

bb.io:                                            ; preds = %bb.in
  %i.pz = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !16, !noalias !227 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !16, !noalias !227
  %i.qd = ptrtoint ptr %i.qc to i64
  %i.qe = lshr i64 %i.qd, 1
  %i.qf = and i64 %i.qe, 4294967295
  %i.qg = load i64, ptr %i.pw, align 8, !tbaa !78 ; 3 uses
  %i.qh = icmp ult i64 %i.qg, %i.qf
  br i1 %i.qh, label %bb.ip, label %bb.ir

bb.ip:                                            ; preds = %bb.io
  store i8 0, ptr %0, align 8, !tbaa !54, !alias.scope !239
  br label %thread-pre-split

bb.iq:                                            ; preds = %bb.in
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %bb.jq

bb.ir:                                            ; preds = %bb.io
  %i.qj = load ptr, ptr %i.cp, align 8, !tbaa !16, !noalias !227
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %.05.i56 = load ptr, ptr %i.qk, align 8, !tbaa !71, !noalias !227 ; 2 uses
  %i.ql = ptrtoint ptr %.05.i56 to i64
  %i.qm = trunc i64 %i.ql to i1
  br i1 %i.qm, label %.loopexit, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %bb.ir, %.lr.ph.i57
  %.07.i58 = phi ptr [ %.0.i60, %.lr.ph.i57 ], [ %.05.i56, %bb.ir ]
  %.046.i59 = phi i64 [ %i.qn, %.lr.ph.i57 ], [ 0, %bb.ir ]
  %i.qn = add i64 %.046.i59, 1                    ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.07.i58, i64 16
  %.0.i60 = load ptr, ptr %i.qo, align 8, !tbaa !71, !noalias !227 ; 2 uses
  %i.qp = ptrtoint ptr %.0.i60 to i64
  %i.qq = trunc i64 %i.qp to i1
  br i1 %i.qq, label %.loopexit, label %.lr.ph.i57, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph.i57, %bb.ir
  %.04.lcssa.i61 = phi i64 [ 0, %bb.ir ], [ %i.qn, %.lr.ph.i57 ]
  %i.qr = load ptr, ptr %i.cx, align 8, !tbaa !16, !noalias !227
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !16, !noalias !227
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !16, !noalias !227
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 2 uses
  %.05.i = load ptr, ptr %i.qw, align 8, !tbaa !71, !noalias !227 ; 2 uses
  %i.qx = ptrtoint ptr %.05.i to i64
  %i.qy = trunc i64 %i.qx to i1
  br i1 %i.qy, label %_ZN4lean6lengthINS_4nameEEEmRKNS_8list_refIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.05.i, %.loopexit ]
  %.046.i = phi i64 [ %i.qz, %.lr.ph.i ], [ 0, %.loopexit ]
  %i.qz = add i64 %.046.i, 1                      ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %.0.i = load ptr, ptr %i.ra, align 8, !tbaa !71, !noalias !227 ; 2 uses
  %i.rb = ptrtoint ptr %.0.i to i64
  %i.rc = trunc i64 %i.rb to i1
  br i1 %i.rc, label %_ZN4lean6lengthINS_4nameEEEmRKNS_8list_refIT_EE.exit, label %.lr.ph.i, !llvm.loop !2

_ZN4lean6lengthINS_4nameEEEmRKNS_8list_refIT_EE.exit: ; preds = %.lr.ph.i, %.loopexit
  %.04.lcssa.i = phi i64 [ 0, %.loopexit ], [ %i.qz, %.lr.ph.i ]
  %.not47.i = icmp eq i64 %.04.lcssa.i61, %.04.lcssa.i
  br i1 %.not47.i, label %bb.it, label %bb.is

bb.is:                                            ; preds = %_ZN4lean6lengthINS_4nameEEEmRKNS_8list_refIT_EE.exit
  store i8 0, ptr %0, align 8, !tbaa !54, !alias.scope !240
  br label %thread-pre-split

bb.it:                                            ; preds = %_ZN4lean6lengthINS_4nameEEEmRKNS_8list_refIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17, !noalias !227
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %i.re = load ptr, ptr %i.cp, align 8, !tbaa !16, !noalias !227
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  invoke void @_ZN4lean19instantiate_lparamsERKNS_4exprERKNS_8list_refINS_4nameEEERKNS3_INS_5levelEEE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %i.rd, ptr noundef nonnull align 8 dereferenceable(8) %i.qw, ptr noundef nonnull align 8 dereferenceable(8) %i.rf)
          to label %bb.iu unwind label %bb.iz, !noalias !227, !inline_history !185

bb.iu:                                            ; preds = %bb.it
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17, !noalias !227
  %i.rg = load ptr, ptr %i.dg, align 8, !tbaa !16, !noalias !227 ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !16, !noalias !227
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = lshr i64 %i.rj, 1
  %i.rl = trunc i64 %i.rk to i32
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rg, i64 40
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !16, !noalias !227
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = lshr i64 %i.ro, 1
  %i.rq = trunc i64 %i.rp to i32
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rg, i64 48
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !16, !noalias !227
  %i.rt = ptrtoint ptr %i.rs to i64
  %i.ru = lshr i64 %i.rt, 1
  %i.rv = trunc i64 %i.ru to i32
  %i.rw = add i32 %i.rq, %i.rl
  %i.rx = add i32 %i.rw, %i.rv
  %i.ry = load ptr, ptr %17, align 8, !tbaa !77, !noalias !227
  invoke void @_ZN4lean6mk_appERKNS_4exprEjPS1_(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %27, ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef %i.rx, ptr noundef %i.ry)
          to label %bb.iv unwind label %bb.ja, !noalias !227, !inline_history !185

bb.iv:                                            ; preds = %bb.iu
  %i.rz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean4expraSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %27) #17, !noalias !227, !inline_history !185 ; 0 uses
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #17, !noalias !227, !inline_history !185
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17, !noalias !227
  %i.sa = load i64, ptr %i.pw, align 8, !tbaa !78, !noalias !227
  %i.sb = load ptr, ptr %i.pz, align 8, !tbaa !16, !noalias !227
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !16, !noalias !227
  %i.se = ptrtoint ptr %i.sd to i64
  %i.sf = lshr i64 %i.se, 1                       ; 2 uses
  %i.sg = trunc i64 %i.sf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17, !noalias !227
  %i.sh = sub i64 %i.sa, %i.sf
  %i.si = load ptr, ptr %25, align 8, !tbaa !77, !noalias !227
  %i.sj = and i64 %i.sh, 4294967295
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %i.sj
  invoke void @_ZN4lean6mk_appERKNS_4exprEjPS1_(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef %i.sg, ptr noundef %i.sk)
          to label %bb.iw unwind label %bb.jb, !noalias !227, !inline_history !185

bb.iw:                                            ; preds = %bb.iv
  %i.sl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean4expraSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %28) #17, !noalias !227, !inline_history !185 ; 0 uses
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #17, !noalias !227, !inline_history !185
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17, !noalias !227
  %i.sm = load i64, ptr %i.dc, align 8, !tbaa !78, !noalias !227 ; 2 uses
  %i.sn = add i64 %i.dm, 1
  %i.so = and i64 %i.sn, 4294967295
  %i.sp = icmp ugt i64 %i.sm, %i.so
  br i1 %i.sp, label %bb.ix, label %bb.jd

bb.ix:                                            ; preds = %bb.iw
  %36 = xor i32 %35, -1
  %37 = trunc i64 %i.sm to i32
  %38 = add i32 %37, %36
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17, !noalias !227
  %i.sq = load ptr, ptr %17, align 8, !tbaa !77, !noalias !227
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.dn
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  invoke void @_ZN4lean6mk_appERKNS_4exprEjPS1_(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %29, ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef %38, ptr noundef nonnull %i.ss)
          to label %bb.iy unwind label %bb.jc, !noalias !227, !inline_history !185

bb.iy:                                            ; preds = %bb.ix
  %i.st = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean4expraSEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %29) #17, !noalias !227, !inline_history !185 ; 0 uses
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #17, !noalias !227, !inline_history !185
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17, !noalias !227
  br label %bb.jd

bb.iz:                                            ; preds = %bb.it
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.ja:                                            ; preds = %bb.iu
  %i.sv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17, !noalias !227
  br label %bb.ji

bb.jb:                                            ; preds = %bb.iv
  %i.sw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17, !noalias !227
  br label %bb.ji

bb.jc:                                            ; preds = %bb.ix
  %i.sx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17, !noalias !227
  br label %bb.ji

bb.jd:                                            ; preds = %bb.iy, %bb.iw
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  store i8 1, ptr %0, align 8, !tbaa !54, !alias.scope !241
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sz = load ptr, ptr %26, align 8, !tbaa !16, !noalias !241 ; 5 uses
  store ptr %i.sz, ptr %i.sy, align 8, !tbaa !16, !alias.scope !241
  %i.ta = ptrtoint ptr %i.sz to i64
  %i.tb = and i64 %i.ta, 1
  %.not.i.i.i.i.i.i52 = icmp eq i64 %i.tb, 0
  br i1 %.not.i.i.i.i.i.i52, label %bb.je, label %_ZN4lean9some_exprERKNS_4exprE.exit55

bb.je:                                            ; preds = %bb.jd
  %.val.i.i.i.i.i.i.i53 = load i32, ptr %i.sz, align 4, !tbaa !18, !noalias !241 ; 3 uses
  %i.tc = icmp sgt i32 %.val.i.i.i.i.i.i.i53, 0
  br i1 %i.tc, label %bb.jf, label %bb.jg, !prof !19

bb.jf:                                            ; preds = %bb.je
  %i.td = add nuw i32 %.val.i.i.i.i.i.i.i53, 1
  store i32 %i.td, ptr %i.sz, align 4, !tbaa !18, !noalias !241
  br label %_ZN4lean9some_exprERKNS_4exprE.exit55

bb.jg:                                            ; preds = %bb.je
  %.not.i.i.i.i.i.i.i54 = icmp eq i32 %.val.i.i.i.i.i.i.i53, 0
  br i1 %.not.i.i.i.i.i.i.i54, label %_ZN4lean9some_exprERKNS_4exprE.exit55, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.te = atomicrmw sub ptr %i.sz, i32 1 monotonic, align 4, !noalias !241 ; 0 uses
  br label %_ZN4lean9some_exprERKNS_4exprE.exit55

_ZN4lean9some_exprERKNS_4exprE.exit55:            ; preds = %bb.jh, %bb.jg, %bb.jf, %bb.jd
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #17, !inline_history !185
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17, !noalias !227
  %.pr.pre = load i64, ptr %i.pw, align 8, !tbaa !78
  br label %thread-pre-split

bb.ji:                                            ; preds = %bb.jc, %bb.jb, %bb.ja
  %.pn48.pn.i = phi { ptr, i32 } [ %i.sv, %bb.ja ], [ %i.sw, %bb.jb ], [ %i.sx, %bb.jc ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #17, !inline_history !185
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.iz
  %.pn48.pn.pn.i = phi { ptr, i32 } [ %.pn48.pn.i, %bb.ji ], [ %i.su, %bb.iz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17, !noalias !227
  br label %bb.jq

thread-pre-split:                                 ; preds = %bb.is, %_ZN4lean9some_exprERKNS_4exprE.exit55, %bb.ip
  %i.tf = phi i64 [ %i.qg, %bb.ip ], [ %.pr.pre, %_ZN4lean9some_exprERKNS_4exprE.exit55 ], [ %i.qg, %bb.is ] ; 2 uses
  %i.tg = load ptr, ptr %25, align 8, !tbaa !77   ; 3 uses
  %.idx.i.i.i39 = shl nuw nsw i64 %i.tf, 3
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 %.idx.i.i.i39
  %.not4.i.i.i.i40 = icmp eq i64 %i.tf, 0
  br i1 %.not4.i.i.i.i40, label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i48, label %.lr.ph.i.i.i.i41

.lr.ph.i.i.i.i41:                                 ; preds = %thread-pre-split, %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i44
  %.05.i.i.i.i42 = phi ptr [ %i.tq, %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i44 ], [ %i.tg, %thread-pre-split ] ; 2 uses
  %i.ti = load ptr, ptr %.05.i.i.i.i42, align 8, !tbaa !16 ; 4 uses
  %i.tj = ptrtoint ptr %i.ti to i64
  %i.tk = and i64 %i.tj, 1
  %.not.i.i.i.i.i.i.i.i43 = icmp eq i64 %i.tk, 0
  br i1 %.not.i.i.i.i.i.i.i.i43, label %bb.jk, label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i44

bb.jk:                                            ; preds = %.lr.ph.i.i.i.i41
  %i.tl = load i32, ptr %i.ti, align 4, !tbaa !18 ; 3 uses
  %i.tm = icmp sgt i32 %i.tl, 1
  br i1 %i.tm, label %bb.jl, label %bb.jm, !prof !19

bb.jl:                                            ; preds = %bb.jk
  %i.tn = add nsw i32 %i.tl, -1
  store i32 %i.tn, ptr %i.ti, align 4, !tbaa !18
  br label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i44

bb.jm:                                            ; preds = %bb.jk
  %.not.i.i.i.i.i.i.i.i.i50 = icmp eq i32 %i.tl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i50, label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i44, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ti)
          to label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i44 unwind label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.to = landingpad { ptr, i32 }
          catch ptr null
  %i.tp = extractvalue { ptr, i32 } %i.to, 0
  call void @__clang_call_terminate(ptr %i.tp) #19
  unreachable

_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i44: ; preds = %bb.jn, %bb.jm, %bb.jl, %.lr.ph.i.i.i.i41
  %i.tq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i42, i64 8 ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.tq, %i.th
  br i1 %.not.i.i.i.i45, label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i46, label %.lr.ph.i.i.i.i41, !llvm.loop !4

_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i46: ; preds = %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i44
  %.pre.i.i47 = load ptr, ptr %25, align 8, !tbaa !77
  br label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i48

_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i48: ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i46, %thread-pre-split
  %i.tr = phi ptr [ %.pre.i.i47, %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i46 ], [ %i.tg, %thread-pre-split ] ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.tr, %i.pv
  br i1 %.not.i.i.i49, label %bb.jr, label %bb.jp

bb.jp:                                            ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i48
  %i.ts = load i64, ptr %i.px, align 8, !tbaa !79
  %i.tt = shl i64 %i.ts, 3
  call void @_ZdaPvm(ptr noundef %i.tr, i64 noundef %i.tt) #17
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jj, %bb.iq
  %.pn52.i = phi { ptr, i32 } [ %i.qi, %bb.iq ], [ %.pn48.pn.pn.i, %bb.jj ]
  call void @_ZN4lean6bufferINS_4exprELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %25) #17, !inline_history !185
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17, !noalias !227
  call void @_ZN4lean8optionalINS_13recursor_ruleEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %24) #17, !inline_history !185
  br label %bb.kd

bb.jr:                                            ; preds = %bb.jp, %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17, !noalias !227
  %.pre122 = load i8, ptr %24, align 8, !tbaa !98, !range !55
  %i.tu = trunc nuw i8 %.pre122 to i1
  br i1 %i.tu, label %bb.js, label %_ZN4lean8optionalINS_13recursor_ruleEED2Ev.exit

bb.js:                                            ; preds = %bb.jr
  %i.tv = load ptr, ptr %i.pz, align 8, !tbaa !16 ; 4 uses
  %i.tw = ptrtoint ptr %i.tv to i64
  %i.tx = and i64 %i.tw, 1
  %.not.i.i.i.i37 = icmp eq i64 %i.tx, 0
  br i1 %.not.i.i.i.i37, label %bb.jt, label %_ZN4lean8optionalINS_13recursor_ruleEED2Ev.exit

bb.jt:                                            ; preds = %bb.js
  %i.ty = load i32, ptr %i.tv, align 4, !tbaa !18 ; 3 uses
  %i.tz = icmp sgt i32 %i.ty, 1
  br i1 %i.tz, label %bb.ju, label %bb.jv, !prof !19

bb.ju:                                            ; preds = %bb.jt
  %i.ua = add nsw i32 %i.ty, -1
  store i32 %i.ua, ptr %i.tv, align 4, !tbaa !18
  br label %_ZN4lean8optionalINS_13recursor_ruleEED2Ev.exit

bb.jv:                                            ; preds = %bb.jt
  %.not.i.i.i.i.i38 = icmp eq i32 %i.ty, 0
  br i1 %.not.i.i.i.i.i38, label %_ZN4lean8optionalINS_13recursor_ruleEED2Ev.exit, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.tv)
          to label %_ZN4lean8optionalINS_13recursor_ruleEED2Ev.exit unwind label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.ub = landingpad { ptr, i32 }
          catch ptr null
  %i.uc = extractvalue { ptr, i32 } %i.ub, 0
  call void @__clang_call_terminate(ptr %i.uc) #19
  unreachable

_ZN4lean8optionalINS_13recursor_ruleEED2Ev.exit:  ; preds = %.thread, %bb.jr, %bb.js, %bb.ju, %bb.jv, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17, !noalias !227
  %i.ud = load ptr, ptr %18, align 8, !tbaa !16   ; 4 uses
  %i.ue = ptrtoint ptr %i.ud to i64
  %i.uf = and i64 %i.ue, 1
  %.not.i.i.i34 = icmp eq i64 %i.uf, 0
  br i1 %.not.i.i.i34, label %bb.jy, label %_ZN4lean10object_refD2Ev.exit36

bb.jy:                                            ; preds = %_ZN4lean8optionalINS_13recursor_ruleEED2Ev.exit
  %i.ug = load i32, ptr %i.ud, align 4, !tbaa !18 ; 3 uses
  %i.uh = icmp sgt i32 %i.ug, 1
  br i1 %i.uh, label %bb.jz, label %bb.ka, !prof !19

bb.jz:                                            ; preds = %bb.jy
  %i.ui = add nsw i32 %i.ug, -1
  store i32 %i.ui, ptr %i.ud, align 4, !tbaa !18
  br label %_ZN4lean10object_refD2Ev.exit36

end_hunk_1
